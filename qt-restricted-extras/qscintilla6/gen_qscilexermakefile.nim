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
{.compile("gen_qscilexermakefile.cpp", cflags).}


type QsciLexerMakefileEnum* = cint
const
  QsciLexerMakefileDefault* = 0
  QsciLexerMakefileComment* = 1
  QsciLexerMakefilePreprocessor* = 2
  QsciLexerMakefileVariable* = 3
  QsciLexerMakefileOperator* = 4
  QsciLexerMakefileTarget* = 5
  QsciLexerMakefileError* = 9



import gen_qscilexermakefile_types
export gen_qscilexermakefile_types

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

type cQsciLexerMakefile*{.exportc: "QsciLexerMakefile", incompleteStruct.} = object

proc fcQsciLexerMakefile_new(): ptr cQsciLexerMakefile {.importc: "QsciLexerMakefile_new".}
proc fcQsciLexerMakefile_new2(parent: pointer): ptr cQsciLexerMakefile {.importc: "QsciLexerMakefile_new2".}
proc fcQsciLexerMakefile_metaObject(self: pointer, ): pointer {.importc: "QsciLexerMakefile_metaObject".}
proc fcQsciLexerMakefile_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerMakefile_metacast".}
proc fcQsciLexerMakefile_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerMakefile_metacall".}
proc fcQsciLexerMakefile_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerMakefile_tr".}
proc fcQsciLexerMakefile_language(self: pointer, ): cstring {.importc: "QsciLexerMakefile_language".}
proc fcQsciLexerMakefile_lexer(self: pointer, ): cstring {.importc: "QsciLexerMakefile_lexer".}
proc fcQsciLexerMakefile_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerMakefile_wordCharacters".}
proc fcQsciLexerMakefile_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerMakefile_defaultColor".}
proc fcQsciLexerMakefile_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerMakefile_defaultEolFill".}
proc fcQsciLexerMakefile_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerMakefile_defaultFont".}
proc fcQsciLexerMakefile_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerMakefile_defaultPaper".}
proc fcQsciLexerMakefile_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerMakefile_description".}
proc fcQsciLexerMakefile_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerMakefile_tr2".}
proc fcQsciLexerMakefile_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerMakefile_tr3".}
proc fQsciLexerMakefile_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerMakefile_virtualbase_metacall".}
proc fcQsciLexerMakefile_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_metacall".}
proc fcQsciLexerMakefile_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_language".}
proc fQsciLexerMakefile_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerMakefile_virtualbase_lexer".}
proc fcQsciLexerMakefile_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_lexer".}
proc fQsciLexerMakefile_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerMakefile_virtualbase_lexerId".}
proc fcQsciLexerMakefile_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_lexerId".}
proc fQsciLexerMakefile_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerMakefile_virtualbase_autoCompletionFillups".}
proc fcQsciLexerMakefile_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_autoCompletionFillups".}
proc fQsciLexerMakefile_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerMakefile_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerMakefile_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerMakefile_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerMakefile_virtualbase_blockEnd".}
proc fcQsciLexerMakefile_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_blockEnd".}
proc fQsciLexerMakefile_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerMakefile_virtualbase_blockLookback".}
proc fcQsciLexerMakefile_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_blockLookback".}
proc fQsciLexerMakefile_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerMakefile_virtualbase_blockStart".}
proc fcQsciLexerMakefile_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_blockStart".}
proc fQsciLexerMakefile_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerMakefile_virtualbase_blockStartKeyword".}
proc fcQsciLexerMakefile_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_blockStartKeyword".}
proc fQsciLexerMakefile_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerMakefile_virtualbase_braceStyle".}
proc fcQsciLexerMakefile_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_braceStyle".}
proc fQsciLexerMakefile_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerMakefile_virtualbase_caseSensitive".}
proc fcQsciLexerMakefile_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_caseSensitive".}
proc fQsciLexerMakefile_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerMakefile_virtualbase_color".}
proc fcQsciLexerMakefile_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_color".}
proc fQsciLexerMakefile_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerMakefile_virtualbase_eolFill".}
proc fcQsciLexerMakefile_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_eolFill".}
proc fQsciLexerMakefile_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerMakefile_virtualbase_font".}
proc fcQsciLexerMakefile_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_font".}
proc fQsciLexerMakefile_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerMakefile_virtualbase_indentationGuideView".}
proc fcQsciLexerMakefile_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_indentationGuideView".}
proc fQsciLexerMakefile_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerMakefile_virtualbase_keywords".}
proc fcQsciLexerMakefile_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_keywords".}
proc fQsciLexerMakefile_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerMakefile_virtualbase_defaultStyle".}
proc fcQsciLexerMakefile_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_defaultStyle".}
proc fcQsciLexerMakefile_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_description".}
proc fQsciLexerMakefile_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerMakefile_virtualbase_paper".}
proc fcQsciLexerMakefile_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_paper".}
proc fQsciLexerMakefile_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerMakefile_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerMakefile_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_defaultColorWithStyle".}
proc fQsciLexerMakefile_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerMakefile_virtualbase_defaultEolFill".}
proc fcQsciLexerMakefile_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_defaultEolFill".}
proc fQsciLexerMakefile_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerMakefile_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerMakefile_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_defaultFontWithStyle".}
proc fQsciLexerMakefile_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerMakefile_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerMakefile_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerMakefile_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerMakefile_virtualbase_setEditor".}
proc fcQsciLexerMakefile_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_setEditor".}
proc fQsciLexerMakefile_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerMakefile_virtualbase_refreshProperties".}
proc fcQsciLexerMakefile_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_refreshProperties".}
proc fQsciLexerMakefile_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerMakefile_virtualbase_styleBitsNeeded".}
proc fcQsciLexerMakefile_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_styleBitsNeeded".}
proc fQsciLexerMakefile_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerMakefile_virtualbase_wordCharacters".}
proc fcQsciLexerMakefile_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_wordCharacters".}
proc fQsciLexerMakefile_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerMakefile_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerMakefile_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_setAutoIndentStyle".}
proc fQsciLexerMakefile_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerMakefile_virtualbase_setColor".}
proc fcQsciLexerMakefile_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_setColor".}
proc fQsciLexerMakefile_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerMakefile_virtualbase_setEolFill".}
proc fcQsciLexerMakefile_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_setEolFill".}
proc fQsciLexerMakefile_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerMakefile_virtualbase_setFont".}
proc fcQsciLexerMakefile_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_setFont".}
proc fQsciLexerMakefile_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerMakefile_virtualbase_setPaper".}
proc fcQsciLexerMakefile_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_setPaper".}
proc fQsciLexerMakefile_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerMakefile_virtualbase_readProperties".}
proc fcQsciLexerMakefile_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_readProperties".}
proc fQsciLexerMakefile_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerMakefile_virtualbase_writeProperties".}
proc fcQsciLexerMakefile_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_writeProperties".}
proc fQsciLexerMakefile_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerMakefile_virtualbase_event".}
proc fcQsciLexerMakefile_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_event".}
proc fQsciLexerMakefile_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerMakefile_virtualbase_eventFilter".}
proc fcQsciLexerMakefile_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_eventFilter".}
proc fQsciLexerMakefile_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerMakefile_virtualbase_timerEvent".}
proc fcQsciLexerMakefile_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_timerEvent".}
proc fQsciLexerMakefile_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerMakefile_virtualbase_childEvent".}
proc fcQsciLexerMakefile_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_childEvent".}
proc fQsciLexerMakefile_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerMakefile_virtualbase_customEvent".}
proc fcQsciLexerMakefile_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_customEvent".}
proc fQsciLexerMakefile_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerMakefile_virtualbase_connectNotify".}
proc fcQsciLexerMakefile_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_connectNotify".}
proc fQsciLexerMakefile_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerMakefile_virtualbase_disconnectNotify".}
proc fcQsciLexerMakefile_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_disconnectNotify".}
proc fcQsciLexerMakefile_delete(self: pointer) {.importc: "QsciLexerMakefile_delete".}


