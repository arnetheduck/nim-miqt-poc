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
{.compile("gen_qscilexerbatch.cpp", cflags).}


type QsciLexerBatchEnumEnum* = distinct cint
template Default*(_: type QsciLexerBatchEnumEnum): untyped = 0
template Comment*(_: type QsciLexerBatchEnumEnum): untyped = 1
template Keyword*(_: type QsciLexerBatchEnumEnum): untyped = 2
template Label*(_: type QsciLexerBatchEnumEnum): untyped = 3
template HideCommandChar*(_: type QsciLexerBatchEnumEnum): untyped = 4
template ExternalCommand*(_: type QsciLexerBatchEnumEnum): untyped = 5
template Variable*(_: type QsciLexerBatchEnumEnum): untyped = 6
template Operator*(_: type QsciLexerBatchEnumEnum): untyped = 7


import gen_qscilexerbatch_types
export gen_qscilexerbatch_types

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

type cQsciLexerBatch*{.exportc: "QsciLexerBatch", incompleteStruct.} = object

proc fcQsciLexerBatch_new(): ptr cQsciLexerBatch {.importc: "QsciLexerBatch_new".}
proc fcQsciLexerBatch_new2(parent: pointer): ptr cQsciLexerBatch {.importc: "QsciLexerBatch_new2".}
proc fcQsciLexerBatch_metaObject(self: pointer, ): pointer {.importc: "QsciLexerBatch_metaObject".}
proc fcQsciLexerBatch_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerBatch_metacast".}
proc fcQsciLexerBatch_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerBatch_metacall".}
proc fcQsciLexerBatch_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerBatch_tr".}
proc fcQsciLexerBatch_language(self: pointer, ): cstring {.importc: "QsciLexerBatch_language".}
proc fcQsciLexerBatch_lexer(self: pointer, ): cstring {.importc: "QsciLexerBatch_lexer".}
proc fcQsciLexerBatch_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerBatch_wordCharacters".}
proc fcQsciLexerBatch_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerBatch_caseSensitive".}
proc fcQsciLexerBatch_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerBatch_defaultColor".}
proc fcQsciLexerBatch_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerBatch_defaultEolFill".}
proc fcQsciLexerBatch_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerBatch_defaultFont".}
proc fcQsciLexerBatch_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerBatch_defaultPaper".}
proc fcQsciLexerBatch_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerBatch_keywords".}
proc fcQsciLexerBatch_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerBatch_description".}
proc fcQsciLexerBatch_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerBatch_tr2".}
proc fcQsciLexerBatch_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerBatch_tr3".}
proc fQsciLexerBatch_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerBatch_virtualbase_metaObject".}
proc fcQsciLexerBatch_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_metaObject".}
proc fQsciLexerBatch_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerBatch_virtualbase_metacast".}
proc fcQsciLexerBatch_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_metacast".}
proc fQsciLexerBatch_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerBatch_virtualbase_metacall".}
proc fcQsciLexerBatch_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_metacall".}
proc fcQsciLexerBatch_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_language".}
proc fQsciLexerBatch_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerBatch_virtualbase_lexer".}
proc fcQsciLexerBatch_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_lexer".}
proc fQsciLexerBatch_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerBatch_virtualbase_lexerId".}
proc fcQsciLexerBatch_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_lexerId".}
proc fQsciLexerBatch_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerBatch_virtualbase_autoCompletionFillups".}
proc fcQsciLexerBatch_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_autoCompletionFillups".}
proc fQsciLexerBatch_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerBatch_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerBatch_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerBatch_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerBatch_virtualbase_blockEnd".}
proc fcQsciLexerBatch_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_blockEnd".}
proc fQsciLexerBatch_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerBatch_virtualbase_blockLookback".}
proc fcQsciLexerBatch_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_blockLookback".}
proc fQsciLexerBatch_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerBatch_virtualbase_blockStart".}
proc fcQsciLexerBatch_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_blockStart".}
proc fQsciLexerBatch_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerBatch_virtualbase_blockStartKeyword".}
proc fcQsciLexerBatch_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_blockStartKeyword".}
proc fQsciLexerBatch_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerBatch_virtualbase_braceStyle".}
proc fcQsciLexerBatch_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_braceStyle".}
proc fQsciLexerBatch_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerBatch_virtualbase_caseSensitive".}
proc fcQsciLexerBatch_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_caseSensitive".}
proc fQsciLexerBatch_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerBatch_virtualbase_color".}
proc fcQsciLexerBatch_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_color".}
proc fQsciLexerBatch_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerBatch_virtualbase_eolFill".}
proc fcQsciLexerBatch_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_eolFill".}
proc fQsciLexerBatch_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerBatch_virtualbase_font".}
proc fcQsciLexerBatch_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_font".}
proc fQsciLexerBatch_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerBatch_virtualbase_indentationGuideView".}
proc fcQsciLexerBatch_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_indentationGuideView".}
proc fQsciLexerBatch_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerBatch_virtualbase_keywords".}
proc fcQsciLexerBatch_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_keywords".}
proc fQsciLexerBatch_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerBatch_virtualbase_defaultStyle".}
proc fcQsciLexerBatch_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_defaultStyle".}
proc fcQsciLexerBatch_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_description".}
proc fQsciLexerBatch_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerBatch_virtualbase_paper".}
proc fcQsciLexerBatch_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_paper".}
proc fQsciLexerBatch_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerBatch_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerBatch_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_defaultColorWithStyle".}
proc fQsciLexerBatch_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerBatch_virtualbase_defaultEolFill".}
proc fcQsciLexerBatch_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_defaultEolFill".}
proc fQsciLexerBatch_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerBatch_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerBatch_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_defaultFontWithStyle".}
proc fQsciLexerBatch_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerBatch_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerBatch_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerBatch_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerBatch_virtualbase_setEditor".}
proc fcQsciLexerBatch_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_setEditor".}
proc fQsciLexerBatch_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerBatch_virtualbase_refreshProperties".}
proc fcQsciLexerBatch_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_refreshProperties".}
proc fQsciLexerBatch_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerBatch_virtualbase_styleBitsNeeded".}
proc fcQsciLexerBatch_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_styleBitsNeeded".}
proc fQsciLexerBatch_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerBatch_virtualbase_wordCharacters".}
proc fcQsciLexerBatch_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_wordCharacters".}
proc fQsciLexerBatch_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerBatch_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerBatch_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_setAutoIndentStyle".}
proc fQsciLexerBatch_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerBatch_virtualbase_setColor".}
proc fcQsciLexerBatch_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_setColor".}
proc fQsciLexerBatch_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerBatch_virtualbase_setEolFill".}
proc fcQsciLexerBatch_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_setEolFill".}
proc fQsciLexerBatch_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerBatch_virtualbase_setFont".}
proc fcQsciLexerBatch_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_setFont".}
proc fQsciLexerBatch_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerBatch_virtualbase_setPaper".}
proc fcQsciLexerBatch_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_setPaper".}
proc fQsciLexerBatch_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerBatch_virtualbase_readProperties".}
proc fcQsciLexerBatch_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_readProperties".}
proc fQsciLexerBatch_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerBatch_virtualbase_writeProperties".}
proc fcQsciLexerBatch_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_writeProperties".}
proc fQsciLexerBatch_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerBatch_virtualbase_event".}
proc fcQsciLexerBatch_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_event".}
proc fQsciLexerBatch_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerBatch_virtualbase_eventFilter".}
proc fcQsciLexerBatch_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_eventFilter".}
proc fQsciLexerBatch_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerBatch_virtualbase_timerEvent".}
proc fcQsciLexerBatch_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_timerEvent".}
proc fQsciLexerBatch_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerBatch_virtualbase_childEvent".}
proc fcQsciLexerBatch_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_childEvent".}
proc fQsciLexerBatch_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerBatch_virtualbase_customEvent".}
proc fcQsciLexerBatch_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_customEvent".}
proc fQsciLexerBatch_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerBatch_virtualbase_connectNotify".}
proc fcQsciLexerBatch_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_connectNotify".}
proc fQsciLexerBatch_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerBatch_virtualbase_disconnectNotify".}
proc fcQsciLexerBatch_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerBatch_override_virtual_disconnectNotify".}
proc fcQsciLexerBatch_staticMetaObject(): pointer {.importc: "QsciLexerBatch_staticMetaObject".}
proc fcQsciLexerBatch_delete(self: pointer) {.importc: "QsciLexerBatch_delete".}


