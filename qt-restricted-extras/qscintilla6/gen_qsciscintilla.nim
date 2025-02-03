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
{.compile("gen_qsciscintilla.cpp", cflags).}


type QsciScintillaEnum* = cint
const
  QsciScintillaAiMaintain* = 1
  QsciScintillaAiOpening* = 2
  QsciScintillaAiClosing* = 4
  QsciScintillaMoNone* = 0
  QsciScintillaMoSublineSelect* = 1



type QsciScintillaAnnotationDisplay* = cint
const
  QsciScintillaAnnotationHidden* = 0
  QsciScintillaAnnotationStandard* = 1
  QsciScintillaAnnotationBoxed* = 2
  QsciScintillaAnnotationIndented* = 3



type QsciScintillaAutoCompletionUseSingle* = cint
const
  QsciScintillaAcusNever* = 0
  QsciScintillaAcusExplicit* = 1
  QsciScintillaAcusAlways* = 2



type QsciScintillaAutoCompletionSource* = cint
const
  QsciScintillaAcsNone* = 0
  QsciScintillaAcsAll* = 1
  QsciScintillaAcsDocument* = 2
  QsciScintillaAcsAPIs* = 3



type QsciScintillaBraceMatch* = cint
const
  QsciScintillaNoBraceMatch* = 0
  QsciScintillaStrictBraceMatch* = 1
  QsciScintillaSloppyBraceMatch* = 2



type QsciScintillaCallTipsPosition* = cint
const
  QsciScintillaCallTipsBelowText* = 0
  QsciScintillaCallTipsAboveText* = 1



type QsciScintillaCallTipsStyle* = cint
const
  QsciScintillaCallTipsNone* = 0
  QsciScintillaCallTipsNoContext* = 1
  QsciScintillaCallTipsNoAutoCompletionContext* = 2
  QsciScintillaCallTipsContext* = 3



type QsciScintillaEdgeMode* = cint
const
  QsciScintillaEdgeNone* = 0
  QsciScintillaEdgeLine* = 1
  QsciScintillaEdgeBackground* = 2
  QsciScintillaEdgeMultipleLines* = 3



type QsciScintillaEolMode* = cint
const
  QsciScintillaEolWindows* = 0
  QsciScintillaEolUnix* = 2
  QsciScintillaEolMac* = 1



type QsciScintillaFoldStyle* = cint
const
  QsciScintillaNoFoldStyle* = 0
  QsciScintillaPlainFoldStyle* = 1
  QsciScintillaCircledFoldStyle* = 2
  QsciScintillaBoxedFoldStyle* = 3
  QsciScintillaCircledTreeFoldStyle* = 4
  QsciScintillaBoxedTreeFoldStyle* = 5



type QsciScintillaIndicatorStyle* = cint
const
  QsciScintillaPlainIndicator* = 0
  QsciScintillaSquiggleIndicator* = 1
  QsciScintillaTTIndicator* = 2
  QsciScintillaDiagonalIndicator* = 3
  QsciScintillaStrikeIndicator* = 4
  QsciScintillaHiddenIndicator* = 5
  QsciScintillaBoxIndicator* = 6
  QsciScintillaRoundBoxIndicator* = 7
  QsciScintillaStraightBoxIndicator* = 8
  QsciScintillaFullBoxIndicator* = 16
  QsciScintillaDashesIndicator* = 9
  QsciScintillaDotsIndicator* = 10
  QsciScintillaSquiggleLowIndicator* = 11
  QsciScintillaDotBoxIndicator* = 12
  QsciScintillaSquigglePixmapIndicator* = 13
  QsciScintillaThickCompositionIndicator* = 14
  QsciScintillaThinCompositionIndicator* = 15
  QsciScintillaTextColorIndicator* = 17
  QsciScintillaTriangleIndicator* = 18
  QsciScintillaTriangleCharacterIndicator* = 19
  QsciScintillaGradientIndicator* = 20
  QsciScintillaCentreGradientIndicator* = 21



type QsciScintillaMarginType* = cint
const
  QsciScintillaSymbolMargin* = 0
  QsciScintillaSymbolMarginDefaultForegroundColor* = 3
  QsciScintillaSymbolMarginDefaultBackgroundColor* = 2
  QsciScintillaNumberMargin* = 1
  QsciScintillaTextMargin* = 4
  QsciScintillaTextMarginRightJustified* = 5
  QsciScintillaSymbolMarginColor* = 6



type QsciScintillaMarkerSymbol* = cint
const
  QsciScintillaCircle* = 0
  QsciScintillaRectangle* = 1
  QsciScintillaRightTriangle* = 2
  QsciScintillaSmallRectangle* = 3
  QsciScintillaRightArrow* = 4
  QsciScintillaInvisible* = 5
  QsciScintillaDownTriangle* = 6
  QsciScintillaMinus* = 7
  QsciScintillaPlus* = 8
  QsciScintillaVerticalLine* = 9
  QsciScintillaBottomLeftCorner* = 10
  QsciScintillaLeftSideSplitter* = 11
  QsciScintillaBoxedPlus* = 12
  QsciScintillaBoxedPlusConnected* = 13
  QsciScintillaBoxedMinus* = 14
  QsciScintillaBoxedMinusConnected* = 15
  QsciScintillaRoundedBottomLeftCorner* = 16
  QsciScintillaLeftSideRoundedSplitter* = 17
  QsciScintillaCircledPlus* = 18
  QsciScintillaCircledPlusConnected* = 19
  QsciScintillaCircledMinus* = 20
  QsciScintillaCircledMinusConnected* = 21
  QsciScintillaBackground* = 22
  QsciScintillaThreeDots* = 23
  QsciScintillaThreeRightArrows* = 24
  QsciScintillaFullRectangle* = 26
  QsciScintillaLeftRectangle* = 27
  QsciScintillaUnderline* = 29
  QsciScintillaBookmark* = 31



type QsciScintillaTabDrawMode* = cint
const
  QsciScintillaTabLongArrow* = 0
  QsciScintillaTabStrikeOut* = 1



type QsciScintillaWhitespaceVisibility* = cint
const
  QsciScintillaWsInvisible* = 0
  QsciScintillaWsVisible* = 1
  QsciScintillaWsVisibleAfterIndent* = 2
  QsciScintillaWsVisibleOnlyInIndent* = 3



type QsciScintillaWrapMode* = cint
const
  QsciScintillaWrapNone* = 0
  QsciScintillaWrapWord* = 1
  QsciScintillaWrapCharacter* = 2
  QsciScintillaWrapWhitespace* = 3



type QsciScintillaWrapVisualFlag* = cint
const
  QsciScintillaWrapFlagNone* = 0
  QsciScintillaWrapFlagByText* = 1
  QsciScintillaWrapFlagByBorder* = 2
  QsciScintillaWrapFlagInMargin* = 3



type QsciScintillaWrapIndentMode* = cint
const
  QsciScintillaWrapIndentFixed* = 0
  QsciScintillaWrapIndentSame* = 1
  QsciScintillaWrapIndentIndented* = 2
  QsciScintillaWrapIndentDeeplyIndented* = 3



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
  gen_qnamespace,
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
  gen_qstyleoption,
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
  gen_qnamespace,
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
  gen_qstyleoption,
  gen_qvariant,
  gen_qwidget

type cQsciScintilla*{.exportc: "QsciScintilla", incompleteStruct.} = object

proc fcQsciScintilla_new(parent: pointer): ptr cQsciScintilla {.importc: "QsciScintilla_new".}
proc fcQsciScintilla_new2(): ptr cQsciScintilla {.importc: "QsciScintilla_new2".}
proc fcQsciScintilla_metaObject(self: pointer, ): pointer {.importc: "QsciScintilla_metaObject".}
proc fcQsciScintilla_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciScintilla_metacast".}
proc fcQsciScintilla_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciScintilla_metacall".}
proc fcQsciScintilla_tr(s: cstring): struct_miqt_string {.importc: "QsciScintilla_tr".}
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
proc fQsciScintilla_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QsciScintilla_virtualbase_initStyleOption".}
proc fcQsciScintilla_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QsciScintilla_override_virtual_initStyleOption".}
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
proc fQsciScintilla_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QsciScintilla_virtualbase_nativeEvent".}
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
proc fcQsciScintilla_delete(self: pointer) {.importc: "QsciScintilla_delete".}


func init*(T: type QsciScintilla, h: ptr cQsciScintilla): QsciScintilla =
  T(h: h)
proc create*(T: type QsciScintilla, parent: gen_qwidget.QWidget): QsciScintilla =

  QsciScintilla.init(fcQsciScintilla_new(parent.h))
proc create*(T: type QsciScintilla, ): QsciScintilla =

  QsciScintilla.init(fcQsciScintilla_new2())
proc metaObject*(self: QsciScintilla, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciScintilla_metaObject(self.h))

proc metacast*(self: QsciScintilla, param1: cstring): pointer =

  fcQsciScintilla_metacast(self.h, param1)

proc metacall*(self: QsciScintilla, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciScintilla_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciScintilla, s: cstring): string =

  let v_ms = fcQsciScintilla_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc apiContext*(self: QsciScintilla, pos: cint, context_start: ptr cint, last_word_start: ptr cint): seq[string] =

  var v_ma = fcQsciScintilla_apiContext(self.h, pos, context_start, last_word_start)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc annotate*(self: QsciScintilla, line: cint, text: string, style: cint): void =

  fcQsciScintilla_annotate(self.h, line, struct_miqt_string(data: text, len: csize_t(len(text))), style)

proc annotate2*(self: QsciScintilla, line: cint, text: string, style: gen_qscistyle.QsciStyle): void =

  fcQsciScintilla_annotate2(self.h, line, struct_miqt_string(data: text, len: csize_t(len(text))), style.h)

proc annotate3*(self: QsciScintilla, line: cint, text: gen_qscistyledtext.QsciStyledText): void =

  fcQsciScintilla_annotate3(self.h, line, text.h)

proc annotation*(self: QsciScintilla, line: cint): string =

  let v_ms = fcQsciScintilla_annotation(self.h, line)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc annotationDisplay*(self: QsciScintilla, ): QsciScintillaAnnotationDisplay =

  QsciScintillaAnnotationDisplay(fcQsciScintilla_annotationDisplay(self.h))

proc clearAnnotations*(self: QsciScintilla, ): void =

  fcQsciScintilla_clearAnnotations(self.h)

proc autoCompletionCaseSensitivity*(self: QsciScintilla, ): bool =

  fcQsciScintilla_autoCompletionCaseSensitivity(self.h)

proc autoCompletionFillupsEnabled*(self: QsciScintilla, ): bool =

  fcQsciScintilla_autoCompletionFillupsEnabled(self.h)

proc autoCompletionReplaceWord*(self: QsciScintilla, ): bool =

  fcQsciScintilla_autoCompletionReplaceWord(self.h)

proc autoCompletionShowSingle*(self: QsciScintilla, ): bool =

  fcQsciScintilla_autoCompletionShowSingle(self.h)

proc autoCompletionSource*(self: QsciScintilla, ): QsciScintillaAutoCompletionSource =

  QsciScintillaAutoCompletionSource(fcQsciScintilla_autoCompletionSource(self.h))

proc autoCompletionThreshold*(self: QsciScintilla, ): cint =

  fcQsciScintilla_autoCompletionThreshold(self.h)

proc autoCompletionUseSingle*(self: QsciScintilla, ): QsciScintillaAutoCompletionUseSingle =

  QsciScintillaAutoCompletionUseSingle(fcQsciScintilla_autoCompletionUseSingle(self.h))

proc autoIndent*(self: QsciScintilla, ): bool =

  fcQsciScintilla_autoIndent(self.h)

proc backspaceUnindents*(self: QsciScintilla, ): bool =

  fcQsciScintilla_backspaceUnindents(self.h)

proc beginUndoAction*(self: QsciScintilla, ): void =

  fcQsciScintilla_beginUndoAction(self.h)

proc braceMatching*(self: QsciScintilla, ): QsciScintillaBraceMatch =

  QsciScintillaBraceMatch(fcQsciScintilla_braceMatching(self.h))

proc bytes*(self: QsciScintilla, start: cint, endVal: cint): seq[byte] =

  var v_bytearray = fcQsciScintilla_bytes(self.h, start, endVal)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc callTipsPosition*(self: QsciScintilla, ): QsciScintillaCallTipsPosition =

  QsciScintillaCallTipsPosition(fcQsciScintilla_callTipsPosition(self.h))

proc callTipsStyle*(self: QsciScintilla, ): QsciScintillaCallTipsStyle =

  QsciScintillaCallTipsStyle(fcQsciScintilla_callTipsStyle(self.h))

proc callTipsVisible*(self: QsciScintilla, ): cint =

  fcQsciScintilla_callTipsVisible(self.h)

proc cancelFind*(self: QsciScintilla, ): void =

  fcQsciScintilla_cancelFind(self.h)

proc cancelList*(self: QsciScintilla, ): void =

  fcQsciScintilla_cancelList(self.h)

proc caseSensitive*(self: QsciScintilla, ): bool =

  fcQsciScintilla_caseSensitive(self.h)

proc clearFolds*(self: QsciScintilla, ): void =

  fcQsciScintilla_clearFolds(self.h)

proc clearIndicatorRange*(self: QsciScintilla, lineFrom: cint, indexFrom: cint, lineTo: cint, indexTo: cint, indicatorNumber: cint): void =

  fcQsciScintilla_clearIndicatorRange(self.h, lineFrom, indexFrom, lineTo, indexTo, indicatorNumber)

proc clearRegisteredImages*(self: QsciScintilla, ): void =

  fcQsciScintilla_clearRegisteredImages(self.h)

proc color*(self: QsciScintilla, ): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciScintilla_color(self.h))

proc contractedFolds*(self: QsciScintilla, ): seq[cint] =

  var v_ma = fcQsciScintilla_contractedFolds(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc convertEols*(self: QsciScintilla, mode: QsciScintillaEolMode): void =

  fcQsciScintilla_convertEols(self.h, cint(mode))

proc createStandardContextMenu*(self: QsciScintilla, ): gen_qmenu.QMenu =

  gen_qmenu.QMenu(h: fcQsciScintilla_createStandardContextMenu(self.h))

proc document*(self: QsciScintilla, ): gen_qscidocument.QsciDocument =

  gen_qscidocument.QsciDocument(h: fcQsciScintilla_document(self.h))

proc endUndoAction*(self: QsciScintilla, ): void =

  fcQsciScintilla_endUndoAction(self.h)

proc edgeColor*(self: QsciScintilla, ): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciScintilla_edgeColor(self.h))

proc edgeColumn*(self: QsciScintilla, ): cint =

  fcQsciScintilla_edgeColumn(self.h)

proc edgeMode*(self: QsciScintilla, ): QsciScintillaEdgeMode =

  QsciScintillaEdgeMode(fcQsciScintilla_edgeMode(self.h))

proc setFont*(self: QsciScintilla, f: gen_qfont.QFont): void =

  fcQsciScintilla_setFont(self.h, f.h)

proc eolMode*(self: QsciScintilla, ): QsciScintillaEolMode =

  QsciScintillaEolMode(fcQsciScintilla_eolMode(self.h))

proc eolVisibility*(self: QsciScintilla, ): bool =

  fcQsciScintilla_eolVisibility(self.h)

proc extraAscent*(self: QsciScintilla, ): cint =

  fcQsciScintilla_extraAscent(self.h)

proc extraDescent*(self: QsciScintilla, ): cint =

  fcQsciScintilla_extraDescent(self.h)

proc fillIndicatorRange*(self: QsciScintilla, lineFrom: cint, indexFrom: cint, lineTo: cint, indexTo: cint, indicatorNumber: cint): void =

  fcQsciScintilla_fillIndicatorRange(self.h, lineFrom, indexFrom, lineTo, indexTo, indicatorNumber)

proc findFirst*(self: QsciScintilla, expr: string, re: bool, cs: bool, wo: bool, wrap: bool, forward: bool, line: cint, index: cint, show: bool, posix: bool, cxx11: bool): bool =

  fcQsciScintilla_findFirst(self.h, struct_miqt_string(data: expr, len: csize_t(len(expr))), re, cs, wo, wrap, forward, line, index, show, posix, cxx11)

proc findFirstInSelection*(self: QsciScintilla, expr: string, re: bool, cs: bool, wo: bool, forward: bool, show: bool, posix: bool, cxx11: bool): bool =

  fcQsciScintilla_findFirstInSelection(self.h, struct_miqt_string(data: expr, len: csize_t(len(expr))), re, cs, wo, forward, show, posix, cxx11)

proc findNext*(self: QsciScintilla, ): bool =

  fcQsciScintilla_findNext(self.h)

proc findMatchingBrace*(self: QsciScintilla, brace: ptr clong, other: ptr clong, mode: QsciScintillaBraceMatch): bool =

  fcQsciScintilla_findMatchingBrace(self.h, brace, other, cint(mode))

proc firstVisibleLine*(self: QsciScintilla, ): cint =

  fcQsciScintilla_firstVisibleLine(self.h)

proc folding*(self: QsciScintilla, ): QsciScintillaFoldStyle =

  QsciScintillaFoldStyle(fcQsciScintilla_folding(self.h))

proc getCursorPosition*(self: QsciScintilla, line: ptr cint, index: ptr cint): void =

  fcQsciScintilla_getCursorPosition(self.h, line, index)

proc getSelection*(self: QsciScintilla, lineFrom: ptr cint, indexFrom: ptr cint, lineTo: ptr cint, indexTo: ptr cint): void =

  fcQsciScintilla_getSelection(self.h, lineFrom, indexFrom, lineTo, indexTo)

proc hasSelectedText*(self: QsciScintilla, ): bool =

  fcQsciScintilla_hasSelectedText(self.h)

proc indentation*(self: QsciScintilla, line: cint): cint =

  fcQsciScintilla_indentation(self.h, line)

proc indentationGuides*(self: QsciScintilla, ): bool =

  fcQsciScintilla_indentationGuides(self.h)

proc indentationsUseTabs*(self: QsciScintilla, ): bool =

  fcQsciScintilla_indentationsUseTabs(self.h)

proc indentationWidth*(self: QsciScintilla, ): cint =

  fcQsciScintilla_indentationWidth(self.h)

proc indicatorDefine*(self: QsciScintilla, style: QsciScintillaIndicatorStyle): cint =

  fcQsciScintilla_indicatorDefine(self.h, cint(style))

proc indicatorDrawUnder*(self: QsciScintilla, indicatorNumber: cint): bool =

  fcQsciScintilla_indicatorDrawUnder(self.h, indicatorNumber)

proc isCallTipActive*(self: QsciScintilla, ): bool =

  fcQsciScintilla_isCallTipActive(self.h)

proc isListActive*(self: QsciScintilla, ): bool =

  fcQsciScintilla_isListActive(self.h)

proc isModified*(self: QsciScintilla, ): bool =

  fcQsciScintilla_isModified(self.h)

proc isReadOnly*(self: QsciScintilla, ): bool =

  fcQsciScintilla_isReadOnly(self.h)

proc isRedoAvailable*(self: QsciScintilla, ): bool =

  fcQsciScintilla_isRedoAvailable(self.h)

proc isUndoAvailable*(self: QsciScintilla, ): bool =

  fcQsciScintilla_isUndoAvailable(self.h)

proc isUtf8*(self: QsciScintilla, ): bool =

  fcQsciScintilla_isUtf8(self.h)

proc isWordCharacter*(self: QsciScintilla, ch: cchar): bool =

  fcQsciScintilla_isWordCharacter(self.h, ch)

