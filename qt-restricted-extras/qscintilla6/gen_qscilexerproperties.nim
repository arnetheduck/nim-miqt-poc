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
{.compile("gen_qscilexerproperties.cpp", cflags).}


type QsciLexerPropertiesEnum* = cint
const
  QsciLexerPropertiesDefault* = 0
  QsciLexerPropertiesComment* = 1
  QsciLexerPropertiesSection* = 2
  QsciLexerPropertiesAssignment* = 3
  QsciLexerPropertiesDefaultValue* = 4
  QsciLexerPropertiesKey* = 5



import gen_qscilexerproperties_types
export gen_qscilexerproperties_types

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

type cQsciLexerProperties*{.exportc: "QsciLexerProperties", incompleteStruct.} = object

proc fcQsciLexerProperties_new(): ptr cQsciLexerProperties {.importc: "QsciLexerProperties_new".}
proc fcQsciLexerProperties_new2(parent: pointer): ptr cQsciLexerProperties {.importc: "QsciLexerProperties_new2".}
proc fcQsciLexerProperties_metaObject(self: pointer, ): pointer {.importc: "QsciLexerProperties_metaObject".}
proc fcQsciLexerProperties_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerProperties_metacast".}
proc fcQsciLexerProperties_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerProperties_metacall".}
proc fcQsciLexerProperties_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerProperties_tr".}
proc fcQsciLexerProperties_language(self: pointer, ): cstring {.importc: "QsciLexerProperties_language".}
proc fcQsciLexerProperties_lexer(self: pointer, ): cstring {.importc: "QsciLexerProperties_lexer".}
proc fcQsciLexerProperties_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerProperties_wordCharacters".}
proc fcQsciLexerProperties_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerProperties_defaultColor".}
proc fcQsciLexerProperties_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerProperties_defaultEolFill".}
proc fcQsciLexerProperties_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerProperties_defaultFont".}
proc fcQsciLexerProperties_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerProperties_defaultPaper".}
proc fcQsciLexerProperties_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerProperties_description".}
proc fcQsciLexerProperties_refreshProperties(self: pointer, ): void {.importc: "QsciLexerProperties_refreshProperties".}
proc fcQsciLexerProperties_foldCompact(self: pointer, ): bool {.importc: "QsciLexerProperties_foldCompact".}
proc fcQsciLexerProperties_setInitialSpaces(self: pointer, enable: bool): void {.importc: "QsciLexerProperties_setInitialSpaces".}
proc fcQsciLexerProperties_initialSpaces(self: pointer, ): bool {.importc: "QsciLexerProperties_initialSpaces".}
proc fcQsciLexerProperties_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerProperties_setFoldCompact".}
proc fcQsciLexerProperties_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerProperties_tr2".}
proc fcQsciLexerProperties_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerProperties_tr3".}
proc fQsciLexerProperties_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerProperties_virtualbase_metacall".}
proc fcQsciLexerProperties_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_metacall".}
proc fQsciLexerProperties_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerProperties_virtualbase_setFoldCompact".}
proc fcQsciLexerProperties_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_setFoldCompact".}
proc fcQsciLexerProperties_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_language".}
proc fQsciLexerProperties_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerProperties_virtualbase_lexer".}
proc fcQsciLexerProperties_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_lexer".}
proc fQsciLexerProperties_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerProperties_virtualbase_lexerId".}
proc fcQsciLexerProperties_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_lexerId".}
proc fQsciLexerProperties_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerProperties_virtualbase_autoCompletionFillups".}
proc fcQsciLexerProperties_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_autoCompletionFillups".}
proc fQsciLexerProperties_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerProperties_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerProperties_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerProperties_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerProperties_virtualbase_blockEnd".}
proc fcQsciLexerProperties_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_blockEnd".}
proc fQsciLexerProperties_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerProperties_virtualbase_blockLookback".}
proc fcQsciLexerProperties_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_blockLookback".}
proc fQsciLexerProperties_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerProperties_virtualbase_blockStart".}
proc fcQsciLexerProperties_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_blockStart".}
proc fQsciLexerProperties_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerProperties_virtualbase_blockStartKeyword".}
proc fcQsciLexerProperties_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_blockStartKeyword".}
proc fQsciLexerProperties_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerProperties_virtualbase_braceStyle".}
proc fcQsciLexerProperties_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_braceStyle".}
proc fQsciLexerProperties_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerProperties_virtualbase_caseSensitive".}
proc fcQsciLexerProperties_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_caseSensitive".}
proc fQsciLexerProperties_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerProperties_virtualbase_color".}
proc fcQsciLexerProperties_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_color".}
proc fQsciLexerProperties_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerProperties_virtualbase_eolFill".}
proc fcQsciLexerProperties_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_eolFill".}
proc fQsciLexerProperties_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerProperties_virtualbase_font".}
proc fcQsciLexerProperties_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_font".}
proc fQsciLexerProperties_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerProperties_virtualbase_indentationGuideView".}
proc fcQsciLexerProperties_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_indentationGuideView".}
proc fQsciLexerProperties_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerProperties_virtualbase_keywords".}
proc fcQsciLexerProperties_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_keywords".}
proc fQsciLexerProperties_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerProperties_virtualbase_defaultStyle".}
proc fcQsciLexerProperties_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_defaultStyle".}
proc fcQsciLexerProperties_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_description".}
proc fQsciLexerProperties_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerProperties_virtualbase_paper".}
proc fcQsciLexerProperties_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_paper".}
proc fQsciLexerProperties_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerProperties_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerProperties_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_defaultColorWithStyle".}
proc fQsciLexerProperties_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerProperties_virtualbase_defaultEolFill".}
proc fcQsciLexerProperties_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_defaultEolFill".}
proc fQsciLexerProperties_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerProperties_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerProperties_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_defaultFontWithStyle".}
proc fQsciLexerProperties_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerProperties_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerProperties_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerProperties_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerProperties_virtualbase_setEditor".}
proc fcQsciLexerProperties_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_setEditor".}
proc fQsciLexerProperties_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerProperties_virtualbase_refreshProperties".}
proc fcQsciLexerProperties_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_refreshProperties".}
proc fQsciLexerProperties_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerProperties_virtualbase_styleBitsNeeded".}
proc fcQsciLexerProperties_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_styleBitsNeeded".}
proc fQsciLexerProperties_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerProperties_virtualbase_wordCharacters".}
proc fcQsciLexerProperties_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_wordCharacters".}
proc fQsciLexerProperties_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerProperties_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerProperties_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_setAutoIndentStyle".}
proc fQsciLexerProperties_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerProperties_virtualbase_setColor".}
proc fcQsciLexerProperties_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_setColor".}
proc fQsciLexerProperties_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerProperties_virtualbase_setEolFill".}
proc fcQsciLexerProperties_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_setEolFill".}
proc fQsciLexerProperties_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerProperties_virtualbase_setFont".}
proc fcQsciLexerProperties_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_setFont".}
proc fQsciLexerProperties_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerProperties_virtualbase_setPaper".}
proc fcQsciLexerProperties_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_setPaper".}
proc fQsciLexerProperties_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerProperties_virtualbase_readProperties".}
proc fcQsciLexerProperties_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_readProperties".}
proc fQsciLexerProperties_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerProperties_virtualbase_writeProperties".}
proc fcQsciLexerProperties_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_writeProperties".}
proc fQsciLexerProperties_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerProperties_virtualbase_event".}
proc fcQsciLexerProperties_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_event".}
proc fQsciLexerProperties_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerProperties_virtualbase_eventFilter".}
proc fcQsciLexerProperties_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_eventFilter".}
proc fQsciLexerProperties_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerProperties_virtualbase_timerEvent".}
proc fcQsciLexerProperties_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_timerEvent".}
proc fQsciLexerProperties_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerProperties_virtualbase_childEvent".}
proc fcQsciLexerProperties_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_childEvent".}
proc fQsciLexerProperties_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerProperties_virtualbase_customEvent".}
proc fcQsciLexerProperties_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_customEvent".}
proc fQsciLexerProperties_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerProperties_virtualbase_connectNotify".}
proc fcQsciLexerProperties_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_connectNotify".}
proc fQsciLexerProperties_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerProperties_virtualbase_disconnectNotify".}
proc fcQsciLexerProperties_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerProperties_override_virtual_disconnectNotify".}
proc fcQsciLexerProperties_staticMetaObject(): pointer {.importc: "QsciLexerProperties_staticMetaObject".}
proc fcQsciLexerProperties_delete(self: pointer) {.importc: "QsciLexerProperties_delete".}


