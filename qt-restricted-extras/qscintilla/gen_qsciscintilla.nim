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
{.compile("gen_qsciscintilla.cpp", cflags).}


type QsciScintillaEnumEnum* = distinct cint
template AiMaintain*(_: type QsciScintillaEnumEnum): untyped = 1
template AiOpening*(_: type QsciScintillaEnumEnum): untyped = 2
template AiClosing*(_: type QsciScintillaEnumEnum): untyped = 4
template MoNone*(_: type QsciScintillaEnumEnum): untyped = 0
template MoSublineSelect*(_: type QsciScintillaEnumEnum): untyped = 1


type QsciScintillaAnnotationDisplayEnum* = distinct cint
template AnnotationHidden*(_: type QsciScintillaAnnotationDisplayEnum): untyped = 0
template AnnotationStandard*(_: type QsciScintillaAnnotationDisplayEnum): untyped = 1
template AnnotationBoxed*(_: type QsciScintillaAnnotationDisplayEnum): untyped = 2
template AnnotationIndented*(_: type QsciScintillaAnnotationDisplayEnum): untyped = 3


type QsciScintillaAutoCompletionUseSingleEnum* = distinct cint
template AcusNever*(_: type QsciScintillaAutoCompletionUseSingleEnum): untyped = 0
template AcusExplicit*(_: type QsciScintillaAutoCompletionUseSingleEnum): untyped = 1
template AcusAlways*(_: type QsciScintillaAutoCompletionUseSingleEnum): untyped = 2


type QsciScintillaAutoCompletionSourceEnum* = distinct cint
template AcsNone*(_: type QsciScintillaAutoCompletionSourceEnum): untyped = 0
template AcsAll*(_: type QsciScintillaAutoCompletionSourceEnum): untyped = 1
template AcsDocument*(_: type QsciScintillaAutoCompletionSourceEnum): untyped = 2
template AcsAPIs*(_: type QsciScintillaAutoCompletionSourceEnum): untyped = 3


type QsciScintillaBraceMatchEnum* = distinct cint
template NoBraceMatch*(_: type QsciScintillaBraceMatchEnum): untyped = 0
template StrictBraceMatch*(_: type QsciScintillaBraceMatchEnum): untyped = 1
template SloppyBraceMatch*(_: type QsciScintillaBraceMatchEnum): untyped = 2


type QsciScintillaCallTipsPositionEnum* = distinct cint
template CallTipsBelowText*(_: type QsciScintillaCallTipsPositionEnum): untyped = 0
template CallTipsAboveText*(_: type QsciScintillaCallTipsPositionEnum): untyped = 1


type QsciScintillaCallTipsStyleEnum* = distinct cint
template CallTipsNone*(_: type QsciScintillaCallTipsStyleEnum): untyped = 0
template CallTipsNoContext*(_: type QsciScintillaCallTipsStyleEnum): untyped = 1
template CallTipsNoAutoCompletionContext*(_: type QsciScintillaCallTipsStyleEnum): untyped = 2
template CallTipsContext*(_: type QsciScintillaCallTipsStyleEnum): untyped = 3


type QsciScintillaEdgeModeEnum* = distinct cint
template EdgeNone*(_: type QsciScintillaEdgeModeEnum): untyped = 0
template EdgeLine*(_: type QsciScintillaEdgeModeEnum): untyped = 1
template EdgeBackground*(_: type QsciScintillaEdgeModeEnum): untyped = 2
template EdgeMultipleLines*(_: type QsciScintillaEdgeModeEnum): untyped = 3


type QsciScintillaEolModeEnum* = distinct cint
template EolWindows*(_: type QsciScintillaEolModeEnum): untyped = 0
template EolUnix*(_: type QsciScintillaEolModeEnum): untyped = 2
template EolMac*(_: type QsciScintillaEolModeEnum): untyped = 1


type QsciScintillaFoldStyleEnum* = distinct cint
template NoFoldStyle*(_: type QsciScintillaFoldStyleEnum): untyped = 0
template PlainFoldStyle*(_: type QsciScintillaFoldStyleEnum): untyped = 1
template CircledFoldStyle*(_: type QsciScintillaFoldStyleEnum): untyped = 2
template BoxedFoldStyle*(_: type QsciScintillaFoldStyleEnum): untyped = 3
template CircledTreeFoldStyle*(_: type QsciScintillaFoldStyleEnum): untyped = 4
template BoxedTreeFoldStyle*(_: type QsciScintillaFoldStyleEnum): untyped = 5


type QsciScintillaIndicatorStyleEnum* = distinct cint
template PlainIndicator*(_: type QsciScintillaIndicatorStyleEnum): untyped = 0
template SquiggleIndicator*(_: type QsciScintillaIndicatorStyleEnum): untyped = 1
template TTIndicator*(_: type QsciScintillaIndicatorStyleEnum): untyped = 2
template DiagonalIndicator*(_: type QsciScintillaIndicatorStyleEnum): untyped = 3
template StrikeIndicator*(_: type QsciScintillaIndicatorStyleEnum): untyped = 4
template HiddenIndicator*(_: type QsciScintillaIndicatorStyleEnum): untyped = 5
template BoxIndicator*(_: type QsciScintillaIndicatorStyleEnum): untyped = 6
template RoundBoxIndicator*(_: type QsciScintillaIndicatorStyleEnum): untyped = 7
template StraightBoxIndicator*(_: type QsciScintillaIndicatorStyleEnum): untyped = 8
template FullBoxIndicator*(_: type QsciScintillaIndicatorStyleEnum): untyped = 16
template DashesIndicator*(_: type QsciScintillaIndicatorStyleEnum): untyped = 9
template DotsIndicator*(_: type QsciScintillaIndicatorStyleEnum): untyped = 10
template SquiggleLowIndicator*(_: type QsciScintillaIndicatorStyleEnum): untyped = 11
template DotBoxIndicator*(_: type QsciScintillaIndicatorStyleEnum): untyped = 12
template SquigglePixmapIndicator*(_: type QsciScintillaIndicatorStyleEnum): untyped = 13
template ThickCompositionIndicator*(_: type QsciScintillaIndicatorStyleEnum): untyped = 14
template ThinCompositionIndicator*(_: type QsciScintillaIndicatorStyleEnum): untyped = 15
template TextColorIndicator*(_: type QsciScintillaIndicatorStyleEnum): untyped = 17
template TriangleIndicator*(_: type QsciScintillaIndicatorStyleEnum): untyped = 18
template TriangleCharacterIndicator*(_: type QsciScintillaIndicatorStyleEnum): untyped = 19
template GradientIndicator*(_: type QsciScintillaIndicatorStyleEnum): untyped = 20
template CentreGradientIndicator*(_: type QsciScintillaIndicatorStyleEnum): untyped = 21


type QsciScintillaMarginTypeEnum* = distinct cint
template SymbolMargin*(_: type QsciScintillaMarginTypeEnum): untyped = 0
template SymbolMarginDefaultForegroundColor*(_: type QsciScintillaMarginTypeEnum): untyped = 3
template SymbolMarginDefaultBackgroundColor*(_: type QsciScintillaMarginTypeEnum): untyped = 2
template NumberMargin*(_: type QsciScintillaMarginTypeEnum): untyped = 1
template TextMargin*(_: type QsciScintillaMarginTypeEnum): untyped = 4
template TextMarginRightJustified*(_: type QsciScintillaMarginTypeEnum): untyped = 5
template SymbolMarginColor*(_: type QsciScintillaMarginTypeEnum): untyped = 6


type QsciScintillaMarkerSymbolEnum* = distinct cint
template Circle*(_: type QsciScintillaMarkerSymbolEnum): untyped = 0
template Rectangle*(_: type QsciScintillaMarkerSymbolEnum): untyped = 1
template RightTriangle*(_: type QsciScintillaMarkerSymbolEnum): untyped = 2
template SmallRectangle*(_: type QsciScintillaMarkerSymbolEnum): untyped = 3
template RightArrow*(_: type QsciScintillaMarkerSymbolEnum): untyped = 4
template Invisible*(_: type QsciScintillaMarkerSymbolEnum): untyped = 5
template DownTriangle*(_: type QsciScintillaMarkerSymbolEnum): untyped = 6
template Minus*(_: type QsciScintillaMarkerSymbolEnum): untyped = 7
template Plus*(_: type QsciScintillaMarkerSymbolEnum): untyped = 8
template VerticalLine*(_: type QsciScintillaMarkerSymbolEnum): untyped = 9
template BottomLeftCorner*(_: type QsciScintillaMarkerSymbolEnum): untyped = 10
template LeftSideSplitter*(_: type QsciScintillaMarkerSymbolEnum): untyped = 11
template BoxedPlus*(_: type QsciScintillaMarkerSymbolEnum): untyped = 12
template BoxedPlusConnected*(_: type QsciScintillaMarkerSymbolEnum): untyped = 13
template BoxedMinus*(_: type QsciScintillaMarkerSymbolEnum): untyped = 14
template BoxedMinusConnected*(_: type QsciScintillaMarkerSymbolEnum): untyped = 15
template RoundedBottomLeftCorner*(_: type QsciScintillaMarkerSymbolEnum): untyped = 16
template LeftSideRoundedSplitter*(_: type QsciScintillaMarkerSymbolEnum): untyped = 17
template CircledPlus*(_: type QsciScintillaMarkerSymbolEnum): untyped = 18
template CircledPlusConnected*(_: type QsciScintillaMarkerSymbolEnum): untyped = 19
template CircledMinus*(_: type QsciScintillaMarkerSymbolEnum): untyped = 20
template CircledMinusConnected*(_: type QsciScintillaMarkerSymbolEnum): untyped = 21
template Background*(_: type QsciScintillaMarkerSymbolEnum): untyped = 22
template ThreeDots*(_: type QsciScintillaMarkerSymbolEnum): untyped = 23
template ThreeRightArrows*(_: type QsciScintillaMarkerSymbolEnum): untyped = 24
template FullRectangle*(_: type QsciScintillaMarkerSymbolEnum): untyped = 26
template LeftRectangle*(_: type QsciScintillaMarkerSymbolEnum): untyped = 27
template Underline*(_: type QsciScintillaMarkerSymbolEnum): untyped = 29
template Bookmark*(_: type QsciScintillaMarkerSymbolEnum): untyped = 31


type QsciScintillaTabDrawModeEnum* = distinct cint
template TabLongArrow*(_: type QsciScintillaTabDrawModeEnum): untyped = 0
template TabStrikeOut*(_: type QsciScintillaTabDrawModeEnum): untyped = 1


type QsciScintillaWhitespaceVisibilityEnum* = distinct cint
template WsInvisible*(_: type QsciScintillaWhitespaceVisibilityEnum): untyped = 0
template WsVisible*(_: type QsciScintillaWhitespaceVisibilityEnum): untyped = 1
template WsVisibleAfterIndent*(_: type QsciScintillaWhitespaceVisibilityEnum): untyped = 2
template WsVisibleOnlyInIndent*(_: type QsciScintillaWhitespaceVisibilityEnum): untyped = 3


type QsciScintillaWrapModeEnum* = distinct cint
template WrapNone*(_: type QsciScintillaWrapModeEnum): untyped = 0
template WrapWord*(_: type QsciScintillaWrapModeEnum): untyped = 1
template WrapCharacter*(_: type QsciScintillaWrapModeEnum): untyped = 2
template WrapWhitespace*(_: type QsciScintillaWrapModeEnum): untyped = 3


type QsciScintillaWrapVisualFlagEnum* = distinct cint
template WrapFlagNone*(_: type QsciScintillaWrapVisualFlagEnum): untyped = 0
template WrapFlagByText*(_: type QsciScintillaWrapVisualFlagEnum): untyped = 1
template WrapFlagByBorder*(_: type QsciScintillaWrapVisualFlagEnum): untyped = 2
template WrapFlagInMargin*(_: type QsciScintillaWrapVisualFlagEnum): untyped = 3


type QsciScintillaWrapIndentModeEnum* = distinct cint
template WrapIndentFixed*(_: type QsciScintillaWrapIndentModeEnum): untyped = 0
template WrapIndentSame*(_: type QsciScintillaWrapIndentModeEnum): untyped = 1
template WrapIndentIndented*(_: type QsciScintillaWrapIndentModeEnum): untyped = 2
template WrapIndentDeeplyIndented*(_: type QsciScintillaWrapIndentModeEnum): untyped = 3


import gen_qsciscintilla_types
export gen_qsciscintilla_types

import
  gen_qcolor,
  gen_qcoreevent,
  gen_qevent,
  gen_qfont,
  gen_qimage,
  gen_qiodevice,
  gen_qmenu,
  gen_qmetaobject,
  gen_qmimedata,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpixmap,
  gen_qpoint,
  gen_qscicommandset,
  gen_qscidocument,
  gen_qscilexer,
  gen_qsciscintillabase,
  gen_qscistyle,
  gen_qscistyledtext,
  gen_qsize,
  gen_qvariant,
  gen_qwidget
export
  gen_qcolor,
  gen_qcoreevent,
  gen_qevent,
  gen_qfont,
  gen_qimage,
  gen_qiodevice,
  gen_qmenu,
  gen_qmetaobject,
  gen_qmimedata,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpixmap,
  gen_qpoint,
  gen_qscicommandset,
  gen_qscidocument,
  gen_qscilexer,
  gen_qsciscintillabase,
  gen_qscistyle,
  gen_qscistyledtext,
  gen_qsize,
  gen_qvariant,
  gen_qwidget

type cQsciScintilla*{.exportc: "QsciScintilla", incompleteStruct.} = object

