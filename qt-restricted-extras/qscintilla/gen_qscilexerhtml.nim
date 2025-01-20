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
{.compile("gen_qscilexerhtml.cpp", cflags).}


type QsciLexerHTMLEnumEnum* = distinct cint
template Default*(_: type QsciLexerHTMLEnumEnum): untyped = 0
template Tag*(_: type QsciLexerHTMLEnumEnum): untyped = 1
template UnknownTag*(_: type QsciLexerHTMLEnumEnum): untyped = 2
template Attribute*(_: type QsciLexerHTMLEnumEnum): untyped = 3
template UnknownAttribute*(_: type QsciLexerHTMLEnumEnum): untyped = 4
template HTMLNumber*(_: type QsciLexerHTMLEnumEnum): untyped = 5
template HTMLDoubleQuotedString*(_: type QsciLexerHTMLEnumEnum): untyped = 6
template HTMLSingleQuotedString*(_: type QsciLexerHTMLEnumEnum): untyped = 7
template OtherInTag*(_: type QsciLexerHTMLEnumEnum): untyped = 8
template HTMLComment*(_: type QsciLexerHTMLEnumEnum): untyped = 9
template Entity*(_: type QsciLexerHTMLEnumEnum): untyped = 10
template XMLTagEnd*(_: type QsciLexerHTMLEnumEnum): untyped = 11
template XMLStart*(_: type QsciLexerHTMLEnumEnum): untyped = 12
template XMLEnd*(_: type QsciLexerHTMLEnumEnum): untyped = 13
template Script*(_: type QsciLexerHTMLEnumEnum): untyped = 14
template ASPAtStart*(_: type QsciLexerHTMLEnumEnum): untyped = 15
template ASPStart*(_: type QsciLexerHTMLEnumEnum): untyped = 16
template CDATA*(_: type QsciLexerHTMLEnumEnum): untyped = 17
template PHPStart*(_: type QsciLexerHTMLEnumEnum): untyped = 18
template HTMLValue*(_: type QsciLexerHTMLEnumEnum): untyped = 19
template ASPXCComment*(_: type QsciLexerHTMLEnumEnum): untyped = 20
template SGMLDefault*(_: type QsciLexerHTMLEnumEnum): untyped = 21
template SGMLCommand*(_: type QsciLexerHTMLEnumEnum): untyped = 22
template SGMLParameter*(_: type QsciLexerHTMLEnumEnum): untyped = 23
template SGMLDoubleQuotedString*(_: type QsciLexerHTMLEnumEnum): untyped = 24
template SGMLSingleQuotedString*(_: type QsciLexerHTMLEnumEnum): untyped = 25
template SGMLError*(_: type QsciLexerHTMLEnumEnum): untyped = 26
template SGMLSpecial*(_: type QsciLexerHTMLEnumEnum): untyped = 27
template SGMLEntity*(_: type QsciLexerHTMLEnumEnum): untyped = 28
template SGMLComment*(_: type QsciLexerHTMLEnumEnum): untyped = 29
template SGMLParameterComment*(_: type QsciLexerHTMLEnumEnum): untyped = 30
template SGMLBlockDefault*(_: type QsciLexerHTMLEnumEnum): untyped = 31
template JavaScriptStart*(_: type QsciLexerHTMLEnumEnum): untyped = 40
template JavaScriptDefault*(_: type QsciLexerHTMLEnumEnum): untyped = 41
template JavaScriptComment*(_: type QsciLexerHTMLEnumEnum): untyped = 42
template JavaScriptCommentLine*(_: type QsciLexerHTMLEnumEnum): untyped = 43
template JavaScriptCommentDoc*(_: type QsciLexerHTMLEnumEnum): untyped = 44
template JavaScriptNumber*(_: type QsciLexerHTMLEnumEnum): untyped = 45
template JavaScriptWord*(_: type QsciLexerHTMLEnumEnum): untyped = 46
template JavaScriptKeyword*(_: type QsciLexerHTMLEnumEnum): untyped = 47
template JavaScriptDoubleQuotedString*(_: type QsciLexerHTMLEnumEnum): untyped = 48
template JavaScriptSingleQuotedString*(_: type QsciLexerHTMLEnumEnum): untyped = 49
template JavaScriptSymbol*(_: type QsciLexerHTMLEnumEnum): untyped = 50
template JavaScriptUnclosedString*(_: type QsciLexerHTMLEnumEnum): untyped = 51
template JavaScriptRegex*(_: type QsciLexerHTMLEnumEnum): untyped = 52
template ASPJavaScriptStart*(_: type QsciLexerHTMLEnumEnum): untyped = 55
template ASPJavaScriptDefault*(_: type QsciLexerHTMLEnumEnum): untyped = 56
template ASPJavaScriptComment*(_: type QsciLexerHTMLEnumEnum): untyped = 57
template ASPJavaScriptCommentLine*(_: type QsciLexerHTMLEnumEnum): untyped = 58
template ASPJavaScriptCommentDoc*(_: type QsciLexerHTMLEnumEnum): untyped = 59
template ASPJavaScriptNumber*(_: type QsciLexerHTMLEnumEnum): untyped = 60
template ASPJavaScriptWord*(_: type QsciLexerHTMLEnumEnum): untyped = 61
template ASPJavaScriptKeyword*(_: type QsciLexerHTMLEnumEnum): untyped = 62
template ASPJavaScriptDoubleQuotedString*(_: type QsciLexerHTMLEnumEnum): untyped = 63
template ASPJavaScriptSingleQuotedString*(_: type QsciLexerHTMLEnumEnum): untyped = 64
template ASPJavaScriptSymbol*(_: type QsciLexerHTMLEnumEnum): untyped = 65
template ASPJavaScriptUnclosedString*(_: type QsciLexerHTMLEnumEnum): untyped = 66
template ASPJavaScriptRegex*(_: type QsciLexerHTMLEnumEnum): untyped = 67
template VBScriptStart*(_: type QsciLexerHTMLEnumEnum): untyped = 70
template VBScriptDefault*(_: type QsciLexerHTMLEnumEnum): untyped = 71
template VBScriptComment*(_: type QsciLexerHTMLEnumEnum): untyped = 72
template VBScriptNumber*(_: type QsciLexerHTMLEnumEnum): untyped = 73
template VBScriptKeyword*(_: type QsciLexerHTMLEnumEnum): untyped = 74
template VBScriptString*(_: type QsciLexerHTMLEnumEnum): untyped = 75
template VBScriptIdentifier*(_: type QsciLexerHTMLEnumEnum): untyped = 76
template VBScriptUnclosedString*(_: type QsciLexerHTMLEnumEnum): untyped = 77
template ASPVBScriptStart*(_: type QsciLexerHTMLEnumEnum): untyped = 80
template ASPVBScriptDefault*(_: type QsciLexerHTMLEnumEnum): untyped = 81
template ASPVBScriptComment*(_: type QsciLexerHTMLEnumEnum): untyped = 82
template ASPVBScriptNumber*(_: type QsciLexerHTMLEnumEnum): untyped = 83
template ASPVBScriptKeyword*(_: type QsciLexerHTMLEnumEnum): untyped = 84
template ASPVBScriptString*(_: type QsciLexerHTMLEnumEnum): untyped = 85
template ASPVBScriptIdentifier*(_: type QsciLexerHTMLEnumEnum): untyped = 86
template ASPVBScriptUnclosedString*(_: type QsciLexerHTMLEnumEnum): untyped = 87
template PythonStart*(_: type QsciLexerHTMLEnumEnum): untyped = 90
template PythonDefault*(_: type QsciLexerHTMLEnumEnum): untyped = 91
template PythonComment*(_: type QsciLexerHTMLEnumEnum): untyped = 92
template PythonNumber*(_: type QsciLexerHTMLEnumEnum): untyped = 93
template PythonDoubleQuotedString*(_: type QsciLexerHTMLEnumEnum): untyped = 94
template PythonSingleQuotedString*(_: type QsciLexerHTMLEnumEnum): untyped = 95
template PythonKeyword*(_: type QsciLexerHTMLEnumEnum): untyped = 96
template PythonTripleSingleQuotedString*(_: type QsciLexerHTMLEnumEnum): untyped = 97
template PythonTripleDoubleQuotedString*(_: type QsciLexerHTMLEnumEnum): untyped = 98
template PythonClassName*(_: type QsciLexerHTMLEnumEnum): untyped = 99
template PythonFunctionMethodName*(_: type QsciLexerHTMLEnumEnum): untyped = 100
template PythonOperator*(_: type QsciLexerHTMLEnumEnum): untyped = 101
template PythonIdentifier*(_: type QsciLexerHTMLEnumEnum): untyped = 102
template ASPPythonStart*(_: type QsciLexerHTMLEnumEnum): untyped = 105
template ASPPythonDefault*(_: type QsciLexerHTMLEnumEnum): untyped = 106
template ASPPythonComment*(_: type QsciLexerHTMLEnumEnum): untyped = 107
template ASPPythonNumber*(_: type QsciLexerHTMLEnumEnum): untyped = 108
template ASPPythonDoubleQuotedString*(_: type QsciLexerHTMLEnumEnum): untyped = 109
template ASPPythonSingleQuotedString*(_: type QsciLexerHTMLEnumEnum): untyped = 110
template ASPPythonKeyword*(_: type QsciLexerHTMLEnumEnum): untyped = 111
template ASPPythonTripleSingleQuotedString*(_: type QsciLexerHTMLEnumEnum): untyped = 112
template ASPPythonTripleDoubleQuotedString*(_: type QsciLexerHTMLEnumEnum): untyped = 113
template ASPPythonClassName*(_: type QsciLexerHTMLEnumEnum): untyped = 114
template ASPPythonFunctionMethodName*(_: type QsciLexerHTMLEnumEnum): untyped = 115
template ASPPythonOperator*(_: type QsciLexerHTMLEnumEnum): untyped = 116
template ASPPythonIdentifier*(_: type QsciLexerHTMLEnumEnum): untyped = 117
template PHPDefault*(_: type QsciLexerHTMLEnumEnum): untyped = 118
template PHPDoubleQuotedString*(_: type QsciLexerHTMLEnumEnum): untyped = 119
template PHPSingleQuotedString*(_: type QsciLexerHTMLEnumEnum): untyped = 120
template PHPKeyword*(_: type QsciLexerHTMLEnumEnum): untyped = 121
template PHPNumber*(_: type QsciLexerHTMLEnumEnum): untyped = 122
template PHPVariable*(_: type QsciLexerHTMLEnumEnum): untyped = 123
template PHPComment*(_: type QsciLexerHTMLEnumEnum): untyped = 124
template PHPCommentLine*(_: type QsciLexerHTMLEnumEnum): untyped = 125
template PHPDoubleQuotedVariable*(_: type QsciLexerHTMLEnumEnum): untyped = 126
template PHPOperator*(_: type QsciLexerHTMLEnumEnum): untyped = 127


