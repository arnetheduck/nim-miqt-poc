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
  gen_qcolor_types,
  gen_qcoreevent_types,
  gen_qevent_types,
  gen_qfont_types,
  gen_qimage_types,
  gen_qiodevice_types,
  gen_qmenu_types,
  gen_qmetaobject_types,
  gen_qmimedata_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qpixmap_types,
  gen_qpoint_types,
  gen_qscicommandset_types,
  gen_qscidocument_types,
  gen_qscilexer_types,
  gen_qsciscintillabase,
  gen_qscistyle_types,
  gen_qscistyledtext_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qwidget_types
export
  gen_qcolor_types,
  gen_qcoreevent_types,
  gen_qevent_types,
  gen_qfont_types,
  gen_qimage_types,
  gen_qiodevice_types,
  gen_qmenu_types,
  gen_qmetaobject_types,
  gen_qmimedata_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qpixmap_types,
  gen_qpoint_types,
  gen_qscicommandset_types,
  gen_qscidocument_types,
  gen_qscilexer_types,
  gen_qsciscintillabase,
  gen_qscistyle_types,
  gen_qscistyledtext_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qwidget_types

type cQsciScintilla*{.exportc: "QsciScintilla", incompleteStruct.} = object

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
proc fcQsciScintilla_connect_cursorPositionChanged(self: pointer, slot: int) {.importc: "QsciScintilla_connect_cursorPositionChanged".}
proc fcQsciScintilla_copyAvailable(self: pointer, yes: bool): void {.importc: "QsciScintilla_copyAvailable".}
proc fcQsciScintilla_connect_copyAvailable(self: pointer, slot: int) {.importc: "QsciScintilla_connect_copyAvailable".}
proc fcQsciScintilla_indicatorClicked(self: pointer, line: cint, index: cint, state: cint): void {.importc: "QsciScintilla_indicatorClicked".}
proc fcQsciScintilla_connect_indicatorClicked(self: pointer, slot: int) {.importc: "QsciScintilla_connect_indicatorClicked".}
proc fcQsciScintilla_indicatorReleased(self: pointer, line: cint, index: cint, state: cint): void {.importc: "QsciScintilla_indicatorReleased".}
proc fcQsciScintilla_connect_indicatorReleased(self: pointer, slot: int) {.importc: "QsciScintilla_connect_indicatorReleased".}
proc fcQsciScintilla_linesChanged(self: pointer, ): void {.importc: "QsciScintilla_linesChanged".}
proc fcQsciScintilla_connect_linesChanged(self: pointer, slot: int) {.importc: "QsciScintilla_connect_linesChanged".}
proc fcQsciScintilla_marginClicked(self: pointer, margin: cint, line: cint, state: cint): void {.importc: "QsciScintilla_marginClicked".}
proc fcQsciScintilla_connect_marginClicked(self: pointer, slot: int) {.importc: "QsciScintilla_connect_marginClicked".}
proc fcQsciScintilla_marginRightClicked(self: pointer, margin: cint, line: cint, state: cint): void {.importc: "QsciScintilla_marginRightClicked".}
proc fcQsciScintilla_connect_marginRightClicked(self: pointer, slot: int) {.importc: "QsciScintilla_connect_marginRightClicked".}
proc fcQsciScintilla_modificationAttempted(self: pointer, ): void {.importc: "QsciScintilla_modificationAttempted".}
proc fcQsciScintilla_connect_modificationAttempted(self: pointer, slot: int) {.importc: "QsciScintilla_connect_modificationAttempted".}
proc fcQsciScintilla_modificationChanged(self: pointer, m: bool): void {.importc: "QsciScintilla_modificationChanged".}
proc fcQsciScintilla_connect_modificationChanged(self: pointer, slot: int) {.importc: "QsciScintilla_connect_modificationChanged".}
proc fcQsciScintilla_selectionChanged(self: pointer, ): void {.importc: "QsciScintilla_selectionChanged".}
proc fcQsciScintilla_connect_selectionChanged(self: pointer, slot: int) {.importc: "QsciScintilla_connect_selectionChanged".}
proc fcQsciScintilla_textChanged(self: pointer, ): void {.importc: "QsciScintilla_textChanged".}
proc fcQsciScintilla_connect_textChanged(self: pointer, slot: int) {.importc: "QsciScintilla_connect_textChanged".}
proc fcQsciScintilla_userListActivated(self: pointer, id: cint, string: struct_miqt_string): void {.importc: "QsciScintilla_userListActivated".}
proc fcQsciScintilla_connect_userListActivated(self: pointer, slot: int) {.importc: "QsciScintilla_connect_userListActivated".}
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
type cQsciScintillaVTable = object
  destructor*: proc(vtbl: ptr cQsciScintillaVTable, self: ptr cQsciScintilla) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  apiContext*: proc(vtbl, self: pointer, pos: cint, context_start: ptr cint, last_word_start: ptr cint): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  findFirst*: proc(vtbl, self: pointer, expr: struct_miqt_string, re: bool, cs: bool, wo: bool, wrap: bool, forward: bool, line: cint, index: cint, show: bool, posix: bool, cxx11: bool): bool {.cdecl, raises: [], gcsafe.}
  findFirstInSelection*: proc(vtbl, self: pointer, expr: struct_miqt_string, re: bool, cs: bool, wo: bool, forward: bool, show: bool, posix: bool, cxx11: bool): bool {.cdecl, raises: [], gcsafe.}
  findNext*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  recolor*: proc(vtbl, self: pointer, start: cint, endVal: cint): void {.cdecl, raises: [], gcsafe.}
  replace*: proc(vtbl, self: pointer, replaceStr: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  append*: proc(vtbl, self: pointer, text: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  autoCompleteFromAll*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  autoCompleteFromAPIs*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  autoCompleteFromDocument*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  callTip*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  clear*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  copy*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  cut*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  ensureCursorVisible*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  ensureLineVisible*: proc(vtbl, self: pointer, line: cint): void {.cdecl, raises: [], gcsafe.}
  foldAll*: proc(vtbl, self: pointer, children: bool): void {.cdecl, raises: [], gcsafe.}
  foldLine*: proc(vtbl, self: pointer, line: cint): void {.cdecl, raises: [], gcsafe.}
  indent*: proc(vtbl, self: pointer, line: cint): void {.cdecl, raises: [], gcsafe.}
  insert*: proc(vtbl, self: pointer, text: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  insertAt*: proc(vtbl, self: pointer, text: struct_miqt_string, line: cint, index: cint): void {.cdecl, raises: [], gcsafe.}
  moveToMatchingBrace*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  paste*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  redo*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  removeSelectedText*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  replaceSelectedText*: proc(vtbl, self: pointer, text: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  resetSelectionBackgroundColor*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  resetSelectionForegroundColor*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  selectAll*: proc(vtbl, self: pointer, select: bool): void {.cdecl, raises: [], gcsafe.}
  selectToMatchingBrace*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  setAutoCompletionCaseSensitivity*: proc(vtbl, self: pointer, cs: bool): void {.cdecl, raises: [], gcsafe.}
  setAutoCompletionReplaceWord*: proc(vtbl, self: pointer, replace: bool): void {.cdecl, raises: [], gcsafe.}
  setAutoCompletionShowSingle*: proc(vtbl, self: pointer, single: bool): void {.cdecl, raises: [], gcsafe.}
  setAutoCompletionSource*: proc(vtbl, self: pointer, source: cint): void {.cdecl, raises: [], gcsafe.}
  setAutoCompletionThreshold*: proc(vtbl, self: pointer, thresh: cint): void {.cdecl, raises: [], gcsafe.}
  setAutoCompletionUseSingle*: proc(vtbl, self: pointer, single: cint): void {.cdecl, raises: [], gcsafe.}
  setAutoIndent*: proc(vtbl, self: pointer, autoindent: bool): void {.cdecl, raises: [], gcsafe.}
  setBraceMatching*: proc(vtbl, self: pointer, bm: cint): void {.cdecl, raises: [], gcsafe.}
  setBackspaceUnindents*: proc(vtbl, self: pointer, unindent: bool): void {.cdecl, raises: [], gcsafe.}
  setCaretForegroundColor*: proc(vtbl, self: pointer, col: pointer): void {.cdecl, raises: [], gcsafe.}
  setCaretLineBackgroundColor*: proc(vtbl, self: pointer, col: pointer): void {.cdecl, raises: [], gcsafe.}
  setCaretLineFrameWidth*: proc(vtbl, self: pointer, width: cint): void {.cdecl, raises: [], gcsafe.}
  setCaretLineVisible*: proc(vtbl, self: pointer, enable: bool): void {.cdecl, raises: [], gcsafe.}
  setCaretWidth*: proc(vtbl, self: pointer, width: cint): void {.cdecl, raises: [], gcsafe.}
  setColor*: proc(vtbl, self: pointer, c: pointer): void {.cdecl, raises: [], gcsafe.}
  setCursorPosition*: proc(vtbl, self: pointer, line: cint, index: cint): void {.cdecl, raises: [], gcsafe.}
  setEolMode*: proc(vtbl, self: pointer, mode: cint): void {.cdecl, raises: [], gcsafe.}
  setEolVisibility*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  setFolding*: proc(vtbl, self: pointer, fold: cint, margin: cint): void {.cdecl, raises: [], gcsafe.}
  setIndentation*: proc(vtbl, self: pointer, line: cint, indentation: cint): void {.cdecl, raises: [], gcsafe.}
  setIndentationGuides*: proc(vtbl, self: pointer, enable: bool): void {.cdecl, raises: [], gcsafe.}
  setIndentationGuidesBackgroundColor*: proc(vtbl, self: pointer, col: pointer): void {.cdecl, raises: [], gcsafe.}
  setIndentationGuidesForegroundColor*: proc(vtbl, self: pointer, col: pointer): void {.cdecl, raises: [], gcsafe.}
  setIndentationsUseTabs*: proc(vtbl, self: pointer, tabs: bool): void {.cdecl, raises: [], gcsafe.}
  setIndentationWidth*: proc(vtbl, self: pointer, width: cint): void {.cdecl, raises: [], gcsafe.}
  setLexer*: proc(vtbl, self: pointer, lexer: pointer): void {.cdecl, raises: [], gcsafe.}
  setMarginsBackgroundColor*: proc(vtbl, self: pointer, col: pointer): void {.cdecl, raises: [], gcsafe.}
  setMarginsFont*: proc(vtbl, self: pointer, f: pointer): void {.cdecl, raises: [], gcsafe.}
  setMarginsForegroundColor*: proc(vtbl, self: pointer, col: pointer): void {.cdecl, raises: [], gcsafe.}
  setMarginLineNumbers*: proc(vtbl, self: pointer, margin: cint, lnrs: bool): void {.cdecl, raises: [], gcsafe.}
  setMarginMarkerMask*: proc(vtbl, self: pointer, margin: cint, mask: cint): void {.cdecl, raises: [], gcsafe.}
  setMarginSensitivity*: proc(vtbl, self: pointer, margin: cint, sens: bool): void {.cdecl, raises: [], gcsafe.}
  setMarginWidth*: proc(vtbl, self: pointer, margin: cint, width: cint): void {.cdecl, raises: [], gcsafe.}
  setMarginWidth*: proc(vtbl, self: pointer, margin: cint, s: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  setModified*: proc(vtbl, self: pointer, m: bool): void {.cdecl, raises: [], gcsafe.}
  setPaper*: proc(vtbl, self: pointer, c: pointer): void {.cdecl, raises: [], gcsafe.}
  setReadOnly*: proc(vtbl, self: pointer, ro: bool): void {.cdecl, raises: [], gcsafe.}
  setSelection*: proc(vtbl, self: pointer, lineFrom: cint, indexFrom: cint, lineTo: cint, indexTo: cint): void {.cdecl, raises: [], gcsafe.}
  setSelectionBackgroundColor*: proc(vtbl, self: pointer, col: pointer): void {.cdecl, raises: [], gcsafe.}
  setSelectionForegroundColor*: proc(vtbl, self: pointer, col: pointer): void {.cdecl, raises: [], gcsafe.}
  setTabIndents*: proc(vtbl, self: pointer, indent: bool): void {.cdecl, raises: [], gcsafe.}
  setTabWidth*: proc(vtbl, self: pointer, width: cint): void {.cdecl, raises: [], gcsafe.}
  setText*: proc(vtbl, self: pointer, text: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  setUtf8*: proc(vtbl, self: pointer, cp: bool): void {.cdecl, raises: [], gcsafe.}
  setWhitespaceVisibility*: proc(vtbl, self: pointer, mode: cint): void {.cdecl, raises: [], gcsafe.}
  setWrapMode*: proc(vtbl, self: pointer, mode: cint): void {.cdecl, raises: [], gcsafe.}
  undo*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  unindent*: proc(vtbl, self: pointer, line: cint): void {.cdecl, raises: [], gcsafe.}
  zoomIn*: proc(vtbl, self: pointer, range: cint): void {.cdecl, raises: [], gcsafe.}
  zoomIn*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  zoomOut*: proc(vtbl, self: pointer, range: cint): void {.cdecl, raises: [], gcsafe.}
  zoomOut*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  zoomTo*: proc(vtbl, self: pointer, size: cint): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  canInsertFromMimeData*: proc(vtbl, self: pointer, source: pointer): bool {.cdecl, raises: [], gcsafe.}
  fromMimeData*: proc(vtbl, self: pointer, source: pointer, rectangular: ptr bool): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  toMimeData*: proc(vtbl, self: pointer, text: struct_miqt_string, rectangular: bool): pointer {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  scrollContentsBy*: proc(vtbl, self: pointer, dx: cint, dy: cint): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setupViewport*: proc(vtbl, self: pointer, viewport: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  viewportEvent*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  viewportSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQsciScintilla_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciScintilla_virtualbase_metaObject".}
proc fcQsciScintilla_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciScintilla_virtualbase_metacast".}
proc fcQsciScintilla_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciScintilla_virtualbase_metacall".}
proc fcQsciScintilla_virtualbase_apiContext(self: pointer, pos: cint, context_start: ptr cint, last_word_start: ptr cint): struct_miqt_array {.importc: "QsciScintilla_virtualbase_apiContext".}
proc fcQsciScintilla_virtualbase_findFirst(self: pointer, expr: struct_miqt_string, re: bool, cs: bool, wo: bool, wrap: bool, forward: bool, line: cint, index: cint, show: bool, posix: bool, cxx11: bool): bool {.importc: "QsciScintilla_virtualbase_findFirst".}
proc fcQsciScintilla_virtualbase_findFirstInSelection(self: pointer, expr: struct_miqt_string, re: bool, cs: bool, wo: bool, forward: bool, show: bool, posix: bool, cxx11: bool): bool {.importc: "QsciScintilla_virtualbase_findFirstInSelection".}
proc fcQsciScintilla_virtualbase_findNext(self: pointer, ): bool {.importc: "QsciScintilla_virtualbase_findNext".}
proc fcQsciScintilla_virtualbase_recolor(self: pointer, start: cint, endVal: cint): void {.importc: "QsciScintilla_virtualbase_recolor".}
proc fcQsciScintilla_virtualbase_replace(self: pointer, replaceStr: struct_miqt_string): void {.importc: "QsciScintilla_virtualbase_replace".}
proc fcQsciScintilla_virtualbase_append(self: pointer, text: struct_miqt_string): void {.importc: "QsciScintilla_virtualbase_append".}
proc fcQsciScintilla_virtualbase_autoCompleteFromAll(self: pointer, ): void {.importc: "QsciScintilla_virtualbase_autoCompleteFromAll".}
proc fcQsciScintilla_virtualbase_autoCompleteFromAPIs(self: pointer, ): void {.importc: "QsciScintilla_virtualbase_autoCompleteFromAPIs".}
proc fcQsciScintilla_virtualbase_autoCompleteFromDocument(self: pointer, ): void {.importc: "QsciScintilla_virtualbase_autoCompleteFromDocument".}
proc fcQsciScintilla_virtualbase_callTip(self: pointer, ): void {.importc: "QsciScintilla_virtualbase_callTip".}
proc fcQsciScintilla_virtualbase_clear(self: pointer, ): void {.importc: "QsciScintilla_virtualbase_clear".}
proc fcQsciScintilla_virtualbase_copy(self: pointer, ): void {.importc: "QsciScintilla_virtualbase_copy".}
proc fcQsciScintilla_virtualbase_cut(self: pointer, ): void {.importc: "QsciScintilla_virtualbase_cut".}
proc fcQsciScintilla_virtualbase_ensureCursorVisible(self: pointer, ): void {.importc: "QsciScintilla_virtualbase_ensureCursorVisible".}
proc fcQsciScintilla_virtualbase_ensureLineVisible(self: pointer, line: cint): void {.importc: "QsciScintilla_virtualbase_ensureLineVisible".}
proc fcQsciScintilla_virtualbase_foldAll(self: pointer, children: bool): void {.importc: "QsciScintilla_virtualbase_foldAll".}
proc fcQsciScintilla_virtualbase_foldLine(self: pointer, line: cint): void {.importc: "QsciScintilla_virtualbase_foldLine".}
proc fcQsciScintilla_virtualbase_indent(self: pointer, line: cint): void {.importc: "QsciScintilla_virtualbase_indent".}
proc fcQsciScintilla_virtualbase_insert(self: pointer, text: struct_miqt_string): void {.importc: "QsciScintilla_virtualbase_insert".}
proc fcQsciScintilla_virtualbase_insertAt(self: pointer, text: struct_miqt_string, line: cint, index: cint): void {.importc: "QsciScintilla_virtualbase_insertAt".}
proc fcQsciScintilla_virtualbase_moveToMatchingBrace(self: pointer, ): void {.importc: "QsciScintilla_virtualbase_moveToMatchingBrace".}
proc fcQsciScintilla_virtualbase_paste(self: pointer, ): void {.importc: "QsciScintilla_virtualbase_paste".}
proc fcQsciScintilla_virtualbase_redo(self: pointer, ): void {.importc: "QsciScintilla_virtualbase_redo".}
proc fcQsciScintilla_virtualbase_removeSelectedText(self: pointer, ): void {.importc: "QsciScintilla_virtualbase_removeSelectedText".}
proc fcQsciScintilla_virtualbase_replaceSelectedText(self: pointer, text: struct_miqt_string): void {.importc: "QsciScintilla_virtualbase_replaceSelectedText".}
proc fcQsciScintilla_virtualbase_resetSelectionBackgroundColor(self: pointer, ): void {.importc: "QsciScintilla_virtualbase_resetSelectionBackgroundColor".}
proc fcQsciScintilla_virtualbase_resetSelectionForegroundColor(self: pointer, ): void {.importc: "QsciScintilla_virtualbase_resetSelectionForegroundColor".}
proc fcQsciScintilla_virtualbase_selectAll(self: pointer, select: bool): void {.importc: "QsciScintilla_virtualbase_selectAll".}
proc fcQsciScintilla_virtualbase_selectToMatchingBrace(self: pointer, ): void {.importc: "QsciScintilla_virtualbase_selectToMatchingBrace".}
proc fcQsciScintilla_virtualbase_setAutoCompletionCaseSensitivity(self: pointer, cs: bool): void {.importc: "QsciScintilla_virtualbase_setAutoCompletionCaseSensitivity".}
proc fcQsciScintilla_virtualbase_setAutoCompletionReplaceWord(self: pointer, replace: bool): void {.importc: "QsciScintilla_virtualbase_setAutoCompletionReplaceWord".}
proc fcQsciScintilla_virtualbase_setAutoCompletionShowSingle(self: pointer, single: bool): void {.importc: "QsciScintilla_virtualbase_setAutoCompletionShowSingle".}
proc fcQsciScintilla_virtualbase_setAutoCompletionSource(self: pointer, source: cint): void {.importc: "QsciScintilla_virtualbase_setAutoCompletionSource".}
proc fcQsciScintilla_virtualbase_setAutoCompletionThreshold(self: pointer, thresh: cint): void {.importc: "QsciScintilla_virtualbase_setAutoCompletionThreshold".}
proc fcQsciScintilla_virtualbase_setAutoCompletionUseSingle(self: pointer, single: cint): void {.importc: "QsciScintilla_virtualbase_setAutoCompletionUseSingle".}
proc fcQsciScintilla_virtualbase_setAutoIndent(self: pointer, autoindent: bool): void {.importc: "QsciScintilla_virtualbase_setAutoIndent".}
proc fcQsciScintilla_virtualbase_setBraceMatching(self: pointer, bm: cint): void {.importc: "QsciScintilla_virtualbase_setBraceMatching".}
proc fcQsciScintilla_virtualbase_setBackspaceUnindents(self: pointer, unindent: bool): void {.importc: "QsciScintilla_virtualbase_setBackspaceUnindents".}
proc fcQsciScintilla_virtualbase_setCaretForegroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_virtualbase_setCaretForegroundColor".}
proc fcQsciScintilla_virtualbase_setCaretLineBackgroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_virtualbase_setCaretLineBackgroundColor".}
proc fcQsciScintilla_virtualbase_setCaretLineFrameWidth(self: pointer, width: cint): void {.importc: "QsciScintilla_virtualbase_setCaretLineFrameWidth".}
proc fcQsciScintilla_virtualbase_setCaretLineVisible(self: pointer, enable: bool): void {.importc: "QsciScintilla_virtualbase_setCaretLineVisible".}
proc fcQsciScintilla_virtualbase_setCaretWidth(self: pointer, width: cint): void {.importc: "QsciScintilla_virtualbase_setCaretWidth".}
proc fcQsciScintilla_virtualbase_setColor(self: pointer, c: pointer): void {.importc: "QsciScintilla_virtualbase_setColor".}
proc fcQsciScintilla_virtualbase_setCursorPosition(self: pointer, line: cint, index: cint): void {.importc: "QsciScintilla_virtualbase_setCursorPosition".}
proc fcQsciScintilla_virtualbase_setEolMode(self: pointer, mode: cint): void {.importc: "QsciScintilla_virtualbase_setEolMode".}
proc fcQsciScintilla_virtualbase_setEolVisibility(self: pointer, visible: bool): void {.importc: "QsciScintilla_virtualbase_setEolVisibility".}
proc fcQsciScintilla_virtualbase_setFolding(self: pointer, fold: cint, margin: cint): void {.importc: "QsciScintilla_virtualbase_setFolding".}
proc fcQsciScintilla_virtualbase_setIndentation(self: pointer, line: cint, indentation: cint): void {.importc: "QsciScintilla_virtualbase_setIndentation".}
proc fcQsciScintilla_virtualbase_setIndentationGuides(self: pointer, enable: bool): void {.importc: "QsciScintilla_virtualbase_setIndentationGuides".}
proc fcQsciScintilla_virtualbase_setIndentationGuidesBackgroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_virtualbase_setIndentationGuidesBackgroundColor".}
proc fcQsciScintilla_virtualbase_setIndentationGuidesForegroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_virtualbase_setIndentationGuidesForegroundColor".}
proc fcQsciScintilla_virtualbase_setIndentationsUseTabs(self: pointer, tabs: bool): void {.importc: "QsciScintilla_virtualbase_setIndentationsUseTabs".}
proc fcQsciScintilla_virtualbase_setIndentationWidth(self: pointer, width: cint): void {.importc: "QsciScintilla_virtualbase_setIndentationWidth".}
proc fcQsciScintilla_virtualbase_setLexer(self: pointer, lexer: pointer): void {.importc: "QsciScintilla_virtualbase_setLexer".}
proc fcQsciScintilla_virtualbase_setMarginsBackgroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_virtualbase_setMarginsBackgroundColor".}
proc fcQsciScintilla_virtualbase_setMarginsFont(self: pointer, f: pointer): void {.importc: "QsciScintilla_virtualbase_setMarginsFont".}
proc fcQsciScintilla_virtualbase_setMarginsForegroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_virtualbase_setMarginsForegroundColor".}
proc fcQsciScintilla_virtualbase_setMarginLineNumbers(self: pointer, margin: cint, lnrs: bool): void {.importc: "QsciScintilla_virtualbase_setMarginLineNumbers".}
proc fcQsciScintilla_virtualbase_setMarginMarkerMask(self: pointer, margin: cint, mask: cint): void {.importc: "QsciScintilla_virtualbase_setMarginMarkerMask".}
proc fcQsciScintilla_virtualbase_setMarginSensitivity(self: pointer, margin: cint, sens: bool): void {.importc: "QsciScintilla_virtualbase_setMarginSensitivity".}
proc fcQsciScintilla_virtualbase_setMarginWidth(self: pointer, margin: cint, width: cint): void {.importc: "QsciScintilla_virtualbase_setMarginWidth".}
proc fcQsciScintilla_virtualbase_setMarginWidth2(self: pointer, margin: cint, s: struct_miqt_string): void {.importc: "QsciScintilla_virtualbase_setMarginWidth2".}
proc fcQsciScintilla_virtualbase_setModified(self: pointer, m: bool): void {.importc: "QsciScintilla_virtualbase_setModified".}
proc fcQsciScintilla_virtualbase_setPaper(self: pointer, c: pointer): void {.importc: "QsciScintilla_virtualbase_setPaper".}
proc fcQsciScintilla_virtualbase_setReadOnly(self: pointer, ro: bool): void {.importc: "QsciScintilla_virtualbase_setReadOnly".}
proc fcQsciScintilla_virtualbase_setSelection(self: pointer, lineFrom: cint, indexFrom: cint, lineTo: cint, indexTo: cint): void {.importc: "QsciScintilla_virtualbase_setSelection".}
proc fcQsciScintilla_virtualbase_setSelectionBackgroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_virtualbase_setSelectionBackgroundColor".}
proc fcQsciScintilla_virtualbase_setSelectionForegroundColor(self: pointer, col: pointer): void {.importc: "QsciScintilla_virtualbase_setSelectionForegroundColor".}
proc fcQsciScintilla_virtualbase_setTabIndents(self: pointer, indent: bool): void {.importc: "QsciScintilla_virtualbase_setTabIndents".}
proc fcQsciScintilla_virtualbase_setTabWidth(self: pointer, width: cint): void {.importc: "QsciScintilla_virtualbase_setTabWidth".}
proc fcQsciScintilla_virtualbase_setText(self: pointer, text: struct_miqt_string): void {.importc: "QsciScintilla_virtualbase_setText".}
proc fcQsciScintilla_virtualbase_setUtf8(self: pointer, cp: bool): void {.importc: "QsciScintilla_virtualbase_setUtf8".}
proc fcQsciScintilla_virtualbase_setWhitespaceVisibility(self: pointer, mode: cint): void {.importc: "QsciScintilla_virtualbase_setWhitespaceVisibility".}
proc fcQsciScintilla_virtualbase_setWrapMode(self: pointer, mode: cint): void {.importc: "QsciScintilla_virtualbase_setWrapMode".}
proc fcQsciScintilla_virtualbase_undo(self: pointer, ): void {.importc: "QsciScintilla_virtualbase_undo".}
proc fcQsciScintilla_virtualbase_unindent(self: pointer, line: cint): void {.importc: "QsciScintilla_virtualbase_unindent".}
proc fcQsciScintilla_virtualbase_zoomIn(self: pointer, range: cint): void {.importc: "QsciScintilla_virtualbase_zoomIn".}
proc fcQsciScintilla_virtualbase_zoomIn2(self: pointer, ): void {.importc: "QsciScintilla_virtualbase_zoomIn2".}
proc fcQsciScintilla_virtualbase_zoomOut(self: pointer, range: cint): void {.importc: "QsciScintilla_virtualbase_zoomOut".}
proc fcQsciScintilla_virtualbase_zoomOut2(self: pointer, ): void {.importc: "QsciScintilla_virtualbase_zoomOut2".}
proc fcQsciScintilla_virtualbase_zoomTo(self: pointer, size: cint): void {.importc: "QsciScintilla_virtualbase_zoomTo".}
proc fcQsciScintilla_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QsciScintilla_virtualbase_event".}
proc fcQsciScintilla_virtualbase_changeEvent(self: pointer, e: pointer): void {.importc: "QsciScintilla_virtualbase_changeEvent".}
proc fcQsciScintilla_virtualbase_contextMenuEvent(self: pointer, e: pointer): void {.importc: "QsciScintilla_virtualbase_contextMenuEvent".}
proc fcQsciScintilla_virtualbase_wheelEvent(self: pointer, e: pointer): void {.importc: "QsciScintilla_virtualbase_wheelEvent".}
proc fcQsciScintilla_virtualbase_canInsertFromMimeData(self: pointer, source: pointer): bool {.importc: "QsciScintilla_virtualbase_canInsertFromMimeData".}
proc fcQsciScintilla_virtualbase_fromMimeData(self: pointer, source: pointer, rectangular: ptr bool): struct_miqt_string {.importc: "QsciScintilla_virtualbase_fromMimeData".}
proc fcQsciScintilla_virtualbase_toMimeData(self: pointer, text: struct_miqt_string, rectangular: bool): pointer {.importc: "QsciScintilla_virtualbase_toMimeData".}
proc fcQsciScintilla_virtualbase_dragEnterEvent(self: pointer, e: pointer): void {.importc: "QsciScintilla_virtualbase_dragEnterEvent".}
proc fcQsciScintilla_virtualbase_dragLeaveEvent(self: pointer, e: pointer): void {.importc: "QsciScintilla_virtualbase_dragLeaveEvent".}
proc fcQsciScintilla_virtualbase_dragMoveEvent(self: pointer, e: pointer): void {.importc: "QsciScintilla_virtualbase_dragMoveEvent".}
proc fcQsciScintilla_virtualbase_dropEvent(self: pointer, e: pointer): void {.importc: "QsciScintilla_virtualbase_dropEvent".}
proc fcQsciScintilla_virtualbase_focusInEvent(self: pointer, e: pointer): void {.importc: "QsciScintilla_virtualbase_focusInEvent".}
proc fcQsciScintilla_virtualbase_focusOutEvent(self: pointer, e: pointer): void {.importc: "QsciScintilla_virtualbase_focusOutEvent".}
proc fcQsciScintilla_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QsciScintilla_virtualbase_focusNextPrevChild".}
proc fcQsciScintilla_virtualbase_keyPressEvent(self: pointer, e: pointer): void {.importc: "QsciScintilla_virtualbase_keyPressEvent".}
proc fcQsciScintilla_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QsciScintilla_virtualbase_inputMethodEvent".}
proc fcQsciScintilla_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QsciScintilla_virtualbase_inputMethodQuery".}
proc fcQsciScintilla_virtualbase_mouseDoubleClickEvent(self: pointer, e: pointer): void {.importc: "QsciScintilla_virtualbase_mouseDoubleClickEvent".}
proc fcQsciScintilla_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void {.importc: "QsciScintilla_virtualbase_mouseMoveEvent".}
proc fcQsciScintilla_virtualbase_mousePressEvent(self: pointer, e: pointer): void {.importc: "QsciScintilla_virtualbase_mousePressEvent".}
proc fcQsciScintilla_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void {.importc: "QsciScintilla_virtualbase_mouseReleaseEvent".}
proc fcQsciScintilla_virtualbase_paintEvent(self: pointer, e: pointer): void {.importc: "QsciScintilla_virtualbase_paintEvent".}
proc fcQsciScintilla_virtualbase_resizeEvent(self: pointer, e: pointer): void {.importc: "QsciScintilla_virtualbase_resizeEvent".}
proc fcQsciScintilla_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.importc: "QsciScintilla_virtualbase_scrollContentsBy".}
proc fcQsciScintilla_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QsciScintilla_virtualbase_minimumSizeHint".}
proc fcQsciScintilla_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QsciScintilla_virtualbase_sizeHint".}
proc fcQsciScintilla_virtualbase_setupViewport(self: pointer, viewport: pointer): void {.importc: "QsciScintilla_virtualbase_setupViewport".}
proc fcQsciScintilla_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QsciScintilla_virtualbase_eventFilter".}
proc fcQsciScintilla_virtualbase_viewportEvent(self: pointer, param1: pointer): bool {.importc: "QsciScintilla_virtualbase_viewportEvent".}
proc fcQsciScintilla_virtualbase_viewportSizeHint(self: pointer, ): pointer {.importc: "QsciScintilla_virtualbase_viewportSizeHint".}
proc fcQsciScintilla_virtualbase_devType(self: pointer, ): cint {.importc: "QsciScintilla_virtualbase_devType".}
proc fcQsciScintilla_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QsciScintilla_virtualbase_setVisible".}
proc fcQsciScintilla_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QsciScintilla_virtualbase_heightForWidth".}
proc fcQsciScintilla_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QsciScintilla_virtualbase_hasHeightForWidth".}
proc fcQsciScintilla_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QsciScintilla_virtualbase_paintEngine".}
proc fcQsciScintilla_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QsciScintilla_virtualbase_keyReleaseEvent".}
proc fcQsciScintilla_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QsciScintilla_virtualbase_enterEvent".}
proc fcQsciScintilla_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QsciScintilla_virtualbase_leaveEvent".}
proc fcQsciScintilla_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QsciScintilla_virtualbase_moveEvent".}
proc fcQsciScintilla_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QsciScintilla_virtualbase_closeEvent".}
proc fcQsciScintilla_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QsciScintilla_virtualbase_tabletEvent".}
proc fcQsciScintilla_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QsciScintilla_virtualbase_actionEvent".}
proc fcQsciScintilla_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QsciScintilla_virtualbase_showEvent".}
proc fcQsciScintilla_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QsciScintilla_virtualbase_hideEvent".}
proc fcQsciScintilla_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QsciScintilla_virtualbase_nativeEvent".}
proc fcQsciScintilla_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QsciScintilla_virtualbase_metric".}
proc fcQsciScintilla_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QsciScintilla_virtualbase_initPainter".}
proc fcQsciScintilla_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QsciScintilla_virtualbase_redirected".}
proc fcQsciScintilla_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QsciScintilla_virtualbase_sharedPainter".}
proc fcQsciScintilla_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciScintilla_virtualbase_timerEvent".}
proc fcQsciScintilla_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciScintilla_virtualbase_childEvent".}
proc fcQsciScintilla_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciScintilla_virtualbase_customEvent".}
proc fcQsciScintilla_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciScintilla_virtualbase_connectNotify".}
proc fcQsciScintilla_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciScintilla_virtualbase_disconnectNotify".}
proc fcQsciScintilla_new(vtbl: pointer, parent: pointer): ptr cQsciScintilla {.importc: "QsciScintilla_new".}
proc fcQsciScintilla_new2(vtbl: pointer, ): ptr cQsciScintilla {.importc: "QsciScintilla_new2".}
proc fcQsciScintilla_staticMetaObject(): pointer {.importc: "QsciScintilla_staticMetaObject".}
proc fcQsciScintilla_delete(self: pointer) {.importc: "QsciScintilla_delete".}

proc metaObject*(self: gen_qsciscintilla_types.QsciScintilla, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciScintilla_metaObject(self.h))

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

proc annotate*(self: gen_qsciscintilla_types.QsciScintilla, line: cint, text: string, style: gen_qscistyle_types.QsciStyle): void =
  fcQsciScintilla_annotate2(self.h, line, struct_miqt_string(data: text, len: csize_t(len(text))), style.h)

proc annotate*(self: gen_qsciscintilla_types.QsciScintilla, line: cint, text: gen_qscistyledtext_types.QsciStyledText): void =
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

proc color*(self: gen_qsciscintilla_types.QsciScintilla, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciScintilla_color(self.h))

proc contractedFolds*(self: gen_qsciscintilla_types.QsciScintilla, ): seq[cint] =
  var v_ma = fcQsciScintilla_contractedFolds(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc convertEols*(self: gen_qsciscintilla_types.QsciScintilla, mode: cint): void =
  fcQsciScintilla_convertEols(self.h, cint(mode))

proc createStandardContextMenu*(self: gen_qsciscintilla_types.QsciScintilla, ): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQsciScintilla_createStandardContextMenu(self.h))

proc document*(self: gen_qsciscintilla_types.QsciScintilla, ): gen_qscidocument_types.QsciDocument =
  gen_qscidocument_types.QsciDocument(h: fcQsciScintilla_document(self.h))

proc endUndoAction*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_endUndoAction(self.h)

proc edgeColor*(self: gen_qsciscintilla_types.QsciScintilla, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciScintilla_edgeColor(self.h))

proc edgeColumn*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  fcQsciScintilla_edgeColumn(self.h)

proc edgeMode*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  cint(fcQsciScintilla_edgeMode(self.h))

proc setFont*(self: gen_qsciscintilla_types.QsciScintilla, f: gen_qfont_types.QFont): void =
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

proc lineAt*(self: gen_qsciscintilla_types.QsciScintilla, point: gen_qpoint_types.QPoint): cint =
  fcQsciScintilla_lineAt(self.h, point.h)

proc lineIndexFromPosition*(self: gen_qsciscintilla_types.QsciScintilla, position: cint, line: ptr cint, index: ptr cint): void =
  fcQsciScintilla_lineIndexFromPosition(self.h, position, line, index)

proc lineLength*(self: gen_qsciscintilla_types.QsciScintilla, line: cint): cint =
  fcQsciScintilla_lineLength(self.h, line)

proc lines*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  fcQsciScintilla_lines(self.h)

proc length*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  fcQsciScintilla_length(self.h)

proc lexer*(self: gen_qsciscintilla_types.QsciScintilla, ): gen_qscilexer_types.QsciLexer =
  gen_qscilexer_types.QsciLexer(h: fcQsciScintilla_lexer(self.h))

proc marginBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciScintilla_marginBackgroundColor(self.h, margin))

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

proc markerDefine*(self: gen_qsciscintilla_types.QsciScintilla, pm: gen_qpixmap_types.QPixmap): cint =
  fcQsciScintilla_markerDefineWithPm(self.h, pm.h)

proc markerDefine*(self: gen_qsciscintilla_types.QsciScintilla, im: gen_qimage_types.QImage): cint =
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

proc paper*(self: gen_qsciscintilla_types.QsciScintilla, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQsciScintilla_paper(self.h))

proc positionFromLineIndex*(self: gen_qsciscintilla_types.QsciScintilla, line: cint, index: cint): cint =
  fcQsciScintilla_positionFromLineIndex(self.h, line, index)

proc read*(self: gen_qsciscintilla_types.QsciScintilla, io: gen_qiodevice_types.QIODevice): bool =
  fcQsciScintilla_read(self.h, io.h)

proc recolor*(self: gen_qsciscintilla_types.QsciScintilla, start: cint, endVal: cint): void =
  fcQsciScintilla_recolor(self.h, start, endVal)

proc registerImage*(self: gen_qsciscintilla_types.QsciScintilla, id: cint, pm: gen_qpixmap_types.QPixmap): void =
  fcQsciScintilla_registerImage(self.h, id, pm.h)

proc registerImage*(self: gen_qsciscintilla_types.QsciScintilla, id: cint, im: gen_qimage_types.QImage): void =
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

proc setFoldMarginColors*(self: gen_qsciscintilla_types.QsciScintilla, fore: gen_qcolor_types.QColor, back: gen_qcolor_types.QColor): void =
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

proc setCallTipsBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
  fcQsciScintilla_setCallTipsBackgroundColor(self.h, col.h)

proc setCallTipsForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
  fcQsciScintilla_setCallTipsForegroundColor(self.h, col.h)

proc setCallTipsHighlightColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
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

proc setDocument*(self: gen_qsciscintilla_types.QsciScintilla, document: gen_qscidocument_types.QsciDocument): void =
  fcQsciScintilla_setDocument(self.h, document.h)

proc addEdgeColumn*(self: gen_qsciscintilla_types.QsciScintilla, colnr: cint, col: gen_qcolor_types.QColor): void =
  fcQsciScintilla_addEdgeColumn(self.h, colnr, col.h)

proc clearEdgeColumns*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_clearEdgeColumns(self.h)

proc setEdgeColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
  fcQsciScintilla_setEdgeColor(self.h, col.h)

proc setEdgeColumn*(self: gen_qsciscintilla_types.QsciScintilla, colnr: cint): void =
  fcQsciScintilla_setEdgeColumn(self.h, colnr)

proc setEdgeMode*(self: gen_qsciscintilla_types.QsciScintilla, mode: cint): void =
  fcQsciScintilla_setEdgeMode(self.h, cint(mode))

proc setFirstVisibleLine*(self: gen_qsciscintilla_types.QsciScintilla, linenr: cint): void =
  fcQsciScintilla_setFirstVisibleLine(self.h, linenr)

proc setIndicatorDrawUnder*(self: gen_qsciscintilla_types.QsciScintilla, under: bool): void =
  fcQsciScintilla_setIndicatorDrawUnder(self.h, under)

proc setIndicatorForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
  fcQsciScintilla_setIndicatorForegroundColor(self.h, col.h)

proc setIndicatorHoverForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
  fcQsciScintilla_setIndicatorHoverForegroundColor(self.h, col.h)

proc setIndicatorHoverStyle*(self: gen_qsciscintilla_types.QsciScintilla, style: cint): void =
  fcQsciScintilla_setIndicatorHoverStyle(self.h, cint(style))

proc setIndicatorOutlineColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
  fcQsciScintilla_setIndicatorOutlineColor(self.h, col.h)

proc setMarginBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint, col: gen_qcolor_types.QColor): void =
  fcQsciScintilla_setMarginBackgroundColor(self.h, margin, col.h)

proc setMarginOptions*(self: gen_qsciscintilla_types.QsciScintilla, options: cint): void =
  fcQsciScintilla_setMarginOptions(self.h, options)

proc setMarginText*(self: gen_qsciscintilla_types.QsciScintilla, line: cint, text: string, style: cint): void =
  fcQsciScintilla_setMarginText(self.h, line, struct_miqt_string(data: text, len: csize_t(len(text))), style)

proc setMarginText*(self: gen_qsciscintilla_types.QsciScintilla, line: cint, text: string, style: gen_qscistyle_types.QsciStyle): void =
  fcQsciScintilla_setMarginText2(self.h, line, struct_miqt_string(data: text, len: csize_t(len(text))), style.h)

proc setMarginText*(self: gen_qsciscintilla_types.QsciScintilla, line: cint, text: gen_qscistyledtext_types.QsciStyledText): void =
  fcQsciScintilla_setMarginText3(self.h, line, text.h)

proc setMarginType*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint, typeVal: cint): void =
  fcQsciScintilla_setMarginType(self.h, margin, cint(typeVal))

proc clearMarginText*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_clearMarginText(self.h)

proc setMargins*(self: gen_qsciscintilla_types.QsciScintilla, margins: cint): void =
  fcQsciScintilla_setMargins(self.h, margins)

proc setMarkerBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
  fcQsciScintilla_setMarkerBackgroundColor(self.h, col.h)

proc setMarkerForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
  fcQsciScintilla_setMarkerForegroundColor(self.h, col.h)

proc setMatchedBraceBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
  fcQsciScintilla_setMatchedBraceBackgroundColor(self.h, col.h)

proc setMatchedBraceForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
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

proc setUnmatchedBraceBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
  fcQsciScintilla_setUnmatchedBraceBackgroundColor(self.h, col.h)

proc setUnmatchedBraceForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
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

proc setHotspotBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
  fcQsciScintilla_setHotspotBackgroundColor(self.h, col.h)

proc setHotspotForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
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

proc setWhitespaceBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
  fcQsciScintilla_setWhitespaceBackgroundColor(self.h, col.h)

proc setWhitespaceForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
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

proc standardCommands*(self: gen_qsciscintilla_types.QsciScintilla, ): gen_qscicommandset_types.QsciCommandSet =
  gen_qscicommandset_types.QsciCommandSet(h: fcQsciScintilla_standardCommands(self.h))

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

proc wordAtPoint*(self: gen_qsciscintilla_types.QsciScintilla, point: gen_qpoint_types.QPoint): string =
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

proc write*(self: gen_qsciscintilla_types.QsciScintilla, io: gen_qiodevice_types.QIODevice): bool =
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

proc setCaretForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
  fcQsciScintilla_setCaretForegroundColor(self.h, col.h)

proc setCaretLineBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
  fcQsciScintilla_setCaretLineBackgroundColor(self.h, col.h)

proc setCaretLineFrameWidth*(self: gen_qsciscintilla_types.QsciScintilla, width: cint): void =
  fcQsciScintilla_setCaretLineFrameWidth(self.h, width)

proc setCaretLineVisible*(self: gen_qsciscintilla_types.QsciScintilla, enable: bool): void =
  fcQsciScintilla_setCaretLineVisible(self.h, enable)

proc setCaretWidth*(self: gen_qsciscintilla_types.QsciScintilla, width: cint): void =
  fcQsciScintilla_setCaretWidth(self.h, width)

proc setColor*(self: gen_qsciscintilla_types.QsciScintilla, c: gen_qcolor_types.QColor): void =
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

proc setIndentationGuidesBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
  fcQsciScintilla_setIndentationGuidesBackgroundColor(self.h, col.h)

proc setIndentationGuidesForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
  fcQsciScintilla_setIndentationGuidesForegroundColor(self.h, col.h)

proc setIndentationsUseTabs*(self: gen_qsciscintilla_types.QsciScintilla, tabs: bool): void =
  fcQsciScintilla_setIndentationsUseTabs(self.h, tabs)

proc setIndentationWidth*(self: gen_qsciscintilla_types.QsciScintilla, width: cint): void =
  fcQsciScintilla_setIndentationWidth(self.h, width)

proc setLexer*(self: gen_qsciscintilla_types.QsciScintilla, lexer: gen_qscilexer_types.QsciLexer): void =
  fcQsciScintilla_setLexer(self.h, lexer.h)

proc setMarginsBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
  fcQsciScintilla_setMarginsBackgroundColor(self.h, col.h)

proc setMarginsFont*(self: gen_qsciscintilla_types.QsciScintilla, f: gen_qfont_types.QFont): void =
  fcQsciScintilla_setMarginsFont(self.h, f.h)

proc setMarginsForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
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

proc setPaper*(self: gen_qsciscintilla_types.QsciScintilla, c: gen_qcolor_types.QColor): void =
  fcQsciScintilla_setPaper(self.h, c.h)

proc setReadOnly*(self: gen_qsciscintilla_types.QsciScintilla, ro: bool): void =
  fcQsciScintilla_setReadOnly(self.h, ro)

proc setSelection*(self: gen_qsciscintilla_types.QsciScintilla, lineFrom: cint, indexFrom: cint, lineTo: cint, indexTo: cint): void =
  fcQsciScintilla_setSelection(self.h, lineFrom, indexFrom, lineTo, indexTo)

proc setSelectionBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
  fcQsciScintilla_setSelectionBackgroundColor(self.h, col.h)

proc setSelectionForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
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
proc miqt_exec_callback_cQsciScintilla_cursorPositionChanged(slot: int, line: cint, index: cint) {.exportc: "miqt_exec_callback_QsciScintilla_cursorPositionChanged".} =
  let nimfunc = cast[ptr QsciScintillacursorPositionChangedSlot](cast[pointer](slot))
  let slotval1 = line

  let slotval2 = index

  nimfunc[](slotval1, slotval2)

proc oncursorPositionChanged*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillacursorPositionChangedSlot) =
  var tmp = new QsciScintillacursorPositionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_connect_cursorPositionChanged(self.h, cast[int](addr tmp[]))

proc copyAvailable*(self: gen_qsciscintilla_types.QsciScintilla, yes: bool): void =
  fcQsciScintilla_copyAvailable(self.h, yes)

type QsciScintillacopyAvailableSlot* = proc(yes: bool)
proc miqt_exec_callback_cQsciScintilla_copyAvailable(slot: int, yes: bool) {.exportc: "miqt_exec_callback_QsciScintilla_copyAvailable".} =
  let nimfunc = cast[ptr QsciScintillacopyAvailableSlot](cast[pointer](slot))
  let slotval1 = yes

  nimfunc[](slotval1)

proc oncopyAvailable*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillacopyAvailableSlot) =
  var tmp = new QsciScintillacopyAvailableSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_connect_copyAvailable(self.h, cast[int](addr tmp[]))

proc indicatorClicked*(self: gen_qsciscintilla_types.QsciScintilla, line: cint, index: cint, state: cint): void =
  fcQsciScintilla_indicatorClicked(self.h, line, index, cint(state))

type QsciScintillaindicatorClickedSlot* = proc(line: cint, index: cint, state: cint)
proc miqt_exec_callback_cQsciScintilla_indicatorClicked(slot: int, line: cint, index: cint, state: cint) {.exportc: "miqt_exec_callback_QsciScintilla_indicatorClicked".} =
  let nimfunc = cast[ptr QsciScintillaindicatorClickedSlot](cast[pointer](slot))
  let slotval1 = line

  let slotval2 = index

  let slotval3 = cint(state)

  nimfunc[](slotval1, slotval2, slotval3)

proc onindicatorClicked*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaindicatorClickedSlot) =
  var tmp = new QsciScintillaindicatorClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_connect_indicatorClicked(self.h, cast[int](addr tmp[]))

proc indicatorReleased*(self: gen_qsciscintilla_types.QsciScintilla, line: cint, index: cint, state: cint): void =
  fcQsciScintilla_indicatorReleased(self.h, line, index, cint(state))

type QsciScintillaindicatorReleasedSlot* = proc(line: cint, index: cint, state: cint)
proc miqt_exec_callback_cQsciScintilla_indicatorReleased(slot: int, line: cint, index: cint, state: cint) {.exportc: "miqt_exec_callback_QsciScintilla_indicatorReleased".} =
  let nimfunc = cast[ptr QsciScintillaindicatorReleasedSlot](cast[pointer](slot))
  let slotval1 = line

  let slotval2 = index

  let slotval3 = cint(state)

  nimfunc[](slotval1, slotval2, slotval3)

proc onindicatorReleased*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaindicatorReleasedSlot) =
  var tmp = new QsciScintillaindicatorReleasedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_connect_indicatorReleased(self.h, cast[int](addr tmp[]))