proc fcQsciScintilla_new(parent: pointer): ptr cQsciScintilla {.importc: "QsciScintilla_new".}
proc fcQsciScintilla_new2(): ptr cQsciScintilla {.importc: "QsciScintilla_new2".}
proc fcQsciScintilla_metaObject(self: pointer, ): pointer {.importc: "QsciScintilla_metaObject".}
proc fcQsciScintilla_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciScintilla_metacast".}
proc fcQsciScintilla_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciScintilla_metacall".}
proc fcQsciScintilla_tr(s: cstring): struct_miqt_string {.importc: "QsciScintilla_tr".}
proc fcQsciScintilla_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciScintilla_trUtf8".}
proc fcQsciScintilla_apiContext(self: pointer, pos: cint, context_start: ptr cint, last_word_start: ptr cint): struct_miqt_array {.importc: "QsciScintilla_apiContext".}
proc fcQsciScintilla_annotate(self: pointer, line: cint, text: struct_miqt_string, style: cint): void {.importc: "QsciScintilla_annotate".}
proc fcQsciScintilla_annotate2(self: pointer, line: cint, text: struct_miqt_string, style: pointer): void {.importc: "QsciScintilla_annotate2".}
proc fcQsciScintilla_annotate3(self: pointer, line: cint, text: pointer): void {.importc: "QsciScintilla_annotate3".}
proc fcQsciScintilla_annotation(self: pointer, line: cint): struct_miqt_string {.importc: "QsciScintilla_annotation".}
proc fcQsciScintilla_annotationDisplay(self: pointer, ): cint {.importc: "QsciScintilla_annotationDisplay".}
proc fcQsciScintilla_clearAnnotations(self: pointer, ): void {.importc: "QsciScintilla_clearAnnotations".}
proc fcQsciScintilla_autoCompletionCaseSensitivity(self: pointer, ): bool {.importc: "QsciScintilla_autoCompletionCaseSensitivity".}
proc fcQsciScintilla_autoCompletionFillupsEnabled(self: pointer, ): bool {.importc: "QsciScintilla_autoCompletionFillupsEnabled".}
proc fcQsciScintilla_autoCompletionReplaceWord(self: pointer, ): bool {.importc: "QsciScintilla_autoCompletionReplaceWord".}
proc fcQsciScintilla_autoCompletionShowSingle(self: pointer, ): bool {.importc: "QsciScintilla_autoCompletionShowSingle".}
proc fcQsciScintilla_autoCompletionSource(self: pointer, ): cint {.importc: "QsciScintilla_autoCompletionSource".}
proc fcQsciScintilla_autoCompletionThreshold(self: pointer, ): cint {.importc: "QsciScintilla_autoCompletionThreshold".}
proc fcQsciScintilla_autoCompletionUseSingle(self: pointer, ): cint {.importc: "QsciScintilla_autoCompletionUseSingle".}
proc fcQsciScintilla_autoIndent(self: pointer, ): bool {.importc: "QsciScintilla_autoIndent".}
proc fcQsciScintilla_backspaceUnindents(self: pointer, ): bool {.importc: "QsciScintilla_backspaceUnindents".}
proc fcQsciScintilla_beginUndoAction(self: pointer, ): void {.importc: "QsciScintilla_beginUndoAction".}
proc fcQsciScintilla_braceMatching(self: pointer, ): cint {.importc: "QsciScintilla_braceMatching".}
proc fcQsciScintilla_bytes(self: pointer, start: cint, endVal: cint): struct_miqt_string {.importc: "QsciScintilla_bytes".}
proc fcQsciScintilla_callTipsPosition(self: pointer, ): cint {.importc: "QsciScintilla_callTipsPosition".}
proc fcQsciScintilla_callTipsStyle(self: pointer, ): cint {.importc: "QsciScintilla_callTipsStyle".}
proc fcQsciScintilla_callTipsVisible(self: pointer, ): cint {.importc: "QsciScintilla_callTipsVisible".}
proc fcQsciScintilla_cancelFind(self: pointer, ): void {.importc: "QsciScintilla_cancelFind".}
proc fcQsciScintilla_cancelList(self: pointer, ): void {.importc: "QsciScintilla_cancelList".}
proc fcQsciScintilla_caseSensitive(self: pointer, ): bool {.importc: "QsciScintilla_caseSensitive".}
proc fcQsciScintilla_clearFolds(self: pointer, ): void {.importc: "QsciScintilla_clearFolds".}
proc fcQsciScintilla_clearIndicatorRange(self: pointer, lineFrom: cint, indexFrom: cint, lineTo: cint, indexTo: cint, indicatorNumber: cint): void {.importc: "QsciScintilla_clearIndicatorRange".}
proc fcQsciScintilla_clearRegisteredImages(self: pointer, ): void {.importc: "QsciScintilla_clearRegisteredImages".}
proc fcQsciScintilla_color(self: pointer, ): pointer {.importc: "QsciScintilla_color".}
proc fcQsciScintilla_contractedFolds(self: pointer, ): struct_miqt_array {.importc: "QsciScintilla_contractedFolds".}
proc fcQsciScintilla_convertEols(self: pointer, mode: cint): void {.importc: "QsciScintilla_convertEols".}
proc fcQsciScintilla_createStandardContextMenu(self: pointer, ): pointer {.importc: "QsciScintilla_createStandardContextMenu".}
proc fcQsciScintilla_document(self: pointer, ): pointer {.importc: "QsciScintilla_document".}
proc fcQsciScintilla_endUndoAction(self: pointer, ): void {.importc: "QsciScintilla_endUndoAction".}
proc fcQsciScintilla_edgeColor(self: pointer, ): pointer {.importc: "QsciScintilla_edgeColor".}
proc fcQsciScintilla_edgeColumn(self: pointer, ): cint {.importc: "QsciScintilla_edgeColumn".}
proc fcQsciScintilla_edgeMode(self: pointer, ): cint {.importc: "QsciScintilla_edgeMode".}
proc fcQsciScintilla_setFont(self: pointer, f: pointer): void {.importc: "QsciScintilla_setFont".}
proc fcQsciScintilla_eolMode(self: pointer, ): cint {.importc: "QsciScintilla_eolMode".}
proc fcQsciScintilla_eolVisibility(self: pointer, ): bool {.importc: "QsciScintilla_eolVisibility".}
proc fcQsciScintilla_extraAscent(self: pointer, ): cint {.importc: "QsciScintilla_extraAscent".}
proc fcQsciScintilla_extraDescent(self: pointer, ): cint {.importc: "QsciScintilla_extraDescent".}
proc fcQsciScintilla_fillIndicatorRange(self: pointer, lineFrom: cint, indexFrom: cint, lineTo: cint, indexTo: cint, indicatorNumber: cint): void {.importc: "QsciScintilla_fillIndicatorRange".}
proc fcQsciScintilla_findFirst(self: pointer, expr: struct_miqt_string, re: bool, cs: bool, wo: bool, wrap: bool, forward: bool, line: cint, index: cint, show: bool, posix: bool, cxx11: bool): bool {.importc: "QsciScintilla_findFirst".}
proc fcQsciScintilla_findFirstInSelection(self: pointer, expr: struct_miqt_string, re: bool, cs: bool, wo: bool, forward: bool, show: bool, posix: bool, cxx11: bool): bool {.importc: "QsciScintilla_findFirstInSelection".}
proc fcQsciScintilla_findNext(self: pointer, ): bool {.importc: "QsciScintilla_findNext".}
proc fcQsciScintilla_findMatchingBrace(self: pointer, brace: ptr clong, other: ptr clong, mode: cint): bool {.importc: "QsciScintilla_findMatchingBrace".}
proc fcQsciScintilla_firstVisibleLine(self: pointer, ): cint {.importc: "QsciScintilla_firstVisibleLine".}
proc fcQsciScintilla_folding(self: pointer, ): cint {.importc: "QsciScintilla_folding".}
proc fcQsciScintilla_getCursorPosition(self: pointer, line: ptr cint, index: ptr cint): void {.importc: "QsciScintilla_getCursorPosition".}
proc fcQsciScintilla_getSelection(self: pointer, lineFrom: ptr cint, indexFrom: ptr cint, lineTo: ptr cint, indexTo: ptr cint): void {.importc: "QsciScintilla_getSelection".}
proc fcQsciScintilla_hasSelectedText(self: pointer, ): bool {.importc: "QsciScintilla_hasSelectedText".}
proc fcQsciScintilla_indentation(self: pointer, line: cint): cint {.importc: "QsciScintilla_indentation".}
proc fcQsciScintilla_indentationGuides(self: pointer, ): bool {.importc: "QsciScintilla_indentationGuides".}
proc fcQsciScintilla_indentationsUseTabs(self: pointer, ): bool {.importc: "QsciScintilla_indentationsUseTabs".}
proc fcQsciScintilla_indentationWidth(self: pointer, ): cint {.importc: "QsciScintilla_indentationWidth".}
proc fcQsciScintilla_indicatorDefine(self: pointer, style: cint): cint {.importc: "QsciScintilla_indicatorDefine".}
proc fcQsciScintilla_indicatorDrawUnder(self: pointer, indicatorNumber: cint): bool {.importc: "QsciScintilla_indicatorDrawUnder".}
proc fcQsciScintilla_isCallTipActive(self: pointer, ): bool {.importc: "QsciScintilla_isCallTipActive".}
proc fcQsciScintilla_isListActive(self: pointer, ): bool {.importc: "QsciScintilla_isListActive".}
proc fcQsciScintilla_isModified(self: pointer, ): bool {.importc: "QsciScintilla_isModified".}
proc fcQsciScintilla_isReadOnly(self: pointer, ): bool {.importc: "QsciScintilla_isReadOnly".}
proc fcQsciScintilla_isRedoAvailable(self: pointer, ): bool {.importc: "QsciScintilla_isRedoAvailable".}
proc fcQsciScintilla_isUndoAvailable(self: pointer, ): bool {.importc: "QsciScintilla_isUndoAvailable".}
proc fcQsciScintilla_isUtf8(self: pointer, ): bool {.importc: "QsciScintilla_isUtf8".}
proc fcQsciScintilla_isWordCharacter(self: pointer, ch: cchar): bool {.importc: "QsciScintilla_isWordCharacter".}
proc fcQsciScintilla_lineAt(self: pointer, point: pointer): cint {.importc: "QsciScintilla_lineAt".}
proc fcQsciScintilla_lineIndexFromPosition(self: pointer, position: cint, line: ptr cint, index: ptr cint): void {.importc: "QsciScintilla_lineIndexFromPosition".}
proc fcQsciScintilla_lineLength(self: pointer, line: cint): cint {.importc: "QsciScintilla_lineLength".}
proc fcQsciScintilla_lines(self: pointer, ): cint {.importc: "QsciScintilla_lines".}
proc fcQsciScintilla_length(self: pointer, ): cint {.importc: "QsciScintilla_length".}
proc fcQsciScintilla_lexer(self: pointer, ): pointer {.importc: "QsciScintilla_lexer".}
proc fcQsciScintilla_marginBackgroundColor(self: pointer, margin: cint): pointer {.importc: "QsciScintilla_marginBackgroundColor".}
proc fcQsciScintilla_marginLineNumbers(self: pointer, margin: cint): bool {.importc: "QsciScintilla_marginLineNumbers".}
proc fcQsciScintilla_marginMarkerMask(self: pointer, margin: cint): cint {.importc: "QsciScintilla_marginMarkerMask".}
proc fcQsciScintilla_marginOptions(self: pointer, ): cint {.importc: "QsciScintilla_marginOptions".}
proc fcQsciScintilla_marginSensitivity(self: pointer, margin: cint): bool {.importc: "QsciScintilla_marginSensitivity".}
proc fcQsciScintilla_marginType(self: pointer, margin: cint): cint {.importc: "QsciScintilla_marginType".}
proc fcQsciScintilla_marginWidth(self: pointer, margin: cint): cint {.importc: "QsciScintilla_marginWidth".}
proc fcQsciScintilla_margins(self: pointer, ): cint {.importc: "QsciScintilla_margins".}
proc fcQsciScintilla_markerDefine(self: pointer, sym: cint): cint {.importc: "QsciScintilla_markerDefine".}
proc fcQsciScintilla_markerDefineWithCh(self: pointer, ch: cchar): cint {.importc: "QsciScintilla_markerDefineWithCh".}
proc fcQsciScintilla_markerDefineWithPm(self: pointer, pm: pointer): cint {.importc: "QsciScintilla_markerDefineWithPm".}
proc fcQsciScintilla_markerDefineWithIm(self: pointer, im: pointer): cint {.importc: "QsciScintilla_markerDefineWithIm".}
proc fcQsciScintilla_markerAdd(self: pointer, linenr: cint, markerNumber: cint): cint {.importc: "QsciScintilla_markerAdd".}
proc fcQsciScintilla_markersAtLine(self: pointer, linenr: cint): cuint {.importc: "QsciScintilla_markersAtLine".}
proc fcQsciScintilla_markerDelete(self: pointer, linenr: cint): void {.importc: "QsciScintilla_markerDelete".}
proc fcQsciScintilla_markerDeleteAll(self: pointer, ): void {.importc: "QsciScintilla_markerDeleteAll".}
proc fcQsciScintilla_markerDeleteHandle(self: pointer, mhandle: cint): void {.importc: "QsciScintilla_markerDeleteHandle".}
proc fcQsciScintilla_markerLine(self: pointer, mhandle: cint): cint {.importc: "QsciScintilla_markerLine".}
proc fcQsciScintilla_markerFindNext(self: pointer, linenr: cint, mask: cuint): cint {.importc: "QsciScintilla_markerFindNext".}
proc fcQsciScintilla_markerFindPrevious(self: pointer, linenr: cint, mask: cuint): cint {.importc: "QsciScintilla_markerFindPrevious".}
proc fcQsciScintilla_overwriteMode(self: pointer, ): bool {.importc: "QsciScintilla_overwriteMode".}
proc fcQsciScintilla_paper(self: pointer, ): pointer {.importc: "QsciScintilla_paper".}
proc fcQsciScintilla_positionFromLineIndex(self: pointer, line: cint, index: cint): cint {.importc: "QsciScintilla_positionFromLineIndex".}
proc fcQsciScintilla_read(self: pointer, io: pointer): bool {.importc: "QsciScintilla_read".}
proc fcQsciScintilla_recolor(self: pointer, start: cint, endVal: cint): void {.importc: "QsciScintilla_recolor".}
proc fcQsciScintilla_registerImage(self: pointer, id: cint, pm: pointer): void {.importc: "QsciScintilla_registerImage".}
proc fcQsciScintilla_registerImage2(self: pointer, id: cint, im: pointer): void {.importc: "QsciScintilla_registerImage2".}
proc fcQsciScintilla_replace(self: pointer, replaceStr: struct_miqt_string): void {.importc: "QsciScintilla_replace".}
proc fcQsciScintilla_resetFoldMarginColors(self: pointer, ): void {.importc: "QsciScintilla_resetFoldMarginColors".}
proc fcQsciScintilla_resetHotspotBackgroundColor(self: pointer, ): void {.importc: "QsciScintilla_resetHotspotBackgroundColor".}
proc fcQsciScintilla_resetHotspotForegroundColor(self: pointer, ): void {.importc: "QsciScintilla_resetHotspotForegroundColor".}
proc fcQsciScintilla_scrollWidth(self: pointer, ): cint {.importc: "QsciScintilla_scrollWidth".}
proc fcQsciScintilla_scrollWidthTracking(self: pointer, ): bool {.importc: "QsciScintilla_scrollWidthTracking".}
proc fcQsciScintilla_setFoldMarginColors(self: pointer, fore: pointer, back: pointer): void {.importc: "QsciScintilla_setFoldMarginColors".}
proc fcQsciScintilla_setAnnotationDisplay(self: pointer, display: cint): void {.importc: "QsciScintilla_setAnnotationDisplay".}
proc fcQsciScintilla_setAutoCompletionFillupsEnabled(self: pointer, enabled: bool): void {.importc: "QsciScintilla_setAutoCompletionFillupsEnabled".}
proc fcQsciScintilla_setAutoCompletionFillups(self: pointer, fillups: cstring): void {.importc: "QsciScintilla_setAutoCompletionFillups".}
proc fcQsciScintilla_setAutoCompletionWordSeparators(self: pointer, separators: struct_miqt_array): void {.importc: "QsciScintilla_setAutoCompletionWordSeparators".}
proc fcQsciScintilla_setCallTipsBackgroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_setCallTipsBackgroundColor".}
proc fcQsciScintilla_setCallTipsForegroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_setCallTipsForegroundColor".}
proc fcQsciScintilla_setCallTipsHighlightColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_setCallTipsHighlightColor".}
proc fcQsciScintilla_setCallTipsPosition(self: pointer, position: cint): void {.importc: "QsciScintilla_setCallTipsPosition".}
proc fcQsciScintilla_setCallTipsStyle(self: pointer, style: cint): void {.importc: "QsciScintilla_setCallTipsStyle".}
proc fcQsciScintilla_setCallTipsVisible(self: pointer, nr: cint): void {.importc: "QsciScintilla_setCallTipsVisible".}
proc fcQsciScintilla_setContractedFolds(self: pointer, folds: struct_miqt_array): void {.importc: "QsciScintilla_setContractedFolds".}
proc fcQsciScintilla_setDocument(self: pointer, document: pointer): void {.importc: "QsciScintilla_setDocument".}
proc fcQsciScintilla_addEdgeColumn(self: pointer, colnr: cint, col: pointer): void {.importc: "QsciScintilla_addEdgeColumn".}
proc fcQsciScintilla_clearEdgeColumns(self: pointer, ): void {.importc: "QsciScintilla_clearEdgeColumns".}
proc fcQsciScintilla_setEdgeColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_setEdgeColor".}
proc fcQsciScintilla_setEdgeColumn(self: pointer, colnr: cint): void {.importc: "QsciScintilla_setEdgeColumn".}
proc fcQsciScintilla_setEdgeMode(self: pointer, mode: cint): void {.importc: "QsciScintilla_setEdgeMode".}
proc fcQsciScintilla_setFirstVisibleLine(self: pointer, linenr: cint): void {.importc: "QsciScintilla_setFirstVisibleLine".}
proc fcQsciScintilla_setIndicatorDrawUnder(self: pointer, under: bool): void {.importc: "QsciScintilla_setIndicatorDrawUnder".}
proc fcQsciScintilla_setIndicatorForegroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_setIndicatorForegroundColor".}
proc fcQsciScintilla_setIndicatorHoverForegroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_setIndicatorHoverForegroundColor".}
proc fcQsciScintilla_setIndicatorHoverStyle(self: pointer, style: cint): void {.importc: "QsciScintilla_setIndicatorHoverStyle".}
proc fcQsciScintilla_setIndicatorOutlineColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_setIndicatorOutlineColor".}
proc fcQsciScintilla_setMarginBackgroundColor(self: pointer, margin: cint, col: pointer): void {.importc: "QsciScintilla_setMarginBackgroundColor".}
proc fcQsciScintilla_setMarginOptions(self: pointer, options: cint): void {.importc: "QsciScintilla_setMarginOptions".}
proc fcQsciScintilla_setMarginText(self: pointer, line: cint, text: struct_miqt_string, style: cint): void {.importc: "QsciScintilla_setMarginText".}
proc fcQsciScintilla_setMarginText2(self: pointer, line: cint, text: struct_miqt_string, style: pointer): void {.importc: "QsciScintilla_setMarginText2".}
proc fcQsciScintilla_setMarginText3(self: pointer, line: cint, text: pointer): void {.importc: "QsciScintilla_setMarginText3".}
proc fcQsciScintilla_setMarginType(self: pointer, margin: cint, typeVal: cint): void {.importc: "QsciScintilla_setMarginType".}
proc fcQsciScintilla_clearMarginText(self: pointer, ): void {.importc: "QsciScintilla_clearMarginText".}
proc fcQsciScintilla_setMargins(self: pointer, margins: cint): void {.importc: "QsciScintilla_setMargins".}
proc fcQsciScintilla_setMarkerBackgroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_setMarkerBackgroundColor".}
proc fcQsciScintilla_setMarkerForegroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_setMarkerForegroundColor".}
proc fcQsciScintilla_setMatchedBraceBackgroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_setMatchedBraceBackgroundColor".}
proc fcQsciScintilla_setMatchedBraceForegroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_setMatchedBraceForegroundColor".}
proc fcQsciScintilla_setMatchedBraceIndicator(self: pointer, indicatorNumber: cint): void {.importc: "QsciScintilla_setMatchedBraceIndicator".}
proc fcQsciScintilla_resetMatchedBraceIndicator(self: pointer, ): void {.importc: "QsciScintilla_resetMatchedBraceIndicator".}
proc fcQsciScintilla_setScrollWidth(self: pointer, pixelWidth: cint): void {.importc: "QsciScintilla_setScrollWidth".}
proc fcQsciScintilla_setScrollWidthTracking(self: pointer, enabled: bool): void {.importc: "QsciScintilla_setScrollWidthTracking".}
proc fcQsciScintilla_setTabDrawMode(self: pointer, mode: cint): void {.importc: "QsciScintilla_setTabDrawMode".}
proc fcQsciScintilla_setUnmatchedBraceBackgroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_setUnmatchedBraceBackgroundColor".}
proc fcQsciScintilla_setUnmatchedBraceForegroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_setUnmatchedBraceForegroundColor".}
proc fcQsciScintilla_setUnmatchedBraceIndicator(self: pointer, indicatorNumber: cint): void {.importc: "QsciScintilla_setUnmatchedBraceIndicator".}
proc fcQsciScintilla_resetUnmatchedBraceIndicator(self: pointer, ): void {.importc: "QsciScintilla_resetUnmatchedBraceIndicator".}
proc fcQsciScintilla_setWrapVisualFlags(self: pointer, endFlag: cint): void {.importc: "QsciScintilla_setWrapVisualFlags".}
proc fcQsciScintilla_selectedText(self: pointer, ): struct_miqt_string {.importc: "QsciScintilla_selectedText".}
proc fcQsciScintilla_selectionToEol(self: pointer, ): bool {.importc: "QsciScintilla_selectionToEol".}
proc fcQsciScintilla_setHotspotBackgroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_setHotspotBackgroundColor".}
proc fcQsciScintilla_setHotspotForegroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_setHotspotForegroundColor".}
proc fcQsciScintilla_setHotspotUnderline(self: pointer, enable: bool): void {.importc: "QsciScintilla_setHotspotUnderline".}
proc fcQsciScintilla_setHotspotWrap(self: pointer, enable: bool): void {.importc: "QsciScintilla_setHotspotWrap".}
proc fcQsciScintilla_setSelectionToEol(self: pointer, filled: bool): void {.importc: "QsciScintilla_setSelectionToEol".}
proc fcQsciScintilla_setExtraAscent(self: pointer, extra: cint): void {.importc: "QsciScintilla_setExtraAscent".}
proc fcQsciScintilla_setExtraDescent(self: pointer, extra: cint): void {.importc: "QsciScintilla_setExtraDescent".}
proc fcQsciScintilla_setOverwriteMode(self: pointer, overwrite: bool): void {.importc: "QsciScintilla_setOverwriteMode".}
proc fcQsciScintilla_setWhitespaceBackgroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_setWhitespaceBackgroundColor".}
proc fcQsciScintilla_setWhitespaceForegroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_setWhitespaceForegroundColor".}
proc fcQsciScintilla_setWhitespaceSize(self: pointer, size: cint): void {.importc: "QsciScintilla_setWhitespaceSize".}
proc fcQsciScintilla_setWrapIndentMode(self: pointer, mode: cint): void {.importc: "QsciScintilla_setWrapIndentMode".}
proc fcQsciScintilla_showUserList(self: pointer, id: cint, list: struct_miqt_array): void {.importc: "QsciScintilla_showUserList".}
proc fcQsciScintilla_standardCommands(self: pointer, ): pointer {.importc: "QsciScintilla_standardCommands".}
proc fcQsciScintilla_tabDrawMode(self: pointer, ): cint {.importc: "QsciScintilla_tabDrawMode".}
proc fcQsciScintilla_tabIndents(self: pointer, ): bool {.importc: "QsciScintilla_tabIndents".}
proc fcQsciScintilla_tabWidth(self: pointer, ): cint {.importc: "QsciScintilla_tabWidth".}
proc fcQsciScintilla_text(self: pointer, ): struct_miqt_string {.importc: "QsciScintilla_text".}
proc fcQsciScintilla_textWithLine(self: pointer, line: cint): struct_miqt_string {.importc: "QsciScintilla_textWithLine".}
proc fcQsciScintilla_text2(self: pointer, start: cint, endVal: cint): struct_miqt_string {.importc: "QsciScintilla_text2".}
proc fcQsciScintilla_textHeight(self: pointer, linenr: cint): cint {.importc: "QsciScintilla_textHeight".}
proc fcQsciScintilla_whitespaceSize(self: pointer, ): cint {.importc: "QsciScintilla_whitespaceSize".}
proc fcQsciScintilla_whitespaceVisibility(self: pointer, ): cint {.importc: "QsciScintilla_whitespaceVisibility".}
proc fcQsciScintilla_wordAtLineIndex(self: pointer, line: cint, index: cint): struct_miqt_string {.importc: "QsciScintilla_wordAtLineIndex".}
proc fcQsciScintilla_wordAtPoint(self: pointer, point: pointer): struct_miqt_string {.importc: "QsciScintilla_wordAtPoint".}
proc fcQsciScintilla_wordCharacters(self: pointer, ): cstring {.importc: "QsciScintilla_wordCharacters".}
proc fcQsciScintilla_wrapMode(self: pointer, ): cint {.importc: "QsciScintilla_wrapMode".}
proc fcQsciScintilla_wrapIndentMode(self: pointer, ): cint {.importc: "QsciScintilla_wrapIndentMode".}
proc fcQsciScintilla_write(self: pointer, io: pointer): bool {.importc: "QsciScintilla_write".}
proc fcQsciScintilla_append(self: pointer, text: struct_miqt_string): void {.importc: "QsciScintilla_append".}
proc fcQsciScintilla_autoCompleteFromAll(self: pointer, ): void {.importc: "QsciScintilla_autoCompleteFromAll".}
proc fcQsciScintilla_autoCompleteFromAPIs(self: pointer, ): void {.importc: "QsciScintilla_autoCompleteFromAPIs".}
proc fcQsciScintilla_autoCompleteFromDocument(self: pointer, ): void {.importc: "QsciScintilla_autoCompleteFromDocument".}
proc fcQsciScintilla_callTip(self: pointer, ): void {.importc: "QsciScintilla_callTip".}
proc fcQsciScintilla_clear(self: pointer, ): void {.importc: "QsciScintilla_clear".}
proc fcQsciScintilla_copy(self: pointer, ): void {.importc: "QsciScintilla_copy".}
proc fcQsciScintilla_cut(self: pointer, ): void {.importc: "QsciScintilla_cut".}
proc fcQsciScintilla_ensureCursorVisible(self: pointer, ): void {.importc: "QsciScintilla_ensureCursorVisible".}
proc fcQsciScintilla_ensureLineVisible(self: pointer, line: cint): void {.importc: "QsciScintilla_ensureLineVisible".}
proc fcQsciScintilla_foldAll(self: pointer, children: bool): void {.importc: "QsciScintilla_foldAll".}
proc fcQsciScintilla_foldLine(self: pointer, line: cint): void {.importc: "QsciScintilla_foldLine".}
proc fcQsciScintilla_indent(self: pointer, line: cint): void {.importc: "QsciScintilla_indent".}
proc fcQsciScintilla_insert(self: pointer, text: struct_miqt_string): void {.importc: "QsciScintilla_insert".}
proc fcQsciScintilla_insertAt(self: pointer, text: struct_miqt_string, line: cint, index: cint): void {.importc: "QsciScintilla_insertAt".}
proc fcQsciScintilla_moveToMatchingBrace(self: pointer, ): void {.importc: "QsciScintilla_moveToMatchingBrace".}
proc fcQsciScintilla_paste(self: pointer, ): void {.importc: "QsciScintilla_paste".}
proc fcQsciScintilla_redo(self: pointer, ): void {.importc: "QsciScintilla_redo".}
proc fcQsciScintilla_removeSelectedText(self: pointer, ): void {.importc: "QsciScintilla_removeSelectedText".}
proc fcQsciScintilla_replaceSelectedText(self: pointer, text: struct_miqt_string): void {.importc: "QsciScintilla_replaceSelectedText".}
proc fcQsciScintilla_resetSelectionBackgroundColor(self: pointer, ): void {.importc: "QsciScintilla_resetSelectionBackgroundColor".}
proc fcQsciScintilla_resetSelectionForegroundColor(self: pointer, ): void {.importc: "QsciScintilla_resetSelectionForegroundColor".}
proc fcQsciScintilla_selectAll(self: pointer, select: bool): void {.importc: "QsciScintilla_selectAll".}
proc fcQsciScintilla_selectToMatchingBrace(self: pointer, ): void {.importc: "QsciScintilla_selectToMatchingBrace".}
proc fcQsciScintilla_setAutoCompletionCaseSensitivity(self: pointer, cs: bool): void {.importc: "QsciScintilla_setAutoCompletionCaseSensitivity".}
proc fcQsciScintilla_setAutoCompletionReplaceWord(self: pointer, replace: bool): void {.importc: "QsciScintilla_setAutoCompletionReplaceWord".}
proc fcQsciScintilla_setAutoCompletionShowSingle(self: pointer, single: bool): void {.importc: "QsciScintilla_setAutoCompletionShowSingle".}
proc fcQsciScintilla_setAutoCompletionSource(self: pointer, source: cint): void {.importc: "QsciScintilla_setAutoCompletionSource".}
proc fcQsciScintilla_setAutoCompletionThreshold(self: pointer, thresh: cint): void {.importc: "QsciScintilla_setAutoCompletionThreshold".}
proc fcQsciScintilla_setAutoCompletionUseSingle(self: pointer, single: cint): void {.importc: "QsciScintilla_setAutoCompletionUseSingle".}
proc fcQsciScintilla_setAutoIndent(self: pointer, autoindent: bool): void {.importc: "QsciScintilla_setAutoIndent".}
proc fcQsciScintilla_setBraceMatching(self: pointer, bm: cint): void {.importc: "QsciScintilla_setBraceMatching".}
proc fcQsciScintilla_setBackspaceUnindents(self: pointer, unindent: bool): void {.importc: "QsciScintilla_setBackspaceUnindents".}
proc fcQsciScintilla_setCaretForegroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_setCaretForegroundColor".}
proc fcQsciScintilla_setCaretLineBackgroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_setCaretLineBackgroundColor".}
proc fcQsciScintilla_setCaretLineFrameWidth(self: pointer, width: cint): void {.importc: "QsciScintilla_setCaretLineFrameWidth".}
proc fcQsciScintilla_setCaretLineVisible(self: pointer, enable: bool): void {.importc: "QsciScintilla_setCaretLineVisible".}
proc fcQsciScintilla_setCaretWidth(self: pointer, width: cint): void {.importc: "QsciScintilla_setCaretWidth".}
proc fcQsciScintilla_setColor(self: pointer, c: pointer): void {.importc: "QsciScintilla_setColor".}
proc fcQsciScintilla_setCursorPosition(self: pointer, line: cint, index: cint): void {.importc: "QsciScintilla_setCursorPosition".}
proc fcQsciScintilla_setEolMode(self: pointer, mode: cint): void {.importc: "QsciScintilla_setEolMode".}
proc fcQsciScintilla_setEolVisibility(self: pointer, visible: bool): void {.importc: "QsciScintilla_setEolVisibility".}
proc fcQsciScintilla_setFolding(self: pointer, fold: cint, margin: cint): void {.importc: "QsciScintilla_setFolding".}
proc fcQsciScintilla_setIndentation(self: pointer, line: cint, indentation: cint): void {.importc: "QsciScintilla_setIndentation".}
proc fcQsciScintilla_setIndentationGuides(self: pointer, enable: bool): void {.importc: "QsciScintilla_setIndentationGuides".}
proc fcQsciScintilla_setIndentationGuidesBackgroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_setIndentationGuidesBackgroundColor".}
proc fcQsciScintilla_setIndentationGuidesForegroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_setIndentationGuidesForegroundColor".}
proc fcQsciScintilla_setIndentationsUseTabs(self: pointer, tabs: bool): void {.importc: "QsciScintilla_setIndentationsUseTabs".}
proc fcQsciScintilla_setIndentationWidth(self: pointer, width: cint): void {.importc: "QsciScintilla_setIndentationWidth".}
proc fcQsciScintilla_setLexer(self: pointer, lexer: pointer): void {.importc: "QsciScintilla_setLexer".}
proc fcQsciScintilla_setMarginsBackgroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_setMarginsBackgroundColor".}
proc fcQsciScintilla_setMarginsFont(self: pointer, f: pointer): void {.importc: "QsciScintilla_setMarginsFont".}
proc fcQsciScintilla_setMarginsForegroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_setMarginsForegroundColor".}
proc fcQsciScintilla_setMarginLineNumbers(self: pointer, margin: cint, lnrs: bool): void {.importc: "QsciScintilla_setMarginLineNumbers".}
proc fcQsciScintilla_setMarginMarkerMask(self: pointer, margin: cint, mask: cint): void {.importc: "QsciScintilla_setMarginMarkerMask".}
proc fcQsciScintilla_setMarginSensitivity(self: pointer, margin: cint, sens: bool): void {.importc: "QsciScintilla_setMarginSensitivity".}
proc fcQsciScintilla_setMarginWidth(self: pointer, margin: cint, width: cint): void {.importc: "QsciScintilla_setMarginWidth".}
proc fcQsciScintilla_setMarginWidth2(self: pointer, margin: cint, s: struct_miqt_string): void {.importc: "QsciScintilla_setMarginWidth2".}
proc fcQsciScintilla_setModified(self: pointer, m: bool): void {.importc: "QsciScintilla_setModified".}
proc fcQsciScintilla_setPaper(self: pointer, c: pointer): void {.importc: "QsciScintilla_setPaper".}
proc fcQsciScintilla_setReadOnly(self: pointer, ro: bool): void {.importc: "QsciScintilla_setReadOnly".}
proc fcQsciScintilla_setSelection(self: pointer, lineFrom: cint, indexFrom: cint, lineTo: cint, indexTo: cint): void {.importc: "QsciScintilla_setSelection".}
proc fcQsciScintilla_setSelectionBackgroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_setSelectionBackgroundColor".}
proc fcQsciScintilla_setSelectionForegroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_setSelectionForegroundColor".}
proc fcQsciScintilla_setTabIndents(self: pointer, indent: bool): void {.importc: "QsciScintilla_setTabIndents".}
proc fcQsciScintilla_setTabWidth(self: pointer, width: cint): void {.importc: "QsciScintilla_setTabWidth".}
proc fcQsciScintilla_setText(self: pointer, text: struct_miqt_string): void {.importc: "QsciScintilla_setText".}
proc fcQsciScintilla_setUtf8(self: pointer, cp: bool): void {.importc: "QsciScintilla_setUtf8".}
proc fcQsciScintilla_setWhitespaceVisibility(self: pointer, mode: cint): void {.importc: "QsciScintilla_setWhitespaceVisibility".}
proc fcQsciScintilla_setWrapMode(self: pointer, mode: cint): void {.importc: "QsciScintilla_setWrapMode".}
proc fcQsciScintilla_undo(self: pointer, ): void {.importc: "QsciScintilla_undo".}
proc fcQsciScintilla_unindent(self: pointer, line: cint): void {.importc: "QsciScintilla_unindent".}
proc fcQsciScintilla_zoomIn(self: pointer, range: cint): void {.importc: "QsciScintilla_zoomIn".}
proc fcQsciScintilla_zoomIn2(self: pointer, ): void {.importc: "QsciScintilla_zoomIn2".}
proc fcQsciScintilla_zoomOut(self: pointer, range: cint): void {.importc: "QsciScintilla_zoomOut".}
proc fcQsciScintilla_zoomOut2(self: pointer, ): void {.importc: "QsciScintilla_zoomOut2".}
proc fcQsciScintilla_zoomTo(self: pointer, size: cint): void {.importc: "QsciScintilla_zoomTo".}
proc fcQsciScintilla_cursorPositionChanged(self: pointer, line: cint, index: cint): void {.importc: "QsciScintilla_cursorPositionChanged".}
proc fQsciScintilla_connect_cursorPositionChanged(self: pointer, slot: int) {.importc: "QsciScintilla_connect_cursorPositionChanged".}
proc fcQsciScintilla_copyAvailable(self: pointer, yes: bool): void {.importc: "QsciScintilla_copyAvailable".}
proc fQsciScintilla_connect_copyAvailable(self: pointer, slot: int) {.importc: "QsciScintilla_connect_copyAvailable".}
proc fcQsciScintilla_indicatorClicked(self: pointer, line: cint, index: cint, state: cint): void {.importc: "QsciScintilla_indicatorClicked".}
proc fQsciScintilla_connect_indicatorClicked(self: pointer, slot: int) {.importc: "QsciScintilla_connect_indicatorClicked".}
proc fcQsciScintilla_indicatorReleased(self: pointer, line: cint, index: cint, state: cint): void {.importc: "QsciScintilla_indicatorReleased".}
proc fQsciScintilla_connect_indicatorReleased(self: pointer, slot: int) {.importc: "QsciScintilla_connect_indicatorReleased".}
proc fcQsciScintilla_linesChanged(self: pointer, ): void {.importc: "QsciScintilla_linesChanged".}
proc fQsciScintilla_connect_linesChanged(self: pointer, slot: int) {.importc: "QsciScintilla_connect_linesChanged".}
proc fcQsciScintilla_marginClicked(self: pointer, margin: cint, line: cint, state: cint): void {.importc: "QsciScintilla_marginClicked".}
proc fQsciScintilla_connect_marginClicked(self: pointer, slot: int) {.importc: "QsciScintilla_connect_marginClicked".}
proc fcQsciScintilla_marginRightClicked(self: pointer, margin: cint, line: cint, state: cint): void {.importc: "QsciScintilla_marginRightClicked".}
proc fQsciScintilla_connect_marginRightClicked(self: pointer, slot: int) {.importc: "QsciScintilla_connect_marginRightClicked".}
proc fcQsciScintilla_modificationAttempted(self: pointer, ): void {.importc: "QsciScintilla_modificationAttempted".}
proc fQsciScintilla_connect_modificationAttempted(self: pointer, slot: int) {.importc: "QsciScintilla_connect_modificationAttempted".}
proc fcQsciScintilla_modificationChanged(self: pointer, m: bool): void {.importc: "QsciScintilla_modificationChanged".}
proc fQsciScintilla_connect_modificationChanged(self: pointer, slot: int) {.importc: "QsciScintilla_connect_modificationChanged".}
proc fcQsciScintilla_selectionChanged(self: pointer, ): void {.importc: "QsciScintilla_selectionChanged".}
proc fQsciScintilla_connect_selectionChanged(self: pointer, slot: int) {.importc: "QsciScintilla_connect_selectionChanged".}
proc fcQsciScintilla_textChanged(self: pointer, ): void {.importc: "QsciScintilla_textChanged".}
proc fQsciScintilla_connect_textChanged(self: pointer, slot: int) {.importc: "QsciScintilla_connect_textChanged".}
proc fcQsciScintilla_userListActivated(self: pointer, id: cint, string: struct_miqt_string): void {.importc: "QsciScintilla_userListActivated".}
proc fQsciScintilla_connect_userListActivated(self: pointer, slot: int) {.importc: "QsciScintilla_connect_userListActivated".}
proc fcQsciScintilla_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciScintilla_tr2".}
proc fcQsciScintilla_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciScintilla_tr3".}
proc fcQsciScintilla_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciScintilla_trUtf82".}
proc fcQsciScintilla_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciScintilla_trUtf83".}
proc fcQsciScintilla_clearAnnotations1(self: pointer, line: cint): void {.importc: "QsciScintilla_clearAnnotations1".}
proc fcQsciScintilla_indicatorDefine2(self: pointer, style: cint, indicatorNumber: cint): cint {.importc: "QsciScintilla_indicatorDefine2".}
proc fcQsciScintilla_markerDefine2(self: pointer, sym: cint, markerNumber: cint): cint {.importc: "QsciScintilla_markerDefine2".}
proc fcQsciScintilla_markerDefine22(self: pointer, ch: cchar, markerNumber: cint): cint {.importc: "QsciScintilla_markerDefine22".}
proc fcQsciScintilla_markerDefine23(self: pointer, pm: pointer, markerNumber: cint): cint {.importc: "QsciScintilla_markerDefine23".}
proc fcQsciScintilla_markerDefine24(self: pointer, im: pointer, markerNumber: cint): cint {.importc: "QsciScintilla_markerDefine24".}
proc fcQsciScintilla_markerDelete2(self: pointer, linenr: cint, markerNumber: cint): void {.importc: "QsciScintilla_markerDelete2".}
proc fcQsciScintilla_markerDeleteAll1(self: pointer, markerNumber: cint): void {.importc: "QsciScintilla_markerDeleteAll1".}
proc fcQsciScintilla_setIndicatorDrawUnder2(self: pointer, under: bool, indicatorNumber: cint): void {.importc: "QsciScintilla_setIndicatorDrawUnder2".}
proc fcQsciScintilla_setIndicatorForegroundColor2(self: pointer, col: pointer, indicatorNumber: cint): void {.importc: "QsciScintilla_setIndicatorForegroundColor2".}
proc fcQsciScintilla_setIndicatorHoverForegroundColor2(self: pointer, col: pointer, indicatorNumber: cint): void {.importc: "QsciScintilla_setIndicatorHoverForegroundColor2".}
proc fcQsciScintilla_setIndicatorHoverStyle2(self: pointer, style: cint, indicatorNumber: cint): void {.importc: "QsciScintilla_setIndicatorHoverStyle2".}
proc fcQsciScintilla_setIndicatorOutlineColor2(self: pointer, col: pointer, indicatorNumber: cint): void {.importc: "QsciScintilla_setIndicatorOutlineColor2".}
proc fcQsciScintilla_clearMarginText1(self: pointer, line: cint): void {.importc: "QsciScintilla_clearMarginText1".}
proc fcQsciScintilla_setMarkerBackgroundColor2(self: pointer, col: pointer, markerNumber: cint): void {.importc: "QsciScintilla_setMarkerBackgroundColor2".}
proc fcQsciScintilla_setMarkerForegroundColor2(self: pointer, col: pointer, markerNumber: cint): void {.importc: "QsciScintilla_setMarkerForegroundColor2".}
proc fcQsciScintilla_setWrapVisualFlags2(self: pointer, endFlag: cint, startFlag: cint): void {.importc: "QsciScintilla_setWrapVisualFlags2".}
proc fcQsciScintilla_setWrapVisualFlags3(self: pointer, endFlag: cint, startFlag: cint, indent: cint): void {.importc: "QsciScintilla_setWrapVisualFlags3".}
proc fQsciScintilla_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciScintilla_virtualbase_metaObject".}
proc fcQsciScintilla_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_metaObject".}
proc fQsciScintilla_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciScintilla_virtualbase_metacast".}
proc fcQsciScintilla_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_metacast".}
proc fQsciScintilla_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciScintilla_virtualbase_metacall".}
proc fcQsciScintilla_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_metacall".}
proc fQsciScintilla_virtualbase_apiContext(self: pointer, pos: cint, context_start: ptr cint, last_word_start: ptr cint): struct_miqt_array{.importc: "QsciScintilla_virtualbase_apiContext".}
proc fcQsciScintilla_override_virtual_apiContext(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_apiContext".}
proc fQsciScintilla_virtualbase_findFirst(self: pointer, expr: struct_miqt_string, re: bool, cs: bool, wo: bool, wrap: bool, forward: bool, line: cint, index: cint, show: bool, posix: bool, cxx11: bool): bool{.importc: "QsciScintilla_virtualbase_findFirst".}
proc fcQsciScintilla_override_virtual_findFirst(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_findFirst".}
proc fQsciScintilla_virtualbase_findFirstInSelection(self: pointer, expr: struct_miqt_string, re: bool, cs: bool, wo: bool, forward: bool, show: bool, posix: bool, cxx11: bool): bool{.importc: "QsciScintilla_virtualbase_findFirstInSelection".}
proc fcQsciScintilla_override_virtual_findFirstInSelection(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_findFirstInSelection".}
proc fQsciScintilla_virtualbase_findNext(self: pointer, ): bool{.importc: "QsciScintilla_virtualbase_findNext".}
proc fcQsciScintilla_override_virtual_findNext(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_findNext".}
proc fQsciScintilla_virtualbase_recolor(self: pointer, start: cint, endVal: cint): void{.importc: "QsciScintilla_virtualbase_recolor".}
proc fcQsciScintilla_override_virtual_recolor(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_recolor".}
proc fQsciScintilla_virtualbase_replace(self: pointer, replaceStr: struct_miqt_string): void{.importc: "QsciScintilla_virtualbase_replace".}
proc fcQsciScintilla_override_virtual_replace(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_replace".}
proc fQsciScintilla_virtualbase_append(self: pointer, text: struct_miqt_string): void{.importc: "QsciScintilla_virtualbase_append".}
proc fcQsciScintilla_override_virtual_append(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_append".}
proc fQsciScintilla_virtualbase_autoCompleteFromAll(self: pointer, ): void{.importc: "QsciScintilla_virtualbase_autoCompleteFromAll".}
proc fcQsciScintilla_override_virtual_autoCompleteFromAll(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_autoCompleteFromAll".}
proc fQsciScintilla_virtualbase_autoCompleteFromAPIs(self: pointer, ): void{.importc: "QsciScintilla_virtualbase_autoCompleteFromAPIs".}
proc fcQsciScintilla_override_virtual_autoCompleteFromAPIs(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_autoCompleteFromAPIs".}
proc fQsciScintilla_virtualbase_autoCompleteFromDocument(self: pointer, ): void{.importc: "QsciScintilla_virtualbase_autoCompleteFromDocument".}
proc fcQsciScintilla_override_virtual_autoCompleteFromDocument(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_autoCompleteFromDocument".}
proc fQsciScintilla_virtualbase_callTip(self: pointer, ): void{.importc: "QsciScintilla_virtualbase_callTip".}
proc fcQsciScintilla_override_virtual_callTip(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_callTip".}
proc fQsciScintilla_virtualbase_clear(self: pointer, ): void{.importc: "QsciScintilla_virtualbase_clear".}
proc fcQsciScintilla_override_virtual_clear(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_clear".}
proc fQsciScintilla_virtualbase_copy(self: pointer, ): void{.importc: "QsciScintilla_virtualbase_copy".}
proc fcQsciScintilla_override_virtual_copy(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_copy".}
proc fQsciScintilla_virtualbase_cut(self: pointer, ): void{.importc: "QsciScintilla_virtualbase_cut".}
proc fcQsciScintilla_override_virtual_cut(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_cut".}
proc fQsciScintilla_virtualbase_ensureCursorVisible(self: pointer, ): void{.importc: "QsciScintilla_virtualbase_ensureCursorVisible".}
proc fcQsciScintilla_override_virtual_ensureCursorVisible(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_ensureCursorVisible".}
proc fQsciScintilla_virtualbase_ensureLineVisible(self: pointer, line: cint): void{.importc: "QsciScintilla_virtualbase_ensureLineVisible".}
proc fcQsciScintilla_override_virtual_ensureLineVisible(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_ensureLineVisible".}
proc fQsciScintilla_virtualbase_foldAll(self: pointer, children: bool): void{.importc: "QsciScintilla_virtualbase_foldAll".}
proc fcQsciScintilla_override_virtual_foldAll(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_foldAll".}
proc fQsciScintilla_virtualbase_foldLine(self: pointer, line: cint): void{.importc: "QsciScintilla_virtualbase_foldLine".}
proc fcQsciScintilla_override_virtual_foldLine(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_foldLine".}
proc fQsciScintilla_virtualbase_indent(self: pointer, line: cint): void{.importc: "QsciScintilla_virtualbase_indent".}
proc fcQsciScintilla_override_virtual_indent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_indent".}
proc fQsciScintilla_virtualbase_insert(self: pointer, text: struct_miqt_string): void{.importc: "QsciScintilla_virtualbase_insert".}
proc fcQsciScintilla_override_virtual_insert(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_insert".}
proc fQsciScintilla_virtualbase_insertAt(self: pointer, text: struct_miqt_string, line: cint, index: cint): void{.importc: "QsciScintilla_virtualbase_insertAt".}
proc fcQsciScintilla_override_virtual_insertAt(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_insertAt".}
proc fQsciScintilla_virtualbase_moveToMatchingBrace(self: pointer, ): void{.importc: "QsciScintilla_virtualbase_moveToMatchingBrace".}
proc fcQsciScintilla_override_virtual_moveToMatchingBrace(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_moveToMatchingBrace".}
proc fQsciScintilla_virtualbase_paste(self: pointer, ): void{.importc: "QsciScintilla_virtualbase_paste".}
proc fcQsciScintilla_override_virtual_paste(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_paste".}
proc fQsciScintilla_virtualbase_redo(self: pointer, ): void{.importc: "QsciScintilla_virtualbase_redo".}
proc fcQsciScintilla_override_virtual_redo(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_redo".}
proc fQsciScintilla_virtualbase_removeSelectedText(self: pointer, ): void{.importc: "QsciScintilla_virtualbase_removeSelectedText".}
proc fcQsciScintilla_override_virtual_removeSelectedText(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_removeSelectedText".}
proc fQsciScintilla_virtualbase_replaceSelectedText(self: pointer, text: struct_miqt_string): void{.importc: "QsciScintilla_virtualbase_replaceSelectedText".}
proc fcQsciScintilla_override_virtual_replaceSelectedText(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_replaceSelectedText".}
proc fQsciScintilla_virtualbase_resetSelectionBackgroundColor(self: pointer, ): void{.importc: "QsciScintilla_virtualbase_resetSelectionBackgroundColor".}
proc fcQsciScintilla_override_virtual_resetSelectionBackgroundColor(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_resetSelectionBackgroundColor".}
proc fQsciScintilla_virtualbase_resetSelectionForegroundColor(self: pointer, ): void{.importc: "QsciScintilla_virtualbase_resetSelectionForegroundColor".}
proc fcQsciScintilla_override_virtual_resetSelectionForegroundColor(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_resetSelectionForegroundColor".}
proc fQsciScintilla_virtualbase_selectAll(self: pointer, select: bool): void{.importc: "QsciScintilla_virtualbase_selectAll".}
proc fcQsciScintilla_override_virtual_selectAll(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_selectAll".}
proc fQsciScintilla_virtualbase_selectToMatchingBrace(self: pointer, ): void{.importc: "QsciScintilla_virtualbase_selectToMatchingBrace".}
proc fcQsciScintilla_override_virtual_selectToMatchingBrace(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_selectToMatchingBrace".}
proc fQsciScintilla_virtualbase_setAutoCompletionCaseSensitivity(self: pointer, cs: bool): void{.importc: "QsciScintilla_virtualbase_setAutoCompletionCaseSensitivity".}
proc fcQsciScintilla_override_virtual_setAutoCompletionCaseSensitivity(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setAutoCompletionCaseSensitivity".}
proc fQsciScintilla_virtualbase_setAutoCompletionReplaceWord(self: pointer, replace: bool): void{.importc: "QsciScintilla_virtualbase_setAutoCompletionReplaceWord".}
proc fcQsciScintilla_override_virtual_setAutoCompletionReplaceWord(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setAutoCompletionReplaceWord".}
proc fQsciScintilla_virtualbase_setAutoCompletionShowSingle(self: pointer, single: bool): void{.importc: "QsciScintilla_virtualbase_setAutoCompletionShowSingle".}
proc fcQsciScintilla_override_virtual_setAutoCompletionShowSingle(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setAutoCompletionShowSingle".}
proc fQsciScintilla_virtualbase_setAutoCompletionSource(self: pointer, source: cint): void{.importc: "QsciScintilla_virtualbase_setAutoCompletionSource".}
proc fcQsciScintilla_override_virtual_setAutoCompletionSource(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setAutoCompletionSource".}
proc fQsciScintilla_virtualbase_setAutoCompletionThreshold(self: pointer, thresh: cint): void{.importc: "QsciScintilla_virtualbase_setAutoCompletionThreshold".}
proc fcQsciScintilla_override_virtual_setAutoCompletionThreshold(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setAutoCompletionThreshold".}
proc fQsciScintilla_virtualbase_setAutoCompletionUseSingle(self: pointer, single: cint): void{.importc: "QsciScintilla_virtualbase_setAutoCompletionUseSingle".}
proc fcQsciScintilla_override_virtual_setAutoCompletionUseSingle(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setAutoCompletionUseSingle".}
proc fQsciScintilla_virtualbase_setAutoIndent(self: pointer, autoindent: bool): void{.importc: "QsciScintilla_virtualbase_setAutoIndent".}
proc fcQsciScintilla_override_virtual_setAutoIndent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setAutoIndent".}
proc fQsciScintilla_virtualbase_setBraceMatching(self: pointer, bm: cint): void{.importc: "QsciScintilla_virtualbase_setBraceMatching".}
proc fcQsciScintilla_override_virtual_setBraceMatching(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setBraceMatching".}
proc fQsciScintilla_virtualbase_setBackspaceUnindents(self: pointer, unindent: bool): void{.importc: "QsciScintilla_virtualbase_setBackspaceUnindents".}
proc fcQsciScintilla_override_virtual_setBackspaceUnindents(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setBackspaceUnindents".}
proc fQsciScintilla_virtualbase_setCaretForegroundColor(self: pointer, col: pointer): void{.importc: "QsciScintilla_virtualbase_setCaretForegroundColor".}
proc fcQsciScintilla_override_virtual_setCaretForegroundColor(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setCaretForegroundColor".}
proc fQsciScintilla_virtualbase_setCaretLineBackgroundColor(self: pointer, col: pointer): void{.importc: "QsciScintilla_virtualbase_setCaretLineBackgroundColor".}
proc fcQsciScintilla_override_virtual_setCaretLineBackgroundColor(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setCaretLineBackgroundColor".}
proc fQsciScintilla_virtualbase_setCaretLineFrameWidth(self: pointer, width: cint): void{.importc: "QsciScintilla_virtualbase_setCaretLineFrameWidth".}
proc fcQsciScintilla_override_virtual_setCaretLineFrameWidth(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setCaretLineFrameWidth".}
proc fQsciScintilla_virtualbase_setCaretLineVisible(self: pointer, enable: bool): void{.importc: "QsciScintilla_virtualbase_setCaretLineVisible".}
proc fcQsciScintilla_override_virtual_setCaretLineVisible(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setCaretLineVisible".}
proc fQsciScintilla_virtualbase_setCaretWidth(self: pointer, width: cint): void{.importc: "QsciScintilla_virtualbase_setCaretWidth".}
proc fcQsciScintilla_override_virtual_setCaretWidth(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setCaretWidth".}
proc fQsciScintilla_virtualbase_setColor(self: pointer, c: pointer): void{.importc: "QsciScintilla_virtualbase_setColor".}
proc fcQsciScintilla_override_virtual_setColor(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setColor".}
proc fQsciScintilla_virtualbase_setCursorPosition(self: pointer, line: cint, index: cint): void{.importc: "QsciScintilla_virtualbase_setCursorPosition".}
proc fcQsciScintilla_override_virtual_setCursorPosition(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setCursorPosition".}
proc fQsciScintilla_virtualbase_setEolMode(self: pointer, mode: cint): void{.importc: "QsciScintilla_virtualbase_setEolMode".}
proc fcQsciScintilla_override_virtual_setEolMode(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setEolMode".}
proc fQsciScintilla_virtualbase_setEolVisibility(self: pointer, visible: bool): void{.importc: "QsciScintilla_virtualbase_setEolVisibility".}
proc fcQsciScintilla_override_virtual_setEolVisibility(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setEolVisibility".}
proc fQsciScintilla_virtualbase_setFolding(self: pointer, fold: cint, margin: cint): void{.importc: "QsciScintilla_virtualbase_setFolding".}
proc fcQsciScintilla_override_virtual_setFolding(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setFolding".}
proc fQsciScintilla_virtualbase_setIndentation(self: pointer, line: cint, indentation: cint): void{.importc: "QsciScintilla_virtualbase_setIndentation".}
proc fcQsciScintilla_override_virtual_setIndentation(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setIndentation".}
proc fQsciScintilla_virtualbase_setIndentationGuides(self: pointer, enable: bool): void{.importc: "QsciScintilla_virtualbase_setIndentationGuides".}
proc fcQsciScintilla_override_virtual_setIndentationGuides(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setIndentationGuides".}
proc fQsciScintilla_virtualbase_setIndentationGuidesBackgroundColor(self: pointer, col: pointer): void{.importc: "QsciScintilla_virtualbase_setIndentationGuidesBackgroundColor".}
proc fcQsciScintilla_override_virtual_setIndentationGuidesBackgroundColor(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setIndentationGuidesBackgroundColor".}
proc fQsciScintilla_virtualbase_setIndentationGuidesForegroundColor(self: pointer, col: pointer): void{.importc: "QsciScintilla_virtualbase_setIndentationGuidesForegroundColor".}
proc fcQsciScintilla_override_virtual_setIndentationGuidesForegroundColor(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setIndentationGuidesForegroundColor".}
proc fQsciScintilla_virtualbase_setIndentationsUseTabs(self: pointer, tabs: bool): void{.importc: "QsciScintilla_virtualbase_setIndentationsUseTabs".}
proc fcQsciScintilla_override_virtual_setIndentationsUseTabs(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setIndentationsUseTabs".}
proc fQsciScintilla_virtualbase_setIndentationWidth(self: pointer, width: cint): void{.importc: "QsciScintilla_virtualbase_setIndentationWidth".}
proc fcQsciScintilla_override_virtual_setIndentationWidth(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setIndentationWidth".}
proc fQsciScintilla_virtualbase_setLexer(self: pointer, lexer: pointer): void{.importc: "QsciScintilla_virtualbase_setLexer".}
proc fcQsciScintilla_override_virtual_setLexer(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setLexer".}
proc fQsciScintilla_virtualbase_setMarginsBackgroundColor(self: pointer, col: pointer): void{.importc: "QsciScintilla_virtualbase_setMarginsBackgroundColor".}
proc fcQsciScintilla_override_virtual_setMarginsBackgroundColor(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setMarginsBackgroundColor".}
proc fQsciScintilla_virtualbase_setMarginsFont(self: pointer, f: pointer): void{.importc: "QsciScintilla_virtualbase_setMarginsFont".}
proc fcQsciScintilla_override_virtual_setMarginsFont(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setMarginsFont".}
proc fQsciScintilla_virtualbase_setMarginsForegroundColor(self: pointer, col: pointer): void{.importc: "QsciScintilla_virtualbase_setMarginsForegroundColor".}
proc fcQsciScintilla_override_virtual_setMarginsForegroundColor(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setMarginsForegroundColor".}
proc fQsciScintilla_virtualbase_setMarginLineNumbers(self: pointer, margin: cint, lnrs: bool): void{.importc: "QsciScintilla_virtualbase_setMarginLineNumbers".}
proc fcQsciScintilla_override_virtual_setMarginLineNumbers(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setMarginLineNumbers".}
proc fQsciScintilla_virtualbase_setMarginMarkerMask(self: pointer, margin: cint, mask: cint): void{.importc: "QsciScintilla_virtualbase_setMarginMarkerMask".}
proc fcQsciScintilla_override_virtual_setMarginMarkerMask(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setMarginMarkerMask".}
proc fQsciScintilla_virtualbase_setMarginSensitivity(self: pointer, margin: cint, sens: bool): void{.importc: "QsciScintilla_virtualbase_setMarginSensitivity".}
proc fcQsciScintilla_override_virtual_setMarginSensitivity(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setMarginSensitivity".}
proc fQsciScintilla_virtualbase_setMarginWidth(self: pointer, margin: cint, width: cint): void{.importc: "QsciScintilla_virtualbase_setMarginWidth".}
proc fcQsciScintilla_override_virtual_setMarginWidth(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setMarginWidth".}
proc fQsciScintilla_virtualbase_setMarginWidth2(self: pointer, margin: cint, s: struct_miqt_string): void{.importc: "QsciScintilla_virtualbase_setMarginWidth2".}
proc fcQsciScintilla_override_virtual_setMarginWidth2(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setMarginWidth2".}
proc fQsciScintilla_virtualbase_setModified(self: pointer, m: bool): void{.importc: "QsciScintilla_virtualbase_setModified".}
proc fcQsciScintilla_override_virtual_setModified(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setModified".}
proc fQsciScintilla_virtualbase_setPaper(self: pointer, c: pointer): void{.importc: "QsciScintilla_virtualbase_setPaper".}
proc fcQsciScintilla_override_virtual_setPaper(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setPaper".}
proc fQsciScintilla_virtualbase_setReadOnly(self: pointer, ro: bool): void{.importc: "QsciScintilla_virtualbase_setReadOnly".}
proc fcQsciScintilla_override_virtual_setReadOnly(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setReadOnly".}
proc fQsciScintilla_virtualbase_setSelection(self: pointer, lineFrom: cint, indexFrom: cint, lineTo: cint, indexTo: cint): void{.importc: "QsciScintilla_virtualbase_setSelection".}
proc fcQsciScintilla_override_virtual_setSelection(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setSelection".}
proc fQsciScintilla_virtualbase_setSelectionBackgroundColor(self: pointer, col: pointer): void{.importc: "QsciScintilla_virtualbase_setSelectionBackgroundColor".}
proc fcQsciScintilla_override_virtual_setSelectionBackgroundColor(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setSelectionBackgroundColor".}
proc fQsciScintilla_virtualbase_setSelectionForegroundColor(self: pointer, col: pointer): void{.importc: "QsciScintilla_virtualbase_setSelectionForegroundColor".}
proc fcQsciScintilla_override_virtual_setSelectionForegroundColor(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setSelectionForegroundColor".}
proc fQsciScintilla_virtualbase_setTabIndents(self: pointer, indent: bool): void{.importc: "QsciScintilla_virtualbase_setTabIndents".}
proc fcQsciScintilla_override_virtual_setTabIndents(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setTabIndents".}
proc fQsciScintilla_virtualbase_setTabWidth(self: pointer, width: cint): void{.importc: "QsciScintilla_virtualbase_setTabWidth".}
proc fcQsciScintilla_override_virtual_setTabWidth(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setTabWidth".}
proc fQsciScintilla_virtualbase_setText(self: pointer, text: struct_miqt_string): void{.importc: "QsciScintilla_virtualbase_setText".}
proc fcQsciScintilla_override_virtual_setText(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setText".}
proc fQsciScintilla_virtualbase_setUtf8(self: pointer, cp: bool): void{.importc: "QsciScintilla_virtualbase_setUtf8".}
proc fcQsciScintilla_override_virtual_setUtf8(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setUtf8".}
proc fQsciScintilla_virtualbase_setWhitespaceVisibility(self: pointer, mode: cint): void{.importc: "QsciScintilla_virtualbase_setWhitespaceVisibility".}
proc fcQsciScintilla_override_virtual_setWhitespaceVisibility(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setWhitespaceVisibility".}
proc fQsciScintilla_virtualbase_setWrapMode(self: pointer, mode: cint): void{.importc: "QsciScintilla_virtualbase_setWrapMode".}
proc fcQsciScintilla_override_virtual_setWrapMode(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setWrapMode".}
proc fQsciScintilla_virtualbase_undo(self: pointer, ): void{.importc: "QsciScintilla_virtualbase_undo".}
proc fcQsciScintilla_override_virtual_undo(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_undo".}
proc fQsciScintilla_virtualbase_unindent(self: pointer, line: cint): void{.importc: "QsciScintilla_virtualbase_unindent".}
proc fcQsciScintilla_override_virtual_unindent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_unindent".}
proc fQsciScintilla_virtualbase_zoomIn(self: pointer, range: cint): void{.importc: "QsciScintilla_virtualbase_zoomIn".}
proc fcQsciScintilla_override_virtual_zoomIn(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_zoomIn".}
proc fQsciScintilla_virtualbase_zoomIn2(self: pointer, ): void{.importc: "QsciScintilla_virtualbase_zoomIn2".}
proc fcQsciScintilla_override_virtual_zoomIn2(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_zoomIn2".}
proc fQsciScintilla_virtualbase_zoomOut(self: pointer, range: cint): void{.importc: "QsciScintilla_virtualbase_zoomOut".}
proc fcQsciScintilla_override_virtual_zoomOut(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_zoomOut".}
proc fQsciScintilla_virtualbase_zoomOut2(self: pointer, ): void{.importc: "QsciScintilla_virtualbase_zoomOut2".}
proc fcQsciScintilla_override_virtual_zoomOut2(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_zoomOut2".}
proc fQsciScintilla_virtualbase_zoomTo(self: pointer, size: cint): void{.importc: "QsciScintilla_virtualbase_zoomTo".}
proc fcQsciScintilla_override_virtual_zoomTo(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_zoomTo".}
proc fQsciScintilla_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QsciScintilla_virtualbase_event".}
proc fcQsciScintilla_override_virtual_event(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_event".}
proc fQsciScintilla_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QsciScintilla_virtualbase_changeEvent".}
proc fcQsciScintilla_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_changeEvent".}
proc fQsciScintilla_virtualbase_contextMenuEvent(self: pointer, e: pointer): void{.importc: "QsciScintilla_virtualbase_contextMenuEvent".}
proc fcQsciScintilla_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_contextMenuEvent".}
proc fQsciScintilla_virtualbase_wheelEvent(self: pointer, e: pointer): void{.importc: "QsciScintilla_virtualbase_wheelEvent".}
proc fcQsciScintilla_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_wheelEvent".}
proc fQsciScintilla_virtualbase_canInsertFromMimeData(self: pointer, source: pointer): bool{.importc: "QsciScintilla_virtualbase_canInsertFromMimeData".}
proc fcQsciScintilla_override_virtual_canInsertFromMimeData(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_canInsertFromMimeData".}
proc fQsciScintilla_virtualbase_fromMimeData(self: pointer, source: pointer, rectangular: ptr bool): struct_miqt_string{.importc: "QsciScintilla_virtualbase_fromMimeData".}
proc fcQsciScintilla_override_virtual_fromMimeData(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_fromMimeData".}
proc fQsciScintilla_virtualbase_toMimeData(self: pointer, text: struct_miqt_string, rectangular: bool): pointer{.importc: "QsciScintilla_virtualbase_toMimeData".}
proc fcQsciScintilla_override_virtual_toMimeData(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_toMimeData".}
proc fQsciScintilla_virtualbase_dragEnterEvent(self: pointer, e: pointer): void{.importc: "QsciScintilla_virtualbase_dragEnterEvent".}
proc fcQsciScintilla_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_dragEnterEvent".}
proc fQsciScintilla_virtualbase_dragLeaveEvent(self: pointer, e: pointer): void{.importc: "QsciScintilla_virtualbase_dragLeaveEvent".}
proc fcQsciScintilla_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_dragLeaveEvent".}
proc fQsciScintilla_virtualbase_dragMoveEvent(self: pointer, e: pointer): void{.importc: "QsciScintilla_virtualbase_dragMoveEvent".}
proc fcQsciScintilla_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_dragMoveEvent".}
proc fQsciScintilla_virtualbase_dropEvent(self: pointer, e: pointer): void{.importc: "QsciScintilla_virtualbase_dropEvent".}
proc fcQsciScintilla_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_dropEvent".}
proc fQsciScintilla_virtualbase_focusInEvent(self: pointer, e: pointer): void{.importc: "QsciScintilla_virtualbase_focusInEvent".}
proc fcQsciScintilla_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_focusInEvent".}
proc fQsciScintilla_virtualbase_focusOutEvent(self: pointer, e: pointer): void{.importc: "QsciScintilla_virtualbase_focusOutEvent".}
proc fcQsciScintilla_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_focusOutEvent".}
proc fQsciScintilla_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QsciScintilla_virtualbase_focusNextPrevChild".}
proc fcQsciScintilla_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_focusNextPrevChild".}
proc fQsciScintilla_virtualbase_keyPressEvent(self: pointer, e: pointer): void{.importc: "QsciScintilla_virtualbase_keyPressEvent".}
proc fcQsciScintilla_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_keyPressEvent".}
proc fQsciScintilla_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QsciScintilla_virtualbase_inputMethodEvent".}
proc fcQsciScintilla_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_inputMethodEvent".}
proc fQsciScintilla_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QsciScintilla_virtualbase_inputMethodQuery".}
proc fcQsciScintilla_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_inputMethodQuery".}
proc fQsciScintilla_virtualbase_mouseDoubleClickEvent(self: pointer, e: pointer): void{.importc: "QsciScintilla_virtualbase_mouseDoubleClickEvent".}
proc fcQsciScintilla_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_mouseDoubleClickEvent".}
proc fQsciScintilla_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void{.importc: "QsciScintilla_virtualbase_mouseMoveEvent".}
proc fcQsciScintilla_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_mouseMoveEvent".}
proc fQsciScintilla_virtualbase_mousePressEvent(self: pointer, e: pointer): void{.importc: "QsciScintilla_virtualbase_mousePressEvent".}
proc fcQsciScintilla_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_mousePressEvent".}
proc fQsciScintilla_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void{.importc: "QsciScintilla_virtualbase_mouseReleaseEvent".}
proc fcQsciScintilla_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_mouseReleaseEvent".}
proc fQsciScintilla_virtualbase_paintEvent(self: pointer, e: pointer): void{.importc: "QsciScintilla_virtualbase_paintEvent".}
proc fcQsciScintilla_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_paintEvent".}
proc fQsciScintilla_virtualbase_resizeEvent(self: pointer, e: pointer): void{.importc: "QsciScintilla_virtualbase_resizeEvent".}
proc fcQsciScintilla_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_resizeEvent".}
proc fQsciScintilla_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QsciScintilla_virtualbase_scrollContentsBy".}
proc fcQsciScintilla_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_scrollContentsBy".}
proc fQsciScintilla_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QsciScintilla_virtualbase_minimumSizeHint".}
proc fcQsciScintilla_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_minimumSizeHint".}
proc fQsciScintilla_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QsciScintilla_virtualbase_sizeHint".}
proc fcQsciScintilla_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_sizeHint".}
proc fQsciScintilla_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QsciScintilla_virtualbase_setupViewport".}
proc fcQsciScintilla_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setupViewport".}
proc fQsciScintilla_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QsciScintilla_virtualbase_eventFilter".}
proc fcQsciScintilla_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_eventFilter".}
proc fQsciScintilla_virtualbase_viewportEvent(self: pointer, param1: pointer): bool{.importc: "QsciScintilla_virtualbase_viewportEvent".}
proc fcQsciScintilla_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_viewportEvent".}
proc fQsciScintilla_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QsciScintilla_virtualbase_viewportSizeHint".}
proc fcQsciScintilla_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_viewportSizeHint".}
proc fQsciScintilla_virtualbase_devType(self: pointer, ): cint{.importc: "QsciScintilla_virtualbase_devType".}
proc fcQsciScintilla_override_virtual_devType(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_devType".}
proc fQsciScintilla_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QsciScintilla_virtualbase_setVisible".}
proc fcQsciScintilla_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_setVisible".}
proc fQsciScintilla_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QsciScintilla_virtualbase_heightForWidth".}
proc fcQsciScintilla_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_heightForWidth".}
proc fQsciScintilla_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QsciScintilla_virtualbase_hasHeightForWidth".}
proc fcQsciScintilla_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_hasHeightForWidth".}
proc fQsciScintilla_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QsciScintilla_virtualbase_paintEngine".}
proc fcQsciScintilla_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_paintEngine".}
proc fQsciScintilla_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QsciScintilla_virtualbase_keyReleaseEvent".}
proc fcQsciScintilla_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_keyReleaseEvent".}
proc fQsciScintilla_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QsciScintilla_virtualbase_enterEvent".}
proc fcQsciScintilla_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_enterEvent".}
proc fQsciScintilla_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QsciScintilla_virtualbase_leaveEvent".}
proc fcQsciScintilla_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_leaveEvent".}
proc fQsciScintilla_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QsciScintilla_virtualbase_moveEvent".}
proc fcQsciScintilla_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_moveEvent".}
proc fQsciScintilla_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QsciScintilla_virtualbase_closeEvent".}
proc fcQsciScintilla_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_closeEvent".}
proc fQsciScintilla_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QsciScintilla_virtualbase_tabletEvent".}
proc fcQsciScintilla_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_tabletEvent".}
proc fQsciScintilla_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QsciScintilla_virtualbase_actionEvent".}
proc fcQsciScintilla_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_actionEvent".}
proc fQsciScintilla_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QsciScintilla_virtualbase_showEvent".}
proc fcQsciScintilla_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_showEvent".}
proc fQsciScintilla_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QsciScintilla_virtualbase_hideEvent".}
proc fcQsciScintilla_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_hideEvent".}
proc fQsciScintilla_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QsciScintilla_virtualbase_nativeEvent".}
proc fcQsciScintilla_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_nativeEvent".}
proc fQsciScintilla_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QsciScintilla_virtualbase_metric".}
proc fcQsciScintilla_override_virtual_metric(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_metric".}
proc fQsciScintilla_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QsciScintilla_virtualbase_initPainter".}
proc fcQsciScintilla_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_initPainter".}
proc fQsciScintilla_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QsciScintilla_virtualbase_redirected".}
proc fcQsciScintilla_override_virtual_redirected(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_redirected".}
proc fQsciScintilla_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QsciScintilla_virtualbase_sharedPainter".}
proc fcQsciScintilla_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_sharedPainter".}
proc fQsciScintilla_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciScintilla_virtualbase_timerEvent".}
proc fcQsciScintilla_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_timerEvent".}
proc fQsciScintilla_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciScintilla_virtualbase_childEvent".}
proc fcQsciScintilla_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_childEvent".}
proc fQsciScintilla_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciScintilla_virtualbase_customEvent".}
proc fcQsciScintilla_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_customEvent".}
proc fQsciScintilla_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciScintilla_virtualbase_connectNotify".}
proc fcQsciScintilla_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_connectNotify".}
proc fQsciScintilla_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciScintilla_virtualbase_disconnectNotify".}
proc fcQsciScintilla_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_disconnectNotify".}
proc fcQsciScintilla_staticMetaObject(): pointer {.importc: "QsciScintilla_staticMetaObject".}
proc fcQsciScintilla_delete(self: pointer) {.importc: "QsciScintilla_delete".}


func init*(T: type gen_qsciscintilla_types.QsciScintilla, h: ptr cQsciScintilla): gen_qsciscintilla_types.QsciScintilla =
  T(h: h)
proc create*(T: type gen_qsciscintilla_types.QsciScintilla, parent: gen_qwidget.QWidget): gen_qsciscintilla_types.QsciScintilla =
  gen_qsciscintilla_types.QsciScintilla.init(fcQsciScintilla_new(parent.h))

proc create*(T: type gen_qsciscintilla_types.QsciScintilla, ): gen_qsciscintilla_types.QsciScintilla =
  gen_qsciscintilla_types.QsciScintilla.init(fcQsciScintilla_new2())

proc metaObject*(self: gen_qsciscintilla_types.QsciScintilla, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciScintilla_metaObject(self.h))

proc metacast*(self: gen_qsciscintilla_types.QsciScintilla, param1: cstring): pointer =
  fcQsciScintilla_metacast(self.h, param1)

proc metacall*(self: gen_qsciscintilla_types.QsciScintilla, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciScintilla_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsciscintilla_types.QsciScintilla, s: cstring): string =
  let v_ms = fcQsciScintilla_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsciscintilla_types.QsciScintilla, s: cstring): string =
  let v_ms = fcQsciScintilla_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc apiContext*(self: gen_qsciscintilla_types.QsciScintilla, pos: cint, context_start: ptr cint, last_word_start: ptr cint): seq[string] =
  var v_ma = fcQsciScintilla_apiContext(self.h, pos, context_start, last_word_start)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc annotate*(self: gen_qsciscintilla_types.QsciScintilla, line: cint, text: string, style: cint): void =
  fcQsciScintilla_annotate(self.h, line, struct_miqt_string(data: text, len: csize_t(len(text))), style)

proc annotate*(self: gen_qsciscintilla_types.QsciScintilla, line: cint, text: string, style: gen_qscistyle.QsciStyle): void =
  fcQsciScintilla_annotate2(self.h, line, struct_miqt_string(data: text, len: csize_t(len(text))), style.h)

proc annotate*(self: gen_qsciscintilla_types.QsciScintilla, line: cint, text: gen_qscistyledtext.QsciStyledText): void =
  fcQsciScintilla_annotate3(self.h, line, text.h)

proc annotation*(self: gen_qsciscintilla_types.QsciScintilla, line: cint): string =
  let v_ms = fcQsciScintilla_annotation(self.h, line)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc annotationDisplay*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  cint(fcQsciScintilla_annotationDisplay(self.h))

proc clearAnnotations*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_clearAnnotations(self.h)

proc autoCompletionCaseSensitivity*(self: gen_qsciscintilla_types.QsciScintilla, ): bool =
  fcQsciScintilla_autoCompletionCaseSensitivity(self.h)

proc autoCompletionFillupsEnabled*(self: gen_qsciscintilla_types.QsciScintilla, ): bool =
  fcQsciScintilla_autoCompletionFillupsEnabled(self.h)

proc autoCompletionReplaceWord*(self: gen_qsciscintilla_types.QsciScintilla, ): bool =
  fcQsciScintilla_autoCompletionReplaceWord(self.h)

proc autoCompletionShowSingle*(self: gen_qsciscintilla_types.QsciScintilla, ): bool =
  fcQsciScintilla_autoCompletionShowSingle(self.h)

proc autoCompletionSource*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  cint(fcQsciScintilla_autoCompletionSource(self.h))

proc autoCompletionThreshold*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  fcQsciScintilla_autoCompletionThreshold(self.h)

proc autoCompletionUseSingle*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  cint(fcQsciScintilla_autoCompletionUseSingle(self.h))

proc autoIndent*(self: gen_qsciscintilla_types.QsciScintilla, ): bool =
  fcQsciScintilla_autoIndent(self.h)

proc backspaceUnindents*(self: gen_qsciscintilla_types.QsciScintilla, ): bool =
  fcQsciScintilla_backspaceUnindents(self.h)

proc beginUndoAction*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_beginUndoAction(self.h)

proc braceMatching*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  cint(fcQsciScintilla_braceMatching(self.h))

proc bytes*(self: gen_qsciscintilla_types.QsciScintilla, start: cint, endVal: cint): seq[byte] =
  var v_bytearray = fcQsciScintilla_bytes(self.h, start, endVal)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc callTipsPosition*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  cint(fcQsciScintilla_callTipsPosition(self.h))

proc callTipsStyle*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  cint(fcQsciScintilla_callTipsStyle(self.h))

proc callTipsVisible*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  fcQsciScintilla_callTipsVisible(self.h)

proc cancelFind*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_cancelFind(self.h)

proc cancelList*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_cancelList(self.h)

proc caseSensitive*(self: gen_qsciscintilla_types.QsciScintilla, ): bool =
  fcQsciScintilla_caseSensitive(self.h)

proc clearFolds*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_clearFolds(self.h)

proc clearIndicatorRange*(self: gen_qsciscintilla_types.QsciScintilla, lineFrom: cint, indexFrom: cint, lineTo: cint, indexTo: cint, indicatorNumber: cint): void =
  fcQsciScintilla_clearIndicatorRange(self.h, lineFrom, indexFrom, lineTo, indexTo, indicatorNumber)

proc clearRegisteredImages*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_clearRegisteredImages(self.h)

proc color*(self: gen_qsciscintilla_types.QsciScintilla, ): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciScintilla_color(self.h))

proc contractedFolds*(self: gen_qsciscintilla_types.QsciScintilla, ): seq[cint] =
  var v_ma = fcQsciScintilla_contractedFolds(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc convertEols*(self: gen_qsciscintilla_types.QsciScintilla, mode: cint): void =
  fcQsciScintilla_convertEols(self.h, cint(mode))

proc createStandardContextMenu*(self: gen_qsciscintilla_types.QsciScintilla, ): gen_qmenu.QMenu =
  gen_qmenu.QMenu(h: fcQsciScintilla_createStandardContextMenu(self.h))

proc document*(self: gen_qsciscintilla_types.QsciScintilla, ): gen_qscidocument.QsciDocument =
  gen_qscidocument.QsciDocument(h: fcQsciScintilla_document(self.h))

proc endUndoAction*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_endUndoAction(self.h)

proc edgeColor*(self: gen_qsciscintilla_types.QsciScintilla, ): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciScintilla_edgeColor(self.h))

proc edgeColumn*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  fcQsciScintilla_edgeColumn(self.h)

proc edgeMode*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  cint(fcQsciScintilla_edgeMode(self.h))

proc setFont*(self: gen_qsciscintilla_types.QsciScintilla, f: gen_qfont.QFont): void =
  fcQsciScintilla_setFont(self.h, f.h)

proc eolMode*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  cint(fcQsciScintilla_eolMode(self.h))

proc eolVisibility*(self: gen_qsciscintilla_types.QsciScintilla, ): bool =
  fcQsciScintilla_eolVisibility(self.h)

proc extraAscent*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  fcQsciScintilla_extraAscent(self.h)

proc extraDescent*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  fcQsciScintilla_extraDescent(self.h)

proc fillIndicatorRange*(self: gen_qsciscintilla_types.QsciScintilla, lineFrom: cint, indexFrom: cint, lineTo: cint, indexTo: cint, indicatorNumber: cint): void =
  fcQsciScintilla_fillIndicatorRange(self.h, lineFrom, indexFrom, lineTo, indexTo, indicatorNumber)

proc findFirst*(self: gen_qsciscintilla_types.QsciScintilla, expr: string, re: bool, cs: bool, wo: bool, wrap: bool, forward: bool, line: cint, index: cint, show: bool, posix: bool, cxx11: bool): bool =
  fcQsciScintilla_findFirst(self.h, struct_miqt_string(data: expr, len: csize_t(len(expr))), re, cs, wo, wrap, forward, line, index, show, posix, cxx11)

proc findFirstInSelection*(self: gen_qsciscintilla_types.QsciScintilla, expr: string, re: bool, cs: bool, wo: bool, forward: bool, show: bool, posix: bool, cxx11: bool): bool =
  fcQsciScintilla_findFirstInSelection(self.h, struct_miqt_string(data: expr, len: csize_t(len(expr))), re, cs, wo, forward, show, posix, cxx11)

proc findNext*(self: gen_qsciscintilla_types.QsciScintilla, ): bool =
  fcQsciScintilla_findNext(self.h)

proc findMatchingBrace*(self: gen_qsciscintilla_types.QsciScintilla, brace: ptr clong, other: ptr clong, mode: cint): bool =
  fcQsciScintilla_findMatchingBrace(self.h, brace, other, cint(mode))

proc firstVisibleLine*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  fcQsciScintilla_firstVisibleLine(self.h)

proc folding*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  cint(fcQsciScintilla_folding(self.h))

proc getCursorPosition*(self: gen_qsciscintilla_types.QsciScintilla, line: ptr cint, index: ptr cint): void =
  fcQsciScintilla_getCursorPosition(self.h, line, index)

proc getSelection*(self: gen_qsciscintilla_types.QsciScintilla, lineFrom: ptr cint, indexFrom: ptr cint, lineTo: ptr cint, indexTo: ptr cint): void =
  fcQsciScintilla_getSelection(self.h, lineFrom, indexFrom, lineTo, indexTo)

proc hasSelectedText*(self: gen_qsciscintilla_types.QsciScintilla, ): bool =
  fcQsciScintilla_hasSelectedText(self.h)

proc indentation*(self: gen_qsciscintilla_types.QsciScintilla, line: cint): cint =
  fcQsciScintilla_indentation(self.h, line)

proc indentationGuides*(self: gen_qsciscintilla_types.QsciScintilla, ): bool =
  fcQsciScintilla_indentationGuides(self.h)

proc indentationsUseTabs*(self: gen_qsciscintilla_types.QsciScintilla, ): bool =
  fcQsciScintilla_indentationsUseTabs(self.h)

proc indentationWidth*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  fcQsciScintilla_indentationWidth(self.h)

proc indicatorDefine*(self: gen_qsciscintilla_types.QsciScintilla, style: cint): cint =
  fcQsciScintilla_indicatorDefine(self.h, cint(style))

proc indicatorDrawUnder*(self: gen_qsciscintilla_types.QsciScintilla, indicatorNumber: cint): bool =
  fcQsciScintilla_indicatorDrawUnder(self.h, indicatorNumber)

proc isCallTipActive*(self: gen_qsciscintilla_types.QsciScintilla, ): bool =
  fcQsciScintilla_isCallTipActive(self.h)

proc isListActive*(self: gen_qsciscintilla_types.QsciScintilla, ): bool =
  fcQsciScintilla_isListActive(self.h)

proc isModified*(self: gen_qsciscintilla_types.QsciScintilla, ): bool =
  fcQsciScintilla_isModified(self.h)

proc isReadOnly*(self: gen_qsciscintilla_types.QsciScintilla, ): bool =
  fcQsciScintilla_isReadOnly(self.h)

proc isRedoAvailable*(self: gen_qsciscintilla_types.QsciScintilla, ): bool =
  fcQsciScintilla_isRedoAvailable(self.h)

proc isUndoAvailable*(self: gen_qsciscintilla_types.QsciScintilla, ): bool =
  fcQsciScintilla_isUndoAvailable(self.h)

proc isUtf8*(self: gen_qsciscintilla_types.QsciScintilla, ): bool =
  fcQsciScintilla_isUtf8(self.h)

proc isWordCharacter*(self: gen_qsciscintilla_types.QsciScintilla, ch: cchar): bool =
  fcQsciScintilla_isWordCharacter(self.h, ch)

proc lineAt*(self: gen_qsciscintilla_types.QsciScintilla, point: gen_qpoint.QPoint): cint =
  fcQsciScintilla_lineAt(self.h, point.h)

proc lineIndexFromPosition*(self: gen_qsciscintilla_types.QsciScintilla, position: cint, line: ptr cint, index: ptr cint): void =
  fcQsciScintilla_lineIndexFromPosition(self.h, position, line, index)

proc lineLength*(self: gen_qsciscintilla_types.QsciScintilla, line: cint): cint =
  fcQsciScintilla_lineLength(self.h, line)

proc lines*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  fcQsciScintilla_lines(self.h)

proc length*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  fcQsciScintilla_length(self.h)

proc lexer*(self: gen_qsciscintilla_types.QsciScintilla, ): gen_qscilexer.QsciLexer =
  gen_qscilexer.QsciLexer(h: fcQsciScintilla_lexer(self.h))

proc marginBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciScintilla_marginBackgroundColor(self.h, margin))

proc marginLineNumbers*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint): bool =
  fcQsciScintilla_marginLineNumbers(self.h, margin)

proc marginMarkerMask*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint): cint =
  fcQsciScintilla_marginMarkerMask(self.h, margin)

proc marginOptions*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  fcQsciScintilla_marginOptions(self.h)

proc marginSensitivity*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint): bool =
  fcQsciScintilla_marginSensitivity(self.h, margin)

proc marginType*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint): cint =
  cint(fcQsciScintilla_marginType(self.h, margin))

proc marginWidth*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint): cint =
  fcQsciScintilla_marginWidth(self.h, margin)

proc margins*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  fcQsciScintilla_margins(self.h)

proc markerDefine*(self: gen_qsciscintilla_types.QsciScintilla, sym: cint): cint =
  fcQsciScintilla_markerDefine(self.h, cint(sym))

proc markerDefine*(self: gen_qsciscintilla_types.QsciScintilla, ch: cchar): cint =
  fcQsciScintilla_markerDefineWithCh(self.h, ch)

proc markerDefine*(self: gen_qsciscintilla_types.QsciScintilla, pm: gen_qpixmap.QPixmap): cint =
  fcQsciScintilla_markerDefineWithPm(self.h, pm.h)

proc markerDefine*(self: gen_qsciscintilla_types.QsciScintilla, im: gen_qimage.QImage): cint =
  fcQsciScintilla_markerDefineWithIm(self.h, im.h)

proc markerAdd*(self: gen_qsciscintilla_types.QsciScintilla, linenr: cint, markerNumber: cint): cint =
  fcQsciScintilla_markerAdd(self.h, linenr, markerNumber)

proc markersAtLine*(self: gen_qsciscintilla_types.QsciScintilla, linenr: cint): cuint =
  fcQsciScintilla_markersAtLine(self.h, linenr)

proc markerDelete*(self: gen_qsciscintilla_types.QsciScintilla, linenr: cint): void =
  fcQsciScintilla_markerDelete(self.h, linenr)

proc markerDeleteAll*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_markerDeleteAll(self.h)

proc markerDeleteHandle*(self: gen_qsciscintilla_types.QsciScintilla, mhandle: cint): void =
  fcQsciScintilla_markerDeleteHandle(self.h, mhandle)

proc markerLine*(self: gen_qsciscintilla_types.QsciScintilla, mhandle: cint): cint =
  fcQsciScintilla_markerLine(self.h, mhandle)

proc markerFindNext*(self: gen_qsciscintilla_types.QsciScintilla, linenr: cint, mask: cuint): cint =
  fcQsciScintilla_markerFindNext(self.h, linenr, mask)

proc markerFindPrevious*(self: gen_qsciscintilla_types.QsciScintilla, linenr: cint, mask: cuint): cint =
  fcQsciScintilla_markerFindPrevious(self.h, linenr, mask)

proc overwriteMode*(self: gen_qsciscintilla_types.QsciScintilla, ): bool =
  fcQsciScintilla_overwriteMode(self.h)

proc paper*(self: gen_qsciscintilla_types.QsciScintilla, ): gen_qcolor.QColor =
  gen_qcolor.QColor(h: fcQsciScintilla_paper(self.h))

proc positionFromLineIndex*(self: gen_qsciscintilla_types.QsciScintilla, line: cint, index: cint): cint =
  fcQsciScintilla_positionFromLineIndex(self.h, line, index)

proc read*(self: gen_qsciscintilla_types.QsciScintilla, io: gen_qiodevice.QIODevice): bool =
  fcQsciScintilla_read(self.h, io.h)

proc recolor*(self: gen_qsciscintilla_types.QsciScintilla, start: cint, endVal: cint): void =
  fcQsciScintilla_recolor(self.h, start, endVal)

proc registerImage*(self: gen_qsciscintilla_types.QsciScintilla, id: cint, pm: gen_qpixmap.QPixmap): void =
  fcQsciScintilla_registerImage(self.h, id, pm.h)

proc registerImage*(self: gen_qsciscintilla_types.QsciScintilla, id: cint, im: gen_qimage.QImage): void =
  fcQsciScintilla_registerImage2(self.h, id, im.h)

proc replace*(self: gen_qsciscintilla_types.QsciScintilla, replaceStr: string): void =
  fcQsciScintilla_replace(self.h, struct_miqt_string(data: replaceStr, len: csize_t(len(replaceStr))))

proc resetFoldMarginColors*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_resetFoldMarginColors(self.h)

proc resetHotspotBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_resetHotspotBackgroundColor(self.h)

proc resetHotspotForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_resetHotspotForegroundColor(self.h)

proc scrollWidth*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  fcQsciScintilla_scrollWidth(self.h)

proc scrollWidthTracking*(self: gen_qsciscintilla_types.QsciScintilla, ): bool =
  fcQsciScintilla_scrollWidthTracking(self.h)

proc setFoldMarginColors*(self: gen_qsciscintilla_types.QsciScintilla, fore: gen_qcolor.QColor, back: gen_qcolor.QColor): void =
  fcQsciScintilla_setFoldMarginColors(self.h, fore.h, back.h)

proc setAnnotationDisplay*(self: gen_qsciscintilla_types.QsciScintilla, display: cint): void =
  fcQsciScintilla_setAnnotationDisplay(self.h, cint(display))

proc setAutoCompletionFillupsEnabled*(self: gen_qsciscintilla_types.QsciScintilla, enabled: bool): void =
  fcQsciScintilla_setAutoCompletionFillupsEnabled(self.h, enabled)

proc setAutoCompletionFillups*(self: gen_qsciscintilla_types.QsciScintilla, fillups: cstring): void =
  fcQsciScintilla_setAutoCompletionFillups(self.h, fillups)

proc setAutoCompletionWordSeparators*(self: gen_qsciscintilla_types.QsciScintilla, separators: seq[string]): void =
  var separators_CArray = newSeq[struct_miqt_string](len(separators))
  for i in 0..<len(separators):
    separators_CArray[i] = struct_miqt_string(data: separators[i], len: csize_t(len(separators[i])))

  fcQsciScintilla_setAutoCompletionWordSeparators(self.h, struct_miqt_array(len: csize_t(len(separators)), data: if len(separators) == 0: nil else: addr(separators_CArray[0])))

proc setCallTipsBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fcQsciScintilla_setCallTipsBackgroundColor(self.h, col.h)

proc setCallTipsForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fcQsciScintilla_setCallTipsForegroundColor(self.h, col.h)

proc setCallTipsHighlightColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fcQsciScintilla_setCallTipsHighlightColor(self.h, col.h)

proc setCallTipsPosition*(self: gen_qsciscintilla_types.QsciScintilla, position: cint): void =
  fcQsciScintilla_setCallTipsPosition(self.h, cint(position))

proc setCallTipsStyle*(self: gen_qsciscintilla_types.QsciScintilla, style: cint): void =
  fcQsciScintilla_setCallTipsStyle(self.h, cint(style))

proc setCallTipsVisible*(self: gen_qsciscintilla_types.QsciScintilla, nr: cint): void =
  fcQsciScintilla_setCallTipsVisible(self.h, nr)

proc setContractedFolds*(self: gen_qsciscintilla_types.QsciScintilla, folds: seq[cint]): void =
  var folds_CArray = newSeq[cint](len(folds))
  for i in 0..<len(folds):
    folds_CArray[i] = folds[i]

  fcQsciScintilla_setContractedFolds(self.h, struct_miqt_array(len: csize_t(len(folds)), data: if len(folds) == 0: nil else: addr(folds_CArray[0])))

proc setDocument*(self: gen_qsciscintilla_types.QsciScintilla, document: gen_qscidocument.QsciDocument): void =
  fcQsciScintilla_setDocument(self.h, document.h)

proc addEdgeColumn*(self: gen_qsciscintilla_types.QsciScintilla, colnr: cint, col: gen_qcolor.QColor): void =
  fcQsciScintilla_addEdgeColumn(self.h, colnr, col.h)

proc clearEdgeColumns*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_clearEdgeColumns(self.h)

proc setEdgeColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fcQsciScintilla_setEdgeColor(self.h, col.h)

proc setEdgeColumn*(self: gen_qsciscintilla_types.QsciScintilla, colnr: cint): void =
  fcQsciScintilla_setEdgeColumn(self.h, colnr)

proc setEdgeMode*(self: gen_qsciscintilla_types.QsciScintilla, mode: cint): void =
  fcQsciScintilla_setEdgeMode(self.h, cint(mode))

proc setFirstVisibleLine*(self: gen_qsciscintilla_types.QsciScintilla, linenr: cint): void =
  fcQsciScintilla_setFirstVisibleLine(self.h, linenr)

proc setIndicatorDrawUnder*(self: gen_qsciscintilla_types.QsciScintilla, under: bool): void =
  fcQsciScintilla_setIndicatorDrawUnder(self.h, under)

proc setIndicatorForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fcQsciScintilla_setIndicatorForegroundColor(self.h, col.h)

proc setIndicatorHoverForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fcQsciScintilla_setIndicatorHoverForegroundColor(self.h, col.h)

proc setIndicatorHoverStyle*(self: gen_qsciscintilla_types.QsciScintilla, style: cint): void =
  fcQsciScintilla_setIndicatorHoverStyle(self.h, cint(style))

proc setIndicatorOutlineColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fcQsciScintilla_setIndicatorOutlineColor(self.h, col.h)

proc setMarginBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint, col: gen_qcolor.QColor): void =
  fcQsciScintilla_setMarginBackgroundColor(self.h, margin, col.h)

proc setMarginOptions*(self: gen_qsciscintilla_types.QsciScintilla, options: cint): void =
  fcQsciScintilla_setMarginOptions(self.h, options)

proc setMarginText*(self: gen_qsciscintilla_types.QsciScintilla, line: cint, text: string, style: cint): void =
  fcQsciScintilla_setMarginText(self.h, line, struct_miqt_string(data: text, len: csize_t(len(text))), style)

proc setMarginText*(self: gen_qsciscintilla_types.QsciScintilla, line: cint, text: string, style: gen_qscistyle.QsciStyle): void =
  fcQsciScintilla_setMarginText2(self.h, line, struct_miqt_string(data: text, len: csize_t(len(text))), style.h)

proc setMarginText*(self: gen_qsciscintilla_types.QsciScintilla, line: cint, text: gen_qscistyledtext.QsciStyledText): void =
  fcQsciScintilla_setMarginText3(self.h, line, text.h)

proc setMarginType*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint, typeVal: cint): void =
  fcQsciScintilla_setMarginType(self.h, margin, cint(typeVal))

proc clearMarginText*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_clearMarginText(self.h)

proc setMargins*(self: gen_qsciscintilla_types.QsciScintilla, margins: cint): void =
  fcQsciScintilla_setMargins(self.h, margins)

proc setMarkerBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fcQsciScintilla_setMarkerBackgroundColor(self.h, col.h)

proc setMarkerForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fcQsciScintilla_setMarkerForegroundColor(self.h, col.h)

proc setMatchedBraceBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fcQsciScintilla_setMatchedBraceBackgroundColor(self.h, col.h)

proc setMatchedBraceForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fcQsciScintilla_setMatchedBraceForegroundColor(self.h, col.h)

proc setMatchedBraceIndicator*(self: gen_qsciscintilla_types.QsciScintilla, indicatorNumber: cint): void =
  fcQsciScintilla_setMatchedBraceIndicator(self.h, indicatorNumber)

proc resetMatchedBraceIndicator*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_resetMatchedBraceIndicator(self.h)

proc setScrollWidth*(self: gen_qsciscintilla_types.QsciScintilla, pixelWidth: cint): void =
  fcQsciScintilla_setScrollWidth(self.h, pixelWidth)

proc setScrollWidthTracking*(self: gen_qsciscintilla_types.QsciScintilla, enabled: bool): void =
  fcQsciScintilla_setScrollWidthTracking(self.h, enabled)

proc setTabDrawMode*(self: gen_qsciscintilla_types.QsciScintilla, mode: cint): void =
  fcQsciScintilla_setTabDrawMode(self.h, cint(mode))

proc setUnmatchedBraceBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fcQsciScintilla_setUnmatchedBraceBackgroundColor(self.h, col.h)

proc setUnmatchedBraceForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fcQsciScintilla_setUnmatchedBraceForegroundColor(self.h, col.h)

proc setUnmatchedBraceIndicator*(self: gen_qsciscintilla_types.QsciScintilla, indicatorNumber: cint): void =
  fcQsciScintilla_setUnmatchedBraceIndicator(self.h, indicatorNumber)

proc resetUnmatchedBraceIndicator*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_resetUnmatchedBraceIndicator(self.h)

proc setWrapVisualFlags*(self: gen_qsciscintilla_types.QsciScintilla, endFlag: cint): void =
  fcQsciScintilla_setWrapVisualFlags(self.h, cint(endFlag))

proc selectedText*(self: gen_qsciscintilla_types.QsciScintilla, ): string =
  let v_ms = fcQsciScintilla_selectedText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc selectionToEol*(self: gen_qsciscintilla_types.QsciScintilla, ): bool =
  fcQsciScintilla_selectionToEol(self.h)

proc setHotspotBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fcQsciScintilla_setHotspotBackgroundColor(self.h, col.h)

proc setHotspotForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fcQsciScintilla_setHotspotForegroundColor(self.h, col.h)

proc setHotspotUnderline*(self: gen_qsciscintilla_types.QsciScintilla, enable: bool): void =
  fcQsciScintilla_setHotspotUnderline(self.h, enable)

proc setHotspotWrap*(self: gen_qsciscintilla_types.QsciScintilla, enable: bool): void =
  fcQsciScintilla_setHotspotWrap(self.h, enable)

proc setSelectionToEol*(self: gen_qsciscintilla_types.QsciScintilla, filled: bool): void =
  fcQsciScintilla_setSelectionToEol(self.h, filled)

proc setExtraAscent*(self: gen_qsciscintilla_types.QsciScintilla, extra: cint): void =
  fcQsciScintilla_setExtraAscent(self.h, extra)

proc setExtraDescent*(self: gen_qsciscintilla_types.QsciScintilla, extra: cint): void =
  fcQsciScintilla_setExtraDescent(self.h, extra)

proc setOverwriteMode*(self: gen_qsciscintilla_types.QsciScintilla, overwrite: bool): void =
  fcQsciScintilla_setOverwriteMode(self.h, overwrite)

proc setWhitespaceBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fcQsciScintilla_setWhitespaceBackgroundColor(self.h, col.h)

proc setWhitespaceForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fcQsciScintilla_setWhitespaceForegroundColor(self.h, col.h)

proc setWhitespaceSize*(self: gen_qsciscintilla_types.QsciScintilla, size: cint): void =
  fcQsciScintilla_setWhitespaceSize(self.h, size)

proc setWrapIndentMode*(self: gen_qsciscintilla_types.QsciScintilla, mode: cint): void =
  fcQsciScintilla_setWrapIndentMode(self.h, cint(mode))

proc showUserList*(self: gen_qsciscintilla_types.QsciScintilla, id: cint, list: seq[string]): void =
  var list_CArray = newSeq[struct_miqt_string](len(list))
  for i in 0..<len(list):
    list_CArray[i] = struct_miqt_string(data: list[i], len: csize_t(len(list[i])))

  fcQsciScintilla_showUserList(self.h, id, struct_miqt_array(len: csize_t(len(list)), data: if len(list) == 0: nil else: addr(list_CArray[0])))

proc standardCommands*(self: gen_qsciscintilla_types.QsciScintilla, ): gen_qscicommandset.QsciCommandSet =
  gen_qscicommandset.QsciCommandSet(h: fcQsciScintilla_standardCommands(self.h))

proc tabDrawMode*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  cint(fcQsciScintilla_tabDrawMode(self.h))

proc tabIndents*(self: gen_qsciscintilla_types.QsciScintilla, ): bool =
  fcQsciScintilla_tabIndents(self.h)

proc tabWidth*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  fcQsciScintilla_tabWidth(self.h)

proc text*(self: gen_qsciscintilla_types.QsciScintilla, ): string =
  let v_ms = fcQsciScintilla_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc text*(self: gen_qsciscintilla_types.QsciScintilla, line: cint): string =
  let v_ms = fcQsciScintilla_textWithLine(self.h, line)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc text*(self: gen_qsciscintilla_types.QsciScintilla, start: cint, endVal: cint): string =
  let v_ms = fcQsciScintilla_text2(self.h, start, endVal)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc textHeight*(self: gen_qsciscintilla_types.QsciScintilla, linenr: cint): cint =
  fcQsciScintilla_textHeight(self.h, linenr)

proc whitespaceSize*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  fcQsciScintilla_whitespaceSize(self.h)

proc whitespaceVisibility*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  cint(fcQsciScintilla_whitespaceVisibility(self.h))

proc wordAtLineIndex*(self: gen_qsciscintilla_types.QsciScintilla, line: cint, index: cint): string =
  let v_ms = fcQsciScintilla_wordAtLineIndex(self.h, line, index)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc wordAtPoint*(self: gen_qsciscintilla_types.QsciScintilla, point: gen_qpoint.QPoint): string =
  let v_ms = fcQsciScintilla_wordAtPoint(self.h, point.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc wordCharacters*(self: gen_qsciscintilla_types.QsciScintilla, ): cstring =
  (fcQsciScintilla_wordCharacters(self.h))

proc wrapMode*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  cint(fcQsciScintilla_wrapMode(self.h))

proc wrapIndentMode*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  cint(fcQsciScintilla_wrapIndentMode(self.h))

proc write*(self: gen_qsciscintilla_types.QsciScintilla, io: gen_qiodevice.QIODevice): bool =
  fcQsciScintilla_write(self.h, io.h)

proc append*(self: gen_qsciscintilla_types.QsciScintilla, text: string): void =
  fcQsciScintilla_append(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc autoCompleteFromAll*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_autoCompleteFromAll(self.h)

proc autoCompleteFromAPIs*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_autoCompleteFromAPIs(self.h)

proc autoCompleteFromDocument*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_autoCompleteFromDocument(self.h)

proc callTip*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_callTip(self.h)

proc clear*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_clear(self.h)

proc copy*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_copy(self.h)

proc cut*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_cut(self.h)

proc ensureCursorVisible*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_ensureCursorVisible(self.h)

proc ensureLineVisible*(self: gen_qsciscintilla_types.QsciScintilla, line: cint): void =
  fcQsciScintilla_ensureLineVisible(self.h, line)

proc foldAll*(self: gen_qsciscintilla_types.QsciScintilla, children: bool): void =
  fcQsciScintilla_foldAll(self.h, children)

proc foldLine*(self: gen_qsciscintilla_types.QsciScintilla, line: cint): void =
  fcQsciScintilla_foldLine(self.h, line)

proc indent*(self: gen_qsciscintilla_types.QsciScintilla, line: cint): void =
  fcQsciScintilla_indent(self.h, line)

proc insert*(self: gen_qsciscintilla_types.QsciScintilla, text: string): void =
  fcQsciScintilla_insert(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc insertAt*(self: gen_qsciscintilla_types.QsciScintilla, text: string, line: cint, index: cint): void =
  fcQsciScintilla_insertAt(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), line, index)

proc moveToMatchingBrace*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_moveToMatchingBrace(self.h)

proc paste*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_paste(self.h)

proc redo*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_redo(self.h)

proc removeSelectedText*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_removeSelectedText(self.h)

proc replaceSelectedText*(self: gen_qsciscintilla_types.QsciScintilla, text: string): void =
  fcQsciScintilla_replaceSelectedText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc resetSelectionBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_resetSelectionBackgroundColor(self.h)

proc resetSelectionForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_resetSelectionForegroundColor(self.h)

proc selectAll*(self: gen_qsciscintilla_types.QsciScintilla, select: bool): void =
  fcQsciScintilla_selectAll(self.h, select)

proc selectToMatchingBrace*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_selectToMatchingBrace(self.h)

proc setAutoCompletionCaseSensitivity*(self: gen_qsciscintilla_types.QsciScintilla, cs: bool): void =
  fcQsciScintilla_setAutoCompletionCaseSensitivity(self.h, cs)

proc setAutoCompletionReplaceWord*(self: gen_qsciscintilla_types.QsciScintilla, replace: bool): void =
  fcQsciScintilla_setAutoCompletionReplaceWord(self.h, replace)

proc setAutoCompletionShowSingle*(self: gen_qsciscintilla_types.QsciScintilla, single: bool): void =
  fcQsciScintilla_setAutoCompletionShowSingle(self.h, single)

proc setAutoCompletionSource*(self: gen_qsciscintilla_types.QsciScintilla, source: cint): void =
  fcQsciScintilla_setAutoCompletionSource(self.h, cint(source))

proc setAutoCompletionThreshold*(self: gen_qsciscintilla_types.QsciScintilla, thresh: cint): void =
  fcQsciScintilla_setAutoCompletionThreshold(self.h, thresh)

proc setAutoCompletionUseSingle*(self: gen_qsciscintilla_types.QsciScintilla, single: cint): void =
  fcQsciScintilla_setAutoCompletionUseSingle(self.h, cint(single))

proc setAutoIndent*(self: gen_qsciscintilla_types.QsciScintilla, autoindent: bool): void =
  fcQsciScintilla_setAutoIndent(self.h, autoindent)

proc setBraceMatching*(self: gen_qsciscintilla_types.QsciScintilla, bm: cint): void =
  fcQsciScintilla_setBraceMatching(self.h, cint(bm))

proc setBackspaceUnindents*(self: gen_qsciscintilla_types.QsciScintilla, unindent: bool): void =
  fcQsciScintilla_setBackspaceUnindents(self.h, unindent)

proc setCaretForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fcQsciScintilla_setCaretForegroundColor(self.h, col.h)

proc setCaretLineBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fcQsciScintilla_setCaretLineBackgroundColor(self.h, col.h)

proc setCaretLineFrameWidth*(self: gen_qsciscintilla_types.QsciScintilla, width: cint): void =
  fcQsciScintilla_setCaretLineFrameWidth(self.h, width)

proc setCaretLineVisible*(self: gen_qsciscintilla_types.QsciScintilla, enable: bool): void =
  fcQsciScintilla_setCaretLineVisible(self.h, enable)

proc setCaretWidth*(self: gen_qsciscintilla_types.QsciScintilla, width: cint): void =
  fcQsciScintilla_setCaretWidth(self.h, width)

proc setColor*(self: gen_qsciscintilla_types.QsciScintilla, c: gen_qcolor.QColor): void =
  fcQsciScintilla_setColor(self.h, c.h)

proc setCursorPosition*(self: gen_qsciscintilla_types.QsciScintilla, line: cint, index: cint): void =
  fcQsciScintilla_setCursorPosition(self.h, line, index)

proc setEolMode*(self: gen_qsciscintilla_types.QsciScintilla, mode: cint): void =
  fcQsciScintilla_setEolMode(self.h, cint(mode))

proc setEolVisibility*(self: gen_qsciscintilla_types.QsciScintilla, visible: bool): void =
  fcQsciScintilla_setEolVisibility(self.h, visible)

proc setFolding*(self: gen_qsciscintilla_types.QsciScintilla, fold: cint, margin: cint): void =
  fcQsciScintilla_setFolding(self.h, cint(fold), margin)

proc setIndentation*(self: gen_qsciscintilla_types.QsciScintilla, line: cint, indentation: cint): void =
  fcQsciScintilla_setIndentation(self.h, line, indentation)

proc setIndentationGuides*(self: gen_qsciscintilla_types.QsciScintilla, enable: bool): void =
  fcQsciScintilla_setIndentationGuides(self.h, enable)

proc setIndentationGuidesBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fcQsciScintilla_setIndentationGuidesBackgroundColor(self.h, col.h)

proc setIndentationGuidesForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fcQsciScintilla_setIndentationGuidesForegroundColor(self.h, col.h)

proc setIndentationsUseTabs*(self: gen_qsciscintilla_types.QsciScintilla, tabs: bool): void =
  fcQsciScintilla_setIndentationsUseTabs(self.h, tabs)

proc setIndentationWidth*(self: gen_qsciscintilla_types.QsciScintilla, width: cint): void =
  fcQsciScintilla_setIndentationWidth(self.h, width)

proc setLexer*(self: gen_qsciscintilla_types.QsciScintilla, lexer: gen_qscilexer.QsciLexer): void =
  fcQsciScintilla_setLexer(self.h, lexer.h)

proc setMarginsBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fcQsciScintilla_setMarginsBackgroundColor(self.h, col.h)

proc setMarginsFont*(self: gen_qsciscintilla_types.QsciScintilla, f: gen_qfont.QFont): void =
  fcQsciScintilla_setMarginsFont(self.h, f.h)

proc setMarginsForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fcQsciScintilla_setMarginsForegroundColor(self.h, col.h)

proc setMarginLineNumbers*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint, lnrs: bool): void =
  fcQsciScintilla_setMarginLineNumbers(self.h, margin, lnrs)

proc setMarginMarkerMask*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint, mask: cint): void =
  fcQsciScintilla_setMarginMarkerMask(self.h, margin, mask)

proc setMarginSensitivity*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint, sens: bool): void =
  fcQsciScintilla_setMarginSensitivity(self.h, margin, sens)

proc setMarginWidth*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint, width: cint): void =
  fcQsciScintilla_setMarginWidth(self.h, margin, width)

proc setMarginWidth*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint, s: string): void =
  fcQsciScintilla_setMarginWidth2(self.h, margin, struct_miqt_string(data: s, len: csize_t(len(s))))

proc setModified*(self: gen_qsciscintilla_types.QsciScintilla, m: bool): void =
  fcQsciScintilla_setModified(self.h, m)

proc setPaper*(self: gen_qsciscintilla_types.QsciScintilla, c: gen_qcolor.QColor): void =
  fcQsciScintilla_setPaper(self.h, c.h)

proc setReadOnly*(self: gen_qsciscintilla_types.QsciScintilla, ro: bool): void =
  fcQsciScintilla_setReadOnly(self.h, ro)

proc setSelection*(self: gen_qsciscintilla_types.QsciScintilla, lineFrom: cint, indexFrom: cint, lineTo: cint, indexTo: cint): void =
  fcQsciScintilla_setSelection(self.h, lineFrom, indexFrom, lineTo, indexTo)

proc setSelectionBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fcQsciScintilla_setSelectionBackgroundColor(self.h, col.h)

proc setSelectionForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fcQsciScintilla_setSelectionForegroundColor(self.h, col.h)

proc setTabIndents*(self: gen_qsciscintilla_types.QsciScintilla, indent: bool): void =
  fcQsciScintilla_setTabIndents(self.h, indent)

proc setTabWidth*(self: gen_qsciscintilla_types.QsciScintilla, width: cint): void =
  fcQsciScintilla_setTabWidth(self.h, width)

proc setText*(self: gen_qsciscintilla_types.QsciScintilla, text: string): void =
  fcQsciScintilla_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc setUtf8*(self: gen_qsciscintilla_types.QsciScintilla, cp: bool): void =
  fcQsciScintilla_setUtf8(self.h, cp)

proc setWhitespaceVisibility*(self: gen_qsciscintilla_types.QsciScintilla, mode: cint): void =
  fcQsciScintilla_setWhitespaceVisibility(self.h, cint(mode))

proc setWrapMode*(self: gen_qsciscintilla_types.QsciScintilla, mode: cint): void =
  fcQsciScintilla_setWrapMode(self.h, cint(mode))

proc undo*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_undo(self.h)

proc unindent*(self: gen_qsciscintilla_types.QsciScintilla, line: cint): void =
  fcQsciScintilla_unindent(self.h, line)

proc zoomIn*(self: gen_qsciscintilla_types.QsciScintilla, range: cint): void =
  fcQsciScintilla_zoomIn(self.h, range)

proc zoomIn*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_zoomIn2(self.h)

proc zoomOut*(self: gen_qsciscintilla_types.QsciScintilla, range: cint): void =
  fcQsciScintilla_zoomOut(self.h, range)

proc zoomOut*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_zoomOut2(self.h)

proc zoomTo*(self: gen_qsciscintilla_types.QsciScintilla, size: cint): void =
  fcQsciScintilla_zoomTo(self.h, size)

proc cursorPositionChanged*(self: gen_qsciscintilla_types.QsciScintilla, line: cint, index: cint): void =
  fcQsciScintilla_cursorPositionChanged(self.h, line, index)

type QsciScintillacursorPositionChangedSlot* = proc(line: cint, index: cint)
proc miqt_exec_callback_QsciScintilla_cursorPositionChanged(slot: int, line: cint, index: cint) {.exportc.} =
  let nimfunc = cast[ptr QsciScintillacursorPositionChangedSlot](cast[pointer](slot))
  let slotval1 = line

  let slotval2 = index

  nimfunc[](slotval1, slotval2)

proc oncursorPositionChanged*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillacursorPositionChangedSlot) =
  var tmp = new QsciScintillacursorPositionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintilla_connect_cursorPositionChanged(self.h, cast[int](addr tmp[]))

proc copyAvailable*(self: gen_qsciscintilla_types.QsciScintilla, yes: bool): void =
  fcQsciScintilla_copyAvailable(self.h, yes)

type QsciScintillacopyAvailableSlot* = proc(yes: bool)
proc miqt_exec_callback_QsciScintilla_copyAvailable(slot: int, yes: bool) {.exportc.} =
  let nimfunc = cast[ptr QsciScintillacopyAvailableSlot](cast[pointer](slot))
  let slotval1 = yes

  nimfunc[](slotval1)

proc oncopyAvailable*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillacopyAvailableSlot) =
  var tmp = new QsciScintillacopyAvailableSlot
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintilla_connect_copyAvailable(self.h, cast[int](addr tmp[]))

proc indicatorClicked*(self: gen_qsciscintilla_types.QsciScintilla, line: cint, index: cint, state: cint): void =
  fcQsciScintilla_indicatorClicked(self.h, line, index, cint(state))

type QsciScintillaindicatorClickedSlot* = proc(line: cint, index: cint, state: cint)
proc miqt_exec_callback_QsciScintilla_indicatorClicked(slot: int, line: cint, index: cint, state: cint) {.exportc.} =
  let nimfunc = cast[ptr QsciScintillaindicatorClickedSlot](cast[pointer](slot))
  let slotval1 = line

  let slotval2 = index

  let slotval3 = cint(state)

  nimfunc[](slotval1, slotval2, slotval3)

proc onindicatorClicked*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaindicatorClickedSlot) =
  var tmp = new QsciScintillaindicatorClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintilla_connect_indicatorClicked(self.h, cast[int](addr tmp[]))

proc indicatorReleased*(self: gen_qsciscintilla_types.QsciScintilla, line: cint, index: cint, state: cint): void =
  fcQsciScintilla_indicatorReleased(self.h, line, index, cint(state))

type QsciScintillaindicatorReleasedSlot* = proc(line: cint, index: cint, state: cint)
proc miqt_exec_callback_QsciScintilla_indicatorReleased(slot: int, line: cint, index: cint, state: cint) {.exportc.} =
  let nimfunc = cast[ptr QsciScintillaindicatorReleasedSlot](cast[pointer](slot))
  let slotval1 = line

  let slotval2 = index

  let slotval3 = cint(state)

  nimfunc[](slotval1, slotval2, slotval3)

proc onindicatorReleased*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaindicatorReleasedSlot) =
  var tmp = new QsciScintillaindicatorReleasedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintilla_connect_indicatorReleased(self.h, cast[int](addr tmp[]))

proc linesChanged*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_linesChanged(self.h)

type QsciScintillalinesChangedSlot* = proc()
proc miqt_exec_callback_QsciScintilla_linesChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QsciScintillalinesChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onlinesChanged*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillalinesChangedSlot) =
  var tmp = new QsciScintillalinesChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintilla_connect_linesChanged(self.h, cast[int](addr tmp[]))

proc marginClicked*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint, line: cint, state: cint): void =
  fcQsciScintilla_marginClicked(self.h, margin, line, cint(state))

type QsciScintillamarginClickedSlot* = proc(margin: cint, line: cint, state: cint)
proc miqt_exec_callback_QsciScintilla_marginClicked(slot: int, margin: cint, line: cint, state: cint) {.exportc.} =
  let nimfunc = cast[ptr QsciScintillamarginClickedSlot](cast[pointer](slot))
  let slotval1 = margin

  let slotval2 = line

  let slotval3 = cint(state)

  nimfunc[](slotval1, slotval2, slotval3)

proc onmarginClicked*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillamarginClickedSlot) =
  var tmp = new QsciScintillamarginClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintilla_connect_marginClicked(self.h, cast[int](addr tmp[]))

proc marginRightClicked*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint, line: cint, state: cint): void =
  fcQsciScintilla_marginRightClicked(self.h, margin, line, cint(state))

type QsciScintillamarginRightClickedSlot* = proc(margin: cint, line: cint, state: cint)
proc miqt_exec_callback_QsciScintilla_marginRightClicked(slot: int, margin: cint, line: cint, state: cint) {.exportc.} =
  let nimfunc = cast[ptr QsciScintillamarginRightClickedSlot](cast[pointer](slot))
  let slotval1 = margin

  let slotval2 = line

  let slotval3 = cint(state)

  nimfunc[](slotval1, slotval2, slotval3)

proc onmarginRightClicked*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillamarginRightClickedSlot) =
  var tmp = new QsciScintillamarginRightClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintilla_connect_marginRightClicked(self.h, cast[int](addr tmp[]))

proc modificationAttempted*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_modificationAttempted(self.h)

type QsciScintillamodificationAttemptedSlot* = proc()
proc miqt_exec_callback_QsciScintilla_modificationAttempted(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QsciScintillamodificationAttemptedSlot](cast[pointer](slot))
  nimfunc[]()

proc onmodificationAttempted*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillamodificationAttemptedSlot) =
  var tmp = new QsciScintillamodificationAttemptedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintilla_connect_modificationAttempted(self.h, cast[int](addr tmp[]))

proc modificationChanged*(self: gen_qsciscintilla_types.QsciScintilla, m: bool): void =
  fcQsciScintilla_modificationChanged(self.h, m)

type QsciScintillamodificationChangedSlot* = proc(m: bool)
proc miqt_exec_callback_QsciScintilla_modificationChanged(slot: int, m: bool) {.exportc.} =
  let nimfunc = cast[ptr QsciScintillamodificationChangedSlot](cast[pointer](slot))
  let slotval1 = m

  nimfunc[](slotval1)

proc onmodificationChanged*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillamodificationChangedSlot) =
  var tmp = new QsciScintillamodificationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintilla_connect_modificationChanged(self.h, cast[int](addr tmp[]))

proc selectionChanged*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_selectionChanged(self.h)

type QsciScintillaselectionChangedSlot* = proc()
proc miqt_exec_callback_QsciScintilla_selectionChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QsciScintillaselectionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onselectionChanged*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaselectionChangedSlot) =
  var tmp = new QsciScintillaselectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintilla_connect_selectionChanged(self.h, cast[int](addr tmp[]))

proc textChanged*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_textChanged(self.h)

type QsciScintillatextChangedSlot* = proc()
proc miqt_exec_callback_QsciScintilla_textChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QsciScintillatextChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc ontextChanged*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillatextChangedSlot) =
  var tmp = new QsciScintillatextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintilla_connect_textChanged(self.h, cast[int](addr tmp[]))

proc userListActivated*(self: gen_qsciscintilla_types.QsciScintilla, id: cint, string: string): void =
  fcQsciScintilla_userListActivated(self.h, id, struct_miqt_string(data: string, len: csize_t(len(string))))

type QsciScintillauserListActivatedSlot* = proc(id: cint, string: string)
proc miqt_exec_callback_QsciScintilla_userListActivated(slot: int, id: cint, string: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QsciScintillauserListActivatedSlot](cast[pointer](slot))
  let slotval1 = id

  let vstring_ms = string
  let vstringx_ret = string.fromBytes(toOpenArrayByte(vstring_ms.data, 0, int(vstring_ms.len)-1))
  c_free(vstring_ms.data)
  let slotval2 = vstringx_ret

  nimfunc[](slotval1, slotval2)

proc onuserListActivated*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillauserListActivatedSlot) =
  var tmp = new QsciScintillauserListActivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintilla_connect_userListActivated(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qsciscintilla_types.QsciScintilla, s: cstring, c: cstring): string =
  let v_ms = fcQsciScintilla_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsciscintilla_types.QsciScintilla, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciScintilla_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsciscintilla_types.QsciScintilla, s: cstring, c: cstring): string =
  let v_ms = fcQsciScintilla_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsciscintilla_types.QsciScintilla, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciScintilla_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc clearAnnotations*(self: gen_qsciscintilla_types.QsciScintilla, line: cint): void =
  fcQsciScintilla_clearAnnotations1(self.h, line)

proc indicatorDefine*(self: gen_qsciscintilla_types.QsciScintilla, style: cint, indicatorNumber: cint): cint =
  fcQsciScintilla_indicatorDefine2(self.h, cint(style), indicatorNumber)

proc markerDefine*(self: gen_qsciscintilla_types.QsciScintilla, sym: cint, markerNumber: cint): cint =
  fcQsciScintilla_markerDefine2(self.h, cint(sym), markerNumber)

proc markerDefine*(self: gen_qsciscintilla_types.QsciScintilla, ch: cchar, markerNumber: cint): cint =
  fcQsciScintilla_markerDefine22(self.h, ch, markerNumber)

proc markerDefine*(self: gen_qsciscintilla_types.QsciScintilla, pm: gen_qpixmap.QPixmap, markerNumber: cint): cint =
  fcQsciScintilla_markerDefine23(self.h, pm.h, markerNumber)

proc markerDefine*(self: gen_qsciscintilla_types.QsciScintilla, im: gen_qimage.QImage, markerNumber: cint): cint =
  fcQsciScintilla_markerDefine24(self.h, im.h, markerNumber)

proc markerDelete*(self: gen_qsciscintilla_types.QsciScintilla, linenr: cint, markerNumber: cint): void =
  fcQsciScintilla_markerDelete2(self.h, linenr, markerNumber)

proc markerDeleteAll*(self: gen_qsciscintilla_types.QsciScintilla, markerNumber: cint): void =
  fcQsciScintilla_markerDeleteAll1(self.h, markerNumber)

proc setIndicatorDrawUnder*(self: gen_qsciscintilla_types.QsciScintilla, under: bool, indicatorNumber: cint): void =
  fcQsciScintilla_setIndicatorDrawUnder2(self.h, under, indicatorNumber)

proc setIndicatorForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor, indicatorNumber: cint): void =
  fcQsciScintilla_setIndicatorForegroundColor2(self.h, col.h, indicatorNumber)

proc setIndicatorHoverForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor, indicatorNumber: cint): void =
  fcQsciScintilla_setIndicatorHoverForegroundColor2(self.h, col.h, indicatorNumber)

proc setIndicatorHoverStyle*(self: gen_qsciscintilla_types.QsciScintilla, style: cint, indicatorNumber: cint): void =
  fcQsciScintilla_setIndicatorHoverStyle2(self.h, cint(style), indicatorNumber)

proc setIndicatorOutlineColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor, indicatorNumber: cint): void =
  fcQsciScintilla_setIndicatorOutlineColor2(self.h, col.h, indicatorNumber)

proc clearMarginText*(self: gen_qsciscintilla_types.QsciScintilla, line: cint): void =
  fcQsciScintilla_clearMarginText1(self.h, line)

proc setMarkerBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor, markerNumber: cint): void =
  fcQsciScintilla_setMarkerBackgroundColor2(self.h, col.h, markerNumber)

proc setMarkerForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor, markerNumber: cint): void =
  fcQsciScintilla_setMarkerForegroundColor2(self.h, col.h, markerNumber)

proc setWrapVisualFlags*(self: gen_qsciscintilla_types.QsciScintilla, endFlag: cint, startFlag: cint): void =
  fcQsciScintilla_setWrapVisualFlags2(self.h, cint(endFlag), cint(startFlag))

proc setWrapVisualFlags*(self: gen_qsciscintilla_types.QsciScintilla, endFlag: cint, startFlag: cint, indent: cint): void =
  fcQsciScintilla_setWrapVisualFlags3(self.h, cint(endFlag), cint(startFlag), indent)

proc QsciScintillametaObject*(self: gen_qsciscintilla_types.QsciScintilla, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fQsciScintilla_virtualbase_metaObject(self.h))

type QsciScintillametaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillametaObjectProc) =
  # TODO check subclass
  var tmp = new QsciScintillametaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_metaObject(self: ptr cQsciScintilla, slot: int): pointer {.exportc: "miqt_exec_callback_QsciScintilla_metaObject ".} =
  var nimfunc = cast[ptr QsciScintillametaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciScintillametacast*(self: gen_qsciscintilla_types.QsciScintilla, param1: cstring): pointer =
  fQsciScintilla_virtualbase_metacast(self.h, param1)

type QsciScintillametacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillametacastProc) =
  # TODO check subclass
  var tmp = new QsciScintillametacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_metacast(self: ptr cQsciScintilla, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciScintilla_metacast ".} =
  var nimfunc = cast[ptr QsciScintillametacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciScintillametacall*(self: gen_qsciscintilla_types.QsciScintilla, param1: cint, param2: cint, param3: pointer): cint =
  fQsciScintilla_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciScintillametacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillametacallProc) =
  # TODO check subclass
  var tmp = new QsciScintillametacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_metacall(self: ptr cQsciScintilla, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciScintilla_metacall ".} =
  var nimfunc = cast[ptr QsciScintillametacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciScintillaapiContext*(self: gen_qsciscintilla_types.QsciScintilla, pos: cint, context_start: ptr cint, last_word_start: ptr cint): seq[string] =
  var v_ma = fQsciScintilla_virtualbase_apiContext(self.h, pos, context_start, last_word_start)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciScintillaapiContextProc* = proc(pos: cint, context_start: ptr cint, last_word_start: ptr cint): seq[string]
proc onapiContext*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaapiContextProc) =
  # TODO check subclass
  var tmp = new QsciScintillaapiContextProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_apiContext(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_apiContext(self: ptr cQsciScintilla, slot: int, pos: cint, context_start: ptr cint, last_word_start: ptr cint): struct_miqt_array {.exportc: "miqt_exec_callback_QsciScintilla_apiContext ".} =
  var nimfunc = cast[ptr QsciScintillaapiContextProc](cast[pointer](slot))
  let slotval1 = pos

  let slotval2 = context_start

  let slotval3 = last_word_start


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QsciScintillafindFirst*(self: gen_qsciscintilla_types.QsciScintilla, expr: string, re: bool, cs: bool, wo: bool, wrap: bool, forward: bool, line: cint, index: cint, show: bool, posix: bool, cxx11: bool): bool =
  fQsciScintilla_virtualbase_findFirst(self.h, struct_miqt_string(data: expr, len: csize_t(len(expr))), re, cs, wo, wrap, forward, line, index, show, posix, cxx11)

type QsciScintillafindFirstProc* = proc(expr: string, re: bool, cs: bool, wo: bool, wrap: bool, forward: bool, line: cint, index: cint, show: bool, posix: bool, cxx11: bool): bool
proc onfindFirst*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillafindFirstProc) =
  # TODO check subclass
  var tmp = new QsciScintillafindFirstProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_findFirst(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_findFirst(self: ptr cQsciScintilla, slot: int, expr: struct_miqt_string, re: bool, cs: bool, wo: bool, wrap: bool, forward: bool, line: cint, index: cint, show: bool, posix: bool, cxx11: bool): bool {.exportc: "miqt_exec_callback_QsciScintilla_findFirst ".} =
  var nimfunc = cast[ptr QsciScintillafindFirstProc](cast[pointer](slot))
  let vexpr_ms = expr
  let vexprx_ret = string.fromBytes(toOpenArrayByte(vexpr_ms.data, 0, int(vexpr_ms.len)-1))
  c_free(vexpr_ms.data)
  let slotval1 = vexprx_ret

  let slotval2 = re

  let slotval3 = cs

  let slotval4 = wo

  let slotval5 = wrap

  let slotval6 = forward

  let slotval7 = line

  let slotval8 = index

  let slotval9 = show

  let slotval10 = posix

  let slotval11 = cxx11


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5, slotval6, slotval7, slotval8, slotval9, slotval10, slotval11 )

  virtualReturn
proc QsciScintillafindFirstInSelection*(self: gen_qsciscintilla_types.QsciScintilla, expr: string, re: bool, cs: bool, wo: bool, forward: bool, show: bool, posix: bool, cxx11: bool): bool =
  fQsciScintilla_virtualbase_findFirstInSelection(self.h, struct_miqt_string(data: expr, len: csize_t(len(expr))), re, cs, wo, forward, show, posix, cxx11)

type QsciScintillafindFirstInSelectionProc* = proc(expr: string, re: bool, cs: bool, wo: bool, forward: bool, show: bool, posix: bool, cxx11: bool): bool
proc onfindFirstInSelection*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillafindFirstInSelectionProc) =
  # TODO check subclass
  var tmp = new QsciScintillafindFirstInSelectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_findFirstInSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_findFirstInSelection(self: ptr cQsciScintilla, slot: int, expr: struct_miqt_string, re: bool, cs: bool, wo: bool, forward: bool, show: bool, posix: bool, cxx11: bool): bool {.exportc: "miqt_exec_callback_QsciScintilla_findFirstInSelection ".} =
  var nimfunc = cast[ptr QsciScintillafindFirstInSelectionProc](cast[pointer](slot))
  let vexpr_ms = expr
  let vexprx_ret = string.fromBytes(toOpenArrayByte(vexpr_ms.data, 0, int(vexpr_ms.len)-1))
  c_free(vexpr_ms.data)
  let slotval1 = vexprx_ret

  let slotval2 = re

  let slotval3 = cs

  let slotval4 = wo

  let slotval5 = forward

  let slotval6 = show

  let slotval7 = posix

  let slotval8 = cxx11


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5, slotval6, slotval7, slotval8 )

  virtualReturn
proc QsciScintillafindNext*(self: gen_qsciscintilla_types.QsciScintilla, ): bool =
  fQsciScintilla_virtualbase_findNext(self.h)

type QsciScintillafindNextProc* = proc(): bool
proc onfindNext*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillafindNextProc) =
  # TODO check subclass
  var tmp = new QsciScintillafindNextProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_findNext(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_findNext(self: ptr cQsciScintilla, slot: int): bool {.exportc: "miqt_exec_callback_QsciScintilla_findNext ".} =
  var nimfunc = cast[ptr QsciScintillafindNextProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciScintillarecolor*(self: gen_qsciscintilla_types.QsciScintilla, start: cint, endVal: cint): void =
  fQsciScintilla_virtualbase_recolor(self.h, start, endVal)

type QsciScintillarecolorProc* = proc(start: cint, endVal: cint): void
proc onrecolor*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillarecolorProc) =
  # TODO check subclass
  var tmp = new QsciScintillarecolorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_recolor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_recolor(self: ptr cQsciScintilla, slot: int, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_recolor ".} =
  var nimfunc = cast[ptr QsciScintillarecolorProc](cast[pointer](slot))
  let slotval1 = start

  let slotval2 = endVal


  nimfunc[](slotval1, slotval2)
proc QsciScintillareplace*(self: gen_qsciscintilla_types.QsciScintilla, replaceStr: string): void =
  fQsciScintilla_virtualbase_replace(self.h, struct_miqt_string(data: replaceStr, len: csize_t(len(replaceStr))))

type QsciScintillareplaceProc* = proc(replaceStr: string): void
proc onreplace*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillareplaceProc) =
  # TODO check subclass
  var tmp = new QsciScintillareplaceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_replace(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_replace(self: ptr cQsciScintilla, slot: int, replaceStr: struct_miqt_string): void {.exportc: "miqt_exec_callback_QsciScintilla_replace ".} =
  var nimfunc = cast[ptr QsciScintillareplaceProc](cast[pointer](slot))
  let vreplaceStr_ms = replaceStr
  let vreplaceStrx_ret = string.fromBytes(toOpenArrayByte(vreplaceStr_ms.data, 0, int(vreplaceStr_ms.len)-1))
  c_free(vreplaceStr_ms.data)
  let slotval1 = vreplaceStrx_ret


  nimfunc[](slotval1)
proc QsciScintillaappend*(self: gen_qsciscintilla_types.QsciScintilla, text: string): void =
  fQsciScintilla_virtualbase_append(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

type QsciScintillaappendProc* = proc(text: string): void
proc onappend*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaappendProc) =
  # TODO check subclass
  var tmp = new QsciScintillaappendProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_append(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_append(self: ptr cQsciScintilla, slot: int, text: struct_miqt_string): void {.exportc: "miqt_exec_callback_QsciScintilla_append ".} =
  var nimfunc = cast[ptr QsciScintillaappendProc](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret


  nimfunc[](slotval1)
proc QsciScintillaautoCompleteFromAll*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fQsciScintilla_virtualbase_autoCompleteFromAll(self.h)

type QsciScintillaautoCompleteFromAllProc* = proc(): void
proc onautoCompleteFromAll*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaautoCompleteFromAllProc) =
  # TODO check subclass
  var tmp = new QsciScintillaautoCompleteFromAllProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_autoCompleteFromAll(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_autoCompleteFromAll(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_autoCompleteFromAll ".} =
  var nimfunc = cast[ptr QsciScintillaautoCompleteFromAllProc](cast[pointer](slot))

  nimfunc[]()
proc QsciScintillaautoCompleteFromAPIs*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fQsciScintilla_virtualbase_autoCompleteFromAPIs(self.h)

type QsciScintillaautoCompleteFromAPIsProc* = proc(): void
proc onautoCompleteFromAPIs*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaautoCompleteFromAPIsProc) =
  # TODO check subclass
  var tmp = new QsciScintillaautoCompleteFromAPIsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_autoCompleteFromAPIs(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_autoCompleteFromAPIs(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_autoCompleteFromAPIs ".} =
  var nimfunc = cast[ptr QsciScintillaautoCompleteFromAPIsProc](cast[pointer](slot))

  nimfunc[]()
proc QsciScintillaautoCompleteFromDocument*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fQsciScintilla_virtualbase_autoCompleteFromDocument(self.h)

type QsciScintillaautoCompleteFromDocumentProc* = proc(): void
proc onautoCompleteFromDocument*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaautoCompleteFromDocumentProc) =
  # TODO check subclass
  var tmp = new QsciScintillaautoCompleteFromDocumentProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_autoCompleteFromDocument(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_autoCompleteFromDocument(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_autoCompleteFromDocument ".} =
  var nimfunc = cast[ptr QsciScintillaautoCompleteFromDocumentProc](cast[pointer](slot))

  nimfunc[]()
proc QsciScintillacallTip*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fQsciScintilla_virtualbase_callTip(self.h)

type QsciScintillacallTipProc* = proc(): void
proc oncallTip*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillacallTipProc) =
  # TODO check subclass
  var tmp = new QsciScintillacallTipProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_callTip(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_callTip(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_callTip ".} =
  var nimfunc = cast[ptr QsciScintillacallTipProc](cast[pointer](slot))

  nimfunc[]()
proc QsciScintillaclear*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fQsciScintilla_virtualbase_clear(self.h)

type QsciScintillaclearProc* = proc(): void
proc onclear*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaclearProc) =
  # TODO check subclass
  var tmp = new QsciScintillaclearProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_clear(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_clear(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_clear ".} =
  var nimfunc = cast[ptr QsciScintillaclearProc](cast[pointer](slot))

  nimfunc[]()
proc QsciScintillacopy*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fQsciScintilla_virtualbase_copy(self.h)

type QsciScintillacopyProc* = proc(): void
proc oncopy*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillacopyProc) =
  # TODO check subclass
  var tmp = new QsciScintillacopyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_copy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_copy(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_copy ".} =
  var nimfunc = cast[ptr QsciScintillacopyProc](cast[pointer](slot))

  nimfunc[]()
proc QsciScintillacut*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fQsciScintilla_virtualbase_cut(self.h)

type QsciScintillacutProc* = proc(): void
proc oncut*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillacutProc) =
  # TODO check subclass
  var tmp = new QsciScintillacutProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_cut(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_cut(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_cut ".} =
  var nimfunc = cast[ptr QsciScintillacutProc](cast[pointer](slot))

  nimfunc[]()
proc QsciScintillaensureCursorVisible*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fQsciScintilla_virtualbase_ensureCursorVisible(self.h)

type QsciScintillaensureCursorVisibleProc* = proc(): void
proc onensureCursorVisible*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaensureCursorVisibleProc) =
  # TODO check subclass
  var tmp = new QsciScintillaensureCursorVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_ensureCursorVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_ensureCursorVisible(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_ensureCursorVisible ".} =
  var nimfunc = cast[ptr QsciScintillaensureCursorVisibleProc](cast[pointer](slot))

  nimfunc[]()
proc QsciScintillaensureLineVisible*(self: gen_qsciscintilla_types.QsciScintilla, line: cint): void =
  fQsciScintilla_virtualbase_ensureLineVisible(self.h, line)

type QsciScintillaensureLineVisibleProc* = proc(line: cint): void
proc onensureLineVisible*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaensureLineVisibleProc) =
  # TODO check subclass
  var tmp = new QsciScintillaensureLineVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_ensureLineVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_ensureLineVisible(self: ptr cQsciScintilla, slot: int, line: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_ensureLineVisible ".} =
  var nimfunc = cast[ptr QsciScintillaensureLineVisibleProc](cast[pointer](slot))
  let slotval1 = line


  nimfunc[](slotval1)
proc QsciScintillafoldAll*(self: gen_qsciscintilla_types.QsciScintilla, children: bool): void =
  fQsciScintilla_virtualbase_foldAll(self.h, children)

type QsciScintillafoldAllProc* = proc(children: bool): void
proc onfoldAll*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillafoldAllProc) =
  # TODO check subclass
  var tmp = new QsciScintillafoldAllProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_foldAll(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_foldAll(self: ptr cQsciScintilla, slot: int, children: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_foldAll ".} =
  var nimfunc = cast[ptr QsciScintillafoldAllProc](cast[pointer](slot))
  let slotval1 = children


  nimfunc[](slotval1)
proc QsciScintillafoldLine*(self: gen_qsciscintilla_types.QsciScintilla, line: cint): void =
  fQsciScintilla_virtualbase_foldLine(self.h, line)

type QsciScintillafoldLineProc* = proc(line: cint): void
proc onfoldLine*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillafoldLineProc) =
  # TODO check subclass
  var tmp = new QsciScintillafoldLineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_foldLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_foldLine(self: ptr cQsciScintilla, slot: int, line: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_foldLine ".} =
  var nimfunc = cast[ptr QsciScintillafoldLineProc](cast[pointer](slot))
  let slotval1 = line


  nimfunc[](slotval1)
proc QsciScintillaindent*(self: gen_qsciscintilla_types.QsciScintilla, line: cint): void =
  fQsciScintilla_virtualbase_indent(self.h, line)

type QsciScintillaindentProc* = proc(line: cint): void
proc onindent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaindentProc) =
  # TODO check subclass
  var tmp = new QsciScintillaindentProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_indent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_indent(self: ptr cQsciScintilla, slot: int, line: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_indent ".} =
  var nimfunc = cast[ptr QsciScintillaindentProc](cast[pointer](slot))
  let slotval1 = line


  nimfunc[](slotval1)
proc QsciScintillainsert*(self: gen_qsciscintilla_types.QsciScintilla, text: string): void =
  fQsciScintilla_virtualbase_insert(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

type QsciScintillainsertProc* = proc(text: string): void
proc oninsert*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillainsertProc) =
  # TODO check subclass
  var tmp = new QsciScintillainsertProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_insert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_insert(self: ptr cQsciScintilla, slot: int, text: struct_miqt_string): void {.exportc: "miqt_exec_callback_QsciScintilla_insert ".} =
  var nimfunc = cast[ptr QsciScintillainsertProc](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret


  nimfunc[](slotval1)
proc QsciScintillainsertAt*(self: gen_qsciscintilla_types.QsciScintilla, text: string, line: cint, index: cint): void =
  fQsciScintilla_virtualbase_insertAt(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), line, index)

type QsciScintillainsertAtProc* = proc(text: string, line: cint, index: cint): void
proc oninsertAt*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillainsertAtProc) =
  # TODO check subclass
  var tmp = new QsciScintillainsertAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_insertAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_insertAt(self: ptr cQsciScintilla, slot: int, text: struct_miqt_string, line: cint, index: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_insertAt ".} =
  var nimfunc = cast[ptr QsciScintillainsertAtProc](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret

  let slotval2 = line

  let slotval3 = index


  nimfunc[](slotval1, slotval2, slotval3)
proc QsciScintillamoveToMatchingBrace*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fQsciScintilla_virtualbase_moveToMatchingBrace(self.h)

type QsciScintillamoveToMatchingBraceProc* = proc(): void
proc onmoveToMatchingBrace*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillamoveToMatchingBraceProc) =
  # TODO check subclass
  var tmp = new QsciScintillamoveToMatchingBraceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_moveToMatchingBrace(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_moveToMatchingBrace(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_moveToMatchingBrace ".} =
  var nimfunc = cast[ptr QsciScintillamoveToMatchingBraceProc](cast[pointer](slot))

  nimfunc[]()
proc QsciScintillapaste*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fQsciScintilla_virtualbase_paste(self.h)

type QsciScintillapasteProc* = proc(): void
proc onpaste*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillapasteProc) =
  # TODO check subclass
  var tmp = new QsciScintillapasteProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_paste(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_paste(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_paste ".} =
  var nimfunc = cast[ptr QsciScintillapasteProc](cast[pointer](slot))

  nimfunc[]()
proc QsciScintillaredo*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fQsciScintilla_virtualbase_redo(self.h)

type QsciScintillaredoProc* = proc(): void
proc onredo*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaredoProc) =
  # TODO check subclass
  var tmp = new QsciScintillaredoProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_redo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_redo(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_redo ".} =
  var nimfunc = cast[ptr QsciScintillaredoProc](cast[pointer](slot))

  nimfunc[]()
proc QsciScintillaremoveSelectedText*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fQsciScintilla_virtualbase_removeSelectedText(self.h)

type QsciScintillaremoveSelectedTextProc* = proc(): void
proc onremoveSelectedText*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaremoveSelectedTextProc) =
  # TODO check subclass
  var tmp = new QsciScintillaremoveSelectedTextProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_removeSelectedText(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_removeSelectedText(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_removeSelectedText ".} =
  var nimfunc = cast[ptr QsciScintillaremoveSelectedTextProc](cast[pointer](slot))

  nimfunc[]()
proc QsciScintillareplaceSelectedText*(self: gen_qsciscintilla_types.QsciScintilla, text: string): void =
  fQsciScintilla_virtualbase_replaceSelectedText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

type QsciScintillareplaceSelectedTextProc* = proc(text: string): void
proc onreplaceSelectedText*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillareplaceSelectedTextProc) =
  # TODO check subclass
  var tmp = new QsciScintillareplaceSelectedTextProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_replaceSelectedText(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_replaceSelectedText(self: ptr cQsciScintilla, slot: int, text: struct_miqt_string): void {.exportc: "miqt_exec_callback_QsciScintilla_replaceSelectedText ".} =
  var nimfunc = cast[ptr QsciScintillareplaceSelectedTextProc](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret


  nimfunc[](slotval1)
proc QsciScintillaresetSelectionBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fQsciScintilla_virtualbase_resetSelectionBackgroundColor(self.h)

type QsciScintillaresetSelectionBackgroundColorProc* = proc(): void
proc onresetSelectionBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaresetSelectionBackgroundColorProc) =
  # TODO check subclass
  var tmp = new QsciScintillaresetSelectionBackgroundColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_resetSelectionBackgroundColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_resetSelectionBackgroundColor(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_resetSelectionBackgroundColor ".} =
  var nimfunc = cast[ptr QsciScintillaresetSelectionBackgroundColorProc](cast[pointer](slot))

  nimfunc[]()
proc QsciScintillaresetSelectionForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fQsciScintilla_virtualbase_resetSelectionForegroundColor(self.h)

type QsciScintillaresetSelectionForegroundColorProc* = proc(): void
proc onresetSelectionForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaresetSelectionForegroundColorProc) =
  # TODO check subclass
  var tmp = new QsciScintillaresetSelectionForegroundColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_resetSelectionForegroundColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_resetSelectionForegroundColor(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_resetSelectionForegroundColor ".} =
  var nimfunc = cast[ptr QsciScintillaresetSelectionForegroundColorProc](cast[pointer](slot))

  nimfunc[]()
proc QsciScintillaselectAll*(self: gen_qsciscintilla_types.QsciScintilla, select: bool): void =
  fQsciScintilla_virtualbase_selectAll(self.h, select)

type QsciScintillaselectAllProc* = proc(select: bool): void
proc onselectAll*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaselectAllProc) =
  # TODO check subclass
  var tmp = new QsciScintillaselectAllProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_selectAll(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_selectAll(self: ptr cQsciScintilla, slot: int, select: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_selectAll ".} =
  var nimfunc = cast[ptr QsciScintillaselectAllProc](cast[pointer](slot))
  let slotval1 = select


  nimfunc[](slotval1)
proc QsciScintillaselectToMatchingBrace*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fQsciScintilla_virtualbase_selectToMatchingBrace(self.h)

type QsciScintillaselectToMatchingBraceProc* = proc(): void
proc onselectToMatchingBrace*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaselectToMatchingBraceProc) =
  # TODO check subclass
  var tmp = new QsciScintillaselectToMatchingBraceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_selectToMatchingBrace(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_selectToMatchingBrace(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_selectToMatchingBrace ".} =
  var nimfunc = cast[ptr QsciScintillaselectToMatchingBraceProc](cast[pointer](slot))

  nimfunc[]()
proc QsciScintillasetAutoCompletionCaseSensitivity*(self: gen_qsciscintilla_types.QsciScintilla, cs: bool): void =
  fQsciScintilla_virtualbase_setAutoCompletionCaseSensitivity(self.h, cs)

type QsciScintillasetAutoCompletionCaseSensitivityProc* = proc(cs: bool): void
proc onsetAutoCompletionCaseSensitivity*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetAutoCompletionCaseSensitivityProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetAutoCompletionCaseSensitivityProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setAutoCompletionCaseSensitivity(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setAutoCompletionCaseSensitivity(self: ptr cQsciScintilla, slot: int, cs: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setAutoCompletionCaseSensitivity ".} =
  var nimfunc = cast[ptr QsciScintillasetAutoCompletionCaseSensitivityProc](cast[pointer](slot))
  let slotval1 = cs


  nimfunc[](slotval1)
proc QsciScintillasetAutoCompletionReplaceWord*(self: gen_qsciscintilla_types.QsciScintilla, replace: bool): void =
  fQsciScintilla_virtualbase_setAutoCompletionReplaceWord(self.h, replace)

type QsciScintillasetAutoCompletionReplaceWordProc* = proc(replace: bool): void
proc onsetAutoCompletionReplaceWord*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetAutoCompletionReplaceWordProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetAutoCompletionReplaceWordProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setAutoCompletionReplaceWord(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setAutoCompletionReplaceWord(self: ptr cQsciScintilla, slot: int, replace: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setAutoCompletionReplaceWord ".} =
  var nimfunc = cast[ptr QsciScintillasetAutoCompletionReplaceWordProc](cast[pointer](slot))
  let slotval1 = replace


  nimfunc[](slotval1)
proc QsciScintillasetAutoCompletionShowSingle*(self: gen_qsciscintilla_types.QsciScintilla, single: bool): void =
  fQsciScintilla_virtualbase_setAutoCompletionShowSingle(self.h, single)

type QsciScintillasetAutoCompletionShowSingleProc* = proc(single: bool): void
proc onsetAutoCompletionShowSingle*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetAutoCompletionShowSingleProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetAutoCompletionShowSingleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setAutoCompletionShowSingle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setAutoCompletionShowSingle(self: ptr cQsciScintilla, slot: int, single: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setAutoCompletionShowSingle ".} =
  var nimfunc = cast[ptr QsciScintillasetAutoCompletionShowSingleProc](cast[pointer](slot))
  let slotval1 = single


  nimfunc[](slotval1)
proc QsciScintillasetAutoCompletionSource*(self: gen_qsciscintilla_types.QsciScintilla, source: cint): void =
  fQsciScintilla_virtualbase_setAutoCompletionSource(self.h, cint(source))

type QsciScintillasetAutoCompletionSourceProc* = proc(source: cint): void
proc onsetAutoCompletionSource*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetAutoCompletionSourceProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetAutoCompletionSourceProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setAutoCompletionSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setAutoCompletionSource(self: ptr cQsciScintilla, slot: int, source: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setAutoCompletionSource ".} =
  var nimfunc = cast[ptr QsciScintillasetAutoCompletionSourceProc](cast[pointer](slot))
  let slotval1 = cint(source)


  nimfunc[](slotval1)
proc QsciScintillasetAutoCompletionThreshold*(self: gen_qsciscintilla_types.QsciScintilla, thresh: cint): void =
  fQsciScintilla_virtualbase_setAutoCompletionThreshold(self.h, thresh)

type QsciScintillasetAutoCompletionThresholdProc* = proc(thresh: cint): void
proc onsetAutoCompletionThreshold*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetAutoCompletionThresholdProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetAutoCompletionThresholdProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setAutoCompletionThreshold(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setAutoCompletionThreshold(self: ptr cQsciScintilla, slot: int, thresh: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setAutoCompletionThreshold ".} =
  var nimfunc = cast[ptr QsciScintillasetAutoCompletionThresholdProc](cast[pointer](slot))
  let slotval1 = thresh


  nimfunc[](slotval1)
proc QsciScintillasetAutoCompletionUseSingle*(self: gen_qsciscintilla_types.QsciScintilla, single: cint): void =
  fQsciScintilla_virtualbase_setAutoCompletionUseSingle(self.h, cint(single))

type QsciScintillasetAutoCompletionUseSingleProc* = proc(single: cint): void
proc onsetAutoCompletionUseSingle*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetAutoCompletionUseSingleProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetAutoCompletionUseSingleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setAutoCompletionUseSingle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setAutoCompletionUseSingle(self: ptr cQsciScintilla, slot: int, single: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setAutoCompletionUseSingle ".} =
  var nimfunc = cast[ptr QsciScintillasetAutoCompletionUseSingleProc](cast[pointer](slot))
  let slotval1 = cint(single)


  nimfunc[](slotval1)
proc QsciScintillasetAutoIndent*(self: gen_qsciscintilla_types.QsciScintilla, autoindent: bool): void =
  fQsciScintilla_virtualbase_setAutoIndent(self.h, autoindent)

type QsciScintillasetAutoIndentProc* = proc(autoindent: bool): void
proc onsetAutoIndent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetAutoIndentProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetAutoIndentProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setAutoIndent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setAutoIndent(self: ptr cQsciScintilla, slot: int, autoindent: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setAutoIndent ".} =
  var nimfunc = cast[ptr QsciScintillasetAutoIndentProc](cast[pointer](slot))
  let slotval1 = autoindent


  nimfunc[](slotval1)
proc QsciScintillasetBraceMatching*(self: gen_qsciscintilla_types.QsciScintilla, bm: cint): void =
  fQsciScintilla_virtualbase_setBraceMatching(self.h, cint(bm))

type QsciScintillasetBraceMatchingProc* = proc(bm: cint): void
proc onsetBraceMatching*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetBraceMatchingProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetBraceMatchingProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setBraceMatching(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setBraceMatching(self: ptr cQsciScintilla, slot: int, bm: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setBraceMatching ".} =
  var nimfunc = cast[ptr QsciScintillasetBraceMatchingProc](cast[pointer](slot))
  let slotval1 = cint(bm)


  nimfunc[](slotval1)
proc QsciScintillasetBackspaceUnindents*(self: gen_qsciscintilla_types.QsciScintilla, unindent: bool): void =
  fQsciScintilla_virtualbase_setBackspaceUnindents(self.h, unindent)

type QsciScintillasetBackspaceUnindentsProc* = proc(unindent: bool): void
proc onsetBackspaceUnindents*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetBackspaceUnindentsProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetBackspaceUnindentsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setBackspaceUnindents(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setBackspaceUnindents(self: ptr cQsciScintilla, slot: int, unindent: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setBackspaceUnindents ".} =
  var nimfunc = cast[ptr QsciScintillasetBackspaceUnindentsProc](cast[pointer](slot))
  let slotval1 = unindent


  nimfunc[](slotval1)
proc QsciScintillasetCaretForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fQsciScintilla_virtualbase_setCaretForegroundColor(self.h, col.h)

type QsciScintillasetCaretForegroundColorProc* = proc(col: gen_qcolor.QColor): void
proc onsetCaretForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetCaretForegroundColorProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetCaretForegroundColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setCaretForegroundColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setCaretForegroundColor(self: ptr cQsciScintilla, slot: int, col: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_setCaretForegroundColor ".} =
  var nimfunc = cast[ptr QsciScintillasetCaretForegroundColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: col)


  nimfunc[](slotval1)
proc QsciScintillasetCaretLineBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fQsciScintilla_virtualbase_setCaretLineBackgroundColor(self.h, col.h)

type QsciScintillasetCaretLineBackgroundColorProc* = proc(col: gen_qcolor.QColor): void
proc onsetCaretLineBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetCaretLineBackgroundColorProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetCaretLineBackgroundColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setCaretLineBackgroundColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setCaretLineBackgroundColor(self: ptr cQsciScintilla, slot: int, col: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_setCaretLineBackgroundColor ".} =
  var nimfunc = cast[ptr QsciScintillasetCaretLineBackgroundColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: col)


  nimfunc[](slotval1)
proc QsciScintillasetCaretLineFrameWidth*(self: gen_qsciscintilla_types.QsciScintilla, width: cint): void =
  fQsciScintilla_virtualbase_setCaretLineFrameWidth(self.h, width)

type QsciScintillasetCaretLineFrameWidthProc* = proc(width: cint): void
proc onsetCaretLineFrameWidth*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetCaretLineFrameWidthProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetCaretLineFrameWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setCaretLineFrameWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setCaretLineFrameWidth(self: ptr cQsciScintilla, slot: int, width: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setCaretLineFrameWidth ".} =
  var nimfunc = cast[ptr QsciScintillasetCaretLineFrameWidthProc](cast[pointer](slot))
  let slotval1 = width


  nimfunc[](slotval1)
proc QsciScintillasetCaretLineVisible*(self: gen_qsciscintilla_types.QsciScintilla, enable: bool): void =
  fQsciScintilla_virtualbase_setCaretLineVisible(self.h, enable)

type QsciScintillasetCaretLineVisibleProc* = proc(enable: bool): void
proc onsetCaretLineVisible*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetCaretLineVisibleProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetCaretLineVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setCaretLineVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setCaretLineVisible(self: ptr cQsciScintilla, slot: int, enable: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setCaretLineVisible ".} =
  var nimfunc = cast[ptr QsciScintillasetCaretLineVisibleProc](cast[pointer](slot))
  let slotval1 = enable


  nimfunc[](slotval1)
proc QsciScintillasetCaretWidth*(self: gen_qsciscintilla_types.QsciScintilla, width: cint): void =
  fQsciScintilla_virtualbase_setCaretWidth(self.h, width)

type QsciScintillasetCaretWidthProc* = proc(width: cint): void
proc onsetCaretWidth*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetCaretWidthProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetCaretWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setCaretWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setCaretWidth(self: ptr cQsciScintilla, slot: int, width: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setCaretWidth ".} =
  var nimfunc = cast[ptr QsciScintillasetCaretWidthProc](cast[pointer](slot))
  let slotval1 = width


  nimfunc[](slotval1)
proc QsciScintillasetColor*(self: gen_qsciscintilla_types.QsciScintilla, c: gen_qcolor.QColor): void =
  fQsciScintilla_virtualbase_setColor(self.h, c.h)

type QsciScintillasetColorProc* = proc(c: gen_qcolor.QColor): void
proc onsetColor*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetColorProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setColor(self: ptr cQsciScintilla, slot: int, c: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_setColor ".} =
  var nimfunc = cast[ptr QsciScintillasetColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)


  nimfunc[](slotval1)
proc QsciScintillasetCursorPosition*(self: gen_qsciscintilla_types.QsciScintilla, line: cint, index: cint): void =
  fQsciScintilla_virtualbase_setCursorPosition(self.h, line, index)

type QsciScintillasetCursorPositionProc* = proc(line: cint, index: cint): void
proc onsetCursorPosition*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetCursorPositionProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetCursorPositionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setCursorPosition(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setCursorPosition(self: ptr cQsciScintilla, slot: int, line: cint, index: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setCursorPosition ".} =
  var nimfunc = cast[ptr QsciScintillasetCursorPositionProc](cast[pointer](slot))
  let slotval1 = line

  let slotval2 = index


  nimfunc[](slotval1, slotval2)
proc QsciScintillasetEolMode*(self: gen_qsciscintilla_types.QsciScintilla, mode: cint): void =
  fQsciScintilla_virtualbase_setEolMode(self.h, cint(mode))

type QsciScintillasetEolModeProc* = proc(mode: cint): void
proc onsetEolMode*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetEolModeProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetEolModeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setEolMode(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setEolMode(self: ptr cQsciScintilla, slot: int, mode: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setEolMode ".} =
  var nimfunc = cast[ptr QsciScintillasetEolModeProc](cast[pointer](slot))
  let slotval1 = cint(mode)


  nimfunc[](slotval1)
proc QsciScintillasetEolVisibility*(self: gen_qsciscintilla_types.QsciScintilla, visible: bool): void =
  fQsciScintilla_virtualbase_setEolVisibility(self.h, visible)

type QsciScintillasetEolVisibilityProc* = proc(visible: bool): void
proc onsetEolVisibility*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetEolVisibilityProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetEolVisibilityProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setEolVisibility(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setEolVisibility(self: ptr cQsciScintilla, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setEolVisibility ".} =
  var nimfunc = cast[ptr QsciScintillasetEolVisibilityProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QsciScintillasetFolding*(self: gen_qsciscintilla_types.QsciScintilla, fold: cint, margin: cint): void =
  fQsciScintilla_virtualbase_setFolding(self.h, cint(fold), margin)

type QsciScintillasetFoldingProc* = proc(fold: cint, margin: cint): void
proc onsetFolding*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetFoldingProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetFoldingProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setFolding(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setFolding(self: ptr cQsciScintilla, slot: int, fold: cint, margin: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setFolding ".} =
  var nimfunc = cast[ptr QsciScintillasetFoldingProc](cast[pointer](slot))
  let slotval1 = cint(fold)

  let slotval2 = margin


  nimfunc[](slotval1, slotval2)
proc QsciScintillasetIndentation*(self: gen_qsciscintilla_types.QsciScintilla, line: cint, indentation: cint): void =
  fQsciScintilla_virtualbase_setIndentation(self.h, line, indentation)

type QsciScintillasetIndentationProc* = proc(line: cint, indentation: cint): void
proc onsetIndentation*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetIndentationProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetIndentationProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setIndentation(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setIndentation(self: ptr cQsciScintilla, slot: int, line: cint, indentation: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setIndentation ".} =
  var nimfunc = cast[ptr QsciScintillasetIndentationProc](cast[pointer](slot))
  let slotval1 = line

  let slotval2 = indentation


  nimfunc[](slotval1, slotval2)
proc QsciScintillasetIndentationGuides*(self: gen_qsciscintilla_types.QsciScintilla, enable: bool): void =
  fQsciScintilla_virtualbase_setIndentationGuides(self.h, enable)

type QsciScintillasetIndentationGuidesProc* = proc(enable: bool): void
proc onsetIndentationGuides*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetIndentationGuidesProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetIndentationGuidesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setIndentationGuides(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setIndentationGuides(self: ptr cQsciScintilla, slot: int, enable: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setIndentationGuides ".} =
  var nimfunc = cast[ptr QsciScintillasetIndentationGuidesProc](cast[pointer](slot))
  let slotval1 = enable


  nimfunc[](slotval1)
proc QsciScintillasetIndentationGuidesBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fQsciScintilla_virtualbase_setIndentationGuidesBackgroundColor(self.h, col.h)

type QsciScintillasetIndentationGuidesBackgroundColorProc* = proc(col: gen_qcolor.QColor): void
proc onsetIndentationGuidesBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetIndentationGuidesBackgroundColorProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetIndentationGuidesBackgroundColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setIndentationGuidesBackgroundColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setIndentationGuidesBackgroundColor(self: ptr cQsciScintilla, slot: int, col: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_setIndentationGuidesBackgroundColor ".} =
  var nimfunc = cast[ptr QsciScintillasetIndentationGuidesBackgroundColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: col)


  nimfunc[](slotval1)
proc QsciScintillasetIndentationGuidesForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fQsciScintilla_virtualbase_setIndentationGuidesForegroundColor(self.h, col.h)

type QsciScintillasetIndentationGuidesForegroundColorProc* = proc(col: gen_qcolor.QColor): void
proc onsetIndentationGuidesForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetIndentationGuidesForegroundColorProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetIndentationGuidesForegroundColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setIndentationGuidesForegroundColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setIndentationGuidesForegroundColor(self: ptr cQsciScintilla, slot: int, col: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_setIndentationGuidesForegroundColor ".} =
  var nimfunc = cast[ptr QsciScintillasetIndentationGuidesForegroundColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: col)


  nimfunc[](slotval1)
proc QsciScintillasetIndentationsUseTabs*(self: gen_qsciscintilla_types.QsciScintilla, tabs: bool): void =
  fQsciScintilla_virtualbase_setIndentationsUseTabs(self.h, tabs)

type QsciScintillasetIndentationsUseTabsProc* = proc(tabs: bool): void
proc onsetIndentationsUseTabs*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetIndentationsUseTabsProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetIndentationsUseTabsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setIndentationsUseTabs(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setIndentationsUseTabs(self: ptr cQsciScintilla, slot: int, tabs: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setIndentationsUseTabs ".} =
  var nimfunc = cast[ptr QsciScintillasetIndentationsUseTabsProc](cast[pointer](slot))
  let slotval1 = tabs


  nimfunc[](slotval1)
proc QsciScintillasetIndentationWidth*(self: gen_qsciscintilla_types.QsciScintilla, width: cint): void =
  fQsciScintilla_virtualbase_setIndentationWidth(self.h, width)

type QsciScintillasetIndentationWidthProc* = proc(width: cint): void
proc onsetIndentationWidth*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetIndentationWidthProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetIndentationWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setIndentationWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setIndentationWidth(self: ptr cQsciScintilla, slot: int, width: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setIndentationWidth ".} =
  var nimfunc = cast[ptr QsciScintillasetIndentationWidthProc](cast[pointer](slot))
  let slotval1 = width


  nimfunc[](slotval1)
proc QsciScintillasetLexer*(self: gen_qsciscintilla_types.QsciScintilla, lexer: gen_qscilexer.QsciLexer): void =
  fQsciScintilla_virtualbase_setLexer(self.h, lexer.h)

type QsciScintillasetLexerProc* = proc(lexer: gen_qscilexer.QsciLexer): void
proc onsetLexer*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetLexerProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetLexerProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setLexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setLexer(self: ptr cQsciScintilla, slot: int, lexer: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_setLexer ".} =
  var nimfunc = cast[ptr QsciScintillasetLexerProc](cast[pointer](slot))
  let slotval1 = gen_qscilexer.QsciLexer(h: lexer)


  nimfunc[](slotval1)
proc QsciScintillasetMarginsBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fQsciScintilla_virtualbase_setMarginsBackgroundColor(self.h, col.h)

type QsciScintillasetMarginsBackgroundColorProc* = proc(col: gen_qcolor.QColor): void
proc onsetMarginsBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetMarginsBackgroundColorProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetMarginsBackgroundColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setMarginsBackgroundColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setMarginsBackgroundColor(self: ptr cQsciScintilla, slot: int, col: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_setMarginsBackgroundColor ".} =
  var nimfunc = cast[ptr QsciScintillasetMarginsBackgroundColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: col)


  nimfunc[](slotval1)
proc QsciScintillasetMarginsFont*(self: gen_qsciscintilla_types.QsciScintilla, f: gen_qfont.QFont): void =
  fQsciScintilla_virtualbase_setMarginsFont(self.h, f.h)

type QsciScintillasetMarginsFontProc* = proc(f: gen_qfont.QFont): void
proc onsetMarginsFont*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetMarginsFontProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetMarginsFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setMarginsFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setMarginsFont(self: ptr cQsciScintilla, slot: int, f: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_setMarginsFont ".} =
  var nimfunc = cast[ptr QsciScintillasetMarginsFontProc](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)


  nimfunc[](slotval1)
proc QsciScintillasetMarginsForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fQsciScintilla_virtualbase_setMarginsForegroundColor(self.h, col.h)

type QsciScintillasetMarginsForegroundColorProc* = proc(col: gen_qcolor.QColor): void
proc onsetMarginsForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetMarginsForegroundColorProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetMarginsForegroundColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setMarginsForegroundColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setMarginsForegroundColor(self: ptr cQsciScintilla, slot: int, col: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_setMarginsForegroundColor ".} =
  var nimfunc = cast[ptr QsciScintillasetMarginsForegroundColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: col)


  nimfunc[](slotval1)
proc QsciScintillasetMarginLineNumbers*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint, lnrs: bool): void =
  fQsciScintilla_virtualbase_setMarginLineNumbers(self.h, margin, lnrs)

type QsciScintillasetMarginLineNumbersProc* = proc(margin: cint, lnrs: bool): void
proc onsetMarginLineNumbers*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetMarginLineNumbersProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetMarginLineNumbersProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setMarginLineNumbers(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setMarginLineNumbers(self: ptr cQsciScintilla, slot: int, margin: cint, lnrs: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setMarginLineNumbers ".} =
  var nimfunc = cast[ptr QsciScintillasetMarginLineNumbersProc](cast[pointer](slot))
  let slotval1 = margin

  let slotval2 = lnrs


  nimfunc[](slotval1, slotval2)
proc QsciScintillasetMarginMarkerMask*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint, mask: cint): void =
  fQsciScintilla_virtualbase_setMarginMarkerMask(self.h, margin, mask)

type QsciScintillasetMarginMarkerMaskProc* = proc(margin: cint, mask: cint): void
proc onsetMarginMarkerMask*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetMarginMarkerMaskProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetMarginMarkerMaskProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setMarginMarkerMask(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setMarginMarkerMask(self: ptr cQsciScintilla, slot: int, margin: cint, mask: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setMarginMarkerMask ".} =
  var nimfunc = cast[ptr QsciScintillasetMarginMarkerMaskProc](cast[pointer](slot))
  let slotval1 = margin

  let slotval2 = mask


  nimfunc[](slotval1, slotval2)
proc QsciScintillasetMarginSensitivity*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint, sens: bool): void =
  fQsciScintilla_virtualbase_setMarginSensitivity(self.h, margin, sens)

type QsciScintillasetMarginSensitivityProc* = proc(margin: cint, sens: bool): void
proc onsetMarginSensitivity*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetMarginSensitivityProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetMarginSensitivityProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setMarginSensitivity(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setMarginSensitivity(self: ptr cQsciScintilla, slot: int, margin: cint, sens: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setMarginSensitivity ".} =
  var nimfunc = cast[ptr QsciScintillasetMarginSensitivityProc](cast[pointer](slot))
  let slotval1 = margin

  let slotval2 = sens


  nimfunc[](slotval1, slotval2)
proc QsciScintillasetMarginWidth*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint, width: cint): void =
  fQsciScintilla_virtualbase_setMarginWidth(self.h, margin, width)

type QsciScintillasetMarginWidthProc* = proc(margin: cint, width: cint): void
proc onsetMarginWidth*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetMarginWidthProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetMarginWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setMarginWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setMarginWidth(self: ptr cQsciScintilla, slot: int, margin: cint, width: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setMarginWidth ".} =
  var nimfunc = cast[ptr QsciScintillasetMarginWidthProc](cast[pointer](slot))
  let slotval1 = margin

  let slotval2 = width


  nimfunc[](slotval1, slotval2)
proc QsciScintillasetMarginWidth*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint, s: string): void =
  fQsciScintilla_virtualbase_setMarginWidth2(self.h, margin, struct_miqt_string(data: s, len: csize_t(len(s))))

type QsciScintillasetMarginWidth2Proc* = proc(margin: cint, s: string): void
proc onsetMarginWidth*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetMarginWidth2Proc) =
  # TODO check subclass
  var tmp = new QsciScintillasetMarginWidth2Proc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setMarginWidth2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setMarginWidth2(self: ptr cQsciScintilla, slot: int, margin: cint, s: struct_miqt_string): void {.exportc: "miqt_exec_callback_QsciScintilla_setMarginWidth2 ".} =
  var nimfunc = cast[ptr QsciScintillasetMarginWidth2Proc](cast[pointer](slot))
  let slotval1 = margin

  let vs_ms = s
  let vsx_ret = string.fromBytes(toOpenArrayByte(vs_ms.data, 0, int(vs_ms.len)-1))
  c_free(vs_ms.data)
  let slotval2 = vsx_ret


  nimfunc[](slotval1, slotval2)
proc QsciScintillasetModified*(self: gen_qsciscintilla_types.QsciScintilla, m: bool): void =
  fQsciScintilla_virtualbase_setModified(self.h, m)

type QsciScintillasetModifiedProc* = proc(m: bool): void
proc onsetModified*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetModifiedProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetModifiedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setModified(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setModified(self: ptr cQsciScintilla, slot: int, m: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setModified ".} =
  var nimfunc = cast[ptr QsciScintillasetModifiedProc](cast[pointer](slot))
  let slotval1 = m


  nimfunc[](slotval1)
proc QsciScintillasetPaper*(self: gen_qsciscintilla_types.QsciScintilla, c: gen_qcolor.QColor): void =
  fQsciScintilla_virtualbase_setPaper(self.h, c.h)

type QsciScintillasetPaperProc* = proc(c: gen_qcolor.QColor): void
proc onsetPaper*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetPaperProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetPaperProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setPaper(self: ptr cQsciScintilla, slot: int, c: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_setPaper ".} =
  var nimfunc = cast[ptr QsciScintillasetPaperProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: c)


  nimfunc[](slotval1)
proc QsciScintillasetReadOnly*(self: gen_qsciscintilla_types.QsciScintilla, ro: bool): void =
  fQsciScintilla_virtualbase_setReadOnly(self.h, ro)

type QsciScintillasetReadOnlyProc* = proc(ro: bool): void
proc onsetReadOnly*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetReadOnlyProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetReadOnlyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setReadOnly(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setReadOnly(self: ptr cQsciScintilla, slot: int, ro: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setReadOnly ".} =
  var nimfunc = cast[ptr QsciScintillasetReadOnlyProc](cast[pointer](slot))
  let slotval1 = ro


  nimfunc[](slotval1)
proc QsciScintillasetSelection*(self: gen_qsciscintilla_types.QsciScintilla, lineFrom: cint, indexFrom: cint, lineTo: cint, indexTo: cint): void =
  fQsciScintilla_virtualbase_setSelection(self.h, lineFrom, indexFrom, lineTo, indexTo)

type QsciScintillasetSelectionProc* = proc(lineFrom: cint, indexFrom: cint, lineTo: cint, indexTo: cint): void
proc onsetSelection*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetSelectionProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetSelectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setSelection(self: ptr cQsciScintilla, slot: int, lineFrom: cint, indexFrom: cint, lineTo: cint, indexTo: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setSelection ".} =
  var nimfunc = cast[ptr QsciScintillasetSelectionProc](cast[pointer](slot))
  let slotval1 = lineFrom

  let slotval2 = indexFrom

  let slotval3 = lineTo

  let slotval4 = indexTo


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QsciScintillasetSelectionBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fQsciScintilla_virtualbase_setSelectionBackgroundColor(self.h, col.h)

type QsciScintillasetSelectionBackgroundColorProc* = proc(col: gen_qcolor.QColor): void
proc onsetSelectionBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetSelectionBackgroundColorProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetSelectionBackgroundColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setSelectionBackgroundColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setSelectionBackgroundColor(self: ptr cQsciScintilla, slot: int, col: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_setSelectionBackgroundColor ".} =
  var nimfunc = cast[ptr QsciScintillasetSelectionBackgroundColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: col)


  nimfunc[](slotval1)
proc QsciScintillasetSelectionForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor.QColor): void =
  fQsciScintilla_virtualbase_setSelectionForegroundColor(self.h, col.h)

type QsciScintillasetSelectionForegroundColorProc* = proc(col: gen_qcolor.QColor): void
proc onsetSelectionForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetSelectionForegroundColorProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetSelectionForegroundColorProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setSelectionForegroundColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setSelectionForegroundColor(self: ptr cQsciScintilla, slot: int, col: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_setSelectionForegroundColor ".} =
  var nimfunc = cast[ptr QsciScintillasetSelectionForegroundColorProc](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: col)


  nimfunc[](slotval1)
proc QsciScintillasetTabIndents*(self: gen_qsciscintilla_types.QsciScintilla, indent: bool): void =
  fQsciScintilla_virtualbase_setTabIndents(self.h, indent)

type QsciScintillasetTabIndentsProc* = proc(indent: bool): void
proc onsetTabIndents*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetTabIndentsProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetTabIndentsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setTabIndents(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setTabIndents(self: ptr cQsciScintilla, slot: int, indent: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setTabIndents ".} =
  var nimfunc = cast[ptr QsciScintillasetTabIndentsProc](cast[pointer](slot))
  let slotval1 = indent


  nimfunc[](slotval1)
proc QsciScintillasetTabWidth*(self: gen_qsciscintilla_types.QsciScintilla, width: cint): void =
  fQsciScintilla_virtualbase_setTabWidth(self.h, width)

type QsciScintillasetTabWidthProc* = proc(width: cint): void
proc onsetTabWidth*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetTabWidthProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetTabWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setTabWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setTabWidth(self: ptr cQsciScintilla, slot: int, width: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setTabWidth ".} =
  var nimfunc = cast[ptr QsciScintillasetTabWidthProc](cast[pointer](slot))
  let slotval1 = width


  nimfunc[](slotval1)
proc QsciScintillasetText*(self: gen_qsciscintilla_types.QsciScintilla, text: string): void =
  fQsciScintilla_virtualbase_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

type QsciScintillasetTextProc* = proc(text: string): void
proc onsetText*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetTextProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetTextProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setText(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setText(self: ptr cQsciScintilla, slot: int, text: struct_miqt_string): void {.exportc: "miqt_exec_callback_QsciScintilla_setText ".} =
  var nimfunc = cast[ptr QsciScintillasetTextProc](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret


  nimfunc[](slotval1)
proc QsciScintillasetUtf8*(self: gen_qsciscintilla_types.QsciScintilla, cp: bool): void =
  fQsciScintilla_virtualbase_setUtf8(self.h, cp)

type QsciScintillasetUtf8Proc* = proc(cp: bool): void
proc onsetUtf8*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetUtf8Proc) =
  # TODO check subclass
  var tmp = new QsciScintillasetUtf8Proc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setUtf8(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setUtf8(self: ptr cQsciScintilla, slot: int, cp: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setUtf8 ".} =
  var nimfunc = cast[ptr QsciScintillasetUtf8Proc](cast[pointer](slot))
  let slotval1 = cp


  nimfunc[](slotval1)
proc QsciScintillasetWhitespaceVisibility*(self: gen_qsciscintilla_types.QsciScintilla, mode: cint): void =
  fQsciScintilla_virtualbase_setWhitespaceVisibility(self.h, cint(mode))

type QsciScintillasetWhitespaceVisibilityProc* = proc(mode: cint): void
proc onsetWhitespaceVisibility*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetWhitespaceVisibilityProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetWhitespaceVisibilityProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setWhitespaceVisibility(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setWhitespaceVisibility(self: ptr cQsciScintilla, slot: int, mode: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setWhitespaceVisibility ".} =
  var nimfunc = cast[ptr QsciScintillasetWhitespaceVisibilityProc](cast[pointer](slot))
  let slotval1 = cint(mode)


  nimfunc[](slotval1)
proc QsciScintillasetWrapMode*(self: gen_qsciscintilla_types.QsciScintilla, mode: cint): void =
  fQsciScintilla_virtualbase_setWrapMode(self.h, cint(mode))

type QsciScintillasetWrapModeProc* = proc(mode: cint): void
proc onsetWrapMode*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetWrapModeProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetWrapModeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setWrapMode(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setWrapMode(self: ptr cQsciScintilla, slot: int, mode: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setWrapMode ".} =
  var nimfunc = cast[ptr QsciScintillasetWrapModeProc](cast[pointer](slot))
  let slotval1 = cint(mode)


  nimfunc[](slotval1)
proc QsciScintillaundo*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fQsciScintilla_virtualbase_undo(self.h)

type QsciScintillaundoProc* = proc(): void
proc onundo*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaundoProc) =
  # TODO check subclass
  var tmp = new QsciScintillaundoProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_undo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_undo(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_undo ".} =
  var nimfunc = cast[ptr QsciScintillaundoProc](cast[pointer](slot))

  nimfunc[]()
proc QsciScintillaunindent*(self: gen_qsciscintilla_types.QsciScintilla, line: cint): void =
  fQsciScintilla_virtualbase_unindent(self.h, line)

type QsciScintillaunindentProc* = proc(line: cint): void
proc onunindent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaunindentProc) =
  # TODO check subclass
  var tmp = new QsciScintillaunindentProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_unindent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_unindent(self: ptr cQsciScintilla, slot: int, line: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_unindent ".} =
  var nimfunc = cast[ptr QsciScintillaunindentProc](cast[pointer](slot))
  let slotval1 = line


  nimfunc[](slotval1)
proc QsciScintillazoomIn*(self: gen_qsciscintilla_types.QsciScintilla, range: cint): void =
  fQsciScintilla_virtualbase_zoomIn(self.h, range)

type QsciScintillazoomInProc* = proc(range: cint): void
proc onzoomIn*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillazoomInProc) =
  # TODO check subclass
  var tmp = new QsciScintillazoomInProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_zoomIn(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_zoomIn(self: ptr cQsciScintilla, slot: int, range: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_zoomIn ".} =
  var nimfunc = cast[ptr QsciScintillazoomInProc](cast[pointer](slot))
  let slotval1 = range


  nimfunc[](slotval1)
proc QsciScintillazoomIn*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fQsciScintilla_virtualbase_zoomIn2(self.h)

type QsciScintillazoomIn2Proc* = proc(): void
proc onzoomIn*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillazoomIn2Proc) =
  # TODO check subclass
  var tmp = new QsciScintillazoomIn2Proc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_zoomIn2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_zoomIn2(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_zoomIn2 ".} =
  var nimfunc = cast[ptr QsciScintillazoomIn2Proc](cast[pointer](slot))

  nimfunc[]()
proc QsciScintillazoomOut*(self: gen_qsciscintilla_types.QsciScintilla, range: cint): void =
  fQsciScintilla_virtualbase_zoomOut(self.h, range)

type QsciScintillazoomOutProc* = proc(range: cint): void
proc onzoomOut*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillazoomOutProc) =
  # TODO check subclass
  var tmp = new QsciScintillazoomOutProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_zoomOut(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_zoomOut(self: ptr cQsciScintilla, slot: int, range: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_zoomOut ".} =
  var nimfunc = cast[ptr QsciScintillazoomOutProc](cast[pointer](slot))
  let slotval1 = range


  nimfunc[](slotval1)
proc QsciScintillazoomOut*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fQsciScintilla_virtualbase_zoomOut2(self.h)

type QsciScintillazoomOut2Proc* = proc(): void
proc onzoomOut*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillazoomOut2Proc) =
  # TODO check subclass
  var tmp = new QsciScintillazoomOut2Proc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_zoomOut2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_zoomOut2(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_zoomOut2 ".} =
  var nimfunc = cast[ptr QsciScintillazoomOut2Proc](cast[pointer](slot))

  nimfunc[]()
proc QsciScintillazoomTo*(self: gen_qsciscintilla_types.QsciScintilla, size: cint): void =
  fQsciScintilla_virtualbase_zoomTo(self.h, size)

type QsciScintillazoomToProc* = proc(size: cint): void
proc onzoomTo*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillazoomToProc) =
  # TODO check subclass
  var tmp = new QsciScintillazoomToProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_zoomTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_zoomTo(self: ptr cQsciScintilla, slot: int, size: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_zoomTo ".} =
  var nimfunc = cast[ptr QsciScintillazoomToProc](cast[pointer](slot))
  let slotval1 = size


  nimfunc[](slotval1)
proc QsciScintillaevent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qcoreevent.QEvent): bool =
  fQsciScintilla_virtualbase_event(self.h, e.h)

type QsciScintillaeventProc* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaeventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_event(self: ptr cQsciScintilla, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QsciScintilla_event ".} =
  var nimfunc = cast[ptr QsciScintillaeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciScintillachangeEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qcoreevent.QEvent): void =
  fQsciScintilla_virtualbase_changeEvent(self.h, e.h)

type QsciScintillachangeEventProc* = proc(e: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillachangeEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillachangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_changeEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_changeEvent ".} =
  var nimfunc = cast[ptr QsciScintillachangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintillacontextMenuEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent.QContextMenuEvent): void =
  fQsciScintilla_virtualbase_contextMenuEvent(self.h, e.h)

type QsciScintillacontextMenuEventProc* = proc(e: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillacontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillacontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_contextMenuEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_contextMenuEvent ".} =
  var nimfunc = cast[ptr QsciScintillacontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QContextMenuEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintillawheelEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent.QWheelEvent): void =
  fQsciScintilla_virtualbase_wheelEvent(self.h, e.h)

type QsciScintillawheelEventProc* = proc(e: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillawheelEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillawheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_wheelEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_wheelEvent ".} =
  var nimfunc = cast[ptr QsciScintillawheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QWheelEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintillacanInsertFromMimeData*(self: gen_qsciscintilla_types.QsciScintilla, source: gen_qmimedata.QMimeData): bool =
  fQsciScintilla_virtualbase_canInsertFromMimeData(self.h, source.h)

type QsciScintillacanInsertFromMimeDataProc* = proc(source: gen_qmimedata.QMimeData): bool
proc oncanInsertFromMimeData*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillacanInsertFromMimeDataProc) =
  # TODO check subclass
  var tmp = new QsciScintillacanInsertFromMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_canInsertFromMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_canInsertFromMimeData(self: ptr cQsciScintilla, slot: int, source: pointer): bool {.exportc: "miqt_exec_callback_QsciScintilla_canInsertFromMimeData ".} =
  var nimfunc = cast[ptr QsciScintillacanInsertFromMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata.QMimeData(h: source)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciScintillafromMimeData*(self: gen_qsciscintilla_types.QsciScintilla, source: gen_qmimedata.QMimeData, rectangular: ptr bool): seq[byte] =
  var v_bytearray = fQsciScintilla_virtualbase_fromMimeData(self.h, source.h, rectangular)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

type QsciScintillafromMimeDataProc* = proc(source: gen_qmimedata.QMimeData, rectangular: ptr bool): seq[byte]
proc onfromMimeData*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillafromMimeDataProc) =
  # TODO check subclass
  var tmp = new QsciScintillafromMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_fromMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_fromMimeData(self: ptr cQsciScintilla, slot: int, source: pointer, rectangular: ptr bool): struct_miqt_string {.exportc: "miqt_exec_callback_QsciScintilla_fromMimeData ".} =
  var nimfunc = cast[ptr QsciScintillafromMimeDataProc](cast[pointer](slot))
  let slotval1 = gen_qmimedata.QMimeData(h: source)

  let slotval2 = rectangular


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  struct_miqt_string(data: cast[cstring](if len(virtualReturn) == 0: nil else: unsafeAddr virtualReturn[0]), len: csize_t(len(virtualReturn)))
proc QsciScintillatoMimeData*(self: gen_qsciscintilla_types.QsciScintilla, text: seq[byte], rectangular: bool): gen_qmimedata.QMimeData =
  gen_qmimedata.QMimeData(h: fQsciScintilla_virtualbase_toMimeData(self.h, struct_miqt_string(data: cast[cstring](if len(text) == 0: nil else: unsafeAddr text[0]), len: csize_t(len(text))), rectangular))

type QsciScintillatoMimeDataProc* = proc(text: seq[byte], rectangular: bool): gen_qmimedata.QMimeData
proc ontoMimeData*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillatoMimeDataProc) =
  # TODO check subclass
  var tmp = new QsciScintillatoMimeDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_toMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_toMimeData(self: ptr cQsciScintilla, slot: int, text: struct_miqt_string, rectangular: bool): pointer {.exportc: "miqt_exec_callback_QsciScintilla_toMimeData ".} =
  var nimfunc = cast[ptr QsciScintillatoMimeDataProc](cast[pointer](slot))
  var vtext_bytearray = text
  var vtextx_ret = @(toOpenArrayByte(vtext_bytearray.data, 0, int(vtext_bytearray.len)-1))
  c_free(vtext_bytearray.data)
  let slotval1 = vtextx_ret

  let slotval2 = rectangular


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QsciScintilladragEnterEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent.QDragEnterEvent): void =
  fQsciScintilla_virtualbase_dragEnterEvent(self.h, e.h)

type QsciScintilladragEnterEventProc* = proc(e: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintilladragEnterEventProc) =
  # TODO check subclass
  var tmp = new QsciScintilladragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_dragEnterEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_dragEnterEvent ".} =
  var nimfunc = cast[ptr QsciScintilladragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QDragEnterEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintilladragLeaveEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent.QDragLeaveEvent): void =
  fQsciScintilla_virtualbase_dragLeaveEvent(self.h, e.h)

type QsciScintilladragLeaveEventProc* = proc(e: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintilladragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QsciScintilladragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_dragLeaveEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QsciScintilladragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QDragLeaveEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintilladragMoveEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent.QDragMoveEvent): void =
  fQsciScintilla_virtualbase_dragMoveEvent(self.h, e.h)

type QsciScintilladragMoveEventProc* = proc(e: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintilladragMoveEventProc) =
  # TODO check subclass
  var tmp = new QsciScintilladragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_dragMoveEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_dragMoveEvent ".} =
  var nimfunc = cast[ptr QsciScintilladragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QDragMoveEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintilladropEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent.QDropEvent): void =
  fQsciScintilla_virtualbase_dropEvent(self.h, e.h)

type QsciScintilladropEventProc* = proc(e: gen_qevent.QDropEvent): void
proc ondropEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintilladropEventProc) =
  # TODO check subclass
  var tmp = new QsciScintilladropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_dropEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_dropEvent ".} =
  var nimfunc = cast[ptr QsciScintilladropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QDropEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintillafocusInEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent.QFocusEvent): void =
  fQsciScintilla_virtualbase_focusInEvent(self.h, e.h)

type QsciScintillafocusInEventProc* = proc(e: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillafocusInEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillafocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_focusInEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_focusInEvent ".} =
  var nimfunc = cast[ptr QsciScintillafocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QFocusEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintillafocusOutEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent.QFocusEvent): void =
  fQsciScintilla_virtualbase_focusOutEvent(self.h, e.h)

type QsciScintillafocusOutEventProc* = proc(e: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillafocusOutEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillafocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_focusOutEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_focusOutEvent ".} =
  var nimfunc = cast[ptr QsciScintillafocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QFocusEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintillafocusNextPrevChild*(self: gen_qsciscintilla_types.QsciScintilla, next: bool): bool =
  fQsciScintilla_virtualbase_focusNextPrevChild(self.h, next)

type QsciScintillafocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillafocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QsciScintillafocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_focusNextPrevChild(self: ptr cQsciScintilla, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QsciScintilla_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QsciScintillafocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciScintillakeyPressEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent.QKeyEvent): void =
  fQsciScintilla_virtualbase_keyPressEvent(self.h, e.h)

type QsciScintillakeyPressEventProc* = proc(e: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillakeyPressEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillakeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_keyPressEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_keyPressEvent ".} =
  var nimfunc = cast[ptr QsciScintillakeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QKeyEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintillainputMethodEvent*(self: gen_qsciscintilla_types.QsciScintilla, event: gen_qevent.QInputMethodEvent): void =
  fQsciScintilla_virtualbase_inputMethodEvent(self.h, event.h)

type QsciScintillainputMethodEventProc* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillainputMethodEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillainputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_inputMethodEvent(self: ptr cQsciScintilla, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_inputMethodEvent ".} =
  var nimfunc = cast[ptr QsciScintillainputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc QsciScintillainputMethodQuery*(self: gen_qsciscintilla_types.QsciScintilla, query: cint): gen_qvariant.QVariant =
  gen_qvariant.QVariant(h: fQsciScintilla_virtualbase_inputMethodQuery(self.h, cint(query)))

type QsciScintillainputMethodQueryProc* = proc(query: cint): gen_qvariant.QVariant
proc oninputMethodQuery*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillainputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QsciScintillainputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_inputMethodQuery(self: ptr cQsciScintilla, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QsciScintilla_inputMethodQuery ".} =
  var nimfunc = cast[ptr QsciScintillainputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciScintillamouseDoubleClickEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent.QMouseEvent): void =
  fQsciScintilla_virtualbase_mouseDoubleClickEvent(self.h, e.h)

type QsciScintillamouseDoubleClickEventProc* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillamouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillamouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_mouseDoubleClickEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QsciScintillamouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintillamouseMoveEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent.QMouseEvent): void =
  fQsciScintilla_virtualbase_mouseMoveEvent(self.h, e.h)

type QsciScintillamouseMoveEventProc* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillamouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillamouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_mouseMoveEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QsciScintillamouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintillamousePressEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent.QMouseEvent): void =
  fQsciScintilla_virtualbase_mousePressEvent(self.h, e.h)

type QsciScintillamousePressEventProc* = proc(e: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillamousePressEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillamousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_mousePressEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_mousePressEvent ".} =
  var nimfunc = cast[ptr QsciScintillamousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintillamouseReleaseEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent.QMouseEvent): void =
  fQsciScintilla_virtualbase_mouseReleaseEvent(self.h, e.h)

type QsciScintillamouseReleaseEventProc* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillamouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillamouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_mouseReleaseEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QsciScintillamouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintillapaintEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent.QPaintEvent): void =
  fQsciScintilla_virtualbase_paintEvent(self.h, e.h)

type QsciScintillapaintEventProc* = proc(e: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillapaintEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillapaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_paintEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_paintEvent ".} =
  var nimfunc = cast[ptr QsciScintillapaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QPaintEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintillaresizeEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent.QResizeEvent): void =
  fQsciScintilla_virtualbase_resizeEvent(self.h, e.h)

type QsciScintillaresizeEventProc* = proc(e: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaresizeEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_resizeEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_resizeEvent ".} =
  var nimfunc = cast[ptr QsciScintillaresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QResizeEvent(h: e)


  nimfunc[](slotval1)
proc QsciScintillascrollContentsBy*(self: gen_qsciscintilla_types.QsciScintilla, dx: cint, dy: cint): void =
  fQsciScintilla_virtualbase_scrollContentsBy(self.h, dx, dy)

type QsciScintillascrollContentsByProc* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillascrollContentsByProc) =
  # TODO check subclass
  var tmp = new QsciScintillascrollContentsByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_scrollContentsBy(self: ptr cQsciScintilla, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_scrollContentsBy ".} =
  var nimfunc = cast[ptr QsciScintillascrollContentsByProc](cast[pointer](slot))
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](slotval1, slotval2)
proc QsciScintillaminimumSizeHint*(self: gen_qsciscintilla_types.QsciScintilla, ): gen_qsize.QSize =
  gen_qsize.QSize(h: fQsciScintilla_virtualbase_minimumSizeHint(self.h))

type QsciScintillaminimumSizeHintProc* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QsciScintillaminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_minimumSizeHint(self: ptr cQsciScintilla, slot: int): pointer {.exportc: "miqt_exec_callback_QsciScintilla_minimumSizeHint ".} =
  var nimfunc = cast[ptr QsciScintillaminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciScintillasizeHint*(self: gen_qsciscintilla_types.QsciScintilla, ): gen_qsize.QSize =
  gen_qsize.QSize(h: fQsciScintilla_virtualbase_sizeHint(self.h))

type QsciScintillasizeHintProc* = proc(): gen_qsize.QSize
proc onsizeHint*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasizeHintProc) =
  # TODO check subclass
  var tmp = new QsciScintillasizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_sizeHint(self: ptr cQsciScintilla, slot: int): pointer {.exportc: "miqt_exec_callback_QsciScintilla_sizeHint ".} =
  var nimfunc = cast[ptr QsciScintillasizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciScintillasetupViewport*(self: gen_qsciscintilla_types.QsciScintilla, viewport: gen_qwidget.QWidget): void =
  fQsciScintilla_virtualbase_setupViewport(self.h, viewport.h)

type QsciScintillasetupViewportProc* = proc(viewport: gen_qwidget.QWidget): void
proc onsetupViewport*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetupViewportProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetupViewportProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setupViewport(self: ptr cQsciScintilla, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_setupViewport ".} =
  var nimfunc = cast[ptr QsciScintillasetupViewportProc](cast[pointer](slot))
  let slotval1 = gen_qwidget.QWidget(h: viewport)


  nimfunc[](slotval1)
proc QsciScintillaeventFilter*(self: gen_qsciscintilla_types.QsciScintilla, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =
  fQsciScintilla_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QsciScintillaeventFilterProc* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciScintillaeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_eventFilter(self: ptr cQsciScintilla, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QsciScintilla_eventFilter ".} =
  var nimfunc = cast[ptr QsciScintillaeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciScintillaviewportEvent*(self: gen_qsciscintilla_types.QsciScintilla, param1: gen_qcoreevent.QEvent): bool =
  fQsciScintilla_virtualbase_viewportEvent(self.h, param1.h)

type QsciScintillaviewportEventProc* = proc(param1: gen_qcoreevent.QEvent): bool
proc onviewportEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaviewportEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaviewportEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_viewportEvent(self: ptr cQsciScintilla, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QsciScintilla_viewportEvent ".} =
  var nimfunc = cast[ptr QsciScintillaviewportEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciScintillaviewportSizeHint*(self: gen_qsciscintilla_types.QsciScintilla, ): gen_qsize.QSize =
  gen_qsize.QSize(h: fQsciScintilla_virtualbase_viewportSizeHint(self.h))

type QsciScintillaviewportSizeHintProc* = proc(): gen_qsize.QSize
proc onviewportSizeHint*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaviewportSizeHintProc) =
  # TODO check subclass
  var tmp = new QsciScintillaviewportSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_viewportSizeHint(self: ptr cQsciScintilla, slot: int): pointer {.exportc: "miqt_exec_callback_QsciScintilla_viewportSizeHint ".} =
  var nimfunc = cast[ptr QsciScintillaviewportSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciScintilladevType*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  fQsciScintilla_virtualbase_devType(self.h)

type QsciScintilladevTypeProc* = proc(): cint
proc ondevType*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintilladevTypeProc) =
  # TODO check subclass
  var tmp = new QsciScintilladevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_devType(self: ptr cQsciScintilla, slot: int): cint {.exportc: "miqt_exec_callback_QsciScintilla_devType ".} =
  var nimfunc = cast[ptr QsciScintilladevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciScintillasetVisible*(self: gen_qsciscintilla_types.QsciScintilla, visible: bool): void =
  fQsciScintilla_virtualbase_setVisible(self.h, visible)

type QsciScintillasetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasetVisibleProc) =
  # TODO check subclass
  var tmp = new QsciScintillasetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setVisible(self: ptr cQsciScintilla, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setVisible ".} =
  var nimfunc = cast[ptr QsciScintillasetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QsciScintillaheightForWidth*(self: gen_qsciscintilla_types.QsciScintilla, param1: cint): cint =
  fQsciScintilla_virtualbase_heightForWidth(self.h, param1)

type QsciScintillaheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaheightForWidthProc) =
  # TODO check subclass
  var tmp = new QsciScintillaheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_heightForWidth(self: ptr cQsciScintilla, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QsciScintilla_heightForWidth ".} =
  var nimfunc = cast[ptr QsciScintillaheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciScintillahasHeightForWidth*(self: gen_qsciscintilla_types.QsciScintilla, ): bool =
  fQsciScintilla_virtualbase_hasHeightForWidth(self.h)

type QsciScintillahasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillahasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QsciScintillahasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_hasHeightForWidth(self: ptr cQsciScintilla, slot: int): bool {.exportc: "miqt_exec_callback_QsciScintilla_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QsciScintillahasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QsciScintillapaintEngine*(self: gen_qsciscintilla_types.QsciScintilla, ): gen_qpaintengine.QPaintEngine =
  gen_qpaintengine.QPaintEngine(h: fQsciScintilla_virtualbase_paintEngine(self.h))

type QsciScintillapaintEngineProc* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillapaintEngineProc) =
  # TODO check subclass
  var tmp = new QsciScintillapaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_paintEngine(self: ptr cQsciScintilla, slot: int): pointer {.exportc: "miqt_exec_callback_QsciScintilla_paintEngine ".} =
  var nimfunc = cast[ptr QsciScintillapaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciScintillakeyReleaseEvent*(self: gen_qsciscintilla_types.QsciScintilla, event: gen_qevent.QKeyEvent): void =
  fQsciScintilla_virtualbase_keyReleaseEvent(self.h, event.h)

type QsciScintillakeyReleaseEventProc* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillakeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillakeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_keyReleaseEvent(self: ptr cQsciScintilla, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QsciScintillakeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QsciScintillaenterEvent*(self: gen_qsciscintilla_types.QsciScintilla, event: gen_qcoreevent.QEvent): void =
  fQsciScintilla_virtualbase_enterEvent(self.h, event.h)

type QsciScintillaenterEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaenterEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_enterEvent(self: ptr cQsciScintilla, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_enterEvent ".} =
  var nimfunc = cast[ptr QsciScintillaenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciScintillaleaveEvent*(self: gen_qsciscintilla_types.QsciScintilla, event: gen_qcoreevent.QEvent): void =
  fQsciScintilla_virtualbase_leaveEvent(self.h, event.h)

type QsciScintillaleaveEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaleaveEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_leaveEvent(self: ptr cQsciScintilla, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_leaveEvent ".} =
  var nimfunc = cast[ptr QsciScintillaleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciScintillamoveEvent*(self: gen_qsciscintilla_types.QsciScintilla, event: gen_qevent.QMoveEvent): void =
  fQsciScintilla_virtualbase_moveEvent(self.h, event.h)

type QsciScintillamoveEventProc* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillamoveEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillamoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_moveEvent(self: ptr cQsciScintilla, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_moveEvent ".} =
  var nimfunc = cast[ptr QsciScintillamoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QsciScintillacloseEvent*(self: gen_qsciscintilla_types.QsciScintilla, event: gen_qevent.QCloseEvent): void =
  fQsciScintilla_virtualbase_closeEvent(self.h, event.h)

type QsciScintillacloseEventProc* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillacloseEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillacloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_closeEvent(self: ptr cQsciScintilla, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_closeEvent ".} =
  var nimfunc = cast[ptr QsciScintillacloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QsciScintillatabletEvent*(self: gen_qsciscintilla_types.QsciScintilla, event: gen_qevent.QTabletEvent): void =
  fQsciScintilla_virtualbase_tabletEvent(self.h, event.h)

type QsciScintillatabletEventProc* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillatabletEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillatabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_tabletEvent(self: ptr cQsciScintilla, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_tabletEvent ".} =
  var nimfunc = cast[ptr QsciScintillatabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QsciScintillaactionEvent*(self: gen_qsciscintilla_types.QsciScintilla, event: gen_qevent.QActionEvent): void =
  fQsciScintilla_virtualbase_actionEvent(self.h, event.h)

type QsciScintillaactionEventProc* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaactionEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillaactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_actionEvent(self: ptr cQsciScintilla, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_actionEvent ".} =
  var nimfunc = cast[ptr QsciScintillaactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QsciScintillashowEvent*(self: gen_qsciscintilla_types.QsciScintilla, event: gen_qevent.QShowEvent): void =
  fQsciScintilla_virtualbase_showEvent(self.h, event.h)

type QsciScintillashowEventProc* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillashowEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillashowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_showEvent(self: ptr cQsciScintilla, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_showEvent ".} =
  var nimfunc = cast[ptr QsciScintillashowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QsciScintillahideEvent*(self: gen_qsciscintilla_types.QsciScintilla, event: gen_qevent.QHideEvent): void =
  fQsciScintilla_virtualbase_hideEvent(self.h, event.h)

type QsciScintillahideEventProc* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillahideEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillahideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_hideEvent(self: ptr cQsciScintilla, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_hideEvent ".} =
  var nimfunc = cast[ptr QsciScintillahideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QsciScintillanativeEvent*(self: gen_qsciscintilla_types.QsciScintilla, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQsciScintilla_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QsciScintillanativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillanativeEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillanativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_nativeEvent(self: ptr cQsciScintilla, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QsciScintilla_nativeEvent ".} =
  var nimfunc = cast[ptr QsciScintillanativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciScintillametric*(self: gen_qsciscintilla_types.QsciScintilla, param1: cint): cint =
  fQsciScintilla_virtualbase_metric(self.h, cint(param1))

type QsciScintillametricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillametricProc) =
  # TODO check subclass
  var tmp = new QsciScintillametricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_metric(self: ptr cQsciScintilla, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QsciScintilla_metric ".} =
  var nimfunc = cast[ptr QsciScintillametricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciScintillainitPainter*(self: gen_qsciscintilla_types.QsciScintilla, painter: gen_qpainter.QPainter): void =
  fQsciScintilla_virtualbase_initPainter(self.h, painter.h)

type QsciScintillainitPainterProc* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillainitPainterProc) =
  # TODO check subclass
  var tmp = new QsciScintillainitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_initPainter(self: ptr cQsciScintilla, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_initPainter ".} =
  var nimfunc = cast[ptr QsciScintillainitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](slotval1)
proc QsciScintillaredirected*(self: gen_qsciscintilla_types.QsciScintilla, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =
  gen_qpaintdevice.QPaintDevice(h: fQsciScintilla_virtualbase_redirected(self.h, offset.h))

type QsciScintillaredirectedProc* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaredirectedProc) =
  # TODO check subclass
  var tmp = new QsciScintillaredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_redirected(self: ptr cQsciScintilla, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QsciScintilla_redirected ".} =
  var nimfunc = cast[ptr QsciScintillaredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QsciScintillasharedPainter*(self: gen_qsciscintilla_types.QsciScintilla, ): gen_qpainter.QPainter =
  gen_qpainter.QPainter(h: fQsciScintilla_virtualbase_sharedPainter(self.h))

type QsciScintillasharedPainterProc* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillasharedPainterProc) =
  # TODO check subclass
  var tmp = new QsciScintillasharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_sharedPainter(self: ptr cQsciScintilla, slot: int): pointer {.exportc: "miqt_exec_callback_QsciScintilla_sharedPainter ".} =
  var nimfunc = cast[ptr QsciScintillasharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciScintillatimerEvent*(self: gen_qsciscintilla_types.QsciScintilla, event: gen_qcoreevent.QTimerEvent): void =
  fQsciScintilla_virtualbase_timerEvent(self.h, event.h)

type QsciScintillatimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillatimerEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillatimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_timerEvent(self: ptr cQsciScintilla, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_timerEvent ".} =
  var nimfunc = cast[ptr QsciScintillatimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciScintillachildEvent*(self: gen_qsciscintilla_types.QsciScintilla, event: gen_qcoreevent.QChildEvent): void =
  fQsciScintilla_virtualbase_childEvent(self.h, event.h)

type QsciScintillachildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillachildEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillachildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_childEvent(self: ptr cQsciScintilla, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_childEvent ".} =
  var nimfunc = cast[ptr QsciScintillachildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciScintillacustomEvent*(self: gen_qsciscintilla_types.QsciScintilla, event: gen_qcoreevent.QEvent): void =
  fQsciScintilla_virtualbase_customEvent(self.h, event.h)

type QsciScintillacustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillacustomEventProc) =
  # TODO check subclass
  var tmp = new QsciScintillacustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_customEvent(self: ptr cQsciScintilla, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_customEvent ".} =
  var nimfunc = cast[ptr QsciScintillacustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciScintillaconnectNotify*(self: gen_qsciscintilla_types.QsciScintilla, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciScintilla_virtualbase_connectNotify(self.h, signal.h)

type QsciScintillaconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciScintillaconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_connectNotify(self: ptr cQsciScintilla, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_connectNotify ".} =
  var nimfunc = cast[ptr QsciScintillaconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciScintilladisconnectNotify*(self: gen_qsciscintilla_types.QsciScintilla, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciScintilla_virtualbase_disconnectNotify(self.h, signal.h)

type QsciScintilladisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintilladisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciScintilladisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_disconnectNotify(self: ptr cQsciScintilla, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciScintilladisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qsciscintilla_types.QsciScintilla): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciScintilla_staticMetaObject())
proc delete*(self: gen_qsciscintilla_types.QsciScintilla) =
  fcQsciScintilla_delete(self.h)
