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
{.compile("gen_qscilexerhtml.cpp", cflags).}


type QsciLexerHTMLEnum* = cint
const
  QsciLexerHTMLDefault* = 0
  QsciLexerHTMLTag* = 1
  QsciLexerHTMLUnknownTag* = 2
  QsciLexerHTMLAttribute* = 3
  QsciLexerHTMLUnknownAttribute* = 4
  QsciLexerHTMLHTMLNumber* = 5
  QsciLexerHTMLHTMLDoubleQuotedString* = 6
  QsciLexerHTMLHTMLSingleQuotedString* = 7
  QsciLexerHTMLOtherInTag* = 8
  QsciLexerHTMLHTMLComment* = 9
  QsciLexerHTMLEntity* = 10
  QsciLexerHTMLXMLTagEnd* = 11
  QsciLexerHTMLXMLStart* = 12
  QsciLexerHTMLXMLEnd* = 13
  QsciLexerHTMLScript* = 14
  QsciLexerHTMLASPAtStart* = 15
  QsciLexerHTMLASPStart* = 16
  QsciLexerHTMLCDATA* = 17
  QsciLexerHTMLPHPStart* = 18
  QsciLexerHTMLHTMLValue* = 19
  QsciLexerHTMLASPXCComment* = 20
  QsciLexerHTMLSGMLDefault* = 21
  QsciLexerHTMLSGMLCommand* = 22
  QsciLexerHTMLSGMLParameter* = 23
  QsciLexerHTMLSGMLDoubleQuotedString* = 24
  QsciLexerHTMLSGMLSingleQuotedString* = 25
  QsciLexerHTMLSGMLError* = 26
  QsciLexerHTMLSGMLSpecial* = 27
  QsciLexerHTMLSGMLEntity* = 28
  QsciLexerHTMLSGMLComment* = 29
  QsciLexerHTMLSGMLParameterComment* = 30
  QsciLexerHTMLSGMLBlockDefault* = 31
  QsciLexerHTMLJavaScriptStart* = 40
  QsciLexerHTMLJavaScriptDefault* = 41
  QsciLexerHTMLJavaScriptComment* = 42
  QsciLexerHTMLJavaScriptCommentLine* = 43
  QsciLexerHTMLJavaScriptCommentDoc* = 44
  QsciLexerHTMLJavaScriptNumber* = 45
  QsciLexerHTMLJavaScriptWord* = 46
  QsciLexerHTMLJavaScriptKeyword* = 47
  QsciLexerHTMLJavaScriptDoubleQuotedString* = 48
  QsciLexerHTMLJavaScriptSingleQuotedString* = 49
  QsciLexerHTMLJavaScriptSymbol* = 50
  QsciLexerHTMLJavaScriptUnclosedString* = 51
  QsciLexerHTMLJavaScriptRegex* = 52
  QsciLexerHTMLASPJavaScriptStart* = 55
  QsciLexerHTMLASPJavaScriptDefault* = 56
  QsciLexerHTMLASPJavaScriptComment* = 57
  QsciLexerHTMLASPJavaScriptCommentLine* = 58
  QsciLexerHTMLASPJavaScriptCommentDoc* = 59
  QsciLexerHTMLASPJavaScriptNumber* = 60
  QsciLexerHTMLASPJavaScriptWord* = 61
  QsciLexerHTMLASPJavaScriptKeyword* = 62
  QsciLexerHTMLASPJavaScriptDoubleQuotedString* = 63
  QsciLexerHTMLASPJavaScriptSingleQuotedString* = 64
  QsciLexerHTMLASPJavaScriptSymbol* = 65
  QsciLexerHTMLASPJavaScriptUnclosedString* = 66
  QsciLexerHTMLASPJavaScriptRegex* = 67
  QsciLexerHTMLVBScriptStart* = 70
  QsciLexerHTMLVBScriptDefault* = 71
  QsciLexerHTMLVBScriptComment* = 72
  QsciLexerHTMLVBScriptNumber* = 73
  QsciLexerHTMLVBScriptKeyword* = 74
  QsciLexerHTMLVBScriptString* = 75
  QsciLexerHTMLVBScriptIdentifier* = 76
  QsciLexerHTMLVBScriptUnclosedString* = 77
  QsciLexerHTMLASPVBScriptStart* = 80
  QsciLexerHTMLASPVBScriptDefault* = 81
  QsciLexerHTMLASPVBScriptComment* = 82
  QsciLexerHTMLASPVBScriptNumber* = 83
  QsciLexerHTMLASPVBScriptKeyword* = 84
  QsciLexerHTMLASPVBScriptString* = 85
  QsciLexerHTMLASPVBScriptIdentifier* = 86
  QsciLexerHTMLASPVBScriptUnclosedString* = 87
  QsciLexerHTMLPythonStart* = 90
  QsciLexerHTMLPythonDefault* = 91
  QsciLexerHTMLPythonComment* = 92
  QsciLexerHTMLPythonNumber* = 93
  QsciLexerHTMLPythonDoubleQuotedString* = 94
  QsciLexerHTMLPythonSingleQuotedString* = 95
  QsciLexerHTMLPythonKeyword* = 96
  QsciLexerHTMLPythonTripleSingleQuotedString* = 97
  QsciLexerHTMLPythonTripleDoubleQuotedString* = 98
  QsciLexerHTMLPythonClassName* = 99
  QsciLexerHTMLPythonFunctionMethodName* = 100
  QsciLexerHTMLPythonOperator* = 101
  QsciLexerHTMLPythonIdentifier* = 102
  QsciLexerHTMLASPPythonStart* = 105
  QsciLexerHTMLASPPythonDefault* = 106
  QsciLexerHTMLASPPythonComment* = 107
  QsciLexerHTMLASPPythonNumber* = 108
  QsciLexerHTMLASPPythonDoubleQuotedString* = 109
  QsciLexerHTMLASPPythonSingleQuotedString* = 110
  QsciLexerHTMLASPPythonKeyword* = 111
  QsciLexerHTMLASPPythonTripleSingleQuotedString* = 112
  QsciLexerHTMLASPPythonTripleDoubleQuotedString* = 113
  QsciLexerHTMLASPPythonClassName* = 114
  QsciLexerHTMLASPPythonFunctionMethodName* = 115
  QsciLexerHTMLASPPythonOperator* = 116
  QsciLexerHTMLASPPythonIdentifier* = 117
  QsciLexerHTMLPHPDefault* = 118
  QsciLexerHTMLPHPDoubleQuotedString* = 119
  QsciLexerHTMLPHPSingleQuotedString* = 120
  QsciLexerHTMLPHPKeyword* = 121
  QsciLexerHTMLPHPNumber* = 122
  QsciLexerHTMLPHPVariable* = 123
  QsciLexerHTMLPHPComment* = 124
  QsciLexerHTMLPHPCommentLine* = 125
  QsciLexerHTMLPHPDoubleQuotedVariable* = 126
  QsciLexerHTMLPHPOperator* = 127



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