func init*(T: type QsciLexerMakefile, h: ptr cQsciLexerMakefile): QsciLexerMakefile =
  T(h: h)
proc create*(T: type QsciLexerMakefile, ): QsciLexerMakefile =

  QsciLexerMakefile.init(fcQsciLexerMakefile_new())
proc create*(T: type QsciLexerMakefile, parent: gen_qobject.QObject): QsciLexerMakefile =

  QsciLexerMakefile.init(fcQsciLexerMakefile_new2(parent.h))
proc metaObject*(self: QsciLexerMakefile, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerMakefile_metaObject(self.h))

proc metacast*(self: QsciLexerMakefile, param1: cstring): pointer =

  fcQsciLexerMakefile_metacast(self.h, param1)

proc metacall*(self: QsciLexerMakefile, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerMakefile_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerMakefile, s: cstring): string =

  let v_ms = fcQsciLexerMakefile_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerMakefile, ): cstring =

  (fcQsciLexerMakefile_language(self.h))

proc lexer*(self: QsciLexerMakefile, ): cstring =

  (fcQsciLexerMakefile_lexer(self.h))

proc wordCharacters*(self: QsciLexerMakefile, ): cstring =

  (fcQsciLexerMakefile_wordCharacters(self.h))

proc defaultColor*(self: QsciLexerMakefile, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerMakefile_defaultColor(self.h, style))