proc lineAt*(self: QsciScintilla, point: gen_qpoint.QPoint): cint =

  fcQsciScintilla_lineAt(self.h, point.h)

proc lineIndexFromPosition*(self: QsciScintilla, position: cint, line: ptr cint, index: ptr cint): void =

  fcQsciScintilla_lineIndexFromPosition(self.h, position, line, index)

proc lineLength*(self: QsciScintilla, line: cint): cint =

  fcQsciScintilla_lineLength(self.h, line)

proc lines*(self: QsciScintilla, ): cint =

  fcQsciScintilla_lines(self.h)

proc length*(self: QsciScintilla, ): cint =

  fcQsciScintilla_length(self.h)

proc lexer*(self: QsciScintilla, ): gen_qscilexer.QsciLexer =

  gen_qscilexer.QsciLexer(h: fcQsciScintilla_lexer(self.h))

proc marginBackgroundColor*(self: QsciScintilla, margin: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciScintilla_marginBackgroundColor(self.h, margin))

proc marginLineNumbers*(self: QsciScintilla, margin: cint): bool =

  fcQsciScintilla_marginLineNumbers(self.h, margin)

proc marginMarkerMask*(self: QsciScintilla, margin: cint): cint =

  fcQsciScintilla_marginMarkerMask(self.h, margin)

proc marginOptions*(self: QsciScintilla, ): cint =

  fcQsciScintilla_marginOptions(self.h)

proc marginSensitivity*(self: QsciScintilla, margin: cint): bool =

  fcQsciScintilla_marginSensitivity(self.h, margin)

proc marginType*(self: QsciScintilla, margin: cint): QsciScintillaMarginType =

  QsciScintillaMarginType(fcQsciScintilla_marginType(self.h, margin))

proc marginWidth*(self: QsciScintilla, margin: cint): cint =

  fcQsciScintilla_marginWidth(self.h, margin)

proc margins*(self: QsciScintilla, ): cint =

  fcQsciScintilla_margins(self.h)

proc markerDefine*(self: QsciScintilla, sym: QsciScintillaMarkerSymbol): cint =

  fcQsciScintilla_markerDefine(self.h, cint(sym))

proc markerDefineWithCh*(self: QsciScintilla, ch: cchar): cint =

  fcQsciScintilla_markerDefineWithCh(self.h, ch)

proc markerDefineWithPm*(self: QsciScintilla, pm: gen_qpixmap.QPixmap): cint =

  fcQsciScintilla_markerDefineWithPm(self.h, pm.h)

proc markerDefineWithIm*(self: QsciScintilla, im: gen_qimage.QImage): cint =

  fcQsciScintilla_markerDefineWithIm(self.h, im.h)

proc markerAdd*(self: QsciScintilla, linenr: cint, markerNumber: cint): cint =

  fcQsciScintilla_markerAdd(self.h, linenr, markerNumber)

proc markersAtLine*(self: QsciScintilla, linenr: cint): cuint =

  fcQsciScintilla_markersAtLine(self.h, linenr)

proc markerDelete*(self: QsciScintilla, linenr: cint): void =

  fcQsciScintilla_markerDelete(self.h, linenr)

proc markerDeleteAll*(self: QsciScintilla, ): void =

  fcQsciScintilla_markerDeleteAll(self.h)

proc markerDeleteHandle*(self: QsciScintilla, mhandle: cint): void =

  fcQsciScintilla_markerDeleteHandle(self.h, mhandle)

proc markerLine*(self: QsciScintilla, mhandle: cint): cint =

  fcQsciScintilla_markerLine(self.h, mhandle)

proc markerFindNext*(self: QsciScintilla, linenr: cint, mask: cuint): cint =

  fcQsciScintilla_markerFindNext(self.h, linenr, mask)

proc markerFindPrevious*(self: QsciScintilla, linenr: cint, mask: cuint): cint =

  fcQsciScintilla_markerFindPrevious(self.h, linenr, mask)

proc overwriteMode*(self: QsciScintilla, ): bool =

  fcQsciScintilla_overwriteMode(self.h)

proc paper*(self: QsciScintilla, ): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciScintilla_paper(self.h))

proc positionFromLineIndex*(self: QsciScintilla, line: cint, index: cint): cint =

  fcQsciScintilla_positionFromLineIndex(self.h, line, index)

proc read*(self: QsciScintilla, io: gen_qiodevice.QIODevice): bool =

  fcQsciScintilla_read(self.h, io.h)

proc recolor*(self: QsciScintilla, start: cint, endVal: cint): void =

  fcQsciScintilla_recolor(self.h, start, endVal)

proc registerImage*(self: QsciScintilla, id: cint, pm: gen_qpixmap.QPixmap): void =

  fcQsciScintilla_registerImage(self.h, id, pm.h)

proc registerImage2*(self: QsciScintilla, id: cint, im: gen_qimage.QImage): void =

  fcQsciScintilla_registerImage2(self.h, id, im.h)

proc replace*(self: QsciScintilla, replaceStr: string): void =

  fcQsciScintilla_replace(self.h, struct_miqt_string(data: replaceStr, len: csize_t(len(replaceStr))))

proc resetFoldMarginColors*(self: QsciScintilla, ): void =

  fcQsciScintilla_resetFoldMarginColors(self.h)

proc resetHotspotBackgroundColor*(self: QsciScintilla, ): void =

  fcQsciScintilla_resetHotspotBackgroundColor(self.h)

proc resetHotspotForegroundColor*(self: QsciScintilla, ): void =

  fcQsciScintilla_resetHotspotForegroundColor(self.h)

proc scrollWidth*(self: QsciScintilla, ): cint =

  fcQsciScintilla_scrollWidth(self.h)

proc scrollWidthTracking*(self: QsciScintilla, ): bool =

  fcQsciScintilla_scrollWidthTracking(self.h)

proc setFoldMarginColors*(self: QsciScintilla, fore: gen_qcolor.QColor, back: gen_qcolor.QColor): void =

  fcQsciScintilla_setFoldMarginColors(self.h, fore.h, back.h)

proc setAnnotationDisplay*(self: QsciScintilla, display: QsciScintillaAnnotationDisplay): void =

  fcQsciScintilla_setAnnotationDisplay(self.h, cint(display))

proc setAutoCompletionFillupsEnabled*(self: QsciScintilla, enabled: bool): void =

  fcQsciScintilla_setAutoCompletionFillupsEnabled(self.h, enabled)

proc setAutoCompletionFillups*(self: QsciScintilla, fillups: cstring): void =

  fcQsciScintilla_setAutoCompletionFillups(self.h, fillups)

proc setAutoCompletionWordSeparators*(self: QsciScintilla, separators: seq[string]): void =

  var separators_CArray = newSeq[struct_miqt_string](len(separators))
  for i in 0..<len(separators):
    separators_CArray[i] = struct_miqt_string(data: separators[i], len: csize_t(len(separators[i])))

  fcQsciScintilla_setAutoCompletionWordSeparators(self.h, struct_miqt_array(len: csize_t(len(separators)), data: if len(separators) == 0: nil else: addr(separators_CArray[0])))

proc setCallTipsBackgroundColor*(self: QsciScintilla, col: gen_qcolor.QColor): void =

  fcQsciScintilla_setCallTipsBackgroundColor(self.h, col.h)

proc setCallTipsForegroundColor*(self: QsciScintilla, col: gen_qcolor.QColor): void =

  fcQsciScintilla_setCallTipsForegroundColor(self.h, col.h)

proc setCallTipsHighlightColor*(self: QsciScintilla, col: gen_qcolor.QColor): void =

  fcQsciScintilla_setCallTipsHighlightColor(self.h, col.h)

proc setCallTipsPosition*(self: QsciScintilla, position: QsciScintillaCallTipsPosition): void =

  fcQsciScintilla_setCallTipsPosition(self.h, cint(position))

proc setCallTipsStyle*(self: QsciScintilla, style: QsciScintillaCallTipsStyle): void =

  fcQsciScintilla_setCallTipsStyle(self.h, cint(style))

proc setCallTipsVisible*(self: QsciScintilla, nr: cint): void =

  fcQsciScintilla_setCallTipsVisible(self.h, nr)

proc setContractedFolds*(self: QsciScintilla, folds: seq[cint]): void =

  var folds_CArray = newSeq[cint](len(folds))
  for i in 0..<len(folds):
    folds_CArray[i] = folds[i]

  fcQsciScintilla_setContractedFolds(self.h, struct_miqt_array(len: csize_t(len(folds)), data: if len(folds) == 0: nil else: addr(folds_CArray[0])))

proc setDocument*(self: QsciScintilla, document: gen_qscidocument.QsciDocument): void =

  fcQsciScintilla_setDocument(self.h, document.h)

proc addEdgeColumn*(self: QsciScintilla, colnr: cint, col: gen_qcolor.QColor): void =

  fcQsciScintilla_addEdgeColumn(self.h, colnr, col.h)

proc clearEdgeColumns*(self: QsciScintilla, ): void =

  fcQsciScintilla_clearEdgeColumns(self.h)

proc setEdgeColor*(self: QsciScintilla, col: gen_qcolor.QColor): void =

  fcQsciScintilla_setEdgeColor(self.h, col.h)

proc setEdgeColumn*(self: QsciScintilla, colnr: cint): void =

  fcQsciScintilla_setEdgeColumn(self.h, colnr)

proc setEdgeMode*(self: QsciScintilla, mode: QsciScintillaEdgeMode): void =

  fcQsciScintilla_setEdgeMode(self.h, cint(mode))

proc setFirstVisibleLine*(self: QsciScintilla, linenr: cint): void =

  fcQsciScintilla_setFirstVisibleLine(self.h, linenr)

proc setIndicatorDrawUnder*(self: QsciScintilla, under: bool): void =

  fcQsciScintilla_setIndicatorDrawUnder(self.h, under)

proc setIndicatorForegroundColor*(self: QsciScintilla, col: gen_qcolor.QColor): void =

  fcQsciScintilla_setIndicatorForegroundColor(self.h, col.h)

proc setIndicatorHoverForegroundColor*(self: QsciScintilla, col: gen_qcolor.QColor): void =

  fcQsciScintilla_setIndicatorHoverForegroundColor(self.h, col.h)

proc setIndicatorHoverStyle*(self: QsciScintilla, style: QsciScintillaIndicatorStyle): void =

  fcQsciScintilla_setIndicatorHoverStyle(self.h, cint(style))

proc setIndicatorOutlineColor*(self: QsciScintilla, col: gen_qcolor.QColor): void =

  fcQsciScintilla_setIndicatorOutlineColor(self.h, col.h)

proc setMarginBackgroundColor*(self: QsciScintilla, margin: cint, col: gen_qcolor.QColor): void =

  fcQsciScintilla_setMarginBackgroundColor(self.h, margin, col.h)

proc setMarginOptions*(self: QsciScintilla, options: cint): void =

  fcQsciScintilla_setMarginOptions(self.h, options)

proc setMarginText*(self: QsciScintilla, line: cint, text: string, style: cint): void =

  fcQsciScintilla_setMarginText(self.h, line, struct_miqt_string(data: text, len: csize_t(len(text))), style)

proc setMarginText2*(self: QsciScintilla, line: cint, text: string, style: gen_qscistyle.QsciStyle): void =

  fcQsciScintilla_setMarginText2(self.h, line, struct_miqt_string(data: text, len: csize_t(len(text))), style.h)

proc setMarginText3*(self: QsciScintilla, line: cint, text: gen_qscistyledtext.QsciStyledText): void =

  fcQsciScintilla_setMarginText3(self.h, line, text.h)

proc setMarginType*(self: QsciScintilla, margin: cint, typeVal: QsciScintillaMarginType): void =

  fcQsciScintilla_setMarginType(self.h, margin, cint(typeVal))

proc clearMarginText*(self: QsciScintilla, ): void =

  fcQsciScintilla_clearMarginText(self.h)

proc setMargins*(self: QsciScintilla, margins: cint): void =

  fcQsciScintilla_setMargins(self.h, margins)

proc setMarkerBackgroundColor*(self: QsciScintilla, col: gen_qcolor.QColor): void =

  fcQsciScintilla_setMarkerBackgroundColor(self.h, col.h)

proc setMarkerForegroundColor*(self: QsciScintilla, col: gen_qcolor.QColor): void =

  fcQsciScintilla_setMarkerForegroundColor(self.h, col.h)

proc setMatchedBraceBackgroundColor*(self: QsciScintilla, col: gen_qcolor.QColor): void =

  fcQsciScintilla_setMatchedBraceBackgroundColor(self.h, col.h)

proc setMatchedBraceForegroundColor*(self: QsciScintilla, col: gen_qcolor.QColor): void =

  fcQsciScintilla_setMatchedBraceForegroundColor(self.h, col.h)

proc setMatchedBraceIndicator*(self: QsciScintilla, indicatorNumber: cint): void =

  fcQsciScintilla_setMatchedBraceIndicator(self.h, indicatorNumber)

proc resetMatchedBraceIndicator*(self: QsciScintilla, ): void =

  fcQsciScintilla_resetMatchedBraceIndicator(self.h)

proc setScrollWidth*(self: QsciScintilla, pixelWidth: cint): void =

  fcQsciScintilla_setScrollWidth(self.h, pixelWidth)

proc setScrollWidthTracking*(self: QsciScintilla, enabled: bool): void =

  fcQsciScintilla_setScrollWidthTracking(self.h, enabled)

proc setTabDrawMode*(self: QsciScintilla, mode: QsciScintillaTabDrawMode): void =

  fcQsciScintilla_setTabDrawMode(self.h, cint(mode))

proc setUnmatchedBraceBackgroundColor*(self: QsciScintilla, col: gen_qcolor.QColor): void =

  fcQsciScintilla_setUnmatchedBraceBackgroundColor(self.h, col.h)

proc setUnmatchedBraceForegroundColor*(self: QsciScintilla, col: gen_qcolor.QColor): void =

  fcQsciScintilla_setUnmatchedBraceForegroundColor(self.h, col.h)

proc setUnmatchedBraceIndicator*(self: QsciScintilla, indicatorNumber: cint): void =

  fcQsciScintilla_setUnmatchedBraceIndicator(self.h, indicatorNumber)

proc resetUnmatchedBraceIndicator*(self: QsciScintilla, ): void =

  fcQsciScintilla_resetUnmatchedBraceIndicator(self.h)

proc setWrapVisualFlags*(self: QsciScintilla, endFlag: QsciScintillaWrapVisualFlag): void =

  fcQsciScintilla_setWrapVisualFlags(self.h, cint(endFlag))

proc selectedText*(self: QsciScintilla, ): string =

  let v_ms = fcQsciScintilla_selectedText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc selectionToEol*(self: QsciScintilla, ): bool =

  fcQsciScintilla_selectionToEol(self.h)

proc setHotspotBackgroundColor*(self: QsciScintilla, col: gen_qcolor.QColor): void =

  fcQsciScintilla_setHotspotBackgroundColor(self.h, col.h)

proc setHotspotForegroundColor*(self: QsciScintilla, col: gen_qcolor.QColor): void =

  fcQsciScintilla_setHotspotForegroundColor(self.h, col.h)

proc setHotspotUnderline*(self: QsciScintilla, enable: bool): void =

  fcQsciScintilla_setHotspotUnderline(self.h, enable)

proc setHotspotWrap*(self: QsciScintilla, enable: bool): void =

  fcQsciScintilla_setHotspotWrap(self.h, enable)

proc setSelectionToEol*(self: QsciScintilla, filled: bool): void =

  fcQsciScintilla_setSelectionToEol(self.h, filled)

proc setExtraAscent*(self: QsciScintilla, extra: cint): void =

  fcQsciScintilla_setExtraAscent(self.h, extra)

proc setExtraDescent*(self: QsciScintilla, extra: cint): void =

  fcQsciScintilla_setExtraDescent(self.h, extra)

proc setOverwriteMode*(self: QsciScintilla, overwrite: bool): void =

  fcQsciScintilla_setOverwriteMode(self.h, overwrite)

proc setWhitespaceBackgroundColor*(self: QsciScintilla, col: gen_qcolor.QColor): void =

  fcQsciScintilla_setWhitespaceBackgroundColor(self.h, col.h)

proc setWhitespaceForegroundColor*(self: QsciScintilla, col: gen_qcolor.QColor): void =

  fcQsciScintilla_setWhitespaceForegroundColor(self.h, col.h)

proc setWhitespaceSize*(self: QsciScintilla, size: cint): void =

  fcQsciScintilla_setWhitespaceSize(self.h, size)

proc setWrapIndentMode*(self: QsciScintilla, mode: QsciScintillaWrapIndentMode): void =

  fcQsciScintilla_setWrapIndentMode(self.h, cint(mode))

proc showUserList*(self: QsciScintilla, id: cint, list: seq[string]): void =

  var list_CArray = newSeq[struct_miqt_string](len(list))
  for i in 0..<len(list):
    list_CArray[i] = struct_miqt_string(data: list[i], len: csize_t(len(list[i])))

  fcQsciScintilla_showUserList(self.h, id, struct_miqt_array(len: csize_t(len(list)), data: if len(list) == 0: nil else: addr(list_CArray[0])))

proc standardCommands*(self: QsciScintilla, ): gen_qscicommandset.QsciCommandSet =

  gen_qscicommandset.QsciCommandSet(h: fcQsciScintilla_standardCommands(self.h))

proc tabDrawMode*(self: QsciScintilla, ): QsciScintillaTabDrawMode =

  QsciScintillaTabDrawMode(fcQsciScintilla_tabDrawMode(self.h))

proc tabIndents*(self: QsciScintilla, ): bool =

  fcQsciScintilla_tabIndents(self.h)

proc tabWidth*(self: QsciScintilla, ): cint =

  fcQsciScintilla_tabWidth(self.h)

proc text*(self: QsciScintilla, ): string =

  let v_ms = fcQsciScintilla_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc textWithLine*(self: QsciScintilla, line: cint): string =

  let v_ms = fcQsciScintilla_textWithLine(self.h, line)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc text2*(self: QsciScintilla, start: cint, endVal: cint): string =

  let v_ms = fcQsciScintilla_text2(self.h, start, endVal)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc textHeight*(self: QsciScintilla, linenr: cint): cint =

  fcQsciScintilla_textHeight(self.h, linenr)

proc whitespaceSize*(self: QsciScintilla, ): cint =

  fcQsciScintilla_whitespaceSize(self.h)

proc whitespaceVisibility*(self: QsciScintilla, ): QsciScintillaWhitespaceVisibility =

  QsciScintillaWhitespaceVisibility(fcQsciScintilla_whitespaceVisibility(self.h))