func init*(T: type QsciLexerHTML, h: ptr cQsciLexerHTML): QsciLexerHTML =
  T(h: h)
proc create*(T: type QsciLexerHTML, ): QsciLexerHTML =

  QsciLexerHTML.init(fcQsciLexerHTML_new())
proc create*(T: type QsciLexerHTML, parent: gen_qobject.QObject): QsciLexerHTML =

  QsciLexerHTML.init(fcQsciLexerHTML_new2(parent.h))
proc metaObject*(self: QsciLexerHTML, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciLexerHTML_metaObject(self.h))

proc metacast*(self: QsciLexerHTML, param1: cstring): pointer =

  fcQsciLexerHTML_metacast(self.h, param1)

proc metacall*(self: QsciLexerHTML, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciLexerHTML_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciLexerHTML, s: cstring): string =

  let v_ms = fcQsciLexerHTML_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QsciLexerHTML, ): cstring =

  (fcQsciLexerHTML_language(self.h))

proc lexer*(self: QsciLexerHTML, ): cstring =

  (fcQsciLexerHTML_lexer(self.h))

proc autoCompletionFillups*(self: QsciLexerHTML, ): cstring =

  (fcQsciLexerHTML_autoCompletionFillups(self.h))

proc wordCharacters*(self: QsciLexerHTML, ): cstring =

  (fcQsciLexerHTML_wordCharacters(self.h))

proc defaultColor*(self: QsciLexerHTML, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerHTML_defaultColor(self.h, style))

proc defaultEolFill*(self: QsciLexerHTML, style: cint): bool =

  fcQsciLexerHTML_defaultEolFill(self.h, style)

proc defaultFont*(self: QsciLexerHTML, style: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciLexerHTML_defaultFont(self.h, style))

proc defaultPaper*(self: QsciLexerHTML, style: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciLexerHTML_defaultPaper(self.h, style))

proc keywords*(self: QsciLexerHTML, set: cint): cstring =

  (fcQsciLexerHTML_keywords(self.h, set))

proc description*(self: QsciLexerHTML, style: cint): string =

  let v_ms = fcQsciLexerHTML_description(self.h, style)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc refreshProperties*(self: QsciLexerHTML, ): void =

  fcQsciLexerHTML_refreshProperties(self.h)

proc caseSensitiveTags*(self: QsciLexerHTML, ): bool =

  fcQsciLexerHTML_caseSensitiveTags(self.h)

