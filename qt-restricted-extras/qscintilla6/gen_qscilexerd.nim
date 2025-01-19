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
{.compile("gen_qscilexerd.cpp", cflags).}


type QsciLexerDEnum* = cint
const
  QsciLexerDDefault* = 0
  QsciLexerDComment* = 1
  QsciLexerDCommentLine* = 2
  QsciLexerDCommentDoc* = 3
  QsciLexerDCommentNested* = 4
  QsciLexerDNumber* = 5
  QsciLexerDKeyword* = 6
  QsciLexerDKeywordSecondary* = 7
  QsciLexerDKeywordDoc* = 8
  QsciLexerDTypedefs* = 9
  QsciLexerDString* = 10
  QsciLexerDUnclosedString* = 11
  QsciLexerDCharacter* = 12
  QsciLexerDOperator* = 13
  QsciLexerDIdentifier* = 14
  QsciLexerDCommentLineDoc* = 15
  QsciLexerDCommentDocKeyword* = 16
  QsciLexerDCommentDocKeywordError* = 17
  QsciLexerDBackquoteString* = 18
  QsciLexerDRawString* = 19
  QsciLexerDKeywordSet5* = 20
  QsciLexerDKeywordSet6* = 21
  QsciLexerDKeywordSet7* = 22



import gen_qscilexerd_types
export gen_qscilexerd_types

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

type cQsciLexerD*{.exportc: "QsciLexerD", incompleteStruct.} = object