proc defaultEolFill*(self: QsciLexerMakefile, style: cint): bool =

  fcQsciLexerMakefile_defaultEolFill(self.h, style)

proc defaultFont*(self: QsciLexerMakefile, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerMakefile_defaultFont(self.h, style))

proc defaultPaper*(self: QsciLexerMakefile, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerMakefile_defaultPaper(self.h, style))

proc description*(self: QsciLexerMakefile, style: cint): string =

  let v_ms = fcQsciLexerMakefile_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr2*(_: type QsciLexerMakefile, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerMakefile_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerMakefile, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerMakefile_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QsciLexerMakefile, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerMakefile_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerMakefilemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefilemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefilemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_metacall(self: ptr cQsciLexerMakefile, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerMakefile_metacall ".} =
  type Cb = proc(super: QsciLexerMakefilemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerMakefile(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerMakefilelanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerMakefile, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_language(self: ptr cQsciLexerMakefile, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerMakefile_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerMakefile, ): cstring =


  (fQsciLexerMakefile_virtualbase_lexer(self.h))

type QsciLexerMakefilelexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefilelexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefilelexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_lexer(self: ptr cQsciLexerMakefile, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerMakefile_lexer ".} =
  type Cb = proc(super: QsciLexerMakefilelexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerMakefile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerMakefile, ): cint =


  fQsciLexerMakefile_virtualbase_lexerId(self.h)

type QsciLexerMakefilelexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefilelexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefilelexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_lexerId(self: ptr cQsciLexerMakefile, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMakefile_lexerId ".} =
  type Cb = proc(super: QsciLexerMakefilelexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerMakefile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerMakefile, ): cstring =


  (fQsciLexerMakefile_virtualbase_autoCompletionFillups(self.h))

type QsciLexerMakefileautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefileautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefileautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_autoCompletionFillups(self: ptr cQsciLexerMakefile, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerMakefile_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerMakefileautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerMakefile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerMakefile, ): seq[string] =


  var v_ma = fQsciLexerMakefile_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerMakefileautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefileautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefileautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_autoCompletionWordSeparators(self: ptr cQsciLexerMakefile, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerMakefile_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerMakefileautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerMakefile(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerMakefile, style: ptr cint): cstring =


  (fQsciLexerMakefile_virtualbase_blockEnd(self.h, style))

type QsciLexerMakefileblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefileblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefileblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_blockEnd(self: ptr cQsciLexerMakefile, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerMakefile_blockEnd ".} =
  type Cb = proc(super: QsciLexerMakefileblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerMakefile(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerMakefile, ): cint =


  fQsciLexerMakefile_virtualbase_blockLookback(self.h)

type QsciLexerMakefileblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefileblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefileblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_blockLookback(self: ptr cQsciLexerMakefile, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMakefile_blockLookback ".} =
  type Cb = proc(super: QsciLexerMakefileblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerMakefile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerMakefile, style: ptr cint): cstring =


  (fQsciLexerMakefile_virtualbase_blockStart(self.h, style))

type QsciLexerMakefileblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefileblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefileblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_blockStart(self: ptr cQsciLexerMakefile, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerMakefile_blockStart ".} =
  type Cb = proc(super: QsciLexerMakefileblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerMakefile(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerMakefile, style: ptr cint): cstring =


  (fQsciLexerMakefile_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerMakefileblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefileblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefileblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_blockStartKeyword(self: ptr cQsciLexerMakefile, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerMakefile_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerMakefileblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerMakefile(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerMakefile, ): cint =


  fQsciLexerMakefile_virtualbase_braceStyle(self.h)

type QsciLexerMakefilebraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefilebraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefilebraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_braceStyle(self: ptr cQsciLexerMakefile, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMakefile_braceStyle ".} =
  type Cb = proc(super: QsciLexerMakefilebraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerMakefile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerMakefile, ): bool =


  fQsciLexerMakefile_virtualbase_caseSensitive(self.h)

type QsciLexerMakefilecaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefilecaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefilecaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_caseSensitive(self: ptr cQsciLexerMakefile, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerMakefile_caseSensitive ".} =
  type Cb = proc(super: QsciLexerMakefilecaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerMakefile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerMakefile, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerMakefile_virtualbase_color(self.h, style))

type QsciLexerMakefilecolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefilecolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefilecolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_color(self: ptr cQsciLexerMakefile, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMakefile_color ".} =
  type Cb = proc(super: QsciLexerMakefilecolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerMakefile(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerMakefile, style: cint): bool =


  fQsciLexerMakefile_virtualbase_eolFill(self.h, style)

type QsciLexerMakefileeolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefileeolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefileeolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_eolFill(self: ptr cQsciLexerMakefile, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerMakefile_eolFill ".} =
  type Cb = proc(super: QsciLexerMakefileeolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerMakefile(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerMakefile, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerMakefile_virtualbase_font(self.h, style))

type QsciLexerMakefilefontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefilefontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefilefontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_font(self: ptr cQsciLexerMakefile, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMakefile_font ".} =
  type Cb = proc(super: QsciLexerMakefilefontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerMakefile(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerMakefile, ): cint =


  fQsciLexerMakefile_virtualbase_indentationGuideView(self.h)

type QsciLexerMakefileindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefileindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefileindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_indentationGuideView(self: ptr cQsciLexerMakefile, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMakefile_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerMakefileindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerMakefile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerMakefile, set: cint): cstring =


  (fQsciLexerMakefile_virtualbase_keywords(self.h, set))

type QsciLexerMakefilekeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefilekeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefilekeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_keywords(self: ptr cQsciLexerMakefile, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerMakefile_keywords ".} =
  type Cb = proc(super: QsciLexerMakefilekeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerMakefile(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerMakefile, ): cint =


  fQsciLexerMakefile_virtualbase_defaultStyle(self.h)

type QsciLexerMakefiledefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefiledefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefiledefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_defaultStyle(self: ptr cQsciLexerMakefile, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMakefile_defaultStyle ".} =
  type Cb = proc(super: QsciLexerMakefiledefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerMakefile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerMakefiledescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerMakefile, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_description(self: ptr cQsciLexerMakefile, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerMakefile_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerMakefile, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerMakefile_virtualbase_paper(self.h, style))

type QsciLexerMakefilepaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefilepaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefilepaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_paper(self: ptr cQsciLexerMakefile, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMakefile_paper ".} =
  type Cb = proc(super: QsciLexerMakefilepaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerMakefile(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerMakefile, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerMakefile_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerMakefiledefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefiledefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefiledefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_defaultColorWithStyle(self: ptr cQsciLexerMakefile, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMakefile_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerMakefiledefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerMakefile(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerMakefile, style: cint): bool =


  fQsciLexerMakefile_virtualbase_defaultEolFill(self.h, style)

type QsciLexerMakefiledefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefiledefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefiledefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_defaultEolFill(self: ptr cQsciLexerMakefile, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerMakefile_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerMakefiledefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerMakefile(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerMakefile, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerMakefile_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerMakefiledefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefiledefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefiledefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_defaultFontWithStyle(self: ptr cQsciLexerMakefile, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMakefile_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerMakefiledefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerMakefile(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerMakefile, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerMakefile_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerMakefiledefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefiledefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefiledefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_defaultPaperWithStyle(self: ptr cQsciLexerMakefile, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMakefile_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerMakefiledefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerMakefile(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerMakefile, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerMakefile_virtualbase_setEditor(self.h, editor.h)

type QsciLexerMakefilesetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefilesetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefilesetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_setEditor(self: ptr cQsciLexerMakefile, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMakefile_setEditor ".} =
  type Cb = proc(super: QsciLexerMakefilesetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerMakefile(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerMakefile, ): void =


  fQsciLexerMakefile_virtualbase_refreshProperties(self.h)

type QsciLexerMakefilerefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefilerefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefilerefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_refreshProperties(self: ptr cQsciLexerMakefile, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerMakefile_refreshProperties ".} =
  type Cb = proc(super: QsciLexerMakefilerefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerMakefile(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerMakefile, ): cint =


  fQsciLexerMakefile_virtualbase_styleBitsNeeded(self.h)

type QsciLexerMakefilestyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefilestyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefilestyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_styleBitsNeeded(self: ptr cQsciLexerMakefile, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMakefile_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerMakefilestyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerMakefile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerMakefile, ): cstring =


  (fQsciLexerMakefile_virtualbase_wordCharacters(self.h))

type QsciLexerMakefilewordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefilewordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefilewordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_wordCharacters(self: ptr cQsciLexerMakefile, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerMakefile_wordCharacters ".} =
  type Cb = proc(super: QsciLexerMakefilewordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerMakefile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerMakefile, autoindentstyle: cint): void =


  fQsciLexerMakefile_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerMakefilesetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefilesetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefilesetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_setAutoIndentStyle(self: ptr cQsciLexerMakefile, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerMakefile_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerMakefilesetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerMakefile(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerMakefile, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerMakefile_virtualbase_setColor(self.h, c.h, style)

type QsciLexerMakefilesetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefilesetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefilesetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_setColor(self: ptr cQsciLexerMakefile, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerMakefile_setColor ".} =
  type Cb = proc(super: QsciLexerMakefilesetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerMakefile(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerMakefile, eoffill: bool, style: cint): void =


  fQsciLexerMakefile_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerMakefilesetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefilesetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefilesetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_setEolFill(self: ptr cQsciLexerMakefile, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerMakefile_setEolFill ".} =
  type Cb = proc(super: QsciLexerMakefilesetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerMakefile(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerMakefile, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerMakefile_virtualbase_setFont(self.h, f.h, style)

type QsciLexerMakefilesetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefilesetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefilesetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_setFont(self: ptr cQsciLexerMakefile, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerMakefile_setFont ".} =
  type Cb = proc(super: QsciLexerMakefilesetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerMakefile(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerMakefile, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerMakefile_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerMakefilesetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefilesetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefilesetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_setPaper(self: ptr cQsciLexerMakefile, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerMakefile_setPaper ".} =
  type Cb = proc(super: QsciLexerMakefilesetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerMakefile(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerMakefile, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerMakefile_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerMakefilereadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefilereadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefilereadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_readProperties(self: ptr cQsciLexerMakefile, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerMakefile_readProperties ".} =
  type Cb = proc(super: QsciLexerMakefilereadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerMakefile(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerMakefile, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerMakefile_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerMakefilewritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefilewritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefilewritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_writeProperties(self: ptr cQsciLexerMakefile, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerMakefile_writeProperties ".} =
  type Cb = proc(super: QsciLexerMakefilewritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerMakefile(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerMakefile, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerMakefile_virtualbase_event(self.h, event.h)

type QsciLexerMakefileeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefileeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefileeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_event(self: ptr cQsciLexerMakefile, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerMakefile_event ".} =
  type Cb = proc(super: QsciLexerMakefileeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerMakefile(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerMakefile, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerMakefile_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerMakefileeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefileeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefileeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_eventFilter(self: ptr cQsciLexerMakefile, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerMakefile_eventFilter ".} =
  type Cb = proc(super: QsciLexerMakefileeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerMakefile(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerMakefile, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerMakefile_virtualbase_timerEvent(self.h, event.h)

type QsciLexerMakefiletimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefiletimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefiletimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_timerEvent(self: ptr cQsciLexerMakefile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMakefile_timerEvent ".} =
  type Cb = proc(super: QsciLexerMakefiletimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerMakefile(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerMakefile, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerMakefile_virtualbase_childEvent(self.h, event.h)

type QsciLexerMakefilechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefilechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefilechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_childEvent(self: ptr cQsciLexerMakefile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMakefile_childEvent ".} =
  type Cb = proc(super: QsciLexerMakefilechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerMakefile(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerMakefile, event: gen_qcoreevent.QEvent): void =


  fQsciLexerMakefile_virtualbase_customEvent(self.h, event.h)

type QsciLexerMakefilecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefilecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefilecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_customEvent(self: ptr cQsciLexerMakefile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMakefile_customEvent ".} =
  type Cb = proc(super: QsciLexerMakefilecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerMakefile(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerMakefile, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerMakefile_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerMakefileconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefileconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefileconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_connectNotify(self: ptr cQsciLexerMakefile, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMakefile_connectNotify ".} =
  type Cb = proc(super: QsciLexerMakefileconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerMakefile(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerMakefile, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerMakefile_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerMakefiledisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerMakefile, slot: proc(super: QsciLexerMakefiledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerMakefiledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_disconnectNotify(self: ptr cQsciLexerMakefile, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMakefile_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerMakefiledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerMakefile(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QsciLexerMakefile) =
  fcQsciLexerMakefile_delete(self.h)