proc linesChanged*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_linesChanged(self.h)

type QsciScintillalinesChangedSlot* = proc()
proc miqt_exec_callback_cQsciScintilla_linesChanged(slot: int) {.exportc: "miqt_exec_callback_QsciScintilla_linesChanged".} =
  let nimfunc = cast[ptr QsciScintillalinesChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onlinesChanged*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillalinesChangedSlot) =
  var tmp = new QsciScintillalinesChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_connect_linesChanged(self.h, cast[int](addr tmp[]))

proc marginClicked*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint, line: cint, state: cint): void =
  fcQsciScintilla_marginClicked(self.h, margin, line, cint(state))

type QsciScintillamarginClickedSlot* = proc(margin: cint, line: cint, state: cint)
proc miqt_exec_callback_cQsciScintilla_marginClicked(slot: int, margin: cint, line: cint, state: cint) {.exportc: "miqt_exec_callback_QsciScintilla_marginClicked".} =
  let nimfunc = cast[ptr QsciScintillamarginClickedSlot](cast[pointer](slot))
  let slotval1 = margin

  let slotval2 = line

  let slotval3 = cint(state)

  nimfunc[](slotval1, slotval2, slotval3)

proc onmarginClicked*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillamarginClickedSlot) =
  var tmp = new QsciScintillamarginClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_connect_marginClicked(self.h, cast[int](addr tmp[]))

