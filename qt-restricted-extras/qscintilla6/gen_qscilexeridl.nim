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
{.compile("gen_qscilexeridl.cpp", cflags).}


import gen_qscilexeridl_types
export gen_qscilexeridl_types

import
  gen_qcolor,
  gen_qcoreevent,
  gen_qfont,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qscilexercpp,
  gen_qsciscintilla,
  gen_qsettings
export
  gen_qcolor,
  gen_qcoreevent,
  gen_qfont,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qscilexercpp,
  gen_qsciscintilla,
  gen_qsettings

type cQsciLexerIDL*{.exportc: "QsciLexerIDL", incompleteStruct.} = object

proc fcQsciLexerIDL_new(): ptr cQsciLexerIDL {.importc: "QsciLexerIDL_new".}
proc fcQsciLexerIDL_new2(parent: pointer): ptr cQsciLexerIDL {.importc: "QsciLexerIDL_new2".}
proc fcQsciLexerIDL_metaObject(self: pointer, ): pointer {.importc: "QsciLexerIDL_metaObject".}
proc fcQsciLexerIDL_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerIDL_metacast".}
proc fcQsciLexerIDL_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerIDL_metacall".}
proc fcQsciLexerIDL_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerIDL_tr".}
proc fcQsciLexerIDL_language(self: pointer, ): cstring {.importc: "QsciLexerIDL_language".}
proc fcQsciLexerIDL_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerIDL_defaultColor".}
proc fcQsciLexerIDL_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerIDL_keywords".}
proc fcQsciLexerIDL_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerIDL_description".}
proc fcQsciLexerIDL_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerIDL_tr2".}
proc fcQsciLexerIDL_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerIDL_tr3".}
proc fQsciLexerIDL_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerIDL_virtualbase_metaObject".}
proc fcQsciLexerIDL_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_metaObject".}
proc fQsciLexerIDL_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerIDL_virtualbase_metacast".}
proc fcQsciLexerIDL_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_metacast".}
proc fQsciLexerIDL_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerIDL_virtualbase_metacall".}
proc fcQsciLexerIDL_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_metacall".}
proc fQsciLexerIDL_virtualbase_setFoldAtElse(self: pointer, fold: bool): void{.importc: "QsciLexerIDL_virtualbase_setFoldAtElse".}
proc fcQsciLexerIDL_override_virtual_setFoldAtElse(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_setFoldAtElse".}
proc fQsciLexerIDL_virtualbase_setFoldComments(self: pointer, fold: bool): void{.importc: "QsciLexerIDL_virtualbase_setFoldComments".}
proc fcQsciLexerIDL_override_virtual_setFoldComments(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_setFoldComments".}
proc fQsciLexerIDL_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerIDL_virtualbase_setFoldCompact".}
proc fcQsciLexerIDL_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_setFoldCompact".}
proc fQsciLexerIDL_virtualbase_setFoldPreprocessor(self: pointer, fold: bool): void{.importc: "QsciLexerIDL_virtualbase_setFoldPreprocessor".}
proc fcQsciLexerIDL_override_virtual_setFoldPreprocessor(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_setFoldPreprocessor".}
proc fQsciLexerIDL_virtualbase_setStylePreprocessor(self: pointer, style: bool): void{.importc: "QsciLexerIDL_virtualbase_setStylePreprocessor".}
proc fcQsciLexerIDL_override_virtual_setStylePreprocessor(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_setStylePreprocessor".}
proc fcQsciLexerIDL_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_language".}
proc fQsciLexerIDL_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerIDL_virtualbase_lexer".}
proc fcQsciLexerIDL_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_lexer".}
proc fQsciLexerIDL_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerIDL_virtualbase_lexerId".}
proc fcQsciLexerIDL_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_lexerId".}
proc fQsciLexerIDL_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerIDL_virtualbase_autoCompletionFillups".}
proc fcQsciLexerIDL_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_autoCompletionFillups".}
proc fQsciLexerIDL_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerIDL_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerIDL_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerIDL_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerIDL_virtualbase_blockEnd".}
proc fcQsciLexerIDL_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_blockEnd".}
proc fQsciLexerIDL_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerIDL_virtualbase_blockLookback".}
proc fcQsciLexerIDL_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_blockLookback".}
proc fQsciLexerIDL_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerIDL_virtualbase_blockStart".}
proc fcQsciLexerIDL_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_blockStart".}
proc fQsciLexerIDL_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerIDL_virtualbase_blockStartKeyword".}
proc fcQsciLexerIDL_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_blockStartKeyword".}
proc fQsciLexerIDL_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerIDL_virtualbase_braceStyle".}
proc fcQsciLexerIDL_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_braceStyle".}
proc fQsciLexerIDL_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerIDL_virtualbase_caseSensitive".}
proc fcQsciLexerIDL_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_caseSensitive".}
proc fQsciLexerIDL_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerIDL_virtualbase_color".}
proc fcQsciLexerIDL_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_color".}
proc fQsciLexerIDL_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerIDL_virtualbase_eolFill".}
proc fcQsciLexerIDL_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_eolFill".}
proc fQsciLexerIDL_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerIDL_virtualbase_font".}
proc fcQsciLexerIDL_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_font".}
proc fQsciLexerIDL_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerIDL_virtualbase_indentationGuideView".}
proc fcQsciLexerIDL_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_indentationGuideView".}
proc fQsciLexerIDL_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerIDL_virtualbase_keywords".}
proc fcQsciLexerIDL_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_keywords".}
proc fQsciLexerIDL_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerIDL_virtualbase_defaultStyle".}
proc fcQsciLexerIDL_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_defaultStyle".}
proc fcQsciLexerIDL_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_description".}
proc fQsciLexerIDL_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerIDL_virtualbase_paper".}
proc fcQsciLexerIDL_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_paper".}
proc fQsciLexerIDL_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerIDL_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerIDL_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_defaultColorWithStyle".}
proc fQsciLexerIDL_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerIDL_virtualbase_defaultEolFill".}
proc fcQsciLexerIDL_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_defaultEolFill".}
proc fQsciLexerIDL_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerIDL_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerIDL_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_defaultFontWithStyle".}
proc fQsciLexerIDL_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerIDL_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerIDL_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerIDL_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerIDL_virtualbase_setEditor".}
proc fcQsciLexerIDL_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_setEditor".}
proc fQsciLexerIDL_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerIDL_virtualbase_refreshProperties".}
proc fcQsciLexerIDL_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_refreshProperties".}
proc fQsciLexerIDL_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerIDL_virtualbase_styleBitsNeeded".}
proc fcQsciLexerIDL_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_styleBitsNeeded".}
proc fQsciLexerIDL_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerIDL_virtualbase_wordCharacters".}
proc fcQsciLexerIDL_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_wordCharacters".}
proc fQsciLexerIDL_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerIDL_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerIDL_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_setAutoIndentStyle".}
proc fQsciLexerIDL_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerIDL_virtualbase_setColor".}
proc fcQsciLexerIDL_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_setColor".}
proc fQsciLexerIDL_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerIDL_virtualbase_setEolFill".}
proc fcQsciLexerIDL_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_setEolFill".}
proc fQsciLexerIDL_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerIDL_virtualbase_setFont".}
proc fcQsciLexerIDL_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_setFont".}
proc fQsciLexerIDL_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerIDL_virtualbase_setPaper".}
proc fcQsciLexerIDL_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_setPaper".}
proc fQsciLexerIDL_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerIDL_virtualbase_readProperties".}
proc fcQsciLexerIDL_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_readProperties".}
proc fQsciLexerIDL_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerIDL_virtualbase_writeProperties".}
proc fcQsciLexerIDL_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_writeProperties".}
proc fQsciLexerIDL_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerIDL_virtualbase_event".}
proc fcQsciLexerIDL_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_event".}
proc fQsciLexerIDL_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerIDL_virtualbase_eventFilter".}
proc fcQsciLexerIDL_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_eventFilter".}
proc fQsciLexerIDL_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerIDL_virtualbase_timerEvent".}
proc fcQsciLexerIDL_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_timerEvent".}
proc fQsciLexerIDL_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerIDL_virtualbase_childEvent".}
proc fcQsciLexerIDL_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_childEvent".}
proc fQsciLexerIDL_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerIDL_virtualbase_customEvent".}
proc fcQsciLexerIDL_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_customEvent".}
proc fQsciLexerIDL_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerIDL_virtualbase_connectNotify".}
proc fcQsciLexerIDL_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_connectNotify".}
proc fQsciLexerIDL_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerIDL_virtualbase_disconnectNotify".}
proc fcQsciLexerIDL_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerIDL_override_virtual_disconnectNotify".}
proc fcQsciLexerIDL_staticMetaObject(): pointer {.importc: "QsciLexerIDL_staticMetaObject".}
proc fcQsciLexerIDL_delete(self: pointer) {.importc: "QsciLexerIDL_delete".}


func init*(T: type gen_qscilexeridl_types.QsciLexerIDL, h: ptr cQsciLexerIDL): gen_qscilexeridl_types.QsciLexerIDL =
  T(h: h)
proc create*(T: type gen_qscilexeridl_types.QsciLexerIDL, ): gen_qscilexeridl_types.QsciLexerIDL =

  gen_qscilexeridl_types.QsciLexerIDL.init(fcQsciLexerIDL_new())
proc create*(T: type gen_qscilexeridl_types.QsciLexerIDL, parent: gen_qobject.QObject): gen_qscilexeridl_types.QsciLexerIDL =

  gen_qscilexeridl_types.QsciLexerIDL.init(fcQsciLexerIDL_new2(parent.h))
proc metaObject*(self: gen_qscilexeridl_types.QsciLexerIDL, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerIDL_metaObject(self.h))

proc metacast*(self: gen_qscilexeridl_types.QsciLexerIDL, param1: cstring): pointer =

  fcQsciLexerIDL_metacast(self.h, param1)

proc metacall*(self: gen_qscilexeridl_types.QsciLexerIDL, param1: cint, param2: cint, param3: pointer): cint =

  fcQsciLexerIDL_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexeridl_types.QsciLexerIDL, s: cstring): string =

  let v_ms = fcQsciLexerIDL_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexeridl_types.QsciLexerIDL, ): cstring =

  (fcQsciLexerIDL_language(self.h))

proc defaultColor*(self: gen_qscilexeridl_types.QsciLexerIDL, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerIDL_defaultColor(self.h, style))

proc keywords*(self: gen_qscilexeridl_types.QsciLexerIDL, set: cint): cstring =

  (fcQsciLexerIDL_keywords(self.h, set))

proc description*(self: gen_qscilexeridl_types.QsciLexerIDL, style: cint): string =

  let v_ms = fcQsciLexerIDL_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr2*(_: type gen_qscilexeridl_types.QsciLexerIDL, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerIDL_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qscilexeridl_types.QsciLexerIDL, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerIDL_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QsciLexerIDLmetaObject*(self: gen_qscilexeridl_types.QsciLexerIDL, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQsciLexerIDL_virtualbase_metaObject(self.h))

type QsciLexerIDLmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_metaObject(self: ptr cQsciLexerIDL, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerIDL_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerIDLmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerIDLmetacast*(self: gen_qscilexeridl_types.QsciLexerIDL, param1: cstring): pointer =

  fQsciLexerIDL_virtualbase_metacast(self.h, param1)

type QsciLexerIDLmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_metacast(self: ptr cQsciLexerIDL, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerIDL_metacast ".} =
  var nimfunc = cast[ptr QsciLexerIDLmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerIDLmetacall*(self: gen_qscilexeridl_types.QsciLexerIDL, param1: cint, param2: cint, param3: pointer): cint =

  fQsciLexerIDL_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerIDLmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_metacall(self: ptr cQsciLexerIDL, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerIDL_metacall ".} =
  var nimfunc = cast[ptr QsciLexerIDLmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciLexerIDLsetFoldAtElse*(self: gen_qscilexeridl_types.QsciLexerIDL, fold: bool): void =

  fQsciLexerIDL_virtualbase_setFoldAtElse(self.h, fold)

type QsciLexerIDLsetFoldAtElseProc* = proc(fold: bool): void
proc onsetFoldAtElse*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLsetFoldAtElseProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLsetFoldAtElseProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_setFoldAtElse(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_setFoldAtElse(self: ptr cQsciLexerIDL, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerIDL_setFoldAtElse ".} =
  var nimfunc = cast[ptr QsciLexerIDLsetFoldAtElseProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerIDLsetFoldComments*(self: gen_qscilexeridl_types.QsciLexerIDL, fold: bool): void =

  fQsciLexerIDL_virtualbase_setFoldComments(self.h, fold)

type QsciLexerIDLsetFoldCommentsProc* = proc(fold: bool): void
proc onsetFoldComments*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLsetFoldCommentsProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLsetFoldCommentsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_setFoldComments(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_setFoldComments(self: ptr cQsciLexerIDL, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerIDL_setFoldComments ".} =
  var nimfunc = cast[ptr QsciLexerIDLsetFoldCommentsProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerIDLsetFoldCompact*(self: gen_qscilexeridl_types.QsciLexerIDL, fold: bool): void =

  fQsciLexerIDL_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerIDLsetFoldCompactProc* = proc(fold: bool): void
proc onsetFoldCompact*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLsetFoldCompactProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLsetFoldCompactProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_setFoldCompact(self: ptr cQsciLexerIDL, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerIDL_setFoldCompact ".} =
  var nimfunc = cast[ptr QsciLexerIDLsetFoldCompactProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerIDLsetFoldPreprocessor*(self: gen_qscilexeridl_types.QsciLexerIDL, fold: bool): void =

  fQsciLexerIDL_virtualbase_setFoldPreprocessor(self.h, fold)

type QsciLexerIDLsetFoldPreprocessorProc* = proc(fold: bool): void
proc onsetFoldPreprocessor*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLsetFoldPreprocessorProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLsetFoldPreprocessorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_setFoldPreprocessor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_setFoldPreprocessor(self: ptr cQsciLexerIDL, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerIDL_setFoldPreprocessor ".} =
  var nimfunc = cast[ptr QsciLexerIDLsetFoldPreprocessorProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerIDLsetStylePreprocessor*(self: gen_qscilexeridl_types.QsciLexerIDL, style: bool): void =

  fQsciLexerIDL_virtualbase_setStylePreprocessor(self.h, style)

type QsciLexerIDLsetStylePreprocessorProc* = proc(style: bool): void
proc onsetStylePreprocessor*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLsetStylePreprocessorProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLsetStylePreprocessorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_setStylePreprocessor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_setStylePreprocessor(self: ptr cQsciLexerIDL, slot: int, style: bool): void {.exportc: "miqt_exec_callback_QsciLexerIDL_setStylePreprocessor ".} =
  var nimfunc = cast[ptr QsciLexerIDLsetStylePreprocessorProc](cast[pointer](slot))
  let slotval1 = style


  nimfunc[](slotval1)
type QsciLexerIDLlanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLlanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLlanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_language(self: ptr cQsciLexerIDL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerIDL_language ".} =
  var nimfunc = cast[ptr QsciLexerIDLlanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerIDLlexer*(self: gen_qscilexeridl_types.QsciLexerIDL, ): cstring =

  (fQsciLexerIDL_virtualbase_lexer(self.h))

type QsciLexerIDLlexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLlexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLlexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_lexer(self: ptr cQsciLexerIDL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerIDL_lexer ".} =
  var nimfunc = cast[ptr QsciLexerIDLlexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerIDLlexerId*(self: gen_qscilexeridl_types.QsciLexerIDL, ): cint =

  fQsciLexerIDL_virtualbase_lexerId(self.h)

type QsciLexerIDLlexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLlexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLlexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_lexerId(self: ptr cQsciLexerIDL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerIDL_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerIDLlexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerIDLautoCompletionFillups*(self: gen_qscilexeridl_types.QsciLexerIDL, ): cstring =

  (fQsciLexerIDL_virtualbase_autoCompletionFillups(self.h))

type QsciLexerIDLautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_autoCompletionFillups(self: ptr cQsciLexerIDL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerIDL_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerIDLautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerIDLautoCompletionWordSeparators*(self: gen_qscilexeridl_types.QsciLexerIDL, ): seq[string] =

  var v_ma = fQsciLexerIDL_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerIDLautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_autoCompletionWordSeparators(self: ptr cQsciLexerIDL, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerIDL_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerIDLautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerIDLblockEnd*(self: gen_qscilexeridl_types.QsciLexerIDL, style: ptr cint): cstring =

  (fQsciLexerIDL_virtualbase_blockEnd(self.h, style))

type QsciLexerIDLblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_blockEnd(self: ptr cQsciLexerIDL, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerIDL_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerIDLblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerIDLblockLookback*(self: gen_qscilexeridl_types.QsciLexerIDL, ): cint =

  fQsciLexerIDL_virtualbase_blockLookback(self.h)

type QsciLexerIDLblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_blockLookback(self: ptr cQsciLexerIDL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerIDL_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerIDLblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerIDLblockStart*(self: gen_qscilexeridl_types.QsciLexerIDL, style: ptr cint): cstring =

  (fQsciLexerIDL_virtualbase_blockStart(self.h, style))

type QsciLexerIDLblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_blockStart(self: ptr cQsciLexerIDL, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerIDL_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerIDLblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerIDLblockStartKeyword*(self: gen_qscilexeridl_types.QsciLexerIDL, style: ptr cint): cstring =

  (fQsciLexerIDL_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerIDLblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_blockStartKeyword(self: ptr cQsciLexerIDL, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerIDL_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerIDLblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerIDLbraceStyle*(self: gen_qscilexeridl_types.QsciLexerIDL, ): cint =

  fQsciLexerIDL_virtualbase_braceStyle(self.h)

type QsciLexerIDLbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_braceStyle(self: ptr cQsciLexerIDL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerIDL_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerIDLbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerIDLcaseSensitive*(self: gen_qscilexeridl_types.QsciLexerIDL, ): bool =

  fQsciLexerIDL_virtualbase_caseSensitive(self.h)

type QsciLexerIDLcaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLcaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLcaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_caseSensitive(self: ptr cQsciLexerIDL, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerIDL_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerIDLcaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerIDLcolor*(self: gen_qscilexeridl_types.QsciLexerIDL, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerIDL_virtualbase_color(self.h, style))

type QsciLexerIDLcolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLcolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLcolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_color(self: ptr cQsciLexerIDL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerIDL_color ".} =
  var nimfunc = cast[ptr QsciLexerIDLcolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerIDLeolFill*(self: gen_qscilexeridl_types.QsciLexerIDL, style: cint): bool =

  fQsciLexerIDL_virtualbase_eolFill(self.h, style)

type QsciLexerIDLeolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLeolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLeolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_eolFill(self: ptr cQsciLexerIDL, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerIDL_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerIDLeolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerIDLfont*(self: gen_qscilexeridl_types.QsciLexerIDL, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerIDL_virtualbase_font(self.h, style))

type QsciLexerIDLfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_font(self: ptr cQsciLexerIDL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerIDL_font ".} =
  var nimfunc = cast[ptr QsciLexerIDLfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerIDLindentationGuideView*(self: gen_qscilexeridl_types.QsciLexerIDL, ): cint =

  fQsciLexerIDL_virtualbase_indentationGuideView(self.h)

type QsciLexerIDLindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_indentationGuideView(self: ptr cQsciLexerIDL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerIDL_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerIDLindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerIDLkeywords*(self: gen_qscilexeridl_types.QsciLexerIDL, set: cint): cstring =

  (fQsciLexerIDL_virtualbase_keywords(self.h, set))

type QsciLexerIDLkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_keywords(self: ptr cQsciLexerIDL, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerIDL_keywords ".} =
  var nimfunc = cast[ptr QsciLexerIDLkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerIDLdefaultStyle*(self: gen_qscilexeridl_types.QsciLexerIDL, ): cint =

  fQsciLexerIDL_virtualbase_defaultStyle(self.h)

type QsciLexerIDLdefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLdefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLdefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_defaultStyle(self: ptr cQsciLexerIDL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerIDL_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerIDLdefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerIDLdescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLdescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLdescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_description(self: ptr cQsciLexerIDL, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerIDL_description ".} =
  var nimfunc = cast[ptr QsciLexerIDLdescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerIDLpaper*(self: gen_qscilexeridl_types.QsciLexerIDL, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerIDL_virtualbase_paper(self.h, style))

type QsciLexerIDLpaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLpaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLpaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_paper(self: ptr cQsciLexerIDL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerIDL_paper ".} =
  var nimfunc = cast[ptr QsciLexerIDLpaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerIDLdefaultColorWithStyle*(self: gen_qscilexeridl_types.QsciLexerIDL, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerIDL_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerIDLdefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLdefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLdefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_defaultColorWithStyle(self: ptr cQsciLexerIDL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerIDL_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerIDLdefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerIDLdefaultEolFill*(self: gen_qscilexeridl_types.QsciLexerIDL, style: cint): bool =

  fQsciLexerIDL_virtualbase_defaultEolFill(self.h, style)

type QsciLexerIDLdefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLdefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLdefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_defaultEolFill(self: ptr cQsciLexerIDL, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerIDL_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerIDLdefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerIDLdefaultFontWithStyle*(self: gen_qscilexeridl_types.QsciLexerIDL, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerIDL_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerIDLdefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLdefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLdefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_defaultFontWithStyle(self: ptr cQsciLexerIDL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerIDL_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerIDLdefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerIDLdefaultPaperWithStyle*(self: gen_qscilexeridl_types.QsciLexerIDL, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerIDL_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerIDLdefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLdefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLdefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_defaultPaperWithStyle(self: ptr cQsciLexerIDL, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerIDL_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerIDLdefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerIDLsetEditor*(self: gen_qscilexeridl_types.QsciLexerIDL, editor: gen_qsciscintilla.QsciScintilla): void =

  fQsciLexerIDL_virtualbase_setEditor(self.h, editor.h)

type QsciLexerIDLsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_setEditor(self: ptr cQsciLexerIDL, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerIDL_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerIDLsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerIDLrefreshProperties*(self: gen_qscilexeridl_types.QsciLexerIDL, ): void =

  fQsciLexerIDL_virtualbase_refreshProperties(self.h)

type QsciLexerIDLrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_refreshProperties(self: ptr cQsciLexerIDL, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerIDL_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerIDLrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerIDLstyleBitsNeeded*(self: gen_qscilexeridl_types.QsciLexerIDL, ): cint =

  fQsciLexerIDL_virtualbase_styleBitsNeeded(self.h)

type QsciLexerIDLstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_styleBitsNeeded(self: ptr cQsciLexerIDL, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerIDL_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerIDLstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerIDLwordCharacters*(self: gen_qscilexeridl_types.QsciLexerIDL, ): cstring =

  (fQsciLexerIDL_virtualbase_wordCharacters(self.h))

type QsciLexerIDLwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_wordCharacters(self: ptr cQsciLexerIDL, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerIDL_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerIDLwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerIDLsetAutoIndentStyle*(self: gen_qscilexeridl_types.QsciLexerIDL, autoindentstyle: cint): void =

  fQsciLexerIDL_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerIDLsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_setAutoIndentStyle(self: ptr cQsciLexerIDL, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerIDL_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerIDLsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerIDLsetColor*(self: gen_qscilexeridl_types.QsciLexerIDL, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerIDL_virtualbase_setColor(self.h, c.h, style)

type QsciLexerIDLsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_setColor(self: ptr cQsciLexerIDL, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerIDL_setColor ".} =
  var nimfunc = cast[ptr QsciLexerIDLsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerIDLsetEolFill*(self: gen_qscilexeridl_types.QsciLexerIDL, eoffill: bool, style: cint): void =

  fQsciLexerIDL_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerIDLsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_setEolFill(self: ptr cQsciLexerIDL, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerIDL_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerIDLsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerIDLsetFont*(self: gen_qscilexeridl_types.QsciLexerIDL, f: gen_qfont.QFont, style: cint): void =

  fQsciLexerIDL_virtualbase_setFont(self.h, f.h, style)

type QsciLexerIDLsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_setFont(self: ptr cQsciLexerIDL, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerIDL_setFont ".} =
  var nimfunc = cast[ptr QsciLexerIDLsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerIDLsetPaper*(self: gen_qscilexeridl_types.QsciLexerIDL, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerIDL_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerIDLsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_setPaper(self: ptr cQsciLexerIDL, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerIDL_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerIDLsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerIDLreadProperties*(self: gen_qscilexeridl_types.QsciLexerIDL, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerIDL_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerIDLreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_readProperties(self: ptr cQsciLexerIDL, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerIDL_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerIDLreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerIDLwriteProperties*(self: gen_qscilexeridl_types.QsciLexerIDL, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerIDL_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerIDLwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_writeProperties(self: ptr cQsciLexerIDL, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerIDL_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerIDLwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerIDLevent*(self: gen_qscilexeridl_types.QsciLexerIDL, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerIDL_virtualbase_event(self.h, event.h)

type QsciLexerIDLeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLeventProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_event(self: ptr cQsciLexerIDL, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerIDL_event ".} =
  var nimfunc = cast[ptr QsciLexerIDLeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerIDLeventFilter*(self: gen_qscilexeridl_types.QsciLexerIDL, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerIDL_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerIDLeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_eventFilter(self: ptr cQsciLexerIDL, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerIDL_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerIDLeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerIDLtimerEvent*(self: gen_qscilexeridl_types.QsciLexerIDL, event: gen_qcoreevent.QTimerEvent): void =

  fQsciLexerIDL_virtualbase_timerEvent(self.h, event.h)

type QsciLexerIDLtimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLtimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_timerEvent(self: ptr cQsciLexerIDL, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerIDL_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerIDLtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerIDLchildEvent*(self: gen_qscilexeridl_types.QsciLexerIDL, event: gen_qcoreevent.QChildEvent): void =

  fQsciLexerIDL_virtualbase_childEvent(self.h, event.h)

type QsciLexerIDLchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_childEvent(self: ptr cQsciLexerIDL, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerIDL_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerIDLchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerIDLcustomEvent*(self: gen_qscilexeridl_types.QsciLexerIDL, event: gen_qcoreevent.QEvent): void =

  fQsciLexerIDL_virtualbase_customEvent(self.h, event.h)

type QsciLexerIDLcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLcustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_customEvent(self: ptr cQsciLexerIDL, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerIDL_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerIDLcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerIDLconnectNotify*(self: gen_qscilexeridl_types.QsciLexerIDL, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerIDL_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerIDLconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_connectNotify(self: ptr cQsciLexerIDL, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerIDL_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerIDLconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerIDLdisconnectNotify*(self: gen_qscilexeridl_types.QsciLexerIDL, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerIDL_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerIDLdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexeridl_types.QsciLexerIDL, slot: QsciLexerIDLdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerIDLdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerIDL_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerIDL_disconnectNotify(self: ptr cQsciLexerIDL, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerIDL_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerIDLdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexeridl_types.QsciLexerIDL): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerIDL_staticMetaObject())
proc delete*(self: gen_qscilexeridl_types.QsciLexerIDL) =
  fcQsciLexerIDL_delete(self.h)