func init*(T: type gen_qscilexerbatch_types.QsciLexerBatch, h: ptr cQsciLexerBatch): gen_qscilexerbatch_types.QsciLexerBatch =
  T(h: h)
proc create*(T: type gen_qscilexerbatch_types.QsciLexerBatch, ): gen_qscilexerbatch_types.QsciLexerBatch =

  gen_qscilexerbatch_types.QsciLexerBatch.init(fcQsciLexerBatch_new())
proc create*(T: type gen_qscilexerbatch_types.QsciLexerBatch, parent: gen_qobject.QObject): gen_qscilexerbatch_types.QsciLexerBatch =

  gen_qscilexerbatch_types.QsciLexerBatch.init(fcQsciLexerBatch_new2(parent.h))
proc metaObject*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerBatch_metaObject(self.h))

proc metacast*(self: gen_qscilexerbatch_types.QsciLexerBatch, param1: cstring): pointer =

  fcQsciLexerBatch_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerbatch_types.QsciLexerBatch, param1: cint, param2: cint, param3: pointer): cint =

  fcQsciLexerBatch_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerbatch_types.QsciLexerBatch, s: cstring): string =

  let v_ms = fcQsciLexerBatch_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): cstring =

  (fcQsciLexerBatch_language(self.h))

proc lexer*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): cstring =

  (fcQsciLexerBatch_lexer(self.h))