proc marginRightClicked*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint, line: cint, state: cint): void =
  fcQsciScintilla_marginRightClicked(self.h, margin, line, cint(state))

type QsciScintillamarginRightClickedSlot* = proc(margin: cint, line: cint, state: cint)
proc miqt_exec_callback_cQsciScintilla_marginRightClicked(slot: int, margin: cint, line: cint, state: cint) {.exportc: "miqt_exec_callback_QsciScintilla_marginRightClicked".} =
  let nimfunc = cast[ptr QsciScintillamarginRightClickedSlot](cast[pointer](slot))
  let slotval1 = margin

  let slotval2 = line

  let slotval3 = cint(state)

  nimfunc[](slotval1, slotval2, slotval3)

proc onmarginRightClicked*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillamarginRightClickedSlot) =
  var tmp = new QsciScintillamarginRightClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_connect_marginRightClicked(self.h, cast[int](addr tmp[]))

proc modificationAttempted*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_modificationAttempted(self.h)

type QsciScintillamodificationAttemptedSlot* = proc()
proc miqt_exec_callback_cQsciScintilla_modificationAttempted(slot: int) {.exportc: "miqt_exec_callback_QsciScintilla_modificationAttempted".} =
  let nimfunc = cast[ptr QsciScintillamodificationAttemptedSlot](cast[pointer](slot))
  nimfunc[]()

proc onmodificationAttempted*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillamodificationAttemptedSlot) =
  var tmp = new QsciScintillamodificationAttemptedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_connect_modificationAttempted(self.h, cast[int](addr tmp[]))

proc modificationChanged*(self: gen_qsciscintilla_types.QsciScintilla, m: bool): void =
  fcQsciScintilla_modificationChanged(self.h, m)

type QsciScintillamodificationChangedSlot* = proc(m: bool)
proc miqt_exec_callback_cQsciScintilla_modificationChanged(slot: int, m: bool) {.exportc: "miqt_exec_callback_QsciScintilla_modificationChanged".} =
  let nimfunc = cast[ptr QsciScintillamodificationChangedSlot](cast[pointer](slot))
  let slotval1 = m

  nimfunc[](slotval1)

proc onmodificationChanged*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillamodificationChangedSlot) =
  var tmp = new QsciScintillamodificationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_connect_modificationChanged(self.h, cast[int](addr tmp[]))

proc selectionChanged*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_selectionChanged(self.h)

type QsciScintillaselectionChangedSlot* = proc()
proc miqt_exec_callback_cQsciScintilla_selectionChanged(slot: int) {.exportc: "miqt_exec_callback_QsciScintilla_selectionChanged".} =
  let nimfunc = cast[ptr QsciScintillaselectionChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onselectionChanged*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillaselectionChangedSlot) =
  var tmp = new QsciScintillaselectionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_connect_selectionChanged(self.h, cast[int](addr tmp[]))

proc textChanged*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_textChanged(self.h)

type QsciScintillatextChangedSlot* = proc()
proc miqt_exec_callback_cQsciScintilla_textChanged(slot: int) {.exportc: "miqt_exec_callback_QsciScintilla_textChanged".} =
  let nimfunc = cast[ptr QsciScintillatextChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc ontextChanged*(self: gen_qsciscintilla_types.QsciScintilla, slot: QsciScintillatextChangedSlot) =
  var tmp = new QsciScintillatextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_connect_textChanged(self.h, cast[int](addr tmp[]))

proc userListActivated*(self: gen_qsciscintilla_types.QsciScintilla, id: cint, string: string): void =
  fcQsciScintilla_userListActivated(self.h, id, struct_miqt_string(data: string, len: csize_t(len(string))))

type QsciScintillauserListActivatedSlot* = proc(id: cint, string: string)
proc miqt_exec_callback_cQsciScintilla_userListActivated(slot: int, id: cint, string: struct_miqt_string) {.exportc: "miqt_exec_callback_QsciScintilla_userListActivated".} =
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
  fcQsciScintilla_connect_userListActivated(self.h, cast[int](addr tmp[]))

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

proc markerDefine*(self: gen_qsciscintilla_types.QsciScintilla, pm: gen_qpixmap_types.QPixmap, markerNumber: cint): cint =
  fcQsciScintilla_markerDefine23(self.h, pm.h, markerNumber)

proc markerDefine*(self: gen_qsciscintilla_types.QsciScintilla, im: gen_qimage_types.QImage, markerNumber: cint): cint =
  fcQsciScintilla_markerDefine24(self.h, im.h, markerNumber)

proc markerDelete*(self: gen_qsciscintilla_types.QsciScintilla, linenr: cint, markerNumber: cint): void =
  fcQsciScintilla_markerDelete2(self.h, linenr, markerNumber)

proc markerDeleteAll*(self: gen_qsciscintilla_types.QsciScintilla, markerNumber: cint): void =
  fcQsciScintilla_markerDeleteAll1(self.h, markerNumber)

proc setIndicatorDrawUnder*(self: gen_qsciscintilla_types.QsciScintilla, under: bool, indicatorNumber: cint): void =
  fcQsciScintilla_setIndicatorDrawUnder2(self.h, under, indicatorNumber)

proc setIndicatorForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor, indicatorNumber: cint): void =
  fcQsciScintilla_setIndicatorForegroundColor2(self.h, col.h, indicatorNumber)

proc setIndicatorHoverForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor, indicatorNumber: cint): void =
  fcQsciScintilla_setIndicatorHoverForegroundColor2(self.h, col.h, indicatorNumber)

proc setIndicatorHoverStyle*(self: gen_qsciscintilla_types.QsciScintilla, style: cint, indicatorNumber: cint): void =
  fcQsciScintilla_setIndicatorHoverStyle2(self.h, cint(style), indicatorNumber)

proc setIndicatorOutlineColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor, indicatorNumber: cint): void =
  fcQsciScintilla_setIndicatorOutlineColor2(self.h, col.h, indicatorNumber)

proc clearMarginText*(self: gen_qsciscintilla_types.QsciScintilla, line: cint): void =
  fcQsciScintilla_clearMarginText1(self.h, line)

proc setMarkerBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor, markerNumber: cint): void =
  fcQsciScintilla_setMarkerBackgroundColor2(self.h, col.h, markerNumber)

proc setMarkerForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor, markerNumber: cint): void =
  fcQsciScintilla_setMarkerForegroundColor2(self.h, col.h, markerNumber)

proc setWrapVisualFlags*(self: gen_qsciscintilla_types.QsciScintilla, endFlag: cint, startFlag: cint): void =
  fcQsciScintilla_setWrapVisualFlags2(self.h, cint(endFlag), cint(startFlag))

proc setWrapVisualFlags*(self: gen_qsciscintilla_types.QsciScintilla, endFlag: cint, startFlag: cint, indent: cint): void =
  fcQsciScintilla_setWrapVisualFlags3(self.h, cint(endFlag), cint(startFlag), indent)