proc fcQsciLexerD_new(): ptr cQsciLexerD {.importc: "QsciLexerD_new".}
proc fcQsciLexerD_new2(parent: pointer): ptr cQsciLexerD {.importc: "QsciLexerD_new2".}
proc fcQsciLexerD_metaObject(self: pointer, ): pointer {.importc: "QsciLexerD_metaObject".}
proc fcQsciLexerD_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerD_metacast".}
proc fcQsciLexerD_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerD_metacall".}
proc fcQsciLexerD_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerD_tr".}
proc fcQsciLexerD_language(self: pointer, ): cstring {.importc: "QsciLexerD_language".}
proc fcQsciLexerD_lexer(self: pointer, ): cstring {.importc: "QsciLexerD_lexer".}
proc fcQsciLexerD_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerD_autoCompletionWordSeparators".}
proc fcQsciLexerD_blockEnd(self: pointer, ): cstring {.importc: "QsciLexerD_blockEnd".}
proc fcQsciLexerD_blockStart(self: pointer, ): cstring {.importc: "QsciLexerD_blockStart".}
proc fcQsciLexerD_blockStartKeyword(self: pointer, ): cstring {.importc: "QsciLexerD_blockStartKeyword".}
proc fcQsciLexerD_braceStyle(self: pointer, ): cint {.importc: "QsciLexerD_braceStyle".}
proc fcQsciLexerD_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerD_wordCharacters".}
proc fcQsciLexerD_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerD_defaultColor".}
proc fcQsciLexerD_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerD_defaultEolFill".}
proc fcQsciLexerD_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerD_defaultFont".}
proc fcQsciLexerD_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerD_defaultPaper".}
proc fcQsciLexerD_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerD_keywords".}
proc fcQsciLexerD_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerD_description".}
proc fcQsciLexerD_refreshProperties(self: pointer, ): void {.importc: "QsciLexerD_refreshProperties".}
proc fcQsciLexerD_foldAtElse(self: pointer, ): bool {.importc: "QsciLexerD_foldAtElse".}
proc fcQsciLexerD_foldComments(self: pointer, ): bool {.importc: "QsciLexerD_foldComments".}
proc fcQsciLexerD_foldCompact(self: pointer, ): bool {.importc: "QsciLexerD_foldCompact".}
proc fcQsciLexerD_setFoldAtElse(self: pointer, fold: bool): void {.importc: "QsciLexerD_setFoldAtElse".}
proc fcQsciLexerD_setFoldComments(self: pointer, fold: bool): void {.importc: "QsciLexerD_setFoldComments".}
proc fcQsciLexerD_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerD_setFoldCompact".}
proc fcQsciLexerD_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerD_tr2".}
proc fcQsciLexerD_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerD_tr3".}
proc fcQsciLexerD_blockEnd1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerD_blockEnd1".}
proc fcQsciLexerD_blockStart1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerD_blockStart1".}
proc fcQsciLexerD_blockStartKeyword1(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerD_blockStartKeyword1".}
proc fQsciLexerD_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerD_virtualbase_metacall".}
proc fcQsciLexerD_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_metacall".}
proc fQsciLexerD_virtualbase_setFoldAtElse(self: pointer, fold: bool): void{.importc: "QsciLexerD_virtualbase_setFoldAtElse".}
proc fcQsciLexerD_override_virtual_setFoldAtElse(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_setFoldAtElse".}
proc fQsciLexerD_virtualbase_setFoldComments(self: pointer, fold: bool): void{.importc: "QsciLexerD_virtualbase_setFoldComments".}
proc fcQsciLexerD_override_virtual_setFoldComments(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_setFoldComments".}
proc fQsciLexerD_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerD_virtualbase_setFoldCompact".}
proc fcQsciLexerD_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_setFoldCompact".}
proc fcQsciLexerD_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_language".}
proc fQsciLexerD_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerD_virtualbase_lexer".}
proc fcQsciLexerD_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_lexer".}
proc fQsciLexerD_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerD_virtualbase_lexerId".}
proc fcQsciLexerD_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_lexerId".}
proc fQsciLexerD_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerD_virtualbase_autoCompletionFillups".}
proc fcQsciLexerD_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_autoCompletionFillups".}
proc fQsciLexerD_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerD_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerD_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerD_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerD_virtualbase_blockEnd".}
proc fcQsciLexerD_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_blockEnd".}
proc fQsciLexerD_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerD_virtualbase_blockLookback".}
proc fcQsciLexerD_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_blockLookback".}
proc fQsciLexerD_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerD_virtualbase_blockStart".}
proc fcQsciLexerD_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_blockStart".}
proc fQsciLexerD_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerD_virtualbase_blockStartKeyword".}
proc fcQsciLexerD_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_blockStartKeyword".}
proc fQsciLexerD_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerD_virtualbase_braceStyle".}
proc fcQsciLexerD_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_braceStyle".}
proc fQsciLexerD_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerD_virtualbase_caseSensitive".}
proc fcQsciLexerD_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_caseSensitive".}
proc fQsciLexerD_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerD_virtualbase_color".}
proc fcQsciLexerD_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_color".}
proc fQsciLexerD_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerD_virtualbase_eolFill".}
proc fcQsciLexerD_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_eolFill".}
proc fQsciLexerD_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerD_virtualbase_font".}
proc fcQsciLexerD_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_font".}
proc fQsciLexerD_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerD_virtualbase_indentationGuideView".}
proc fcQsciLexerD_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_indentationGuideView".}
proc fQsciLexerD_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerD_virtualbase_keywords".}
proc fcQsciLexerD_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_keywords".}
proc fQsciLexerD_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerD_virtualbase_defaultStyle".}
proc fcQsciLexerD_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_defaultStyle".}
proc fcQsciLexerD_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_description".}
proc fQsciLexerD_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerD_virtualbase_paper".}
proc fcQsciLexerD_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_paper".}
proc fQsciLexerD_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerD_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerD_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_defaultColorWithStyle".}
proc fQsciLexerD_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerD_virtualbase_defaultEolFill".}
proc fcQsciLexerD_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_defaultEolFill".}
proc fQsciLexerD_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerD_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerD_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_defaultFontWithStyle".}
proc fQsciLexerD_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerD_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerD_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerD_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerD_virtualbase_setEditor".}
proc fcQsciLexerD_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_setEditor".}
proc fQsciLexerD_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerD_virtualbase_refreshProperties".}
proc fcQsciLexerD_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_refreshProperties".}
proc fQsciLexerD_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerD_virtualbase_styleBitsNeeded".}
proc fcQsciLexerD_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_styleBitsNeeded".}
proc fQsciLexerD_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerD_virtualbase_wordCharacters".}
proc fcQsciLexerD_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_wordCharacters".}
proc fQsciLexerD_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerD_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerD_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_setAutoIndentStyle".}
proc fQsciLexerD_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerD_virtualbase_setColor".}
proc fcQsciLexerD_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_setColor".}
proc fQsciLexerD_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerD_virtualbase_setEolFill".}
proc fcQsciLexerD_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_setEolFill".}
proc fQsciLexerD_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerD_virtualbase_setFont".}
proc fcQsciLexerD_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_setFont".}
proc fQsciLexerD_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerD_virtualbase_setPaper".}
proc fcQsciLexerD_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_setPaper".}
proc fQsciLexerD_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerD_virtualbase_readProperties".}
proc fcQsciLexerD_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_readProperties".}
proc fQsciLexerD_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerD_virtualbase_writeProperties".}
proc fcQsciLexerD_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_writeProperties".}
proc fQsciLexerD_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerD_virtualbase_event".}
proc fcQsciLexerD_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_event".}
proc fQsciLexerD_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerD_virtualbase_eventFilter".}
proc fcQsciLexerD_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_eventFilter".}
proc fQsciLexerD_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerD_virtualbase_timerEvent".}
proc fcQsciLexerD_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_timerEvent".}
proc fQsciLexerD_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerD_virtualbase_childEvent".}
proc fcQsciLexerD_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_childEvent".}
proc fQsciLexerD_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerD_virtualbase_customEvent".}
proc fcQsciLexerD_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_customEvent".}
proc fQsciLexerD_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerD_virtualbase_connectNotify".}
proc fcQsciLexerD_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_connectNotify".}
proc fQsciLexerD_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerD_virtualbase_disconnectNotify".}
proc fcQsciLexerD_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerD_override_virtual_disconnectNotify".}
proc fcQsciLexerD_staticMetaObject(): pointer {.importc: "QsciLexerD_staticMetaObject".}
proc fcQsciLexerD_delete(self: pointer) {.importc: "QsciLexerD_delete".}


func init*(T: type QsciLexerD, h: ptr cQsciLexerD): QsciLexerD =
  T(h: h)
proc create*(T: type QsciLexerD, ): QsciLexerD =

  QsciLexerD.init(fcQsciLexerD_new())
proc create*(T: type QsciLexerD, parent: gen_qobject.QObject): QsciLexerD =

  QsciLexerD.init(fcQsciLexerD_new2(parent.h))
proc metaObject*(self: QsciLexerD, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerD_metaObject(self.h))

proc metacast*(self: QsciLexerD, param1: cstring): pointer =

  fcQsciLexerD_metacast(self.h, param1)

proc metacall*(self: QsciLexerD, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerD_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerD, s: cstring): string =

  let v_ms = fcQsciLexerD_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerD, ): cstring =

  (fcQsciLexerD_language(self.h))

proc lexer*(self: QsciLexerD, ): cstring =

  (fcQsciLexerD_lexer(self.h))

proc autoCompletionWordSeparators*(self: QsciLexerD, ): seq[string] =

  var v_ma = fcQsciLexerD_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc blockEnd*(self: QsciLexerD, ): cstring =

  (fcQsciLexerD_blockEnd(self.h))

proc blockStart*(self: QsciLexerD, ): cstring =

  (fcQsciLexerD_blockStart(self.h))

proc blockStartKeyword*(self: QsciLexerD, ): cstring =

  (fcQsciLexerD_blockStartKeyword(self.h))

proc braceStyle*(self: QsciLexerD, ): cint =

  fcQsciLexerD_braceStyle(self.h)

proc wordCharacters*(self: QsciLexerD, ): cstring =

  (fcQsciLexerD_wordCharacters(self.h))

proc defaultColor*(self: QsciLexerD, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerD_defaultColor(self.h, style))

proc defaultEolFill*(self: QsciLexerD, style: cint): bool =

  fcQsciLexerD_defaultEolFill(self.h, style)

proc defaultFont*(self: QsciLexerD, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerD_defaultFont(self.h, style))

proc defaultPaper*(self: QsciLexerD, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerD_defaultPaper(self.h, style))

proc keywords*(self: QsciLexerD, set: cint): cstring =

  (fcQsciLexerD_keywords(self.h, set))

proc description*(self: QsciLexerD, style: cint): string =

  let v_ms = fcQsciLexerD_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: QsciLexerD, ): void =

  fcQsciLexerD_refreshProperties(self.h)

proc foldAtElse*(self: QsciLexerD, ): bool =

  fcQsciLexerD_foldAtElse(self.h)

proc foldComments*(self: QsciLexerD, ): bool =

  fcQsciLexerD_foldComments(self.h)

proc foldCompact*(self: QsciLexerD, ): bool =

  fcQsciLexerD_foldCompact(self.h)

proc setFoldAtElse*(self: QsciLexerD, fold: bool): void =

  fcQsciLexerD_setFoldAtElse(self.h, fold)

proc setFoldComments*(self: QsciLexerD, fold: bool): void =

  fcQsciLexerD_setFoldComments(self.h, fold)

proc setFoldCompact*(self: QsciLexerD, fold: bool): void =

  fcQsciLexerD_setFoldCompact(self.h, fold)

proc tr2*(_: type QsciLexerD, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerD_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerD, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerD_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc blockEnd1*(self: QsciLexerD, style: ptr cint): cstring =

  (fcQsciLexerD_blockEnd1(self.h, style))

proc blockStart1*(self: QsciLexerD, style: ptr cint): cstring =

  (fcQsciLexerD_blockStart1(self.h, style))

proc blockStartKeyword1*(self: QsciLexerD, style: ptr cint): cstring =

  (fcQsciLexerD_blockStartKeyword1(self.h, style))

proc callVirtualBase_metacall(self: QsciLexerD, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerD_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerDmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerD, slot: proc(super: QsciLexerDmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_metacall(self: ptr cQsciLexerD, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerD_metacall ".} =
  type Cb = proc(super: QsciLexerDmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerD(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setFoldAtElse(self: QsciLexerD, fold: bool): void =


  fQsciLexerD_virtualbase_setFoldAtElse(self.h, fold)

type QsciLexerDsetFoldAtElseBase* = proc(fold: bool): void
proc onsetFoldAtElse*(self: QsciLexerD, slot: proc(super: QsciLexerDsetFoldAtElseBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDsetFoldAtElseBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_setFoldAtElse(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_setFoldAtElse(self: ptr cQsciLexerD, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerD_setFoldAtElse ".} =
  type Cb = proc(super: QsciLexerDsetFoldAtElseBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldAtElse(QsciLexerD(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldComments(self: QsciLexerD, fold: bool): void =


  fQsciLexerD_virtualbase_setFoldComments(self.h, fold)

type QsciLexerDsetFoldCommentsBase* = proc(fold: bool): void
proc onsetFoldComments*(self: QsciLexerD, slot: proc(super: QsciLexerDsetFoldCommentsBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDsetFoldCommentsBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_setFoldComments(self: ptr cQsciLexerD, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerD_setFoldComments ".} =
  type Cb = proc(super: QsciLexerDsetFoldCommentsBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldComments(QsciLexerD(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldCompact(self: QsciLexerD, fold: bool): void =


  fQsciLexerD_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerDsetFoldCompactBase* = proc(fold: bool): void
proc onsetFoldCompact*(self: QsciLexerD, slot: proc(super: QsciLexerDsetFoldCompactBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDsetFoldCompactBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_setFoldCompact(self: ptr cQsciLexerD, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerD_setFoldCompact ".} =
  type Cb = proc(super: QsciLexerDsetFoldCompactBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldCompact(QsciLexerD(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
type QsciLexerDlanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerD, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_language(self: ptr cQsciLexerD, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerD_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerD, ): cstring =


  (fQsciLexerD_virtualbase_lexer(self.h))

type QsciLexerDlexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerD, slot: proc(super: QsciLexerDlexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDlexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_lexer(self: ptr cQsciLexerD, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerD_lexer ".} =
  type Cb = proc(super: QsciLexerDlexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerD(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerD, ): cint =


  fQsciLexerD_virtualbase_lexerId(self.h)

type QsciLexerDlexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerD, slot: proc(super: QsciLexerDlexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDlexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_lexerId(self: ptr cQsciLexerD, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerD_lexerId ".} =
  type Cb = proc(super: QsciLexerDlexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerD(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerD, ): cstring =


  (fQsciLexerD_virtualbase_autoCompletionFillups(self.h))

type QsciLexerDautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerD, slot: proc(super: QsciLexerDautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_autoCompletionFillups(self: ptr cQsciLexerD, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerD_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerDautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerD(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerD, ): seq[string] =


  var v_ma = fQsciLexerD_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerDautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerD, slot: proc(super: QsciLexerDautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_autoCompletionWordSeparators(self: ptr cQsciLexerD, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerD_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerDautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerD(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerD, style: ptr cint): cstring =


  (fQsciLexerD_virtualbase_blockEnd(self.h, style))

type QsciLexerDblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerD, slot: proc(super: QsciLexerDblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_blockEnd(self: ptr cQsciLexerD, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerD_blockEnd ".} =
  type Cb = proc(super: QsciLexerDblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerD(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerD, ): cint =


  fQsciLexerD_virtualbase_blockLookback(self.h)

type QsciLexerDblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerD, slot: proc(super: QsciLexerDblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_blockLookback(self: ptr cQsciLexerD, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerD_blockLookback ".} =
  type Cb = proc(super: QsciLexerDblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerD(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerD, style: ptr cint): cstring =


  (fQsciLexerD_virtualbase_blockStart(self.h, style))

type QsciLexerDblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerD, slot: proc(super: QsciLexerDblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_blockStart(self: ptr cQsciLexerD, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerD_blockStart ".} =
  type Cb = proc(super: QsciLexerDblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerD(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerD, style: ptr cint): cstring =


  (fQsciLexerD_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerDblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerD, slot: proc(super: QsciLexerDblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_blockStartKeyword(self: ptr cQsciLexerD, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerD_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerDblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerD(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerD, ): cint =


  fQsciLexerD_virtualbase_braceStyle(self.h)

type QsciLexerDbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerD, slot: proc(super: QsciLexerDbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_braceStyle(self: ptr cQsciLexerD, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerD_braceStyle ".} =
  type Cb = proc(super: QsciLexerDbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerD(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerD, ): bool =


  fQsciLexerD_virtualbase_caseSensitive(self.h)

type QsciLexerDcaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerD, slot: proc(super: QsciLexerDcaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDcaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_caseSensitive(self: ptr cQsciLexerD, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerD_caseSensitive ".} =
  type Cb = proc(super: QsciLexerDcaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerD(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerD, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerD_virtualbase_color(self.h, style))

type QsciLexerDcolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerD, slot: proc(super: QsciLexerDcolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDcolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_color(self: ptr cQsciLexerD, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerD_color ".} =
  type Cb = proc(super: QsciLexerDcolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerD(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerD, style: cint): bool =


  fQsciLexerD_virtualbase_eolFill(self.h, style)

type QsciLexerDeolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerD, slot: proc(super: QsciLexerDeolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDeolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_eolFill(self: ptr cQsciLexerD, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerD_eolFill ".} =
  type Cb = proc(super: QsciLexerDeolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerD(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerD, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerD_virtualbase_font(self.h, style))

type QsciLexerDfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerD, slot: proc(super: QsciLexerDfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_font(self: ptr cQsciLexerD, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerD_font ".} =
  type Cb = proc(super: QsciLexerDfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerD(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerD, ): cint =


  fQsciLexerD_virtualbase_indentationGuideView(self.h)

type QsciLexerDindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerD, slot: proc(super: QsciLexerDindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_indentationGuideView(self: ptr cQsciLexerD, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerD_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerDindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerD(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerD, set: cint): cstring =


  (fQsciLexerD_virtualbase_keywords(self.h, set))

type QsciLexerDkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerD, slot: proc(super: QsciLexerDkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_keywords(self: ptr cQsciLexerD, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerD_keywords ".} =
  type Cb = proc(super: QsciLexerDkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerD(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerD, ): cint =


  fQsciLexerD_virtualbase_defaultStyle(self.h)

type QsciLexerDdefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerD, slot: proc(super: QsciLexerDdefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDdefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_defaultStyle(self: ptr cQsciLexerD, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerD_defaultStyle ".} =
  type Cb = proc(super: QsciLexerDdefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerD(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerDdescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerD, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_description(self: ptr cQsciLexerD, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerD_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerD, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerD_virtualbase_paper(self.h, style))

type QsciLexerDpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerD, slot: proc(super: QsciLexerDpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_paper(self: ptr cQsciLexerD, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerD_paper ".} =
  type Cb = proc(super: QsciLexerDpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerD(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerD, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerD_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerDdefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerD, slot: proc(super: QsciLexerDdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_defaultColorWithStyle(self: ptr cQsciLexerD, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerD_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerDdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerD(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerD, style: cint): bool =


  fQsciLexerD_virtualbase_defaultEolFill(self.h, style)

type QsciLexerDdefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerD, slot: proc(super: QsciLexerDdefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDdefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_defaultEolFill(self: ptr cQsciLexerD, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerD_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerDdefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerD(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerD, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerD_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerDdefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerD, slot: proc(super: QsciLexerDdefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_defaultFontWithStyle(self: ptr cQsciLexerD, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerD_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerDdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerD(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerD, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerD_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerDdefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerD, slot: proc(super: QsciLexerDdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_defaultPaperWithStyle(self: ptr cQsciLexerD, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerD_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerDdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerD(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerD, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerD_virtualbase_setEditor(self.h, editor.h)

type QsciLexerDsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerD, slot: proc(super: QsciLexerDsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_setEditor(self: ptr cQsciLexerD, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerD_setEditor ".} =
  type Cb = proc(super: QsciLexerDsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerD(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerD, ): void =


  fQsciLexerD_virtualbase_refreshProperties(self.h)

type QsciLexerDrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerD, slot: proc(super: QsciLexerDrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_refreshProperties(self: ptr cQsciLexerD, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerD_refreshProperties ".} =
  type Cb = proc(super: QsciLexerDrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerD(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerD, ): cint =


  fQsciLexerD_virtualbase_styleBitsNeeded(self.h)

type QsciLexerDstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerD, slot: proc(super: QsciLexerDstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_styleBitsNeeded(self: ptr cQsciLexerD, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerD_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerDstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerD(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerD, ): cstring =


  (fQsciLexerD_virtualbase_wordCharacters(self.h))

type QsciLexerDwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerD, slot: proc(super: QsciLexerDwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_wordCharacters(self: ptr cQsciLexerD, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerD_wordCharacters ".} =
  type Cb = proc(super: QsciLexerDwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerD(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerD, autoindentstyle: cint): void =


  fQsciLexerD_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerDsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerD, slot: proc(super: QsciLexerDsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_setAutoIndentStyle(self: ptr cQsciLexerD, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerD_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerDsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerD(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerD, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerD_virtualbase_setColor(self.h, c.h, style)

type QsciLexerDsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerD, slot: proc(super: QsciLexerDsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_setColor(self: ptr cQsciLexerD, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerD_setColor ".} =
  type Cb = proc(super: QsciLexerDsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerD(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerD, eoffill: bool, style: cint): void =


  fQsciLexerD_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerDsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerD, slot: proc(super: QsciLexerDsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_setEolFill(self: ptr cQsciLexerD, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerD_setEolFill ".} =
  type Cb = proc(super: QsciLexerDsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerD(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerD, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerD_virtualbase_setFont(self.h, f.h, style)

type QsciLexerDsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerD, slot: proc(super: QsciLexerDsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_setFont(self: ptr cQsciLexerD, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerD_setFont ".} =
  type Cb = proc(super: QsciLexerDsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerD(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerD, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerD_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerDsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerD, slot: proc(super: QsciLexerDsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_setPaper(self: ptr cQsciLexerD, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerD_setPaper ".} =
  type Cb = proc(super: QsciLexerDsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerD(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerD, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerD_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerDreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerD, slot: proc(super: QsciLexerDreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_readProperties(self: ptr cQsciLexerD, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerD_readProperties ".} =
  type Cb = proc(super: QsciLexerDreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerD(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerD, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerD_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerDwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerD, slot: proc(super: QsciLexerDwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_writeProperties(self: ptr cQsciLexerD, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerD_writeProperties ".} =
  type Cb = proc(super: QsciLexerDwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerD(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerD, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerD_virtualbase_event(self.h, event.h)

type QsciLexerDeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerD, slot: proc(super: QsciLexerDeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_event(self: ptr cQsciLexerD, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerD_event ".} =
  type Cb = proc(super: QsciLexerDeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerD(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerD, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerD_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerDeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerD, slot: proc(super: QsciLexerDeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_eventFilter(self: ptr cQsciLexerD, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerD_eventFilter ".} =
  type Cb = proc(super: QsciLexerDeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerD(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerD, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerD_virtualbase_timerEvent(self.h, event.h)

type QsciLexerDtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerD, slot: proc(super: QsciLexerDtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_timerEvent(self: ptr cQsciLexerD, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerD_timerEvent ".} =
  type Cb = proc(super: QsciLexerDtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerD(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerD, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerD_virtualbase_childEvent(self.h, event.h)

type QsciLexerDchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerD, slot: proc(super: QsciLexerDchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_childEvent(self: ptr cQsciLexerD, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerD_childEvent ".} =
  type Cb = proc(super: QsciLexerDchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerD(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerD, event: gen_qcoreevent.QEvent): void =


  fQsciLexerD_virtualbase_customEvent(self.h, event.h)

type QsciLexerDcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerD, slot: proc(super: QsciLexerDcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_customEvent(self: ptr cQsciLexerD, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerD_customEvent ".} =
  type Cb = proc(super: QsciLexerDcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerD(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerD, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerD_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerDconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerD, slot: proc(super: QsciLexerDconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_connectNotify(self: ptr cQsciLexerD, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerD_connectNotify ".} =
  type Cb = proc(super: QsciLexerDconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerD(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerD, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerD_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerDdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerD, slot: proc(super: QsciLexerDdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerDdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerD_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerD_disconnectNotify(self: ptr cQsciLexerD, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerD_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerDdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerD(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerD): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerD_staticMetaObject())
proc delete*(self: QsciLexerD) =
  fcQsciLexerD_delete(self.h)