proc wordCharacters*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): cstring =

  (fcQsciLexerBatch_wordCharacters(self.h))

proc caseSensitive*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): bool =

  fcQsciLexerBatch_caseSensitive(self.h)

proc defaultColor*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerBatch_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: cint): bool =

  fcQsciLexerBatch_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerBatch_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerBatch_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexerbatch_types.QsciLexerBatch, set: cint): cstring =

  (fcQsciLexerBatch_keywords(self.h, set))

proc description*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: cint): string =

  let v_ms = fcQsciLexerBatch_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr2*(_: type gen_qscilexerbatch_types.QsciLexerBatch, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerBatch_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qscilexerbatch_types.QsciLexerBatch, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerBatch_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QsciLexerBatchmetaObject*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQsciLexerBatch_virtualbase_metaObject(self.h))

type QsciLexerBatchmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_metaObject(self: ptr cQsciLexerBatch, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerBatch_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerBatchmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerBatchmetacast*(self: gen_qscilexerbatch_types.QsciLexerBatch, param1: cstring): pointer =

  fQsciLexerBatch_virtualbase_metacast(self.h, param1)

type QsciLexerBatchmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_metacast(self: ptr cQsciLexerBatch, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerBatch_metacast ".} =
  var nimfunc = cast[ptr QsciLexerBatchmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerBatchmetacall*(self: gen_qscilexerbatch_types.QsciLexerBatch, param1: cint, param2: cint, param3: pointer): cint =

  fQsciLexerBatch_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerBatchmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_metacall(self: ptr cQsciLexerBatch, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerBatch_metacall ".} =
  var nimfunc = cast[ptr QsciLexerBatchmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerBatchlanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchlanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchlanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_language(self: ptr cQsciLexerBatch, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerBatch_language ".} =
  var nimfunc = cast[ptr QsciLexerBatchlanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerBatchlexer*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): cstring =

  (fQsciLexerBatch_virtualbase_lexer(self.h))

type QsciLexerBatchlexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchlexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchlexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_lexer(self: ptr cQsciLexerBatch, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerBatch_lexer ".} =
  var nimfunc = cast[ptr QsciLexerBatchlexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerBatchlexerId*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): cint =

  fQsciLexerBatch_virtualbase_lexerId(self.h)

type QsciLexerBatchlexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchlexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchlexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_lexerId(self: ptr cQsciLexerBatch, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerBatch_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerBatchlexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerBatchautoCompletionFillups*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): cstring =

  (fQsciLexerBatch_virtualbase_autoCompletionFillups(self.h))

type QsciLexerBatchautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_autoCompletionFillups(self: ptr cQsciLexerBatch, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerBatch_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerBatchautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerBatchautoCompletionWordSeparators*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): seq[string] =

  var v_ma = fQsciLexerBatch_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerBatchautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_autoCompletionWordSeparators(self: ptr cQsciLexerBatch, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerBatch_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerBatchautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerBatchblockEnd*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: ptr cint): cstring =

  (fQsciLexerBatch_virtualbase_blockEnd(self.h, style))

type QsciLexerBatchblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_blockEnd(self: ptr cQsciLexerBatch, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerBatch_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerBatchblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerBatchblockLookback*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): cint =

  fQsciLexerBatch_virtualbase_blockLookback(self.h)

type QsciLexerBatchblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_blockLookback(self: ptr cQsciLexerBatch, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerBatch_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerBatchblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerBatchblockStart*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: ptr cint): cstring =

  (fQsciLexerBatch_virtualbase_blockStart(self.h, style))

type QsciLexerBatchblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_blockStart(self: ptr cQsciLexerBatch, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerBatch_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerBatchblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerBatchblockStartKeyword*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: ptr cint): cstring =

  (fQsciLexerBatch_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerBatchblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_blockStartKeyword(self: ptr cQsciLexerBatch, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerBatch_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerBatchblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerBatchbraceStyle*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): cint =

  fQsciLexerBatch_virtualbase_braceStyle(self.h)

type QsciLexerBatchbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_braceStyle(self: ptr cQsciLexerBatch, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerBatch_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerBatchbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerBatchcaseSensitive*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): bool =

  fQsciLexerBatch_virtualbase_caseSensitive(self.h)

type QsciLexerBatchcaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchcaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchcaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_caseSensitive(self: ptr cQsciLexerBatch, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerBatch_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerBatchcaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerBatchcolor*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerBatch_virtualbase_color(self.h, style))

type QsciLexerBatchcolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchcolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchcolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_color(self: ptr cQsciLexerBatch, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerBatch_color ".} =
  var nimfunc = cast[ptr QsciLexerBatchcolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerBatcheolFill*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: cint): bool =

  fQsciLexerBatch_virtualbase_eolFill(self.h, style)

type QsciLexerBatcheolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatcheolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatcheolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_eolFill(self: ptr cQsciLexerBatch, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerBatch_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerBatcheolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerBatchfont*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerBatch_virtualbase_font(self.h, style))

type QsciLexerBatchfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_font(self: ptr cQsciLexerBatch, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerBatch_font ".} =
  var nimfunc = cast[ptr QsciLexerBatchfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerBatchindentationGuideView*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): cint =

  fQsciLexerBatch_virtualbase_indentationGuideView(self.h)

type QsciLexerBatchindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_indentationGuideView(self: ptr cQsciLexerBatch, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerBatch_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerBatchindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerBatchkeywords*(self: gen_qscilexerbatch_types.QsciLexerBatch, set: cint): cstring =

  (fQsciLexerBatch_virtualbase_keywords(self.h, set))

type QsciLexerBatchkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_keywords(self: ptr cQsciLexerBatch, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerBatch_keywords ".} =
  var nimfunc = cast[ptr QsciLexerBatchkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerBatchdefaultStyle*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): cint =

  fQsciLexerBatch_virtualbase_defaultStyle(self.h)

type QsciLexerBatchdefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchdefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchdefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_defaultStyle(self: ptr cQsciLexerBatch, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerBatch_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerBatchdefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerBatchdescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchdescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchdescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_description(self: ptr cQsciLexerBatch, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerBatch_description ".} =
  var nimfunc = cast[ptr QsciLexerBatchdescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerBatchpaper*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerBatch_virtualbase_paper(self.h, style))

type QsciLexerBatchpaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchpaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchpaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_paper(self: ptr cQsciLexerBatch, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerBatch_paper ".} =
  var nimfunc = cast[ptr QsciLexerBatchpaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerBatchdefaultColorWithStyle*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerBatch_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerBatchdefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchdefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchdefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_defaultColorWithStyle(self: ptr cQsciLexerBatch, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerBatch_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerBatchdefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerBatchdefaultEolFill*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: cint): bool =

  fQsciLexerBatch_virtualbase_defaultEolFill(self.h, style)

type QsciLexerBatchdefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchdefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchdefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_defaultEolFill(self: ptr cQsciLexerBatch, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerBatch_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerBatchdefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerBatchdefaultFontWithStyle*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerBatch_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerBatchdefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchdefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchdefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_defaultFontWithStyle(self: ptr cQsciLexerBatch, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerBatch_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerBatchdefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerBatchdefaultPaperWithStyle*(self: gen_qscilexerbatch_types.QsciLexerBatch, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerBatch_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerBatchdefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchdefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchdefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_defaultPaperWithStyle(self: ptr cQsciLexerBatch, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerBatch_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerBatchdefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerBatchsetEditor*(self: gen_qscilexerbatch_types.QsciLexerBatch, editor: gen_qsciscintilla.QsciScintilla): void =

  fQsciLexerBatch_virtualbase_setEditor(self.h, editor.h)

type QsciLexerBatchsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_setEditor(self: ptr cQsciLexerBatch, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerBatch_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerBatchsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerBatchrefreshProperties*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): void =

  fQsciLexerBatch_virtualbase_refreshProperties(self.h)

type QsciLexerBatchrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_refreshProperties(self: ptr cQsciLexerBatch, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerBatch_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerBatchrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerBatchstyleBitsNeeded*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): cint =

  fQsciLexerBatch_virtualbase_styleBitsNeeded(self.h)

type QsciLexerBatchstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_styleBitsNeeded(self: ptr cQsciLexerBatch, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerBatch_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerBatchstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerBatchwordCharacters*(self: gen_qscilexerbatch_types.QsciLexerBatch, ): cstring =

  (fQsciLexerBatch_virtualbase_wordCharacters(self.h))

type QsciLexerBatchwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_wordCharacters(self: ptr cQsciLexerBatch, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerBatch_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerBatchwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerBatchsetAutoIndentStyle*(self: gen_qscilexerbatch_types.QsciLexerBatch, autoindentstyle: cint): void =

  fQsciLexerBatch_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerBatchsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_setAutoIndentStyle(self: ptr cQsciLexerBatch, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerBatch_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerBatchsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerBatchsetColor*(self: gen_qscilexerbatch_types.QsciLexerBatch, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerBatch_virtualbase_setColor(self.h, c.h, style)

type QsciLexerBatchsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_setColor(self: ptr cQsciLexerBatch, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerBatch_setColor ".} =
  var nimfunc = cast[ptr QsciLexerBatchsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerBatchsetEolFill*(self: gen_qscilexerbatch_types.QsciLexerBatch, eoffill: bool, style: cint): void =

  fQsciLexerBatch_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerBatchsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_setEolFill(self: ptr cQsciLexerBatch, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerBatch_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerBatchsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerBatchsetFont*(self: gen_qscilexerbatch_types.QsciLexerBatch, f: gen_qfont.QFont, style: cint): void =

  fQsciLexerBatch_virtualbase_setFont(self.h, f.h, style)

type QsciLexerBatchsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_setFont(self: ptr cQsciLexerBatch, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerBatch_setFont ".} =
  var nimfunc = cast[ptr QsciLexerBatchsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerBatchsetPaper*(self: gen_qscilexerbatch_types.QsciLexerBatch, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerBatch_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerBatchsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_setPaper(self: ptr cQsciLexerBatch, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerBatch_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerBatchsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerBatchreadProperties*(self: gen_qscilexerbatch_types.QsciLexerBatch, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerBatch_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerBatchreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_readProperties(self: ptr cQsciLexerBatch, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerBatch_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerBatchreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerBatchwriteProperties*(self: gen_qscilexerbatch_types.QsciLexerBatch, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerBatch_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerBatchwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_writeProperties(self: ptr cQsciLexerBatch, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerBatch_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerBatchwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerBatchevent*(self: gen_qscilexerbatch_types.QsciLexerBatch, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerBatch_virtualbase_event(self.h, event.h)

type QsciLexerBatcheventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatcheventProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatcheventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_event(self: ptr cQsciLexerBatch, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerBatch_event ".} =
  var nimfunc = cast[ptr QsciLexerBatcheventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerBatcheventFilter*(self: gen_qscilexerbatch_types.QsciLexerBatch, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerBatch_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerBatcheventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatcheventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatcheventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_eventFilter(self: ptr cQsciLexerBatch, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerBatch_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerBatcheventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerBatchtimerEvent*(self: gen_qscilexerbatch_types.QsciLexerBatch, event: gen_qcoreevent.QTimerEvent): void =

  fQsciLexerBatch_virtualbase_timerEvent(self.h, event.h)

type QsciLexerBatchtimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchtimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_timerEvent(self: ptr cQsciLexerBatch, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerBatch_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerBatchtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerBatchchildEvent*(self: gen_qscilexerbatch_types.QsciLexerBatch, event: gen_qcoreevent.QChildEvent): void =

  fQsciLexerBatch_virtualbase_childEvent(self.h, event.h)

type QsciLexerBatchchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_childEvent(self: ptr cQsciLexerBatch, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerBatch_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerBatchchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerBatchcustomEvent*(self: gen_qscilexerbatch_types.QsciLexerBatch, event: gen_qcoreevent.QEvent): void =

  fQsciLexerBatch_virtualbase_customEvent(self.h, event.h)

type QsciLexerBatchcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchcustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_customEvent(self: ptr cQsciLexerBatch, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerBatch_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerBatchcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerBatchconnectNotify*(self: gen_qscilexerbatch_types.QsciLexerBatch, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerBatch_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerBatchconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_connectNotify(self: ptr cQsciLexerBatch, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerBatch_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerBatchconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerBatchdisconnectNotify*(self: gen_qscilexerbatch_types.QsciLexerBatch, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerBatch_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerBatchdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexerbatch_types.QsciLexerBatch, slot: QsciLexerBatchdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerBatchdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerBatch_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerBatch_disconnectNotify(self: ptr cQsciLexerBatch, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerBatch_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerBatchdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexerbatch_types.QsciLexerBatch): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerBatch_staticMetaObject())
proc delete*(self: gen_qscilexerbatch_types.QsciLexerBatch) =
  fcQsciLexerBatch_delete(self.h)