func init*(T: type QsciLexerProperties, h: ptr cQsciLexerProperties): QsciLexerProperties =
  T(h: h)
proc create*(T: type QsciLexerProperties, ): QsciLexerProperties =

  QsciLexerProperties.init(fcQsciLexerProperties_new())
proc create*(T: type QsciLexerProperties, parent: gen_qobject.QObject): QsciLexerProperties =

  QsciLexerProperties.init(fcQsciLexerProperties_new2(parent.h))
proc metaObject*(self: QsciLexerProperties, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerProperties_metaObject(self.h))

proc metacast*(self: QsciLexerProperties, param1: cstring): pointer =

  fcQsciLexerProperties_metacast(self.h, param1)

proc metacall*(self: QsciLexerProperties, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerProperties_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerProperties, s: cstring): string =

  let v_ms = fcQsciLexerProperties_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerProperties, ): cstring =

  (fcQsciLexerProperties_language(self.h))

proc lexer*(self: QsciLexerProperties, ): cstring =

  (fcQsciLexerProperties_lexer(self.h))

proc wordCharacters*(self: QsciLexerProperties, ): cstring =

  (fcQsciLexerProperties_wordCharacters(self.h))

proc defaultColor*(self: QsciLexerProperties, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerProperties_defaultColor(self.h, style))