proc wordAtLineIndex*(self: QsciScintilla, line: cint, index: cint): string =

  let v_ms = fcQsciScintilla_wordAtLineIndex(self.h, line, index)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc wordAtPoint*(self: QsciScintilla, point: gen_qpoint.QPoint): string =

  let v_ms = fcQsciScintilla_wordAtPoint(self.h, point.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc wordCharacters*(self: QsciScintilla, ): cstring =

  (fcQsciScintilla_wordCharacters(self.h))

proc wrapMode*(self: QsciScintilla, ): QsciScintillaWrapMode =

  QsciScintillaWrapMode(fcQsciScintilla_wrapMode(self.h))

proc wrapIndentMode*(self: QsciScintilla, ): QsciScintillaWrapIndentMode =

  QsciScintillaWrapIndentMode(fcQsciScintilla_wrapIndentMode(self.h))

proc write*(self: QsciScintilla, io: gen_qiodevice.QIODevice): bool =

  fcQsciScintilla_write(self.h, io.h)

proc append*(self: QsciScintilla, text: string): void =

  fcQsciScintilla_append(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc autoCompleteFromAll*(self: QsciScintilla, ): void =

  fcQsciScintilla_autoCompleteFromAll(self.h)

proc autoCompleteFromAPIs*(self: QsciScintilla, ): void =

  fcQsciScintilla_autoCompleteFromAPIs(self.h)

proc autoCompleteFromDocument*(self: QsciScintilla, ): void =

  fcQsciScintilla_autoCompleteFromDocument(self.h)

proc callTip*(self: QsciScintilla, ): void =

  fcQsciScintilla_callTip(self.h)

proc clear*(self: QsciScintilla, ): void =

  fcQsciScintilla_clear(self.h)

proc copy*(self: QsciScintilla, ): void =

  fcQsciScintilla_copy(self.h)

proc cut*(self: QsciScintilla, ): void =

  fcQsciScintilla_cut(self.h)

proc ensureCursorVisible*(self: QsciScintilla, ): void =

  fcQsciScintilla_ensureCursorVisible(self.h)

proc ensureLineVisible*(self: QsciScintilla, line: cint): void =

  fcQsciScintilla_ensureLineVisible(self.h, line)

proc foldAll*(self: QsciScintilla, children: bool): void =

  fcQsciScintilla_foldAll(self.h, children)

proc foldLine*(self: QsciScintilla, line: cint): void =

  fcQsciScintilla_foldLine(self.h, line)

proc indent*(self: QsciScintilla, line: cint): void =

  fcQsciScintilla_indent(self.h, line)

proc insert*(self: QsciScintilla, text: string): void =

  fcQsciScintilla_insert(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc insertAt*(self: QsciScintilla, text: string, line: cint, index: cint): void =

  fcQsciScintilla_insertAt(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), line, index)

proc moveToMatchingBrace*(self: QsciScintilla, ): void =

  fcQsciScintilla_moveToMatchingBrace(self.h)

proc paste*(self: QsciScintilla, ): void =

  fcQsciScintilla_paste(self.h)

proc redo*(self: QsciScintilla, ): void =

  fcQsciScintilla_redo(self.h)

proc removeSelectedText*(self: QsciScintilla, ): void =

  fcQsciScintilla_removeSelectedText(self.h)

proc replaceSelectedText*(self: QsciScintilla, text: string): void =

  fcQsciScintilla_replaceSelectedText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc resetSelectionBackgroundColor*(self: QsciScintilla, ): void =

  fcQsciScintilla_resetSelectionBackgroundColor(self.h)

proc resetSelectionForegroundColor*(self: QsciScintilla, ): void =

  fcQsciScintilla_resetSelectionForegroundColor(self.h)

proc selectAll*(self: QsciScintilla, select: bool): void =

  fcQsciScintilla_selectAll(self.h, select)

proc selectToMatchingBrace*(self: QsciScintilla, ): void =

  fcQsciScintilla_selectToMatchingBrace(self.h)

proc setAutoCompletionCaseSensitivity*(self: QsciScintilla, cs: bool): void =

  fcQsciScintilla_setAutoCompletionCaseSensitivity(self.h, cs)

proc setAutoCompletionReplaceWord*(self: QsciScintilla, replace: bool): void =

  fcQsciScintilla_setAutoCompletionReplaceWord(self.h, replace)

proc setAutoCompletionShowSingle*(self: QsciScintilla, single: bool): void =

  fcQsciScintilla_setAutoCompletionShowSingle(self.h, single)

proc setAutoCompletionSource*(self: QsciScintilla, source: QsciScintillaAutoCompletionSource): void =

  fcQsciScintilla_setAutoCompletionSource(self.h, cint(source))

proc setAutoCompletionThreshold*(self: QsciScintilla, thresh: cint): void =

  fcQsciScintilla_setAutoCompletionThreshold(self.h, thresh)

proc setAutoCompletionUseSingle*(self: QsciScintilla, single: QsciScintillaAutoCompletionUseSingle): void =

  fcQsciScintilla_setAutoCompletionUseSingle(self.h, cint(single))

proc setAutoIndent*(self: QsciScintilla, autoindent: bool): void =

  fcQsciScintilla_setAutoIndent(self.h, autoindent)

proc setBraceMatching*(self: QsciScintilla, bm: QsciScintillaBraceMatch): void =

  fcQsciScintilla_setBraceMatching(self.h, cint(bm))

proc setBackspaceUnindents*(self: QsciScintilla, unindent: bool): void =

  fcQsciScintilla_setBackspaceUnindents(self.h, unindent)

proc setCaretForegroundColor*(self: QsciScintilla, col: gen_qcolor.QColor): void =

  fcQsciScintilla_setCaretForegroundColor(self.h, col.h)

proc setCaretLineBackgroundColor*(self: QsciScintilla, col: gen_qcolor.QColor): void =

  fcQsciScintilla_setCaretLineBackgroundColor(self.h, col.h)

proc setCaretLineFrameWidth*(self: QsciScintilla, width: cint): void =

  fcQsciScintilla_setCaretLineFrameWidth(self.h, width)

proc setCaretLineVisible*(self: QsciScintilla, enable: bool): void =

  fcQsciScintilla_setCaretLineVisible(self.h, enable)

proc setCaretWidth*(self: QsciScintilla, width: cint): void =

  fcQsciScintilla_setCaretWidth(self.h, width)

proc setColor*(self: QsciScintilla, c: gen_qcolor.QColor): void =

  fcQsciScintilla_setColor(self.h, c.h)

proc setCursorPosition*(self: QsciScintilla, line: cint, index: cint): void =

  fcQsciScintilla_setCursorPosition(self.h, line, index)

proc setEolMode*(self: QsciScintilla, mode: QsciScintillaEolMode): void =

  fcQsciScintilla_setEolMode(self.h, cint(mode))

proc setEolVisibility*(self: QsciScintilla, visible: bool): void =

  fcQsciScintilla_setEolVisibility(self.h, visible)

proc setFolding*(self: QsciScintilla, fold: QsciScintillaFoldStyle, margin: cint): void =

  fcQsciScintilla_setFolding(self.h, cint(fold), margin)

proc setIndentation*(self: QsciScintilla, line: cint, indentation: cint): void =

  fcQsciScintilla_setIndentation(self.h, line, indentation)

proc setIndentationGuides*(self: QsciScintilla, enable: bool): void =

  fcQsciScintilla_setIndentationGuides(self.h, enable)

proc setIndentationGuidesBackgroundColor*(self: QsciScintilla, col: gen_qcolor.QColor): void =

  fcQsciScintilla_setIndentationGuidesBackgroundColor(self.h, col.h)

proc setIndentationGuidesForegroundColor*(self: QsciScintilla, col: gen_qcolor.QColor): void =

  fcQsciScintilla_setIndentationGuidesForegroundColor(self.h, col.h)

proc setIndentationsUseTabs*(self: QsciScintilla, tabs: bool): void =

  fcQsciScintilla_setIndentationsUseTabs(self.h, tabs)

proc setIndentationWidth*(self: QsciScintilla, width: cint): void =

  fcQsciScintilla_setIndentationWidth(self.h, width)

proc setLexer*(self: QsciScintilla, lexer: gen_qscilexer.QsciLexer): void =

  fcQsciScintilla_setLexer(self.h, lexer.h)

proc setMarginsBackgroundColor*(self: QsciScintilla, col: gen_qcolor.QColor): void =

  fcQsciScintilla_setMarginsBackgroundColor(self.h, col.h)

proc setMarginsFont*(self: QsciScintilla, f: gen_qfont.QFont): void =

  fcQsciScintilla_setMarginsFont(self.h, f.h)

proc setMarginsForegroundColor*(self: QsciScintilla, col: gen_qcolor.QColor): void =

  fcQsciScintilla_setMarginsForegroundColor(self.h, col.h)

proc setMarginLineNumbers*(self: QsciScintilla, margin: cint, lnrs: bool): void =

  fcQsciScintilla_setMarginLineNumbers(self.h, margin, lnrs)

proc setMarginMarkerMask*(self: QsciScintilla, margin: cint, mask: cint): void =

  fcQsciScintilla_setMarginMarkerMask(self.h, margin, mask)

proc setMarginSensitivity*(self: QsciScintilla, margin: cint, sens: bool): void =

  fcQsciScintilla_setMarginSensitivity(self.h, margin, sens)

proc setMarginWidth*(self: QsciScintilla, margin: cint, width: cint): void =

  fcQsciScintilla_setMarginWidth(self.h, margin, width)

proc setMarginWidth2*(self: QsciScintilla, margin: cint, s: string): void =

  fcQsciScintilla_setMarginWidth2(self.h, margin, struct_miqt_string(data: s, len: csize_t(len(s))))

proc setModified*(self: QsciScintilla, m: bool): void =

  fcQsciScintilla_setModified(self.h, m)

proc setPaper*(self: QsciScintilla, c: gen_qcolor.QColor): void =

  fcQsciScintilla_setPaper(self.h, c.h)

proc setReadOnly*(self: QsciScintilla, ro: bool): void =

  fcQsciScintilla_setReadOnly(self.h, ro)

proc setSelection*(self: QsciScintilla, lineFrom: cint, indexFrom: cint, lineTo: cint, indexTo: cint): void =

  fcQsciScintilla_setSelection(self.h, lineFrom, indexFrom, lineTo, indexTo)

proc setSelectionBackgroundColor*(self: QsciScintilla, col: gen_qcolor.QColor): void =

  fcQsciScintilla_setSelectionBackgroundColor(self.h, col.h)

proc setSelectionForegroundColor*(self: QsciScintilla, col: gen_qcolor.QColor): void =

  fcQsciScintilla_setSelectionForegroundColor(self.h, col.h)

proc setTabIndents*(self: QsciScintilla, indent: bool): void =

  fcQsciScintilla_setTabIndents(self.h, indent)

proc setTabWidth*(self: QsciScintilla, width: cint): void =

  fcQsciScintilla_setTabWidth(self.h, width)

proc setText*(self: QsciScintilla, text: string): void =

  fcQsciScintilla_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc setUtf8*(self: QsciScintilla, cp: bool): void =

  fcQsciScintilla_setUtf8(self.h, cp)

proc setWhitespaceVisibility*(self: QsciScintilla, mode: QsciScintillaWhitespaceVisibility): void =

  fcQsciScintilla_setWhitespaceVisibility(self.h, cint(mode))

proc setWrapMode*(self: QsciScintilla, mode: QsciScintillaWrapMode): void =

  fcQsciScintilla_setWrapMode(self.h, cint(mode))

proc undo*(self: QsciScintilla, ): void =

  fcQsciScintilla_undo(self.h)

proc unindent*(self: QsciScintilla, line: cint): void =

  fcQsciScintilla_unindent(self.h, line)

proc zoomIn*(self: QsciScintilla, range: cint): void =

  fcQsciScintilla_zoomIn(self.h, range)

proc zoomIn2*(self: QsciScintilla, ): void =

  fcQsciScintilla_zoomIn2(self.h)

proc zoomOut*(self: QsciScintilla, range: cint): void =

  fcQsciScintilla_zoomOut(self.h, range)

proc zoomOut2*(self: QsciScintilla, ): void =

  fcQsciScintilla_zoomOut2(self.h)

proc zoomTo*(self: QsciScintilla, size: cint): void =

  fcQsciScintilla_zoomTo(self.h, size)

proc cursorPositionChanged*(self: QsciScintilla, line: cint, index: cint): void =

  fcQsciScintilla_cursorPositionChanged(self.h, line, index)

proc miqt_exec_callback_QsciScintilla_cursorPositionChanged(slot: int, line: cint, index: cint) {.exportc.} =
  type Cb = proc(line: cint, index: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = line

  let slotval2 = index


  nimfunc[](slotval1, slotval2)

proc oncursorPositionChanged*(self: QsciScintilla, slot: proc(line: cint, index: cint)) =
  type Cb = proc(line: cint, index: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintilla_connect_cursorPositionChanged(self.h, cast[int](addr tmp[]))
proc copyAvailable*(self: QsciScintilla, yes: bool): void =

  fcQsciScintilla_copyAvailable(self.h, yes)

proc miqt_exec_callback_QsciScintilla_copyAvailable(slot: int, yes: bool) {.exportc.} =
  type Cb = proc(yes: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = yes


  nimfunc[](slotval1)

proc oncopyAvailable*(self: QsciScintilla, slot: proc(yes: bool)) =
  type Cb = proc(yes: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintilla_connect_copyAvailable(self.h, cast[int](addr tmp[]))
proc indicatorClicked*(self: QsciScintilla, line: cint, index: cint, state: gen_qnamespace.KeyboardModifier): void =

  fcQsciScintilla_indicatorClicked(self.h, line, index, cint(state))

proc miqt_exec_callback_QsciScintilla_indicatorClicked(slot: int, line: cint, index: cint, state: cint) {.exportc.} =
  type Cb = proc(line: cint, index: cint, state: gen_qnamespace.KeyboardModifier)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = line

  let slotval2 = index

  let slotval3 = gen_qnamespace.KeyboardModifier(state)


  nimfunc[](slotval1, slotval2, slotval3)

proc onindicatorClicked*(self: QsciScintilla, slot: proc(line: cint, index: cint, state: gen_qnamespace.KeyboardModifier)) =
  type Cb = proc(line: cint, index: cint, state: gen_qnamespace.KeyboardModifier)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintilla_connect_indicatorClicked(self.h, cast[int](addr tmp[]))
proc indicatorReleased*(self: QsciScintilla, line: cint, index: cint, state: gen_qnamespace.KeyboardModifier): void =

  fcQsciScintilla_indicatorReleased(self.h, line, index, cint(state))

proc miqt_exec_callback_QsciScintilla_indicatorReleased(slot: int, line: cint, index: cint, state: cint) {.exportc.} =
  type Cb = proc(line: cint, index: cint, state: gen_qnamespace.KeyboardModifier)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = line

  let slotval2 = index

  let slotval3 = gen_qnamespace.KeyboardModifier(state)


  nimfunc[](slotval1, slotval2, slotval3)

proc onindicatorReleased*(self: QsciScintilla, slot: proc(line: cint, index: cint, state: gen_qnamespace.KeyboardModifier)) =
  type Cb = proc(line: cint, index: cint, state: gen_qnamespace.KeyboardModifier)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintilla_connect_indicatorReleased(self.h, cast[int](addr tmp[]))
proc linesChanged*(self: QsciScintilla, ): void =

  fcQsciScintilla_linesChanged(self.h)

proc miqt_exec_callback_QsciScintilla_linesChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onlinesChanged*(self: QsciScintilla, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintilla_connect_linesChanged(self.h, cast[int](addr tmp[]))
proc marginClicked*(self: QsciScintilla, margin: cint, line: cint, state: gen_qnamespace.KeyboardModifier): void =

  fcQsciScintilla_marginClicked(self.h, margin, line, cint(state))

proc miqt_exec_callback_QsciScintilla_marginClicked(slot: int, margin: cint, line: cint, state: cint) {.exportc.} =
  type Cb = proc(margin: cint, line: cint, state: gen_qnamespace.KeyboardModifier)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = margin

  let slotval2 = line

  let slotval3 = gen_qnamespace.KeyboardModifier(state)


  nimfunc[](slotval1, slotval2, slotval3)

proc onmarginClicked*(self: QsciScintilla, slot: proc(margin: cint, line: cint, state: gen_qnamespace.KeyboardModifier)) =
  type Cb = proc(margin: cint, line: cint, state: gen_qnamespace.KeyboardModifier)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintilla_connect_marginClicked(self.h, cast[int](addr tmp[]))
proc marginRightClicked*(self: QsciScintilla, margin: cint, line: cint, state: gen_qnamespace.KeyboardModifier): void =

  fcQsciScintilla_marginRightClicked(self.h, margin, line, cint(state))

proc miqt_exec_callback_QsciScintilla_marginRightClicked(slot: int, margin: cint, line: cint, state: cint) {.exportc.} =
  type Cb = proc(margin: cint, line: cint, state: gen_qnamespace.KeyboardModifier)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = margin

  let slotval2 = line

  let slotval3 = gen_qnamespace.KeyboardModifier(state)


  nimfunc[](slotval1, slotval2, slotval3)

proc onmarginRightClicked*(self: QsciScintilla, slot: proc(margin: cint, line: cint, state: gen_qnamespace.KeyboardModifier)) =
  type Cb = proc(margin: cint, line: cint, state: gen_qnamespace.KeyboardModifier)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintilla_connect_marginRightClicked(self.h, cast[int](addr tmp[]))
proc modificationAttempted*(self: QsciScintilla, ): void =

  fcQsciScintilla_modificationAttempted(self.h)

proc miqt_exec_callback_QsciScintilla_modificationAttempted(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onmodificationAttempted*(self: QsciScintilla, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintilla_connect_modificationAttempted(self.h, cast[int](addr tmp[]))
proc modificationChanged*(self: QsciScintilla, m: bool): void =

  fcQsciScintilla_modificationChanged(self.h, m)

proc miqt_exec_callback_QsciScintilla_modificationChanged(slot: int, m: bool) {.exportc.} =
  type Cb = proc(m: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = m


  nimfunc[](slotval1)

proc onmodificationChanged*(self: QsciScintilla, slot: proc(m: bool)) =
  type Cb = proc(m: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintilla_connect_modificationChanged(self.h, cast[int](addr tmp[]))
proc selectionChanged*(self: QsciScintilla, ): void =

  fcQsciScintilla_selectionChanged(self.h)

proc miqt_exec_callback_QsciScintilla_selectionChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onselectionChanged*(self: QsciScintilla, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintilla_connect_selectionChanged(self.h, cast[int](addr tmp[]))
proc textChanged*(self: QsciScintilla, ): void =

  fcQsciScintilla_textChanged(self.h)

proc miqt_exec_callback_QsciScintilla_textChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc ontextChanged*(self: QsciScintilla, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintilla_connect_textChanged(self.h, cast[int](addr tmp[]))
proc userListActivated*(self: QsciScintilla, id: cint, string: string): void =

  fcQsciScintilla_userListActivated(self.h, id, struct_miqt_string(data: string, len: csize_t(len(string))))

proc miqt_exec_callback_QsciScintilla_userListActivated(slot: int, id: cint, string: struct_miqt_string) {.exportc.} =
  type Cb = proc(id: cint, string: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = id

  let vstring_ms = string
  let vstringx_ret = string.fromBytes(toOpenArrayByte(vstring_ms.data, 0, int(vstring_ms.len)-1))
  c_free(vstring_ms.data)
  let slotval2 = vstringx_ret


  nimfunc[](slotval1, slotval2)

proc onuserListActivated*(self: QsciScintilla, slot: proc(id: cint, string: string)) =
  type Cb = proc(id: cint, string: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQsciScintilla_connect_userListActivated(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QsciScintilla, s: cstring, c: cstring): string =

  let v_ms = fcQsciScintilla_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciScintilla, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciScintilla_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc clearAnnotations1*(self: QsciScintilla, line: cint): void =

  fcQsciScintilla_clearAnnotations1(self.h, line)

proc indicatorDefine2*(self: QsciScintilla, style: QsciScintillaIndicatorStyle, indicatorNumber: cint): cint =

  fcQsciScintilla_indicatorDefine2(self.h, cint(style), indicatorNumber)

proc markerDefine2*(self: QsciScintilla, sym: QsciScintillaMarkerSymbol, markerNumber: cint): cint =

  fcQsciScintilla_markerDefine2(self.h, cint(sym), markerNumber)

proc markerDefine22*(self: QsciScintilla, ch: cchar, markerNumber: cint): cint =

  fcQsciScintilla_markerDefine22(self.h, ch, markerNumber)

proc markerDefine23*(self: QsciScintilla, pm: gen_qpixmap.QPixmap, markerNumber: cint): cint =

  fcQsciScintilla_markerDefine23(self.h, pm.h, markerNumber)

proc markerDefine24*(self: QsciScintilla, im: gen_qimage.QImage, markerNumber: cint): cint =

  fcQsciScintilla_markerDefine24(self.h, im.h, markerNumber)

proc markerDelete2*(self: QsciScintilla, linenr: cint, markerNumber: cint): void =

  fcQsciScintilla_markerDelete2(self.h, linenr, markerNumber)

proc markerDeleteAll1*(self: QsciScintilla, markerNumber: cint): void =

  fcQsciScintilla_markerDeleteAll1(self.h, markerNumber)

proc setIndicatorDrawUnder2*(self: QsciScintilla, under: bool, indicatorNumber: cint): void =

  fcQsciScintilla_setIndicatorDrawUnder2(self.h, under, indicatorNumber)

proc setIndicatorForegroundColor2*(self: QsciScintilla, col: gen_qcolor.QColor, indicatorNumber: cint): void =

  fcQsciScintilla_setIndicatorForegroundColor2(self.h, col.h, indicatorNumber)

proc setIndicatorHoverForegroundColor2*(self: QsciScintilla, col: gen_qcolor.QColor, indicatorNumber: cint): void =

  fcQsciScintilla_setIndicatorHoverForegroundColor2(self.h, col.h, indicatorNumber)

proc setIndicatorHoverStyle2*(self: QsciScintilla, style: QsciScintillaIndicatorStyle, indicatorNumber: cint): void =

  fcQsciScintilla_setIndicatorHoverStyle2(self.h, cint(style), indicatorNumber)

proc setIndicatorOutlineColor2*(self: QsciScintilla, col: gen_qcolor.QColor, indicatorNumber: cint): void =

  fcQsciScintilla_setIndicatorOutlineColor2(self.h, col.h, indicatorNumber)

proc clearMarginText1*(self: QsciScintilla, line: cint): void =

  fcQsciScintilla_clearMarginText1(self.h, line)

proc setMarkerBackgroundColor2*(self: QsciScintilla, col: gen_qcolor.QColor, markerNumber: cint): void =

  fcQsciScintilla_setMarkerBackgroundColor2(self.h, col.h, markerNumber)

proc setMarkerForegroundColor2*(self: QsciScintilla, col: gen_qcolor.QColor, markerNumber: cint): void =

  fcQsciScintilla_setMarkerForegroundColor2(self.h, col.h, markerNumber)

proc setWrapVisualFlags2*(self: QsciScintilla, endFlag: QsciScintillaWrapVisualFlag, startFlag: QsciScintillaWrapVisualFlag): void =

  fcQsciScintilla_setWrapVisualFlags2(self.h, cint(endFlag), cint(startFlag))

proc setWrapVisualFlags3*(self: QsciScintilla, endFlag: QsciScintillaWrapVisualFlag, startFlag: QsciScintillaWrapVisualFlag, indent: cint): void =

  fcQsciScintilla_setWrapVisualFlags3(self.h, cint(endFlag), cint(startFlag), indent)

proc callVirtualBase_metacall(self: QsciScintilla, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciScintilla_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciScintillametacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciScintilla, slot: proc(super: QsciScintillametacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillametacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_metacall(self: ptr cQsciScintilla, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciScintilla_metacall ".} =
  type Cb = proc(super: QsciScintillametacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciScintilla(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_apiContext(self: QsciScintilla, pos: cint, context_start: ptr cint, last_word_start: ptr cint): seq[string] =


  var v_ma = fQsciScintilla_virtualbase_apiContext(self.h, pos, context_start, last_word_start)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QsciScintillaapiContextBase* = proc(pos: cint, context_start: ptr cint, last_word_start: ptr cint): seq[string]
proc onapiContext*(self: QsciScintilla, slot: proc(super: QsciScintillaapiContextBase, pos: cint, context_start: ptr cint, last_word_start: ptr cint): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillaapiContextBase, pos: cint, context_start: ptr cint, last_word_start: ptr cint): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_apiContext(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_apiContext(self: ptr cQsciScintilla, slot: int, pos: cint, context_start: ptr cint, last_word_start: ptr cint): struct_miqt_array {.exportc: "miqt_exec_callback_QsciScintilla_apiContext ".} =
  type Cb = proc(super: QsciScintillaapiContextBase, pos: cint, context_start: ptr cint, last_word_start: ptr cint): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(pos: cint, context_start: ptr cint, last_word_start: ptr cint): auto =
    callVirtualBase_apiContext(QsciScintilla(h: self), pos, context_start, last_word_start)
  let slotval1 = pos

  let slotval2 = context_start

  let slotval3 = last_word_start


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_findFirst(self: QsciScintilla, expr: string, re: bool, cs: bool, wo: bool, wrap: bool, forward: bool, line: cint, index: cint, show: bool, posix: bool, cxx11: bool): bool =


  fQsciScintilla_virtualbase_findFirst(self.h, struct_miqt_string(data: expr, len: csize_t(len(expr))), re, cs, wo, wrap, forward, line, index, show, posix, cxx11)

type QsciScintillafindFirstBase* = proc(expr: string, re: bool, cs: bool, wo: bool, wrap: bool, forward: bool, line: cint, index: cint, show: bool, posix: bool, cxx11: bool): bool
proc onfindFirst*(self: QsciScintilla, slot: proc(super: QsciScintillafindFirstBase, expr: string, re: bool, cs: bool, wo: bool, wrap: bool, forward: bool, line: cint, index: cint, show: bool, posix: bool, cxx11: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillafindFirstBase, expr: string, re: bool, cs: bool, wo: bool, wrap: bool, forward: bool, line: cint, index: cint, show: bool, posix: bool, cxx11: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_findFirst(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_findFirst(self: ptr cQsciScintilla, slot: int, expr: struct_miqt_string, re: bool, cs: bool, wo: bool, wrap: bool, forward: bool, line: cint, index: cint, show: bool, posix: bool, cxx11: bool): bool {.exportc: "miqt_exec_callback_QsciScintilla_findFirst ".} =
  type Cb = proc(super: QsciScintillafindFirstBase, expr: string, re: bool, cs: bool, wo: bool, wrap: bool, forward: bool, line: cint, index: cint, show: bool, posix: bool, cxx11: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(expr: string, re: bool, cs: bool, wo: bool, wrap: bool, forward: bool, line: cint, index: cint, show: bool, posix: bool, cxx11: bool): auto =
    callVirtualBase_findFirst(QsciScintilla(h: self), expr, re, cs, wo, wrap, forward, line, index, show, posix, cxx11)
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


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5, slotval6, slotval7, slotval8, slotval9, slotval10, slotval11 )

  virtualReturn
proc callVirtualBase_findFirstInSelection(self: QsciScintilla, expr: string, re: bool, cs: bool, wo: bool, forward: bool, show: bool, posix: bool, cxx11: bool): bool =


  fQsciScintilla_virtualbase_findFirstInSelection(self.h, struct_miqt_string(data: expr, len: csize_t(len(expr))), re, cs, wo, forward, show, posix, cxx11)

type QsciScintillafindFirstInSelectionBase* = proc(expr: string, re: bool, cs: bool, wo: bool, forward: bool, show: bool, posix: bool, cxx11: bool): bool
proc onfindFirstInSelection*(self: QsciScintilla, slot: proc(super: QsciScintillafindFirstInSelectionBase, expr: string, re: bool, cs: bool, wo: bool, forward: bool, show: bool, posix: bool, cxx11: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillafindFirstInSelectionBase, expr: string, re: bool, cs: bool, wo: bool, forward: bool, show: bool, posix: bool, cxx11: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_findFirstInSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_findFirstInSelection(self: ptr cQsciScintilla, slot: int, expr: struct_miqt_string, re: bool, cs: bool, wo: bool, forward: bool, show: bool, posix: bool, cxx11: bool): bool {.exportc: "miqt_exec_callback_QsciScintilla_findFirstInSelection ".} =
  type Cb = proc(super: QsciScintillafindFirstInSelectionBase, expr: string, re: bool, cs: bool, wo: bool, forward: bool, show: bool, posix: bool, cxx11: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(expr: string, re: bool, cs: bool, wo: bool, forward: bool, show: bool, posix: bool, cxx11: bool): auto =
    callVirtualBase_findFirstInSelection(QsciScintilla(h: self), expr, re, cs, wo, forward, show, posix, cxx11)
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


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5, slotval6, slotval7, slotval8 )

  virtualReturn
proc callVirtualBase_findNext(self: QsciScintilla, ): bool =


  fQsciScintilla_virtualbase_findNext(self.h)

type QsciScintillafindNextBase* = proc(): bool
proc onfindNext*(self: QsciScintilla, slot: proc(super: QsciScintillafindNextBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillafindNextBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_findNext(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_findNext(self: ptr cQsciScintilla, slot: int): bool {.exportc: "miqt_exec_callback_QsciScintilla_findNext ".} =
  type Cb = proc(super: QsciScintillafindNextBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_findNext(QsciScintilla(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_recolor(self: QsciScintilla, start: cint, endVal: cint): void =


  fQsciScintilla_virtualbase_recolor(self.h, start, endVal)

type QsciScintillarecolorBase* = proc(start: cint, endVal: cint): void
proc onrecolor*(self: QsciScintilla, slot: proc(super: QsciScintillarecolorBase, start: cint, endVal: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillarecolorBase, start: cint, endVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_recolor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_recolor(self: ptr cQsciScintilla, slot: int, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_recolor ".} =
  type Cb = proc(super: QsciScintillarecolorBase, start: cint, endVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(start: cint, endVal: cint): auto =
    callVirtualBase_recolor(QsciScintilla(h: self), start, endVal)
  let slotval1 = start

  let slotval2 = endVal


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_replace(self: QsciScintilla, replaceStr: string): void =


  fQsciScintilla_virtualbase_replace(self.h, struct_miqt_string(data: replaceStr, len: csize_t(len(replaceStr))))

type QsciScintillareplaceBase* = proc(replaceStr: string): void
proc onreplace*(self: QsciScintilla, slot: proc(super: QsciScintillareplaceBase, replaceStr: string): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillareplaceBase, replaceStr: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_replace(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_replace(self: ptr cQsciScintilla, slot: int, replaceStr: struct_miqt_string): void {.exportc: "miqt_exec_callback_QsciScintilla_replace ".} =
  type Cb = proc(super: QsciScintillareplaceBase, replaceStr: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(replaceStr: string): auto =
    callVirtualBase_replace(QsciScintilla(h: self), replaceStr)
  let vreplaceStr_ms = replaceStr
  let vreplaceStrx_ret = string.fromBytes(toOpenArrayByte(vreplaceStr_ms.data, 0, int(vreplaceStr_ms.len)-1))
  c_free(vreplaceStr_ms.data)
  let slotval1 = vreplaceStrx_ret


  nimfunc[](superCall, slotval1)
proc callVirtualBase_append(self: QsciScintilla, text: string): void =


  fQsciScintilla_virtualbase_append(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

type QsciScintillaappendBase* = proc(text: string): void
proc onappend*(self: QsciScintilla, slot: proc(super: QsciScintillaappendBase, text: string): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillaappendBase, text: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_append(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_append(self: ptr cQsciScintilla, slot: int, text: struct_miqt_string): void {.exportc: "miqt_exec_callback_QsciScintilla_append ".} =
  type Cb = proc(super: QsciScintillaappendBase, text: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(text: string): auto =
    callVirtualBase_append(QsciScintilla(h: self), text)
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret


  nimfunc[](superCall, slotval1)
proc callVirtualBase_autoCompleteFromAll(self: QsciScintilla, ): void =


  fQsciScintilla_virtualbase_autoCompleteFromAll(self.h)

type QsciScintillaautoCompleteFromAllBase* = proc(): void
proc onautoCompleteFromAll*(self: QsciScintilla, slot: proc(super: QsciScintillaautoCompleteFromAllBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillaautoCompleteFromAllBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_autoCompleteFromAll(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_autoCompleteFromAll(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_autoCompleteFromAll ".} =
  type Cb = proc(super: QsciScintillaautoCompleteFromAllBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompleteFromAll(QsciScintilla(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_autoCompleteFromAPIs(self: QsciScintilla, ): void =


  fQsciScintilla_virtualbase_autoCompleteFromAPIs(self.h)

type QsciScintillaautoCompleteFromAPIsBase* = proc(): void
proc onautoCompleteFromAPIs*(self: QsciScintilla, slot: proc(super: QsciScintillaautoCompleteFromAPIsBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillaautoCompleteFromAPIsBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_autoCompleteFromAPIs(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_autoCompleteFromAPIs(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_autoCompleteFromAPIs ".} =
  type Cb = proc(super: QsciScintillaautoCompleteFromAPIsBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompleteFromAPIs(QsciScintilla(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_autoCompleteFromDocument(self: QsciScintilla, ): void =


  fQsciScintilla_virtualbase_autoCompleteFromDocument(self.h)

type QsciScintillaautoCompleteFromDocumentBase* = proc(): void
proc onautoCompleteFromDocument*(self: QsciScintilla, slot: proc(super: QsciScintillaautoCompleteFromDocumentBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillaautoCompleteFromDocumentBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_autoCompleteFromDocument(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_autoCompleteFromDocument(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_autoCompleteFromDocument ".} =
  type Cb = proc(super: QsciScintillaautoCompleteFromDocumentBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_autoCompleteFromDocument(QsciScintilla(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_callTip(self: QsciScintilla, ): void =


  fQsciScintilla_virtualbase_callTip(self.h)

type QsciScintillacallTipBase* = proc(): void
proc oncallTip*(self: QsciScintilla, slot: proc(super: QsciScintillacallTipBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillacallTipBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_callTip(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_callTip(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_callTip ".} =
  type Cb = proc(super: QsciScintillacallTipBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_callTip(QsciScintilla(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_clear(self: QsciScintilla, ): void =


  fQsciScintilla_virtualbase_clear(self.h)

type QsciScintillaclearBase* = proc(): void
proc onclear*(self: QsciScintilla, slot: proc(super: QsciScintillaclearBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillaclearBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_clear(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_clear(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_clear ".} =
  type Cb = proc(super: QsciScintillaclearBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clear(QsciScintilla(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_copy(self: QsciScintilla, ): void =


  fQsciScintilla_virtualbase_copy(self.h)

type QsciScintillacopyBase* = proc(): void
proc oncopy*(self: QsciScintilla, slot: proc(super: QsciScintillacopyBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillacopyBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_copy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_copy(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_copy ".} =
  type Cb = proc(super: QsciScintillacopyBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_copy(QsciScintilla(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_cut(self: QsciScintilla, ): void =


  fQsciScintilla_virtualbase_cut(self.h)

type QsciScintillacutBase* = proc(): void
proc oncut*(self: QsciScintilla, slot: proc(super: QsciScintillacutBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillacutBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_cut(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_cut(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_cut ".} =
  type Cb = proc(super: QsciScintillacutBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_cut(QsciScintilla(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_ensureCursorVisible(self: QsciScintilla, ): void =


  fQsciScintilla_virtualbase_ensureCursorVisible(self.h)

type QsciScintillaensureCursorVisibleBase* = proc(): void
proc onensureCursorVisible*(self: QsciScintilla, slot: proc(super: QsciScintillaensureCursorVisibleBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillaensureCursorVisibleBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_ensureCursorVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_ensureCursorVisible(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_ensureCursorVisible ".} =
  type Cb = proc(super: QsciScintillaensureCursorVisibleBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_ensureCursorVisible(QsciScintilla(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_ensureLineVisible(self: QsciScintilla, line: cint): void =


  fQsciScintilla_virtualbase_ensureLineVisible(self.h, line)

type QsciScintillaensureLineVisibleBase* = proc(line: cint): void
proc onensureLineVisible*(self: QsciScintilla, slot: proc(super: QsciScintillaensureLineVisibleBase, line: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillaensureLineVisibleBase, line: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_ensureLineVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_ensureLineVisible(self: ptr cQsciScintilla, slot: int, line: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_ensureLineVisible ".} =
  type Cb = proc(super: QsciScintillaensureLineVisibleBase, line: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(line: cint): auto =
    callVirtualBase_ensureLineVisible(QsciScintilla(h: self), line)
  let slotval1 = line


  nimfunc[](superCall, slotval1)
proc callVirtualBase_foldAll(self: QsciScintilla, children: bool): void =


  fQsciScintilla_virtualbase_foldAll(self.h, children)

type QsciScintillafoldAllBase* = proc(children: bool): void
proc onfoldAll*(self: QsciScintilla, slot: proc(super: QsciScintillafoldAllBase, children: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillafoldAllBase, children: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_foldAll(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_foldAll(self: ptr cQsciScintilla, slot: int, children: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_foldAll ".} =
  type Cb = proc(super: QsciScintillafoldAllBase, children: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(children: bool): auto =
    callVirtualBase_foldAll(QsciScintilla(h: self), children)
  let slotval1 = children


  nimfunc[](superCall, slotval1)
proc callVirtualBase_foldLine(self: QsciScintilla, line: cint): void =


  fQsciScintilla_virtualbase_foldLine(self.h, line)

type QsciScintillafoldLineBase* = proc(line: cint): void
proc onfoldLine*(self: QsciScintilla, slot: proc(super: QsciScintillafoldLineBase, line: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillafoldLineBase, line: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_foldLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_foldLine(self: ptr cQsciScintilla, slot: int, line: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_foldLine ".} =
  type Cb = proc(super: QsciScintillafoldLineBase, line: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(line: cint): auto =
    callVirtualBase_foldLine(QsciScintilla(h: self), line)
  let slotval1 = line


  nimfunc[](superCall, slotval1)
proc callVirtualBase_indent(self: QsciScintilla, line: cint): void =


  fQsciScintilla_virtualbase_indent(self.h, line)

type QsciScintillaindentBase* = proc(line: cint): void
proc onindent*(self: QsciScintilla, slot: proc(super: QsciScintillaindentBase, line: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillaindentBase, line: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_indent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_indent(self: ptr cQsciScintilla, slot: int, line: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_indent ".} =
  type Cb = proc(super: QsciScintillaindentBase, line: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(line: cint): auto =
    callVirtualBase_indent(QsciScintilla(h: self), line)
  let slotval1 = line


  nimfunc[](superCall, slotval1)
proc callVirtualBase_insert(self: QsciScintilla, text: string): void =


  fQsciScintilla_virtualbase_insert(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

type QsciScintillainsertBase* = proc(text: string): void
proc oninsert*(self: QsciScintilla, slot: proc(super: QsciScintillainsertBase, text: string): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillainsertBase, text: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_insert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_insert(self: ptr cQsciScintilla, slot: int, text: struct_miqt_string): void {.exportc: "miqt_exec_callback_QsciScintilla_insert ".} =
  type Cb = proc(super: QsciScintillainsertBase, text: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(text: string): auto =
    callVirtualBase_insert(QsciScintilla(h: self), text)
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret


  nimfunc[](superCall, slotval1)
proc callVirtualBase_insertAt(self: QsciScintilla, text: string, line: cint, index: cint): void =


  fQsciScintilla_virtualbase_insertAt(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), line, index)

type QsciScintillainsertAtBase* = proc(text: string, line: cint, index: cint): void
proc oninsertAt*(self: QsciScintilla, slot: proc(super: QsciScintillainsertAtBase, text: string, line: cint, index: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillainsertAtBase, text: string, line: cint, index: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_insertAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_insertAt(self: ptr cQsciScintilla, slot: int, text: struct_miqt_string, line: cint, index: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_insertAt ".} =
  type Cb = proc(super: QsciScintillainsertAtBase, text: string, line: cint, index: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(text: string, line: cint, index: cint): auto =
    callVirtualBase_insertAt(QsciScintilla(h: self), text, line, index)
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret

  let slotval2 = line

  let slotval3 = index


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_moveToMatchingBrace(self: QsciScintilla, ): void =


  fQsciScintilla_virtualbase_moveToMatchingBrace(self.h)

type QsciScintillamoveToMatchingBraceBase* = proc(): void
proc onmoveToMatchingBrace*(self: QsciScintilla, slot: proc(super: QsciScintillamoveToMatchingBraceBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillamoveToMatchingBraceBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_moveToMatchingBrace(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_moveToMatchingBrace(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_moveToMatchingBrace ".} =
  type Cb = proc(super: QsciScintillamoveToMatchingBraceBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_moveToMatchingBrace(QsciScintilla(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_paste(self: QsciScintilla, ): void =


  fQsciScintilla_virtualbase_paste(self.h)

type QsciScintillapasteBase* = proc(): void
proc onpaste*(self: QsciScintilla, slot: proc(super: QsciScintillapasteBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillapasteBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_paste(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_paste(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_paste ".} =
  type Cb = proc(super: QsciScintillapasteBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paste(QsciScintilla(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_redo(self: QsciScintilla, ): void =


  fQsciScintilla_virtualbase_redo(self.h)

type QsciScintillaredoBase* = proc(): void
proc onredo*(self: QsciScintilla, slot: proc(super: QsciScintillaredoBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillaredoBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_redo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_redo(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_redo ".} =
  type Cb = proc(super: QsciScintillaredoBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_redo(QsciScintilla(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_removeSelectedText(self: QsciScintilla, ): void =


  fQsciScintilla_virtualbase_removeSelectedText(self.h)

type QsciScintillaremoveSelectedTextBase* = proc(): void
proc onremoveSelectedText*(self: QsciScintilla, slot: proc(super: QsciScintillaremoveSelectedTextBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillaremoveSelectedTextBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_removeSelectedText(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_removeSelectedText(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_removeSelectedText ".} =
  type Cb = proc(super: QsciScintillaremoveSelectedTextBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_removeSelectedText(QsciScintilla(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_replaceSelectedText(self: QsciScintilla, text: string): void =


  fQsciScintilla_virtualbase_replaceSelectedText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

type QsciScintillareplaceSelectedTextBase* = proc(text: string): void
proc onreplaceSelectedText*(self: QsciScintilla, slot: proc(super: QsciScintillareplaceSelectedTextBase, text: string): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillareplaceSelectedTextBase, text: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_replaceSelectedText(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_replaceSelectedText(self: ptr cQsciScintilla, slot: int, text: struct_miqt_string): void {.exportc: "miqt_exec_callback_QsciScintilla_replaceSelectedText ".} =
  type Cb = proc(super: QsciScintillareplaceSelectedTextBase, text: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(text: string): auto =
    callVirtualBase_replaceSelectedText(QsciScintilla(h: self), text)
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resetSelectionBackgroundColor(self: QsciScintilla, ): void =


  fQsciScintilla_virtualbase_resetSelectionBackgroundColor(self.h)

type QsciScintillaresetSelectionBackgroundColorBase* = proc(): void
proc onresetSelectionBackgroundColor*(self: QsciScintilla, slot: proc(super: QsciScintillaresetSelectionBackgroundColorBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillaresetSelectionBackgroundColorBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_resetSelectionBackgroundColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_resetSelectionBackgroundColor(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_resetSelectionBackgroundColor ".} =
  type Cb = proc(super: QsciScintillaresetSelectionBackgroundColorBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_resetSelectionBackgroundColor(QsciScintilla(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_resetSelectionForegroundColor(self: QsciScintilla, ): void =


  fQsciScintilla_virtualbase_resetSelectionForegroundColor(self.h)

type QsciScintillaresetSelectionForegroundColorBase* = proc(): void
proc onresetSelectionForegroundColor*(self: QsciScintilla, slot: proc(super: QsciScintillaresetSelectionForegroundColorBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillaresetSelectionForegroundColorBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_resetSelectionForegroundColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_resetSelectionForegroundColor(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_resetSelectionForegroundColor ".} =
  type Cb = proc(super: QsciScintillaresetSelectionForegroundColorBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_resetSelectionForegroundColor(QsciScintilla(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_selectAll(self: QsciScintilla, select: bool): void =


  fQsciScintilla_virtualbase_selectAll(self.h, select)

type QsciScintillaselectAllBase* = proc(select: bool): void
proc onselectAll*(self: QsciScintilla, slot: proc(super: QsciScintillaselectAllBase, select: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillaselectAllBase, select: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_selectAll(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_selectAll(self: ptr cQsciScintilla, slot: int, select: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_selectAll ".} =
  type Cb = proc(super: QsciScintillaselectAllBase, select: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(select: bool): auto =
    callVirtualBase_selectAll(QsciScintilla(h: self), select)
  let slotval1 = select


  nimfunc[](superCall, slotval1)
proc callVirtualBase_selectToMatchingBrace(self: QsciScintilla, ): void =


  fQsciScintilla_virtualbase_selectToMatchingBrace(self.h)

type QsciScintillaselectToMatchingBraceBase* = proc(): void
proc onselectToMatchingBrace*(self: QsciScintilla, slot: proc(super: QsciScintillaselectToMatchingBraceBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillaselectToMatchingBraceBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_selectToMatchingBrace(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_selectToMatchingBrace(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_selectToMatchingBrace ".} =
  type Cb = proc(super: QsciScintillaselectToMatchingBraceBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_selectToMatchingBrace(QsciScintilla(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_setAutoCompletionCaseSensitivity(self: QsciScintilla, cs: bool): void =


  fQsciScintilla_virtualbase_setAutoCompletionCaseSensitivity(self.h, cs)

type QsciScintillasetAutoCompletionCaseSensitivityBase* = proc(cs: bool): void
proc onsetAutoCompletionCaseSensitivity*(self: QsciScintilla, slot: proc(super: QsciScintillasetAutoCompletionCaseSensitivityBase, cs: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetAutoCompletionCaseSensitivityBase, cs: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setAutoCompletionCaseSensitivity(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setAutoCompletionCaseSensitivity(self: ptr cQsciScintilla, slot: int, cs: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setAutoCompletionCaseSensitivity ".} =
  type Cb = proc(super: QsciScintillasetAutoCompletionCaseSensitivityBase, cs: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(cs: bool): auto =
    callVirtualBase_setAutoCompletionCaseSensitivity(QsciScintilla(h: self), cs)
  let slotval1 = cs


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setAutoCompletionReplaceWord(self: QsciScintilla, replace: bool): void =


  fQsciScintilla_virtualbase_setAutoCompletionReplaceWord(self.h, replace)

type QsciScintillasetAutoCompletionReplaceWordBase* = proc(replace: bool): void
proc onsetAutoCompletionReplaceWord*(self: QsciScintilla, slot: proc(super: QsciScintillasetAutoCompletionReplaceWordBase, replace: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetAutoCompletionReplaceWordBase, replace: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setAutoCompletionReplaceWord(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setAutoCompletionReplaceWord(self: ptr cQsciScintilla, slot: int, replace: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setAutoCompletionReplaceWord ".} =
  type Cb = proc(super: QsciScintillasetAutoCompletionReplaceWordBase, replace: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(replace: bool): auto =
    callVirtualBase_setAutoCompletionReplaceWord(QsciScintilla(h: self), replace)
  let slotval1 = replace


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setAutoCompletionShowSingle(self: QsciScintilla, single: bool): void =


  fQsciScintilla_virtualbase_setAutoCompletionShowSingle(self.h, single)

type QsciScintillasetAutoCompletionShowSingleBase* = proc(single: bool): void
proc onsetAutoCompletionShowSingle*(self: QsciScintilla, slot: proc(super: QsciScintillasetAutoCompletionShowSingleBase, single: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetAutoCompletionShowSingleBase, single: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setAutoCompletionShowSingle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setAutoCompletionShowSingle(self: ptr cQsciScintilla, slot: int, single: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setAutoCompletionShowSingle ".} =
  type Cb = proc(super: QsciScintillasetAutoCompletionShowSingleBase, single: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(single: bool): auto =
    callVirtualBase_setAutoCompletionShowSingle(QsciScintilla(h: self), single)
  let slotval1 = single


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setAutoCompletionSource(self: QsciScintilla, source: QsciScintillaAutoCompletionSource): void =


  fQsciScintilla_virtualbase_setAutoCompletionSource(self.h, cint(source))

type QsciScintillasetAutoCompletionSourceBase* = proc(source: QsciScintillaAutoCompletionSource): void
proc onsetAutoCompletionSource*(self: QsciScintilla, slot: proc(super: QsciScintillasetAutoCompletionSourceBase, source: QsciScintillaAutoCompletionSource): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetAutoCompletionSourceBase, source: QsciScintillaAutoCompletionSource): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setAutoCompletionSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setAutoCompletionSource(self: ptr cQsciScintilla, slot: int, source: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setAutoCompletionSource ".} =
  type Cb = proc(super: QsciScintillasetAutoCompletionSourceBase, source: QsciScintillaAutoCompletionSource): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(source: QsciScintillaAutoCompletionSource): auto =
    callVirtualBase_setAutoCompletionSource(QsciScintilla(h: self), source)
  let slotval1 = QsciScintillaAutoCompletionSource(source)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setAutoCompletionThreshold(self: QsciScintilla, thresh: cint): void =


  fQsciScintilla_virtualbase_setAutoCompletionThreshold(self.h, thresh)

type QsciScintillasetAutoCompletionThresholdBase* = proc(thresh: cint): void
proc onsetAutoCompletionThreshold*(self: QsciScintilla, slot: proc(super: QsciScintillasetAutoCompletionThresholdBase, thresh: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetAutoCompletionThresholdBase, thresh: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setAutoCompletionThreshold(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setAutoCompletionThreshold(self: ptr cQsciScintilla, slot: int, thresh: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setAutoCompletionThreshold ".} =
  type Cb = proc(super: QsciScintillasetAutoCompletionThresholdBase, thresh: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(thresh: cint): auto =
    callVirtualBase_setAutoCompletionThreshold(QsciScintilla(h: self), thresh)
  let slotval1 = thresh


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setAutoCompletionUseSingle(self: QsciScintilla, single: QsciScintillaAutoCompletionUseSingle): void =


  fQsciScintilla_virtualbase_setAutoCompletionUseSingle(self.h, cint(single))

type QsciScintillasetAutoCompletionUseSingleBase* = proc(single: QsciScintillaAutoCompletionUseSingle): void
proc onsetAutoCompletionUseSingle*(self: QsciScintilla, slot: proc(super: QsciScintillasetAutoCompletionUseSingleBase, single: QsciScintillaAutoCompletionUseSingle): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetAutoCompletionUseSingleBase, single: QsciScintillaAutoCompletionUseSingle): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setAutoCompletionUseSingle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setAutoCompletionUseSingle(self: ptr cQsciScintilla, slot: int, single: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setAutoCompletionUseSingle ".} =
  type Cb = proc(super: QsciScintillasetAutoCompletionUseSingleBase, single: QsciScintillaAutoCompletionUseSingle): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(single: QsciScintillaAutoCompletionUseSingle): auto =
    callVirtualBase_setAutoCompletionUseSingle(QsciScintilla(h: self), single)
  let slotval1 = QsciScintillaAutoCompletionUseSingle(single)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setAutoIndent(self: QsciScintilla, autoindent: bool): void =


  fQsciScintilla_virtualbase_setAutoIndent(self.h, autoindent)

type QsciScintillasetAutoIndentBase* = proc(autoindent: bool): void
proc onsetAutoIndent*(self: QsciScintilla, slot: proc(super: QsciScintillasetAutoIndentBase, autoindent: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetAutoIndentBase, autoindent: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setAutoIndent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setAutoIndent(self: ptr cQsciScintilla, slot: int, autoindent: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setAutoIndent ".} =
  type Cb = proc(super: QsciScintillasetAutoIndentBase, autoindent: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(autoindent: bool): auto =
    callVirtualBase_setAutoIndent(QsciScintilla(h: self), autoindent)
  let slotval1 = autoindent


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setBraceMatching(self: QsciScintilla, bm: QsciScintillaBraceMatch): void =


  fQsciScintilla_virtualbase_setBraceMatching(self.h, cint(bm))

type QsciScintillasetBraceMatchingBase* = proc(bm: QsciScintillaBraceMatch): void
proc onsetBraceMatching*(self: QsciScintilla, slot: proc(super: QsciScintillasetBraceMatchingBase, bm: QsciScintillaBraceMatch): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetBraceMatchingBase, bm: QsciScintillaBraceMatch): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setBraceMatching(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setBraceMatching(self: ptr cQsciScintilla, slot: int, bm: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setBraceMatching ".} =
  type Cb = proc(super: QsciScintillasetBraceMatchingBase, bm: QsciScintillaBraceMatch): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(bm: QsciScintillaBraceMatch): auto =
    callVirtualBase_setBraceMatching(QsciScintilla(h: self), bm)
  let slotval1 = QsciScintillaBraceMatch(bm)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setBackspaceUnindents(self: QsciScintilla, unindent: bool): void =


  fQsciScintilla_virtualbase_setBackspaceUnindents(self.h, unindent)

type QsciScintillasetBackspaceUnindentsBase* = proc(unindent: bool): void
proc onsetBackspaceUnindents*(self: QsciScintilla, slot: proc(super: QsciScintillasetBackspaceUnindentsBase, unindent: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetBackspaceUnindentsBase, unindent: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setBackspaceUnindents(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setBackspaceUnindents(self: ptr cQsciScintilla, slot: int, unindent: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setBackspaceUnindents ".} =
  type Cb = proc(super: QsciScintillasetBackspaceUnindentsBase, unindent: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(unindent: bool): auto =
    callVirtualBase_setBackspaceUnindents(QsciScintilla(h: self), unindent)
  let slotval1 = unindent


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setCaretForegroundColor(self: QsciScintilla, col: gen_qcolor.QColor): void =


  fQsciScintilla_virtualbase_setCaretForegroundColor(self.h, col.h)

type QsciScintillasetCaretForegroundColorBase* = proc(col: gen_qcolor.QColor): void
proc onsetCaretForegroundColor*(self: QsciScintilla, slot: proc(super: QsciScintillasetCaretForegroundColorBase, col: gen_qcolor.QColor): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetCaretForegroundColorBase, col: gen_qcolor.QColor): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setCaretForegroundColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setCaretForegroundColor(self: ptr cQsciScintilla, slot: int, col: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_setCaretForegroundColor ".} =
  type Cb = proc(super: QsciScintillasetCaretForegroundColorBase, col: gen_qcolor.QColor): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(col: gen_qcolor.QColor): auto =
    callVirtualBase_setCaretForegroundColor(QsciScintilla(h: self), col)
  let slotval1 = gen_qcolor.QColor(h: col)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setCaretLineBackgroundColor(self: QsciScintilla, col: gen_qcolor.QColor): void =


  fQsciScintilla_virtualbase_setCaretLineBackgroundColor(self.h, col.h)

type QsciScintillasetCaretLineBackgroundColorBase* = proc(col: gen_qcolor.QColor): void
proc onsetCaretLineBackgroundColor*(self: QsciScintilla, slot: proc(super: QsciScintillasetCaretLineBackgroundColorBase, col: gen_qcolor.QColor): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetCaretLineBackgroundColorBase, col: gen_qcolor.QColor): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setCaretLineBackgroundColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setCaretLineBackgroundColor(self: ptr cQsciScintilla, slot: int, col: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_setCaretLineBackgroundColor ".} =
  type Cb = proc(super: QsciScintillasetCaretLineBackgroundColorBase, col: gen_qcolor.QColor): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(col: gen_qcolor.QColor): auto =
    callVirtualBase_setCaretLineBackgroundColor(QsciScintilla(h: self), col)
  let slotval1 = gen_qcolor.QColor(h: col)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setCaretLineFrameWidth(self: QsciScintilla, width: cint): void =


  fQsciScintilla_virtualbase_setCaretLineFrameWidth(self.h, width)

type QsciScintillasetCaretLineFrameWidthBase* = proc(width: cint): void
proc onsetCaretLineFrameWidth*(self: QsciScintilla, slot: proc(super: QsciScintillasetCaretLineFrameWidthBase, width: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetCaretLineFrameWidthBase, width: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setCaretLineFrameWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setCaretLineFrameWidth(self: ptr cQsciScintilla, slot: int, width: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setCaretLineFrameWidth ".} =
  type Cb = proc(super: QsciScintillasetCaretLineFrameWidthBase, width: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(width: cint): auto =
    callVirtualBase_setCaretLineFrameWidth(QsciScintilla(h: self), width)
  let slotval1 = width


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setCaretLineVisible(self: QsciScintilla, enable: bool): void =


  fQsciScintilla_virtualbase_setCaretLineVisible(self.h, enable)

type QsciScintillasetCaretLineVisibleBase* = proc(enable: bool): void
proc onsetCaretLineVisible*(self: QsciScintilla, slot: proc(super: QsciScintillasetCaretLineVisibleBase, enable: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetCaretLineVisibleBase, enable: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setCaretLineVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setCaretLineVisible(self: ptr cQsciScintilla, slot: int, enable: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setCaretLineVisible ".} =
  type Cb = proc(super: QsciScintillasetCaretLineVisibleBase, enable: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(enable: bool): auto =
    callVirtualBase_setCaretLineVisible(QsciScintilla(h: self), enable)
  let slotval1 = enable


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setCaretWidth(self: QsciScintilla, width: cint): void =


  fQsciScintilla_virtualbase_setCaretWidth(self.h, width)

type QsciScintillasetCaretWidthBase* = proc(width: cint): void
proc onsetCaretWidth*(self: QsciScintilla, slot: proc(super: QsciScintillasetCaretWidthBase, width: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetCaretWidthBase, width: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setCaretWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setCaretWidth(self: ptr cQsciScintilla, slot: int, width: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setCaretWidth ".} =
  type Cb = proc(super: QsciScintillasetCaretWidthBase, width: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(width: cint): auto =
    callVirtualBase_setCaretWidth(QsciScintilla(h: self), width)
  let slotval1 = width


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setColor(self: QsciScintilla, c: gen_qcolor.QColor): void =


  fQsciScintilla_virtualbase_setColor(self.h, c.h)

type QsciScintillasetColorBase* = proc(c: gen_qcolor.QColor): void
proc onsetColor*(self: QsciScintilla, slot: proc(super: QsciScintillasetColorBase, c: gen_qcolor.QColor): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetColorBase, c: gen_qcolor.QColor): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setColor(self: ptr cQsciScintilla, slot: int, c: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_setColor ".} =
  type Cb = proc(super: QsciScintillasetColorBase, c: gen_qcolor.QColor): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor): auto =
    callVirtualBase_setColor(QsciScintilla(h: self), c)
  let slotval1 = gen_qcolor.QColor(h: c)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setCursorPosition(self: QsciScintilla, line: cint, index: cint): void =


  fQsciScintilla_virtualbase_setCursorPosition(self.h, line, index)

type QsciScintillasetCursorPositionBase* = proc(line: cint, index: cint): void
proc onsetCursorPosition*(self: QsciScintilla, slot: proc(super: QsciScintillasetCursorPositionBase, line: cint, index: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetCursorPositionBase, line: cint, index: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setCursorPosition(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setCursorPosition(self: ptr cQsciScintilla, slot: int, line: cint, index: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setCursorPosition ".} =
  type Cb = proc(super: QsciScintillasetCursorPositionBase, line: cint, index: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(line: cint, index: cint): auto =
    callVirtualBase_setCursorPosition(QsciScintilla(h: self), line, index)
  let slotval1 = line

  let slotval2 = index


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEolMode(self: QsciScintilla, mode: QsciScintillaEolMode): void =


  fQsciScintilla_virtualbase_setEolMode(self.h, cint(mode))

type QsciScintillasetEolModeBase* = proc(mode: QsciScintillaEolMode): void
proc onsetEolMode*(self: QsciScintilla, slot: proc(super: QsciScintillasetEolModeBase, mode: QsciScintillaEolMode): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetEolModeBase, mode: QsciScintillaEolMode): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setEolMode(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setEolMode(self: ptr cQsciScintilla, slot: int, mode: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setEolMode ".} =
  type Cb = proc(super: QsciScintillasetEolModeBase, mode: QsciScintillaEolMode): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(mode: QsciScintillaEolMode): auto =
    callVirtualBase_setEolMode(QsciScintilla(h: self), mode)
  let slotval1 = QsciScintillaEolMode(mode)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setEolVisibility(self: QsciScintilla, visible: bool): void =


  fQsciScintilla_virtualbase_setEolVisibility(self.h, visible)

type QsciScintillasetEolVisibilityBase* = proc(visible: bool): void
proc onsetEolVisibility*(self: QsciScintilla, slot: proc(super: QsciScintillasetEolVisibilityBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetEolVisibilityBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setEolVisibility(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setEolVisibility(self: ptr cQsciScintilla, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setEolVisibility ".} =
  type Cb = proc(super: QsciScintillasetEolVisibilityBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setEolVisibility(QsciScintilla(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setFolding(self: QsciScintilla, fold: QsciScintillaFoldStyle, margin: cint): void =


  fQsciScintilla_virtualbase_setFolding(self.h, cint(fold), margin)

type QsciScintillasetFoldingBase* = proc(fold: QsciScintillaFoldStyle, margin: cint): void
proc onsetFolding*(self: QsciScintilla, slot: proc(super: QsciScintillasetFoldingBase, fold: QsciScintillaFoldStyle, margin: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetFoldingBase, fold: QsciScintillaFoldStyle, margin: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setFolding(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setFolding(self: ptr cQsciScintilla, slot: int, fold: cint, margin: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setFolding ".} =
  type Cb = proc(super: QsciScintillasetFoldingBase, fold: QsciScintillaFoldStyle, margin: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fold: QsciScintillaFoldStyle, margin: cint): auto =
    callVirtualBase_setFolding(QsciScintilla(h: self), fold, margin)
  let slotval1 = QsciScintillaFoldStyle(fold)

  let slotval2 = margin


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setIndentation(self: QsciScintilla, line: cint, indentation: cint): void =


  fQsciScintilla_virtualbase_setIndentation(self.h, line, indentation)

type QsciScintillasetIndentationBase* = proc(line: cint, indentation: cint): void
proc onsetIndentation*(self: QsciScintilla, slot: proc(super: QsciScintillasetIndentationBase, line: cint, indentation: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetIndentationBase, line: cint, indentation: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setIndentation(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setIndentation(self: ptr cQsciScintilla, slot: int, line: cint, indentation: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setIndentation ".} =
  type Cb = proc(super: QsciScintillasetIndentationBase, line: cint, indentation: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(line: cint, indentation: cint): auto =
    callVirtualBase_setIndentation(QsciScintilla(h: self), line, indentation)
  let slotval1 = line

  let slotval2 = indentation


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setIndentationGuides(self: QsciScintilla, enable: bool): void =


  fQsciScintilla_virtualbase_setIndentationGuides(self.h, enable)

type QsciScintillasetIndentationGuidesBase* = proc(enable: bool): void
proc onsetIndentationGuides*(self: QsciScintilla, slot: proc(super: QsciScintillasetIndentationGuidesBase, enable: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetIndentationGuidesBase, enable: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setIndentationGuides(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setIndentationGuides(self: ptr cQsciScintilla, slot: int, enable: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setIndentationGuides ".} =
  type Cb = proc(super: QsciScintillasetIndentationGuidesBase, enable: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(enable: bool): auto =
    callVirtualBase_setIndentationGuides(QsciScintilla(h: self), enable)
  let slotval1 = enable


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setIndentationGuidesBackgroundColor(self: QsciScintilla, col: gen_qcolor.QColor): void =


  fQsciScintilla_virtualbase_setIndentationGuidesBackgroundColor(self.h, col.h)

type QsciScintillasetIndentationGuidesBackgroundColorBase* = proc(col: gen_qcolor.QColor): void
proc onsetIndentationGuidesBackgroundColor*(self: QsciScintilla, slot: proc(super: QsciScintillasetIndentationGuidesBackgroundColorBase, col: gen_qcolor.QColor): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetIndentationGuidesBackgroundColorBase, col: gen_qcolor.QColor): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setIndentationGuidesBackgroundColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setIndentationGuidesBackgroundColor(self: ptr cQsciScintilla, slot: int, col: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_setIndentationGuidesBackgroundColor ".} =
  type Cb = proc(super: QsciScintillasetIndentationGuidesBackgroundColorBase, col: gen_qcolor.QColor): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(col: gen_qcolor.QColor): auto =
    callVirtualBase_setIndentationGuidesBackgroundColor(QsciScintilla(h: self), col)
  let slotval1 = gen_qcolor.QColor(h: col)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setIndentationGuidesForegroundColor(self: QsciScintilla, col: gen_qcolor.QColor): void =


  fQsciScintilla_virtualbase_setIndentationGuidesForegroundColor(self.h, col.h)

type QsciScintillasetIndentationGuidesForegroundColorBase* = proc(col: gen_qcolor.QColor): void
proc onsetIndentationGuidesForegroundColor*(self: QsciScintilla, slot: proc(super: QsciScintillasetIndentationGuidesForegroundColorBase, col: gen_qcolor.QColor): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetIndentationGuidesForegroundColorBase, col: gen_qcolor.QColor): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setIndentationGuidesForegroundColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setIndentationGuidesForegroundColor(self: ptr cQsciScintilla, slot: int, col: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_setIndentationGuidesForegroundColor ".} =
  type Cb = proc(super: QsciScintillasetIndentationGuidesForegroundColorBase, col: gen_qcolor.QColor): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(col: gen_qcolor.QColor): auto =
    callVirtualBase_setIndentationGuidesForegroundColor(QsciScintilla(h: self), col)
  let slotval1 = gen_qcolor.QColor(h: col)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setIndentationsUseTabs(self: QsciScintilla, tabs: bool): void =


  fQsciScintilla_virtualbase_setIndentationsUseTabs(self.h, tabs)

type QsciScintillasetIndentationsUseTabsBase* = proc(tabs: bool): void
proc onsetIndentationsUseTabs*(self: QsciScintilla, slot: proc(super: QsciScintillasetIndentationsUseTabsBase, tabs: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetIndentationsUseTabsBase, tabs: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setIndentationsUseTabs(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setIndentationsUseTabs(self: ptr cQsciScintilla, slot: int, tabs: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setIndentationsUseTabs ".} =
  type Cb = proc(super: QsciScintillasetIndentationsUseTabsBase, tabs: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(tabs: bool): auto =
    callVirtualBase_setIndentationsUseTabs(QsciScintilla(h: self), tabs)
  let slotval1 = tabs


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setIndentationWidth(self: QsciScintilla, width: cint): void =


  fQsciScintilla_virtualbase_setIndentationWidth(self.h, width)

type QsciScintillasetIndentationWidthBase* = proc(width: cint): void
proc onsetIndentationWidth*(self: QsciScintilla, slot: proc(super: QsciScintillasetIndentationWidthBase, width: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetIndentationWidthBase, width: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setIndentationWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setIndentationWidth(self: ptr cQsciScintilla, slot: int, width: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setIndentationWidth ".} =
  type Cb = proc(super: QsciScintillasetIndentationWidthBase, width: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(width: cint): auto =
    callVirtualBase_setIndentationWidth(QsciScintilla(h: self), width)
  let slotval1 = width


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setLexer(self: QsciScintilla, lexer: gen_qscilexer.QsciLexer): void =


  fQsciScintilla_virtualbase_setLexer(self.h, lexer.h)

type QsciScintillasetLexerBase* = proc(lexer: gen_qscilexer.QsciLexer): void
proc onsetLexer*(self: QsciScintilla, slot: proc(super: QsciScintillasetLexerBase, lexer: gen_qscilexer.QsciLexer): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetLexerBase, lexer: gen_qscilexer.QsciLexer): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setLexer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setLexer(self: ptr cQsciScintilla, slot: int, lexer: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_setLexer ".} =
  type Cb = proc(super: QsciScintillasetLexerBase, lexer: gen_qscilexer.QsciLexer): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(lexer: gen_qscilexer.QsciLexer): auto =
    callVirtualBase_setLexer(QsciScintilla(h: self), lexer)
  let slotval1 = gen_qscilexer.QsciLexer(h: lexer)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setMarginsBackgroundColor(self: QsciScintilla, col: gen_qcolor.QColor): void =


  fQsciScintilla_virtualbase_setMarginsBackgroundColor(self.h, col.h)

type QsciScintillasetMarginsBackgroundColorBase* = proc(col: gen_qcolor.QColor): void
proc onsetMarginsBackgroundColor*(self: QsciScintilla, slot: proc(super: QsciScintillasetMarginsBackgroundColorBase, col: gen_qcolor.QColor): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetMarginsBackgroundColorBase, col: gen_qcolor.QColor): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setMarginsBackgroundColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setMarginsBackgroundColor(self: ptr cQsciScintilla, slot: int, col: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_setMarginsBackgroundColor ".} =
  type Cb = proc(super: QsciScintillasetMarginsBackgroundColorBase, col: gen_qcolor.QColor): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(col: gen_qcolor.QColor): auto =
    callVirtualBase_setMarginsBackgroundColor(QsciScintilla(h: self), col)
  let slotval1 = gen_qcolor.QColor(h: col)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setMarginsFont(self: QsciScintilla, f: gen_qfont.QFont): void =


  fQsciScintilla_virtualbase_setMarginsFont(self.h, f.h)

type QsciScintillasetMarginsFontBase* = proc(f: gen_qfont.QFont): void
proc onsetMarginsFont*(self: QsciScintilla, slot: proc(super: QsciScintillasetMarginsFontBase, f: gen_qfont.QFont): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetMarginsFontBase, f: gen_qfont.QFont): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setMarginsFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setMarginsFont(self: ptr cQsciScintilla, slot: int, f: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_setMarginsFont ".} =
  type Cb = proc(super: QsciScintillasetMarginsFontBase, f: gen_qfont.QFont): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(f: gen_qfont.QFont): auto =
    callVirtualBase_setMarginsFont(QsciScintilla(h: self), f)
  let slotval1 = gen_qfont.QFont(h: f)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setMarginsForegroundColor(self: QsciScintilla, col: gen_qcolor.QColor): void =


  fQsciScintilla_virtualbase_setMarginsForegroundColor(self.h, col.h)

type QsciScintillasetMarginsForegroundColorBase* = proc(col: gen_qcolor.QColor): void
proc onsetMarginsForegroundColor*(self: QsciScintilla, slot: proc(super: QsciScintillasetMarginsForegroundColorBase, col: gen_qcolor.QColor): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetMarginsForegroundColorBase, col: gen_qcolor.QColor): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setMarginsForegroundColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setMarginsForegroundColor(self: ptr cQsciScintilla, slot: int, col: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_setMarginsForegroundColor ".} =
  type Cb = proc(super: QsciScintillasetMarginsForegroundColorBase, col: gen_qcolor.QColor): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(col: gen_qcolor.QColor): auto =
    callVirtualBase_setMarginsForegroundColor(QsciScintilla(h: self), col)
  let slotval1 = gen_qcolor.QColor(h: col)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setMarginLineNumbers(self: QsciScintilla, margin: cint, lnrs: bool): void =


  fQsciScintilla_virtualbase_setMarginLineNumbers(self.h, margin, lnrs)

type QsciScintillasetMarginLineNumbersBase* = proc(margin: cint, lnrs: bool): void
proc onsetMarginLineNumbers*(self: QsciScintilla, slot: proc(super: QsciScintillasetMarginLineNumbersBase, margin: cint, lnrs: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetMarginLineNumbersBase, margin: cint, lnrs: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setMarginLineNumbers(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setMarginLineNumbers(self: ptr cQsciScintilla, slot: int, margin: cint, lnrs: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setMarginLineNumbers ".} =
  type Cb = proc(super: QsciScintillasetMarginLineNumbersBase, margin: cint, lnrs: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(margin: cint, lnrs: bool): auto =
    callVirtualBase_setMarginLineNumbers(QsciScintilla(h: self), margin, lnrs)
  let slotval1 = margin

  let slotval2 = lnrs


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setMarginMarkerMask(self: QsciScintilla, margin: cint, mask: cint): void =


  fQsciScintilla_virtualbase_setMarginMarkerMask(self.h, margin, mask)

type QsciScintillasetMarginMarkerMaskBase* = proc(margin: cint, mask: cint): void
proc onsetMarginMarkerMask*(self: QsciScintilla, slot: proc(super: QsciScintillasetMarginMarkerMaskBase, margin: cint, mask: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetMarginMarkerMaskBase, margin: cint, mask: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setMarginMarkerMask(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setMarginMarkerMask(self: ptr cQsciScintilla, slot: int, margin: cint, mask: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setMarginMarkerMask ".} =
  type Cb = proc(super: QsciScintillasetMarginMarkerMaskBase, margin: cint, mask: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(margin: cint, mask: cint): auto =
    callVirtualBase_setMarginMarkerMask(QsciScintilla(h: self), margin, mask)
  let slotval1 = margin

  let slotval2 = mask


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setMarginSensitivity(self: QsciScintilla, margin: cint, sens: bool): void =


  fQsciScintilla_virtualbase_setMarginSensitivity(self.h, margin, sens)

type QsciScintillasetMarginSensitivityBase* = proc(margin: cint, sens: bool): void
proc onsetMarginSensitivity*(self: QsciScintilla, slot: proc(super: QsciScintillasetMarginSensitivityBase, margin: cint, sens: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetMarginSensitivityBase, margin: cint, sens: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setMarginSensitivity(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setMarginSensitivity(self: ptr cQsciScintilla, slot: int, margin: cint, sens: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setMarginSensitivity ".} =
  type Cb = proc(super: QsciScintillasetMarginSensitivityBase, margin: cint, sens: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(margin: cint, sens: bool): auto =
    callVirtualBase_setMarginSensitivity(QsciScintilla(h: self), margin, sens)
  let slotval1 = margin

  let slotval2 = sens


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setMarginWidth(self: QsciScintilla, margin: cint, width: cint): void =


  fQsciScintilla_virtualbase_setMarginWidth(self.h, margin, width)

type QsciScintillasetMarginWidthBase* = proc(margin: cint, width: cint): void
proc onsetMarginWidth*(self: QsciScintilla, slot: proc(super: QsciScintillasetMarginWidthBase, margin: cint, width: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetMarginWidthBase, margin: cint, width: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setMarginWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setMarginWidth(self: ptr cQsciScintilla, slot: int, margin: cint, width: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setMarginWidth ".} =
  type Cb = proc(super: QsciScintillasetMarginWidthBase, margin: cint, width: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(margin: cint, width: cint): auto =
    callVirtualBase_setMarginWidth(QsciScintilla(h: self), margin, width)
  let slotval1 = margin

  let slotval2 = width


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setMarginWidth2(self: QsciScintilla, margin: cint, s: string): void =


  fQsciScintilla_virtualbase_setMarginWidth2(self.h, margin, struct_miqt_string(data: s, len: csize_t(len(s))))

type QsciScintillasetMarginWidth2Base* = proc(margin: cint, s: string): void
proc onsetMarginWidth2*(self: QsciScintilla, slot: proc(super: QsciScintillasetMarginWidth2Base, margin: cint, s: string): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetMarginWidth2Base, margin: cint, s: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setMarginWidth2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setMarginWidth2(self: ptr cQsciScintilla, slot: int, margin: cint, s: struct_miqt_string): void {.exportc: "miqt_exec_callback_QsciScintilla_setMarginWidth2 ".} =
  type Cb = proc(super: QsciScintillasetMarginWidth2Base, margin: cint, s: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(margin: cint, s: string): auto =
    callVirtualBase_setMarginWidth2(QsciScintilla(h: self), margin, s)
  let slotval1 = margin

  let vs_ms = s
  let vsx_ret = string.fromBytes(toOpenArrayByte(vs_ms.data, 0, int(vs_ms.len)-1))
  c_free(vs_ms.data)
  let slotval2 = vsx_ret


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setModified(self: QsciScintilla, m: bool): void =


  fQsciScintilla_virtualbase_setModified(self.h, m)

type QsciScintillasetModifiedBase* = proc(m: bool): void
proc onsetModified*(self: QsciScintilla, slot: proc(super: QsciScintillasetModifiedBase, m: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetModifiedBase, m: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setModified(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setModified(self: ptr cQsciScintilla, slot: int, m: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setModified ".} =
  type Cb = proc(super: QsciScintillasetModifiedBase, m: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(m: bool): auto =
    callVirtualBase_setModified(QsciScintilla(h: self), m)
  let slotval1 = m


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setPaper(self: QsciScintilla, c: gen_qcolor.QColor): void =


  fQsciScintilla_virtualbase_setPaper(self.h, c.h)

type QsciScintillasetPaperBase* = proc(c: gen_qcolor.QColor): void
proc onsetPaper*(self: QsciScintilla, slot: proc(super: QsciScintillasetPaperBase, c: gen_qcolor.QColor): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetPaperBase, c: gen_qcolor.QColor): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setPaper(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setPaper(self: ptr cQsciScintilla, slot: int, c: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_setPaper ".} =
  type Cb = proc(super: QsciScintillasetPaperBase, c: gen_qcolor.QColor): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(c: gen_qcolor.QColor): auto =
    callVirtualBase_setPaper(QsciScintilla(h: self), c)
  let slotval1 = gen_qcolor.QColor(h: c)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setReadOnly(self: QsciScintilla, ro: bool): void =


  fQsciScintilla_virtualbase_setReadOnly(self.h, ro)

type QsciScintillasetReadOnlyBase* = proc(ro: bool): void
proc onsetReadOnly*(self: QsciScintilla, slot: proc(super: QsciScintillasetReadOnlyBase, ro: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetReadOnlyBase, ro: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setReadOnly(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setReadOnly(self: ptr cQsciScintilla, slot: int, ro: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setReadOnly ".} =
  type Cb = proc(super: QsciScintillasetReadOnlyBase, ro: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(ro: bool): auto =
    callVirtualBase_setReadOnly(QsciScintilla(h: self), ro)
  let slotval1 = ro


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setSelection(self: QsciScintilla, lineFrom: cint, indexFrom: cint, lineTo: cint, indexTo: cint): void =


  fQsciScintilla_virtualbase_setSelection(self.h, lineFrom, indexFrom, lineTo, indexTo)

type QsciScintillasetSelectionBase* = proc(lineFrom: cint, indexFrom: cint, lineTo: cint, indexTo: cint): void
proc onsetSelection*(self: QsciScintilla, slot: proc(super: QsciScintillasetSelectionBase, lineFrom: cint, indexFrom: cint, lineTo: cint, indexTo: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetSelectionBase, lineFrom: cint, indexFrom: cint, lineTo: cint, indexTo: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setSelection(self: ptr cQsciScintilla, slot: int, lineFrom: cint, indexFrom: cint, lineTo: cint, indexTo: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setSelection ".} =
  type Cb = proc(super: QsciScintillasetSelectionBase, lineFrom: cint, indexFrom: cint, lineTo: cint, indexTo: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(lineFrom: cint, indexFrom: cint, lineTo: cint, indexTo: cint): auto =
    callVirtualBase_setSelection(QsciScintilla(h: self), lineFrom, indexFrom, lineTo, indexTo)
  let slotval1 = lineFrom

  let slotval2 = indexFrom

  let slotval3 = lineTo

  let slotval4 = indexTo


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_setSelectionBackgroundColor(self: QsciScintilla, col: gen_qcolor.QColor): void =


  fQsciScintilla_virtualbase_setSelectionBackgroundColor(self.h, col.h)

type QsciScintillasetSelectionBackgroundColorBase* = proc(col: gen_qcolor.QColor): void
proc onsetSelectionBackgroundColor*(self: QsciScintilla, slot: proc(super: QsciScintillasetSelectionBackgroundColorBase, col: gen_qcolor.QColor): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetSelectionBackgroundColorBase, col: gen_qcolor.QColor): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setSelectionBackgroundColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setSelectionBackgroundColor(self: ptr cQsciScintilla, slot: int, col: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_setSelectionBackgroundColor ".} =
  type Cb = proc(super: QsciScintillasetSelectionBackgroundColorBase, col: gen_qcolor.QColor): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(col: gen_qcolor.QColor): auto =
    callVirtualBase_setSelectionBackgroundColor(QsciScintilla(h: self), col)
  let slotval1 = gen_qcolor.QColor(h: col)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setSelectionForegroundColor(self: QsciScintilla, col: gen_qcolor.QColor): void =


  fQsciScintilla_virtualbase_setSelectionForegroundColor(self.h, col.h)

type QsciScintillasetSelectionForegroundColorBase* = proc(col: gen_qcolor.QColor): void
proc onsetSelectionForegroundColor*(self: QsciScintilla, slot: proc(super: QsciScintillasetSelectionForegroundColorBase, col: gen_qcolor.QColor): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetSelectionForegroundColorBase, col: gen_qcolor.QColor): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setSelectionForegroundColor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setSelectionForegroundColor(self: ptr cQsciScintilla, slot: int, col: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_setSelectionForegroundColor ".} =
  type Cb = proc(super: QsciScintillasetSelectionForegroundColorBase, col: gen_qcolor.QColor): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(col: gen_qcolor.QColor): auto =
    callVirtualBase_setSelectionForegroundColor(QsciScintilla(h: self), col)
  let slotval1 = gen_qcolor.QColor(h: col)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setTabIndents(self: QsciScintilla, indent: bool): void =


  fQsciScintilla_virtualbase_setTabIndents(self.h, indent)

type QsciScintillasetTabIndentsBase* = proc(indent: bool): void
proc onsetTabIndents*(self: QsciScintilla, slot: proc(super: QsciScintillasetTabIndentsBase, indent: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetTabIndentsBase, indent: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setTabIndents(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setTabIndents(self: ptr cQsciScintilla, slot: int, indent: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setTabIndents ".} =
  type Cb = proc(super: QsciScintillasetTabIndentsBase, indent: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(indent: bool): auto =
    callVirtualBase_setTabIndents(QsciScintilla(h: self), indent)
  let slotval1 = indent


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setTabWidth(self: QsciScintilla, width: cint): void =


  fQsciScintilla_virtualbase_setTabWidth(self.h, width)

type QsciScintillasetTabWidthBase* = proc(width: cint): void
proc onsetTabWidth*(self: QsciScintilla, slot: proc(super: QsciScintillasetTabWidthBase, width: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetTabWidthBase, width: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setTabWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setTabWidth(self: ptr cQsciScintilla, slot: int, width: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setTabWidth ".} =
  type Cb = proc(super: QsciScintillasetTabWidthBase, width: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(width: cint): auto =
    callVirtualBase_setTabWidth(QsciScintilla(h: self), width)
  let slotval1 = width


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setText(self: QsciScintilla, text: string): void =


  fQsciScintilla_virtualbase_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

type QsciScintillasetTextBase* = proc(text: string): void
proc onsetText*(self: QsciScintilla, slot: proc(super: QsciScintillasetTextBase, text: string): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetTextBase, text: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setText(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setText(self: ptr cQsciScintilla, slot: int, text: struct_miqt_string): void {.exportc: "miqt_exec_callback_QsciScintilla_setText ".} =
  type Cb = proc(super: QsciScintillasetTextBase, text: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(text: string): auto =
    callVirtualBase_setText(QsciScintilla(h: self), text)
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setUtf8(self: QsciScintilla, cp: bool): void =


  fQsciScintilla_virtualbase_setUtf8(self.h, cp)

type QsciScintillasetUtf8Base* = proc(cp: bool): void
proc onsetUtf8*(self: QsciScintilla, slot: proc(super: QsciScintillasetUtf8Base, cp: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetUtf8Base, cp: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setUtf8(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setUtf8(self: ptr cQsciScintilla, slot: int, cp: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setUtf8 ".} =
  type Cb = proc(super: QsciScintillasetUtf8Base, cp: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(cp: bool): auto =
    callVirtualBase_setUtf8(QsciScintilla(h: self), cp)
  let slotval1 = cp


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setWhitespaceVisibility(self: QsciScintilla, mode: QsciScintillaWhitespaceVisibility): void =


  fQsciScintilla_virtualbase_setWhitespaceVisibility(self.h, cint(mode))

type QsciScintillasetWhitespaceVisibilityBase* = proc(mode: QsciScintillaWhitespaceVisibility): void
proc onsetWhitespaceVisibility*(self: QsciScintilla, slot: proc(super: QsciScintillasetWhitespaceVisibilityBase, mode: QsciScintillaWhitespaceVisibility): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetWhitespaceVisibilityBase, mode: QsciScintillaWhitespaceVisibility): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setWhitespaceVisibility(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setWhitespaceVisibility(self: ptr cQsciScintilla, slot: int, mode: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setWhitespaceVisibility ".} =
  type Cb = proc(super: QsciScintillasetWhitespaceVisibilityBase, mode: QsciScintillaWhitespaceVisibility): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(mode: QsciScintillaWhitespaceVisibility): auto =
    callVirtualBase_setWhitespaceVisibility(QsciScintilla(h: self), mode)
  let slotval1 = QsciScintillaWhitespaceVisibility(mode)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setWrapMode(self: QsciScintilla, mode: QsciScintillaWrapMode): void =


  fQsciScintilla_virtualbase_setWrapMode(self.h, cint(mode))

type QsciScintillasetWrapModeBase* = proc(mode: QsciScintillaWrapMode): void
proc onsetWrapMode*(self: QsciScintilla, slot: proc(super: QsciScintillasetWrapModeBase, mode: QsciScintillaWrapMode): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetWrapModeBase, mode: QsciScintillaWrapMode): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setWrapMode(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setWrapMode(self: ptr cQsciScintilla, slot: int, mode: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_setWrapMode ".} =
  type Cb = proc(super: QsciScintillasetWrapModeBase, mode: QsciScintillaWrapMode): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(mode: QsciScintillaWrapMode): auto =
    callVirtualBase_setWrapMode(QsciScintilla(h: self), mode)
  let slotval1 = QsciScintillaWrapMode(mode)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_undo(self: QsciScintilla, ): void =


  fQsciScintilla_virtualbase_undo(self.h)

type QsciScintillaundoBase* = proc(): void
proc onundo*(self: QsciScintilla, slot: proc(super: QsciScintillaundoBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillaundoBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_undo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_undo(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_undo ".} =
  type Cb = proc(super: QsciScintillaundoBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_undo(QsciScintilla(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_unindent(self: QsciScintilla, line: cint): void =


  fQsciScintilla_virtualbase_unindent(self.h, line)

type QsciScintillaunindentBase* = proc(line: cint): void
proc onunindent*(self: QsciScintilla, slot: proc(super: QsciScintillaunindentBase, line: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillaunindentBase, line: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_unindent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_unindent(self: ptr cQsciScintilla, slot: int, line: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_unindent ".} =
  type Cb = proc(super: QsciScintillaunindentBase, line: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(line: cint): auto =
    callVirtualBase_unindent(QsciScintilla(h: self), line)
  let slotval1 = line


  nimfunc[](superCall, slotval1)
proc callVirtualBase_zoomIn(self: QsciScintilla, range: cint): void =


  fQsciScintilla_virtualbase_zoomIn(self.h, range)

type QsciScintillazoomInBase* = proc(range: cint): void
proc onzoomIn*(self: QsciScintilla, slot: proc(super: QsciScintillazoomInBase, range: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillazoomInBase, range: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_zoomIn(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_zoomIn(self: ptr cQsciScintilla, slot: int, range: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_zoomIn ".} =
  type Cb = proc(super: QsciScintillazoomInBase, range: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(range: cint): auto =
    callVirtualBase_zoomIn(QsciScintilla(h: self), range)
  let slotval1 = range


  nimfunc[](superCall, slotval1)
proc callVirtualBase_zoomIn2(self: QsciScintilla, ): void =


  fQsciScintilla_virtualbase_zoomIn2(self.h)

type QsciScintillazoomIn2Base* = proc(): void
proc onzoomIn2*(self: QsciScintilla, slot: proc(super: QsciScintillazoomIn2Base): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillazoomIn2Base): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_zoomIn2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_zoomIn2(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_zoomIn2 ".} =
  type Cb = proc(super: QsciScintillazoomIn2Base): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_zoomIn2(QsciScintilla(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_zoomOut(self: QsciScintilla, range: cint): void =


  fQsciScintilla_virtualbase_zoomOut(self.h, range)

type QsciScintillazoomOutBase* = proc(range: cint): void
proc onzoomOut*(self: QsciScintilla, slot: proc(super: QsciScintillazoomOutBase, range: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillazoomOutBase, range: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_zoomOut(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_zoomOut(self: ptr cQsciScintilla, slot: int, range: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_zoomOut ".} =
  type Cb = proc(super: QsciScintillazoomOutBase, range: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(range: cint): auto =
    callVirtualBase_zoomOut(QsciScintilla(h: self), range)
  let slotval1 = range


  nimfunc[](superCall, slotval1)
proc callVirtualBase_zoomOut2(self: QsciScintilla, ): void =


  fQsciScintilla_virtualbase_zoomOut2(self.h)

type QsciScintillazoomOut2Base* = proc(): void
proc onzoomOut2*(self: QsciScintilla, slot: proc(super: QsciScintillazoomOut2Base): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillazoomOut2Base): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_zoomOut2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_zoomOut2(self: ptr cQsciScintilla, slot: int): void {.exportc: "miqt_exec_callback_QsciScintilla_zoomOut2 ".} =
  type Cb = proc(super: QsciScintillazoomOut2Base): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_zoomOut2(QsciScintilla(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_zoomTo(self: QsciScintilla, size: cint): void =


  fQsciScintilla_virtualbase_zoomTo(self.h, size)

type QsciScintillazoomToBase* = proc(size: cint): void
proc onzoomTo*(self: QsciScintilla, slot: proc(super: QsciScintillazoomToBase, size: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillazoomToBase, size: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_zoomTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_zoomTo(self: ptr cQsciScintilla, slot: int, size: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_zoomTo ".} =
  type Cb = proc(super: QsciScintillazoomToBase, size: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(size: cint): auto =
    callVirtualBase_zoomTo(QsciScintilla(h: self), size)
  let slotval1 = size


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QsciScintilla, e: gen_qcoreevent.QEvent): bool =


  fQsciScintilla_virtualbase_event(self.h, e.h)

type QsciScintillaeventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciScintilla, slot: proc(super: QsciScintillaeventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillaeventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_event(self: ptr cQsciScintilla, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QsciScintilla_event ".} =
  type Cb = proc(super: QsciScintillaeventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciScintilla(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_changeEvent(self: QsciScintilla, e: gen_qcoreevent.QEvent): void =


  fQsciScintilla_virtualbase_changeEvent(self.h, e.h)

type QsciScintillachangeEventBase* = proc(e: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QsciScintilla, slot: proc(super: QsciScintillachangeEventBase, e: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillachangeEventBase, e: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_changeEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_changeEvent ".} =
  type Cb = proc(super: QsciScintillachangeEventBase, e: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QsciScintilla(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QsciScintilla, e: gen_qevent.QContextMenuEvent): void =


  fQsciScintilla_virtualbase_contextMenuEvent(self.h, e.h)

type QsciScintillacontextMenuEventBase* = proc(e: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QsciScintilla, slot: proc(super: QsciScintillacontextMenuEventBase, e: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillacontextMenuEventBase, e: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_contextMenuEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_contextMenuEvent ".} =
  type Cb = proc(super: QsciScintillacontextMenuEventBase, e: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QsciScintilla(h: self), e)
  let slotval1 = gen_qevent.QContextMenuEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QsciScintilla, e: gen_qevent.QWheelEvent): void =


  fQsciScintilla_virtualbase_wheelEvent(self.h, e.h)

type QsciScintillawheelEventBase* = proc(e: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QsciScintilla, slot: proc(super: QsciScintillawheelEventBase, e: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillawheelEventBase, e: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_wheelEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_wheelEvent ".} =
  type Cb = proc(super: QsciScintillawheelEventBase, e: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QsciScintilla(h: self), e)
  let slotval1 = gen_qevent.QWheelEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_canInsertFromMimeData(self: QsciScintilla, source: gen_qmimedata.QMimeData): bool =


  fQsciScintilla_virtualbase_canInsertFromMimeData(self.h, source.h)

type QsciScintillacanInsertFromMimeDataBase* = proc(source: gen_qmimedata.QMimeData): bool
proc oncanInsertFromMimeData*(self: QsciScintilla, slot: proc(super: QsciScintillacanInsertFromMimeDataBase, source: gen_qmimedata.QMimeData): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillacanInsertFromMimeDataBase, source: gen_qmimedata.QMimeData): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_canInsertFromMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_canInsertFromMimeData(self: ptr cQsciScintilla, slot: int, source: pointer): bool {.exportc: "miqt_exec_callback_QsciScintilla_canInsertFromMimeData ".} =
  type Cb = proc(super: QsciScintillacanInsertFromMimeDataBase, source: gen_qmimedata.QMimeData): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(source: gen_qmimedata.QMimeData): auto =
    callVirtualBase_canInsertFromMimeData(QsciScintilla(h: self), source)
  let slotval1 = gen_qmimedata.QMimeData(h: source)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_fromMimeData(self: QsciScintilla, source: gen_qmimedata.QMimeData, rectangular: ptr bool): seq[byte] =


  var v_bytearray = fQsciScintilla_virtualbase_fromMimeData(self.h, source.h, rectangular)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

type QsciScintillafromMimeDataBase* = proc(source: gen_qmimedata.QMimeData, rectangular: ptr bool): seq[byte]
proc onfromMimeData*(self: QsciScintilla, slot: proc(super: QsciScintillafromMimeDataBase, source: gen_qmimedata.QMimeData, rectangular: ptr bool): seq[byte]) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillafromMimeDataBase, source: gen_qmimedata.QMimeData, rectangular: ptr bool): seq[byte]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_fromMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_fromMimeData(self: ptr cQsciScintilla, slot: int, source: pointer, rectangular: ptr bool): struct_miqt_string {.exportc: "miqt_exec_callback_QsciScintilla_fromMimeData ".} =
  type Cb = proc(super: QsciScintillafromMimeDataBase, source: gen_qmimedata.QMimeData, rectangular: ptr bool): seq[byte]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(source: gen_qmimedata.QMimeData, rectangular: ptr bool): auto =
    callVirtualBase_fromMimeData(QsciScintilla(h: self), source, rectangular)
  let slotval1 = gen_qmimedata.QMimeData(h: source)

  let slotval2 = rectangular


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  struct_miqt_string(data: cast[cstring](if len(virtualReturn) == 0: nil else: unsafeAddr virtualReturn[0]), len: csize_t(len(virtualReturn)))
proc callVirtualBase_toMimeData(self: QsciScintilla, text: seq[byte], rectangular: bool): gen_qmimedata.QMimeData =


  gen_qmimedata.QMimeData(h: fQsciScintilla_virtualbase_toMimeData(self.h, struct_miqt_string(data: cast[cstring](if len(text) == 0: nil else: unsafeAddr text[0]), len: csize_t(len(text))), rectangular))

type QsciScintillatoMimeDataBase* = proc(text: seq[byte], rectangular: bool): gen_qmimedata.QMimeData
proc ontoMimeData*(self: QsciScintilla, slot: proc(super: QsciScintillatoMimeDataBase, text: seq[byte], rectangular: bool): gen_qmimedata.QMimeData) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillatoMimeDataBase, text: seq[byte], rectangular: bool): gen_qmimedata.QMimeData
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_toMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_toMimeData(self: ptr cQsciScintilla, slot: int, text: struct_miqt_string, rectangular: bool): pointer {.exportc: "miqt_exec_callback_QsciScintilla_toMimeData ".} =
  type Cb = proc(super: QsciScintillatoMimeDataBase, text: seq[byte], rectangular: bool): gen_qmimedata.QMimeData
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(text: seq[byte], rectangular: bool): auto =
    callVirtualBase_toMimeData(QsciScintilla(h: self), text, rectangular)
  var vtext_bytearray = text
  var vtextx_ret = @(toOpenArrayByte(vtext_bytearray.data, 0, int(vtext_bytearray.len)-1))
  c_free(vtext_bytearray.data)
  let slotval1 = vtextx_ret

  let slotval2 = rectangular


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_dragEnterEvent(self: QsciScintilla, e: gen_qevent.QDragEnterEvent): void =


  fQsciScintilla_virtualbase_dragEnterEvent(self.h, e.h)

type QsciScintilladragEnterEventBase* = proc(e: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QsciScintilla, slot: proc(super: QsciScintilladragEnterEventBase, e: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintilladragEnterEventBase, e: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_dragEnterEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_dragEnterEvent ".} =
  type Cb = proc(super: QsciScintilladragEnterEventBase, e: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QsciScintilla(h: self), e)
  let slotval1 = gen_qevent.QDragEnterEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QsciScintilla, e: gen_qevent.QDragLeaveEvent): void =


  fQsciScintilla_virtualbase_dragLeaveEvent(self.h, e.h)

type QsciScintilladragLeaveEventBase* = proc(e: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QsciScintilla, slot: proc(super: QsciScintilladragLeaveEventBase, e: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintilladragLeaveEventBase, e: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_dragLeaveEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_dragLeaveEvent ".} =
  type Cb = proc(super: QsciScintilladragLeaveEventBase, e: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QsciScintilla(h: self), e)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QsciScintilla, e: gen_qevent.QDragMoveEvent): void =


  fQsciScintilla_virtualbase_dragMoveEvent(self.h, e.h)

type QsciScintilladragMoveEventBase* = proc(e: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QsciScintilla, slot: proc(super: QsciScintilladragMoveEventBase, e: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintilladragMoveEventBase, e: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_dragMoveEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_dragMoveEvent ".} =
  type Cb = proc(super: QsciScintilladragMoveEventBase, e: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QsciScintilla(h: self), e)
  let slotval1 = gen_qevent.QDragMoveEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QsciScintilla, e: gen_qevent.QDropEvent): void =


  fQsciScintilla_virtualbase_dropEvent(self.h, e.h)

type QsciScintilladropEventBase* = proc(e: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QsciScintilla, slot: proc(super: QsciScintilladropEventBase, e: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintilladropEventBase, e: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_dropEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_dropEvent ".} =
  type Cb = proc(super: QsciScintilladropEventBase, e: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QsciScintilla(h: self), e)
  let slotval1 = gen_qevent.QDropEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QsciScintilla, e: gen_qevent.QFocusEvent): void =


  fQsciScintilla_virtualbase_focusInEvent(self.h, e.h)

type QsciScintillafocusInEventBase* = proc(e: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QsciScintilla, slot: proc(super: QsciScintillafocusInEventBase, e: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillafocusInEventBase, e: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_focusInEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_focusInEvent ".} =
  type Cb = proc(super: QsciScintillafocusInEventBase, e: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QsciScintilla(h: self), e)
  let slotval1 = gen_qevent.QFocusEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QsciScintilla, e: gen_qevent.QFocusEvent): void =


  fQsciScintilla_virtualbase_focusOutEvent(self.h, e.h)

type QsciScintillafocusOutEventBase* = proc(e: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QsciScintilla, slot: proc(super: QsciScintillafocusOutEventBase, e: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillafocusOutEventBase, e: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_focusOutEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_focusOutEvent ".} =
  type Cb = proc(super: QsciScintillafocusOutEventBase, e: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QsciScintilla(h: self), e)
  let slotval1 = gen_qevent.QFocusEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusNextPrevChild(self: QsciScintilla, next: bool): bool =


  fQsciScintilla_virtualbase_focusNextPrevChild(self.h, next)

type QsciScintillafocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QsciScintilla, slot: proc(super: QsciScintillafocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillafocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_focusNextPrevChild(self: ptr cQsciScintilla, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QsciScintilla_focusNextPrevChild ".} =
  type Cb = proc(super: QsciScintillafocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QsciScintilla(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_keyPressEvent(self: QsciScintilla, e: gen_qevent.QKeyEvent): void =


  fQsciScintilla_virtualbase_keyPressEvent(self.h, e.h)

type QsciScintillakeyPressEventBase* = proc(e: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QsciScintilla, slot: proc(super: QsciScintillakeyPressEventBase, e: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillakeyPressEventBase, e: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_keyPressEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_keyPressEvent ".} =
  type Cb = proc(super: QsciScintillakeyPressEventBase, e: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QsciScintilla(h: self), e)
  let slotval1 = gen_qevent.QKeyEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QsciScintilla, event: gen_qevent.QInputMethodEvent): void =


  fQsciScintilla_virtualbase_inputMethodEvent(self.h, event.h)

type QsciScintillainputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QsciScintilla, slot: proc(super: QsciScintillainputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillainputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_inputMethodEvent(self: ptr cQsciScintilla, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_inputMethodEvent ".} =
  type Cb = proc(super: QsciScintillainputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QsciScintilla(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QsciScintilla, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQsciScintilla_virtualbase_inputMethodQuery(self.h, cint(query)))

type QsciScintillainputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QsciScintilla, slot: proc(super: QsciScintillainputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillainputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_inputMethodQuery(self: ptr cQsciScintilla, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QsciScintilla_inputMethodQuery ".} =
  type Cb = proc(super: QsciScintillainputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QsciScintilla(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_mouseDoubleClickEvent(self: QsciScintilla, e: gen_qevent.QMouseEvent): void =


  fQsciScintilla_virtualbase_mouseDoubleClickEvent(self.h, e.h)

type QsciScintillamouseDoubleClickEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QsciScintilla, slot: proc(super: QsciScintillamouseDoubleClickEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillamouseDoubleClickEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_mouseDoubleClickEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QsciScintillamouseDoubleClickEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QsciScintilla(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QsciScintilla, e: gen_qevent.QMouseEvent): void =


  fQsciScintilla_virtualbase_mouseMoveEvent(self.h, e.h)

type QsciScintillamouseMoveEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QsciScintilla, slot: proc(super: QsciScintillamouseMoveEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillamouseMoveEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_mouseMoveEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_mouseMoveEvent ".} =
  type Cb = proc(super: QsciScintillamouseMoveEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QsciScintilla(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QsciScintilla, e: gen_qevent.QMouseEvent): void =


  fQsciScintilla_virtualbase_mousePressEvent(self.h, e.h)

type QsciScintillamousePressEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QsciScintilla, slot: proc(super: QsciScintillamousePressEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillamousePressEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_mousePressEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_mousePressEvent ".} =
  type Cb = proc(super: QsciScintillamousePressEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QsciScintilla(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QsciScintilla, e: gen_qevent.QMouseEvent): void =


  fQsciScintilla_virtualbase_mouseReleaseEvent(self.h, e.h)

type QsciScintillamouseReleaseEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QsciScintilla, slot: proc(super: QsciScintillamouseReleaseEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillamouseReleaseEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_mouseReleaseEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_mouseReleaseEvent ".} =
  type Cb = proc(super: QsciScintillamouseReleaseEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QsciScintilla(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QsciScintilla, e: gen_qevent.QPaintEvent): void =


  fQsciScintilla_virtualbase_paintEvent(self.h, e.h)

type QsciScintillapaintEventBase* = proc(e: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QsciScintilla, slot: proc(super: QsciScintillapaintEventBase, e: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillapaintEventBase, e: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_paintEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_paintEvent ".} =
  type Cb = proc(super: QsciScintillapaintEventBase, e: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QsciScintilla(h: self), e)
  let slotval1 = gen_qevent.QPaintEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QsciScintilla, e: gen_qevent.QResizeEvent): void =


  fQsciScintilla_virtualbase_resizeEvent(self.h, e.h)

type QsciScintillaresizeEventBase* = proc(e: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QsciScintilla, slot: proc(super: QsciScintillaresizeEventBase, e: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillaresizeEventBase, e: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_resizeEvent(self: ptr cQsciScintilla, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_resizeEvent ".} =
  type Cb = proc(super: QsciScintillaresizeEventBase, e: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QsciScintilla(h: self), e)
  let slotval1 = gen_qevent.QResizeEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_scrollContentsBy(self: QsciScintilla, dx: cint, dy: cint): void =


  fQsciScintilla_virtualbase_scrollContentsBy(self.h, dx, dy)

type QsciScintillascrollContentsByBase* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: QsciScintilla, slot: proc(super: QsciScintillascrollContentsByBase, dx: cint, dy: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillascrollContentsByBase, dx: cint, dy: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_scrollContentsBy(self: ptr cQsciScintilla, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QsciScintilla_scrollContentsBy ".} =
  type Cb = proc(super: QsciScintillascrollContentsByBase, dx: cint, dy: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(dx: cint, dy: cint): auto =
    callVirtualBase_scrollContentsBy(QsciScintilla(h: self), dx, dy)
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_minimumSizeHint(self: QsciScintilla, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQsciScintilla_virtualbase_minimumSizeHint(self.h))

type QsciScintillaminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QsciScintilla, slot: proc(super: QsciScintillaminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillaminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_minimumSizeHint(self: ptr cQsciScintilla, slot: int): pointer {.exportc: "miqt_exec_callback_QsciScintilla_minimumSizeHint ".} =
  type Cb = proc(super: QsciScintillaminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QsciScintilla(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_sizeHint(self: QsciScintilla, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQsciScintilla_virtualbase_sizeHint(self.h))

type QsciScintillasizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QsciScintilla, slot: proc(super: QsciScintillasizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_sizeHint(self: ptr cQsciScintilla, slot: int): pointer {.exportc: "miqt_exec_callback_QsciScintilla_sizeHint ".} =
  type Cb = proc(super: QsciScintillasizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QsciScintilla(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setupViewport(self: QsciScintilla, viewport: gen_qwidget.QWidget): void =


  fQsciScintilla_virtualbase_setupViewport(self.h, viewport.h)

type QsciScintillasetupViewportBase* = proc(viewport: gen_qwidget.QWidget): void
proc onsetupViewport*(self: QsciScintilla, slot: proc(super: QsciScintillasetupViewportBase, viewport: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetupViewportBase, viewport: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setupViewport(self: ptr cQsciScintilla, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_setupViewport ".} =
  type Cb = proc(super: QsciScintillasetupViewportBase, viewport: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(viewport: gen_qwidget.QWidget): auto =
    callVirtualBase_setupViewport(QsciScintilla(h: self), viewport)
  let slotval1 = gen_qwidget.QWidget(h: viewport)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QsciScintilla, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =


  fQsciScintilla_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QsciScintillaeventFilterBase* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciScintilla, slot: proc(super: QsciScintillaeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillaeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_eventFilter(self: ptr cQsciScintilla, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QsciScintilla_eventFilter ".} =
  type Cb = proc(super: QsciScintillaeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciScintilla(h: self), param1, param2)
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_viewportEvent(self: QsciScintilla, param1: gen_qcoreevent.QEvent): bool =


  fQsciScintilla_virtualbase_viewportEvent(self.h, param1.h)

type QsciScintillaviewportEventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onviewportEvent*(self: QsciScintilla, slot: proc(super: QsciScintillaviewportEventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillaviewportEventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_viewportEvent(self: ptr cQsciScintilla, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QsciScintilla_viewportEvent ".} =
  type Cb = proc(super: QsciScintillaviewportEventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_viewportEvent(QsciScintilla(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_viewportSizeHint(self: QsciScintilla, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQsciScintilla_virtualbase_viewportSizeHint(self.h))

type QsciScintillaviewportSizeHintBase* = proc(): gen_qsize.QSize
proc onviewportSizeHint*(self: QsciScintilla, slot: proc(super: QsciScintillaviewportSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillaviewportSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_viewportSizeHint(self: ptr cQsciScintilla, slot: int): pointer {.exportc: "miqt_exec_callback_QsciScintilla_viewportSizeHint ".} =
  type Cb = proc(super: QsciScintillaviewportSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_viewportSizeHint(QsciScintilla(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_initStyleOption(self: QsciScintilla, option: gen_qstyleoption.QStyleOptionFrame): void =


  fQsciScintilla_virtualbase_initStyleOption(self.h, option.h)

type QsciScintillainitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOptionFrame): void
proc oninitStyleOption*(self: QsciScintilla, slot: proc(super: QsciScintillainitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillainitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_initStyleOption(self: ptr cQsciScintilla, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_initStyleOption ".} =
  type Cb = proc(super: QsciScintillainitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionFrame): auto =
    callVirtualBase_initStyleOption(QsciScintilla(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOptionFrame(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QsciScintilla, ): cint =


  fQsciScintilla_virtualbase_devType(self.h)

type QsciScintilladevTypeBase* = proc(): cint
proc ondevType*(self: QsciScintilla, slot: proc(super: QsciScintilladevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciScintilladevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_devType(self: ptr cQsciScintilla, slot: int): cint {.exportc: "miqt_exec_callback_QsciScintilla_devType ".} =
  type Cb = proc(super: QsciScintilladevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QsciScintilla(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QsciScintilla, visible: bool): void =


  fQsciScintilla_virtualbase_setVisible(self.h, visible)

type QsciScintillasetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QsciScintilla, slot: proc(super: QsciScintillasetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_setVisible(self: ptr cQsciScintilla, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QsciScintilla_setVisible ".} =
  type Cb = proc(super: QsciScintillasetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QsciScintilla(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QsciScintilla, param1: cint): cint =


  fQsciScintilla_virtualbase_heightForWidth(self.h, param1)

type QsciScintillaheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QsciScintilla, slot: proc(super: QsciScintillaheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillaheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_heightForWidth(self: ptr cQsciScintilla, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QsciScintilla_heightForWidth ".} =
  type Cb = proc(super: QsciScintillaheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QsciScintilla(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QsciScintilla, ): bool =


  fQsciScintilla_virtualbase_hasHeightForWidth(self.h)

type QsciScintillahasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QsciScintilla, slot: proc(super: QsciScintillahasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillahasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_hasHeightForWidth(self: ptr cQsciScintilla, slot: int): bool {.exportc: "miqt_exec_callback_QsciScintilla_hasHeightForWidth ".} =
  type Cb = proc(super: QsciScintillahasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QsciScintilla(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QsciScintilla, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQsciScintilla_virtualbase_paintEngine(self.h))

type QsciScintillapaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QsciScintilla, slot: proc(super: QsciScintillapaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillapaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_paintEngine(self: ptr cQsciScintilla, slot: int): pointer {.exportc: "miqt_exec_callback_QsciScintilla_paintEngine ".} =
  type Cb = proc(super: QsciScintillapaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QsciScintilla(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_keyReleaseEvent(self: QsciScintilla, event: gen_qevent.QKeyEvent): void =


  fQsciScintilla_virtualbase_keyReleaseEvent(self.h, event.h)

type QsciScintillakeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QsciScintilla, slot: proc(super: QsciScintillakeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillakeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_keyReleaseEvent(self: ptr cQsciScintilla, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_keyReleaseEvent ".} =
  type Cb = proc(super: QsciScintillakeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QsciScintilla(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QsciScintilla, event: gen_qevent.QEnterEvent): void =


  fQsciScintilla_virtualbase_enterEvent(self.h, event.h)

type QsciScintillaenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QsciScintilla, slot: proc(super: QsciScintillaenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillaenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_enterEvent(self: ptr cQsciScintilla, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_enterEvent ".} =
  type Cb = proc(super: QsciScintillaenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QsciScintilla(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QsciScintilla, event: gen_qcoreevent.QEvent): void =


  fQsciScintilla_virtualbase_leaveEvent(self.h, event.h)

type QsciScintillaleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QsciScintilla, slot: proc(super: QsciScintillaleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillaleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_leaveEvent(self: ptr cQsciScintilla, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_leaveEvent ".} =
  type Cb = proc(super: QsciScintillaleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QsciScintilla(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QsciScintilla, event: gen_qevent.QMoveEvent): void =


  fQsciScintilla_virtualbase_moveEvent(self.h, event.h)

type QsciScintillamoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QsciScintilla, slot: proc(super: QsciScintillamoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillamoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_moveEvent(self: ptr cQsciScintilla, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_moveEvent ".} =
  type Cb = proc(super: QsciScintillamoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QsciScintilla(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QsciScintilla, event: gen_qevent.QCloseEvent): void =


  fQsciScintilla_virtualbase_closeEvent(self.h, event.h)

type QsciScintillacloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QsciScintilla, slot: proc(super: QsciScintillacloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillacloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_closeEvent(self: ptr cQsciScintilla, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_closeEvent ".} =
  type Cb = proc(super: QsciScintillacloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QsciScintilla(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QsciScintilla, event: gen_qevent.QTabletEvent): void =


  fQsciScintilla_virtualbase_tabletEvent(self.h, event.h)

type QsciScintillatabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QsciScintilla, slot: proc(super: QsciScintillatabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillatabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_tabletEvent(self: ptr cQsciScintilla, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_tabletEvent ".} =
  type Cb = proc(super: QsciScintillatabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QsciScintilla(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QsciScintilla, event: gen_qevent.QActionEvent): void =


  fQsciScintilla_virtualbase_actionEvent(self.h, event.h)

type QsciScintillaactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QsciScintilla, slot: proc(super: QsciScintillaactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillaactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_actionEvent(self: ptr cQsciScintilla, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_actionEvent ".} =
  type Cb = proc(super: QsciScintillaactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QsciScintilla(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QsciScintilla, event: gen_qevent.QShowEvent): void =


  fQsciScintilla_virtualbase_showEvent(self.h, event.h)

type QsciScintillashowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QsciScintilla, slot: proc(super: QsciScintillashowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillashowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_showEvent(self: ptr cQsciScintilla, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_showEvent ".} =
  type Cb = proc(super: QsciScintillashowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QsciScintilla(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QsciScintilla, event: gen_qevent.QHideEvent): void =


  fQsciScintilla_virtualbase_hideEvent(self.h, event.h)

type QsciScintillahideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QsciScintilla, slot: proc(super: QsciScintillahideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillahideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_hideEvent(self: ptr cQsciScintilla, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_hideEvent ".} =
  type Cb = proc(super: QsciScintillahideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QsciScintilla(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QsciScintilla, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQsciScintilla_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QsciScintillanativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QsciScintilla, slot: proc(super: QsciScintillanativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillanativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_nativeEvent(self: ptr cQsciScintilla, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QsciScintilla_nativeEvent ".} =
  type Cb = proc(super: QsciScintillanativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QsciScintilla(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QsciScintilla, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQsciScintilla_virtualbase_metric(self.h, cint(param1))

type QsciScintillametricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QsciScintilla, slot: proc(super: QsciScintillametricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillametricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_metric(self: ptr cQsciScintilla, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QsciScintilla_metric ".} =
  type Cb = proc(super: QsciScintillametricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QsciScintilla(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QsciScintilla, painter: gen_qpainter.QPainter): void =


  fQsciScintilla_virtualbase_initPainter(self.h, painter.h)

type QsciScintillainitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QsciScintilla, slot: proc(super: QsciScintillainitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillainitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_initPainter(self: ptr cQsciScintilla, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_initPainter ".} =
  type Cb = proc(super: QsciScintillainitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QsciScintilla(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QsciScintilla, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQsciScintilla_virtualbase_redirected(self.h, offset.h))

type QsciScintillaredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QsciScintilla, slot: proc(super: QsciScintillaredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillaredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_redirected(self: ptr cQsciScintilla, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QsciScintilla_redirected ".} =
  type Cb = proc(super: QsciScintillaredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QsciScintilla(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QsciScintilla, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQsciScintilla_virtualbase_sharedPainter(self.h))

type QsciScintillasharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QsciScintilla, slot: proc(super: QsciScintillasharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillasharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_sharedPainter(self: ptr cQsciScintilla, slot: int): pointer {.exportc: "miqt_exec_callback_QsciScintilla_sharedPainter ".} =
  type Cb = proc(super: QsciScintillasharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QsciScintilla(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_timerEvent(self: QsciScintilla, event: gen_qcoreevent.QTimerEvent): void =


  fQsciScintilla_virtualbase_timerEvent(self.h, event.h)

type QsciScintillatimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciScintilla, slot: proc(super: QsciScintillatimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillatimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_timerEvent(self: ptr cQsciScintilla, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_timerEvent ".} =
  type Cb = proc(super: QsciScintillatimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciScintilla(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciScintilla, event: gen_qcoreevent.QChildEvent): void =


  fQsciScintilla_virtualbase_childEvent(self.h, event.h)

type QsciScintillachildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciScintilla, slot: proc(super: QsciScintillachildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillachildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_childEvent(self: ptr cQsciScintilla, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_childEvent ".} =
  type Cb = proc(super: QsciScintillachildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciScintilla(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciScintilla, event: gen_qcoreevent.QEvent): void =


  fQsciScintilla_virtualbase_customEvent(self.h, event.h)

type QsciScintillacustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciScintilla, slot: proc(super: QsciScintillacustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillacustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_customEvent(self: ptr cQsciScintilla, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_customEvent ".} =
  type Cb = proc(super: QsciScintillacustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciScintilla(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciScintilla, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciScintilla_virtualbase_connectNotify(self.h, signal.h)

type QsciScintillaconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciScintilla, slot: proc(super: QsciScintillaconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintillaconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_connectNotify(self: ptr cQsciScintilla, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_connectNotify ".} =
  type Cb = proc(super: QsciScintillaconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciScintilla(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciScintilla, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciScintilla_virtualbase_disconnectNotify(self.h, signal.h)

type QsciScintilladisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciScintilla, slot: proc(super: QsciScintilladisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciScintilladisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciScintilla_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciScintilla_disconnectNotify(self: ptr cQsciScintilla, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciScintilla_disconnectNotify ".} =
  type Cb = proc(super: QsciScintilladisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciScintilla(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QsciScintilla) =
  fcQsciScintilla_delete(self.h)
