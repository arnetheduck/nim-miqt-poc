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

const cflags = gorge("pkg-config --cflags Qt6PrintSupport")
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
  gen_qcolor_types,
  gen_qcoreevent_types,
  gen_qfont_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qscilexer,
  gen_qsciscintilla_types,
  gen_qsettings_types
export
  gen_qcolor_types,
  gen_qcoreevent_types,
  gen_qfont_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qscilexer,
  gen_qsciscintilla_types,
  gen_qsettings_types

type cQsciLexerHTML*{.exportc: "QsciLexerHTML", incompleteStruct.} = object

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
type cQsciLexerHTMLVTable = object
  destructor*: proc(vtbl: ptr cQsciLexerHTMLVTable, self: ptr cQsciLexerHTML) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setFoldCompact*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
  setFoldPreprocessor*: proc(vtbl, self: pointer, fold: bool): void {.cdecl, raises: [], gcsafe.}
  setCaseSensitiveTags*: proc(vtbl, self: pointer, sens: bool): void {.cdecl, raises: [], gcsafe.}
  language*: proc(vtbl, self: pointer, ): cstring {.cdecl, raises: [], gcsafe.}
  lexer*: proc(vtbl, self: pointer, ): cstring {.cdecl, raises: [], gcsafe.}
  lexerId*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  autoCompletionFillups*: proc(vtbl, self: pointer, ): cstring {.cdecl, raises: [], gcsafe.}
  autoCompletionWordSeparators*: proc(vtbl, self: pointer, ): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  blockEnd*: proc(vtbl, self: pointer, style: ptr cint): cstring {.cdecl, raises: [], gcsafe.}
  blockLookback*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  blockStart*: proc(vtbl, self: pointer, style: ptr cint): cstring {.cdecl, raises: [], gcsafe.}
  blockStartKeyword*: proc(vtbl, self: pointer, style: ptr cint): cstring {.cdecl, raises: [], gcsafe.}
  braceStyle*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  caseSensitive*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  color*: proc(vtbl, self: pointer, style: cint): pointer {.cdecl, raises: [], gcsafe.}
  eolFill*: proc(vtbl, self: pointer, style: cint): bool {.cdecl, raises: [], gcsafe.}
  font*: proc(vtbl, self: pointer, style: cint): pointer {.cdecl, raises: [], gcsafe.}
  indentationGuideView*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  keywords*: proc(vtbl, self: pointer, set: cint): cstring {.cdecl, raises: [], gcsafe.}
  defaultStyle*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  description*: proc(vtbl, self: pointer, style: cint): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  paper*: proc(vtbl, self: pointer, style: cint): pointer {.cdecl, raises: [], gcsafe.}
  defaultColor*: proc(vtbl, self: pointer, style: cint): pointer {.cdecl, raises: [], gcsafe.}
  defaultEolFill*: proc(vtbl, self: pointer, style: cint): bool {.cdecl, raises: [], gcsafe.}
  defaultFont*: proc(vtbl, self: pointer, style: cint): pointer {.cdecl, raises: [], gcsafe.}
  defaultPaper*: proc(vtbl, self: pointer, style: cint): pointer {.cdecl, raises: [], gcsafe.}
  setEditor*: proc(vtbl, self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  refreshProperties*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  styleBitsNeeded*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  wordCharacters*: proc(vtbl, self: pointer, ): cstring {.cdecl, raises: [], gcsafe.}
  setAutoIndentStyle*: proc(vtbl, self: pointer, autoindentstyle: cint): void {.cdecl, raises: [], gcsafe.}
  setColor*: proc(vtbl, self: pointer, c: pointer, style: cint): void {.cdecl, raises: [], gcsafe.}
  setEolFill*: proc(vtbl, self: pointer, eoffill: bool, style: cint): void {.cdecl, raises: [], gcsafe.}
  setFont*: proc(vtbl, self: pointer, f: pointer, style: cint): void {.cdecl, raises: [], gcsafe.}
  setPaper*: proc(vtbl, self: pointer, c: pointer, style: cint): void {.cdecl, raises: [], gcsafe.}
  readProperties*: proc(vtbl, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl, raises: [], gcsafe.}
  writeProperties*: proc(vtbl, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQsciLexerHTML_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciLexerHTML_virtualbase_metaObject".}
proc fcQsciLexerHTML_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciLexerHTML_virtualbase_metacast".}
proc fcQsciLexerHTML_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciLexerHTML_virtualbase_metacall".}
proc fcQsciLexerHTML_virtualbase_setFoldCompact(self: pointer, fold: bool): void {.importc: "QsciLexerHTML_virtualbase_setFoldCompact".}
proc fcQsciLexerHTML_virtualbase_setFoldPreprocessor(self: pointer, fold: bool): void {.importc: "QsciLexerHTML_virtualbase_setFoldPreprocessor".}
proc fcQsciLexerHTML_virtualbase_setCaseSensitiveTags(self: pointer, sens: bool): void {.importc: "QsciLexerHTML_virtualbase_setCaseSensitiveTags".}
proc fcQsciLexerHTML_virtualbase_lexer(self: pointer, ): cstring {.importc: "QsciLexerHTML_virtualbase_lexer".}
proc fcQsciLexerHTML_virtualbase_lexerId(self: pointer, ): cint {.importc: "QsciLexerHTML_virtualbase_lexerId".}
proc fcQsciLexerHTML_virtualbase_autoCompletionFillups(self: pointer, ): cstring {.importc: "QsciLexerHTML_virtualbase_autoCompletionFillups".}
proc fcQsciLexerHTML_virtualbase_autoCompletionWordSeparators(self: pointer, ): struct_miqt_array {.importc: "QsciLexerHTML_virtualbase_autoCompletionWordSeparators".}
proc fcQsciLexerHTML_virtualbase_blockEnd(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerHTML_virtualbase_blockEnd".}
proc fcQsciLexerHTML_virtualbase_blockLookback(self: pointer, ): cint {.importc: "QsciLexerHTML_virtualbase_blockLookback".}
proc fcQsciLexerHTML_virtualbase_blockStart(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerHTML_virtualbase_blockStart".}
proc fcQsciLexerHTML_virtualbase_blockStartKeyword(self: pointer, style: ptr cint): cstring {.importc: "QsciLexerHTML_virtualbase_blockStartKeyword".}
proc fcQsciLexerHTML_virtualbase_braceStyle(self: pointer, ): cint {.importc: "QsciLexerHTML_virtualbase_braceStyle".}
proc fcQsciLexerHTML_virtualbase_caseSensitive(self: pointer, ): bool {.importc: "QsciLexerHTML_virtualbase_caseSensitive".}
proc fcQsciLexerHTML_virtualbase_color(self: pointer, style: cint): pointer {.importc: "QsciLexerHTML_virtualbase_color".}
proc fcQsciLexerHTML_virtualbase_eolFill(self: pointer, style: cint): bool {.importc: "QsciLexerHTML_virtualbase_eolFill".}
proc fcQsciLexerHTML_virtualbase_font(self: pointer, style: cint): pointer {.importc: "QsciLexerHTML_virtualbase_font".}
proc fcQsciLexerHTML_virtualbase_indentationGuideView(self: pointer, ): cint {.importc: "QsciLexerHTML_virtualbase_indentationGuideView".}
proc fcQsciLexerHTML_virtualbase_keywords(self: pointer, set: cint): cstring {.importc: "QsciLexerHTML_virtualbase_keywords".}
proc fcQsciLexerHTML_virtualbase_defaultStyle(self: pointer, ): cint {.importc: "QsciLexerHTML_virtualbase_defaultStyle".}
proc fcQsciLexerHTML_virtualbase_paper(self: pointer, style: cint): pointer {.importc: "QsciLexerHTML_virtualbase_paper".}
proc fcQsciLexerHTML_virtualbase_defaultColorWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerHTML_virtualbase_defaultColorWithStyle".}
proc fcQsciLexerHTML_virtualbase_defaultEolFill(self: pointer, style: cint): bool {.importc: "QsciLexerHTML_virtualbase_defaultEolFill".}
proc fcQsciLexerHTML_virtualbase_defaultFontWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerHTML_virtualbase_defaultFontWithStyle".}
proc fcQsciLexerHTML_virtualbase_defaultPaperWithStyle(self: pointer, style: cint): pointer {.importc: "QsciLexerHTML_virtualbase_defaultPaperWithStyle".}
proc fcQsciLexerHTML_virtualbase_setEditor(self: pointer, editor: pointer): void {.importc: "QsciLexerHTML_virtualbase_setEditor".}
proc fcQsciLexerHTML_virtualbase_refreshProperties(self: pointer, ): void {.importc: "QsciLexerHTML_virtualbase_refreshProperties".}
proc fcQsciLexerHTML_virtualbase_styleBitsNeeded(self: pointer, ): cint {.importc: "QsciLexerHTML_virtualbase_styleBitsNeeded".}
proc fcQsciLexerHTML_virtualbase_wordCharacters(self: pointer, ): cstring {.importc: "QsciLexerHTML_virtualbase_wordCharacters".}
proc fcQsciLexerHTML_virtualbase_setAutoIndentStyle(self: pointer, autoindentstyle: cint): void {.importc: "QsciLexerHTML_virtualbase_setAutoIndentStyle".}
proc fcQsciLexerHTML_virtualbase_setColor(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerHTML_virtualbase_setColor".}
proc fcQsciLexerHTML_virtualbase_setEolFill(self: pointer, eoffill: bool, style: cint): void {.importc: "QsciLexerHTML_virtualbase_setEolFill".}
proc fcQsciLexerHTML_virtualbase_setFont(self: pointer, f: pointer, style: cint): void {.importc: "QsciLexerHTML_virtualbase_setFont".}
proc fcQsciLexerHTML_virtualbase_setPaper(self: pointer, c: pointer, style: cint): void {.importc: "QsciLexerHTML_virtualbase_setPaper".}
proc fcQsciLexerHTML_virtualbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerHTML_virtualbase_readProperties".}
proc fcQsciLexerHTML_virtualbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerHTML_virtualbase_writeProperties".}
proc fcQsciLexerHTML_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciLexerHTML_virtualbase_event".}
proc fcQsciLexerHTML_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciLexerHTML_virtualbase_eventFilter".}
proc fcQsciLexerHTML_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciLexerHTML_virtualbase_timerEvent".}
proc fcQsciLexerHTML_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciLexerHTML_virtualbase_childEvent".}
proc fcQsciLexerHTML_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciLexerHTML_virtualbase_customEvent".}
proc fcQsciLexerHTML_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerHTML_virtualbase_connectNotify".}
proc fcQsciLexerHTML_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciLexerHTML_virtualbase_disconnectNotify".}
proc fcQsciLexerHTML_protectedbase_readProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerHTML_protectedbase_readProperties".}
proc fcQsciLexerHTML_protectedbase_writeProperties(self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.importc: "QsciLexerHTML_protectedbase_writeProperties".}
proc fcQsciLexerHTML_protectedbase_sender(self: pointer, ): pointer {.importc: "QsciLexerHTML_protectedbase_sender".}
proc fcQsciLexerHTML_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QsciLexerHTML_protectedbase_senderSignalIndex".}
proc fcQsciLexerHTML_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QsciLexerHTML_protectedbase_receivers".}
proc fcQsciLexerHTML_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QsciLexerHTML_protectedbase_isSignalConnected".}
proc fcQsciLexerHTML_new(vtbl: pointer, ): ptr cQsciLexerHTML {.importc: "QsciLexerHTML_new".}
proc fcQsciLexerHTML_new2(vtbl: pointer, parent: pointer): ptr cQsciLexerHTML {.importc: "QsciLexerHTML_new2".}
proc fcQsciLexerHTML_staticMetaObject(): pointer {.importc: "QsciLexerHTML_staticMetaObject".}
proc fcQsciLexerHTML_delete(self: pointer) {.importc: "QsciLexerHTML_delete".}

proc metaObject*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerHTML_metaObject(self.h))

proc metacast*(self: gen_qscilexerhtml_types.QsciLexerHTML, param1: cstring): pointer =
  fcQsciLexerHTML_metacast(self.h, param1)

proc metacall*(self: gen_qscilexerhtml_types.QsciLexerHTML, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerHTML_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscilexerhtml_types.QsciLexerHTML, s: cstring): string =
  let v_ms = fcQsciLexerHTML_tr(s)
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

proc defaultColor*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerHTML_defaultColor(self.h, style))

proc defaultEolFill*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: cint): bool =
  fcQsciLexerHTML_defaultEolFill(self.h, style)

proc defaultFont*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerHTML_defaultFont(self.h, style))

proc defaultPaper*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerHTML_defaultPaper(self.h, style))

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