proc defaultEolFill*(self: QsciLexerProperties, style: cint): bool =

  fcQsciLexerProperties_defaultEolFill(self.h, style)

proc defaultFont*(self: QsciLexerProperties, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerProperties_defaultFont(self.h, style))

proc defaultPaper*(self: QsciLexerProperties, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerProperties_defaultPaper(self.h, style))

proc description*(self: QsciLexerProperties, style: cint): string =

  let v_ms = fcQsciLexerProperties_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: QsciLexerProperties, ): void =

  fcQsciLexerProperties_refreshProperties(self.h)

proc foldCompact*(self: QsciLexerProperties, ): bool =

  fcQsciLexerProperties_foldCompact(self.h)

proc setInitialSpaces*(self: QsciLexerProperties, enable: bool): void =

  fcQsciLexerProperties_setInitialSpaces(self.h, enable)

proc initialSpaces*(self: QsciLexerProperties, ): bool =

  fcQsciLexerProperties_initialSpaces(self.h)

proc setFoldCompact*(self: QsciLexerProperties, fold: bool): void =

  fcQsciLexerProperties_setFoldCompact(self.h, fold)

proc tr2*(_: type QsciLexerProperties, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerProperties_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerProperties, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerProperties_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QsciLexerProperties, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerProperties_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerPropertiesmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiesmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiesmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_metacall(self: ptr cQsciLexerProperties, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerProperties_metacall ".} =
  type Cb = proc(super: QsciLexerPropertiesmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerProperties(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setFoldCompact(self: QsciLexerProperties, fold: bool): void =


  fQsciLexerProperties_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerPropertiessetFoldCompactBase* = proc(fold: bool): void
proc onsetFoldCompact*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiessetFoldCompactBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiessetFoldCompactBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_setFoldCompact(self: ptr cQsciLexerProperties, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerProperties_setFoldCompact ".} =
  type Cb = proc(super: QsciLexerPropertiessetFoldCompactBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldCompact(QsciLexerProperties(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
type QsciLexerPropertieslanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerProperties, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_language(self: ptr cQsciLexerProperties, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerProperties_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerProperties, ): cstring =


  (fQsciLexerProperties_virtualbase_lexer(self.h))

type QsciLexerPropertieslexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertieslexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertieslexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_lexer(self: ptr cQsciLexerProperties, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerProperties_lexer ".} =
  type Cb = proc(super: QsciLexerPropertieslexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerProperties(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerProperties, ): cint =


  fQsciLexerProperties_virtualbase_lexerId(self.h)

type QsciLexerPropertieslexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertieslexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertieslexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_lexerId(self: ptr cQsciLexerProperties, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerProperties_lexerId ".} =
  type Cb = proc(super: QsciLexerPropertieslexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerProperties(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerProperties, ): cstring =


  (fQsciLexerProperties_virtualbase_autoCompletionFillups(self.h))

type QsciLexerPropertiesautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiesautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiesautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_autoCompletionFillups(self: ptr cQsciLexerProperties, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerProperties_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerPropertiesautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerProperties(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerProperties, ): seq[string] =


  var v_ma = fQsciLexerProperties_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerPropertiesautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiesautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiesautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_autoCompletionWordSeparators(self: ptr cQsciLexerProperties, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerProperties_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerPropertiesautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerProperties(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerProperties, style: ptr cint): cstring =


  (fQsciLexerProperties_virtualbase_blockEnd(self.h, style))

type QsciLexerPropertiesblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiesblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiesblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_blockEnd(self: ptr cQsciLexerProperties, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerProperties_blockEnd ".} =
  type Cb = proc(super: QsciLexerPropertiesblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerProperties(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerProperties, ): cint =


  fQsciLexerProperties_virtualbase_blockLookback(self.h)

type QsciLexerPropertiesblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiesblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiesblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_blockLookback(self: ptr cQsciLexerProperties, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerProperties_blockLookback ".} =
  type Cb = proc(super: QsciLexerPropertiesblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerProperties(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerProperties, style: ptr cint): cstring =


  (fQsciLexerProperties_virtualbase_blockStart(self.h, style))

type QsciLexerPropertiesblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiesblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiesblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_blockStart(self: ptr cQsciLexerProperties, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerProperties_blockStart ".} =
  type Cb = proc(super: QsciLexerPropertiesblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerProperties(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerProperties, style: ptr cint): cstring =


  (fQsciLexerProperties_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerPropertiesblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiesblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiesblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_blockStartKeyword(self: ptr cQsciLexerProperties, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerProperties_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerPropertiesblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerProperties(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerProperties, ): cint =


  fQsciLexerProperties_virtualbase_braceStyle(self.h)

type QsciLexerPropertiesbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiesbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiesbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_braceStyle(self: ptr cQsciLexerProperties, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerProperties_braceStyle ".} =
  type Cb = proc(super: QsciLexerPropertiesbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerProperties(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerProperties, ): bool =


  fQsciLexerProperties_virtualbase_caseSensitive(self.h)

type QsciLexerPropertiescaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiescaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiescaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_caseSensitive(self: ptr cQsciLexerProperties, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerProperties_caseSensitive ".} =
  type Cb = proc(super: QsciLexerPropertiescaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerProperties(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerProperties, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerProperties_virtualbase_color(self.h, style))

type QsciLexerPropertiescolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiescolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiescolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_color(self: ptr cQsciLexerProperties, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerProperties_color ".} =
  type Cb = proc(super: QsciLexerPropertiescolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerProperties(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerProperties, style: cint): bool =


  fQsciLexerProperties_virtualbase_eolFill(self.h, style)

type QsciLexerPropertieseolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertieseolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertieseolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_eolFill(self: ptr cQsciLexerProperties, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerProperties_eolFill ".} =
  type Cb = proc(super: QsciLexerPropertieseolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerProperties(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerProperties, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerProperties_virtualbase_font(self.h, style))

type QsciLexerPropertiesfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiesfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiesfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_font(self: ptr cQsciLexerProperties, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerProperties_font ".} =
  type Cb = proc(super: QsciLexerPropertiesfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerProperties(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerProperties, ): cint =


  fQsciLexerProperties_virtualbase_indentationGuideView(self.h)

type QsciLexerPropertiesindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiesindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiesindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_indentationGuideView(self: ptr cQsciLexerProperties, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerProperties_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerPropertiesindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerProperties(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerProperties, set: cint): cstring =


  (fQsciLexerProperties_virtualbase_keywords(self.h, set))

type QsciLexerPropertieskeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertieskeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertieskeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_keywords(self: ptr cQsciLexerProperties, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerProperties_keywords ".} =
  type Cb = proc(super: QsciLexerPropertieskeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerProperties(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerProperties, ): cint =


  fQsciLexerProperties_virtualbase_defaultStyle(self.h)

type QsciLexerPropertiesdefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiesdefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiesdefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_defaultStyle(self: ptr cQsciLexerProperties, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerProperties_defaultStyle ".} =
  type Cb = proc(super: QsciLexerPropertiesdefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerProperties(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerPropertiesdescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerProperties, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_description(self: ptr cQsciLexerProperties, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerProperties_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerProperties, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerProperties_virtualbase_paper(self.h, style))

type QsciLexerPropertiespaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiespaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiespaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_paper(self: ptr cQsciLexerProperties, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerProperties_paper ".} =
  type Cb = proc(super: QsciLexerPropertiespaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerProperties(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerProperties, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerProperties_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerPropertiesdefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiesdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiesdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_defaultColorWithStyle(self: ptr cQsciLexerProperties, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerProperties_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerPropertiesdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerProperties(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerProperties, style: cint): bool =


  fQsciLexerProperties_virtualbase_defaultEolFill(self.h, style)

type QsciLexerPropertiesdefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiesdefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiesdefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_defaultEolFill(self: ptr cQsciLexerProperties, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerProperties_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerPropertiesdefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerProperties(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerProperties, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerProperties_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerPropertiesdefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiesdefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiesdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_defaultFontWithStyle(self: ptr cQsciLexerProperties, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerProperties_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerPropertiesdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerProperties(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerProperties, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerProperties_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerPropertiesdefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiesdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiesdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_defaultPaperWithStyle(self: ptr cQsciLexerProperties, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerProperties_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerPropertiesdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerProperties(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerProperties, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerProperties_virtualbase_setEditor(self.h, editor.h)

type QsciLexerPropertiessetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiessetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiessetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_setEditor(self: ptr cQsciLexerProperties, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerProperties_setEditor ".} =
  type Cb = proc(super: QsciLexerPropertiessetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerProperties(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerProperties, ): void =


  fQsciLexerProperties_virtualbase_refreshProperties(self.h)

type QsciLexerPropertiesrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiesrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiesrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_refreshProperties(self: ptr cQsciLexerProperties, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerProperties_refreshProperties ".} =
  type Cb = proc(super: QsciLexerPropertiesrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerProperties(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerProperties, ): cint =


  fQsciLexerProperties_virtualbase_styleBitsNeeded(self.h)

type QsciLexerPropertiesstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiesstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiesstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_styleBitsNeeded(self: ptr cQsciLexerProperties, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerProperties_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerPropertiesstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerProperties(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerProperties, ): cstring =


  (fQsciLexerProperties_virtualbase_wordCharacters(self.h))

type QsciLexerPropertieswordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertieswordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertieswordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_wordCharacters(self: ptr cQsciLexerProperties, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerProperties_wordCharacters ".} =
  type Cb = proc(super: QsciLexerPropertieswordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerProperties(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerProperties, autoindentstyle: cint): void =


  fQsciLexerProperties_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerPropertiessetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiessetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiessetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_setAutoIndentStyle(self: ptr cQsciLexerProperties, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerProperties_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerPropertiessetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerProperties(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerProperties, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerProperties_virtualbase_setColor(self.h, c.h, style)

type QsciLexerPropertiessetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiessetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiessetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_setColor(self: ptr cQsciLexerProperties, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerProperties_setColor ".} =
  type Cb = proc(super: QsciLexerPropertiessetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerProperties(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerProperties, eoffill: bool, style: cint): void =


  fQsciLexerProperties_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerPropertiessetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiessetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiessetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_setEolFill(self: ptr cQsciLexerProperties, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerProperties_setEolFill ".} =
  type Cb = proc(super: QsciLexerPropertiessetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerProperties(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerProperties, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerProperties_virtualbase_setFont(self.h, f.h, style)

type QsciLexerPropertiessetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiessetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiessetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_setFont(self: ptr cQsciLexerProperties, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerProperties_setFont ".} =
  type Cb = proc(super: QsciLexerPropertiessetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerProperties(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerProperties, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerProperties_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerPropertiessetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiessetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiessetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_setPaper(self: ptr cQsciLexerProperties, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerProperties_setPaper ".} =
  type Cb = proc(super: QsciLexerPropertiessetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerProperties(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerProperties, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerProperties_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerPropertiesreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiesreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiesreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_readProperties(self: ptr cQsciLexerProperties, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerProperties_readProperties ".} =
  type Cb = proc(super: QsciLexerPropertiesreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerProperties(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerProperties, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerProperties_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerPropertieswritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertieswritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertieswritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_writeProperties(self: ptr cQsciLexerProperties, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerProperties_writeProperties ".} =
  type Cb = proc(super: QsciLexerPropertieswritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerProperties(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerProperties, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerProperties_virtualbase_event(self.h, event.h)

type QsciLexerPropertieseventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertieseventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertieseventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_event(self: ptr cQsciLexerProperties, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerProperties_event ".} =
  type Cb = proc(super: QsciLexerPropertieseventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerProperties(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerProperties, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerProperties_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerPropertieseventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertieseventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertieseventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_eventFilter(self: ptr cQsciLexerProperties, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerProperties_eventFilter ".} =
  type Cb = proc(super: QsciLexerPropertieseventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerProperties(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerProperties, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerProperties_virtualbase_timerEvent(self.h, event.h)

type QsciLexerPropertiestimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiestimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiestimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_timerEvent(self: ptr cQsciLexerProperties, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerProperties_timerEvent ".} =
  type Cb = proc(super: QsciLexerPropertiestimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerProperties(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerProperties, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerProperties_virtualbase_childEvent(self.h, event.h)

type QsciLexerPropertieschildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertieschildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertieschildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_childEvent(self: ptr cQsciLexerProperties, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerProperties_childEvent ".} =
  type Cb = proc(super: QsciLexerPropertieschildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerProperties(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerProperties, event: gen_qcoreevent.QEvent): void =


  fQsciLexerProperties_virtualbase_customEvent(self.h, event.h)

type QsciLexerPropertiescustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiescustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiescustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_customEvent(self: ptr cQsciLexerProperties, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerProperties_customEvent ".} =
  type Cb = proc(super: QsciLexerPropertiescustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerProperties(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerProperties, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerProperties_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerPropertiesconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiesconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiesconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_connectNotify(self: ptr cQsciLexerProperties, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerProperties_connectNotify ".} =
  type Cb = proc(super: QsciLexerPropertiesconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerProperties(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerProperties, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerProperties_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerPropertiesdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerProperties, slot: proc(super: QsciLexerPropertiesdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerPropertiesdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerProperties_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerProperties_disconnectNotify(self: ptr cQsciLexerProperties, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerProperties_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerPropertiesdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerProperties(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerProperties): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerProperties_staticMetaObject())
proc delete*(self: QsciLexerProperties) =
  fcQsciLexerProperties_delete(self.h)