type QsciScintillametaObjectProc* = proc(self: QsciScintilla): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciScintillametacastProc* = proc(self: QsciScintilla, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciScintillametacallProc* = proc(self: QsciScintilla, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciScintillaapiContextProc* = proc(self: QsciScintilla, pos: cint, context_start: ptr cint, last_word_start: ptr cint): seq[string] {.raises: [], gcsafe.}
type QsciScintillafindFirstProc* = proc(self: QsciScintilla, expr: string, re: bool, cs: bool, wo: bool, wrap: bool, forward: bool, line: cint, index: cint, show: bool, posix: bool, cxx11: bool): bool {.raises: [], gcsafe.}
type QsciScintillafindFirstInSelectionProc* = proc(self: QsciScintilla, expr: string, re: bool, cs: bool, wo: bool, forward: bool, show: bool, posix: bool, cxx11: bool): bool {.raises: [], gcsafe.}
type QsciScintillafindNextProc* = proc(self: QsciScintilla): bool {.raises: [], gcsafe.}
type QsciScintillarecolorProc* = proc(self: QsciScintilla, start: cint, endVal: cint): void {.raises: [], gcsafe.}
type QsciScintillareplaceProc* = proc(self: QsciScintilla, replaceStr: string): void {.raises: [], gcsafe.}
type QsciScintillaappendProc* = proc(self: QsciScintilla, text: string): void {.raises: [], gcsafe.}
type QsciScintillaautoCompleteFromAllProc* = proc(self: QsciScintilla): void {.raises: [], gcsafe.}
type QsciScintillaautoCompleteFromAPIsProc* = proc(self: QsciScintilla): void {.raises: [], gcsafe.}
type QsciScintillaautoCompleteFromDocumentProc* = proc(self: QsciScintilla): void {.raises: [], gcsafe.}
type QsciScintillacallTipProc* = proc(self: QsciScintilla): void {.raises: [], gcsafe.}
type QsciScintillaclearProc* = proc(self: QsciScintilla): void {.raises: [], gcsafe.}
type QsciScintillacopyProc* = proc(self: QsciScintilla): void {.raises: [], gcsafe.}
type QsciScintillacutProc* = proc(self: QsciScintilla): void {.raises: [], gcsafe.}
type QsciScintillaensureCursorVisibleProc* = proc(self: QsciScintilla): void {.raises: [], gcsafe.}
type QsciScintillaensureLineVisibleProc* = proc(self: QsciScintilla, line: cint): void {.raises: [], gcsafe.}
type QsciScintillafoldAllProc* = proc(self: QsciScintilla, children: bool): void {.raises: [], gcsafe.}
type QsciScintillafoldLineProc* = proc(self: QsciScintilla, line: cint): void {.raises: [], gcsafe.}
type QsciScintillaindentProc* = proc(self: QsciScintilla, line: cint): void {.raises: [], gcsafe.}
type QsciScintillainsertProc* = proc(self: QsciScintilla, text: string): void {.raises: [], gcsafe.}
type QsciScintillainsertAtProc* = proc(self: QsciScintilla, text: string, line: cint, index: cint): void {.raises: [], gcsafe.}
type QsciScintillamoveToMatchingBraceProc* = proc(self: QsciScintilla): void {.raises: [], gcsafe.}
type QsciScintillapasteProc* = proc(self: QsciScintilla): void {.raises: [], gcsafe.}
type QsciScintillaredoProc* = proc(self: QsciScintilla): void {.raises: [], gcsafe.}
type QsciScintillaremoveSelectedTextProc* = proc(self: QsciScintilla): void {.raises: [], gcsafe.}
type QsciScintillareplaceSelectedTextProc* = proc(self: QsciScintilla, text: string): void {.raises: [], gcsafe.}
type QsciScintillaresetSelectionBackgroundColorProc* = proc(self: QsciScintilla): void {.raises: [], gcsafe.}
type QsciScintillaresetSelectionForegroundColorProc* = proc(self: QsciScintilla): void {.raises: [], gcsafe.}
type QsciScintillaselectAllProc* = proc(self: QsciScintilla, select: bool): void {.raises: [], gcsafe.}
type QsciScintillaselectToMatchingBraceProc* = proc(self: QsciScintilla): void {.raises: [], gcsafe.}
type QsciScintillasetAutoCompletionCaseSensitivityProc* = proc(self: QsciScintilla, cs: bool): void {.raises: [], gcsafe.}
type QsciScintillasetAutoCompletionReplaceWordProc* = proc(self: QsciScintilla, replace: bool): void {.raises: [], gcsafe.}
type QsciScintillasetAutoCompletionShowSingleProc* = proc(self: QsciScintilla, single: bool): void {.raises: [], gcsafe.}
type QsciScintillasetAutoCompletionSourceProc* = proc(self: QsciScintilla, source: cint): void {.raises: [], gcsafe.}
type QsciScintillasetAutoCompletionThresholdProc* = proc(self: QsciScintilla, thresh: cint): void {.raises: [], gcsafe.}
type QsciScintillasetAutoCompletionUseSingleProc* = proc(self: QsciScintilla, single: cint): void {.raises: [], gcsafe.}
type QsciScintillasetAutoIndentProc* = proc(self: QsciScintilla, autoindent: bool): void {.raises: [], gcsafe.}
type QsciScintillasetBraceMatchingProc* = proc(self: QsciScintilla, bm: cint): void {.raises: [], gcsafe.}
type QsciScintillasetBackspaceUnindentsProc* = proc(self: QsciScintilla, unindent: bool): void {.raises: [], gcsafe.}
type QsciScintillasetCaretForegroundColorProc* = proc(self: QsciScintilla, col: gen_qcolor_types.QColor): void {.raises: [], gcsafe.}
type QsciScintillasetCaretLineBackgroundColorProc* = proc(self: QsciScintilla, col: gen_qcolor_types.QColor): void {.raises: [], gcsafe.}
type QsciScintillasetCaretLineFrameWidthProc* = proc(self: QsciScintilla, width: cint): void {.raises: [], gcsafe.}
type QsciScintillasetCaretLineVisibleProc* = proc(self: QsciScintilla, enable: bool): void {.raises: [], gcsafe.}
type QsciScintillasetCaretWidthProc* = proc(self: QsciScintilla, width: cint): void {.raises: [], gcsafe.}
type QsciScintillasetColorProc* = proc(self: QsciScintilla, c: gen_qcolor_types.QColor): void {.raises: [], gcsafe.}
type QsciScintillasetCursorPositionProc* = proc(self: QsciScintilla, line: cint, index: cint): void {.raises: [], gcsafe.}
type QsciScintillasetEolModeProc* = proc(self: QsciScintilla, mode: cint): void {.raises: [], gcsafe.}
type QsciScintillasetEolVisibilityProc* = proc(self: QsciScintilla, visible: bool): void {.raises: [], gcsafe.}
type QsciScintillasetFoldingProc* = proc(self: QsciScintilla, fold: cint, margin: cint): void {.raises: [], gcsafe.}
type QsciScintillasetIndentationProc* = proc(self: QsciScintilla, line: cint, indentation: cint): void {.raises: [], gcsafe.}
type QsciScintillasetIndentationGuidesProc* = proc(self: QsciScintilla, enable: bool): void {.raises: [], gcsafe.}
type QsciScintillasetIndentationGuidesBackgroundColorProc* = proc(self: QsciScintilla, col: gen_qcolor_types.QColor): void {.raises: [], gcsafe.}
type QsciScintillasetIndentationGuidesForegroundColorProc* = proc(self: QsciScintilla, col: gen_qcolor_types.QColor): void {.raises: [], gcsafe.}
type QsciScintillasetIndentationsUseTabsProc* = proc(self: QsciScintilla, tabs: bool): void {.raises: [], gcsafe.}
type QsciScintillasetIndentationWidthProc* = proc(self: QsciScintilla, width: cint): void {.raises: [], gcsafe.}
type QsciScintillasetLexerProc* = proc(self: QsciScintilla, lexer: gen_qscilexer_types.QsciLexer): void {.raises: [], gcsafe.}
type QsciScintillasetMarginsBackgroundColorProc* = proc(self: QsciScintilla, col: gen_qcolor_types.QColor): void {.raises: [], gcsafe.}
type QsciScintillasetMarginsFontProc* = proc(self: QsciScintilla, f: gen_qfont_types.QFont): void {.raises: [], gcsafe.}
type QsciScintillasetMarginsForegroundColorProc* = proc(self: QsciScintilla, col: gen_qcolor_types.QColor): void {.raises: [], gcsafe.}
type QsciScintillasetMarginLineNumbersProc* = proc(self: QsciScintilla, margin: cint, lnrs: bool): void {.raises: [], gcsafe.}
type QsciScintillasetMarginMarkerMaskProc* = proc(self: QsciScintilla, margin: cint, mask: cint): void {.raises: [], gcsafe.}
type QsciScintillasetMarginSensitivityProc* = proc(self: QsciScintilla, margin: cint, sens: bool): void {.raises: [], gcsafe.}
type QsciScintillasetMarginWidthProc* = proc(self: QsciScintilla, margin: cint, width: cint): void {.raises: [], gcsafe.}
type QsciScintillasetMarginWidthProc* = proc(self: QsciScintilla, margin: cint, s: string): void {.raises: [], gcsafe.}
type QsciScintillasetModifiedProc* = proc(self: QsciScintilla, m: bool): void {.raises: [], gcsafe.}
type QsciScintillasetPaperProc* = proc(self: QsciScintilla, c: gen_qcolor_types.QColor): void {.raises: [], gcsafe.}
type QsciScintillasetReadOnlyProc* = proc(self: QsciScintilla, ro: bool): void {.raises: [], gcsafe.}
type QsciScintillasetSelectionProc* = proc(self: QsciScintilla, lineFrom: cint, indexFrom: cint, lineTo: cint, indexTo: cint): void {.raises: [], gcsafe.}
type QsciScintillasetSelectionBackgroundColorProc* = proc(self: QsciScintilla, col: gen_qcolor_types.QColor): void {.raises: [], gcsafe.}
type QsciScintillasetSelectionForegroundColorProc* = proc(self: QsciScintilla, col: gen_qcolor_types.QColor): void {.raises: [], gcsafe.}
type QsciScintillasetTabIndentsProc* = proc(self: QsciScintilla, indent: bool): void {.raises: [], gcsafe.}
type QsciScintillasetTabWidthProc* = proc(self: QsciScintilla, width: cint): void {.raises: [], gcsafe.}
type QsciScintillasetTextProc* = proc(self: QsciScintilla, text: string): void {.raises: [], gcsafe.}
type QsciScintillasetUtf8Proc* = proc(self: QsciScintilla, cp: bool): void {.raises: [], gcsafe.}
type QsciScintillasetWhitespaceVisibilityProc* = proc(self: QsciScintilla, mode: cint): void {.raises: [], gcsafe.}
type QsciScintillasetWrapModeProc* = proc(self: QsciScintilla, mode: cint): void {.raises: [], gcsafe.}
type QsciScintillaundoProc* = proc(self: QsciScintilla): void {.raises: [], gcsafe.}
type QsciScintillaunindentProc* = proc(self: QsciScintilla, line: cint): void {.raises: [], gcsafe.}
type QsciScintillazoomInProc* = proc(self: QsciScintilla, range: cint): void {.raises: [], gcsafe.}
type QsciScintillazoomInProc* = proc(self: QsciScintilla): void {.raises: [], gcsafe.}
type QsciScintillazoomOutProc* = proc(self: QsciScintilla, range: cint): void {.raises: [], gcsafe.}
type QsciScintillazoomOutProc* = proc(self: QsciScintilla): void {.raises: [], gcsafe.}
type QsciScintillazoomToProc* = proc(self: QsciScintilla, size: cint): void {.raises: [], gcsafe.}
type QsciScintillaeventProc* = proc(self: QsciScintilla, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciScintillachangeEventProc* = proc(self: QsciScintilla, e: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciScintillacontextMenuEventProc* = proc(self: QsciScintilla, e: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QsciScintillawheelEventProc* = proc(self: QsciScintilla, e: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QsciScintillacanInsertFromMimeDataProc* = proc(self: QsciScintilla, source: gen_qmimedata_types.QMimeData): bool {.raises: [], gcsafe.}
type QsciScintillafromMimeDataProc* = proc(self: QsciScintilla, source: gen_qmimedata_types.QMimeData, rectangular: ptr bool): seq[byte] {.raises: [], gcsafe.}
type QsciScintillatoMimeDataProc* = proc(self: QsciScintilla, text: seq[byte], rectangular: bool): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QsciScintilladragEnterEventProc* = proc(self: QsciScintilla, e: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QsciScintilladragLeaveEventProc* = proc(self: QsciScintilla, e: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QsciScintilladragMoveEventProc* = proc(self: QsciScintilla, e: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QsciScintilladropEventProc* = proc(self: QsciScintilla, e: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QsciScintillafocusInEventProc* = proc(self: QsciScintilla, e: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QsciScintillafocusOutEventProc* = proc(self: QsciScintilla, e: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QsciScintillafocusNextPrevChildProc* = proc(self: QsciScintilla, next: bool): bool {.raises: [], gcsafe.}
type QsciScintillakeyPressEventProc* = proc(self: QsciScintilla, e: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QsciScintillainputMethodEventProc* = proc(self: QsciScintilla, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QsciScintillainputMethodQueryProc* = proc(self: QsciScintilla, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QsciScintillamouseDoubleClickEventProc* = proc(self: QsciScintilla, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QsciScintillamouseMoveEventProc* = proc(self: QsciScintilla, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QsciScintillamousePressEventProc* = proc(self: QsciScintilla, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QsciScintillamouseReleaseEventProc* = proc(self: QsciScintilla, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QsciScintillapaintEventProc* = proc(self: QsciScintilla, e: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QsciScintillaresizeEventProc* = proc(self: QsciScintilla, e: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QsciScintillascrollContentsByProc* = proc(self: QsciScintilla, dx: cint, dy: cint): void {.raises: [], gcsafe.}
type QsciScintillaminimumSizeHintProc* = proc(self: QsciScintilla): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QsciScintillasizeHintProc* = proc(self: QsciScintilla): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QsciScintillasetupViewportProc* = proc(self: QsciScintilla, viewport: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QsciScintillaeventFilterProc* = proc(self: QsciScintilla, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciScintillaviewportEventProc* = proc(self: QsciScintilla, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciScintillaviewportSizeHintProc* = proc(self: QsciScintilla): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QsciScintilladevTypeProc* = proc(self: QsciScintilla): cint {.raises: [], gcsafe.}
type QsciScintillasetVisibleProc* = proc(self: QsciScintilla, visible: bool): void {.raises: [], gcsafe.}
type QsciScintillaheightForWidthProc* = proc(self: QsciScintilla, param1: cint): cint {.raises: [], gcsafe.}
type QsciScintillahasHeightForWidthProc* = proc(self: QsciScintilla): bool {.raises: [], gcsafe.}
type QsciScintillapaintEngineProc* = proc(self: QsciScintilla): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QsciScintillakeyReleaseEventProc* = proc(self: QsciScintilla, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QsciScintillaenterEventProc* = proc(self: QsciScintilla, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciScintillaleaveEventProc* = proc(self: QsciScintilla, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciScintillamoveEventProc* = proc(self: QsciScintilla, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QsciScintillacloseEventProc* = proc(self: QsciScintilla, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QsciScintillatabletEventProc* = proc(self: QsciScintilla, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QsciScintillaactionEventProc* = proc(self: QsciScintilla, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QsciScintillashowEventProc* = proc(self: QsciScintilla, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QsciScintillahideEventProc* = proc(self: QsciScintilla, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QsciScintillanativeEventProc* = proc(self: QsciScintilla, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QsciScintillametricProc* = proc(self: QsciScintilla, param1: cint): cint {.raises: [], gcsafe.}
type QsciScintillainitPainterProc* = proc(self: QsciScintilla, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QsciScintillaredirectedProc* = proc(self: QsciScintilla, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QsciScintillasharedPainterProc* = proc(self: QsciScintilla): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QsciScintillatimerEventProc* = proc(self: QsciScintilla, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciScintillachildEventProc* = proc(self: QsciScintilla, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciScintillacustomEventProc* = proc(self: QsciScintilla, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciScintillaconnectNotifyProc* = proc(self: QsciScintilla, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciScintilladisconnectNotifyProc* = proc(self: QsciScintilla, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciScintillaVTable* = object
  vtbl: cQsciScintillaVTable
  metaObject*: QsciScintillametaObjectProc
  metacast*: QsciScintillametacastProc
  metacall*: QsciScintillametacallProc
  apiContext*: QsciScintillaapiContextProc
  findFirst*: QsciScintillafindFirstProc
  findFirstInSelection*: QsciScintillafindFirstInSelectionProc
  findNext*: QsciScintillafindNextProc
  recolor*: QsciScintillarecolorProc
  replace*: QsciScintillareplaceProc
  append*: QsciScintillaappendProc
  autoCompleteFromAll*: QsciScintillaautoCompleteFromAllProc
  autoCompleteFromAPIs*: QsciScintillaautoCompleteFromAPIsProc
  autoCompleteFromDocument*: QsciScintillaautoCompleteFromDocumentProc
  callTip*: QsciScintillacallTipProc
  clear*: QsciScintillaclearProc
  copy*: QsciScintillacopyProc
  cut*: QsciScintillacutProc
  ensureCursorVisible*: QsciScintillaensureCursorVisibleProc
  ensureLineVisible*: QsciScintillaensureLineVisibleProc
  foldAll*: QsciScintillafoldAllProc
  foldLine*: QsciScintillafoldLineProc
  indent*: QsciScintillaindentProc
  insert*: QsciScintillainsertProc
  insertAt*: QsciScintillainsertAtProc
  moveToMatchingBrace*: QsciScintillamoveToMatchingBraceProc
  paste*: QsciScintillapasteProc
  redo*: QsciScintillaredoProc
  removeSelectedText*: QsciScintillaremoveSelectedTextProc
  replaceSelectedText*: QsciScintillareplaceSelectedTextProc
  resetSelectionBackgroundColor*: QsciScintillaresetSelectionBackgroundColorProc
  resetSelectionForegroundColor*: QsciScintillaresetSelectionForegroundColorProc
  selectAll*: QsciScintillaselectAllProc
  selectToMatchingBrace*: QsciScintillaselectToMatchingBraceProc
  setAutoCompletionCaseSensitivity*: QsciScintillasetAutoCompletionCaseSensitivityProc
  setAutoCompletionReplaceWord*: QsciScintillasetAutoCompletionReplaceWordProc
  setAutoCompletionShowSingle*: QsciScintillasetAutoCompletionShowSingleProc
  setAutoCompletionSource*: QsciScintillasetAutoCompletionSourceProc
  setAutoCompletionThreshold*: QsciScintillasetAutoCompletionThresholdProc
  setAutoCompletionUseSingle*: QsciScintillasetAutoCompletionUseSingleProc
  setAutoIndent*: QsciScintillasetAutoIndentProc
  setBraceMatching*: QsciScintillasetBraceMatchingProc
  setBackspaceUnindents*: QsciScintillasetBackspaceUnindentsProc
  setCaretForegroundColor*: QsciScintillasetCaretForegroundColorProc
  setCaretLineBackgroundColor*: QsciScintillasetCaretLineBackgroundColorProc
  setCaretLineFrameWidth*: QsciScintillasetCaretLineFrameWidthProc
  setCaretLineVisible*: QsciScintillasetCaretLineVisibleProc
  setCaretWidth*: QsciScintillasetCaretWidthProc
  setColor*: QsciScintillasetColorProc
  setCursorPosition*: QsciScintillasetCursorPositionProc
  setEolMode*: QsciScintillasetEolModeProc
  setEolVisibility*: QsciScintillasetEolVisibilityProc
  setFolding*: QsciScintillasetFoldingProc
  setIndentation*: QsciScintillasetIndentationProc
  setIndentationGuides*: QsciScintillasetIndentationGuidesProc
  setIndentationGuidesBackgroundColor*: QsciScintillasetIndentationGuidesBackgroundColorProc
  setIndentationGuidesForegroundColor*: QsciScintillasetIndentationGuidesForegroundColorProc
  setIndentationsUseTabs*: QsciScintillasetIndentationsUseTabsProc
  setIndentationWidth*: QsciScintillasetIndentationWidthProc
  setLexer*: QsciScintillasetLexerProc
  setMarginsBackgroundColor*: QsciScintillasetMarginsBackgroundColorProc
  setMarginsFont*: QsciScintillasetMarginsFontProc
  setMarginsForegroundColor*: QsciScintillasetMarginsForegroundColorProc
  setMarginLineNumbers*: QsciScintillasetMarginLineNumbersProc
  setMarginMarkerMask*: QsciScintillasetMarginMarkerMaskProc
  setMarginSensitivity*: QsciScintillasetMarginSensitivityProc
  setMarginWidth*: QsciScintillasetMarginWidthProc
  setMarginWidth*: QsciScintillasetMarginWidthProc
  setModified*: QsciScintillasetModifiedProc
  setPaper*: QsciScintillasetPaperProc
  setReadOnly*: QsciScintillasetReadOnlyProc
  setSelection*: QsciScintillasetSelectionProc
  setSelectionBackgroundColor*: QsciScintillasetSelectionBackgroundColorProc
  setSelectionForegroundColor*: QsciScintillasetSelectionForegroundColorProc
  setTabIndents*: QsciScintillasetTabIndentsProc
  setTabWidth*: QsciScintillasetTabWidthProc
  setText*: QsciScintillasetTextProc
  setUtf8*: QsciScintillasetUtf8Proc
  setWhitespaceVisibility*: QsciScintillasetWhitespaceVisibilityProc
  setWrapMode*: QsciScintillasetWrapModeProc
  undo*: QsciScintillaundoProc
  unindent*: QsciScintillaunindentProc
  zoomIn*: QsciScintillazoomInProc
  zoomIn*: QsciScintillazoomInProc
  zoomOut*: QsciScintillazoomOutProc
  zoomOut*: QsciScintillazoomOutProc
  zoomTo*: QsciScintillazoomToProc
  event*: QsciScintillaeventProc
  changeEvent*: QsciScintillachangeEventProc
  contextMenuEvent*: QsciScintillacontextMenuEventProc
  wheelEvent*: QsciScintillawheelEventProc
  canInsertFromMimeData*: QsciScintillacanInsertFromMimeDataProc
  fromMimeData*: QsciScintillafromMimeDataProc
  toMimeData*: QsciScintillatoMimeDataProc
  dragEnterEvent*: QsciScintilladragEnterEventProc
  dragLeaveEvent*: QsciScintilladragLeaveEventProc
  dragMoveEvent*: QsciScintilladragMoveEventProc
  dropEvent*: QsciScintilladropEventProc
  focusInEvent*: QsciScintillafocusInEventProc
  focusOutEvent*: QsciScintillafocusOutEventProc
  focusNextPrevChild*: QsciScintillafocusNextPrevChildProc
  keyPressEvent*: QsciScintillakeyPressEventProc
  inputMethodEvent*: QsciScintillainputMethodEventProc
  inputMethodQuery*: QsciScintillainputMethodQueryProc
  mouseDoubleClickEvent*: QsciScintillamouseDoubleClickEventProc
  mouseMoveEvent*: QsciScintillamouseMoveEventProc
  mousePressEvent*: QsciScintillamousePressEventProc
  mouseReleaseEvent*: QsciScintillamouseReleaseEventProc
  paintEvent*: QsciScintillapaintEventProc
  resizeEvent*: QsciScintillaresizeEventProc
  scrollContentsBy*: QsciScintillascrollContentsByProc
  minimumSizeHint*: QsciScintillaminimumSizeHintProc
  sizeHint*: QsciScintillasizeHintProc
  setupViewport*: QsciScintillasetupViewportProc
  eventFilter*: QsciScintillaeventFilterProc
  viewportEvent*: QsciScintillaviewportEventProc
  viewportSizeHint*: QsciScintillaviewportSizeHintProc
  devType*: QsciScintilladevTypeProc
  setVisible*: QsciScintillasetVisibleProc
  heightForWidth*: QsciScintillaheightForWidthProc
  hasHeightForWidth*: QsciScintillahasHeightForWidthProc
  paintEngine*: QsciScintillapaintEngineProc
  keyReleaseEvent*: QsciScintillakeyReleaseEventProc
  enterEvent*: QsciScintillaenterEventProc
  leaveEvent*: QsciScintillaleaveEventProc
  moveEvent*: QsciScintillamoveEventProc
  closeEvent*: QsciScintillacloseEventProc
  tabletEvent*: QsciScintillatabletEventProc
  actionEvent*: QsciScintillaactionEventProc
  showEvent*: QsciScintillashowEventProc
  hideEvent*: QsciScintillahideEventProc
  nativeEvent*: QsciScintillanativeEventProc
  metric*: QsciScintillametricProc
  initPainter*: QsciScintillainitPainterProc
  redirected*: QsciScintillaredirectedProc
  sharedPainter*: QsciScintillasharedPainterProc
  timerEvent*: QsciScintillatimerEventProc
  childEvent*: QsciScintillachildEventProc
  customEvent*: QsciScintillacustomEventProc
  connectNotify*: QsciScintillaconnectNotifyProc
  disconnectNotify*: QsciScintilladisconnectNotifyProc
proc QsciScintillametaObject*(self: gen_qsciscintilla_types.QsciScintilla, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciScintilla_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciScintilla_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciScintillametacast*(self: gen_qsciscintilla_types.QsciScintilla, param1: cstring): pointer =
  fcQsciScintilla_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciScintilla_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciScintillametacall*(self: gen_qsciscintilla_types.QsciScintilla, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciScintilla_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciScintilla_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciScintillaapiContext*(self: gen_qsciscintilla_types.QsciScintilla, pos: cint, context_start: ptr cint, last_word_start: ptr cint): seq[string] =
  var v_ma = fcQsciScintilla_virtualbase_apiContext(self.h, pos, context_start, last_word_start)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQsciScintilla_apiContext(vtbl: pointer, self: pointer, pos: cint, context_start: ptr cint, last_word_start: ptr cint): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = pos
  let slotval2 = context_start
  let slotval3 = last_word_start
  let virtualReturn = vtbl[].apiContext(self, slotval1, slotval2, slotval3)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QsciScintillafindFirst*(self: gen_qsciscintilla_types.QsciScintilla, expr: string, re: bool, cs: bool, wo: bool, wrap: bool, forward: bool, line: cint, index: cint, show: bool, posix: bool, cxx11: bool): bool =
  fcQsciScintilla_virtualbase_findFirst(self.h, struct_miqt_string(data: expr, len: csize_t(len(expr))), re, cs, wo, wrap, forward, line, index, show, posix, cxx11)

proc miqt_exec_callback_cQsciScintilla_findFirst(vtbl: pointer, self: pointer, expr: struct_miqt_string, re: bool, cs: bool, wo: bool, wrap: bool, forward: bool, line: cint, index: cint, show: bool, posix: bool, cxx11: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
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
  let virtualReturn = vtbl[].findFirst(self, slotval1, slotval2, slotval3, slotval4, slotval5, slotval6, slotval7, slotval8, slotval9, slotval10, slotval11)
  virtualReturn

proc QsciScintillafindFirstInSelection*(self: gen_qsciscintilla_types.QsciScintilla, expr: string, re: bool, cs: bool, wo: bool, forward: bool, show: bool, posix: bool, cxx11: bool): bool =
  fcQsciScintilla_virtualbase_findFirstInSelection(self.h, struct_miqt_string(data: expr, len: csize_t(len(expr))), re, cs, wo, forward, show, posix, cxx11)

proc miqt_exec_callback_cQsciScintilla_findFirstInSelection(vtbl: pointer, self: pointer, expr: struct_miqt_string, re: bool, cs: bool, wo: bool, forward: bool, show: bool, posix: bool, cxx11: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
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
  let virtualReturn = vtbl[].findFirstInSelection(self, slotval1, slotval2, slotval3, slotval4, slotval5, slotval6, slotval7, slotval8)
  virtualReturn

proc QsciScintillafindNext*(self: gen_qsciscintilla_types.QsciScintilla, ): bool =
  fcQsciScintilla_virtualbase_findNext(self.h)

proc miqt_exec_callback_cQsciScintilla_findNext(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let virtualReturn = vtbl[].findNext(self)
  virtualReturn

proc QsciScintillarecolor*(self: gen_qsciscintilla_types.QsciScintilla, start: cint, endVal: cint): void =
  fcQsciScintilla_virtualbase_recolor(self.h, start, endVal)

proc miqt_exec_callback_cQsciScintilla_recolor(vtbl: pointer, self: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = start
  let slotval2 = endVal
  vtbl[].recolor(self, slotval1, slotval2)

proc QsciScintillareplace*(self: gen_qsciscintilla_types.QsciScintilla, replaceStr: string): void =
  fcQsciScintilla_virtualbase_replace(self.h, struct_miqt_string(data: replaceStr, len: csize_t(len(replaceStr))))

proc miqt_exec_callback_cQsciScintilla_replace(vtbl: pointer, self: pointer, replaceStr: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let vreplaceStr_ms = replaceStr
  let vreplaceStrx_ret = string.fromBytes(toOpenArrayByte(vreplaceStr_ms.data, 0, int(vreplaceStr_ms.len)-1))
  c_free(vreplaceStr_ms.data)
  let slotval1 = vreplaceStrx_ret
  vtbl[].replace(self, slotval1)

proc QsciScintillaappend*(self: gen_qsciscintilla_types.QsciScintilla, text: string): void =
  fcQsciScintilla_virtualbase_append(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc miqt_exec_callback_cQsciScintilla_append(vtbl: pointer, self: pointer, text: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret
  vtbl[].append(self, slotval1)

proc QsciScintillaautoCompleteFromAll*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_virtualbase_autoCompleteFromAll(self.h)

proc miqt_exec_callback_cQsciScintilla_autoCompleteFromAll(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  vtbl[].autoCompleteFromAll(self)

proc QsciScintillaautoCompleteFromAPIs*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_virtualbase_autoCompleteFromAPIs(self.h)

proc miqt_exec_callback_cQsciScintilla_autoCompleteFromAPIs(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  vtbl[].autoCompleteFromAPIs(self)

proc QsciScintillaautoCompleteFromDocument*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_virtualbase_autoCompleteFromDocument(self.h)

proc miqt_exec_callback_cQsciScintilla_autoCompleteFromDocument(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  vtbl[].autoCompleteFromDocument(self)

proc QsciScintillacallTip*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_virtualbase_callTip(self.h)

proc miqt_exec_callback_cQsciScintilla_callTip(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  vtbl[].callTip(self)

proc QsciScintillaclear*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_virtualbase_clear(self.h)

proc miqt_exec_callback_cQsciScintilla_clear(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  vtbl[].clear(self)

proc QsciScintillacopy*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_virtualbase_copy(self.h)

proc miqt_exec_callback_cQsciScintilla_copy(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  vtbl[].copy(self)

proc QsciScintillacut*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_virtualbase_cut(self.h)

proc miqt_exec_callback_cQsciScintilla_cut(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  vtbl[].cut(self)

proc QsciScintillaensureCursorVisible*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_virtualbase_ensureCursorVisible(self.h)

proc miqt_exec_callback_cQsciScintilla_ensureCursorVisible(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  vtbl[].ensureCursorVisible(self)

proc QsciScintillaensureLineVisible*(self: gen_qsciscintilla_types.QsciScintilla, line: cint): void =
  fcQsciScintilla_virtualbase_ensureLineVisible(self.h, line)

proc miqt_exec_callback_cQsciScintilla_ensureLineVisible(vtbl: pointer, self: pointer, line: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = line
  vtbl[].ensureLineVisible(self, slotval1)

proc QsciScintillafoldAll*(self: gen_qsciscintilla_types.QsciScintilla, children: bool): void =
  fcQsciScintilla_virtualbase_foldAll(self.h, children)

proc miqt_exec_callback_cQsciScintilla_foldAll(vtbl: pointer, self: pointer, children: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = children
  vtbl[].foldAll(self, slotval1)

proc QsciScintillafoldLine*(self: gen_qsciscintilla_types.QsciScintilla, line: cint): void =
  fcQsciScintilla_virtualbase_foldLine(self.h, line)

proc miqt_exec_callback_cQsciScintilla_foldLine(vtbl: pointer, self: pointer, line: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = line
  vtbl[].foldLine(self, slotval1)

proc QsciScintillaindent*(self: gen_qsciscintilla_types.QsciScintilla, line: cint): void =
  fcQsciScintilla_virtualbase_indent(self.h, line)

proc miqt_exec_callback_cQsciScintilla_indent(vtbl: pointer, self: pointer, line: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = line
  vtbl[].indent(self, slotval1)

proc QsciScintillainsert*(self: gen_qsciscintilla_types.QsciScintilla, text: string): void =
  fcQsciScintilla_virtualbase_insert(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc miqt_exec_callback_cQsciScintilla_insert(vtbl: pointer, self: pointer, text: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret
  vtbl[].insert(self, slotval1)

proc QsciScintillainsertAt*(self: gen_qsciscintilla_types.QsciScintilla, text: string, line: cint, index: cint): void =
  fcQsciScintilla_virtualbase_insertAt(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), line, index)

proc miqt_exec_callback_cQsciScintilla_insertAt(vtbl: pointer, self: pointer, text: struct_miqt_string, line: cint, index: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret
  let slotval2 = line
  let slotval3 = index
  vtbl[].insertAt(self, slotval1, slotval2, slotval3)

proc QsciScintillamoveToMatchingBrace*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_virtualbase_moveToMatchingBrace(self.h)

proc miqt_exec_callback_cQsciScintilla_moveToMatchingBrace(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  vtbl[].moveToMatchingBrace(self)

proc QsciScintillapaste*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_virtualbase_paste(self.h)

proc miqt_exec_callback_cQsciScintilla_paste(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  vtbl[].paste(self)

proc QsciScintillaredo*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_virtualbase_redo(self.h)

proc miqt_exec_callback_cQsciScintilla_redo(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  vtbl[].redo(self)

proc QsciScintillaremoveSelectedText*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_virtualbase_removeSelectedText(self.h)

proc miqt_exec_callback_cQsciScintilla_removeSelectedText(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  vtbl[].removeSelectedText(self)

proc QsciScintillareplaceSelectedText*(self: gen_qsciscintilla_types.QsciScintilla, text: string): void =
  fcQsciScintilla_virtualbase_replaceSelectedText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc miqt_exec_callback_cQsciScintilla_replaceSelectedText(vtbl: pointer, self: pointer, text: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret
  vtbl[].replaceSelectedText(self, slotval1)

proc QsciScintillaresetSelectionBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_virtualbase_resetSelectionBackgroundColor(self.h)

proc miqt_exec_callback_cQsciScintilla_resetSelectionBackgroundColor(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  vtbl[].resetSelectionBackgroundColor(self)

proc QsciScintillaresetSelectionForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_virtualbase_resetSelectionForegroundColor(self.h)

proc miqt_exec_callback_cQsciScintilla_resetSelectionForegroundColor(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  vtbl[].resetSelectionForegroundColor(self)

proc QsciScintillaselectAll*(self: gen_qsciscintilla_types.QsciScintilla, select: bool): void =
  fcQsciScintilla_virtualbase_selectAll(self.h, select)

proc miqt_exec_callback_cQsciScintilla_selectAll(vtbl: pointer, self: pointer, select: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = select
  vtbl[].selectAll(self, slotval1)

proc QsciScintillaselectToMatchingBrace*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_virtualbase_selectToMatchingBrace(self.h)

proc miqt_exec_callback_cQsciScintilla_selectToMatchingBrace(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  vtbl[].selectToMatchingBrace(self)

proc QsciScintillasetAutoCompletionCaseSensitivity*(self: gen_qsciscintilla_types.QsciScintilla, cs: bool): void =
  fcQsciScintilla_virtualbase_setAutoCompletionCaseSensitivity(self.h, cs)

proc miqt_exec_callback_cQsciScintilla_setAutoCompletionCaseSensitivity(vtbl: pointer, self: pointer, cs: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = cs
  vtbl[].setAutoCompletionCaseSensitivity(self, slotval1)

proc QsciScintillasetAutoCompletionReplaceWord*(self: gen_qsciscintilla_types.QsciScintilla, replace: bool): void =
  fcQsciScintilla_virtualbase_setAutoCompletionReplaceWord(self.h, replace)

proc miqt_exec_callback_cQsciScintilla_setAutoCompletionReplaceWord(vtbl: pointer, self: pointer, replace: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = replace
  vtbl[].setAutoCompletionReplaceWord(self, slotval1)

proc QsciScintillasetAutoCompletionShowSingle*(self: gen_qsciscintilla_types.QsciScintilla, single: bool): void =
  fcQsciScintilla_virtualbase_setAutoCompletionShowSingle(self.h, single)

proc miqt_exec_callback_cQsciScintilla_setAutoCompletionShowSingle(vtbl: pointer, self: pointer, single: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = single
  vtbl[].setAutoCompletionShowSingle(self, slotval1)

proc QsciScintillasetAutoCompletionSource*(self: gen_qsciscintilla_types.QsciScintilla, source: cint): void =
  fcQsciScintilla_virtualbase_setAutoCompletionSource(self.h, cint(source))

proc miqt_exec_callback_cQsciScintilla_setAutoCompletionSource(vtbl: pointer, self: pointer, source: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = cint(source)
  vtbl[].setAutoCompletionSource(self, slotval1)

proc QsciScintillasetAutoCompletionThreshold*(self: gen_qsciscintilla_types.QsciScintilla, thresh: cint): void =
  fcQsciScintilla_virtualbase_setAutoCompletionThreshold(self.h, thresh)

proc miqt_exec_callback_cQsciScintilla_setAutoCompletionThreshold(vtbl: pointer, self: pointer, thresh: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = thresh
  vtbl[].setAutoCompletionThreshold(self, slotval1)

proc QsciScintillasetAutoCompletionUseSingle*(self: gen_qsciscintilla_types.QsciScintilla, single: cint): void =
  fcQsciScintilla_virtualbase_setAutoCompletionUseSingle(self.h, cint(single))

proc miqt_exec_callback_cQsciScintilla_setAutoCompletionUseSingle(vtbl: pointer, self: pointer, single: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = cint(single)
  vtbl[].setAutoCompletionUseSingle(self, slotval1)

proc QsciScintillasetAutoIndent*(self: gen_qsciscintilla_types.QsciScintilla, autoindent: bool): void =
  fcQsciScintilla_virtualbase_setAutoIndent(self.h, autoindent)

proc miqt_exec_callback_cQsciScintilla_setAutoIndent(vtbl: pointer, self: pointer, autoindent: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = autoindent
  vtbl[].setAutoIndent(self, slotval1)

proc QsciScintillasetBraceMatching*(self: gen_qsciscintilla_types.QsciScintilla, bm: cint): void =
  fcQsciScintilla_virtualbase_setBraceMatching(self.h, cint(bm))

proc miqt_exec_callback_cQsciScintilla_setBraceMatching(vtbl: pointer, self: pointer, bm: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = cint(bm)
  vtbl[].setBraceMatching(self, slotval1)

proc QsciScintillasetBackspaceUnindents*(self: gen_qsciscintilla_types.QsciScintilla, unindent: bool): void =
  fcQsciScintilla_virtualbase_setBackspaceUnindents(self.h, unindent)

proc miqt_exec_callback_cQsciScintilla_setBackspaceUnindents(vtbl: pointer, self: pointer, unindent: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = unindent
  vtbl[].setBackspaceUnindents(self, slotval1)

proc QsciScintillasetCaretForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
  fcQsciScintilla_virtualbase_setCaretForegroundColor(self.h, col.h)

proc miqt_exec_callback_cQsciScintilla_setCaretForegroundColor(vtbl: pointer, self: pointer, col: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: col)
  vtbl[].setCaretForegroundColor(self, slotval1)

proc QsciScintillasetCaretLineBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
  fcQsciScintilla_virtualbase_setCaretLineBackgroundColor(self.h, col.h)

proc miqt_exec_callback_cQsciScintilla_setCaretLineBackgroundColor(vtbl: pointer, self: pointer, col: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: col)
  vtbl[].setCaretLineBackgroundColor(self, slotval1)

proc QsciScintillasetCaretLineFrameWidth*(self: gen_qsciscintilla_types.QsciScintilla, width: cint): void =
  fcQsciScintilla_virtualbase_setCaretLineFrameWidth(self.h, width)

proc miqt_exec_callback_cQsciScintilla_setCaretLineFrameWidth(vtbl: pointer, self: pointer, width: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = width
  vtbl[].setCaretLineFrameWidth(self, slotval1)

proc QsciScintillasetCaretLineVisible*(self: gen_qsciscintilla_types.QsciScintilla, enable: bool): void =
  fcQsciScintilla_virtualbase_setCaretLineVisible(self.h, enable)

proc miqt_exec_callback_cQsciScintilla_setCaretLineVisible(vtbl: pointer, self: pointer, enable: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = enable
  vtbl[].setCaretLineVisible(self, slotval1)

proc QsciScintillasetCaretWidth*(self: gen_qsciscintilla_types.QsciScintilla, width: cint): void =
  fcQsciScintilla_virtualbase_setCaretWidth(self.h, width)

proc miqt_exec_callback_cQsciScintilla_setCaretWidth(vtbl: pointer, self: pointer, width: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = width
  vtbl[].setCaretWidth(self, slotval1)

proc QsciScintillasetColor*(self: gen_qsciscintilla_types.QsciScintilla, c: gen_qcolor_types.QColor): void =
  fcQsciScintilla_virtualbase_setColor(self.h, c.h)

proc miqt_exec_callback_cQsciScintilla_setColor(vtbl: pointer, self: pointer, c: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  vtbl[].setColor(self, slotval1)

proc QsciScintillasetCursorPosition*(self: gen_qsciscintilla_types.QsciScintilla, line: cint, index: cint): void =
  fcQsciScintilla_virtualbase_setCursorPosition(self.h, line, index)

proc miqt_exec_callback_cQsciScintilla_setCursorPosition(vtbl: pointer, self: pointer, line: cint, index: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = line
  let slotval2 = index
  vtbl[].setCursorPosition(self, slotval1, slotval2)

proc QsciScintillasetEolMode*(self: gen_qsciscintilla_types.QsciScintilla, mode: cint): void =
  fcQsciScintilla_virtualbase_setEolMode(self.h, cint(mode))

proc miqt_exec_callback_cQsciScintilla_setEolMode(vtbl: pointer, self: pointer, mode: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = cint(mode)
  vtbl[].setEolMode(self, slotval1)

proc QsciScintillasetEolVisibility*(self: gen_qsciscintilla_types.QsciScintilla, visible: bool): void =
  fcQsciScintilla_virtualbase_setEolVisibility(self.h, visible)

proc miqt_exec_callback_cQsciScintilla_setEolVisibility(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = visible
  vtbl[].setEolVisibility(self, slotval1)

proc QsciScintillasetFolding*(self: gen_qsciscintilla_types.QsciScintilla, fold: cint, margin: cint): void =
  fcQsciScintilla_virtualbase_setFolding(self.h, cint(fold), margin)

proc miqt_exec_callback_cQsciScintilla_setFolding(vtbl: pointer, self: pointer, fold: cint, margin: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = cint(fold)
  let slotval2 = margin
  vtbl[].setFolding(self, slotval1, slotval2)

proc QsciScintillasetIndentation*(self: gen_qsciscintilla_types.QsciScintilla, line: cint, indentation: cint): void =
  fcQsciScintilla_virtualbase_setIndentation(self.h, line, indentation)

proc miqt_exec_callback_cQsciScintilla_setIndentation(vtbl: pointer, self: pointer, line: cint, indentation: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = line
  let slotval2 = indentation
  vtbl[].setIndentation(self, slotval1, slotval2)

proc QsciScintillasetIndentationGuides*(self: gen_qsciscintilla_types.QsciScintilla, enable: bool): void =
  fcQsciScintilla_virtualbase_setIndentationGuides(self.h, enable)

proc miqt_exec_callback_cQsciScintilla_setIndentationGuides(vtbl: pointer, self: pointer, enable: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = enable
  vtbl[].setIndentationGuides(self, slotval1)

proc QsciScintillasetIndentationGuidesBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
  fcQsciScintilla_virtualbase_setIndentationGuidesBackgroundColor(self.h, col.h)

proc miqt_exec_callback_cQsciScintilla_setIndentationGuidesBackgroundColor(vtbl: pointer, self: pointer, col: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: col)
  vtbl[].setIndentationGuidesBackgroundColor(self, slotval1)

proc QsciScintillasetIndentationGuidesForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
  fcQsciScintilla_virtualbase_setIndentationGuidesForegroundColor(self.h, col.h)

proc miqt_exec_callback_cQsciScintilla_setIndentationGuidesForegroundColor(vtbl: pointer, self: pointer, col: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: col)
  vtbl[].setIndentationGuidesForegroundColor(self, slotval1)

proc QsciScintillasetIndentationsUseTabs*(self: gen_qsciscintilla_types.QsciScintilla, tabs: bool): void =
  fcQsciScintilla_virtualbase_setIndentationsUseTabs(self.h, tabs)

proc miqt_exec_callback_cQsciScintilla_setIndentationsUseTabs(vtbl: pointer, self: pointer, tabs: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = tabs
  vtbl[].setIndentationsUseTabs(self, slotval1)

proc QsciScintillasetIndentationWidth*(self: gen_qsciscintilla_types.QsciScintilla, width: cint): void =
  fcQsciScintilla_virtualbase_setIndentationWidth(self.h, width)

proc miqt_exec_callback_cQsciScintilla_setIndentationWidth(vtbl: pointer, self: pointer, width: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = width
  vtbl[].setIndentationWidth(self, slotval1)

proc QsciScintillasetLexer*(self: gen_qsciscintilla_types.QsciScintilla, lexer: gen_qscilexer_types.QsciLexer): void =
  fcQsciScintilla_virtualbase_setLexer(self.h, lexer.h)

proc miqt_exec_callback_cQsciScintilla_setLexer(vtbl: pointer, self: pointer, lexer: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qscilexer_types.QsciLexer(h: lexer)
  vtbl[].setLexer(self, slotval1)

proc QsciScintillasetMarginsBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
  fcQsciScintilla_virtualbase_setMarginsBackgroundColor(self.h, col.h)

proc miqt_exec_callback_cQsciScintilla_setMarginsBackgroundColor(vtbl: pointer, self: pointer, col: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: col)
  vtbl[].setMarginsBackgroundColor(self, slotval1)

proc QsciScintillasetMarginsFont*(self: gen_qsciscintilla_types.QsciScintilla, f: gen_qfont_types.QFont): void =
  fcQsciScintilla_virtualbase_setMarginsFont(self.h, f.h)

proc miqt_exec_callback_cQsciScintilla_setMarginsFont(vtbl: pointer, self: pointer, f: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qfont_types.QFont(h: f)
  vtbl[].setMarginsFont(self, slotval1)

proc QsciScintillasetMarginsForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
  fcQsciScintilla_virtualbase_setMarginsForegroundColor(self.h, col.h)

proc miqt_exec_callback_cQsciScintilla_setMarginsForegroundColor(vtbl: pointer, self: pointer, col: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: col)
  vtbl[].setMarginsForegroundColor(self, slotval1)

proc QsciScintillasetMarginLineNumbers*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint, lnrs: bool): void =
  fcQsciScintilla_virtualbase_setMarginLineNumbers(self.h, margin, lnrs)

proc miqt_exec_callback_cQsciScintilla_setMarginLineNumbers(vtbl: pointer, self: pointer, margin: cint, lnrs: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = margin
  let slotval2 = lnrs
  vtbl[].setMarginLineNumbers(self, slotval1, slotval2)

proc QsciScintillasetMarginMarkerMask*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint, mask: cint): void =
  fcQsciScintilla_virtualbase_setMarginMarkerMask(self.h, margin, mask)

proc miqt_exec_callback_cQsciScintilla_setMarginMarkerMask(vtbl: pointer, self: pointer, margin: cint, mask: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = margin
  let slotval2 = mask
  vtbl[].setMarginMarkerMask(self, slotval1, slotval2)

proc QsciScintillasetMarginSensitivity*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint, sens: bool): void =
  fcQsciScintilla_virtualbase_setMarginSensitivity(self.h, margin, sens)

proc miqt_exec_callback_cQsciScintilla_setMarginSensitivity(vtbl: pointer, self: pointer, margin: cint, sens: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = margin
  let slotval2 = sens
  vtbl[].setMarginSensitivity(self, slotval1, slotval2)

proc QsciScintillasetMarginWidth*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint, width: cint): void =
  fcQsciScintilla_virtualbase_setMarginWidth(self.h, margin, width)

proc miqt_exec_callback_cQsciScintilla_setMarginWidth(vtbl: pointer, self: pointer, margin: cint, width: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = margin
  let slotval2 = width
  vtbl[].setMarginWidth(self, slotval1, slotval2)

proc QsciScintillasetMarginWidth*(self: gen_qsciscintilla_types.QsciScintilla, margin: cint, s: string): void =
  fcQsciScintilla_virtualbase_setMarginWidth2(self.h, margin, struct_miqt_string(data: s, len: csize_t(len(s))))

proc miqt_exec_callback_cQsciScintilla_setMarginWidth2(vtbl: pointer, self: pointer, margin: cint, s: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = margin
  let vs_ms = s
  let vsx_ret = string.fromBytes(toOpenArrayByte(vs_ms.data, 0, int(vs_ms.len)-1))
  c_free(vs_ms.data)
  let slotval2 = vsx_ret
  vtbl[].setMarginWidth(self, slotval1, slotval2)

proc QsciScintillasetModified*(self: gen_qsciscintilla_types.QsciScintilla, m: bool): void =
  fcQsciScintilla_virtualbase_setModified(self.h, m)

proc miqt_exec_callback_cQsciScintilla_setModified(vtbl: pointer, self: pointer, m: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = m
  vtbl[].setModified(self, slotval1)

proc QsciScintillasetPaper*(self: gen_qsciscintilla_types.QsciScintilla, c: gen_qcolor_types.QColor): void =
  fcQsciScintilla_virtualbase_setPaper(self.h, c.h)

proc miqt_exec_callback_cQsciScintilla_setPaper(vtbl: pointer, self: pointer, c: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: c)
  vtbl[].setPaper(self, slotval1)

proc QsciScintillasetReadOnly*(self: gen_qsciscintilla_types.QsciScintilla, ro: bool): void =
  fcQsciScintilla_virtualbase_setReadOnly(self.h, ro)

proc miqt_exec_callback_cQsciScintilla_setReadOnly(vtbl: pointer, self: pointer, ro: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = ro
  vtbl[].setReadOnly(self, slotval1)

proc QsciScintillasetSelection*(self: gen_qsciscintilla_types.QsciScintilla, lineFrom: cint, indexFrom: cint, lineTo: cint, indexTo: cint): void =
  fcQsciScintilla_virtualbase_setSelection(self.h, lineFrom, indexFrom, lineTo, indexTo)

proc miqt_exec_callback_cQsciScintilla_setSelection(vtbl: pointer, self: pointer, lineFrom: cint, indexFrom: cint, lineTo: cint, indexTo: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = lineFrom
  let slotval2 = indexFrom
  let slotval3 = lineTo
  let slotval4 = indexTo
  vtbl[].setSelection(self, slotval1, slotval2, slotval3, slotval4)

proc QsciScintillasetSelectionBackgroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
  fcQsciScintilla_virtualbase_setSelectionBackgroundColor(self.h, col.h)

proc miqt_exec_callback_cQsciScintilla_setSelectionBackgroundColor(vtbl: pointer, self: pointer, col: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: col)
  vtbl[].setSelectionBackgroundColor(self, slotval1)

proc QsciScintillasetSelectionForegroundColor*(self: gen_qsciscintilla_types.QsciScintilla, col: gen_qcolor_types.QColor): void =
  fcQsciScintilla_virtualbase_setSelectionForegroundColor(self.h, col.h)

proc miqt_exec_callback_cQsciScintilla_setSelectionForegroundColor(vtbl: pointer, self: pointer, col: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qcolor_types.QColor(h: col)
  vtbl[].setSelectionForegroundColor(self, slotval1)

proc QsciScintillasetTabIndents*(self: gen_qsciscintilla_types.QsciScintilla, indent: bool): void =
  fcQsciScintilla_virtualbase_setTabIndents(self.h, indent)

proc miqt_exec_callback_cQsciScintilla_setTabIndents(vtbl: pointer, self: pointer, indent: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = indent
  vtbl[].setTabIndents(self, slotval1)

proc QsciScintillasetTabWidth*(self: gen_qsciscintilla_types.QsciScintilla, width: cint): void =
  fcQsciScintilla_virtualbase_setTabWidth(self.h, width)

proc miqt_exec_callback_cQsciScintilla_setTabWidth(vtbl: pointer, self: pointer, width: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = width
  vtbl[].setTabWidth(self, slotval1)

proc QsciScintillasetText*(self: gen_qsciscintilla_types.QsciScintilla, text: string): void =
  fcQsciScintilla_virtualbase_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc miqt_exec_callback_cQsciScintilla_setText(vtbl: pointer, self: pointer, text: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret
  vtbl[].setText(self, slotval1)

proc QsciScintillasetUtf8*(self: gen_qsciscintilla_types.QsciScintilla, cp: bool): void =
  fcQsciScintilla_virtualbase_setUtf8(self.h, cp)

proc miqt_exec_callback_cQsciScintilla_setUtf8(vtbl: pointer, self: pointer, cp: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = cp
  vtbl[].setUtf8(self, slotval1)

proc QsciScintillasetWhitespaceVisibility*(self: gen_qsciscintilla_types.QsciScintilla, mode: cint): void =
  fcQsciScintilla_virtualbase_setWhitespaceVisibility(self.h, cint(mode))

proc miqt_exec_callback_cQsciScintilla_setWhitespaceVisibility(vtbl: pointer, self: pointer, mode: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = cint(mode)
  vtbl[].setWhitespaceVisibility(self, slotval1)

proc QsciScintillasetWrapMode*(self: gen_qsciscintilla_types.QsciScintilla, mode: cint): void =
  fcQsciScintilla_virtualbase_setWrapMode(self.h, cint(mode))

proc miqt_exec_callback_cQsciScintilla_setWrapMode(vtbl: pointer, self: pointer, mode: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = cint(mode)
  vtbl[].setWrapMode(self, slotval1)

proc QsciScintillaundo*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_virtualbase_undo(self.h)

proc miqt_exec_callback_cQsciScintilla_undo(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  vtbl[].undo(self)

proc QsciScintillaunindent*(self: gen_qsciscintilla_types.QsciScintilla, line: cint): void =
  fcQsciScintilla_virtualbase_unindent(self.h, line)

proc miqt_exec_callback_cQsciScintilla_unindent(vtbl: pointer, self: pointer, line: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = line
  vtbl[].unindent(self, slotval1)

proc QsciScintillazoomIn*(self: gen_qsciscintilla_types.QsciScintilla, range: cint): void =
  fcQsciScintilla_virtualbase_zoomIn(self.h, range)

proc miqt_exec_callback_cQsciScintilla_zoomIn(vtbl: pointer, self: pointer, range: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = range
  vtbl[].zoomIn(self, slotval1)

proc QsciScintillazoomIn*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_virtualbase_zoomIn2(self.h)

proc miqt_exec_callback_cQsciScintilla_zoomIn2(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  vtbl[].zoomIn(self)

proc QsciScintillazoomOut*(self: gen_qsciscintilla_types.QsciScintilla, range: cint): void =
  fcQsciScintilla_virtualbase_zoomOut(self.h, range)

proc miqt_exec_callback_cQsciScintilla_zoomOut(vtbl: pointer, self: pointer, range: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = range
  vtbl[].zoomOut(self, slotval1)

proc QsciScintillazoomOut*(self: gen_qsciscintilla_types.QsciScintilla, ): void =
  fcQsciScintilla_virtualbase_zoomOut2(self.h)

proc miqt_exec_callback_cQsciScintilla_zoomOut2(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  vtbl[].zoomOut(self)

proc QsciScintillazoomTo*(self: gen_qsciscintilla_types.QsciScintilla, size: cint): void =
  fcQsciScintilla_virtualbase_zoomTo(self.h, size)

proc miqt_exec_callback_cQsciScintilla_zoomTo(vtbl: pointer, self: pointer, size: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = size
  vtbl[].zoomTo(self, slotval1)

proc QsciScintillaevent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qcoreevent_types.QEvent): bool =
  fcQsciScintilla_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQsciScintilla_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciScintillachangeEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qcoreevent_types.QEvent): void =
  fcQsciScintilla_virtualbase_changeEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintilla_changeEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  vtbl[].changeEvent(self, slotval1)

proc QsciScintillacontextMenuEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent_types.QContextMenuEvent): void =
  fcQsciScintilla_virtualbase_contextMenuEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintilla_contextMenuEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: e)
  vtbl[].contextMenuEvent(self, slotval1)

proc QsciScintillawheelEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent_types.QWheelEvent): void =
  fcQsciScintilla_virtualbase_wheelEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintilla_wheelEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: e)
  vtbl[].wheelEvent(self, slotval1)

proc QsciScintillacanInsertFromMimeData*(self: gen_qsciscintilla_types.QsciScintilla, source: gen_qmimedata_types.QMimeData): bool =
  fcQsciScintilla_virtualbase_canInsertFromMimeData(self.h, source.h)

proc miqt_exec_callback_cQsciScintilla_canInsertFromMimeData(vtbl: pointer, self: pointer, source: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: source)
  let virtualReturn = vtbl[].canInsertFromMimeData(self, slotval1)
  virtualReturn

proc QsciScintillafromMimeData*(self: gen_qsciscintilla_types.QsciScintilla, source: gen_qmimedata_types.QMimeData, rectangular: ptr bool): seq[byte] =
  var v_bytearray = fcQsciScintilla_virtualbase_fromMimeData(self.h, source.h, rectangular)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc miqt_exec_callback_cQsciScintilla_fromMimeData(vtbl: pointer, self: pointer, source: pointer, rectangular: ptr bool): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: source)
  let slotval2 = rectangular
  let virtualReturn = vtbl[].fromMimeData(self, slotval1, slotval2)
  struct_miqt_string(data: cast[cstring](if len(virtualReturn) == 0: nil else: unsafeAddr virtualReturn[0]), len: csize_t(len(virtualReturn)))

proc QsciScintillatoMimeData*(self: gen_qsciscintilla_types.QsciScintilla, text: seq[byte], rectangular: bool): gen_qmimedata_types.QMimeData =
  gen_qmimedata_types.QMimeData(h: fcQsciScintilla_virtualbase_toMimeData(self.h, struct_miqt_string(data: cast[cstring](if len(text) == 0: nil else: unsafeAddr text[0]), len: csize_t(len(text))), rectangular))

proc miqt_exec_callback_cQsciScintilla_toMimeData(vtbl: pointer, self: pointer, text: struct_miqt_string, rectangular: bool): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  var vtext_bytearray = text
  var vtextx_ret = @(toOpenArrayByte(vtext_bytearray.data, 0, int(vtext_bytearray.len)-1))
  c_free(vtext_bytearray.data)
  let slotval1 = vtextx_ret
  let slotval2 = rectangular
  let virtualReturn = vtbl[].toMimeData(self, slotval1, slotval2)
  virtualReturn.h

proc QsciScintilladragEnterEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent_types.QDragEnterEvent): void =
  fcQsciScintilla_virtualbase_dragEnterEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintilla_dragEnterEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: e)
  vtbl[].dragEnterEvent(self, slotval1)

proc QsciScintilladragLeaveEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent_types.QDragLeaveEvent): void =
  fcQsciScintilla_virtualbase_dragLeaveEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintilla_dragLeaveEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: e)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QsciScintilladragMoveEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent_types.QDragMoveEvent): void =
  fcQsciScintilla_virtualbase_dragMoveEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintilla_dragMoveEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: e)
  vtbl[].dragMoveEvent(self, slotval1)

proc QsciScintilladropEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent_types.QDropEvent): void =
  fcQsciScintilla_virtualbase_dropEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintilla_dropEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: e)
  vtbl[].dropEvent(self, slotval1)

proc QsciScintillafocusInEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent_types.QFocusEvent): void =
  fcQsciScintilla_virtualbase_focusInEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintilla_focusInEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)
  vtbl[].focusInEvent(self, slotval1)

proc QsciScintillafocusOutEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent_types.QFocusEvent): void =
  fcQsciScintilla_virtualbase_focusOutEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintilla_focusOutEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)
  vtbl[].focusOutEvent(self, slotval1)

proc QsciScintillafocusNextPrevChild*(self: gen_qsciscintilla_types.QsciScintilla, next: bool): bool =
  fcQsciScintilla_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQsciScintilla_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = next
  let virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QsciScintillakeyPressEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent_types.QKeyEvent): void =
  fcQsciScintilla_virtualbase_keyPressEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintilla_keyPressEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)
  vtbl[].keyPressEvent(self, slotval1)

proc QsciScintillainputMethodEvent*(self: gen_qsciscintilla_types.QsciScintilla, event: gen_qevent_types.QInputMethodEvent): void =
  fcQsciScintilla_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQsciScintilla_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)
  vtbl[].inputMethodEvent(self, slotval1)

proc QsciScintillainputMethodQuery*(self: gen_qsciscintilla_types.QsciScintilla, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQsciScintilla_virtualbase_inputMethodQuery(self.h, cint(query)))

proc miqt_exec_callback_cQsciScintilla_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = cint(query)
  let virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QsciScintillamouseDoubleClickEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent_types.QMouseEvent): void =
  fcQsciScintilla_virtualbase_mouseDoubleClickEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintilla_mouseDoubleClickEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QsciScintillamouseMoveEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent_types.QMouseEvent): void =
  fcQsciScintilla_virtualbase_mouseMoveEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintilla_mouseMoveEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QsciScintillamousePressEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent_types.QMouseEvent): void =
  fcQsciScintilla_virtualbase_mousePressEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintilla_mousePressEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mousePressEvent(self, slotval1)

proc QsciScintillamouseReleaseEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent_types.QMouseEvent): void =
  fcQsciScintilla_virtualbase_mouseReleaseEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintilla_mouseReleaseEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QsciScintillapaintEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent_types.QPaintEvent): void =
  fcQsciScintilla_virtualbase_paintEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintilla_paintEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: e)
  vtbl[].paintEvent(self, slotval1)

proc QsciScintillaresizeEvent*(self: gen_qsciscintilla_types.QsciScintilla, e: gen_qevent_types.QResizeEvent): void =
  fcQsciScintilla_virtualbase_resizeEvent(self.h, e.h)

proc miqt_exec_callback_cQsciScintilla_resizeEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: e)
  vtbl[].resizeEvent(self, slotval1)

proc QsciScintillascrollContentsBy*(self: gen_qsciscintilla_types.QsciScintilla, dx: cint, dy: cint): void =
  fcQsciScintilla_virtualbase_scrollContentsBy(self.h, dx, dy)

proc miqt_exec_callback_cQsciScintilla_scrollContentsBy(vtbl: pointer, self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc QsciScintillaminimumSizeHint*(self: gen_qsciscintilla_types.QsciScintilla, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQsciScintilla_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQsciScintilla_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QsciScintillasizeHint*(self: gen_qsciscintilla_types.QsciScintilla, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQsciScintilla_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQsciScintilla_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QsciScintillasetupViewport*(self: gen_qsciscintilla_types.QsciScintilla, viewport: gen_qwidget_types.QWidget): void =
  fcQsciScintilla_virtualbase_setupViewport(self.h, viewport.h)

proc miqt_exec_callback_cQsciScintilla_setupViewport(vtbl: pointer, self: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)
  vtbl[].setupViewport(self, slotval1)

proc QsciScintillaeventFilter*(self: gen_qsciscintilla_types.QsciScintilla, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQsciScintilla_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc miqt_exec_callback_cQsciScintilla_eventFilter(vtbl: pointer, self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciScintillaviewportEvent*(self: gen_qsciscintilla_types.QsciScintilla, param1: gen_qcoreevent_types.QEvent): bool =
  fcQsciScintilla_virtualbase_viewportEvent(self.h, param1.h)

proc miqt_exec_callback_cQsciScintilla_viewportEvent(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  let virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc QsciScintillaviewportSizeHint*(self: gen_qsciscintilla_types.QsciScintilla, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQsciScintilla_virtualbase_viewportSizeHint(self.h))

proc miqt_exec_callback_cQsciScintilla_viewportSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.h

proc QsciScintilladevType*(self: gen_qsciscintilla_types.QsciScintilla, ): cint =
  fcQsciScintilla_virtualbase_devType(self.h)

proc miqt_exec_callback_cQsciScintilla_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QsciScintillasetVisible*(self: gen_qsciscintilla_types.QsciScintilla, visible: bool): void =
  fcQsciScintilla_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQsciScintilla_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QsciScintillaheightForWidth*(self: gen_qsciscintilla_types.QsciScintilla, param1: cint): cint =
  fcQsciScintilla_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQsciScintilla_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = param1
  let virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QsciScintillahasHeightForWidth*(self: gen_qsciscintilla_types.QsciScintilla, ): bool =
  fcQsciScintilla_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQsciScintilla_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QsciScintillapaintEngine*(self: gen_qsciscintilla_types.QsciScintilla, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQsciScintilla_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQsciScintilla_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QsciScintillakeyReleaseEvent*(self: gen_qsciscintilla_types.QsciScintilla, event: gen_qevent_types.QKeyEvent): void =
  fcQsciScintilla_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQsciScintilla_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QsciScintillaenterEvent*(self: gen_qsciscintilla_types.QsciScintilla, event: gen_qcoreevent_types.QEvent): void =
  fcQsciScintilla_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQsciScintilla_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QsciScintillaleaveEvent*(self: gen_qsciscintilla_types.QsciScintilla, event: gen_qcoreevent_types.QEvent): void =
  fcQsciScintilla_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQsciScintilla_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QsciScintillamoveEvent*(self: gen_qsciscintilla_types.QsciScintilla, event: gen_qevent_types.QMoveEvent): void =
  fcQsciScintilla_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQsciScintilla_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QsciScintillacloseEvent*(self: gen_qsciscintilla_types.QsciScintilla, event: gen_qevent_types.QCloseEvent): void =
  fcQsciScintilla_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQsciScintilla_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QsciScintillatabletEvent*(self: gen_qsciscintilla_types.QsciScintilla, event: gen_qevent_types.QTabletEvent): void =
  fcQsciScintilla_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQsciScintilla_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QsciScintillaactionEvent*(self: gen_qsciscintilla_types.QsciScintilla, event: gen_qevent_types.QActionEvent): void =
  fcQsciScintilla_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQsciScintilla_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QsciScintillashowEvent*(self: gen_qsciscintilla_types.QsciScintilla, event: gen_qevent_types.QShowEvent): void =
  fcQsciScintilla_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQsciScintilla_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QsciScintillahideEvent*(self: gen_qsciscintilla_types.QsciScintilla, event: gen_qevent_types.QHideEvent): void =
  fcQsciScintilla_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQsciScintilla_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QsciScintillanativeEvent*(self: gen_qsciscintilla_types.QsciScintilla, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQsciScintilla_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQsciScintilla_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  let virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciScintillametric*(self: gen_qsciscintilla_types.QsciScintilla, param1: cint): cint =
  fcQsciScintilla_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQsciScintilla_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = cint(param1)
  let virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QsciScintillainitPainter*(self: gen_qsciscintilla_types.QsciScintilla, painter: gen_qpainter_types.QPainter): void =
  fcQsciScintilla_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQsciScintilla_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QsciScintillaredirected*(self: gen_qsciscintilla_types.QsciScintilla, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQsciScintilla_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQsciScintilla_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  let virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QsciScintillasharedPainter*(self: gen_qsciscintilla_types.QsciScintilla, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQsciScintilla_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQsciScintilla_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QsciScintillatimerEvent*(self: gen_qsciscintilla_types.QsciScintilla, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciScintilla_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciScintilla_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciScintillachildEvent*(self: gen_qsciscintilla_types.QsciScintilla, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciScintilla_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciScintilla_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciScintillacustomEvent*(self: gen_qsciscintilla_types.QsciScintilla, event: gen_qcoreevent_types.QEvent): void =
  fcQsciScintilla_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciScintilla_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciScintillaconnectNotify*(self: gen_qsciscintilla_types.QsciScintilla, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciScintilla_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciScintilla_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciScintilladisconnectNotify*(self: gen_qsciscintilla_types.QsciScintilla, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciScintilla_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciScintilla_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciScintillaVTable](vtbl)
  let self = QsciScintilla(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qsciscintilla_types.QsciScintilla,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QsciScintillaVTable = nil): gen_qsciscintilla_types.QsciScintilla =
  let vtbl = if vtbl == nil: new QsciScintillaVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciScintillaVTable, _: ptr cQsciScintilla) {.cdecl.} =
    let vtbl = cast[ref QsciScintillaVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciScintilla_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciScintilla_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciScintilla_metacall
  if not isNil(vtbl.apiContext):
    vtbl[].vtbl.apiContext = miqt_exec_callback_cQsciScintilla_apiContext
  if not isNil(vtbl.findFirst):
    vtbl[].vtbl.findFirst = miqt_exec_callback_cQsciScintilla_findFirst
  if not isNil(vtbl.findFirstInSelection):
    vtbl[].vtbl.findFirstInSelection = miqt_exec_callback_cQsciScintilla_findFirstInSelection
  if not isNil(vtbl.findNext):
    vtbl[].vtbl.findNext = miqt_exec_callback_cQsciScintilla_findNext
  if not isNil(vtbl.recolor):
    vtbl[].vtbl.recolor = miqt_exec_callback_cQsciScintilla_recolor
  if not isNil(vtbl.replace):
    vtbl[].vtbl.replace = miqt_exec_callback_cQsciScintilla_replace
  if not isNil(vtbl.append):
    vtbl[].vtbl.append = miqt_exec_callback_cQsciScintilla_append
  if not isNil(vtbl.autoCompleteFromAll):
    vtbl[].vtbl.autoCompleteFromAll = miqt_exec_callback_cQsciScintilla_autoCompleteFromAll
  if not isNil(vtbl.autoCompleteFromAPIs):
    vtbl[].vtbl.autoCompleteFromAPIs = miqt_exec_callback_cQsciScintilla_autoCompleteFromAPIs
  if not isNil(vtbl.autoCompleteFromDocument):
    vtbl[].vtbl.autoCompleteFromDocument = miqt_exec_callback_cQsciScintilla_autoCompleteFromDocument
  if not isNil(vtbl.callTip):
    vtbl[].vtbl.callTip = miqt_exec_callback_cQsciScintilla_callTip
  if not isNil(vtbl.clear):
    vtbl[].vtbl.clear = miqt_exec_callback_cQsciScintilla_clear
  if not isNil(vtbl.copy):
    vtbl[].vtbl.copy = miqt_exec_callback_cQsciScintilla_copy
  if not isNil(vtbl.cut):
    vtbl[].vtbl.cut = miqt_exec_callback_cQsciScintilla_cut
  if not isNil(vtbl.ensureCursorVisible):
    vtbl[].vtbl.ensureCursorVisible = miqt_exec_callback_cQsciScintilla_ensureCursorVisible
  if not isNil(vtbl.ensureLineVisible):
    vtbl[].vtbl.ensureLineVisible = miqt_exec_callback_cQsciScintilla_ensureLineVisible
  if not isNil(vtbl.foldAll):
    vtbl[].vtbl.foldAll = miqt_exec_callback_cQsciScintilla_foldAll
  if not isNil(vtbl.foldLine):
    vtbl[].vtbl.foldLine = miqt_exec_callback_cQsciScintilla_foldLine
  if not isNil(vtbl.indent):
    vtbl[].vtbl.indent = miqt_exec_callback_cQsciScintilla_indent
  if not isNil(vtbl.insert):
    vtbl[].vtbl.insert = miqt_exec_callback_cQsciScintilla_insert
  if not isNil(vtbl.insertAt):
    vtbl[].vtbl.insertAt = miqt_exec_callback_cQsciScintilla_insertAt
  if not isNil(vtbl.moveToMatchingBrace):
    vtbl[].vtbl.moveToMatchingBrace = miqt_exec_callback_cQsciScintilla_moveToMatchingBrace
  if not isNil(vtbl.paste):
    vtbl[].vtbl.paste = miqt_exec_callback_cQsciScintilla_paste
  if not isNil(vtbl.redo):
    vtbl[].vtbl.redo = miqt_exec_callback_cQsciScintilla_redo
  if not isNil(vtbl.removeSelectedText):
    vtbl[].vtbl.removeSelectedText = miqt_exec_callback_cQsciScintilla_removeSelectedText
  if not isNil(vtbl.replaceSelectedText):
    vtbl[].vtbl.replaceSelectedText = miqt_exec_callback_cQsciScintilla_replaceSelectedText
  if not isNil(vtbl.resetSelectionBackgroundColor):
    vtbl[].vtbl.resetSelectionBackgroundColor = miqt_exec_callback_cQsciScintilla_resetSelectionBackgroundColor
  if not isNil(vtbl.resetSelectionForegroundColor):
    vtbl[].vtbl.resetSelectionForegroundColor = miqt_exec_callback_cQsciScintilla_resetSelectionForegroundColor
  if not isNil(vtbl.selectAll):
    vtbl[].vtbl.selectAll = miqt_exec_callback_cQsciScintilla_selectAll
  if not isNil(vtbl.selectToMatchingBrace):
    vtbl[].vtbl.selectToMatchingBrace = miqt_exec_callback_cQsciScintilla_selectToMatchingBrace
  if not isNil(vtbl.setAutoCompletionCaseSensitivity):
    vtbl[].vtbl.setAutoCompletionCaseSensitivity = miqt_exec_callback_cQsciScintilla_setAutoCompletionCaseSensitivity
  if not isNil(vtbl.setAutoCompletionReplaceWord):
    vtbl[].vtbl.setAutoCompletionReplaceWord = miqt_exec_callback_cQsciScintilla_setAutoCompletionReplaceWord
  if not isNil(vtbl.setAutoCompletionShowSingle):
    vtbl[].vtbl.setAutoCompletionShowSingle = miqt_exec_callback_cQsciScintilla_setAutoCompletionShowSingle
  if not isNil(vtbl.setAutoCompletionSource):
    vtbl[].vtbl.setAutoCompletionSource = miqt_exec_callback_cQsciScintilla_setAutoCompletionSource
  if not isNil(vtbl.setAutoCompletionThreshold):
    vtbl[].vtbl.setAutoCompletionThreshold = miqt_exec_callback_cQsciScintilla_setAutoCompletionThreshold
  if not isNil(vtbl.setAutoCompletionUseSingle):
    vtbl[].vtbl.setAutoCompletionUseSingle = miqt_exec_callback_cQsciScintilla_setAutoCompletionUseSingle
  if not isNil(vtbl.setAutoIndent):
    vtbl[].vtbl.setAutoIndent = miqt_exec_callback_cQsciScintilla_setAutoIndent
  if not isNil(vtbl.setBraceMatching):
    vtbl[].vtbl.setBraceMatching = miqt_exec_callback_cQsciScintilla_setBraceMatching
  if not isNil(vtbl.setBackspaceUnindents):
    vtbl[].vtbl.setBackspaceUnindents = miqt_exec_callback_cQsciScintilla_setBackspaceUnindents
  if not isNil(vtbl.setCaretForegroundColor):
    vtbl[].vtbl.setCaretForegroundColor = miqt_exec_callback_cQsciScintilla_setCaretForegroundColor
  if not isNil(vtbl.setCaretLineBackgroundColor):
    vtbl[].vtbl.setCaretLineBackgroundColor = miqt_exec_callback_cQsciScintilla_setCaretLineBackgroundColor
  if not isNil(vtbl.setCaretLineFrameWidth):
    vtbl[].vtbl.setCaretLineFrameWidth = miqt_exec_callback_cQsciScintilla_setCaretLineFrameWidth
  if not isNil(vtbl.setCaretLineVisible):
    vtbl[].vtbl.setCaretLineVisible = miqt_exec_callback_cQsciScintilla_setCaretLineVisible
  if not isNil(vtbl.setCaretWidth):
    vtbl[].vtbl.setCaretWidth = miqt_exec_callback_cQsciScintilla_setCaretWidth
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciScintilla_setColor
  if not isNil(vtbl.setCursorPosition):
    vtbl[].vtbl.setCursorPosition = miqt_exec_callback_cQsciScintilla_setCursorPosition
  if not isNil(vtbl.setEolMode):
    vtbl[].vtbl.setEolMode = miqt_exec_callback_cQsciScintilla_setEolMode
  if not isNil(vtbl.setEolVisibility):
    vtbl[].vtbl.setEolVisibility = miqt_exec_callback_cQsciScintilla_setEolVisibility
  if not isNil(vtbl.setFolding):
    vtbl[].vtbl.setFolding = miqt_exec_callback_cQsciScintilla_setFolding
  if not isNil(vtbl.setIndentation):
    vtbl[].vtbl.setIndentation = miqt_exec_callback_cQsciScintilla_setIndentation
  if not isNil(vtbl.setIndentationGuides):
    vtbl[].vtbl.setIndentationGuides = miqt_exec_callback_cQsciScintilla_setIndentationGuides
  if not isNil(vtbl.setIndentationGuidesBackgroundColor):
    vtbl[].vtbl.setIndentationGuidesBackgroundColor = miqt_exec_callback_cQsciScintilla_setIndentationGuidesBackgroundColor
  if not isNil(vtbl.setIndentationGuidesForegroundColor):
    vtbl[].vtbl.setIndentationGuidesForegroundColor = miqt_exec_callback_cQsciScintilla_setIndentationGuidesForegroundColor
  if not isNil(vtbl.setIndentationsUseTabs):
    vtbl[].vtbl.setIndentationsUseTabs = miqt_exec_callback_cQsciScintilla_setIndentationsUseTabs
  if not isNil(vtbl.setIndentationWidth):
    vtbl[].vtbl.setIndentationWidth = miqt_exec_callback_cQsciScintilla_setIndentationWidth
  if not isNil(vtbl.setLexer):
    vtbl[].vtbl.setLexer = miqt_exec_callback_cQsciScintilla_setLexer
  if not isNil(vtbl.setMarginsBackgroundColor):
    vtbl[].vtbl.setMarginsBackgroundColor = miqt_exec_callback_cQsciScintilla_setMarginsBackgroundColor
  if not isNil(vtbl.setMarginsFont):
    vtbl[].vtbl.setMarginsFont = miqt_exec_callback_cQsciScintilla_setMarginsFont
  if not isNil(vtbl.setMarginsForegroundColor):
    vtbl[].vtbl.setMarginsForegroundColor = miqt_exec_callback_cQsciScintilla_setMarginsForegroundColor
  if not isNil(vtbl.setMarginLineNumbers):
    vtbl[].vtbl.setMarginLineNumbers = miqt_exec_callback_cQsciScintilla_setMarginLineNumbers
  if not isNil(vtbl.setMarginMarkerMask):
    vtbl[].vtbl.setMarginMarkerMask = miqt_exec_callback_cQsciScintilla_setMarginMarkerMask
  if not isNil(vtbl.setMarginSensitivity):
    vtbl[].vtbl.setMarginSensitivity = miqt_exec_callback_cQsciScintilla_setMarginSensitivity
  if not isNil(vtbl.setMarginWidth):
    vtbl[].vtbl.setMarginWidth = miqt_exec_callback_cQsciScintilla_setMarginWidth
  if not isNil(vtbl.setMarginWidth):
    vtbl[].vtbl.setMarginWidth = miqt_exec_callback_cQsciScintilla_setMarginWidth2
  if not isNil(vtbl.setModified):
    vtbl[].vtbl.setModified = miqt_exec_callback_cQsciScintilla_setModified
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciScintilla_setPaper
  if not isNil(vtbl.setReadOnly):
    vtbl[].vtbl.setReadOnly = miqt_exec_callback_cQsciScintilla_setReadOnly
  if not isNil(vtbl.setSelection):
    vtbl[].vtbl.setSelection = miqt_exec_callback_cQsciScintilla_setSelection
  if not isNil(vtbl.setSelectionBackgroundColor):
    vtbl[].vtbl.setSelectionBackgroundColor = miqt_exec_callback_cQsciScintilla_setSelectionBackgroundColor
  if not isNil(vtbl.setSelectionForegroundColor):
    vtbl[].vtbl.setSelectionForegroundColor = miqt_exec_callback_cQsciScintilla_setSelectionForegroundColor
  if not isNil(vtbl.setTabIndents):
    vtbl[].vtbl.setTabIndents = miqt_exec_callback_cQsciScintilla_setTabIndents
  if not isNil(vtbl.setTabWidth):
    vtbl[].vtbl.setTabWidth = miqt_exec_callback_cQsciScintilla_setTabWidth
  if not isNil(vtbl.setText):
    vtbl[].vtbl.setText = miqt_exec_callback_cQsciScintilla_setText
  if not isNil(vtbl.setUtf8):
    vtbl[].vtbl.setUtf8 = miqt_exec_callback_cQsciScintilla_setUtf8
  if not isNil(vtbl.setWhitespaceVisibility):
    vtbl[].vtbl.setWhitespaceVisibility = miqt_exec_callback_cQsciScintilla_setWhitespaceVisibility
  if not isNil(vtbl.setWrapMode):
    vtbl[].vtbl.setWrapMode = miqt_exec_callback_cQsciScintilla_setWrapMode
  if not isNil(vtbl.undo):
    vtbl[].vtbl.undo = miqt_exec_callback_cQsciScintilla_undo
  if not isNil(vtbl.unindent):
    vtbl[].vtbl.unindent = miqt_exec_callback_cQsciScintilla_unindent
  if not isNil(vtbl.zoomIn):
    vtbl[].vtbl.zoomIn = miqt_exec_callback_cQsciScintilla_zoomIn
  if not isNil(vtbl.zoomIn):
    vtbl[].vtbl.zoomIn = miqt_exec_callback_cQsciScintilla_zoomIn2
  if not isNil(vtbl.zoomOut):
    vtbl[].vtbl.zoomOut = miqt_exec_callback_cQsciScintilla_zoomOut
  if not isNil(vtbl.zoomOut):
    vtbl[].vtbl.zoomOut = miqt_exec_callback_cQsciScintilla_zoomOut2
  if not isNil(vtbl.zoomTo):
    vtbl[].vtbl.zoomTo = miqt_exec_callback_cQsciScintilla_zoomTo
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciScintilla_event
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQsciScintilla_changeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQsciScintilla_contextMenuEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQsciScintilla_wheelEvent
  if not isNil(vtbl.canInsertFromMimeData):
    vtbl[].vtbl.canInsertFromMimeData = miqt_exec_callback_cQsciScintilla_canInsertFromMimeData
  if not isNil(vtbl.fromMimeData):
    vtbl[].vtbl.fromMimeData = miqt_exec_callback_cQsciScintilla_fromMimeData
  if not isNil(vtbl.toMimeData):
    vtbl[].vtbl.toMimeData = miqt_exec_callback_cQsciScintilla_toMimeData
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQsciScintilla_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQsciScintilla_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQsciScintilla_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQsciScintilla_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQsciScintilla_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQsciScintilla_focusOutEvent
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQsciScintilla_focusNextPrevChild
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQsciScintilla_keyPressEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQsciScintilla_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQsciScintilla_inputMethodQuery
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQsciScintilla_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQsciScintilla_mouseMoveEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQsciScintilla_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQsciScintilla_mouseReleaseEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQsciScintilla_paintEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQsciScintilla_resizeEvent
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQsciScintilla_scrollContentsBy
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQsciScintilla_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQsciScintilla_sizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQsciScintilla_setupViewport
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciScintilla_eventFilter
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQsciScintilla_viewportEvent
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQsciScintilla_viewportSizeHint
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQsciScintilla_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQsciScintilla_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQsciScintilla_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQsciScintilla_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQsciScintilla_paintEngine
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQsciScintilla_keyReleaseEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQsciScintilla_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQsciScintilla_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQsciScintilla_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQsciScintilla_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQsciScintilla_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQsciScintilla_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQsciScintilla_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQsciScintilla_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQsciScintilla_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQsciScintilla_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQsciScintilla_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQsciScintilla_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQsciScintilla_sharedPainter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciScintilla_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciScintilla_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciScintilla_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciScintilla_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciScintilla_disconnectNotify
  gen_qsciscintilla_types.QsciScintilla(h: fcQsciScintilla_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qsciscintilla_types.QsciScintilla,
    vtbl: ref QsciScintillaVTable = nil): gen_qsciscintilla_types.QsciScintilla =
  let vtbl = if vtbl == nil: new QsciScintillaVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciScintillaVTable, _: ptr cQsciScintilla) {.cdecl.} =
    let vtbl = cast[ref QsciScintillaVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciScintilla_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciScintilla_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciScintilla_metacall
  if not isNil(vtbl.apiContext):
    vtbl[].vtbl.apiContext = miqt_exec_callback_cQsciScintilla_apiContext
  if not isNil(vtbl.findFirst):
    vtbl[].vtbl.findFirst = miqt_exec_callback_cQsciScintilla_findFirst
  if not isNil(vtbl.findFirstInSelection):
    vtbl[].vtbl.findFirstInSelection = miqt_exec_callback_cQsciScintilla_findFirstInSelection
  if not isNil(vtbl.findNext):
    vtbl[].vtbl.findNext = miqt_exec_callback_cQsciScintilla_findNext
  if not isNil(vtbl.recolor):
    vtbl[].vtbl.recolor = miqt_exec_callback_cQsciScintilla_recolor
  if not isNil(vtbl.replace):
    vtbl[].vtbl.replace = miqt_exec_callback_cQsciScintilla_replace
  if not isNil(vtbl.append):
    vtbl[].vtbl.append = miqt_exec_callback_cQsciScintilla_append
  if not isNil(vtbl.autoCompleteFromAll):
    vtbl[].vtbl.autoCompleteFromAll = miqt_exec_callback_cQsciScintilla_autoCompleteFromAll
  if not isNil(vtbl.autoCompleteFromAPIs):
    vtbl[].vtbl.autoCompleteFromAPIs = miqt_exec_callback_cQsciScintilla_autoCompleteFromAPIs
  if not isNil(vtbl.autoCompleteFromDocument):
    vtbl[].vtbl.autoCompleteFromDocument = miqt_exec_callback_cQsciScintilla_autoCompleteFromDocument
  if not isNil(vtbl.callTip):
    vtbl[].vtbl.callTip = miqt_exec_callback_cQsciScintilla_callTip
  if not isNil(vtbl.clear):
    vtbl[].vtbl.clear = miqt_exec_callback_cQsciScintilla_clear
  if not isNil(vtbl.copy):
    vtbl[].vtbl.copy = miqt_exec_callback_cQsciScintilla_copy
  if not isNil(vtbl.cut):
    vtbl[].vtbl.cut = miqt_exec_callback_cQsciScintilla_cut
  if not isNil(vtbl.ensureCursorVisible):
    vtbl[].vtbl.ensureCursorVisible = miqt_exec_callback_cQsciScintilla_ensureCursorVisible
  if not isNil(vtbl.ensureLineVisible):
    vtbl[].vtbl.ensureLineVisible = miqt_exec_callback_cQsciScintilla_ensureLineVisible
  if not isNil(vtbl.foldAll):
    vtbl[].vtbl.foldAll = miqt_exec_callback_cQsciScintilla_foldAll
  if not isNil(vtbl.foldLine):
    vtbl[].vtbl.foldLine = miqt_exec_callback_cQsciScintilla_foldLine
  if not isNil(vtbl.indent):
    vtbl[].vtbl.indent = miqt_exec_callback_cQsciScintilla_indent
  if not isNil(vtbl.insert):
    vtbl[].vtbl.insert = miqt_exec_callback_cQsciScintilla_insert
  if not isNil(vtbl.insertAt):
    vtbl[].vtbl.insertAt = miqt_exec_callback_cQsciScintilla_insertAt
  if not isNil(vtbl.moveToMatchingBrace):
    vtbl[].vtbl.moveToMatchingBrace = miqt_exec_callback_cQsciScintilla_moveToMatchingBrace
  if not isNil(vtbl.paste):
    vtbl[].vtbl.paste = miqt_exec_callback_cQsciScintilla_paste
  if not isNil(vtbl.redo):
    vtbl[].vtbl.redo = miqt_exec_callback_cQsciScintilla_redo
  if not isNil(vtbl.removeSelectedText):
    vtbl[].vtbl.removeSelectedText = miqt_exec_callback_cQsciScintilla_removeSelectedText
  if not isNil(vtbl.replaceSelectedText):
    vtbl[].vtbl.replaceSelectedText = miqt_exec_callback_cQsciScintilla_replaceSelectedText
  if not isNil(vtbl.resetSelectionBackgroundColor):
    vtbl[].vtbl.resetSelectionBackgroundColor = miqt_exec_callback_cQsciScintilla_resetSelectionBackgroundColor
  if not isNil(vtbl.resetSelectionForegroundColor):
    vtbl[].vtbl.resetSelectionForegroundColor = miqt_exec_callback_cQsciScintilla_resetSelectionForegroundColor
  if not isNil(vtbl.selectAll):
    vtbl[].vtbl.selectAll = miqt_exec_callback_cQsciScintilla_selectAll
  if not isNil(vtbl.selectToMatchingBrace):
    vtbl[].vtbl.selectToMatchingBrace = miqt_exec_callback_cQsciScintilla_selectToMatchingBrace
  if not isNil(vtbl.setAutoCompletionCaseSensitivity):
    vtbl[].vtbl.setAutoCompletionCaseSensitivity = miqt_exec_callback_cQsciScintilla_setAutoCompletionCaseSensitivity
  if not isNil(vtbl.setAutoCompletionReplaceWord):
    vtbl[].vtbl.setAutoCompletionReplaceWord = miqt_exec_callback_cQsciScintilla_setAutoCompletionReplaceWord
  if not isNil(vtbl.setAutoCompletionShowSingle):
    vtbl[].vtbl.setAutoCompletionShowSingle = miqt_exec_callback_cQsciScintilla_setAutoCompletionShowSingle
  if not isNil(vtbl.setAutoCompletionSource):
    vtbl[].vtbl.setAutoCompletionSource = miqt_exec_callback_cQsciScintilla_setAutoCompletionSource
  if not isNil(vtbl.setAutoCompletionThreshold):
    vtbl[].vtbl.setAutoCompletionThreshold = miqt_exec_callback_cQsciScintilla_setAutoCompletionThreshold
  if not isNil(vtbl.setAutoCompletionUseSingle):
    vtbl[].vtbl.setAutoCompletionUseSingle = miqt_exec_callback_cQsciScintilla_setAutoCompletionUseSingle
  if not isNil(vtbl.setAutoIndent):
    vtbl[].vtbl.setAutoIndent = miqt_exec_callback_cQsciScintilla_setAutoIndent
  if not isNil(vtbl.setBraceMatching):
    vtbl[].vtbl.setBraceMatching = miqt_exec_callback_cQsciScintilla_setBraceMatching
  if not isNil(vtbl.setBackspaceUnindents):
    vtbl[].vtbl.setBackspaceUnindents = miqt_exec_callback_cQsciScintilla_setBackspaceUnindents
  if not isNil(vtbl.setCaretForegroundColor):
    vtbl[].vtbl.setCaretForegroundColor = miqt_exec_callback_cQsciScintilla_setCaretForegroundColor
  if not isNil(vtbl.setCaretLineBackgroundColor):
    vtbl[].vtbl.setCaretLineBackgroundColor = miqt_exec_callback_cQsciScintilla_setCaretLineBackgroundColor
  if not isNil(vtbl.setCaretLineFrameWidth):
    vtbl[].vtbl.setCaretLineFrameWidth = miqt_exec_callback_cQsciScintilla_setCaretLineFrameWidth
  if not isNil(vtbl.setCaretLineVisible):
    vtbl[].vtbl.setCaretLineVisible = miqt_exec_callback_cQsciScintilla_setCaretLineVisible
  if not isNil(vtbl.setCaretWidth):
    vtbl[].vtbl.setCaretWidth = miqt_exec_callback_cQsciScintilla_setCaretWidth
  if not isNil(vtbl.setColor):
    vtbl[].vtbl.setColor = miqt_exec_callback_cQsciScintilla_setColor
  if not isNil(vtbl.setCursorPosition):
    vtbl[].vtbl.setCursorPosition = miqt_exec_callback_cQsciScintilla_setCursorPosition
  if not isNil(vtbl.setEolMode):
    vtbl[].vtbl.setEolMode = miqt_exec_callback_cQsciScintilla_setEolMode
  if not isNil(vtbl.setEolVisibility):
    vtbl[].vtbl.setEolVisibility = miqt_exec_callback_cQsciScintilla_setEolVisibility
  if not isNil(vtbl.setFolding):
    vtbl[].vtbl.setFolding = miqt_exec_callback_cQsciScintilla_setFolding
  if not isNil(vtbl.setIndentation):
    vtbl[].vtbl.setIndentation = miqt_exec_callback_cQsciScintilla_setIndentation
  if not isNil(vtbl.setIndentationGuides):
    vtbl[].vtbl.setIndentationGuides = miqt_exec_callback_cQsciScintilla_setIndentationGuides
  if not isNil(vtbl.setIndentationGuidesBackgroundColor):
    vtbl[].vtbl.setIndentationGuidesBackgroundColor = miqt_exec_callback_cQsciScintilla_setIndentationGuidesBackgroundColor
  if not isNil(vtbl.setIndentationGuidesForegroundColor):
    vtbl[].vtbl.setIndentationGuidesForegroundColor = miqt_exec_callback_cQsciScintilla_setIndentationGuidesForegroundColor
  if not isNil(vtbl.setIndentationsUseTabs):
    vtbl[].vtbl.setIndentationsUseTabs = miqt_exec_callback_cQsciScintilla_setIndentationsUseTabs
  if not isNil(vtbl.setIndentationWidth):
    vtbl[].vtbl.setIndentationWidth = miqt_exec_callback_cQsciScintilla_setIndentationWidth
  if not isNil(vtbl.setLexer):
    vtbl[].vtbl.setLexer = miqt_exec_callback_cQsciScintilla_setLexer
  if not isNil(vtbl.setMarginsBackgroundColor):
    vtbl[].vtbl.setMarginsBackgroundColor = miqt_exec_callback_cQsciScintilla_setMarginsBackgroundColor
  if not isNil(vtbl.setMarginsFont):
    vtbl[].vtbl.setMarginsFont = miqt_exec_callback_cQsciScintilla_setMarginsFont
  if not isNil(vtbl.setMarginsForegroundColor):
    vtbl[].vtbl.setMarginsForegroundColor = miqt_exec_callback_cQsciScintilla_setMarginsForegroundColor
  if not isNil(vtbl.setMarginLineNumbers):
    vtbl[].vtbl.setMarginLineNumbers = miqt_exec_callback_cQsciScintilla_setMarginLineNumbers
  if not isNil(vtbl.setMarginMarkerMask):
    vtbl[].vtbl.setMarginMarkerMask = miqt_exec_callback_cQsciScintilla_setMarginMarkerMask
  if not isNil(vtbl.setMarginSensitivity):
    vtbl[].vtbl.setMarginSensitivity = miqt_exec_callback_cQsciScintilla_setMarginSensitivity
  if not isNil(vtbl.setMarginWidth):
    vtbl[].vtbl.setMarginWidth = miqt_exec_callback_cQsciScintilla_setMarginWidth
  if not isNil(vtbl.setMarginWidth):
    vtbl[].vtbl.setMarginWidth = miqt_exec_callback_cQsciScintilla_setMarginWidth2
  if not isNil(vtbl.setModified):
    vtbl[].vtbl.setModified = miqt_exec_callback_cQsciScintilla_setModified
  if not isNil(vtbl.setPaper):
    vtbl[].vtbl.setPaper = miqt_exec_callback_cQsciScintilla_setPaper
  if not isNil(vtbl.setReadOnly):
    vtbl[].vtbl.setReadOnly = miqt_exec_callback_cQsciScintilla_setReadOnly
  if not isNil(vtbl.setSelection):
    vtbl[].vtbl.setSelection = miqt_exec_callback_cQsciScintilla_setSelection
  if not isNil(vtbl.setSelectionBackgroundColor):
    vtbl[].vtbl.setSelectionBackgroundColor = miqt_exec_callback_cQsciScintilla_setSelectionBackgroundColor
  if not isNil(vtbl.setSelectionForegroundColor):
    vtbl[].vtbl.setSelectionForegroundColor = miqt_exec_callback_cQsciScintilla_setSelectionForegroundColor
  if not isNil(vtbl.setTabIndents):
    vtbl[].vtbl.setTabIndents = miqt_exec_callback_cQsciScintilla_setTabIndents
  if not isNil(vtbl.setTabWidth):
    vtbl[].vtbl.setTabWidth = miqt_exec_callback_cQsciScintilla_setTabWidth
  if not isNil(vtbl.setText):
    vtbl[].vtbl.setText = miqt_exec_callback_cQsciScintilla_setText
  if not isNil(vtbl.setUtf8):
    vtbl[].vtbl.setUtf8 = miqt_exec_callback_cQsciScintilla_setUtf8
  if not isNil(vtbl.setWhitespaceVisibility):
    vtbl[].vtbl.setWhitespaceVisibility = miqt_exec_callback_cQsciScintilla_setWhitespaceVisibility
  if not isNil(vtbl.setWrapMode):
    vtbl[].vtbl.setWrapMode = miqt_exec_callback_cQsciScintilla_setWrapMode
  if not isNil(vtbl.undo):
    vtbl[].vtbl.undo = miqt_exec_callback_cQsciScintilla_undo
  if not isNil(vtbl.unindent):
    vtbl[].vtbl.unindent = miqt_exec_callback_cQsciScintilla_unindent
  if not isNil(vtbl.zoomIn):
    vtbl[].vtbl.zoomIn = miqt_exec_callback_cQsciScintilla_zoomIn
  if not isNil(vtbl.zoomIn):
    vtbl[].vtbl.zoomIn = miqt_exec_callback_cQsciScintilla_zoomIn2
  if not isNil(vtbl.zoomOut):
    vtbl[].vtbl.zoomOut = miqt_exec_callback_cQsciScintilla_zoomOut
  if not isNil(vtbl.zoomOut):
    vtbl[].vtbl.zoomOut = miqt_exec_callback_cQsciScintilla_zoomOut2
  if not isNil(vtbl.zoomTo):
    vtbl[].vtbl.zoomTo = miqt_exec_callback_cQsciScintilla_zoomTo
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciScintilla_event
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQsciScintilla_changeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQsciScintilla_contextMenuEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQsciScintilla_wheelEvent
  if not isNil(vtbl.canInsertFromMimeData):
    vtbl[].vtbl.canInsertFromMimeData = miqt_exec_callback_cQsciScintilla_canInsertFromMimeData
  if not isNil(vtbl.fromMimeData):
    vtbl[].vtbl.fromMimeData = miqt_exec_callback_cQsciScintilla_fromMimeData
  if not isNil(vtbl.toMimeData):
    vtbl[].vtbl.toMimeData = miqt_exec_callback_cQsciScintilla_toMimeData
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQsciScintilla_dragEnterEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQsciScintilla_dragLeaveEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQsciScintilla_dragMoveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQsciScintilla_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQsciScintilla_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQsciScintilla_focusOutEvent
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQsciScintilla_focusNextPrevChild
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQsciScintilla_keyPressEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQsciScintilla_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQsciScintilla_inputMethodQuery
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQsciScintilla_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQsciScintilla_mouseMoveEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQsciScintilla_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQsciScintilla_mouseReleaseEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQsciScintilla_paintEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQsciScintilla_resizeEvent
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQsciScintilla_scrollContentsBy
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQsciScintilla_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQsciScintilla_sizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQsciScintilla_setupViewport
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciScintilla_eventFilter
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQsciScintilla_viewportEvent
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQsciScintilla_viewportSizeHint
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQsciScintilla_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQsciScintilla_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQsciScintilla_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQsciScintilla_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQsciScintilla_paintEngine
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQsciScintilla_keyReleaseEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQsciScintilla_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQsciScintilla_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQsciScintilla_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQsciScintilla_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQsciScintilla_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQsciScintilla_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQsciScintilla_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQsciScintilla_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQsciScintilla_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQsciScintilla_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQsciScintilla_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQsciScintilla_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQsciScintilla_sharedPainter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciScintilla_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciScintilla_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciScintilla_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciScintilla_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciScintilla_disconnectNotify
  gen_qsciscintilla_types.QsciScintilla(h: fcQsciScintilla_new2(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qsciscintilla_types.QsciScintilla): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciScintilla_staticMetaObject())
proc delete*(self: gen_qsciscintilla_types.QsciScintilla) =
  fcQsciScintilla_delete(self.h)