proc tr*(_: type gen_qscilexerhtml_types.QsciLexerHTML, s: cstring, c: cstring): string =
  let v_ms = fcQsciLexerHTML_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscilexerhtml_types.QsciLexerHTML, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciLexerHTML_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciLexerHTMLmetaObjectProc* = proc(self: QsciLexerHTML): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciLexerHTMLmetacastProc* = proc(self: QsciLexerHTML, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciLexerHTMLmetacallProc* = proc(self: QsciLexerHTML, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciLexerHTMLsetFoldCompactProc* = proc(self: QsciLexerHTML, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerHTMLsetFoldPreprocessorProc* = proc(self: QsciLexerHTML, fold: bool): void {.raises: [], gcsafe.}
type QsciLexerHTMLsetCaseSensitiveTagsProc* = proc(self: QsciLexerHTML, sens: bool): void {.raises: [], gcsafe.}
type QsciLexerHTMLlanguageProc* = proc(self: QsciLexerHTML): cstring {.raises: [], gcsafe.}
type QsciLexerHTMLlexerProc* = proc(self: QsciLexerHTML): cstring {.raises: [], gcsafe.}
type QsciLexerHTMLlexerIdProc* = proc(self: QsciLexerHTML): cint {.raises: [], gcsafe.}
type QsciLexerHTMLautoCompletionFillupsProc* = proc(self: QsciLexerHTML): cstring {.raises: [], gcsafe.}
type QsciLexerHTMLautoCompletionWordSeparatorsProc* = proc(self: QsciLexerHTML): seq[string] {.raises: [], gcsafe.}
type QsciLexerHTMLblockEndProc* = proc(self: QsciLexerHTML, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerHTMLblockLookbackProc* = proc(self: QsciLexerHTML): cint {.raises: [], gcsafe.}
type QsciLexerHTMLblockStartProc* = proc(self: QsciLexerHTML, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerHTMLblockStartKeywordProc* = proc(self: QsciLexerHTML, style: ptr cint): cstring {.raises: [], gcsafe.}
type QsciLexerHTMLbraceStyleProc* = proc(self: QsciLexerHTML): cint {.raises: [], gcsafe.}
type QsciLexerHTMLcaseSensitiveProc* = proc(self: QsciLexerHTML): bool {.raises: [], gcsafe.}
type QsciLexerHTMLcolorProc* = proc(self: QsciLexerHTML, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerHTMLeolFillProc* = proc(self: QsciLexerHTML, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerHTMLfontProc* = proc(self: QsciLexerHTML, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerHTMLindentationGuideViewProc* = proc(self: QsciLexerHTML): cint {.raises: [], gcsafe.}
type QsciLexerHTMLkeywordsProc* = proc(self: QsciLexerHTML, set: cint): cstring {.raises: [], gcsafe.}
type QsciLexerHTMLdefaultStyleProc* = proc(self: QsciLexerHTML): cint {.raises: [], gcsafe.}
type QsciLexerHTMLdescriptionProc* = proc(self: QsciLexerHTML, style: cint): string {.raises: [], gcsafe.}
type QsciLexerHTMLpaperProc* = proc(self: QsciLexerHTML, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerHTMLdefaultColorProc* = proc(self: QsciLexerHTML, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerHTMLdefaultEolFillProc* = proc(self: QsciLexerHTML, style: cint): bool {.raises: [], gcsafe.}
type QsciLexerHTMLdefaultFontProc* = proc(self: QsciLexerHTML, style: cint): gen_qfont_types.QFont {.raises: [], gcsafe.}
type QsciLexerHTMLdefaultPaperProc* = proc(self: QsciLexerHTML, style: cint): gen_qcolor_types.QColor {.raises: [], gcsafe.}
type QsciLexerHTMLsetEditorProc* = proc(self: QsciLexerHTML, editor: gen_qsciscintilla_types.QsciScintilla): void {.raises: [], gcsafe.}
type QsciLexerHTMLrefreshPropertiesProc* = proc(self: QsciLexerHTML): void {.raises: [], gcsafe.}
type QsciLexerHTMLstyleBitsNeededProc* = proc(self: QsciLexerHTML): cint {.raises: [], gcsafe.}
type QsciLexerHTMLwordCharactersProc* = proc(self: QsciLexerHTML): cstring {.raises: [], gcsafe.}
type QsciLexerHTMLsetAutoIndentStyleProc* = proc(self: QsciLexerHTML, autoindentstyle: cint): void {.raises: [], gcsafe.}
type QsciLexerHTMLsetColorProc* = proc(self: QsciLexerHTML, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerHTMLsetEolFillProc* = proc(self: QsciLexerHTML, eoffill: bool, style: cint): void {.raises: [], gcsafe.}
type QsciLexerHTMLsetFontProc* = proc(self: QsciLexerHTML, f: gen_qfont_types.QFont, style: cint): void {.raises: [], gcsafe.}
type QsciLexerHTMLsetPaperProc* = proc(self: QsciLexerHTML, c: gen_qcolor_types.QColor, style: cint): void {.raises: [], gcsafe.}
type QsciLexerHTMLreadPropertiesProc* = proc(self: QsciLexerHTML, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerHTMLwritePropertiesProc* = proc(self: QsciLexerHTML, qs: gen_qsettings_types.QSettings, prefix: string): bool {.raises: [], gcsafe.}
type QsciLexerHTMLeventProc* = proc(self: QsciLexerHTML, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerHTMLeventFilterProc* = proc(self: QsciLexerHTML, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciLexerHTMLtimerEventProc* = proc(self: QsciLexerHTML, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciLexerHTMLchildEventProc* = proc(self: QsciLexerHTML, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciLexerHTMLcustomEventProc* = proc(self: QsciLexerHTML, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciLexerHTMLconnectNotifyProc* = proc(self: QsciLexerHTML, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerHTMLdisconnectNotifyProc* = proc(self: QsciLexerHTML, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciLexerHTMLVTable* = object
  vtbl: cQsciLexerHTMLVTable
  metaObject*: QsciLexerHTMLmetaObjectProc
  metacast*: QsciLexerHTMLmetacastProc
  metacall*: QsciLexerHTMLmetacallProc
  setFoldCompact*: QsciLexerHTMLsetFoldCompactProc
  setFoldPreprocessor*: QsciLexerHTMLsetFoldPreprocessorProc
  setCaseSensitiveTags*: QsciLexerHTMLsetCaseSensitiveTagsProc
  language*: QsciLexerHTMLlanguageProc
  lexer*: QsciLexerHTMLlexerProc
  lexerId*: QsciLexerHTMLlexerIdProc
  autoCompletionFillups*: QsciLexerHTMLautoCompletionFillupsProc
  autoCompletionWordSeparators*: QsciLexerHTMLautoCompletionWordSeparatorsProc
  blockEnd*: QsciLexerHTMLblockEndProc
  blockLookback*: QsciLexerHTMLblockLookbackProc
  blockStart*: QsciLexerHTMLblockStartProc
  blockStartKeyword*: QsciLexerHTMLblockStartKeywordProc
  braceStyle*: QsciLexerHTMLbraceStyleProc
  caseSensitive*: QsciLexerHTMLcaseSensitiveProc
  color*: QsciLexerHTMLcolorProc
  eolFill*: QsciLexerHTMLeolFillProc
  font*: QsciLexerHTMLfontProc
  indentationGuideView*: QsciLexerHTMLindentationGuideViewProc
  keywords*: QsciLexerHTMLkeywordsProc
  defaultStyle*: QsciLexerHTMLdefaultStyleProc
  description*: QsciLexerHTMLdescriptionProc
  paper*: QsciLexerHTMLpaperProc
  defaultColor*: QsciLexerHTMLdefaultColorProc
  defaultEolFill*: QsciLexerHTMLdefaultEolFillProc
  defaultFont*: QsciLexerHTMLdefaultFontProc
  defaultPaper*: QsciLexerHTMLdefaultPaperProc
  setEditor*: QsciLexerHTMLsetEditorProc
  refreshProperties*: QsciLexerHTMLrefreshPropertiesProc
  styleBitsNeeded*: QsciLexerHTMLstyleBitsNeededProc
  wordCharacters*: QsciLexerHTMLwordCharactersProc
  setAutoIndentStyle*: QsciLexerHTMLsetAutoIndentStyleProc
  setColor*: QsciLexerHTMLsetColorProc
  setEolFill*: QsciLexerHTMLsetEolFillProc
  setFont*: QsciLexerHTMLsetFontProc
  setPaper*: QsciLexerHTMLsetPaperProc
  readProperties*: QsciLexerHTMLreadPropertiesProc
  writeProperties*: QsciLexerHTMLwritePropertiesProc
  event*: QsciLexerHTMLeventProc
  eventFilter*: QsciLexerHTMLeventFilterProc
  timerEvent*: QsciLexerHTMLtimerEventProc
  childEvent*: QsciLexerHTMLchildEventProc
  customEvent*: QsciLexerHTMLcustomEventProc
  connectNotify*: QsciLexerHTMLconnectNotifyProc
  disconnectNotify*: QsciLexerHTMLdisconnectNotifyProc
proc QsciLexerHTMLmetaObject*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerHTML_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciLexerHTML_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciLexerHTMLmetacast*(self: gen_qscilexerhtml_types.QsciLexerHTML, param1: cstring): pointer =
  fcQsciLexerHTML_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciLexerHTML_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciLexerHTMLmetacall*(self: gen_qscilexerhtml_types.QsciLexerHTML, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciLexerHTML_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciLexerHTML_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciLexerHTMLsetFoldCompact*(self: gen_qscilexerhtml_types.QsciLexerHTML, fold: bool): void =
  fcQsciLexerHTML_virtualbase_setFoldCompact(self.h, fold)

proc miqt_exec_callback_cQsciLexerHTML_setFoldCompact(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = fold
  vtbl[].setFoldCompact(self, slotval1)

proc QsciLexerHTMLsetFoldPreprocessor*(self: gen_qscilexerhtml_types.QsciLexerHTML, fold: bool): void =
  fcQsciLexerHTML_virtualbase_setFoldPreprocessor(self.h, fold)

proc miqt_exec_callback_cQsciLexerHTML_setFoldPreprocessor(vtbl: pointer, self: pointer, fold: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = fold
  vtbl[].setFoldPreprocessor(self, slotval1)

proc QsciLexerHTMLsetCaseSensitiveTags*(self: gen_qscilexerhtml_types.QsciLexerHTML, sens: bool): void =
  fcQsciLexerHTML_virtualbase_setCaseSensitiveTags(self.h, sens)

proc miqt_exec_callback_cQsciLexerHTML_setCaseSensitiveTags(vtbl: pointer, self: pointer, sens: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = sens
  vtbl[].setCaseSensitiveTags(self, slotval1)

proc miqt_exec_callback_cQsciLexerHTML_language(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let virtualReturn = vtbl[].language(self)
  virtualReturn

proc QsciLexerHTMLlexer*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): cstring =
  (fcQsciLexerHTML_virtualbase_lexer(self.h))

proc miqt_exec_callback_cQsciLexerHTML_lexer(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let virtualReturn = vtbl[].lexer(self)
  virtualReturn

proc QsciLexerHTMLlexerId*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): cint =
  fcQsciLexerHTML_virtualbase_lexerId(self.h)

proc miqt_exec_callback_cQsciLexerHTML_lexerId(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let virtualReturn = vtbl[].lexerId(self)
  virtualReturn

proc QsciLexerHTMLautoCompletionFillups*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): cstring =
  (fcQsciLexerHTML_virtualbase_autoCompletionFillups(self.h))

proc miqt_exec_callback_cQsciLexerHTML_autoCompletionFillups(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let virtualReturn = vtbl[].autoCompletionFillups(self)
  virtualReturn

proc QsciLexerHTMLautoCompletionWordSeparators*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): seq[string] =
  var v_ma = fcQsciLexerHTML_virtualbase_autoCompletionWordSeparators(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciLexerHTML_autoCompletionWordSeparators(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let virtualReturn = vtbl[].autoCompletionWordSeparators(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciLexerHTMLblockEnd*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: ptr cint): cstring =
  (fcQsciLexerHTML_virtualbase_blockEnd(self.h, style))

proc miqt_exec_callback_cQsciLexerHTML_blockEnd(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockEnd(self, slotval1)
  virtualReturn

proc QsciLexerHTMLblockLookback*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): cint =
  fcQsciLexerHTML_virtualbase_blockLookback(self.h)

proc miqt_exec_callback_cQsciLexerHTML_blockLookback(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let virtualReturn = vtbl[].blockLookback(self)
  virtualReturn

proc QsciLexerHTMLblockStart*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: ptr cint): cstring =
  (fcQsciLexerHTML_virtualbase_blockStart(self.h, style))

proc miqt_exec_callback_cQsciLexerHTML_blockStart(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStart(self, slotval1)
  virtualReturn

proc QsciLexerHTMLblockStartKeyword*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: ptr cint): cstring =
  (fcQsciLexerHTML_virtualbase_blockStartKeyword(self.h, style))

proc miqt_exec_callback_cQsciLexerHTML_blockStartKeyword(vtbl: pointer, self: pointer, style: ptr cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].blockStartKeyword(self, slotval1)
  virtualReturn

proc QsciLexerHTMLbraceStyle*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): cint =
  fcQsciLexerHTML_virtualbase_braceStyle(self.h)

proc miqt_exec_callback_cQsciLexerHTML_braceStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let virtualReturn = vtbl[].braceStyle(self)
  virtualReturn

proc QsciLexerHTMLcaseSensitive*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): bool =
  fcQsciLexerHTML_virtualbase_caseSensitive(self.h)

proc miqt_exec_callback_cQsciLexerHTML_caseSensitive(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let virtualReturn = vtbl[].caseSensitive(self)
  virtualReturn

proc QsciLexerHTMLcolor*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerHTML_virtualbase_color(self.h, style))

proc miqt_exec_callback_cQsciLexerHTML_color(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].color(self, slotval1)
  virtualReturn.h

proc QsciLexerHTMLeolFill*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: cint): bool =
  fcQsciLexerHTML_virtualbase_eolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerHTML_eolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].eolFill(self, slotval1)
  virtualReturn

proc QsciLexerHTMLfont*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerHTML_virtualbase_font(self.h, style))

proc miqt_exec_callback_cQsciLexerHTML_font(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].font(self, slotval1)
  virtualReturn.h

proc QsciLexerHTMLindentationGuideView*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): cint =
  fcQsciLexerHTML_virtualbase_indentationGuideView(self.h)

proc miqt_exec_callback_cQsciLexerHTML_indentationGuideView(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let virtualReturn = vtbl[].indentationGuideView(self)
  virtualReturn

proc QsciLexerHTMLkeywords*(self: gen_qscilexerhtml_types.QsciLexerHTML, set: cint): cstring =
  (fcQsciLexerHTML_virtualbase_keywords(self.h, set))

proc miqt_exec_callback_cQsciLexerHTML_keywords(vtbl: pointer, self: pointer, set: cint): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = set
  let virtualReturn = vtbl[].keywords(self, slotval1)
  virtualReturn

proc QsciLexerHTMLdefaultStyle*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): cint =
  fcQsciLexerHTML_virtualbase_defaultStyle(self.h)

proc miqt_exec_callback_cQsciLexerHTML_defaultStyle(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let virtualReturn = vtbl[].defaultStyle(self)
  virtualReturn

proc miqt_exec_callback_cQsciLexerHTML_description(vtbl: pointer, self: pointer, style: cint): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].description(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QsciLexerHTMLpaper*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerHTML_virtualbase_paper(self.h, style))

proc miqt_exec_callback_cQsciLexerHTML_paper(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].paper(self, slotval1)
  virtualReturn.h

proc QsciLexerHTMLdefaultColor*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerHTML_virtualbase_defaultColorWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerHTML_defaultColorWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultColor(self, slotval1)
  virtualReturn.h

proc QsciLexerHTMLdefaultEolFill*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: cint): bool =
  fcQsciLexerHTML_virtualbase_defaultEolFill(self.h, style)

proc miqt_exec_callback_cQsciLexerHTML_defaultEolFill(vtbl: pointer, self: pointer, style: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultEolFill(self, slotval1)
  virtualReturn

proc QsciLexerHTMLdefaultFont*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQsciLexerHTML_virtualbase_defaultFontWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerHTML_defaultFontWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultFont(self, slotval1)
  virtualReturn.h

proc QsciLexerHTMLdefaultPaper*(self: gen_qscilexerhtml_types.QsciLexerHTML, style: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciLexerHTML_virtualbase_defaultPaperWithStyle(self.h, style))

proc miqt_exec_callback_cQsciLexerHTML_defaultPaperWithStyle(vtbl: pointer, self: pointer, style: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = style
  let virtualReturn = vtbl[].defaultPaper(self, slotval1)
  virtualReturn.h

proc QsciLexerHTMLsetEditor*(self: gen_qscilexerhtml_types.QsciLexerHTML, editor: gen_qsciscintilla_types.QsciScintilla): void =
  fcQsciLexerHTML_virtualbase_setEditor(self.h, editor.h)

proc miqt_exec_callback_cQsciLexerHTML_setEditor(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = gen_qsciscintilla_types.QsciScintilla(h: editor)
  vtbl[].setEditor(self, slotval1)

proc QsciLexerHTMLrefreshProperties*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): void =
  fcQsciLexerHTML_virtualbase_refreshProperties(self.h)

proc miqt_exec_callback_cQsciLexerHTML_refreshProperties(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  vtbl[].refreshProperties(self)

proc QsciLexerHTMLstyleBitsNeeded*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): cint =
  fcQsciLexerHTML_virtualbase_styleBitsNeeded(self.h)

proc miqt_exec_callback_cQsciLexerHTML_styleBitsNeeded(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let virtualReturn = vtbl[].styleBitsNeeded(self)
  virtualReturn

proc QsciLexerHTMLwordCharacters*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): cstring =
  (fcQsciLexerHTML_virtualbase_wordCharacters(self.h))

proc miqt_exec_callback_cQsciLexerHTML_wordCharacters(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let virtualReturn = vtbl[].wordCharacters(self)
  virtualReturn

proc QsciLexerHTMLsetAutoIndentStyle*(self: gen_qscilexerhtml_types.QsciLexerHTML, autoindentstyle: cint): void =
  fcQsciLexerHTML_virtualbase_setAutoIndentStyle(self.h, autoindentstyle)

proc miqt_exec_callback_cQsciLexerHTML_setAutoIndentStyle(vtbl: pointer, self: pointer, autoindentstyle: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = autoindentstyle
  vtbl[].setAutoIndentStyle(self, slotval1)

proc QsciLexerHTMLsetColor*(self: gen_qscilexerhtml_types.QsciLexerHTML, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerHTML_virtualbase_setColor(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerHTML_setColor(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setColor(self, slotval1, slotval2)

proc QsciLexerHTMLsetEolFill*(self: gen_qscilexerhtml_types.QsciLexerHTML, eoffill: bool, style: cint): void =
  fcQsciLexerHTML_virtualbase_setEolFill(self.h, eoffill, style)

proc miqt_exec_callback_cQsciLexerHTML_setEolFill(vtbl: pointer, self: pointer, eoffill: bool, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = eoffill
  let slotval2 = style
  vtbl[].setEolFill(self, slotval1, slotval2)

proc QsciLexerHTMLsetFont*(self: gen_qscilexerhtml_types.QsciLexerHTML, f: gen_qfont_types.QFont, style: cint): void =
  fcQsciLexerHTML_virtualbase_setFont(self.h, f.h, style)

proc miqt_exec_callback_cQsciLexerHTML_setFont(vtbl: pointer, self: pointer, f: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  let slotval2 = style
  vtbl[].setFont(self, slotval1, slotval2)

proc QsciLexerHTMLsetPaper*(self: gen_qscilexerhtml_types.QsciLexerHTML, c: gen_qcolor_types.QColor, style: cint): void =
  fcQsciLexerHTML_virtualbase_setPaper(self.h, c.h, style)

proc miqt_exec_callback_cQsciLexerHTML_setPaper(vtbl: pointer, self: pointer, c: pointer, style: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  let slotval2 = style
  vtbl[].setPaper(self, slotval1, slotval2)

proc QsciLexerHTMLreadProperties*(self: gen_qscilexerhtml_types.QsciLexerHTML, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerHTML_virtualbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerHTML_readProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].readProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerHTMLwriteProperties*(self: gen_qscilexerhtml_types.QsciLexerHTML, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerHTML_virtualbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc miqt_exec_callback_cQsciLexerHTML_writeProperties(vtbl: pointer, self: pointer, qs: pointer, prefix: struct_miqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = gen_qsettings_types.QSettings(h: qs)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(toOpenArrayByte(vprefix_ms.data, 0, int(vprefix_ms.len)-1))
  c_free(vprefix_ms.data)
  let slotval2 = vprefixx_ret
  let virtualReturn = vtbl[].writeProperties(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerHTMLevent*(self: gen_qscilexerhtml_types.QsciLexerHTML, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerHTML_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciLexerHTML_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciLexerHTMLeventFilter*(self: gen_qscilexerhtml_types.QsciLexerHTML, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciLexerHTML_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciLexerHTML_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciLexerHTMLtimerEvent*(self: gen_qscilexerhtml_types.QsciLexerHTML, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciLexerHTML_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerHTML_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciLexerHTMLchildEvent*(self: gen_qscilexerhtml_types.QsciLexerHTML, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciLexerHTML_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerHTML_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciLexerHTMLcustomEvent*(self: gen_qscilexerhtml_types.QsciLexerHTML, event: gen_qcoreevent_types.QEvent): void =
  fcQsciLexerHTML_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciLexerHTML_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciLexerHTMLconnectNotify*(self: gen_qscilexerhtml_types.QsciLexerHTML, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerHTML_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerHTML_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciLexerHTMLdisconnectNotify*(self: gen_qscilexerhtml_types.QsciLexerHTML, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciLexerHTML_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciLexerHTML_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciLexerHTMLVTable](vtbl)
  let self = QsciLexerHTML(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc readProperties*(self: gen_qscilexerhtml_types.QsciLexerHTML, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerHTML_protectedbase_readProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc writeProperties*(self: gen_qscilexerhtml_types.QsciLexerHTML, qs: gen_qsettings_types.QSettings, prefix: string): bool =
  fcQsciLexerHTML_protectedbase_writeProperties(self.h, qs.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc sender*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQsciLexerHTML_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qscilexerhtml_types.QsciLexerHTML, ): cint =
  fcQsciLexerHTML_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscilexerhtml_types.QsciLexerHTML, signal: cstring): cint =
  fcQsciLexerHTML_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscilexerhtml_types.QsciLexerHTML, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQsciLexerHTML_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qscilexerhtml_types.QsciLexerHTML,
    vtbl: ref QsciLexerHTMLVTable = nil): gen_qscilexerhtml_types.QsciLexerHTML =
  let vtbl = if vtbl == nil: new QsciLexerHTMLVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerHTMLVTable, _: ptr cQsciLexerHTML) {.cdecl.} =
    let vtbl = cast[ref QsciLexerHTMLVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerHTML_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerHTML_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerHTML_metacall
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerHTML_setFoldCompact
  if not isNil(vtbl.setFoldPreprocessor):
    vtbl[].vtbl.setFoldPreprocessor = miqt_exec_callback_cQsciLexerHTML_setFoldPreprocessor
  if not isNil(vtbl.setCaseSensitiveTags):
    vtbl[].vtbl.setCaseSensitiveTags = miqt_exec_callback_cQsciLexerHTML_setCaseSensitiveTags
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerHTML_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerHTML_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerHTML_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerHTML_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerHTML_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerHTML_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerHTML_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerHTML_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerHTML_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerHTML_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerHTML_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerHTML_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerHTML_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerHTML_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerHTML_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerHTML_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerHTML_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerHTML_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerHTML_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerHTML_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerHTML_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerHTML_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerHTML_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerHTML_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerHTML_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerHTML_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerHTML_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerHTML_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerHTML_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerHTML_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerHTML_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerHTML_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerHTML_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerHTML_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerHTML_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerHTML_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerHTML_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerHTML_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerHTML_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerHTML_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerHTML_disconnectNotify
  gen_qscilexerhtml_types.QsciLexerHTML(h: fcQsciLexerHTML_new(addr(vtbl[]), ))

proc create*(T: type gen_qscilexerhtml_types.QsciLexerHTML,
    parent: gen_qobject_types.QObject,
    vtbl: ref QsciLexerHTMLVTable = nil): gen_qscilexerhtml_types.QsciLexerHTML =
  let vtbl = if vtbl == nil: new QsciLexerHTMLVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciLexerHTMLVTable, _: ptr cQsciLexerHTML) {.cdecl.} =
    let vtbl = cast[ref QsciLexerHTMLVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciLexerHTML_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciLexerHTML_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciLexerHTML_metacall
  if not isNil(vtbl.setFoldCompact):
    vtbl[].vtbl.setFoldCompact = miqt_exec_callback_cQsciLexerHTML_setFoldCompact
  if not isNil(vtbl.setFoldPreprocessor):
    vtbl[].vtbl.setFoldPreprocessor = miqt_exec_callback_cQsciLexerHTML_setFoldPreprocessor
  if not isNil(vtbl.setCaseSensitiveTags):
    vtbl[].vtbl.setCaseSensitiveTags = miqt_exec_callback_cQsciLexerHTML_setCaseSensitiveTags
  if not isNil(vtbl.language):
    vtbl[].vtbl.language = miqt_exec_callback_cQsciLexerHTML_language
  if not isNil(vtbl.lexer):
    vtbl[].vtbl.lexer = miqt_exec_callback_cQsciLexerHTML_lexer
  if not isNil(vtbl.lexerId):
    vtbl[].vtbl.lexerId = miqt_exec_callback_cQsciLexerHTML_lexerId
  if not isNil(vtbl.autoCompletionFillups):
    vtbl[].vtbl.autoCompletionFillups = miqt_exec_callback_cQsciLexerHTML_autoCompletionFillups
  if not isNil(vtbl.autoCompletionWordSeparators):
    vtbl[].vtbl.autoCompletionWordSeparators = miqt_exec_callback_cQsciLexerHTML_autoCompletionWordSeparators
  if not isNil(vtbl.blockEnd):
    vtbl[].vtbl.blockEnd = miqt_exec_callback_cQsciLexerHTML_blockEnd
  if not isNil(vtbl.blockLookback):
    vtbl[].vtbl.blockLookback = miqt_exec_callback_cQsciLexerHTML_blockLookback
  if not isNil(vtbl.blockStart):
    vtbl[].vtbl.blockStart = miqt_exec_callback_cQsciLexerHTML_blockStart
  if not isNil(vtbl.blockStartKeyword):
    vtbl[].vtbl.blockStartKeyword = miqt_exec_callback_cQsciLexerHTML_blockStartKeyword
  if not isNil(vtbl.braceStyle):
    vtbl[].vtbl.braceStyle = miqt_exec_callback_cQsciLexerHTML_braceStyle
  if not isNil(vtbl.caseSensitive):
    vtbl[].vtbl.caseSensitive = miqt_exec_callback_cQsciLexerHTML_caseSensitive
  if not isNil(vtbl.color):
    vtbl[].vtbl.color = miqt_exec_callback_cQsciLexerHTML_color
  if not isNil(vtbl.eolFill):
    vtbl[].vtbl.eolFill = miqt_exec_callback_cQsciLexerHTML_eolFill
  if not isNil(vtbl.font):
    vtbl[].vtbl.font = miqt_exec_callback_cQsciLexerHTML_font
  if not isNil(vtbl.indentationGuideView):
    vtbl[].vtbl.indentationGuideView = miqt_exec_callback_cQsciLexerHTML_indentationGuideView
  if not isNil(vtbl.keywords):
    vtbl[].vtbl.keywords = miqt_exec_callback_cQsciLexerHTML_keywords
  if not isNil(vtbl.defaultStyle):
    vtbl[].vtbl.defaultStyle = miqt_exec_callback_cQsciLexerHTML_defaultStyle
  if not isNil(vtbl.description):
    vtbl[].vtbl.description = miqt_exec_callback_cQsciLexerHTML_description
  if not isNil(vtbl.paper):
    vtbl[].vtbl.paper = miqt_exec_callback_cQsciLexerHTML_paper
  if not isNil(vtbl.defaultColor):
    vtbl[].vtbl.defaultColor = miqt_exec_callback_cQsciLexerHTML_defaultColorWithStyle
  if not isNil(vtbl.defaultEolFill):
    vtbl[].vtbl.defaultEolFill = miqt_exec_callback_cQsciLexerHTML_defaultEolFill
  if not isNil(vtbl.defaultFont):
    vtbl[].vtbl.defaultFont = miqt_exec_callback_cQsciLexerHTML_defaultFontWithStyle
  if not isNil(vtbl.defaultPaper):
    vtbl[].vtbl.defaultPaper = miqt_exec_callback_cQsciLexerHTML_defaultPaperWithStyle
  if not isNil(vtbl.setEditor):
    vtbl[].vtbl.setEditor = miqt_exec_callback_cQsciLexerHTML_setEditor
  if not isNil(vtbl.refreshProperties):
    vtbl[].vtbl.refreshProperties = miqt_exec_callback_cQsciLexerHTML_refreshProperties
  if not isNil(vtbl.styleBitsNeeded):
    vtbl[].vtbl.styleBitsNeeded = miqt_exec_callback_cQsciLexerHTML_styleBitsNeeded
  if not isNil(vtbl.wordCharacters):
    vtbl[].vtbl.wordCharacters = miqt_exec_callback_cQsciLexerHTML_wordCharacters
  if not isNil(vtbl.setAutoIndentStyle):
    vtbl[].vtbl.setAutoIndentStyle = miqt_exec_callback_cQsciLexerHTML_setAutoIndentStyle
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciLexerHTML_setColor
  if not isNil(vtbl.setEolFill):
    vtbl[].vtbl.setEolFill = miqt_exec_callback_cQsciLexerHTML_setEolFill
  if not isNil(vtbl.setFont):
    vtbl[].vtbl.setFont = miqt_exec_callback_cQsciLexerHTML_setFont
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciLexerHTML_setPaper
  if not isNil(vtbl.readProperties):
    vtbl[].vtbl.readProperties = miqt_exec_callback_cQsciLexerHTML_readProperties
  if not isNil(vtbl.writeProperties):
    vtbl[].vtbl.writeProperties = miqt_exec_callback_cQsciLexerHTML_writeProperties
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciLexerHTML_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciLexerHTML_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciLexerHTML_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciLexerHTML_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciLexerHTML_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciLexerHTML_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciLexerHTML_disconnectNotify
  gen_qscilexerhtml_types.QsciLexerHTML(h: fcQsciLexerHTML_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qscilexerhtml_types.QsciLexerHTML): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciLexerHTML_staticMetaObject())
proc delete*(self: gen_qscilexerhtml_types.QsciLexerHTML) =
  fcQsciLexerHTML_delete(self.h)