proc setDjangoTemplates*(self: QsciLexerHTML, enabled: bool): void =

  fcQsciLexerHTML_setDjangoTemplates(self.h, enabled)

proc djangoTemplates*(self: QsciLexerHTML, ): bool =

  fcQsciLexerHTML_djangoTemplates(self.h)

proc foldCompact*(self: QsciLexerHTML, ): bool =

  fcQsciLexerHTML_foldCompact(self.h)

proc foldPreprocessor*(self: QsciLexerHTML, ): bool =

  fcQsciLexerHTML_foldPreprocessor(self.h)

proc setFoldScriptComments*(self: QsciLexerHTML, fold: bool): void =

  fcQsciLexerHTML_setFoldScriptComments(self.h, fold)

proc foldScriptComments*(self: QsciLexerHTML, ): bool =

  fcQsciLexerHTML_foldScriptComments(self.h)

proc setFoldScriptHeredocs*(self: QsciLexerHTML, fold: bool): void =

  fcQsciLexerHTML_setFoldScriptHeredocs(self.h, fold)

proc foldScriptHeredocs*(self: QsciLexerHTML, ): bool =

  fcQsciLexerHTML_foldScriptHeredocs(self.h)

proc setMakoTemplates*(self: QsciLexerHTML, enabled: bool): void =

  fcQsciLexerHTML_setMakoTemplates(self.h, enabled)

proc makoTemplates*(self: QsciLexerHTML, ): bool =

  fcQsciLexerHTML_makoTemplates(self.h)

proc setFoldCompact*(self: QsciLexerHTML, fold: bool): void =

  fcQsciLexerHTML_setFoldCompact(self.h, fold)

proc setFoldPreprocessor*(self: QsciLexerHTML, fold: bool): void =

  fcQsciLexerHTML_setFoldPreprocessor(self.h, fold)

proc setCaseSensitiveTags*(self: QsciLexerHTML, sens: bool): void =

  fcQsciLexerHTML_setCaseSensitiveTags(self.h, sens)

proc tr2*(_: type QsciLexerHTML, s: cstring, c: cstring): string =

  let v_ms = fcQsciLexerHTML_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciLexerHTML, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciLexerHTML_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QsciLexerHTML, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQsciLexerHTML_virtualbase_metaObject(self.h))

type QsciLexerHTMLmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_metaObject(self: ptr cQsciLexerHTML, slot: int): pointer {.exportc: "miqt_exec_callback_QsciLexerHTML_metaObject ".} =
  type Cb = proc(super: QsciLexerHTMLmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QsciLexerHTML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QsciLexerHTML, param1: cstring): pointer =


  fQsciLexerHTML_virtualbase_metacast(self.h, param1)

type QsciLexerHTMLmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_metacast(self: ptr cQsciLexerHTML, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciLexerHTML_metacast ".} =
  type Cb = proc(super: QsciLexerHTMLmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QsciLexerHTML(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QsciLexerHTML, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciLexerHTML_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciLexerHTMLmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_metacall(self: ptr cQsciLexerHTML, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciLexerHTML_metacall ".} =
  type Cb = proc(super: QsciLexerHTMLmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciLexerHTML(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setFoldCompact(self: QsciLexerHTML, fold: bool): void =


  fQsciLexerHTML_virtualbase_setFoldCompact(self.h, fold)

type QsciLexerHTMLsetFoldCompactBase* = proc(fold: bool): void
proc onsetFoldCompact*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLsetFoldCompactBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLsetFoldCompactBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_setFoldCompact(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_setFoldCompact(self: ptr cQsciLexerHTML, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerHTML_setFoldCompact ".} =
  type Cb = proc(super: QsciLexerHTMLsetFoldCompactBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldCompact(QsciLexerHTML(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFoldPreprocessor(self: QsciLexerHTML, fold: bool): void =


  fQsciLexerHTML_virtualbase_setFoldPreprocessor(self.h, fold)

type QsciLexerHTMLsetFoldPreprocessorBase* = proc(fold: bool): void
proc onsetFoldPreprocessor*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLsetFoldPreprocessorBase, fold: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLsetFoldPreprocessorBase, fold: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_setFoldPreprocessor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_setFoldPreprocessor(self: ptr cQsciLexerHTML, slot: int, fold: bool): void {.exportc: "miqt_exec_callback_QsciLexerHTML_setFoldPreprocessor ".} =
  type Cb = proc(super: QsciLexerHTMLsetFoldPreprocessorBase, fold: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: bool): auto =
    callVirtualBase_setFoldPreprocessor(QsciLexerHTML(h: self), fold)
  let slotval1 = fold


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setCaseSensitiveTags(self: QsciLexerHTML, sens: bool): void =


  fQsciLexerHTML_virtualbase_setCaseSensitiveTags(self.h, sens)

type QsciLexerHTMLsetCaseSensitiveTagsBase* = proc(sens: bool): void
proc onsetCaseSensitiveTags*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLsetCaseSensitiveTagsBase, sens: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLsetCaseSensitiveTagsBase, sens: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_setCaseSensitiveTags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_setCaseSensitiveTags(self: ptr cQsciLexerHTML, slot: int, sens: bool): void {.exportc: "miqt_exec_callback_QsciLexerHTML_setCaseSensitiveTags ".} =
  type Cb = proc(super: QsciLexerHTMLsetCaseSensitiveTagsBase, sens: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sens: bool): auto =
    callVirtualBase_setCaseSensitiveTags(QsciLexerHTML(h: self), sens)
  let slotval1 = sens


  nimfunc[](superCall, slotval1)
type QsciLexerHTMLlanguageBase* = proc(): cstring
proc onlanguage*(self: QsciLexerHTML, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_language(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_language(self: ptr cQsciLexerHTML, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerHTML_language ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_lexer(self: QsciLexerHTML, ): cstring =


  (fQsciLexerHTML_virtualbase_lexer(self.h))

type QsciLexerHTMLlexerBase* = proc(): cstring
proc onlexer*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLlexerBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLlexerBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_lexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_lexer(self: ptr cQsciLexerHTML, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerHTML_lexer ".} =
  type Cb = proc(super: QsciLexerHTMLlexerBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexer(QsciLexerHTML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_lexerId(self: QsciLexerHTML, ): cint =


  fQsciLexerHTML_virtualbase_lexerId(self.h)

type QsciLexerHTMLlexerIdBase* = proc(): cint
proc onlexerId*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLlexerIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLlexerIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_lexerId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_lexerId(self: ptr cQsciLexerHTML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerHTML_lexerId ".} =
  type Cb = proc(super: QsciLexerHTMLlexerIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_lexerId(QsciLexerHTML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionFillups(self: QsciLexerHTML, ): cstring =


  (fQsciLexerHTML_virtualbase_autoCompletionFillups(self.h))

type QsciLexerHTMLautoCompletionFillupsBase* = proc(): cstring
proc onautoCompletionFillups*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLautoCompletionFillupsBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLautoCompletionFillupsBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_autoCompletionFillups(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_autoCompletionFillups(self: ptr cQsciLexerHTML, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerHTML_autoCompletionFillups ".} =
  type Cb = proc(super: QsciLexerHTMLautoCompletionFillupsBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionFillups(QsciLexerHTML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_autoCompletionWordSeparators(self: QsciLexerHTML, ): seq[string] =


  var v_ma = fQsciLexerHTML_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciLexerHTMLautoCompletionWordSeparatorsBase* = proc(): seq[string]
proc onautoCompletionWordSeparators*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLautoCompletionWordSeparatorsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLautoCompletionWordSeparatorsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_autoCompletionWordSeparators(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_autoCompletionWordSeparators(self: ptr cQsciLexerHTML, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QsciLexerHTML_autoCompletionWordSeparators ".} =
  type Cb = proc(super: QsciLexerHTMLautoCompletionWordSeparatorsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompletionWordSeparators(QsciLexerHTML(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_blockEnd(self: QsciLexerHTML, style: ptr cint): cstring =


  (fQsciLexerHTML_virtualbase_blockEnd(self.h, style))

type QsciLexerHTMLblockEndBase* = proc(style: ptr cint): cstring
proc onblockEnd*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLblockEndBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLblockEndBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_blockEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_blockEnd(self: ptr cQsciLexerHTML, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerHTML_blockEnd ".} =
  type Cb = proc(super: QsciLexerHTMLblockEndBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockEnd(QsciLexerHTML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockLookback(self: QsciLexerHTML, ): cint =


  fQsciLexerHTML_virtualbase_blockLookback(self.h)

type QsciLexerHTMLblockLookbackBase* = proc(): cint
proc onblockLookback*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLblockLookbackBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLblockLookbackBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_blockLookback(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_blockLookback(self: ptr cQsciLexerHTML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerHTML_blockLookback ".} =
  type Cb = proc(super: QsciLexerHTMLblockLookbackBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_blockLookback(QsciLexerHTML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_blockStart(self: QsciLexerHTML, style: ptr cint): cstring =


  (fQsciLexerHTML_virtualbase_blockStart(self.h, style))

type QsciLexerHTMLblockStartBase* = proc(style: ptr cint): cstring
proc onblockStart*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLblockStartBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLblockStartBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_blockStart(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_blockStart(self: ptr cQsciLexerHTML, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerHTML_blockStart ".} =
  type Cb = proc(super: QsciLexerHTMLblockStartBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStart(QsciLexerHTML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_blockStartKeyword(self: QsciLexerHTML, style: ptr cint): cstring =


  (fQsciLexerHTML_virtualbase_blockStartKeyword(self.h, style))

type QsciLexerHTMLblockStartKeywordBase* = proc(style: ptr cint): cstring
proc onblockStartKeyword*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLblockStartKeywordBase, style: ptr cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLblockStartKeywordBase, style: ptr cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_blockStartKeyword(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_blockStartKeyword(self: ptr cQsciLexerHTML, slot: int, style: ptr cint): cstring {.exportc: "miqt_exec_callback_QsciLexerHTML_blockStartKeyword ".} =
  type Cb = proc(super: QsciLexerHTMLblockStartKeywordBase, style: ptr cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: ptr cint): auto =
    callVirtualBase_blockStartKeyword(QsciLexerHTML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_braceStyle(self: QsciLexerHTML, ): cint =


  fQsciLexerHTML_virtualbase_braceStyle(self.h)

type QsciLexerHTMLbraceStyleBase* = proc(): cint
proc onbraceStyle*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLbraceStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLbraceStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_braceStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_braceStyle(self: ptr cQsciLexerHTML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerHTML_braceStyle ".} =
  type Cb = proc(super: QsciLexerHTMLbraceStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_braceStyle(QsciLexerHTML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_caseSensitive(self: QsciLexerHTML, ): bool =


  fQsciLexerHTML_virtualbase_caseSensitive(self.h)

type QsciLexerHTMLcaseSensitiveBase* = proc(): bool
proc oncaseSensitive*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLcaseSensitiveBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLcaseSensitiveBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_caseSensitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_caseSensitive(self: ptr cQsciLexerHTML, slot: int): bool {.exportc: "miqt_exec_callback_QsciLexerHTML_caseSensitive ".} =
  type Cb = proc(super: QsciLexerHTMLcaseSensitiveBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_caseSensitive(QsciLexerHTML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_color(self: QsciLexerHTML, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerHTML_virtualbase_color(self.h, style))

type QsciLexerHTMLcolorBase* = proc(style: cint): gen_qcolor.QColor
proc oncolor*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLcolorBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLcolorBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_color(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_color(self: ptr cQsciLexerHTML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerHTML_color ".} =
  type Cb = proc(super: QsciLexerHTMLcolorBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_color(QsciLexerHTML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eolFill(self: QsciLexerHTML, style: cint): bool =


  fQsciLexerHTML_virtualbase_eolFill(self.h, style)

type QsciLexerHTMLeolFillBase* = proc(style: cint): bool
proc oneolFill*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLeolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLeolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_eolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_eolFill(self: ptr cQsciLexerHTML, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerHTML_eolFill ".} =
  type Cb = proc(super: QsciLexerHTMLeolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_eolFill(QsciLexerHTML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_font(self: QsciLexerHTML, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerHTML_virtualbase_font(self.h, style))

type QsciLexerHTMLfontBase* = proc(style: cint): gen_qfont.QFont
proc onfont*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLfontBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLfontBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_font(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_font(self: ptr cQsciLexerHTML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerHTML_font ".} =
  type Cb = proc(super: QsciLexerHTMLfontBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_font(QsciLexerHTML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_indentationGuideView(self: QsciLexerHTML, ): cint =


  fQsciLexerHTML_virtualbase_indentationGuideView(self.h)

type QsciLexerHTMLindentationGuideViewBase* = proc(): cint
proc onindentationGuideView*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLindentationGuideViewBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLindentationGuideViewBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_indentationGuideView(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_indentationGuideView(self: ptr cQsciLexerHTML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerHTML_indentationGuideView ".} =
  type Cb = proc(super: QsciLexerHTMLindentationGuideViewBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_indentationGuideView(QsciLexerHTML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_keywords(self: QsciLexerHTML, set: cint): cstring =


  (fQsciLexerHTML_virtualbase_keywords(self.h, set))

type QsciLexerHTMLkeywordsBase* = proc(set: cint): cstring
proc onkeywords*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLkeywordsBase, set: cint): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLkeywordsBase, set: cint): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_keywords(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_keywords(self: ptr cQsciLexerHTML, slot: int, set: cint): cstring {.exportc: "miqt_exec_callback_QsciLexerHTML_keywords ".} =
  type Cb = proc(super: QsciLexerHTMLkeywordsBase, set: cint): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(set: cint): auto =
    callVirtualBase_keywords(QsciLexerHTML(h: self), set)
  let slotval1 = set


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultStyle(self: QsciLexerHTML, ): cint =


  fQsciLexerHTML_virtualbase_defaultStyle(self.h)

type QsciLexerHTMLdefaultStyleBase* = proc(): cint
proc ondefaultStyle*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLdefaultStyleBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLdefaultStyleBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_defaultStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_defaultStyle(self: ptr cQsciLexerHTML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerHTML_defaultStyle ".} =
  type Cb = proc(super: QsciLexerHTMLdefaultStyleBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_defaultStyle(QsciLexerHTML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QsciLexerHTMLdescriptionBase* = proc(style: cint): string
proc ondescription*(self: QsciLexerHTML, slot: proc(style: cint): string) =
  # TODO check subclass
  type Cb = proc(style: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_description(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_description(self: ptr cQsciLexerHTML, slot: int, style: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QsciLexerHTML_description ".} =
  type Cb = proc(style: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = style


  let virtualReturn = nimfunc[](slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_paper(self: QsciLexerHTML, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerHTML_virtualbase_paper(self.h, style))

type QsciLexerHTMLpaperBase* = proc(style: cint): gen_qcolor.QColor
proc onpaper*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLpaperBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLpaperBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_paper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_paper(self: ptr cQsciLexerHTML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerHTML_paper ".} =
  type Cb = proc(super: QsciLexerHTMLpaperBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_paper(QsciLexerHTML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultColorWithStyle(self: QsciLexerHTML, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerHTML_virtualbase_defaultColorWithStyle(self.h, style))

type QsciLexerHTMLdefaultColorWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultColorWithStyle*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_defaultColorWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_defaultColorWithStyle(self: ptr cQsciLexerHTML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerHTML_defaultColorWithStyle ".} =
  type Cb = proc(super: QsciLexerHTMLdefaultColorWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultColorWithStyle(QsciLexerHTML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultEolFill(self: QsciLexerHTML, style: cint): bool =


  fQsciLexerHTML_virtualbase_defaultEolFill(self.h, style)

type QsciLexerHTMLdefaultEolFillBase* = proc(style: cint): bool
proc ondefaultEolFill*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLdefaultEolFillBase, style: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLdefaultEolFillBase, style: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_defaultEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_defaultEolFill(self: ptr cQsciLexerHTML, slot: int, style: cint): bool {.exportc: "miqt_exec_callback_QsciLexerHTML_defaultEolFill ".} =
  type Cb = proc(super: QsciLexerHTMLdefaultEolFillBase, style: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultEolFill(QsciLexerHTML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_defaultFontWithStyle(self: QsciLexerHTML, style: cint): gen_qfont.QFont =


  gen_qfont.QFont(h: fQsciLexerHTML_virtualbase_defaultFontWithStyle(self.h, style))

type QsciLexerHTMLdefaultFontWithStyleBase* = proc(style: cint): gen_qfont.QFont
proc ondefaultFontWithStyle*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLdefaultFontWithStyleBase, style: cint): gen_qfont.QFont) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_defaultFontWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_defaultFontWithStyle(self: ptr cQsciLexerHTML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerHTML_defaultFontWithStyle ".} =
  type Cb = proc(super: QsciLexerHTMLdefaultFontWithStyleBase, style: cint): gen_qfont.QFont
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultFontWithStyle(QsciLexerHTML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_defaultPaperWithStyle(self: QsciLexerHTML, style: cint): gen_qcolor.QColor =


  gen_qcolor.QColor(h: fQsciLexerHTML_virtualbase_defaultPaperWithStyle(self.h, style))

type QsciLexerHTMLdefaultPaperWithStyleBase* = proc(style: cint): gen_qcolor.QColor
proc ondefaultPaperWithStyle*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_defaultPaperWithStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_defaultPaperWithStyle(self: ptr cQsciLexerHTML, slot: int, style: cint): pointer {.exportc: "miqt_exec_callback_QsciLexerHTML_defaultPaperWithStyle ".} =
  type Cb = proc(super: QsciLexerHTMLdefaultPaperWithStyleBase, style: cint): gen_qcolor.QColor
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(style: cint): auto =
    callVirtualBase_defaultPaperWithStyle(QsciLexerHTML(h: self), style)
  let slotval1 = style


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setEditor(self: QsciLexerHTML, editor: gen_qsciscintilla.QsciScintilla): void =


  fQsciLexerHTML_virtualbase_setEditor(self.h, editor.h)

type QsciLexerHTMLsetEditorBase* = proc(editor: gen_qsciscintilla.QsciScintilla): void
proc onsetEditor*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_setEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_setEditor(self: ptr cQsciLexerHTML, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QsciLexerHTML_setEditor ".} =
  type Cb = proc(super: QsciLexerHTMLsetEditorBase, editor: gen_qsciscintilla.QsciScintilla): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qsciscintilla.QsciScintilla): auto =
    callVirtualBase_setEditor(QsciLexerHTML(h: self), editor)
  let slotval1 = gen_qsciscintilla.QsciScintilla(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_refreshProperties(self: QsciLexerHTML, ): void =


  fQsciLexerHTML_virtualbase_refreshProperties(self.h)

type QsciLexerHTMLrefreshPropertiesBase* = proc(): void
proc onrefreshProperties*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLrefreshPropertiesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLrefreshPropertiesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_refreshProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_refreshProperties(self: ptr cQsciLexerHTML, slot: int): void {.exportc: "miqt_exec_callback_QsciLexerHTML_refreshProperties ".} =
  type Cb = proc(super: QsciLexerHTMLrefreshPropertiesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshProperties(QsciLexerHTML(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_styleBitsNeeded(self: QsciLexerHTML, ): cint =


  fQsciLexerHTML_virtualbase_styleBitsNeeded(self.h)

type QsciLexerHTMLstyleBitsNeededBase* = proc(): cint
proc onstyleBitsNeeded*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLstyleBitsNeededBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLstyleBitsNeededBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_styleBitsNeeded(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_styleBitsNeeded(self: ptr cQsciLexerHTML, slot: int): cint {.exportc: "miqt_exec_callback_QsciLexerHTML_styleBitsNeeded ".} =
  type Cb = proc(super: QsciLexerHTMLstyleBitsNeededBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_styleBitsNeeded(QsciLexerHTML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_wordCharacters(self: QsciLexerHTML, ): cstring =


  (fQsciLexerHTML_virtualbase_wordCharacters(self.h))

type QsciLexerHTMLwordCharactersBase* = proc(): cstring
proc onwordCharacters*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLwordCharactersBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLwordCharactersBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_wordCharacters(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_wordCharacters(self: ptr cQsciLexerHTML, slot: int): cstring {.exportc: "miqt_exec_callback_QsciLexerHTML_wordCharacters ".} =
  type Cb = proc(super: QsciLexerHTMLwordCharactersBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_wordCharacters(QsciLexerHTML(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAutoIndentStyle(self: QsciLexerHTML, autoindentstyle: cint): void =


  fQsciLexerHTML_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

type QsciLexerHTMLsetAutoIndentStyleBase* = proc(autoindentstyle: cint): void
proc onsetAutoIndentStyle*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLsetAutoIndentStyleBase, autoindentstyle: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLsetAutoIndentStyleBase, autoindentstyle: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_setAutoIndentStyle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_setAutoIndentStyle(self: ptr cQsciLexerHTML, slot: int, autoindentstyle: cint): void {.exportc: "miqt_exec_callback_QsciLexerHTML_setAutoIndentStyle ".} =
  type Cb = proc(super: QsciLexerHTMLsetAutoIndentStyleBase, autoindentstyle: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindentstyle: cint): auto =
    callVirtualBase_setAutoIndentStyle(QsciLexerHTML(h: self), autoindentstyle)
  let slotval1 = autoindentstyle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciLexerHTML, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerHTML_virtualbase_setColor(self.h, c.h, style)

type QsciLexerHTMLsetColorBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetColor*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLsetColorBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_setColor(self: ptr cQsciLexerHTML, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerHTML_setColor ".} =
  type Cb = proc(super: QsciLexerHTMLsetColorBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setColor(QsciLexerHTML(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolFill(self: QsciLexerHTML, eoffill: bool, style: cint): void =


  fQsciLexerHTML_virtualbase_setEolFill(self.h, eoffill, style)

type QsciLexerHTMLsetEolFillBase* = proc(eoffill: bool, style: cint): void
proc onsetEolFill*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLsetEolFillBase, eoffill: bool, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLsetEolFillBase, eoffill: bool, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_setEolFill(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_setEolFill(self: ptr cQsciLexerHTML, slot: int, eoffill: bool, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerHTML_setEolFill ".} =
  type Cb = proc(super: QsciLexerHTMLsetEolFillBase, eoffill: bool, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eoffill: bool, style: cint): auto =
    callVirtualBase_setEolFill(QsciLexerHTML(h: self), eoffill, style)
  let slotval1 = eoffill

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setFont(self: QsciLexerHTML, f: gen_qfont.QFont, style: cint): void =


  fQsciLexerHTML_virtualbase_setFont(self.h, f.h, style)

type QsciLexerHTMLsetFontBase* = proc(f: gen_qfont.QFont, style: cint): void
proc onsetFont*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLsetFontBase, f: gen_qfont.QFont, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLsetFontBase, f: gen_qfont.QFont, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_setFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_setFont(self: ptr cQsciLexerHTML, slot: int, f: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerHTML_setFont ".} =
  type Cb = proc(super: QsciLexerHTMLsetFontBase, f: gen_qfont.QFont, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont, style: cint): auto =
    callVirtualBase_setFont(QsciLexerHTML(h: self), f, style)
  let slotval1 = gen_qfont.QFont(h: f)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setPaper(self: QsciLexerHTML, c: gen_qcolor.QColor, style: cint): void =


  fQsciLexerHTML_virtualbase_setPaper(self.h, c.h, style)

type QsciLexerHTMLsetPaperBase* = proc(c: gen_qcolor.QColor, style: cint): void
proc onsetPaper*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLsetPaperBase, c: gen_qcolor.QColor, style: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_setPaper(self: ptr cQsciLexerHTML, slot: int, c: pointer, style: cint): void {.exportc: "miqt_exec_callback_QsciLexerHTML_setPaper ".} =
  type Cb = proc(super: QsciLexerHTMLsetPaperBase, c: gen_qcolor.QColor, style: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor, style: cint): auto =
    callVirtualBase_setPaper(QsciLexerHTML(h: self), c, style)
  let slotval1 = gen_qcolor.QColor(h: c)

  let slotval2 = style


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_readProperties(self: QsciLexerHTML, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerHTML_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerHTMLreadPropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onreadProperties*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_readProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_readProperties(self: ptr cQsciLexerHTML, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerHTML_readProperties ".} =
  type Cb = proc(super: QsciLexerHTMLreadPropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_readProperties(QsciLexerHTML(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeProperties(self: QsciLexerHTML, qs: gen_qsettings.QSettings, prefix: string): bool =


  fQsciLexerHTML_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

type QsciLexerHTMLwritePropertiesBase* = proc(qs: gen_qsettings.QSettings, prefix: string): bool
proc onwriteProperties*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_writeProperties(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_writeProperties(self: ptr cQsciLexerHTML, slot: int, qs: pointer, prefix: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QsciLexerHTML_writeProperties ".} =
  type Cb = proc(super: QsciLexerHTMLwritePropertiesBase, qs: gen_qsettings.QSettings, prefix: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(qs: gen_qsettings.QSettings, prefix: string): auto =
    callVirtualBase_writeProperties(QsciLexerHTML(h: self), qs, prefix)
  let slotval1 = gen_qsettings.QSettings(h: qs)

  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QsciLexerHTML, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerHTML_virtualbase_event(self.h, event.h)

type QsciLexerHTMLeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_event(self: ptr cQsciLexerHTML, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerHTML_event ".} =
  type Cb = proc(super: QsciLexerHTMLeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciLexerHTML(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciLexerHTML, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciLexerHTML_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciLexerHTMLeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_eventFilter(self: ptr cQsciLexerHTML, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciLexerHTML_eventFilter ".} =
  type Cb = proc(super: QsciLexerHTMLeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciLexerHTML(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciLexerHTML, event: gen_qcoreevent.QTimerEvent): void =


  fQsciLexerHTML_virtualbase_timerEvent(self.h, event.h)

type QsciLexerHTMLtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_timerEvent(self: ptr cQsciLexerHTML, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerHTML_timerEvent ".} =
  type Cb = proc(super: QsciLexerHTMLtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciLexerHTML(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciLexerHTML, event: gen_qcoreevent.QChildEvent): void =


  fQsciLexerHTML_virtualbase_childEvent(self.h, event.h)

type QsciLexerHTMLchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_childEvent(self: ptr cQsciLexerHTML, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerHTML_childEvent ".} =
  type Cb = proc(super: QsciLexerHTMLchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciLexerHTML(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciLexerHTML, event: gen_qcoreevent.QEvent): void =


  fQsciLexerHTML_virtualbase_customEvent(self.h, event.h)

type QsciLexerHTMLcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_customEvent(self: ptr cQsciLexerHTML, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciLexerHTML_customEvent ".} =
  type Cb = proc(super: QsciLexerHTMLcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciLexerHTML(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciLexerHTML, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerHTML_virtualbase_connectNotify(self.h, signal.h)

type QsciLexerHTMLconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_connectNotify(self: ptr cQsciLexerHTML, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerHTML_connectNotify ".} =
  type Cb = proc(super: QsciLexerHTMLconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciLexerHTML(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciLexerHTML, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciLexerHTML_virtualbase_disconnectNotify(self.h, signal.h)

type QsciLexerHTMLdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciLexerHTML, slot: proc(super: QsciLexerHTMLdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciLexerHTMLdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciLexerHTML_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciLexerHTML_disconnectNotify(self: ptr cQsciLexerHTML, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciLexerHTML_disconnectNotify ".} =
  type Cb = proc(super: QsciLexerHTMLdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciLexerHTML(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QsciLexerHTML): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciLexerHTML_staticMetaObject())
proc delete*(self: QsciLexerHTML) =
  fcQsciLexerHTML_delete(self.h)
