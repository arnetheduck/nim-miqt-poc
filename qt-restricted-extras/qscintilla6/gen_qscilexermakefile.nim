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


type QsciLexerMakefileEnumEnum* = distinct cint
template Default*(_: type QsciLexerMakefileEnumEnum): untyped = 0
template Comment*(_: type QsciLexerMakefileEnumEnum): untyped = 1
template Preprocessor*(_: type QsciLexerMakefileEnumEnum): untyped = 2
template Variable*(_: type QsciLexerMakefileEnumEnum): untyped = 3
template Operator*(_: type QsciLexerMakefileEnumEnum): untyped = 4
template Target*(_: type QsciLexerMakefileEnumEnum): untyped = 5
template Error*(_: type QsciLexerMakefileEnumEnum): untyped = 9


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
proc fQsciLexerMakefile_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerMakefile_virtualbase_metaObject".}
proc fcQsciLexerMakefile_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_metaObject".}
proc fQsciLexerMakefile_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerMakefile_virtualbase_metacast".}
proc fcQsciLexerMakefile_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerMakefile_override_virtual_metacast".}
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
proc fcQsciLexerMakefile_staticMetaObject(): pointer {.importc: "QsciLexerMakefile_staticMetaObject".}
proc fcQsciLexerMakefile_delete(self: pointer) {.importc: "QsciLexerMakefile_delete".}


func init*(T: type gen_qscilexermakefile_types.QsciLexerMakefile, h: ptr cQsciLexerMakefile): gen_qscilexermakefile_types.QsciLexerMakefile =
  T(h: h)
proc create*(T: type gen_qscilexermakefile_types.QsciLexerMakefile, ): gen_qscilexermakefile_types.QsciLexerMakefile =
  gen_qscilexermakefile_types.QsciLexerMakefile.init(fcQsciLexerMakefile_new())

proc create*(T: type gen_qscilexermakefile_types.QsciLexerMakefile, parent: gen_qobject.QObject): gen_qscilexermakefile_types.QsciLexerMakefile =
  gen_qscilexermakefile_types.QsciLexerMakefile.init(fcQsciLexerMakefile_new2(parent.h))

proc metaObject*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerMakefile_metaObject(self.h))

proc metacast*(self: gen_qscilexermakefile_types.QsciLexerMakefile, param1: cstring): pointer =
  fcQsciLexerMakefile_metacast(self.h, param1)

proc metacall*(self: gen_qscilexermakefile_types.QsciLexerMakefile, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerMakefile_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexermakefile_types.QsciLexerMakefile, s: cstring): string =
  let v_ms = fcQsciLexerMakefile_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): cstring =
  (fcQsciLexerMakefile_language(self.h))

proc lexer*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): cstring =
  (fcQsciLexerMakefile_lexer(self.h))

proc wordCharacters*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): cstring =
  (fcQsciLexerMakefile_wordCharacters(self.h))

proc defaultColor*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerMakefile_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: cint): bool =
  fcQsciLexerMakefile_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fcQsciLexerMakefile_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciLexerMakefile_defaultPaper(self.h, style))

proc description*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: cint): string =
  let v_ms = fcQsciLexerMakefile_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexermakefile_types.QsciLexerMakefile, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerMakefile_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexermakefile_types.QsciLexerMakefile, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerMakefile_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QsciLexerMakefilemetaObject*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fQsciLexerMakefile_virtualbase_metaObject(self.h))

type QsciLexerMakefilemetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefilemetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefilemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_metaObject(self: ptr cQsciLexerMakefile, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerMakefile_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerMakefilemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerMakefilemetacast*(self: gen_qscilexermakefile_types.QsciLexerMakefile, param1: cstring): pointer =
  fQsciLexerMakefile_virtualbase_metacast(self.h, param1)

type QsciLexerMakefilemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefilemetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefilemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_metacast(self: ptr cQsciLexerMakefile, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerMakefile_metacast ".} =
  var nimfunc = cast[ptr QsciLexerMakefilemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerMakefilemetacall*(self: gen_qscilexermakefile_types.QsciLexerMakefile, param1: cint, param2: cint, param3: pointer): cint =
  fQsciLexerMakefile_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerMakefilemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefilemetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefilemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_metacall(self: ptr cQsciLexerMakefile, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerMakefile_metacall ".} =
  var nimfunc = cast[ptr QsciLexerMakefilemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QsciLexerMakefilelanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefilelanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefilelanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_language(self: ptr cQsciLexerMakefile, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerMakefile_language ".} =
  var nimfunc = cast[ptr QsciLexerMakefilelanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMakefilelexer*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): cstring =
  (fQsciLexerMakefile_virtualbase_lexer(self.h))

type QsciLexerMakefilelexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefilelexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefilelexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_lexer(self: ptr cQsciLexerMakefile, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerMakefile_lexer ".} =
  var nimfunc = cast[ptr QsciLexerMakefilelexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMakefilelexerId*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): cint =
  fQsciLexerMakefile_virtualbase_lexerId(self.h)

type QsciLexerMakefilelexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefilelexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefilelexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_lexerId(self: ptr cQsciLexerMakefile, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMakefile_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerMakefilelexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMakefileautoCompletionFillups*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): cstring =
  (fQsciLexerMakefile_virtualbase_autoCompletionFillups(self.h))

type QsciLexerMakefileautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefileautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefileautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_autoCompletionFillups(self: ptr cQsciLexerMakefile, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerMakefile_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerMakefileautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMakefileautoCompletionWordSeparators*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): seq[string] =
  var v_ma = fQsciLexerMakefile_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerMakefileautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefileautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefileautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_autoCompletionWordSeparators(self: ptr cQsciLexerMakefile, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerMakefile_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerMakefileautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerMakefileblockEnd*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: ptr cint): cstring =
  (fQsciLexerMakefile_virtualbase_blockEnd(self.h, style))

type QsciLexerMakefileblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefileblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefileblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_blockEnd(self: ptr cQsciLexerMakefile, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerMakefile_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerMakefileblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerMakefileblockLookback*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): cint =
  fQsciLexerMakefile_virtualbase_blockLookback(self.h)

type QsciLexerMakefileblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefileblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefileblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_blockLookback(self: ptr cQsciLexerMakefile, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMakefile_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerMakefileblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMakefileblockStart*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: ptr cint): cstring =
  (fQsciLexerMakefile_virtualbase_blockStart(self.h, style))

type QsciLexerMakefileblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefileblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefileblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_blockStart(self: ptr cQsciLexerMakefile, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerMakefile_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerMakefileblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerMakefileblockStartKeyword*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: ptr cint): cstring =
  (fQsciLexerMakefile_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerMakefileblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefileblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefileblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_blockStartKeyword(self: ptr cQsciLexerMakefile, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerMakefile_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerMakefileblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerMakefilebraceStyle*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): cint =
  fQsciLexerMakefile_virtualbase_braceStyle(self.h)

type QsciLexerMakefilebraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefilebraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefilebraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_braceStyle(self: ptr cQsciLexerMakefile, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMakefile_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerMakefilebraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMakefilecaseSensitive*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): bool =
  fQsciLexerMakefile_virtualbase_caseSensitive(self.h)

type QsciLexerMakefilecaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefilecaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefilecaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_caseSensitive(self: ptr cQsciLexerMakefile, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerMakefile_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerMakefilecaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMakefilecolor*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerMakefile_virtualbase_color(self.h, style))

type QsciLexerMakefilecolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefilecolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefilecolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_color(self: ptr cQsciLexerMakefile, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMakefile_color ".} =
  var nimfunc = cast[ptr QsciLexerMakefilecolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerMakefileeolFill*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: cint): bool =
  fQsciLexerMakefile_virtualbase_eolFill(self.h, style)

type QsciLexerMakefileeolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefileeolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefileeolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_eolFill(self: ptr cQsciLexerMakefile, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerMakefile_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerMakefileeolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerMakefilefont*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerMakefile_virtualbase_font(self.h, style))

type QsciLexerMakefilefontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefilefontProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefilefontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_font(self: ptr cQsciLexerMakefile, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMakefile_font ".} =
  var nimfunc = cast[ptr QsciLexerMakefilefontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerMakefileindentationGuideView*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): cint =
  fQsciLexerMakefile_virtualbase_indentationGuideView(self.h)

type QsciLexerMakefileindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefileindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefileindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_indentationGuideView(self: ptr cQsciLexerMakefile, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMakefile_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerMakefileindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMakefilekeywords*(self: gen_qscilexermakefile_types.QsciLexerMakefile, set: cint): cstring =
  (fQsciLexerMakefile_virtualbase_keywords(self.h, set))

type QsciLexerMakefilekeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefilekeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefilekeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_keywords(self: ptr cQsciLexerMakefile, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerMakefile_keywords ".} =
  var nimfunc = cast[ptr QsciLexerMakefilekeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerMakefiledefaultStyle*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): cint =
  fQsciLexerMakefile_virtualbase_defaultStyle(self.h)

type QsciLexerMakefiledefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefiledefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefiledefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_defaultStyle(self: ptr cQsciLexerMakefile, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMakefile_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerMakefiledefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerMakefiledescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefiledescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefiledescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_description(self: ptr cQsciLexerMakefile, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerMakefile_description ".} =
  var nimfunc = cast[ptr QsciLexerMakefiledescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerMakefilepaper*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerMakefile_virtualbase_paper(self.h, style))

type QsciLexerMakefilepaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefilepaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefilepaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_paper(self: ptr cQsciLexerMakefile, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMakefile_paper ".} =
  var nimfunc = cast[ptr QsciLexerMakefilepaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerMakefiledefaultColor*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerMakefile_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerMakefiledefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColor*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefiledefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefiledefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_defaultColorWithStyle(self: ptr cQsciLexerMakefile, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMakefile_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerMakefiledefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerMakefiledefaultEolFill*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: cint): bool =
  fQsciLexerMakefile_virtualbase_defaultEolFill(self.h, style)

type QsciLexerMakefiledefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefiledefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefiledefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_defaultEolFill(self: ptr cQsciLexerMakefile, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerMakefile_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerMakefiledefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerMakefiledefaultFont*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: cint): gen_qfont.QFont =
  gen_qfont.QFont(h: fQsciLexerMakefile_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerMakefiledefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFont*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefiledefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefiledefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_defaultFontWithStyle(self: ptr cQsciLexerMakefile, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMakefile_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerMakefiledefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerMakefiledefaultPaper*(self: gen_qscilexermakefile_types.QsciLexerMakefile, style: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fQsciLexerMakefile_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerMakefiledefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaper*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefiledefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefiledefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_defaultPaperWithStyle(self: ptr cQsciLexerMakefile, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerMakefile_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerMakefiledefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerMakefilesetEditor*(self: gen_qscilexermakefile_types.QsciLexerMakefile, editor: gen_qsciscintilla.QsciScintilla): void =
  fQsciLexerMakefile_virtualbase_setEditor(self.h, editor.h)

type QsciLexerMakefilesetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefilesetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefilesetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_setEditor(self: ptr cQsciLexerMakefile, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMakefile_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerMakefilesetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerMakefilerefreshProperties*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): void =
  fQsciLexerMakefile_virtualbase_refreshProperties(self.h)

type QsciLexerMakefilerefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefilerefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefilerefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_refreshProperties(self: ptr cQsciLexerMakefile, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerMakefile_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerMakefilerefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerMakefilestyleBitsNeeded*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): cint =
  fQsciLexerMakefile_virtualbase_styleBitsNeeded(self.h)

type QsciLexerMakefilestyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefilestyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefilestyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_styleBitsNeeded(self: ptr cQsciLexerMakefile, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerMakefile_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerMakefilestyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMakefilewordCharacters*(self: gen_qscilexermakefile_types.QsciLexerMakefile, ): cstring =
  (fQsciLexerMakefile_virtualbase_wordCharacters(self.h))

type QsciLexerMakefilewordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefilewordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefilewordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_wordCharacters(self: ptr cQsciLexerMakefile, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerMakefile_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerMakefilewordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerMakefilesetAutoIndentStyle*(self: gen_qscilexermakefile_types.QsciLexerMakefile, autoindentstyle: cint): void =
  fQsciLexerMakefile_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerMakefilesetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefilesetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefilesetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_setAutoIndentStyle(self: ptr cQsciLexerMakefile, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerMakefile_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerMakefilesetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerMakefilesetColor*(self: gen_qscilexermakefile_types.QsciLexerMakefile, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerMakefile_virtualbase_setColor(self.h, c.h, style)

type QsciLexerMakefilesetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefilesetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefilesetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_setColor(self: ptr cQsciLexerMakefile, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerMakefile_setColor ".} =
  var nimfunc = cast[ptr QsciLexerMakefilesetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerMakefilesetEolFill*(self: gen_qscilexermakefile_types.QsciLexerMakefile, eoffill: bool, style: cint): void =
  fQsciLexerMakefile_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerMakefilesetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefilesetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefilesetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_setEolFill(self: ptr cQsciLexerMakefile, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerMakefile_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerMakefilesetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerMakefilesetFont*(self: gen_qscilexermakefile_types.QsciLexerMakefile, f: gen_qfont.QFont, style: cint): void =
  fQsciLexerMakefile_virtualbase_setFont(self.h, f.h, style)

type QsciLexerMakefilesetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefilesetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefilesetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_setFont(self: ptr cQsciLexerMakefile, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerMakefile_setFont ".} =
  var nimfunc = cast[ptr QsciLexerMakefilesetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerMakefilesetPaper*(self: gen_qscilexermakefile_types.QsciLexerMakefile, c: gen_qcolor.QColor, style: cint): void =
  fQsciLexerMakefile_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerMakefilesetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefilesetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefilesetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_setPaper(self: ptr cQsciLexerMakefile, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerMakefile_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerMakefilesetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerMakefilereadProperties*(self: gen_qscilexermakefile_types.QsciLexerMakefile, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerMakefile_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerMakefilereadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefilereadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefilereadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_readProperties(self: ptr cQsciLexerMakefile, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerMakefile_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerMakefilereadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerMakefilewriteProperties*(self: gen_qscilexermakefile_types.QsciLexerMakefile, qs: gen_qsettings.QSettings, prefix: string): bool =
  fQsciLexerMakefile_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerMakefilewritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefilewritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefilewritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_writeProperties(self: ptr cQsciLexerMakefile, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerMakefile_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerMakefilewritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerMakefileevent*(self: gen_qscilexermakefile_types.QsciLexerMakefile, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerMakefile_virtualbase_event(self.h, event.h)

type QsciLexerMakefileeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefileeventProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefileeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_event(self: ptr cQsciLexerMakefile, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerMakefile_event ".} =
  var nimfunc = cast[ptr QsciLexerMakefileeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerMakefileeventFilter*(self: gen_qscilexermakefile_types.QsciLexerMakefile, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =
  fQsciLexerMakefile_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerMakefileeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefileeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefileeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_eventFilter(self: ptr cQsciLexerMakefile, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerMakefile_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerMakefileeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerMakefiletimerEvent*(self: gen_qscilexermakefile_types.QsciLexerMakefile, event: gen_qcoreevent.QTimerEvent): void =
  fQsciLexerMakefile_virtualbase_timerEvent(self.h, event.h)

type QsciLexerMakefiletimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefiletimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefiletimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_timerEvent(self: ptr cQsciLexerMakefile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMakefile_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerMakefiletimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerMakefilechildEvent*(self: gen_qscilexermakefile_types.QsciLexerMakefile, event: gen_qcoreevent.QChildEvent): void =
  fQsciLexerMakefile_virtualbase_childEvent(self.h, event.h)

type QsciLexerMakefilechildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefilechildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefilechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_childEvent(self: ptr cQsciLexerMakefile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMakefile_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerMakefilechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerMakefilecustomEvent*(self: gen_qscilexermakefile_types.QsciLexerMakefile, event: gen_qcoreevent.QEvent): void =
  fQsciLexerMakefile_virtualbase_customEvent(self.h, event.h)

type QsciLexerMakefilecustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefilecustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefilecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_customEvent(self: ptr cQsciLexerMakefile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMakefile_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerMakefilecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerMakefileconnectNotify*(self: gen_qscilexermakefile_types.QsciLexerMakefile, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerMakefile_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerMakefileconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefileconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefileconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_connectNotify(self: ptr cQsciLexerMakefile, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMakefile_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerMakefileconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerMakefiledisconnectNotify*(self: gen_qscilexermakefile_types.QsciLexerMakefile, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciLexerMakefile_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerMakefiledisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexermakefile_types.QsciLexerMakefile, slot: QsciLexerMakefiledisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerMakefiledisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerMakefile_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerMakefile_disconnectNotify(self: ptr cQsciLexerMakefile, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerMakefile_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerMakefiledisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexermakefile_types.QsciLexerMakefile): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerMakefile_staticMetaObject())
proc delete*(self: gen_qscilexermakefile_types.QsciLexerMakefile) =
  fcQsciLexerMakefile_delete(self.h)
