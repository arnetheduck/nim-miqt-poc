import ScintillaEdit_libs

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

const cflags = gorge("pkg-config -cflags ScintillaEdit")
{.compile("gen_ScintillaEdit.cpp", cflags).}


type stdpointer_safetyEnum* = distinct cint
template relaxed*(_: type stdpointer_safetyEnum): untyped = 0
template preferred*(_: type stdpointer_safetyEnum): untyped = 1
template strict*(_: type stdpointer_safetyEnum): untyped = 2


type ScintillaInternalEdgeEnum* = distinct cint
template left*(_: type ScintillaInternalEdgeEnum): untyped = 0
template top*(_: type ScintillaInternalEdgeEnum): untyped = 1
template bottom*(_: type ScintillaInternalEdgeEnum): untyped = 2
template right*(_: type ScintillaInternalEdgeEnum): untyped = 3


type ScintillaWhiteSpaceEnum* = distinct cint
template Invisible*(_: type ScintillaWhiteSpaceEnum): untyped = 0
template VisibleAlways*(_: type ScintillaWhiteSpaceEnum): untyped = 1
template VisibleAfterIndent*(_: type ScintillaWhiteSpaceEnum): untyped = 2
template VisibleOnlyInIndent*(_: type ScintillaWhiteSpaceEnum): untyped = 3


type ScintillaTabDrawModeEnum* = distinct cint
template LongArrow*(_: type ScintillaTabDrawModeEnum): untyped = 0
template StrikeOut*(_: type ScintillaTabDrawModeEnum): untyped = 1


type ScintillaEndOfLineEnum* = distinct cint
template CrLf*(_: type ScintillaEndOfLineEnum): untyped = 0
template Cr*(_: type ScintillaEndOfLineEnum): untyped = 1
template Lf*(_: type ScintillaEndOfLineEnum): untyped = 2


type ScintillaIMEInteractionEnum* = distinct cint
template Windowed*(_: type ScintillaIMEInteractionEnum): untyped = 0
template Inline*(_: type ScintillaIMEInteractionEnum): untyped = 1


type ScintillaAlphaEnum* = distinct cint
template Transparent*(_: type ScintillaAlphaEnum): untyped = 0
template Opaque*(_: type ScintillaAlphaEnum): untyped = 255
template NoAlpha*(_: type ScintillaAlphaEnum): untyped = 256


type ScintillaCursorShapeEnum* = distinct cint
template Normal*(_: type ScintillaCursorShapeEnum): untyped = -1
template Arrow*(_: type ScintillaCursorShapeEnum): untyped = 2
template Wait*(_: type ScintillaCursorShapeEnum): untyped = 4
template ReverseArrow*(_: type ScintillaCursorShapeEnum): untyped = 7


type ScintillaMarkerSymbolEnum* = distinct cint
template Circle*(_: type ScintillaMarkerSymbolEnum): untyped = 0
template RoundRect*(_: type ScintillaMarkerSymbolEnum): untyped = 1
template Arrow*(_: type ScintillaMarkerSymbolEnum): untyped = 2
template SmallRect*(_: type ScintillaMarkerSymbolEnum): untyped = 3
template ShortArrow*(_: type ScintillaMarkerSymbolEnum): untyped = 4
template Empty*(_: type ScintillaMarkerSymbolEnum): untyped = 5
template ArrowDown*(_: type ScintillaMarkerSymbolEnum): untyped = 6
template Minus*(_: type ScintillaMarkerSymbolEnum): untyped = 7
template Plus*(_: type ScintillaMarkerSymbolEnum): untyped = 8
template VLine*(_: type ScintillaMarkerSymbolEnum): untyped = 9
template LCorner*(_: type ScintillaMarkerSymbolEnum): untyped = 10
template TCorner*(_: type ScintillaMarkerSymbolEnum): untyped = 11
template BoxPlus*(_: type ScintillaMarkerSymbolEnum): untyped = 12
template BoxPlusConnected*(_: type ScintillaMarkerSymbolEnum): untyped = 13
template BoxMinus*(_: type ScintillaMarkerSymbolEnum): untyped = 14
template BoxMinusConnected*(_: type ScintillaMarkerSymbolEnum): untyped = 15
template LCornerCurve*(_: type ScintillaMarkerSymbolEnum): untyped = 16
template TCornerCurve*(_: type ScintillaMarkerSymbolEnum): untyped = 17
template CirclePlus*(_: type ScintillaMarkerSymbolEnum): untyped = 18
template CirclePlusConnected*(_: type ScintillaMarkerSymbolEnum): untyped = 19
template CircleMinus*(_: type ScintillaMarkerSymbolEnum): untyped = 20
template CircleMinusConnected*(_: type ScintillaMarkerSymbolEnum): untyped = 21
template Background*(_: type ScintillaMarkerSymbolEnum): untyped = 22
template DotDotDot*(_: type ScintillaMarkerSymbolEnum): untyped = 23
template Arrows*(_: type ScintillaMarkerSymbolEnum): untyped = 24
template Pixmap*(_: type ScintillaMarkerSymbolEnum): untyped = 25
template FullRect*(_: type ScintillaMarkerSymbolEnum): untyped = 26
template LeftRect*(_: type ScintillaMarkerSymbolEnum): untyped = 27
template Available*(_: type ScintillaMarkerSymbolEnum): untyped = 28
template Underline*(_: type ScintillaMarkerSymbolEnum): untyped = 29
template RgbaImage*(_: type ScintillaMarkerSymbolEnum): untyped = 30
template Bookmark*(_: type ScintillaMarkerSymbolEnum): untyped = 31
template VerticalBookmark*(_: type ScintillaMarkerSymbolEnum): untyped = 32
template Bar*(_: type ScintillaMarkerSymbolEnum): untyped = 33
template Character*(_: type ScintillaMarkerSymbolEnum): untyped = 10000


type ScintillaMarkerOutlineEnum* = distinct cint
template HistoryRevertedToOrigin*(_: type ScintillaMarkerOutlineEnum): untyped = 21
template HistorySaved*(_: type ScintillaMarkerOutlineEnum): untyped = 22
template HistoryModified*(_: type ScintillaMarkerOutlineEnum): untyped = 23
template HistoryRevertedToModified*(_: type ScintillaMarkerOutlineEnum): untyped = 24
template FolderEnd*(_: type ScintillaMarkerOutlineEnum): untyped = 25
template FolderOpenMid*(_: type ScintillaMarkerOutlineEnum): untyped = 26
template FolderMidTail*(_: type ScintillaMarkerOutlineEnum): untyped = 27
template FolderTail*(_: type ScintillaMarkerOutlineEnum): untyped = 28
template FolderSub*(_: type ScintillaMarkerOutlineEnum): untyped = 29
template Folder*(_: type ScintillaMarkerOutlineEnum): untyped = 30
template FolderOpen*(_: type ScintillaMarkerOutlineEnum): untyped = 31


type ScintillaMarginTypeEnum* = distinct cint
template Symbol*(_: type ScintillaMarginTypeEnum): untyped = 0
template Number*(_: type ScintillaMarginTypeEnum): untyped = 1
template Back*(_: type ScintillaMarginTypeEnum): untyped = 2
template Fore*(_: type ScintillaMarginTypeEnum): untyped = 3
template Text*(_: type ScintillaMarginTypeEnum): untyped = 4
template RText*(_: type ScintillaMarginTypeEnum): untyped = 5
template Colour*(_: type ScintillaMarginTypeEnum): untyped = 6


type ScintillaStylesCommonEnum* = distinct cint
template Default*(_: type ScintillaStylesCommonEnum): untyped = 32
template LineNumber*(_: type ScintillaStylesCommonEnum): untyped = 33
template BraceLight*(_: type ScintillaStylesCommonEnum): untyped = 34
template BraceBad*(_: type ScintillaStylesCommonEnum): untyped = 35
template ControlChar*(_: type ScintillaStylesCommonEnum): untyped = 36
template IndentGuide*(_: type ScintillaStylesCommonEnum): untyped = 37
template CallTip*(_: type ScintillaStylesCommonEnum): untyped = 38
template FoldDisplayText*(_: type ScintillaStylesCommonEnum): untyped = 39
template LastPredefined*(_: type ScintillaStylesCommonEnum): untyped = 39
template Max*(_: type ScintillaStylesCommonEnum): untyped = 255


type ScintillaCharacterSetEnum* = distinct cint
template Ansi*(_: type ScintillaCharacterSetEnum): untyped = 0
template Default*(_: type ScintillaCharacterSetEnum): untyped = 1
template Baltic*(_: type ScintillaCharacterSetEnum): untyped = 186
template ChineseBig5*(_: type ScintillaCharacterSetEnum): untyped = 136
template EastEurope*(_: type ScintillaCharacterSetEnum): untyped = 238
template GB2312*(_: type ScintillaCharacterSetEnum): untyped = 134
template Greek*(_: type ScintillaCharacterSetEnum): untyped = 161
template Hangul*(_: type ScintillaCharacterSetEnum): untyped = 129
template Mac*(_: type ScintillaCharacterSetEnum): untyped = 77
template Oem*(_: type ScintillaCharacterSetEnum): untyped = 255
template Russian*(_: type ScintillaCharacterSetEnum): untyped = 204
template Oem866*(_: type ScintillaCharacterSetEnum): untyped = 866
template Cyrillic*(_: type ScintillaCharacterSetEnum): untyped = 1251
template ShiftJis*(_: type ScintillaCharacterSetEnum): untyped = 128
template Symbol*(_: type ScintillaCharacterSetEnum): untyped = 2
template Turkish*(_: type ScintillaCharacterSetEnum): untyped = 162
template Johab*(_: type ScintillaCharacterSetEnum): untyped = 130
template Hebrew*(_: type ScintillaCharacterSetEnum): untyped = 177
template Arabic*(_: type ScintillaCharacterSetEnum): untyped = 178
template Vietnamese*(_: type ScintillaCharacterSetEnum): untyped = 163
template Thai*(_: type ScintillaCharacterSetEnum): untyped = 222
template Iso8859_15*(_: type ScintillaCharacterSetEnum): untyped = 1000


type ScintillaCaseVisibleEnum* = distinct cint
template Mixed*(_: type ScintillaCaseVisibleEnum): untyped = 0
template Upper*(_: type ScintillaCaseVisibleEnum): untyped = 1
template Lower*(_: type ScintillaCaseVisibleEnum): untyped = 2
template Camel*(_: type ScintillaCaseVisibleEnum): untyped = 3


type ScintillaFontWeightEnum* = distinct cint
template Normal*(_: type ScintillaFontWeightEnum): untyped = 400
template SemiBold*(_: type ScintillaFontWeightEnum): untyped = 600
template Bold*(_: type ScintillaFontWeightEnum): untyped = 700


type ScintillaFontStretchEnum* = distinct cint
template UltraCondensed*(_: type ScintillaFontStretchEnum): untyped = 1
template ExtraCondensed*(_: type ScintillaFontStretchEnum): untyped = 2
template Condensed*(_: type ScintillaFontStretchEnum): untyped = 3
template SemiCondensed*(_: type ScintillaFontStretchEnum): untyped = 4
template Normal*(_: type ScintillaFontStretchEnum): untyped = 5
template SemiExpanded*(_: type ScintillaFontStretchEnum): untyped = 6
template Expanded*(_: type ScintillaFontStretchEnum): untyped = 7
template ExtraExpanded*(_: type ScintillaFontStretchEnum): untyped = 8
template UltraExpanded*(_: type ScintillaFontStretchEnum): untyped = 9


type ScintillaElementEnum* = distinct cint
template List*(_: type ScintillaElementEnum): untyped = 0
template ListBack*(_: type ScintillaElementEnum): untyped = 1
template ListSelected*(_: type ScintillaElementEnum): untyped = 2
template ListSelectedBack*(_: type ScintillaElementEnum): untyped = 3
template SelectionText*(_: type ScintillaElementEnum): untyped = 10
template SelectionBack*(_: type ScintillaElementEnum): untyped = 11
template SelectionAdditionalText*(_: type ScintillaElementEnum): untyped = 12
template SelectionAdditionalBack*(_: type ScintillaElementEnum): untyped = 13
template SelectionSecondaryText*(_: type ScintillaElementEnum): untyped = 14
template SelectionSecondaryBack*(_: type ScintillaElementEnum): untyped = 15
template SelectionInactiveText*(_: type ScintillaElementEnum): untyped = 16
template SelectionInactiveBack*(_: type ScintillaElementEnum): untyped = 17
template SelectionInactiveAdditionalText*(_: type ScintillaElementEnum): untyped = 18
template SelectionInactiveAdditionalBack*(_: type ScintillaElementEnum): untyped = 19
template Caret*(_: type ScintillaElementEnum): untyped = 40
template CaretAdditional*(_: type ScintillaElementEnum): untyped = 41
template CaretLineBack*(_: type ScintillaElementEnum): untyped = 50
template WhiteSpace*(_: type ScintillaElementEnum): untyped = 60
template WhiteSpaceBack*(_: type ScintillaElementEnum): untyped = 61
template HotSpotActive*(_: type ScintillaElementEnum): untyped = 70
template HotSpotActiveBack*(_: type ScintillaElementEnum): untyped = 71
template FoldLine*(_: type ScintillaElementEnum): untyped = 80
template HiddenLine*(_: type ScintillaElementEnum): untyped = 81


type ScintillaLayerEnum* = distinct cint
template Base*(_: type ScintillaLayerEnum): untyped = 0
template UnderText*(_: type ScintillaLayerEnum): untyped = 1
template OverText*(_: type ScintillaLayerEnum): untyped = 2


type ScintillaIndicatorStyleEnum* = distinct cint
template Plain*(_: type ScintillaIndicatorStyleEnum): untyped = 0
template Squiggle*(_: type ScintillaIndicatorStyleEnum): untyped = 1
template TT*(_: type ScintillaIndicatorStyleEnum): untyped = 2
template Diagonal*(_: type ScintillaIndicatorStyleEnum): untyped = 3
template Strike*(_: type ScintillaIndicatorStyleEnum): untyped = 4
template Hidden*(_: type ScintillaIndicatorStyleEnum): untyped = 5
template Box*(_: type ScintillaIndicatorStyleEnum): untyped = 6
template RoundBox*(_: type ScintillaIndicatorStyleEnum): untyped = 7
template StraightBox*(_: type ScintillaIndicatorStyleEnum): untyped = 8
template Dash*(_: type ScintillaIndicatorStyleEnum): untyped = 9
template Dots*(_: type ScintillaIndicatorStyleEnum): untyped = 10
template SquiggleLow*(_: type ScintillaIndicatorStyleEnum): untyped = 11
template DotBox*(_: type ScintillaIndicatorStyleEnum): untyped = 12
template SquigglePixmap*(_: type ScintillaIndicatorStyleEnum): untyped = 13
template CompositionThick*(_: type ScintillaIndicatorStyleEnum): untyped = 14
template CompositionThin*(_: type ScintillaIndicatorStyleEnum): untyped = 15
template FullBox*(_: type ScintillaIndicatorStyleEnum): untyped = 16
template TextFore*(_: type ScintillaIndicatorStyleEnum): untyped = 17
template Point*(_: type ScintillaIndicatorStyleEnum): untyped = 18
template PointCharacter*(_: type ScintillaIndicatorStyleEnum): untyped = 19
template Gradient*(_: type ScintillaIndicatorStyleEnum): untyped = 20
template GradientCentre*(_: type ScintillaIndicatorStyleEnum): untyped = 21
template PointTop*(_: type ScintillaIndicatorStyleEnum): untyped = 22


type ScintillaIndicatorNumbersEnum* = distinct cint
template Container*(_: type ScintillaIndicatorNumbersEnum): untyped = 8
template Ime*(_: type ScintillaIndicatorNumbersEnum): untyped = 32
template ImeMax*(_: type ScintillaIndicatorNumbersEnum): untyped = 35
template HistoryRevertedToOriginInsertion*(_: type ScintillaIndicatorNumbersEnum): untyped = 36
template HistoryRevertedToOriginDeletion*(_: type ScintillaIndicatorNumbersEnum): untyped = 37
template HistorySavedInsertion*(_: type ScintillaIndicatorNumbersEnum): untyped = 38
template HistorySavedDeletion*(_: type ScintillaIndicatorNumbersEnum): untyped = 39
template HistoryModifiedInsertion*(_: type ScintillaIndicatorNumbersEnum): untyped = 40
template HistoryModifiedDeletion*(_: type ScintillaIndicatorNumbersEnum): untyped = 41
template HistoryRevertedToModifiedInsertion*(_: type ScintillaIndicatorNumbersEnum): untyped = 42
template HistoryRevertedToModifiedDeletion*(_: type ScintillaIndicatorNumbersEnum): untyped = 43
template Max*(_: type ScintillaIndicatorNumbersEnum): untyped = 43


type ScintillaIndicValueEnum* = distinct cint
template Bit*(_: type ScintillaIndicValueEnum): untyped = 16777216
template Mask*(_: type ScintillaIndicValueEnum): untyped = 16777215


type ScintillaIndicFlagEnum* = distinct cint
template None*(_: type ScintillaIndicFlagEnum): untyped = 0
template ValueFore*(_: type ScintillaIndicFlagEnum): untyped = 1


type ScintillaAutoCompleteOptionEnum* = distinct cint
template Normal*(_: type ScintillaAutoCompleteOptionEnum): untyped = 0
template FixedSize*(_: type ScintillaAutoCompleteOptionEnum): untyped = 1
template SelectFirstItem*(_: type ScintillaAutoCompleteOptionEnum): untyped = 2


type ScintillaIndentViewEnum* = distinct cint
template None*(_: type ScintillaIndentViewEnum): untyped = 0
template Real*(_: type ScintillaIndentViewEnum): untyped = 1
template LookForward*(_: type ScintillaIndentViewEnum): untyped = 2
template LookBoth*(_: type ScintillaIndentViewEnum): untyped = 3


type ScintillaPrintOptionEnum* = distinct cint
template Normal*(_: type ScintillaPrintOptionEnum): untyped = 0
template InvertLight*(_: type ScintillaPrintOptionEnum): untyped = 1
template BlackOnWhite*(_: type ScintillaPrintOptionEnum): untyped = 2
template ColourOnWhite*(_: type ScintillaPrintOptionEnum): untyped = 3
template ColourOnWhiteDefaultBG*(_: type ScintillaPrintOptionEnum): untyped = 4
template ScreenColours*(_: type ScintillaPrintOptionEnum): untyped = 5


type ScintillaFindOptionEnum* = distinct cint
template None*(_: type ScintillaFindOptionEnum): untyped = 0
template WholeWord*(_: type ScintillaFindOptionEnum): untyped = 2
template MatchCase*(_: type ScintillaFindOptionEnum): untyped = 4
template WordStart*(_: type ScintillaFindOptionEnum): untyped = 1048576
template RegExp*(_: type ScintillaFindOptionEnum): untyped = 2097152
template Posix*(_: type ScintillaFindOptionEnum): untyped = 4194304
template Cxx11RegEx*(_: type ScintillaFindOptionEnum): untyped = 8388608


type ScintillaChangeHistoryOptionEnum* = distinct cint
template Disabled*(_: type ScintillaChangeHistoryOptionEnum): untyped = 0
template Enabled*(_: type ScintillaChangeHistoryOptionEnum): untyped = 1
template Markers*(_: type ScintillaChangeHistoryOptionEnum): untyped = 2
template Indicators*(_: type ScintillaChangeHistoryOptionEnum): untyped = 4


type ScintillaFoldLevelEnum* = distinct cint
template None*(_: type ScintillaFoldLevelEnum): untyped = 0
template Base*(_: type ScintillaFoldLevelEnum): untyped = 1024
template WhiteFlag*(_: type ScintillaFoldLevelEnum): untyped = 4096
template HeaderFlag*(_: type ScintillaFoldLevelEnum): untyped = 8192
template NumberMask*(_: type ScintillaFoldLevelEnum): untyped = 4095


type ScintillaFoldDisplayTextStyleEnum* = distinct cint
template Hidden*(_: type ScintillaFoldDisplayTextStyleEnum): untyped = 0
template Standard*(_: type ScintillaFoldDisplayTextStyleEnum): untyped = 1
template Boxed*(_: type ScintillaFoldDisplayTextStyleEnum): untyped = 2


type ScintillaFoldActionEnum* = distinct cint
template Contract*(_: type ScintillaFoldActionEnum): untyped = 0
template Expand*(_: type ScintillaFoldActionEnum): untyped = 1
template Toggle*(_: type ScintillaFoldActionEnum): untyped = 2
template ContractEveryLevel*(_: type ScintillaFoldActionEnum): untyped = 4


type ScintillaAutomaticFoldEnum* = distinct cint
template None*(_: type ScintillaAutomaticFoldEnum): untyped = 0
template Show*(_: type ScintillaAutomaticFoldEnum): untyped = 1
template Click*(_: type ScintillaAutomaticFoldEnum): untyped = 2
template Change*(_: type ScintillaAutomaticFoldEnum): untyped = 4


type ScintillaFoldFlagEnum* = distinct cint
template None*(_: type ScintillaFoldFlagEnum): untyped = 0
template LineBeforeExpanded*(_: type ScintillaFoldFlagEnum): untyped = 2
template LineBeforeContracted*(_: type ScintillaFoldFlagEnum): untyped = 4
template LineAfterExpanded*(_: type ScintillaFoldFlagEnum): untyped = 8
template LineAfterContracted*(_: type ScintillaFoldFlagEnum): untyped = 16
template LevelNumbers*(_: type ScintillaFoldFlagEnum): untyped = 64
template LineState*(_: type ScintillaFoldFlagEnum): untyped = 128


type ScintillaIdleStylingEnum* = distinct cint
template None*(_: type ScintillaIdleStylingEnum): untyped = 0
template ToVisible*(_: type ScintillaIdleStylingEnum): untyped = 1
template AfterVisible*(_: type ScintillaIdleStylingEnum): untyped = 2
template All*(_: type ScintillaIdleStylingEnum): untyped = 3


type ScintillaWrapEnum* = distinct cint
template None*(_: type ScintillaWrapEnum): untyped = 0
template Word*(_: type ScintillaWrapEnum): untyped = 1
template Char*(_: type ScintillaWrapEnum): untyped = 2
template WhiteSpace*(_: type ScintillaWrapEnum): untyped = 3


type ScintillaWrapVisualFlagEnum* = distinct cint
template None*(_: type ScintillaWrapVisualFlagEnum): untyped = 0
template End*(_: type ScintillaWrapVisualFlagEnum): untyped = 1
template Start*(_: type ScintillaWrapVisualFlagEnum): untyped = 2
template Margin*(_: type ScintillaWrapVisualFlagEnum): untyped = 4


type ScintillaWrapVisualLocationEnum* = distinct cint
template Default*(_: type ScintillaWrapVisualLocationEnum): untyped = 0
template EndByText*(_: type ScintillaWrapVisualLocationEnum): untyped = 1
template StartByText*(_: type ScintillaWrapVisualLocationEnum): untyped = 2


type ScintillaWrapIndentModeEnum* = distinct cint
template Fixed*(_: type ScintillaWrapIndentModeEnum): untyped = 0
template Same*(_: type ScintillaWrapIndentModeEnum): untyped = 1
template Indent*(_: type ScintillaWrapIndentModeEnum): untyped = 2
template DeepIndent*(_: type ScintillaWrapIndentModeEnum): untyped = 3


type ScintillaLineCacheEnum* = distinct cint
template None*(_: type ScintillaLineCacheEnum): untyped = 0
template Caret*(_: type ScintillaLineCacheEnum): untyped = 1
template Page*(_: type ScintillaLineCacheEnum): untyped = 2
template Document*(_: type ScintillaLineCacheEnum): untyped = 3


type ScintillaPhasesDrawEnum* = distinct cint
template One*(_: type ScintillaPhasesDrawEnum): untyped = 0
template Two*(_: type ScintillaPhasesDrawEnum): untyped = 1
template Multiple*(_: type ScintillaPhasesDrawEnum): untyped = 2


type ScintillaFontQualityEnum* = distinct cint
template QualityMask*(_: type ScintillaFontQualityEnum): untyped = 15
template QualityDefault*(_: type ScintillaFontQualityEnum): untyped = 0
template QualityNonAntialiased*(_: type ScintillaFontQualityEnum): untyped = 1
template QualityAntialiased*(_: type ScintillaFontQualityEnum): untyped = 2
template QualityLcdOptimized*(_: type ScintillaFontQualityEnum): untyped = 3


type ScintillaMultiPasteEnum* = distinct cint
template Once*(_: type ScintillaMultiPasteEnum): untyped = 0
template Each*(_: type ScintillaMultiPasteEnum): untyped = 1


type ScintillaAccessibilityEnum* = distinct cint
template Disabled*(_: type ScintillaAccessibilityEnum): untyped = 0
template Enabled*(_: type ScintillaAccessibilityEnum): untyped = 1


type ScintillaEdgeVisualStyleEnum* = distinct cint
template None*(_: type ScintillaEdgeVisualStyleEnum): untyped = 0
template Line*(_: type ScintillaEdgeVisualStyleEnum): untyped = 1
template Background*(_: type ScintillaEdgeVisualStyleEnum): untyped = 2
template MultiLine*(_: type ScintillaEdgeVisualStyleEnum): untyped = 3


type ScintillaPopUpEnum* = distinct cint
template Never*(_: type ScintillaPopUpEnum): untyped = 0
template All*(_: type ScintillaPopUpEnum): untyped = 1
template Text*(_: type ScintillaPopUpEnum): untyped = 2


type ScintillaDocumentOptionEnum* = distinct cint
template Default*(_: type ScintillaDocumentOptionEnum): untyped = 0
template StylesNone*(_: type ScintillaDocumentOptionEnum): untyped = 1
template TextLarge*(_: type ScintillaDocumentOptionEnum): untyped = 256


type ScintillaStatusEnum* = distinct cint
template Ok*(_: type ScintillaStatusEnum): untyped = 0
template Failure*(_: type ScintillaStatusEnum): untyped = 1
template BadAlloc*(_: type ScintillaStatusEnum): untyped = 2
template WarnStart*(_: type ScintillaStatusEnum): untyped = 1000
template RegEx*(_: type ScintillaStatusEnum): untyped = 1001


type ScintillaVisiblePolicyEnum* = distinct cint
template Slop*(_: type ScintillaVisiblePolicyEnum): untyped = 1
template Strict*(_: type ScintillaVisiblePolicyEnum): untyped = 4


type ScintillaCaretPolicyEnum* = distinct cint
template Slop*(_: type ScintillaCaretPolicyEnum): untyped = 1
template Strict*(_: type ScintillaCaretPolicyEnum): untyped = 4
template Jumps*(_: type ScintillaCaretPolicyEnum): untyped = 16
template Even*(_: type ScintillaCaretPolicyEnum): untyped = 8


type ScintillaSelectionModeEnum* = distinct cint
template Stream*(_: type ScintillaSelectionModeEnum): untyped = 0
template Rectangle*(_: type ScintillaSelectionModeEnum): untyped = 1
template Lines*(_: type ScintillaSelectionModeEnum): untyped = 2
template Thin*(_: type ScintillaSelectionModeEnum): untyped = 3


type ScintillaCaseInsensitiveBehaviourEnum* = distinct cint
template RespectCase*(_: type ScintillaCaseInsensitiveBehaviourEnum): untyped = 0
template IgnoreCase*(_: type ScintillaCaseInsensitiveBehaviourEnum): untyped = 1


type ScintillaMultiAutoCompleteEnum* = distinct cint
template Once*(_: type ScintillaMultiAutoCompleteEnum): untyped = 0
template Each*(_: type ScintillaMultiAutoCompleteEnum): untyped = 1


type ScintillaOrderingEnum* = distinct cint
template PreSorted*(_: type ScintillaOrderingEnum): untyped = 0
template PerformSort*(_: type ScintillaOrderingEnum): untyped = 1
template Custom*(_: type ScintillaOrderingEnum): untyped = 2


type ScintillaCaretStickyEnum* = distinct cint
template Off*(_: type ScintillaCaretStickyEnum): untyped = 0
template On*(_: type ScintillaCaretStickyEnum): untyped = 1
template WhiteSpace*(_: type ScintillaCaretStickyEnum): untyped = 2


type ScintillaCaretStyleEnum* = distinct cint
template Invisible*(_: type ScintillaCaretStyleEnum): untyped = 0
template Line*(_: type ScintillaCaretStyleEnum): untyped = 1
template Block*(_: type ScintillaCaretStyleEnum): untyped = 2
template OverstrikeBar*(_: type ScintillaCaretStyleEnum): untyped = 0
template OverstrikeBlock*(_: type ScintillaCaretStyleEnum): untyped = 16
template Curses*(_: type ScintillaCaretStyleEnum): untyped = 32
template InsMask*(_: type ScintillaCaretStyleEnum): untyped = 15
template BlockAfter*(_: type ScintillaCaretStyleEnum): untyped = 256


type ScintillaMarginOptionEnum* = distinct cint
template None*(_: type ScintillaMarginOptionEnum): untyped = 0
template SubLineSelect*(_: type ScintillaMarginOptionEnum): untyped = 1


type ScintillaAnnotationVisibleEnum* = distinct cint
template Hidden*(_: type ScintillaAnnotationVisibleEnum): untyped = 0
template Standard*(_: type ScintillaAnnotationVisibleEnum): untyped = 1
template Boxed*(_: type ScintillaAnnotationVisibleEnum): untyped = 2
template Indented*(_: type ScintillaAnnotationVisibleEnum): untyped = 3


type ScintillaUndoFlagsEnum* = distinct cint
template None*(_: type ScintillaUndoFlagsEnum): untyped = 0
template MayCoalesce*(_: type ScintillaUndoFlagsEnum): untyped = 1


type ScintillaVirtualSpaceEnum* = distinct cint
template None*(_: type ScintillaVirtualSpaceEnum): untyped = 0
template RectangularSelection*(_: type ScintillaVirtualSpaceEnum): untyped = 1
template UserAccessible*(_: type ScintillaVirtualSpaceEnum): untyped = 2
template NoWrapLineStart*(_: type ScintillaVirtualSpaceEnum): untyped = 4


type ScintillaTechnologyEnum* = distinct cint
template Default*(_: type ScintillaTechnologyEnum): untyped = 0
template DirectWrite*(_: type ScintillaTechnologyEnum): untyped = 1
template DirectWriteRetain*(_: type ScintillaTechnologyEnum): untyped = 2
template DirectWriteDC*(_: type ScintillaTechnologyEnum): untyped = 3


type ScintillaLineEndTypeEnum* = distinct cint
template Default*(_: type ScintillaLineEndTypeEnum): untyped = 0
template Unicode*(_: type ScintillaLineEndTypeEnum): untyped = 1


type ScintillaRepresentationAppearanceEnum* = distinct cint
template Plain*(_: type ScintillaRepresentationAppearanceEnum): untyped = 0
template Blob*(_: type ScintillaRepresentationAppearanceEnum): untyped = 1
template Colour*(_: type ScintillaRepresentationAppearanceEnum): untyped = 16


type ScintillaEOLAnnotationVisibleEnum* = distinct cint
template Hidden*(_: type ScintillaEOLAnnotationVisibleEnum): untyped = 0
template Standard*(_: type ScintillaEOLAnnotationVisibleEnum): untyped = 1
template Boxed*(_: type ScintillaEOLAnnotationVisibleEnum): untyped = 2
template Stadium*(_: type ScintillaEOLAnnotationVisibleEnum): untyped = 256
template FlatCircle*(_: type ScintillaEOLAnnotationVisibleEnum): untyped = 257
template AngleCircle*(_: type ScintillaEOLAnnotationVisibleEnum): untyped = 258
template CircleFlat*(_: type ScintillaEOLAnnotationVisibleEnum): untyped = 272
template Flats*(_: type ScintillaEOLAnnotationVisibleEnum): untyped = 273
template AngleFlat*(_: type ScintillaEOLAnnotationVisibleEnum): untyped = 274
template CircleAngle*(_: type ScintillaEOLAnnotationVisibleEnum): untyped = 288
template FlatAngle*(_: type ScintillaEOLAnnotationVisibleEnum): untyped = 289
template Angles*(_: type ScintillaEOLAnnotationVisibleEnum): untyped = 290


type ScintillaSupportsEnum* = distinct cint
template LineDrawsFinal*(_: type ScintillaSupportsEnum): untyped = 0
template PixelDivisions*(_: type ScintillaSupportsEnum): untyped = 1
template FractionalStrokeWidth*(_: type ScintillaSupportsEnum): untyped = 2
template TranslucentStroke*(_: type ScintillaSupportsEnum): untyped = 3
template PixelModification*(_: type ScintillaSupportsEnum): untyped = 4
template ThreadSafeMeasureWidths*(_: type ScintillaSupportsEnum): untyped = 5


type ScintillaLineCharacterIndexTypeEnum* = distinct cint
template None*(_: type ScintillaLineCharacterIndexTypeEnum): untyped = 0
template Utf32*(_: type ScintillaLineCharacterIndexTypeEnum): untyped = 1
template Utf16*(_: type ScintillaLineCharacterIndexTypeEnum): untyped = 2


type ScintillaTypePropertyEnum* = distinct cint
template Boolean*(_: type ScintillaTypePropertyEnum): untyped = 0
template Integer*(_: type ScintillaTypePropertyEnum): untyped = 1
template String*(_: type ScintillaTypePropertyEnum): untyped = 2


type ScintillaModificationFlagsEnum* = distinct cint
template None*(_: type ScintillaModificationFlagsEnum): untyped = 0
template InsertText*(_: type ScintillaModificationFlagsEnum): untyped = 1
template DeleteText*(_: type ScintillaModificationFlagsEnum): untyped = 2
template ChangeStyle*(_: type ScintillaModificationFlagsEnum): untyped = 4
template ChangeFold*(_: type ScintillaModificationFlagsEnum): untyped = 8
template User*(_: type ScintillaModificationFlagsEnum): untyped = 16
template Undo*(_: type ScintillaModificationFlagsEnum): untyped = 32
template Redo*(_: type ScintillaModificationFlagsEnum): untyped = 64
template MultiStepUndoRedo*(_: type ScintillaModificationFlagsEnum): untyped = 128
template LastStepInUndoRedo*(_: type ScintillaModificationFlagsEnum): untyped = 256
template ChangeMarker*(_: type ScintillaModificationFlagsEnum): untyped = 512
template BeforeInsert*(_: type ScintillaModificationFlagsEnum): untyped = 1024
template BeforeDelete*(_: type ScintillaModificationFlagsEnum): untyped = 2048
template MultilineUndoRedo*(_: type ScintillaModificationFlagsEnum): untyped = 4096
template StartAction*(_: type ScintillaModificationFlagsEnum): untyped = 8192
template ChangeIndicator*(_: type ScintillaModificationFlagsEnum): untyped = 16384
template ChangeLineState*(_: type ScintillaModificationFlagsEnum): untyped = 32768
template ChangeMargin*(_: type ScintillaModificationFlagsEnum): untyped = 65536
template ChangeAnnotation*(_: type ScintillaModificationFlagsEnum): untyped = 131072
template Container*(_: type ScintillaModificationFlagsEnum): untyped = 262144
template LexerState*(_: type ScintillaModificationFlagsEnum): untyped = 524288
template InsertCheck*(_: type ScintillaModificationFlagsEnum): untyped = 1048576
template ChangeTabStops*(_: type ScintillaModificationFlagsEnum): untyped = 2097152
template ChangeEOLAnnotation*(_: type ScintillaModificationFlagsEnum): untyped = 4194304
template EventMaskAll*(_: type ScintillaModificationFlagsEnum): untyped = 8388607


type ScintillaUpdateEnum* = distinct cint
template None*(_: type ScintillaUpdateEnum): untyped = 0
template Content*(_: type ScintillaUpdateEnum): untyped = 1
template Selection*(_: type ScintillaUpdateEnum): untyped = 2
template VScroll*(_: type ScintillaUpdateEnum): untyped = 4
template HScroll*(_: type ScintillaUpdateEnum): untyped = 8


type ScintillaFocusChangeEnum* = distinct cint
template Change*(_: type ScintillaFocusChangeEnum): untyped = 768
template Setfocus*(_: type ScintillaFocusChangeEnum): untyped = 512
template Killfocus*(_: type ScintillaFocusChangeEnum): untyped = 256


type ScintillaKeysEnum* = distinct cint
template Down*(_: type ScintillaKeysEnum): untyped = 300
template Up*(_: type ScintillaKeysEnum): untyped = 301
template Left*(_: type ScintillaKeysEnum): untyped = 302
template Right*(_: type ScintillaKeysEnum): untyped = 303
template Home*(_: type ScintillaKeysEnum): untyped = 304
template End*(_: type ScintillaKeysEnum): untyped = 305
template Prior*(_: type ScintillaKeysEnum): untyped = 306
template Next*(_: type ScintillaKeysEnum): untyped = 307
template Delete*(_: type ScintillaKeysEnum): untyped = 308
template Insert*(_: type ScintillaKeysEnum): untyped = 309
template Escape*(_: type ScintillaKeysEnum): untyped = 7
template Back*(_: type ScintillaKeysEnum): untyped = 8
template Tab*(_: type ScintillaKeysEnum): untyped = 9
template Return*(_: type ScintillaKeysEnum): untyped = 13
template Add*(_: type ScintillaKeysEnum): untyped = 310
template Subtract*(_: type ScintillaKeysEnum): untyped = 311
template Divide*(_: type ScintillaKeysEnum): untyped = 312
template Win*(_: type ScintillaKeysEnum): untyped = 313
template RWin*(_: type ScintillaKeysEnum): untyped = 314
template Menu*(_: type ScintillaKeysEnum): untyped = 315


type ScintillaKeyModEnum* = distinct cint
template Norm*(_: type ScintillaKeyModEnum): untyped = 0
template Shift*(_: type ScintillaKeyModEnum): untyped = 1
template Ctrl*(_: type ScintillaKeyModEnum): untyped = 2
template Alt*(_: type ScintillaKeyModEnum): untyped = 4
template Super*(_: type ScintillaKeyModEnum): untyped = 8
template Meta*(_: type ScintillaKeyModEnum): untyped = 16


type ScintillaCompletionMethodsEnum* = distinct cint
template FillUp*(_: type ScintillaCompletionMethodsEnum): untyped = 1
template DoubleClick*(_: type ScintillaCompletionMethodsEnum): untyped = 2
template Tab*(_: type ScintillaCompletionMethodsEnum): untyped = 3
template Newline*(_: type ScintillaCompletionMethodsEnum): untyped = 4
template Command*(_: type ScintillaCompletionMethodsEnum): untyped = 5
template SingleChoice*(_: type ScintillaCompletionMethodsEnum): untyped = 6


type ScintillaCharacterSourceEnum* = distinct cint
template DirectInput*(_: type ScintillaCharacterSourceEnum): untyped = 0
template TentativeInput*(_: type ScintillaCharacterSourceEnum): untyped = 1
template ImeResult*(_: type ScintillaCharacterSourceEnum): untyped = 2


type ScintillaBidirectionalEnum* = distinct cint
template Disabled*(_: type ScintillaBidirectionalEnum): untyped = 0
template L2R*(_: type ScintillaBidirectionalEnum): untyped = 1
template R2L*(_: type ScintillaBidirectionalEnum): untyped = 2


type ScintillaNotificationEnum* = distinct cint
template StyleNeeded*(_: type ScintillaNotificationEnum): untyped = 2000
template CharAdded*(_: type ScintillaNotificationEnum): untyped = 2001
template SavePointReached*(_: type ScintillaNotificationEnum): untyped = 2002
template SavePointLeft*(_: type ScintillaNotificationEnum): untyped = 2003
template ModifyAttemptRO*(_: type ScintillaNotificationEnum): untyped = 2004
template Key*(_: type ScintillaNotificationEnum): untyped = 2005
template DoubleClick*(_: type ScintillaNotificationEnum): untyped = 2006
template UpdateUI*(_: type ScintillaNotificationEnum): untyped = 2007
template Modified*(_: type ScintillaNotificationEnum): untyped = 2008
template MacroRecord*(_: type ScintillaNotificationEnum): untyped = 2009
template MarginClick*(_: type ScintillaNotificationEnum): untyped = 2010
template NeedShown*(_: type ScintillaNotificationEnum): untyped = 2011
template Painted*(_: type ScintillaNotificationEnum): untyped = 2013
template UserListSelection*(_: type ScintillaNotificationEnum): untyped = 2014
template URIDropped*(_: type ScintillaNotificationEnum): untyped = 2015
template DwellStart*(_: type ScintillaNotificationEnum): untyped = 2016
template DwellEnd*(_: type ScintillaNotificationEnum): untyped = 2017
template Zoom*(_: type ScintillaNotificationEnum): untyped = 2018
template HotSpotClick*(_: type ScintillaNotificationEnum): untyped = 2019
template HotSpotDoubleClick*(_: type ScintillaNotificationEnum): untyped = 2020
template CallTipClick*(_: type ScintillaNotificationEnum): untyped = 2021
template AutoCSelection*(_: type ScintillaNotificationEnum): untyped = 2022
template IndicatorClick*(_: type ScintillaNotificationEnum): untyped = 2023
template IndicatorRelease*(_: type ScintillaNotificationEnum): untyped = 2024
template AutoCCancelled*(_: type ScintillaNotificationEnum): untyped = 2025
template AutoCCharDeleted*(_: type ScintillaNotificationEnum): untyped = 2026
template HotSpotReleaseClick*(_: type ScintillaNotificationEnum): untyped = 2027
template FocusIn*(_: type ScintillaNotificationEnum): untyped = 2028
template FocusOut*(_: type ScintillaNotificationEnum): untyped = 2029
template AutoCCompleted*(_: type ScintillaNotificationEnum): untyped = 2030
template MarginRightClick*(_: type ScintillaNotificationEnum): untyped = 2031
template AutoCSelectionChange*(_: type ScintillaNotificationEnum): untyped = 2032


type ScintillaMessageEnum* = distinct cint
template AddText*(_: type ScintillaMessageEnum): untyped = 2001
template AddStyledText*(_: type ScintillaMessageEnum): untyped = 2002
template InsertText*(_: type ScintillaMessageEnum): untyped = 2003
template ChangeInsertion*(_: type ScintillaMessageEnum): untyped = 2672
template ClearAll*(_: type ScintillaMessageEnum): untyped = 2004
template DeleteRange*(_: type ScintillaMessageEnum): untyped = 2645
template ClearDocumentStyle*(_: type ScintillaMessageEnum): untyped = 2005
template GetLength*(_: type ScintillaMessageEnum): untyped = 2006
template GetCharAt*(_: type ScintillaMessageEnum): untyped = 2007
template GetCurrentPos*(_: type ScintillaMessageEnum): untyped = 2008
template GetAnchor*(_: type ScintillaMessageEnum): untyped = 2009
template GetStyleAt*(_: type ScintillaMessageEnum): untyped = 2010
template GetStyleIndexAt*(_: type ScintillaMessageEnum): untyped = 2038
template Redo*(_: type ScintillaMessageEnum): untyped = 2011
template SetUndoCollection*(_: type ScintillaMessageEnum): untyped = 2012
template SelectAll*(_: type ScintillaMessageEnum): untyped = 2013
template SetSavePoint*(_: type ScintillaMessageEnum): untyped = 2014
template GetStyledText*(_: type ScintillaMessageEnum): untyped = 2015
template GetStyledTextFull*(_: type ScintillaMessageEnum): untyped = 2778
template CanRedo*(_: type ScintillaMessageEnum): untyped = 2016
template MarkerLineFromHandle*(_: type ScintillaMessageEnum): untyped = 2017
template MarkerDeleteHandle*(_: type ScintillaMessageEnum): untyped = 2018
template MarkerHandleFromLine*(_: type ScintillaMessageEnum): untyped = 2732
template MarkerNumberFromLine*(_: type ScintillaMessageEnum): untyped = 2733
template GetUndoCollection*(_: type ScintillaMessageEnum): untyped = 2019
template GetViewWS*(_: type ScintillaMessageEnum): untyped = 2020
template SetViewWS*(_: type ScintillaMessageEnum): untyped = 2021
template GetTabDrawMode*(_: type ScintillaMessageEnum): untyped = 2698
template SetTabDrawMode*(_: type ScintillaMessageEnum): untyped = 2699
template PositionFromPoint*(_: type ScintillaMessageEnum): untyped = 2022
template PositionFromPointClose*(_: type ScintillaMessageEnum): untyped = 2023
template GotoLine*(_: type ScintillaMessageEnum): untyped = 2024
template GotoPos*(_: type ScintillaMessageEnum): untyped = 2025
template SetAnchor*(_: type ScintillaMessageEnum): untyped = 2026
template GetCurLine*(_: type ScintillaMessageEnum): untyped = 2027
template GetEndStyled*(_: type ScintillaMessageEnum): untyped = 2028
template ConvertEOLs*(_: type ScintillaMessageEnum): untyped = 2029
template GetEOLMode*(_: type ScintillaMessageEnum): untyped = 2030
template SetEOLMode*(_: type ScintillaMessageEnum): untyped = 2031
template StartStyling*(_: type ScintillaMessageEnum): untyped = 2032
template SetStyling*(_: type ScintillaMessageEnum): untyped = 2033
template GetBufferedDraw*(_: type ScintillaMessageEnum): untyped = 2034
template SetBufferedDraw*(_: type ScintillaMessageEnum): untyped = 2035
template SetTabWidth*(_: type ScintillaMessageEnum): untyped = 2036
template GetTabWidth*(_: type ScintillaMessageEnum): untyped = 2121
template SetTabMinimumWidth*(_: type ScintillaMessageEnum): untyped = 2724
template GetTabMinimumWidth*(_: type ScintillaMessageEnum): untyped = 2725
template ClearTabStops*(_: type ScintillaMessageEnum): untyped = 2675
template AddTabStop*(_: type ScintillaMessageEnum): untyped = 2676
template GetNextTabStop*(_: type ScintillaMessageEnum): untyped = 2677
template SetCodePage*(_: type ScintillaMessageEnum): untyped = 2037
template SetFontLocale*(_: type ScintillaMessageEnum): untyped = 2760
template GetFontLocale*(_: type ScintillaMessageEnum): untyped = 2761
template GetIMEInteraction*(_: type ScintillaMessageEnum): untyped = 2678
template SetIMEInteraction*(_: type ScintillaMessageEnum): untyped = 2679
template MarkerDefine*(_: type ScintillaMessageEnum): untyped = 2040
template MarkerSetFore*(_: type ScintillaMessageEnum): untyped = 2041
template MarkerSetBack*(_: type ScintillaMessageEnum): untyped = 2042
template MarkerSetBackSelected*(_: type ScintillaMessageEnum): untyped = 2292
template MarkerSetForeTranslucent*(_: type ScintillaMessageEnum): untyped = 2294
template MarkerSetBackTranslucent*(_: type ScintillaMessageEnum): untyped = 2295
template MarkerSetBackSelectedTranslucent*(_: type ScintillaMessageEnum): untyped = 2296
template MarkerSetStrokeWidth*(_: type ScintillaMessageEnum): untyped = 2297
template MarkerEnableHighlight*(_: type ScintillaMessageEnum): untyped = 2293
template MarkerAdd*(_: type ScintillaMessageEnum): untyped = 2043
template MarkerDelete*(_: type ScintillaMessageEnum): untyped = 2044
template MarkerDeleteAll*(_: type ScintillaMessageEnum): untyped = 2045
template MarkerGet*(_: type ScintillaMessageEnum): untyped = 2046
template MarkerNext*(_: type ScintillaMessageEnum): untyped = 2047
template MarkerPrevious*(_: type ScintillaMessageEnum): untyped = 2048
template MarkerDefinePixmap*(_: type ScintillaMessageEnum): untyped = 2049
template MarkerAddSet*(_: type ScintillaMessageEnum): untyped = 2466
template MarkerSetAlpha*(_: type ScintillaMessageEnum): untyped = 2476
template MarkerGetLayer*(_: type ScintillaMessageEnum): untyped = 2734
template MarkerSetLayer*(_: type ScintillaMessageEnum): untyped = 2735
template SetMarginTypeN*(_: type ScintillaMessageEnum): untyped = 2240
template GetMarginTypeN*(_: type ScintillaMessageEnum): untyped = 2241
template SetMarginWidthN*(_: type ScintillaMessageEnum): untyped = 2242
template GetMarginWidthN*(_: type ScintillaMessageEnum): untyped = 2243
template SetMarginMaskN*(_: type ScintillaMessageEnum): untyped = 2244
template GetMarginMaskN*(_: type ScintillaMessageEnum): untyped = 2245
template SetMarginSensitiveN*(_: type ScintillaMessageEnum): untyped = 2246
template GetMarginSensitiveN*(_: type ScintillaMessageEnum): untyped = 2247
template SetMarginCursorN*(_: type ScintillaMessageEnum): untyped = 2248
template GetMarginCursorN*(_: type ScintillaMessageEnum): untyped = 2249
template SetMarginBackN*(_: type ScintillaMessageEnum): untyped = 2250
template GetMarginBackN*(_: type ScintillaMessageEnum): untyped = 2251
template SetMargins*(_: type ScintillaMessageEnum): untyped = 2252
template GetMargins*(_: type ScintillaMessageEnum): untyped = 2253
template StyleClearAll*(_: type ScintillaMessageEnum): untyped = 2050
template StyleSetFore*(_: type ScintillaMessageEnum): untyped = 2051
template StyleSetBack*(_: type ScintillaMessageEnum): untyped = 2052
template StyleSetBold*(_: type ScintillaMessageEnum): untyped = 2053
template StyleSetItalic*(_: type ScintillaMessageEnum): untyped = 2054
template StyleSetSize*(_: type ScintillaMessageEnum): untyped = 2055
template StyleSetFont*(_: type ScintillaMessageEnum): untyped = 2056
template StyleSetEOLFilled*(_: type ScintillaMessageEnum): untyped = 2057
template StyleResetDefault*(_: type ScintillaMessageEnum): untyped = 2058
template StyleSetUnderline*(_: type ScintillaMessageEnum): untyped = 2059
template StyleGetFore*(_: type ScintillaMessageEnum): untyped = 2481
template StyleGetBack*(_: type ScintillaMessageEnum): untyped = 2482
template StyleGetBold*(_: type ScintillaMessageEnum): untyped = 2483
template StyleGetItalic*(_: type ScintillaMessageEnum): untyped = 2484
template StyleGetSize*(_: type ScintillaMessageEnum): untyped = 2485
template StyleGetFont*(_: type ScintillaMessageEnum): untyped = 2486
template StyleGetEOLFilled*(_: type ScintillaMessageEnum): untyped = 2487
template StyleGetUnderline*(_: type ScintillaMessageEnum): untyped = 2488
template StyleGetCase*(_: type ScintillaMessageEnum): untyped = 2489
template StyleGetCharacterSet*(_: type ScintillaMessageEnum): untyped = 2490
template StyleGetVisible*(_: type ScintillaMessageEnum): untyped = 2491
template StyleGetChangeable*(_: type ScintillaMessageEnum): untyped = 2492
template StyleGetHotSpot*(_: type ScintillaMessageEnum): untyped = 2493
template StyleSetCase*(_: type ScintillaMessageEnum): untyped = 2060
template StyleSetSizeFractional*(_: type ScintillaMessageEnum): untyped = 2061
template StyleGetSizeFractional*(_: type ScintillaMessageEnum): untyped = 2062
template StyleSetWeight*(_: type ScintillaMessageEnum): untyped = 2063
template StyleGetWeight*(_: type ScintillaMessageEnum): untyped = 2064
template StyleSetCharacterSet*(_: type ScintillaMessageEnum): untyped = 2066
template StyleSetHotSpot*(_: type ScintillaMessageEnum): untyped = 2409
template StyleSetCheckMonospaced*(_: type ScintillaMessageEnum): untyped = 2254
template StyleGetCheckMonospaced*(_: type ScintillaMessageEnum): untyped = 2255
template StyleSetStretch*(_: type ScintillaMessageEnum): untyped = 2258
template StyleGetStretch*(_: type ScintillaMessageEnum): untyped = 2259
template StyleSetInvisibleRepresentation*(_: type ScintillaMessageEnum): untyped = 2256
template StyleGetInvisibleRepresentation*(_: type ScintillaMessageEnum): untyped = 2257
template SetElementColour*(_: type ScintillaMessageEnum): untyped = 2753
template GetElementColour*(_: type ScintillaMessageEnum): untyped = 2754
template ResetElementColour*(_: type ScintillaMessageEnum): untyped = 2755
template GetElementIsSet*(_: type ScintillaMessageEnum): untyped = 2756
template GetElementAllowsTranslucent*(_: type ScintillaMessageEnum): untyped = 2757
template GetElementBaseColour*(_: type ScintillaMessageEnum): untyped = 2758
template SetSelFore*(_: type ScintillaMessageEnum): untyped = 2067
template SetSelBack*(_: type ScintillaMessageEnum): untyped = 2068
template GetSelAlpha*(_: type ScintillaMessageEnum): untyped = 2477
template SetSelAlpha*(_: type ScintillaMessageEnum): untyped = 2478
template GetSelEOLFilled*(_: type ScintillaMessageEnum): untyped = 2479
template SetSelEOLFilled*(_: type ScintillaMessageEnum): untyped = 2480
template GetSelectionLayer*(_: type ScintillaMessageEnum): untyped = 2762
template SetSelectionLayer*(_: type ScintillaMessageEnum): untyped = 2763
template GetCaretLineLayer*(_: type ScintillaMessageEnum): untyped = 2764
template SetCaretLineLayer*(_: type ScintillaMessageEnum): untyped = 2765
template GetCaretLineHighlightSubLine*(_: type ScintillaMessageEnum): untyped = 2773
template SetCaretLineHighlightSubLine*(_: type ScintillaMessageEnum): untyped = 2774
template SetCaretFore*(_: type ScintillaMessageEnum): untyped = 2069
template AssignCmdKey*(_: type ScintillaMessageEnum): untyped = 2070
template ClearCmdKey*(_: type ScintillaMessageEnum): untyped = 2071
template ClearAllCmdKeys*(_: type ScintillaMessageEnum): untyped = 2072
template SetStylingEx*(_: type ScintillaMessageEnum): untyped = 2073
template StyleSetVisible*(_: type ScintillaMessageEnum): untyped = 2074
template GetCaretPeriod*(_: type ScintillaMessageEnum): untyped = 2075
template SetCaretPeriod*(_: type ScintillaMessageEnum): untyped = 2076
template SetWordChars*(_: type ScintillaMessageEnum): untyped = 2077
template GetWordChars*(_: type ScintillaMessageEnum): untyped = 2646
template SetCharacterCategoryOptimization*(_: type ScintillaMessageEnum): untyped = 2720
template GetCharacterCategoryOptimization*(_: type ScintillaMessageEnum): untyped = 2721
template BeginUndoAction*(_: type ScintillaMessageEnum): untyped = 2078
template EndUndoAction*(_: type ScintillaMessageEnum): untyped = 2079
template GetUndoSequence*(_: type ScintillaMessageEnum): untyped = 2799
template GetUndoActions*(_: type ScintillaMessageEnum): untyped = 2790
template SetUndoSavePoint*(_: type ScintillaMessageEnum): untyped = 2791
template GetUndoSavePoint*(_: type ScintillaMessageEnum): untyped = 2792
template SetUndoDetach*(_: type ScintillaMessageEnum): untyped = 2793
template GetUndoDetach*(_: type ScintillaMessageEnum): untyped = 2794
template SetUndoTentative*(_: type ScintillaMessageEnum): untyped = 2795
template GetUndoTentative*(_: type ScintillaMessageEnum): untyped = 2796
template SetUndoCurrent*(_: type ScintillaMessageEnum): untyped = 2797
template GetUndoCurrent*(_: type ScintillaMessageEnum): untyped = 2798
template PushUndoActionType*(_: type ScintillaMessageEnum): untyped = 2800
template ChangeLastUndoActionText*(_: type ScintillaMessageEnum): untyped = 2801
template GetUndoActionType*(_: type ScintillaMessageEnum): untyped = 2802
template GetUndoActionPosition*(_: type ScintillaMessageEnum): untyped = 2803
template GetUndoActionText*(_: type ScintillaMessageEnum): untyped = 2804
template IndicSetStyle*(_: type ScintillaMessageEnum): untyped = 2080
template IndicGetStyle*(_: type ScintillaMessageEnum): untyped = 2081
template IndicSetFore*(_: type ScintillaMessageEnum): untyped = 2082
template IndicGetFore*(_: type ScintillaMessageEnum): untyped = 2083
template IndicSetUnder*(_: type ScintillaMessageEnum): untyped = 2510
template IndicGetUnder*(_: type ScintillaMessageEnum): untyped = 2511
template IndicSetHoverStyle*(_: type ScintillaMessageEnum): untyped = 2680
template IndicGetHoverStyle*(_: type ScintillaMessageEnum): untyped = 2681
template IndicSetHoverFore*(_: type ScintillaMessageEnum): untyped = 2682
template IndicGetHoverFore*(_: type ScintillaMessageEnum): untyped = 2683
template IndicSetFlags*(_: type ScintillaMessageEnum): untyped = 2684
template IndicGetFlags*(_: type ScintillaMessageEnum): untyped = 2685
template IndicSetStrokeWidth*(_: type ScintillaMessageEnum): untyped = 2751
template IndicGetStrokeWidth*(_: type ScintillaMessageEnum): untyped = 2752
template SetWhitespaceFore*(_: type ScintillaMessageEnum): untyped = 2084
template SetWhitespaceBack*(_: type ScintillaMessageEnum): untyped = 2085
template SetWhitespaceSize*(_: type ScintillaMessageEnum): untyped = 2086
template GetWhitespaceSize*(_: type ScintillaMessageEnum): untyped = 2087
template SetLineState*(_: type ScintillaMessageEnum): untyped = 2092
template GetLineState*(_: type ScintillaMessageEnum): untyped = 2093
template GetMaxLineState*(_: type ScintillaMessageEnum): untyped = 2094
template GetCaretLineVisible*(_: type ScintillaMessageEnum): untyped = 2095
template SetCaretLineVisible*(_: type ScintillaMessageEnum): untyped = 2096
template GetCaretLineBack*(_: type ScintillaMessageEnum): untyped = 2097
template SetCaretLineBack*(_: type ScintillaMessageEnum): untyped = 2098
template GetCaretLineFrame*(_: type ScintillaMessageEnum): untyped = 2704
template SetCaretLineFrame*(_: type ScintillaMessageEnum): untyped = 2705
template StyleSetChangeable*(_: type ScintillaMessageEnum): untyped = 2099
template AutoCShow*(_: type ScintillaMessageEnum): untyped = 2100
template AutoCCancel*(_: type ScintillaMessageEnum): untyped = 2101
template AutoCActive*(_: type ScintillaMessageEnum): untyped = 2102
template AutoCPosStart*(_: type ScintillaMessageEnum): untyped = 2103
template AutoCComplete*(_: type ScintillaMessageEnum): untyped = 2104
template AutoCStops*(_: type ScintillaMessageEnum): untyped = 2105
template AutoCSetSeparator*(_: type ScintillaMessageEnum): untyped = 2106
template AutoCGetSeparator*(_: type ScintillaMessageEnum): untyped = 2107
template AutoCSelect*(_: type ScintillaMessageEnum): untyped = 2108
template AutoCSetCancelAtStart*(_: type ScintillaMessageEnum): untyped = 2110
template AutoCGetCancelAtStart*(_: type ScintillaMessageEnum): untyped = 2111
template AutoCSetFillUps*(_: type ScintillaMessageEnum): untyped = 2112
template AutoCSetChooseSingle*(_: type ScintillaMessageEnum): untyped = 2113
template AutoCGetChooseSingle*(_: type ScintillaMessageEnum): untyped = 2114
template AutoCSetIgnoreCase*(_: type ScintillaMessageEnum): untyped = 2115
template AutoCGetIgnoreCase*(_: type ScintillaMessageEnum): untyped = 2116
template UserListShow*(_: type ScintillaMessageEnum): untyped = 2117
template AutoCSetAutoHide*(_: type ScintillaMessageEnum): untyped = 2118
template AutoCGetAutoHide*(_: type ScintillaMessageEnum): untyped = 2119
template AutoCSetOptions*(_: type ScintillaMessageEnum): untyped = 2638
template AutoCGetOptions*(_: type ScintillaMessageEnum): untyped = 2639
template AutoCSetDropRestOfWord*(_: type ScintillaMessageEnum): untyped = 2270
template AutoCGetDropRestOfWord*(_: type ScintillaMessageEnum): untyped = 2271
template RegisterImage*(_: type ScintillaMessageEnum): untyped = 2405
template ClearRegisteredImages*(_: type ScintillaMessageEnum): untyped = 2408
template AutoCGetTypeSeparator*(_: type ScintillaMessageEnum): untyped = 2285
template AutoCSetTypeSeparator*(_: type ScintillaMessageEnum): untyped = 2286
template AutoCSetMaxWidth*(_: type ScintillaMessageEnum): untyped = 2208
template AutoCGetMaxWidth*(_: type ScintillaMessageEnum): untyped = 2209
template AutoCSetMaxHeight*(_: type ScintillaMessageEnum): untyped = 2210
template AutoCGetMaxHeight*(_: type ScintillaMessageEnum): untyped = 2211
template AutoCSetStyle*(_: type ScintillaMessageEnum): untyped = 2109
template AutoCGetStyle*(_: type ScintillaMessageEnum): untyped = 2120
template SetIndent*(_: type ScintillaMessageEnum): untyped = 2122
template GetIndent*(_: type ScintillaMessageEnum): untyped = 2123
template SetUseTabs*(_: type ScintillaMessageEnum): untyped = 2124
template GetUseTabs*(_: type ScintillaMessageEnum): untyped = 2125
template SetLineIndentation*(_: type ScintillaMessageEnum): untyped = 2126
template GetLineIndentation*(_: type ScintillaMessageEnum): untyped = 2127
template GetLineIndentPosition*(_: type ScintillaMessageEnum): untyped = 2128
template GetColumn*(_: type ScintillaMessageEnum): untyped = 2129
template CountCharacters*(_: type ScintillaMessageEnum): untyped = 2633
template CountCodeUnits*(_: type ScintillaMessageEnum): untyped = 2715
template SetHScrollBar*(_: type ScintillaMessageEnum): untyped = 2130
template GetHScrollBar*(_: type ScintillaMessageEnum): untyped = 2131
template SetIndentationGuides*(_: type ScintillaMessageEnum): untyped = 2132
template GetIndentationGuides*(_: type ScintillaMessageEnum): untyped = 2133
template SetHighlightGuide*(_: type ScintillaMessageEnum): untyped = 2134
template GetHighlightGuide*(_: type ScintillaMessageEnum): untyped = 2135
template GetLineEndPosition*(_: type ScintillaMessageEnum): untyped = 2136
template GetCodePage*(_: type ScintillaMessageEnum): untyped = 2137
template GetCaretFore*(_: type ScintillaMessageEnum): untyped = 2138
template GetReadOnly*(_: type ScintillaMessageEnum): untyped = 2140
template SetCurrentPos*(_: type ScintillaMessageEnum): untyped = 2141
template SetSelectionStart*(_: type ScintillaMessageEnum): untyped = 2142
template GetSelectionStart*(_: type ScintillaMessageEnum): untyped = 2143
template SetSelectionEnd*(_: type ScintillaMessageEnum): untyped = 2144
template GetSelectionEnd*(_: type ScintillaMessageEnum): untyped = 2145
template SetEmptySelection*(_: type ScintillaMessageEnum): untyped = 2556
template SetPrintMagnification*(_: type ScintillaMessageEnum): untyped = 2146
template GetPrintMagnification*(_: type ScintillaMessageEnum): untyped = 2147
template SetPrintColourMode*(_: type ScintillaMessageEnum): untyped = 2148
template GetPrintColourMode*(_: type ScintillaMessageEnum): untyped = 2149
template FindText*(_: type ScintillaMessageEnum): untyped = 2150
template FindTextFull*(_: type ScintillaMessageEnum): untyped = 2196
template FormatRange*(_: type ScintillaMessageEnum): untyped = 2151
template FormatRangeFull*(_: type ScintillaMessageEnum): untyped = 2777
template SetChangeHistory*(_: type ScintillaMessageEnum): untyped = 2780
template GetChangeHistory*(_: type ScintillaMessageEnum): untyped = 2781
template GetFirstVisibleLine*(_: type ScintillaMessageEnum): untyped = 2152
template GetLine*(_: type ScintillaMessageEnum): untyped = 2153
template GetLineCount*(_: type ScintillaMessageEnum): untyped = 2154
template AllocateLines*(_: type ScintillaMessageEnum): untyped = 2089
template SetMarginLeft*(_: type ScintillaMessageEnum): untyped = 2155
template GetMarginLeft*(_: type ScintillaMessageEnum): untyped = 2156
template SetMarginRight*(_: type ScintillaMessageEnum): untyped = 2157
template GetMarginRight*(_: type ScintillaMessageEnum): untyped = 2158
template GetModify*(_: type ScintillaMessageEnum): untyped = 2159
template SetSel*(_: type ScintillaMessageEnum): untyped = 2160
template GetSelText*(_: type ScintillaMessageEnum): untyped = 2161
template GetTextRange*(_: type ScintillaMessageEnum): untyped = 2162
template GetTextRangeFull*(_: type ScintillaMessageEnum): untyped = 2039
template HideSelection*(_: type ScintillaMessageEnum): untyped = 2163
template GetSelectionHidden*(_: type ScintillaMessageEnum): untyped = 2088
template PointXFromPosition*(_: type ScintillaMessageEnum): untyped = 2164
template PointYFromPosition*(_: type ScintillaMessageEnum): untyped = 2165
template LineFromPosition*(_: type ScintillaMessageEnum): untyped = 2166
template PositionFromLine*(_: type ScintillaMessageEnum): untyped = 2167
template LineScroll*(_: type ScintillaMessageEnum): untyped = 2168
template ScrollCaret*(_: type ScintillaMessageEnum): untyped = 2169
template ScrollRange*(_: type ScintillaMessageEnum): untyped = 2569
template ReplaceSel*(_: type ScintillaMessageEnum): untyped = 2170
template SetReadOnly*(_: type ScintillaMessageEnum): untyped = 2171
template Null*(_: type ScintillaMessageEnum): untyped = 2172
template CanPaste*(_: type ScintillaMessageEnum): untyped = 2173
template CanUndo*(_: type ScintillaMessageEnum): untyped = 2174
template EmptyUndoBuffer*(_: type ScintillaMessageEnum): untyped = 2175
template Undo*(_: type ScintillaMessageEnum): untyped = 2176
template Cut*(_: type ScintillaMessageEnum): untyped = 2177
template Copy*(_: type ScintillaMessageEnum): untyped = 2178
template Paste*(_: type ScintillaMessageEnum): untyped = 2179
template Clear*(_: type ScintillaMessageEnum): untyped = 2180
template SetText*(_: type ScintillaMessageEnum): untyped = 2181
template GetText*(_: type ScintillaMessageEnum): untyped = 2182
template GetTextLength*(_: type ScintillaMessageEnum): untyped = 2183
template GetDirectFunction*(_: type ScintillaMessageEnum): untyped = 2184
template GetDirectStatusFunction*(_: type ScintillaMessageEnum): untyped = 2772
template GetDirectPointer*(_: type ScintillaMessageEnum): untyped = 2185
template SetOvertype*(_: type ScintillaMessageEnum): untyped = 2186
template GetOvertype*(_: type ScintillaMessageEnum): untyped = 2187
template SetCaretWidth*(_: type ScintillaMessageEnum): untyped = 2188
template GetCaretWidth*(_: type ScintillaMessageEnum): untyped = 2189
template SetTargetStart*(_: type ScintillaMessageEnum): untyped = 2190
template GetTargetStart*(_: type ScintillaMessageEnum): untyped = 2191
template SetTargetStartVirtualSpace*(_: type ScintillaMessageEnum): untyped = 2728
template GetTargetStartVirtualSpace*(_: type ScintillaMessageEnum): untyped = 2729
template SetTargetEnd*(_: type ScintillaMessageEnum): untyped = 2192
template GetTargetEnd*(_: type ScintillaMessageEnum): untyped = 2193
template SetTargetEndVirtualSpace*(_: type ScintillaMessageEnum): untyped = 2730
template GetTargetEndVirtualSpace*(_: type ScintillaMessageEnum): untyped = 2731
template SetTargetRange*(_: type ScintillaMessageEnum): untyped = 2686
template GetTargetText*(_: type ScintillaMessageEnum): untyped = 2687
template TargetFromSelection*(_: type ScintillaMessageEnum): untyped = 2287
template TargetWholeDocument*(_: type ScintillaMessageEnum): untyped = 2690
template ReplaceTarget*(_: type ScintillaMessageEnum): untyped = 2194
template ReplaceTargetRE*(_: type ScintillaMessageEnum): untyped = 2195
template ReplaceTargetMinimal*(_: type ScintillaMessageEnum): untyped = 2779
template SearchInTarget*(_: type ScintillaMessageEnum): untyped = 2197
template SetSearchFlags*(_: type ScintillaMessageEnum): untyped = 2198
template GetSearchFlags*(_: type ScintillaMessageEnum): untyped = 2199
template CallTipShow*(_: type ScintillaMessageEnum): untyped = 2200
template CallTipCancel*(_: type ScintillaMessageEnum): untyped = 2201
template CallTipActive*(_: type ScintillaMessageEnum): untyped = 2202
template CallTipPosStart*(_: type ScintillaMessageEnum): untyped = 2203
template CallTipSetPosStart*(_: type ScintillaMessageEnum): untyped = 2214
template CallTipSetHlt*(_: type ScintillaMessageEnum): untyped = 2204
template CallTipSetBack*(_: type ScintillaMessageEnum): untyped = 2205
template CallTipSetFore*(_: type ScintillaMessageEnum): untyped = 2206
template CallTipSetForeHlt*(_: type ScintillaMessageEnum): untyped = 2207
template CallTipUseStyle*(_: type ScintillaMessageEnum): untyped = 2212
template CallTipSetPosition*(_: type ScintillaMessageEnum): untyped = 2213
template VisibleFromDocLine*(_: type ScintillaMessageEnum): untyped = 2220
template DocLineFromVisible*(_: type ScintillaMessageEnum): untyped = 2221
template WrapCount*(_: type ScintillaMessageEnum): untyped = 2235
template SetFoldLevel*(_: type ScintillaMessageEnum): untyped = 2222
template GetFoldLevel*(_: type ScintillaMessageEnum): untyped = 2223
template GetLastChild*(_: type ScintillaMessageEnum): untyped = 2224
template GetFoldParent*(_: type ScintillaMessageEnum): untyped = 2225
template ShowLines*(_: type ScintillaMessageEnum): untyped = 2226
template HideLines*(_: type ScintillaMessageEnum): untyped = 2227
template GetLineVisible*(_: type ScintillaMessageEnum): untyped = 2228
template GetAllLinesVisible*(_: type ScintillaMessageEnum): untyped = 2236
template SetFoldExpanded*(_: type ScintillaMessageEnum): untyped = 2229
template GetFoldExpanded*(_: type ScintillaMessageEnum): untyped = 2230
template ToggleFold*(_: type ScintillaMessageEnum): untyped = 2231
template ToggleFoldShowText*(_: type ScintillaMessageEnum): untyped = 2700
template FoldDisplayTextSetStyle*(_: type ScintillaMessageEnum): untyped = 2701
template FoldDisplayTextGetStyle*(_: type ScintillaMessageEnum): untyped = 2707
template SetDefaultFoldDisplayText*(_: type ScintillaMessageEnum): untyped = 2722
template GetDefaultFoldDisplayText*(_: type ScintillaMessageEnum): untyped = 2723
template FoldLine*(_: type ScintillaMessageEnum): untyped = 2237
template FoldChildren*(_: type ScintillaMessageEnum): untyped = 2238
template ExpandChildren*(_: type ScintillaMessageEnum): untyped = 2239
template FoldAll*(_: type ScintillaMessageEnum): untyped = 2662
template EnsureVisible*(_: type ScintillaMessageEnum): untyped = 2232
template SetAutomaticFold*(_: type ScintillaMessageEnum): untyped = 2663
template GetAutomaticFold*(_: type ScintillaMessageEnum): untyped = 2664
template SetFoldFlags*(_: type ScintillaMessageEnum): untyped = 2233
template EnsureVisibleEnforcePolicy*(_: type ScintillaMessageEnum): untyped = 2234
template SetTabIndents*(_: type ScintillaMessageEnum): untyped = 2260
template GetTabIndents*(_: type ScintillaMessageEnum): untyped = 2261
template SetBackSpaceUnIndents*(_: type ScintillaMessageEnum): untyped = 2262
template GetBackSpaceUnIndents*(_: type ScintillaMessageEnum): untyped = 2263
template SetMouseDwellTime*(_: type ScintillaMessageEnum): untyped = 2264
template GetMouseDwellTime*(_: type ScintillaMessageEnum): untyped = 2265
template WordStartPosition*(_: type ScintillaMessageEnum): untyped = 2266
template WordEndPosition*(_: type ScintillaMessageEnum): untyped = 2267
template IsRangeWord*(_: type ScintillaMessageEnum): untyped = 2691
template SetIdleStyling*(_: type ScintillaMessageEnum): untyped = 2692
template GetIdleStyling*(_: type ScintillaMessageEnum): untyped = 2693
template SetWrapMode*(_: type ScintillaMessageEnum): untyped = 2268
template GetWrapMode*(_: type ScintillaMessageEnum): untyped = 2269
template SetWrapVisualFlags*(_: type ScintillaMessageEnum): untyped = 2460
template GetWrapVisualFlags*(_: type ScintillaMessageEnum): untyped = 2461
template SetWrapVisualFlagsLocation*(_: type ScintillaMessageEnum): untyped = 2462
template GetWrapVisualFlagsLocation*(_: type ScintillaMessageEnum): untyped = 2463
template SetWrapStartIndent*(_: type ScintillaMessageEnum): untyped = 2464
template GetWrapStartIndent*(_: type ScintillaMessageEnum): untyped = 2465
template SetWrapIndentMode*(_: type ScintillaMessageEnum): untyped = 2472
template GetWrapIndentMode*(_: type ScintillaMessageEnum): untyped = 2473
template SetLayoutCache*(_: type ScintillaMessageEnum): untyped = 2272
template GetLayoutCache*(_: type ScintillaMessageEnum): untyped = 2273
template SetScrollWidth*(_: type ScintillaMessageEnum): untyped = 2274
template GetScrollWidth*(_: type ScintillaMessageEnum): untyped = 2275
template SetScrollWidthTracking*(_: type ScintillaMessageEnum): untyped = 2516
template GetScrollWidthTracking*(_: type ScintillaMessageEnum): untyped = 2517
template TextWidth*(_: type ScintillaMessageEnum): untyped = 2276
template SetEndAtLastLine*(_: type ScintillaMessageEnum): untyped = 2277
template GetEndAtLastLine*(_: type ScintillaMessageEnum): untyped = 2278
template TextHeight*(_: type ScintillaMessageEnum): untyped = 2279
template SetVScrollBar*(_: type ScintillaMessageEnum): untyped = 2280
template GetVScrollBar*(_: type ScintillaMessageEnum): untyped = 2281
template AppendText*(_: type ScintillaMessageEnum): untyped = 2282
template GetPhasesDraw*(_: type ScintillaMessageEnum): untyped = 2673
template SetPhasesDraw*(_: type ScintillaMessageEnum): untyped = 2674
template SetFontQuality*(_: type ScintillaMessageEnum): untyped = 2611
template GetFontQuality*(_: type ScintillaMessageEnum): untyped = 2612
template SetFirstVisibleLine*(_: type ScintillaMessageEnum): untyped = 2613
template SetMultiPaste*(_: type ScintillaMessageEnum): untyped = 2614
template GetMultiPaste*(_: type ScintillaMessageEnum): untyped = 2615
template GetTag*(_: type ScintillaMessageEnum): untyped = 2616
template LinesJoin*(_: type ScintillaMessageEnum): untyped = 2288
template LinesSplit*(_: type ScintillaMessageEnum): untyped = 2289
template SetFoldMarginColour*(_: type ScintillaMessageEnum): untyped = 2290
template SetFoldMarginHiColour*(_: type ScintillaMessageEnum): untyped = 2291
template SetAccessibility*(_: type ScintillaMessageEnum): untyped = 2702
template GetAccessibility*(_: type ScintillaMessageEnum): untyped = 2703
template LineDown*(_: type ScintillaMessageEnum): untyped = 2300
template LineDownExtend*(_: type ScintillaMessageEnum): untyped = 2301
template LineUp*(_: type ScintillaMessageEnum): untyped = 2302
template LineUpExtend*(_: type ScintillaMessageEnum): untyped = 2303
template CharLeft*(_: type ScintillaMessageEnum): untyped = 2304
template CharLeftExtend*(_: type ScintillaMessageEnum): untyped = 2305
template CharRight*(_: type ScintillaMessageEnum): untyped = 2306
template CharRightExtend*(_: type ScintillaMessageEnum): untyped = 2307
template WordLeft*(_: type ScintillaMessageEnum): untyped = 2308
template WordLeftExtend*(_: type ScintillaMessageEnum): untyped = 2309
template WordRight*(_: type ScintillaMessageEnum): untyped = 2310
template WordRightExtend*(_: type ScintillaMessageEnum): untyped = 2311
template Home*(_: type ScintillaMessageEnum): untyped = 2312
template HomeExtend*(_: type ScintillaMessageEnum): untyped = 2313
template LineEnd*(_: type ScintillaMessageEnum): untyped = 2314
template LineEndExtend*(_: type ScintillaMessageEnum): untyped = 2315
template DocumentStart*(_: type ScintillaMessageEnum): untyped = 2316
template DocumentStartExtend*(_: type ScintillaMessageEnum): untyped = 2317
template DocumentEnd*(_: type ScintillaMessageEnum): untyped = 2318
template DocumentEndExtend*(_: type ScintillaMessageEnum): untyped = 2319
template PageUp*(_: type ScintillaMessageEnum): untyped = 2320
template PageUpExtend*(_: type ScintillaMessageEnum): untyped = 2321
template PageDown*(_: type ScintillaMessageEnum): untyped = 2322
template PageDownExtend*(_: type ScintillaMessageEnum): untyped = 2323
template EditToggleOvertype*(_: type ScintillaMessageEnum): untyped = 2324
template Cancel*(_: type ScintillaMessageEnum): untyped = 2325
template DeleteBack*(_: type ScintillaMessageEnum): untyped = 2326
template Tab*(_: type ScintillaMessageEnum): untyped = 2327
template LineIndent*(_: type ScintillaMessageEnum): untyped = 2813
template BackTab*(_: type ScintillaMessageEnum): untyped = 2328
template LineDedent*(_: type ScintillaMessageEnum): untyped = 2814
template NewLine*(_: type ScintillaMessageEnum): untyped = 2329
template FormFeed*(_: type ScintillaMessageEnum): untyped = 2330
template VCHome*(_: type ScintillaMessageEnum): untyped = 2331
template VCHomeExtend*(_: type ScintillaMessageEnum): untyped = 2332
template ZoomIn*(_: type ScintillaMessageEnum): untyped = 2333
template ZoomOut*(_: type ScintillaMessageEnum): untyped = 2334
template DelWordLeft*(_: type ScintillaMessageEnum): untyped = 2335
template DelWordRight*(_: type ScintillaMessageEnum): untyped = 2336
template DelWordRightEnd*(_: type ScintillaMessageEnum): untyped = 2518
template LineCut*(_: type ScintillaMessageEnum): untyped = 2337
template LineDelete*(_: type ScintillaMessageEnum): untyped = 2338
template LineTranspose*(_: type ScintillaMessageEnum): untyped = 2339
template LineReverse*(_: type ScintillaMessageEnum): untyped = 2354
template LineDuplicate*(_: type ScintillaMessageEnum): untyped = 2404
template LowerCase*(_: type ScintillaMessageEnum): untyped = 2340
template UpperCase*(_: type ScintillaMessageEnum): untyped = 2341
template LineScrollDown*(_: type ScintillaMessageEnum): untyped = 2342
template LineScrollUp*(_: type ScintillaMessageEnum): untyped = 2343
template DeleteBackNotLine*(_: type ScintillaMessageEnum): untyped = 2344
template HomeDisplay*(_: type ScintillaMessageEnum): untyped = 2345
template HomeDisplayExtend*(_: type ScintillaMessageEnum): untyped = 2346
template LineEndDisplay*(_: type ScintillaMessageEnum): untyped = 2347
template LineEndDisplayExtend*(_: type ScintillaMessageEnum): untyped = 2348
template HomeWrap*(_: type ScintillaMessageEnum): untyped = 2349
template HomeWrapExtend*(_: type ScintillaMessageEnum): untyped = 2450
template LineEndWrap*(_: type ScintillaMessageEnum): untyped = 2451
template LineEndWrapExtend*(_: type ScintillaMessageEnum): untyped = 2452
template VCHomeWrap*(_: type ScintillaMessageEnum): untyped = 2453
template VCHomeWrapExtend*(_: type ScintillaMessageEnum): untyped = 2454
template LineCopy*(_: type ScintillaMessageEnum): untyped = 2455
template MoveCaretInsideView*(_: type ScintillaMessageEnum): untyped = 2401
template LineLength*(_: type ScintillaMessageEnum): untyped = 2350
template BraceHighlight*(_: type ScintillaMessageEnum): untyped = 2351
template BraceHighlightIndicator*(_: type ScintillaMessageEnum): untyped = 2498
template BraceBadLight*(_: type ScintillaMessageEnum): untyped = 2352
template BraceBadLightIndicator*(_: type ScintillaMessageEnum): untyped = 2499
template BraceMatch*(_: type ScintillaMessageEnum): untyped = 2353
template BraceMatchNext*(_: type ScintillaMessageEnum): untyped = 2369
template GetViewEOL*(_: type ScintillaMessageEnum): untyped = 2355
template SetViewEOL*(_: type ScintillaMessageEnum): untyped = 2356
template GetDocPointer*(_: type ScintillaMessageEnum): untyped = 2357
template SetDocPointer*(_: type ScintillaMessageEnum): untyped = 2358
template SetModEventMask*(_: type ScintillaMessageEnum): untyped = 2359
template GetEdgeColumn*(_: type ScintillaMessageEnum): untyped = 2360
template SetEdgeColumn*(_: type ScintillaMessageEnum): untyped = 2361
template GetEdgeMode*(_: type ScintillaMessageEnum): untyped = 2362
template SetEdgeMode*(_: type ScintillaMessageEnum): untyped = 2363
template GetEdgeColour*(_: type ScintillaMessageEnum): untyped = 2364
template SetEdgeColour*(_: type ScintillaMessageEnum): untyped = 2365
template MultiEdgeAddLine*(_: type ScintillaMessageEnum): untyped = 2694
template MultiEdgeClearAll*(_: type ScintillaMessageEnum): untyped = 2695
template GetMultiEdgeColumn*(_: type ScintillaMessageEnum): untyped = 2749
template SearchAnchor*(_: type ScintillaMessageEnum): untyped = 2366
template SearchNext*(_: type ScintillaMessageEnum): untyped = 2367
template SearchPrev*(_: type ScintillaMessageEnum): untyped = 2368
template LinesOnScreen*(_: type ScintillaMessageEnum): untyped = 2370
template UsePopUp*(_: type ScintillaMessageEnum): untyped = 2371
template SelectionIsRectangle*(_: type ScintillaMessageEnum): untyped = 2372
template SetZoom*(_: type ScintillaMessageEnum): untyped = 2373
template GetZoom*(_: type ScintillaMessageEnum): untyped = 2374
template CreateDocument*(_: type ScintillaMessageEnum): untyped = 2375
template AddRefDocument*(_: type ScintillaMessageEnum): untyped = 2376
template ReleaseDocument*(_: type ScintillaMessageEnum): untyped = 2377
template GetDocumentOptions*(_: type ScintillaMessageEnum): untyped = 2379
template GetModEventMask*(_: type ScintillaMessageEnum): untyped = 2378
template SetCommandEvents*(_: type ScintillaMessageEnum): untyped = 2717
template GetCommandEvents*(_: type ScintillaMessageEnum): untyped = 2718
template SetFocus*(_: type ScintillaMessageEnum): untyped = 2380
template GetFocus*(_: type ScintillaMessageEnum): untyped = 2381
template SetStatus*(_: type ScintillaMessageEnum): untyped = 2382
template GetStatus*(_: type ScintillaMessageEnum): untyped = 2383
template SetMouseDownCaptures*(_: type ScintillaMessageEnum): untyped = 2384
template GetMouseDownCaptures*(_: type ScintillaMessageEnum): untyped = 2385
template SetMouseWheelCaptures*(_: type ScintillaMessageEnum): untyped = 2696
template GetMouseWheelCaptures*(_: type ScintillaMessageEnum): untyped = 2697
template SetCursor*(_: type ScintillaMessageEnum): untyped = 2386
template GetCursor*(_: type ScintillaMessageEnum): untyped = 2387
template SetControlCharSymbol*(_: type ScintillaMessageEnum): untyped = 2388
template GetControlCharSymbol*(_: type ScintillaMessageEnum): untyped = 2389
template WordPartLeft*(_: type ScintillaMessageEnum): untyped = 2390
template WordPartLeftExtend*(_: type ScintillaMessageEnum): untyped = 2391
template WordPartRight*(_: type ScintillaMessageEnum): untyped = 2392
template WordPartRightExtend*(_: type ScintillaMessageEnum): untyped = 2393
template SetVisiblePolicy*(_: type ScintillaMessageEnum): untyped = 2394
template DelLineLeft*(_: type ScintillaMessageEnum): untyped = 2395
template DelLineRight*(_: type ScintillaMessageEnum): untyped = 2396
template SetXOffset*(_: type ScintillaMessageEnum): untyped = 2397
template GetXOffset*(_: type ScintillaMessageEnum): untyped = 2398
template ChooseCaretX*(_: type ScintillaMessageEnum): untyped = 2399
template GrabFocus*(_: type ScintillaMessageEnum): untyped = 2400
template SetXCaretPolicy*(_: type ScintillaMessageEnum): untyped = 2402
template SetYCaretPolicy*(_: type ScintillaMessageEnum): untyped = 2403
template SetPrintWrapMode*(_: type ScintillaMessageEnum): untyped = 2406
template GetPrintWrapMode*(_: type ScintillaMessageEnum): untyped = 2407
template SetHotspotActiveFore*(_: type ScintillaMessageEnum): untyped = 2410
template GetHotspotActiveFore*(_: type ScintillaMessageEnum): untyped = 2494
template SetHotspotActiveBack*(_: type ScintillaMessageEnum): untyped = 2411
template GetHotspotActiveBack*(_: type ScintillaMessageEnum): untyped = 2495
template SetHotspotActiveUnderline*(_: type ScintillaMessageEnum): untyped = 2412
template GetHotspotActiveUnderline*(_: type ScintillaMessageEnum): untyped = 2496
template SetHotspotSingleLine*(_: type ScintillaMessageEnum): untyped = 2421
template GetHotspotSingleLine*(_: type ScintillaMessageEnum): untyped = 2497
template ParaDown*(_: type ScintillaMessageEnum): untyped = 2413
template ParaDownExtend*(_: type ScintillaMessageEnum): untyped = 2414
template ParaUp*(_: type ScintillaMessageEnum): untyped = 2415
template ParaUpExtend*(_: type ScintillaMessageEnum): untyped = 2416
template PositionBefore*(_: type ScintillaMessageEnum): untyped = 2417
template PositionAfter*(_: type ScintillaMessageEnum): untyped = 2418
template PositionRelative*(_: type ScintillaMessageEnum): untyped = 2670
template PositionRelativeCodeUnits*(_: type ScintillaMessageEnum): untyped = 2716
template CopyRange*(_: type ScintillaMessageEnum): untyped = 2419
template CopyText*(_: type ScintillaMessageEnum): untyped = 2420
template SetSelectionMode*(_: type ScintillaMessageEnum): untyped = 2422
template ChangeSelectionMode*(_: type ScintillaMessageEnum): untyped = 2659
template GetSelectionMode*(_: type ScintillaMessageEnum): untyped = 2423
template SetMoveExtendsSelection*(_: type ScintillaMessageEnum): untyped = 2719
template GetMoveExtendsSelection*(_: type ScintillaMessageEnum): untyped = 2706
template GetLineSelStartPosition*(_: type ScintillaMessageEnum): untyped = 2424
template GetLineSelEndPosition*(_: type ScintillaMessageEnum): untyped = 2425
template LineDownRectExtend*(_: type ScintillaMessageEnum): untyped = 2426
template LineUpRectExtend*(_: type ScintillaMessageEnum): untyped = 2427
template CharLeftRectExtend*(_: type ScintillaMessageEnum): untyped = 2428
template CharRightRectExtend*(_: type ScintillaMessageEnum): untyped = 2429
template HomeRectExtend*(_: type ScintillaMessageEnum): untyped = 2430
template VCHomeRectExtend*(_: type ScintillaMessageEnum): untyped = 2431
template LineEndRectExtend*(_: type ScintillaMessageEnum): untyped = 2432
template PageUpRectExtend*(_: type ScintillaMessageEnum): untyped = 2433
template PageDownRectExtend*(_: type ScintillaMessageEnum): untyped = 2434
template StutteredPageUp*(_: type ScintillaMessageEnum): untyped = 2435
template StutteredPageUpExtend*(_: type ScintillaMessageEnum): untyped = 2436
template StutteredPageDown*(_: type ScintillaMessageEnum): untyped = 2437
template StutteredPageDownExtend*(_: type ScintillaMessageEnum): untyped = 2438
template WordLeftEnd*(_: type ScintillaMessageEnum): untyped = 2439
template WordLeftEndExtend*(_: type ScintillaMessageEnum): untyped = 2440
template WordRightEnd*(_: type ScintillaMessageEnum): untyped = 2441
template WordRightEndExtend*(_: type ScintillaMessageEnum): untyped = 2442
template SetWhitespaceChars*(_: type ScintillaMessageEnum): untyped = 2443
template GetWhitespaceChars*(_: type ScintillaMessageEnum): untyped = 2647
template SetPunctuationChars*(_: type ScintillaMessageEnum): untyped = 2648
template GetPunctuationChars*(_: type ScintillaMessageEnum): untyped = 2649
template SetCharsDefault*(_: type ScintillaMessageEnum): untyped = 2444
template AutoCGetCurrent*(_: type ScintillaMessageEnum): untyped = 2445
template AutoCGetCurrentText*(_: type ScintillaMessageEnum): untyped = 2610
template AutoCSetCaseInsensitiveBehaviour*(_: type ScintillaMessageEnum): untyped = 2634
template AutoCGetCaseInsensitiveBehaviour*(_: type ScintillaMessageEnum): untyped = 2635
template AutoCSetMulti*(_: type ScintillaMessageEnum): untyped = 2636
template AutoCGetMulti*(_: type ScintillaMessageEnum): untyped = 2637
template AutoCSetOrder*(_: type ScintillaMessageEnum): untyped = 2660
template AutoCGetOrder*(_: type ScintillaMessageEnum): untyped = 2661
template Allocate*(_: type ScintillaMessageEnum): untyped = 2446
template TargetAsUTF8*(_: type ScintillaMessageEnum): untyped = 2447
template SetLengthForEncode*(_: type ScintillaMessageEnum): untyped = 2448
template EncodedFromUTF8*(_: type ScintillaMessageEnum): untyped = 2449
template FindColumn*(_: type ScintillaMessageEnum): untyped = 2456
template GetCaretSticky*(_: type ScintillaMessageEnum): untyped = 2457
template SetCaretSticky*(_: type ScintillaMessageEnum): untyped = 2458
template ToggleCaretSticky*(_: type ScintillaMessageEnum): untyped = 2459
template SetPasteConvertEndings*(_: type ScintillaMessageEnum): untyped = 2467
template GetPasteConvertEndings*(_: type ScintillaMessageEnum): untyped = 2468
template ReplaceRectangular*(_: type ScintillaMessageEnum): untyped = 2771
template SelectionDuplicate*(_: type ScintillaMessageEnum): untyped = 2469
template SetCaretLineBackAlpha*(_: type ScintillaMessageEnum): untyped = 2470
template GetCaretLineBackAlpha*(_: type ScintillaMessageEnum): untyped = 2471
template SetCaretStyle*(_: type ScintillaMessageEnum): untyped = 2512
template GetCaretStyle*(_: type ScintillaMessageEnum): untyped = 2513
template SetIndicatorCurrent*(_: type ScintillaMessageEnum): untyped = 2500
template GetIndicatorCurrent*(_: type ScintillaMessageEnum): untyped = 2501
template SetIndicatorValue*(_: type ScintillaMessageEnum): untyped = 2502
template GetIndicatorValue*(_: type ScintillaMessageEnum): untyped = 2503
template IndicatorFillRange*(_: type ScintillaMessageEnum): untyped = 2504
template IndicatorClearRange*(_: type ScintillaMessageEnum): untyped = 2505
template IndicatorAllOnFor*(_: type ScintillaMessageEnum): untyped = 2506
template IndicatorValueAt*(_: type ScintillaMessageEnum): untyped = 2507
template IndicatorStart*(_: type ScintillaMessageEnum): untyped = 2508
template IndicatorEnd*(_: type ScintillaMessageEnum): untyped = 2509
template SetPositionCache*(_: type ScintillaMessageEnum): untyped = 2514
template GetPositionCache*(_: type ScintillaMessageEnum): untyped = 2515
template SetLayoutThreads*(_: type ScintillaMessageEnum): untyped = 2775
template GetLayoutThreads*(_: type ScintillaMessageEnum): untyped = 2776
template CopyAllowLine*(_: type ScintillaMessageEnum): untyped = 2519
template CutAllowLine*(_: type ScintillaMessageEnum): untyped = 2810
template SetCopySeparator*(_: type ScintillaMessageEnum): untyped = 2811
template GetCopySeparator*(_: type ScintillaMessageEnum): untyped = 2812
template GetCharacterPointer*(_: type ScintillaMessageEnum): untyped = 2520
template GetRangePointer*(_: type ScintillaMessageEnum): untyped = 2643
template GetGapPosition*(_: type ScintillaMessageEnum): untyped = 2644
template IndicSetAlpha*(_: type ScintillaMessageEnum): untyped = 2523
template IndicGetAlpha*(_: type ScintillaMessageEnum): untyped = 2524
template IndicSetOutlineAlpha*(_: type ScintillaMessageEnum): untyped = 2558
template IndicGetOutlineAlpha*(_: type ScintillaMessageEnum): untyped = 2559
template SetExtraAscent*(_: type ScintillaMessageEnum): untyped = 2525
template GetExtraAscent*(_: type ScintillaMessageEnum): untyped = 2526
template SetExtraDescent*(_: type ScintillaMessageEnum): untyped = 2527
template GetExtraDescent*(_: type ScintillaMessageEnum): untyped = 2528
template MarkerSymbolDefined*(_: type ScintillaMessageEnum): untyped = 2529
template MarginSetText*(_: type ScintillaMessageEnum): untyped = 2530
template MarginGetText*(_: type ScintillaMessageEnum): untyped = 2531
template MarginSetStyle*(_: type ScintillaMessageEnum): untyped = 2532
template MarginGetStyle*(_: type ScintillaMessageEnum): untyped = 2533
template MarginSetStyles*(_: type ScintillaMessageEnum): untyped = 2534
template MarginGetStyles*(_: type ScintillaMessageEnum): untyped = 2535
template MarginTextClearAll*(_: type ScintillaMessageEnum): untyped = 2536
template MarginSetStyleOffset*(_: type ScintillaMessageEnum): untyped = 2537
template MarginGetStyleOffset*(_: type ScintillaMessageEnum): untyped = 2538
template SetMarginOptions*(_: type ScintillaMessageEnum): untyped = 2539
template GetMarginOptions*(_: type ScintillaMessageEnum): untyped = 2557
template AnnotationSetText*(_: type ScintillaMessageEnum): untyped = 2540
template AnnotationGetText*(_: type ScintillaMessageEnum): untyped = 2541
template AnnotationSetStyle*(_: type ScintillaMessageEnum): untyped = 2542
template AnnotationGetStyle*(_: type ScintillaMessageEnum): untyped = 2543
template AnnotationSetStyles*(_: type ScintillaMessageEnum): untyped = 2544
template AnnotationGetStyles*(_: type ScintillaMessageEnum): untyped = 2545
template AnnotationGetLines*(_: type ScintillaMessageEnum): untyped = 2546
template AnnotationClearAll*(_: type ScintillaMessageEnum): untyped = 2547
template AnnotationSetVisible*(_: type ScintillaMessageEnum): untyped = 2548
template AnnotationGetVisible*(_: type ScintillaMessageEnum): untyped = 2549
template AnnotationSetStyleOffset*(_: type ScintillaMessageEnum): untyped = 2550
template AnnotationGetStyleOffset*(_: type ScintillaMessageEnum): untyped = 2551
template ReleaseAllExtendedStyles*(_: type ScintillaMessageEnum): untyped = 2552
template AllocateExtendedStyles*(_: type ScintillaMessageEnum): untyped = 2553
template AddUndoAction*(_: type ScintillaMessageEnum): untyped = 2560
template CharPositionFromPoint*(_: type ScintillaMessageEnum): untyped = 2561
template CharPositionFromPointClose*(_: type ScintillaMessageEnum): untyped = 2562
template SetMouseSelectionRectangularSwitch*(_: type ScintillaMessageEnum): untyped = 2668
template GetMouseSelectionRectangularSwitch*(_: type ScintillaMessageEnum): untyped = 2669
template SetMultipleSelection*(_: type ScintillaMessageEnum): untyped = 2563
template GetMultipleSelection*(_: type ScintillaMessageEnum): untyped = 2564
template SetAdditionalSelectionTyping*(_: type ScintillaMessageEnum): untyped = 2565
template GetAdditionalSelectionTyping*(_: type ScintillaMessageEnum): untyped = 2566
template SetAdditionalCaretsBlink*(_: type ScintillaMessageEnum): untyped = 2567
template GetAdditionalCaretsBlink*(_: type ScintillaMessageEnum): untyped = 2568
template SetAdditionalCaretsVisible*(_: type ScintillaMessageEnum): untyped = 2608
template GetAdditionalCaretsVisible*(_: type ScintillaMessageEnum): untyped = 2609
template GetSelections*(_: type ScintillaMessageEnum): untyped = 2570
template GetSelectionEmpty*(_: type ScintillaMessageEnum): untyped = 2650
template ClearSelections*(_: type ScintillaMessageEnum): untyped = 2571
template SetSelection*(_: type ScintillaMessageEnum): untyped = 2572
template AddSelection*(_: type ScintillaMessageEnum): untyped = 2573
template SelectionFromPoint*(_: type ScintillaMessageEnum): untyped = 2474
template DropSelectionN*(_: type ScintillaMessageEnum): untyped = 2671
template SetMainSelection*(_: type ScintillaMessageEnum): untyped = 2574
template GetMainSelection*(_: type ScintillaMessageEnum): untyped = 2575
template SetSelectionNCaret*(_: type ScintillaMessageEnum): untyped = 2576
template GetSelectionNCaret*(_: type ScintillaMessageEnum): untyped = 2577
template SetSelectionNAnchor*(_: type ScintillaMessageEnum): untyped = 2578
template GetSelectionNAnchor*(_: type ScintillaMessageEnum): untyped = 2579
template SetSelectionNCaretVirtualSpace*(_: type ScintillaMessageEnum): untyped = 2580
template GetSelectionNCaretVirtualSpace*(_: type ScintillaMessageEnum): untyped = 2581
template SetSelectionNAnchorVirtualSpace*(_: type ScintillaMessageEnum): untyped = 2582
template GetSelectionNAnchorVirtualSpace*(_: type ScintillaMessageEnum): untyped = 2583
template SetSelectionNStart*(_: type ScintillaMessageEnum): untyped = 2584
template GetSelectionNStart*(_: type ScintillaMessageEnum): untyped = 2585
template GetSelectionNStartVirtualSpace*(_: type ScintillaMessageEnum): untyped = 2726
template SetSelectionNEnd*(_: type ScintillaMessageEnum): untyped = 2586
template GetSelectionNEndVirtualSpace*(_: type ScintillaMessageEnum): untyped = 2727
template GetSelectionNEnd*(_: type ScintillaMessageEnum): untyped = 2587
template SetRectangularSelectionCaret*(_: type ScintillaMessageEnum): untyped = 2588
template GetRectangularSelectionCaret*(_: type ScintillaMessageEnum): untyped = 2589
template SetRectangularSelectionAnchor*(_: type ScintillaMessageEnum): untyped = 2590
template GetRectangularSelectionAnchor*(_: type ScintillaMessageEnum): untyped = 2591
template SetRectangularSelectionCaretVirtualSpace*(_: type ScintillaMessageEnum): untyped = 2592
template GetRectangularSelectionCaretVirtualSpace*(_: type ScintillaMessageEnum): untyped = 2593
template SetRectangularSelectionAnchorVirtualSpace*(_: type ScintillaMessageEnum): untyped = 2594
template GetRectangularSelectionAnchorVirtualSpace*(_: type ScintillaMessageEnum): untyped = 2595
template SetVirtualSpaceOptions*(_: type ScintillaMessageEnum): untyped = 2596
template GetVirtualSpaceOptions*(_: type ScintillaMessageEnum): untyped = 2597
template SetRectangularSelectionModifier*(_: type ScintillaMessageEnum): untyped = 2598
template GetRectangularSelectionModifier*(_: type ScintillaMessageEnum): untyped = 2599
template SetAdditionalSelFore*(_: type ScintillaMessageEnum): untyped = 2600
template SetAdditionalSelBack*(_: type ScintillaMessageEnum): untyped = 2601
template SetAdditionalSelAlpha*(_: type ScintillaMessageEnum): untyped = 2602
template GetAdditionalSelAlpha*(_: type ScintillaMessageEnum): untyped = 2603
template SetAdditionalCaretFore*(_: type ScintillaMessageEnum): untyped = 2604
template GetAdditionalCaretFore*(_: type ScintillaMessageEnum): untyped = 2605
template RotateSelection*(_: type ScintillaMessageEnum): untyped = 2606
template SwapMainAnchorCaret*(_: type ScintillaMessageEnum): untyped = 2607
template MultipleSelectAddNext*(_: type ScintillaMessageEnum): untyped = 2688
template MultipleSelectAddEach*(_: type ScintillaMessageEnum): untyped = 2689
template ChangeLexerState*(_: type ScintillaMessageEnum): untyped = 2617
template ContractedFoldNext*(_: type ScintillaMessageEnum): untyped = 2618
template VerticalCentreCaret*(_: type ScintillaMessageEnum): untyped = 2619
template MoveSelectedLinesUp*(_: type ScintillaMessageEnum): untyped = 2620
template MoveSelectedLinesDown*(_: type ScintillaMessageEnum): untyped = 2621
template SetIdentifier*(_: type ScintillaMessageEnum): untyped = 2622
template GetIdentifier*(_: type ScintillaMessageEnum): untyped = 2623
template RGBAImageSetWidth*(_: type ScintillaMessageEnum): untyped = 2624
template RGBAImageSetHeight*(_: type ScintillaMessageEnum): untyped = 2625
template RGBAImageSetScale*(_: type ScintillaMessageEnum): untyped = 2651
template MarkerDefineRGBAImage*(_: type ScintillaMessageEnum): untyped = 2626
template RegisterRGBAImage*(_: type ScintillaMessageEnum): untyped = 2627
template ScrollToStart*(_: type ScintillaMessageEnum): untyped = 2628
template ScrollToEnd*(_: type ScintillaMessageEnum): untyped = 2629
template SetTechnology*(_: type ScintillaMessageEnum): untyped = 2630
template GetTechnology*(_: type ScintillaMessageEnum): untyped = 2631
template CreateLoader*(_: type ScintillaMessageEnum): untyped = 2632
template FindIndicatorShow*(_: type ScintillaMessageEnum): untyped = 2640
template FindIndicatorFlash*(_: type ScintillaMessageEnum): untyped = 2641
template FindIndicatorHide*(_: type ScintillaMessageEnum): untyped = 2642
template VCHomeDisplay*(_: type ScintillaMessageEnum): untyped = 2652
template VCHomeDisplayExtend*(_: type ScintillaMessageEnum): untyped = 2653
template GetCaretLineVisibleAlways*(_: type ScintillaMessageEnum): untyped = 2654
template SetCaretLineVisibleAlways*(_: type ScintillaMessageEnum): untyped = 2655
template SetLineEndTypesAllowed*(_: type ScintillaMessageEnum): untyped = 2656
template GetLineEndTypesAllowed*(_: type ScintillaMessageEnum): untyped = 2657
template GetLineEndTypesActive*(_: type ScintillaMessageEnum): untyped = 2658
template SetRepresentation*(_: type ScintillaMessageEnum): untyped = 2665
template GetRepresentation*(_: type ScintillaMessageEnum): untyped = 2666
template ClearRepresentation*(_: type ScintillaMessageEnum): untyped = 2667
template ClearAllRepresentations*(_: type ScintillaMessageEnum): untyped = 2770
template SetRepresentationAppearance*(_: type ScintillaMessageEnum): untyped = 2766
template GetRepresentationAppearance*(_: type ScintillaMessageEnum): untyped = 2767
template SetRepresentationColour*(_: type ScintillaMessageEnum): untyped = 2768
template GetRepresentationColour*(_: type ScintillaMessageEnum): untyped = 2769
template EOLAnnotationSetText*(_: type ScintillaMessageEnum): untyped = 2740
template EOLAnnotationGetText*(_: type ScintillaMessageEnum): untyped = 2741
template EOLAnnotationSetStyle*(_: type ScintillaMessageEnum): untyped = 2742
template EOLAnnotationGetStyle*(_: type ScintillaMessageEnum): untyped = 2743
template EOLAnnotationClearAll*(_: type ScintillaMessageEnum): untyped = 2744
template EOLAnnotationSetVisible*(_: type ScintillaMessageEnum): untyped = 2745
template EOLAnnotationGetVisible*(_: type ScintillaMessageEnum): untyped = 2746
template EOLAnnotationSetStyleOffset*(_: type ScintillaMessageEnum): untyped = 2747
template EOLAnnotationGetStyleOffset*(_: type ScintillaMessageEnum): untyped = 2748
template SupportsFeature*(_: type ScintillaMessageEnum): untyped = 2750
template GetLineCharacterIndex*(_: type ScintillaMessageEnum): untyped = 2710
template AllocateLineCharacterIndex*(_: type ScintillaMessageEnum): untyped = 2711
template ReleaseLineCharacterIndex*(_: type ScintillaMessageEnum): untyped = 2712
template LineFromIndexPosition*(_: type ScintillaMessageEnum): untyped = 2713
template IndexPositionFromLine*(_: type ScintillaMessageEnum): untyped = 2714
template StartRecord*(_: type ScintillaMessageEnum): untyped = 3001
template StopRecord*(_: type ScintillaMessageEnum): untyped = 3002
template GetLexer*(_: type ScintillaMessageEnum): untyped = 4002
template Colourise*(_: type ScintillaMessageEnum): untyped = 4003
template SetProperty*(_: type ScintillaMessageEnum): untyped = 4004
template SetKeyWords*(_: type ScintillaMessageEnum): untyped = 4005
template GetProperty*(_: type ScintillaMessageEnum): untyped = 4008
template GetPropertyExpanded*(_: type ScintillaMessageEnum): untyped = 4009
template GetPropertyInt*(_: type ScintillaMessageEnum): untyped = 4010
template GetLexerLanguage*(_: type ScintillaMessageEnum): untyped = 4012
template PrivateLexerCall*(_: type ScintillaMessageEnum): untyped = 4013
template PropertyNames*(_: type ScintillaMessageEnum): untyped = 4014
template PropertyType*(_: type ScintillaMessageEnum): untyped = 4015
template DescribeProperty*(_: type ScintillaMessageEnum): untyped = 4016
template DescribeKeyWordSets*(_: type ScintillaMessageEnum): untyped = 4017
template GetLineEndTypesSupported*(_: type ScintillaMessageEnum): untyped = 4018
template AllocateSubStyles*(_: type ScintillaMessageEnum): untyped = 4020
template GetSubStylesStart*(_: type ScintillaMessageEnum): untyped = 4021
template GetSubStylesLength*(_: type ScintillaMessageEnum): untyped = 4022
template GetStyleFromSubStyle*(_: type ScintillaMessageEnum): untyped = 4027
template GetPrimaryStyleFromStyle*(_: type ScintillaMessageEnum): untyped = 4028
template FreeSubStyles*(_: type ScintillaMessageEnum): untyped = 4023
template SetIdentifiers*(_: type ScintillaMessageEnum): untyped = 4024
template DistanceToSecondaryStyles*(_: type ScintillaMessageEnum): untyped = 4025
template GetSubStyleBases*(_: type ScintillaMessageEnum): untyped = 4026
template GetNamedStyles*(_: type ScintillaMessageEnum): untyped = 4029
template NameOfStyle*(_: type ScintillaMessageEnum): untyped = 4030
template TagsOfStyle*(_: type ScintillaMessageEnum): untyped = 4031
template DescriptionOfStyle*(_: type ScintillaMessageEnum): untyped = 4032
template SetILexer*(_: type ScintillaMessageEnum): untyped = 4033
template GetBidirectional*(_: type ScintillaMessageEnum): untyped = 2708
template SetBidirectional*(_: type ScintillaMessageEnum): untyped = 2709


type stdnullopt_t_ConstructEnum* = distinct cint
template _Token*(_: type stdnullopt_t_ConstructEnum): untyped = 0


type ScintillaInternalSurfaceEndsEnum* = distinct cint
template semiCircles*(_: type ScintillaInternalSurfaceEndsEnum): untyped = 0
template leftFlat*(_: type ScintillaInternalSurfaceEndsEnum): untyped = 1
template leftAngle*(_: type ScintillaInternalSurfaceEndsEnum): untyped = 2
template rightFlat*(_: type ScintillaInternalSurfaceEndsEnum): untyped = 16
template rightAngle*(_: type ScintillaInternalSurfaceEndsEnum): untyped = 32


type ScintillaInternalSurfaceGradientOptionsEnum* = distinct cint
template leftToRight*(_: type ScintillaInternalSurfaceGradientOptionsEnum): untyped = 0
template topToBottom*(_: type ScintillaInternalSurfaceGradientOptionsEnum): untyped = 1


type ScintillaInternalWindowCursorEnum* = distinct cint
template invalid*(_: type ScintillaInternalWindowCursorEnum): untyped = 0
template text*(_: type ScintillaInternalWindowCursorEnum): untyped = 1
template arrow*(_: type ScintillaInternalWindowCursorEnum): untyped = 2
template up*(_: type ScintillaInternalWindowCursorEnum): untyped = 3
template wait*(_: type ScintillaInternalWindowCursorEnum): untyped = 4
template horizontal*(_: type ScintillaInternalWindowCursorEnum): untyped = 5
template vertical*(_: type ScintillaInternalWindowCursorEnum): untyped = 6
template reverseArrow*(_: type ScintillaInternalWindowCursorEnum): untyped = 7
template hand*(_: type ScintillaInternalWindowCursorEnum): untyped = 8


type ScintillaInternalListBoxEventEventTypeEnum* = distinct cint
template selectionChange*(_: type ScintillaInternalListBoxEventEventTypeEnum): untyped = 0
template doubleClick*(_: type ScintillaInternalListBoxEventEventTypeEnum): untyped = 1


import gen_ScintillaEdit_types
export gen_ScintillaEdit_types

import
  gen_qabstractscrollarea,
  gen_qcoreevent,
  gen_qevent,
  gen_qmetaobject,
  gen_qmimedata,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qvariant,
  gen_qwidget
export
  gen_qabstractscrollarea,
  gen_qcoreevent,
  gen_qevent,
  gen_qmetaobject,
  gen_qmimedata,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qvariant,
  gen_qwidget

type cScintillaInternalPoint*{.exportc: "Scintilla__Internal__Point", incompleteStruct.} = object
type cScintillaInternalInterval*{.exportc: "Scintilla__Internal__Interval", incompleteStruct.} = object
type cScintillaInternalPRectangle*{.exportc: "Scintilla__Internal__PRectangle", incompleteStruct.} = object
type cScintillaInternalColourRGBA*{.exportc: "Scintilla__Internal__ColourRGBA", incompleteStruct.} = object
type cScintillaInternalStroke*{.exportc: "Scintilla__Internal__Stroke", incompleteStruct.} = object
type cScintillaInternalFill*{.exportc: "Scintilla__Internal__Fill", incompleteStruct.} = object
type cScintillaInternalFillStroke*{.exportc: "Scintilla__Internal__FillStroke", incompleteStruct.} = object
type cScintillaInternalColourStop*{.exportc: "Scintilla__Internal__ColourStop", incompleteStruct.} = object
type cScintillaCharacterRange*{.exportc: "Scintilla__CharacterRange", incompleteStruct.} = object
type cScintillaCharacterRangeFull*{.exportc: "Scintilla__CharacterRangeFull", incompleteStruct.} = object
type cScintillaTextRange*{.exportc: "Scintilla__TextRange", incompleteStruct.} = object
type cScintillaTextRangeFull*{.exportc: "Scintilla__TextRangeFull", incompleteStruct.} = object
type cScintillaTextToFind*{.exportc: "Scintilla__TextToFind", incompleteStruct.} = object
type cScintillaTextToFindFull*{.exportc: "Scintilla__TextToFindFull", incompleteStruct.} = object
type cScintillaRectangle*{.exportc: "Scintilla__Rectangle", incompleteStruct.} = object
type cScintillaRangeToFormat*{.exportc: "Scintilla__RangeToFormat", incompleteStruct.} = object
type cScintillaRangeToFormatFull*{.exportc: "Scintilla__RangeToFormatFull", incompleteStruct.} = object
type cScintillaNotifyHeader*{.exportc: "Scintilla__NotifyHeader", incompleteStruct.} = object
type cScintillaNotificationData*{.exportc: "Scintilla__NotificationData", incompleteStruct.} = object
type cScintillaInternalFontParameters*{.exportc: "Scintilla__Internal__FontParameters", incompleteStruct.} = object
type cScintillaInternalFont*{.exportc: "Scintilla__Internal__Font", incompleteStruct.} = object
type cScintillaInternalIScreenLine*{.exportc: "Scintilla__Internal__IScreenLine", incompleteStruct.} = object
type cScintillaInternalIScreenLineLayout*{.exportc: "Scintilla__Internal__IScreenLineLayout", incompleteStruct.} = object
type cScintillaInternalSurfaceMode*{.exportc: "Scintilla__Internal__SurfaceMode", incompleteStruct.} = object
type cScintillaInternalSurface*{.exportc: "Scintilla__Internal__Surface", incompleteStruct.} = object
type cScintillaInternalWindow*{.exportc: "Scintilla__Internal__Window", incompleteStruct.} = object
type cScintillaInternalListBoxEvent*{.exportc: "Scintilla__Internal__ListBoxEvent", incompleteStruct.} = object
type cScintillaInternalIListBoxDelegate*{.exportc: "Scintilla__Internal__IListBoxDelegate", incompleteStruct.} = object
type cScintillaInternalListOptions*{.exportc: "Scintilla__Internal__ListOptions", incompleteStruct.} = object
type cScintillaInternalListBox*{.exportc: "Scintilla__Internal__ListBox", incompleteStruct.} = object
type cScintillaInternalMenu*{.exportc: "Scintilla__Internal__Menu", incompleteStruct.} = object
type cSci_CharacterRange*{.exportc: "Sci_CharacterRange", incompleteStruct.} = object
type cSci_CharacterRangeFull*{.exportc: "Sci_CharacterRangeFull", incompleteStruct.} = object
type cSci_TextRange*{.exportc: "Sci_TextRange", incompleteStruct.} = object
type cSci_TextRangeFull*{.exportc: "Sci_TextRangeFull", incompleteStruct.} = object
type cSci_TextToFind*{.exportc: "Sci_TextToFind", incompleteStruct.} = object
type cSci_TextToFindFull*{.exportc: "Sci_TextToFindFull", incompleteStruct.} = object
type cSci_Rectangle*{.exportc: "Sci_Rectangle", incompleteStruct.} = object
type cSci_RangeToFormat*{.exportc: "Sci_RangeToFormat", incompleteStruct.} = object
type cSci_RangeToFormatFull*{.exportc: "Sci_RangeToFormatFull", incompleteStruct.} = object
type cSci_NotifyHeader*{.exportc: "Sci_NotifyHeader", incompleteStruct.} = object
type cSCNotification*{.exportc: "SCNotification", incompleteStruct.} = object
type cScintillaEditBase*{.exportc: "ScintillaEditBase", incompleteStruct.} = object
type cScintillaDocument*{.exportc: "ScintillaDocument", incompleteStruct.} = object
type cScintillaEdit*{.exportc: "ScintillaEdit", incompleteStruct.} = object

proc fcScintillaInternalPoint_new(): ptr cScintillaInternalPoint {.importc: "Scintilla__Internal__Point_new".}
proc fcScintillaInternalPoint_new2(param1: pointer): ptr cScintillaInternalPoint {.importc: "Scintilla__Internal__Point_new2".}
proc fcScintillaInternalPoint_new3(x_x: float64): ptr cScintillaInternalPoint {.importc: "Scintilla__Internal__Point_new3".}
proc fcScintillaInternalPoint_new4(x_x: float64, y_x: float64): ptr cScintillaInternalPoint {.importc: "Scintilla__Internal__Point_new4".}
proc fcScintillaInternalPoint_FromInts(x_x: cint, y_x: cint): pointer {.importc: "Scintilla__Internal__Point_FromInts".}
proc fcScintillaInternalPoint_operatorEqual(self: pointer, other: pointer): bool {.importc: "Scintilla__Internal__Point_operatorEqual".}
proc fcScintillaInternalPoint_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "Scintilla__Internal__Point_operatorNotEqual".}
proc fcScintillaInternalPoint_operatorPlus(self: pointer, other: pointer): pointer {.importc: "Scintilla__Internal__Point_operatorPlus".}
proc fcScintillaInternalPoint_operatorMinus(self: pointer, other: pointer): pointer {.importc: "Scintilla__Internal__Point_operatorMinus".}
proc fcScintillaInternalPoint_delete(self: pointer) {.importc: "Scintilla__Internal__Point_delete".}
proc fcScintillaInternalInterval_operatorEqual(self: pointer, other: pointer): bool {.importc: "Scintilla__Internal__Interval_operatorEqual".}
proc fcScintillaInternalInterval_Width(self: pointer, ): float64 {.importc: "Scintilla__Internal__Interval_Width".}
proc fcScintillaInternalInterval_Empty(self: pointer, ): bool {.importc: "Scintilla__Internal__Interval_Empty".}
proc fcScintillaInternalInterval_Intersects(self: pointer, other: pointer): bool {.importc: "Scintilla__Internal__Interval_Intersects".}
proc fcScintillaInternalInterval_Offset(self: pointer, offset: float64): pointer {.importc: "Scintilla__Internal__Interval_Offset".}
proc fcScintillaInternalInterval_delete(self: pointer) {.importc: "Scintilla__Internal__Interval_delete".}
proc fcScintillaInternalPRectangle_new(): ptr cScintillaInternalPRectangle {.importc: "Scintilla__Internal__PRectangle_new".}
proc fcScintillaInternalPRectangle_new2(param1: pointer): ptr cScintillaInternalPRectangle {.importc: "Scintilla__Internal__PRectangle_new2".}
proc fcScintillaInternalPRectangle_new3(left_x: float64): ptr cScintillaInternalPRectangle {.importc: "Scintilla__Internal__PRectangle_new3".}
proc fcScintillaInternalPRectangle_new4(left_x: float64, top_x: float64): ptr cScintillaInternalPRectangle {.importc: "Scintilla__Internal__PRectangle_new4".}
proc fcScintillaInternalPRectangle_new5(left_x: float64, top_x: float64, right_x: float64): ptr cScintillaInternalPRectangle {.importc: "Scintilla__Internal__PRectangle_new5".}
proc fcScintillaInternalPRectangle_new6(left_x: float64, top_x: float64, right_x: float64, bottom_x: float64): ptr cScintillaInternalPRectangle {.importc: "Scintilla__Internal__PRectangle_new6".}
proc fcScintillaInternalPRectangle_FromInts(left_x: cint, top_x: cint, right_x: cint, bottom_x: cint): pointer {.importc: "Scintilla__Internal__PRectangle_FromInts".}
proc fcScintillaInternalPRectangle_operatorEqual(self: pointer, rc: pointer): bool {.importc: "Scintilla__Internal__PRectangle_operatorEqual".}
proc fcScintillaInternalPRectangle_Contains(self: pointer, pt: pointer): bool {.importc: "Scintilla__Internal__PRectangle_Contains".}
proc fcScintillaInternalPRectangle_ContainsWholePixel(self: pointer, pt: pointer): bool {.importc: "Scintilla__Internal__PRectangle_ContainsWholePixel".}
proc fcScintillaInternalPRectangle_ContainsWithRc(self: pointer, rc: pointer): bool {.importc: "Scintilla__Internal__PRectangle_ContainsWithRc".}
proc fcScintillaInternalPRectangle_Intersects(self: pointer, other: pointer): bool {.importc: "Scintilla__Internal__PRectangle_Intersects".}
proc fcScintillaInternalPRectangle_IntersectsWithHorizontalBounds(self: pointer, horizontalBounds: pointer): bool {.importc: "Scintilla__Internal__PRectangle_IntersectsWithHorizontalBounds".}
proc fcScintillaInternalPRectangle_Move(self: pointer, xDelta: float64, yDelta: float64): void {.importc: "Scintilla__Internal__PRectangle_Move".}
proc fcScintillaInternalPRectangle_WithHorizontalBounds(self: pointer, horizontal: pointer): pointer {.importc: "Scintilla__Internal__PRectangle_WithHorizontalBounds".}
proc fcScintillaInternalPRectangle_Inset(self: pointer, delta: float64): pointer {.importc: "Scintilla__Internal__PRectangle_Inset".}
proc fcScintillaInternalPRectangle_InsetWithDelta(self: pointer, delta: pointer): pointer {.importc: "Scintilla__Internal__PRectangle_InsetWithDelta".}
proc fcScintillaInternalPRectangle_Centre(self: pointer, ): pointer {.importc: "Scintilla__Internal__PRectangle_Centre".}
proc fcScintillaInternalPRectangle_Width(self: pointer, ): float64 {.importc: "Scintilla__Internal__PRectangle_Width".}
proc fcScintillaInternalPRectangle_Height(self: pointer, ): float64 {.importc: "Scintilla__Internal__PRectangle_Height".}
proc fcScintillaInternalPRectangle_Empty(self: pointer, ): bool {.importc: "Scintilla__Internal__PRectangle_Empty".}
proc fcScintillaInternalPRectangle_delete(self: pointer) {.importc: "Scintilla__Internal__PRectangle_delete".}
proc fcScintillaInternalColourRGBA_new(): ptr cScintillaInternalColourRGBA {.importc: "Scintilla__Internal__ColourRGBA_new".}
proc fcScintillaInternalColourRGBA_new2(red: cuint, green: cuint, blue: cuint): ptr cScintillaInternalColourRGBA {.importc: "Scintilla__Internal__ColourRGBA_new2".}
proc fcScintillaInternalColourRGBA_new3(cd: pointer, alpha: cuint): ptr cScintillaInternalColourRGBA {.importc: "Scintilla__Internal__ColourRGBA_new3".}
proc fcScintillaInternalColourRGBA_new4(param1: pointer): ptr cScintillaInternalColourRGBA {.importc: "Scintilla__Internal__ColourRGBA_new4".}
proc fcScintillaInternalColourRGBA_new5(co_x: cint): ptr cScintillaInternalColourRGBA {.importc: "Scintilla__Internal__ColourRGBA_new5".}
proc fcScintillaInternalColourRGBA_new6(red: cuint, green: cuint, blue: cuint, alpha: cuint): ptr cScintillaInternalColourRGBA {.importc: "Scintilla__Internal__ColourRGBA_new6".}
proc fcScintillaInternalColourRGBA_FromRGB(co_x: cint): pointer {.importc: "Scintilla__Internal__ColourRGBA_FromRGB".}
proc fcScintillaInternalColourRGBA_Grey(grey: cuint): pointer {.importc: "Scintilla__Internal__ColourRGBA_Grey".}
proc fcScintillaInternalColourRGBA_FromIpRGB(co_x: miqt_intptr_t): pointer {.importc: "Scintilla__Internal__ColourRGBA_FromIpRGB".}
proc fcScintillaInternalColourRGBA_WithoutAlpha(self: pointer, ): pointer {.importc: "Scintilla__Internal__ColourRGBA_WithoutAlpha".}
proc fcScintillaInternalColourRGBA_Opaque(self: pointer, ): pointer {.importc: "Scintilla__Internal__ColourRGBA_Opaque".}
proc fcScintillaInternalColourRGBA_AsInteger(self: pointer, ): cint {.importc: "Scintilla__Internal__ColourRGBA_AsInteger".}
proc fcScintillaInternalColourRGBA_OpaqueRGB(self: pointer, ): cint {.importc: "Scintilla__Internal__ColourRGBA_OpaqueRGB".}
proc fcScintillaInternalColourRGBA_GetRed(self: pointer, ): uint8 {.importc: "Scintilla__Internal__ColourRGBA_GetRed".}
proc fcScintillaInternalColourRGBA_GetGreen(self: pointer, ): uint8 {.importc: "Scintilla__Internal__ColourRGBA_GetGreen".}
proc fcScintillaInternalColourRGBA_GetBlue(self: pointer, ): uint8 {.importc: "Scintilla__Internal__ColourRGBA_GetBlue".}
proc fcScintillaInternalColourRGBA_GetAlpha(self: pointer, ): uint8 {.importc: "Scintilla__Internal__ColourRGBA_GetAlpha".}
proc fcScintillaInternalColourRGBA_GetRedComponent(self: pointer, ): float32 {.importc: "Scintilla__Internal__ColourRGBA_GetRedComponent".}
proc fcScintillaInternalColourRGBA_GetGreenComponent(self: pointer, ): float32 {.importc: "Scintilla__Internal__ColourRGBA_GetGreenComponent".}
proc fcScintillaInternalColourRGBA_GetBlueComponent(self: pointer, ): float32 {.importc: "Scintilla__Internal__ColourRGBA_GetBlueComponent".}
proc fcScintillaInternalColourRGBA_GetAlphaComponent(self: pointer, ): float32 {.importc: "Scintilla__Internal__ColourRGBA_GetAlphaComponent".}
proc fcScintillaInternalColourRGBA_operatorEqual(self: pointer, other: pointer): bool {.importc: "Scintilla__Internal__ColourRGBA_operatorEqual".}
proc fcScintillaInternalColourRGBA_IsOpaque(self: pointer, ): bool {.importc: "Scintilla__Internal__ColourRGBA_IsOpaque".}
proc fcScintillaInternalColourRGBA_MixedWith(self: pointer, other: pointer): pointer {.importc: "Scintilla__Internal__ColourRGBA_MixedWith".}
proc fcScintillaInternalColourRGBA_MixedWith2(self: pointer, other: pointer, proportion: float64): pointer {.importc: "Scintilla__Internal__ColourRGBA_MixedWith2".}
proc fcScintillaInternalColourRGBA_operatorAssign(self: pointer, param1: pointer): void {.importc: "Scintilla__Internal__ColourRGBA_operatorAssign".}
proc fcScintillaInternalColourRGBA_Grey2(grey: cuint, alpha: cuint): pointer {.importc: "Scintilla__Internal__ColourRGBA_Grey2".}
proc fcScintillaInternalColourRGBA_delete(self: pointer) {.importc: "Scintilla__Internal__ColourRGBA_delete".}
proc fcScintillaInternalStroke_new(colour_x: pointer): ptr cScintillaInternalStroke {.importc: "Scintilla__Internal__Stroke_new".}
proc fcScintillaInternalStroke_new2(param1: pointer): ptr cScintillaInternalStroke {.importc: "Scintilla__Internal__Stroke_new2".}
proc fcScintillaInternalStroke_new3(colour_x: pointer, width_x: float64): ptr cScintillaInternalStroke {.importc: "Scintilla__Internal__Stroke_new3".}
proc fcScintillaInternalStroke_WidthF(self: pointer, ): float32 {.importc: "Scintilla__Internal__Stroke_WidthF".}
proc fcScintillaInternalStroke_delete(self: pointer) {.importc: "Scintilla__Internal__Stroke_delete".}
proc fcScintillaInternalFill_new(colour_x: pointer): ptr cScintillaInternalFill {.importc: "Scintilla__Internal__Fill_new".}
proc fcScintillaInternalFill_new2(param1: pointer): ptr cScintillaInternalFill {.importc: "Scintilla__Internal__Fill_new2".}
proc fcScintillaInternalFill_delete(self: pointer) {.importc: "Scintilla__Internal__Fill_delete".}
proc fcScintillaInternalFillStroke_new(colourFill_x: pointer, colourStroke_x: pointer): ptr cScintillaInternalFillStroke {.importc: "Scintilla__Internal__FillStroke_new".}
proc fcScintillaInternalFillStroke_new2(colourBoth: pointer): ptr cScintillaInternalFillStroke {.importc: "Scintilla__Internal__FillStroke_new2".}
proc fcScintillaInternalFillStroke_new3(colourFill_x: pointer, colourStroke_x: pointer, widthStroke_x: float64): ptr cScintillaInternalFillStroke {.importc: "Scintilla__Internal__FillStroke_new3".}
proc fcScintillaInternalFillStroke_new4(colourBoth: pointer, widthStroke_x: float64): ptr cScintillaInternalFillStroke {.importc: "Scintilla__Internal__FillStroke_new4".}
proc fcScintillaInternalFillStroke_delete(self: pointer) {.importc: "Scintilla__Internal__FillStroke_delete".}
proc fcScintillaInternalColourStop_new(position_x: float64, colour_x: pointer): ptr cScintillaInternalColourStop {.importc: "Scintilla__Internal__ColourStop_new".}
proc fcScintillaInternalColourStop_delete(self: pointer) {.importc: "Scintilla__Internal__ColourStop_delete".}
proc fcScintillaCharacterRange_delete(self: pointer) {.importc: "Scintilla__CharacterRange_delete".}
proc fcScintillaCharacterRangeFull_delete(self: pointer) {.importc: "Scintilla__CharacterRangeFull_delete".}
proc fcScintillaTextRange_delete(self: pointer) {.importc: "Scintilla__TextRange_delete".}
proc fcScintillaTextRangeFull_delete(self: pointer) {.importc: "Scintilla__TextRangeFull_delete".}
proc fcScintillaTextToFind_delete(self: pointer) {.importc: "Scintilla__TextToFind_delete".}
proc fcScintillaTextToFindFull_delete(self: pointer) {.importc: "Scintilla__TextToFindFull_delete".}
proc fcScintillaRectangle_delete(self: pointer) {.importc: "Scintilla__Rectangle_delete".}
proc fcScintillaRangeToFormat_delete(self: pointer) {.importc: "Scintilla__RangeToFormat_delete".}
proc fcScintillaRangeToFormatFull_delete(self: pointer) {.importc: "Scintilla__RangeToFormatFull_delete".}
proc fcScintillaNotifyHeader_delete(self: pointer) {.importc: "Scintilla__NotifyHeader_delete".}
proc fcScintillaNotificationData_delete(self: pointer) {.importc: "Scintilla__NotificationData_delete".}
proc fcScintillaInternalFontParameters_new(faceName_x: cstring): ptr cScintillaInternalFontParameters {.importc: "Scintilla__Internal__FontParameters_new".}
proc fcScintillaInternalFontParameters_new2(faceName_x: cstring, size_x: float64): ptr cScintillaInternalFontParameters {.importc: "Scintilla__Internal__FontParameters_new2".}
proc fcScintillaInternalFontParameters_new3(faceName_x: cstring, size_x: float64, weight_x: cint): ptr cScintillaInternalFontParameters {.importc: "Scintilla__Internal__FontParameters_new3".}
proc fcScintillaInternalFontParameters_new4(faceName_x: cstring, size_x: float64, weight_x: cint, italic_x: bool): ptr cScintillaInternalFontParameters {.importc: "Scintilla__Internal__FontParameters_new4".}
proc fcScintillaInternalFontParameters_new5(faceName_x: cstring, size_x: float64, weight_x: cint, italic_x: bool, extraFontFlag_x: cint): ptr cScintillaInternalFontParameters {.importc: "Scintilla__Internal__FontParameters_new5".}
proc fcScintillaInternalFontParameters_new6(faceName_x: cstring, size_x: float64, weight_x: cint, italic_x: bool, extraFontFlag_x: cint, technology_x: cint): ptr cScintillaInternalFontParameters {.importc: "Scintilla__Internal__FontParameters_new6".}
proc fcScintillaInternalFontParameters_new7(faceName_x: cstring, size_x: float64, weight_x: cint, italic_x: bool, extraFontFlag_x: cint, technology_x: cint, characterSet_x: cint): ptr cScintillaInternalFontParameters {.importc: "Scintilla__Internal__FontParameters_new7".}
proc fcScintillaInternalFontParameters_new8(faceName_x: cstring, size_x: float64, weight_x: cint, italic_x: bool, extraFontFlag_x: cint, technology_x: cint, characterSet_x: cint, localeName_x: cstring): ptr cScintillaInternalFontParameters {.importc: "Scintilla__Internal__FontParameters_new8".}
proc fcScintillaInternalFontParameters_new9(faceName_x: cstring, size_x: float64, weight_x: cint, italic_x: bool, extraFontFlag_x: cint, technology_x: cint, characterSet_x: cint, localeName_x: cstring, stretch_x: cint): ptr cScintillaInternalFontParameters {.importc: "Scintilla__Internal__FontParameters_new9".}
proc fcScintillaInternalFontParameters_delete(self: pointer) {.importc: "Scintilla__Internal__FontParameters_delete".}
proc fcScintillaInternalFont_new(): ptr cScintillaInternalFont {.importc: "Scintilla__Internal__Font_new".}
proc fcScintillaInternalFont_delete(self: pointer) {.importc: "Scintilla__Internal__Font_delete".}
proc fcScintillaInternalIScreenLine_Length(self: pointer, ): csize_t {.importc: "Scintilla__Internal__IScreenLine_Length".}
proc fcScintillaInternalIScreenLine_RepresentationCount(self: pointer, ): csize_t {.importc: "Scintilla__Internal__IScreenLine_RepresentationCount".}
proc fcScintillaInternalIScreenLine_Width(self: pointer, ): float64 {.importc: "Scintilla__Internal__IScreenLine_Width".}
proc fcScintillaInternalIScreenLine_Height(self: pointer, ): float64 {.importc: "Scintilla__Internal__IScreenLine_Height".}
proc fcScintillaInternalIScreenLine_TabWidth(self: pointer, ): float64 {.importc: "Scintilla__Internal__IScreenLine_TabWidth".}
proc fcScintillaInternalIScreenLine_TabWidthMinimumPixels(self: pointer, ): float64 {.importc: "Scintilla__Internal__IScreenLine_TabWidthMinimumPixels".}
proc fcScintillaInternalIScreenLine_FontOfPosition(self: pointer, position: csize_t): pointer {.importc: "Scintilla__Internal__IScreenLine_FontOfPosition".}
proc fcScintillaInternalIScreenLine_RepresentationWidth(self: pointer, position: csize_t): float64 {.importc: "Scintilla__Internal__IScreenLine_RepresentationWidth".}
proc fcScintillaInternalIScreenLine_TabPositionAfter(self: pointer, xPosition: float64): float64 {.importc: "Scintilla__Internal__IScreenLine_TabPositionAfter".}
proc fcScintillaInternalIScreenLine_operatorAssign(self: pointer, param1: pointer): void {.importc: "Scintilla__Internal__IScreenLine_operatorAssign".}
proc fcScintillaInternalIScreenLine_delete(self: pointer) {.importc: "Scintilla__Internal__IScreenLine_delete".}
proc fcScintillaInternalIScreenLineLayout_PositionFromX(self: pointer, xDistance: float64, charPosition: bool): csize_t {.importc: "Scintilla__Internal__IScreenLineLayout_PositionFromX".}
proc fcScintillaInternalIScreenLineLayout_XFromPosition(self: pointer, caretPosition: csize_t): float64 {.importc: "Scintilla__Internal__IScreenLineLayout_XFromPosition".}
proc fcScintillaInternalIScreenLineLayout_operatorAssign(self: pointer, param1: pointer): void {.importc: "Scintilla__Internal__IScreenLineLayout_operatorAssign".}
proc fcScintillaInternalIScreenLineLayout_delete(self: pointer) {.importc: "Scintilla__Internal__IScreenLineLayout_delete".}
proc fcScintillaInternalSurfaceMode_new(): ptr cScintillaInternalSurfaceMode {.importc: "Scintilla__Internal__SurfaceMode_new".}
proc fcScintillaInternalSurfaceMode_new2(codePage_x: cint, bidiR2L_x: bool): ptr cScintillaInternalSurfaceMode {.importc: "Scintilla__Internal__SurfaceMode_new2".}
proc fcScintillaInternalSurfaceMode_delete(self: pointer) {.importc: "Scintilla__Internal__SurfaceMode_delete".}
proc fcScintillaInternalSurface_new(): ptr cScintillaInternalSurface {.importc: "Scintilla__Internal__Surface_new".}
proc fcScintillaInternalSurface_Init(self: pointer, wid: pointer): void {.importc: "Scintilla__Internal__Surface_Init".}
proc fcScintillaInternalSurface_Init2(self: pointer, sid: pointer, wid: pointer): void {.importc: "Scintilla__Internal__Surface_Init2".}
proc fcScintillaInternalSurface_SetMode(self: pointer, mode: pointer): void {.importc: "Scintilla__Internal__Surface_SetMode".}
proc fcScintillaInternalSurface_Release(self: pointer, ): void {.importc: "Scintilla__Internal__Surface_Release".}
proc fcScintillaInternalSurface_SupportsFeature(self: pointer, feature: cint): cint {.importc: "Scintilla__Internal__Surface_SupportsFeature".}
proc fcScintillaInternalSurface_Initialised(self: pointer, ): bool {.importc: "Scintilla__Internal__Surface_Initialised".}
proc fcScintillaInternalSurface_LogPixelsY(self: pointer, ): cint {.importc: "Scintilla__Internal__Surface_LogPixelsY".}
proc fcScintillaInternalSurface_PixelDivisions(self: pointer, ): cint {.importc: "Scintilla__Internal__Surface_PixelDivisions".}
proc fcScintillaInternalSurface_DeviceHeightFont(self: pointer, points: cint): cint {.importc: "Scintilla__Internal__Surface_DeviceHeightFont".}
proc fcScintillaInternalSurface_LineDraw(self: pointer, start: pointer, endVal: pointer, stroke: pointer): void {.importc: "Scintilla__Internal__Surface_LineDraw".}
proc fcScintillaInternalSurface_PolyLine(self: pointer, pts: pointer, npts: csize_t, stroke: pointer): void {.importc: "Scintilla__Internal__Surface_PolyLine".}
proc fcScintillaInternalSurface_Polygon(self: pointer, pts: pointer, npts: csize_t, fillStroke: pointer): void {.importc: "Scintilla__Internal__Surface_Polygon".}
proc fcScintillaInternalSurface_RectangleDraw(self: pointer, rc: pointer, fillStroke: pointer): void {.importc: "Scintilla__Internal__Surface_RectangleDraw".}
proc fcScintillaInternalSurface_RectangleFrame(self: pointer, rc: pointer, stroke: pointer): void {.importc: "Scintilla__Internal__Surface_RectangleFrame".}
proc fcScintillaInternalSurface_FillRectangle(self: pointer, rc: pointer, fill: pointer): void {.importc: "Scintilla__Internal__Surface_FillRectangle".}
proc fcScintillaInternalSurface_FillRectangleAligned(self: pointer, rc: pointer, fill: pointer): void {.importc: "Scintilla__Internal__Surface_FillRectangleAligned".}
proc fcScintillaInternalSurface_FillRectangle2(self: pointer, rc: pointer, surfacePattern: pointer): void {.importc: "Scintilla__Internal__Surface_FillRectangle2".}
proc fcScintillaInternalSurface_RoundedRectangle(self: pointer, rc: pointer, fillStroke: pointer): void {.importc: "Scintilla__Internal__Surface_RoundedRectangle".}
proc fcScintillaInternalSurface_AlphaRectangle(self: pointer, rc: pointer, cornerSize: float64, fillStroke: pointer): void {.importc: "Scintilla__Internal__Surface_AlphaRectangle".}
proc fcScintillaInternalSurface_DrawRGBAImage(self: pointer, rc: pointer, width: cint, height: cint, pixelsImage: ptr uint8): void {.importc: "Scintilla__Internal__Surface_DrawRGBAImage".}
proc fcScintillaInternalSurface_Ellipse(self: pointer, rc: pointer, fillStroke: pointer): void {.importc: "Scintilla__Internal__Surface_Ellipse".}
proc fcScintillaInternalSurface_Stadium(self: pointer, rc: pointer, fillStroke: pointer, ends: cint): void {.importc: "Scintilla__Internal__Surface_Stadium".}
proc fcScintillaInternalSurface_Copy(self: pointer, rc: pointer, fromVal: pointer, surfaceSource: pointer): void {.importc: "Scintilla__Internal__Surface_Copy".}
proc fcScintillaInternalSurface_Ascent(self: pointer, font_x: pointer): float64 {.importc: "Scintilla__Internal__Surface_Ascent".}
proc fcScintillaInternalSurface_Descent(self: pointer, font_x: pointer): float64 {.importc: "Scintilla__Internal__Surface_Descent".}
proc fcScintillaInternalSurface_InternalLeading(self: pointer, font_x: pointer): float64 {.importc: "Scintilla__Internal__Surface_InternalLeading".}
proc fcScintillaInternalSurface_Height(self: pointer, font_x: pointer): float64 {.importc: "Scintilla__Internal__Surface_Height".}
proc fcScintillaInternalSurface_AverageCharWidth(self: pointer, font_x: pointer): float64 {.importc: "Scintilla__Internal__Surface_AverageCharWidth".}
proc fcScintillaInternalSurface_SetClip(self: pointer, rc: pointer): void {.importc: "Scintilla__Internal__Surface_SetClip".}
proc fcScintillaInternalSurface_PopClip(self: pointer, ): void {.importc: "Scintilla__Internal__Surface_PopClip".}
proc fcScintillaInternalSurface_FlushCachedState(self: pointer, ): void {.importc: "Scintilla__Internal__Surface_FlushCachedState".}
proc fcScintillaInternalSurface_FlushDrawing(self: pointer, ): void {.importc: "Scintilla__Internal__Surface_FlushDrawing".}
proc fcScintillaInternalSurface_override_virtual_Init(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_Init".}
proc fcScintillaInternalSurface_override_virtual_Init2(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_Init2".}
proc fcScintillaInternalSurface_override_virtual_SetMode(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_SetMode".}
proc fcScintillaInternalSurface_override_virtual_Release(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_Release".}
proc fcScintillaInternalSurface_override_virtual_SupportsFeature(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_SupportsFeature".}
proc fcScintillaInternalSurface_override_virtual_Initialised(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_Initialised".}
proc fcScintillaInternalSurface_override_virtual_LogPixelsY(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_LogPixelsY".}
proc fcScintillaInternalSurface_override_virtual_PixelDivisions(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_PixelDivisions".}
proc fcScintillaInternalSurface_override_virtual_DeviceHeightFont(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_DeviceHeightFont".}
proc fcScintillaInternalSurface_override_virtual_LineDraw(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_LineDraw".}
proc fcScintillaInternalSurface_override_virtual_PolyLine(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_PolyLine".}
proc fcScintillaInternalSurface_override_virtual_Polygon(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_Polygon".}
proc fcScintillaInternalSurface_override_virtual_RectangleDraw(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_RectangleDraw".}
proc fcScintillaInternalSurface_override_virtual_RectangleFrame(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_RectangleFrame".}
proc fcScintillaInternalSurface_override_virtual_FillRectangle(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_FillRectangle".}
proc fcScintillaInternalSurface_override_virtual_FillRectangleAligned(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_FillRectangleAligned".}
proc fcScintillaInternalSurface_override_virtual_FillRectangle2(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_FillRectangle2".}
proc fcScintillaInternalSurface_override_virtual_RoundedRectangle(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_RoundedRectangle".}
proc fcScintillaInternalSurface_override_virtual_AlphaRectangle(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_AlphaRectangle".}
proc fcScintillaInternalSurface_override_virtual_DrawRGBAImage(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_DrawRGBAImage".}
proc fcScintillaInternalSurface_override_virtual_Ellipse(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_Ellipse".}
proc fcScintillaInternalSurface_override_virtual_Stadium(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_Stadium".}
proc fcScintillaInternalSurface_override_virtual_Copy(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_Copy".}
proc fcScintillaInternalSurface_override_virtual_Ascent(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_Ascent".}
proc fcScintillaInternalSurface_override_virtual_Descent(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_Descent".}
proc fcScintillaInternalSurface_override_virtual_InternalLeading(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_InternalLeading".}
proc fcScintillaInternalSurface_override_virtual_Height(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_Height".}
proc fcScintillaInternalSurface_override_virtual_AverageCharWidth(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_AverageCharWidth".}
proc fcScintillaInternalSurface_override_virtual_SetClip(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_SetClip".}
proc fcScintillaInternalSurface_override_virtual_PopClip(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_PopClip".}
proc fcScintillaInternalSurface_override_virtual_FlushCachedState(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_FlushCachedState".}
proc fcScintillaInternalSurface_override_virtual_FlushDrawing(self: pointer, slot: int) {.importc: "Scintilla__Internal__Surface_override_virtual_FlushDrawing".}
proc fcScintillaInternalSurface_delete(self: pointer) {.importc: "Scintilla__Internal__Surface_delete".}
proc fcScintillaInternalWindow_new(): ptr cScintillaInternalWindow {.importc: "Scintilla__Internal__Window_new".}
proc fcScintillaInternalWindow_operatorAssign(self: pointer, wid_x: pointer): void {.importc: "Scintilla__Internal__Window_operatorAssign".}
proc fcScintillaInternalWindow_GetID(self: pointer, ): pointer {.importc: "Scintilla__Internal__Window_GetID".}
proc fcScintillaInternalWindow_Created(self: pointer, ): bool {.importc: "Scintilla__Internal__Window_Created".}
proc fcScintillaInternalWindow_Destroy(self: pointer, ): void {.importc: "Scintilla__Internal__Window_Destroy".}
proc fcScintillaInternalWindow_GetPosition(self: pointer, ): pointer {.importc: "Scintilla__Internal__Window_GetPosition".}
proc fcScintillaInternalWindow_SetPosition(self: pointer, rc: pointer): void {.importc: "Scintilla__Internal__Window_SetPosition".}
proc fcScintillaInternalWindow_SetPositionRelative(self: pointer, rc: pointer, relativeTo: pointer): void {.importc: "Scintilla__Internal__Window_SetPositionRelative".}
proc fcScintillaInternalWindow_GetClientPosition(self: pointer, ): pointer {.importc: "Scintilla__Internal__Window_GetClientPosition".}
proc fcScintillaInternalWindow_Show(self: pointer, ): void {.importc: "Scintilla__Internal__Window_Show".}
proc fcScintillaInternalWindow_InvalidateAll(self: pointer, ): void {.importc: "Scintilla__Internal__Window_InvalidateAll".}
proc fcScintillaInternalWindow_InvalidateRectangle(self: pointer, rc: pointer): void {.importc: "Scintilla__Internal__Window_InvalidateRectangle".}
proc fcScintillaInternalWindow_SetCursor(self: pointer, curs: cint): void {.importc: "Scintilla__Internal__Window_SetCursor".}
proc fcScintillaInternalWindow_GetMonitorRect(self: pointer, pt: pointer): pointer {.importc: "Scintilla__Internal__Window_GetMonitorRect".}
proc fcScintillaInternalWindow_Show1(self: pointer, show: bool): void {.importc: "Scintilla__Internal__Window_Show1".}
proc fcScintillaInternalWindow_delete(self: pointer) {.importc: "Scintilla__Internal__Window_delete".}
proc fcScintillaInternalListBoxEvent_new(event_x: cint): ptr cScintillaInternalListBoxEvent {.importc: "Scintilla__Internal__ListBoxEvent_new".}
proc fcScintillaInternalListBoxEvent_delete(self: pointer) {.importc: "Scintilla__Internal__ListBoxEvent_delete".}
proc fcScintillaInternalIListBoxDelegate_ListNotify(self: pointer, plbe: pointer): void {.importc: "Scintilla__Internal__IListBoxDelegate_ListNotify".}
proc fcScintillaInternalIListBoxDelegate_operatorAssign(self: pointer, param1: pointer): void {.importc: "Scintilla__Internal__IListBoxDelegate_operatorAssign".}
proc fcScintillaInternalIListBoxDelegate_delete(self: pointer) {.importc: "Scintilla__Internal__IListBoxDelegate_delete".}
proc fcScintillaInternalListOptions_delete(self: pointer) {.importc: "Scintilla__Internal__ListOptions_delete".}
proc fcScintillaInternalListBox_new(): ptr cScintillaInternalListBox {.importc: "Scintilla__Internal__ListBox_new".}
proc fcScintillaInternalListBox_SetFont(self: pointer, font: pointer): void {.importc: "Scintilla__Internal__ListBox_SetFont".}
proc fcScintillaInternalListBox_Create(self: pointer, parent: pointer, ctrlID: cint, location: pointer, lineHeight_x: cint, unicodeMode_x: bool, technology_x: cint): void {.importc: "Scintilla__Internal__ListBox_Create".}
proc fcScintillaInternalListBox_SetAverageCharWidth(self: pointer, width: cint): void {.importc: "Scintilla__Internal__ListBox_SetAverageCharWidth".}
proc fcScintillaInternalListBox_SetVisibleRows(self: pointer, rows: cint): void {.importc: "Scintilla__Internal__ListBox_SetVisibleRows".}
proc fcScintillaInternalListBox_GetVisibleRows(self: pointer, ): cint {.importc: "Scintilla__Internal__ListBox_GetVisibleRows".}
proc fcScintillaInternalListBox_GetDesiredRect(self: pointer, ): pointer {.importc: "Scintilla__Internal__ListBox_GetDesiredRect".}
proc fcScintillaInternalListBox_CaretFromEdge(self: pointer, ): cint {.importc: "Scintilla__Internal__ListBox_CaretFromEdge".}
proc fcScintillaInternalListBox_Clear(self: pointer, ): void {.importc: "Scintilla__Internal__ListBox_Clear".}
proc fcScintillaInternalListBox_Append(self: pointer, s: cstring, typeVal: cint): void {.importc: "Scintilla__Internal__ListBox_Append".}
proc fcScintillaInternalListBox_Length(self: pointer, ): cint {.importc: "Scintilla__Internal__ListBox_Length".}
proc fcScintillaInternalListBox_Select(self: pointer, n: cint): void {.importc: "Scintilla__Internal__ListBox_Select".}
proc fcScintillaInternalListBox_GetSelection(self: pointer, ): cint {.importc: "Scintilla__Internal__ListBox_GetSelection".}
proc fcScintillaInternalListBox_Find(self: pointer, prefix: cstring): cint {.importc: "Scintilla__Internal__ListBox_Find".}
proc fcScintillaInternalListBox_RegisterImage(self: pointer, typeVal: cint, xpm_data: cstring): void {.importc: "Scintilla__Internal__ListBox_RegisterImage".}
proc fcScintillaInternalListBox_RegisterRGBAImage(self: pointer, typeVal: cint, width: cint, height: cint, pixelsImage: ptr uint8): void {.importc: "Scintilla__Internal__ListBox_RegisterRGBAImage".}
proc fcScintillaInternalListBox_ClearRegisteredImages(self: pointer, ): void {.importc: "Scintilla__Internal__ListBox_ClearRegisteredImages".}
proc fcScintillaInternalListBox_SetDelegate(self: pointer, lbDelegate: pointer): void {.importc: "Scintilla__Internal__ListBox_SetDelegate".}
proc fcScintillaInternalListBox_SetList(self: pointer, list: cstring, separator: cchar, typesep: cchar): void {.importc: "Scintilla__Internal__ListBox_SetList".}
proc fcScintillaInternalListBox_SetOptions(self: pointer, options_x: pointer): void {.importc: "Scintilla__Internal__ListBox_SetOptions".}
proc fcScintillaInternalListBox_override_virtual_SetFont(self: pointer, slot: int) {.importc: "Scintilla__Internal__ListBox_override_virtual_SetFont".}
proc fcScintillaInternalListBox_override_virtual_Create(self: pointer, slot: int) {.importc: "Scintilla__Internal__ListBox_override_virtual_Create".}
proc fcScintillaInternalListBox_override_virtual_SetAverageCharWidth(self: pointer, slot: int) {.importc: "Scintilla__Internal__ListBox_override_virtual_SetAverageCharWidth".}
proc fcScintillaInternalListBox_override_virtual_SetVisibleRows(self: pointer, slot: int) {.importc: "Scintilla__Internal__ListBox_override_virtual_SetVisibleRows".}
proc fcScintillaInternalListBox_override_virtual_GetVisibleRows(self: pointer, slot: int) {.importc: "Scintilla__Internal__ListBox_override_virtual_GetVisibleRows".}
proc fcScintillaInternalListBox_override_virtual_GetDesiredRect(self: pointer, slot: int) {.importc: "Scintilla__Internal__ListBox_override_virtual_GetDesiredRect".}
proc fcScintillaInternalListBox_override_virtual_CaretFromEdge(self: pointer, slot: int) {.importc: "Scintilla__Internal__ListBox_override_virtual_CaretFromEdge".}
proc fcScintillaInternalListBox_override_virtual_Clear(self: pointer, slot: int) {.importc: "Scintilla__Internal__ListBox_override_virtual_Clear".}
proc fcScintillaInternalListBox_override_virtual_Append(self: pointer, slot: int) {.importc: "Scintilla__Internal__ListBox_override_virtual_Append".}
proc fcScintillaInternalListBox_override_virtual_Length(self: pointer, slot: int) {.importc: "Scintilla__Internal__ListBox_override_virtual_Length".}
proc fcScintillaInternalListBox_override_virtual_Select(self: pointer, slot: int) {.importc: "Scintilla__Internal__ListBox_override_virtual_Select".}
proc fcScintillaInternalListBox_override_virtual_GetSelection(self: pointer, slot: int) {.importc: "Scintilla__Internal__ListBox_override_virtual_GetSelection".}
proc fcScintillaInternalListBox_override_virtual_Find(self: pointer, slot: int) {.importc: "Scintilla__Internal__ListBox_override_virtual_Find".}
proc fcScintillaInternalListBox_override_virtual_RegisterImage(self: pointer, slot: int) {.importc: "Scintilla__Internal__ListBox_override_virtual_RegisterImage".}
proc fcScintillaInternalListBox_override_virtual_RegisterRGBAImage(self: pointer, slot: int) {.importc: "Scintilla__Internal__ListBox_override_virtual_RegisterRGBAImage".}
proc fcScintillaInternalListBox_override_virtual_ClearRegisteredImages(self: pointer, slot: int) {.importc: "Scintilla__Internal__ListBox_override_virtual_ClearRegisteredImages".}
proc fcScintillaInternalListBox_override_virtual_SetDelegate(self: pointer, slot: int) {.importc: "Scintilla__Internal__ListBox_override_virtual_SetDelegate".}
proc fcScintillaInternalListBox_override_virtual_SetList(self: pointer, slot: int) {.importc: "Scintilla__Internal__ListBox_override_virtual_SetList".}
proc fcScintillaInternalListBox_override_virtual_SetOptions(self: pointer, slot: int) {.importc: "Scintilla__Internal__ListBox_override_virtual_SetOptions".}
proc fcScintillaInternalListBox_delete(self: pointer) {.importc: "Scintilla__Internal__ListBox_delete".}
proc fcScintillaInternalMenu_new(): ptr cScintillaInternalMenu {.importc: "Scintilla__Internal__Menu_new".}
proc fcScintillaInternalMenu_GetID(self: pointer, ): pointer {.importc: "Scintilla__Internal__Menu_GetID".}
proc fcScintillaInternalMenu_CreatePopUp(self: pointer, ): void {.importc: "Scintilla__Internal__Menu_CreatePopUp".}
proc fcScintillaInternalMenu_Destroy(self: pointer, ): void {.importc: "Scintilla__Internal__Menu_Destroy".}
proc fcScintillaInternalMenu_Show(self: pointer, pt: pointer, w: pointer): void {.importc: "Scintilla__Internal__Menu_Show".}
proc fcScintillaInternalMenu_delete(self: pointer) {.importc: "Scintilla__Internal__Menu_delete".}
proc fcSci_CharacterRange_delete(self: pointer) {.importc: "Sci_CharacterRange_delete".}
proc fcSci_CharacterRangeFull_delete(self: pointer) {.importc: "Sci_CharacterRangeFull_delete".}
proc fcSci_TextRange_delete(self: pointer) {.importc: "Sci_TextRange_delete".}
proc fcSci_TextRangeFull_delete(self: pointer) {.importc: "Sci_TextRangeFull_delete".}
proc fcSci_TextToFind_delete(self: pointer) {.importc: "Sci_TextToFind_delete".}
proc fcSci_TextToFindFull_delete(self: pointer) {.importc: "Sci_TextToFindFull_delete".}
proc fcSci_Rectangle_delete(self: pointer) {.importc: "Sci_Rectangle_delete".}
proc fcSci_RangeToFormat_delete(self: pointer) {.importc: "Sci_RangeToFormat_delete".}
proc fcSci_RangeToFormatFull_delete(self: pointer) {.importc: "Sci_RangeToFormatFull_delete".}
proc fcSci_NotifyHeader_delete(self: pointer) {.importc: "Sci_NotifyHeader_delete".}
proc fcSCNotification_delete(self: pointer) {.importc: "SCNotification_delete".}
proc fcScintillaEditBase_new(parent: pointer): ptr cScintillaEditBase {.importc: "ScintillaEditBase_new".}
proc fcScintillaEditBase_new2(): ptr cScintillaEditBase {.importc: "ScintillaEditBase_new2".}
proc fcScintillaEditBase_metaObject(self: pointer, ): pointer {.importc: "ScintillaEditBase_metaObject".}
proc fcScintillaEditBase_metacast(self: pointer, param1: cstring): pointer {.importc: "ScintillaEditBase_metacast".}
proc fcScintillaEditBase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "ScintillaEditBase_metacall".}
proc fcScintillaEditBase_tr(s: cstring): struct_miqt_string {.importc: "ScintillaEditBase_tr".}
proc fcScintillaEditBase_trUtf8(s: cstring): struct_miqt_string {.importc: "ScintillaEditBase_trUtf8".}
proc fcScintillaEditBase_send(self: pointer, iMessage: cuint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEditBase_send".}
proc fcScintillaEditBase_sends(self: pointer, iMessage: cuint, wParam: miqt_uintptr_t, s: cstring): miqt_intptr_t {.importc: "ScintillaEditBase_sends".}
proc fcScintillaEditBase_scrollHorizontal(self: pointer, value: cint): void {.importc: "ScintillaEditBase_scrollHorizontal".}
proc fcScintillaEditBase_scrollVertical(self: pointer, value: cint): void {.importc: "ScintillaEditBase_scrollVertical".}
proc fcScintillaEditBase_notifyParent(self: pointer, scn: pointer): void {.importc: "ScintillaEditBase_notifyParent".}
proc fcScintillaEditBase_eventCommand(self: pointer, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): void {.importc: "ScintillaEditBase_eventCommand".}
proc fcScintillaEditBase_horizontalScrolled(self: pointer, value: cint): void {.importc: "ScintillaEditBase_horizontalScrolled".}
proc fScintillaEditBase_connect_horizontalScrolled(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_horizontalScrolled".}
proc fcScintillaEditBase_verticalScrolled(self: pointer, value: cint): void {.importc: "ScintillaEditBase_verticalScrolled".}
proc fScintillaEditBase_connect_verticalScrolled(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_verticalScrolled".}
proc fcScintillaEditBase_horizontalRangeChanged(self: pointer, max: cint, page: cint): void {.importc: "ScintillaEditBase_horizontalRangeChanged".}
proc fScintillaEditBase_connect_horizontalRangeChanged(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_horizontalRangeChanged".}
proc fcScintillaEditBase_verticalRangeChanged(self: pointer, max: cint, page: cint): void {.importc: "ScintillaEditBase_verticalRangeChanged".}
proc fScintillaEditBase_connect_verticalRangeChanged(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_verticalRangeChanged".}
proc fcScintillaEditBase_notifyChange(self: pointer, ): void {.importc: "ScintillaEditBase_notifyChange".}
proc fScintillaEditBase_connect_notifyChange(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_notifyChange".}
proc fcScintillaEditBase_linesAdded(self: pointer, linesAdded: miqt_intptr_t): void {.importc: "ScintillaEditBase_linesAdded".}
proc fScintillaEditBase_connect_linesAdded(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_linesAdded".}
proc fcScintillaEditBase_aboutToCopy(self: pointer, data: pointer): void {.importc: "ScintillaEditBase_aboutToCopy".}
proc fScintillaEditBase_connect_aboutToCopy(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_aboutToCopy".}
proc fcScintillaEditBase_styleNeeded(self: pointer, position: miqt_intptr_t): void {.importc: "ScintillaEditBase_styleNeeded".}
proc fScintillaEditBase_connect_styleNeeded(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_styleNeeded".}
proc fcScintillaEditBase_charAdded(self: pointer, ch: cint): void {.importc: "ScintillaEditBase_charAdded".}
proc fScintillaEditBase_connect_charAdded(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_charAdded".}
proc fcScintillaEditBase_savePointChanged(self: pointer, dirty: bool): void {.importc: "ScintillaEditBase_savePointChanged".}
proc fScintillaEditBase_connect_savePointChanged(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_savePointChanged".}
proc fcScintillaEditBase_modifyAttemptReadOnly(self: pointer, ): void {.importc: "ScintillaEditBase_modifyAttemptReadOnly".}
proc fScintillaEditBase_connect_modifyAttemptReadOnly(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_modifyAttemptReadOnly".}
proc fcScintillaEditBase_key(self: pointer, key: cint): void {.importc: "ScintillaEditBase_key".}
proc fScintillaEditBase_connect_key(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_key".}
proc fcScintillaEditBase_doubleClick(self: pointer, position: miqt_intptr_t, line: miqt_intptr_t): void {.importc: "ScintillaEditBase_doubleClick".}
proc fScintillaEditBase_connect_doubleClick(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_doubleClick".}
proc fcScintillaEditBase_updateUi(self: pointer, updated: cint): void {.importc: "ScintillaEditBase_updateUi".}
proc fScintillaEditBase_connect_updateUi(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_updateUi".}
proc fcScintillaEditBase_modified(self: pointer, typeVal: cint, position: miqt_intptr_t, length: miqt_intptr_t, linesAdded: miqt_intptr_t, text: struct_miqt_string, line: miqt_intptr_t, foldNow: cint, foldPrev: cint): void {.importc: "ScintillaEditBase_modified".}
proc fScintillaEditBase_connect_modified(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_modified".}
proc fcScintillaEditBase_macroRecord(self: pointer, message: cint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): void {.importc: "ScintillaEditBase_macroRecord".}
proc fScintillaEditBase_connect_macroRecord(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_macroRecord".}
proc fcScintillaEditBase_marginClicked(self: pointer, position: miqt_intptr_t, modifiers: cint, margin: cint): void {.importc: "ScintillaEditBase_marginClicked".}
proc fScintillaEditBase_connect_marginClicked(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_marginClicked".}
proc fcScintillaEditBase_textAreaClicked(self: pointer, line: miqt_intptr_t, modifiers: cint): void {.importc: "ScintillaEditBase_textAreaClicked".}
proc fScintillaEditBase_connect_textAreaClicked(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_textAreaClicked".}
proc fcScintillaEditBase_needShown(self: pointer, position: miqt_intptr_t, length: miqt_intptr_t): void {.importc: "ScintillaEditBase_needShown".}
proc fScintillaEditBase_connect_needShown(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_needShown".}
proc fcScintillaEditBase_painted(self: pointer, ): void {.importc: "ScintillaEditBase_painted".}
proc fScintillaEditBase_connect_painted(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_painted".}
proc fcScintillaEditBase_userListSelection(self: pointer, ): void {.importc: "ScintillaEditBase_userListSelection".}
proc fScintillaEditBase_connect_userListSelection(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_userListSelection".}
proc fcScintillaEditBase_uriDropped(self: pointer, uri: struct_miqt_string): void {.importc: "ScintillaEditBase_uriDropped".}
proc fScintillaEditBase_connect_uriDropped(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_uriDropped".}
proc fcScintillaEditBase_dwellStart(self: pointer, x: cint, y: cint): void {.importc: "ScintillaEditBase_dwellStart".}
proc fScintillaEditBase_connect_dwellStart(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_dwellStart".}
proc fcScintillaEditBase_dwellEnd(self: pointer, x: cint, y: cint): void {.importc: "ScintillaEditBase_dwellEnd".}
proc fScintillaEditBase_connect_dwellEnd(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_dwellEnd".}
proc fcScintillaEditBase_zoom(self: pointer, zoom: cint): void {.importc: "ScintillaEditBase_zoom".}
proc fScintillaEditBase_connect_zoom(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_zoom".}
proc fcScintillaEditBase_hotSpotClick(self: pointer, position: miqt_intptr_t, modifiers: cint): void {.importc: "ScintillaEditBase_hotSpotClick".}
proc fScintillaEditBase_connect_hotSpotClick(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_hotSpotClick".}
proc fcScintillaEditBase_hotSpotDoubleClick(self: pointer, position: miqt_intptr_t, modifiers: cint): void {.importc: "ScintillaEditBase_hotSpotDoubleClick".}
proc fScintillaEditBase_connect_hotSpotDoubleClick(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_hotSpotDoubleClick".}
proc fcScintillaEditBase_callTipClick(self: pointer, ): void {.importc: "ScintillaEditBase_callTipClick".}
proc fScintillaEditBase_connect_callTipClick(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_callTipClick".}
proc fcScintillaEditBase_autoCompleteSelection(self: pointer, position: miqt_intptr_t, text: struct_miqt_string): void {.importc: "ScintillaEditBase_autoCompleteSelection".}
proc fScintillaEditBase_connect_autoCompleteSelection(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_autoCompleteSelection".}
proc fcScintillaEditBase_autoCompleteCancelled(self: pointer, ): void {.importc: "ScintillaEditBase_autoCompleteCancelled".}
proc fScintillaEditBase_connect_autoCompleteCancelled(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_autoCompleteCancelled".}
proc fcScintillaEditBase_focusChanged(self: pointer, focused: bool): void {.importc: "ScintillaEditBase_focusChanged".}
proc fScintillaEditBase_connect_focusChanged(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_focusChanged".}
proc fcScintillaEditBase_notify(self: pointer, pscn: pointer): void {.importc: "ScintillaEditBase_notify".}
proc fScintillaEditBase_connect_notify(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_notify".}
proc fcScintillaEditBase_command(self: pointer, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): void {.importc: "ScintillaEditBase_command".}
proc fScintillaEditBase_connect_command(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_command".}
proc fcScintillaEditBase_buttonPressed(self: pointer, event: pointer): void {.importc: "ScintillaEditBase_buttonPressed".}
proc fScintillaEditBase_connect_buttonPressed(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_buttonPressed".}
proc fcScintillaEditBase_buttonReleased(self: pointer, event: pointer): void {.importc: "ScintillaEditBase_buttonReleased".}
proc fScintillaEditBase_connect_buttonReleased(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_buttonReleased".}
proc fcScintillaEditBase_keyPressed(self: pointer, event: pointer): void {.importc: "ScintillaEditBase_keyPressed".}
proc fScintillaEditBase_connect_keyPressed(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_keyPressed".}
proc fcScintillaEditBase_resized(self: pointer, ): void {.importc: "ScintillaEditBase_resized".}
proc fScintillaEditBase_connect_resized(self: pointer, slot: int) {.importc: "ScintillaEditBase_connect_resized".}
proc fcScintillaEditBase_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "ScintillaEditBase_tr2".}
proc fcScintillaEditBase_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "ScintillaEditBase_tr3".}
proc fcScintillaEditBase_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "ScintillaEditBase_trUtf82".}
proc fcScintillaEditBase_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "ScintillaEditBase_trUtf83".}
proc fScintillaEditBase_virtualbase_metaObject(self: pointer, ): pointer{.importc: "ScintillaEditBase_virtualbase_metaObject".}
proc fcScintillaEditBase_override_virtual_metaObject(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_metaObject".}
proc fScintillaEditBase_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "ScintillaEditBase_virtualbase_metacast".}
proc fcScintillaEditBase_override_virtual_metacast(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_metacast".}
proc fScintillaEditBase_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "ScintillaEditBase_virtualbase_metacall".}
proc fcScintillaEditBase_override_virtual_metacall(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_metacall".}
proc fScintillaEditBase_virtualbase_send(self: pointer, iMessage: cuint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): miqt_intptr_t{.importc: "ScintillaEditBase_virtualbase_send".}
proc fcScintillaEditBase_override_virtual_send(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_send".}
proc fScintillaEditBase_virtualbase_sends(self: pointer, iMessage: cuint, wParam: miqt_uintptr_t, s: cstring): miqt_intptr_t{.importc: "ScintillaEditBase_virtualbase_sends".}
proc fcScintillaEditBase_override_virtual_sends(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_sends".}
proc fScintillaEditBase_virtualbase_event(self: pointer, event: pointer): bool{.importc: "ScintillaEditBase_virtualbase_event".}
proc fcScintillaEditBase_override_virtual_event(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_event".}
proc fScintillaEditBase_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "ScintillaEditBase_virtualbase_paintEvent".}
proc fcScintillaEditBase_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_paintEvent".}
proc fScintillaEditBase_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "ScintillaEditBase_virtualbase_wheelEvent".}
proc fcScintillaEditBase_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_wheelEvent".}
proc fScintillaEditBase_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "ScintillaEditBase_virtualbase_focusInEvent".}
proc fcScintillaEditBase_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_focusInEvent".}
proc fScintillaEditBase_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "ScintillaEditBase_virtualbase_focusOutEvent".}
proc fcScintillaEditBase_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_focusOutEvent".}
proc fScintillaEditBase_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "ScintillaEditBase_virtualbase_resizeEvent".}
proc fcScintillaEditBase_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_resizeEvent".}
proc fScintillaEditBase_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "ScintillaEditBase_virtualbase_keyPressEvent".}
proc fcScintillaEditBase_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_keyPressEvent".}
proc fScintillaEditBase_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "ScintillaEditBase_virtualbase_mousePressEvent".}
proc fcScintillaEditBase_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_mousePressEvent".}
proc fScintillaEditBase_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "ScintillaEditBase_virtualbase_mouseReleaseEvent".}
proc fcScintillaEditBase_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_mouseReleaseEvent".}
proc fScintillaEditBase_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "ScintillaEditBase_virtualbase_mouseDoubleClickEvent".}
proc fcScintillaEditBase_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_mouseDoubleClickEvent".}
proc fScintillaEditBase_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "ScintillaEditBase_virtualbase_mouseMoveEvent".}
proc fcScintillaEditBase_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_mouseMoveEvent".}
proc fScintillaEditBase_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "ScintillaEditBase_virtualbase_contextMenuEvent".}
proc fcScintillaEditBase_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_contextMenuEvent".}
proc fScintillaEditBase_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "ScintillaEditBase_virtualbase_dragEnterEvent".}
proc fcScintillaEditBase_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_dragEnterEvent".}
proc fScintillaEditBase_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "ScintillaEditBase_virtualbase_dragLeaveEvent".}
proc fcScintillaEditBase_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_dragLeaveEvent".}
proc fScintillaEditBase_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "ScintillaEditBase_virtualbase_dragMoveEvent".}
proc fcScintillaEditBase_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_dragMoveEvent".}
proc fScintillaEditBase_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "ScintillaEditBase_virtualbase_dropEvent".}
proc fcScintillaEditBase_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_dropEvent".}
proc fScintillaEditBase_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "ScintillaEditBase_virtualbase_inputMethodEvent".}
proc fcScintillaEditBase_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_inputMethodEvent".}
proc fScintillaEditBase_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "ScintillaEditBase_virtualbase_inputMethodQuery".}
proc fcScintillaEditBase_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_inputMethodQuery".}
proc fScintillaEditBase_virtualbase_scrollContentsBy(self: pointer, param1: cint, param2: cint): void{.importc: "ScintillaEditBase_virtualbase_scrollContentsBy".}
proc fcScintillaEditBase_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_scrollContentsBy".}
proc fScintillaEditBase_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "ScintillaEditBase_virtualbase_minimumSizeHint".}
proc fcScintillaEditBase_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_minimumSizeHint".}
proc fScintillaEditBase_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "ScintillaEditBase_virtualbase_sizeHint".}
proc fcScintillaEditBase_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_sizeHint".}
proc fScintillaEditBase_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "ScintillaEditBase_virtualbase_setupViewport".}
proc fcScintillaEditBase_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_setupViewport".}
proc fScintillaEditBase_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "ScintillaEditBase_virtualbase_eventFilter".}
proc fcScintillaEditBase_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_eventFilter".}
proc fScintillaEditBase_virtualbase_viewportEvent(self: pointer, param1: pointer): bool{.importc: "ScintillaEditBase_virtualbase_viewportEvent".}
proc fcScintillaEditBase_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_viewportEvent".}
proc fScintillaEditBase_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "ScintillaEditBase_virtualbase_viewportSizeHint".}
proc fcScintillaEditBase_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_viewportSizeHint".}
proc fScintillaEditBase_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "ScintillaEditBase_virtualbase_changeEvent".}
proc fcScintillaEditBase_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_changeEvent".}
proc fScintillaEditBase_virtualbase_devType(self: pointer, ): cint{.importc: "ScintillaEditBase_virtualbase_devType".}
proc fcScintillaEditBase_override_virtual_devType(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_devType".}
proc fScintillaEditBase_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "ScintillaEditBase_virtualbase_setVisible".}
proc fcScintillaEditBase_override_virtual_setVisible(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_setVisible".}
proc fScintillaEditBase_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "ScintillaEditBase_virtualbase_heightForWidth".}
proc fcScintillaEditBase_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_heightForWidth".}
proc fScintillaEditBase_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "ScintillaEditBase_virtualbase_hasHeightForWidth".}
proc fcScintillaEditBase_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_hasHeightForWidth".}
proc fScintillaEditBase_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "ScintillaEditBase_virtualbase_paintEngine".}
proc fcScintillaEditBase_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_paintEngine".}
proc fScintillaEditBase_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "ScintillaEditBase_virtualbase_keyReleaseEvent".}
proc fcScintillaEditBase_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_keyReleaseEvent".}
proc fScintillaEditBase_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "ScintillaEditBase_virtualbase_enterEvent".}
proc fcScintillaEditBase_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_enterEvent".}
proc fScintillaEditBase_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "ScintillaEditBase_virtualbase_leaveEvent".}
proc fcScintillaEditBase_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_leaveEvent".}
proc fScintillaEditBase_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "ScintillaEditBase_virtualbase_moveEvent".}
proc fcScintillaEditBase_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_moveEvent".}
proc fScintillaEditBase_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "ScintillaEditBase_virtualbase_closeEvent".}
proc fcScintillaEditBase_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_closeEvent".}
proc fScintillaEditBase_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "ScintillaEditBase_virtualbase_tabletEvent".}
proc fcScintillaEditBase_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_tabletEvent".}
proc fScintillaEditBase_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "ScintillaEditBase_virtualbase_actionEvent".}
proc fcScintillaEditBase_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_actionEvent".}
proc fScintillaEditBase_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "ScintillaEditBase_virtualbase_showEvent".}
proc fcScintillaEditBase_override_virtual_showEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_showEvent".}
proc fScintillaEditBase_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "ScintillaEditBase_virtualbase_hideEvent".}
proc fcScintillaEditBase_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_hideEvent".}
proc fScintillaEditBase_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "ScintillaEditBase_virtualbase_nativeEvent".}
proc fcScintillaEditBase_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_nativeEvent".}
proc fScintillaEditBase_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "ScintillaEditBase_virtualbase_metric".}
proc fcScintillaEditBase_override_virtual_metric(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_metric".}
proc fScintillaEditBase_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "ScintillaEditBase_virtualbase_initPainter".}
proc fcScintillaEditBase_override_virtual_initPainter(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_initPainter".}
proc fScintillaEditBase_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "ScintillaEditBase_virtualbase_redirected".}
proc fcScintillaEditBase_override_virtual_redirected(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_redirected".}
proc fScintillaEditBase_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "ScintillaEditBase_virtualbase_sharedPainter".}
proc fcScintillaEditBase_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_sharedPainter".}
proc fScintillaEditBase_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "ScintillaEditBase_virtualbase_focusNextPrevChild".}
proc fcScintillaEditBase_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_focusNextPrevChild".}
proc fScintillaEditBase_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "ScintillaEditBase_virtualbase_timerEvent".}
proc fcScintillaEditBase_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_timerEvent".}
proc fScintillaEditBase_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "ScintillaEditBase_virtualbase_childEvent".}
proc fcScintillaEditBase_override_virtual_childEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_childEvent".}
proc fScintillaEditBase_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "ScintillaEditBase_virtualbase_customEvent".}
proc fcScintillaEditBase_override_virtual_customEvent(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_customEvent".}
proc fScintillaEditBase_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "ScintillaEditBase_virtualbase_connectNotify".}
proc fcScintillaEditBase_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_connectNotify".}
proc fScintillaEditBase_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "ScintillaEditBase_virtualbase_disconnectNotify".}
proc fcScintillaEditBase_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "ScintillaEditBase_override_virtual_disconnectNotify".}
proc fcScintillaEditBase_staticMetaObject(): pointer {.importc: "ScintillaEditBase_staticMetaObject".}
proc fcScintillaEditBase_delete(self: pointer) {.importc: "ScintillaEditBase_delete".}
proc fcScintillaDocument_new(): ptr cScintillaDocument {.importc: "ScintillaDocument_new".}
proc fcScintillaDocument_new2(parent: pointer): ptr cScintillaDocument {.importc: "ScintillaDocument_new2".}
proc fcScintillaDocument_new3(parent: pointer, pdoc_x: pointer): ptr cScintillaDocument {.importc: "ScintillaDocument_new3".}
proc fcScintillaDocument_metaObject(self: pointer, ): pointer {.importc: "ScintillaDocument_metaObject".}
proc fcScintillaDocument_metacast(self: pointer, param1: cstring): pointer {.importc: "ScintillaDocument_metacast".}
proc fcScintillaDocument_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "ScintillaDocument_metacall".}
proc fcScintillaDocument_tr(s: cstring): struct_miqt_string {.importc: "ScintillaDocument_tr".}
proc fcScintillaDocument_trUtf8(s: cstring): struct_miqt_string {.importc: "ScintillaDocument_trUtf8".}
proc fcScintillaDocument_pointer(self: pointer, ): pointer {.importc: "ScintillaDocument_pointer".}
proc fcScintillaDocument_lineFromPosition(self: pointer, pos: cint): cint {.importc: "ScintillaDocument_lineFromPosition".}
proc fcScintillaDocument_isCrLf(self: pointer, pos: cint): bool {.importc: "ScintillaDocument_isCrLf".}
proc fcScintillaDocument_deleteChars(self: pointer, pos: cint, len: cint): bool {.importc: "ScintillaDocument_deleteChars".}
proc fcScintillaDocument_undo(self: pointer, ): cint {.importc: "ScintillaDocument_undo".}
proc fcScintillaDocument_redo(self: pointer, ): cint {.importc: "ScintillaDocument_redo".}
proc fcScintillaDocument_canUndo(self: pointer, ): bool {.importc: "ScintillaDocument_canUndo".}
proc fcScintillaDocument_canRedo(self: pointer, ): bool {.importc: "ScintillaDocument_canRedo".}
proc fcScintillaDocument_deleteUndoHistory(self: pointer, ): void {.importc: "ScintillaDocument_deleteUndoHistory".}
proc fcScintillaDocument_setUndoCollection(self: pointer, collect_undo: bool): bool {.importc: "ScintillaDocument_setUndoCollection".}
proc fcScintillaDocument_isCollectingUndo(self: pointer, ): bool {.importc: "ScintillaDocument_isCollectingUndo".}
proc fcScintillaDocument_beginUndoAction(self: pointer, ): void {.importc: "ScintillaDocument_beginUndoAction".}
proc fcScintillaDocument_endUndoAction(self: pointer, ): void {.importc: "ScintillaDocument_endUndoAction".}
proc fcScintillaDocument_setSavePoint(self: pointer, ): void {.importc: "ScintillaDocument_setSavePoint".}
proc fcScintillaDocument_isSavePoint(self: pointer, ): bool {.importc: "ScintillaDocument_isSavePoint".}
proc fcScintillaDocument_setReadOnly(self: pointer, read_only: bool): void {.importc: "ScintillaDocument_setReadOnly".}
proc fcScintillaDocument_isReadOnly(self: pointer, ): bool {.importc: "ScintillaDocument_isReadOnly".}
proc fcScintillaDocument_insertString(self: pointer, position: cint, str: struct_miqt_string): void {.importc: "ScintillaDocument_insertString".}
proc fcScintillaDocument_getCharRange(self: pointer, position: cint, length: cint): struct_miqt_string {.importc: "ScintillaDocument_getCharRange".}
proc fcScintillaDocument_styleAt(self: pointer, position: cint): cchar {.importc: "ScintillaDocument_styleAt".}
proc fcScintillaDocument_lineStart(self: pointer, lineno: cint): cint {.importc: "ScintillaDocument_lineStart".}
proc fcScintillaDocument_lineEnd(self: pointer, lineno: cint): cint {.importc: "ScintillaDocument_lineEnd".}
proc fcScintillaDocument_lineEndPosition(self: pointer, pos: cint): cint {.importc: "ScintillaDocument_lineEndPosition".}
proc fcScintillaDocument_length(self: pointer, ): cint {.importc: "ScintillaDocument_length".}
proc fcScintillaDocument_linesTotal(self: pointer, ): cint {.importc: "ScintillaDocument_linesTotal".}
proc fcScintillaDocument_startStyling(self: pointer, position: cint): void {.importc: "ScintillaDocument_startStyling".}
proc fcScintillaDocument_setStyleFor(self: pointer, length: cint, style: cchar): bool {.importc: "ScintillaDocument_setStyleFor".}
proc fcScintillaDocument_getEndStyled(self: pointer, ): cint {.importc: "ScintillaDocument_getEndStyled".}
proc fcScintillaDocument_ensureStyledTo(self: pointer, position: cint): void {.importc: "ScintillaDocument_ensureStyledTo".}
proc fcScintillaDocument_setCurrentIndicator(self: pointer, indic: cint): void {.importc: "ScintillaDocument_setCurrentIndicator".}
proc fcScintillaDocument_decorationFillRange(self: pointer, position: cint, value: cint, fillLength: cint): void {.importc: "ScintillaDocument_decorationFillRange".}
proc fcScintillaDocument_decorationsValueAt(self: pointer, indic: cint, position: cint): cint {.importc: "ScintillaDocument_decorationsValueAt".}
proc fcScintillaDocument_decorationsStart(self: pointer, indic: cint, position: cint): cint {.importc: "ScintillaDocument_decorationsStart".}
proc fcScintillaDocument_decorationsEnd(self: pointer, indic: cint, position: cint): cint {.importc: "ScintillaDocument_decorationsEnd".}
proc fcScintillaDocument_getCodePage(self: pointer, ): cint {.importc: "ScintillaDocument_getCodePage".}
proc fcScintillaDocument_setCodePage(self: pointer, code_page: cint): void {.importc: "ScintillaDocument_setCodePage".}
proc fcScintillaDocument_getEolMode(self: pointer, ): cint {.importc: "ScintillaDocument_getEolMode".}
proc fcScintillaDocument_setEolMode(self: pointer, eol_mode: cint): void {.importc: "ScintillaDocument_setEolMode".}
proc fcScintillaDocument_movePositionOutsideChar(self: pointer, pos: cint, move_dir: cint, check_line_end: bool): cint {.importc: "ScintillaDocument_movePositionOutsideChar".}
proc fcScintillaDocument_getCharacter(self: pointer, pos: cint): cint {.importc: "ScintillaDocument_getCharacter".}
proc fcScintillaDocument_modifyAttempt(self: pointer, ): void {.importc: "ScintillaDocument_modifyAttempt".}
proc fScintillaDocument_connect_modifyAttempt(self: pointer, slot: int) {.importc: "ScintillaDocument_connect_modifyAttempt".}
proc fcScintillaDocument_savePoint(self: pointer, atSavePoint: bool): void {.importc: "ScintillaDocument_savePoint".}
proc fScintillaDocument_connect_savePoint(self: pointer, slot: int) {.importc: "ScintillaDocument_connect_savePoint".}
proc fcScintillaDocument_modified(self: pointer, position: cint, modification_type: cint, text: struct_miqt_string, length: cint, linesAdded: cint, line: cint, foldLevelNow: cint, foldLevelPrev: cint): void {.importc: "ScintillaDocument_modified".}
proc fScintillaDocument_connect_modified(self: pointer, slot: int) {.importc: "ScintillaDocument_connect_modified".}
proc fcScintillaDocument_styleNeeded(self: pointer, pos: cint): void {.importc: "ScintillaDocument_styleNeeded".}
proc fScintillaDocument_connect_styleNeeded(self: pointer, slot: int) {.importc: "ScintillaDocument_connect_styleNeeded".}
proc fcScintillaDocument_errorOccurred(self: pointer, status: cint): void {.importc: "ScintillaDocument_errorOccurred".}
proc fScintillaDocument_connect_errorOccurred(self: pointer, slot: int) {.importc: "ScintillaDocument_connect_errorOccurred".}
proc fcScintillaDocument_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "ScintillaDocument_tr2".}
proc fcScintillaDocument_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "ScintillaDocument_tr3".}
proc fcScintillaDocument_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "ScintillaDocument_trUtf82".}
proc fcScintillaDocument_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "ScintillaDocument_trUtf83".}
proc fcScintillaDocument_beginUndoAction1(self: pointer, coalesceWithPrior: bool): void {.importc: "ScintillaDocument_beginUndoAction1".}
proc fScintillaDocument_virtualbase_metaObject(self: pointer, ): pointer{.importc: "ScintillaDocument_virtualbase_metaObject".}
proc fcScintillaDocument_override_virtual_metaObject(self: pointer, slot: int) {.importc: "ScintillaDocument_override_virtual_metaObject".}
proc fScintillaDocument_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "ScintillaDocument_virtualbase_metacast".}
proc fcScintillaDocument_override_virtual_metacast(self: pointer, slot: int) {.importc: "ScintillaDocument_override_virtual_metacast".}
proc fScintillaDocument_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "ScintillaDocument_virtualbase_metacall".}
proc fcScintillaDocument_override_virtual_metacall(self: pointer, slot: int) {.importc: "ScintillaDocument_override_virtual_metacall".}
proc fScintillaDocument_virtualbase_event(self: pointer, event: pointer): bool{.importc: "ScintillaDocument_virtualbase_event".}
proc fcScintillaDocument_override_virtual_event(self: pointer, slot: int) {.importc: "ScintillaDocument_override_virtual_event".}
proc fScintillaDocument_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "ScintillaDocument_virtualbase_eventFilter".}
proc fcScintillaDocument_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "ScintillaDocument_override_virtual_eventFilter".}
proc fScintillaDocument_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "ScintillaDocument_virtualbase_timerEvent".}
proc fcScintillaDocument_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "ScintillaDocument_override_virtual_timerEvent".}
proc fScintillaDocument_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "ScintillaDocument_virtualbase_childEvent".}
proc fcScintillaDocument_override_virtual_childEvent(self: pointer, slot: int) {.importc: "ScintillaDocument_override_virtual_childEvent".}
proc fScintillaDocument_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "ScintillaDocument_virtualbase_customEvent".}
proc fcScintillaDocument_override_virtual_customEvent(self: pointer, slot: int) {.importc: "ScintillaDocument_override_virtual_customEvent".}
proc fScintillaDocument_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "ScintillaDocument_virtualbase_connectNotify".}
proc fcScintillaDocument_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "ScintillaDocument_override_virtual_connectNotify".}
proc fScintillaDocument_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "ScintillaDocument_virtualbase_disconnectNotify".}
proc fcScintillaDocument_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "ScintillaDocument_override_virtual_disconnectNotify".}
proc fcScintillaDocument_staticMetaObject(): pointer {.importc: "ScintillaDocument_staticMetaObject".}
proc fcScintillaDocument_delete(self: pointer) {.importc: "ScintillaDocument_delete".}
proc fcScintillaEdit_new(parent: pointer): ptr cScintillaEdit {.importc: "ScintillaEdit_new".}
proc fcScintillaEdit_new2(): ptr cScintillaEdit {.importc: "ScintillaEdit_new2".}
proc fcScintillaEdit_metaObject(self: pointer, ): pointer {.importc: "ScintillaEdit_metaObject".}
proc fcScintillaEdit_metacast(self: pointer, param1: cstring): pointer {.importc: "ScintillaEdit_metacast".}
proc fcScintillaEdit_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "ScintillaEdit_metacall".}
proc fcScintillaEdit_tr(s: cstring): struct_miqt_string {.importc: "ScintillaEdit_tr".}
proc fcScintillaEdit_trUtf8(s: cstring): struct_miqt_string {.importc: "ScintillaEdit_trUtf8".}
proc fcScintillaEdit_TextReturner(self: pointer, message: cint, wParam: miqt_uintptr_t): struct_miqt_string {.importc: "ScintillaEdit_TextReturner".}
proc fcScintillaEdit_findText(self: pointer, flags: cint, text: cstring, cpMin: cint, cpMax: cint): struct_miqt_map {.importc: "ScintillaEdit_findText".}
proc fcScintillaEdit_getTextRange(self: pointer, start: cint, endVal: cint): struct_miqt_string {.importc: "ScintillaEdit_getTextRange".}
proc fcScintillaEdit_getDoc(self: pointer, ): pointer {.importc: "ScintillaEdit_getDoc".}
proc fcScintillaEdit_setDoc(self: pointer, pdoc_x: pointer): void {.importc: "ScintillaEdit_setDoc".}
proc fcScintillaEdit_findText2(self: pointer, flags: cint, text: cstring, cpMin: cint, cpMax: cint): struct_miqt_map {.importc: "ScintillaEdit_findText2".}
proc fcScintillaEdit_textRange(self: pointer, start: cint, endVal: cint): struct_miqt_string {.importc: "ScintillaEdit_textRange".}
proc fcScintillaEdit_formatRange(self: pointer, draw: bool, target: pointer, measure: pointer, print_rect: pointer, page_rect: pointer, range_start: clong, range_end: clong): clong {.importc: "ScintillaEdit_formatRange".}
proc fcScintillaEdit_formatRange2(self: pointer, draw: bool, target: pointer, measure: pointer, print_rect: pointer, page_rect: pointer, range_start: clong, range_end: clong): clong {.importc: "ScintillaEdit_formatRange2".}
proc fcScintillaEdit_addText(self: pointer, length: miqt_intptr_t, text: cstring): void {.importc: "ScintillaEdit_addText".}
proc fcScintillaEdit_addStyledText(self: pointer, length: miqt_intptr_t, c: cstring): void {.importc: "ScintillaEdit_addStyledText".}
proc fcScintillaEdit_insertText(self: pointer, pos: miqt_intptr_t, text: cstring): void {.importc: "ScintillaEdit_insertText".}
proc fcScintillaEdit_changeInsertion(self: pointer, length: miqt_intptr_t, text: cstring): void {.importc: "ScintillaEdit_changeInsertion".}
proc fcScintillaEdit_clearAll(self: pointer, ): void {.importc: "ScintillaEdit_clearAll".}
proc fcScintillaEdit_deleteRange(self: pointer, start: miqt_intptr_t, lengthDelete: miqt_intptr_t): void {.importc: "ScintillaEdit_deleteRange".}
proc fcScintillaEdit_clearDocumentStyle(self: pointer, ): void {.importc: "ScintillaEdit_clearDocumentStyle".}
proc fcScintillaEdit_length(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_length".}
proc fcScintillaEdit_charAt(self: pointer, pos: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_charAt".}
proc fcScintillaEdit_currentPos(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_currentPos".}
proc fcScintillaEdit_anchor(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_anchor".}
proc fcScintillaEdit_styleAt(self: pointer, pos: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_styleAt".}
proc fcScintillaEdit_styleIndexAt(self: pointer, pos: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_styleIndexAt".}
proc fcScintillaEdit_redo(self: pointer, ): void {.importc: "ScintillaEdit_redo".}
proc fcScintillaEdit_setUndoCollection(self: pointer, collectUndo: bool): void {.importc: "ScintillaEdit_setUndoCollection".}
proc fcScintillaEdit_selectAll(self: pointer, ): void {.importc: "ScintillaEdit_selectAll".}
proc fcScintillaEdit_setSavePoint(self: pointer, ): void {.importc: "ScintillaEdit_setSavePoint".}
proc fcScintillaEdit_canRedo(self: pointer, ): bool {.importc: "ScintillaEdit_canRedo".}
proc fcScintillaEdit_markerLineFromHandle(self: pointer, markerHandle: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_markerLineFromHandle".}
proc fcScintillaEdit_markerDeleteHandle(self: pointer, markerHandle: miqt_intptr_t): void {.importc: "ScintillaEdit_markerDeleteHandle".}
proc fcScintillaEdit_markerHandleFromLine(self: pointer, line: miqt_intptr_t, which: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_markerHandleFromLine".}
proc fcScintillaEdit_markerNumberFromLine(self: pointer, line: miqt_intptr_t, which: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_markerNumberFromLine".}
proc fcScintillaEdit_undoCollection(self: pointer, ): bool {.importc: "ScintillaEdit_undoCollection".}
proc fcScintillaEdit_viewWS(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_viewWS".}
proc fcScintillaEdit_setViewWS(self: pointer, viewWS: miqt_intptr_t): void {.importc: "ScintillaEdit_setViewWS".}
proc fcScintillaEdit_tabDrawMode(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_tabDrawMode".}
proc fcScintillaEdit_setTabDrawMode(self: pointer, tabDrawMode: miqt_intptr_t): void {.importc: "ScintillaEdit_setTabDrawMode".}
proc fcScintillaEdit_positionFromPoint(self: pointer, x: miqt_intptr_t, y: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_positionFromPoint".}
proc fcScintillaEdit_positionFromPointClose(self: pointer, x: miqt_intptr_t, y: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_positionFromPointClose".}
proc fcScintillaEdit_gotoLine(self: pointer, line: miqt_intptr_t): void {.importc: "ScintillaEdit_gotoLine".}
proc fcScintillaEdit_gotoPos(self: pointer, caret: miqt_intptr_t): void {.importc: "ScintillaEdit_gotoPos".}
proc fcScintillaEdit_setAnchor(self: pointer, anchor: miqt_intptr_t): void {.importc: "ScintillaEdit_setAnchor".}
proc fcScintillaEdit_getCurLine(self: pointer, length: miqt_intptr_t): struct_miqt_string {.importc: "ScintillaEdit_getCurLine".}
proc fcScintillaEdit_endStyled(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_endStyled".}
proc fcScintillaEdit_convertEOLs(self: pointer, eolMode: miqt_intptr_t): void {.importc: "ScintillaEdit_convertEOLs".}
proc fcScintillaEdit_eOLMode(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_eOLMode".}
proc fcScintillaEdit_setEOLMode(self: pointer, eolMode: miqt_intptr_t): void {.importc: "ScintillaEdit_setEOLMode".}
proc fcScintillaEdit_startStyling(self: pointer, start: miqt_intptr_t, unused: miqt_intptr_t): void {.importc: "ScintillaEdit_startStyling".}
proc fcScintillaEdit_setStyling(self: pointer, length: miqt_intptr_t, style: miqt_intptr_t): void {.importc: "ScintillaEdit_setStyling".}
proc fcScintillaEdit_bufferedDraw(self: pointer, ): bool {.importc: "ScintillaEdit_bufferedDraw".}
proc fcScintillaEdit_setBufferedDraw(self: pointer, buffered: bool): void {.importc: "ScintillaEdit_setBufferedDraw".}
proc fcScintillaEdit_setTabWidth(self: pointer, tabWidth: miqt_intptr_t): void {.importc: "ScintillaEdit_setTabWidth".}
proc fcScintillaEdit_tabWidth(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_tabWidth".}
proc fcScintillaEdit_setTabMinimumWidth(self: pointer, pixels: miqt_intptr_t): void {.importc: "ScintillaEdit_setTabMinimumWidth".}
proc fcScintillaEdit_tabMinimumWidth(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_tabMinimumWidth".}
proc fcScintillaEdit_clearTabStops(self: pointer, line: miqt_intptr_t): void {.importc: "ScintillaEdit_clearTabStops".}
proc fcScintillaEdit_addTabStop(self: pointer, line: miqt_intptr_t, x: miqt_intptr_t): void {.importc: "ScintillaEdit_addTabStop".}
proc fcScintillaEdit_getNextTabStop(self: pointer, line: miqt_intptr_t, x: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_getNextTabStop".}
proc fcScintillaEdit_setCodePage(self: pointer, codePage: miqt_intptr_t): void {.importc: "ScintillaEdit_setCodePage".}
proc fcScintillaEdit_setFontLocale(self: pointer, localeName: cstring): void {.importc: "ScintillaEdit_setFontLocale".}
proc fcScintillaEdit_fontLocale(self: pointer, ): struct_miqt_string {.importc: "ScintillaEdit_fontLocale".}
proc fcScintillaEdit_iMEInteraction(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_iMEInteraction".}
proc fcScintillaEdit_setIMEInteraction(self: pointer, imeInteraction: miqt_intptr_t): void {.importc: "ScintillaEdit_setIMEInteraction".}
proc fcScintillaEdit_markerDefine(self: pointer, markerNumber: miqt_intptr_t, markerSymbol: miqt_intptr_t): void {.importc: "ScintillaEdit_markerDefine".}
proc fcScintillaEdit_markerSetFore(self: pointer, markerNumber: miqt_intptr_t, fore: miqt_intptr_t): void {.importc: "ScintillaEdit_markerSetFore".}
proc fcScintillaEdit_markerSetBack(self: pointer, markerNumber: miqt_intptr_t, back: miqt_intptr_t): void {.importc: "ScintillaEdit_markerSetBack".}
proc fcScintillaEdit_markerSetBackSelected(self: pointer, markerNumber: miqt_intptr_t, back: miqt_intptr_t): void {.importc: "ScintillaEdit_markerSetBackSelected".}
proc fcScintillaEdit_markerSetForeTranslucent(self: pointer, markerNumber: miqt_intptr_t, fore: miqt_intptr_t): void {.importc: "ScintillaEdit_markerSetForeTranslucent".}
proc fcScintillaEdit_markerSetBackTranslucent(self: pointer, markerNumber: miqt_intptr_t, back: miqt_intptr_t): void {.importc: "ScintillaEdit_markerSetBackTranslucent".}
proc fcScintillaEdit_markerSetBackSelectedTranslucent(self: pointer, markerNumber: miqt_intptr_t, back: miqt_intptr_t): void {.importc: "ScintillaEdit_markerSetBackSelectedTranslucent".}
proc fcScintillaEdit_markerSetStrokeWidth(self: pointer, markerNumber: miqt_intptr_t, hundredths: miqt_intptr_t): void {.importc: "ScintillaEdit_markerSetStrokeWidth".}
proc fcScintillaEdit_markerEnableHighlight(self: pointer, enabled: bool): void {.importc: "ScintillaEdit_markerEnableHighlight".}
proc fcScintillaEdit_markerAdd(self: pointer, line: miqt_intptr_t, markerNumber: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_markerAdd".}
proc fcScintillaEdit_markerDelete(self: pointer, line: miqt_intptr_t, markerNumber: miqt_intptr_t): void {.importc: "ScintillaEdit_markerDelete".}
proc fcScintillaEdit_markerDeleteAll(self: pointer, markerNumber: miqt_intptr_t): void {.importc: "ScintillaEdit_markerDeleteAll".}
proc fcScintillaEdit_markerGet(self: pointer, line: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_markerGet".}
proc fcScintillaEdit_markerNext(self: pointer, lineStart: miqt_intptr_t, markerMask: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_markerNext".}
proc fcScintillaEdit_markerPrevious(self: pointer, lineStart: miqt_intptr_t, markerMask: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_markerPrevious".}
proc fcScintillaEdit_markerDefinePixmap(self: pointer, markerNumber: miqt_intptr_t, pixmap: cstring): void {.importc: "ScintillaEdit_markerDefinePixmap".}
proc fcScintillaEdit_markerAddSet(self: pointer, line: miqt_intptr_t, markerSet: miqt_intptr_t): void {.importc: "ScintillaEdit_markerAddSet".}
proc fcScintillaEdit_markerSetAlpha(self: pointer, markerNumber: miqt_intptr_t, alpha: miqt_intptr_t): void {.importc: "ScintillaEdit_markerSetAlpha".}
proc fcScintillaEdit_markerLayer(self: pointer, markerNumber: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_markerLayer".}
proc fcScintillaEdit_markerSetLayer(self: pointer, markerNumber: miqt_intptr_t, layer: miqt_intptr_t): void {.importc: "ScintillaEdit_markerSetLayer".}
proc fcScintillaEdit_setMarginTypeN(self: pointer, margin: miqt_intptr_t, marginType: miqt_intptr_t): void {.importc: "ScintillaEdit_setMarginTypeN".}
proc fcScintillaEdit_marginTypeN(self: pointer, margin: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_marginTypeN".}
proc fcScintillaEdit_setMarginWidthN(self: pointer, margin: miqt_intptr_t, pixelWidth: miqt_intptr_t): void {.importc: "ScintillaEdit_setMarginWidthN".}
proc fcScintillaEdit_marginWidthN(self: pointer, margin: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_marginWidthN".}
proc fcScintillaEdit_setMarginMaskN(self: pointer, margin: miqt_intptr_t, mask: miqt_intptr_t): void {.importc: "ScintillaEdit_setMarginMaskN".}
proc fcScintillaEdit_marginMaskN(self: pointer, margin: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_marginMaskN".}
proc fcScintillaEdit_setMarginSensitiveN(self: pointer, margin: miqt_intptr_t, sensitive: bool): void {.importc: "ScintillaEdit_setMarginSensitiveN".}
proc fcScintillaEdit_marginSensitiveN(self: pointer, margin: miqt_intptr_t): bool {.importc: "ScintillaEdit_marginSensitiveN".}
proc fcScintillaEdit_setMarginCursorN(self: pointer, margin: miqt_intptr_t, cursor: miqt_intptr_t): void {.importc: "ScintillaEdit_setMarginCursorN".}
proc fcScintillaEdit_marginCursorN(self: pointer, margin: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_marginCursorN".}
proc fcScintillaEdit_setMarginBackN(self: pointer, margin: miqt_intptr_t, back: miqt_intptr_t): void {.importc: "ScintillaEdit_setMarginBackN".}
proc fcScintillaEdit_marginBackN(self: pointer, margin: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_marginBackN".}
proc fcScintillaEdit_setMargins(self: pointer, margins: miqt_intptr_t): void {.importc: "ScintillaEdit_setMargins".}
proc fcScintillaEdit_margins(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_margins".}
proc fcScintillaEdit_styleClearAll(self: pointer, ): void {.importc: "ScintillaEdit_styleClearAll".}
proc fcScintillaEdit_styleSetFore(self: pointer, style: miqt_intptr_t, fore: miqt_intptr_t): void {.importc: "ScintillaEdit_styleSetFore".}
proc fcScintillaEdit_styleSetBack(self: pointer, style: miqt_intptr_t, back: miqt_intptr_t): void {.importc: "ScintillaEdit_styleSetBack".}
proc fcScintillaEdit_styleSetBold(self: pointer, style: miqt_intptr_t, bold: bool): void {.importc: "ScintillaEdit_styleSetBold".}
proc fcScintillaEdit_styleSetItalic(self: pointer, style: miqt_intptr_t, italic: bool): void {.importc: "ScintillaEdit_styleSetItalic".}
proc fcScintillaEdit_styleSetSize(self: pointer, style: miqt_intptr_t, sizePoints: miqt_intptr_t): void {.importc: "ScintillaEdit_styleSetSize".}
proc fcScintillaEdit_styleSetFont(self: pointer, style: miqt_intptr_t, fontName: cstring): void {.importc: "ScintillaEdit_styleSetFont".}
proc fcScintillaEdit_styleSetEOLFilled(self: pointer, style: miqt_intptr_t, eolFilled: bool): void {.importc: "ScintillaEdit_styleSetEOLFilled".}
proc fcScintillaEdit_styleResetDefault(self: pointer, ): void {.importc: "ScintillaEdit_styleResetDefault".}
proc fcScintillaEdit_styleSetUnderline(self: pointer, style: miqt_intptr_t, underline: bool): void {.importc: "ScintillaEdit_styleSetUnderline".}
proc fcScintillaEdit_styleFore(self: pointer, style: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_styleFore".}
proc fcScintillaEdit_styleBack(self: pointer, style: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_styleBack".}
proc fcScintillaEdit_styleBold(self: pointer, style: miqt_intptr_t): bool {.importc: "ScintillaEdit_styleBold".}
proc fcScintillaEdit_styleItalic(self: pointer, style: miqt_intptr_t): bool {.importc: "ScintillaEdit_styleItalic".}
proc fcScintillaEdit_styleSize(self: pointer, style: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_styleSize".}
proc fcScintillaEdit_styleFont(self: pointer, style: miqt_intptr_t): struct_miqt_string {.importc: "ScintillaEdit_styleFont".}
proc fcScintillaEdit_styleEOLFilled(self: pointer, style: miqt_intptr_t): bool {.importc: "ScintillaEdit_styleEOLFilled".}
proc fcScintillaEdit_styleUnderline(self: pointer, style: miqt_intptr_t): bool {.importc: "ScintillaEdit_styleUnderline".}
proc fcScintillaEdit_styleCase(self: pointer, style: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_styleCase".}
proc fcScintillaEdit_styleCharacterSet(self: pointer, style: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_styleCharacterSet".}
proc fcScintillaEdit_styleVisible(self: pointer, style: miqt_intptr_t): bool {.importc: "ScintillaEdit_styleVisible".}
proc fcScintillaEdit_styleChangeable(self: pointer, style: miqt_intptr_t): bool {.importc: "ScintillaEdit_styleChangeable".}
proc fcScintillaEdit_styleHotSpot(self: pointer, style: miqt_intptr_t): bool {.importc: "ScintillaEdit_styleHotSpot".}
proc fcScintillaEdit_styleSetCase(self: pointer, style: miqt_intptr_t, caseVisible: miqt_intptr_t): void {.importc: "ScintillaEdit_styleSetCase".}
proc fcScintillaEdit_styleSetSizeFractional(self: pointer, style: miqt_intptr_t, sizeHundredthPoints: miqt_intptr_t): void {.importc: "ScintillaEdit_styleSetSizeFractional".}
proc fcScintillaEdit_styleSizeFractional(self: pointer, style: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_styleSizeFractional".}
proc fcScintillaEdit_styleSetWeight(self: pointer, style: miqt_intptr_t, weight: miqt_intptr_t): void {.importc: "ScintillaEdit_styleSetWeight".}
proc fcScintillaEdit_styleWeight(self: pointer, style: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_styleWeight".}
proc fcScintillaEdit_styleSetCharacterSet(self: pointer, style: miqt_intptr_t, characterSet: miqt_intptr_t): void {.importc: "ScintillaEdit_styleSetCharacterSet".}
proc fcScintillaEdit_styleSetHotSpot(self: pointer, style: miqt_intptr_t, hotspot: bool): void {.importc: "ScintillaEdit_styleSetHotSpot".}
proc fcScintillaEdit_styleSetCheckMonospaced(self: pointer, style: miqt_intptr_t, checkMonospaced: bool): void {.importc: "ScintillaEdit_styleSetCheckMonospaced".}
proc fcScintillaEdit_styleCheckMonospaced(self: pointer, style: miqt_intptr_t): bool {.importc: "ScintillaEdit_styleCheckMonospaced".}
proc fcScintillaEdit_styleSetStretch(self: pointer, style: miqt_intptr_t, stretch: miqt_intptr_t): void {.importc: "ScintillaEdit_styleSetStretch".}
proc fcScintillaEdit_styleStretch(self: pointer, style: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_styleStretch".}
proc fcScintillaEdit_styleSetInvisibleRepresentation(self: pointer, style: miqt_intptr_t, representation: cstring): void {.importc: "ScintillaEdit_styleSetInvisibleRepresentation".}
proc fcScintillaEdit_styleInvisibleRepresentation(self: pointer, style: miqt_intptr_t): struct_miqt_string {.importc: "ScintillaEdit_styleInvisibleRepresentation".}
proc fcScintillaEdit_setElementColour(self: pointer, element: miqt_intptr_t, colourElement: miqt_intptr_t): void {.importc: "ScintillaEdit_setElementColour".}
proc fcScintillaEdit_elementColour(self: pointer, element: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_elementColour".}
proc fcScintillaEdit_resetElementColour(self: pointer, element: miqt_intptr_t): void {.importc: "ScintillaEdit_resetElementColour".}
proc fcScintillaEdit_elementIsSet(self: pointer, element: miqt_intptr_t): bool {.importc: "ScintillaEdit_elementIsSet".}
proc fcScintillaEdit_elementAllowsTranslucent(self: pointer, element: miqt_intptr_t): bool {.importc: "ScintillaEdit_elementAllowsTranslucent".}
proc fcScintillaEdit_elementBaseColour(self: pointer, element: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_elementBaseColour".}
proc fcScintillaEdit_setSelFore(self: pointer, useSetting: bool, fore: miqt_intptr_t): void {.importc: "ScintillaEdit_setSelFore".}
proc fcScintillaEdit_setSelBack(self: pointer, useSetting: bool, back: miqt_intptr_t): void {.importc: "ScintillaEdit_setSelBack".}
proc fcScintillaEdit_selAlpha(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_selAlpha".}
proc fcScintillaEdit_setSelAlpha(self: pointer, alpha: miqt_intptr_t): void {.importc: "ScintillaEdit_setSelAlpha".}
proc fcScintillaEdit_selEOLFilled(self: pointer, ): bool {.importc: "ScintillaEdit_selEOLFilled".}
proc fcScintillaEdit_setSelEOLFilled(self: pointer, filled: bool): void {.importc: "ScintillaEdit_setSelEOLFilled".}
proc fcScintillaEdit_selectionLayer(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_selectionLayer".}
proc fcScintillaEdit_setSelectionLayer(self: pointer, layer: miqt_intptr_t): void {.importc: "ScintillaEdit_setSelectionLayer".}
proc fcScintillaEdit_caretLineLayer(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_caretLineLayer".}
proc fcScintillaEdit_setCaretLineLayer(self: pointer, layer: miqt_intptr_t): void {.importc: "ScintillaEdit_setCaretLineLayer".}
proc fcScintillaEdit_caretLineHighlightSubLine(self: pointer, ): bool {.importc: "ScintillaEdit_caretLineHighlightSubLine".}
proc fcScintillaEdit_setCaretLineHighlightSubLine(self: pointer, subLine: bool): void {.importc: "ScintillaEdit_setCaretLineHighlightSubLine".}
proc fcScintillaEdit_setCaretFore(self: pointer, fore: miqt_intptr_t): void {.importc: "ScintillaEdit_setCaretFore".}
proc fcScintillaEdit_assignCmdKey(self: pointer, keyDefinition: miqt_intptr_t, sciCommand: miqt_intptr_t): void {.importc: "ScintillaEdit_assignCmdKey".}
proc fcScintillaEdit_clearCmdKey(self: pointer, keyDefinition: miqt_intptr_t): void {.importc: "ScintillaEdit_clearCmdKey".}
proc fcScintillaEdit_clearAllCmdKeys(self: pointer, ): void {.importc: "ScintillaEdit_clearAllCmdKeys".}
proc fcScintillaEdit_setStylingEx(self: pointer, length: miqt_intptr_t, styles: cstring): void {.importc: "ScintillaEdit_setStylingEx".}
proc fcScintillaEdit_styleSetVisible(self: pointer, style: miqt_intptr_t, visible: bool): void {.importc: "ScintillaEdit_styleSetVisible".}
proc fcScintillaEdit_caretPeriod(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_caretPeriod".}
proc fcScintillaEdit_setCaretPeriod(self: pointer, periodMilliseconds: miqt_intptr_t): void {.importc: "ScintillaEdit_setCaretPeriod".}
proc fcScintillaEdit_setWordChars(self: pointer, characters: cstring): void {.importc: "ScintillaEdit_setWordChars".}
proc fcScintillaEdit_wordChars(self: pointer, ): struct_miqt_string {.importc: "ScintillaEdit_wordChars".}
proc fcScintillaEdit_setCharacterCategoryOptimization(self: pointer, countCharacters: miqt_intptr_t): void {.importc: "ScintillaEdit_setCharacterCategoryOptimization".}
proc fcScintillaEdit_characterCategoryOptimization(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_characterCategoryOptimization".}
proc fcScintillaEdit_beginUndoAction(self: pointer, ): void {.importc: "ScintillaEdit_beginUndoAction".}
proc fcScintillaEdit_endUndoAction(self: pointer, ): void {.importc: "ScintillaEdit_endUndoAction".}
proc fcScintillaEdit_undoSequence(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_undoSequence".}
proc fcScintillaEdit_undoActions(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_undoActions".}
proc fcScintillaEdit_setUndoSavePoint(self: pointer, action: miqt_intptr_t): void {.importc: "ScintillaEdit_setUndoSavePoint".}
proc fcScintillaEdit_undoSavePoint(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_undoSavePoint".}
proc fcScintillaEdit_setUndoDetach(self: pointer, action: miqt_intptr_t): void {.importc: "ScintillaEdit_setUndoDetach".}
proc fcScintillaEdit_undoDetach(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_undoDetach".}
proc fcScintillaEdit_setUndoTentative(self: pointer, action: miqt_intptr_t): void {.importc: "ScintillaEdit_setUndoTentative".}
proc fcScintillaEdit_undoTentative(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_undoTentative".}
proc fcScintillaEdit_setUndoCurrent(self: pointer, action: miqt_intptr_t): void {.importc: "ScintillaEdit_setUndoCurrent".}
proc fcScintillaEdit_undoCurrent(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_undoCurrent".}
proc fcScintillaEdit_pushUndoActionType(self: pointer, typeVal: miqt_intptr_t, pos: miqt_intptr_t): void {.importc: "ScintillaEdit_pushUndoActionType".}
proc fcScintillaEdit_changeLastUndoActionText(self: pointer, length: miqt_intptr_t, text: cstring): void {.importc: "ScintillaEdit_changeLastUndoActionText".}
proc fcScintillaEdit_undoActionType(self: pointer, action: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_undoActionType".}
proc fcScintillaEdit_undoActionPosition(self: pointer, action: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_undoActionPosition".}
proc fcScintillaEdit_undoActionText(self: pointer, action: miqt_intptr_t): struct_miqt_string {.importc: "ScintillaEdit_undoActionText".}
proc fcScintillaEdit_indicSetStyle(self: pointer, indicator: miqt_intptr_t, indicatorStyle: miqt_intptr_t): void {.importc: "ScintillaEdit_indicSetStyle".}
proc fcScintillaEdit_indicStyle(self: pointer, indicator: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_indicStyle".}
proc fcScintillaEdit_indicSetFore(self: pointer, indicator: miqt_intptr_t, fore: miqt_intptr_t): void {.importc: "ScintillaEdit_indicSetFore".}
proc fcScintillaEdit_indicFore(self: pointer, indicator: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_indicFore".}
proc fcScintillaEdit_indicSetUnder(self: pointer, indicator: miqt_intptr_t, under: bool): void {.importc: "ScintillaEdit_indicSetUnder".}
proc fcScintillaEdit_indicUnder(self: pointer, indicator: miqt_intptr_t): bool {.importc: "ScintillaEdit_indicUnder".}
proc fcScintillaEdit_indicSetHoverStyle(self: pointer, indicator: miqt_intptr_t, indicatorStyle: miqt_intptr_t): void {.importc: "ScintillaEdit_indicSetHoverStyle".}
proc fcScintillaEdit_indicHoverStyle(self: pointer, indicator: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_indicHoverStyle".}
proc fcScintillaEdit_indicSetHoverFore(self: pointer, indicator: miqt_intptr_t, fore: miqt_intptr_t): void {.importc: "ScintillaEdit_indicSetHoverFore".}
proc fcScintillaEdit_indicHoverFore(self: pointer, indicator: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_indicHoverFore".}
proc fcScintillaEdit_indicSetFlags(self: pointer, indicator: miqt_intptr_t, flags: miqt_intptr_t): void {.importc: "ScintillaEdit_indicSetFlags".}
proc fcScintillaEdit_indicFlags(self: pointer, indicator: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_indicFlags".}
proc fcScintillaEdit_indicSetStrokeWidth(self: pointer, indicator: miqt_intptr_t, hundredths: miqt_intptr_t): void {.importc: "ScintillaEdit_indicSetStrokeWidth".}
proc fcScintillaEdit_indicStrokeWidth(self: pointer, indicator: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_indicStrokeWidth".}
proc fcScintillaEdit_setWhitespaceFore(self: pointer, useSetting: bool, fore: miqt_intptr_t): void {.importc: "ScintillaEdit_setWhitespaceFore".}
proc fcScintillaEdit_setWhitespaceBack(self: pointer, useSetting: bool, back: miqt_intptr_t): void {.importc: "ScintillaEdit_setWhitespaceBack".}
proc fcScintillaEdit_setWhitespaceSize(self: pointer, size: miqt_intptr_t): void {.importc: "ScintillaEdit_setWhitespaceSize".}
proc fcScintillaEdit_whitespaceSize(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_whitespaceSize".}
proc fcScintillaEdit_setLineState(self: pointer, line: miqt_intptr_t, state: miqt_intptr_t): void {.importc: "ScintillaEdit_setLineState".}
proc fcScintillaEdit_lineState(self: pointer, line: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_lineState".}
proc fcScintillaEdit_maxLineState(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_maxLineState".}
proc fcScintillaEdit_caretLineVisible(self: pointer, ): bool {.importc: "ScintillaEdit_caretLineVisible".}
proc fcScintillaEdit_setCaretLineVisible(self: pointer, show: bool): void {.importc: "ScintillaEdit_setCaretLineVisible".}
proc fcScintillaEdit_caretLineBack(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_caretLineBack".}
proc fcScintillaEdit_setCaretLineBack(self: pointer, back: miqt_intptr_t): void {.importc: "ScintillaEdit_setCaretLineBack".}
proc fcScintillaEdit_caretLineFrame(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_caretLineFrame".}
proc fcScintillaEdit_setCaretLineFrame(self: pointer, width: miqt_intptr_t): void {.importc: "ScintillaEdit_setCaretLineFrame".}
proc fcScintillaEdit_styleSetChangeable(self: pointer, style: miqt_intptr_t, changeable: bool): void {.importc: "ScintillaEdit_styleSetChangeable".}
proc fcScintillaEdit_autoCShow(self: pointer, lengthEntered: miqt_intptr_t, itemList: cstring): void {.importc: "ScintillaEdit_autoCShow".}
proc fcScintillaEdit_autoCCancel(self: pointer, ): void {.importc: "ScintillaEdit_autoCCancel".}
proc fcScintillaEdit_autoCActive(self: pointer, ): bool {.importc: "ScintillaEdit_autoCActive".}
proc fcScintillaEdit_autoCPosStart(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_autoCPosStart".}
proc fcScintillaEdit_autoCComplete(self: pointer, ): void {.importc: "ScintillaEdit_autoCComplete".}
proc fcScintillaEdit_autoCStops(self: pointer, characterSet: cstring): void {.importc: "ScintillaEdit_autoCStops".}
proc fcScintillaEdit_autoCSetSeparator(self: pointer, separatorCharacter: miqt_intptr_t): void {.importc: "ScintillaEdit_autoCSetSeparator".}
proc fcScintillaEdit_autoCSeparator(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_autoCSeparator".}
proc fcScintillaEdit_autoCSelect(self: pointer, select: cstring): void {.importc: "ScintillaEdit_autoCSelect".}
proc fcScintillaEdit_autoCSetCancelAtStart(self: pointer, cancel: bool): void {.importc: "ScintillaEdit_autoCSetCancelAtStart".}
proc fcScintillaEdit_autoCCancelAtStart(self: pointer, ): bool {.importc: "ScintillaEdit_autoCCancelAtStart".}
proc fcScintillaEdit_autoCSetFillUps(self: pointer, characterSet: cstring): void {.importc: "ScintillaEdit_autoCSetFillUps".}
proc fcScintillaEdit_autoCSetChooseSingle(self: pointer, chooseSingle: bool): void {.importc: "ScintillaEdit_autoCSetChooseSingle".}
proc fcScintillaEdit_autoCChooseSingle(self: pointer, ): bool {.importc: "ScintillaEdit_autoCChooseSingle".}
proc fcScintillaEdit_autoCSetIgnoreCase(self: pointer, ignoreCase: bool): void {.importc: "ScintillaEdit_autoCSetIgnoreCase".}
proc fcScintillaEdit_autoCIgnoreCase(self: pointer, ): bool {.importc: "ScintillaEdit_autoCIgnoreCase".}
proc fcScintillaEdit_userListShow(self: pointer, listType: miqt_intptr_t, itemList: cstring): void {.importc: "ScintillaEdit_userListShow".}
proc fcScintillaEdit_autoCSetAutoHide(self: pointer, autoHide: bool): void {.importc: "ScintillaEdit_autoCSetAutoHide".}
proc fcScintillaEdit_autoCAutoHide(self: pointer, ): bool {.importc: "ScintillaEdit_autoCAutoHide".}
proc fcScintillaEdit_autoCSetOptions(self: pointer, options: miqt_intptr_t): void {.importc: "ScintillaEdit_autoCSetOptions".}
proc fcScintillaEdit_autoCOptions(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_autoCOptions".}
proc fcScintillaEdit_autoCSetDropRestOfWord(self: pointer, dropRestOfWord: bool): void {.importc: "ScintillaEdit_autoCSetDropRestOfWord".}
proc fcScintillaEdit_autoCDropRestOfWord(self: pointer, ): bool {.importc: "ScintillaEdit_autoCDropRestOfWord".}
proc fcScintillaEdit_registerImage(self: pointer, typeVal: miqt_intptr_t, xpmData: cstring): void {.importc: "ScintillaEdit_registerImage".}
proc fcScintillaEdit_clearRegisteredImages(self: pointer, ): void {.importc: "ScintillaEdit_clearRegisteredImages".}
proc fcScintillaEdit_autoCTypeSeparator(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_autoCTypeSeparator".}
proc fcScintillaEdit_autoCSetTypeSeparator(self: pointer, separatorCharacter: miqt_intptr_t): void {.importc: "ScintillaEdit_autoCSetTypeSeparator".}
proc fcScintillaEdit_autoCSetMaxWidth(self: pointer, characterCount: miqt_intptr_t): void {.importc: "ScintillaEdit_autoCSetMaxWidth".}
proc fcScintillaEdit_autoCMaxWidth(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_autoCMaxWidth".}
proc fcScintillaEdit_autoCSetMaxHeight(self: pointer, rowCount: miqt_intptr_t): void {.importc: "ScintillaEdit_autoCSetMaxHeight".}
proc fcScintillaEdit_autoCMaxHeight(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_autoCMaxHeight".}
proc fcScintillaEdit_autoCSetStyle(self: pointer, style: miqt_intptr_t): void {.importc: "ScintillaEdit_autoCSetStyle".}
proc fcScintillaEdit_autoCStyle(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_autoCStyle".}
proc fcScintillaEdit_setIndent(self: pointer, indentSize: miqt_intptr_t): void {.importc: "ScintillaEdit_setIndent".}
proc fcScintillaEdit_indent(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_indent".}
proc fcScintillaEdit_setUseTabs(self: pointer, useTabs: bool): void {.importc: "ScintillaEdit_setUseTabs".}
proc fcScintillaEdit_useTabs(self: pointer, ): bool {.importc: "ScintillaEdit_useTabs".}
proc fcScintillaEdit_setLineIndentation(self: pointer, line: miqt_intptr_t, indentation: miqt_intptr_t): void {.importc: "ScintillaEdit_setLineIndentation".}
proc fcScintillaEdit_lineIndentation(self: pointer, line: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_lineIndentation".}
proc fcScintillaEdit_lineIndentPosition(self: pointer, line: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_lineIndentPosition".}
proc fcScintillaEdit_column(self: pointer, pos: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_column".}
proc fcScintillaEdit_countCharacters(self: pointer, start: miqt_intptr_t, endVal: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_countCharacters".}
proc fcScintillaEdit_countCodeUnits(self: pointer, start: miqt_intptr_t, endVal: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_countCodeUnits".}
proc fcScintillaEdit_setHScrollBar(self: pointer, visible: bool): void {.importc: "ScintillaEdit_setHScrollBar".}
proc fcScintillaEdit_hScrollBar(self: pointer, ): bool {.importc: "ScintillaEdit_hScrollBar".}
proc fcScintillaEdit_setIndentationGuides(self: pointer, indentView: miqt_intptr_t): void {.importc: "ScintillaEdit_setIndentationGuides".}
proc fcScintillaEdit_indentationGuides(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_indentationGuides".}
proc fcScintillaEdit_setHighlightGuide(self: pointer, column: miqt_intptr_t): void {.importc: "ScintillaEdit_setHighlightGuide".}
proc fcScintillaEdit_highlightGuide(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_highlightGuide".}
proc fcScintillaEdit_lineEndPosition(self: pointer, line: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_lineEndPosition".}
proc fcScintillaEdit_codePage(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_codePage".}
proc fcScintillaEdit_caretFore(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_caretFore".}
proc fcScintillaEdit_readOnly(self: pointer, ): bool {.importc: "ScintillaEdit_readOnly".}
proc fcScintillaEdit_setCurrentPos(self: pointer, caret: miqt_intptr_t): void {.importc: "ScintillaEdit_setCurrentPos".}
proc fcScintillaEdit_setSelectionStart(self: pointer, anchor: miqt_intptr_t): void {.importc: "ScintillaEdit_setSelectionStart".}
proc fcScintillaEdit_selectionStart(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_selectionStart".}
proc fcScintillaEdit_setSelectionEnd(self: pointer, caret: miqt_intptr_t): void {.importc: "ScintillaEdit_setSelectionEnd".}
proc fcScintillaEdit_selectionEnd(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_selectionEnd".}
proc fcScintillaEdit_setEmptySelection(self: pointer, caret: miqt_intptr_t): void {.importc: "ScintillaEdit_setEmptySelection".}
proc fcScintillaEdit_setPrintMagnification(self: pointer, magnification: miqt_intptr_t): void {.importc: "ScintillaEdit_setPrintMagnification".}
proc fcScintillaEdit_printMagnification(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_printMagnification".}
proc fcScintillaEdit_setPrintColourMode(self: pointer, mode: miqt_intptr_t): void {.importc: "ScintillaEdit_setPrintColourMode".}
proc fcScintillaEdit_printColourMode(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_printColourMode".}
proc fcScintillaEdit_setChangeHistory(self: pointer, changeHistory: miqt_intptr_t): void {.importc: "ScintillaEdit_setChangeHistory".}
proc fcScintillaEdit_changeHistory(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_changeHistory".}
proc fcScintillaEdit_firstVisibleLine(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_firstVisibleLine".}
proc fcScintillaEdit_getLine(self: pointer, line: miqt_intptr_t): struct_miqt_string {.importc: "ScintillaEdit_getLine".}
proc fcScintillaEdit_lineCount(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_lineCount".}
proc fcScintillaEdit_allocateLines(self: pointer, lines: miqt_intptr_t): void {.importc: "ScintillaEdit_allocateLines".}
proc fcScintillaEdit_setMarginLeft(self: pointer, pixelWidth: miqt_intptr_t): void {.importc: "ScintillaEdit_setMarginLeft".}
proc fcScintillaEdit_marginLeft(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_marginLeft".}
proc fcScintillaEdit_setMarginRight(self: pointer, pixelWidth: miqt_intptr_t): void {.importc: "ScintillaEdit_setMarginRight".}
proc fcScintillaEdit_marginRight(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_marginRight".}
proc fcScintillaEdit_modify(self: pointer, ): bool {.importc: "ScintillaEdit_modify".}
proc fcScintillaEdit_setSel(self: pointer, anchor: miqt_intptr_t, caret: miqt_intptr_t): void {.importc: "ScintillaEdit_setSel".}
proc fcScintillaEdit_getSelText(self: pointer, ): struct_miqt_string {.importc: "ScintillaEdit_getSelText".}
proc fcScintillaEdit_hideSelection(self: pointer, hide: bool): void {.importc: "ScintillaEdit_hideSelection".}
proc fcScintillaEdit_selectionHidden(self: pointer, ): bool {.importc: "ScintillaEdit_selectionHidden".}
proc fcScintillaEdit_pointXFromPosition(self: pointer, pos: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_pointXFromPosition".}
proc fcScintillaEdit_pointYFromPosition(self: pointer, pos: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_pointYFromPosition".}
proc fcScintillaEdit_lineFromPosition(self: pointer, pos: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_lineFromPosition".}
proc fcScintillaEdit_positionFromLine(self: pointer, line: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_positionFromLine".}
proc fcScintillaEdit_lineScroll(self: pointer, columns: miqt_intptr_t, lines: miqt_intptr_t): void {.importc: "ScintillaEdit_lineScroll".}
proc fcScintillaEdit_scrollCaret(self: pointer, ): void {.importc: "ScintillaEdit_scrollCaret".}
proc fcScintillaEdit_scrollRange(self: pointer, secondary: miqt_intptr_t, primary: miqt_intptr_t): void {.importc: "ScintillaEdit_scrollRange".}
proc fcScintillaEdit_replaceSel(self: pointer, text: cstring): void {.importc: "ScintillaEdit_replaceSel".}
proc fcScintillaEdit_setReadOnly(self: pointer, readOnly: bool): void {.importc: "ScintillaEdit_setReadOnly".}
proc fcScintillaEdit_null(self: pointer, ): void {.importc: "ScintillaEdit_null".}
proc fcScintillaEdit_canPaste(self: pointer, ): bool {.importc: "ScintillaEdit_canPaste".}
proc fcScintillaEdit_canUndo(self: pointer, ): bool {.importc: "ScintillaEdit_canUndo".}
proc fcScintillaEdit_emptyUndoBuffer(self: pointer, ): void {.importc: "ScintillaEdit_emptyUndoBuffer".}
proc fcScintillaEdit_undo(self: pointer, ): void {.importc: "ScintillaEdit_undo".}
proc fcScintillaEdit_cut(self: pointer, ): void {.importc: "ScintillaEdit_cut".}
proc fcScintillaEdit_copy(self: pointer, ): void {.importc: "ScintillaEdit_copy".}
proc fcScintillaEdit_paste(self: pointer, ): void {.importc: "ScintillaEdit_paste".}
proc fcScintillaEdit_clear(self: pointer, ): void {.importc: "ScintillaEdit_clear".}
proc fcScintillaEdit_setText(self: pointer, text: cstring): void {.importc: "ScintillaEdit_setText".}
proc fcScintillaEdit_getText(self: pointer, length: miqt_intptr_t): struct_miqt_string {.importc: "ScintillaEdit_getText".}
proc fcScintillaEdit_textLength(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_textLength".}
proc fcScintillaEdit_directFunction(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_directFunction".}
proc fcScintillaEdit_directStatusFunction(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_directStatusFunction".}
proc fcScintillaEdit_directPointer(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_directPointer".}
proc fcScintillaEdit_setOvertype(self: pointer, overType: bool): void {.importc: "ScintillaEdit_setOvertype".}
proc fcScintillaEdit_overtype(self: pointer, ): bool {.importc: "ScintillaEdit_overtype".}
proc fcScintillaEdit_setCaretWidth(self: pointer, pixelWidth: miqt_intptr_t): void {.importc: "ScintillaEdit_setCaretWidth".}
proc fcScintillaEdit_caretWidth(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_caretWidth".}
proc fcScintillaEdit_setTargetStart(self: pointer, start: miqt_intptr_t): void {.importc: "ScintillaEdit_setTargetStart".}
proc fcScintillaEdit_targetStart(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_targetStart".}
proc fcScintillaEdit_setTargetStartVirtualSpace(self: pointer, space: miqt_intptr_t): void {.importc: "ScintillaEdit_setTargetStartVirtualSpace".}
proc fcScintillaEdit_targetStartVirtualSpace(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_targetStartVirtualSpace".}
proc fcScintillaEdit_setTargetEnd(self: pointer, endVal: miqt_intptr_t): void {.importc: "ScintillaEdit_setTargetEnd".}
proc fcScintillaEdit_targetEnd(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_targetEnd".}
proc fcScintillaEdit_setTargetEndVirtualSpace(self: pointer, space: miqt_intptr_t): void {.importc: "ScintillaEdit_setTargetEndVirtualSpace".}
proc fcScintillaEdit_targetEndVirtualSpace(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_targetEndVirtualSpace".}
proc fcScintillaEdit_setTargetRange(self: pointer, start: miqt_intptr_t, endVal: miqt_intptr_t): void {.importc: "ScintillaEdit_setTargetRange".}
proc fcScintillaEdit_targetText(self: pointer, ): struct_miqt_string {.importc: "ScintillaEdit_targetText".}
proc fcScintillaEdit_targetFromSelection(self: pointer, ): void {.importc: "ScintillaEdit_targetFromSelection".}
proc fcScintillaEdit_targetWholeDocument(self: pointer, ): void {.importc: "ScintillaEdit_targetWholeDocument".}
proc fcScintillaEdit_replaceTarget(self: pointer, length: miqt_intptr_t, text: cstring): miqt_intptr_t {.importc: "ScintillaEdit_replaceTarget".}
proc fcScintillaEdit_replaceTargetRE(self: pointer, length: miqt_intptr_t, text: cstring): miqt_intptr_t {.importc: "ScintillaEdit_replaceTargetRE".}
proc fcScintillaEdit_replaceTargetMinimal(self: pointer, length: miqt_intptr_t, text: cstring): miqt_intptr_t {.importc: "ScintillaEdit_replaceTargetMinimal".}
proc fcScintillaEdit_searchInTarget(self: pointer, length: miqt_intptr_t, text: cstring): miqt_intptr_t {.importc: "ScintillaEdit_searchInTarget".}
proc fcScintillaEdit_setSearchFlags(self: pointer, searchFlags: miqt_intptr_t): void {.importc: "ScintillaEdit_setSearchFlags".}
proc fcScintillaEdit_searchFlags(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_searchFlags".}
proc fcScintillaEdit_callTipShow(self: pointer, pos: miqt_intptr_t, definition: cstring): void {.importc: "ScintillaEdit_callTipShow".}
proc fcScintillaEdit_callTipCancel(self: pointer, ): void {.importc: "ScintillaEdit_callTipCancel".}
proc fcScintillaEdit_callTipActive(self: pointer, ): bool {.importc: "ScintillaEdit_callTipActive".}
proc fcScintillaEdit_callTipPosStart(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_callTipPosStart".}
proc fcScintillaEdit_callTipSetPosStart(self: pointer, posStart: miqt_intptr_t): void {.importc: "ScintillaEdit_callTipSetPosStart".}
proc fcScintillaEdit_callTipSetHlt(self: pointer, highlightStart: miqt_intptr_t, highlightEnd: miqt_intptr_t): void {.importc: "ScintillaEdit_callTipSetHlt".}
proc fcScintillaEdit_callTipSetBack(self: pointer, back: miqt_intptr_t): void {.importc: "ScintillaEdit_callTipSetBack".}
proc fcScintillaEdit_callTipSetFore(self: pointer, fore: miqt_intptr_t): void {.importc: "ScintillaEdit_callTipSetFore".}
proc fcScintillaEdit_callTipSetForeHlt(self: pointer, fore: miqt_intptr_t): void {.importc: "ScintillaEdit_callTipSetForeHlt".}
proc fcScintillaEdit_callTipUseStyle(self: pointer, tabSize: miqt_intptr_t): void {.importc: "ScintillaEdit_callTipUseStyle".}
proc fcScintillaEdit_callTipSetPosition(self: pointer, above: bool): void {.importc: "ScintillaEdit_callTipSetPosition".}
proc fcScintillaEdit_visibleFromDocLine(self: pointer, docLine: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_visibleFromDocLine".}
proc fcScintillaEdit_docLineFromVisible(self: pointer, displayLine: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_docLineFromVisible".}
proc fcScintillaEdit_wrapCount(self: pointer, docLine: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_wrapCount".}
proc fcScintillaEdit_setFoldLevel(self: pointer, line: miqt_intptr_t, level: miqt_intptr_t): void {.importc: "ScintillaEdit_setFoldLevel".}
proc fcScintillaEdit_foldLevel(self: pointer, line: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_foldLevel".}
proc fcScintillaEdit_lastChild(self: pointer, line: miqt_intptr_t, level: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_lastChild".}
proc fcScintillaEdit_foldParent(self: pointer, line: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_foldParent".}
proc fcScintillaEdit_showLines(self: pointer, lineStart: miqt_intptr_t, lineEnd: miqt_intptr_t): void {.importc: "ScintillaEdit_showLines".}
proc fcScintillaEdit_hideLines(self: pointer, lineStart: miqt_intptr_t, lineEnd: miqt_intptr_t): void {.importc: "ScintillaEdit_hideLines".}
proc fcScintillaEdit_lineVisible(self: pointer, line: miqt_intptr_t): bool {.importc: "ScintillaEdit_lineVisible".}
proc fcScintillaEdit_allLinesVisible(self: pointer, ): bool {.importc: "ScintillaEdit_allLinesVisible".}
proc fcScintillaEdit_setFoldExpanded(self: pointer, line: miqt_intptr_t, expanded: bool): void {.importc: "ScintillaEdit_setFoldExpanded".}
proc fcScintillaEdit_foldExpanded(self: pointer, line: miqt_intptr_t): bool {.importc: "ScintillaEdit_foldExpanded".}
proc fcScintillaEdit_toggleFold(self: pointer, line: miqt_intptr_t): void {.importc: "ScintillaEdit_toggleFold".}
proc fcScintillaEdit_toggleFoldShowText(self: pointer, line: miqt_intptr_t, text: cstring): void {.importc: "ScintillaEdit_toggleFoldShowText".}
proc fcScintillaEdit_foldDisplayTextSetStyle(self: pointer, style: miqt_intptr_t): void {.importc: "ScintillaEdit_foldDisplayTextSetStyle".}
proc fcScintillaEdit_foldDisplayTextStyle(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_foldDisplayTextStyle".}
proc fcScintillaEdit_setDefaultFoldDisplayText(self: pointer, text: cstring): void {.importc: "ScintillaEdit_setDefaultFoldDisplayText".}
proc fcScintillaEdit_getDefaultFoldDisplayText(self: pointer, ): struct_miqt_string {.importc: "ScintillaEdit_getDefaultFoldDisplayText".}
proc fcScintillaEdit_foldLine(self: pointer, line: miqt_intptr_t, action: miqt_intptr_t): void {.importc: "ScintillaEdit_foldLine".}
proc fcScintillaEdit_foldChildren(self: pointer, line: miqt_intptr_t, action: miqt_intptr_t): void {.importc: "ScintillaEdit_foldChildren".}
proc fcScintillaEdit_expandChildren(self: pointer, line: miqt_intptr_t, level: miqt_intptr_t): void {.importc: "ScintillaEdit_expandChildren".}
proc fcScintillaEdit_foldAll(self: pointer, action: miqt_intptr_t): void {.importc: "ScintillaEdit_foldAll".}
proc fcScintillaEdit_ensureVisible(self: pointer, line: miqt_intptr_t): void {.importc: "ScintillaEdit_ensureVisible".}
proc fcScintillaEdit_setAutomaticFold(self: pointer, automaticFold: miqt_intptr_t): void {.importc: "ScintillaEdit_setAutomaticFold".}
proc fcScintillaEdit_automaticFold(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_automaticFold".}
proc fcScintillaEdit_setFoldFlags(self: pointer, flags: miqt_intptr_t): void {.importc: "ScintillaEdit_setFoldFlags".}
proc fcScintillaEdit_ensureVisibleEnforcePolicy(self: pointer, line: miqt_intptr_t): void {.importc: "ScintillaEdit_ensureVisibleEnforcePolicy".}
proc fcScintillaEdit_setTabIndents(self: pointer, tabIndents: bool): void {.importc: "ScintillaEdit_setTabIndents".}
proc fcScintillaEdit_tabIndents(self: pointer, ): bool {.importc: "ScintillaEdit_tabIndents".}
proc fcScintillaEdit_setBackSpaceUnIndents(self: pointer, bsUnIndents: bool): void {.importc: "ScintillaEdit_setBackSpaceUnIndents".}
proc fcScintillaEdit_backSpaceUnIndents(self: pointer, ): bool {.importc: "ScintillaEdit_backSpaceUnIndents".}
proc fcScintillaEdit_setMouseDwellTime(self: pointer, periodMilliseconds: miqt_intptr_t): void {.importc: "ScintillaEdit_setMouseDwellTime".}
proc fcScintillaEdit_mouseDwellTime(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_mouseDwellTime".}
proc fcScintillaEdit_wordStartPosition(self: pointer, pos: miqt_intptr_t, onlyWordCharacters: bool): miqt_intptr_t {.importc: "ScintillaEdit_wordStartPosition".}
proc fcScintillaEdit_wordEndPosition(self: pointer, pos: miqt_intptr_t, onlyWordCharacters: bool): miqt_intptr_t {.importc: "ScintillaEdit_wordEndPosition".}
proc fcScintillaEdit_isRangeWord(self: pointer, start: miqt_intptr_t, endVal: miqt_intptr_t): bool {.importc: "ScintillaEdit_isRangeWord".}
proc fcScintillaEdit_setIdleStyling(self: pointer, idleStyling: miqt_intptr_t): void {.importc: "ScintillaEdit_setIdleStyling".}
proc fcScintillaEdit_idleStyling(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_idleStyling".}
proc fcScintillaEdit_setWrapMode(self: pointer, wrapMode: miqt_intptr_t): void {.importc: "ScintillaEdit_setWrapMode".}
proc fcScintillaEdit_wrapMode(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_wrapMode".}
proc fcScintillaEdit_setWrapVisualFlags(self: pointer, wrapVisualFlags: miqt_intptr_t): void {.importc: "ScintillaEdit_setWrapVisualFlags".}
proc fcScintillaEdit_wrapVisualFlags(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_wrapVisualFlags".}
proc fcScintillaEdit_setWrapVisualFlagsLocation(self: pointer, wrapVisualFlagsLocation: miqt_intptr_t): void {.importc: "ScintillaEdit_setWrapVisualFlagsLocation".}
proc fcScintillaEdit_wrapVisualFlagsLocation(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_wrapVisualFlagsLocation".}
proc fcScintillaEdit_setWrapStartIndent(self: pointer, indent: miqt_intptr_t): void {.importc: "ScintillaEdit_setWrapStartIndent".}
proc fcScintillaEdit_wrapStartIndent(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_wrapStartIndent".}
proc fcScintillaEdit_setWrapIndentMode(self: pointer, wrapIndentMode: miqt_intptr_t): void {.importc: "ScintillaEdit_setWrapIndentMode".}
proc fcScintillaEdit_wrapIndentMode(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_wrapIndentMode".}
proc fcScintillaEdit_setLayoutCache(self: pointer, cacheMode: miqt_intptr_t): void {.importc: "ScintillaEdit_setLayoutCache".}
proc fcScintillaEdit_layoutCache(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_layoutCache".}
proc fcScintillaEdit_setScrollWidth(self: pointer, pixelWidth: miqt_intptr_t): void {.importc: "ScintillaEdit_setScrollWidth".}
proc fcScintillaEdit_scrollWidth(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_scrollWidth".}
proc fcScintillaEdit_setScrollWidthTracking(self: pointer, tracking: bool): void {.importc: "ScintillaEdit_setScrollWidthTracking".}
proc fcScintillaEdit_scrollWidthTracking(self: pointer, ): bool {.importc: "ScintillaEdit_scrollWidthTracking".}
proc fcScintillaEdit_textWidth(self: pointer, style: miqt_intptr_t, text: cstring): miqt_intptr_t {.importc: "ScintillaEdit_textWidth".}
proc fcScintillaEdit_setEndAtLastLine(self: pointer, endAtLastLine: bool): void {.importc: "ScintillaEdit_setEndAtLastLine".}
proc fcScintillaEdit_endAtLastLine(self: pointer, ): bool {.importc: "ScintillaEdit_endAtLastLine".}
proc fcScintillaEdit_textHeight(self: pointer, line: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_textHeight".}
proc fcScintillaEdit_setVScrollBar(self: pointer, visible: bool): void {.importc: "ScintillaEdit_setVScrollBar".}
proc fcScintillaEdit_vScrollBar(self: pointer, ): bool {.importc: "ScintillaEdit_vScrollBar".}
proc fcScintillaEdit_appendText(self: pointer, length: miqt_intptr_t, text: cstring): void {.importc: "ScintillaEdit_appendText".}
proc fcScintillaEdit_phasesDraw(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_phasesDraw".}
proc fcScintillaEdit_setPhasesDraw(self: pointer, phases: miqt_intptr_t): void {.importc: "ScintillaEdit_setPhasesDraw".}
proc fcScintillaEdit_setFontQuality(self: pointer, fontQuality: miqt_intptr_t): void {.importc: "ScintillaEdit_setFontQuality".}
proc fcScintillaEdit_fontQuality(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_fontQuality".}
proc fcScintillaEdit_setFirstVisibleLine(self: pointer, displayLine: miqt_intptr_t): void {.importc: "ScintillaEdit_setFirstVisibleLine".}
proc fcScintillaEdit_setMultiPaste(self: pointer, multiPaste: miqt_intptr_t): void {.importc: "ScintillaEdit_setMultiPaste".}
proc fcScintillaEdit_multiPaste(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_multiPaste".}
proc fcScintillaEdit_tag(self: pointer, tagNumber: miqt_intptr_t): struct_miqt_string {.importc: "ScintillaEdit_tag".}
proc fcScintillaEdit_linesJoin(self: pointer, ): void {.importc: "ScintillaEdit_linesJoin".}
proc fcScintillaEdit_linesSplit(self: pointer, pixelWidth: miqt_intptr_t): void {.importc: "ScintillaEdit_linesSplit".}
proc fcScintillaEdit_setFoldMarginColour(self: pointer, useSetting: bool, back: miqt_intptr_t): void {.importc: "ScintillaEdit_setFoldMarginColour".}
proc fcScintillaEdit_setFoldMarginHiColour(self: pointer, useSetting: bool, fore: miqt_intptr_t): void {.importc: "ScintillaEdit_setFoldMarginHiColour".}
proc fcScintillaEdit_setAccessibility(self: pointer, accessibility: miqt_intptr_t): void {.importc: "ScintillaEdit_setAccessibility".}
proc fcScintillaEdit_accessibility(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_accessibility".}
proc fcScintillaEdit_lineDown(self: pointer, ): void {.importc: "ScintillaEdit_lineDown".}
proc fcScintillaEdit_lineDownExtend(self: pointer, ): void {.importc: "ScintillaEdit_lineDownExtend".}
proc fcScintillaEdit_lineUp(self: pointer, ): void {.importc: "ScintillaEdit_lineUp".}
proc fcScintillaEdit_lineUpExtend(self: pointer, ): void {.importc: "ScintillaEdit_lineUpExtend".}
proc fcScintillaEdit_charLeft(self: pointer, ): void {.importc: "ScintillaEdit_charLeft".}
proc fcScintillaEdit_charLeftExtend(self: pointer, ): void {.importc: "ScintillaEdit_charLeftExtend".}
proc fcScintillaEdit_charRight(self: pointer, ): void {.importc: "ScintillaEdit_charRight".}
proc fcScintillaEdit_charRightExtend(self: pointer, ): void {.importc: "ScintillaEdit_charRightExtend".}
proc fcScintillaEdit_wordLeft(self: pointer, ): void {.importc: "ScintillaEdit_wordLeft".}
proc fcScintillaEdit_wordLeftExtend(self: pointer, ): void {.importc: "ScintillaEdit_wordLeftExtend".}
proc fcScintillaEdit_wordRight(self: pointer, ): void {.importc: "ScintillaEdit_wordRight".}
proc fcScintillaEdit_wordRightExtend(self: pointer, ): void {.importc: "ScintillaEdit_wordRightExtend".}
proc fcScintillaEdit_home(self: pointer, ): void {.importc: "ScintillaEdit_home".}
proc fcScintillaEdit_homeExtend(self: pointer, ): void {.importc: "ScintillaEdit_homeExtend".}
proc fcScintillaEdit_lineEnd(self: pointer, ): void {.importc: "ScintillaEdit_lineEnd".}
proc fcScintillaEdit_lineEndExtend(self: pointer, ): void {.importc: "ScintillaEdit_lineEndExtend".}
proc fcScintillaEdit_documentStart(self: pointer, ): void {.importc: "ScintillaEdit_documentStart".}
proc fcScintillaEdit_documentStartExtend(self: pointer, ): void {.importc: "ScintillaEdit_documentStartExtend".}
proc fcScintillaEdit_documentEnd(self: pointer, ): void {.importc: "ScintillaEdit_documentEnd".}
proc fcScintillaEdit_documentEndExtend(self: pointer, ): void {.importc: "ScintillaEdit_documentEndExtend".}
proc fcScintillaEdit_pageUp(self: pointer, ): void {.importc: "ScintillaEdit_pageUp".}
proc fcScintillaEdit_pageUpExtend(self: pointer, ): void {.importc: "ScintillaEdit_pageUpExtend".}
proc fcScintillaEdit_pageDown(self: pointer, ): void {.importc: "ScintillaEdit_pageDown".}
proc fcScintillaEdit_pageDownExtend(self: pointer, ): void {.importc: "ScintillaEdit_pageDownExtend".}
proc fcScintillaEdit_editToggleOvertype(self: pointer, ): void {.importc: "ScintillaEdit_editToggleOvertype".}
proc fcScintillaEdit_cancel(self: pointer, ): void {.importc: "ScintillaEdit_cancel".}
proc fcScintillaEdit_deleteBack(self: pointer, ): void {.importc: "ScintillaEdit_deleteBack".}
proc fcScintillaEdit_tab(self: pointer, ): void {.importc: "ScintillaEdit_tab".}
proc fcScintillaEdit_lineIndent(self: pointer, ): void {.importc: "ScintillaEdit_lineIndent".}
proc fcScintillaEdit_backTab(self: pointer, ): void {.importc: "ScintillaEdit_backTab".}
proc fcScintillaEdit_lineDedent(self: pointer, ): void {.importc: "ScintillaEdit_lineDedent".}
proc fcScintillaEdit_newLine(self: pointer, ): void {.importc: "ScintillaEdit_newLine".}
proc fcScintillaEdit_formFeed(self: pointer, ): void {.importc: "ScintillaEdit_formFeed".}
proc fcScintillaEdit_vCHome(self: pointer, ): void {.importc: "ScintillaEdit_vCHome".}
proc fcScintillaEdit_vCHomeExtend(self: pointer, ): void {.importc: "ScintillaEdit_vCHomeExtend".}
proc fcScintillaEdit_zoomIn(self: pointer, ): void {.importc: "ScintillaEdit_zoomIn".}
proc fcScintillaEdit_zoomOut(self: pointer, ): void {.importc: "ScintillaEdit_zoomOut".}
proc fcScintillaEdit_delWordLeft(self: pointer, ): void {.importc: "ScintillaEdit_delWordLeft".}
proc fcScintillaEdit_delWordRight(self: pointer, ): void {.importc: "ScintillaEdit_delWordRight".}
proc fcScintillaEdit_delWordRightEnd(self: pointer, ): void {.importc: "ScintillaEdit_delWordRightEnd".}
proc fcScintillaEdit_lineCut(self: pointer, ): void {.importc: "ScintillaEdit_lineCut".}
proc fcScintillaEdit_lineDelete(self: pointer, ): void {.importc: "ScintillaEdit_lineDelete".}
proc fcScintillaEdit_lineTranspose(self: pointer, ): void {.importc: "ScintillaEdit_lineTranspose".}
proc fcScintillaEdit_lineReverse(self: pointer, ): void {.importc: "ScintillaEdit_lineReverse".}
proc fcScintillaEdit_lineDuplicate(self: pointer, ): void {.importc: "ScintillaEdit_lineDuplicate".}
proc fcScintillaEdit_lowerCase(self: pointer, ): void {.importc: "ScintillaEdit_lowerCase".}
proc fcScintillaEdit_upperCase(self: pointer, ): void {.importc: "ScintillaEdit_upperCase".}
proc fcScintillaEdit_lineScrollDown(self: pointer, ): void {.importc: "ScintillaEdit_lineScrollDown".}
proc fcScintillaEdit_lineScrollUp(self: pointer, ): void {.importc: "ScintillaEdit_lineScrollUp".}
proc fcScintillaEdit_deleteBackNotLine(self: pointer, ): void {.importc: "ScintillaEdit_deleteBackNotLine".}
proc fcScintillaEdit_homeDisplay(self: pointer, ): void {.importc: "ScintillaEdit_homeDisplay".}
proc fcScintillaEdit_homeDisplayExtend(self: pointer, ): void {.importc: "ScintillaEdit_homeDisplayExtend".}
proc fcScintillaEdit_lineEndDisplay(self: pointer, ): void {.importc: "ScintillaEdit_lineEndDisplay".}
proc fcScintillaEdit_lineEndDisplayExtend(self: pointer, ): void {.importc: "ScintillaEdit_lineEndDisplayExtend".}
proc fcScintillaEdit_homeWrap(self: pointer, ): void {.importc: "ScintillaEdit_homeWrap".}
proc fcScintillaEdit_homeWrapExtend(self: pointer, ): void {.importc: "ScintillaEdit_homeWrapExtend".}
proc fcScintillaEdit_lineEndWrap(self: pointer, ): void {.importc: "ScintillaEdit_lineEndWrap".}
proc fcScintillaEdit_lineEndWrapExtend(self: pointer, ): void {.importc: "ScintillaEdit_lineEndWrapExtend".}
proc fcScintillaEdit_vCHomeWrap(self: pointer, ): void {.importc: "ScintillaEdit_vCHomeWrap".}
proc fcScintillaEdit_vCHomeWrapExtend(self: pointer, ): void {.importc: "ScintillaEdit_vCHomeWrapExtend".}
proc fcScintillaEdit_lineCopy(self: pointer, ): void {.importc: "ScintillaEdit_lineCopy".}
proc fcScintillaEdit_moveCaretInsideView(self: pointer, ): void {.importc: "ScintillaEdit_moveCaretInsideView".}
proc fcScintillaEdit_lineLength(self: pointer, line: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_lineLength".}
proc fcScintillaEdit_braceHighlight(self: pointer, posA: miqt_intptr_t, posB: miqt_intptr_t): void {.importc: "ScintillaEdit_braceHighlight".}
proc fcScintillaEdit_braceHighlightIndicator(self: pointer, useSetting: bool, indicator: miqt_intptr_t): void {.importc: "ScintillaEdit_braceHighlightIndicator".}
proc fcScintillaEdit_braceBadLight(self: pointer, pos: miqt_intptr_t): void {.importc: "ScintillaEdit_braceBadLight".}
proc fcScintillaEdit_braceBadLightIndicator(self: pointer, useSetting: bool, indicator: miqt_intptr_t): void {.importc: "ScintillaEdit_braceBadLightIndicator".}
proc fcScintillaEdit_braceMatch(self: pointer, pos: miqt_intptr_t, maxReStyle: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_braceMatch".}
proc fcScintillaEdit_braceMatchNext(self: pointer, pos: miqt_intptr_t, startPos: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_braceMatchNext".}
proc fcScintillaEdit_viewEOL(self: pointer, ): bool {.importc: "ScintillaEdit_viewEOL".}
proc fcScintillaEdit_setViewEOL(self: pointer, visible: bool): void {.importc: "ScintillaEdit_setViewEOL".}
proc fcScintillaEdit_docPointer(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_docPointer".}
proc fcScintillaEdit_setDocPointer(self: pointer, doc: miqt_intptr_t): void {.importc: "ScintillaEdit_setDocPointer".}
proc fcScintillaEdit_setModEventMask(self: pointer, eventMask: miqt_intptr_t): void {.importc: "ScintillaEdit_setModEventMask".}
proc fcScintillaEdit_edgeColumn(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_edgeColumn".}
proc fcScintillaEdit_setEdgeColumn(self: pointer, column: miqt_intptr_t): void {.importc: "ScintillaEdit_setEdgeColumn".}
proc fcScintillaEdit_edgeMode(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_edgeMode".}
proc fcScintillaEdit_setEdgeMode(self: pointer, edgeMode: miqt_intptr_t): void {.importc: "ScintillaEdit_setEdgeMode".}
proc fcScintillaEdit_edgeColour(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_edgeColour".}
proc fcScintillaEdit_setEdgeColour(self: pointer, edgeColour: miqt_intptr_t): void {.importc: "ScintillaEdit_setEdgeColour".}
proc fcScintillaEdit_multiEdgeAddLine(self: pointer, column: miqt_intptr_t, edgeColour: miqt_intptr_t): void {.importc: "ScintillaEdit_multiEdgeAddLine".}
proc fcScintillaEdit_multiEdgeClearAll(self: pointer, ): void {.importc: "ScintillaEdit_multiEdgeClearAll".}
proc fcScintillaEdit_multiEdgeColumn(self: pointer, which: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_multiEdgeColumn".}
proc fcScintillaEdit_searchAnchor(self: pointer, ): void {.importc: "ScintillaEdit_searchAnchor".}
proc fcScintillaEdit_searchNext(self: pointer, searchFlags: miqt_intptr_t, text: cstring): miqt_intptr_t {.importc: "ScintillaEdit_searchNext".}
proc fcScintillaEdit_searchPrev(self: pointer, searchFlags: miqt_intptr_t, text: cstring): miqt_intptr_t {.importc: "ScintillaEdit_searchPrev".}
proc fcScintillaEdit_linesOnScreen(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_linesOnScreen".}
proc fcScintillaEdit_usePopUp(self: pointer, popUpMode: miqt_intptr_t): void {.importc: "ScintillaEdit_usePopUp".}
proc fcScintillaEdit_selectionIsRectangle(self: pointer, ): bool {.importc: "ScintillaEdit_selectionIsRectangle".}
proc fcScintillaEdit_setZoom(self: pointer, zoomInPoints: miqt_intptr_t): void {.importc: "ScintillaEdit_setZoom".}
proc fcScintillaEdit_zoom(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_zoom".}
proc fcScintillaEdit_createDocument(self: pointer, bytes: miqt_intptr_t, documentOptions: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_createDocument".}
proc fcScintillaEdit_addRefDocument(self: pointer, doc: miqt_intptr_t): void {.importc: "ScintillaEdit_addRefDocument".}
proc fcScintillaEdit_releaseDocument(self: pointer, doc: miqt_intptr_t): void {.importc: "ScintillaEdit_releaseDocument".}
proc fcScintillaEdit_documentOptions(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_documentOptions".}
proc fcScintillaEdit_modEventMask(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_modEventMask".}
proc fcScintillaEdit_setCommandEvents(self: pointer, commandEvents: bool): void {.importc: "ScintillaEdit_setCommandEvents".}
proc fcScintillaEdit_commandEvents(self: pointer, ): bool {.importc: "ScintillaEdit_commandEvents".}
proc fcScintillaEdit_setFocus(self: pointer, focus: bool): void {.importc: "ScintillaEdit_setFocus".}
proc fcScintillaEdit_focus(self: pointer, ): bool {.importc: "ScintillaEdit_focus".}
proc fcScintillaEdit_setStatus(self: pointer, status: miqt_intptr_t): void {.importc: "ScintillaEdit_setStatus".}
proc fcScintillaEdit_status(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_status".}
proc fcScintillaEdit_setMouseDownCaptures(self: pointer, captures: bool): void {.importc: "ScintillaEdit_setMouseDownCaptures".}
proc fcScintillaEdit_mouseDownCaptures(self: pointer, ): bool {.importc: "ScintillaEdit_mouseDownCaptures".}
proc fcScintillaEdit_setMouseWheelCaptures(self: pointer, captures: bool): void {.importc: "ScintillaEdit_setMouseWheelCaptures".}
proc fcScintillaEdit_mouseWheelCaptures(self: pointer, ): bool {.importc: "ScintillaEdit_mouseWheelCaptures".}
proc fcScintillaEdit_setCursor(self: pointer, cursorType: miqt_intptr_t): void {.importc: "ScintillaEdit_setCursor".}
proc fcScintillaEdit_cursor(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_cursor".}
proc fcScintillaEdit_setControlCharSymbol(self: pointer, symbol: miqt_intptr_t): void {.importc: "ScintillaEdit_setControlCharSymbol".}
proc fcScintillaEdit_controlCharSymbol(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_controlCharSymbol".}
proc fcScintillaEdit_wordPartLeft(self: pointer, ): void {.importc: "ScintillaEdit_wordPartLeft".}
proc fcScintillaEdit_wordPartLeftExtend(self: pointer, ): void {.importc: "ScintillaEdit_wordPartLeftExtend".}
proc fcScintillaEdit_wordPartRight(self: pointer, ): void {.importc: "ScintillaEdit_wordPartRight".}
proc fcScintillaEdit_wordPartRightExtend(self: pointer, ): void {.importc: "ScintillaEdit_wordPartRightExtend".}
proc fcScintillaEdit_setVisiblePolicy(self: pointer, visiblePolicy: miqt_intptr_t, visibleSlop: miqt_intptr_t): void {.importc: "ScintillaEdit_setVisiblePolicy".}
proc fcScintillaEdit_delLineLeft(self: pointer, ): void {.importc: "ScintillaEdit_delLineLeft".}
proc fcScintillaEdit_delLineRight(self: pointer, ): void {.importc: "ScintillaEdit_delLineRight".}
proc fcScintillaEdit_setXOffset(self: pointer, xOffset: miqt_intptr_t): void {.importc: "ScintillaEdit_setXOffset".}
proc fcScintillaEdit_xOffset(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_xOffset".}
proc fcScintillaEdit_chooseCaretX(self: pointer, ): void {.importc: "ScintillaEdit_chooseCaretX".}
proc fcScintillaEdit_grabFocus(self: pointer, ): void {.importc: "ScintillaEdit_grabFocus".}
proc fcScintillaEdit_setXCaretPolicy(self: pointer, caretPolicy: miqt_intptr_t, caretSlop: miqt_intptr_t): void {.importc: "ScintillaEdit_setXCaretPolicy".}
proc fcScintillaEdit_setYCaretPolicy(self: pointer, caretPolicy: miqt_intptr_t, caretSlop: miqt_intptr_t): void {.importc: "ScintillaEdit_setYCaretPolicy".}
proc fcScintillaEdit_setPrintWrapMode(self: pointer, wrapMode: miqt_intptr_t): void {.importc: "ScintillaEdit_setPrintWrapMode".}
proc fcScintillaEdit_printWrapMode(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_printWrapMode".}
proc fcScintillaEdit_setHotspotActiveFore(self: pointer, useSetting: bool, fore: miqt_intptr_t): void {.importc: "ScintillaEdit_setHotspotActiveFore".}
proc fcScintillaEdit_hotspotActiveFore(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_hotspotActiveFore".}
proc fcScintillaEdit_setHotspotActiveBack(self: pointer, useSetting: bool, back: miqt_intptr_t): void {.importc: "ScintillaEdit_setHotspotActiveBack".}
proc fcScintillaEdit_hotspotActiveBack(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_hotspotActiveBack".}
proc fcScintillaEdit_setHotspotActiveUnderline(self: pointer, underline: bool): void {.importc: "ScintillaEdit_setHotspotActiveUnderline".}
proc fcScintillaEdit_hotspotActiveUnderline(self: pointer, ): bool {.importc: "ScintillaEdit_hotspotActiveUnderline".}
proc fcScintillaEdit_setHotspotSingleLine(self: pointer, singleLine: bool): void {.importc: "ScintillaEdit_setHotspotSingleLine".}
proc fcScintillaEdit_hotspotSingleLine(self: pointer, ): bool {.importc: "ScintillaEdit_hotspotSingleLine".}
proc fcScintillaEdit_paraDown(self: pointer, ): void {.importc: "ScintillaEdit_paraDown".}
proc fcScintillaEdit_paraDownExtend(self: pointer, ): void {.importc: "ScintillaEdit_paraDownExtend".}
proc fcScintillaEdit_paraUp(self: pointer, ): void {.importc: "ScintillaEdit_paraUp".}
proc fcScintillaEdit_paraUpExtend(self: pointer, ): void {.importc: "ScintillaEdit_paraUpExtend".}
proc fcScintillaEdit_positionBefore(self: pointer, pos: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_positionBefore".}
proc fcScintillaEdit_positionAfter(self: pointer, pos: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_positionAfter".}
proc fcScintillaEdit_positionRelative(self: pointer, pos: miqt_intptr_t, relative: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_positionRelative".}
proc fcScintillaEdit_positionRelativeCodeUnits(self: pointer, pos: miqt_intptr_t, relative: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_positionRelativeCodeUnits".}
proc fcScintillaEdit_copyRange(self: pointer, start: miqt_intptr_t, endVal: miqt_intptr_t): void {.importc: "ScintillaEdit_copyRange".}
proc fcScintillaEdit_copyText(self: pointer, length: miqt_intptr_t, text: cstring): void {.importc: "ScintillaEdit_copyText".}
proc fcScintillaEdit_setSelectionMode(self: pointer, selectionMode: miqt_intptr_t): void {.importc: "ScintillaEdit_setSelectionMode".}
proc fcScintillaEdit_changeSelectionMode(self: pointer, selectionMode: miqt_intptr_t): void {.importc: "ScintillaEdit_changeSelectionMode".}
proc fcScintillaEdit_selectionMode(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_selectionMode".}
proc fcScintillaEdit_setMoveExtendsSelection(self: pointer, moveExtendsSelection: bool): void {.importc: "ScintillaEdit_setMoveExtendsSelection".}
proc fcScintillaEdit_moveExtendsSelection(self: pointer, ): bool {.importc: "ScintillaEdit_moveExtendsSelection".}
proc fcScintillaEdit_getLineSelStartPosition(self: pointer, line: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_getLineSelStartPosition".}
proc fcScintillaEdit_getLineSelEndPosition(self: pointer, line: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_getLineSelEndPosition".}
proc fcScintillaEdit_lineDownRectExtend(self: pointer, ): void {.importc: "ScintillaEdit_lineDownRectExtend".}
proc fcScintillaEdit_lineUpRectExtend(self: pointer, ): void {.importc: "ScintillaEdit_lineUpRectExtend".}
proc fcScintillaEdit_charLeftRectExtend(self: pointer, ): void {.importc: "ScintillaEdit_charLeftRectExtend".}
proc fcScintillaEdit_charRightRectExtend(self: pointer, ): void {.importc: "ScintillaEdit_charRightRectExtend".}
proc fcScintillaEdit_homeRectExtend(self: pointer, ): void {.importc: "ScintillaEdit_homeRectExtend".}
proc fcScintillaEdit_vCHomeRectExtend(self: pointer, ): void {.importc: "ScintillaEdit_vCHomeRectExtend".}
proc fcScintillaEdit_lineEndRectExtend(self: pointer, ): void {.importc: "ScintillaEdit_lineEndRectExtend".}
proc fcScintillaEdit_pageUpRectExtend(self: pointer, ): void {.importc: "ScintillaEdit_pageUpRectExtend".}
proc fcScintillaEdit_pageDownRectExtend(self: pointer, ): void {.importc: "ScintillaEdit_pageDownRectExtend".}
proc fcScintillaEdit_stutteredPageUp(self: pointer, ): void {.importc: "ScintillaEdit_stutteredPageUp".}
proc fcScintillaEdit_stutteredPageUpExtend(self: pointer, ): void {.importc: "ScintillaEdit_stutteredPageUpExtend".}
proc fcScintillaEdit_stutteredPageDown(self: pointer, ): void {.importc: "ScintillaEdit_stutteredPageDown".}
proc fcScintillaEdit_stutteredPageDownExtend(self: pointer, ): void {.importc: "ScintillaEdit_stutteredPageDownExtend".}
proc fcScintillaEdit_wordLeftEnd(self: pointer, ): void {.importc: "ScintillaEdit_wordLeftEnd".}
proc fcScintillaEdit_wordLeftEndExtend(self: pointer, ): void {.importc: "ScintillaEdit_wordLeftEndExtend".}
proc fcScintillaEdit_wordRightEnd(self: pointer, ): void {.importc: "ScintillaEdit_wordRightEnd".}
proc fcScintillaEdit_wordRightEndExtend(self: pointer, ): void {.importc: "ScintillaEdit_wordRightEndExtend".}
proc fcScintillaEdit_setWhitespaceChars(self: pointer, characters: cstring): void {.importc: "ScintillaEdit_setWhitespaceChars".}
proc fcScintillaEdit_whitespaceChars(self: pointer, ): struct_miqt_string {.importc: "ScintillaEdit_whitespaceChars".}
proc fcScintillaEdit_setPunctuationChars(self: pointer, characters: cstring): void {.importc: "ScintillaEdit_setPunctuationChars".}
proc fcScintillaEdit_punctuationChars(self: pointer, ): struct_miqt_string {.importc: "ScintillaEdit_punctuationChars".}
proc fcScintillaEdit_setCharsDefault(self: pointer, ): void {.importc: "ScintillaEdit_setCharsDefault".}
proc fcScintillaEdit_autoCCurrent(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_autoCCurrent".}
proc fcScintillaEdit_autoCCurrentText(self: pointer, ): struct_miqt_string {.importc: "ScintillaEdit_autoCCurrentText".}
proc fcScintillaEdit_autoCSetCaseInsensitiveBehaviour(self: pointer, behaviour: miqt_intptr_t): void {.importc: "ScintillaEdit_autoCSetCaseInsensitiveBehaviour".}
proc fcScintillaEdit_autoCCaseInsensitiveBehaviour(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_autoCCaseInsensitiveBehaviour".}
proc fcScintillaEdit_autoCSetMulti(self: pointer, multi: miqt_intptr_t): void {.importc: "ScintillaEdit_autoCSetMulti".}
proc fcScintillaEdit_autoCMulti(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_autoCMulti".}
proc fcScintillaEdit_autoCSetOrder(self: pointer, order: miqt_intptr_t): void {.importc: "ScintillaEdit_autoCSetOrder".}
proc fcScintillaEdit_autoCOrder(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_autoCOrder".}
proc fcScintillaEdit_allocate(self: pointer, bytes: miqt_intptr_t): void {.importc: "ScintillaEdit_allocate".}
proc fcScintillaEdit_targetAsUTF8(self: pointer, ): struct_miqt_string {.importc: "ScintillaEdit_targetAsUTF8".}
proc fcScintillaEdit_setLengthForEncode(self: pointer, bytes: miqt_intptr_t): void {.importc: "ScintillaEdit_setLengthForEncode".}
proc fcScintillaEdit_encodedFromUTF8(self: pointer, utf8: cstring): struct_miqt_string {.importc: "ScintillaEdit_encodedFromUTF8".}
proc fcScintillaEdit_findColumn(self: pointer, line: miqt_intptr_t, column: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_findColumn".}
proc fcScintillaEdit_caretSticky(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_caretSticky".}
proc fcScintillaEdit_setCaretSticky(self: pointer, useCaretStickyBehaviour: miqt_intptr_t): void {.importc: "ScintillaEdit_setCaretSticky".}
proc fcScintillaEdit_toggleCaretSticky(self: pointer, ): void {.importc: "ScintillaEdit_toggleCaretSticky".}
proc fcScintillaEdit_setPasteConvertEndings(self: pointer, convert: bool): void {.importc: "ScintillaEdit_setPasteConvertEndings".}
proc fcScintillaEdit_pasteConvertEndings(self: pointer, ): bool {.importc: "ScintillaEdit_pasteConvertEndings".}
proc fcScintillaEdit_replaceRectangular(self: pointer, length: miqt_intptr_t, text: cstring): void {.importc: "ScintillaEdit_replaceRectangular".}
proc fcScintillaEdit_selectionDuplicate(self: pointer, ): void {.importc: "ScintillaEdit_selectionDuplicate".}
proc fcScintillaEdit_setCaretLineBackAlpha(self: pointer, alpha: miqt_intptr_t): void {.importc: "ScintillaEdit_setCaretLineBackAlpha".}
proc fcScintillaEdit_caretLineBackAlpha(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_caretLineBackAlpha".}
proc fcScintillaEdit_setCaretStyle(self: pointer, caretStyle: miqt_intptr_t): void {.importc: "ScintillaEdit_setCaretStyle".}
proc fcScintillaEdit_caretStyle(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_caretStyle".}
proc fcScintillaEdit_setIndicatorCurrent(self: pointer, indicator: miqt_intptr_t): void {.importc: "ScintillaEdit_setIndicatorCurrent".}
proc fcScintillaEdit_indicatorCurrent(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_indicatorCurrent".}
proc fcScintillaEdit_setIndicatorValue(self: pointer, value: miqt_intptr_t): void {.importc: "ScintillaEdit_setIndicatorValue".}
proc fcScintillaEdit_indicatorValue(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_indicatorValue".}
proc fcScintillaEdit_indicatorFillRange(self: pointer, start: miqt_intptr_t, lengthFill: miqt_intptr_t): void {.importc: "ScintillaEdit_indicatorFillRange".}
proc fcScintillaEdit_indicatorClearRange(self: pointer, start: miqt_intptr_t, lengthClear: miqt_intptr_t): void {.importc: "ScintillaEdit_indicatorClearRange".}
proc fcScintillaEdit_indicatorAllOnFor(self: pointer, pos: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_indicatorAllOnFor".}
proc fcScintillaEdit_indicatorValueAt(self: pointer, indicator: miqt_intptr_t, pos: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_indicatorValueAt".}
proc fcScintillaEdit_indicatorStart(self: pointer, indicator: miqt_intptr_t, pos: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_indicatorStart".}
proc fcScintillaEdit_indicatorEnd(self: pointer, indicator: miqt_intptr_t, pos: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_indicatorEnd".}
proc fcScintillaEdit_setPositionCache(self: pointer, size: miqt_intptr_t): void {.importc: "ScintillaEdit_setPositionCache".}
proc fcScintillaEdit_positionCache(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_positionCache".}
proc fcScintillaEdit_setLayoutThreads(self: pointer, threads: miqt_intptr_t): void {.importc: "ScintillaEdit_setLayoutThreads".}
proc fcScintillaEdit_layoutThreads(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_layoutThreads".}
proc fcScintillaEdit_copyAllowLine(self: pointer, ): void {.importc: "ScintillaEdit_copyAllowLine".}
proc fcScintillaEdit_cutAllowLine(self: pointer, ): void {.importc: "ScintillaEdit_cutAllowLine".}
proc fcScintillaEdit_setCopySeparator(self: pointer, separator: cstring): void {.importc: "ScintillaEdit_setCopySeparator".}
proc fcScintillaEdit_copySeparator(self: pointer, ): struct_miqt_string {.importc: "ScintillaEdit_copySeparator".}
proc fcScintillaEdit_characterPointer(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_characterPointer".}
proc fcScintillaEdit_rangePointer(self: pointer, start: miqt_intptr_t, lengthRange: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_rangePointer".}
proc fcScintillaEdit_gapPosition(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_gapPosition".}
proc fcScintillaEdit_indicSetAlpha(self: pointer, indicator: miqt_intptr_t, alpha: miqt_intptr_t): void {.importc: "ScintillaEdit_indicSetAlpha".}
proc fcScintillaEdit_indicAlpha(self: pointer, indicator: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_indicAlpha".}
proc fcScintillaEdit_indicSetOutlineAlpha(self: pointer, indicator: miqt_intptr_t, alpha: miqt_intptr_t): void {.importc: "ScintillaEdit_indicSetOutlineAlpha".}
proc fcScintillaEdit_indicOutlineAlpha(self: pointer, indicator: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_indicOutlineAlpha".}
proc fcScintillaEdit_setExtraAscent(self: pointer, extraAscent: miqt_intptr_t): void {.importc: "ScintillaEdit_setExtraAscent".}
proc fcScintillaEdit_extraAscent(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_extraAscent".}
proc fcScintillaEdit_setExtraDescent(self: pointer, extraDescent: miqt_intptr_t): void {.importc: "ScintillaEdit_setExtraDescent".}
proc fcScintillaEdit_extraDescent(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_extraDescent".}
proc fcScintillaEdit_markerSymbolDefined(self: pointer, markerNumber: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_markerSymbolDefined".}
proc fcScintillaEdit_marginSetText(self: pointer, line: miqt_intptr_t, text: cstring): void {.importc: "ScintillaEdit_marginSetText".}
proc fcScintillaEdit_marginText(self: pointer, line: miqt_intptr_t): struct_miqt_string {.importc: "ScintillaEdit_marginText".}
proc fcScintillaEdit_marginSetStyle(self: pointer, line: miqt_intptr_t, style: miqt_intptr_t): void {.importc: "ScintillaEdit_marginSetStyle".}
proc fcScintillaEdit_marginStyle(self: pointer, line: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_marginStyle".}
proc fcScintillaEdit_marginSetStyles(self: pointer, line: miqt_intptr_t, styles: cstring): void {.importc: "ScintillaEdit_marginSetStyles".}
proc fcScintillaEdit_marginStyles(self: pointer, line: miqt_intptr_t): struct_miqt_string {.importc: "ScintillaEdit_marginStyles".}
proc fcScintillaEdit_marginTextClearAll(self: pointer, ): void {.importc: "ScintillaEdit_marginTextClearAll".}
proc fcScintillaEdit_marginSetStyleOffset(self: pointer, style: miqt_intptr_t): void {.importc: "ScintillaEdit_marginSetStyleOffset".}
proc fcScintillaEdit_marginStyleOffset(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_marginStyleOffset".}
proc fcScintillaEdit_setMarginOptions(self: pointer, marginOptions: miqt_intptr_t): void {.importc: "ScintillaEdit_setMarginOptions".}
proc fcScintillaEdit_marginOptions(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_marginOptions".}
proc fcScintillaEdit_annotationSetText(self: pointer, line: miqt_intptr_t, text: cstring): void {.importc: "ScintillaEdit_annotationSetText".}
proc fcScintillaEdit_annotationText(self: pointer, line: miqt_intptr_t): struct_miqt_string {.importc: "ScintillaEdit_annotationText".}
proc fcScintillaEdit_annotationSetStyle(self: pointer, line: miqt_intptr_t, style: miqt_intptr_t): void {.importc: "ScintillaEdit_annotationSetStyle".}
proc fcScintillaEdit_annotationStyle(self: pointer, line: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_annotationStyle".}
proc fcScintillaEdit_annotationSetStyles(self: pointer, line: miqt_intptr_t, styles: cstring): void {.importc: "ScintillaEdit_annotationSetStyles".}
proc fcScintillaEdit_annotationStyles(self: pointer, line: miqt_intptr_t): struct_miqt_string {.importc: "ScintillaEdit_annotationStyles".}
proc fcScintillaEdit_annotationLines(self: pointer, line: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_annotationLines".}
proc fcScintillaEdit_annotationClearAll(self: pointer, ): void {.importc: "ScintillaEdit_annotationClearAll".}
proc fcScintillaEdit_annotationSetVisible(self: pointer, visible: miqt_intptr_t): void {.importc: "ScintillaEdit_annotationSetVisible".}
proc fcScintillaEdit_annotationVisible(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_annotationVisible".}
proc fcScintillaEdit_annotationSetStyleOffset(self: pointer, style: miqt_intptr_t): void {.importc: "ScintillaEdit_annotationSetStyleOffset".}
proc fcScintillaEdit_annotationStyleOffset(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_annotationStyleOffset".}
proc fcScintillaEdit_releaseAllExtendedStyles(self: pointer, ): void {.importc: "ScintillaEdit_releaseAllExtendedStyles".}
proc fcScintillaEdit_allocateExtendedStyles(self: pointer, numberStyles: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_allocateExtendedStyles".}
proc fcScintillaEdit_addUndoAction(self: pointer, token: miqt_intptr_t, flags: miqt_intptr_t): void {.importc: "ScintillaEdit_addUndoAction".}
proc fcScintillaEdit_charPositionFromPoint(self: pointer, x: miqt_intptr_t, y: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_charPositionFromPoint".}
proc fcScintillaEdit_charPositionFromPointClose(self: pointer, x: miqt_intptr_t, y: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_charPositionFromPointClose".}
proc fcScintillaEdit_setMouseSelectionRectangularSwitch(self: pointer, mouseSelectionRectangularSwitch: bool): void {.importc: "ScintillaEdit_setMouseSelectionRectangularSwitch".}
proc fcScintillaEdit_mouseSelectionRectangularSwitch(self: pointer, ): bool {.importc: "ScintillaEdit_mouseSelectionRectangularSwitch".}
proc fcScintillaEdit_setMultipleSelection(self: pointer, multipleSelection: bool): void {.importc: "ScintillaEdit_setMultipleSelection".}
proc fcScintillaEdit_multipleSelection(self: pointer, ): bool {.importc: "ScintillaEdit_multipleSelection".}
proc fcScintillaEdit_setAdditionalSelectionTyping(self: pointer, additionalSelectionTyping: bool): void {.importc: "ScintillaEdit_setAdditionalSelectionTyping".}
proc fcScintillaEdit_additionalSelectionTyping(self: pointer, ): bool {.importc: "ScintillaEdit_additionalSelectionTyping".}
proc fcScintillaEdit_setAdditionalCaretsBlink(self: pointer, additionalCaretsBlink: bool): void {.importc: "ScintillaEdit_setAdditionalCaretsBlink".}
proc fcScintillaEdit_additionalCaretsBlink(self: pointer, ): bool {.importc: "ScintillaEdit_additionalCaretsBlink".}
proc fcScintillaEdit_setAdditionalCaretsVisible(self: pointer, additionalCaretsVisible: bool): void {.importc: "ScintillaEdit_setAdditionalCaretsVisible".}
proc fcScintillaEdit_additionalCaretsVisible(self: pointer, ): bool {.importc: "ScintillaEdit_additionalCaretsVisible".}
proc fcScintillaEdit_selections(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_selections".}
proc fcScintillaEdit_selectionEmpty(self: pointer, ): bool {.importc: "ScintillaEdit_selectionEmpty".}
proc fcScintillaEdit_clearSelections(self: pointer, ): void {.importc: "ScintillaEdit_clearSelections".}
proc fcScintillaEdit_setSelection(self: pointer, caret: miqt_intptr_t, anchor: miqt_intptr_t): void {.importc: "ScintillaEdit_setSelection".}
proc fcScintillaEdit_addSelection(self: pointer, caret: miqt_intptr_t, anchor: miqt_intptr_t): void {.importc: "ScintillaEdit_addSelection".}
proc fcScintillaEdit_selectionFromPoint(self: pointer, x: miqt_intptr_t, y: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_selectionFromPoint".}
proc fcScintillaEdit_dropSelectionN(self: pointer, selection: miqt_intptr_t): void {.importc: "ScintillaEdit_dropSelectionN".}
proc fcScintillaEdit_setMainSelection(self: pointer, selection: miqt_intptr_t): void {.importc: "ScintillaEdit_setMainSelection".}
proc fcScintillaEdit_mainSelection(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_mainSelection".}
proc fcScintillaEdit_setSelectionNCaret(self: pointer, selection: miqt_intptr_t, caret: miqt_intptr_t): void {.importc: "ScintillaEdit_setSelectionNCaret".}
proc fcScintillaEdit_selectionNCaret(self: pointer, selection: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_selectionNCaret".}
proc fcScintillaEdit_setSelectionNAnchor(self: pointer, selection: miqt_intptr_t, anchor: miqt_intptr_t): void {.importc: "ScintillaEdit_setSelectionNAnchor".}
proc fcScintillaEdit_selectionNAnchor(self: pointer, selection: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_selectionNAnchor".}
proc fcScintillaEdit_setSelectionNCaretVirtualSpace(self: pointer, selection: miqt_intptr_t, space: miqt_intptr_t): void {.importc: "ScintillaEdit_setSelectionNCaretVirtualSpace".}
proc fcScintillaEdit_selectionNCaretVirtualSpace(self: pointer, selection: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_selectionNCaretVirtualSpace".}
proc fcScintillaEdit_setSelectionNAnchorVirtualSpace(self: pointer, selection: miqt_intptr_t, space: miqt_intptr_t): void {.importc: "ScintillaEdit_setSelectionNAnchorVirtualSpace".}
proc fcScintillaEdit_selectionNAnchorVirtualSpace(self: pointer, selection: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_selectionNAnchorVirtualSpace".}
proc fcScintillaEdit_setSelectionNStart(self: pointer, selection: miqt_intptr_t, anchor: miqt_intptr_t): void {.importc: "ScintillaEdit_setSelectionNStart".}
proc fcScintillaEdit_selectionNStart(self: pointer, selection: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_selectionNStart".}
proc fcScintillaEdit_selectionNStartVirtualSpace(self: pointer, selection: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_selectionNStartVirtualSpace".}
proc fcScintillaEdit_setSelectionNEnd(self: pointer, selection: miqt_intptr_t, caret: miqt_intptr_t): void {.importc: "ScintillaEdit_setSelectionNEnd".}
proc fcScintillaEdit_selectionNEndVirtualSpace(self: pointer, selection: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_selectionNEndVirtualSpace".}
proc fcScintillaEdit_selectionNEnd(self: pointer, selection: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_selectionNEnd".}
proc fcScintillaEdit_setRectangularSelectionCaret(self: pointer, caret: miqt_intptr_t): void {.importc: "ScintillaEdit_setRectangularSelectionCaret".}
proc fcScintillaEdit_rectangularSelectionCaret(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_rectangularSelectionCaret".}
proc fcScintillaEdit_setRectangularSelectionAnchor(self: pointer, anchor: miqt_intptr_t): void {.importc: "ScintillaEdit_setRectangularSelectionAnchor".}
proc fcScintillaEdit_rectangularSelectionAnchor(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_rectangularSelectionAnchor".}
proc fcScintillaEdit_setRectangularSelectionCaretVirtualSpace(self: pointer, space: miqt_intptr_t): void {.importc: "ScintillaEdit_setRectangularSelectionCaretVirtualSpace".}
proc fcScintillaEdit_rectangularSelectionCaretVirtualSpace(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_rectangularSelectionCaretVirtualSpace".}
proc fcScintillaEdit_setRectangularSelectionAnchorVirtualSpace(self: pointer, space: miqt_intptr_t): void {.importc: "ScintillaEdit_setRectangularSelectionAnchorVirtualSpace".}
proc fcScintillaEdit_rectangularSelectionAnchorVirtualSpace(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_rectangularSelectionAnchorVirtualSpace".}
proc fcScintillaEdit_setVirtualSpaceOptions(self: pointer, virtualSpaceOptions: miqt_intptr_t): void {.importc: "ScintillaEdit_setVirtualSpaceOptions".}
proc fcScintillaEdit_virtualSpaceOptions(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_virtualSpaceOptions".}
proc fcScintillaEdit_setRectangularSelectionModifier(self: pointer, modifier: miqt_intptr_t): void {.importc: "ScintillaEdit_setRectangularSelectionModifier".}
proc fcScintillaEdit_rectangularSelectionModifier(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_rectangularSelectionModifier".}
proc fcScintillaEdit_setAdditionalSelFore(self: pointer, fore: miqt_intptr_t): void {.importc: "ScintillaEdit_setAdditionalSelFore".}
proc fcScintillaEdit_setAdditionalSelBack(self: pointer, back: miqt_intptr_t): void {.importc: "ScintillaEdit_setAdditionalSelBack".}
proc fcScintillaEdit_setAdditionalSelAlpha(self: pointer, alpha: miqt_intptr_t): void {.importc: "ScintillaEdit_setAdditionalSelAlpha".}
proc fcScintillaEdit_additionalSelAlpha(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_additionalSelAlpha".}
proc fcScintillaEdit_setAdditionalCaretFore(self: pointer, fore: miqt_intptr_t): void {.importc: "ScintillaEdit_setAdditionalCaretFore".}
proc fcScintillaEdit_additionalCaretFore(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_additionalCaretFore".}
proc fcScintillaEdit_rotateSelection(self: pointer, ): void {.importc: "ScintillaEdit_rotateSelection".}
proc fcScintillaEdit_swapMainAnchorCaret(self: pointer, ): void {.importc: "ScintillaEdit_swapMainAnchorCaret".}
proc fcScintillaEdit_multipleSelectAddNext(self: pointer, ): void {.importc: "ScintillaEdit_multipleSelectAddNext".}
proc fcScintillaEdit_multipleSelectAddEach(self: pointer, ): void {.importc: "ScintillaEdit_multipleSelectAddEach".}
proc fcScintillaEdit_changeLexerState(self: pointer, start: miqt_intptr_t, endVal: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_changeLexerState".}
proc fcScintillaEdit_contractedFoldNext(self: pointer, lineStart: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_contractedFoldNext".}
proc fcScintillaEdit_verticalCentreCaret(self: pointer, ): void {.importc: "ScintillaEdit_verticalCentreCaret".}
proc fcScintillaEdit_moveSelectedLinesUp(self: pointer, ): void {.importc: "ScintillaEdit_moveSelectedLinesUp".}
proc fcScintillaEdit_moveSelectedLinesDown(self: pointer, ): void {.importc: "ScintillaEdit_moveSelectedLinesDown".}
proc fcScintillaEdit_setIdentifier(self: pointer, identifier: miqt_intptr_t): void {.importc: "ScintillaEdit_setIdentifier".}
proc fcScintillaEdit_identifier(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_identifier".}
proc fcScintillaEdit_rGBAImageSetWidth(self: pointer, width: miqt_intptr_t): void {.importc: "ScintillaEdit_rGBAImageSetWidth".}
proc fcScintillaEdit_rGBAImageSetHeight(self: pointer, height: miqt_intptr_t): void {.importc: "ScintillaEdit_rGBAImageSetHeight".}
proc fcScintillaEdit_rGBAImageSetScale(self: pointer, scalePercent: miqt_intptr_t): void {.importc: "ScintillaEdit_rGBAImageSetScale".}
proc fcScintillaEdit_markerDefineRGBAImage(self: pointer, markerNumber: miqt_intptr_t, pixels: cstring): void {.importc: "ScintillaEdit_markerDefineRGBAImage".}
proc fcScintillaEdit_registerRGBAImage(self: pointer, typeVal: miqt_intptr_t, pixels: cstring): void {.importc: "ScintillaEdit_registerRGBAImage".}
proc fcScintillaEdit_scrollToStart(self: pointer, ): void {.importc: "ScintillaEdit_scrollToStart".}
proc fcScintillaEdit_scrollToEnd(self: pointer, ): void {.importc: "ScintillaEdit_scrollToEnd".}
proc fcScintillaEdit_setTechnology(self: pointer, technology: miqt_intptr_t): void {.importc: "ScintillaEdit_setTechnology".}
proc fcScintillaEdit_technology(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_technology".}
proc fcScintillaEdit_createLoader(self: pointer, bytes: miqt_intptr_t, documentOptions: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_createLoader".}
proc fcScintillaEdit_findIndicatorShow(self: pointer, start: miqt_intptr_t, endVal: miqt_intptr_t): void {.importc: "ScintillaEdit_findIndicatorShow".}
proc fcScintillaEdit_findIndicatorFlash(self: pointer, start: miqt_intptr_t, endVal: miqt_intptr_t): void {.importc: "ScintillaEdit_findIndicatorFlash".}
proc fcScintillaEdit_findIndicatorHide(self: pointer, ): void {.importc: "ScintillaEdit_findIndicatorHide".}
proc fcScintillaEdit_vCHomeDisplay(self: pointer, ): void {.importc: "ScintillaEdit_vCHomeDisplay".}
proc fcScintillaEdit_vCHomeDisplayExtend(self: pointer, ): void {.importc: "ScintillaEdit_vCHomeDisplayExtend".}
proc fcScintillaEdit_caretLineVisibleAlways(self: pointer, ): bool {.importc: "ScintillaEdit_caretLineVisibleAlways".}
proc fcScintillaEdit_setCaretLineVisibleAlways(self: pointer, alwaysVisible: bool): void {.importc: "ScintillaEdit_setCaretLineVisibleAlways".}
proc fcScintillaEdit_setLineEndTypesAllowed(self: pointer, lineEndBitSet: miqt_intptr_t): void {.importc: "ScintillaEdit_setLineEndTypesAllowed".}
proc fcScintillaEdit_lineEndTypesAllowed(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_lineEndTypesAllowed".}
proc fcScintillaEdit_lineEndTypesActive(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_lineEndTypesActive".}
proc fcScintillaEdit_setRepresentation(self: pointer, encodedCharacter: cstring, representation: cstring): void {.importc: "ScintillaEdit_setRepresentation".}
proc fcScintillaEdit_representation(self: pointer, encodedCharacter: cstring): struct_miqt_string {.importc: "ScintillaEdit_representation".}
proc fcScintillaEdit_clearRepresentation(self: pointer, encodedCharacter: cstring): void {.importc: "ScintillaEdit_clearRepresentation".}
proc fcScintillaEdit_clearAllRepresentations(self: pointer, ): void {.importc: "ScintillaEdit_clearAllRepresentations".}
proc fcScintillaEdit_setRepresentationAppearance(self: pointer, encodedCharacter: cstring, appearance: miqt_intptr_t): void {.importc: "ScintillaEdit_setRepresentationAppearance".}
proc fcScintillaEdit_representationAppearance(self: pointer, encodedCharacter: cstring): miqt_intptr_t {.importc: "ScintillaEdit_representationAppearance".}
proc fcScintillaEdit_setRepresentationColour(self: pointer, encodedCharacter: cstring, colour: miqt_intptr_t): void {.importc: "ScintillaEdit_setRepresentationColour".}
proc fcScintillaEdit_representationColour(self: pointer, encodedCharacter: cstring): miqt_intptr_t {.importc: "ScintillaEdit_representationColour".}
proc fcScintillaEdit_eOLAnnotationSetText(self: pointer, line: miqt_intptr_t, text: cstring): void {.importc: "ScintillaEdit_eOLAnnotationSetText".}
proc fcScintillaEdit_eOLAnnotationText(self: pointer, line: miqt_intptr_t): struct_miqt_string {.importc: "ScintillaEdit_eOLAnnotationText".}
proc fcScintillaEdit_eOLAnnotationSetStyle(self: pointer, line: miqt_intptr_t, style: miqt_intptr_t): void {.importc: "ScintillaEdit_eOLAnnotationSetStyle".}
proc fcScintillaEdit_eOLAnnotationStyle(self: pointer, line: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_eOLAnnotationStyle".}
proc fcScintillaEdit_eOLAnnotationClearAll(self: pointer, ): void {.importc: "ScintillaEdit_eOLAnnotationClearAll".}
proc fcScintillaEdit_eOLAnnotationSetVisible(self: pointer, visible: miqt_intptr_t): void {.importc: "ScintillaEdit_eOLAnnotationSetVisible".}
proc fcScintillaEdit_eOLAnnotationVisible(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_eOLAnnotationVisible".}
proc fcScintillaEdit_eOLAnnotationSetStyleOffset(self: pointer, style: miqt_intptr_t): void {.importc: "ScintillaEdit_eOLAnnotationSetStyleOffset".}
proc fcScintillaEdit_eOLAnnotationStyleOffset(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_eOLAnnotationStyleOffset".}
proc fcScintillaEdit_supportsFeature(self: pointer, feature: miqt_intptr_t): bool {.importc: "ScintillaEdit_supportsFeature".}
proc fcScintillaEdit_lineCharacterIndex(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_lineCharacterIndex".}
proc fcScintillaEdit_allocateLineCharacterIndex(self: pointer, lineCharacterIndex: miqt_intptr_t): void {.importc: "ScintillaEdit_allocateLineCharacterIndex".}
proc fcScintillaEdit_releaseLineCharacterIndex(self: pointer, lineCharacterIndex: miqt_intptr_t): void {.importc: "ScintillaEdit_releaseLineCharacterIndex".}
proc fcScintillaEdit_lineFromIndexPosition(self: pointer, pos: miqt_intptr_t, lineCharacterIndex: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_lineFromIndexPosition".}
proc fcScintillaEdit_indexPositionFromLine(self: pointer, line: miqt_intptr_t, lineCharacterIndex: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_indexPositionFromLine".}
proc fcScintillaEdit_startRecord(self: pointer, ): void {.importc: "ScintillaEdit_startRecord".}
proc fcScintillaEdit_stopRecord(self: pointer, ): void {.importc: "ScintillaEdit_stopRecord".}
proc fcScintillaEdit_lexer(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_lexer".}
proc fcScintillaEdit_colourise(self: pointer, start: miqt_intptr_t, endVal: miqt_intptr_t): void {.importc: "ScintillaEdit_colourise".}
proc fcScintillaEdit_setProperty(self: pointer, key: cstring, value: cstring): void {.importc: "ScintillaEdit_setProperty".}
proc fcScintillaEdit_setKeyWords(self: pointer, keyWordSet: miqt_intptr_t, keyWords: cstring): void {.importc: "ScintillaEdit_setKeyWords".}
proc fcScintillaEdit_property(self: pointer, key: cstring): struct_miqt_string {.importc: "ScintillaEdit_property".}
proc fcScintillaEdit_propertyExpanded(self: pointer, key: cstring): struct_miqt_string {.importc: "ScintillaEdit_propertyExpanded".}
proc fcScintillaEdit_propertyInt(self: pointer, key: cstring, defaultValue: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_propertyInt".}
proc fcScintillaEdit_lexerLanguage(self: pointer, ): struct_miqt_string {.importc: "ScintillaEdit_lexerLanguage".}
proc fcScintillaEdit_privateLexerCall(self: pointer, operation: miqt_intptr_t, pointer: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_privateLexerCall".}
proc fcScintillaEdit_propertyNames(self: pointer, ): struct_miqt_string {.importc: "ScintillaEdit_propertyNames".}
proc fcScintillaEdit_propertyType(self: pointer, name: cstring): miqt_intptr_t {.importc: "ScintillaEdit_propertyType".}
proc fcScintillaEdit_describeProperty(self: pointer, name: cstring): struct_miqt_string {.importc: "ScintillaEdit_describeProperty".}
proc fcScintillaEdit_describeKeyWordSets(self: pointer, ): struct_miqt_string {.importc: "ScintillaEdit_describeKeyWordSets".}
proc fcScintillaEdit_lineEndTypesSupported(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_lineEndTypesSupported".}
proc fcScintillaEdit_allocateSubStyles(self: pointer, styleBase: miqt_intptr_t, numberStyles: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_allocateSubStyles".}
proc fcScintillaEdit_subStylesStart(self: pointer, styleBase: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_subStylesStart".}
proc fcScintillaEdit_subStylesLength(self: pointer, styleBase: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_subStylesLength".}
proc fcScintillaEdit_styleFromSubStyle(self: pointer, subStyle: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_styleFromSubStyle".}
proc fcScintillaEdit_primaryStyleFromStyle(self: pointer, style: miqt_intptr_t): miqt_intptr_t {.importc: "ScintillaEdit_primaryStyleFromStyle".}
proc fcScintillaEdit_freeSubStyles(self: pointer, ): void {.importc: "ScintillaEdit_freeSubStyles".}
proc fcScintillaEdit_setIdentifiers(self: pointer, style: miqt_intptr_t, identifiers: cstring): void {.importc: "ScintillaEdit_setIdentifiers".}
proc fcScintillaEdit_distanceToSecondaryStyles(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_distanceToSecondaryStyles".}
proc fcScintillaEdit_subStyleBases(self: pointer, ): struct_miqt_string {.importc: "ScintillaEdit_subStyleBases".}
proc fcScintillaEdit_namedStyles(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_namedStyles".}
proc fcScintillaEdit_nameOfStyle(self: pointer, style: miqt_intptr_t): struct_miqt_string {.importc: "ScintillaEdit_nameOfStyle".}
proc fcScintillaEdit_tagsOfStyle(self: pointer, style: miqt_intptr_t): struct_miqt_string {.importc: "ScintillaEdit_tagsOfStyle".}
proc fcScintillaEdit_descriptionOfStyle(self: pointer, style: miqt_intptr_t): struct_miqt_string {.importc: "ScintillaEdit_descriptionOfStyle".}
proc fcScintillaEdit_setILexer(self: pointer, ilexer: miqt_intptr_t): void {.importc: "ScintillaEdit_setILexer".}
proc fcScintillaEdit_bidirectional(self: pointer, ): miqt_intptr_t {.importc: "ScintillaEdit_bidirectional".}
proc fcScintillaEdit_setBidirectional(self: pointer, bidirectional: miqt_intptr_t): void {.importc: "ScintillaEdit_setBidirectional".}
proc fcScintillaEdit_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "ScintillaEdit_tr2".}
proc fcScintillaEdit_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "ScintillaEdit_tr3".}
proc fcScintillaEdit_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "ScintillaEdit_trUtf82".}
proc fcScintillaEdit_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "ScintillaEdit_trUtf83".}
proc fScintillaEdit_virtualbase_metaObject(self: pointer, ): pointer{.importc: "ScintillaEdit_virtualbase_metaObject".}
proc fcScintillaEdit_override_virtual_metaObject(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_metaObject".}
proc fScintillaEdit_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "ScintillaEdit_virtualbase_metacast".}
proc fcScintillaEdit_override_virtual_metacast(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_metacast".}
proc fScintillaEdit_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "ScintillaEdit_virtualbase_metacall".}
proc fcScintillaEdit_override_virtual_metacall(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_metacall".}
proc fScintillaEdit_virtualbase_send(self: pointer, iMessage: cuint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): miqt_intptr_t{.importc: "ScintillaEdit_virtualbase_send".}
proc fcScintillaEdit_override_virtual_send(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_send".}
proc fScintillaEdit_virtualbase_sends(self: pointer, iMessage: cuint, wParam: miqt_uintptr_t, s: cstring): miqt_intptr_t{.importc: "ScintillaEdit_virtualbase_sends".}
proc fcScintillaEdit_override_virtual_sends(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_sends".}
proc fScintillaEdit_virtualbase_event(self: pointer, event: pointer): bool{.importc: "ScintillaEdit_virtualbase_event".}
proc fcScintillaEdit_override_virtual_event(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_event".}
proc fScintillaEdit_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "ScintillaEdit_virtualbase_paintEvent".}
proc fcScintillaEdit_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_paintEvent".}
proc fScintillaEdit_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "ScintillaEdit_virtualbase_wheelEvent".}
proc fcScintillaEdit_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_wheelEvent".}
proc fScintillaEdit_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "ScintillaEdit_virtualbase_focusInEvent".}
proc fcScintillaEdit_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_focusInEvent".}
proc fScintillaEdit_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "ScintillaEdit_virtualbase_focusOutEvent".}
proc fcScintillaEdit_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_focusOutEvent".}
proc fScintillaEdit_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "ScintillaEdit_virtualbase_resizeEvent".}
proc fcScintillaEdit_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_resizeEvent".}
proc fScintillaEdit_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "ScintillaEdit_virtualbase_keyPressEvent".}
proc fcScintillaEdit_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_keyPressEvent".}
proc fScintillaEdit_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "ScintillaEdit_virtualbase_mousePressEvent".}
proc fcScintillaEdit_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_mousePressEvent".}
proc fScintillaEdit_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "ScintillaEdit_virtualbase_mouseReleaseEvent".}
proc fcScintillaEdit_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_mouseReleaseEvent".}
proc fScintillaEdit_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "ScintillaEdit_virtualbase_mouseDoubleClickEvent".}
proc fcScintillaEdit_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_mouseDoubleClickEvent".}
proc fScintillaEdit_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "ScintillaEdit_virtualbase_mouseMoveEvent".}
proc fcScintillaEdit_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_mouseMoveEvent".}
proc fScintillaEdit_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "ScintillaEdit_virtualbase_contextMenuEvent".}
proc fcScintillaEdit_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_contextMenuEvent".}
proc fScintillaEdit_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "ScintillaEdit_virtualbase_dragEnterEvent".}
proc fcScintillaEdit_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_dragEnterEvent".}
proc fScintillaEdit_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "ScintillaEdit_virtualbase_dragLeaveEvent".}
proc fcScintillaEdit_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_dragLeaveEvent".}
proc fScintillaEdit_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "ScintillaEdit_virtualbase_dragMoveEvent".}
proc fcScintillaEdit_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_dragMoveEvent".}
proc fScintillaEdit_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "ScintillaEdit_virtualbase_dropEvent".}
proc fcScintillaEdit_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_dropEvent".}
proc fScintillaEdit_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "ScintillaEdit_virtualbase_inputMethodEvent".}
proc fcScintillaEdit_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_inputMethodEvent".}
proc fScintillaEdit_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "ScintillaEdit_virtualbase_inputMethodQuery".}
proc fcScintillaEdit_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_inputMethodQuery".}
proc fScintillaEdit_virtualbase_scrollContentsBy(self: pointer, param1: cint, param2: cint): void{.importc: "ScintillaEdit_virtualbase_scrollContentsBy".}
proc fcScintillaEdit_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_scrollContentsBy".}
proc fScintillaEdit_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "ScintillaEdit_virtualbase_minimumSizeHint".}
proc fcScintillaEdit_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_minimumSizeHint".}
proc fScintillaEdit_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "ScintillaEdit_virtualbase_sizeHint".}
proc fcScintillaEdit_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_sizeHint".}
proc fScintillaEdit_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "ScintillaEdit_virtualbase_setupViewport".}
proc fcScintillaEdit_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_setupViewport".}
proc fScintillaEdit_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "ScintillaEdit_virtualbase_eventFilter".}
proc fcScintillaEdit_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_eventFilter".}
proc fScintillaEdit_virtualbase_viewportEvent(self: pointer, param1: pointer): bool{.importc: "ScintillaEdit_virtualbase_viewportEvent".}
proc fcScintillaEdit_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_viewportEvent".}
proc fScintillaEdit_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "ScintillaEdit_virtualbase_viewportSizeHint".}
proc fcScintillaEdit_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_viewportSizeHint".}
proc fScintillaEdit_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "ScintillaEdit_virtualbase_changeEvent".}
proc fcScintillaEdit_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_changeEvent".}
proc fScintillaEdit_virtualbase_devType(self: pointer, ): cint{.importc: "ScintillaEdit_virtualbase_devType".}
proc fcScintillaEdit_override_virtual_devType(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_devType".}
proc fScintillaEdit_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "ScintillaEdit_virtualbase_setVisible".}
proc fcScintillaEdit_override_virtual_setVisible(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_setVisible".}
proc fScintillaEdit_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "ScintillaEdit_virtualbase_heightForWidth".}
proc fcScintillaEdit_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_heightForWidth".}
proc fScintillaEdit_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "ScintillaEdit_virtualbase_hasHeightForWidth".}
proc fcScintillaEdit_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_hasHeightForWidth".}
proc fScintillaEdit_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "ScintillaEdit_virtualbase_paintEngine".}
proc fcScintillaEdit_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_paintEngine".}
proc fScintillaEdit_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "ScintillaEdit_virtualbase_keyReleaseEvent".}
proc fcScintillaEdit_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_keyReleaseEvent".}
proc fScintillaEdit_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "ScintillaEdit_virtualbase_enterEvent".}
proc fcScintillaEdit_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_enterEvent".}
proc fScintillaEdit_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "ScintillaEdit_virtualbase_leaveEvent".}
proc fcScintillaEdit_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_leaveEvent".}
proc fScintillaEdit_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "ScintillaEdit_virtualbase_moveEvent".}
proc fcScintillaEdit_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_moveEvent".}
proc fScintillaEdit_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "ScintillaEdit_virtualbase_closeEvent".}
proc fcScintillaEdit_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_closeEvent".}
proc fScintillaEdit_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "ScintillaEdit_virtualbase_tabletEvent".}
proc fcScintillaEdit_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_tabletEvent".}
proc fScintillaEdit_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "ScintillaEdit_virtualbase_actionEvent".}
proc fcScintillaEdit_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_actionEvent".}
proc fScintillaEdit_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "ScintillaEdit_virtualbase_showEvent".}
proc fcScintillaEdit_override_virtual_showEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_showEvent".}
proc fScintillaEdit_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "ScintillaEdit_virtualbase_hideEvent".}
proc fcScintillaEdit_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_hideEvent".}
proc fScintillaEdit_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "ScintillaEdit_virtualbase_nativeEvent".}
proc fcScintillaEdit_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_nativeEvent".}
proc fScintillaEdit_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "ScintillaEdit_virtualbase_metric".}
proc fcScintillaEdit_override_virtual_metric(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_metric".}
proc fScintillaEdit_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "ScintillaEdit_virtualbase_initPainter".}
proc fcScintillaEdit_override_virtual_initPainter(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_initPainter".}
proc fScintillaEdit_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "ScintillaEdit_virtualbase_redirected".}
proc fcScintillaEdit_override_virtual_redirected(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_redirected".}
proc fScintillaEdit_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "ScintillaEdit_virtualbase_sharedPainter".}
proc fcScintillaEdit_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_sharedPainter".}
proc fScintillaEdit_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "ScintillaEdit_virtualbase_focusNextPrevChild".}
proc fcScintillaEdit_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_focusNextPrevChild".}
proc fScintillaEdit_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "ScintillaEdit_virtualbase_timerEvent".}
proc fcScintillaEdit_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_timerEvent".}
proc fScintillaEdit_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "ScintillaEdit_virtualbase_childEvent".}
proc fcScintillaEdit_override_virtual_childEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_childEvent".}
proc fScintillaEdit_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "ScintillaEdit_virtualbase_customEvent".}
proc fcScintillaEdit_override_virtual_customEvent(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_customEvent".}
proc fScintillaEdit_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "ScintillaEdit_virtualbase_connectNotify".}
proc fcScintillaEdit_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_connectNotify".}
proc fScintillaEdit_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "ScintillaEdit_virtualbase_disconnectNotify".}
proc fcScintillaEdit_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "ScintillaEdit_override_virtual_disconnectNotify".}
proc fcScintillaEdit_staticMetaObject(): pointer {.importc: "ScintillaEdit_staticMetaObject".}
proc fcScintillaEdit_delete(self: pointer) {.importc: "ScintillaEdit_delete".}


func init*(T: type gen_ScintillaEdit_types.ScintillaInternalPoint, h: ptr cScintillaInternalPoint): gen_ScintillaEdit_types.ScintillaInternalPoint =
  T(h: h)
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalPoint, ): gen_ScintillaEdit_types.ScintillaInternalPoint =

  gen_ScintillaEdit_types.ScintillaInternalPoint.init(fcScintillaInternalPoint_new())
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalPoint, param1: gen_ScintillaEdit_types.ScintillaInternalPoint): gen_ScintillaEdit_types.ScintillaInternalPoint =

  gen_ScintillaEdit_types.ScintillaInternalPoint.init(fcScintillaInternalPoint_new2(param1.h))
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalPoint, x_x: float64): gen_ScintillaEdit_types.ScintillaInternalPoint =

  gen_ScintillaEdit_types.ScintillaInternalPoint.init(fcScintillaInternalPoint_new3(x_x))
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalPoint, x_x: float64, y_x: float64): gen_ScintillaEdit_types.ScintillaInternalPoint =

  gen_ScintillaEdit_types.ScintillaInternalPoint.init(fcScintillaInternalPoint_new4(x_x, y_x))
proc FromInts*(_: type gen_ScintillaEdit_types.ScintillaInternalPoint, x_x: cint, y_x: cint): gen_ScintillaEdit_types.ScintillaInternalPoint =

  gen_ScintillaEdit_types.ScintillaInternalPoint(h: fcScintillaInternalPoint_FromInts(x_x, y_x))

proc operatorEqual*(self: gen_ScintillaEdit_types.ScintillaInternalPoint, other: gen_ScintillaEdit_types.ScintillaInternalPoint): bool =

  fcScintillaInternalPoint_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_ScintillaEdit_types.ScintillaInternalPoint, other: gen_ScintillaEdit_types.ScintillaInternalPoint): bool =

  fcScintillaInternalPoint_operatorNotEqual(self.h, other.h)

proc operatorPlus*(self: gen_ScintillaEdit_types.ScintillaInternalPoint, other: gen_ScintillaEdit_types.ScintillaInternalPoint): gen_ScintillaEdit_types.ScintillaInternalPoint =

  gen_ScintillaEdit_types.ScintillaInternalPoint(h: fcScintillaInternalPoint_operatorPlus(self.h, other.h))

proc operatorMinus*(self: gen_ScintillaEdit_types.ScintillaInternalPoint, other: gen_ScintillaEdit_types.ScintillaInternalPoint): gen_ScintillaEdit_types.ScintillaInternalPoint =

  gen_ScintillaEdit_types.ScintillaInternalPoint(h: fcScintillaInternalPoint_operatorMinus(self.h, other.h))

proc delete*(self: gen_ScintillaEdit_types.ScintillaInternalPoint) =
  fcScintillaInternalPoint_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaInternalInterval, h: ptr cScintillaInternalInterval): gen_ScintillaEdit_types.ScintillaInternalInterval =
  T(h: h)
proc operatorEqual*(self: gen_ScintillaEdit_types.ScintillaInternalInterval, other: gen_ScintillaEdit_types.ScintillaInternalInterval): bool =

  fcScintillaInternalInterval_operatorEqual(self.h, other.h)

proc Width*(self: gen_ScintillaEdit_types.ScintillaInternalInterval, ): float64 =

  fcScintillaInternalInterval_Width(self.h)

proc Empty*(self: gen_ScintillaEdit_types.ScintillaInternalInterval, ): bool =

  fcScintillaInternalInterval_Empty(self.h)

proc Intersects*(self: gen_ScintillaEdit_types.ScintillaInternalInterval, other: gen_ScintillaEdit_types.ScintillaInternalInterval): bool =

  fcScintillaInternalInterval_Intersects(self.h, other.h)

proc Offset*(self: gen_ScintillaEdit_types.ScintillaInternalInterval, offset: float64): gen_ScintillaEdit_types.ScintillaInternalInterval =

  gen_ScintillaEdit_types.ScintillaInternalInterval(h: fcScintillaInternalInterval_Offset(self.h, offset))

proc delete*(self: gen_ScintillaEdit_types.ScintillaInternalInterval) =
  fcScintillaInternalInterval_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaInternalPRectangle, h: ptr cScintillaInternalPRectangle): gen_ScintillaEdit_types.ScintillaInternalPRectangle =
  T(h: h)
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalPRectangle, ): gen_ScintillaEdit_types.ScintillaInternalPRectangle =

  gen_ScintillaEdit_types.ScintillaInternalPRectangle.init(fcScintillaInternalPRectangle_new())
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalPRectangle, param1: gen_ScintillaEdit_types.ScintillaInternalPRectangle): gen_ScintillaEdit_types.ScintillaInternalPRectangle =

  gen_ScintillaEdit_types.ScintillaInternalPRectangle.init(fcScintillaInternalPRectangle_new2(param1.h))
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalPRectangle, left_x: float64): gen_ScintillaEdit_types.ScintillaInternalPRectangle =

  gen_ScintillaEdit_types.ScintillaInternalPRectangle.init(fcScintillaInternalPRectangle_new3(left_x))
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalPRectangle, left_x: float64, top_x: float64): gen_ScintillaEdit_types.ScintillaInternalPRectangle =

  gen_ScintillaEdit_types.ScintillaInternalPRectangle.init(fcScintillaInternalPRectangle_new4(left_x, top_x))
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalPRectangle, left_x: float64, top_x: float64, right_x: float64): gen_ScintillaEdit_types.ScintillaInternalPRectangle =

  gen_ScintillaEdit_types.ScintillaInternalPRectangle.init(fcScintillaInternalPRectangle_new5(left_x, top_x, right_x))
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalPRectangle, left_x: float64, top_x: float64, right_x: float64, bottom_x: float64): gen_ScintillaEdit_types.ScintillaInternalPRectangle =

  gen_ScintillaEdit_types.ScintillaInternalPRectangle.init(fcScintillaInternalPRectangle_new6(left_x, top_x, right_x, bottom_x))
proc FromInts*(_: type gen_ScintillaEdit_types.ScintillaInternalPRectangle, left_x: cint, top_x: cint, right_x: cint, bottom_x: cint): gen_ScintillaEdit_types.ScintillaInternalPRectangle =

  gen_ScintillaEdit_types.ScintillaInternalPRectangle(h: fcScintillaInternalPRectangle_FromInts(left_x, top_x, right_x, bottom_x))

proc operatorEqual*(self: gen_ScintillaEdit_types.ScintillaInternalPRectangle, rc: gen_ScintillaEdit_types.ScintillaInternalPRectangle): bool =

  fcScintillaInternalPRectangle_operatorEqual(self.h, rc.h)

proc Contains*(self: gen_ScintillaEdit_types.ScintillaInternalPRectangle, pt: gen_ScintillaEdit_types.ScintillaInternalPoint): bool =

  fcScintillaInternalPRectangle_Contains(self.h, pt.h)

proc ContainsWholePixel*(self: gen_ScintillaEdit_types.ScintillaInternalPRectangle, pt: gen_ScintillaEdit_types.ScintillaInternalPoint): bool =

  fcScintillaInternalPRectangle_ContainsWholePixel(self.h, pt.h)

proc ContainsWithRc*(self: gen_ScintillaEdit_types.ScintillaInternalPRectangle, rc: gen_ScintillaEdit_types.ScintillaInternalPRectangle): bool =

  fcScintillaInternalPRectangle_ContainsWithRc(self.h, rc.h)

proc Intersects*(self: gen_ScintillaEdit_types.ScintillaInternalPRectangle, other: gen_ScintillaEdit_types.ScintillaInternalPRectangle): bool =

  fcScintillaInternalPRectangle_Intersects(self.h, other.h)

proc IntersectsWithHorizontalBounds*(self: gen_ScintillaEdit_types.ScintillaInternalPRectangle, horizontalBounds: gen_ScintillaEdit_types.ScintillaInternalInterval): bool =

  fcScintillaInternalPRectangle_IntersectsWithHorizontalBounds(self.h, horizontalBounds.h)

proc Move*(self: gen_ScintillaEdit_types.ScintillaInternalPRectangle, xDelta: float64, yDelta: float64): void =

  fcScintillaInternalPRectangle_Move(self.h, xDelta, yDelta)

proc WithHorizontalBounds*(self: gen_ScintillaEdit_types.ScintillaInternalPRectangle, horizontal: gen_ScintillaEdit_types.ScintillaInternalInterval): gen_ScintillaEdit_types.ScintillaInternalPRectangle =

  gen_ScintillaEdit_types.ScintillaInternalPRectangle(h: fcScintillaInternalPRectangle_WithHorizontalBounds(self.h, horizontal.h))

proc Inset*(self: gen_ScintillaEdit_types.ScintillaInternalPRectangle, delta: float64): gen_ScintillaEdit_types.ScintillaInternalPRectangle =

  gen_ScintillaEdit_types.ScintillaInternalPRectangle(h: fcScintillaInternalPRectangle_Inset(self.h, delta))

proc InsetWithDelta*(self: gen_ScintillaEdit_types.ScintillaInternalPRectangle, delta: gen_ScintillaEdit_types.ScintillaInternalPoint): gen_ScintillaEdit_types.ScintillaInternalPRectangle =

  gen_ScintillaEdit_types.ScintillaInternalPRectangle(h: fcScintillaInternalPRectangle_InsetWithDelta(self.h, delta.h))

proc Centre*(self: gen_ScintillaEdit_types.ScintillaInternalPRectangle, ): gen_ScintillaEdit_types.ScintillaInternalPoint =

  gen_ScintillaEdit_types.ScintillaInternalPoint(h: fcScintillaInternalPRectangle_Centre(self.h))

proc Width*(self: gen_ScintillaEdit_types.ScintillaInternalPRectangle, ): float64 =

  fcScintillaInternalPRectangle_Width(self.h)

proc Height*(self: gen_ScintillaEdit_types.ScintillaInternalPRectangle, ): float64 =

  fcScintillaInternalPRectangle_Height(self.h)

proc Empty*(self: gen_ScintillaEdit_types.ScintillaInternalPRectangle, ): bool =

  fcScintillaInternalPRectangle_Empty(self.h)

proc delete*(self: gen_ScintillaEdit_types.ScintillaInternalPRectangle) =
  fcScintillaInternalPRectangle_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaInternalColourRGBA, h: ptr cScintillaInternalColourRGBA): gen_ScintillaEdit_types.ScintillaInternalColourRGBA =
  T(h: h)
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalColourRGBA, ): gen_ScintillaEdit_types.ScintillaInternalColourRGBA =

  gen_ScintillaEdit_types.ScintillaInternalColourRGBA.init(fcScintillaInternalColourRGBA_new())
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalColourRGBA, red: cuint, green: cuint, blue: cuint): gen_ScintillaEdit_types.ScintillaInternalColourRGBA =

  gen_ScintillaEdit_types.ScintillaInternalColourRGBA.init(fcScintillaInternalColourRGBA_new2(red, green, blue))
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalColourRGBA, cd: gen_ScintillaEdit_types.ScintillaInternalColourRGBA, alpha: cuint): gen_ScintillaEdit_types.ScintillaInternalColourRGBA =

  gen_ScintillaEdit_types.ScintillaInternalColourRGBA.init(fcScintillaInternalColourRGBA_new3(cd.h, alpha))
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalColourRGBA, param1: gen_ScintillaEdit_types.ScintillaInternalColourRGBA): gen_ScintillaEdit_types.ScintillaInternalColourRGBA =

  gen_ScintillaEdit_types.ScintillaInternalColourRGBA.init(fcScintillaInternalColourRGBA_new4(param1.h))
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalColourRGBA, co_x: cint): gen_ScintillaEdit_types.ScintillaInternalColourRGBA =

  gen_ScintillaEdit_types.ScintillaInternalColourRGBA.init(fcScintillaInternalColourRGBA_new5(co_x))
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalColourRGBA, red: cuint, green: cuint, blue: cuint, alpha: cuint): gen_ScintillaEdit_types.ScintillaInternalColourRGBA =

  gen_ScintillaEdit_types.ScintillaInternalColourRGBA.init(fcScintillaInternalColourRGBA_new6(red, green, blue, alpha))
proc FromRGB*(_: type gen_ScintillaEdit_types.ScintillaInternalColourRGBA, co_x: cint): gen_ScintillaEdit_types.ScintillaInternalColourRGBA =

  gen_ScintillaEdit_types.ScintillaInternalColourRGBA(h: fcScintillaInternalColourRGBA_FromRGB(co_x))

proc Grey*(_: type gen_ScintillaEdit_types.ScintillaInternalColourRGBA, grey: cuint): gen_ScintillaEdit_types.ScintillaInternalColourRGBA =

  gen_ScintillaEdit_types.ScintillaInternalColourRGBA(h: fcScintillaInternalColourRGBA_Grey(grey))

proc FromIpRGB*(_: type gen_ScintillaEdit_types.ScintillaInternalColourRGBA, co_x: miqt_intptr_t): gen_ScintillaEdit_types.ScintillaInternalColourRGBA =

  gen_ScintillaEdit_types.ScintillaInternalColourRGBA(h: fcScintillaInternalColourRGBA_FromIpRGB(co_x))

proc WithoutAlpha*(self: gen_ScintillaEdit_types.ScintillaInternalColourRGBA, ): gen_ScintillaEdit_types.ScintillaInternalColourRGBA =

  gen_ScintillaEdit_types.ScintillaInternalColourRGBA(h: fcScintillaInternalColourRGBA_WithoutAlpha(self.h))

proc Opaque*(self: gen_ScintillaEdit_types.ScintillaInternalColourRGBA, ): gen_ScintillaEdit_types.ScintillaInternalColourRGBA =

  gen_ScintillaEdit_types.ScintillaInternalColourRGBA(h: fcScintillaInternalColourRGBA_Opaque(self.h))

proc AsInteger*(self: gen_ScintillaEdit_types.ScintillaInternalColourRGBA, ): cint =

  fcScintillaInternalColourRGBA_AsInteger(self.h)

proc OpaqueRGB*(self: gen_ScintillaEdit_types.ScintillaInternalColourRGBA, ): cint =

  fcScintillaInternalColourRGBA_OpaqueRGB(self.h)

proc GetRed*(self: gen_ScintillaEdit_types.ScintillaInternalColourRGBA, ): uint8 =

  fcScintillaInternalColourRGBA_GetRed(self.h)

proc GetGreen*(self: gen_ScintillaEdit_types.ScintillaInternalColourRGBA, ): uint8 =

  fcScintillaInternalColourRGBA_GetGreen(self.h)

proc GetBlue*(self: gen_ScintillaEdit_types.ScintillaInternalColourRGBA, ): uint8 =

  fcScintillaInternalColourRGBA_GetBlue(self.h)

proc GetAlpha*(self: gen_ScintillaEdit_types.ScintillaInternalColourRGBA, ): uint8 =

  fcScintillaInternalColourRGBA_GetAlpha(self.h)

proc GetRedComponent*(self: gen_ScintillaEdit_types.ScintillaInternalColourRGBA, ): float32 =

  fcScintillaInternalColourRGBA_GetRedComponent(self.h)

proc GetGreenComponent*(self: gen_ScintillaEdit_types.ScintillaInternalColourRGBA, ): float32 =

  fcScintillaInternalColourRGBA_GetGreenComponent(self.h)

proc GetBlueComponent*(self: gen_ScintillaEdit_types.ScintillaInternalColourRGBA, ): float32 =

  fcScintillaInternalColourRGBA_GetBlueComponent(self.h)

proc GetAlphaComponent*(self: gen_ScintillaEdit_types.ScintillaInternalColourRGBA, ): float32 =

  fcScintillaInternalColourRGBA_GetAlphaComponent(self.h)

proc operatorEqual*(self: gen_ScintillaEdit_types.ScintillaInternalColourRGBA, other: gen_ScintillaEdit_types.ScintillaInternalColourRGBA): bool =

  fcScintillaInternalColourRGBA_operatorEqual(self.h, other.h)

proc IsOpaque*(self: gen_ScintillaEdit_types.ScintillaInternalColourRGBA, ): bool =

  fcScintillaInternalColourRGBA_IsOpaque(self.h)

proc MixedWith*(self: gen_ScintillaEdit_types.ScintillaInternalColourRGBA, other: gen_ScintillaEdit_types.ScintillaInternalColourRGBA): gen_ScintillaEdit_types.ScintillaInternalColourRGBA =

  gen_ScintillaEdit_types.ScintillaInternalColourRGBA(h: fcScintillaInternalColourRGBA_MixedWith(self.h, other.h))

proc MixedWith2*(self: gen_ScintillaEdit_types.ScintillaInternalColourRGBA, other: gen_ScintillaEdit_types.ScintillaInternalColourRGBA, proportion: float64): gen_ScintillaEdit_types.ScintillaInternalColourRGBA =

  gen_ScintillaEdit_types.ScintillaInternalColourRGBA(h: fcScintillaInternalColourRGBA_MixedWith2(self.h, other.h, proportion))

proc operatorAssign*(self: gen_ScintillaEdit_types.ScintillaInternalColourRGBA, param1: gen_ScintillaEdit_types.ScintillaInternalColourRGBA): void =

  fcScintillaInternalColourRGBA_operatorAssign(self.h, param1.h)

proc Grey2*(_: type gen_ScintillaEdit_types.ScintillaInternalColourRGBA, grey: cuint, alpha: cuint): gen_ScintillaEdit_types.ScintillaInternalColourRGBA =

  gen_ScintillaEdit_types.ScintillaInternalColourRGBA(h: fcScintillaInternalColourRGBA_Grey2(grey, alpha))

proc delete*(self: gen_ScintillaEdit_types.ScintillaInternalColourRGBA) =
  fcScintillaInternalColourRGBA_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaInternalStroke, h: ptr cScintillaInternalStroke): gen_ScintillaEdit_types.ScintillaInternalStroke =
  T(h: h)
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalStroke, colour_x: gen_ScintillaEdit_types.ScintillaInternalColourRGBA): gen_ScintillaEdit_types.ScintillaInternalStroke =

  gen_ScintillaEdit_types.ScintillaInternalStroke.init(fcScintillaInternalStroke_new(colour_x.h))
proc create2*(T: type gen_ScintillaEdit_types.ScintillaInternalStroke, param1: gen_ScintillaEdit_types.ScintillaInternalStroke): gen_ScintillaEdit_types.ScintillaInternalStroke =

  gen_ScintillaEdit_types.ScintillaInternalStroke.init(fcScintillaInternalStroke_new2(param1.h))
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalStroke, colour_x: gen_ScintillaEdit_types.ScintillaInternalColourRGBA, width_x: float64): gen_ScintillaEdit_types.ScintillaInternalStroke =

  gen_ScintillaEdit_types.ScintillaInternalStroke.init(fcScintillaInternalStroke_new3(colour_x.h, width_x))
proc WidthF*(self: gen_ScintillaEdit_types.ScintillaInternalStroke, ): float32 =

  fcScintillaInternalStroke_WidthF(self.h)

proc delete*(self: gen_ScintillaEdit_types.ScintillaInternalStroke) =
  fcScintillaInternalStroke_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaInternalFill, h: ptr cScintillaInternalFill): gen_ScintillaEdit_types.ScintillaInternalFill =
  T(h: h)
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalFill, colour_x: gen_ScintillaEdit_types.ScintillaInternalColourRGBA): gen_ScintillaEdit_types.ScintillaInternalFill =

  gen_ScintillaEdit_types.ScintillaInternalFill.init(fcScintillaInternalFill_new(colour_x.h))
proc create2*(T: type gen_ScintillaEdit_types.ScintillaInternalFill, param1: gen_ScintillaEdit_types.ScintillaInternalFill): gen_ScintillaEdit_types.ScintillaInternalFill =

  gen_ScintillaEdit_types.ScintillaInternalFill.init(fcScintillaInternalFill_new2(param1.h))
proc delete*(self: gen_ScintillaEdit_types.ScintillaInternalFill) =
  fcScintillaInternalFill_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaInternalFillStroke, h: ptr cScintillaInternalFillStroke): gen_ScintillaEdit_types.ScintillaInternalFillStroke =
  T(h: h)
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalFillStroke, colourFill_x: gen_ScintillaEdit_types.ScintillaInternalColourRGBA, colourStroke_x: gen_ScintillaEdit_types.ScintillaInternalColourRGBA): gen_ScintillaEdit_types.ScintillaInternalFillStroke =

  gen_ScintillaEdit_types.ScintillaInternalFillStroke.init(fcScintillaInternalFillStroke_new(colourFill_x.h, colourStroke_x.h))
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalFillStroke, colourBoth: gen_ScintillaEdit_types.ScintillaInternalColourRGBA): gen_ScintillaEdit_types.ScintillaInternalFillStroke =

  gen_ScintillaEdit_types.ScintillaInternalFillStroke.init(fcScintillaInternalFillStroke_new2(colourBoth.h))
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalFillStroke, colourFill_x: gen_ScintillaEdit_types.ScintillaInternalColourRGBA, colourStroke_x: gen_ScintillaEdit_types.ScintillaInternalColourRGBA, widthStroke_x: float64): gen_ScintillaEdit_types.ScintillaInternalFillStroke =

  gen_ScintillaEdit_types.ScintillaInternalFillStroke.init(fcScintillaInternalFillStroke_new3(colourFill_x.h, colourStroke_x.h, widthStroke_x))
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalFillStroke, colourBoth: gen_ScintillaEdit_types.ScintillaInternalColourRGBA, widthStroke_x: float64): gen_ScintillaEdit_types.ScintillaInternalFillStroke =

  gen_ScintillaEdit_types.ScintillaInternalFillStroke.init(fcScintillaInternalFillStroke_new4(colourBoth.h, widthStroke_x))
proc delete*(self: gen_ScintillaEdit_types.ScintillaInternalFillStroke) =
  fcScintillaInternalFillStroke_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaInternalColourStop, h: ptr cScintillaInternalColourStop): gen_ScintillaEdit_types.ScintillaInternalColourStop =
  T(h: h)
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalColourStop, position_x: float64, colour_x: gen_ScintillaEdit_types.ScintillaInternalColourRGBA): gen_ScintillaEdit_types.ScintillaInternalColourStop =

  gen_ScintillaEdit_types.ScintillaInternalColourStop.init(fcScintillaInternalColourStop_new(position_x, colour_x.h))
proc delete*(self: gen_ScintillaEdit_types.ScintillaInternalColourStop) =
  fcScintillaInternalColourStop_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaCharacterRange, h: ptr cScintillaCharacterRange): gen_ScintillaEdit_types.ScintillaCharacterRange =
  T(h: h)
proc delete*(self: gen_ScintillaEdit_types.ScintillaCharacterRange) =
  fcScintillaCharacterRange_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaCharacterRangeFull, h: ptr cScintillaCharacterRangeFull): gen_ScintillaEdit_types.ScintillaCharacterRangeFull =
  T(h: h)
proc delete*(self: gen_ScintillaEdit_types.ScintillaCharacterRangeFull) =
  fcScintillaCharacterRangeFull_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaTextRange, h: ptr cScintillaTextRange): gen_ScintillaEdit_types.ScintillaTextRange =
  T(h: h)
proc delete*(self: gen_ScintillaEdit_types.ScintillaTextRange) =
  fcScintillaTextRange_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaTextRangeFull, h: ptr cScintillaTextRangeFull): gen_ScintillaEdit_types.ScintillaTextRangeFull =
  T(h: h)
proc delete*(self: gen_ScintillaEdit_types.ScintillaTextRangeFull) =
  fcScintillaTextRangeFull_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaTextToFind, h: ptr cScintillaTextToFind): gen_ScintillaEdit_types.ScintillaTextToFind =
  T(h: h)
proc delete*(self: gen_ScintillaEdit_types.ScintillaTextToFind) =
  fcScintillaTextToFind_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaTextToFindFull, h: ptr cScintillaTextToFindFull): gen_ScintillaEdit_types.ScintillaTextToFindFull =
  T(h: h)
proc delete*(self: gen_ScintillaEdit_types.ScintillaTextToFindFull) =
  fcScintillaTextToFindFull_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaRectangle, h: ptr cScintillaRectangle): gen_ScintillaEdit_types.ScintillaRectangle =
  T(h: h)
proc delete*(self: gen_ScintillaEdit_types.ScintillaRectangle) =
  fcScintillaRectangle_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaRangeToFormat, h: ptr cScintillaRangeToFormat): gen_ScintillaEdit_types.ScintillaRangeToFormat =
  T(h: h)
proc delete*(self: gen_ScintillaEdit_types.ScintillaRangeToFormat) =
  fcScintillaRangeToFormat_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaRangeToFormatFull, h: ptr cScintillaRangeToFormatFull): gen_ScintillaEdit_types.ScintillaRangeToFormatFull =
  T(h: h)
proc delete*(self: gen_ScintillaEdit_types.ScintillaRangeToFormatFull) =
  fcScintillaRangeToFormatFull_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaNotifyHeader, h: ptr cScintillaNotifyHeader): gen_ScintillaEdit_types.ScintillaNotifyHeader =
  T(h: h)
proc delete*(self: gen_ScintillaEdit_types.ScintillaNotifyHeader) =
  fcScintillaNotifyHeader_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaNotificationData, h: ptr cScintillaNotificationData): gen_ScintillaEdit_types.ScintillaNotificationData =
  T(h: h)
proc delete*(self: gen_ScintillaEdit_types.ScintillaNotificationData) =
  fcScintillaNotificationData_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaInternalFontParameters, h: ptr cScintillaInternalFontParameters): gen_ScintillaEdit_types.ScintillaInternalFontParameters =
  T(h: h)
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalFontParameters, faceName_x: cstring): gen_ScintillaEdit_types.ScintillaInternalFontParameters =

  gen_ScintillaEdit_types.ScintillaInternalFontParameters.init(fcScintillaInternalFontParameters_new(faceName_x))
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalFontParameters, faceName_x: cstring, size_x: float64): gen_ScintillaEdit_types.ScintillaInternalFontParameters =

  gen_ScintillaEdit_types.ScintillaInternalFontParameters.init(fcScintillaInternalFontParameters_new2(faceName_x, size_x))
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalFontParameters, faceName_x: cstring, size_x: float64, weight_x: cint): gen_ScintillaEdit_types.ScintillaInternalFontParameters =

  gen_ScintillaEdit_types.ScintillaInternalFontParameters.init(fcScintillaInternalFontParameters_new3(faceName_x, size_x, cint(weight_x)))
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalFontParameters, faceName_x: cstring, size_x: float64, weight_x: cint, italic_x: bool): gen_ScintillaEdit_types.ScintillaInternalFontParameters =

  gen_ScintillaEdit_types.ScintillaInternalFontParameters.init(fcScintillaInternalFontParameters_new4(faceName_x, size_x, cint(weight_x), italic_x))
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalFontParameters, faceName_x: cstring, size_x: float64, weight_x: cint, italic_x: bool, extraFontFlag_x: cint): gen_ScintillaEdit_types.ScintillaInternalFontParameters =

  gen_ScintillaEdit_types.ScintillaInternalFontParameters.init(fcScintillaInternalFontParameters_new5(faceName_x, size_x, cint(weight_x), italic_x, cint(extraFontFlag_x)))
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalFontParameters, faceName_x: cstring, size_x: float64, weight_x: cint, italic_x: bool, extraFontFlag_x: cint, technology_x: cint): gen_ScintillaEdit_types.ScintillaInternalFontParameters =

  gen_ScintillaEdit_types.ScintillaInternalFontParameters.init(fcScintillaInternalFontParameters_new6(faceName_x, size_x, cint(weight_x), italic_x, cint(extraFontFlag_x), cint(technology_x)))
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalFontParameters, faceName_x: cstring, size_x: float64, weight_x: cint, italic_x: bool, extraFontFlag_x: cint, technology_x: cint, characterSet_x: cint): gen_ScintillaEdit_types.ScintillaInternalFontParameters =

  gen_ScintillaEdit_types.ScintillaInternalFontParameters.init(fcScintillaInternalFontParameters_new7(faceName_x, size_x, cint(weight_x), italic_x, cint(extraFontFlag_x), cint(technology_x), cint(characterSet_x)))
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalFontParameters, faceName_x: cstring, size_x: float64, weight_x: cint, italic_x: bool, extraFontFlag_x: cint, technology_x: cint, characterSet_x: cint, localeName_x: cstring): gen_ScintillaEdit_types.ScintillaInternalFontParameters =

  gen_ScintillaEdit_types.ScintillaInternalFontParameters.init(fcScintillaInternalFontParameters_new8(faceName_x, size_x, cint(weight_x), italic_x, cint(extraFontFlag_x), cint(technology_x), cint(characterSet_x), localeName_x))
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalFontParameters, faceName_x: cstring, size_x: float64, weight_x: cint, italic_x: bool, extraFontFlag_x: cint, technology_x: cint, characterSet_x: cint, localeName_x: cstring, stretch_x: cint): gen_ScintillaEdit_types.ScintillaInternalFontParameters =

  gen_ScintillaEdit_types.ScintillaInternalFontParameters.init(fcScintillaInternalFontParameters_new9(faceName_x, size_x, cint(weight_x), italic_x, cint(extraFontFlag_x), cint(technology_x), cint(characterSet_x), localeName_x, cint(stretch_x)))
proc delete*(self: gen_ScintillaEdit_types.ScintillaInternalFontParameters) =
  fcScintillaInternalFontParameters_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaInternalFont, h: ptr cScintillaInternalFont): gen_ScintillaEdit_types.ScintillaInternalFont =
  T(h: h)
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalFont, ): gen_ScintillaEdit_types.ScintillaInternalFont =

  gen_ScintillaEdit_types.ScintillaInternalFont.init(fcScintillaInternalFont_new())
proc delete*(self: gen_ScintillaEdit_types.ScintillaInternalFont) =
  fcScintillaInternalFont_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaInternalIScreenLine, h: ptr cScintillaInternalIScreenLine): gen_ScintillaEdit_types.ScintillaInternalIScreenLine =
  T(h: h)
proc Length*(self: gen_ScintillaEdit_types.ScintillaInternalIScreenLine, ): csize_t =

  fcScintillaInternalIScreenLine_Length(self.h)

proc RepresentationCount*(self: gen_ScintillaEdit_types.ScintillaInternalIScreenLine, ): csize_t =

  fcScintillaInternalIScreenLine_RepresentationCount(self.h)

proc Width*(self: gen_ScintillaEdit_types.ScintillaInternalIScreenLine, ): float64 =

  fcScintillaInternalIScreenLine_Width(self.h)

proc Height*(self: gen_ScintillaEdit_types.ScintillaInternalIScreenLine, ): float64 =

  fcScintillaInternalIScreenLine_Height(self.h)

proc TabWidth*(self: gen_ScintillaEdit_types.ScintillaInternalIScreenLine, ): float64 =

  fcScintillaInternalIScreenLine_TabWidth(self.h)

proc TabWidthMinimumPixels*(self: gen_ScintillaEdit_types.ScintillaInternalIScreenLine, ): float64 =

  fcScintillaInternalIScreenLine_TabWidthMinimumPixels(self.h)

proc FontOfPosition*(self: gen_ScintillaEdit_types.ScintillaInternalIScreenLine, position: csize_t): gen_ScintillaEdit_types.ScintillaInternalFont =

  gen_ScintillaEdit_types.ScintillaInternalFont(h: fcScintillaInternalIScreenLine_FontOfPosition(self.h, position))

proc RepresentationWidth*(self: gen_ScintillaEdit_types.ScintillaInternalIScreenLine, position: csize_t): float64 =

  fcScintillaInternalIScreenLine_RepresentationWidth(self.h, position)

proc TabPositionAfter*(self: gen_ScintillaEdit_types.ScintillaInternalIScreenLine, xPosition: float64): float64 =

  fcScintillaInternalIScreenLine_TabPositionAfter(self.h, xPosition)

proc operatorAssign*(self: gen_ScintillaEdit_types.ScintillaInternalIScreenLine, param1: gen_ScintillaEdit_types.ScintillaInternalIScreenLine): void =

  fcScintillaInternalIScreenLine_operatorAssign(self.h, param1.h)

proc delete*(self: gen_ScintillaEdit_types.ScintillaInternalIScreenLine) =
  fcScintillaInternalIScreenLine_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaInternalIScreenLineLayout, h: ptr cScintillaInternalIScreenLineLayout): gen_ScintillaEdit_types.ScintillaInternalIScreenLineLayout =
  T(h: h)
proc PositionFromX*(self: gen_ScintillaEdit_types.ScintillaInternalIScreenLineLayout, xDistance: float64, charPosition: bool): csize_t =

  fcScintillaInternalIScreenLineLayout_PositionFromX(self.h, xDistance, charPosition)

proc XFromPosition*(self: gen_ScintillaEdit_types.ScintillaInternalIScreenLineLayout, caretPosition: csize_t): float64 =

  fcScintillaInternalIScreenLineLayout_XFromPosition(self.h, caretPosition)

proc operatorAssign*(self: gen_ScintillaEdit_types.ScintillaInternalIScreenLineLayout, param1: gen_ScintillaEdit_types.ScintillaInternalIScreenLineLayout): void =

  fcScintillaInternalIScreenLineLayout_operatorAssign(self.h, param1.h)

proc delete*(self: gen_ScintillaEdit_types.ScintillaInternalIScreenLineLayout) =
  fcScintillaInternalIScreenLineLayout_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaInternalSurfaceMode, h: ptr cScintillaInternalSurfaceMode): gen_ScintillaEdit_types.ScintillaInternalSurfaceMode =
  T(h: h)
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalSurfaceMode, ): gen_ScintillaEdit_types.ScintillaInternalSurfaceMode =

  gen_ScintillaEdit_types.ScintillaInternalSurfaceMode.init(fcScintillaInternalSurfaceMode_new())
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalSurfaceMode, codePage_x: cint, bidiR2L_x: bool): gen_ScintillaEdit_types.ScintillaInternalSurfaceMode =

  gen_ScintillaEdit_types.ScintillaInternalSurfaceMode.init(fcScintillaInternalSurfaceMode_new2(codePage_x, bidiR2L_x))
proc delete*(self: gen_ScintillaEdit_types.ScintillaInternalSurfaceMode) =
  fcScintillaInternalSurfaceMode_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaInternalSurface, h: ptr cScintillaInternalSurface): gen_ScintillaEdit_types.ScintillaInternalSurface =
  T(h: h)
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalSurface, ): gen_ScintillaEdit_types.ScintillaInternalSurface =

  gen_ScintillaEdit_types.ScintillaInternalSurface.init(fcScintillaInternalSurface_new())
proc Init*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, wid: pointer): void =

  fcScintillaInternalSurface_Init(self.h, wid)

proc Init2*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, sid: pointer, wid: pointer): void =

  fcScintillaInternalSurface_Init2(self.h, sid, wid)

proc SetMode*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, mode: gen_ScintillaEdit_types.ScintillaInternalSurfaceMode): void =

  fcScintillaInternalSurface_SetMode(self.h, mode.h)

proc Release*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, ): void =

  fcScintillaInternalSurface_Release(self.h)

proc SupportsFeature*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, feature: cint): cint =

  fcScintillaInternalSurface_SupportsFeature(self.h, cint(feature))

proc Initialised*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, ): bool =

  fcScintillaInternalSurface_Initialised(self.h)

proc LogPixelsY*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, ): cint =

  fcScintillaInternalSurface_LogPixelsY(self.h)

proc PixelDivisions*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, ): cint =

  fcScintillaInternalSurface_PixelDivisions(self.h)

proc DeviceHeightFont*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, points: cint): cint =

  fcScintillaInternalSurface_DeviceHeightFont(self.h, points)

proc LineDraw*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, start: gen_ScintillaEdit_types.ScintillaInternalPoint, endVal: gen_ScintillaEdit_types.ScintillaInternalPoint, stroke: gen_ScintillaEdit_types.ScintillaInternalStroke): void =

  fcScintillaInternalSurface_LineDraw(self.h, start.h, endVal.h, stroke.h)

proc PolyLine*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, pts: gen_ScintillaEdit_types.ScintillaInternalPoint, npts: csize_t, stroke: gen_ScintillaEdit_types.ScintillaInternalStroke): void =

  fcScintillaInternalSurface_PolyLine(self.h, pts.h, npts, stroke.h)

proc Polygon*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, pts: gen_ScintillaEdit_types.ScintillaInternalPoint, npts: csize_t, fillStroke: gen_ScintillaEdit_types.ScintillaInternalFillStroke): void =

  fcScintillaInternalSurface_Polygon(self.h, pts.h, npts, fillStroke.h)

proc RectangleDraw*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, rc: gen_ScintillaEdit_types.ScintillaInternalPRectangle, fillStroke: gen_ScintillaEdit_types.ScintillaInternalFillStroke): void =

  fcScintillaInternalSurface_RectangleDraw(self.h, rc.h, fillStroke.h)

proc RectangleFrame*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, rc: gen_ScintillaEdit_types.ScintillaInternalPRectangle, stroke: gen_ScintillaEdit_types.ScintillaInternalStroke): void =

  fcScintillaInternalSurface_RectangleFrame(self.h, rc.h, stroke.h)

proc FillRectangle*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, rc: gen_ScintillaEdit_types.ScintillaInternalPRectangle, fill: gen_ScintillaEdit_types.ScintillaInternalFill): void =

  fcScintillaInternalSurface_FillRectangle(self.h, rc.h, fill.h)

proc FillRectangleAligned*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, rc: gen_ScintillaEdit_types.ScintillaInternalPRectangle, fill: gen_ScintillaEdit_types.ScintillaInternalFill): void =

  fcScintillaInternalSurface_FillRectangleAligned(self.h, rc.h, fill.h)

proc FillRectangle2*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, rc: gen_ScintillaEdit_types.ScintillaInternalPRectangle, surfacePattern: gen_ScintillaEdit_types.ScintillaInternalSurface): void =

  fcScintillaInternalSurface_FillRectangle2(self.h, rc.h, surfacePattern.h)

proc RoundedRectangle*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, rc: gen_ScintillaEdit_types.ScintillaInternalPRectangle, fillStroke: gen_ScintillaEdit_types.ScintillaInternalFillStroke): void =

  fcScintillaInternalSurface_RoundedRectangle(self.h, rc.h, fillStroke.h)

proc AlphaRectangle*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, rc: gen_ScintillaEdit_types.ScintillaInternalPRectangle, cornerSize: float64, fillStroke: gen_ScintillaEdit_types.ScintillaInternalFillStroke): void =

  fcScintillaInternalSurface_AlphaRectangle(self.h, rc.h, cornerSize, fillStroke.h)

proc DrawRGBAImage*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, rc: gen_ScintillaEdit_types.ScintillaInternalPRectangle, width: cint, height: cint, pixelsImage: ptr uint8): void =

  fcScintillaInternalSurface_DrawRGBAImage(self.h, rc.h, width, height, pixelsImage)

proc Ellipse*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, rc: gen_ScintillaEdit_types.ScintillaInternalPRectangle, fillStroke: gen_ScintillaEdit_types.ScintillaInternalFillStroke): void =

  fcScintillaInternalSurface_Ellipse(self.h, rc.h, fillStroke.h)

proc Stadium*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, rc: gen_ScintillaEdit_types.ScintillaInternalPRectangle, fillStroke: gen_ScintillaEdit_types.ScintillaInternalFillStroke, ends: cint): void =

  fcScintillaInternalSurface_Stadium(self.h, rc.h, fillStroke.h, cint(ends))

proc Copy*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, rc: gen_ScintillaEdit_types.ScintillaInternalPRectangle, fromVal: gen_ScintillaEdit_types.ScintillaInternalPoint, surfaceSource: gen_ScintillaEdit_types.ScintillaInternalSurface): void =

  fcScintillaInternalSurface_Copy(self.h, rc.h, fromVal.h, surfaceSource.h)

proc Ascent*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, font_x: gen_ScintillaEdit_types.ScintillaInternalFont): float64 =

  fcScintillaInternalSurface_Ascent(self.h, font_x.h)

proc Descent*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, font_x: gen_ScintillaEdit_types.ScintillaInternalFont): float64 =

  fcScintillaInternalSurface_Descent(self.h, font_x.h)

proc InternalLeading*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, font_x: gen_ScintillaEdit_types.ScintillaInternalFont): float64 =

  fcScintillaInternalSurface_InternalLeading(self.h, font_x.h)

proc Height*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, font_x: gen_ScintillaEdit_types.ScintillaInternalFont): float64 =

  fcScintillaInternalSurface_Height(self.h, font_x.h)

proc AverageCharWidth*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, font_x: gen_ScintillaEdit_types.ScintillaInternalFont): float64 =

  fcScintillaInternalSurface_AverageCharWidth(self.h, font_x.h)

proc SetClip*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, rc: gen_ScintillaEdit_types.ScintillaInternalPRectangle): void =

  fcScintillaInternalSurface_SetClip(self.h, rc.h)

proc PopClip*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, ): void =

  fcScintillaInternalSurface_PopClip(self.h)

proc FlushCachedState*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, ): void =

  fcScintillaInternalSurface_FlushCachedState(self.h)

proc FlushDrawing*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, ): void =

  fcScintillaInternalSurface_FlushDrawing(self.h)

type ScintillaInternalSurfaceInitProc* = proc(wid: pointer): void
proc onInit*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfaceInitProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfaceInitProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_Init(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_Init(self: ptr cScintillaInternalSurface, slot: int, wid: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_Init ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfaceInitProc](cast[pointer](slot))
  let slotval1 = wid


  nimfunc[](slotval1)
type ScintillaInternalSurfaceInit2Proc* = proc(sid: pointer, wid: pointer): void
proc onInit2*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfaceInit2Proc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfaceInit2Proc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_Init2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_Init2(self: ptr cScintillaInternalSurface, slot: int, sid: pointer, wid: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_Init2 ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfaceInit2Proc](cast[pointer](slot))
  let slotval1 = sid

  let slotval2 = wid


  nimfunc[](slotval1, slotval2)
type ScintillaInternalSurfaceSetModeProc* = proc(mode: gen_ScintillaEdit_types.ScintillaInternalSurfaceMode): void
proc onSetMode*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfaceSetModeProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfaceSetModeProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_SetMode(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_SetMode(self: ptr cScintillaInternalSurface, slot: int, mode: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_SetMode ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfaceSetModeProc](cast[pointer](slot))
  let slotval1 = gen_ScintillaEdit_types.ScintillaInternalSurfaceMode(h: mode)


  nimfunc[](slotval1)
type ScintillaInternalSurfaceReleaseProc* = proc(): void
proc onRelease*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfaceReleaseProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfaceReleaseProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_Release(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_Release(self: ptr cScintillaInternalSurface, slot: int): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_Release ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfaceReleaseProc](cast[pointer](slot))

  nimfunc[]()
type ScintillaInternalSurfaceSupportsFeatureProc* = proc(feature: cint): cint
proc onSupportsFeature*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfaceSupportsFeatureProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfaceSupportsFeatureProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_SupportsFeature(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_SupportsFeature(self: ptr cScintillaInternalSurface, slot: int, feature: cint): cint {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_SupportsFeature ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfaceSupportsFeatureProc](cast[pointer](slot))
  let slotval1 = cint(feature)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type ScintillaInternalSurfaceInitialisedProc* = proc(): bool
proc onInitialised*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfaceInitialisedProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfaceInitialisedProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_Initialised(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_Initialised(self: ptr cScintillaInternalSurface, slot: int): bool {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_Initialised ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfaceInitialisedProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type ScintillaInternalSurfaceLogPixelsYProc* = proc(): cint
proc onLogPixelsY*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfaceLogPixelsYProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfaceLogPixelsYProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_LogPixelsY(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_LogPixelsY(self: ptr cScintillaInternalSurface, slot: int): cint {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_LogPixelsY ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfaceLogPixelsYProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type ScintillaInternalSurfacePixelDivisionsProc* = proc(): cint
proc onPixelDivisions*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfacePixelDivisionsProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfacePixelDivisionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_PixelDivisions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_PixelDivisions(self: ptr cScintillaInternalSurface, slot: int): cint {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_PixelDivisions ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfacePixelDivisionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type ScintillaInternalSurfaceDeviceHeightFontProc* = proc(points: cint): cint
proc onDeviceHeightFont*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfaceDeviceHeightFontProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfaceDeviceHeightFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_DeviceHeightFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_DeviceHeightFont(self: ptr cScintillaInternalSurface, slot: int, points: cint): cint {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_DeviceHeightFont ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfaceDeviceHeightFontProc](cast[pointer](slot))
  let slotval1 = points


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type ScintillaInternalSurfaceLineDrawProc* = proc(start: gen_ScintillaEdit_types.ScintillaInternalPoint, endVal: gen_ScintillaEdit_types.ScintillaInternalPoint, stroke: gen_ScintillaEdit_types.ScintillaInternalStroke): void
proc onLineDraw*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfaceLineDrawProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfaceLineDrawProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_LineDraw(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_LineDraw(self: ptr cScintillaInternalSurface, slot: int, start: pointer, endVal: pointer, stroke: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_LineDraw ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfaceLineDrawProc](cast[pointer](slot))
  let slotval1 = gen_ScintillaEdit_types.ScintillaInternalPoint(h: start)

  let slotval2 = gen_ScintillaEdit_types.ScintillaInternalPoint(h: endVal)

  let slotval3 = gen_ScintillaEdit_types.ScintillaInternalStroke(h: stroke)


  nimfunc[](slotval1, slotval2, slotval3)
type ScintillaInternalSurfacePolyLineProc* = proc(pts: gen_ScintillaEdit_types.ScintillaInternalPoint, npts: csize_t, stroke: gen_ScintillaEdit_types.ScintillaInternalStroke): void
proc onPolyLine*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfacePolyLineProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfacePolyLineProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_PolyLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_PolyLine(self: ptr cScintillaInternalSurface, slot: int, pts: pointer, npts: csize_t, stroke: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_PolyLine ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfacePolyLineProc](cast[pointer](slot))
  let slotval1 = gen_ScintillaEdit_types.ScintillaInternalPoint(h: pts)

  let slotval2 = npts

  let slotval3 = gen_ScintillaEdit_types.ScintillaInternalStroke(h: stroke)


  nimfunc[](slotval1, slotval2, slotval3)
type ScintillaInternalSurfacePolygonProc* = proc(pts: gen_ScintillaEdit_types.ScintillaInternalPoint, npts: csize_t, fillStroke: gen_ScintillaEdit_types.ScintillaInternalFillStroke): void
proc onPolygon*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfacePolygonProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfacePolygonProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_Polygon(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_Polygon(self: ptr cScintillaInternalSurface, slot: int, pts: pointer, npts: csize_t, fillStroke: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_Polygon ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfacePolygonProc](cast[pointer](slot))
  let slotval1 = gen_ScintillaEdit_types.ScintillaInternalPoint(h: pts)

  let slotval2 = npts

  let slotval3 = gen_ScintillaEdit_types.ScintillaInternalFillStroke(h: fillStroke)


  nimfunc[](slotval1, slotval2, slotval3)
type ScintillaInternalSurfaceRectangleDrawProc* = proc(rc: gen_ScintillaEdit_types.ScintillaInternalPRectangle, fillStroke: gen_ScintillaEdit_types.ScintillaInternalFillStroke): void
proc onRectangleDraw*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfaceRectangleDrawProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfaceRectangleDrawProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_RectangleDraw(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_RectangleDraw(self: ptr cScintillaInternalSurface, slot: int, rc: pointer, fillStroke: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_RectangleDraw ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfaceRectangleDrawProc](cast[pointer](slot))
  let slotval1 = gen_ScintillaEdit_types.ScintillaInternalPRectangle(h: rc)

  let slotval2 = gen_ScintillaEdit_types.ScintillaInternalFillStroke(h: fillStroke)


  nimfunc[](slotval1, slotval2)
type ScintillaInternalSurfaceRectangleFrameProc* = proc(rc: gen_ScintillaEdit_types.ScintillaInternalPRectangle, stroke: gen_ScintillaEdit_types.ScintillaInternalStroke): void
proc onRectangleFrame*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfaceRectangleFrameProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfaceRectangleFrameProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_RectangleFrame(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_RectangleFrame(self: ptr cScintillaInternalSurface, slot: int, rc: pointer, stroke: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_RectangleFrame ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfaceRectangleFrameProc](cast[pointer](slot))
  let slotval1 = gen_ScintillaEdit_types.ScintillaInternalPRectangle(h: rc)

  let slotval2 = gen_ScintillaEdit_types.ScintillaInternalStroke(h: stroke)


  nimfunc[](slotval1, slotval2)
type ScintillaInternalSurfaceFillRectangleProc* = proc(rc: gen_ScintillaEdit_types.ScintillaInternalPRectangle, fill: gen_ScintillaEdit_types.ScintillaInternalFill): void
proc onFillRectangle*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfaceFillRectangleProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfaceFillRectangleProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_FillRectangle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_FillRectangle(self: ptr cScintillaInternalSurface, slot: int, rc: pointer, fill: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_FillRectangle ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfaceFillRectangleProc](cast[pointer](slot))
  let slotval1 = gen_ScintillaEdit_types.ScintillaInternalPRectangle(h: rc)

  let slotval2 = gen_ScintillaEdit_types.ScintillaInternalFill(h: fill)


  nimfunc[](slotval1, slotval2)
type ScintillaInternalSurfaceFillRectangleAlignedProc* = proc(rc: gen_ScintillaEdit_types.ScintillaInternalPRectangle, fill: gen_ScintillaEdit_types.ScintillaInternalFill): void
proc onFillRectangleAligned*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfaceFillRectangleAlignedProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfaceFillRectangleAlignedProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_FillRectangleAligned(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_FillRectangleAligned(self: ptr cScintillaInternalSurface, slot: int, rc: pointer, fill: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_FillRectangleAligned ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfaceFillRectangleAlignedProc](cast[pointer](slot))
  let slotval1 = gen_ScintillaEdit_types.ScintillaInternalPRectangle(h: rc)

  let slotval2 = gen_ScintillaEdit_types.ScintillaInternalFill(h: fill)


  nimfunc[](slotval1, slotval2)
type ScintillaInternalSurfaceFillRectangle2Proc* = proc(rc: gen_ScintillaEdit_types.ScintillaInternalPRectangle, surfacePattern: gen_ScintillaEdit_types.ScintillaInternalSurface): void
proc onFillRectangle2*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfaceFillRectangle2Proc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfaceFillRectangle2Proc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_FillRectangle2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_FillRectangle2(self: ptr cScintillaInternalSurface, slot: int, rc: pointer, surfacePattern: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_FillRectangle2 ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfaceFillRectangle2Proc](cast[pointer](slot))
  let slotval1 = gen_ScintillaEdit_types.ScintillaInternalPRectangle(h: rc)

  let slotval2 = gen_ScintillaEdit_types.ScintillaInternalSurface(h: surfacePattern)


  nimfunc[](slotval1, slotval2)
type ScintillaInternalSurfaceRoundedRectangleProc* = proc(rc: gen_ScintillaEdit_types.ScintillaInternalPRectangle, fillStroke: gen_ScintillaEdit_types.ScintillaInternalFillStroke): void
proc onRoundedRectangle*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfaceRoundedRectangleProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfaceRoundedRectangleProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_RoundedRectangle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_RoundedRectangle(self: ptr cScintillaInternalSurface, slot: int, rc: pointer, fillStroke: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_RoundedRectangle ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfaceRoundedRectangleProc](cast[pointer](slot))
  let slotval1 = gen_ScintillaEdit_types.ScintillaInternalPRectangle(h: rc)

  let slotval2 = gen_ScintillaEdit_types.ScintillaInternalFillStroke(h: fillStroke)


  nimfunc[](slotval1, slotval2)
type ScintillaInternalSurfaceAlphaRectangleProc* = proc(rc: gen_ScintillaEdit_types.ScintillaInternalPRectangle, cornerSize: float64, fillStroke: gen_ScintillaEdit_types.ScintillaInternalFillStroke): void
proc onAlphaRectangle*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfaceAlphaRectangleProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfaceAlphaRectangleProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_AlphaRectangle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_AlphaRectangle(self: ptr cScintillaInternalSurface, slot: int, rc: pointer, cornerSize: float64, fillStroke: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_AlphaRectangle ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfaceAlphaRectangleProc](cast[pointer](slot))
  let slotval1 = gen_ScintillaEdit_types.ScintillaInternalPRectangle(h: rc)

  let slotval2 = cornerSize

  let slotval3 = gen_ScintillaEdit_types.ScintillaInternalFillStroke(h: fillStroke)


  nimfunc[](slotval1, slotval2, slotval3)
type ScintillaInternalSurfaceDrawRGBAImageProc* = proc(rc: gen_ScintillaEdit_types.ScintillaInternalPRectangle, width: cint, height: cint, pixelsImage: ptr uint8): void
proc onDrawRGBAImage*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfaceDrawRGBAImageProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfaceDrawRGBAImageProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_DrawRGBAImage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_DrawRGBAImage(self: ptr cScintillaInternalSurface, slot: int, rc: pointer, width: cint, height: cint, pixelsImage: ptr uint8): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_DrawRGBAImage ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfaceDrawRGBAImageProc](cast[pointer](slot))
  let slotval1 = gen_ScintillaEdit_types.ScintillaInternalPRectangle(h: rc)

  let slotval2 = width

  let slotval3 = height

  let slotval4 = pixelsImage


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
type ScintillaInternalSurfaceEllipseProc* = proc(rc: gen_ScintillaEdit_types.ScintillaInternalPRectangle, fillStroke: gen_ScintillaEdit_types.ScintillaInternalFillStroke): void
proc onEllipse*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfaceEllipseProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfaceEllipseProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_Ellipse(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_Ellipse(self: ptr cScintillaInternalSurface, slot: int, rc: pointer, fillStroke: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_Ellipse ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfaceEllipseProc](cast[pointer](slot))
  let slotval1 = gen_ScintillaEdit_types.ScintillaInternalPRectangle(h: rc)

  let slotval2 = gen_ScintillaEdit_types.ScintillaInternalFillStroke(h: fillStroke)


  nimfunc[](slotval1, slotval2)
type ScintillaInternalSurfaceStadiumProc* = proc(rc: gen_ScintillaEdit_types.ScintillaInternalPRectangle, fillStroke: gen_ScintillaEdit_types.ScintillaInternalFillStroke, ends: cint): void
proc onStadium*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfaceStadiumProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfaceStadiumProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_Stadium(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_Stadium(self: ptr cScintillaInternalSurface, slot: int, rc: pointer, fillStroke: pointer, ends: cint): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_Stadium ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfaceStadiumProc](cast[pointer](slot))
  let slotval1 = gen_ScintillaEdit_types.ScintillaInternalPRectangle(h: rc)

  let slotval2 = gen_ScintillaEdit_types.ScintillaInternalFillStroke(h: fillStroke)

  let slotval3 = cint(ends)


  nimfunc[](slotval1, slotval2, slotval3)
type ScintillaInternalSurfaceCopyProc* = proc(rc: gen_ScintillaEdit_types.ScintillaInternalPRectangle, fromVal: gen_ScintillaEdit_types.ScintillaInternalPoint, surfaceSource: gen_ScintillaEdit_types.ScintillaInternalSurface): void
proc onCopy*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfaceCopyProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfaceCopyProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_Copy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_Copy(self: ptr cScintillaInternalSurface, slot: int, rc: pointer, fromVal: pointer, surfaceSource: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_Copy ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfaceCopyProc](cast[pointer](slot))
  let slotval1 = gen_ScintillaEdit_types.ScintillaInternalPRectangle(h: rc)

  let slotval2 = gen_ScintillaEdit_types.ScintillaInternalPoint(h: fromVal)

  let slotval3 = gen_ScintillaEdit_types.ScintillaInternalSurface(h: surfaceSource)


  nimfunc[](slotval1, slotval2, slotval3)
type ScintillaInternalSurfaceAscentProc* = proc(font_x: gen_ScintillaEdit_types.ScintillaInternalFont): float64
proc onAscent*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfaceAscentProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfaceAscentProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_Ascent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_Ascent(self: ptr cScintillaInternalSurface, slot: int, font_x: pointer): float64 {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_Ascent ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfaceAscentProc](cast[pointer](slot))
  let slotval1 = gen_ScintillaEdit_types.ScintillaInternalFont(h: font_x)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type ScintillaInternalSurfaceDescentProc* = proc(font_x: gen_ScintillaEdit_types.ScintillaInternalFont): float64
proc onDescent*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfaceDescentProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfaceDescentProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_Descent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_Descent(self: ptr cScintillaInternalSurface, slot: int, font_x: pointer): float64 {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_Descent ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfaceDescentProc](cast[pointer](slot))
  let slotval1 = gen_ScintillaEdit_types.ScintillaInternalFont(h: font_x)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type ScintillaInternalSurfaceInternalLeadingProc* = proc(font_x: gen_ScintillaEdit_types.ScintillaInternalFont): float64
proc onInternalLeading*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfaceInternalLeadingProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfaceInternalLeadingProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_InternalLeading(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_InternalLeading(self: ptr cScintillaInternalSurface, slot: int, font_x: pointer): float64 {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_InternalLeading ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfaceInternalLeadingProc](cast[pointer](slot))
  let slotval1 = gen_ScintillaEdit_types.ScintillaInternalFont(h: font_x)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type ScintillaInternalSurfaceHeightProc* = proc(font_x: gen_ScintillaEdit_types.ScintillaInternalFont): float64
proc onHeight*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfaceHeightProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfaceHeightProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_Height(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_Height(self: ptr cScintillaInternalSurface, slot: int, font_x: pointer): float64 {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_Height ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfaceHeightProc](cast[pointer](slot))
  let slotval1 = gen_ScintillaEdit_types.ScintillaInternalFont(h: font_x)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type ScintillaInternalSurfaceAverageCharWidthProc* = proc(font_x: gen_ScintillaEdit_types.ScintillaInternalFont): float64
proc onAverageCharWidth*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfaceAverageCharWidthProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfaceAverageCharWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_AverageCharWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_AverageCharWidth(self: ptr cScintillaInternalSurface, slot: int, font_x: pointer): float64 {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_AverageCharWidth ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfaceAverageCharWidthProc](cast[pointer](slot))
  let slotval1 = gen_ScintillaEdit_types.ScintillaInternalFont(h: font_x)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type ScintillaInternalSurfaceSetClipProc* = proc(rc: gen_ScintillaEdit_types.ScintillaInternalPRectangle): void
proc onSetClip*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfaceSetClipProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfaceSetClipProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_SetClip(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_SetClip(self: ptr cScintillaInternalSurface, slot: int, rc: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_SetClip ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfaceSetClipProc](cast[pointer](slot))
  let slotval1 = gen_ScintillaEdit_types.ScintillaInternalPRectangle(h: rc)


  nimfunc[](slotval1)
type ScintillaInternalSurfacePopClipProc* = proc(): void
proc onPopClip*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfacePopClipProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfacePopClipProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_PopClip(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_PopClip(self: ptr cScintillaInternalSurface, slot: int): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_PopClip ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfacePopClipProc](cast[pointer](slot))

  nimfunc[]()
type ScintillaInternalSurfaceFlushCachedStateProc* = proc(): void
proc onFlushCachedState*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfaceFlushCachedStateProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfaceFlushCachedStateProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_FlushCachedState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_FlushCachedState(self: ptr cScintillaInternalSurface, slot: int): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_FlushCachedState ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfaceFlushCachedStateProc](cast[pointer](slot))

  nimfunc[]()
type ScintillaInternalSurfaceFlushDrawingProc* = proc(): void
proc onFlushDrawing*(self: gen_ScintillaEdit_types.ScintillaInternalSurface, slot: ScintillaInternalSurfaceFlushDrawingProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalSurfaceFlushDrawingProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_FlushDrawing(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_FlushDrawing(self: ptr cScintillaInternalSurface, slot: int): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_FlushDrawing ".} =
  var nimfunc = cast[ptr ScintillaInternalSurfaceFlushDrawingProc](cast[pointer](slot))

  nimfunc[]()
proc delete*(self: gen_ScintillaEdit_types.ScintillaInternalSurface) =
  fcScintillaInternalSurface_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaInternalWindow, h: ptr cScintillaInternalWindow): gen_ScintillaEdit_types.ScintillaInternalWindow =
  T(h: h)
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalWindow, ): gen_ScintillaEdit_types.ScintillaInternalWindow =

  gen_ScintillaEdit_types.ScintillaInternalWindow.init(fcScintillaInternalWindow_new())
proc operatorAssign*(self: gen_ScintillaEdit_types.ScintillaInternalWindow, wid_x: pointer): void =

  fcScintillaInternalWindow_operatorAssign(self.h, wid_x)

proc GetID*(self: gen_ScintillaEdit_types.ScintillaInternalWindow, ): pointer =

  fcScintillaInternalWindow_GetID(self.h)

proc Created*(self: gen_ScintillaEdit_types.ScintillaInternalWindow, ): bool =

  fcScintillaInternalWindow_Created(self.h)

proc Destroy*(self: gen_ScintillaEdit_types.ScintillaInternalWindow, ): void =

  fcScintillaInternalWindow_Destroy(self.h)

proc GetPosition*(self: gen_ScintillaEdit_types.ScintillaInternalWindow, ): gen_ScintillaEdit_types.ScintillaInternalPRectangle =

  gen_ScintillaEdit_types.ScintillaInternalPRectangle(h: fcScintillaInternalWindow_GetPosition(self.h))

proc SetPosition*(self: gen_ScintillaEdit_types.ScintillaInternalWindow, rc: gen_ScintillaEdit_types.ScintillaInternalPRectangle): void =

  fcScintillaInternalWindow_SetPosition(self.h, rc.h)

proc SetPositionRelative*(self: gen_ScintillaEdit_types.ScintillaInternalWindow, rc: gen_ScintillaEdit_types.ScintillaInternalPRectangle, relativeTo: gen_ScintillaEdit_types.ScintillaInternalWindow): void =

  fcScintillaInternalWindow_SetPositionRelative(self.h, rc.h, relativeTo.h)

proc GetClientPosition*(self: gen_ScintillaEdit_types.ScintillaInternalWindow, ): gen_ScintillaEdit_types.ScintillaInternalPRectangle =

  gen_ScintillaEdit_types.ScintillaInternalPRectangle(h: fcScintillaInternalWindow_GetClientPosition(self.h))

proc Show*(self: gen_ScintillaEdit_types.ScintillaInternalWindow, ): void =

  fcScintillaInternalWindow_Show(self.h)

proc InvalidateAll*(self: gen_ScintillaEdit_types.ScintillaInternalWindow, ): void =

  fcScintillaInternalWindow_InvalidateAll(self.h)

proc InvalidateRectangle*(self: gen_ScintillaEdit_types.ScintillaInternalWindow, rc: gen_ScintillaEdit_types.ScintillaInternalPRectangle): void =

  fcScintillaInternalWindow_InvalidateRectangle(self.h, rc.h)

proc SetCursor*(self: gen_ScintillaEdit_types.ScintillaInternalWindow, curs: cint): void =

  fcScintillaInternalWindow_SetCursor(self.h, cint(curs))

proc GetMonitorRect*(self: gen_ScintillaEdit_types.ScintillaInternalWindow, pt: gen_ScintillaEdit_types.ScintillaInternalPoint): gen_ScintillaEdit_types.ScintillaInternalPRectangle =

  gen_ScintillaEdit_types.ScintillaInternalPRectangle(h: fcScintillaInternalWindow_GetMonitorRect(self.h, pt.h))

proc Show1*(self: gen_ScintillaEdit_types.ScintillaInternalWindow, show: bool): void =

  fcScintillaInternalWindow_Show1(self.h, show)

proc delete*(self: gen_ScintillaEdit_types.ScintillaInternalWindow) =
  fcScintillaInternalWindow_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaInternalListBoxEvent, h: ptr cScintillaInternalListBoxEvent): gen_ScintillaEdit_types.ScintillaInternalListBoxEvent =
  T(h: h)
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalListBoxEvent, event_x: cint): gen_ScintillaEdit_types.ScintillaInternalListBoxEvent =

  gen_ScintillaEdit_types.ScintillaInternalListBoxEvent.init(fcScintillaInternalListBoxEvent_new(cint(event_x)))
proc delete*(self: gen_ScintillaEdit_types.ScintillaInternalListBoxEvent) =
  fcScintillaInternalListBoxEvent_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaInternalIListBoxDelegate, h: ptr cScintillaInternalIListBoxDelegate): gen_ScintillaEdit_types.ScintillaInternalIListBoxDelegate =
  T(h: h)
proc ListNotify*(self: gen_ScintillaEdit_types.ScintillaInternalIListBoxDelegate, plbe: gen_ScintillaEdit_types.ScintillaInternalListBoxEvent): void =

  fcScintillaInternalIListBoxDelegate_ListNotify(self.h, plbe.h)

proc operatorAssign*(self: gen_ScintillaEdit_types.ScintillaInternalIListBoxDelegate, param1: gen_ScintillaEdit_types.ScintillaInternalIListBoxDelegate): void =

  fcScintillaInternalIListBoxDelegate_operatorAssign(self.h, param1.h)

proc delete*(self: gen_ScintillaEdit_types.ScintillaInternalIListBoxDelegate) =
  fcScintillaInternalIListBoxDelegate_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaInternalListOptions, h: ptr cScintillaInternalListOptions): gen_ScintillaEdit_types.ScintillaInternalListOptions =
  T(h: h)
proc delete*(self: gen_ScintillaEdit_types.ScintillaInternalListOptions) =
  fcScintillaInternalListOptions_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaInternalListBox, h: ptr cScintillaInternalListBox): gen_ScintillaEdit_types.ScintillaInternalListBox =
  T(h: h)
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalListBox, ): gen_ScintillaEdit_types.ScintillaInternalListBox =

  gen_ScintillaEdit_types.ScintillaInternalListBox.init(fcScintillaInternalListBox_new())
proc SetFont*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, font: gen_ScintillaEdit_types.ScintillaInternalFont): void =

  fcScintillaInternalListBox_SetFont(self.h, font.h)

proc Create*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, parent: gen_ScintillaEdit_types.ScintillaInternalWindow, ctrlID: cint, location: gen_ScintillaEdit_types.ScintillaInternalPoint, lineHeight_x: cint, unicodeMode_x: bool, technology_x: cint): void =

  fcScintillaInternalListBox_Create(self.h, parent.h, ctrlID, location.h, lineHeight_x, unicodeMode_x, cint(technology_x))

proc SetAverageCharWidth*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, width: cint): void =

  fcScintillaInternalListBox_SetAverageCharWidth(self.h, width)

proc SetVisibleRows*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, rows: cint): void =

  fcScintillaInternalListBox_SetVisibleRows(self.h, rows)

proc GetVisibleRows*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, ): cint =

  fcScintillaInternalListBox_GetVisibleRows(self.h)

proc GetDesiredRect*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, ): gen_ScintillaEdit_types.ScintillaInternalPRectangle =

  gen_ScintillaEdit_types.ScintillaInternalPRectangle(h: fcScintillaInternalListBox_GetDesiredRect(self.h))

proc CaretFromEdge*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, ): cint =

  fcScintillaInternalListBox_CaretFromEdge(self.h)

proc Clear*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, ): void =

  fcScintillaInternalListBox_Clear(self.h)

proc Append*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, s: cstring, typeVal: cint): void =

  fcScintillaInternalListBox_Append(self.h, s, typeVal)

proc Length*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, ): cint =

  fcScintillaInternalListBox_Length(self.h)

proc Select*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, n: cint): void =

  fcScintillaInternalListBox_Select(self.h, n)

proc GetSelection*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, ): cint =

  fcScintillaInternalListBox_GetSelection(self.h)

proc Find*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, prefix: cstring): cint =

  fcScintillaInternalListBox_Find(self.h, prefix)

proc RegisterImage*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, typeVal: cint, xpm_data: cstring): void =

  fcScintillaInternalListBox_RegisterImage(self.h, typeVal, xpm_data)

proc RegisterRGBAImage*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, typeVal: cint, width: cint, height: cint, pixelsImage: ptr uint8): void =

  fcScintillaInternalListBox_RegisterRGBAImage(self.h, typeVal, width, height, pixelsImage)

proc ClearRegisteredImages*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, ): void =

  fcScintillaInternalListBox_ClearRegisteredImages(self.h)

proc SetDelegate*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, lbDelegate: gen_ScintillaEdit_types.ScintillaInternalIListBoxDelegate): void =

  fcScintillaInternalListBox_SetDelegate(self.h, lbDelegate.h)

proc SetList*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, list: cstring, separator: cchar, typesep: cchar): void =

  fcScintillaInternalListBox_SetList(self.h, list, separator, typesep)

proc SetOptions*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, options_x: gen_ScintillaEdit_types.ScintillaInternalListOptions): void =

  fcScintillaInternalListBox_SetOptions(self.h, options_x.h)

type ScintillaInternalListBoxSetFontProc* = proc(font: gen_ScintillaEdit_types.ScintillaInternalFont): void
proc onSetFont*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, slot: ScintillaInternalListBoxSetFontProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalListBoxSetFontProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_SetFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_SetFont(self: ptr cScintillaInternalListBox, slot: int, font: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_SetFont ".} =
  var nimfunc = cast[ptr ScintillaInternalListBoxSetFontProc](cast[pointer](slot))
  let slotval1 = gen_ScintillaEdit_types.ScintillaInternalFont(h: font)


  nimfunc[](slotval1)
type ScintillaInternalListBoxCreateProc* = proc(parent: gen_ScintillaEdit_types.ScintillaInternalWindow, ctrlID: cint, location: gen_ScintillaEdit_types.ScintillaInternalPoint, lineHeight_x: cint, unicodeMode_x: bool, technology_x: cint): void
proc onCreate*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, slot: ScintillaInternalListBoxCreateProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalListBoxCreateProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_Create(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_Create(self: ptr cScintillaInternalListBox, slot: int, parent: pointer, ctrlID: cint, location: pointer, lineHeight_x: cint, unicodeMode_x: bool, technology_x: cint): void {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_Create ".} =
  var nimfunc = cast[ptr ScintillaInternalListBoxCreateProc](cast[pointer](slot))
  let slotval1 = gen_ScintillaEdit_types.ScintillaInternalWindow(h: parent)

  let slotval2 = ctrlID

  let slotval3 = gen_ScintillaEdit_types.ScintillaInternalPoint(h: location)

  let slotval4 = lineHeight_x

  let slotval5 = unicodeMode_x

  let slotval6 = cint(technology_x)


  nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5, slotval6)
type ScintillaInternalListBoxSetAverageCharWidthProc* = proc(width: cint): void
proc onSetAverageCharWidth*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, slot: ScintillaInternalListBoxSetAverageCharWidthProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalListBoxSetAverageCharWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_SetAverageCharWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_SetAverageCharWidth(self: ptr cScintillaInternalListBox, slot: int, width: cint): void {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_SetAverageCharWidth ".} =
  var nimfunc = cast[ptr ScintillaInternalListBoxSetAverageCharWidthProc](cast[pointer](slot))
  let slotval1 = width


  nimfunc[](slotval1)
type ScintillaInternalListBoxSetVisibleRowsProc* = proc(rows: cint): void
proc onSetVisibleRows*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, slot: ScintillaInternalListBoxSetVisibleRowsProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalListBoxSetVisibleRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_SetVisibleRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_SetVisibleRows(self: ptr cScintillaInternalListBox, slot: int, rows: cint): void {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_SetVisibleRows ".} =
  var nimfunc = cast[ptr ScintillaInternalListBoxSetVisibleRowsProc](cast[pointer](slot))
  let slotval1 = rows


  nimfunc[](slotval1)
type ScintillaInternalListBoxGetVisibleRowsProc* = proc(): cint
proc onGetVisibleRows*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, slot: ScintillaInternalListBoxGetVisibleRowsProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalListBoxGetVisibleRowsProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_GetVisibleRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_GetVisibleRows(self: ptr cScintillaInternalListBox, slot: int): cint {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_GetVisibleRows ".} =
  var nimfunc = cast[ptr ScintillaInternalListBoxGetVisibleRowsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type ScintillaInternalListBoxGetDesiredRectProc* = proc(): gen_ScintillaEdit_types.ScintillaInternalPRectangle
proc onGetDesiredRect*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, slot: ScintillaInternalListBoxGetDesiredRectProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalListBoxGetDesiredRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_GetDesiredRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_GetDesiredRect(self: ptr cScintillaInternalListBox, slot: int): pointer {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_GetDesiredRect ".} =
  var nimfunc = cast[ptr ScintillaInternalListBoxGetDesiredRectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
type ScintillaInternalListBoxCaretFromEdgeProc* = proc(): cint
proc onCaretFromEdge*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, slot: ScintillaInternalListBoxCaretFromEdgeProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalListBoxCaretFromEdgeProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_CaretFromEdge(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_CaretFromEdge(self: ptr cScintillaInternalListBox, slot: int): cint {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_CaretFromEdge ".} =
  var nimfunc = cast[ptr ScintillaInternalListBoxCaretFromEdgeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type ScintillaInternalListBoxClearProc* = proc(): void
proc onClear*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, slot: ScintillaInternalListBoxClearProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalListBoxClearProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_Clear(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_Clear(self: ptr cScintillaInternalListBox, slot: int): void {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_Clear ".} =
  var nimfunc = cast[ptr ScintillaInternalListBoxClearProc](cast[pointer](slot))

  nimfunc[]()
type ScintillaInternalListBoxAppendProc* = proc(s: cstring, typeVal: cint): void
proc onAppend*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, slot: ScintillaInternalListBoxAppendProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalListBoxAppendProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_Append(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_Append(self: ptr cScintillaInternalListBox, slot: int, s: cstring, typeVal: cint): void {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_Append ".} =
  var nimfunc = cast[ptr ScintillaInternalListBoxAppendProc](cast[pointer](slot))
  let slotval1 = (s)

  let slotval2 = typeVal


  nimfunc[](slotval1, slotval2)
type ScintillaInternalListBoxLengthProc* = proc(): cint
proc onLength*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, slot: ScintillaInternalListBoxLengthProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalListBoxLengthProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_Length(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_Length(self: ptr cScintillaInternalListBox, slot: int): cint {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_Length ".} =
  var nimfunc = cast[ptr ScintillaInternalListBoxLengthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type ScintillaInternalListBoxSelectProc* = proc(n: cint): void
proc onSelect*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, slot: ScintillaInternalListBoxSelectProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalListBoxSelectProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_Select(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_Select(self: ptr cScintillaInternalListBox, slot: int, n: cint): void {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_Select ".} =
  var nimfunc = cast[ptr ScintillaInternalListBoxSelectProc](cast[pointer](slot))
  let slotval1 = n


  nimfunc[](slotval1)
type ScintillaInternalListBoxGetSelectionProc* = proc(): cint
proc onGetSelection*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, slot: ScintillaInternalListBoxGetSelectionProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalListBoxGetSelectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_GetSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_GetSelection(self: ptr cScintillaInternalListBox, slot: int): cint {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_GetSelection ".} =
  var nimfunc = cast[ptr ScintillaInternalListBoxGetSelectionProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type ScintillaInternalListBoxFindProc* = proc(prefix: cstring): cint
proc onFind*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, slot: ScintillaInternalListBoxFindProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalListBoxFindProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_Find(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_Find(self: ptr cScintillaInternalListBox, slot: int, prefix: cstring): cint {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_Find ".} =
  var nimfunc = cast[ptr ScintillaInternalListBoxFindProc](cast[pointer](slot))
  let slotval1 = (prefix)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type ScintillaInternalListBoxRegisterImageProc* = proc(typeVal: cint, xpm_data: cstring): void
proc onRegisterImage*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, slot: ScintillaInternalListBoxRegisterImageProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalListBoxRegisterImageProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_RegisterImage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_RegisterImage(self: ptr cScintillaInternalListBox, slot: int, typeVal: cint, xpm_data: cstring): void {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_RegisterImage ".} =
  var nimfunc = cast[ptr ScintillaInternalListBoxRegisterImageProc](cast[pointer](slot))
  let slotval1 = typeVal

  let slotval2 = (xpm_data)


  nimfunc[](slotval1, slotval2)
type ScintillaInternalListBoxRegisterRGBAImageProc* = proc(typeVal: cint, width: cint, height: cint, pixelsImage: ptr uint8): void
proc onRegisterRGBAImage*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, slot: ScintillaInternalListBoxRegisterRGBAImageProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalListBoxRegisterRGBAImageProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_RegisterRGBAImage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_RegisterRGBAImage(self: ptr cScintillaInternalListBox, slot: int, typeVal: cint, width: cint, height: cint, pixelsImage: ptr uint8): void {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_RegisterRGBAImage ".} =
  var nimfunc = cast[ptr ScintillaInternalListBoxRegisterRGBAImageProc](cast[pointer](slot))
  let slotval1 = typeVal

  let slotval2 = width

  let slotval3 = height

  let slotval4 = pixelsImage


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
type ScintillaInternalListBoxClearRegisteredImagesProc* = proc(): void
proc onClearRegisteredImages*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, slot: ScintillaInternalListBoxClearRegisteredImagesProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalListBoxClearRegisteredImagesProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_ClearRegisteredImages(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_ClearRegisteredImages(self: ptr cScintillaInternalListBox, slot: int): void {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_ClearRegisteredImages ".} =
  var nimfunc = cast[ptr ScintillaInternalListBoxClearRegisteredImagesProc](cast[pointer](slot))

  nimfunc[]()
type ScintillaInternalListBoxSetDelegateProc* = proc(lbDelegate: gen_ScintillaEdit_types.ScintillaInternalIListBoxDelegate): void
proc onSetDelegate*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, slot: ScintillaInternalListBoxSetDelegateProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalListBoxSetDelegateProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_SetDelegate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_SetDelegate(self: ptr cScintillaInternalListBox, slot: int, lbDelegate: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_SetDelegate ".} =
  var nimfunc = cast[ptr ScintillaInternalListBoxSetDelegateProc](cast[pointer](slot))
  let slotval1 = gen_ScintillaEdit_types.ScintillaInternalIListBoxDelegate(h: lbDelegate)


  nimfunc[](slotval1)
type ScintillaInternalListBoxSetListProc* = proc(list: cstring, separator: cchar, typesep: cchar): void
proc onSetList*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, slot: ScintillaInternalListBoxSetListProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalListBoxSetListProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_SetList(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_SetList(self: ptr cScintillaInternalListBox, slot: int, list: cstring, separator: cchar, typesep: cchar): void {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_SetList ".} =
  var nimfunc = cast[ptr ScintillaInternalListBoxSetListProc](cast[pointer](slot))
  let slotval1 = (list)

  let slotval2 = separator

  let slotval3 = typesep


  nimfunc[](slotval1, slotval2, slotval3)
type ScintillaInternalListBoxSetOptionsProc* = proc(options_x: gen_ScintillaEdit_types.ScintillaInternalListOptions): void
proc onSetOptions*(self: gen_ScintillaEdit_types.ScintillaInternalListBox, slot: ScintillaInternalListBoxSetOptionsProc) =
  # TODO check subclass
  var tmp = new ScintillaInternalListBoxSetOptionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_SetOptions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_SetOptions(self: ptr cScintillaInternalListBox, slot: int, options_x: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_SetOptions ".} =
  var nimfunc = cast[ptr ScintillaInternalListBoxSetOptionsProc](cast[pointer](slot))
  let slotval1 = gen_ScintillaEdit_types.ScintillaInternalListOptions(h: options_x)


  nimfunc[](slotval1)
proc delete*(self: gen_ScintillaEdit_types.ScintillaInternalListBox) =
  fcScintillaInternalListBox_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaInternalMenu, h: ptr cScintillaInternalMenu): gen_ScintillaEdit_types.ScintillaInternalMenu =
  T(h: h)
proc create*(T: type gen_ScintillaEdit_types.ScintillaInternalMenu, ): gen_ScintillaEdit_types.ScintillaInternalMenu =

  gen_ScintillaEdit_types.ScintillaInternalMenu.init(fcScintillaInternalMenu_new())
proc GetID*(self: gen_ScintillaEdit_types.ScintillaInternalMenu, ): pointer =

  fcScintillaInternalMenu_GetID(self.h)

proc CreatePopUp*(self: gen_ScintillaEdit_types.ScintillaInternalMenu, ): void =

  fcScintillaInternalMenu_CreatePopUp(self.h)

proc Destroy*(self: gen_ScintillaEdit_types.ScintillaInternalMenu, ): void =

  fcScintillaInternalMenu_Destroy(self.h)

proc Show*(self: gen_ScintillaEdit_types.ScintillaInternalMenu, pt: gen_ScintillaEdit_types.ScintillaInternalPoint, w: gen_ScintillaEdit_types.ScintillaInternalWindow): void =

  fcScintillaInternalMenu_Show(self.h, pt.h, w.h)

proc delete*(self: gen_ScintillaEdit_types.ScintillaInternalMenu) =
  fcScintillaInternalMenu_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.Sci_CharacterRange, h: ptr cSci_CharacterRange): gen_ScintillaEdit_types.Sci_CharacterRange =
  T(h: h)
proc delete*(self: gen_ScintillaEdit_types.Sci_CharacterRange) =
  fcSci_CharacterRange_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.Sci_CharacterRangeFull, h: ptr cSci_CharacterRangeFull): gen_ScintillaEdit_types.Sci_CharacterRangeFull =
  T(h: h)
proc delete*(self: gen_ScintillaEdit_types.Sci_CharacterRangeFull) =
  fcSci_CharacterRangeFull_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.Sci_TextRange, h: ptr cSci_TextRange): gen_ScintillaEdit_types.Sci_TextRange =
  T(h: h)
proc delete*(self: gen_ScintillaEdit_types.Sci_TextRange) =
  fcSci_TextRange_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.Sci_TextRangeFull, h: ptr cSci_TextRangeFull): gen_ScintillaEdit_types.Sci_TextRangeFull =
  T(h: h)
proc delete*(self: gen_ScintillaEdit_types.Sci_TextRangeFull) =
  fcSci_TextRangeFull_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.Sci_TextToFind, h: ptr cSci_TextToFind): gen_ScintillaEdit_types.Sci_TextToFind =
  T(h: h)
proc delete*(self: gen_ScintillaEdit_types.Sci_TextToFind) =
  fcSci_TextToFind_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.Sci_TextToFindFull, h: ptr cSci_TextToFindFull): gen_ScintillaEdit_types.Sci_TextToFindFull =
  T(h: h)
proc delete*(self: gen_ScintillaEdit_types.Sci_TextToFindFull) =
  fcSci_TextToFindFull_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.Sci_Rectangle, h: ptr cSci_Rectangle): gen_ScintillaEdit_types.Sci_Rectangle =
  T(h: h)
proc delete*(self: gen_ScintillaEdit_types.Sci_Rectangle) =
  fcSci_Rectangle_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.Sci_RangeToFormat, h: ptr cSci_RangeToFormat): gen_ScintillaEdit_types.Sci_RangeToFormat =
  T(h: h)
proc delete*(self: gen_ScintillaEdit_types.Sci_RangeToFormat) =
  fcSci_RangeToFormat_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.Sci_RangeToFormatFull, h: ptr cSci_RangeToFormatFull): gen_ScintillaEdit_types.Sci_RangeToFormatFull =
  T(h: h)
proc delete*(self: gen_ScintillaEdit_types.Sci_RangeToFormatFull) =
  fcSci_RangeToFormatFull_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.Sci_NotifyHeader, h: ptr cSci_NotifyHeader): gen_ScintillaEdit_types.Sci_NotifyHeader =
  T(h: h)
proc delete*(self: gen_ScintillaEdit_types.Sci_NotifyHeader) =
  fcSci_NotifyHeader_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.SCNotification, h: ptr cSCNotification): gen_ScintillaEdit_types.SCNotification =
  T(h: h)
proc delete*(self: gen_ScintillaEdit_types.SCNotification) =
  fcSCNotification_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaEditBase, h: ptr cScintillaEditBase): gen_ScintillaEdit_types.ScintillaEditBase =
  T(h: h)
proc create*(T: type gen_ScintillaEdit_types.ScintillaEditBase, parent: gen_qwidget.QWidget): gen_ScintillaEdit_types.ScintillaEditBase =

  gen_ScintillaEdit_types.ScintillaEditBase.init(fcScintillaEditBase_new(parent.h))
proc create*(T: type gen_ScintillaEdit_types.ScintillaEditBase, ): gen_ScintillaEdit_types.ScintillaEditBase =

  gen_ScintillaEdit_types.ScintillaEditBase.init(fcScintillaEditBase_new2())
proc metaObject*(self: gen_ScintillaEdit_types.ScintillaEditBase, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcScintillaEditBase_metaObject(self.h))

proc metacast*(self: gen_ScintillaEdit_types.ScintillaEditBase, param1: cstring): pointer =

  fcScintillaEditBase_metacast(self.h, param1)

proc metacall*(self: gen_ScintillaEdit_types.ScintillaEditBase, param1: cint, param2: cint, param3: pointer): cint =

  fcScintillaEditBase_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_ScintillaEdit_types.ScintillaEditBase, s: cstring): string =

  let v_ms = fcScintillaEditBase_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_ScintillaEdit_types.ScintillaEditBase, s: cstring): string =

  let v_ms = fcScintillaEditBase_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc send*(self: gen_ScintillaEdit_types.ScintillaEditBase, iMessage: cuint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEditBase_send(self.h, iMessage, wParam, lParam)

proc sends*(self: gen_ScintillaEdit_types.ScintillaEditBase, iMessage: cuint, wParam: miqt_uintptr_t, s: cstring): miqt_intptr_t =

  fcScintillaEditBase_sends(self.h, iMessage, wParam, s)

proc scrollHorizontal*(self: gen_ScintillaEdit_types.ScintillaEditBase, value: cint): void =

  fcScintillaEditBase_scrollHorizontal(self.h, value)

proc scrollVertical*(self: gen_ScintillaEdit_types.ScintillaEditBase, value: cint): void =

  fcScintillaEditBase_scrollVertical(self.h, value)

proc notifyParent*(self: gen_ScintillaEdit_types.ScintillaEditBase, scn: gen_ScintillaEdit_types.ScintillaNotificationData): void =

  fcScintillaEditBase_notifyParent(self.h, scn.h)

proc eventCommand*(self: gen_ScintillaEdit_types.ScintillaEditBase, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): void =

  fcScintillaEditBase_eventCommand(self.h, wParam, lParam)

proc horizontalScrolled*(self: gen_ScintillaEdit_types.ScintillaEditBase, value: cint): void =

  fcScintillaEditBase_horizontalScrolled(self.h, value)

proc miqt_exec_callback_ScintillaEditBase_horizontalScrolled(slot: int, value: cint) {.exportc.} =
  type Cb = proc(value: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)

proc onhorizontalScrolled*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(value: cint)) =
  type Cb = proc(value: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_horizontalScrolled(self.h, cast[int](addr tmp[]))
proc verticalScrolled*(self: gen_ScintillaEdit_types.ScintillaEditBase, value: cint): void =

  fcScintillaEditBase_verticalScrolled(self.h, value)

proc miqt_exec_callback_ScintillaEditBase_verticalScrolled(slot: int, value: cint) {.exportc.} =
  type Cb = proc(value: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)

proc onverticalScrolled*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(value: cint)) =
  type Cb = proc(value: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_verticalScrolled(self.h, cast[int](addr tmp[]))
proc horizontalRangeChanged*(self: gen_ScintillaEdit_types.ScintillaEditBase, max: cint, page: cint): void =

  fcScintillaEditBase_horizontalRangeChanged(self.h, max, page)

proc miqt_exec_callback_ScintillaEditBase_horizontalRangeChanged(slot: int, max: cint, page: cint) {.exportc.} =
  type Cb = proc(max: cint, page: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = max

  let slotval2 = page


  nimfunc[](slotval1, slotval2)

proc onhorizontalRangeChanged*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(max: cint, page: cint)) =
  type Cb = proc(max: cint, page: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_horizontalRangeChanged(self.h, cast[int](addr tmp[]))
proc verticalRangeChanged*(self: gen_ScintillaEdit_types.ScintillaEditBase, max: cint, page: cint): void =

  fcScintillaEditBase_verticalRangeChanged(self.h, max, page)

proc miqt_exec_callback_ScintillaEditBase_verticalRangeChanged(slot: int, max: cint, page: cint) {.exportc.} =
  type Cb = proc(max: cint, page: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = max

  let slotval2 = page


  nimfunc[](slotval1, slotval2)

proc onverticalRangeChanged*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(max: cint, page: cint)) =
  type Cb = proc(max: cint, page: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_verticalRangeChanged(self.h, cast[int](addr tmp[]))
proc notifyChange*(self: gen_ScintillaEdit_types.ScintillaEditBase, ): void =

  fcScintillaEditBase_notifyChange(self.h)

proc miqt_exec_callback_ScintillaEditBase_notifyChange(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onnotifyChange*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_notifyChange(self.h, cast[int](addr tmp[]))
proc linesAdded*(self: gen_ScintillaEdit_types.ScintillaEditBase, linesAdded: miqt_intptr_t): void =

  fcScintillaEditBase_linesAdded(self.h, linesAdded)

proc miqt_exec_callback_ScintillaEditBase_linesAdded(slot: int, linesAdded: miqt_intptr_t) {.exportc.} =
  type Cb = proc(linesAdded: miqt_intptr_t)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = linesAdded


  nimfunc[](slotval1)

proc onlinesAdded*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(linesAdded: miqt_intptr_t)) =
  type Cb = proc(linesAdded: miqt_intptr_t)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_linesAdded(self.h, cast[int](addr tmp[]))
proc aboutToCopy*(self: gen_ScintillaEdit_types.ScintillaEditBase, data: gen_qmimedata.QMimeData): void =

  fcScintillaEditBase_aboutToCopy(self.h, data.h)

proc miqt_exec_callback_ScintillaEditBase_aboutToCopy(slot: int, data: pointer) {.exportc.} =
  type Cb = proc(data: gen_qmimedata.QMimeData)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qmimedata.QMimeData(h: data)


  nimfunc[](slotval1)

proc onaboutToCopy*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(data: gen_qmimedata.QMimeData)) =
  type Cb = proc(data: gen_qmimedata.QMimeData)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_aboutToCopy(self.h, cast[int](addr tmp[]))
proc styleNeeded*(self: gen_ScintillaEdit_types.ScintillaEditBase, position: miqt_intptr_t): void =

  fcScintillaEditBase_styleNeeded(self.h, position)

proc miqt_exec_callback_ScintillaEditBase_styleNeeded(slot: int, position: miqt_intptr_t) {.exportc.} =
  type Cb = proc(position: miqt_intptr_t)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position


  nimfunc[](slotval1)

proc onstyleNeeded*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(position: miqt_intptr_t)) =
  type Cb = proc(position: miqt_intptr_t)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_styleNeeded(self.h, cast[int](addr tmp[]))
proc charAdded*(self: gen_ScintillaEdit_types.ScintillaEditBase, ch: cint): void =

  fcScintillaEditBase_charAdded(self.h, ch)

proc miqt_exec_callback_ScintillaEditBase_charAdded(slot: int, ch: cint) {.exportc.} =
  type Cb = proc(ch: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ch


  nimfunc[](slotval1)

proc oncharAdded*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(ch: cint)) =
  type Cb = proc(ch: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_charAdded(self.h, cast[int](addr tmp[]))
proc savePointChanged*(self: gen_ScintillaEdit_types.ScintillaEditBase, dirty: bool): void =

  fcScintillaEditBase_savePointChanged(self.h, dirty)

proc miqt_exec_callback_ScintillaEditBase_savePointChanged(slot: int, dirty: bool) {.exportc.} =
  type Cb = proc(dirty: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = dirty


  nimfunc[](slotval1)

proc onsavePointChanged*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(dirty: bool)) =
  type Cb = proc(dirty: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_savePointChanged(self.h, cast[int](addr tmp[]))
proc modifyAttemptReadOnly*(self: gen_ScintillaEdit_types.ScintillaEditBase, ): void =

  fcScintillaEditBase_modifyAttemptReadOnly(self.h)

proc miqt_exec_callback_ScintillaEditBase_modifyAttemptReadOnly(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onmodifyAttemptReadOnly*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_modifyAttemptReadOnly(self.h, cast[int](addr tmp[]))
proc key*(self: gen_ScintillaEdit_types.ScintillaEditBase, key: cint): void =

  fcScintillaEditBase_key(self.h, key)

proc miqt_exec_callback_ScintillaEditBase_key(slot: int, key: cint) {.exportc.} =
  type Cb = proc(key: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = key


  nimfunc[](slotval1)

proc onkey*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(key: cint)) =
  type Cb = proc(key: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_key(self.h, cast[int](addr tmp[]))
proc doubleClick*(self: gen_ScintillaEdit_types.ScintillaEditBase, position: miqt_intptr_t, line: miqt_intptr_t): void =

  fcScintillaEditBase_doubleClick(self.h, position, line)

proc miqt_exec_callback_ScintillaEditBase_doubleClick(slot: int, position: miqt_intptr_t, line: miqt_intptr_t) {.exportc.} =
  type Cb = proc(position: miqt_intptr_t, line: miqt_intptr_t)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = line


  nimfunc[](slotval1, slotval2)

proc ondoubleClick*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(position: miqt_intptr_t, line: miqt_intptr_t)) =
  type Cb = proc(position: miqt_intptr_t, line: miqt_intptr_t)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_doubleClick(self.h, cast[int](addr tmp[]))
proc updateUi*(self: gen_ScintillaEdit_types.ScintillaEditBase, updated: cint): void =

  fcScintillaEditBase_updateUi(self.h, cint(updated))

proc miqt_exec_callback_ScintillaEditBase_updateUi(slot: int, updated: cint) {.exportc.} =
  type Cb = proc(updated: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = cint(updated)


  nimfunc[](slotval1)

proc onupdateUi*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(updated: cint)) =
  type Cb = proc(updated: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_updateUi(self.h, cast[int](addr tmp[]))
proc modified*(self: gen_ScintillaEdit_types.ScintillaEditBase, typeVal: cint, position: miqt_intptr_t, length: miqt_intptr_t, linesAdded: miqt_intptr_t, text: seq[byte], line: miqt_intptr_t, foldNow: cint, foldPrev: cint): void =

  fcScintillaEditBase_modified(self.h, cint(typeVal), position, length, linesAdded, struct_miqt_string(data: cast[cstring](if len(text) == 0: nil else: unsafeAddr text[0]), len: csize_t(len(text))), line, cint(foldNow), cint(foldPrev))

proc miqt_exec_callback_ScintillaEditBase_modified(slot: int, typeVal: cint, position: miqt_intptr_t, length: miqt_intptr_t, linesAdded: miqt_intptr_t, text: struct_miqt_string, line: miqt_intptr_t, foldNow: cint, foldPrev: cint) {.exportc.} =
  type Cb = proc(typeVal: cint, position: miqt_intptr_t, length: miqt_intptr_t, linesAdded: miqt_intptr_t, text: seq[byte], line: miqt_intptr_t, foldNow: cint, foldPrev: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = cint(typeVal)

  let slotval2 = position

  let slotval3 = length

  let slotval4 = linesAdded

  var vtext_bytearray = text
  var vtextx_ret = @(toOpenArrayByte(vtext_bytearray.data, 0, int(vtext_bytearray.len)-1))
  c_free(vtext_bytearray.data)
  let slotval5 = vtextx_ret

  let slotval6 = line

  let slotval7 = cint(foldNow)

  let slotval8 = cint(foldPrev)


  nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5, slotval6, slotval7, slotval8)

proc onmodified*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(typeVal: cint, position: miqt_intptr_t, length: miqt_intptr_t, linesAdded: miqt_intptr_t, text: seq[byte], line: miqt_intptr_t, foldNow: cint, foldPrev: cint)) =
  type Cb = proc(typeVal: cint, position: miqt_intptr_t, length: miqt_intptr_t, linesAdded: miqt_intptr_t, text: seq[byte], line: miqt_intptr_t, foldNow: cint, foldPrev: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_modified(self.h, cast[int](addr tmp[]))
proc macroRecord*(self: gen_ScintillaEdit_types.ScintillaEditBase, message: cint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): void =

  fcScintillaEditBase_macroRecord(self.h, cint(message), wParam, lParam)

proc miqt_exec_callback_ScintillaEditBase_macroRecord(slot: int, message: cint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t) {.exportc.} =
  type Cb = proc(message: cint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = cint(message)

  let slotval2 = wParam

  let slotval3 = lParam


  nimfunc[](slotval1, slotval2, slotval3)

proc onmacroRecord*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(message: cint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t)) =
  type Cb = proc(message: cint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_macroRecord(self.h, cast[int](addr tmp[]))
proc marginClicked*(self: gen_ScintillaEdit_types.ScintillaEditBase, position: miqt_intptr_t, modifiers: cint, margin: cint): void =

  fcScintillaEditBase_marginClicked(self.h, position, cint(modifiers), margin)

proc miqt_exec_callback_ScintillaEditBase_marginClicked(slot: int, position: miqt_intptr_t, modifiers: cint, margin: cint) {.exportc.} =
  type Cb = proc(position: miqt_intptr_t, modifiers: cint, margin: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = cint(modifiers)

  let slotval3 = margin


  nimfunc[](slotval1, slotval2, slotval3)

proc onmarginClicked*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(position: miqt_intptr_t, modifiers: cint, margin: cint)) =
  type Cb = proc(position: miqt_intptr_t, modifiers: cint, margin: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_marginClicked(self.h, cast[int](addr tmp[]))
proc textAreaClicked*(self: gen_ScintillaEdit_types.ScintillaEditBase, line: miqt_intptr_t, modifiers: cint): void =

  fcScintillaEditBase_textAreaClicked(self.h, line, modifiers)

proc miqt_exec_callback_ScintillaEditBase_textAreaClicked(slot: int, line: miqt_intptr_t, modifiers: cint) {.exportc.} =
  type Cb = proc(line: miqt_intptr_t, modifiers: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = line

  let slotval2 = modifiers


  nimfunc[](slotval1, slotval2)

proc ontextAreaClicked*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(line: miqt_intptr_t, modifiers: cint)) =
  type Cb = proc(line: miqt_intptr_t, modifiers: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_textAreaClicked(self.h, cast[int](addr tmp[]))
proc needShown*(self: gen_ScintillaEdit_types.ScintillaEditBase, position: miqt_intptr_t, length: miqt_intptr_t): void =

  fcScintillaEditBase_needShown(self.h, position, length)

proc miqt_exec_callback_ScintillaEditBase_needShown(slot: int, position: miqt_intptr_t, length: miqt_intptr_t) {.exportc.} =
  type Cb = proc(position: miqt_intptr_t, length: miqt_intptr_t)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = length


  nimfunc[](slotval1, slotval2)

proc onneedShown*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(position: miqt_intptr_t, length: miqt_intptr_t)) =
  type Cb = proc(position: miqt_intptr_t, length: miqt_intptr_t)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_needShown(self.h, cast[int](addr tmp[]))
proc painted*(self: gen_ScintillaEdit_types.ScintillaEditBase, ): void =

  fcScintillaEditBase_painted(self.h)

proc miqt_exec_callback_ScintillaEditBase_painted(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onpainted*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_painted(self.h, cast[int](addr tmp[]))
proc userListSelection*(self: gen_ScintillaEdit_types.ScintillaEditBase, ): void =

  fcScintillaEditBase_userListSelection(self.h)

proc miqt_exec_callback_ScintillaEditBase_userListSelection(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onuserListSelection*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_userListSelection(self.h, cast[int](addr tmp[]))
proc uriDropped*(self: gen_ScintillaEdit_types.ScintillaEditBase, uri: string): void =

  fcScintillaEditBase_uriDropped(self.h, struct_miqt_string(data: uri, len: csize_t(len(uri))))

proc miqt_exec_callback_ScintillaEditBase_uriDropped(slot: int, uri: struct_miqt_string) {.exportc.} =
  type Cb = proc(uri: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vuri_ms = uri
  let vurix_ret = string.fromBytes(toOpenArrayByte(vuri_ms.data, 0, int(vuri_ms.len)-1))
  c_free(vuri_ms.data)
  let slotval1 = vurix_ret


  nimfunc[](slotval1)

proc onuriDropped*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(uri: string)) =
  type Cb = proc(uri: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_uriDropped(self.h, cast[int](addr tmp[]))
proc dwellStart*(self: gen_ScintillaEdit_types.ScintillaEditBase, x: cint, y: cint): void =

  fcScintillaEditBase_dwellStart(self.h, x, y)

proc miqt_exec_callback_ScintillaEditBase_dwellStart(slot: int, x: cint, y: cint) {.exportc.} =
  type Cb = proc(x: cint, y: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = x

  let slotval2 = y


  nimfunc[](slotval1, slotval2)

proc ondwellStart*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(x: cint, y: cint)) =
  type Cb = proc(x: cint, y: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_dwellStart(self.h, cast[int](addr tmp[]))
proc dwellEnd*(self: gen_ScintillaEdit_types.ScintillaEditBase, x: cint, y: cint): void =

  fcScintillaEditBase_dwellEnd(self.h, x, y)

proc miqt_exec_callback_ScintillaEditBase_dwellEnd(slot: int, x: cint, y: cint) {.exportc.} =
  type Cb = proc(x: cint, y: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = x

  let slotval2 = y


  nimfunc[](slotval1, slotval2)

proc ondwellEnd*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(x: cint, y: cint)) =
  type Cb = proc(x: cint, y: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_dwellEnd(self.h, cast[int](addr tmp[]))
proc zoom*(self: gen_ScintillaEdit_types.ScintillaEditBase, zoom: cint): void =

  fcScintillaEditBase_zoom(self.h, zoom)

proc miqt_exec_callback_ScintillaEditBase_zoom(slot: int, zoom: cint) {.exportc.} =
  type Cb = proc(zoom: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = zoom


  nimfunc[](slotval1)

proc onzoom*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(zoom: cint)) =
  type Cb = proc(zoom: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_zoom(self.h, cast[int](addr tmp[]))
proc hotSpotClick*(self: gen_ScintillaEdit_types.ScintillaEditBase, position: miqt_intptr_t, modifiers: cint): void =

  fcScintillaEditBase_hotSpotClick(self.h, position, cint(modifiers))

proc miqt_exec_callback_ScintillaEditBase_hotSpotClick(slot: int, position: miqt_intptr_t, modifiers: cint) {.exportc.} =
  type Cb = proc(position: miqt_intptr_t, modifiers: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = cint(modifiers)


  nimfunc[](slotval1, slotval2)

proc onhotSpotClick*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(position: miqt_intptr_t, modifiers: cint)) =
  type Cb = proc(position: miqt_intptr_t, modifiers: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_hotSpotClick(self.h, cast[int](addr tmp[]))
proc hotSpotDoubleClick*(self: gen_ScintillaEdit_types.ScintillaEditBase, position: miqt_intptr_t, modifiers: cint): void =

  fcScintillaEditBase_hotSpotDoubleClick(self.h, position, cint(modifiers))

proc miqt_exec_callback_ScintillaEditBase_hotSpotDoubleClick(slot: int, position: miqt_intptr_t, modifiers: cint) {.exportc.} =
  type Cb = proc(position: miqt_intptr_t, modifiers: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = cint(modifiers)


  nimfunc[](slotval1, slotval2)

proc onhotSpotDoubleClick*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(position: miqt_intptr_t, modifiers: cint)) =
  type Cb = proc(position: miqt_intptr_t, modifiers: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_hotSpotDoubleClick(self.h, cast[int](addr tmp[]))
proc callTipClick*(self: gen_ScintillaEdit_types.ScintillaEditBase, ): void =

  fcScintillaEditBase_callTipClick(self.h)

proc miqt_exec_callback_ScintillaEditBase_callTipClick(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc oncallTipClick*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_callTipClick(self.h, cast[int](addr tmp[]))
proc autoCompleteSelection*(self: gen_ScintillaEdit_types.ScintillaEditBase, position: miqt_intptr_t, text: string): void =

  fcScintillaEditBase_autoCompleteSelection(self.h, position, struct_miqt_string(data: text, len: csize_t(len(text))))

proc miqt_exec_callback_ScintillaEditBase_autoCompleteSelection(slot: int, position: miqt_intptr_t, text: struct_miqt_string) {.exportc.} =
  type Cb = proc(position: miqt_intptr_t, text: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position

  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval2 = vtextx_ret


  nimfunc[](slotval1, slotval2)

proc onautoCompleteSelection*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(position: miqt_intptr_t, text: string)) =
  type Cb = proc(position: miqt_intptr_t, text: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_autoCompleteSelection(self.h, cast[int](addr tmp[]))
proc autoCompleteCancelled*(self: gen_ScintillaEdit_types.ScintillaEditBase, ): void =

  fcScintillaEditBase_autoCompleteCancelled(self.h)

proc miqt_exec_callback_ScintillaEditBase_autoCompleteCancelled(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onautoCompleteCancelled*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_autoCompleteCancelled(self.h, cast[int](addr tmp[]))
proc focusChanged*(self: gen_ScintillaEdit_types.ScintillaEditBase, focused: bool): void =

  fcScintillaEditBase_focusChanged(self.h, focused)

proc miqt_exec_callback_ScintillaEditBase_focusChanged(slot: int, focused: bool) {.exportc.} =
  type Cb = proc(focused: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = focused


  nimfunc[](slotval1)

proc onfocusChanged*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(focused: bool)) =
  type Cb = proc(focused: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_focusChanged(self.h, cast[int](addr tmp[]))
proc notify*(self: gen_ScintillaEdit_types.ScintillaEditBase, pscn: gen_ScintillaEdit_types.ScintillaNotificationData): void =

  fcScintillaEditBase_notify(self.h, pscn.h)

proc miqt_exec_callback_ScintillaEditBase_notify(slot: int, pscn: pointer) {.exportc.} =
  type Cb = proc(pscn: gen_ScintillaEdit_types.ScintillaNotificationData)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_ScintillaEdit_types.ScintillaNotificationData(h: pscn)


  nimfunc[](slotval1)

proc onnotify*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(pscn: gen_ScintillaEdit_types.ScintillaNotificationData)) =
  type Cb = proc(pscn: gen_ScintillaEdit_types.ScintillaNotificationData)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_notify(self.h, cast[int](addr tmp[]))
proc command*(self: gen_ScintillaEdit_types.ScintillaEditBase, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): void =

  fcScintillaEditBase_command(self.h, wParam, lParam)

proc miqt_exec_callback_ScintillaEditBase_command(slot: int, wParam: miqt_uintptr_t, lParam: miqt_intptr_t) {.exportc.} =
  type Cb = proc(wParam: miqt_uintptr_t, lParam: miqt_intptr_t)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = wParam

  let slotval2 = lParam


  nimfunc[](slotval1, slotval2)

proc oncommand*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(wParam: miqt_uintptr_t, lParam: miqt_intptr_t)) =
  type Cb = proc(wParam: miqt_uintptr_t, lParam: miqt_intptr_t)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_command(self.h, cast[int](addr tmp[]))
proc buttonPressed*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qevent.QMouseEvent): void =

  fcScintillaEditBase_buttonPressed(self.h, event.h)

proc miqt_exec_callback_ScintillaEditBase_buttonPressed(slot: int, event: pointer) {.exportc.} =
  type Cb = proc(event: gen_qevent.QMouseEvent)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](slotval1)

proc onbuttonPressed*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(event: gen_qevent.QMouseEvent)) =
  type Cb = proc(event: gen_qevent.QMouseEvent)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_buttonPressed(self.h, cast[int](addr tmp[]))
proc buttonReleased*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qevent.QMouseEvent): void =

  fcScintillaEditBase_buttonReleased(self.h, event.h)

proc miqt_exec_callback_ScintillaEditBase_buttonReleased(slot: int, event: pointer) {.exportc.} =
  type Cb = proc(event: gen_qevent.QMouseEvent)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](slotval1)

proc onbuttonReleased*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(event: gen_qevent.QMouseEvent)) =
  type Cb = proc(event: gen_qevent.QMouseEvent)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_buttonReleased(self.h, cast[int](addr tmp[]))
proc keyPressed*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qevent.QKeyEvent): void =

  fcScintillaEditBase_keyPressed(self.h, event.h)

proc miqt_exec_callback_ScintillaEditBase_keyPressed(slot: int, event: pointer) {.exportc.} =
  type Cb = proc(event: gen_qevent.QKeyEvent)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](slotval1)

proc onkeyPressed*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc(event: gen_qevent.QKeyEvent)) =
  type Cb = proc(event: gen_qevent.QKeyEvent)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_keyPressed(self.h, cast[int](addr tmp[]))
proc resized*(self: gen_ScintillaEdit_types.ScintillaEditBase, ): void =

  fcScintillaEditBase_resized(self.h)

proc miqt_exec_callback_ScintillaEditBase_resized(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onresized*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_resized(self.h, cast[int](addr tmp[]))
proc tr2*(_: type gen_ScintillaEdit_types.ScintillaEditBase, s: cstring, c: cstring): string =

  let v_ms = fcScintillaEditBase_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_ScintillaEdit_types.ScintillaEditBase, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcScintillaEditBase_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type gen_ScintillaEdit_types.ScintillaEditBase, s: cstring, c: cstring): string =

  let v_ms = fcScintillaEditBase_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type gen_ScintillaEdit_types.ScintillaEditBase, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcScintillaEditBase_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc ScintillaEditBasemetaObject*(self: gen_ScintillaEdit_types.ScintillaEditBase, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fScintillaEditBase_virtualbase_metaObject(self.h))

type ScintillaEditBasemetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasemetaObjectProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_metaObject(self: ptr cScintillaEditBase, slot: int): pointer {.exportc: "miqt_exec_callback_ScintillaEditBase_metaObject ".} =
  var nimfunc = cast[ptr ScintillaEditBasemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc ScintillaEditBasemetacast*(self: gen_ScintillaEdit_types.ScintillaEditBase, param1: cstring): pointer =

  fScintillaEditBase_virtualbase_metacast(self.h, param1)

type ScintillaEditBasemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasemetacastProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_metacast(self: ptr cScintillaEditBase, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_ScintillaEditBase_metacast ".} =
  var nimfunc = cast[ptr ScintillaEditBasemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc ScintillaEditBasemetacall*(self: gen_ScintillaEdit_types.ScintillaEditBase, param1: cint, param2: cint, param3: pointer): cint =

  fScintillaEditBase_virtualbase_metacall(self.h, cint(param1), param2, param3)

type ScintillaEditBasemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasemetacallProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_metacall(self: ptr cScintillaEditBase, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_ScintillaEditBase_metacall ".} =
  var nimfunc = cast[ptr ScintillaEditBasemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc ScintillaEditBasesend*(self: gen_ScintillaEdit_types.ScintillaEditBase, iMessage: cuint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): miqt_intptr_t =

  fScintillaEditBase_virtualbase_send(self.h, iMessage, wParam, lParam)

type ScintillaEditBasesendProc* = proc(iMessage: cuint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): miqt_intptr_t
proc onsend*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasesendProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasesendProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_send(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_send(self: ptr cScintillaEditBase, slot: int, iMessage: cuint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): miqt_intptr_t {.exportc: "miqt_exec_callback_ScintillaEditBase_send ".} =
  var nimfunc = cast[ptr ScintillaEditBasesendProc](cast[pointer](slot))
  let slotval1 = iMessage

  let slotval2 = wParam

  let slotval3 = lParam


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc ScintillaEditBasesends*(self: gen_ScintillaEdit_types.ScintillaEditBase, iMessage: cuint, wParam: miqt_uintptr_t, s: cstring): miqt_intptr_t =

  fScintillaEditBase_virtualbase_sends(self.h, iMessage, wParam, s)

type ScintillaEditBasesendsProc* = proc(iMessage: cuint, wParam: miqt_uintptr_t, s: cstring): miqt_intptr_t
proc onsends*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasesendsProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasesendsProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_sends(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_sends(self: ptr cScintillaEditBase, slot: int, iMessage: cuint, wParam: miqt_uintptr_t, s: cstring): miqt_intptr_t {.exportc: "miqt_exec_callback_ScintillaEditBase_sends ".} =
  var nimfunc = cast[ptr ScintillaEditBasesendsProc](cast[pointer](slot))
  let slotval1 = iMessage

  let slotval2 = wParam

  let slotval3 = (s)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc ScintillaEditBaseevent*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qcoreevent.QEvent): bool =

  fScintillaEditBase_virtualbase_event(self.h, event.h)

type ScintillaEditBaseeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBaseeventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBaseeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_event(self: ptr cScintillaEditBase, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_ScintillaEditBase_event ".} =
  var nimfunc = cast[ptr ScintillaEditBaseeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc ScintillaEditBasepaintEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qevent.QPaintEvent): void =

  fScintillaEditBase_virtualbase_paintEvent(self.h, event.h)

type ScintillaEditBasepaintEventProc* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasepaintEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasepaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_paintEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_paintEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBasepaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditBasewheelEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qevent.QWheelEvent): void =

  fScintillaEditBase_virtualbase_wheelEvent(self.h, event.h)

type ScintillaEditBasewheelEventProc* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasewheelEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasewheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_wheelEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_wheelEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBasewheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditBasefocusInEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qevent.QFocusEvent): void =

  fScintillaEditBase_virtualbase_focusInEvent(self.h, event.h)

type ScintillaEditBasefocusInEventProc* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasefocusInEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasefocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_focusInEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_focusInEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBasefocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditBasefocusOutEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qevent.QFocusEvent): void =

  fScintillaEditBase_virtualbase_focusOutEvent(self.h, event.h)

type ScintillaEditBasefocusOutEventProc* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasefocusOutEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasefocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_focusOutEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_focusOutEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBasefocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditBaseresizeEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qevent.QResizeEvent): void =

  fScintillaEditBase_virtualbase_resizeEvent(self.h, event.h)

type ScintillaEditBaseresizeEventProc* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBaseresizeEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBaseresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_resizeEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_resizeEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBaseresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditBasekeyPressEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qevent.QKeyEvent): void =

  fScintillaEditBase_virtualbase_keyPressEvent(self.h, event.h)

type ScintillaEditBasekeyPressEventProc* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasekeyPressEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasekeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_keyPressEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_keyPressEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBasekeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditBasemousePressEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qevent.QMouseEvent): void =

  fScintillaEditBase_virtualbase_mousePressEvent(self.h, event.h)

type ScintillaEditBasemousePressEventProc* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasemousePressEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasemousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_mousePressEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_mousePressEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBasemousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditBasemouseReleaseEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qevent.QMouseEvent): void =

  fScintillaEditBase_virtualbase_mouseReleaseEvent(self.h, event.h)

type ScintillaEditBasemouseReleaseEventProc* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasemouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasemouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_mouseReleaseEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBasemouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditBasemouseDoubleClickEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qevent.QMouseEvent): void =

  fScintillaEditBase_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type ScintillaEditBasemouseDoubleClickEventProc* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasemouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasemouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_mouseDoubleClickEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBasemouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditBasemouseMoveEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qevent.QMouseEvent): void =

  fScintillaEditBase_virtualbase_mouseMoveEvent(self.h, event.h)

type ScintillaEditBasemouseMoveEventProc* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasemouseMoveEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasemouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_mouseMoveEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_mouseMoveEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBasemouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditBasecontextMenuEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qevent.QContextMenuEvent): void =

  fScintillaEditBase_virtualbase_contextMenuEvent(self.h, event.h)

type ScintillaEditBasecontextMenuEventProc* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasecontextMenuEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasecontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_contextMenuEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_contextMenuEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBasecontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditBasedragEnterEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qevent.QDragEnterEvent): void =

  fScintillaEditBase_virtualbase_dragEnterEvent(self.h, event.h)

type ScintillaEditBasedragEnterEventProc* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasedragEnterEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasedragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_dragEnterEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_dragEnterEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBasedragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditBasedragLeaveEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qevent.QDragLeaveEvent): void =

  fScintillaEditBase_virtualbase_dragLeaveEvent(self.h, event.h)

type ScintillaEditBasedragLeaveEventProc* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasedragLeaveEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasedragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_dragLeaveEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_dragLeaveEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBasedragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditBasedragMoveEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qevent.QDragMoveEvent): void =

  fScintillaEditBase_virtualbase_dragMoveEvent(self.h, event.h)

type ScintillaEditBasedragMoveEventProc* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasedragMoveEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasedragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_dragMoveEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_dragMoveEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBasedragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditBasedropEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qevent.QDropEvent): void =

  fScintillaEditBase_virtualbase_dropEvent(self.h, event.h)

type ScintillaEditBasedropEventProc* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasedropEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasedropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_dropEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_dropEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBasedropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditBaseinputMethodEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qevent.QInputMethodEvent): void =

  fScintillaEditBase_virtualbase_inputMethodEvent(self.h, event.h)

type ScintillaEditBaseinputMethodEventProc* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBaseinputMethodEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBaseinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_inputMethodEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_inputMethodEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBaseinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditBaseinputMethodQuery*(self: gen_ScintillaEdit_types.ScintillaEditBase, query: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fScintillaEditBase_virtualbase_inputMethodQuery(self.h, cint(query)))

type ScintillaEditBaseinputMethodQueryProc* = proc(query: cint): gen_qvariant.QVariant
proc oninputMethodQuery*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBaseinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBaseinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_inputMethodQuery(self: ptr cScintillaEditBase, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_ScintillaEditBase_inputMethodQuery ".} =
  var nimfunc = cast[ptr ScintillaEditBaseinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc ScintillaEditBasescrollContentsBy*(self: gen_ScintillaEdit_types.ScintillaEditBase, param1: cint, param2: cint): void =

  fScintillaEditBase_virtualbase_scrollContentsBy(self.h, param1, param2)

type ScintillaEditBasescrollContentsByProc* = proc(param1: cint, param2: cint): void
proc onscrollContentsBy*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasescrollContentsByProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasescrollContentsByProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_scrollContentsBy(self: ptr cScintillaEditBase, slot: int, param1: cint, param2: cint): void {.exportc: "miqt_exec_callback_ScintillaEditBase_scrollContentsBy ".} =
  var nimfunc = cast[ptr ScintillaEditBasescrollContentsByProc](cast[pointer](slot))
  let slotval1 = param1

  let slotval2 = param2


  nimfunc[](slotval1, slotval2)
proc ScintillaEditBaseminimumSizeHint*(self: gen_ScintillaEdit_types.ScintillaEditBase, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fScintillaEditBase_virtualbase_minimumSizeHint(self.h))

type ScintillaEditBaseminimumSizeHintProc* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBaseminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBaseminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_minimumSizeHint(self: ptr cScintillaEditBase, slot: int): pointer {.exportc: "miqt_exec_callback_ScintillaEditBase_minimumSizeHint ".} =
  var nimfunc = cast[ptr ScintillaEditBaseminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc ScintillaEditBasesizeHint*(self: gen_ScintillaEdit_types.ScintillaEditBase, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fScintillaEditBase_virtualbase_sizeHint(self.h))

type ScintillaEditBasesizeHintProc* = proc(): gen_qsize.QSize
proc onsizeHint*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasesizeHintProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasesizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_sizeHint(self: ptr cScintillaEditBase, slot: int): pointer {.exportc: "miqt_exec_callback_ScintillaEditBase_sizeHint ".} =
  var nimfunc = cast[ptr ScintillaEditBasesizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc ScintillaEditBasesetupViewport*(self: gen_ScintillaEdit_types.ScintillaEditBase, viewport: gen_qwidget.QWidget): void =

  fScintillaEditBase_virtualbase_setupViewport(self.h, viewport.h)

type ScintillaEditBasesetupViewportProc* = proc(viewport: gen_qwidget.QWidget): void
proc onsetupViewport*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasesetupViewportProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasesetupViewportProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_setupViewport(self: ptr cScintillaEditBase, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_setupViewport ".} =
  var nimfunc = cast[ptr ScintillaEditBasesetupViewportProc](cast[pointer](slot))
  let slotval1 = gen_qwidget.QWidget(h: viewport)


  nimfunc[](slotval1)
proc ScintillaEditBaseeventFilter*(self: gen_ScintillaEdit_types.ScintillaEditBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =

  fScintillaEditBase_virtualbase_eventFilter(self.h, param1.h, param2.h)

type ScintillaEditBaseeventFilterProc* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBaseeventFilterProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBaseeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_eventFilter(self: ptr cScintillaEditBase, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_ScintillaEditBase_eventFilter ".} =
  var nimfunc = cast[ptr ScintillaEditBaseeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc ScintillaEditBaseviewportEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, param1: gen_qcoreevent.QEvent): bool =

  fScintillaEditBase_virtualbase_viewportEvent(self.h, param1.h)

type ScintillaEditBaseviewportEventProc* = proc(param1: gen_qcoreevent.QEvent): bool
proc onviewportEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBaseviewportEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBaseviewportEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_viewportEvent(self: ptr cScintillaEditBase, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_ScintillaEditBase_viewportEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBaseviewportEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc ScintillaEditBaseviewportSizeHint*(self: gen_ScintillaEdit_types.ScintillaEditBase, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fScintillaEditBase_virtualbase_viewportSizeHint(self.h))

type ScintillaEditBaseviewportSizeHintProc* = proc(): gen_qsize.QSize
proc onviewportSizeHint*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBaseviewportSizeHintProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBaseviewportSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_viewportSizeHint(self: ptr cScintillaEditBase, slot: int): pointer {.exportc: "miqt_exec_callback_ScintillaEditBase_viewportSizeHint ".} =
  var nimfunc = cast[ptr ScintillaEditBaseviewportSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc ScintillaEditBasechangeEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, param1: gen_qcoreevent.QEvent): void =

  fScintillaEditBase_virtualbase_changeEvent(self.h, param1.h)

type ScintillaEditBasechangeEventProc* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasechangeEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasechangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_changeEvent(self: ptr cScintillaEditBase, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_changeEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBasechangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](slotval1)
proc ScintillaEditBasedevType*(self: gen_ScintillaEdit_types.ScintillaEditBase, ): cint =

  fScintillaEditBase_virtualbase_devType(self.h)

type ScintillaEditBasedevTypeProc* = proc(): cint
proc ondevType*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasedevTypeProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasedevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_devType(self: ptr cScintillaEditBase, slot: int): cint {.exportc: "miqt_exec_callback_ScintillaEditBase_devType ".} =
  var nimfunc = cast[ptr ScintillaEditBasedevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc ScintillaEditBasesetVisible*(self: gen_ScintillaEdit_types.ScintillaEditBase, visible: bool): void =

  fScintillaEditBase_virtualbase_setVisible(self.h, visible)

type ScintillaEditBasesetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasesetVisibleProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasesetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_setVisible(self: ptr cScintillaEditBase, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_ScintillaEditBase_setVisible ".} =
  var nimfunc = cast[ptr ScintillaEditBasesetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc ScintillaEditBaseheightForWidth*(self: gen_ScintillaEdit_types.ScintillaEditBase, param1: cint): cint =

  fScintillaEditBase_virtualbase_heightForWidth(self.h, param1)

type ScintillaEditBaseheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBaseheightForWidthProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBaseheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_heightForWidth(self: ptr cScintillaEditBase, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_ScintillaEditBase_heightForWidth ".} =
  var nimfunc = cast[ptr ScintillaEditBaseheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc ScintillaEditBasehasHeightForWidth*(self: gen_ScintillaEdit_types.ScintillaEditBase, ): bool =

  fScintillaEditBase_virtualbase_hasHeightForWidth(self.h)

type ScintillaEditBasehasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasehasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasehasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_hasHeightForWidth(self: ptr cScintillaEditBase, slot: int): bool {.exportc: "miqt_exec_callback_ScintillaEditBase_hasHeightForWidth ".} =
  var nimfunc = cast[ptr ScintillaEditBasehasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc ScintillaEditBasepaintEngine*(self: gen_ScintillaEdit_types.ScintillaEditBase, ): gen_qpaintengine.QPaintEngine =

  gen_qpaintengine.QPaintEngine(h: fScintillaEditBase_virtualbase_paintEngine(self.h))

type ScintillaEditBasepaintEngineProc* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasepaintEngineProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasepaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_paintEngine(self: ptr cScintillaEditBase, slot: int): pointer {.exportc: "miqt_exec_callback_ScintillaEditBase_paintEngine ".} =
  var nimfunc = cast[ptr ScintillaEditBasepaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc ScintillaEditBasekeyReleaseEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qevent.QKeyEvent): void =

  fScintillaEditBase_virtualbase_keyReleaseEvent(self.h, event.h)

type ScintillaEditBasekeyReleaseEventProc* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasekeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasekeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_keyReleaseEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_keyReleaseEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBasekeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditBaseenterEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qcoreevent.QEvent): void =

  fScintillaEditBase_virtualbase_enterEvent(self.h, event.h)

type ScintillaEditBaseenterEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBaseenterEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBaseenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_enterEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_enterEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBaseenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditBaseleaveEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qcoreevent.QEvent): void =

  fScintillaEditBase_virtualbase_leaveEvent(self.h, event.h)

type ScintillaEditBaseleaveEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBaseleaveEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBaseleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_leaveEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_leaveEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBaseleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditBasemoveEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qevent.QMoveEvent): void =

  fScintillaEditBase_virtualbase_moveEvent(self.h, event.h)

type ScintillaEditBasemoveEventProc* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasemoveEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasemoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_moveEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_moveEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBasemoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditBasecloseEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qevent.QCloseEvent): void =

  fScintillaEditBase_virtualbase_closeEvent(self.h, event.h)

type ScintillaEditBasecloseEventProc* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasecloseEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasecloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_closeEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_closeEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBasecloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditBasetabletEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qevent.QTabletEvent): void =

  fScintillaEditBase_virtualbase_tabletEvent(self.h, event.h)

type ScintillaEditBasetabletEventProc* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasetabletEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasetabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_tabletEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_tabletEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBasetabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditBaseactionEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qevent.QActionEvent): void =

  fScintillaEditBase_virtualbase_actionEvent(self.h, event.h)

type ScintillaEditBaseactionEventProc* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBaseactionEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBaseactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_actionEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_actionEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBaseactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditBaseshowEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qevent.QShowEvent): void =

  fScintillaEditBase_virtualbase_showEvent(self.h, event.h)

type ScintillaEditBaseshowEventProc* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBaseshowEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBaseshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_showEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_showEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBaseshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditBasehideEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qevent.QHideEvent): void =

  fScintillaEditBase_virtualbase_hideEvent(self.h, event.h)

type ScintillaEditBasehideEventProc* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasehideEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasehideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_hideEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_hideEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBasehideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditBasenativeEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =

  fScintillaEditBase_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type ScintillaEditBasenativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasenativeEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasenativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_nativeEvent(self: ptr cScintillaEditBase, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_ScintillaEditBase_nativeEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBasenativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc ScintillaEditBasemetric*(self: gen_ScintillaEdit_types.ScintillaEditBase, param1: cint): cint =

  fScintillaEditBase_virtualbase_metric(self.h, cint(param1))

type ScintillaEditBasemetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasemetricProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasemetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_metric(self: ptr cScintillaEditBase, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_ScintillaEditBase_metric ".} =
  var nimfunc = cast[ptr ScintillaEditBasemetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc ScintillaEditBaseinitPainter*(self: gen_ScintillaEdit_types.ScintillaEditBase, painter: gen_qpainter.QPainter): void =

  fScintillaEditBase_virtualbase_initPainter(self.h, painter.h)

type ScintillaEditBaseinitPainterProc* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBaseinitPainterProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBaseinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_initPainter(self: ptr cScintillaEditBase, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_initPainter ".} =
  var nimfunc = cast[ptr ScintillaEditBaseinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](slotval1)
proc ScintillaEditBaseredirected*(self: gen_ScintillaEdit_types.ScintillaEditBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =

  gen_qpaintdevice.QPaintDevice(h: fScintillaEditBase_virtualbase_redirected(self.h, offset.h))

type ScintillaEditBaseredirectedProc* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBaseredirectedProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBaseredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_redirected(self: ptr cScintillaEditBase, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_ScintillaEditBase_redirected ".} =
  var nimfunc = cast[ptr ScintillaEditBaseredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc ScintillaEditBasesharedPainter*(self: gen_ScintillaEdit_types.ScintillaEditBase, ): gen_qpainter.QPainter =

  gen_qpainter.QPainter(h: fScintillaEditBase_virtualbase_sharedPainter(self.h))

type ScintillaEditBasesharedPainterProc* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasesharedPainterProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasesharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_sharedPainter(self: ptr cScintillaEditBase, slot: int): pointer {.exportc: "miqt_exec_callback_ScintillaEditBase_sharedPainter ".} =
  var nimfunc = cast[ptr ScintillaEditBasesharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc ScintillaEditBasefocusNextPrevChild*(self: gen_ScintillaEdit_types.ScintillaEditBase, next: bool): bool =

  fScintillaEditBase_virtualbase_focusNextPrevChild(self.h, next)

type ScintillaEditBasefocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasefocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasefocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_focusNextPrevChild(self: ptr cScintillaEditBase, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_ScintillaEditBase_focusNextPrevChild ".} =
  var nimfunc = cast[ptr ScintillaEditBasefocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc ScintillaEditBasetimerEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qcoreevent.QTimerEvent): void =

  fScintillaEditBase_virtualbase_timerEvent(self.h, event.h)

type ScintillaEditBasetimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasetimerEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_timerEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_timerEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBasetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditBasechildEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qcoreevent.QChildEvent): void =

  fScintillaEditBase_virtualbase_childEvent(self.h, event.h)

type ScintillaEditBasechildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasechildEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_childEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_childEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBasechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditBasecustomEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, event: gen_qcoreevent.QEvent): void =

  fScintillaEditBase_virtualbase_customEvent(self.h, event.h)

type ScintillaEditBasecustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasecustomEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_customEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_customEvent ".} =
  var nimfunc = cast[ptr ScintillaEditBasecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditBaseconnectNotify*(self: gen_ScintillaEdit_types.ScintillaEditBase, signal: gen_qmetaobject.QMetaMethod): void =

  fScintillaEditBase_virtualbase_connectNotify(self.h, signal.h)

type ScintillaEditBaseconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBaseconnectNotifyProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBaseconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_connectNotify(self: ptr cScintillaEditBase, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_connectNotify ".} =
  var nimfunc = cast[ptr ScintillaEditBaseconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc ScintillaEditBasedisconnectNotify*(self: gen_ScintillaEdit_types.ScintillaEditBase, signal: gen_qmetaobject.QMetaMethod): void =

  fScintillaEditBase_virtualbase_disconnectNotify(self.h, signal.h)

type ScintillaEditBasedisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_ScintillaEdit_types.ScintillaEditBase, slot: ScintillaEditBasedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new ScintillaEditBasedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_disconnectNotify(self: ptr cScintillaEditBase, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_disconnectNotify ".} =
  var nimfunc = cast[ptr ScintillaEditBasedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_ScintillaEdit_types.ScintillaEditBase): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcScintillaEditBase_staticMetaObject())
proc delete*(self: gen_ScintillaEdit_types.ScintillaEditBase) =
  fcScintillaEditBase_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaDocument, h: ptr cScintillaDocument): gen_ScintillaEdit_types.ScintillaDocument =
  T(h: h)
proc create*(T: type gen_ScintillaEdit_types.ScintillaDocument, ): gen_ScintillaEdit_types.ScintillaDocument =

  gen_ScintillaEdit_types.ScintillaDocument.init(fcScintillaDocument_new())
proc create*(T: type gen_ScintillaEdit_types.ScintillaDocument, parent: gen_qobject.QObject): gen_ScintillaEdit_types.ScintillaDocument =

  gen_ScintillaEdit_types.ScintillaDocument.init(fcScintillaDocument_new2(parent.h))
proc create*(T: type gen_ScintillaEdit_types.ScintillaDocument, parent: gen_qobject.QObject, pdoc_x: pointer): gen_ScintillaEdit_types.ScintillaDocument =

  gen_ScintillaEdit_types.ScintillaDocument.init(fcScintillaDocument_new3(parent.h, pdoc_x))
proc metaObject*(self: gen_ScintillaEdit_types.ScintillaDocument, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcScintillaDocument_metaObject(self.h))

proc metacast*(self: gen_ScintillaEdit_types.ScintillaDocument, param1: cstring): pointer =

  fcScintillaDocument_metacast(self.h, param1)

proc metacall*(self: gen_ScintillaEdit_types.ScintillaDocument, param1: cint, param2: cint, param3: pointer): cint =

  fcScintillaDocument_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_ScintillaEdit_types.ScintillaDocument, s: cstring): string =

  let v_ms = fcScintillaDocument_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_ScintillaEdit_types.ScintillaDocument, s: cstring): string =

  let v_ms = fcScintillaDocument_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc pointer*(self: gen_ScintillaEdit_types.ScintillaDocument, ): pointer =

  fcScintillaDocument_pointer(self.h)

proc lineFromPosition*(self: gen_ScintillaEdit_types.ScintillaDocument, pos: cint): cint =

  fcScintillaDocument_lineFromPosition(self.h, pos)

proc isCrLf*(self: gen_ScintillaEdit_types.ScintillaDocument, pos: cint): bool =

  fcScintillaDocument_isCrLf(self.h, pos)

proc deleteChars*(self: gen_ScintillaEdit_types.ScintillaDocument, pos: cint, len: cint): bool =

  fcScintillaDocument_deleteChars(self.h, pos, len)

proc undo*(self: gen_ScintillaEdit_types.ScintillaDocument, ): cint =

  fcScintillaDocument_undo(self.h)

proc redo*(self: gen_ScintillaEdit_types.ScintillaDocument, ): cint =

  fcScintillaDocument_redo(self.h)

proc canUndo*(self: gen_ScintillaEdit_types.ScintillaDocument, ): bool =

  fcScintillaDocument_canUndo(self.h)

proc canRedo*(self: gen_ScintillaEdit_types.ScintillaDocument, ): bool =

  fcScintillaDocument_canRedo(self.h)

proc deleteUndoHistory*(self: gen_ScintillaEdit_types.ScintillaDocument, ): void =

  fcScintillaDocument_deleteUndoHistory(self.h)

proc setUndoCollection*(self: gen_ScintillaEdit_types.ScintillaDocument, collect_undo: bool): bool =

  fcScintillaDocument_setUndoCollection(self.h, collect_undo)

proc isCollectingUndo*(self: gen_ScintillaEdit_types.ScintillaDocument, ): bool =

  fcScintillaDocument_isCollectingUndo(self.h)

proc beginUndoAction*(self: gen_ScintillaEdit_types.ScintillaDocument, ): void =

  fcScintillaDocument_beginUndoAction(self.h)

proc endUndoAction*(self: gen_ScintillaEdit_types.ScintillaDocument, ): void =

  fcScintillaDocument_endUndoAction(self.h)

proc setSavePoint*(self: gen_ScintillaEdit_types.ScintillaDocument, ): void =

  fcScintillaDocument_setSavePoint(self.h)

proc isSavePoint*(self: gen_ScintillaEdit_types.ScintillaDocument, ): bool =

  fcScintillaDocument_isSavePoint(self.h)

proc setReadOnly*(self: gen_ScintillaEdit_types.ScintillaDocument, read_only: bool): void =

  fcScintillaDocument_setReadOnly(self.h, read_only)

proc isReadOnly*(self: gen_ScintillaEdit_types.ScintillaDocument, ): bool =

  fcScintillaDocument_isReadOnly(self.h)

proc insertString*(self: gen_ScintillaEdit_types.ScintillaDocument, position: cint, str: seq[byte]): void =

  fcScintillaDocument_insertString(self.h, position, struct_miqt_string(data: cast[cstring](if len(str) == 0: nil else: unsafeAddr str[0]), len: csize_t(len(str))))

proc getCharRange*(self: gen_ScintillaEdit_types.ScintillaDocument, position: cint, length: cint): seq[byte] =

  var v_bytearray = fcScintillaDocument_getCharRange(self.h, position, length)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc styleAt*(self: gen_ScintillaEdit_types.ScintillaDocument, position: cint): cchar =

  fcScintillaDocument_styleAt(self.h, position)

proc lineStart*(self: gen_ScintillaEdit_types.ScintillaDocument, lineno: cint): cint =

  fcScintillaDocument_lineStart(self.h, lineno)

proc lineEnd*(self: gen_ScintillaEdit_types.ScintillaDocument, lineno: cint): cint =

  fcScintillaDocument_lineEnd(self.h, lineno)

proc lineEndPosition*(self: gen_ScintillaEdit_types.ScintillaDocument, pos: cint): cint =

  fcScintillaDocument_lineEndPosition(self.h, pos)

proc length*(self: gen_ScintillaEdit_types.ScintillaDocument, ): cint =

  fcScintillaDocument_length(self.h)

proc linesTotal*(self: gen_ScintillaEdit_types.ScintillaDocument, ): cint =

  fcScintillaDocument_linesTotal(self.h)

proc startStyling*(self: gen_ScintillaEdit_types.ScintillaDocument, position: cint): void =

  fcScintillaDocument_startStyling(self.h, position)

proc setStyleFor*(self: gen_ScintillaEdit_types.ScintillaDocument, length: cint, style: cchar): bool =

  fcScintillaDocument_setStyleFor(self.h, length, style)

proc getEndStyled*(self: gen_ScintillaEdit_types.ScintillaDocument, ): cint =

  fcScintillaDocument_getEndStyled(self.h)

proc ensureStyledTo*(self: gen_ScintillaEdit_types.ScintillaDocument, position: cint): void =

  fcScintillaDocument_ensureStyledTo(self.h, position)

proc setCurrentIndicator*(self: gen_ScintillaEdit_types.ScintillaDocument, indic: cint): void =

  fcScintillaDocument_setCurrentIndicator(self.h, indic)

proc decorationFillRange*(self: gen_ScintillaEdit_types.ScintillaDocument, position: cint, value: cint, fillLength: cint): void =

  fcScintillaDocument_decorationFillRange(self.h, position, value, fillLength)

proc decorationsValueAt*(self: gen_ScintillaEdit_types.ScintillaDocument, indic: cint, position: cint): cint =

  fcScintillaDocument_decorationsValueAt(self.h, indic, position)

proc decorationsStart*(self: gen_ScintillaEdit_types.ScintillaDocument, indic: cint, position: cint): cint =

  fcScintillaDocument_decorationsStart(self.h, indic, position)

proc decorationsEnd*(self: gen_ScintillaEdit_types.ScintillaDocument, indic: cint, position: cint): cint =

  fcScintillaDocument_decorationsEnd(self.h, indic, position)

proc getCodePage*(self: gen_ScintillaEdit_types.ScintillaDocument, ): cint =

  fcScintillaDocument_getCodePage(self.h)

proc setCodePage*(self: gen_ScintillaEdit_types.ScintillaDocument, code_page: cint): void =

  fcScintillaDocument_setCodePage(self.h, code_page)

proc getEolMode*(self: gen_ScintillaEdit_types.ScintillaDocument, ): cint =

  fcScintillaDocument_getEolMode(self.h)

proc setEolMode*(self: gen_ScintillaEdit_types.ScintillaDocument, eol_mode: cint): void =

  fcScintillaDocument_setEolMode(self.h, eol_mode)

proc movePositionOutsideChar*(self: gen_ScintillaEdit_types.ScintillaDocument, pos: cint, move_dir: cint, check_line_end: bool): cint =

  fcScintillaDocument_movePositionOutsideChar(self.h, pos, move_dir, check_line_end)

proc getCharacter*(self: gen_ScintillaEdit_types.ScintillaDocument, pos: cint): cint =

  fcScintillaDocument_getCharacter(self.h, pos)

proc modifyAttempt*(self: gen_ScintillaEdit_types.ScintillaDocument, ): void =

  fcScintillaDocument_modifyAttempt(self.h)

proc miqt_exec_callback_ScintillaDocument_modifyAttempt(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onmodifyAttempt*(self: gen_ScintillaEdit_types.ScintillaDocument, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaDocument_connect_modifyAttempt(self.h, cast[int](addr tmp[]))
proc savePoint*(self: gen_ScintillaEdit_types.ScintillaDocument, atSavePoint: bool): void =

  fcScintillaDocument_savePoint(self.h, atSavePoint)

proc miqt_exec_callback_ScintillaDocument_savePoint(slot: int, atSavePoint: bool) {.exportc.} =
  type Cb = proc(atSavePoint: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = atSavePoint


  nimfunc[](slotval1)

proc onsavePoint*(self: gen_ScintillaEdit_types.ScintillaDocument, slot: proc(atSavePoint: bool)) =
  type Cb = proc(atSavePoint: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaDocument_connect_savePoint(self.h, cast[int](addr tmp[]))
proc modified*(self: gen_ScintillaEdit_types.ScintillaDocument, position: cint, modification_type: cint, text: seq[byte], length: cint, linesAdded: cint, line: cint, foldLevelNow: cint, foldLevelPrev: cint): void =

  fcScintillaDocument_modified(self.h, position, modification_type, struct_miqt_string(data: cast[cstring](if len(text) == 0: nil else: unsafeAddr text[0]), len: csize_t(len(text))), length, linesAdded, line, foldLevelNow, foldLevelPrev)

proc miqt_exec_callback_ScintillaDocument_modified(slot: int, position: cint, modification_type: cint, text: struct_miqt_string, length: cint, linesAdded: cint, line: cint, foldLevelNow: cint, foldLevelPrev: cint) {.exportc.} =
  type Cb = proc(position: cint, modification_type: cint, text: seq[byte], length: cint, linesAdded: cint, line: cint, foldLevelNow: cint, foldLevelPrev: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = modification_type

  var vtext_bytearray = text
  var vtextx_ret = @(toOpenArrayByte(vtext_bytearray.data, 0, int(vtext_bytearray.len)-1))
  c_free(vtext_bytearray.data)
  let slotval3 = vtextx_ret

  let slotval4 = length

  let slotval5 = linesAdded

  let slotval6 = line

  let slotval7 = foldLevelNow

  let slotval8 = foldLevelPrev


  nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5, slotval6, slotval7, slotval8)

proc onmodified*(self: gen_ScintillaEdit_types.ScintillaDocument, slot: proc(position: cint, modification_type: cint, text: seq[byte], length: cint, linesAdded: cint, line: cint, foldLevelNow: cint, foldLevelPrev: cint)) =
  type Cb = proc(position: cint, modification_type: cint, text: seq[byte], length: cint, linesAdded: cint, line: cint, foldLevelNow: cint, foldLevelPrev: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaDocument_connect_modified(self.h, cast[int](addr tmp[]))
proc styleNeeded*(self: gen_ScintillaEdit_types.ScintillaDocument, pos: cint): void =

  fcScintillaDocument_styleNeeded(self.h, pos)

proc miqt_exec_callback_ScintillaDocument_styleNeeded(slot: int, pos: cint) {.exportc.} =
  type Cb = proc(pos: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = pos


  nimfunc[](slotval1)

proc onstyleNeeded*(self: gen_ScintillaEdit_types.ScintillaDocument, slot: proc(pos: cint)) =
  type Cb = proc(pos: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaDocument_connect_styleNeeded(self.h, cast[int](addr tmp[]))
proc errorOccurred*(self: gen_ScintillaEdit_types.ScintillaDocument, status: cint): void =

  fcScintillaDocument_errorOccurred(self.h, status)

proc miqt_exec_callback_ScintillaDocument_errorOccurred(slot: int, status: cint) {.exportc.} =
  type Cb = proc(status: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = status


  nimfunc[](slotval1)

proc onerrorOccurred*(self: gen_ScintillaEdit_types.ScintillaDocument, slot: proc(status: cint)) =
  type Cb = proc(status: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaDocument_connect_errorOccurred(self.h, cast[int](addr tmp[]))
proc tr2*(_: type gen_ScintillaEdit_types.ScintillaDocument, s: cstring, c: cstring): string =

  let v_ms = fcScintillaDocument_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_ScintillaEdit_types.ScintillaDocument, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcScintillaDocument_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type gen_ScintillaEdit_types.ScintillaDocument, s: cstring, c: cstring): string =

  let v_ms = fcScintillaDocument_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type gen_ScintillaEdit_types.ScintillaDocument, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcScintillaDocument_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc beginUndoAction1*(self: gen_ScintillaEdit_types.ScintillaDocument, coalesceWithPrior: bool): void =

  fcScintillaDocument_beginUndoAction1(self.h, coalesceWithPrior)

proc ScintillaDocumentmetaObject*(self: gen_ScintillaEdit_types.ScintillaDocument, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fScintillaDocument_virtualbase_metaObject(self.h))

type ScintillaDocumentmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_ScintillaEdit_types.ScintillaDocument, slot: ScintillaDocumentmetaObjectProc) =
  # TODO check subclass
  var tmp = new ScintillaDocumentmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaDocument_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaDocument_metaObject(self: ptr cScintillaDocument, slot: int): pointer {.exportc: "miqt_exec_callback_ScintillaDocument_metaObject ".} =
  var nimfunc = cast[ptr ScintillaDocumentmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc ScintillaDocumentmetacast*(self: gen_ScintillaEdit_types.ScintillaDocument, param1: cstring): pointer =

  fScintillaDocument_virtualbase_metacast(self.h, param1)

type ScintillaDocumentmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_ScintillaEdit_types.ScintillaDocument, slot: ScintillaDocumentmetacastProc) =
  # TODO check subclass
  var tmp = new ScintillaDocumentmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaDocument_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaDocument_metacast(self: ptr cScintillaDocument, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_ScintillaDocument_metacast ".} =
  var nimfunc = cast[ptr ScintillaDocumentmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc ScintillaDocumentmetacall*(self: gen_ScintillaEdit_types.ScintillaDocument, param1: cint, param2: cint, param3: pointer): cint =

  fScintillaDocument_virtualbase_metacall(self.h, cint(param1), param2, param3)

type ScintillaDocumentmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_ScintillaEdit_types.ScintillaDocument, slot: ScintillaDocumentmetacallProc) =
  # TODO check subclass
  var tmp = new ScintillaDocumentmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaDocument_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaDocument_metacall(self: ptr cScintillaDocument, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_ScintillaDocument_metacall ".} =
  var nimfunc = cast[ptr ScintillaDocumentmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc ScintillaDocumentevent*(self: gen_ScintillaEdit_types.ScintillaDocument, event: gen_qcoreevent.QEvent): bool =

  fScintillaDocument_virtualbase_event(self.h, event.h)

type ScintillaDocumenteventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_ScintillaEdit_types.ScintillaDocument, slot: ScintillaDocumenteventProc) =
  # TODO check subclass
  var tmp = new ScintillaDocumenteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaDocument_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaDocument_event(self: ptr cScintillaDocument, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_ScintillaDocument_event ".} =
  var nimfunc = cast[ptr ScintillaDocumenteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc ScintillaDocumenteventFilter*(self: gen_ScintillaEdit_types.ScintillaDocument, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fScintillaDocument_virtualbase_eventFilter(self.h, watched.h, event.h)

type ScintillaDocumenteventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_ScintillaEdit_types.ScintillaDocument, slot: ScintillaDocumenteventFilterProc) =
  # TODO check subclass
  var tmp = new ScintillaDocumenteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaDocument_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaDocument_eventFilter(self: ptr cScintillaDocument, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_ScintillaDocument_eventFilter ".} =
  var nimfunc = cast[ptr ScintillaDocumenteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc ScintillaDocumenttimerEvent*(self: gen_ScintillaEdit_types.ScintillaDocument, event: gen_qcoreevent.QTimerEvent): void =

  fScintillaDocument_virtualbase_timerEvent(self.h, event.h)

type ScintillaDocumenttimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_ScintillaEdit_types.ScintillaDocument, slot: ScintillaDocumenttimerEventProc) =
  # TODO check subclass
  var tmp = new ScintillaDocumenttimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaDocument_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaDocument_timerEvent(self: ptr cScintillaDocument, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaDocument_timerEvent ".} =
  var nimfunc = cast[ptr ScintillaDocumenttimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaDocumentchildEvent*(self: gen_ScintillaEdit_types.ScintillaDocument, event: gen_qcoreevent.QChildEvent): void =

  fScintillaDocument_virtualbase_childEvent(self.h, event.h)

type ScintillaDocumentchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_ScintillaEdit_types.ScintillaDocument, slot: ScintillaDocumentchildEventProc) =
  # TODO check subclass
  var tmp = new ScintillaDocumentchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaDocument_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaDocument_childEvent(self: ptr cScintillaDocument, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaDocument_childEvent ".} =
  var nimfunc = cast[ptr ScintillaDocumentchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaDocumentcustomEvent*(self: gen_ScintillaEdit_types.ScintillaDocument, event: gen_qcoreevent.QEvent): void =

  fScintillaDocument_virtualbase_customEvent(self.h, event.h)

type ScintillaDocumentcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_ScintillaEdit_types.ScintillaDocument, slot: ScintillaDocumentcustomEventProc) =
  # TODO check subclass
  var tmp = new ScintillaDocumentcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaDocument_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaDocument_customEvent(self: ptr cScintillaDocument, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaDocument_customEvent ".} =
  var nimfunc = cast[ptr ScintillaDocumentcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaDocumentconnectNotify*(self: gen_ScintillaEdit_types.ScintillaDocument, signal: gen_qmetaobject.QMetaMethod): void =

  fScintillaDocument_virtualbase_connectNotify(self.h, signal.h)

type ScintillaDocumentconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_ScintillaEdit_types.ScintillaDocument, slot: ScintillaDocumentconnectNotifyProc) =
  # TODO check subclass
  var tmp = new ScintillaDocumentconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaDocument_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaDocument_connectNotify(self: ptr cScintillaDocument, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_ScintillaDocument_connectNotify ".} =
  var nimfunc = cast[ptr ScintillaDocumentconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc ScintillaDocumentdisconnectNotify*(self: gen_ScintillaEdit_types.ScintillaDocument, signal: gen_qmetaobject.QMetaMethod): void =

  fScintillaDocument_virtualbase_disconnectNotify(self.h, signal.h)

type ScintillaDocumentdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_ScintillaEdit_types.ScintillaDocument, slot: ScintillaDocumentdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new ScintillaDocumentdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaDocument_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaDocument_disconnectNotify(self: ptr cScintillaDocument, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_ScintillaDocument_disconnectNotify ".} =
  var nimfunc = cast[ptr ScintillaDocumentdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_ScintillaEdit_types.ScintillaDocument): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcScintillaDocument_staticMetaObject())
proc delete*(self: gen_ScintillaEdit_types.ScintillaDocument) =
  fcScintillaDocument_delete(self.h)

func init*(T: type gen_ScintillaEdit_types.ScintillaEdit, h: ptr cScintillaEdit): gen_ScintillaEdit_types.ScintillaEdit =
  T(h: h)
proc create*(T: type gen_ScintillaEdit_types.ScintillaEdit, parent: gen_qwidget.QWidget): gen_ScintillaEdit_types.ScintillaEdit =

  gen_ScintillaEdit_types.ScintillaEdit.init(fcScintillaEdit_new(parent.h))
proc create*(T: type gen_ScintillaEdit_types.ScintillaEdit, ): gen_ScintillaEdit_types.ScintillaEdit =

  gen_ScintillaEdit_types.ScintillaEdit.init(fcScintillaEdit_new2())
proc metaObject*(self: gen_ScintillaEdit_types.ScintillaEdit, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcScintillaEdit_metaObject(self.h))

proc metacast*(self: gen_ScintillaEdit_types.ScintillaEdit, param1: cstring): pointer =

  fcScintillaEdit_metacast(self.h, param1)

proc metacall*(self: gen_ScintillaEdit_types.ScintillaEdit, param1: cint, param2: cint, param3: pointer): cint =

  fcScintillaEdit_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_ScintillaEdit_types.ScintillaEdit, s: cstring): string =

  let v_ms = fcScintillaEdit_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_ScintillaEdit_types.ScintillaEdit, s: cstring): string =

  let v_ms = fcScintillaEdit_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc TextReturner*(self: gen_ScintillaEdit_types.ScintillaEdit, message: cint, wParam: miqt_uintptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_TextReturner(self.h, message, wParam)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc findText*(self: gen_ScintillaEdit_types.ScintillaEdit, flags: cint, text: cstring, cpMin: cint, cpMax: cint): tuple[first: cint, second: cint] =

  var v_mm = fcScintillaEdit_findText(self.h, flags, text, cpMin, cpMax)
  var v_First_CArray = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Second_CArray = cast[ptr UncheckedArray[cint]](v_mm.values)
  var v_entry_First = v_First_CArray[0]

  var v_entry_Second = v_Second_CArray[0]

  (first: v_entry_First , second: v_entry_Second )

proc getTextRange*(self: gen_ScintillaEdit_types.ScintillaEdit, start: cint, endVal: cint): seq[byte] =

  var v_bytearray = fcScintillaEdit_getTextRange(self.h, start, endVal)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc getDoc*(self: gen_ScintillaEdit_types.ScintillaEdit, ): gen_ScintillaEdit_types.ScintillaDocument =

  gen_ScintillaEdit_types.ScintillaDocument(h: fcScintillaEdit_getDoc(self.h))

proc setDoc*(self: gen_ScintillaEdit_types.ScintillaEdit, pdoc_x: gen_ScintillaEdit_types.ScintillaDocument): void =

  fcScintillaEdit_setDoc(self.h, pdoc_x.h)

proc findText2*(self: gen_ScintillaEdit_types.ScintillaEdit, flags: cint, text: cstring, cpMin: cint, cpMax: cint): tuple[first: cint, second: cint] =

  var v_mm = fcScintillaEdit_findText2(self.h, flags, text, cpMin, cpMax)
  var v_First_CArray = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Second_CArray = cast[ptr UncheckedArray[cint]](v_mm.values)
  var v_entry_First = v_First_CArray[0]

  var v_entry_Second = v_Second_CArray[0]

  (first: v_entry_First , second: v_entry_Second )

proc textRange*(self: gen_ScintillaEdit_types.ScintillaEdit, start: cint, endVal: cint): seq[byte] =

  var v_bytearray = fcScintillaEdit_textRange(self.h, start, endVal)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc formatRange*(self: gen_ScintillaEdit_types.ScintillaEdit, draw: bool, target: gen_qpaintdevice.QPaintDevice, measure: gen_qpaintdevice.QPaintDevice, print_rect: gen_qrect.QRect, page_rect: gen_qrect.QRect, range_start: clong, range_end: clong): clong =

  fcScintillaEdit_formatRange(self.h, draw, target.h, measure.h, print_rect.h, page_rect.h, range_start, range_end)

proc formatRange2*(self: gen_ScintillaEdit_types.ScintillaEdit, draw: bool, target: gen_qpaintdevice.QPaintDevice, measure: gen_qpaintdevice.QPaintDevice, print_rect: gen_qrect.QRect, page_rect: gen_qrect.QRect, range_start: clong, range_end: clong): clong =

  fcScintillaEdit_formatRange2(self.h, draw, target.h, measure.h, print_rect.h, page_rect.h, range_start, range_end)

proc addText*(self: gen_ScintillaEdit_types.ScintillaEdit, length: miqt_intptr_t, text: cstring): void =

  fcScintillaEdit_addText(self.h, length, text)

proc addStyledText*(self: gen_ScintillaEdit_types.ScintillaEdit, length: miqt_intptr_t, c: cstring): void =

  fcScintillaEdit_addStyledText(self.h, length, c)

proc insertText*(self: gen_ScintillaEdit_types.ScintillaEdit, pos: miqt_intptr_t, text: cstring): void =

  fcScintillaEdit_insertText(self.h, pos, text)

proc changeInsertion*(self: gen_ScintillaEdit_types.ScintillaEdit, length: miqt_intptr_t, text: cstring): void =

  fcScintillaEdit_changeInsertion(self.h, length, text)

proc clearAll*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_clearAll(self.h)

proc deleteRange*(self: gen_ScintillaEdit_types.ScintillaEdit, start: miqt_intptr_t, lengthDelete: miqt_intptr_t): void =

  fcScintillaEdit_deleteRange(self.h, start, lengthDelete)

proc clearDocumentStyle*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_clearDocumentStyle(self.h)

proc length*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_length(self.h)

proc charAt*(self: gen_ScintillaEdit_types.ScintillaEdit, pos: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_charAt(self.h, pos)

proc currentPos*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_currentPos(self.h)

proc anchor*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_anchor(self.h)

proc styleAt*(self: gen_ScintillaEdit_types.ScintillaEdit, pos: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_styleAt(self.h, pos)

proc styleIndexAt*(self: gen_ScintillaEdit_types.ScintillaEdit, pos: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_styleIndexAt(self.h, pos)

proc redo*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_redo(self.h)

proc setUndoCollection*(self: gen_ScintillaEdit_types.ScintillaEdit, collectUndo: bool): void =

  fcScintillaEdit_setUndoCollection(self.h, collectUndo)

proc selectAll*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_selectAll(self.h)

proc setSavePoint*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_setSavePoint(self.h)

proc canRedo*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_canRedo(self.h)

proc markerLineFromHandle*(self: gen_ScintillaEdit_types.ScintillaEdit, markerHandle: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_markerLineFromHandle(self.h, markerHandle)

proc markerDeleteHandle*(self: gen_ScintillaEdit_types.ScintillaEdit, markerHandle: miqt_intptr_t): void =

  fcScintillaEdit_markerDeleteHandle(self.h, markerHandle)

proc markerHandleFromLine*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t, which: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_markerHandleFromLine(self.h, line, which)

proc markerNumberFromLine*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t, which: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_markerNumberFromLine(self.h, line, which)

proc undoCollection*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_undoCollection(self.h)

proc viewWS*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_viewWS(self.h)

proc setViewWS*(self: gen_ScintillaEdit_types.ScintillaEdit, viewWS: miqt_intptr_t): void =

  fcScintillaEdit_setViewWS(self.h, viewWS)

proc tabDrawMode*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_tabDrawMode(self.h)

proc setTabDrawMode*(self: gen_ScintillaEdit_types.ScintillaEdit, tabDrawMode: miqt_intptr_t): void =

  fcScintillaEdit_setTabDrawMode(self.h, tabDrawMode)

proc positionFromPoint*(self: gen_ScintillaEdit_types.ScintillaEdit, x: miqt_intptr_t, y: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_positionFromPoint(self.h, x, y)

proc positionFromPointClose*(self: gen_ScintillaEdit_types.ScintillaEdit, x: miqt_intptr_t, y: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_positionFromPointClose(self.h, x, y)

proc gotoLine*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t): void =

  fcScintillaEdit_gotoLine(self.h, line)

proc gotoPos*(self: gen_ScintillaEdit_types.ScintillaEdit, caret: miqt_intptr_t): void =

  fcScintillaEdit_gotoPos(self.h, caret)

proc setAnchor*(self: gen_ScintillaEdit_types.ScintillaEdit, anchor: miqt_intptr_t): void =

  fcScintillaEdit_setAnchor(self.h, anchor)

proc getCurLine*(self: gen_ScintillaEdit_types.ScintillaEdit, length: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_getCurLine(self.h, length)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc endStyled*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_endStyled(self.h)

proc convertEOLs*(self: gen_ScintillaEdit_types.ScintillaEdit, eolMode: miqt_intptr_t): void =

  fcScintillaEdit_convertEOLs(self.h, eolMode)

proc eOLMode*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_eOLMode(self.h)

proc setEOLMode*(self: gen_ScintillaEdit_types.ScintillaEdit, eolMode: miqt_intptr_t): void =

  fcScintillaEdit_setEOLMode(self.h, eolMode)

proc startStyling*(self: gen_ScintillaEdit_types.ScintillaEdit, start: miqt_intptr_t, unused: miqt_intptr_t): void =

  fcScintillaEdit_startStyling(self.h, start, unused)

proc setStyling*(self: gen_ScintillaEdit_types.ScintillaEdit, length: miqt_intptr_t, style: miqt_intptr_t): void =

  fcScintillaEdit_setStyling(self.h, length, style)

proc bufferedDraw*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_bufferedDraw(self.h)

proc setBufferedDraw*(self: gen_ScintillaEdit_types.ScintillaEdit, buffered: bool): void =

  fcScintillaEdit_setBufferedDraw(self.h, buffered)

proc setTabWidth*(self: gen_ScintillaEdit_types.ScintillaEdit, tabWidth: miqt_intptr_t): void =

  fcScintillaEdit_setTabWidth(self.h, tabWidth)

proc tabWidth*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_tabWidth(self.h)

proc setTabMinimumWidth*(self: gen_ScintillaEdit_types.ScintillaEdit, pixels: miqt_intptr_t): void =

  fcScintillaEdit_setTabMinimumWidth(self.h, pixels)

proc tabMinimumWidth*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_tabMinimumWidth(self.h)

proc clearTabStops*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t): void =

  fcScintillaEdit_clearTabStops(self.h, line)

proc addTabStop*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t, x: miqt_intptr_t): void =

  fcScintillaEdit_addTabStop(self.h, line, x)

proc getNextTabStop*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t, x: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_getNextTabStop(self.h, line, x)

proc setCodePage*(self: gen_ScintillaEdit_types.ScintillaEdit, codePage: miqt_intptr_t): void =

  fcScintillaEdit_setCodePage(self.h, codePage)

proc setFontLocale*(self: gen_ScintillaEdit_types.ScintillaEdit, localeName: cstring): void =

  fcScintillaEdit_setFontLocale(self.h, localeName)

proc fontLocale*(self: gen_ScintillaEdit_types.ScintillaEdit, ): seq[byte] =

  var v_bytearray = fcScintillaEdit_fontLocale(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc iMEInteraction*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_iMEInteraction(self.h)

proc setIMEInteraction*(self: gen_ScintillaEdit_types.ScintillaEdit, imeInteraction: miqt_intptr_t): void =

  fcScintillaEdit_setIMEInteraction(self.h, imeInteraction)

proc markerDefine*(self: gen_ScintillaEdit_types.ScintillaEdit, markerNumber: miqt_intptr_t, markerSymbol: miqt_intptr_t): void =

  fcScintillaEdit_markerDefine(self.h, markerNumber, markerSymbol)

proc markerSetFore*(self: gen_ScintillaEdit_types.ScintillaEdit, markerNumber: miqt_intptr_t, fore: miqt_intptr_t): void =

  fcScintillaEdit_markerSetFore(self.h, markerNumber, fore)

proc markerSetBack*(self: gen_ScintillaEdit_types.ScintillaEdit, markerNumber: miqt_intptr_t, back: miqt_intptr_t): void =

  fcScintillaEdit_markerSetBack(self.h, markerNumber, back)

proc markerSetBackSelected*(self: gen_ScintillaEdit_types.ScintillaEdit, markerNumber: miqt_intptr_t, back: miqt_intptr_t): void =

  fcScintillaEdit_markerSetBackSelected(self.h, markerNumber, back)

proc markerSetForeTranslucent*(self: gen_ScintillaEdit_types.ScintillaEdit, markerNumber: miqt_intptr_t, fore: miqt_intptr_t): void =

  fcScintillaEdit_markerSetForeTranslucent(self.h, markerNumber, fore)

proc markerSetBackTranslucent*(self: gen_ScintillaEdit_types.ScintillaEdit, markerNumber: miqt_intptr_t, back: miqt_intptr_t): void =

  fcScintillaEdit_markerSetBackTranslucent(self.h, markerNumber, back)

proc markerSetBackSelectedTranslucent*(self: gen_ScintillaEdit_types.ScintillaEdit, markerNumber: miqt_intptr_t, back: miqt_intptr_t): void =

  fcScintillaEdit_markerSetBackSelectedTranslucent(self.h, markerNumber, back)

proc markerSetStrokeWidth*(self: gen_ScintillaEdit_types.ScintillaEdit, markerNumber: miqt_intptr_t, hundredths: miqt_intptr_t): void =

  fcScintillaEdit_markerSetStrokeWidth(self.h, markerNumber, hundredths)

proc markerEnableHighlight*(self: gen_ScintillaEdit_types.ScintillaEdit, enabled: bool): void =

  fcScintillaEdit_markerEnableHighlight(self.h, enabled)

proc markerAdd*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t, markerNumber: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_markerAdd(self.h, line, markerNumber)

proc markerDelete*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t, markerNumber: miqt_intptr_t): void =

  fcScintillaEdit_markerDelete(self.h, line, markerNumber)

proc markerDeleteAll*(self: gen_ScintillaEdit_types.ScintillaEdit, markerNumber: miqt_intptr_t): void =

  fcScintillaEdit_markerDeleteAll(self.h, markerNumber)

proc markerGet*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_markerGet(self.h, line)

proc markerNext*(self: gen_ScintillaEdit_types.ScintillaEdit, lineStart: miqt_intptr_t, markerMask: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_markerNext(self.h, lineStart, markerMask)

proc markerPrevious*(self: gen_ScintillaEdit_types.ScintillaEdit, lineStart: miqt_intptr_t, markerMask: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_markerPrevious(self.h, lineStart, markerMask)

proc markerDefinePixmap*(self: gen_ScintillaEdit_types.ScintillaEdit, markerNumber: miqt_intptr_t, pixmap: cstring): void =

  fcScintillaEdit_markerDefinePixmap(self.h, markerNumber, pixmap)

proc markerAddSet*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t, markerSet: miqt_intptr_t): void =

  fcScintillaEdit_markerAddSet(self.h, line, markerSet)

proc markerSetAlpha*(self: gen_ScintillaEdit_types.ScintillaEdit, markerNumber: miqt_intptr_t, alpha: miqt_intptr_t): void =

  fcScintillaEdit_markerSetAlpha(self.h, markerNumber, alpha)

proc markerLayer*(self: gen_ScintillaEdit_types.ScintillaEdit, markerNumber: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_markerLayer(self.h, markerNumber)

proc markerSetLayer*(self: gen_ScintillaEdit_types.ScintillaEdit, markerNumber: miqt_intptr_t, layer: miqt_intptr_t): void =

  fcScintillaEdit_markerSetLayer(self.h, markerNumber, layer)

proc setMarginTypeN*(self: gen_ScintillaEdit_types.ScintillaEdit, margin: miqt_intptr_t, marginType: miqt_intptr_t): void =

  fcScintillaEdit_setMarginTypeN(self.h, margin, marginType)

proc marginTypeN*(self: gen_ScintillaEdit_types.ScintillaEdit, margin: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_marginTypeN(self.h, margin)

proc setMarginWidthN*(self: gen_ScintillaEdit_types.ScintillaEdit, margin: miqt_intptr_t, pixelWidth: miqt_intptr_t): void =

  fcScintillaEdit_setMarginWidthN(self.h, margin, pixelWidth)

proc marginWidthN*(self: gen_ScintillaEdit_types.ScintillaEdit, margin: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_marginWidthN(self.h, margin)

proc setMarginMaskN*(self: gen_ScintillaEdit_types.ScintillaEdit, margin: miqt_intptr_t, mask: miqt_intptr_t): void =

  fcScintillaEdit_setMarginMaskN(self.h, margin, mask)

proc marginMaskN*(self: gen_ScintillaEdit_types.ScintillaEdit, margin: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_marginMaskN(self.h, margin)

proc setMarginSensitiveN*(self: gen_ScintillaEdit_types.ScintillaEdit, margin: miqt_intptr_t, sensitive: bool): void =

  fcScintillaEdit_setMarginSensitiveN(self.h, margin, sensitive)

proc marginSensitiveN*(self: gen_ScintillaEdit_types.ScintillaEdit, margin: miqt_intptr_t): bool =

  fcScintillaEdit_marginSensitiveN(self.h, margin)

proc setMarginCursorN*(self: gen_ScintillaEdit_types.ScintillaEdit, margin: miqt_intptr_t, cursor: miqt_intptr_t): void =

  fcScintillaEdit_setMarginCursorN(self.h, margin, cursor)

proc marginCursorN*(self: gen_ScintillaEdit_types.ScintillaEdit, margin: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_marginCursorN(self.h, margin)

proc setMarginBackN*(self: gen_ScintillaEdit_types.ScintillaEdit, margin: miqt_intptr_t, back: miqt_intptr_t): void =

  fcScintillaEdit_setMarginBackN(self.h, margin, back)

proc marginBackN*(self: gen_ScintillaEdit_types.ScintillaEdit, margin: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_marginBackN(self.h, margin)

proc setMargins*(self: gen_ScintillaEdit_types.ScintillaEdit, margins: miqt_intptr_t): void =

  fcScintillaEdit_setMargins(self.h, margins)

proc margins*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_margins(self.h)

proc styleClearAll*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_styleClearAll(self.h)

proc styleSetFore*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t, fore: miqt_intptr_t): void =

  fcScintillaEdit_styleSetFore(self.h, style, fore)

proc styleSetBack*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t, back: miqt_intptr_t): void =

  fcScintillaEdit_styleSetBack(self.h, style, back)

proc styleSetBold*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t, bold: bool): void =

  fcScintillaEdit_styleSetBold(self.h, style, bold)

proc styleSetItalic*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t, italic: bool): void =

  fcScintillaEdit_styleSetItalic(self.h, style, italic)

proc styleSetSize*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t, sizePoints: miqt_intptr_t): void =

  fcScintillaEdit_styleSetSize(self.h, style, sizePoints)

proc styleSetFont*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t, fontName: cstring): void =

  fcScintillaEdit_styleSetFont(self.h, style, fontName)

proc styleSetEOLFilled*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t, eolFilled: bool): void =

  fcScintillaEdit_styleSetEOLFilled(self.h, style, eolFilled)

proc styleResetDefault*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_styleResetDefault(self.h)

proc styleSetUnderline*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t, underline: bool): void =

  fcScintillaEdit_styleSetUnderline(self.h, style, underline)

proc styleFore*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_styleFore(self.h, style)

proc styleBack*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_styleBack(self.h, style)

proc styleBold*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t): bool =

  fcScintillaEdit_styleBold(self.h, style)

proc styleItalic*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t): bool =

  fcScintillaEdit_styleItalic(self.h, style)

proc styleSize*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_styleSize(self.h, style)

proc styleFont*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_styleFont(self.h, style)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc styleEOLFilled*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t): bool =

  fcScintillaEdit_styleEOLFilled(self.h, style)

proc styleUnderline*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t): bool =

  fcScintillaEdit_styleUnderline(self.h, style)

proc styleCase*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_styleCase(self.h, style)

proc styleCharacterSet*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_styleCharacterSet(self.h, style)

proc styleVisible*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t): bool =

  fcScintillaEdit_styleVisible(self.h, style)

proc styleChangeable*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t): bool =

  fcScintillaEdit_styleChangeable(self.h, style)

proc styleHotSpot*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t): bool =

  fcScintillaEdit_styleHotSpot(self.h, style)

proc styleSetCase*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t, caseVisible: miqt_intptr_t): void =

  fcScintillaEdit_styleSetCase(self.h, style, caseVisible)

proc styleSetSizeFractional*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t, sizeHundredthPoints: miqt_intptr_t): void =

  fcScintillaEdit_styleSetSizeFractional(self.h, style, sizeHundredthPoints)

proc styleSizeFractional*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_styleSizeFractional(self.h, style)

proc styleSetWeight*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t, weight: miqt_intptr_t): void =

  fcScintillaEdit_styleSetWeight(self.h, style, weight)

proc styleWeight*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_styleWeight(self.h, style)

proc styleSetCharacterSet*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t, characterSet: miqt_intptr_t): void =

  fcScintillaEdit_styleSetCharacterSet(self.h, style, characterSet)

proc styleSetHotSpot*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t, hotspot: bool): void =

  fcScintillaEdit_styleSetHotSpot(self.h, style, hotspot)

proc styleSetCheckMonospaced*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t, checkMonospaced: bool): void =

  fcScintillaEdit_styleSetCheckMonospaced(self.h, style, checkMonospaced)

proc styleCheckMonospaced*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t): bool =

  fcScintillaEdit_styleCheckMonospaced(self.h, style)

proc styleSetStretch*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t, stretch: miqt_intptr_t): void =

  fcScintillaEdit_styleSetStretch(self.h, style, stretch)

proc styleStretch*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_styleStretch(self.h, style)

proc styleSetInvisibleRepresentation*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t, representation: cstring): void =

  fcScintillaEdit_styleSetInvisibleRepresentation(self.h, style, representation)

proc styleInvisibleRepresentation*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_styleInvisibleRepresentation(self.h, style)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setElementColour*(self: gen_ScintillaEdit_types.ScintillaEdit, element: miqt_intptr_t, colourElement: miqt_intptr_t): void =

  fcScintillaEdit_setElementColour(self.h, element, colourElement)

proc elementColour*(self: gen_ScintillaEdit_types.ScintillaEdit, element: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_elementColour(self.h, element)

proc resetElementColour*(self: gen_ScintillaEdit_types.ScintillaEdit, element: miqt_intptr_t): void =

  fcScintillaEdit_resetElementColour(self.h, element)

proc elementIsSet*(self: gen_ScintillaEdit_types.ScintillaEdit, element: miqt_intptr_t): bool =

  fcScintillaEdit_elementIsSet(self.h, element)

proc elementAllowsTranslucent*(self: gen_ScintillaEdit_types.ScintillaEdit, element: miqt_intptr_t): bool =

  fcScintillaEdit_elementAllowsTranslucent(self.h, element)

proc elementBaseColour*(self: gen_ScintillaEdit_types.ScintillaEdit, element: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_elementBaseColour(self.h, element)

proc setSelFore*(self: gen_ScintillaEdit_types.ScintillaEdit, useSetting: bool, fore: miqt_intptr_t): void =

  fcScintillaEdit_setSelFore(self.h, useSetting, fore)

proc setSelBack*(self: gen_ScintillaEdit_types.ScintillaEdit, useSetting: bool, back: miqt_intptr_t): void =

  fcScintillaEdit_setSelBack(self.h, useSetting, back)

proc selAlpha*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_selAlpha(self.h)

proc setSelAlpha*(self: gen_ScintillaEdit_types.ScintillaEdit, alpha: miqt_intptr_t): void =

  fcScintillaEdit_setSelAlpha(self.h, alpha)

proc selEOLFilled*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_selEOLFilled(self.h)

proc setSelEOLFilled*(self: gen_ScintillaEdit_types.ScintillaEdit, filled: bool): void =

  fcScintillaEdit_setSelEOLFilled(self.h, filled)

proc selectionLayer*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_selectionLayer(self.h)

proc setSelectionLayer*(self: gen_ScintillaEdit_types.ScintillaEdit, layer: miqt_intptr_t): void =

  fcScintillaEdit_setSelectionLayer(self.h, layer)

proc caretLineLayer*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_caretLineLayer(self.h)

proc setCaretLineLayer*(self: gen_ScintillaEdit_types.ScintillaEdit, layer: miqt_intptr_t): void =

  fcScintillaEdit_setCaretLineLayer(self.h, layer)

proc caretLineHighlightSubLine*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_caretLineHighlightSubLine(self.h)

proc setCaretLineHighlightSubLine*(self: gen_ScintillaEdit_types.ScintillaEdit, subLine: bool): void =

  fcScintillaEdit_setCaretLineHighlightSubLine(self.h, subLine)

proc setCaretFore*(self: gen_ScintillaEdit_types.ScintillaEdit, fore: miqt_intptr_t): void =

  fcScintillaEdit_setCaretFore(self.h, fore)

proc assignCmdKey*(self: gen_ScintillaEdit_types.ScintillaEdit, keyDefinition: miqt_intptr_t, sciCommand: miqt_intptr_t): void =

  fcScintillaEdit_assignCmdKey(self.h, keyDefinition, sciCommand)

proc clearCmdKey*(self: gen_ScintillaEdit_types.ScintillaEdit, keyDefinition: miqt_intptr_t): void =

  fcScintillaEdit_clearCmdKey(self.h, keyDefinition)

proc clearAllCmdKeys*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_clearAllCmdKeys(self.h)

proc setStylingEx*(self: gen_ScintillaEdit_types.ScintillaEdit, length: miqt_intptr_t, styles: cstring): void =

  fcScintillaEdit_setStylingEx(self.h, length, styles)

proc styleSetVisible*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t, visible: bool): void =

  fcScintillaEdit_styleSetVisible(self.h, style, visible)

proc caretPeriod*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_caretPeriod(self.h)

proc setCaretPeriod*(self: gen_ScintillaEdit_types.ScintillaEdit, periodMilliseconds: miqt_intptr_t): void =

  fcScintillaEdit_setCaretPeriod(self.h, periodMilliseconds)

proc setWordChars*(self: gen_ScintillaEdit_types.ScintillaEdit, characters: cstring): void =

  fcScintillaEdit_setWordChars(self.h, characters)

proc wordChars*(self: gen_ScintillaEdit_types.ScintillaEdit, ): seq[byte] =

  var v_bytearray = fcScintillaEdit_wordChars(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setCharacterCategoryOptimization*(self: gen_ScintillaEdit_types.ScintillaEdit, countCharacters: miqt_intptr_t): void =

  fcScintillaEdit_setCharacterCategoryOptimization(self.h, countCharacters)

proc characterCategoryOptimization*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_characterCategoryOptimization(self.h)

proc beginUndoAction*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_beginUndoAction(self.h)

proc endUndoAction*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_endUndoAction(self.h)

proc undoSequence*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_undoSequence(self.h)

proc undoActions*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_undoActions(self.h)

proc setUndoSavePoint*(self: gen_ScintillaEdit_types.ScintillaEdit, action: miqt_intptr_t): void =

  fcScintillaEdit_setUndoSavePoint(self.h, action)

proc undoSavePoint*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_undoSavePoint(self.h)

proc setUndoDetach*(self: gen_ScintillaEdit_types.ScintillaEdit, action: miqt_intptr_t): void =

  fcScintillaEdit_setUndoDetach(self.h, action)

proc undoDetach*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_undoDetach(self.h)

proc setUndoTentative*(self: gen_ScintillaEdit_types.ScintillaEdit, action: miqt_intptr_t): void =

  fcScintillaEdit_setUndoTentative(self.h, action)

proc undoTentative*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_undoTentative(self.h)

proc setUndoCurrent*(self: gen_ScintillaEdit_types.ScintillaEdit, action: miqt_intptr_t): void =

  fcScintillaEdit_setUndoCurrent(self.h, action)

proc undoCurrent*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_undoCurrent(self.h)

proc pushUndoActionType*(self: gen_ScintillaEdit_types.ScintillaEdit, typeVal: miqt_intptr_t, pos: miqt_intptr_t): void =

  fcScintillaEdit_pushUndoActionType(self.h, typeVal, pos)

proc changeLastUndoActionText*(self: gen_ScintillaEdit_types.ScintillaEdit, length: miqt_intptr_t, text: cstring): void =

  fcScintillaEdit_changeLastUndoActionText(self.h, length, text)

proc undoActionType*(self: gen_ScintillaEdit_types.ScintillaEdit, action: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_undoActionType(self.h, action)

proc undoActionPosition*(self: gen_ScintillaEdit_types.ScintillaEdit, action: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_undoActionPosition(self.h, action)

proc undoActionText*(self: gen_ScintillaEdit_types.ScintillaEdit, action: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_undoActionText(self.h, action)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc indicSetStyle*(self: gen_ScintillaEdit_types.ScintillaEdit, indicator: miqt_intptr_t, indicatorStyle: miqt_intptr_t): void =

  fcScintillaEdit_indicSetStyle(self.h, indicator, indicatorStyle)

proc indicStyle*(self: gen_ScintillaEdit_types.ScintillaEdit, indicator: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_indicStyle(self.h, indicator)

proc indicSetFore*(self: gen_ScintillaEdit_types.ScintillaEdit, indicator: miqt_intptr_t, fore: miqt_intptr_t): void =

  fcScintillaEdit_indicSetFore(self.h, indicator, fore)

proc indicFore*(self: gen_ScintillaEdit_types.ScintillaEdit, indicator: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_indicFore(self.h, indicator)

proc indicSetUnder*(self: gen_ScintillaEdit_types.ScintillaEdit, indicator: miqt_intptr_t, under: bool): void =

  fcScintillaEdit_indicSetUnder(self.h, indicator, under)

proc indicUnder*(self: gen_ScintillaEdit_types.ScintillaEdit, indicator: miqt_intptr_t): bool =

  fcScintillaEdit_indicUnder(self.h, indicator)

proc indicSetHoverStyle*(self: gen_ScintillaEdit_types.ScintillaEdit, indicator: miqt_intptr_t, indicatorStyle: miqt_intptr_t): void =

  fcScintillaEdit_indicSetHoverStyle(self.h, indicator, indicatorStyle)

proc indicHoverStyle*(self: gen_ScintillaEdit_types.ScintillaEdit, indicator: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_indicHoverStyle(self.h, indicator)

proc indicSetHoverFore*(self: gen_ScintillaEdit_types.ScintillaEdit, indicator: miqt_intptr_t, fore: miqt_intptr_t): void =

  fcScintillaEdit_indicSetHoverFore(self.h, indicator, fore)

proc indicHoverFore*(self: gen_ScintillaEdit_types.ScintillaEdit, indicator: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_indicHoverFore(self.h, indicator)

proc indicSetFlags*(self: gen_ScintillaEdit_types.ScintillaEdit, indicator: miqt_intptr_t, flags: miqt_intptr_t): void =

  fcScintillaEdit_indicSetFlags(self.h, indicator, flags)

proc indicFlags*(self: gen_ScintillaEdit_types.ScintillaEdit, indicator: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_indicFlags(self.h, indicator)

proc indicSetStrokeWidth*(self: gen_ScintillaEdit_types.ScintillaEdit, indicator: miqt_intptr_t, hundredths: miqt_intptr_t): void =

  fcScintillaEdit_indicSetStrokeWidth(self.h, indicator, hundredths)

proc indicStrokeWidth*(self: gen_ScintillaEdit_types.ScintillaEdit, indicator: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_indicStrokeWidth(self.h, indicator)

proc setWhitespaceFore*(self: gen_ScintillaEdit_types.ScintillaEdit, useSetting: bool, fore: miqt_intptr_t): void =

  fcScintillaEdit_setWhitespaceFore(self.h, useSetting, fore)

proc setWhitespaceBack*(self: gen_ScintillaEdit_types.ScintillaEdit, useSetting: bool, back: miqt_intptr_t): void =

  fcScintillaEdit_setWhitespaceBack(self.h, useSetting, back)

proc setWhitespaceSize*(self: gen_ScintillaEdit_types.ScintillaEdit, size: miqt_intptr_t): void =

  fcScintillaEdit_setWhitespaceSize(self.h, size)

proc whitespaceSize*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_whitespaceSize(self.h)

proc setLineState*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t, state: miqt_intptr_t): void =

  fcScintillaEdit_setLineState(self.h, line, state)

proc lineState*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_lineState(self.h, line)

proc maxLineState*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_maxLineState(self.h)

proc caretLineVisible*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_caretLineVisible(self.h)

proc setCaretLineVisible*(self: gen_ScintillaEdit_types.ScintillaEdit, show: bool): void =

  fcScintillaEdit_setCaretLineVisible(self.h, show)

proc caretLineBack*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_caretLineBack(self.h)

proc setCaretLineBack*(self: gen_ScintillaEdit_types.ScintillaEdit, back: miqt_intptr_t): void =

  fcScintillaEdit_setCaretLineBack(self.h, back)

proc caretLineFrame*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_caretLineFrame(self.h)

proc setCaretLineFrame*(self: gen_ScintillaEdit_types.ScintillaEdit, width: miqt_intptr_t): void =

  fcScintillaEdit_setCaretLineFrame(self.h, width)

proc styleSetChangeable*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t, changeable: bool): void =

  fcScintillaEdit_styleSetChangeable(self.h, style, changeable)

proc autoCShow*(self: gen_ScintillaEdit_types.ScintillaEdit, lengthEntered: miqt_intptr_t, itemList: cstring): void =

  fcScintillaEdit_autoCShow(self.h, lengthEntered, itemList)

proc autoCCancel*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_autoCCancel(self.h)

proc autoCActive*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_autoCActive(self.h)

proc autoCPosStart*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_autoCPosStart(self.h)

proc autoCComplete*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_autoCComplete(self.h)

proc autoCStops*(self: gen_ScintillaEdit_types.ScintillaEdit, characterSet: cstring): void =

  fcScintillaEdit_autoCStops(self.h, characterSet)

proc autoCSetSeparator*(self: gen_ScintillaEdit_types.ScintillaEdit, separatorCharacter: miqt_intptr_t): void =

  fcScintillaEdit_autoCSetSeparator(self.h, separatorCharacter)

proc autoCSeparator*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_autoCSeparator(self.h)

proc autoCSelect*(self: gen_ScintillaEdit_types.ScintillaEdit, select: cstring): void =

  fcScintillaEdit_autoCSelect(self.h, select)

proc autoCSetCancelAtStart*(self: gen_ScintillaEdit_types.ScintillaEdit, cancel: bool): void =

  fcScintillaEdit_autoCSetCancelAtStart(self.h, cancel)

proc autoCCancelAtStart*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_autoCCancelAtStart(self.h)

proc autoCSetFillUps*(self: gen_ScintillaEdit_types.ScintillaEdit, characterSet: cstring): void =

  fcScintillaEdit_autoCSetFillUps(self.h, characterSet)

proc autoCSetChooseSingle*(self: gen_ScintillaEdit_types.ScintillaEdit, chooseSingle: bool): void =

  fcScintillaEdit_autoCSetChooseSingle(self.h, chooseSingle)

proc autoCChooseSingle*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_autoCChooseSingle(self.h)

proc autoCSetIgnoreCase*(self: gen_ScintillaEdit_types.ScintillaEdit, ignoreCase: bool): void =

  fcScintillaEdit_autoCSetIgnoreCase(self.h, ignoreCase)

proc autoCIgnoreCase*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_autoCIgnoreCase(self.h)

proc userListShow*(self: gen_ScintillaEdit_types.ScintillaEdit, listType: miqt_intptr_t, itemList: cstring): void =

  fcScintillaEdit_userListShow(self.h, listType, itemList)

proc autoCSetAutoHide*(self: gen_ScintillaEdit_types.ScintillaEdit, autoHide: bool): void =

  fcScintillaEdit_autoCSetAutoHide(self.h, autoHide)

proc autoCAutoHide*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_autoCAutoHide(self.h)

proc autoCSetOptions*(self: gen_ScintillaEdit_types.ScintillaEdit, options: miqt_intptr_t): void =

  fcScintillaEdit_autoCSetOptions(self.h, options)

proc autoCOptions*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_autoCOptions(self.h)

proc autoCSetDropRestOfWord*(self: gen_ScintillaEdit_types.ScintillaEdit, dropRestOfWord: bool): void =

  fcScintillaEdit_autoCSetDropRestOfWord(self.h, dropRestOfWord)

proc autoCDropRestOfWord*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_autoCDropRestOfWord(self.h)

proc registerImage*(self: gen_ScintillaEdit_types.ScintillaEdit, typeVal: miqt_intptr_t, xpmData: cstring): void =

  fcScintillaEdit_registerImage(self.h, typeVal, xpmData)

proc clearRegisteredImages*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_clearRegisteredImages(self.h)

proc autoCTypeSeparator*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_autoCTypeSeparator(self.h)

proc autoCSetTypeSeparator*(self: gen_ScintillaEdit_types.ScintillaEdit, separatorCharacter: miqt_intptr_t): void =

  fcScintillaEdit_autoCSetTypeSeparator(self.h, separatorCharacter)

proc autoCSetMaxWidth*(self: gen_ScintillaEdit_types.ScintillaEdit, characterCount: miqt_intptr_t): void =

  fcScintillaEdit_autoCSetMaxWidth(self.h, characterCount)

proc autoCMaxWidth*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_autoCMaxWidth(self.h)

proc autoCSetMaxHeight*(self: gen_ScintillaEdit_types.ScintillaEdit, rowCount: miqt_intptr_t): void =

  fcScintillaEdit_autoCSetMaxHeight(self.h, rowCount)

proc autoCMaxHeight*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_autoCMaxHeight(self.h)

proc autoCSetStyle*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t): void =

  fcScintillaEdit_autoCSetStyle(self.h, style)

proc autoCStyle*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_autoCStyle(self.h)

proc setIndent*(self: gen_ScintillaEdit_types.ScintillaEdit, indentSize: miqt_intptr_t): void =

  fcScintillaEdit_setIndent(self.h, indentSize)

proc indent*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_indent(self.h)

proc setUseTabs*(self: gen_ScintillaEdit_types.ScintillaEdit, useTabs: bool): void =

  fcScintillaEdit_setUseTabs(self.h, useTabs)

proc useTabs*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_useTabs(self.h)

proc setLineIndentation*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t, indentation: miqt_intptr_t): void =

  fcScintillaEdit_setLineIndentation(self.h, line, indentation)

proc lineIndentation*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_lineIndentation(self.h, line)

proc lineIndentPosition*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_lineIndentPosition(self.h, line)

proc column*(self: gen_ScintillaEdit_types.ScintillaEdit, pos: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_column(self.h, pos)

proc countCharacters*(self: gen_ScintillaEdit_types.ScintillaEdit, start: miqt_intptr_t, endVal: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_countCharacters(self.h, start, endVal)

proc countCodeUnits*(self: gen_ScintillaEdit_types.ScintillaEdit, start: miqt_intptr_t, endVal: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_countCodeUnits(self.h, start, endVal)

proc setHScrollBar*(self: gen_ScintillaEdit_types.ScintillaEdit, visible: bool): void =

  fcScintillaEdit_setHScrollBar(self.h, visible)

proc hScrollBar*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_hScrollBar(self.h)

proc setIndentationGuides*(self: gen_ScintillaEdit_types.ScintillaEdit, indentView: miqt_intptr_t): void =

  fcScintillaEdit_setIndentationGuides(self.h, indentView)

proc indentationGuides*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_indentationGuides(self.h)

proc setHighlightGuide*(self: gen_ScintillaEdit_types.ScintillaEdit, column: miqt_intptr_t): void =

  fcScintillaEdit_setHighlightGuide(self.h, column)

proc highlightGuide*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_highlightGuide(self.h)

proc lineEndPosition*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_lineEndPosition(self.h, line)

proc codePage*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_codePage(self.h)

proc caretFore*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_caretFore(self.h)

proc readOnly*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_readOnly(self.h)

proc setCurrentPos*(self: gen_ScintillaEdit_types.ScintillaEdit, caret: miqt_intptr_t): void =

  fcScintillaEdit_setCurrentPos(self.h, caret)

proc setSelectionStart*(self: gen_ScintillaEdit_types.ScintillaEdit, anchor: miqt_intptr_t): void =

  fcScintillaEdit_setSelectionStart(self.h, anchor)

proc selectionStart*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_selectionStart(self.h)

proc setSelectionEnd*(self: gen_ScintillaEdit_types.ScintillaEdit, caret: miqt_intptr_t): void =

  fcScintillaEdit_setSelectionEnd(self.h, caret)

proc selectionEnd*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_selectionEnd(self.h)

proc setEmptySelection*(self: gen_ScintillaEdit_types.ScintillaEdit, caret: miqt_intptr_t): void =

  fcScintillaEdit_setEmptySelection(self.h, caret)

proc setPrintMagnification*(self: gen_ScintillaEdit_types.ScintillaEdit, magnification: miqt_intptr_t): void =

  fcScintillaEdit_setPrintMagnification(self.h, magnification)

proc printMagnification*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_printMagnification(self.h)

proc setPrintColourMode*(self: gen_ScintillaEdit_types.ScintillaEdit, mode: miqt_intptr_t): void =

  fcScintillaEdit_setPrintColourMode(self.h, mode)

proc printColourMode*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_printColourMode(self.h)

proc setChangeHistory*(self: gen_ScintillaEdit_types.ScintillaEdit, changeHistory: miqt_intptr_t): void =

  fcScintillaEdit_setChangeHistory(self.h, changeHistory)

proc changeHistory*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_changeHistory(self.h)

proc firstVisibleLine*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_firstVisibleLine(self.h)

proc getLine*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_getLine(self.h, line)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc lineCount*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_lineCount(self.h)

proc allocateLines*(self: gen_ScintillaEdit_types.ScintillaEdit, lines: miqt_intptr_t): void =

  fcScintillaEdit_allocateLines(self.h, lines)

proc setMarginLeft*(self: gen_ScintillaEdit_types.ScintillaEdit, pixelWidth: miqt_intptr_t): void =

  fcScintillaEdit_setMarginLeft(self.h, pixelWidth)

proc marginLeft*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_marginLeft(self.h)

proc setMarginRight*(self: gen_ScintillaEdit_types.ScintillaEdit, pixelWidth: miqt_intptr_t): void =

  fcScintillaEdit_setMarginRight(self.h, pixelWidth)

proc marginRight*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_marginRight(self.h)

proc modify*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_modify(self.h)

proc setSel*(self: gen_ScintillaEdit_types.ScintillaEdit, anchor: miqt_intptr_t, caret: miqt_intptr_t): void =

  fcScintillaEdit_setSel(self.h, anchor, caret)

proc getSelText*(self: gen_ScintillaEdit_types.ScintillaEdit, ): seq[byte] =

  var v_bytearray = fcScintillaEdit_getSelText(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc hideSelection*(self: gen_ScintillaEdit_types.ScintillaEdit, hide: bool): void =

  fcScintillaEdit_hideSelection(self.h, hide)

proc selectionHidden*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_selectionHidden(self.h)

proc pointXFromPosition*(self: gen_ScintillaEdit_types.ScintillaEdit, pos: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_pointXFromPosition(self.h, pos)

proc pointYFromPosition*(self: gen_ScintillaEdit_types.ScintillaEdit, pos: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_pointYFromPosition(self.h, pos)

proc lineFromPosition*(self: gen_ScintillaEdit_types.ScintillaEdit, pos: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_lineFromPosition(self.h, pos)

proc positionFromLine*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_positionFromLine(self.h, line)

proc lineScroll*(self: gen_ScintillaEdit_types.ScintillaEdit, columns: miqt_intptr_t, lines: miqt_intptr_t): void =

  fcScintillaEdit_lineScroll(self.h, columns, lines)

proc scrollCaret*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_scrollCaret(self.h)

proc scrollRange*(self: gen_ScintillaEdit_types.ScintillaEdit, secondary: miqt_intptr_t, primary: miqt_intptr_t): void =

  fcScintillaEdit_scrollRange(self.h, secondary, primary)

proc replaceSel*(self: gen_ScintillaEdit_types.ScintillaEdit, text: cstring): void =

  fcScintillaEdit_replaceSel(self.h, text)

proc setReadOnly*(self: gen_ScintillaEdit_types.ScintillaEdit, readOnly: bool): void =

  fcScintillaEdit_setReadOnly(self.h, readOnly)

proc null*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_null(self.h)

proc canPaste*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_canPaste(self.h)

proc canUndo*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_canUndo(self.h)

proc emptyUndoBuffer*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_emptyUndoBuffer(self.h)

proc undo*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_undo(self.h)

proc cut*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_cut(self.h)

proc copy*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_copy(self.h)

proc paste*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_paste(self.h)

proc clear*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_clear(self.h)

proc setText*(self: gen_ScintillaEdit_types.ScintillaEdit, text: cstring): void =

  fcScintillaEdit_setText(self.h, text)

proc getText*(self: gen_ScintillaEdit_types.ScintillaEdit, length: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_getText(self.h, length)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc textLength*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_textLength(self.h)

proc directFunction*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_directFunction(self.h)

proc directStatusFunction*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_directStatusFunction(self.h)

proc directPointer*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_directPointer(self.h)

proc setOvertype*(self: gen_ScintillaEdit_types.ScintillaEdit, overType: bool): void =

  fcScintillaEdit_setOvertype(self.h, overType)

proc overtype*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_overtype(self.h)

proc setCaretWidth*(self: gen_ScintillaEdit_types.ScintillaEdit, pixelWidth: miqt_intptr_t): void =

  fcScintillaEdit_setCaretWidth(self.h, pixelWidth)

proc caretWidth*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_caretWidth(self.h)

proc setTargetStart*(self: gen_ScintillaEdit_types.ScintillaEdit, start: miqt_intptr_t): void =

  fcScintillaEdit_setTargetStart(self.h, start)

proc targetStart*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_targetStart(self.h)

proc setTargetStartVirtualSpace*(self: gen_ScintillaEdit_types.ScintillaEdit, space: miqt_intptr_t): void =

  fcScintillaEdit_setTargetStartVirtualSpace(self.h, space)

proc targetStartVirtualSpace*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_targetStartVirtualSpace(self.h)

proc setTargetEnd*(self: gen_ScintillaEdit_types.ScintillaEdit, endVal: miqt_intptr_t): void =

  fcScintillaEdit_setTargetEnd(self.h, endVal)

proc targetEnd*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_targetEnd(self.h)

proc setTargetEndVirtualSpace*(self: gen_ScintillaEdit_types.ScintillaEdit, space: miqt_intptr_t): void =

  fcScintillaEdit_setTargetEndVirtualSpace(self.h, space)

proc targetEndVirtualSpace*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_targetEndVirtualSpace(self.h)

proc setTargetRange*(self: gen_ScintillaEdit_types.ScintillaEdit, start: miqt_intptr_t, endVal: miqt_intptr_t): void =

  fcScintillaEdit_setTargetRange(self.h, start, endVal)

proc targetText*(self: gen_ScintillaEdit_types.ScintillaEdit, ): seq[byte] =

  var v_bytearray = fcScintillaEdit_targetText(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc targetFromSelection*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_targetFromSelection(self.h)

proc targetWholeDocument*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_targetWholeDocument(self.h)

proc replaceTarget*(self: gen_ScintillaEdit_types.ScintillaEdit, length: miqt_intptr_t, text: cstring): miqt_intptr_t =

  fcScintillaEdit_replaceTarget(self.h, length, text)

proc replaceTargetRE*(self: gen_ScintillaEdit_types.ScintillaEdit, length: miqt_intptr_t, text: cstring): miqt_intptr_t =

  fcScintillaEdit_replaceTargetRE(self.h, length, text)

proc replaceTargetMinimal*(self: gen_ScintillaEdit_types.ScintillaEdit, length: miqt_intptr_t, text: cstring): miqt_intptr_t =

  fcScintillaEdit_replaceTargetMinimal(self.h, length, text)

proc searchInTarget*(self: gen_ScintillaEdit_types.ScintillaEdit, length: miqt_intptr_t, text: cstring): miqt_intptr_t =

  fcScintillaEdit_searchInTarget(self.h, length, text)

proc setSearchFlags*(self: gen_ScintillaEdit_types.ScintillaEdit, searchFlags: miqt_intptr_t): void =

  fcScintillaEdit_setSearchFlags(self.h, searchFlags)

proc searchFlags*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_searchFlags(self.h)

proc callTipShow*(self: gen_ScintillaEdit_types.ScintillaEdit, pos: miqt_intptr_t, definition: cstring): void =

  fcScintillaEdit_callTipShow(self.h, pos, definition)

proc callTipCancel*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_callTipCancel(self.h)

proc callTipActive*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_callTipActive(self.h)

proc callTipPosStart*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_callTipPosStart(self.h)

proc callTipSetPosStart*(self: gen_ScintillaEdit_types.ScintillaEdit, posStart: miqt_intptr_t): void =

  fcScintillaEdit_callTipSetPosStart(self.h, posStart)

proc callTipSetHlt*(self: gen_ScintillaEdit_types.ScintillaEdit, highlightStart: miqt_intptr_t, highlightEnd: miqt_intptr_t): void =

  fcScintillaEdit_callTipSetHlt(self.h, highlightStart, highlightEnd)

proc callTipSetBack*(self: gen_ScintillaEdit_types.ScintillaEdit, back: miqt_intptr_t): void =

  fcScintillaEdit_callTipSetBack(self.h, back)

proc callTipSetFore*(self: gen_ScintillaEdit_types.ScintillaEdit, fore: miqt_intptr_t): void =

  fcScintillaEdit_callTipSetFore(self.h, fore)

proc callTipSetForeHlt*(self: gen_ScintillaEdit_types.ScintillaEdit, fore: miqt_intptr_t): void =

  fcScintillaEdit_callTipSetForeHlt(self.h, fore)

proc callTipUseStyle*(self: gen_ScintillaEdit_types.ScintillaEdit, tabSize: miqt_intptr_t): void =

  fcScintillaEdit_callTipUseStyle(self.h, tabSize)

proc callTipSetPosition*(self: gen_ScintillaEdit_types.ScintillaEdit, above: bool): void =

  fcScintillaEdit_callTipSetPosition(self.h, above)

proc visibleFromDocLine*(self: gen_ScintillaEdit_types.ScintillaEdit, docLine: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_visibleFromDocLine(self.h, docLine)

proc docLineFromVisible*(self: gen_ScintillaEdit_types.ScintillaEdit, displayLine: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_docLineFromVisible(self.h, displayLine)

proc wrapCount*(self: gen_ScintillaEdit_types.ScintillaEdit, docLine: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_wrapCount(self.h, docLine)

proc setFoldLevel*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t, level: miqt_intptr_t): void =

  fcScintillaEdit_setFoldLevel(self.h, line, level)

proc foldLevel*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_foldLevel(self.h, line)

proc lastChild*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t, level: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_lastChild(self.h, line, level)

proc foldParent*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_foldParent(self.h, line)

proc showLines*(self: gen_ScintillaEdit_types.ScintillaEdit, lineStart: miqt_intptr_t, lineEnd: miqt_intptr_t): void =

  fcScintillaEdit_showLines(self.h, lineStart, lineEnd)

proc hideLines*(self: gen_ScintillaEdit_types.ScintillaEdit, lineStart: miqt_intptr_t, lineEnd: miqt_intptr_t): void =

  fcScintillaEdit_hideLines(self.h, lineStart, lineEnd)

proc lineVisible*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t): bool =

  fcScintillaEdit_lineVisible(self.h, line)

proc allLinesVisible*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_allLinesVisible(self.h)

proc setFoldExpanded*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t, expanded: bool): void =

  fcScintillaEdit_setFoldExpanded(self.h, line, expanded)

proc foldExpanded*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t): bool =

  fcScintillaEdit_foldExpanded(self.h, line)

proc toggleFold*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t): void =

  fcScintillaEdit_toggleFold(self.h, line)

proc toggleFoldShowText*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t, text: cstring): void =

  fcScintillaEdit_toggleFoldShowText(self.h, line, text)

proc foldDisplayTextSetStyle*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t): void =

  fcScintillaEdit_foldDisplayTextSetStyle(self.h, style)

proc foldDisplayTextStyle*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_foldDisplayTextStyle(self.h)

proc setDefaultFoldDisplayText*(self: gen_ScintillaEdit_types.ScintillaEdit, text: cstring): void =

  fcScintillaEdit_setDefaultFoldDisplayText(self.h, text)

proc getDefaultFoldDisplayText*(self: gen_ScintillaEdit_types.ScintillaEdit, ): seq[byte] =

  var v_bytearray = fcScintillaEdit_getDefaultFoldDisplayText(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc foldLine*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t, action: miqt_intptr_t): void =

  fcScintillaEdit_foldLine(self.h, line, action)

proc foldChildren*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t, action: miqt_intptr_t): void =

  fcScintillaEdit_foldChildren(self.h, line, action)

proc expandChildren*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t, level: miqt_intptr_t): void =

  fcScintillaEdit_expandChildren(self.h, line, level)

proc foldAll*(self: gen_ScintillaEdit_types.ScintillaEdit, action: miqt_intptr_t): void =

  fcScintillaEdit_foldAll(self.h, action)

proc ensureVisible*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t): void =

  fcScintillaEdit_ensureVisible(self.h, line)

proc setAutomaticFold*(self: gen_ScintillaEdit_types.ScintillaEdit, automaticFold: miqt_intptr_t): void =

  fcScintillaEdit_setAutomaticFold(self.h, automaticFold)

proc automaticFold*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_automaticFold(self.h)

proc setFoldFlags*(self: gen_ScintillaEdit_types.ScintillaEdit, flags: miqt_intptr_t): void =

  fcScintillaEdit_setFoldFlags(self.h, flags)

proc ensureVisibleEnforcePolicy*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t): void =

  fcScintillaEdit_ensureVisibleEnforcePolicy(self.h, line)

proc setTabIndents*(self: gen_ScintillaEdit_types.ScintillaEdit, tabIndents: bool): void =

  fcScintillaEdit_setTabIndents(self.h, tabIndents)

proc tabIndents*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_tabIndents(self.h)

proc setBackSpaceUnIndents*(self: gen_ScintillaEdit_types.ScintillaEdit, bsUnIndents: bool): void =

  fcScintillaEdit_setBackSpaceUnIndents(self.h, bsUnIndents)

proc backSpaceUnIndents*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_backSpaceUnIndents(self.h)

proc setMouseDwellTime*(self: gen_ScintillaEdit_types.ScintillaEdit, periodMilliseconds: miqt_intptr_t): void =

  fcScintillaEdit_setMouseDwellTime(self.h, periodMilliseconds)

proc mouseDwellTime*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_mouseDwellTime(self.h)

proc wordStartPosition*(self: gen_ScintillaEdit_types.ScintillaEdit, pos: miqt_intptr_t, onlyWordCharacters: bool): miqt_intptr_t =

  fcScintillaEdit_wordStartPosition(self.h, pos, onlyWordCharacters)

proc wordEndPosition*(self: gen_ScintillaEdit_types.ScintillaEdit, pos: miqt_intptr_t, onlyWordCharacters: bool): miqt_intptr_t =

  fcScintillaEdit_wordEndPosition(self.h, pos, onlyWordCharacters)

proc isRangeWord*(self: gen_ScintillaEdit_types.ScintillaEdit, start: miqt_intptr_t, endVal: miqt_intptr_t): bool =

  fcScintillaEdit_isRangeWord(self.h, start, endVal)

proc setIdleStyling*(self: gen_ScintillaEdit_types.ScintillaEdit, idleStyling: miqt_intptr_t): void =

  fcScintillaEdit_setIdleStyling(self.h, idleStyling)

proc idleStyling*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_idleStyling(self.h)

proc setWrapMode*(self: gen_ScintillaEdit_types.ScintillaEdit, wrapMode: miqt_intptr_t): void =

  fcScintillaEdit_setWrapMode(self.h, wrapMode)

proc wrapMode*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_wrapMode(self.h)

proc setWrapVisualFlags*(self: gen_ScintillaEdit_types.ScintillaEdit, wrapVisualFlags: miqt_intptr_t): void =

  fcScintillaEdit_setWrapVisualFlags(self.h, wrapVisualFlags)

proc wrapVisualFlags*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_wrapVisualFlags(self.h)

proc setWrapVisualFlagsLocation*(self: gen_ScintillaEdit_types.ScintillaEdit, wrapVisualFlagsLocation: miqt_intptr_t): void =

  fcScintillaEdit_setWrapVisualFlagsLocation(self.h, wrapVisualFlagsLocation)

proc wrapVisualFlagsLocation*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_wrapVisualFlagsLocation(self.h)

proc setWrapStartIndent*(self: gen_ScintillaEdit_types.ScintillaEdit, indent: miqt_intptr_t): void =

  fcScintillaEdit_setWrapStartIndent(self.h, indent)

proc wrapStartIndent*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_wrapStartIndent(self.h)

proc setWrapIndentMode*(self: gen_ScintillaEdit_types.ScintillaEdit, wrapIndentMode: miqt_intptr_t): void =

  fcScintillaEdit_setWrapIndentMode(self.h, wrapIndentMode)

proc wrapIndentMode*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_wrapIndentMode(self.h)

proc setLayoutCache*(self: gen_ScintillaEdit_types.ScintillaEdit, cacheMode: miqt_intptr_t): void =

  fcScintillaEdit_setLayoutCache(self.h, cacheMode)

proc layoutCache*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_layoutCache(self.h)

proc setScrollWidth*(self: gen_ScintillaEdit_types.ScintillaEdit, pixelWidth: miqt_intptr_t): void =

  fcScintillaEdit_setScrollWidth(self.h, pixelWidth)

proc scrollWidth*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_scrollWidth(self.h)

proc setScrollWidthTracking*(self: gen_ScintillaEdit_types.ScintillaEdit, tracking: bool): void =

  fcScintillaEdit_setScrollWidthTracking(self.h, tracking)

proc scrollWidthTracking*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_scrollWidthTracking(self.h)

proc textWidth*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t, text: cstring): miqt_intptr_t =

  fcScintillaEdit_textWidth(self.h, style, text)

proc setEndAtLastLine*(self: gen_ScintillaEdit_types.ScintillaEdit, endAtLastLine: bool): void =

  fcScintillaEdit_setEndAtLastLine(self.h, endAtLastLine)

proc endAtLastLine*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_endAtLastLine(self.h)

proc textHeight*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_textHeight(self.h, line)

proc setVScrollBar*(self: gen_ScintillaEdit_types.ScintillaEdit, visible: bool): void =

  fcScintillaEdit_setVScrollBar(self.h, visible)

proc vScrollBar*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_vScrollBar(self.h)

proc appendText*(self: gen_ScintillaEdit_types.ScintillaEdit, length: miqt_intptr_t, text: cstring): void =

  fcScintillaEdit_appendText(self.h, length, text)

proc phasesDraw*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_phasesDraw(self.h)

proc setPhasesDraw*(self: gen_ScintillaEdit_types.ScintillaEdit, phases: miqt_intptr_t): void =

  fcScintillaEdit_setPhasesDraw(self.h, phases)

proc setFontQuality*(self: gen_ScintillaEdit_types.ScintillaEdit, fontQuality: miqt_intptr_t): void =

  fcScintillaEdit_setFontQuality(self.h, fontQuality)

proc fontQuality*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_fontQuality(self.h)

proc setFirstVisibleLine*(self: gen_ScintillaEdit_types.ScintillaEdit, displayLine: miqt_intptr_t): void =

  fcScintillaEdit_setFirstVisibleLine(self.h, displayLine)

proc setMultiPaste*(self: gen_ScintillaEdit_types.ScintillaEdit, multiPaste: miqt_intptr_t): void =

  fcScintillaEdit_setMultiPaste(self.h, multiPaste)

proc multiPaste*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_multiPaste(self.h)

proc tag*(self: gen_ScintillaEdit_types.ScintillaEdit, tagNumber: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_tag(self.h, tagNumber)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc linesJoin*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_linesJoin(self.h)

proc linesSplit*(self: gen_ScintillaEdit_types.ScintillaEdit, pixelWidth: miqt_intptr_t): void =

  fcScintillaEdit_linesSplit(self.h, pixelWidth)

proc setFoldMarginColour*(self: gen_ScintillaEdit_types.ScintillaEdit, useSetting: bool, back: miqt_intptr_t): void =

  fcScintillaEdit_setFoldMarginColour(self.h, useSetting, back)

proc setFoldMarginHiColour*(self: gen_ScintillaEdit_types.ScintillaEdit, useSetting: bool, fore: miqt_intptr_t): void =

  fcScintillaEdit_setFoldMarginHiColour(self.h, useSetting, fore)

proc setAccessibility*(self: gen_ScintillaEdit_types.ScintillaEdit, accessibility: miqt_intptr_t): void =

  fcScintillaEdit_setAccessibility(self.h, accessibility)

proc accessibility*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_accessibility(self.h)

proc lineDown*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_lineDown(self.h)

proc lineDownExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_lineDownExtend(self.h)

proc lineUp*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_lineUp(self.h)

proc lineUpExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_lineUpExtend(self.h)

proc charLeft*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_charLeft(self.h)

proc charLeftExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_charLeftExtend(self.h)

proc charRight*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_charRight(self.h)

proc charRightExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_charRightExtend(self.h)

proc wordLeft*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_wordLeft(self.h)

proc wordLeftExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_wordLeftExtend(self.h)

proc wordRight*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_wordRight(self.h)

proc wordRightExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_wordRightExtend(self.h)

proc home*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_home(self.h)

proc homeExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_homeExtend(self.h)

proc lineEnd*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_lineEnd(self.h)

proc lineEndExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_lineEndExtend(self.h)

proc documentStart*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_documentStart(self.h)

proc documentStartExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_documentStartExtend(self.h)

proc documentEnd*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_documentEnd(self.h)

proc documentEndExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_documentEndExtend(self.h)

proc pageUp*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_pageUp(self.h)

proc pageUpExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_pageUpExtend(self.h)

proc pageDown*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_pageDown(self.h)

proc pageDownExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_pageDownExtend(self.h)

proc editToggleOvertype*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_editToggleOvertype(self.h)

proc cancel*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_cancel(self.h)

proc deleteBack*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_deleteBack(self.h)

proc tab*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_tab(self.h)

proc lineIndent*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_lineIndent(self.h)

proc backTab*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_backTab(self.h)

proc lineDedent*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_lineDedent(self.h)

proc newLine*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_newLine(self.h)

proc formFeed*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_formFeed(self.h)

proc vCHome*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_vCHome(self.h)

proc vCHomeExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_vCHomeExtend(self.h)

proc zoomIn*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_zoomIn(self.h)

proc zoomOut*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_zoomOut(self.h)

proc delWordLeft*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_delWordLeft(self.h)

proc delWordRight*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_delWordRight(self.h)

proc delWordRightEnd*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_delWordRightEnd(self.h)

proc lineCut*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_lineCut(self.h)

proc lineDelete*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_lineDelete(self.h)

proc lineTranspose*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_lineTranspose(self.h)

proc lineReverse*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_lineReverse(self.h)

proc lineDuplicate*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_lineDuplicate(self.h)

proc lowerCase*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_lowerCase(self.h)

proc upperCase*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_upperCase(self.h)

proc lineScrollDown*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_lineScrollDown(self.h)

proc lineScrollUp*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_lineScrollUp(self.h)

proc deleteBackNotLine*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_deleteBackNotLine(self.h)

proc homeDisplay*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_homeDisplay(self.h)

proc homeDisplayExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_homeDisplayExtend(self.h)

proc lineEndDisplay*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_lineEndDisplay(self.h)

proc lineEndDisplayExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_lineEndDisplayExtend(self.h)

proc homeWrap*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_homeWrap(self.h)

proc homeWrapExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_homeWrapExtend(self.h)

proc lineEndWrap*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_lineEndWrap(self.h)

proc lineEndWrapExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_lineEndWrapExtend(self.h)

proc vCHomeWrap*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_vCHomeWrap(self.h)

proc vCHomeWrapExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_vCHomeWrapExtend(self.h)

proc lineCopy*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_lineCopy(self.h)

proc moveCaretInsideView*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_moveCaretInsideView(self.h)

proc lineLength*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_lineLength(self.h, line)

proc braceHighlight*(self: gen_ScintillaEdit_types.ScintillaEdit, posA: miqt_intptr_t, posB: miqt_intptr_t): void =

  fcScintillaEdit_braceHighlight(self.h, posA, posB)

proc braceHighlightIndicator*(self: gen_ScintillaEdit_types.ScintillaEdit, useSetting: bool, indicator: miqt_intptr_t): void =

  fcScintillaEdit_braceHighlightIndicator(self.h, useSetting, indicator)

proc braceBadLight*(self: gen_ScintillaEdit_types.ScintillaEdit, pos: miqt_intptr_t): void =

  fcScintillaEdit_braceBadLight(self.h, pos)

proc braceBadLightIndicator*(self: gen_ScintillaEdit_types.ScintillaEdit, useSetting: bool, indicator: miqt_intptr_t): void =

  fcScintillaEdit_braceBadLightIndicator(self.h, useSetting, indicator)

proc braceMatch*(self: gen_ScintillaEdit_types.ScintillaEdit, pos: miqt_intptr_t, maxReStyle: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_braceMatch(self.h, pos, maxReStyle)

proc braceMatchNext*(self: gen_ScintillaEdit_types.ScintillaEdit, pos: miqt_intptr_t, startPos: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_braceMatchNext(self.h, pos, startPos)

proc viewEOL*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_viewEOL(self.h)

proc setViewEOL*(self: gen_ScintillaEdit_types.ScintillaEdit, visible: bool): void =

  fcScintillaEdit_setViewEOL(self.h, visible)

proc docPointer*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_docPointer(self.h)

proc setDocPointer*(self: gen_ScintillaEdit_types.ScintillaEdit, doc: miqt_intptr_t): void =

  fcScintillaEdit_setDocPointer(self.h, doc)

proc setModEventMask*(self: gen_ScintillaEdit_types.ScintillaEdit, eventMask: miqt_intptr_t): void =

  fcScintillaEdit_setModEventMask(self.h, eventMask)

proc edgeColumn*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_edgeColumn(self.h)

proc setEdgeColumn*(self: gen_ScintillaEdit_types.ScintillaEdit, column: miqt_intptr_t): void =

  fcScintillaEdit_setEdgeColumn(self.h, column)

proc edgeMode*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_edgeMode(self.h)

proc setEdgeMode*(self: gen_ScintillaEdit_types.ScintillaEdit, edgeMode: miqt_intptr_t): void =

  fcScintillaEdit_setEdgeMode(self.h, edgeMode)

proc edgeColour*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_edgeColour(self.h)

proc setEdgeColour*(self: gen_ScintillaEdit_types.ScintillaEdit, edgeColour: miqt_intptr_t): void =

  fcScintillaEdit_setEdgeColour(self.h, edgeColour)

proc multiEdgeAddLine*(self: gen_ScintillaEdit_types.ScintillaEdit, column: miqt_intptr_t, edgeColour: miqt_intptr_t): void =

  fcScintillaEdit_multiEdgeAddLine(self.h, column, edgeColour)

proc multiEdgeClearAll*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_multiEdgeClearAll(self.h)

proc multiEdgeColumn*(self: gen_ScintillaEdit_types.ScintillaEdit, which: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_multiEdgeColumn(self.h, which)

proc searchAnchor*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_searchAnchor(self.h)

proc searchNext*(self: gen_ScintillaEdit_types.ScintillaEdit, searchFlags: miqt_intptr_t, text: cstring): miqt_intptr_t =

  fcScintillaEdit_searchNext(self.h, searchFlags, text)

proc searchPrev*(self: gen_ScintillaEdit_types.ScintillaEdit, searchFlags: miqt_intptr_t, text: cstring): miqt_intptr_t =

  fcScintillaEdit_searchPrev(self.h, searchFlags, text)

proc linesOnScreen*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_linesOnScreen(self.h)

proc usePopUp*(self: gen_ScintillaEdit_types.ScintillaEdit, popUpMode: miqt_intptr_t): void =

  fcScintillaEdit_usePopUp(self.h, popUpMode)

proc selectionIsRectangle*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_selectionIsRectangle(self.h)

proc setZoom*(self: gen_ScintillaEdit_types.ScintillaEdit, zoomInPoints: miqt_intptr_t): void =

  fcScintillaEdit_setZoom(self.h, zoomInPoints)

proc zoom*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_zoom(self.h)

proc createDocument*(self: gen_ScintillaEdit_types.ScintillaEdit, bytes: miqt_intptr_t, documentOptions: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_createDocument(self.h, bytes, documentOptions)

proc addRefDocument*(self: gen_ScintillaEdit_types.ScintillaEdit, doc: miqt_intptr_t): void =

  fcScintillaEdit_addRefDocument(self.h, doc)

proc releaseDocument*(self: gen_ScintillaEdit_types.ScintillaEdit, doc: miqt_intptr_t): void =

  fcScintillaEdit_releaseDocument(self.h, doc)

proc documentOptions*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_documentOptions(self.h)

proc modEventMask*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_modEventMask(self.h)

proc setCommandEvents*(self: gen_ScintillaEdit_types.ScintillaEdit, commandEvents: bool): void =

  fcScintillaEdit_setCommandEvents(self.h, commandEvents)

proc commandEvents*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_commandEvents(self.h)

proc setFocus*(self: gen_ScintillaEdit_types.ScintillaEdit, focus: bool): void =

  fcScintillaEdit_setFocus(self.h, focus)

proc focus*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_focus(self.h)

proc setStatus*(self: gen_ScintillaEdit_types.ScintillaEdit, status: miqt_intptr_t): void =

  fcScintillaEdit_setStatus(self.h, status)

proc status*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_status(self.h)

proc setMouseDownCaptures*(self: gen_ScintillaEdit_types.ScintillaEdit, captures: bool): void =

  fcScintillaEdit_setMouseDownCaptures(self.h, captures)

proc mouseDownCaptures*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_mouseDownCaptures(self.h)

proc setMouseWheelCaptures*(self: gen_ScintillaEdit_types.ScintillaEdit, captures: bool): void =

  fcScintillaEdit_setMouseWheelCaptures(self.h, captures)

proc mouseWheelCaptures*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_mouseWheelCaptures(self.h)

proc setCursor*(self: gen_ScintillaEdit_types.ScintillaEdit, cursorType: miqt_intptr_t): void =

  fcScintillaEdit_setCursor(self.h, cursorType)

proc cursor*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_cursor(self.h)

proc setControlCharSymbol*(self: gen_ScintillaEdit_types.ScintillaEdit, symbol: miqt_intptr_t): void =

  fcScintillaEdit_setControlCharSymbol(self.h, symbol)

proc controlCharSymbol*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_controlCharSymbol(self.h)

proc wordPartLeft*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_wordPartLeft(self.h)

proc wordPartLeftExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_wordPartLeftExtend(self.h)

proc wordPartRight*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_wordPartRight(self.h)

proc wordPartRightExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_wordPartRightExtend(self.h)

proc setVisiblePolicy*(self: gen_ScintillaEdit_types.ScintillaEdit, visiblePolicy: miqt_intptr_t, visibleSlop: miqt_intptr_t): void =

  fcScintillaEdit_setVisiblePolicy(self.h, visiblePolicy, visibleSlop)

proc delLineLeft*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_delLineLeft(self.h)

proc delLineRight*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_delLineRight(self.h)

proc setXOffset*(self: gen_ScintillaEdit_types.ScintillaEdit, xOffset: miqt_intptr_t): void =

  fcScintillaEdit_setXOffset(self.h, xOffset)

proc xOffset*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_xOffset(self.h)

proc chooseCaretX*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_chooseCaretX(self.h)

proc grabFocus*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_grabFocus(self.h)

proc setXCaretPolicy*(self: gen_ScintillaEdit_types.ScintillaEdit, caretPolicy: miqt_intptr_t, caretSlop: miqt_intptr_t): void =

  fcScintillaEdit_setXCaretPolicy(self.h, caretPolicy, caretSlop)

proc setYCaretPolicy*(self: gen_ScintillaEdit_types.ScintillaEdit, caretPolicy: miqt_intptr_t, caretSlop: miqt_intptr_t): void =

  fcScintillaEdit_setYCaretPolicy(self.h, caretPolicy, caretSlop)

proc setPrintWrapMode*(self: gen_ScintillaEdit_types.ScintillaEdit, wrapMode: miqt_intptr_t): void =

  fcScintillaEdit_setPrintWrapMode(self.h, wrapMode)

proc printWrapMode*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_printWrapMode(self.h)

proc setHotspotActiveFore*(self: gen_ScintillaEdit_types.ScintillaEdit, useSetting: bool, fore: miqt_intptr_t): void =

  fcScintillaEdit_setHotspotActiveFore(self.h, useSetting, fore)

proc hotspotActiveFore*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_hotspotActiveFore(self.h)

proc setHotspotActiveBack*(self: gen_ScintillaEdit_types.ScintillaEdit, useSetting: bool, back: miqt_intptr_t): void =

  fcScintillaEdit_setHotspotActiveBack(self.h, useSetting, back)

proc hotspotActiveBack*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_hotspotActiveBack(self.h)

proc setHotspotActiveUnderline*(self: gen_ScintillaEdit_types.ScintillaEdit, underline: bool): void =

  fcScintillaEdit_setHotspotActiveUnderline(self.h, underline)

proc hotspotActiveUnderline*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_hotspotActiveUnderline(self.h)

proc setHotspotSingleLine*(self: gen_ScintillaEdit_types.ScintillaEdit, singleLine: bool): void =

  fcScintillaEdit_setHotspotSingleLine(self.h, singleLine)

proc hotspotSingleLine*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_hotspotSingleLine(self.h)

proc paraDown*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_paraDown(self.h)

proc paraDownExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_paraDownExtend(self.h)

proc paraUp*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_paraUp(self.h)

proc paraUpExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_paraUpExtend(self.h)

proc positionBefore*(self: gen_ScintillaEdit_types.ScintillaEdit, pos: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_positionBefore(self.h, pos)

proc positionAfter*(self: gen_ScintillaEdit_types.ScintillaEdit, pos: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_positionAfter(self.h, pos)

proc positionRelative*(self: gen_ScintillaEdit_types.ScintillaEdit, pos: miqt_intptr_t, relative: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_positionRelative(self.h, pos, relative)

proc positionRelativeCodeUnits*(self: gen_ScintillaEdit_types.ScintillaEdit, pos: miqt_intptr_t, relative: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_positionRelativeCodeUnits(self.h, pos, relative)

proc copyRange*(self: gen_ScintillaEdit_types.ScintillaEdit, start: miqt_intptr_t, endVal: miqt_intptr_t): void =

  fcScintillaEdit_copyRange(self.h, start, endVal)

proc copyText*(self: gen_ScintillaEdit_types.ScintillaEdit, length: miqt_intptr_t, text: cstring): void =

  fcScintillaEdit_copyText(self.h, length, text)

proc setSelectionMode*(self: gen_ScintillaEdit_types.ScintillaEdit, selectionMode: miqt_intptr_t): void =

  fcScintillaEdit_setSelectionMode(self.h, selectionMode)

proc changeSelectionMode*(self: gen_ScintillaEdit_types.ScintillaEdit, selectionMode: miqt_intptr_t): void =

  fcScintillaEdit_changeSelectionMode(self.h, selectionMode)

proc selectionMode*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_selectionMode(self.h)

proc setMoveExtendsSelection*(self: gen_ScintillaEdit_types.ScintillaEdit, moveExtendsSelection: bool): void =

  fcScintillaEdit_setMoveExtendsSelection(self.h, moveExtendsSelection)

proc moveExtendsSelection*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_moveExtendsSelection(self.h)

proc getLineSelStartPosition*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_getLineSelStartPosition(self.h, line)

proc getLineSelEndPosition*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_getLineSelEndPosition(self.h, line)

proc lineDownRectExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_lineDownRectExtend(self.h)

proc lineUpRectExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_lineUpRectExtend(self.h)

proc charLeftRectExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_charLeftRectExtend(self.h)

proc charRightRectExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_charRightRectExtend(self.h)

proc homeRectExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_homeRectExtend(self.h)

proc vCHomeRectExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_vCHomeRectExtend(self.h)

proc lineEndRectExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_lineEndRectExtend(self.h)

proc pageUpRectExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_pageUpRectExtend(self.h)

proc pageDownRectExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_pageDownRectExtend(self.h)

proc stutteredPageUp*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_stutteredPageUp(self.h)

proc stutteredPageUpExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_stutteredPageUpExtend(self.h)

proc stutteredPageDown*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_stutteredPageDown(self.h)

proc stutteredPageDownExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_stutteredPageDownExtend(self.h)

proc wordLeftEnd*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_wordLeftEnd(self.h)

proc wordLeftEndExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_wordLeftEndExtend(self.h)

proc wordRightEnd*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_wordRightEnd(self.h)

proc wordRightEndExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_wordRightEndExtend(self.h)

proc setWhitespaceChars*(self: gen_ScintillaEdit_types.ScintillaEdit, characters: cstring): void =

  fcScintillaEdit_setWhitespaceChars(self.h, characters)

proc whitespaceChars*(self: gen_ScintillaEdit_types.ScintillaEdit, ): seq[byte] =

  var v_bytearray = fcScintillaEdit_whitespaceChars(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setPunctuationChars*(self: gen_ScintillaEdit_types.ScintillaEdit, characters: cstring): void =

  fcScintillaEdit_setPunctuationChars(self.h, characters)

proc punctuationChars*(self: gen_ScintillaEdit_types.ScintillaEdit, ): seq[byte] =

  var v_bytearray = fcScintillaEdit_punctuationChars(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setCharsDefault*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_setCharsDefault(self.h)

proc autoCCurrent*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_autoCCurrent(self.h)

proc autoCCurrentText*(self: gen_ScintillaEdit_types.ScintillaEdit, ): seq[byte] =

  var v_bytearray = fcScintillaEdit_autoCCurrentText(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc autoCSetCaseInsensitiveBehaviour*(self: gen_ScintillaEdit_types.ScintillaEdit, behaviour: miqt_intptr_t): void =

  fcScintillaEdit_autoCSetCaseInsensitiveBehaviour(self.h, behaviour)

proc autoCCaseInsensitiveBehaviour*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_autoCCaseInsensitiveBehaviour(self.h)

proc autoCSetMulti*(self: gen_ScintillaEdit_types.ScintillaEdit, multi: miqt_intptr_t): void =

  fcScintillaEdit_autoCSetMulti(self.h, multi)

proc autoCMulti*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_autoCMulti(self.h)

proc autoCSetOrder*(self: gen_ScintillaEdit_types.ScintillaEdit, order: miqt_intptr_t): void =

  fcScintillaEdit_autoCSetOrder(self.h, order)

proc autoCOrder*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_autoCOrder(self.h)

proc allocate*(self: gen_ScintillaEdit_types.ScintillaEdit, bytes: miqt_intptr_t): void =

  fcScintillaEdit_allocate(self.h, bytes)

proc targetAsUTF8*(self: gen_ScintillaEdit_types.ScintillaEdit, ): seq[byte] =

  var v_bytearray = fcScintillaEdit_targetAsUTF8(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setLengthForEncode*(self: gen_ScintillaEdit_types.ScintillaEdit, bytes: miqt_intptr_t): void =

  fcScintillaEdit_setLengthForEncode(self.h, bytes)

proc encodedFromUTF8*(self: gen_ScintillaEdit_types.ScintillaEdit, utf8: cstring): seq[byte] =

  var v_bytearray = fcScintillaEdit_encodedFromUTF8(self.h, utf8)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc findColumn*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t, column: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_findColumn(self.h, line, column)

proc caretSticky*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_caretSticky(self.h)

proc setCaretSticky*(self: gen_ScintillaEdit_types.ScintillaEdit, useCaretStickyBehaviour: miqt_intptr_t): void =

  fcScintillaEdit_setCaretSticky(self.h, useCaretStickyBehaviour)

proc toggleCaretSticky*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_toggleCaretSticky(self.h)

proc setPasteConvertEndings*(self: gen_ScintillaEdit_types.ScintillaEdit, convert: bool): void =

  fcScintillaEdit_setPasteConvertEndings(self.h, convert)

proc pasteConvertEndings*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_pasteConvertEndings(self.h)

proc replaceRectangular*(self: gen_ScintillaEdit_types.ScintillaEdit, length: miqt_intptr_t, text: cstring): void =

  fcScintillaEdit_replaceRectangular(self.h, length, text)

proc selectionDuplicate*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_selectionDuplicate(self.h)

proc setCaretLineBackAlpha*(self: gen_ScintillaEdit_types.ScintillaEdit, alpha: miqt_intptr_t): void =

  fcScintillaEdit_setCaretLineBackAlpha(self.h, alpha)

proc caretLineBackAlpha*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_caretLineBackAlpha(self.h)

proc setCaretStyle*(self: gen_ScintillaEdit_types.ScintillaEdit, caretStyle: miqt_intptr_t): void =

  fcScintillaEdit_setCaretStyle(self.h, caretStyle)

proc caretStyle*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_caretStyle(self.h)

proc setIndicatorCurrent*(self: gen_ScintillaEdit_types.ScintillaEdit, indicator: miqt_intptr_t): void =

  fcScintillaEdit_setIndicatorCurrent(self.h, indicator)

proc indicatorCurrent*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_indicatorCurrent(self.h)

proc setIndicatorValue*(self: gen_ScintillaEdit_types.ScintillaEdit, value: miqt_intptr_t): void =

  fcScintillaEdit_setIndicatorValue(self.h, value)

proc indicatorValue*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_indicatorValue(self.h)

proc indicatorFillRange*(self: gen_ScintillaEdit_types.ScintillaEdit, start: miqt_intptr_t, lengthFill: miqt_intptr_t): void =

  fcScintillaEdit_indicatorFillRange(self.h, start, lengthFill)

proc indicatorClearRange*(self: gen_ScintillaEdit_types.ScintillaEdit, start: miqt_intptr_t, lengthClear: miqt_intptr_t): void =

  fcScintillaEdit_indicatorClearRange(self.h, start, lengthClear)

proc indicatorAllOnFor*(self: gen_ScintillaEdit_types.ScintillaEdit, pos: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_indicatorAllOnFor(self.h, pos)

proc indicatorValueAt*(self: gen_ScintillaEdit_types.ScintillaEdit, indicator: miqt_intptr_t, pos: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_indicatorValueAt(self.h, indicator, pos)

proc indicatorStart*(self: gen_ScintillaEdit_types.ScintillaEdit, indicator: miqt_intptr_t, pos: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_indicatorStart(self.h, indicator, pos)

proc indicatorEnd*(self: gen_ScintillaEdit_types.ScintillaEdit, indicator: miqt_intptr_t, pos: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_indicatorEnd(self.h, indicator, pos)

proc setPositionCache*(self: gen_ScintillaEdit_types.ScintillaEdit, size: miqt_intptr_t): void =

  fcScintillaEdit_setPositionCache(self.h, size)

proc positionCache*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_positionCache(self.h)

proc setLayoutThreads*(self: gen_ScintillaEdit_types.ScintillaEdit, threads: miqt_intptr_t): void =

  fcScintillaEdit_setLayoutThreads(self.h, threads)

proc layoutThreads*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_layoutThreads(self.h)

proc copyAllowLine*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_copyAllowLine(self.h)

proc cutAllowLine*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_cutAllowLine(self.h)

proc setCopySeparator*(self: gen_ScintillaEdit_types.ScintillaEdit, separator: cstring): void =

  fcScintillaEdit_setCopySeparator(self.h, separator)

proc copySeparator*(self: gen_ScintillaEdit_types.ScintillaEdit, ): seq[byte] =

  var v_bytearray = fcScintillaEdit_copySeparator(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc characterPointer*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_characterPointer(self.h)

proc rangePointer*(self: gen_ScintillaEdit_types.ScintillaEdit, start: miqt_intptr_t, lengthRange: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_rangePointer(self.h, start, lengthRange)

proc gapPosition*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_gapPosition(self.h)

proc indicSetAlpha*(self: gen_ScintillaEdit_types.ScintillaEdit, indicator: miqt_intptr_t, alpha: miqt_intptr_t): void =

  fcScintillaEdit_indicSetAlpha(self.h, indicator, alpha)

proc indicAlpha*(self: gen_ScintillaEdit_types.ScintillaEdit, indicator: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_indicAlpha(self.h, indicator)

proc indicSetOutlineAlpha*(self: gen_ScintillaEdit_types.ScintillaEdit, indicator: miqt_intptr_t, alpha: miqt_intptr_t): void =

  fcScintillaEdit_indicSetOutlineAlpha(self.h, indicator, alpha)

proc indicOutlineAlpha*(self: gen_ScintillaEdit_types.ScintillaEdit, indicator: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_indicOutlineAlpha(self.h, indicator)

proc setExtraAscent*(self: gen_ScintillaEdit_types.ScintillaEdit, extraAscent: miqt_intptr_t): void =

  fcScintillaEdit_setExtraAscent(self.h, extraAscent)

proc extraAscent*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_extraAscent(self.h)

proc setExtraDescent*(self: gen_ScintillaEdit_types.ScintillaEdit, extraDescent: miqt_intptr_t): void =

  fcScintillaEdit_setExtraDescent(self.h, extraDescent)

proc extraDescent*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_extraDescent(self.h)

proc markerSymbolDefined*(self: gen_ScintillaEdit_types.ScintillaEdit, markerNumber: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_markerSymbolDefined(self.h, markerNumber)

proc marginSetText*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t, text: cstring): void =

  fcScintillaEdit_marginSetText(self.h, line, text)

proc marginText*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_marginText(self.h, line)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc marginSetStyle*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t, style: miqt_intptr_t): void =

  fcScintillaEdit_marginSetStyle(self.h, line, style)

proc marginStyle*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_marginStyle(self.h, line)

proc marginSetStyles*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t, styles: cstring): void =

  fcScintillaEdit_marginSetStyles(self.h, line, styles)

proc marginStyles*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_marginStyles(self.h, line)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc marginTextClearAll*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_marginTextClearAll(self.h)

proc marginSetStyleOffset*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t): void =

  fcScintillaEdit_marginSetStyleOffset(self.h, style)

proc marginStyleOffset*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_marginStyleOffset(self.h)

proc setMarginOptions*(self: gen_ScintillaEdit_types.ScintillaEdit, marginOptions: miqt_intptr_t): void =

  fcScintillaEdit_setMarginOptions(self.h, marginOptions)

proc marginOptions*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_marginOptions(self.h)

proc annotationSetText*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t, text: cstring): void =

  fcScintillaEdit_annotationSetText(self.h, line, text)

proc annotationText*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_annotationText(self.h, line)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc annotationSetStyle*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t, style: miqt_intptr_t): void =

  fcScintillaEdit_annotationSetStyle(self.h, line, style)

proc annotationStyle*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_annotationStyle(self.h, line)

proc annotationSetStyles*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t, styles: cstring): void =

  fcScintillaEdit_annotationSetStyles(self.h, line, styles)

proc annotationStyles*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_annotationStyles(self.h, line)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc annotationLines*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_annotationLines(self.h, line)

proc annotationClearAll*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_annotationClearAll(self.h)

proc annotationSetVisible*(self: gen_ScintillaEdit_types.ScintillaEdit, visible: miqt_intptr_t): void =

  fcScintillaEdit_annotationSetVisible(self.h, visible)

proc annotationVisible*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_annotationVisible(self.h)

proc annotationSetStyleOffset*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t): void =

  fcScintillaEdit_annotationSetStyleOffset(self.h, style)

proc annotationStyleOffset*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_annotationStyleOffset(self.h)

proc releaseAllExtendedStyles*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_releaseAllExtendedStyles(self.h)

proc allocateExtendedStyles*(self: gen_ScintillaEdit_types.ScintillaEdit, numberStyles: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_allocateExtendedStyles(self.h, numberStyles)

proc addUndoAction*(self: gen_ScintillaEdit_types.ScintillaEdit, token: miqt_intptr_t, flags: miqt_intptr_t): void =

  fcScintillaEdit_addUndoAction(self.h, token, flags)

proc charPositionFromPoint*(self: gen_ScintillaEdit_types.ScintillaEdit, x: miqt_intptr_t, y: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_charPositionFromPoint(self.h, x, y)

proc charPositionFromPointClose*(self: gen_ScintillaEdit_types.ScintillaEdit, x: miqt_intptr_t, y: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_charPositionFromPointClose(self.h, x, y)

proc setMouseSelectionRectangularSwitch*(self: gen_ScintillaEdit_types.ScintillaEdit, mouseSelectionRectangularSwitch: bool): void =

  fcScintillaEdit_setMouseSelectionRectangularSwitch(self.h, mouseSelectionRectangularSwitch)

proc mouseSelectionRectangularSwitch*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_mouseSelectionRectangularSwitch(self.h)

proc setMultipleSelection*(self: gen_ScintillaEdit_types.ScintillaEdit, multipleSelection: bool): void =

  fcScintillaEdit_setMultipleSelection(self.h, multipleSelection)

proc multipleSelection*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_multipleSelection(self.h)

proc setAdditionalSelectionTyping*(self: gen_ScintillaEdit_types.ScintillaEdit, additionalSelectionTyping: bool): void =

  fcScintillaEdit_setAdditionalSelectionTyping(self.h, additionalSelectionTyping)

proc additionalSelectionTyping*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_additionalSelectionTyping(self.h)

proc setAdditionalCaretsBlink*(self: gen_ScintillaEdit_types.ScintillaEdit, additionalCaretsBlink: bool): void =

  fcScintillaEdit_setAdditionalCaretsBlink(self.h, additionalCaretsBlink)

proc additionalCaretsBlink*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_additionalCaretsBlink(self.h)

proc setAdditionalCaretsVisible*(self: gen_ScintillaEdit_types.ScintillaEdit, additionalCaretsVisible: bool): void =

  fcScintillaEdit_setAdditionalCaretsVisible(self.h, additionalCaretsVisible)

proc additionalCaretsVisible*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_additionalCaretsVisible(self.h)

proc selections*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_selections(self.h)

proc selectionEmpty*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_selectionEmpty(self.h)

proc clearSelections*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_clearSelections(self.h)

proc setSelection*(self: gen_ScintillaEdit_types.ScintillaEdit, caret: miqt_intptr_t, anchor: miqt_intptr_t): void =

  fcScintillaEdit_setSelection(self.h, caret, anchor)

proc addSelection*(self: gen_ScintillaEdit_types.ScintillaEdit, caret: miqt_intptr_t, anchor: miqt_intptr_t): void =

  fcScintillaEdit_addSelection(self.h, caret, anchor)

proc selectionFromPoint*(self: gen_ScintillaEdit_types.ScintillaEdit, x: miqt_intptr_t, y: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_selectionFromPoint(self.h, x, y)

proc dropSelectionN*(self: gen_ScintillaEdit_types.ScintillaEdit, selection: miqt_intptr_t): void =

  fcScintillaEdit_dropSelectionN(self.h, selection)

proc setMainSelection*(self: gen_ScintillaEdit_types.ScintillaEdit, selection: miqt_intptr_t): void =

  fcScintillaEdit_setMainSelection(self.h, selection)

proc mainSelection*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_mainSelection(self.h)

proc setSelectionNCaret*(self: gen_ScintillaEdit_types.ScintillaEdit, selection: miqt_intptr_t, caret: miqt_intptr_t): void =

  fcScintillaEdit_setSelectionNCaret(self.h, selection, caret)

proc selectionNCaret*(self: gen_ScintillaEdit_types.ScintillaEdit, selection: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_selectionNCaret(self.h, selection)

proc setSelectionNAnchor*(self: gen_ScintillaEdit_types.ScintillaEdit, selection: miqt_intptr_t, anchor: miqt_intptr_t): void =

  fcScintillaEdit_setSelectionNAnchor(self.h, selection, anchor)

proc selectionNAnchor*(self: gen_ScintillaEdit_types.ScintillaEdit, selection: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_selectionNAnchor(self.h, selection)

proc setSelectionNCaretVirtualSpace*(self: gen_ScintillaEdit_types.ScintillaEdit, selection: miqt_intptr_t, space: miqt_intptr_t): void =

  fcScintillaEdit_setSelectionNCaretVirtualSpace(self.h, selection, space)

proc selectionNCaretVirtualSpace*(self: gen_ScintillaEdit_types.ScintillaEdit, selection: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_selectionNCaretVirtualSpace(self.h, selection)

proc setSelectionNAnchorVirtualSpace*(self: gen_ScintillaEdit_types.ScintillaEdit, selection: miqt_intptr_t, space: miqt_intptr_t): void =

  fcScintillaEdit_setSelectionNAnchorVirtualSpace(self.h, selection, space)

proc selectionNAnchorVirtualSpace*(self: gen_ScintillaEdit_types.ScintillaEdit, selection: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_selectionNAnchorVirtualSpace(self.h, selection)

proc setSelectionNStart*(self: gen_ScintillaEdit_types.ScintillaEdit, selection: miqt_intptr_t, anchor: miqt_intptr_t): void =

  fcScintillaEdit_setSelectionNStart(self.h, selection, anchor)

proc selectionNStart*(self: gen_ScintillaEdit_types.ScintillaEdit, selection: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_selectionNStart(self.h, selection)

proc selectionNStartVirtualSpace*(self: gen_ScintillaEdit_types.ScintillaEdit, selection: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_selectionNStartVirtualSpace(self.h, selection)

proc setSelectionNEnd*(self: gen_ScintillaEdit_types.ScintillaEdit, selection: miqt_intptr_t, caret: miqt_intptr_t): void =

  fcScintillaEdit_setSelectionNEnd(self.h, selection, caret)

proc selectionNEndVirtualSpace*(self: gen_ScintillaEdit_types.ScintillaEdit, selection: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_selectionNEndVirtualSpace(self.h, selection)

proc selectionNEnd*(self: gen_ScintillaEdit_types.ScintillaEdit, selection: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_selectionNEnd(self.h, selection)

proc setRectangularSelectionCaret*(self: gen_ScintillaEdit_types.ScintillaEdit, caret: miqt_intptr_t): void =

  fcScintillaEdit_setRectangularSelectionCaret(self.h, caret)

proc rectangularSelectionCaret*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_rectangularSelectionCaret(self.h)

proc setRectangularSelectionAnchor*(self: gen_ScintillaEdit_types.ScintillaEdit, anchor: miqt_intptr_t): void =

  fcScintillaEdit_setRectangularSelectionAnchor(self.h, anchor)

proc rectangularSelectionAnchor*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_rectangularSelectionAnchor(self.h)

proc setRectangularSelectionCaretVirtualSpace*(self: gen_ScintillaEdit_types.ScintillaEdit, space: miqt_intptr_t): void =

  fcScintillaEdit_setRectangularSelectionCaretVirtualSpace(self.h, space)

proc rectangularSelectionCaretVirtualSpace*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_rectangularSelectionCaretVirtualSpace(self.h)

proc setRectangularSelectionAnchorVirtualSpace*(self: gen_ScintillaEdit_types.ScintillaEdit, space: miqt_intptr_t): void =

  fcScintillaEdit_setRectangularSelectionAnchorVirtualSpace(self.h, space)

proc rectangularSelectionAnchorVirtualSpace*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_rectangularSelectionAnchorVirtualSpace(self.h)

proc setVirtualSpaceOptions*(self: gen_ScintillaEdit_types.ScintillaEdit, virtualSpaceOptions: miqt_intptr_t): void =

  fcScintillaEdit_setVirtualSpaceOptions(self.h, virtualSpaceOptions)

proc virtualSpaceOptions*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_virtualSpaceOptions(self.h)

proc setRectangularSelectionModifier*(self: gen_ScintillaEdit_types.ScintillaEdit, modifier: miqt_intptr_t): void =

  fcScintillaEdit_setRectangularSelectionModifier(self.h, modifier)

proc rectangularSelectionModifier*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_rectangularSelectionModifier(self.h)

proc setAdditionalSelFore*(self: gen_ScintillaEdit_types.ScintillaEdit, fore: miqt_intptr_t): void =

  fcScintillaEdit_setAdditionalSelFore(self.h, fore)

proc setAdditionalSelBack*(self: gen_ScintillaEdit_types.ScintillaEdit, back: miqt_intptr_t): void =

  fcScintillaEdit_setAdditionalSelBack(self.h, back)

proc setAdditionalSelAlpha*(self: gen_ScintillaEdit_types.ScintillaEdit, alpha: miqt_intptr_t): void =

  fcScintillaEdit_setAdditionalSelAlpha(self.h, alpha)

proc additionalSelAlpha*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_additionalSelAlpha(self.h)

proc setAdditionalCaretFore*(self: gen_ScintillaEdit_types.ScintillaEdit, fore: miqt_intptr_t): void =

  fcScintillaEdit_setAdditionalCaretFore(self.h, fore)

proc additionalCaretFore*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_additionalCaretFore(self.h)

proc rotateSelection*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_rotateSelection(self.h)

proc swapMainAnchorCaret*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_swapMainAnchorCaret(self.h)

proc multipleSelectAddNext*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_multipleSelectAddNext(self.h)

proc multipleSelectAddEach*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_multipleSelectAddEach(self.h)

proc changeLexerState*(self: gen_ScintillaEdit_types.ScintillaEdit, start: miqt_intptr_t, endVal: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_changeLexerState(self.h, start, endVal)

proc contractedFoldNext*(self: gen_ScintillaEdit_types.ScintillaEdit, lineStart: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_contractedFoldNext(self.h, lineStart)

proc verticalCentreCaret*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_verticalCentreCaret(self.h)

proc moveSelectedLinesUp*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_moveSelectedLinesUp(self.h)

proc moveSelectedLinesDown*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_moveSelectedLinesDown(self.h)

proc setIdentifier*(self: gen_ScintillaEdit_types.ScintillaEdit, identifier: miqt_intptr_t): void =

  fcScintillaEdit_setIdentifier(self.h, identifier)

proc identifier*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_identifier(self.h)

proc rGBAImageSetWidth*(self: gen_ScintillaEdit_types.ScintillaEdit, width: miqt_intptr_t): void =

  fcScintillaEdit_rGBAImageSetWidth(self.h, width)

proc rGBAImageSetHeight*(self: gen_ScintillaEdit_types.ScintillaEdit, height: miqt_intptr_t): void =

  fcScintillaEdit_rGBAImageSetHeight(self.h, height)

proc rGBAImageSetScale*(self: gen_ScintillaEdit_types.ScintillaEdit, scalePercent: miqt_intptr_t): void =

  fcScintillaEdit_rGBAImageSetScale(self.h, scalePercent)

proc markerDefineRGBAImage*(self: gen_ScintillaEdit_types.ScintillaEdit, markerNumber: miqt_intptr_t, pixels: cstring): void =

  fcScintillaEdit_markerDefineRGBAImage(self.h, markerNumber, pixels)

proc registerRGBAImage*(self: gen_ScintillaEdit_types.ScintillaEdit, typeVal: miqt_intptr_t, pixels: cstring): void =

  fcScintillaEdit_registerRGBAImage(self.h, typeVal, pixels)

proc scrollToStart*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_scrollToStart(self.h)

proc scrollToEnd*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_scrollToEnd(self.h)

proc setTechnology*(self: gen_ScintillaEdit_types.ScintillaEdit, technology: miqt_intptr_t): void =

  fcScintillaEdit_setTechnology(self.h, technology)

proc technology*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_technology(self.h)

proc createLoader*(self: gen_ScintillaEdit_types.ScintillaEdit, bytes: miqt_intptr_t, documentOptions: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_createLoader(self.h, bytes, documentOptions)

proc findIndicatorShow*(self: gen_ScintillaEdit_types.ScintillaEdit, start: miqt_intptr_t, endVal: miqt_intptr_t): void =

  fcScintillaEdit_findIndicatorShow(self.h, start, endVal)

proc findIndicatorFlash*(self: gen_ScintillaEdit_types.ScintillaEdit, start: miqt_intptr_t, endVal: miqt_intptr_t): void =

  fcScintillaEdit_findIndicatorFlash(self.h, start, endVal)

proc findIndicatorHide*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_findIndicatorHide(self.h)

proc vCHomeDisplay*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_vCHomeDisplay(self.h)

proc vCHomeDisplayExtend*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_vCHomeDisplayExtend(self.h)

proc caretLineVisibleAlways*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fcScintillaEdit_caretLineVisibleAlways(self.h)

proc setCaretLineVisibleAlways*(self: gen_ScintillaEdit_types.ScintillaEdit, alwaysVisible: bool): void =

  fcScintillaEdit_setCaretLineVisibleAlways(self.h, alwaysVisible)

proc setLineEndTypesAllowed*(self: gen_ScintillaEdit_types.ScintillaEdit, lineEndBitSet: miqt_intptr_t): void =

  fcScintillaEdit_setLineEndTypesAllowed(self.h, lineEndBitSet)

proc lineEndTypesAllowed*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_lineEndTypesAllowed(self.h)

proc lineEndTypesActive*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_lineEndTypesActive(self.h)

proc setRepresentation*(self: gen_ScintillaEdit_types.ScintillaEdit, encodedCharacter: cstring, representation: cstring): void =

  fcScintillaEdit_setRepresentation(self.h, encodedCharacter, representation)

proc representation*(self: gen_ScintillaEdit_types.ScintillaEdit, encodedCharacter: cstring): seq[byte] =

  var v_bytearray = fcScintillaEdit_representation(self.h, encodedCharacter)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc clearRepresentation*(self: gen_ScintillaEdit_types.ScintillaEdit, encodedCharacter: cstring): void =

  fcScintillaEdit_clearRepresentation(self.h, encodedCharacter)

proc clearAllRepresentations*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_clearAllRepresentations(self.h)

proc setRepresentationAppearance*(self: gen_ScintillaEdit_types.ScintillaEdit, encodedCharacter: cstring, appearance: miqt_intptr_t): void =

  fcScintillaEdit_setRepresentationAppearance(self.h, encodedCharacter, appearance)

proc representationAppearance*(self: gen_ScintillaEdit_types.ScintillaEdit, encodedCharacter: cstring): miqt_intptr_t =

  fcScintillaEdit_representationAppearance(self.h, encodedCharacter)

proc setRepresentationColour*(self: gen_ScintillaEdit_types.ScintillaEdit, encodedCharacter: cstring, colour: miqt_intptr_t): void =

  fcScintillaEdit_setRepresentationColour(self.h, encodedCharacter, colour)

proc representationColour*(self: gen_ScintillaEdit_types.ScintillaEdit, encodedCharacter: cstring): miqt_intptr_t =

  fcScintillaEdit_representationColour(self.h, encodedCharacter)

proc eOLAnnotationSetText*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t, text: cstring): void =

  fcScintillaEdit_eOLAnnotationSetText(self.h, line, text)

proc eOLAnnotationText*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_eOLAnnotationText(self.h, line)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc eOLAnnotationSetStyle*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t, style: miqt_intptr_t): void =

  fcScintillaEdit_eOLAnnotationSetStyle(self.h, line, style)

proc eOLAnnotationStyle*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_eOLAnnotationStyle(self.h, line)

proc eOLAnnotationClearAll*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_eOLAnnotationClearAll(self.h)

proc eOLAnnotationSetVisible*(self: gen_ScintillaEdit_types.ScintillaEdit, visible: miqt_intptr_t): void =

  fcScintillaEdit_eOLAnnotationSetVisible(self.h, visible)

proc eOLAnnotationVisible*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_eOLAnnotationVisible(self.h)

proc eOLAnnotationSetStyleOffset*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t): void =

  fcScintillaEdit_eOLAnnotationSetStyleOffset(self.h, style)

proc eOLAnnotationStyleOffset*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_eOLAnnotationStyleOffset(self.h)

proc supportsFeature*(self: gen_ScintillaEdit_types.ScintillaEdit, feature: miqt_intptr_t): bool =

  fcScintillaEdit_supportsFeature(self.h, feature)

proc lineCharacterIndex*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_lineCharacterIndex(self.h)

proc allocateLineCharacterIndex*(self: gen_ScintillaEdit_types.ScintillaEdit, lineCharacterIndex: miqt_intptr_t): void =

  fcScintillaEdit_allocateLineCharacterIndex(self.h, lineCharacterIndex)

proc releaseLineCharacterIndex*(self: gen_ScintillaEdit_types.ScintillaEdit, lineCharacterIndex: miqt_intptr_t): void =

  fcScintillaEdit_releaseLineCharacterIndex(self.h, lineCharacterIndex)

proc lineFromIndexPosition*(self: gen_ScintillaEdit_types.ScintillaEdit, pos: miqt_intptr_t, lineCharacterIndex: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_lineFromIndexPosition(self.h, pos, lineCharacterIndex)

proc indexPositionFromLine*(self: gen_ScintillaEdit_types.ScintillaEdit, line: miqt_intptr_t, lineCharacterIndex: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_indexPositionFromLine(self.h, line, lineCharacterIndex)

proc startRecord*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_startRecord(self.h)

proc stopRecord*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_stopRecord(self.h)

proc lexer*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_lexer(self.h)

proc colourise*(self: gen_ScintillaEdit_types.ScintillaEdit, start: miqt_intptr_t, endVal: miqt_intptr_t): void =

  fcScintillaEdit_colourise(self.h, start, endVal)

proc setProperty*(self: gen_ScintillaEdit_types.ScintillaEdit, key: cstring, value: cstring): void =

  fcScintillaEdit_setProperty(self.h, key, value)

proc setKeyWords*(self: gen_ScintillaEdit_types.ScintillaEdit, keyWordSet: miqt_intptr_t, keyWords: cstring): void =

  fcScintillaEdit_setKeyWords(self.h, keyWordSet, keyWords)

proc property*(self: gen_ScintillaEdit_types.ScintillaEdit, key: cstring): seq[byte] =

  var v_bytearray = fcScintillaEdit_property(self.h, key)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc propertyExpanded*(self: gen_ScintillaEdit_types.ScintillaEdit, key: cstring): seq[byte] =

  var v_bytearray = fcScintillaEdit_propertyExpanded(self.h, key)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc propertyInt*(self: gen_ScintillaEdit_types.ScintillaEdit, key: cstring, defaultValue: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_propertyInt(self.h, key, defaultValue)

proc lexerLanguage*(self: gen_ScintillaEdit_types.ScintillaEdit, ): seq[byte] =

  var v_bytearray = fcScintillaEdit_lexerLanguage(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc privateLexerCall*(self: gen_ScintillaEdit_types.ScintillaEdit, operation: miqt_intptr_t, pointer: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_privateLexerCall(self.h, operation, pointer)

proc propertyNames*(self: gen_ScintillaEdit_types.ScintillaEdit, ): seq[byte] =

  var v_bytearray = fcScintillaEdit_propertyNames(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc propertyType*(self: gen_ScintillaEdit_types.ScintillaEdit, name: cstring): miqt_intptr_t =

  fcScintillaEdit_propertyType(self.h, name)

proc describeProperty*(self: gen_ScintillaEdit_types.ScintillaEdit, name: cstring): seq[byte] =

  var v_bytearray = fcScintillaEdit_describeProperty(self.h, name)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc describeKeyWordSets*(self: gen_ScintillaEdit_types.ScintillaEdit, ): seq[byte] =

  var v_bytearray = fcScintillaEdit_describeKeyWordSets(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc lineEndTypesSupported*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_lineEndTypesSupported(self.h)

proc allocateSubStyles*(self: gen_ScintillaEdit_types.ScintillaEdit, styleBase: miqt_intptr_t, numberStyles: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_allocateSubStyles(self.h, styleBase, numberStyles)

proc subStylesStart*(self: gen_ScintillaEdit_types.ScintillaEdit, styleBase: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_subStylesStart(self.h, styleBase)

proc subStylesLength*(self: gen_ScintillaEdit_types.ScintillaEdit, styleBase: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_subStylesLength(self.h, styleBase)

proc styleFromSubStyle*(self: gen_ScintillaEdit_types.ScintillaEdit, subStyle: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_styleFromSubStyle(self.h, subStyle)

proc primaryStyleFromStyle*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_primaryStyleFromStyle(self.h, style)

proc freeSubStyles*(self: gen_ScintillaEdit_types.ScintillaEdit, ): void =

  fcScintillaEdit_freeSubStyles(self.h)

proc setIdentifiers*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t, identifiers: cstring): void =

  fcScintillaEdit_setIdentifiers(self.h, style, identifiers)

proc distanceToSecondaryStyles*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_distanceToSecondaryStyles(self.h)

proc subStyleBases*(self: gen_ScintillaEdit_types.ScintillaEdit, ): seq[byte] =

  var v_bytearray = fcScintillaEdit_subStyleBases(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc namedStyles*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_namedStyles(self.h)

proc nameOfStyle*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_nameOfStyle(self.h, style)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc tagsOfStyle*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_tagsOfStyle(self.h, style)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc descriptionOfStyle*(self: gen_ScintillaEdit_types.ScintillaEdit, style: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_descriptionOfStyle(self.h, style)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setILexer*(self: gen_ScintillaEdit_types.ScintillaEdit, ilexer: miqt_intptr_t): void =

  fcScintillaEdit_setILexer(self.h, ilexer)

proc bidirectional*(self: gen_ScintillaEdit_types.ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_bidirectional(self.h)

proc setBidirectional*(self: gen_ScintillaEdit_types.ScintillaEdit, bidirectional: miqt_intptr_t): void =

  fcScintillaEdit_setBidirectional(self.h, bidirectional)

proc tr2*(_: type gen_ScintillaEdit_types.ScintillaEdit, s: cstring, c: cstring): string =

  let v_ms = fcScintillaEdit_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_ScintillaEdit_types.ScintillaEdit, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcScintillaEdit_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type gen_ScintillaEdit_types.ScintillaEdit, s: cstring, c: cstring): string =

  let v_ms = fcScintillaEdit_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type gen_ScintillaEdit_types.ScintillaEdit, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcScintillaEdit_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc ScintillaEditmetaObject*(self: gen_ScintillaEdit_types.ScintillaEdit, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fScintillaEdit_virtualbase_metaObject(self.h))

type ScintillaEditmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditmetaObjectProc) =
  # TODO check subclass
  var tmp = new ScintillaEditmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_metaObject(self: ptr cScintillaEdit, slot: int): pointer {.exportc: "miqt_exec_callback_ScintillaEdit_metaObject ".} =
  var nimfunc = cast[ptr ScintillaEditmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc ScintillaEditmetacast*(self: gen_ScintillaEdit_types.ScintillaEdit, param1: cstring): pointer =

  fScintillaEdit_virtualbase_metacast(self.h, param1)

type ScintillaEditmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditmetacastProc) =
  # TODO check subclass
  var tmp = new ScintillaEditmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_metacast(self: ptr cScintillaEdit, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_ScintillaEdit_metacast ".} =
  var nimfunc = cast[ptr ScintillaEditmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc ScintillaEditmetacall*(self: gen_ScintillaEdit_types.ScintillaEdit, param1: cint, param2: cint, param3: pointer): cint =

  fScintillaEdit_virtualbase_metacall(self.h, cint(param1), param2, param3)

type ScintillaEditmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditmetacallProc) =
  # TODO check subclass
  var tmp = new ScintillaEditmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_metacall(self: ptr cScintillaEdit, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_ScintillaEdit_metacall ".} =
  var nimfunc = cast[ptr ScintillaEditmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc ScintillaEditsend*(self: gen_ScintillaEdit_types.ScintillaEdit, iMessage: cuint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): miqt_intptr_t =

  fScintillaEdit_virtualbase_send(self.h, iMessage, wParam, lParam)

type ScintillaEditsendProc* = proc(iMessage: cuint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): miqt_intptr_t
proc onsend*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditsendProc) =
  # TODO check subclass
  var tmp = new ScintillaEditsendProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_send(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_send(self: ptr cScintillaEdit, slot: int, iMessage: cuint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): miqt_intptr_t {.exportc: "miqt_exec_callback_ScintillaEdit_send ".} =
  var nimfunc = cast[ptr ScintillaEditsendProc](cast[pointer](slot))
  let slotval1 = iMessage

  let slotval2 = wParam

  let slotval3 = lParam


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc ScintillaEditsends*(self: gen_ScintillaEdit_types.ScintillaEdit, iMessage: cuint, wParam: miqt_uintptr_t, s: cstring): miqt_intptr_t =

  fScintillaEdit_virtualbase_sends(self.h, iMessage, wParam, s)

type ScintillaEditsendsProc* = proc(iMessage: cuint, wParam: miqt_uintptr_t, s: cstring): miqt_intptr_t
proc onsends*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditsendsProc) =
  # TODO check subclass
  var tmp = new ScintillaEditsendsProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_sends(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_sends(self: ptr cScintillaEdit, slot: int, iMessage: cuint, wParam: miqt_uintptr_t, s: cstring): miqt_intptr_t {.exportc: "miqt_exec_callback_ScintillaEdit_sends ".} =
  var nimfunc = cast[ptr ScintillaEditsendsProc](cast[pointer](slot))
  let slotval1 = iMessage

  let slotval2 = wParam

  let slotval3 = (s)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc ScintillaEditevent*(self: gen_ScintillaEdit_types.ScintillaEdit, event: gen_qcoreevent.QEvent): bool =

  fScintillaEdit_virtualbase_event(self.h, event.h)

type ScintillaEditeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditeventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_event(self: ptr cScintillaEdit, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_ScintillaEdit_event ".} =
  var nimfunc = cast[ptr ScintillaEditeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc ScintillaEditpaintEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, event: gen_qevent.QPaintEvent): void =

  fScintillaEdit_virtualbase_paintEvent(self.h, event.h)

type ScintillaEditpaintEventProc* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditpaintEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_paintEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_paintEvent ".} =
  var nimfunc = cast[ptr ScintillaEditpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditwheelEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, event: gen_qevent.QWheelEvent): void =

  fScintillaEdit_virtualbase_wheelEvent(self.h, event.h)

type ScintillaEditwheelEventProc* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditwheelEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_wheelEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_wheelEvent ".} =
  var nimfunc = cast[ptr ScintillaEditwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditfocusInEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, event: gen_qevent.QFocusEvent): void =

  fScintillaEdit_virtualbase_focusInEvent(self.h, event.h)

type ScintillaEditfocusInEventProc* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditfocusInEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_focusInEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_focusInEvent ".} =
  var nimfunc = cast[ptr ScintillaEditfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditfocusOutEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, event: gen_qevent.QFocusEvent): void =

  fScintillaEdit_virtualbase_focusOutEvent(self.h, event.h)

type ScintillaEditfocusOutEventProc* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditfocusOutEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_focusOutEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_focusOutEvent ".} =
  var nimfunc = cast[ptr ScintillaEditfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditresizeEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, event: gen_qevent.QResizeEvent): void =

  fScintillaEdit_virtualbase_resizeEvent(self.h, event.h)

type ScintillaEditresizeEventProc* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditresizeEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_resizeEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_resizeEvent ".} =
  var nimfunc = cast[ptr ScintillaEditresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditkeyPressEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, event: gen_qevent.QKeyEvent): void =

  fScintillaEdit_virtualbase_keyPressEvent(self.h, event.h)

type ScintillaEditkeyPressEventProc* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditkeyPressEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_keyPressEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_keyPressEvent ".} =
  var nimfunc = cast[ptr ScintillaEditkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditmousePressEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, event: gen_qevent.QMouseEvent): void =

  fScintillaEdit_virtualbase_mousePressEvent(self.h, event.h)

type ScintillaEditmousePressEventProc* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditmousePressEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_mousePressEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_mousePressEvent ".} =
  var nimfunc = cast[ptr ScintillaEditmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditmouseReleaseEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, event: gen_qevent.QMouseEvent): void =

  fScintillaEdit_virtualbase_mouseReleaseEvent(self.h, event.h)

type ScintillaEditmouseReleaseEventProc* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_mouseReleaseEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr ScintillaEditmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditmouseDoubleClickEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, event: gen_qevent.QMouseEvent): void =

  fScintillaEdit_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type ScintillaEditmouseDoubleClickEventProc* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_mouseDoubleClickEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr ScintillaEditmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditmouseMoveEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, event: gen_qevent.QMouseEvent): void =

  fScintillaEdit_virtualbase_mouseMoveEvent(self.h, event.h)

type ScintillaEditmouseMoveEventProc* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_mouseMoveEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_mouseMoveEvent ".} =
  var nimfunc = cast[ptr ScintillaEditmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditcontextMenuEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, event: gen_qevent.QContextMenuEvent): void =

  fScintillaEdit_virtualbase_contextMenuEvent(self.h, event.h)

type ScintillaEditcontextMenuEventProc* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_contextMenuEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_contextMenuEvent ".} =
  var nimfunc = cast[ptr ScintillaEditcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditdragEnterEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, event: gen_qevent.QDragEnterEvent): void =

  fScintillaEdit_virtualbase_dragEnterEvent(self.h, event.h)

type ScintillaEditdragEnterEventProc* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditdragEnterEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_dragEnterEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_dragEnterEvent ".} =
  var nimfunc = cast[ptr ScintillaEditdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditdragLeaveEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, event: gen_qevent.QDragLeaveEvent): void =

  fScintillaEdit_virtualbase_dragLeaveEvent(self.h, event.h)

type ScintillaEditdragLeaveEventProc* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_dragLeaveEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_dragLeaveEvent ".} =
  var nimfunc = cast[ptr ScintillaEditdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditdragMoveEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, event: gen_qevent.QDragMoveEvent): void =

  fScintillaEdit_virtualbase_dragMoveEvent(self.h, event.h)

type ScintillaEditdragMoveEventProc* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditdragMoveEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_dragMoveEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_dragMoveEvent ".} =
  var nimfunc = cast[ptr ScintillaEditdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditdropEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, event: gen_qevent.QDropEvent): void =

  fScintillaEdit_virtualbase_dropEvent(self.h, event.h)

type ScintillaEditdropEventProc* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditdropEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_dropEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_dropEvent ".} =
  var nimfunc = cast[ptr ScintillaEditdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditinputMethodEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, event: gen_qevent.QInputMethodEvent): void =

  fScintillaEdit_virtualbase_inputMethodEvent(self.h, event.h)

type ScintillaEditinputMethodEventProc* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditinputMethodEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_inputMethodEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_inputMethodEvent ".} =
  var nimfunc = cast[ptr ScintillaEditinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditinputMethodQuery*(self: gen_ScintillaEdit_types.ScintillaEdit, query: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fScintillaEdit_virtualbase_inputMethodQuery(self.h, cint(query)))

type ScintillaEditinputMethodQueryProc* = proc(query: cint): gen_qvariant.QVariant
proc oninputMethodQuery*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new ScintillaEditinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_inputMethodQuery(self: ptr cScintillaEdit, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_ScintillaEdit_inputMethodQuery ".} =
  var nimfunc = cast[ptr ScintillaEditinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(query)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc ScintillaEditscrollContentsBy*(self: gen_ScintillaEdit_types.ScintillaEdit, param1: cint, param2: cint): void =

  fScintillaEdit_virtualbase_scrollContentsBy(self.h, param1, param2)

type ScintillaEditscrollContentsByProc* = proc(param1: cint, param2: cint): void
proc onscrollContentsBy*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditscrollContentsByProc) =
  # TODO check subclass
  var tmp = new ScintillaEditscrollContentsByProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_scrollContentsBy(self: ptr cScintillaEdit, slot: int, param1: cint, param2: cint): void {.exportc: "miqt_exec_callback_ScintillaEdit_scrollContentsBy ".} =
  var nimfunc = cast[ptr ScintillaEditscrollContentsByProc](cast[pointer](slot))
  let slotval1 = param1

  let slotval2 = param2


  nimfunc[](slotval1, slotval2)
proc ScintillaEditminimumSizeHint*(self: gen_ScintillaEdit_types.ScintillaEdit, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fScintillaEdit_virtualbase_minimumSizeHint(self.h))

type ScintillaEditminimumSizeHintProc* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new ScintillaEditminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_minimumSizeHint(self: ptr cScintillaEdit, slot: int): pointer {.exportc: "miqt_exec_callback_ScintillaEdit_minimumSizeHint ".} =
  var nimfunc = cast[ptr ScintillaEditminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc ScintillaEditsizeHint*(self: gen_ScintillaEdit_types.ScintillaEdit, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fScintillaEdit_virtualbase_sizeHint(self.h))

type ScintillaEditsizeHintProc* = proc(): gen_qsize.QSize
proc onsizeHint*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditsizeHintProc) =
  # TODO check subclass
  var tmp = new ScintillaEditsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_sizeHint(self: ptr cScintillaEdit, slot: int): pointer {.exportc: "miqt_exec_callback_ScintillaEdit_sizeHint ".} =
  var nimfunc = cast[ptr ScintillaEditsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc ScintillaEditsetupViewport*(self: gen_ScintillaEdit_types.ScintillaEdit, viewport: gen_qwidget.QWidget): void =

  fScintillaEdit_virtualbase_setupViewport(self.h, viewport.h)

type ScintillaEditsetupViewportProc* = proc(viewport: gen_qwidget.QWidget): void
proc onsetupViewport*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditsetupViewportProc) =
  # TODO check subclass
  var tmp = new ScintillaEditsetupViewportProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_setupViewport(self: ptr cScintillaEdit, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_setupViewport ".} =
  var nimfunc = cast[ptr ScintillaEditsetupViewportProc](cast[pointer](slot))
  let slotval1 = gen_qwidget.QWidget(h: viewport)


  nimfunc[](slotval1)
proc ScintillaEditeventFilter*(self: gen_ScintillaEdit_types.ScintillaEdit, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =

  fScintillaEdit_virtualbase_eventFilter(self.h, param1.h, param2.h)

type ScintillaEditeventFilterProc* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditeventFilterProc) =
  # TODO check subclass
  var tmp = new ScintillaEditeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_eventFilter(self: ptr cScintillaEdit, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_ScintillaEdit_eventFilter ".} =
  var nimfunc = cast[ptr ScintillaEditeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc ScintillaEditviewportEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, param1: gen_qcoreevent.QEvent): bool =

  fScintillaEdit_virtualbase_viewportEvent(self.h, param1.h)

type ScintillaEditviewportEventProc* = proc(param1: gen_qcoreevent.QEvent): bool
proc onviewportEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditviewportEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditviewportEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_viewportEvent(self: ptr cScintillaEdit, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_ScintillaEdit_viewportEvent ".} =
  var nimfunc = cast[ptr ScintillaEditviewportEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc ScintillaEditviewportSizeHint*(self: gen_ScintillaEdit_types.ScintillaEdit, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fScintillaEdit_virtualbase_viewportSizeHint(self.h))

type ScintillaEditviewportSizeHintProc* = proc(): gen_qsize.QSize
proc onviewportSizeHint*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditviewportSizeHintProc) =
  # TODO check subclass
  var tmp = new ScintillaEditviewportSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_viewportSizeHint(self: ptr cScintillaEdit, slot: int): pointer {.exportc: "miqt_exec_callback_ScintillaEdit_viewportSizeHint ".} =
  var nimfunc = cast[ptr ScintillaEditviewportSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc ScintillaEditchangeEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, param1: gen_qcoreevent.QEvent): void =

  fScintillaEdit_virtualbase_changeEvent(self.h, param1.h)

type ScintillaEditchangeEventProc* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditchangeEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_changeEvent(self: ptr cScintillaEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_changeEvent ".} =
  var nimfunc = cast[ptr ScintillaEditchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](slotval1)
proc ScintillaEditdevType*(self: gen_ScintillaEdit_types.ScintillaEdit, ): cint =

  fScintillaEdit_virtualbase_devType(self.h)

type ScintillaEditdevTypeProc* = proc(): cint
proc ondevType*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditdevTypeProc) =
  # TODO check subclass
  var tmp = new ScintillaEditdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_devType(self: ptr cScintillaEdit, slot: int): cint {.exportc: "miqt_exec_callback_ScintillaEdit_devType ".} =
  var nimfunc = cast[ptr ScintillaEditdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc ScintillaEditsetVisible*(self: gen_ScintillaEdit_types.ScintillaEdit, visible: bool): void =

  fScintillaEdit_virtualbase_setVisible(self.h, visible)

type ScintillaEditsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditsetVisibleProc) =
  # TODO check subclass
  var tmp = new ScintillaEditsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_setVisible(self: ptr cScintillaEdit, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_ScintillaEdit_setVisible ".} =
  var nimfunc = cast[ptr ScintillaEditsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc ScintillaEditheightForWidth*(self: gen_ScintillaEdit_types.ScintillaEdit, param1: cint): cint =

  fScintillaEdit_virtualbase_heightForWidth(self.h, param1)

type ScintillaEditheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditheightForWidthProc) =
  # TODO check subclass
  var tmp = new ScintillaEditheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_heightForWidth(self: ptr cScintillaEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_ScintillaEdit_heightForWidth ".} =
  var nimfunc = cast[ptr ScintillaEditheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc ScintillaEdithasHeightForWidth*(self: gen_ScintillaEdit_types.ScintillaEdit, ): bool =

  fScintillaEdit_virtualbase_hasHeightForWidth(self.h)

type ScintillaEdithasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEdithasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new ScintillaEdithasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_hasHeightForWidth(self: ptr cScintillaEdit, slot: int): bool {.exportc: "miqt_exec_callback_ScintillaEdit_hasHeightForWidth ".} =
  var nimfunc = cast[ptr ScintillaEdithasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc ScintillaEditpaintEngine*(self: gen_ScintillaEdit_types.ScintillaEdit, ): gen_qpaintengine.QPaintEngine =

  gen_qpaintengine.QPaintEngine(h: fScintillaEdit_virtualbase_paintEngine(self.h))

type ScintillaEditpaintEngineProc* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditpaintEngineProc) =
  # TODO check subclass
  var tmp = new ScintillaEditpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_paintEngine(self: ptr cScintillaEdit, slot: int): pointer {.exportc: "miqt_exec_callback_ScintillaEdit_paintEngine ".} =
  var nimfunc = cast[ptr ScintillaEditpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc ScintillaEditkeyReleaseEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, event: gen_qevent.QKeyEvent): void =

  fScintillaEdit_virtualbase_keyReleaseEvent(self.h, event.h)

type ScintillaEditkeyReleaseEventProc* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_keyReleaseEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_keyReleaseEvent ".} =
  var nimfunc = cast[ptr ScintillaEditkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditenterEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, event: gen_qcoreevent.QEvent): void =

  fScintillaEdit_virtualbase_enterEvent(self.h, event.h)

type ScintillaEditenterEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditenterEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_enterEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_enterEvent ".} =
  var nimfunc = cast[ptr ScintillaEditenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditleaveEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, event: gen_qcoreevent.QEvent): void =

  fScintillaEdit_virtualbase_leaveEvent(self.h, event.h)

type ScintillaEditleaveEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditleaveEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_leaveEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_leaveEvent ".} =
  var nimfunc = cast[ptr ScintillaEditleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditmoveEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, event: gen_qevent.QMoveEvent): void =

  fScintillaEdit_virtualbase_moveEvent(self.h, event.h)

type ScintillaEditmoveEventProc* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditmoveEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_moveEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_moveEvent ".} =
  var nimfunc = cast[ptr ScintillaEditmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditcloseEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, event: gen_qevent.QCloseEvent): void =

  fScintillaEdit_virtualbase_closeEvent(self.h, event.h)

type ScintillaEditcloseEventProc* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditcloseEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_closeEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_closeEvent ".} =
  var nimfunc = cast[ptr ScintillaEditcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEdittabletEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, event: gen_qevent.QTabletEvent): void =

  fScintillaEdit_virtualbase_tabletEvent(self.h, event.h)

type ScintillaEdittabletEventProc* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEdittabletEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEdittabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_tabletEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_tabletEvent ".} =
  var nimfunc = cast[ptr ScintillaEdittabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditactionEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, event: gen_qevent.QActionEvent): void =

  fScintillaEdit_virtualbase_actionEvent(self.h, event.h)

type ScintillaEditactionEventProc* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditactionEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_actionEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_actionEvent ".} =
  var nimfunc = cast[ptr ScintillaEditactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditshowEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, event: gen_qevent.QShowEvent): void =

  fScintillaEdit_virtualbase_showEvent(self.h, event.h)

type ScintillaEditshowEventProc* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditshowEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_showEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_showEvent ".} =
  var nimfunc = cast[ptr ScintillaEditshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEdithideEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, event: gen_qevent.QHideEvent): void =

  fScintillaEdit_virtualbase_hideEvent(self.h, event.h)

type ScintillaEdithideEventProc* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEdithideEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEdithideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_hideEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_hideEvent ".} =
  var nimfunc = cast[ptr ScintillaEdithideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditnativeEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =

  fScintillaEdit_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type ScintillaEditnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditnativeEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_nativeEvent(self: ptr cScintillaEdit, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_ScintillaEdit_nativeEvent ".} =
  var nimfunc = cast[ptr ScintillaEditnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc ScintillaEditmetric*(self: gen_ScintillaEdit_types.ScintillaEdit, param1: cint): cint =

  fScintillaEdit_virtualbase_metric(self.h, cint(param1))

type ScintillaEditmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditmetricProc) =
  # TODO check subclass
  var tmp = new ScintillaEditmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_metric(self: ptr cScintillaEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_ScintillaEdit_metric ".} =
  var nimfunc = cast[ptr ScintillaEditmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc ScintillaEditinitPainter*(self: gen_ScintillaEdit_types.ScintillaEdit, painter: gen_qpainter.QPainter): void =

  fScintillaEdit_virtualbase_initPainter(self.h, painter.h)

type ScintillaEditinitPainterProc* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditinitPainterProc) =
  # TODO check subclass
  var tmp = new ScintillaEditinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_initPainter(self: ptr cScintillaEdit, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_initPainter ".} =
  var nimfunc = cast[ptr ScintillaEditinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](slotval1)
proc ScintillaEditredirected*(self: gen_ScintillaEdit_types.ScintillaEdit, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =

  gen_qpaintdevice.QPaintDevice(h: fScintillaEdit_virtualbase_redirected(self.h, offset.h))

type ScintillaEditredirectedProc* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditredirectedProc) =
  # TODO check subclass
  var tmp = new ScintillaEditredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_redirected(self: ptr cScintillaEdit, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_ScintillaEdit_redirected ".} =
  var nimfunc = cast[ptr ScintillaEditredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc ScintillaEditsharedPainter*(self: gen_ScintillaEdit_types.ScintillaEdit, ): gen_qpainter.QPainter =

  gen_qpainter.QPainter(h: fScintillaEdit_virtualbase_sharedPainter(self.h))

type ScintillaEditsharedPainterProc* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditsharedPainterProc) =
  # TODO check subclass
  var tmp = new ScintillaEditsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_sharedPainter(self: ptr cScintillaEdit, slot: int): pointer {.exportc: "miqt_exec_callback_ScintillaEdit_sharedPainter ".} =
  var nimfunc = cast[ptr ScintillaEditsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc ScintillaEditfocusNextPrevChild*(self: gen_ScintillaEdit_types.ScintillaEdit, next: bool): bool =

  fScintillaEdit_virtualbase_focusNextPrevChild(self.h, next)

type ScintillaEditfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new ScintillaEditfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_focusNextPrevChild(self: ptr cScintillaEdit, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_ScintillaEdit_focusNextPrevChild ".} =
  var nimfunc = cast[ptr ScintillaEditfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc ScintillaEdittimerEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, event: gen_qcoreevent.QTimerEvent): void =

  fScintillaEdit_virtualbase_timerEvent(self.h, event.h)

type ScintillaEdittimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEdittimerEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEdittimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_timerEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_timerEvent ".} =
  var nimfunc = cast[ptr ScintillaEdittimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditchildEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, event: gen_qcoreevent.QChildEvent): void =

  fScintillaEdit_virtualbase_childEvent(self.h, event.h)

type ScintillaEditchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditchildEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_childEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_childEvent ".} =
  var nimfunc = cast[ptr ScintillaEditchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditcustomEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, event: gen_qcoreevent.QEvent): void =

  fScintillaEdit_virtualbase_customEvent(self.h, event.h)

type ScintillaEditcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditcustomEventProc) =
  # TODO check subclass
  var tmp = new ScintillaEditcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_customEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_customEvent ".} =
  var nimfunc = cast[ptr ScintillaEditcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc ScintillaEditconnectNotify*(self: gen_ScintillaEdit_types.ScintillaEdit, signal: gen_qmetaobject.QMetaMethod): void =

  fScintillaEdit_virtualbase_connectNotify(self.h, signal.h)

type ScintillaEditconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditconnectNotifyProc) =
  # TODO check subclass
  var tmp = new ScintillaEditconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_connectNotify(self: ptr cScintillaEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_connectNotify ".} =
  var nimfunc = cast[ptr ScintillaEditconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc ScintillaEditdisconnectNotify*(self: gen_ScintillaEdit_types.ScintillaEdit, signal: gen_qmetaobject.QMetaMethod): void =

  fScintillaEdit_virtualbase_disconnectNotify(self.h, signal.h)

type ScintillaEditdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_ScintillaEdit_types.ScintillaEdit, slot: ScintillaEditdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new ScintillaEditdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_disconnectNotify(self: ptr cScintillaEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_disconnectNotify ".} =
  var nimfunc = cast[ptr ScintillaEditdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_ScintillaEdit_types.ScintillaEdit): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcScintillaEdit_staticMetaObject())
proc delete*(self: gen_ScintillaEdit_types.ScintillaEdit) =
  fcScintillaEdit_delete(self.h)