import gen_qscilexerhtml_types
export gen_qscilexerhtml_types

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

type cQsciLexerHTML*{.exportc: "QsciLexerHTML", incompleteStruct.} = object

proc fcQsciLexerHTML_new(): ptr cQsciLexerHTML {.importc: "QsciLexerHTML_new".}
proc fcQsciLexerHTML_new2(parent: pointer): ptr cQsciLexerHTML {.importc: "QsciLexerHTML_new2".}
proc fcQsciLexerHTML_metaObject(self: pointer, ): pointer {.importc: "QsciLexerHTML_metaObject".}
proc fcQsciLexerHTML_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerHTML_metacast".}
proc fcQsciLexerHTML_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerHTML_metacall".}
proc fcQsciLexerHTML_tr(s: cstring): struct_miqt_string {.importc: "QsciLexerHTML_tr".}
proc fcQsciLexerHTML_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciLexerHTML_trUtf8".}
proc fcQsciLexerHTML_language(self: pointer, ): cstring {.importc: "QsciLexerHTML_language".}
proc fcQsciLexerHTML_lexer(self: pointer, ): cstring {.importc: "QsciLexerHTML_lexer".}
proc fcQsciLexerHTML_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerHTML_autoCompletionFillups".}
proc fcQsciLexerHTML_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerHTML_wordCharacters".}
proc fcQsciLexerHTML_defaultColor(self: pointer, style: cint): pointer {.importc: "QsciLexerHTML_defaultColor".}
proc fcQsciLexerHTML_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerHTML_defaultEolFill".}
proc fcQsciLexerHTML_defaultFont(self: pointer, style: cint): pointer {.importc: "QsciLexerHTML_defaultFont".}
proc fcQsciLexerHTML_defaultPaper(self: pointer, style: cint): pointer {.importc: "QsciLexerHTML_defaultPaper".}
proc fcQsciLexerHTML_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerHTML_keywords".}
proc fcQsciLexerHTML_description(self: pointer, style: cint): struct_miqt_string {.importc: "QsciLexerHTML_description".}
proc fcQsciLexerHTML_refreshProperties(self: pointer, ): void {.importc: "QsciLexerHTML_refreshProperties".}
proc fcQsciLexerHTML_caseSensitiveTags(self: pointer, ): bool {.importc: "QsciLexerHTML_caseSensitiveTags".}
proc fcQsciLexerHTML_setDjangoTemplates(self: pointer, enabled: bool): void {.importc: "QsciLexerHTML_setDjangoTemplates".}
proc fcQsciLexerHTML_djangoTemplates(self: pointer, ): bool {.importc: "QsciLexerHTML_djangoTemplates".}
proc fcQsciLexerHTML_foldCompact(self: pointer, ): bool {.importc: "QsciLexerHTML_foldCompact".}
proc fcQsciLexerHTML_foldPreprocessor(self: pointer, ): bool {.importc: "QsciLexerHTML_foldPreprocessor".}
proc fcQsciLexerHTML_setFoldScriptComments(self: pointer, fold: bool): void {.importc: "QsciLexerHTML_setFoldScriptComments".}
proc fcQsciLexerHTML_foldScriptComments(self: pointer, ): bool {.importc: "QsciLexerHTML_foldScriptComments".}
proc fcQsciLexerHTML_setFoldScriptHeredocs(self: pointer, fold: bool): void {.importc: "QsciLexerHTML_setFoldScriptHeredocs".}
proc fcQsciLexerHTML_foldScriptHeredocs(self: pointer, ): bool {.importc: "QsciLexerHTML_foldScriptHeredocs".}
proc fcQsciLexerHTML_setMakoTemplates(self: pointer, enabled: bool): void {.importc: "QsciLexerHTML_setMakoTemplates".}
proc fcQsciLexerHTML_makoTemplates(self: pointer, ): bool {.importc: "QsciLexerHTML_makoTemplates".}
proc fcQsciLexerHTML_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerHTML_setFoldCompact".}
proc fcQsciLexerHTML_setFoldPreprocessor(self: pointer, fold: bool): void {.importc: "QsciLexerHTML_setFoldPreprocessor".}
proc fcQsciLexerHTML_setCaseSensitiveTags(self: pointer, sens: bool): void {.importc: "QsciLexerHTML_setCaseSensitiveTags".}
proc fcQsciLexerHTML_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerHTML_tr2".}
proc fcQsciLexerHTML_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerHTML_tr3".}
proc fcQsciLexerHTML_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciLexerHTML_trUtf82".}
proc fcQsciLexerHTML_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciLexerHTML_trUtf83".}
proc fQsciLexerHTML_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciLexerHTML_virtualbase_metaObject".}
proc fcQsciLexerHTML_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_metaObject".}
proc fQsciLexerHTML_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciLexerHTML_virtualbase_metacast".}
proc fcQsciLexerHTML_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_metacast".}
proc fQsciLexerHTML_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciLexerHTML_virtualbase_metacall".}
proc fcQsciLexerHTML_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_metacall".}
proc fQsciLexerHTML_virtualbase_setFoldCompact(self: pointer, fold: bool): void{.importc: "QsciLexerHTML_virtualbase_setFoldCompact".}
proc fcQsciLexerHTML_override_virtual_setFoldCompact(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_setFoldCompact".}
proc fQsciLexerHTML_virtualbase_setFoldPreprocessor(self: pointer, fold: bool): void{.importc: "QsciLexerHTML_virtualbase_setFoldPreprocessor".}
proc fcQsciLexerHTML_override_virtual_setFoldPreprocessor(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_setFoldPreprocessor".}
proc fQsciLexerHTML_virtualbase_setCaseSensitiveTags(self: pointer, sens: bool): void{.importc: "QsciLexerHTML_virtualbase_setCaseSensitiveTags".}
proc fcQsciLexerHTML_override_virtual_setCaseSensitiveTags(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_setCaseSensitiveTags".}
proc fcQsciLexerHTML_override_virtual_language(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_language".}
proc fQsciLexerHTML_virtualbase_lexer(self: pointer, ): cstring{.importc: "QsciLexerHTML_virtualbase_lexer".}
proc fcQsciLexerHTML_override_virtual_lexer(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_lexer".}
proc fQsciLexerHTML_virtualbase_lexerId(self: pointer, ): cint{.importc: "QsciLexerHTML_virtualbase_lexerId".}
proc fcQsciLexerHTML_override_virtual_lexerId(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_lexerId".}
proc fQsciLexerHTML_virtualbase_autoCompletionFillups(self: pointer, ): cstring{.importc: "QsciLexerHTML_virtualbase_autoCompletionFillups".}
proc fcQsciLexerHTML_override_virtual_autoCompletionFillups(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_autoCompletionFillups".}
proc fQsciLexerHTML_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array{.importc: "QsciLexerHTML_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerHTML_override_virtual_autoCompletionWordSeparators(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_autoCompletionWordSeparators".}
proc fQsciLexerHTML_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerHTML_virtualbase_blockEnd".}
proc fcQsciLexerHTML_override_virtual_blockEnd(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_blockEnd".}
proc fQsciLexerHTML_virtualbase_blockLookback(self: pointer, ): cint{.importc: "QsciLexerHTML_virtualbase_blockLookback".}
proc fcQsciLexerHTML_override_virtual_blockLookback(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_blockLookback".}
proc fQsciLexerHTML_virtualbase_blockStart(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerHTML_virtualbase_blockStart".}
proc fcQsciLexerHTML_override_virtual_blockStart(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_blockStart".}
proc fQsciLexerHTML_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring{.importc: "QsciLexerHTML_virtualbase_blockStartKeyword".}
proc fcQsciLexerHTML_override_virtual_blockStartKeyword(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_blockStartKeyword".}
proc fQsciLexerHTML_virtualbase_braceStyle(self: pointer, ): cint{.importc: "QsciLexerHTML_virtualbase_braceStyle".}
proc fcQsciLexerHTML_override_virtual_braceStyle(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_braceStyle".}
proc fQsciLexerHTML_virtualbase_caseSensitive(self: pointer, ): bool{.importc: "QsciLexerHTML_virtualbase_caseSensitive".}
proc fcQsciLexerHTML_override_virtual_caseSensitive(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_caseSensitive".}
proc fQsciLexerHTML_virtualbase_color(self: pointer, style: cint): pointer{.importc: "QsciLexerHTML_virtualbase_color".}
proc fcQsciLexerHTML_override_virtual_color(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_color".}
proc fQsciLexerHTML_virtualbase_eolFill(self: pointer, style: cint): bool{.importc: "QsciLexerHTML_virtualbase_eolFill".}
proc fcQsciLexerHTML_override_virtual_eolFill(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_eolFill".}
proc fQsciLexerHTML_virtualbase_font(self: pointer, style: cint): pointer{.importc: "QsciLexerHTML_virtualbase_font".}
proc fcQsciLexerHTML_override_virtual_font(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_font".}
proc fQsciLexerHTML_virtualbase_indentationGuideView(self: pointer, ): cint{.importc: "QsciLexerHTML_virtualbase_indentationGuideView".}
proc fcQsciLexerHTML_override_virtual_indentationGuideView(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_indentationGuideView".}
proc fQsciLexerHTML_virtualbase_keywords(self: pointer, set: cint): cstring{.importc: "QsciLexerHTML_virtualbase_keywords".}
proc fcQsciLexerHTML_override_virtual_keywords(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_keywords".}
proc fQsciLexerHTML_virtualbase_defaultStyle(self: pointer, ): cint{.importc: "QsciLexerHTML_virtualbase_defaultStyle".}
proc fcQsciLexerHTML_override_virtual_defaultStyle(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_defaultStyle".}
proc fcQsciLexerHTML_override_virtual_description(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_description".}
proc fQsciLexerHTML_virtualbase_paper(self: pointer, style: cint): pointer{.importc: "QsciLexerHTML_virtualbase_paper".}
proc fcQsciLexerHTML_override_virtual_paper(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_paper".}
proc fQsciLexerHTML_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerHTML_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerHTML_override_virtual_defaultColorWithStyle(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_defaultColorWithStyle".}
proc fQsciLexerHTML_virtualbase_defaultEolFill(self: pointer, style: cint): bool{.importc: "QsciLexerHTML_virtualbase_defaultEolFill".}
proc fcQsciLexerHTML_override_virtual_defaultEolFill(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_defaultEolFill".}
proc fQsciLexerHTML_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerHTML_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerHTML_override_virtual_defaultFontWithStyle(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_defaultFontWithStyle".}
proc fQsciLexerHTML_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer{.importc: "QsciLexerHTML_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerHTML_override_virtual_defaultPaperWithStyle(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_defaultPaperWithStyle".}
proc fQsciLexerHTML_virtualbase_setEditor(self: pointer, editor: pointer): void{.importc: "QsciLexerHTML_virtualbase_setEditor".}
proc fcQsciLexerHTML_override_virtual_setEditor(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_setEditor".}
proc fQsciLexerHTML_virtualbase_refreshProperties(self: pointer, ): void{.importc: "QsciLexerHTML_virtualbase_refreshProperties".}
proc fcQsciLexerHTML_override_virtual_refreshProperties(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_refreshProperties".}
proc fQsciLexerHTML_virtualbase_styleBitsNeeded(self: pointer, ): cint{.importc: "QsciLexerHTML_virtualbase_styleBitsNeeded".}
proc fcQsciLexerHTML_override_virtual_styleBitsNeeded(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_styleBitsNeeded".}
proc fQsciLexerHTML_virtualbase_wordCharacters(self: pointer, ): cstring{.importc: "QsciLexerHTML_virtualbase_wordCharacters".}
proc fcQsciLexerHTML_override_virtual_wordCharacters(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_wordCharacters".}
proc fQsciLexerHTML_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void{.importc: "QsciLexerHTML_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerHTML_override_virtual_setAutoIndentStyle(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_setAutoIndentStyle".}
proc fQsciLexerHTML_virtualbase_setColor(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerHTML_virtualbase_setColor".}
proc fcQsciLexerHTML_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_setColor".}
proc fQsciLexerHTML_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void{.importc: "QsciLexerHTML_virtualbase_setEolFill".}
proc fcQsciLexerHTML_override_virtual_setEolFill(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_setEolFill".}
proc fQsciLexerHTML_virtualbase_setFont(self: pointer, f: pointer, style: cint): void{.importc: "QsciLexerHTML_virtualbase_setFont".}
proc fcQsciLexerHTML_override_virtual_setFont(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_setFont".}
proc fQsciLexerHTML_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void{.importc: "QsciLexerHTML_virtualbase_setPaper".}
proc fcQsciLexerHTML_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_setPaper".}
proc fQsciLexerHTML_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerHTML_virtualbase_readProperties".}
proc fcQsciLexerHTML_override_virtual_readProperties(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_readProperties".}
proc fQsciLexerHTML_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool{.importc: "QsciLexerHTML_virtualbase_writeProperties".}
proc fcQsciLexerHTML_override_virtual_writeProperties(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_writeProperties".}
proc fQsciLexerHTML_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciLexerHTML_virtualbase_event".}
proc fcQsciLexerHTML_override_virtual_event(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_event".}
proc fQsciLexerHTML_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciLexerHTML_virtualbase_eventFilter".}
proc fcQsciLexerHTML_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_eventFilter".}
proc fQsciLexerHTML_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciLexerHTML_virtualbase_timerEvent".}
proc fcQsciLexerHTML_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_timerEvent".}
proc fQsciLexerHTML_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciLexerHTML_virtualbase_childEvent".}
proc fcQsciLexerHTML_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_childEvent".}
proc fQsciLexerHTML_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciLexerHTML_virtualbase_customEvent".}
proc fcQsciLexerHTML_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_customEvent".}
proc fQsciLexerHTML_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerHTML_virtualbase_connectNotify".}
proc fcQsciLexerHTML_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_connectNotify".}
proc fQsciLexerHTML_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciLexerHTML_virtualbase_disconnectNotify".}
proc fcQsciLexerHTML_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciLexerHTML_override_virtual_disconnectNotify".}
proc fcQsciLexerHTML_staticMetaObject(): pointer {.importc: "QsciLexerHTML_staticMetaObject".}
proc fcQsciLexerHTML_delete(self: pointer) {.importc: "QsciLexerHTML_delete".}


func init*(T: type gen_qscilexerhtml_types.QsciLexerHTML, h: ptr cQsciLexerHTML): gen_qscilexerhtml_types.QsciLexerHTML =
  T(h: h)
proc create*(T: type gen_qscilexerhtml_types.QsciLexerHTML, ): gen_qscilexerhtml_types.QsciLexerHTML =

  gen_qscilexerhtml_types.QsciLexerHTML.init(fcQsciLexerHTML_new())
proc create*(T: type gen_qscilexerhtml_types.QsciLexerHTML, parent: gen_qobject.QObject): gen_qscilexerhtml_types.QsciLexerHTML =

  gen_qscilexerhtml_types.QsciLexerHTML.init(fcQsciLexerHTML_new2(parent.h))
proc metaObject*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerHTML_metaObject(self.h))

proc metacast*(self: gen_qscilexerhtml_types.QsciLexerHTML, param1: cstring): pointer =

  fcQsciLexerHTML_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerhtml_types.QsciLexerHTML, param1: cint, param2: cint, param3: pointer): cint =

  fcQsciLexerHTML_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerhtml_types.QsciLexerHTML, s: cstring): string =

  let v_ms = fcQsciLexerHTML_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscilexerhtml_types.QsciLexerHTML, s: cstring): string =

  let v_ms = fcQsciLexerHTML_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): cstring =

  (fcQsciLexerHTML_language(self.h))

proc lexer*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): cstring =

  (fcQsciLexerHTML_lexer(self.h))

proc autoCompletionFillups*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): cstring =

  (fcQsciLexerHTML_autoCompletionFillups(self.h))

proc wordCharacters*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): cstring =

  (fcQsciLexerHTML_wordCharacters(self.h))

proc defaultColor*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerHTML_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: cint): bool =

  fcQsciLexerHTML_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerHTML_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerHTML_defaultPaper(self.h, style))

proc keywords*(self: gen_qscilexerhtml_types.QsciLexerHTML, set: cint): cstring =

  (fcQsciLexerHTML_keywords(self.h, set))

proc description*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: cint): string =

  let v_ms = fcQsciLexerHTML_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): void =

  fcQsciLexerHTML_refreshProperties(self.h)

proc caseSensitiveTags*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): bool =

  fcQsciLexerHTML_caseSensitiveTags(self.h)

proc setDjangoTemplates*(self: gen_qscilexerhtml_types.QsciLexerHTML, enabled: bool): void =

  fcQsciLexerHTML_setDjangoTemplates(self.h, enabled)

proc djangoTemplates*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): bool =

  fcQsciLexerHTML_djangoTemplates(self.h)

proc foldCompact*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): bool =

  fcQsciLexerHTML_foldCompact(self.h)

proc foldPreprocessor*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): bool =

  fcQsciLexerHTML_foldPreprocessor(self.h)

proc setFoldScriptComments*(self: gen_qscilexerhtml_types.QsciLexerHTML, fold: bool): void =

  fcQsciLexerHTML_setFoldScriptComments(self.h, fold)

proc foldScriptComments*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): bool =

  fcQsciLexerHTML_foldScriptComments(self.h)

proc setFoldScriptHeredocs*(self: gen_qscilexerhtml_types.QsciLexerHTML, fold: bool): void =

  fcQsciLexerHTML_setFoldScriptHeredocs(self.h, fold)

proc foldScriptHeredocs*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): bool =

  fcQsciLexerHTML_foldScriptHeredocs(self.h)

proc setMakoTemplates*(self: gen_qscilexerhtml_types.QsciLexerHTML, enabled: bool): void =

  fcQsciLexerHTML_setMakoTemplates(self.h, enabled)

proc makoTemplates*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): bool =

  fcQsciLexerHTML_makoTemplates(self.h)

proc setFoldCompact*(self: gen_qscilexerhtml_types.QsciLexerHTML, fold: bool): void =

  fcQsciLexerHTML_setFoldCompact(self.h, fold)

proc setFoldPreprocessor*(self: gen_qscilexerhtml_types.QsciLexerHTML, fold: bool): void =

  fcQsciLexerHTML_setFoldPreprocessor(self.h, fold)

proc setCaseSensitiveTags*(self: gen_qscilexerhtml_types.QsciLexerHTML, sens: bool): void =

  fcQsciLexerHTML_setCaseSensitiveTags(self.h, sens)

proc tr2*(_: type gen_qscilexerhtml_types.QsciLexerHTML, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerHTML_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qscilexerhtml_types.QsciLexerHTML, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerHTML_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type gen_qscilexerhtml_types.QsciLexerHTML, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerHTML_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type gen_qscilexerhtml_types.QsciLexerHTML, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerHTML_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QsciLexerHTMLmetaObject*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQsciLexerHTML_virtualbase_metaObject(self.h))

type QsciLexerHTMLmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLmetaObjectProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_metaObject(self: ptr cQsciLexerHTML, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerHTML_metaObject ".} =
  var nimfunc = cast[ptr QsciLexerHTMLmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciLexerHTMLmetacast*(self: gen_qscilexerhtml_types.QsciLexerHTML, param1: cstring): pointer =

  fQsciLexerHTML_virtualbase_metacast(self.h, param1)

type QsciLexerHTMLmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLmetacastProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_metacast(self: ptr cQsciLexerHTML, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerHTML_metacast ".} =
  var nimfunc = cast[ptr QsciLexerHTMLmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerHTMLmetacall*(self: gen_qscilexerhtml_types.QsciLexerHTML, param1: cint, param2: cint, param3: pointer): cint =

  fQsciLexerHTML_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerHTMLmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLmetacallProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_metacall(self: ptr cQsciLexerHTML, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerHTML_metacall ".} =
  var nimfunc = cast[ptr QsciLexerHTMLmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciLexerHTMLsetFoldCompact*(self: gen_qscilexerhtml_types.QsciLexerHTML, fold: bool): void =

  fQsciLexerHTML_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerHTMLsetFoldCompactProc* = proc(fold: bool): void
proc onsetFoldCompact*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLsetFoldCompactProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLsetFoldCompactProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_setFoldCompact(self: ptr cQsciLexerHTML, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerHTML_setFoldCompact ".} =
  var nimfunc = cast[ptr QsciLexerHTMLsetFoldCompactProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerHTMLsetFoldPreprocessor*(self: gen_qscilexerhtml_types.QsciLexerHTML, fold: bool): void =

  fQsciLexerHTML_virtualbase_setFoldPreprocessor(self.h, fold)

type QsciLexerHTMLsetFoldPreprocessorProc* = proc(fold: bool): void
proc onsetFoldPreprocessor*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLsetFoldPreprocessorProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLsetFoldPreprocessorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_setFoldPreprocessor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_setFoldPreprocessor(self: ptr cQsciLexerHTML, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerHTML_setFoldPreprocessor ".} =
  var nimfunc = cast[ptr QsciLexerHTMLsetFoldPreprocessorProc](cast[pointer](slot))
  let slotval1 = fold


  nimfunc[](slotval1)
proc QsciLexerHTMLsetCaseSensitiveTags*(self: gen_qscilexerhtml_types.QsciLexerHTML, sens: bool): void =

  fQsciLexerHTML_virtualbase_setCaseSensitiveTags(self.h, sens)

type QsciLexerHTMLsetCaseSensitiveTagsProc* = proc(sens: bool): void
proc onsetCaseSensitiveTags*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLsetCaseSensitiveTagsProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLsetCaseSensitiveTagsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_setCaseSensitiveTags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_setCaseSensitiveTags(self: ptr cQsciLexerHTML, slot: int, sens: bool): void {.exportc: "miqt_exec_callback_QsciLexerHTML_setCaseSensitiveTags ".} =
  var nimfunc = cast[ptr QsciLexerHTMLsetCaseSensitiveTagsProc](cast[pointer](slot))
  let slotval1 = sens


  nimfunc[](slotval1)
type QsciLexerHTMLlanguageProc* = proc(): cstring
proc onlanguage*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLlanguageProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLlanguageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_language(self: ptr cQsciLexerHTML, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerHTML_language ".} =
  var nimfunc = cast[ptr QsciLexerHTMLlanguageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerHTMLlexer*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): cstring =

  (fQsciLexerHTML_virtualbase_lexer(self.h))

type QsciLexerHTMLlexerProc* = proc(): cstring
proc onlexer*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLlexerProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLlexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_lexer(self: ptr cQsciLexerHTML, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerHTML_lexer ".} =
  var nimfunc = cast[ptr QsciLexerHTMLlexerProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerHTMLlexerId*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): cint =

  fQsciLexerHTML_virtualbase_lexerId(self.h)

type QsciLexerHTMLlexerIdProc* = proc(): cint
proc onlexerId*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLlexerIdProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLlexerIdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_lexerId(self: ptr cQsciLexerHTML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerHTML_lexerId ".} =
  var nimfunc = cast[ptr QsciLexerHTMLlexerIdProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerHTMLautoCompletionFillups*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): cstring =

  (fQsciLexerHTML_virtualbase_autoCompletionFillups(self.h))

type QsciLexerHTMLautoCompletionFillupsProc* = proc(): cstring
proc onautoCompletionFillups*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLautoCompletionFillupsProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLautoCompletionFillupsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_autoCompletionFillups(self: ptr cQsciLexerHTML, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerHTML_autoCompletionFillups ".} =
  var nimfunc = cast[ptr QsciLexerHTMLautoCompletionFillupsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerHTMLautoCompletionWordSeparators*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): seq[string] =

  var v_ma = fQsciLexerHTML_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerHTMLautoCompletionWordSeparatorsProc* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLautoCompletionWordSeparatorsProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLautoCompletionWordSeparatorsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_autoCompletionWordSeparators(self: ptr cQsciLexerHTML, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerHTML_autoCompletionWordSeparators ".} =
  var nimfunc = cast[ptr QsciLexerHTMLautoCompletionWordSeparatorsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciLexerHTMLblockEnd*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: ptr cint): cstring =

  (fQsciLexerHTML_virtualbase_blockEnd(self.h, style))

type QsciLexerHTMLblockEndProc* = proc(style: ptr cint): cstring
proc onblockEnd*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLblockEndProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLblockEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_blockEnd(self: ptr cQsciLexerHTML, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerHTML_blockEnd ".} =
  var nimfunc = cast[ptr QsciLexerHTMLblockEndProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerHTMLblockLookback*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): cint =

  fQsciLexerHTML_virtualbase_blockLookback(self.h)

type QsciLexerHTMLblockLookbackProc* = proc(): cint
proc onblockLookback*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLblockLookbackProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLblockLookbackProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_blockLookback(self: ptr cQsciLexerHTML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerHTML_blockLookback ".} =
  var nimfunc = cast[ptr QsciLexerHTMLblockLookbackProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerHTMLblockStart*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: ptr cint): cstring =

  (fQsciLexerHTML_virtualbase_blockStart(self.h, style))

type QsciLexerHTMLblockStartProc* = proc(style: ptr cint): cstring
proc onblockStart*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLblockStartProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLblockStartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_blockStart(self: ptr cQsciLexerHTML, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerHTML_blockStart ".} =
  var nimfunc = cast[ptr QsciLexerHTMLblockStartProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerHTMLblockStartKeyword*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: ptr cint): cstring =

  (fQsciLexerHTML_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerHTMLblockStartKeywordProc* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLblockStartKeywordProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLblockStartKeywordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_blockStartKeyword(self: ptr cQsciLexerHTML, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerHTML_blockStartKeyword ".} =
  var nimfunc = cast[ptr QsciLexerHTMLblockStartKeywordProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerHTMLbraceStyle*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): cint =

  fQsciLexerHTML_virtualbase_braceStyle(self.h)

type QsciLexerHTMLbraceStyleProc* = proc(): cint
proc onbraceStyle*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLbraceStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLbraceStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_braceStyle(self: ptr cQsciLexerHTML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerHTML_braceStyle ".} =
  var nimfunc = cast[ptr QsciLexerHTMLbraceStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerHTMLcaseSensitive*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): bool =

  fQsciLexerHTML_virtualbase_caseSensitive(self.h)

type QsciLexerHTMLcaseSensitiveProc* = proc(): bool
proc oncaseSensitive*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLcaseSensitiveProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLcaseSensitiveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_caseSensitive(self: ptr cQsciLexerHTML, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerHTML_caseSensitive ".} =
  var nimfunc = cast[ptr QsciLexerHTMLcaseSensitiveProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerHTMLcolor*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerHTML_virtualbase_color(self.h, style))

type QsciLexerHTMLcolorProc* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLcolorProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLcolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_color(self: ptr cQsciLexerHTML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerHTML_color ".} =
  var nimfunc = cast[ptr QsciLexerHTMLcolorProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerHTMLeolFill*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: cint): bool =

  fQsciLexerHTML_virtualbase_eolFill(self.h, style)

type QsciLexerHTMLeolFillProc* = proc(style: cint): bool
proc oneolFill*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLeolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLeolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_eolFill(self: ptr cQsciLexerHTML, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerHTML_eolFill ".} =
  var nimfunc = cast[ptr QsciLexerHTMLeolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerHTMLfont*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerHTML_virtualbase_font(self.h, style))

type QsciLexerHTMLfontProc* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLfontProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLfontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_font(self: ptr cQsciLexerHTML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerHTML_font ".} =
  var nimfunc = cast[ptr QsciLexerHTMLfontProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerHTMLindentationGuideView*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): cint =

  fQsciLexerHTML_virtualbase_indentationGuideView(self.h)

type QsciLexerHTMLindentationGuideViewProc* = proc(): cint
proc onindentationGuideView*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLindentationGuideViewProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLindentationGuideViewProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_indentationGuideView(self: ptr cQsciLexerHTML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerHTML_indentationGuideView ".} =
  var nimfunc = cast[ptr QsciLexerHTMLindentationGuideViewProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerHTMLkeywords*(self: gen_qscilexerhtml_types.QsciLexerHTML, set: cint): cstring =

  (fQsciLexerHTML_virtualbase_keywords(self.h, set))

type QsciLexerHTMLkeywordsProc* = proc(set: cint): cstring
proc onkeywords*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLkeywordsProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLkeywordsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_keywords(self: ptr cQsciLexerHTML, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerHTML_keywords ".} =
  var nimfunc = cast[ptr QsciLexerHTMLkeywordsProc](cast[pointer](slot))
  let slotval1 = set


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerHTMLdefaultStyle*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): cint =

  fQsciLexerHTML_virtualbase_defaultStyle(self.h)

type QsciLexerHTMLdefaultStyleProc* = proc(): cint
proc ondefaultStyle*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLdefaultStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLdefaultStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_defaultStyle(self: ptr cQsciLexerHTML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerHTML_defaultStyle ".} =
  var nimfunc = cast[ptr QsciLexerHTMLdefaultStyleProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QsciLexerHTMLdescriptionProc* = proc(style: cint): string
proc ondescription*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLdescriptionProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLdescriptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_description(self: ptr cQsciLexerHTML, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerHTML_description ".} =
  var nimfunc = cast[ptr QsciLexerHTMLdescriptionProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QsciLexerHTMLpaper*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerHTML_virtualbase_paper(self.h, style))

type QsciLexerHTMLpaperProc* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLpaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLpaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_paper(self: ptr cQsciLexerHTML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerHTML_paper ".} =
  var nimfunc = cast[ptr QsciLexerHTMLpaperProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerHTMLdefaultColorWithStyle*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerHTML_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerHTMLdefaultColorWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLdefaultColorWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLdefaultColorWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_defaultColorWithStyle(self: ptr cQsciLexerHTML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerHTML_defaultColorWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerHTMLdefaultColorWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerHTMLdefaultEolFill*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: cint): bool =

  fQsciLexerHTML_virtualbase_defaultEolFill(self.h, style)

type QsciLexerHTMLdefaultEolFillProc* = proc(style: cint): bool
proc ondefaultEolFill*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLdefaultEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLdefaultEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_defaultEolFill(self: ptr cQsciLexerHTML, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerHTML_defaultEolFill ".} =
  var nimfunc = cast[ptr QsciLexerHTMLdefaultEolFillProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerHTMLdefaultFontWithStyle*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fQsciLexerHTML_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerHTMLdefaultFontWithStyleProc* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLdefaultFontWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLdefaultFontWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_defaultFontWithStyle(self: ptr cQsciLexerHTML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerHTML_defaultFontWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerHTMLdefaultFontWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerHTMLdefaultPaperWithStyle*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fQsciLexerHTML_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerHTMLdefaultPaperWithStyleProc* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLdefaultPaperWithStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLdefaultPaperWithStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_defaultPaperWithStyle(self: ptr cQsciLexerHTML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerHTML_defaultPaperWithStyle ".} =
  var nimfunc = cast[ptr QsciLexerHTMLdefaultPaperWithStyleProc](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciLexerHTMLsetEditor*(self: gen_qscilexerhtml_types.QsciLexerHTML, editor: gen_qsciscintilla.QsciScintilla): void =

  fQsciLexerHTML_virtualbase_setEditor(self.h, editor.h)

type QsciLexerHTMLsetEditorProc* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLsetEditorProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLsetEditorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_setEditor(self: ptr cQsciLexerHTML, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerHTML_setEditor ".} =
  var nimfunc = cast[ptr QsciLexerHTMLsetEditorProc](cast[pointer](slot))
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](slotval1)
proc QsciLexerHTMLrefreshProperties*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): void =

  fQsciLexerHTML_virtualbase_refreshProperties(self.h)

type QsciLexerHTMLrefreshPropertiesProc* = proc(): void
proc onrefreshProperties*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLrefreshPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLrefreshPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_refreshProperties(self: ptr cQsciLexerHTML, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerHTML_refreshProperties ".} =
  var nimfunc = cast[ptr QsciLexerHTMLrefreshPropertiesProc](cast[pointer](slot))

  nimfunc[]()
proc QsciLexerHTMLstyleBitsNeeded*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): cint =

  fQsciLexerHTML_virtualbase_styleBitsNeeded(self.h)

type QsciLexerHTMLstyleBitsNeededProc* = proc(): cint
proc onstyleBitsNeeded*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLstyleBitsNeededProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLstyleBitsNeededProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_styleBitsNeeded(self: ptr cQsciLexerHTML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerHTML_styleBitsNeeded ".} =
  var nimfunc = cast[ptr QsciLexerHTMLstyleBitsNeededProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerHTMLwordCharacters*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): cstring =

  (fQsciLexerHTML_virtualbase_wordCharacters(self.h))

type QsciLexerHTMLwordCharactersProc* = proc(): cstring
proc onwordCharacters*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLwordCharactersProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLwordCharactersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_wordCharacters(self: ptr cQsciLexerHTML, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerHTML_wordCharacters ".} =
  var nimfunc = cast[ptr QsciLexerHTMLwordCharactersProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciLexerHTMLsetAutoIndentStyle*(self: gen_qscilexerhtml_types.QsciLexerHTML, autoindentstyle: cint): void =

  fQsciLexerHTML_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerHTMLsetAutoIndentStyleProc* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLsetAutoIndentStyleProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLsetAutoIndentStyleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_setAutoIndentStyle(self: ptr cQsciLexerHTML, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerHTML_setAutoIndentStyle ".} =
  var nimfunc = cast[ptr QsciLexerHTMLsetAutoIndentStyleProc](cast[pointer](slot))
  let slotval1 = autoindentstyle


  nimfunc[](slotval1)
proc QsciLexerHTMLsetColor*(self: gen_qscilexerhtml_types.QsciLexerHTML, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerHTML_virtualbase_setColor(self.h, c.h, style)

type QsciLexerHTMLsetColorProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLsetColorProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLsetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_setColor(self: ptr cQsciLexerHTML, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerHTML_setColor ".} =
  var nimfunc = cast[ptr QsciLexerHTMLsetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerHTMLsetEolFill*(self: gen_qscilexerhtml_types.QsciLexerHTML, eoffill: bool, style: cint): void =

  fQsciLexerHTML_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerHTMLsetEolFillProc* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLsetEolFillProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLsetEolFillProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_setEolFill(self: ptr cQsciLexerHTML, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerHTML_setEolFill ".} =
  var nimfunc = cast[ptr QsciLexerHTMLsetEolFillProc](cast[pointer](slot))
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerHTMLsetFont*(self: gen_qscilexerhtml_types.QsciLexerHTML, f: gen_qfont.QFont, style: cint): void =

  fQsciLexerHTML_virtualbase_setFont(self.h, f.h, style)

type QsciLexerHTMLsetFontProc* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLsetFontProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLsetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_setFont(self: ptr cQsciLexerHTML, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerHTML_setFont ".} =
  var nimfunc = cast[ptr QsciLexerHTMLsetFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerHTMLsetPaper*(self: gen_qscilexerhtml_types.QsciLexerHTML, c: gen_qcolor.QColor, style: cint): void =

  fQsciLexerHTML_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerHTMLsetPaperProc* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLsetPaperProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLsetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_setPaper(self: ptr cQsciLexerHTML, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerHTML_setPaper ".} =
  var nimfunc = cast[ptr QsciLexerHTMLsetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](slotval1, slotval2)
proc QsciLexerHTMLreadProperties*(self: gen_qscilexerhtml_types.QsciLexerHTML, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerHTML_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerHTMLreadPropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLreadPropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLreadPropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_readProperties(self: ptr cQsciLexerHTML, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerHTML_readProperties ".} =
  var nimfunc = cast[ptr QsciLexerHTMLreadPropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerHTMLwriteProperties*(self: gen_qscilexerhtml_types.QsciLexerHTML, qs: gen_qsettings.QSettings, prefix: string): bool =

  fQsciLexerHTML_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerHTMLwritePropertiesProc* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLwritePropertiesProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLwritePropertiesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_writeProperties(self: ptr cQsciLexerHTML, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerHTML_writeProperties ".} =
  var nimfunc = cast[ptr QsciLexerHTMLwritePropertiesProc](cast[pointer](slot))
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerHTMLevent*(self: gen_qscilexerhtml_types.QsciLexerHTML, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerHTML_virtualbase_event(self.h, event.h)

type QsciLexerHTMLeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLeventProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_event(self: ptr cQsciLexerHTML, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerHTML_event ".} =
  var nimfunc = cast[ptr QsciLexerHTMLeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciLexerHTMLeventFilter*(self: gen_qscilexerhtml_types.QsciLexerHTML, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQsciLexerHTML_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerHTMLeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_eventFilter(self: ptr cQsciLexerHTML, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerHTML_eventFilter ".} =
  var nimfunc = cast[ptr QsciLexerHTMLeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciLexerHTMLtimerEvent*(self: gen_qscilexerhtml_types.QsciLexerHTML, event: gen_qcoreevent.QTimerEvent): void =

  fQsciLexerHTML_virtualbase_timerEvent(self.h, event.h)

type QsciLexerHTMLtimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLtimerEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_timerEvent(self: ptr cQsciLexerHTML, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerHTML_timerEvent ".} =
  var nimfunc = cast[ptr QsciLexerHTMLtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerHTMLchildEvent*(self: gen_qscilexerhtml_types.QsciLexerHTML, event: gen_qcoreevent.QChildEvent): void =

  fQsciLexerHTML_virtualbase_childEvent(self.h, event.h)

type QsciLexerHTMLchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLchildEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_childEvent(self: ptr cQsciLexerHTML, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerHTML_childEvent ".} =
  var nimfunc = cast[ptr QsciLexerHTMLchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerHTMLcustomEvent*(self: gen_qscilexerhtml_types.QsciLexerHTML, event: gen_qcoreevent.QEvent): void =

  fQsciLexerHTML_virtualbase_customEvent(self.h, event.h)

type QsciLexerHTMLcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLcustomEventProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_customEvent(self: ptr cQsciLexerHTML, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerHTML_customEvent ".} =
  var nimfunc = cast[ptr QsciLexerHTMLcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciLexerHTMLconnectNotify*(self: gen_qscilexerhtml_types.QsciLexerHTML, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerHTML_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerHTMLconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_connectNotify(self: ptr cQsciLexerHTML, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerHTML_connectNotify ".} =
  var nimfunc = cast[ptr QsciLexerHTMLconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciLexerHTMLdisconnectNotify*(self: gen_qscilexerhtml_types.QsciLexerHTML, signal: gen_qmetaobject.QMetaMethod): void =

  fQsciLexerHTML_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerHTMLdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscilexerhtml_types.QsciLexerHTML, slot: QsciLexerHTMLdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciLexerHTMLdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_disconnectNotify(self: ptr cQsciLexerHTML, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerHTML_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciLexerHTMLdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscilexerhtml_types.QsciLexerHTML): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerHTML_staticMetaObject())
proc delete*(self: gen_qscilexerhtml_types.QsciLexerHTML) =
  fcQsciLexerHTML_delete(self.h)
