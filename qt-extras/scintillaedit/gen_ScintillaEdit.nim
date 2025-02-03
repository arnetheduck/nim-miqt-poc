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


type stdpointer_safety* = cint
const
  Stdrelaxed* = 0
  Stdpreferred* = 1
  Stdstrict* = 2



type ScintillaInternalEdge* = cint
const
  ScintillaInternalleft* = 0
  ScintillaInternaltop* = 1
  ScintillaInternalbottom* = 2
  ScintillaInternalright* = 3



type ScintillaWhiteSpace* = cint
const
  ScintillaWhiteSpaceInvisible* = 0
  ScintillaWhiteSpaceVisibleAlways* = 1
  ScintillaWhiteSpaceVisibleAfterIndent* = 2
  ScintillaWhiteSpaceVisibleOnlyInIndent* = 3



type ScintillaTabDrawMode* = cint
const
  ScintillaLongArrow* = 0
  ScintillaStrikeOut* = 1



type ScintillaEndOfLine* = cint
const
  ScintillaCrLf* = 0
  ScintillaCr* = 1
  ScintillaLf* = 2



type ScintillaIMEInteraction* = cint
const
  ScintillaWindowed* = 0
  ScintillaInline* = 1



type ScintillaAlpha* = cint
const
  ScintillaTransparent* = 0
  ScintillaOpaque* = 255
  ScintillaNoAlpha* = 256



type ScintillaCursorShape* = cint
const
  ScintillaCursorShapeNormal* = -1
  ScintillaCursorShapeArrow* = 2
  ScintillaCursorShapeWait* = 4
  ScintillaCursorShapeReverseArrow* = 7



type ScintillaMarkerSymbol* = cint
const
  ScintillaMarkerSymbolCircle* = 0
  ScintillaMarkerSymbolRoundRect* = 1
  ScintillaMarkerSymbolArrow* = 2
  ScintillaMarkerSymbolSmallRect* = 3
  ScintillaMarkerSymbolShortArrow* = 4
  ScintillaMarkerSymbolEmpty* = 5
  ScintillaMarkerSymbolArrowDown* = 6
  ScintillaMarkerSymbolMinus* = 7
  ScintillaMarkerSymbolPlus* = 8
  ScintillaMarkerSymbolVLine* = 9
  ScintillaMarkerSymbolLCorner* = 10
  ScintillaMarkerSymbolTCorner* = 11
  ScintillaMarkerSymbolBoxPlus* = 12
  ScintillaMarkerSymbolBoxPlusConnected* = 13
  ScintillaMarkerSymbolBoxMinus* = 14
  ScintillaMarkerSymbolBoxMinusConnected* = 15
  ScintillaMarkerSymbolLCornerCurve* = 16
  ScintillaMarkerSymbolTCornerCurve* = 17
  ScintillaMarkerSymbolCirclePlus* = 18
  ScintillaMarkerSymbolCirclePlusConnected* = 19
  ScintillaMarkerSymbolCircleMinus* = 20
  ScintillaMarkerSymbolCircleMinusConnected* = 21
  ScintillaMarkerSymbolBackground* = 22
  ScintillaMarkerSymbolDotDotDot* = 23
  ScintillaMarkerSymbolArrows* = 24
  ScintillaMarkerSymbolPixmap* = 25
  ScintillaMarkerSymbolFullRect* = 26
  ScintillaMarkerSymbolLeftRect* = 27
  ScintillaMarkerSymbolAvailable* = 28
  ScintillaMarkerSymbolUnderline* = 29
  ScintillaMarkerSymbolRgbaImage* = 30
  ScintillaMarkerSymbolBookmark* = 31
  ScintillaMarkerSymbolVerticalBookmark* = 32
  ScintillaMarkerSymbolBar* = 33
  ScintillaMarkerSymbolCharacter* = 10000



type ScintillaMarkerOutline* = cint
const
  ScintillaHistoryRevertedToOrigin* = 21
  ScintillaHistorySaved* = 22
  ScintillaHistoryModified* = 23
  ScintillaHistoryRevertedToModified* = 24
  ScintillaFolderEnd* = 25
  ScintillaFolderOpenMid* = 26
  ScintillaFolderMidTail* = 27
  ScintillaFolderTail* = 28
  ScintillaFolderSub* = 29
  ScintillaFolder* = 30
  ScintillaFolderOpen* = 31



type ScintillaMarginType* = cint
const
  ScintillaMarginTypeSymbol* = 0
  ScintillaMarginTypeNumber* = 1
  ScintillaMarginTypeBack* = 2
  ScintillaMarginTypeFore* = 3
  ScintillaMarginTypeText* = 4
  ScintillaMarginTypeRText* = 5
  ScintillaMarginTypeColour* = 6



type ScintillaStylesCommon* = cint
const
  ScintillaStylesCommonDefault* = 32
  ScintillaStylesCommonLineNumber* = 33
  ScintillaStylesCommonBraceLight* = 34
  ScintillaStylesCommonBraceBad* = 35
  ScintillaStylesCommonControlChar* = 36
  ScintillaStylesCommonIndentGuide* = 37
  ScintillaStylesCommonCallTip* = 38
  ScintillaStylesCommonFoldDisplayText* = 39
  ScintillaStylesCommonLastPredefined* = 39
  ScintillaStylesCommonMax* = 255



type ScintillaCharacterSet* = cint
const
  ScintillaCharacterSetAnsi* = 0
  ScintillaCharacterSetDefault* = 1
  ScintillaCharacterSetBaltic* = 186
  ScintillaCharacterSetChineseBig5* = 136
  ScintillaCharacterSetEastEurope* = 238
  ScintillaCharacterSetGB2312* = 134
  ScintillaCharacterSetGreek* = 161
  ScintillaCharacterSetHangul* = 129
  ScintillaCharacterSetMac* = 77
  ScintillaCharacterSetOem* = 255
  ScintillaCharacterSetRussian* = 204
  ScintillaCharacterSetOem866* = 866
  ScintillaCharacterSetCyrillic* = 1251
  ScintillaCharacterSetShiftJis* = 128
  ScintillaCharacterSetSymbol* = 2
  ScintillaCharacterSetTurkish* = 162
  ScintillaCharacterSetJohab* = 130
  ScintillaCharacterSetHebrew* = 177
  ScintillaCharacterSetArabic* = 178
  ScintillaCharacterSetVietnamese* = 163
  ScintillaCharacterSetThai* = 222
  ScintillaCharacterSetIso8859_15* = 1000



type ScintillaCaseVisible* = cint
const
  ScintillaMixed* = 0
  ScintillaUpper* = 1
  ScintillaLower* = 2
  ScintillaCamel* = 3



type ScintillaFontWeight* = cint
const
  ScintillaFontWeightNormal* = 400
  ScintillaFontWeightSemiBold* = 600
  ScintillaFontWeightBold* = 700



type ScintillaFontStretch* = cint
const
  ScintillaFontStretchUltraCondensed* = 1
  ScintillaFontStretchExtraCondensed* = 2
  ScintillaFontStretchCondensed* = 3
  ScintillaFontStretchSemiCondensed* = 4
  ScintillaFontStretchNormal* = 5
  ScintillaFontStretchSemiExpanded* = 6
  ScintillaFontStretchExpanded* = 7
  ScintillaFontStretchExtraExpanded* = 8
  ScintillaFontStretchUltraExpanded* = 9



type ScintillaElement* = cint
const
  ScintillaElementList* = 0
  ScintillaElementListBack* = 1
  ScintillaElementListSelected* = 2
  ScintillaElementListSelectedBack* = 3
  ScintillaElementSelectionText* = 10
  ScintillaElementSelectionBack* = 11
  ScintillaElementSelectionAdditionalText* = 12
  ScintillaElementSelectionAdditionalBack* = 13
  ScintillaElementSelectionSecondaryText* = 14
  ScintillaElementSelectionSecondaryBack* = 15
  ScintillaElementSelectionInactiveText* = 16
  ScintillaElementSelectionInactiveBack* = 17
  ScintillaElementSelectionInactiveAdditionalText* = 18
  ScintillaElementSelectionInactiveAdditionalBack* = 19
  ScintillaElementCaret* = 40
  ScintillaElementCaretAdditional* = 41
  ScintillaElementCaretLineBack* = 50
  ScintillaElementWhiteSpace* = 60
  ScintillaElementWhiteSpaceBack* = 61
  ScintillaElementHotSpotActive* = 70
  ScintillaElementHotSpotActiveBack* = 71
  ScintillaElementFoldLine* = 80
  ScintillaElementHiddenLine* = 81



type ScintillaLayer* = cint
const
  ScintillaBase* = 0
  ScintillaUnderText* = 1
  ScintillaOverText* = 2



type ScintillaIndicatorStyle* = cint
const
  ScintillaIndicatorStylePlain* = 0
  ScintillaIndicatorStyleSquiggle* = 1
  ScintillaIndicatorStyleTT* = 2
  ScintillaIndicatorStyleDiagonal* = 3
  ScintillaIndicatorStyleStrike* = 4
  ScintillaIndicatorStyleHidden* = 5
  ScintillaIndicatorStyleBox* = 6
  ScintillaIndicatorStyleRoundBox* = 7
  ScintillaIndicatorStyleStraightBox* = 8
  ScintillaIndicatorStyleDash* = 9
  ScintillaIndicatorStyleDots* = 10
  ScintillaIndicatorStyleSquiggleLow* = 11
  ScintillaIndicatorStyleDotBox* = 12
  ScintillaIndicatorStyleSquigglePixmap* = 13
  ScintillaIndicatorStyleCompositionThick* = 14
  ScintillaIndicatorStyleCompositionThin* = 15
  ScintillaIndicatorStyleFullBox* = 16
  ScintillaIndicatorStyleTextFore* = 17
  ScintillaIndicatorStylePoint* = 18
  ScintillaIndicatorStylePointCharacter* = 19
  ScintillaIndicatorStyleGradient* = 20
  ScintillaIndicatorStyleGradientCentre* = 21
  ScintillaIndicatorStylePointTop* = 22



type ScintillaIndicatorNumbers* = cint
const
  ScintillaIndicatorNumbersContainer* = 8
  ScintillaIndicatorNumbersIme* = 32
  ScintillaIndicatorNumbersImeMax* = 35
  ScintillaIndicatorNumbersHistoryRevertedToOriginInsertion* = 36
  ScintillaIndicatorNumbersHistoryRevertedToOriginDeletion* = 37
  ScintillaIndicatorNumbersHistorySavedInsertion* = 38
  ScintillaIndicatorNumbersHistorySavedDeletion* = 39
  ScintillaIndicatorNumbersHistoryModifiedInsertion* = 40
  ScintillaIndicatorNumbersHistoryModifiedDeletion* = 41
  ScintillaIndicatorNumbersHistoryRevertedToModifiedInsertion* = 42
  ScintillaIndicatorNumbersHistoryRevertedToModifiedDeletion* = 43
  ScintillaIndicatorNumbersMax* = 43



type ScintillaIndicValue* = cint
const
  ScintillaBit* = 16777216
  ScintillaMask* = 16777215



type ScintillaIndicFlag* = cint
const
  ScintillaIndicFlagNone* = 0
  ScintillaIndicFlagValueFore* = 1



type ScintillaAutoCompleteOption* = cint
const
  ScintillaAutoCompleteOptionNormal* = 0
  ScintillaAutoCompleteOptionFixedSize* = 1
  ScintillaAutoCompleteOptionSelectFirstItem* = 2



type ScintillaIndentView* = cint
const
  ScintillaIndentViewNone* = 0
  ScintillaIndentViewReal* = 1
  ScintillaIndentViewLookForward* = 2
  ScintillaIndentViewLookBoth* = 3



type ScintillaPrintOption* = cint
const
  ScintillaPrintOptionNormal* = 0
  ScintillaPrintOptionInvertLight* = 1
  ScintillaPrintOptionBlackOnWhite* = 2
  ScintillaPrintOptionColourOnWhite* = 3
  ScintillaPrintOptionColourOnWhiteDefaultBG* = 4
  ScintillaPrintOptionScreenColours* = 5



type ScintillaFindOption* = cint
const
  ScintillaFindOptionNone* = 0
  ScintillaFindOptionWholeWord* = 2
  ScintillaFindOptionMatchCase* = 4
  ScintillaFindOptionWordStart* = 1048576
  ScintillaFindOptionRegExp* = 2097152
  ScintillaFindOptionPosix* = 4194304
  ScintillaFindOptionCxx11RegEx* = 8388608



type ScintillaChangeHistoryOption* = cint
const
  ScintillaChangeHistoryOptionDisabled* = 0
  ScintillaChangeHistoryOptionEnabled* = 1
  ScintillaChangeHistoryOptionMarkers* = 2
  ScintillaChangeHistoryOptionIndicators* = 4



type ScintillaFoldLevel* = cint
const
  ScintillaFoldLevelNone* = 0
  ScintillaFoldLevelBase* = 1024
  ScintillaFoldLevelWhiteFlag* = 4096
  ScintillaFoldLevelHeaderFlag* = 8192
  ScintillaFoldLevelNumberMask* = 4095



type ScintillaFoldDisplayTextStyle* = cint
const
  ScintillaFoldDisplayTextStyleHidden* = 0
  ScintillaFoldDisplayTextStyleStandard* = 1
  ScintillaFoldDisplayTextStyleBoxed* = 2



type ScintillaFoldAction* = cint
const
  ScintillaContract* = 0
  ScintillaExpand* = 1
  ScintillaToggle* = 2
  ScintillaContractEveryLevel* = 4



type ScintillaAutomaticFold* = cint
const
  ScintillaAutomaticFoldNone* = 0
  ScintillaAutomaticFoldShow* = 1
  ScintillaAutomaticFoldClick* = 2
  ScintillaAutomaticFoldChange* = 4



type ScintillaFoldFlag* = cint
const
  ScintillaFoldFlagNone* = 0
  ScintillaFoldFlagLineBeforeExpanded* = 2
  ScintillaFoldFlagLineBeforeContracted* = 4
  ScintillaFoldFlagLineAfterExpanded* = 8
  ScintillaFoldFlagLineAfterContracted* = 16
  ScintillaFoldFlagLevelNumbers* = 64
  ScintillaFoldFlagLineState* = 128



type ScintillaIdleStyling* = cint
const
  ScintillaIdleStylingNone* = 0
  ScintillaIdleStylingToVisible* = 1
  ScintillaIdleStylingAfterVisible* = 2
  ScintillaIdleStylingAll* = 3



type ScintillaWrap* = cint
const
  ScintillaWrapNone* = 0
  ScintillaWrapWord* = 1
  ScintillaWrapChar* = 2
  ScintillaWrapWhiteSpace* = 3



type ScintillaWrapVisualFlag* = cint
const
  ScintillaWrapVisualFlagNone* = 0
  ScintillaWrapVisualFlagEnd* = 1
  ScintillaWrapVisualFlagStart* = 2
  ScintillaWrapVisualFlagMargin* = 4



type ScintillaWrapVisualLocation* = cint
const
  ScintillaWrapVisualLocationDefault* = 0
  ScintillaWrapVisualLocationEndByText* = 1
  ScintillaWrapVisualLocationStartByText* = 2



type ScintillaWrapIndentMode* = cint
const
  ScintillaFixed* = 0
  ScintillaSame* = 1
  ScintillaIndent* = 2
  ScintillaDeepIndent* = 3



type ScintillaLineCache* = cint
const
  ScintillaLineCacheNone* = 0
  ScintillaLineCacheCaret* = 1
  ScintillaLineCachePage* = 2
  ScintillaLineCacheDocument* = 3



type ScintillaPhasesDraw* = cint
const
  ScintillaOne* = 0
  ScintillaTwo* = 1
  ScintillaMultiple* = 2



type ScintillaFontQuality* = cint
const
  ScintillaQualityMask* = 15
  ScintillaQualityDefault* = 0
  ScintillaQualityNonAntialiased* = 1
  ScintillaQualityAntialiased* = 2
  ScintillaQualityLcdOptimized* = 3



type ScintillaMultiPaste* = cint
const
  ScintillaMultiPasteOnce* = 0
  ScintillaMultiPasteEach* = 1



type ScintillaAccessibility* = cint
const
  ScintillaAccessibilityDisabled* = 0
  ScintillaAccessibilityEnabled* = 1



type ScintillaEdgeVisualStyle* = cint
const
  ScintillaEdgeVisualStyleNone* = 0
  ScintillaEdgeVisualStyleLine* = 1
  ScintillaEdgeVisualStyleBackground* = 2
  ScintillaEdgeVisualStyleMultiLine* = 3



type ScintillaPopUp* = cint
const
  ScintillaPopUpNever* = 0
  ScintillaPopUpAll* = 1
  ScintillaPopUpText* = 2



type ScintillaDocumentOption* = cint
const
  ScintillaDocumentOptionDefault* = 0
  ScintillaDocumentOptionStylesNone* = 1
  ScintillaDocumentOptionTextLarge* = 256



type ScintillaStatus* = cint
const
  ScintillaOk* = 0
  ScintillaFailure* = 1
  ScintillaBadAlloc* = 2
  ScintillaWarnStart* = 1000
  ScintillaRegEx* = 1001



type ScintillaVisiblePolicy* = cint
const
  ScintillaVisiblePolicySlop* = 1
  ScintillaVisiblePolicyStrict* = 4



type ScintillaCaretPolicy* = cint
const
  ScintillaCaretPolicySlop* = 1
  ScintillaCaretPolicyStrict* = 4
  ScintillaCaretPolicyJumps* = 16
  ScintillaCaretPolicyEven* = 8



type ScintillaSelectionMode* = cint
const
  ScintillaSelectionModeStream* = 0
  ScintillaSelectionModeRectangle* = 1
  ScintillaSelectionModeLines* = 2
  ScintillaSelectionModeThin* = 3



type ScintillaCaseInsensitiveBehaviour* = cint
const
  ScintillaRespectCase* = 0
  ScintillaIgnoreCase* = 1



type ScintillaMultiAutoComplete* = cint
const
  ScintillaMultiAutoCompleteOnce* = 0
  ScintillaMultiAutoCompleteEach* = 1



type ScintillaOrdering* = cint
const
  ScintillaPreSorted* = 0
  ScintillaPerformSort* = 1
  ScintillaCustom* = 2



type ScintillaCaretSticky* = cint
const
  ScintillaCaretStickyOff* = 0
  ScintillaCaretStickyOn* = 1
  ScintillaCaretStickyWhiteSpace* = 2



type ScintillaCaretStyle* = cint
const
  ScintillaCaretStyleInvisible* = 0
  ScintillaCaretStyleLine* = 1
  ScintillaCaretStyleBlock* = 2
  ScintillaCaretStyleOverstrikeBar* = 0
  ScintillaCaretStyleOverstrikeBlock* = 16
  ScintillaCaretStyleCurses* = 32
  ScintillaCaretStyleInsMask* = 15
  ScintillaCaretStyleBlockAfter* = 256



type ScintillaMarginOption* = cint
const
  ScintillaMarginOptionNone* = 0
  ScintillaMarginOptionSubLineSelect* = 1



type ScintillaAnnotationVisible* = cint
const
  ScintillaAnnotationVisibleHidden* = 0
  ScintillaAnnotationVisibleStandard* = 1
  ScintillaAnnotationVisibleBoxed* = 2
  ScintillaAnnotationVisibleIndented* = 3



type ScintillaUndoFlags* = cint
const
  ScintillaUndoFlagsNone* = 0
  ScintillaUndoFlagsMayCoalesce* = 1



type ScintillaVirtualSpace* = cint
const
  ScintillaVirtualSpaceNone* = 0
  ScintillaVirtualSpaceRectangularSelection* = 1
  ScintillaVirtualSpaceUserAccessible* = 2
  ScintillaVirtualSpaceNoWrapLineStart* = 4



type ScintillaTechnology* = cint
const
  ScintillaTechnologyDefault* = 0
  ScintillaTechnologyDirectWrite* = 1
  ScintillaTechnologyDirectWriteRetain* = 2
  ScintillaTechnologyDirectWriteDC* = 3



type ScintillaLineEndType* = cint
const
  ScintillaLineEndTypeDefault* = 0
  ScintillaLineEndTypeUnicode* = 1



type ScintillaRepresentationAppearance* = cint
const
  ScintillaRepresentationAppearancePlain* = 0
  ScintillaRepresentationAppearanceBlob* = 1
  ScintillaRepresentationAppearanceColour* = 16



type ScintillaEOLAnnotationVisible* = cint
const
  ScintillaEOLAnnotationVisibleHidden* = 0
  ScintillaEOLAnnotationVisibleStandard* = 1
  ScintillaEOLAnnotationVisibleBoxed* = 2
  ScintillaEOLAnnotationVisibleStadium* = 256
  ScintillaEOLAnnotationVisibleFlatCircle* = 257
  ScintillaEOLAnnotationVisibleAngleCircle* = 258
  ScintillaEOLAnnotationVisibleCircleFlat* = 272
  ScintillaEOLAnnotationVisibleFlats* = 273
  ScintillaEOLAnnotationVisibleAngleFlat* = 274
  ScintillaEOLAnnotationVisibleCircleAngle* = 288
  ScintillaEOLAnnotationVisibleFlatAngle* = 289
  ScintillaEOLAnnotationVisibleAngles* = 290



type ScintillaSupports* = cint
const
  ScintillaLineDrawsFinal* = 0
  ScintillaPixelDivisions* = 1
  ScintillaFractionalStrokeWidth* = 2
  ScintillaTranslucentStroke* = 3
  ScintillaPixelModification* = 4
  ScintillaThreadSafeMeasureWidths* = 5



type ScintillaLineCharacterIndexType* = cint
const
  ScintillaLineCharacterIndexTypeNone* = 0
  ScintillaLineCharacterIndexTypeUtf32* = 1
  ScintillaLineCharacterIndexTypeUtf16* = 2



type ScintillaTypeProperty* = cint
const
  ScintillaBoolean* = 0
  ScintillaInteger* = 1
  ScintillaString* = 2



type ScintillaModificationFlags* = cint
const
  ScintillaModificationFlagsNone* = 0
  ScintillaModificationFlagsInsertText* = 1
  ScintillaModificationFlagsDeleteText* = 2
  ScintillaModificationFlagsChangeStyle* = 4
  ScintillaModificationFlagsChangeFold* = 8
  ScintillaModificationFlagsUser* = 16
  ScintillaModificationFlagsUndo* = 32
  ScintillaModificationFlagsRedo* = 64
  ScintillaModificationFlagsMultiStepUndoRedo* = 128
  ScintillaModificationFlagsLastStepInUndoRedo* = 256
  ScintillaModificationFlagsChangeMarker* = 512
  ScintillaModificationFlagsBeforeInsert* = 1024
  ScintillaModificationFlagsBeforeDelete* = 2048
  ScintillaModificationFlagsMultilineUndoRedo* = 4096
  ScintillaModificationFlagsStartAction* = 8192
  ScintillaModificationFlagsChangeIndicator* = 16384
  ScintillaModificationFlagsChangeLineState* = 32768
  ScintillaModificationFlagsChangeMargin* = 65536
  ScintillaModificationFlagsChangeAnnotation* = 131072
  ScintillaModificationFlagsContainer* = 262144
  ScintillaModificationFlagsLexerState* = 524288
  ScintillaModificationFlagsInsertCheck* = 1048576
  ScintillaModificationFlagsChangeTabStops* = 2097152
  ScintillaModificationFlagsChangeEOLAnnotation* = 4194304
  ScintillaModificationFlagsEventMaskAll* = 8388607



type ScintillaUpdate* = cint
const
  ScintillaUpdateNone* = 0
  ScintillaUpdateContent* = 1
  ScintillaUpdateSelection* = 2
  ScintillaUpdateVScroll* = 4
  ScintillaUpdateHScroll* = 8



type ScintillaFocusChange* = cint
const
  ScintillaChange* = 768
  ScintillaSetfocus* = 512
  ScintillaKillfocus* = 256



type ScintillaKeys* = cint
const
  ScintillaKeysDown* = 300
  ScintillaKeysUp* = 301
  ScintillaKeysLeft* = 302
  ScintillaKeysRight* = 303
  ScintillaKeysHome* = 304
  ScintillaKeysEnd* = 305
  ScintillaKeysPrior* = 306
  ScintillaKeysNext* = 307
  ScintillaKeysDelete* = 308
  ScintillaKeysInsert* = 309
  ScintillaKeysEscape* = 7
  ScintillaKeysBack* = 8
  ScintillaKeysTab* = 9
  ScintillaKeysReturn* = 13
  ScintillaKeysAdd* = 310
  ScintillaKeysSubtract* = 311
  ScintillaKeysDivide* = 312
  ScintillaKeysWin* = 313
  ScintillaKeysRWin* = 314
  ScintillaKeysMenu* = 315



type ScintillaKeyMod* = cint
const
  ScintillaNorm* = 0
  ScintillaShift* = 1
  ScintillaCtrl* = 2
  ScintillaAlt* = 4
  ScintillaSuper* = 8
  ScintillaMeta* = 16



type ScintillaCompletionMethods* = cint
const
  ScintillaCompletionMethodsFillUp* = 1
  ScintillaCompletionMethodsDoubleClick* = 2
  ScintillaCompletionMethodsTab* = 3
  ScintillaCompletionMethodsNewline* = 4
  ScintillaCompletionMethodsCommand* = 5
  ScintillaCompletionMethodsSingleChoice* = 6



type ScintillaCharacterSource* = cint
const
  ScintillaDirectInput* = 0
  ScintillaTentativeInput* = 1
  ScintillaImeResult* = 2



type ScintillaBidirectional* = cint
const
  ScintillaBidirectionalDisabled* = 0
  ScintillaBidirectionalL2R* = 1
  ScintillaBidirectionalR2L* = 2



type ScintillaNotification* = cint
const
  ScintillaNotificationStyleNeeded* = 2000
  ScintillaNotificationCharAdded* = 2001
  ScintillaNotificationSavePointReached* = 2002
  ScintillaNotificationSavePointLeft* = 2003
  ScintillaNotificationModifyAttemptRO* = 2004
  ScintillaNotificationKey* = 2005
  ScintillaNotificationDoubleClick* = 2006
  ScintillaNotificationUpdateUI* = 2007
  ScintillaNotificationModified* = 2008
  ScintillaNotificationMacroRecord* = 2009
  ScintillaNotificationMarginClick* = 2010
  ScintillaNotificationNeedShown* = 2011
  ScintillaNotificationPainted* = 2013
  ScintillaNotificationUserListSelection* = 2014
  ScintillaNotificationURIDropped* = 2015
  ScintillaNotificationDwellStart* = 2016
  ScintillaNotificationDwellEnd* = 2017
  ScintillaNotificationZoom* = 2018
  ScintillaNotificationHotSpotClick* = 2019
  ScintillaNotificationHotSpotDoubleClick* = 2020
  ScintillaNotificationCallTipClick* = 2021
  ScintillaNotificationAutoCSelection* = 2022
  ScintillaNotificationIndicatorClick* = 2023
  ScintillaNotificationIndicatorRelease* = 2024
  ScintillaNotificationAutoCCancelled* = 2025
  ScintillaNotificationAutoCCharDeleted* = 2026
  ScintillaNotificationHotSpotReleaseClick* = 2027
  ScintillaNotificationFocusIn* = 2028
  ScintillaNotificationFocusOut* = 2029
  ScintillaNotificationAutoCCompleted* = 2030
  ScintillaNotificationMarginRightClick* = 2031
  ScintillaNotificationAutoCSelectionChange* = 2032



type ScintillaMessage* = cint
const
  ScintillaMessageAddText* = 2001
  ScintillaMessageAddStyledText* = 2002
  ScintillaMessageInsertText* = 2003
  ScintillaMessageChangeInsertion* = 2672
  ScintillaMessageClearAll* = 2004
  ScintillaMessageDeleteRange* = 2645
  ScintillaMessageClearDocumentStyle* = 2005
  ScintillaMessageGetLength* = 2006
  ScintillaMessageGetCharAt* = 2007
  ScintillaMessageGetCurrentPos* = 2008
  ScintillaMessageGetAnchor* = 2009
  ScintillaMessageGetStyleAt* = 2010
  ScintillaMessageGetStyleIndexAt* = 2038
  ScintillaMessageRedo* = 2011
  ScintillaMessageSetUndoCollection* = 2012
  ScintillaMessageSelectAll* = 2013
  ScintillaMessageSetSavePoint* = 2014
  ScintillaMessageGetStyledText* = 2015
  ScintillaMessageGetStyledTextFull* = 2778
  ScintillaMessageCanRedo* = 2016
  ScintillaMessageMarkerLineFromHandle* = 2017
  ScintillaMessageMarkerDeleteHandle* = 2018
  ScintillaMessageMarkerHandleFromLine* = 2732
  ScintillaMessageMarkerNumberFromLine* = 2733
  ScintillaMessageGetUndoCollection* = 2019
  ScintillaMessageGetViewWS* = 2020
  ScintillaMessageSetViewWS* = 2021
  ScintillaMessageGetTabDrawMode* = 2698
  ScintillaMessageSetTabDrawMode* = 2699
  ScintillaMessagePositionFromPoint* = 2022
  ScintillaMessagePositionFromPointClose* = 2023
  ScintillaMessageGotoLine* = 2024
  ScintillaMessageGotoPos* = 2025
  ScintillaMessageSetAnchor* = 2026
  ScintillaMessageGetCurLine* = 2027
  ScintillaMessageGetEndStyled* = 2028
  ScintillaMessageConvertEOLs* = 2029
  ScintillaMessageGetEOLMode* = 2030
  ScintillaMessageSetEOLMode* = 2031
  ScintillaMessageStartStyling* = 2032
  ScintillaMessageSetStyling* = 2033
  ScintillaMessageGetBufferedDraw* = 2034
  ScintillaMessageSetBufferedDraw* = 2035
  ScintillaMessageSetTabWidth* = 2036
  ScintillaMessageGetTabWidth* = 2121
  ScintillaMessageSetTabMinimumWidth* = 2724
  ScintillaMessageGetTabMinimumWidth* = 2725
  ScintillaMessageClearTabStops* = 2675
  ScintillaMessageAddTabStop* = 2676
  ScintillaMessageGetNextTabStop* = 2677
  ScintillaMessageSetCodePage* = 2037
  ScintillaMessageSetFontLocale* = 2760
  ScintillaMessageGetFontLocale* = 2761
  ScintillaMessageGetIMEInteraction* = 2678
  ScintillaMessageSetIMEInteraction* = 2679
  ScintillaMessageMarkerDefine* = 2040
  ScintillaMessageMarkerSetFore* = 2041
  ScintillaMessageMarkerSetBack* = 2042
  ScintillaMessageMarkerSetBackSelected* = 2292
  ScintillaMessageMarkerSetForeTranslucent* = 2294
  ScintillaMessageMarkerSetBackTranslucent* = 2295
  ScintillaMessageMarkerSetBackSelectedTranslucent* = 2296
  ScintillaMessageMarkerSetStrokeWidth* = 2297
  ScintillaMessageMarkerEnableHighlight* = 2293
  ScintillaMessageMarkerAdd* = 2043
  ScintillaMessageMarkerDelete* = 2044
  ScintillaMessageMarkerDeleteAll* = 2045
  ScintillaMessageMarkerGet* = 2046
  ScintillaMessageMarkerNext* = 2047
  ScintillaMessageMarkerPrevious* = 2048
  ScintillaMessageMarkerDefinePixmap* = 2049
  ScintillaMessageMarkerAddSet* = 2466
  ScintillaMessageMarkerSetAlpha* = 2476
  ScintillaMessageMarkerGetLayer* = 2734
  ScintillaMessageMarkerSetLayer* = 2735
  ScintillaMessageSetMarginTypeN* = 2240
  ScintillaMessageGetMarginTypeN* = 2241
  ScintillaMessageSetMarginWidthN* = 2242
  ScintillaMessageGetMarginWidthN* = 2243
  ScintillaMessageSetMarginMaskN* = 2244
  ScintillaMessageGetMarginMaskN* = 2245
  ScintillaMessageSetMarginSensitiveN* = 2246
  ScintillaMessageGetMarginSensitiveN* = 2247
  ScintillaMessageSetMarginCursorN* = 2248
  ScintillaMessageGetMarginCursorN* = 2249
  ScintillaMessageSetMarginBackN* = 2250
  ScintillaMessageGetMarginBackN* = 2251
  ScintillaMessageSetMargins* = 2252
  ScintillaMessageGetMargins* = 2253
  ScintillaMessageStyleClearAll* = 2050
  ScintillaMessageStyleSetFore* = 2051
  ScintillaMessageStyleSetBack* = 2052
  ScintillaMessageStyleSetBold* = 2053
  ScintillaMessageStyleSetItalic* = 2054
  ScintillaMessageStyleSetSize* = 2055
  ScintillaMessageStyleSetFont* = 2056
  ScintillaMessageStyleSetEOLFilled* = 2057
  ScintillaMessageStyleResetDefault* = 2058
  ScintillaMessageStyleSetUnderline* = 2059
  ScintillaMessageStyleGetFore* = 2481
  ScintillaMessageStyleGetBack* = 2482
  ScintillaMessageStyleGetBold* = 2483
  ScintillaMessageStyleGetItalic* = 2484
  ScintillaMessageStyleGetSize* = 2485
  ScintillaMessageStyleGetFont* = 2486
  ScintillaMessageStyleGetEOLFilled* = 2487
  ScintillaMessageStyleGetUnderline* = 2488
  ScintillaMessageStyleGetCase* = 2489
  ScintillaMessageStyleGetCharacterSet* = 2490
  ScintillaMessageStyleGetVisible* = 2491
  ScintillaMessageStyleGetChangeable* = 2492
  ScintillaMessageStyleGetHotSpot* = 2493
  ScintillaMessageStyleSetCase* = 2060
  ScintillaMessageStyleSetSizeFractional* = 2061
  ScintillaMessageStyleGetSizeFractional* = 2062
  ScintillaMessageStyleSetWeight* = 2063
  ScintillaMessageStyleGetWeight* = 2064
  ScintillaMessageStyleSetCharacterSet* = 2066
  ScintillaMessageStyleSetHotSpot* = 2409
  ScintillaMessageStyleSetCheckMonospaced* = 2254
  ScintillaMessageStyleGetCheckMonospaced* = 2255
  ScintillaMessageStyleSetStretch* = 2258
  ScintillaMessageStyleGetStretch* = 2259
  ScintillaMessageStyleSetInvisibleRepresentation* = 2256
  ScintillaMessageStyleGetInvisibleRepresentation* = 2257
  ScintillaMessageSetElementColour* = 2753
  ScintillaMessageGetElementColour* = 2754
  ScintillaMessageResetElementColour* = 2755
  ScintillaMessageGetElementIsSet* = 2756
  ScintillaMessageGetElementAllowsTranslucent* = 2757
  ScintillaMessageGetElementBaseColour* = 2758
  ScintillaMessageSetSelFore* = 2067
  ScintillaMessageSetSelBack* = 2068
  ScintillaMessageGetSelAlpha* = 2477
  ScintillaMessageSetSelAlpha* = 2478
  ScintillaMessageGetSelEOLFilled* = 2479
  ScintillaMessageSetSelEOLFilled* = 2480
  ScintillaMessageGetSelectionLayer* = 2762
  ScintillaMessageSetSelectionLayer* = 2763
  ScintillaMessageGetCaretLineLayer* = 2764
  ScintillaMessageSetCaretLineLayer* = 2765
  ScintillaMessageGetCaretLineHighlightSubLine* = 2773
  ScintillaMessageSetCaretLineHighlightSubLine* = 2774
  ScintillaMessageSetCaretFore* = 2069
  ScintillaMessageAssignCmdKey* = 2070
  ScintillaMessageClearCmdKey* = 2071
  ScintillaMessageClearAllCmdKeys* = 2072
  ScintillaMessageSetStylingEx* = 2073
  ScintillaMessageStyleSetVisible* = 2074
  ScintillaMessageGetCaretPeriod* = 2075
  ScintillaMessageSetCaretPeriod* = 2076
  ScintillaMessageSetWordChars* = 2077
  ScintillaMessageGetWordChars* = 2646
  ScintillaMessageSetCharacterCategoryOptimization* = 2720
  ScintillaMessageGetCharacterCategoryOptimization* = 2721
  ScintillaMessageBeginUndoAction* = 2078
  ScintillaMessageEndUndoAction* = 2079
  ScintillaMessageGetUndoSequence* = 2799
  ScintillaMessageGetUndoActions* = 2790
  ScintillaMessageSetUndoSavePoint* = 2791
  ScintillaMessageGetUndoSavePoint* = 2792
  ScintillaMessageSetUndoDetach* = 2793
  ScintillaMessageGetUndoDetach* = 2794
  ScintillaMessageSetUndoTentative* = 2795
  ScintillaMessageGetUndoTentative* = 2796
  ScintillaMessageSetUndoCurrent* = 2797
  ScintillaMessageGetUndoCurrent* = 2798
  ScintillaMessagePushUndoActionType* = 2800
  ScintillaMessageChangeLastUndoActionText* = 2801
  ScintillaMessageGetUndoActionType* = 2802
  ScintillaMessageGetUndoActionPosition* = 2803
  ScintillaMessageGetUndoActionText* = 2804
  ScintillaMessageIndicSetStyle* = 2080
  ScintillaMessageIndicGetStyle* = 2081
  ScintillaMessageIndicSetFore* = 2082
  ScintillaMessageIndicGetFore* = 2083
  ScintillaMessageIndicSetUnder* = 2510
  ScintillaMessageIndicGetUnder* = 2511
  ScintillaMessageIndicSetHoverStyle* = 2680
  ScintillaMessageIndicGetHoverStyle* = 2681
  ScintillaMessageIndicSetHoverFore* = 2682
  ScintillaMessageIndicGetHoverFore* = 2683
  ScintillaMessageIndicSetFlags* = 2684
  ScintillaMessageIndicGetFlags* = 2685
  ScintillaMessageIndicSetStrokeWidth* = 2751
  ScintillaMessageIndicGetStrokeWidth* = 2752
  ScintillaMessageSetWhitespaceFore* = 2084
  ScintillaMessageSetWhitespaceBack* = 2085
  ScintillaMessageSetWhitespaceSize* = 2086
  ScintillaMessageGetWhitespaceSize* = 2087
  ScintillaMessageSetLineState* = 2092
  ScintillaMessageGetLineState* = 2093
  ScintillaMessageGetMaxLineState* = 2094
  ScintillaMessageGetCaretLineVisible* = 2095
  ScintillaMessageSetCaretLineVisible* = 2096
  ScintillaMessageGetCaretLineBack* = 2097
  ScintillaMessageSetCaretLineBack* = 2098
  ScintillaMessageGetCaretLineFrame* = 2704
  ScintillaMessageSetCaretLineFrame* = 2705
  ScintillaMessageStyleSetChangeable* = 2099
  ScintillaMessageAutoCShow* = 2100
  ScintillaMessageAutoCCancel* = 2101
  ScintillaMessageAutoCActive* = 2102
  ScintillaMessageAutoCPosStart* = 2103
  ScintillaMessageAutoCComplete* = 2104
  ScintillaMessageAutoCStops* = 2105
  ScintillaMessageAutoCSetSeparator* = 2106
  ScintillaMessageAutoCGetSeparator* = 2107
  ScintillaMessageAutoCSelect* = 2108
  ScintillaMessageAutoCSetCancelAtStart* = 2110
  ScintillaMessageAutoCGetCancelAtStart* = 2111
  ScintillaMessageAutoCSetFillUps* = 2112
  ScintillaMessageAutoCSetChooseSingle* = 2113
  ScintillaMessageAutoCGetChooseSingle* = 2114
  ScintillaMessageAutoCSetIgnoreCase* = 2115
  ScintillaMessageAutoCGetIgnoreCase* = 2116
  ScintillaMessageUserListShow* = 2117
  ScintillaMessageAutoCSetAutoHide* = 2118
  ScintillaMessageAutoCGetAutoHide* = 2119
  ScintillaMessageAutoCSetOptions* = 2638
  ScintillaMessageAutoCGetOptions* = 2639
  ScintillaMessageAutoCSetDropRestOfWord* = 2270
  ScintillaMessageAutoCGetDropRestOfWord* = 2271
  ScintillaMessageRegisterImage* = 2405
  ScintillaMessageClearRegisteredImages* = 2408
  ScintillaMessageAutoCGetTypeSeparator* = 2285
  ScintillaMessageAutoCSetTypeSeparator* = 2286
  ScintillaMessageAutoCSetMaxWidth* = 2208
  ScintillaMessageAutoCGetMaxWidth* = 2209
  ScintillaMessageAutoCSetMaxHeight* = 2210
  ScintillaMessageAutoCGetMaxHeight* = 2211
  ScintillaMessageAutoCSetStyle* = 2109
  ScintillaMessageAutoCGetStyle* = 2120
  ScintillaMessageSetIndent* = 2122
  ScintillaMessageGetIndent* = 2123
  ScintillaMessageSetUseTabs* = 2124
  ScintillaMessageGetUseTabs* = 2125
  ScintillaMessageSetLineIndentation* = 2126
  ScintillaMessageGetLineIndentation* = 2127
  ScintillaMessageGetLineIndentPosition* = 2128
  ScintillaMessageGetColumn* = 2129
  ScintillaMessageCountCharacters* = 2633
  ScintillaMessageCountCodeUnits* = 2715
  ScintillaMessageSetHScrollBar* = 2130
  ScintillaMessageGetHScrollBar* = 2131
  ScintillaMessageSetIndentationGuides* = 2132
  ScintillaMessageGetIndentationGuides* = 2133
  ScintillaMessageSetHighlightGuide* = 2134
  ScintillaMessageGetHighlightGuide* = 2135
  ScintillaMessageGetLineEndPosition* = 2136
  ScintillaMessageGetCodePage* = 2137
  ScintillaMessageGetCaretFore* = 2138
  ScintillaMessageGetReadOnly* = 2140
  ScintillaMessageSetCurrentPos* = 2141
  ScintillaMessageSetSelectionStart* = 2142
  ScintillaMessageGetSelectionStart* = 2143
  ScintillaMessageSetSelectionEnd* = 2144
  ScintillaMessageGetSelectionEnd* = 2145
  ScintillaMessageSetEmptySelection* = 2556
  ScintillaMessageSetPrintMagnification* = 2146
  ScintillaMessageGetPrintMagnification* = 2147
  ScintillaMessageSetPrintColourMode* = 2148
  ScintillaMessageGetPrintColourMode* = 2149
  ScintillaMessageFindText* = 2150
  ScintillaMessageFindTextFull* = 2196
  ScintillaMessageFormatRange* = 2151
  ScintillaMessageFormatRangeFull* = 2777
  ScintillaMessageSetChangeHistory* = 2780
  ScintillaMessageGetChangeHistory* = 2781
  ScintillaMessageGetFirstVisibleLine* = 2152
  ScintillaMessageGetLine* = 2153
  ScintillaMessageGetLineCount* = 2154
  ScintillaMessageAllocateLines* = 2089
  ScintillaMessageSetMarginLeft* = 2155
  ScintillaMessageGetMarginLeft* = 2156
  ScintillaMessageSetMarginRight* = 2157
  ScintillaMessageGetMarginRight* = 2158
  ScintillaMessageGetModify* = 2159
  ScintillaMessageSetSel* = 2160
  ScintillaMessageGetSelText* = 2161
  ScintillaMessageGetTextRange* = 2162
  ScintillaMessageGetTextRangeFull* = 2039
  ScintillaMessageHideSelection* = 2163
  ScintillaMessageGetSelectionHidden* = 2088
  ScintillaMessagePointXFromPosition* = 2164
  ScintillaMessagePointYFromPosition* = 2165
  ScintillaMessageLineFromPosition* = 2166
  ScintillaMessagePositionFromLine* = 2167
  ScintillaMessageLineScroll* = 2168
  ScintillaMessageScrollCaret* = 2169
  ScintillaMessageScrollRange* = 2569
  ScintillaMessageReplaceSel* = 2170
  ScintillaMessageSetReadOnly* = 2171
  ScintillaMessageNull* = 2172
  ScintillaMessageCanPaste* = 2173
  ScintillaMessageCanUndo* = 2174
  ScintillaMessageEmptyUndoBuffer* = 2175
  ScintillaMessageUndo* = 2176
  ScintillaMessageCut* = 2177
  ScintillaMessageCopy* = 2178
  ScintillaMessagePaste* = 2179
  ScintillaMessageClear* = 2180
  ScintillaMessageSetText* = 2181
  ScintillaMessageGetText* = 2182
  ScintillaMessageGetTextLength* = 2183
  ScintillaMessageGetDirectFunction* = 2184
  ScintillaMessageGetDirectStatusFunction* = 2772
  ScintillaMessageGetDirectPointer* = 2185
  ScintillaMessageSetOvertype* = 2186
  ScintillaMessageGetOvertype* = 2187
  ScintillaMessageSetCaretWidth* = 2188
  ScintillaMessageGetCaretWidth* = 2189
  ScintillaMessageSetTargetStart* = 2190
  ScintillaMessageGetTargetStart* = 2191
  ScintillaMessageSetTargetStartVirtualSpace* = 2728
  ScintillaMessageGetTargetStartVirtualSpace* = 2729
  ScintillaMessageSetTargetEnd* = 2192
  ScintillaMessageGetTargetEnd* = 2193
  ScintillaMessageSetTargetEndVirtualSpace* = 2730
  ScintillaMessageGetTargetEndVirtualSpace* = 2731
  ScintillaMessageSetTargetRange* = 2686
  ScintillaMessageGetTargetText* = 2687
  ScintillaMessageTargetFromSelection* = 2287
  ScintillaMessageTargetWholeDocument* = 2690
  ScintillaMessageReplaceTarget* = 2194
  ScintillaMessageReplaceTargetRE* = 2195
  ScintillaMessageReplaceTargetMinimal* = 2779
  ScintillaMessageSearchInTarget* = 2197
  ScintillaMessageSetSearchFlags* = 2198
  ScintillaMessageGetSearchFlags* = 2199
  ScintillaMessageCallTipShow* = 2200
  ScintillaMessageCallTipCancel* = 2201
  ScintillaMessageCallTipActive* = 2202
  ScintillaMessageCallTipPosStart* = 2203
  ScintillaMessageCallTipSetPosStart* = 2214
  ScintillaMessageCallTipSetHlt* = 2204
  ScintillaMessageCallTipSetBack* = 2205
  ScintillaMessageCallTipSetFore* = 2206
  ScintillaMessageCallTipSetForeHlt* = 2207
  ScintillaMessageCallTipUseStyle* = 2212
  ScintillaMessageCallTipSetPosition* = 2213
  ScintillaMessageVisibleFromDocLine* = 2220
  ScintillaMessageDocLineFromVisible* = 2221
  ScintillaMessageWrapCount* = 2235
  ScintillaMessageSetFoldLevel* = 2222
  ScintillaMessageGetFoldLevel* = 2223
  ScintillaMessageGetLastChild* = 2224
  ScintillaMessageGetFoldParent* = 2225
  ScintillaMessageShowLines* = 2226
  ScintillaMessageHideLines* = 2227
  ScintillaMessageGetLineVisible* = 2228
  ScintillaMessageGetAllLinesVisible* = 2236
  ScintillaMessageSetFoldExpanded* = 2229
  ScintillaMessageGetFoldExpanded* = 2230
  ScintillaMessageToggleFold* = 2231
  ScintillaMessageToggleFoldShowText* = 2700
  ScintillaMessageFoldDisplayTextSetStyle* = 2701
  ScintillaMessageFoldDisplayTextGetStyle* = 2707
  ScintillaMessageSetDefaultFoldDisplayText* = 2722
  ScintillaMessageGetDefaultFoldDisplayText* = 2723
  ScintillaMessageFoldLine* = 2237
  ScintillaMessageFoldChildren* = 2238
  ScintillaMessageExpandChildren* = 2239
  ScintillaMessageFoldAll* = 2662
  ScintillaMessageEnsureVisible* = 2232
  ScintillaMessageSetAutomaticFold* = 2663
  ScintillaMessageGetAutomaticFold* = 2664
  ScintillaMessageSetFoldFlags* = 2233
  ScintillaMessageEnsureVisibleEnforcePolicy* = 2234
  ScintillaMessageSetTabIndents* = 2260
  ScintillaMessageGetTabIndents* = 2261
  ScintillaMessageSetBackSpaceUnIndents* = 2262
  ScintillaMessageGetBackSpaceUnIndents* = 2263
  ScintillaMessageSetMouseDwellTime* = 2264
  ScintillaMessageGetMouseDwellTime* = 2265
  ScintillaMessageWordStartPosition* = 2266
  ScintillaMessageWordEndPosition* = 2267
  ScintillaMessageIsRangeWord* = 2691
  ScintillaMessageSetIdleStyling* = 2692
  ScintillaMessageGetIdleStyling* = 2693
  ScintillaMessageSetWrapMode* = 2268
  ScintillaMessageGetWrapMode* = 2269
  ScintillaMessageSetWrapVisualFlags* = 2460
  ScintillaMessageGetWrapVisualFlags* = 2461
  ScintillaMessageSetWrapVisualFlagsLocation* = 2462
  ScintillaMessageGetWrapVisualFlagsLocation* = 2463
  ScintillaMessageSetWrapStartIndent* = 2464
  ScintillaMessageGetWrapStartIndent* = 2465
  ScintillaMessageSetWrapIndentMode* = 2472
  ScintillaMessageGetWrapIndentMode* = 2473
  ScintillaMessageSetLayoutCache* = 2272
  ScintillaMessageGetLayoutCache* = 2273
  ScintillaMessageSetScrollWidth* = 2274
  ScintillaMessageGetScrollWidth* = 2275
  ScintillaMessageSetScrollWidthTracking* = 2516
  ScintillaMessageGetScrollWidthTracking* = 2517
  ScintillaMessageTextWidth* = 2276
  ScintillaMessageSetEndAtLastLine* = 2277
  ScintillaMessageGetEndAtLastLine* = 2278
  ScintillaMessageTextHeight* = 2279
  ScintillaMessageSetVScrollBar* = 2280
  ScintillaMessageGetVScrollBar* = 2281
  ScintillaMessageAppendText* = 2282
  ScintillaMessageGetPhasesDraw* = 2673
  ScintillaMessageSetPhasesDraw* = 2674
  ScintillaMessageSetFontQuality* = 2611
  ScintillaMessageGetFontQuality* = 2612
  ScintillaMessageSetFirstVisibleLine* = 2613
  ScintillaMessageSetMultiPaste* = 2614
  ScintillaMessageGetMultiPaste* = 2615
  ScintillaMessageGetTag* = 2616
  ScintillaMessageLinesJoin* = 2288
  ScintillaMessageLinesSplit* = 2289
  ScintillaMessageSetFoldMarginColour* = 2290
  ScintillaMessageSetFoldMarginHiColour* = 2291
  ScintillaMessageSetAccessibility* = 2702
  ScintillaMessageGetAccessibility* = 2703
  ScintillaMessageLineDown* = 2300
  ScintillaMessageLineDownExtend* = 2301
  ScintillaMessageLineUp* = 2302
  ScintillaMessageLineUpExtend* = 2303
  ScintillaMessageCharLeft* = 2304
  ScintillaMessageCharLeftExtend* = 2305
  ScintillaMessageCharRight* = 2306
  ScintillaMessageCharRightExtend* = 2307
  ScintillaMessageWordLeft* = 2308
  ScintillaMessageWordLeftExtend* = 2309
  ScintillaMessageWordRight* = 2310
  ScintillaMessageWordRightExtend* = 2311
  ScintillaMessageHome* = 2312
  ScintillaMessageHomeExtend* = 2313
  ScintillaMessageLineEnd* = 2314
  ScintillaMessageLineEndExtend* = 2315
  ScintillaMessageDocumentStart* = 2316
  ScintillaMessageDocumentStartExtend* = 2317
  ScintillaMessageDocumentEnd* = 2318
  ScintillaMessageDocumentEndExtend* = 2319
  ScintillaMessagePageUp* = 2320
  ScintillaMessagePageUpExtend* = 2321
  ScintillaMessagePageDown* = 2322
  ScintillaMessagePageDownExtend* = 2323
  ScintillaMessageEditToggleOvertype* = 2324
  ScintillaMessageCancel* = 2325
  ScintillaMessageDeleteBack* = 2326
  ScintillaMessageTab* = 2327
  ScintillaMessageLineIndent* = 2813
  ScintillaMessageBackTab* = 2328
  ScintillaMessageLineDedent* = 2814
  ScintillaMessageNewLine* = 2329
  ScintillaMessageFormFeed* = 2330
  ScintillaMessageVCHome* = 2331
  ScintillaMessageVCHomeExtend* = 2332
  ScintillaMessageZoomIn* = 2333
  ScintillaMessageZoomOut* = 2334
  ScintillaMessageDelWordLeft* = 2335
  ScintillaMessageDelWordRight* = 2336
  ScintillaMessageDelWordRightEnd* = 2518
  ScintillaMessageLineCut* = 2337
  ScintillaMessageLineDelete* = 2338
  ScintillaMessageLineTranspose* = 2339
  ScintillaMessageLineReverse* = 2354
  ScintillaMessageLineDuplicate* = 2404
  ScintillaMessageLowerCase* = 2340
  ScintillaMessageUpperCase* = 2341
  ScintillaMessageLineScrollDown* = 2342
  ScintillaMessageLineScrollUp* = 2343
  ScintillaMessageDeleteBackNotLine* = 2344
  ScintillaMessageHomeDisplay* = 2345
  ScintillaMessageHomeDisplayExtend* = 2346
  ScintillaMessageLineEndDisplay* = 2347
  ScintillaMessageLineEndDisplayExtend* = 2348
  ScintillaMessageHomeWrap* = 2349
  ScintillaMessageHomeWrapExtend* = 2450
  ScintillaMessageLineEndWrap* = 2451
  ScintillaMessageLineEndWrapExtend* = 2452
  ScintillaMessageVCHomeWrap* = 2453
  ScintillaMessageVCHomeWrapExtend* = 2454
  ScintillaMessageLineCopy* = 2455
  ScintillaMessageMoveCaretInsideView* = 2401
  ScintillaMessageLineLength* = 2350
  ScintillaMessageBraceHighlight* = 2351
  ScintillaMessageBraceHighlightIndicator* = 2498
  ScintillaMessageBraceBadLight* = 2352
  ScintillaMessageBraceBadLightIndicator* = 2499
  ScintillaMessageBraceMatch* = 2353
  ScintillaMessageBraceMatchNext* = 2369
  ScintillaMessageGetViewEOL* = 2355
  ScintillaMessageSetViewEOL* = 2356
  ScintillaMessageGetDocPointer* = 2357
  ScintillaMessageSetDocPointer* = 2358
  ScintillaMessageSetModEventMask* = 2359
  ScintillaMessageGetEdgeColumn* = 2360
  ScintillaMessageSetEdgeColumn* = 2361
  ScintillaMessageGetEdgeMode* = 2362
  ScintillaMessageSetEdgeMode* = 2363
  ScintillaMessageGetEdgeColour* = 2364
  ScintillaMessageSetEdgeColour* = 2365
  ScintillaMessageMultiEdgeAddLine* = 2694
  ScintillaMessageMultiEdgeClearAll* = 2695
  ScintillaMessageGetMultiEdgeColumn* = 2749
  ScintillaMessageSearchAnchor* = 2366
  ScintillaMessageSearchNext* = 2367
  ScintillaMessageSearchPrev* = 2368
  ScintillaMessageLinesOnScreen* = 2370
  ScintillaMessageUsePopUp* = 2371
  ScintillaMessageSelectionIsRectangle* = 2372
  ScintillaMessageSetZoom* = 2373
  ScintillaMessageGetZoom* = 2374
  ScintillaMessageCreateDocument* = 2375
  ScintillaMessageAddRefDocument* = 2376
  ScintillaMessageReleaseDocument* = 2377
  ScintillaMessageGetDocumentOptions* = 2379
  ScintillaMessageGetModEventMask* = 2378
  ScintillaMessageSetCommandEvents* = 2717
  ScintillaMessageGetCommandEvents* = 2718
  ScintillaMessageSetFocus* = 2380
  ScintillaMessageGetFocus* = 2381
  ScintillaMessageSetStatus* = 2382
  ScintillaMessageGetStatus* = 2383
  ScintillaMessageSetMouseDownCaptures* = 2384
  ScintillaMessageGetMouseDownCaptures* = 2385
  ScintillaMessageSetMouseWheelCaptures* = 2696
  ScintillaMessageGetMouseWheelCaptures* = 2697
  ScintillaMessageSetCursor* = 2386
  ScintillaMessageGetCursor* = 2387
  ScintillaMessageSetControlCharSymbol* = 2388
  ScintillaMessageGetControlCharSymbol* = 2389
  ScintillaMessageWordPartLeft* = 2390
  ScintillaMessageWordPartLeftExtend* = 2391
  ScintillaMessageWordPartRight* = 2392
  ScintillaMessageWordPartRightExtend* = 2393
  ScintillaMessageSetVisiblePolicy* = 2394
  ScintillaMessageDelLineLeft* = 2395
  ScintillaMessageDelLineRight* = 2396
  ScintillaMessageSetXOffset* = 2397
  ScintillaMessageGetXOffset* = 2398
  ScintillaMessageChooseCaretX* = 2399
  ScintillaMessageGrabFocus* = 2400
  ScintillaMessageSetXCaretPolicy* = 2402
  ScintillaMessageSetYCaretPolicy* = 2403
  ScintillaMessageSetPrintWrapMode* = 2406
  ScintillaMessageGetPrintWrapMode* = 2407
  ScintillaMessageSetHotspotActiveFore* = 2410
  ScintillaMessageGetHotspotActiveFore* = 2494
  ScintillaMessageSetHotspotActiveBack* = 2411
  ScintillaMessageGetHotspotActiveBack* = 2495
  ScintillaMessageSetHotspotActiveUnderline* = 2412
  ScintillaMessageGetHotspotActiveUnderline* = 2496
  ScintillaMessageSetHotspotSingleLine* = 2421
  ScintillaMessageGetHotspotSingleLine* = 2497
  ScintillaMessageParaDown* = 2413
  ScintillaMessageParaDownExtend* = 2414
  ScintillaMessageParaUp* = 2415
  ScintillaMessageParaUpExtend* = 2416
  ScintillaMessagePositionBefore* = 2417
  ScintillaMessagePositionAfter* = 2418
  ScintillaMessagePositionRelative* = 2670
  ScintillaMessagePositionRelativeCodeUnits* = 2716
  ScintillaMessageCopyRange* = 2419
  ScintillaMessageCopyText* = 2420
  ScintillaMessageSetSelectionMode* = 2422
  ScintillaMessageChangeSelectionMode* = 2659
  ScintillaMessageGetSelectionMode* = 2423
  ScintillaMessageSetMoveExtendsSelection* = 2719
  ScintillaMessageGetMoveExtendsSelection* = 2706
  ScintillaMessageGetLineSelStartPosition* = 2424
  ScintillaMessageGetLineSelEndPosition* = 2425
  ScintillaMessageLineDownRectExtend* = 2426
  ScintillaMessageLineUpRectExtend* = 2427
  ScintillaMessageCharLeftRectExtend* = 2428
  ScintillaMessageCharRightRectExtend* = 2429
  ScintillaMessageHomeRectExtend* = 2430
  ScintillaMessageVCHomeRectExtend* = 2431
  ScintillaMessageLineEndRectExtend* = 2432
  ScintillaMessagePageUpRectExtend* = 2433
  ScintillaMessagePageDownRectExtend* = 2434
  ScintillaMessageStutteredPageUp* = 2435
  ScintillaMessageStutteredPageUpExtend* = 2436
  ScintillaMessageStutteredPageDown* = 2437
  ScintillaMessageStutteredPageDownExtend* = 2438
  ScintillaMessageWordLeftEnd* = 2439
  ScintillaMessageWordLeftEndExtend* = 2440
  ScintillaMessageWordRightEnd* = 2441
  ScintillaMessageWordRightEndExtend* = 2442
  ScintillaMessageSetWhitespaceChars* = 2443
  ScintillaMessageGetWhitespaceChars* = 2647
  ScintillaMessageSetPunctuationChars* = 2648
  ScintillaMessageGetPunctuationChars* = 2649
  ScintillaMessageSetCharsDefault* = 2444
  ScintillaMessageAutoCGetCurrent* = 2445
  ScintillaMessageAutoCGetCurrentText* = 2610
  ScintillaMessageAutoCSetCaseInsensitiveBehaviour* = 2634
  ScintillaMessageAutoCGetCaseInsensitiveBehaviour* = 2635
  ScintillaMessageAutoCSetMulti* = 2636
  ScintillaMessageAutoCGetMulti* = 2637
  ScintillaMessageAutoCSetOrder* = 2660
  ScintillaMessageAutoCGetOrder* = 2661
  ScintillaMessageAllocate* = 2446
  ScintillaMessageTargetAsUTF8* = 2447
  ScintillaMessageSetLengthForEncode* = 2448
  ScintillaMessageEncodedFromUTF8* = 2449
  ScintillaMessageFindColumn* = 2456
  ScintillaMessageGetCaretSticky* = 2457
  ScintillaMessageSetCaretSticky* = 2458
  ScintillaMessageToggleCaretSticky* = 2459
  ScintillaMessageSetPasteConvertEndings* = 2467
  ScintillaMessageGetPasteConvertEndings* = 2468
  ScintillaMessageReplaceRectangular* = 2771
  ScintillaMessageSelectionDuplicate* = 2469
  ScintillaMessageSetCaretLineBackAlpha* = 2470
  ScintillaMessageGetCaretLineBackAlpha* = 2471
  ScintillaMessageSetCaretStyle* = 2512
  ScintillaMessageGetCaretStyle* = 2513
  ScintillaMessageSetIndicatorCurrent* = 2500
  ScintillaMessageGetIndicatorCurrent* = 2501
  ScintillaMessageSetIndicatorValue* = 2502
  ScintillaMessageGetIndicatorValue* = 2503
  ScintillaMessageIndicatorFillRange* = 2504
  ScintillaMessageIndicatorClearRange* = 2505
  ScintillaMessageIndicatorAllOnFor* = 2506
  ScintillaMessageIndicatorValueAt* = 2507
  ScintillaMessageIndicatorStart* = 2508
  ScintillaMessageIndicatorEnd* = 2509
  ScintillaMessageSetPositionCache* = 2514
  ScintillaMessageGetPositionCache* = 2515
  ScintillaMessageSetLayoutThreads* = 2775
  ScintillaMessageGetLayoutThreads* = 2776
  ScintillaMessageCopyAllowLine* = 2519
  ScintillaMessageCutAllowLine* = 2810
  ScintillaMessageSetCopySeparator* = 2811
  ScintillaMessageGetCopySeparator* = 2812
  ScintillaMessageGetCharacterPointer* = 2520
  ScintillaMessageGetRangePointer* = 2643
  ScintillaMessageGetGapPosition* = 2644
  ScintillaMessageIndicSetAlpha* = 2523
  ScintillaMessageIndicGetAlpha* = 2524
  ScintillaMessageIndicSetOutlineAlpha* = 2558
  ScintillaMessageIndicGetOutlineAlpha* = 2559
  ScintillaMessageSetExtraAscent* = 2525
  ScintillaMessageGetExtraAscent* = 2526
  ScintillaMessageSetExtraDescent* = 2527
  ScintillaMessageGetExtraDescent* = 2528
  ScintillaMessageMarkerSymbolDefined* = 2529
  ScintillaMessageMarginSetText* = 2530
  ScintillaMessageMarginGetText* = 2531
  ScintillaMessageMarginSetStyle* = 2532
  ScintillaMessageMarginGetStyle* = 2533
  ScintillaMessageMarginSetStyles* = 2534
  ScintillaMessageMarginGetStyles* = 2535
  ScintillaMessageMarginTextClearAll* = 2536
  ScintillaMessageMarginSetStyleOffset* = 2537
  ScintillaMessageMarginGetStyleOffset* = 2538
  ScintillaMessageSetMarginOptions* = 2539
  ScintillaMessageGetMarginOptions* = 2557
  ScintillaMessageAnnotationSetText* = 2540
  ScintillaMessageAnnotationGetText* = 2541
  ScintillaMessageAnnotationSetStyle* = 2542
  ScintillaMessageAnnotationGetStyle* = 2543
  ScintillaMessageAnnotationSetStyles* = 2544
  ScintillaMessageAnnotationGetStyles* = 2545
  ScintillaMessageAnnotationGetLines* = 2546
  ScintillaMessageAnnotationClearAll* = 2547
  ScintillaMessageAnnotationSetVisible* = 2548
  ScintillaMessageAnnotationGetVisible* = 2549
  ScintillaMessageAnnotationSetStyleOffset* = 2550
  ScintillaMessageAnnotationGetStyleOffset* = 2551
  ScintillaMessageReleaseAllExtendedStyles* = 2552
  ScintillaMessageAllocateExtendedStyles* = 2553
  ScintillaMessageAddUndoAction* = 2560
  ScintillaMessageCharPositionFromPoint* = 2561
  ScintillaMessageCharPositionFromPointClose* = 2562
  ScintillaMessageSetMouseSelectionRectangularSwitch* = 2668
  ScintillaMessageGetMouseSelectionRectangularSwitch* = 2669
  ScintillaMessageSetMultipleSelection* = 2563
  ScintillaMessageGetMultipleSelection* = 2564
  ScintillaMessageSetAdditionalSelectionTyping* = 2565
  ScintillaMessageGetAdditionalSelectionTyping* = 2566
  ScintillaMessageSetAdditionalCaretsBlink* = 2567
  ScintillaMessageGetAdditionalCaretsBlink* = 2568
  ScintillaMessageSetAdditionalCaretsVisible* = 2608
  ScintillaMessageGetAdditionalCaretsVisible* = 2609
  ScintillaMessageGetSelections* = 2570
  ScintillaMessageGetSelectionEmpty* = 2650
  ScintillaMessageClearSelections* = 2571
  ScintillaMessageSetSelection* = 2572
  ScintillaMessageAddSelection* = 2573
  ScintillaMessageSelectionFromPoint* = 2474
  ScintillaMessageDropSelectionN* = 2671
  ScintillaMessageSetMainSelection* = 2574
  ScintillaMessageGetMainSelection* = 2575
  ScintillaMessageSetSelectionNCaret* = 2576
  ScintillaMessageGetSelectionNCaret* = 2577
  ScintillaMessageSetSelectionNAnchor* = 2578
  ScintillaMessageGetSelectionNAnchor* = 2579
  ScintillaMessageSetSelectionNCaretVirtualSpace* = 2580
  ScintillaMessageGetSelectionNCaretVirtualSpace* = 2581
  ScintillaMessageSetSelectionNAnchorVirtualSpace* = 2582
  ScintillaMessageGetSelectionNAnchorVirtualSpace* = 2583
  ScintillaMessageSetSelectionNStart* = 2584
  ScintillaMessageGetSelectionNStart* = 2585
  ScintillaMessageGetSelectionNStartVirtualSpace* = 2726
  ScintillaMessageSetSelectionNEnd* = 2586
  ScintillaMessageGetSelectionNEndVirtualSpace* = 2727
  ScintillaMessageGetSelectionNEnd* = 2587
  ScintillaMessageSetRectangularSelectionCaret* = 2588
  ScintillaMessageGetRectangularSelectionCaret* = 2589
  ScintillaMessageSetRectangularSelectionAnchor* = 2590
  ScintillaMessageGetRectangularSelectionAnchor* = 2591
  ScintillaMessageSetRectangularSelectionCaretVirtualSpace* = 2592
  ScintillaMessageGetRectangularSelectionCaretVirtualSpace* = 2593
  ScintillaMessageSetRectangularSelectionAnchorVirtualSpace* = 2594
  ScintillaMessageGetRectangularSelectionAnchorVirtualSpace* = 2595
  ScintillaMessageSetVirtualSpaceOptions* = 2596
  ScintillaMessageGetVirtualSpaceOptions* = 2597
  ScintillaMessageSetRectangularSelectionModifier* = 2598
  ScintillaMessageGetRectangularSelectionModifier* = 2599
  ScintillaMessageSetAdditionalSelFore* = 2600
  ScintillaMessageSetAdditionalSelBack* = 2601
  ScintillaMessageSetAdditionalSelAlpha* = 2602
  ScintillaMessageGetAdditionalSelAlpha* = 2603
  ScintillaMessageSetAdditionalCaretFore* = 2604
  ScintillaMessageGetAdditionalCaretFore* = 2605
  ScintillaMessageRotateSelection* = 2606
  ScintillaMessageSwapMainAnchorCaret* = 2607
  ScintillaMessageMultipleSelectAddNext* = 2688
  ScintillaMessageMultipleSelectAddEach* = 2689
  ScintillaMessageChangeLexerState* = 2617
  ScintillaMessageContractedFoldNext* = 2618
  ScintillaMessageVerticalCentreCaret* = 2619
  ScintillaMessageMoveSelectedLinesUp* = 2620
  ScintillaMessageMoveSelectedLinesDown* = 2621
  ScintillaMessageSetIdentifier* = 2622
  ScintillaMessageGetIdentifier* = 2623
  ScintillaMessageRGBAImageSetWidth* = 2624
  ScintillaMessageRGBAImageSetHeight* = 2625
  ScintillaMessageRGBAImageSetScale* = 2651
  ScintillaMessageMarkerDefineRGBAImage* = 2626
  ScintillaMessageRegisterRGBAImage* = 2627
  ScintillaMessageScrollToStart* = 2628
  ScintillaMessageScrollToEnd* = 2629
  ScintillaMessageSetTechnology* = 2630
  ScintillaMessageGetTechnology* = 2631
  ScintillaMessageCreateLoader* = 2632
  ScintillaMessageFindIndicatorShow* = 2640
  ScintillaMessageFindIndicatorFlash* = 2641
  ScintillaMessageFindIndicatorHide* = 2642
  ScintillaMessageVCHomeDisplay* = 2652
  ScintillaMessageVCHomeDisplayExtend* = 2653
  ScintillaMessageGetCaretLineVisibleAlways* = 2654
  ScintillaMessageSetCaretLineVisibleAlways* = 2655
  ScintillaMessageSetLineEndTypesAllowed* = 2656
  ScintillaMessageGetLineEndTypesAllowed* = 2657
  ScintillaMessageGetLineEndTypesActive* = 2658
  ScintillaMessageSetRepresentation* = 2665
  ScintillaMessageGetRepresentation* = 2666
  ScintillaMessageClearRepresentation* = 2667
  ScintillaMessageClearAllRepresentations* = 2770
  ScintillaMessageSetRepresentationAppearance* = 2766
  ScintillaMessageGetRepresentationAppearance* = 2767
  ScintillaMessageSetRepresentationColour* = 2768
  ScintillaMessageGetRepresentationColour* = 2769
  ScintillaMessageEOLAnnotationSetText* = 2740
  ScintillaMessageEOLAnnotationGetText* = 2741
  ScintillaMessageEOLAnnotationSetStyle* = 2742
  ScintillaMessageEOLAnnotationGetStyle* = 2743
  ScintillaMessageEOLAnnotationClearAll* = 2744
  ScintillaMessageEOLAnnotationSetVisible* = 2745
  ScintillaMessageEOLAnnotationGetVisible* = 2746
  ScintillaMessageEOLAnnotationSetStyleOffset* = 2747
  ScintillaMessageEOLAnnotationGetStyleOffset* = 2748
  ScintillaMessageSupportsFeature* = 2750
  ScintillaMessageGetLineCharacterIndex* = 2710
  ScintillaMessageAllocateLineCharacterIndex* = 2711
  ScintillaMessageReleaseLineCharacterIndex* = 2712
  ScintillaMessageLineFromIndexPosition* = 2713
  ScintillaMessageIndexPositionFromLine* = 2714
  ScintillaMessageStartRecord* = 3001
  ScintillaMessageStopRecord* = 3002
  ScintillaMessageGetLexer* = 4002
  ScintillaMessageColourise* = 4003
  ScintillaMessageSetProperty* = 4004
  ScintillaMessageSetKeyWords* = 4005
  ScintillaMessageGetProperty* = 4008
  ScintillaMessageGetPropertyExpanded* = 4009
  ScintillaMessageGetPropertyInt* = 4010
  ScintillaMessageGetLexerLanguage* = 4012
  ScintillaMessagePrivateLexerCall* = 4013
  ScintillaMessagePropertyNames* = 4014
  ScintillaMessagePropertyType* = 4015
  ScintillaMessageDescribeProperty* = 4016
  ScintillaMessageDescribeKeyWordSets* = 4017
  ScintillaMessageGetLineEndTypesSupported* = 4018
  ScintillaMessageAllocateSubStyles* = 4020
  ScintillaMessageGetSubStylesStart* = 4021
  ScintillaMessageGetSubStylesLength* = 4022
  ScintillaMessageGetStyleFromSubStyle* = 4027
  ScintillaMessageGetPrimaryStyleFromStyle* = 4028
  ScintillaMessageFreeSubStyles* = 4023
  ScintillaMessageSetIdentifiers* = 4024
  ScintillaMessageDistanceToSecondaryStyles* = 4025
  ScintillaMessageGetSubStyleBases* = 4026
  ScintillaMessageGetNamedStyles* = 4029
  ScintillaMessageNameOfStyle* = 4030
  ScintillaMessageTagsOfStyle* = 4031
  ScintillaMessageDescriptionOfStyle* = 4032
  ScintillaMessageSetILexer* = 4033
  ScintillaMessageGetBidirectional* = 2708
  ScintillaMessageSetBidirectional* = 2709



type stdnullopt_t_Construct* = cint
const
  Stdnullopt_t_Token* = 0



type ScintillaInternalSurfaceEnds* = cint
const
  ScintillaInternalSurfacesemiCircles* = 0
  ScintillaInternalSurfaceleftFlat* = 1
  ScintillaInternalSurfaceleftAngle* = 2
  ScintillaInternalSurfacerightFlat* = 16
  ScintillaInternalSurfacerightAngle* = 32



type ScintillaInternalSurfaceGradientOptions* = cint
const
  ScintillaInternalSurfaceleftToRight* = 0
  ScintillaInternalSurfacetopToBottom* = 1



type ScintillaInternalWindowCursor* = cint
const
  ScintillaInternalWindowinvalid* = 0
  ScintillaInternalWindowtext* = 1
  ScintillaInternalWindowarrow* = 2
  ScintillaInternalWindowup* = 3
  ScintillaInternalWindowwait* = 4
  ScintillaInternalWindowhorizontal* = 5
  ScintillaInternalWindowvertical* = 6
  ScintillaInternalWindowreverseArrow* = 7
  ScintillaInternalWindowhand* = 8



type ScintillaInternalListBoxEventEventType* = cint
const
  ScintillaInternalListBoxEventselectionChange* = 0
  ScintillaInternalListBoxEventdoubleClick* = 1



import gen_ScintillaEdit_types
export gen_ScintillaEdit_types

import
  gen_qabstractscrollarea,
  gen_qcoreevent,
  gen_qevent,
  gen_qmetaobject,
  gen_qmimedata,
  gen_qnamespace,
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
  gen_qnamespace,
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
proc fcScintillaEdit_delete(self: pointer) {.importc: "ScintillaEdit_delete".}


func init*(T: type ScintillaInternalPoint, h: ptr cScintillaInternalPoint): ScintillaInternalPoint =
  T(h: h)
proc create*(T: type ScintillaInternalPoint, ): ScintillaInternalPoint =

  ScintillaInternalPoint.init(fcScintillaInternalPoint_new())
proc create*(T: type ScintillaInternalPoint, param1: ScintillaInternalPoint): ScintillaInternalPoint =

  ScintillaInternalPoint.init(fcScintillaInternalPoint_new2(param1.h))
proc create*(T: type ScintillaInternalPoint, x_x: float64): ScintillaInternalPoint =

  ScintillaInternalPoint.init(fcScintillaInternalPoint_new3(x_x))
proc create*(T: type ScintillaInternalPoint, x_x: float64, y_x: float64): ScintillaInternalPoint =

  ScintillaInternalPoint.init(fcScintillaInternalPoint_new4(x_x, y_x))
proc FromInts*(_: type ScintillaInternalPoint, x_x: cint, y_x: cint): ScintillaInternalPoint =

  ScintillaInternalPoint(h: fcScintillaInternalPoint_FromInts(x_x, y_x))

proc operatorEqual*(self: ScintillaInternalPoint, other: ScintillaInternalPoint): bool =

  fcScintillaInternalPoint_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: ScintillaInternalPoint, other: ScintillaInternalPoint): bool =

  fcScintillaInternalPoint_operatorNotEqual(self.h, other.h)

proc operatorPlus*(self: ScintillaInternalPoint, other: ScintillaInternalPoint): ScintillaInternalPoint =

  ScintillaInternalPoint(h: fcScintillaInternalPoint_operatorPlus(self.h, other.h))

proc operatorMinus*(self: ScintillaInternalPoint, other: ScintillaInternalPoint): ScintillaInternalPoint =

  ScintillaInternalPoint(h: fcScintillaInternalPoint_operatorMinus(self.h, other.h))

proc delete*(self: ScintillaInternalPoint) =
  fcScintillaInternalPoint_delete(self.h)

func init*(T: type ScintillaInternalInterval, h: ptr cScintillaInternalInterval): ScintillaInternalInterval =
  T(h: h)
proc operatorEqual*(self: ScintillaInternalInterval, other: ScintillaInternalInterval): bool =

  fcScintillaInternalInterval_operatorEqual(self.h, other.h)

proc Width*(self: ScintillaInternalInterval, ): float64 =

  fcScintillaInternalInterval_Width(self.h)

proc Empty*(self: ScintillaInternalInterval, ): bool =

  fcScintillaInternalInterval_Empty(self.h)

proc Intersects*(self: ScintillaInternalInterval, other: ScintillaInternalInterval): bool =

  fcScintillaInternalInterval_Intersects(self.h, other.h)

proc Offset*(self: ScintillaInternalInterval, offset: float64): ScintillaInternalInterval =

  ScintillaInternalInterval(h: fcScintillaInternalInterval_Offset(self.h, offset))

proc delete*(self: ScintillaInternalInterval) =
  fcScintillaInternalInterval_delete(self.h)

func init*(T: type ScintillaInternalPRectangle, h: ptr cScintillaInternalPRectangle): ScintillaInternalPRectangle =
  T(h: h)
proc create*(T: type ScintillaInternalPRectangle, ): ScintillaInternalPRectangle =

  ScintillaInternalPRectangle.init(fcScintillaInternalPRectangle_new())
proc create*(T: type ScintillaInternalPRectangle, param1: ScintillaInternalPRectangle): ScintillaInternalPRectangle =

  ScintillaInternalPRectangle.init(fcScintillaInternalPRectangle_new2(param1.h))
proc create*(T: type ScintillaInternalPRectangle, left_x: float64): ScintillaInternalPRectangle =

  ScintillaInternalPRectangle.init(fcScintillaInternalPRectangle_new3(left_x))
proc create*(T: type ScintillaInternalPRectangle, left_x: float64, top_x: float64): ScintillaInternalPRectangle =

  ScintillaInternalPRectangle.init(fcScintillaInternalPRectangle_new4(left_x, top_x))
proc create*(T: type ScintillaInternalPRectangle, left_x: float64, top_x: float64, right_x: float64): ScintillaInternalPRectangle =

  ScintillaInternalPRectangle.init(fcScintillaInternalPRectangle_new5(left_x, top_x, right_x))
proc create*(T: type ScintillaInternalPRectangle, left_x: float64, top_x: float64, right_x: float64, bottom_x: float64): ScintillaInternalPRectangle =

  ScintillaInternalPRectangle.init(fcScintillaInternalPRectangle_new6(left_x, top_x, right_x, bottom_x))
proc FromInts*(_: type ScintillaInternalPRectangle, left_x: cint, top_x: cint, right_x: cint, bottom_x: cint): ScintillaInternalPRectangle =

  ScintillaInternalPRectangle(h: fcScintillaInternalPRectangle_FromInts(left_x, top_x, right_x, bottom_x))

proc operatorEqual*(self: ScintillaInternalPRectangle, rc: ScintillaInternalPRectangle): bool =

  fcScintillaInternalPRectangle_operatorEqual(self.h, rc.h)

proc Contains*(self: ScintillaInternalPRectangle, pt: ScintillaInternalPoint): bool =

  fcScintillaInternalPRectangle_Contains(self.h, pt.h)

proc ContainsWholePixel*(self: ScintillaInternalPRectangle, pt: ScintillaInternalPoint): bool =

  fcScintillaInternalPRectangle_ContainsWholePixel(self.h, pt.h)

proc ContainsWithRc*(self: ScintillaInternalPRectangle, rc: ScintillaInternalPRectangle): bool =

  fcScintillaInternalPRectangle_ContainsWithRc(self.h, rc.h)

proc Intersects*(self: ScintillaInternalPRectangle, other: ScintillaInternalPRectangle): bool =

  fcScintillaInternalPRectangle_Intersects(self.h, other.h)

proc IntersectsWithHorizontalBounds*(self: ScintillaInternalPRectangle, horizontalBounds: ScintillaInternalInterval): bool =

  fcScintillaInternalPRectangle_IntersectsWithHorizontalBounds(self.h, horizontalBounds.h)

proc Move*(self: ScintillaInternalPRectangle, xDelta: float64, yDelta: float64): void =

  fcScintillaInternalPRectangle_Move(self.h, xDelta, yDelta)

proc WithHorizontalBounds*(self: ScintillaInternalPRectangle, horizontal: ScintillaInternalInterval): ScintillaInternalPRectangle =

  ScintillaInternalPRectangle(h: fcScintillaInternalPRectangle_WithHorizontalBounds(self.h, horizontal.h))

proc Inset*(self: ScintillaInternalPRectangle, delta: float64): ScintillaInternalPRectangle =

  ScintillaInternalPRectangle(h: fcScintillaInternalPRectangle_Inset(self.h, delta))

proc InsetWithDelta*(self: ScintillaInternalPRectangle, delta: ScintillaInternalPoint): ScintillaInternalPRectangle =

  ScintillaInternalPRectangle(h: fcScintillaInternalPRectangle_InsetWithDelta(self.h, delta.h))

proc Centre*(self: ScintillaInternalPRectangle, ): ScintillaInternalPoint =

  ScintillaInternalPoint(h: fcScintillaInternalPRectangle_Centre(self.h))

proc Width*(self: ScintillaInternalPRectangle, ): float64 =

  fcScintillaInternalPRectangle_Width(self.h)

proc Height*(self: ScintillaInternalPRectangle, ): float64 =

  fcScintillaInternalPRectangle_Height(self.h)

proc Empty*(self: ScintillaInternalPRectangle, ): bool =

  fcScintillaInternalPRectangle_Empty(self.h)

proc delete*(self: ScintillaInternalPRectangle) =
  fcScintillaInternalPRectangle_delete(self.h)

func init*(T: type ScintillaInternalColourRGBA, h: ptr cScintillaInternalColourRGBA): ScintillaInternalColourRGBA =
  T(h: h)
proc create*(T: type ScintillaInternalColourRGBA, ): ScintillaInternalColourRGBA =

  ScintillaInternalColourRGBA.init(fcScintillaInternalColourRGBA_new())
proc create*(T: type ScintillaInternalColourRGBA, red: cuint, green: cuint, blue: cuint): ScintillaInternalColourRGBA =

  ScintillaInternalColourRGBA.init(fcScintillaInternalColourRGBA_new2(red, green, blue))
proc create*(T: type ScintillaInternalColourRGBA, cd: ScintillaInternalColourRGBA, alpha: cuint): ScintillaInternalColourRGBA =

  ScintillaInternalColourRGBA.init(fcScintillaInternalColourRGBA_new3(cd.h, alpha))
proc create*(T: type ScintillaInternalColourRGBA, param1: ScintillaInternalColourRGBA): ScintillaInternalColourRGBA =

  ScintillaInternalColourRGBA.init(fcScintillaInternalColourRGBA_new4(param1.h))
proc create*(T: type ScintillaInternalColourRGBA, co_x: cint): ScintillaInternalColourRGBA =

  ScintillaInternalColourRGBA.init(fcScintillaInternalColourRGBA_new5(co_x))
proc create*(T: type ScintillaInternalColourRGBA, red: cuint, green: cuint, blue: cuint, alpha: cuint): ScintillaInternalColourRGBA =

  ScintillaInternalColourRGBA.init(fcScintillaInternalColourRGBA_new6(red, green, blue, alpha))
proc FromRGB*(_: type ScintillaInternalColourRGBA, co_x: cint): ScintillaInternalColourRGBA =

  ScintillaInternalColourRGBA(h: fcScintillaInternalColourRGBA_FromRGB(co_x))

proc Grey*(_: type ScintillaInternalColourRGBA, grey: cuint): ScintillaInternalColourRGBA =

  ScintillaInternalColourRGBA(h: fcScintillaInternalColourRGBA_Grey(grey))

proc FromIpRGB*(_: type ScintillaInternalColourRGBA, co_x: miqt_intptr_t): ScintillaInternalColourRGBA =

  ScintillaInternalColourRGBA(h: fcScintillaInternalColourRGBA_FromIpRGB(co_x))

proc WithoutAlpha*(self: ScintillaInternalColourRGBA, ): ScintillaInternalColourRGBA =

  ScintillaInternalColourRGBA(h: fcScintillaInternalColourRGBA_WithoutAlpha(self.h))

proc Opaque*(self: ScintillaInternalColourRGBA, ): ScintillaInternalColourRGBA =

  ScintillaInternalColourRGBA(h: fcScintillaInternalColourRGBA_Opaque(self.h))

proc AsInteger*(self: ScintillaInternalColourRGBA, ): cint =

  fcScintillaInternalColourRGBA_AsInteger(self.h)

proc OpaqueRGB*(self: ScintillaInternalColourRGBA, ): cint =

  fcScintillaInternalColourRGBA_OpaqueRGB(self.h)

proc GetRed*(self: ScintillaInternalColourRGBA, ): uint8 =

  fcScintillaInternalColourRGBA_GetRed(self.h)

proc GetGreen*(self: ScintillaInternalColourRGBA, ): uint8 =

  fcScintillaInternalColourRGBA_GetGreen(self.h)

proc GetBlue*(self: ScintillaInternalColourRGBA, ): uint8 =

  fcScintillaInternalColourRGBA_GetBlue(self.h)

proc GetAlpha*(self: ScintillaInternalColourRGBA, ): uint8 =

  fcScintillaInternalColourRGBA_GetAlpha(self.h)

proc GetRedComponent*(self: ScintillaInternalColourRGBA, ): float32 =

  fcScintillaInternalColourRGBA_GetRedComponent(self.h)

proc GetGreenComponent*(self: ScintillaInternalColourRGBA, ): float32 =

  fcScintillaInternalColourRGBA_GetGreenComponent(self.h)

proc GetBlueComponent*(self: ScintillaInternalColourRGBA, ): float32 =

  fcScintillaInternalColourRGBA_GetBlueComponent(self.h)

proc GetAlphaComponent*(self: ScintillaInternalColourRGBA, ): float32 =

  fcScintillaInternalColourRGBA_GetAlphaComponent(self.h)

proc operatorEqual*(self: ScintillaInternalColourRGBA, other: ScintillaInternalColourRGBA): bool =

  fcScintillaInternalColourRGBA_operatorEqual(self.h, other.h)

proc IsOpaque*(self: ScintillaInternalColourRGBA, ): bool =

  fcScintillaInternalColourRGBA_IsOpaque(self.h)

proc MixedWith*(self: ScintillaInternalColourRGBA, other: ScintillaInternalColourRGBA): ScintillaInternalColourRGBA =

  ScintillaInternalColourRGBA(h: fcScintillaInternalColourRGBA_MixedWith(self.h, other.h))

proc MixedWith2*(self: ScintillaInternalColourRGBA, other: ScintillaInternalColourRGBA, proportion: float64): ScintillaInternalColourRGBA =

  ScintillaInternalColourRGBA(h: fcScintillaInternalColourRGBA_MixedWith2(self.h, other.h, proportion))

proc operatorAssign*(self: ScintillaInternalColourRGBA, param1: ScintillaInternalColourRGBA): void =

  fcScintillaInternalColourRGBA_operatorAssign(self.h, param1.h)

proc Grey2*(_: type ScintillaInternalColourRGBA, grey: cuint, alpha: cuint): ScintillaInternalColourRGBA =

  ScintillaInternalColourRGBA(h: fcScintillaInternalColourRGBA_Grey2(grey, alpha))

proc delete*(self: ScintillaInternalColourRGBA) =
  fcScintillaInternalColourRGBA_delete(self.h)

func init*(T: type ScintillaInternalStroke, h: ptr cScintillaInternalStroke): ScintillaInternalStroke =
  T(h: h)
proc create*(T: type ScintillaInternalStroke, colour_x: ScintillaInternalColourRGBA): ScintillaInternalStroke =

  ScintillaInternalStroke.init(fcScintillaInternalStroke_new(colour_x.h))
proc create2*(T: type ScintillaInternalStroke, param1: ScintillaInternalStroke): ScintillaInternalStroke =

  ScintillaInternalStroke.init(fcScintillaInternalStroke_new2(param1.h))
proc create*(T: type ScintillaInternalStroke, colour_x: ScintillaInternalColourRGBA, width_x: float64): ScintillaInternalStroke =

  ScintillaInternalStroke.init(fcScintillaInternalStroke_new3(colour_x.h, width_x))
proc WidthF*(self: ScintillaInternalStroke, ): float32 =

  fcScintillaInternalStroke_WidthF(self.h)

proc delete*(self: ScintillaInternalStroke) =
  fcScintillaInternalStroke_delete(self.h)

func init*(T: type ScintillaInternalFill, h: ptr cScintillaInternalFill): ScintillaInternalFill =
  T(h: h)
proc create*(T: type ScintillaInternalFill, colour_x: ScintillaInternalColourRGBA): ScintillaInternalFill =

  ScintillaInternalFill.init(fcScintillaInternalFill_new(colour_x.h))
proc create2*(T: type ScintillaInternalFill, param1: ScintillaInternalFill): ScintillaInternalFill =

  ScintillaInternalFill.init(fcScintillaInternalFill_new2(param1.h))
proc delete*(self: ScintillaInternalFill) =
  fcScintillaInternalFill_delete(self.h)

func init*(T: type ScintillaInternalFillStroke, h: ptr cScintillaInternalFillStroke): ScintillaInternalFillStroke =
  T(h: h)
proc create*(T: type ScintillaInternalFillStroke, colourFill_x: ScintillaInternalColourRGBA, colourStroke_x: ScintillaInternalColourRGBA): ScintillaInternalFillStroke =

  ScintillaInternalFillStroke.init(fcScintillaInternalFillStroke_new(colourFill_x.h, colourStroke_x.h))
proc create*(T: type ScintillaInternalFillStroke, colourBoth: ScintillaInternalColourRGBA): ScintillaInternalFillStroke =

  ScintillaInternalFillStroke.init(fcScintillaInternalFillStroke_new2(colourBoth.h))
proc create*(T: type ScintillaInternalFillStroke, colourFill_x: ScintillaInternalColourRGBA, colourStroke_x: ScintillaInternalColourRGBA, widthStroke_x: float64): ScintillaInternalFillStroke =

  ScintillaInternalFillStroke.init(fcScintillaInternalFillStroke_new3(colourFill_x.h, colourStroke_x.h, widthStroke_x))
proc create*(T: type ScintillaInternalFillStroke, colourBoth: ScintillaInternalColourRGBA, widthStroke_x: float64): ScintillaInternalFillStroke =

  ScintillaInternalFillStroke.init(fcScintillaInternalFillStroke_new4(colourBoth.h, widthStroke_x))
proc delete*(self: ScintillaInternalFillStroke) =
  fcScintillaInternalFillStroke_delete(self.h)

func init*(T: type ScintillaInternalColourStop, h: ptr cScintillaInternalColourStop): ScintillaInternalColourStop =
  T(h: h)
proc create*(T: type ScintillaInternalColourStop, position_x: float64, colour_x: ScintillaInternalColourRGBA): ScintillaInternalColourStop =

  ScintillaInternalColourStop.init(fcScintillaInternalColourStop_new(position_x, colour_x.h))
proc delete*(self: ScintillaInternalColourStop) =
  fcScintillaInternalColourStop_delete(self.h)

func init*(T: type ScintillaCharacterRange, h: ptr cScintillaCharacterRange): ScintillaCharacterRange =
  T(h: h)
proc delete*(self: ScintillaCharacterRange) =
  fcScintillaCharacterRange_delete(self.h)

func init*(T: type ScintillaCharacterRangeFull, h: ptr cScintillaCharacterRangeFull): ScintillaCharacterRangeFull =
  T(h: h)
proc delete*(self: ScintillaCharacterRangeFull) =
  fcScintillaCharacterRangeFull_delete(self.h)

func init*(T: type ScintillaTextRange, h: ptr cScintillaTextRange): ScintillaTextRange =
  T(h: h)
proc delete*(self: ScintillaTextRange) =
  fcScintillaTextRange_delete(self.h)

func init*(T: type ScintillaTextRangeFull, h: ptr cScintillaTextRangeFull): ScintillaTextRangeFull =
  T(h: h)
proc delete*(self: ScintillaTextRangeFull) =
  fcScintillaTextRangeFull_delete(self.h)

func init*(T: type ScintillaTextToFind, h: ptr cScintillaTextToFind): ScintillaTextToFind =
  T(h: h)
proc delete*(self: ScintillaTextToFind) =
  fcScintillaTextToFind_delete(self.h)

func init*(T: type ScintillaTextToFindFull, h: ptr cScintillaTextToFindFull): ScintillaTextToFindFull =
  T(h: h)
proc delete*(self: ScintillaTextToFindFull) =
  fcScintillaTextToFindFull_delete(self.h)

func init*(T: type ScintillaRectangle, h: ptr cScintillaRectangle): ScintillaRectangle =
  T(h: h)
proc delete*(self: ScintillaRectangle) =
  fcScintillaRectangle_delete(self.h)

func init*(T: type ScintillaRangeToFormat, h: ptr cScintillaRangeToFormat): ScintillaRangeToFormat =
  T(h: h)
proc delete*(self: ScintillaRangeToFormat) =
  fcScintillaRangeToFormat_delete(self.h)

func init*(T: type ScintillaRangeToFormatFull, h: ptr cScintillaRangeToFormatFull): ScintillaRangeToFormatFull =
  T(h: h)
proc delete*(self: ScintillaRangeToFormatFull) =
  fcScintillaRangeToFormatFull_delete(self.h)

func init*(T: type ScintillaNotifyHeader, h: ptr cScintillaNotifyHeader): ScintillaNotifyHeader =
  T(h: h)
proc delete*(self: ScintillaNotifyHeader) =
  fcScintillaNotifyHeader_delete(self.h)

func init*(T: type ScintillaNotificationData, h: ptr cScintillaNotificationData): ScintillaNotificationData =
  T(h: h)
proc delete*(self: ScintillaNotificationData) =
  fcScintillaNotificationData_delete(self.h)

func init*(T: type ScintillaInternalFontParameters, h: ptr cScintillaInternalFontParameters): ScintillaInternalFontParameters =
  T(h: h)
proc create*(T: type ScintillaInternalFontParameters, faceName_x: cstring): ScintillaInternalFontParameters =

  ScintillaInternalFontParameters.init(fcScintillaInternalFontParameters_new(faceName_x))
proc create*(T: type ScintillaInternalFontParameters, faceName_x: cstring, size_x: float64): ScintillaInternalFontParameters =

  ScintillaInternalFontParameters.init(fcScintillaInternalFontParameters_new2(faceName_x, size_x))
proc create*(T: type ScintillaInternalFontParameters, faceName_x: cstring, size_x: float64, weight_x: ScintillaFontWeight): ScintillaInternalFontParameters =

  ScintillaInternalFontParameters.init(fcScintillaInternalFontParameters_new3(faceName_x, size_x, cint(weight_x)))
proc create*(T: type ScintillaInternalFontParameters, faceName_x: cstring, size_x: float64, weight_x: ScintillaFontWeight, italic_x: bool): ScintillaInternalFontParameters =

  ScintillaInternalFontParameters.init(fcScintillaInternalFontParameters_new4(faceName_x, size_x, cint(weight_x), italic_x))
proc create*(T: type ScintillaInternalFontParameters, faceName_x: cstring, size_x: float64, weight_x: ScintillaFontWeight, italic_x: bool, extraFontFlag_x: ScintillaFontQuality): ScintillaInternalFontParameters =

  ScintillaInternalFontParameters.init(fcScintillaInternalFontParameters_new5(faceName_x, size_x, cint(weight_x), italic_x, cint(extraFontFlag_x)))
proc create*(T: type ScintillaInternalFontParameters, faceName_x: cstring, size_x: float64, weight_x: ScintillaFontWeight, italic_x: bool, extraFontFlag_x: ScintillaFontQuality, technology_x: ScintillaTechnology): ScintillaInternalFontParameters =

  ScintillaInternalFontParameters.init(fcScintillaInternalFontParameters_new6(faceName_x, size_x, cint(weight_x), italic_x, cint(extraFontFlag_x), cint(technology_x)))
proc create*(T: type ScintillaInternalFontParameters, faceName_x: cstring, size_x: float64, weight_x: ScintillaFontWeight, italic_x: bool, extraFontFlag_x: ScintillaFontQuality, technology_x: ScintillaTechnology, characterSet_x: ScintillaCharacterSet): ScintillaInternalFontParameters =

  ScintillaInternalFontParameters.init(fcScintillaInternalFontParameters_new7(faceName_x, size_x, cint(weight_x), italic_x, cint(extraFontFlag_x), cint(technology_x), cint(characterSet_x)))
proc create*(T: type ScintillaInternalFontParameters, faceName_x: cstring, size_x: float64, weight_x: ScintillaFontWeight, italic_x: bool, extraFontFlag_x: ScintillaFontQuality, technology_x: ScintillaTechnology, characterSet_x: ScintillaCharacterSet, localeName_x: cstring): ScintillaInternalFontParameters =

  ScintillaInternalFontParameters.init(fcScintillaInternalFontParameters_new8(faceName_x, size_x, cint(weight_x), italic_x, cint(extraFontFlag_x), cint(technology_x), cint(characterSet_x), localeName_x))
proc create*(T: type ScintillaInternalFontParameters, faceName_x: cstring, size_x: float64, weight_x: ScintillaFontWeight, italic_x: bool, extraFontFlag_x: ScintillaFontQuality, technology_x: ScintillaTechnology, characterSet_x: ScintillaCharacterSet, localeName_x: cstring, stretch_x: ScintillaFontStretch): ScintillaInternalFontParameters =

  ScintillaInternalFontParameters.init(fcScintillaInternalFontParameters_new9(faceName_x, size_x, cint(weight_x), italic_x, cint(extraFontFlag_x), cint(technology_x), cint(characterSet_x), localeName_x, cint(stretch_x)))
proc delete*(self: ScintillaInternalFontParameters) =
  fcScintillaInternalFontParameters_delete(self.h)

func init*(T: type ScintillaInternalFont, h: ptr cScintillaInternalFont): ScintillaInternalFont =
  T(h: h)
proc create*(T: type ScintillaInternalFont, ): ScintillaInternalFont =

  ScintillaInternalFont.init(fcScintillaInternalFont_new())
proc delete*(self: ScintillaInternalFont) =
  fcScintillaInternalFont_delete(self.h)

func init*(T: type ScintillaInternalIScreenLine, h: ptr cScintillaInternalIScreenLine): ScintillaInternalIScreenLine =
  T(h: h)
proc Length*(self: ScintillaInternalIScreenLine, ): csize_t =

  fcScintillaInternalIScreenLine_Length(self.h)

proc RepresentationCount*(self: ScintillaInternalIScreenLine, ): csize_t =

  fcScintillaInternalIScreenLine_RepresentationCount(self.h)

proc Width*(self: ScintillaInternalIScreenLine, ): float64 =

  fcScintillaInternalIScreenLine_Width(self.h)

proc Height*(self: ScintillaInternalIScreenLine, ): float64 =

  fcScintillaInternalIScreenLine_Height(self.h)

proc TabWidth*(self: ScintillaInternalIScreenLine, ): float64 =

  fcScintillaInternalIScreenLine_TabWidth(self.h)

proc TabWidthMinimumPixels*(self: ScintillaInternalIScreenLine, ): float64 =

  fcScintillaInternalIScreenLine_TabWidthMinimumPixels(self.h)

proc FontOfPosition*(self: ScintillaInternalIScreenLine, position: csize_t): ScintillaInternalFont =

  ScintillaInternalFont(h: fcScintillaInternalIScreenLine_FontOfPosition(self.h, position))

proc RepresentationWidth*(self: ScintillaInternalIScreenLine, position: csize_t): float64 =

  fcScintillaInternalIScreenLine_RepresentationWidth(self.h, position)

proc TabPositionAfter*(self: ScintillaInternalIScreenLine, xPosition: float64): float64 =

  fcScintillaInternalIScreenLine_TabPositionAfter(self.h, xPosition)

proc operatorAssign*(self: ScintillaInternalIScreenLine, param1: ScintillaInternalIScreenLine): void =

  fcScintillaInternalIScreenLine_operatorAssign(self.h, param1.h)

proc delete*(self: ScintillaInternalIScreenLine) =
  fcScintillaInternalIScreenLine_delete(self.h)

func init*(T: type ScintillaInternalIScreenLineLayout, h: ptr cScintillaInternalIScreenLineLayout): ScintillaInternalIScreenLineLayout =
  T(h: h)
proc PositionFromX*(self: ScintillaInternalIScreenLineLayout, xDistance: float64, charPosition: bool): csize_t =

  fcScintillaInternalIScreenLineLayout_PositionFromX(self.h, xDistance, charPosition)

proc XFromPosition*(self: ScintillaInternalIScreenLineLayout, caretPosition: csize_t): float64 =

  fcScintillaInternalIScreenLineLayout_XFromPosition(self.h, caretPosition)

proc operatorAssign*(self: ScintillaInternalIScreenLineLayout, param1: ScintillaInternalIScreenLineLayout): void =

  fcScintillaInternalIScreenLineLayout_operatorAssign(self.h, param1.h)

proc delete*(self: ScintillaInternalIScreenLineLayout) =
  fcScintillaInternalIScreenLineLayout_delete(self.h)

func init*(T: type ScintillaInternalSurfaceMode, h: ptr cScintillaInternalSurfaceMode): ScintillaInternalSurfaceMode =
  T(h: h)
proc create*(T: type ScintillaInternalSurfaceMode, ): ScintillaInternalSurfaceMode =

  ScintillaInternalSurfaceMode.init(fcScintillaInternalSurfaceMode_new())
proc create*(T: type ScintillaInternalSurfaceMode, codePage_x: cint, bidiR2L_x: bool): ScintillaInternalSurfaceMode =

  ScintillaInternalSurfaceMode.init(fcScintillaInternalSurfaceMode_new2(codePage_x, bidiR2L_x))
proc delete*(self: ScintillaInternalSurfaceMode) =
  fcScintillaInternalSurfaceMode_delete(self.h)

func init*(T: type ScintillaInternalSurface, h: ptr cScintillaInternalSurface): ScintillaInternalSurface =
  T(h: h)
proc create*(T: type ScintillaInternalSurface, ): ScintillaInternalSurface =

  ScintillaInternalSurface.init(fcScintillaInternalSurface_new())
proc Init*(self: ScintillaInternalSurface, wid: pointer): void =

  fcScintillaInternalSurface_Init(self.h, wid)

proc Init2*(self: ScintillaInternalSurface, sid: pointer, wid: pointer): void =

  fcScintillaInternalSurface_Init2(self.h, sid, wid)

proc SetMode*(self: ScintillaInternalSurface, mode: ScintillaInternalSurfaceMode): void =

  fcScintillaInternalSurface_SetMode(self.h, mode.h)

proc Release*(self: ScintillaInternalSurface, ): void =

  fcScintillaInternalSurface_Release(self.h)

proc SupportsFeature*(self: ScintillaInternalSurface, feature: ScintillaSupports): cint =

  fcScintillaInternalSurface_SupportsFeature(self.h, cint(feature))

proc Initialised*(self: ScintillaInternalSurface, ): bool =

  fcScintillaInternalSurface_Initialised(self.h)

proc LogPixelsY*(self: ScintillaInternalSurface, ): cint =

  fcScintillaInternalSurface_LogPixelsY(self.h)

proc PixelDivisions*(self: ScintillaInternalSurface, ): cint =

  fcScintillaInternalSurface_PixelDivisions(self.h)

proc DeviceHeightFont*(self: ScintillaInternalSurface, points: cint): cint =

  fcScintillaInternalSurface_DeviceHeightFont(self.h, points)

proc LineDraw*(self: ScintillaInternalSurface, start: ScintillaInternalPoint, endVal: ScintillaInternalPoint, stroke: ScintillaInternalStroke): void =

  fcScintillaInternalSurface_LineDraw(self.h, start.h, endVal.h, stroke.h)

proc PolyLine*(self: ScintillaInternalSurface, pts: ScintillaInternalPoint, npts: csize_t, stroke: ScintillaInternalStroke): void =

  fcScintillaInternalSurface_PolyLine(self.h, pts.h, npts, stroke.h)

proc Polygon*(self: ScintillaInternalSurface, pts: ScintillaInternalPoint, npts: csize_t, fillStroke: ScintillaInternalFillStroke): void =

  fcScintillaInternalSurface_Polygon(self.h, pts.h, npts, fillStroke.h)

proc RectangleDraw*(self: ScintillaInternalSurface, rc: ScintillaInternalPRectangle, fillStroke: ScintillaInternalFillStroke): void =

  fcScintillaInternalSurface_RectangleDraw(self.h, rc.h, fillStroke.h)

proc RectangleFrame*(self: ScintillaInternalSurface, rc: ScintillaInternalPRectangle, stroke: ScintillaInternalStroke): void =

  fcScintillaInternalSurface_RectangleFrame(self.h, rc.h, stroke.h)

proc FillRectangle*(self: ScintillaInternalSurface, rc: ScintillaInternalPRectangle, fill: ScintillaInternalFill): void =

  fcScintillaInternalSurface_FillRectangle(self.h, rc.h, fill.h)

proc FillRectangleAligned*(self: ScintillaInternalSurface, rc: ScintillaInternalPRectangle, fill: ScintillaInternalFill): void =

  fcScintillaInternalSurface_FillRectangleAligned(self.h, rc.h, fill.h)

proc FillRectangle2*(self: ScintillaInternalSurface, rc: ScintillaInternalPRectangle, surfacePattern: ScintillaInternalSurface): void =

  fcScintillaInternalSurface_FillRectangle2(self.h, rc.h, surfacePattern.h)

proc RoundedRectangle*(self: ScintillaInternalSurface, rc: ScintillaInternalPRectangle, fillStroke: ScintillaInternalFillStroke): void =

  fcScintillaInternalSurface_RoundedRectangle(self.h, rc.h, fillStroke.h)

proc AlphaRectangle*(self: ScintillaInternalSurface, rc: ScintillaInternalPRectangle, cornerSize: float64, fillStroke: ScintillaInternalFillStroke): void =

  fcScintillaInternalSurface_AlphaRectangle(self.h, rc.h, cornerSize, fillStroke.h)

proc DrawRGBAImage*(self: ScintillaInternalSurface, rc: ScintillaInternalPRectangle, width: cint, height: cint, pixelsImage: ptr uint8): void =

  fcScintillaInternalSurface_DrawRGBAImage(self.h, rc.h, width, height, pixelsImage)

proc Ellipse*(self: ScintillaInternalSurface, rc: ScintillaInternalPRectangle, fillStroke: ScintillaInternalFillStroke): void =

  fcScintillaInternalSurface_Ellipse(self.h, rc.h, fillStroke.h)

proc Stadium*(self: ScintillaInternalSurface, rc: ScintillaInternalPRectangle, fillStroke: ScintillaInternalFillStroke, ends: ScintillaInternalSurfaceEnds): void =

  fcScintillaInternalSurface_Stadium(self.h, rc.h, fillStroke.h, cint(ends))

proc Copy*(self: ScintillaInternalSurface, rc: ScintillaInternalPRectangle, fromVal: ScintillaInternalPoint, surfaceSource: ScintillaInternalSurface): void =

  fcScintillaInternalSurface_Copy(self.h, rc.h, fromVal.h, surfaceSource.h)

proc Ascent*(self: ScintillaInternalSurface, font_x: ScintillaInternalFont): float64 =

  fcScintillaInternalSurface_Ascent(self.h, font_x.h)

proc Descent*(self: ScintillaInternalSurface, font_x: ScintillaInternalFont): float64 =

  fcScintillaInternalSurface_Descent(self.h, font_x.h)

proc InternalLeading*(self: ScintillaInternalSurface, font_x: ScintillaInternalFont): float64 =

  fcScintillaInternalSurface_InternalLeading(self.h, font_x.h)

proc Height*(self: ScintillaInternalSurface, font_x: ScintillaInternalFont): float64 =

  fcScintillaInternalSurface_Height(self.h, font_x.h)

proc AverageCharWidth*(self: ScintillaInternalSurface, font_x: ScintillaInternalFont): float64 =

  fcScintillaInternalSurface_AverageCharWidth(self.h, font_x.h)

proc SetClip*(self: ScintillaInternalSurface, rc: ScintillaInternalPRectangle): void =

  fcScintillaInternalSurface_SetClip(self.h, rc.h)

proc PopClip*(self: ScintillaInternalSurface, ): void =

  fcScintillaInternalSurface_PopClip(self.h)

proc FlushCachedState*(self: ScintillaInternalSurface, ): void =

  fcScintillaInternalSurface_FlushCachedState(self.h)

proc FlushDrawing*(self: ScintillaInternalSurface, ): void =

  fcScintillaInternalSurface_FlushDrawing(self.h)

type ScintillaInternalSurfaceInitBase* = proc(wid: pointer): void
proc onInit*(self: ScintillaInternalSurface, slot: proc(wid: pointer): void) =
  # TODO check subclass
  type Cb = proc(wid: pointer): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_Init(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_Init(self: ptr cScintillaInternalSurface, slot: int, wid: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_Init ".} =
  type Cb = proc(wid: pointer): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = wid


  nimfunc[](slotval1)
type ScintillaInternalSurfaceInit2Base* = proc(sid: pointer, wid: pointer): void
proc onInit2*(self: ScintillaInternalSurface, slot: proc(sid: pointer, wid: pointer): void) =
  # TODO check subclass
  type Cb = proc(sid: pointer, wid: pointer): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_Init2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_Init2(self: ptr cScintillaInternalSurface, slot: int, sid: pointer, wid: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_Init2 ".} =
  type Cb = proc(sid: pointer, wid: pointer): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = sid

  let slotval2 = wid


  nimfunc[](slotval1, slotval2)
type ScintillaInternalSurfaceSetModeBase* = proc(mode: ScintillaInternalSurfaceMode): void
proc onSetMode*(self: ScintillaInternalSurface, slot: proc(mode: ScintillaInternalSurfaceMode): void) =
  # TODO check subclass
  type Cb = proc(mode: ScintillaInternalSurfaceMode): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_SetMode(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_SetMode(self: ptr cScintillaInternalSurface, slot: int, mode: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_SetMode ".} =
  type Cb = proc(mode: ScintillaInternalSurfaceMode): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaInternalSurfaceMode(h: mode)


  nimfunc[](slotval1)
type ScintillaInternalSurfaceReleaseBase* = proc(): void
proc onRelease*(self: ScintillaInternalSurface, slot: proc(): void) =
  # TODO check subclass
  type Cb = proc(): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_Release(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_Release(self: ptr cScintillaInternalSurface, slot: int): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_Release ".} =
  type Cb = proc(): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()
type ScintillaInternalSurfaceSupportsFeatureBase* = proc(feature: ScintillaSupports): cint
proc onSupportsFeature*(self: ScintillaInternalSurface, slot: proc(feature: ScintillaSupports): cint) =
  # TODO check subclass
  type Cb = proc(feature: ScintillaSupports): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_SupportsFeature(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_SupportsFeature(self: ptr cScintillaInternalSurface, slot: int, feature: cint): cint {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_SupportsFeature ".} =
  type Cb = proc(feature: ScintillaSupports): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaSupports(feature)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type ScintillaInternalSurfaceInitialisedBase* = proc(): bool
proc onInitialised*(self: ScintillaInternalSurface, slot: proc(): bool) =
  # TODO check subclass
  type Cb = proc(): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_Initialised(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_Initialised(self: ptr cScintillaInternalSurface, slot: int): bool {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_Initialised ".} =
  type Cb = proc(): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type ScintillaInternalSurfaceLogPixelsYBase* = proc(): cint
proc onLogPixelsY*(self: ScintillaInternalSurface, slot: proc(): cint) =
  # TODO check subclass
  type Cb = proc(): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_LogPixelsY(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_LogPixelsY(self: ptr cScintillaInternalSurface, slot: int): cint {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_LogPixelsY ".} =
  type Cb = proc(): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type ScintillaInternalSurfacePixelDivisionsBase* = proc(): cint
proc onPixelDivisions*(self: ScintillaInternalSurface, slot: proc(): cint) =
  # TODO check subclass
  type Cb = proc(): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_PixelDivisions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_PixelDivisions(self: ptr cScintillaInternalSurface, slot: int): cint {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_PixelDivisions ".} =
  type Cb = proc(): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type ScintillaInternalSurfaceDeviceHeightFontBase* = proc(points: cint): cint
proc onDeviceHeightFont*(self: ScintillaInternalSurface, slot: proc(points: cint): cint) =
  # TODO check subclass
  type Cb = proc(points: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_DeviceHeightFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_DeviceHeightFont(self: ptr cScintillaInternalSurface, slot: int, points: cint): cint {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_DeviceHeightFont ".} =
  type Cb = proc(points: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = points


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type ScintillaInternalSurfaceLineDrawBase* = proc(start: ScintillaInternalPoint, endVal: ScintillaInternalPoint, stroke: ScintillaInternalStroke): void
proc onLineDraw*(self: ScintillaInternalSurface, slot: proc(start: ScintillaInternalPoint, endVal: ScintillaInternalPoint, stroke: ScintillaInternalStroke): void) =
  # TODO check subclass
  type Cb = proc(start: ScintillaInternalPoint, endVal: ScintillaInternalPoint, stroke: ScintillaInternalStroke): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_LineDraw(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_LineDraw(self: ptr cScintillaInternalSurface, slot: int, start: pointer, endVal: pointer, stroke: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_LineDraw ".} =
  type Cb = proc(start: ScintillaInternalPoint, endVal: ScintillaInternalPoint, stroke: ScintillaInternalStroke): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaInternalPoint(h: start)

  let slotval2 = ScintillaInternalPoint(h: endVal)

  let slotval3 = ScintillaInternalStroke(h: stroke)


  nimfunc[](slotval1, slotval2, slotval3)
type ScintillaInternalSurfacePolyLineBase* = proc(pts: ScintillaInternalPoint, npts: csize_t, stroke: ScintillaInternalStroke): void
proc onPolyLine*(self: ScintillaInternalSurface, slot: proc(pts: ScintillaInternalPoint, npts: csize_t, stroke: ScintillaInternalStroke): void) =
  # TODO check subclass
  type Cb = proc(pts: ScintillaInternalPoint, npts: csize_t, stroke: ScintillaInternalStroke): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_PolyLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_PolyLine(self: ptr cScintillaInternalSurface, slot: int, pts: pointer, npts: csize_t, stroke: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_PolyLine ".} =
  type Cb = proc(pts: ScintillaInternalPoint, npts: csize_t, stroke: ScintillaInternalStroke): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaInternalPoint(h: pts)

  let slotval2 = npts

  let slotval3 = ScintillaInternalStroke(h: stroke)


  nimfunc[](slotval1, slotval2, slotval3)
type ScintillaInternalSurfacePolygonBase* = proc(pts: ScintillaInternalPoint, npts: csize_t, fillStroke: ScintillaInternalFillStroke): void
proc onPolygon*(self: ScintillaInternalSurface, slot: proc(pts: ScintillaInternalPoint, npts: csize_t, fillStroke: ScintillaInternalFillStroke): void) =
  # TODO check subclass
  type Cb = proc(pts: ScintillaInternalPoint, npts: csize_t, fillStroke: ScintillaInternalFillStroke): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_Polygon(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_Polygon(self: ptr cScintillaInternalSurface, slot: int, pts: pointer, npts: csize_t, fillStroke: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_Polygon ".} =
  type Cb = proc(pts: ScintillaInternalPoint, npts: csize_t, fillStroke: ScintillaInternalFillStroke): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaInternalPoint(h: pts)

  let slotval2 = npts

  let slotval3 = ScintillaInternalFillStroke(h: fillStroke)


  nimfunc[](slotval1, slotval2, slotval3)
type ScintillaInternalSurfaceRectangleDrawBase* = proc(rc: ScintillaInternalPRectangle, fillStroke: ScintillaInternalFillStroke): void
proc onRectangleDraw*(self: ScintillaInternalSurface, slot: proc(rc: ScintillaInternalPRectangle, fillStroke: ScintillaInternalFillStroke): void) =
  # TODO check subclass
  type Cb = proc(rc: ScintillaInternalPRectangle, fillStroke: ScintillaInternalFillStroke): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_RectangleDraw(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_RectangleDraw(self: ptr cScintillaInternalSurface, slot: int, rc: pointer, fillStroke: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_RectangleDraw ".} =
  type Cb = proc(rc: ScintillaInternalPRectangle, fillStroke: ScintillaInternalFillStroke): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaInternalPRectangle(h: rc)

  let slotval2 = ScintillaInternalFillStroke(h: fillStroke)


  nimfunc[](slotval1, slotval2)
type ScintillaInternalSurfaceRectangleFrameBase* = proc(rc: ScintillaInternalPRectangle, stroke: ScintillaInternalStroke): void
proc onRectangleFrame*(self: ScintillaInternalSurface, slot: proc(rc: ScintillaInternalPRectangle, stroke: ScintillaInternalStroke): void) =
  # TODO check subclass
  type Cb = proc(rc: ScintillaInternalPRectangle, stroke: ScintillaInternalStroke): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_RectangleFrame(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_RectangleFrame(self: ptr cScintillaInternalSurface, slot: int, rc: pointer, stroke: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_RectangleFrame ".} =
  type Cb = proc(rc: ScintillaInternalPRectangle, stroke: ScintillaInternalStroke): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaInternalPRectangle(h: rc)

  let slotval2 = ScintillaInternalStroke(h: stroke)


  nimfunc[](slotval1, slotval2)
type ScintillaInternalSurfaceFillRectangleBase* = proc(rc: ScintillaInternalPRectangle, fill: ScintillaInternalFill): void
proc onFillRectangle*(self: ScintillaInternalSurface, slot: proc(rc: ScintillaInternalPRectangle, fill: ScintillaInternalFill): void) =
  # TODO check subclass
  type Cb = proc(rc: ScintillaInternalPRectangle, fill: ScintillaInternalFill): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_FillRectangle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_FillRectangle(self: ptr cScintillaInternalSurface, slot: int, rc: pointer, fill: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_FillRectangle ".} =
  type Cb = proc(rc: ScintillaInternalPRectangle, fill: ScintillaInternalFill): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaInternalPRectangle(h: rc)

  let slotval2 = ScintillaInternalFill(h: fill)


  nimfunc[](slotval1, slotval2)
type ScintillaInternalSurfaceFillRectangleAlignedBase* = proc(rc: ScintillaInternalPRectangle, fill: ScintillaInternalFill): void
proc onFillRectangleAligned*(self: ScintillaInternalSurface, slot: proc(rc: ScintillaInternalPRectangle, fill: ScintillaInternalFill): void) =
  # TODO check subclass
  type Cb = proc(rc: ScintillaInternalPRectangle, fill: ScintillaInternalFill): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_FillRectangleAligned(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_FillRectangleAligned(self: ptr cScintillaInternalSurface, slot: int, rc: pointer, fill: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_FillRectangleAligned ".} =
  type Cb = proc(rc: ScintillaInternalPRectangle, fill: ScintillaInternalFill): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaInternalPRectangle(h: rc)

  let slotval2 = ScintillaInternalFill(h: fill)


  nimfunc[](slotval1, slotval2)
type ScintillaInternalSurfaceFillRectangle2Base* = proc(rc: ScintillaInternalPRectangle, surfacePattern: ScintillaInternalSurface): void
proc onFillRectangle2*(self: ScintillaInternalSurface, slot: proc(rc: ScintillaInternalPRectangle, surfacePattern: ScintillaInternalSurface): void) =
  # TODO check subclass
  type Cb = proc(rc: ScintillaInternalPRectangle, surfacePattern: ScintillaInternalSurface): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_FillRectangle2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_FillRectangle2(self: ptr cScintillaInternalSurface, slot: int, rc: pointer, surfacePattern: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_FillRectangle2 ".} =
  type Cb = proc(rc: ScintillaInternalPRectangle, surfacePattern: ScintillaInternalSurface): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaInternalPRectangle(h: rc)

  let slotval2 = ScintillaInternalSurface(h: surfacePattern)


  nimfunc[](slotval1, slotval2)
type ScintillaInternalSurfaceRoundedRectangleBase* = proc(rc: ScintillaInternalPRectangle, fillStroke: ScintillaInternalFillStroke): void
proc onRoundedRectangle*(self: ScintillaInternalSurface, slot: proc(rc: ScintillaInternalPRectangle, fillStroke: ScintillaInternalFillStroke): void) =
  # TODO check subclass
  type Cb = proc(rc: ScintillaInternalPRectangle, fillStroke: ScintillaInternalFillStroke): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_RoundedRectangle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_RoundedRectangle(self: ptr cScintillaInternalSurface, slot: int, rc: pointer, fillStroke: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_RoundedRectangle ".} =
  type Cb = proc(rc: ScintillaInternalPRectangle, fillStroke: ScintillaInternalFillStroke): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaInternalPRectangle(h: rc)

  let slotval2 = ScintillaInternalFillStroke(h: fillStroke)


  nimfunc[](slotval1, slotval2)
type ScintillaInternalSurfaceAlphaRectangleBase* = proc(rc: ScintillaInternalPRectangle, cornerSize: float64, fillStroke: ScintillaInternalFillStroke): void
proc onAlphaRectangle*(self: ScintillaInternalSurface, slot: proc(rc: ScintillaInternalPRectangle, cornerSize: float64, fillStroke: ScintillaInternalFillStroke): void) =
  # TODO check subclass
  type Cb = proc(rc: ScintillaInternalPRectangle, cornerSize: float64, fillStroke: ScintillaInternalFillStroke): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_AlphaRectangle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_AlphaRectangle(self: ptr cScintillaInternalSurface, slot: int, rc: pointer, cornerSize: float64, fillStroke: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_AlphaRectangle ".} =
  type Cb = proc(rc: ScintillaInternalPRectangle, cornerSize: float64, fillStroke: ScintillaInternalFillStroke): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaInternalPRectangle(h: rc)

  let slotval2 = cornerSize

  let slotval3 = ScintillaInternalFillStroke(h: fillStroke)


  nimfunc[](slotval1, slotval2, slotval3)
type ScintillaInternalSurfaceDrawRGBAImageBase* = proc(rc: ScintillaInternalPRectangle, width: cint, height: cint, pixelsImage: ptr uint8): void
proc onDrawRGBAImage*(self: ScintillaInternalSurface, slot: proc(rc: ScintillaInternalPRectangle, width: cint, height: cint, pixelsImage: ptr uint8): void) =
  # TODO check subclass
  type Cb = proc(rc: ScintillaInternalPRectangle, width: cint, height: cint, pixelsImage: ptr uint8): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_DrawRGBAImage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_DrawRGBAImage(self: ptr cScintillaInternalSurface, slot: int, rc: pointer, width: cint, height: cint, pixelsImage: ptr uint8): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_DrawRGBAImage ".} =
  type Cb = proc(rc: ScintillaInternalPRectangle, width: cint, height: cint, pixelsImage: ptr uint8): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaInternalPRectangle(h: rc)

  let slotval2 = width

  let slotval3 = height

  let slotval4 = pixelsImage


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
type ScintillaInternalSurfaceEllipseBase* = proc(rc: ScintillaInternalPRectangle, fillStroke: ScintillaInternalFillStroke): void
proc onEllipse*(self: ScintillaInternalSurface, slot: proc(rc: ScintillaInternalPRectangle, fillStroke: ScintillaInternalFillStroke): void) =
  # TODO check subclass
  type Cb = proc(rc: ScintillaInternalPRectangle, fillStroke: ScintillaInternalFillStroke): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_Ellipse(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_Ellipse(self: ptr cScintillaInternalSurface, slot: int, rc: pointer, fillStroke: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_Ellipse ".} =
  type Cb = proc(rc: ScintillaInternalPRectangle, fillStroke: ScintillaInternalFillStroke): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaInternalPRectangle(h: rc)

  let slotval2 = ScintillaInternalFillStroke(h: fillStroke)


  nimfunc[](slotval1, slotval2)
type ScintillaInternalSurfaceStadiumBase* = proc(rc: ScintillaInternalPRectangle, fillStroke: ScintillaInternalFillStroke, ends: ScintillaInternalSurfaceEnds): void
proc onStadium*(self: ScintillaInternalSurface, slot: proc(rc: ScintillaInternalPRectangle, fillStroke: ScintillaInternalFillStroke, ends: ScintillaInternalSurfaceEnds): void) =
  # TODO check subclass
  type Cb = proc(rc: ScintillaInternalPRectangle, fillStroke: ScintillaInternalFillStroke, ends: ScintillaInternalSurfaceEnds): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_Stadium(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_Stadium(self: ptr cScintillaInternalSurface, slot: int, rc: pointer, fillStroke: pointer, ends: cint): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_Stadium ".} =
  type Cb = proc(rc: ScintillaInternalPRectangle, fillStroke: ScintillaInternalFillStroke, ends: ScintillaInternalSurfaceEnds): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaInternalPRectangle(h: rc)

  let slotval2 = ScintillaInternalFillStroke(h: fillStroke)

  let slotval3 = ScintillaInternalSurfaceEnds(ends)


  nimfunc[](slotval1, slotval2, slotval3)
type ScintillaInternalSurfaceCopyBase* = proc(rc: ScintillaInternalPRectangle, fromVal: ScintillaInternalPoint, surfaceSource: ScintillaInternalSurface): void
proc onCopy*(self: ScintillaInternalSurface, slot: proc(rc: ScintillaInternalPRectangle, fromVal: ScintillaInternalPoint, surfaceSource: ScintillaInternalSurface): void) =
  # TODO check subclass
  type Cb = proc(rc: ScintillaInternalPRectangle, fromVal: ScintillaInternalPoint, surfaceSource: ScintillaInternalSurface): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_Copy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_Copy(self: ptr cScintillaInternalSurface, slot: int, rc: pointer, fromVal: pointer, surfaceSource: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_Copy ".} =
  type Cb = proc(rc: ScintillaInternalPRectangle, fromVal: ScintillaInternalPoint, surfaceSource: ScintillaInternalSurface): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaInternalPRectangle(h: rc)

  let slotval2 = ScintillaInternalPoint(h: fromVal)

  let slotval3 = ScintillaInternalSurface(h: surfaceSource)


  nimfunc[](slotval1, slotval2, slotval3)
type ScintillaInternalSurfaceAscentBase* = proc(font_x: ScintillaInternalFont): float64
proc onAscent*(self: ScintillaInternalSurface, slot: proc(font_x: ScintillaInternalFont): float64) =
  # TODO check subclass
  type Cb = proc(font_x: ScintillaInternalFont): float64
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_Ascent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_Ascent(self: ptr cScintillaInternalSurface, slot: int, font_x: pointer): float64 {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_Ascent ".} =
  type Cb = proc(font_x: ScintillaInternalFont): float64
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaInternalFont(h: font_x)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type ScintillaInternalSurfaceDescentBase* = proc(font_x: ScintillaInternalFont): float64
proc onDescent*(self: ScintillaInternalSurface, slot: proc(font_x: ScintillaInternalFont): float64) =
  # TODO check subclass
  type Cb = proc(font_x: ScintillaInternalFont): float64
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_Descent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_Descent(self: ptr cScintillaInternalSurface, slot: int, font_x: pointer): float64 {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_Descent ".} =
  type Cb = proc(font_x: ScintillaInternalFont): float64
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaInternalFont(h: font_x)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type ScintillaInternalSurfaceInternalLeadingBase* = proc(font_x: ScintillaInternalFont): float64
proc onInternalLeading*(self: ScintillaInternalSurface, slot: proc(font_x: ScintillaInternalFont): float64) =
  # TODO check subclass
  type Cb = proc(font_x: ScintillaInternalFont): float64
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_InternalLeading(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_InternalLeading(self: ptr cScintillaInternalSurface, slot: int, font_x: pointer): float64 {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_InternalLeading ".} =
  type Cb = proc(font_x: ScintillaInternalFont): float64
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaInternalFont(h: font_x)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type ScintillaInternalSurfaceHeightBase* = proc(font_x: ScintillaInternalFont): float64
proc onHeight*(self: ScintillaInternalSurface, slot: proc(font_x: ScintillaInternalFont): float64) =
  # TODO check subclass
  type Cb = proc(font_x: ScintillaInternalFont): float64
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_Height(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_Height(self: ptr cScintillaInternalSurface, slot: int, font_x: pointer): float64 {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_Height ".} =
  type Cb = proc(font_x: ScintillaInternalFont): float64
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaInternalFont(h: font_x)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type ScintillaInternalSurfaceAverageCharWidthBase* = proc(font_x: ScintillaInternalFont): float64
proc onAverageCharWidth*(self: ScintillaInternalSurface, slot: proc(font_x: ScintillaInternalFont): float64) =
  # TODO check subclass
  type Cb = proc(font_x: ScintillaInternalFont): float64
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_AverageCharWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_AverageCharWidth(self: ptr cScintillaInternalSurface, slot: int, font_x: pointer): float64 {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_AverageCharWidth ".} =
  type Cb = proc(font_x: ScintillaInternalFont): float64
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaInternalFont(h: font_x)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type ScintillaInternalSurfaceSetClipBase* = proc(rc: ScintillaInternalPRectangle): void
proc onSetClip*(self: ScintillaInternalSurface, slot: proc(rc: ScintillaInternalPRectangle): void) =
  # TODO check subclass
  type Cb = proc(rc: ScintillaInternalPRectangle): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_SetClip(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_SetClip(self: ptr cScintillaInternalSurface, slot: int, rc: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_SetClip ".} =
  type Cb = proc(rc: ScintillaInternalPRectangle): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaInternalPRectangle(h: rc)


  nimfunc[](slotval1)
type ScintillaInternalSurfacePopClipBase* = proc(): void
proc onPopClip*(self: ScintillaInternalSurface, slot: proc(): void) =
  # TODO check subclass
  type Cb = proc(): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_PopClip(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_PopClip(self: ptr cScintillaInternalSurface, slot: int): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_PopClip ".} =
  type Cb = proc(): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()
type ScintillaInternalSurfaceFlushCachedStateBase* = proc(): void
proc onFlushCachedState*(self: ScintillaInternalSurface, slot: proc(): void) =
  # TODO check subclass
  type Cb = proc(): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_FlushCachedState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_FlushCachedState(self: ptr cScintillaInternalSurface, slot: int): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_FlushCachedState ".} =
  type Cb = proc(): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()
type ScintillaInternalSurfaceFlushDrawingBase* = proc(): void
proc onFlushDrawing*(self: ScintillaInternalSurface, slot: proc(): void) =
  # TODO check subclass
  type Cb = proc(): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalSurface_override_virtual_FlushDrawing(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__Surface_FlushDrawing(self: ptr cScintillaInternalSurface, slot: int): void {.exportc: "miqt_exec_callback_Scintilla__Internal__Surface_FlushDrawing ".} =
  type Cb = proc(): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()
proc delete*(self: ScintillaInternalSurface) =
  fcScintillaInternalSurface_delete(self.h)

func init*(T: type ScintillaInternalWindow, h: ptr cScintillaInternalWindow): ScintillaInternalWindow =
  T(h: h)
proc create*(T: type ScintillaInternalWindow, ): ScintillaInternalWindow =

  ScintillaInternalWindow.init(fcScintillaInternalWindow_new())
proc operatorAssign*(self: ScintillaInternalWindow, wid_x: pointer): void =

  fcScintillaInternalWindow_operatorAssign(self.h, wid_x)

proc GetID*(self: ScintillaInternalWindow, ): pointer =

  fcScintillaInternalWindow_GetID(self.h)

proc Created*(self: ScintillaInternalWindow, ): bool =

  fcScintillaInternalWindow_Created(self.h)

proc Destroy*(self: ScintillaInternalWindow, ): void =

  fcScintillaInternalWindow_Destroy(self.h)

proc GetPosition*(self: ScintillaInternalWindow, ): ScintillaInternalPRectangle =

  ScintillaInternalPRectangle(h: fcScintillaInternalWindow_GetPosition(self.h))

proc SetPosition*(self: ScintillaInternalWindow, rc: ScintillaInternalPRectangle): void =

  fcScintillaInternalWindow_SetPosition(self.h, rc.h)

proc SetPositionRelative*(self: ScintillaInternalWindow, rc: ScintillaInternalPRectangle, relativeTo: ScintillaInternalWindow): void =

  fcScintillaInternalWindow_SetPositionRelative(self.h, rc.h, relativeTo.h)

proc GetClientPosition*(self: ScintillaInternalWindow, ): ScintillaInternalPRectangle =

  ScintillaInternalPRectangle(h: fcScintillaInternalWindow_GetClientPosition(self.h))

proc Show*(self: ScintillaInternalWindow, ): void =

  fcScintillaInternalWindow_Show(self.h)

proc InvalidateAll*(self: ScintillaInternalWindow, ): void =

  fcScintillaInternalWindow_InvalidateAll(self.h)

proc InvalidateRectangle*(self: ScintillaInternalWindow, rc: ScintillaInternalPRectangle): void =

  fcScintillaInternalWindow_InvalidateRectangle(self.h, rc.h)

proc SetCursor*(self: ScintillaInternalWindow, curs: ScintillaInternalWindowCursor): void =

  fcScintillaInternalWindow_SetCursor(self.h, cint(curs))

proc GetMonitorRect*(self: ScintillaInternalWindow, pt: ScintillaInternalPoint): ScintillaInternalPRectangle =

  ScintillaInternalPRectangle(h: fcScintillaInternalWindow_GetMonitorRect(self.h, pt.h))

proc Show1*(self: ScintillaInternalWindow, show: bool): void =

  fcScintillaInternalWindow_Show1(self.h, show)

proc delete*(self: ScintillaInternalWindow) =
  fcScintillaInternalWindow_delete(self.h)

func init*(T: type ScintillaInternalListBoxEvent, h: ptr cScintillaInternalListBoxEvent): ScintillaInternalListBoxEvent =
  T(h: h)
proc create*(T: type ScintillaInternalListBoxEvent, event_x: ScintillaInternalListBoxEventEventType): ScintillaInternalListBoxEvent =

  ScintillaInternalListBoxEvent.init(fcScintillaInternalListBoxEvent_new(cint(event_x)))
proc delete*(self: ScintillaInternalListBoxEvent) =
  fcScintillaInternalListBoxEvent_delete(self.h)

func init*(T: type ScintillaInternalIListBoxDelegate, h: ptr cScintillaInternalIListBoxDelegate): ScintillaInternalIListBoxDelegate =
  T(h: h)
proc ListNotify*(self: ScintillaInternalIListBoxDelegate, plbe: ScintillaInternalListBoxEvent): void =

  fcScintillaInternalIListBoxDelegate_ListNotify(self.h, plbe.h)

proc operatorAssign*(self: ScintillaInternalIListBoxDelegate, param1: ScintillaInternalIListBoxDelegate): void =

  fcScintillaInternalIListBoxDelegate_operatorAssign(self.h, param1.h)

proc delete*(self: ScintillaInternalIListBoxDelegate) =
  fcScintillaInternalIListBoxDelegate_delete(self.h)

func init*(T: type ScintillaInternalListOptions, h: ptr cScintillaInternalListOptions): ScintillaInternalListOptions =
  T(h: h)
proc delete*(self: ScintillaInternalListOptions) =
  fcScintillaInternalListOptions_delete(self.h)

func init*(T: type ScintillaInternalListBox, h: ptr cScintillaInternalListBox): ScintillaInternalListBox =
  T(h: h)
proc create*(T: type ScintillaInternalListBox, ): ScintillaInternalListBox =

  ScintillaInternalListBox.init(fcScintillaInternalListBox_new())
proc SetFont*(self: ScintillaInternalListBox, font: ScintillaInternalFont): void =

  fcScintillaInternalListBox_SetFont(self.h, font.h)

proc Create*(self: ScintillaInternalListBox, parent: ScintillaInternalWindow, ctrlID: cint, location: ScintillaInternalPoint, lineHeight_x: cint, unicodeMode_x: bool, technology_x: ScintillaTechnology): void =

  fcScintillaInternalListBox_Create(self.h, parent.h, ctrlID, location.h, lineHeight_x, unicodeMode_x, cint(technology_x))

proc SetAverageCharWidth*(self: ScintillaInternalListBox, width: cint): void =

  fcScintillaInternalListBox_SetAverageCharWidth(self.h, width)

proc SetVisibleRows*(self: ScintillaInternalListBox, rows: cint): void =

  fcScintillaInternalListBox_SetVisibleRows(self.h, rows)

proc GetVisibleRows*(self: ScintillaInternalListBox, ): cint =

  fcScintillaInternalListBox_GetVisibleRows(self.h)

proc GetDesiredRect*(self: ScintillaInternalListBox, ): ScintillaInternalPRectangle =

  ScintillaInternalPRectangle(h: fcScintillaInternalListBox_GetDesiredRect(self.h))

proc CaretFromEdge*(self: ScintillaInternalListBox, ): cint =

  fcScintillaInternalListBox_CaretFromEdge(self.h)

proc Clear*(self: ScintillaInternalListBox, ): void =

  fcScintillaInternalListBox_Clear(self.h)

proc Append*(self: ScintillaInternalListBox, s: cstring, typeVal: cint): void =

  fcScintillaInternalListBox_Append(self.h, s, typeVal)

proc Length*(self: ScintillaInternalListBox, ): cint =

  fcScintillaInternalListBox_Length(self.h)

proc Select*(self: ScintillaInternalListBox, n: cint): void =

  fcScintillaInternalListBox_Select(self.h, n)

proc GetSelection*(self: ScintillaInternalListBox, ): cint =

  fcScintillaInternalListBox_GetSelection(self.h)

proc Find*(self: ScintillaInternalListBox, prefix: cstring): cint =

  fcScintillaInternalListBox_Find(self.h, prefix)

proc RegisterImage*(self: ScintillaInternalListBox, typeVal: cint, xpm_data: cstring): void =

  fcScintillaInternalListBox_RegisterImage(self.h, typeVal, xpm_data)

proc RegisterRGBAImage*(self: ScintillaInternalListBox, typeVal: cint, width: cint, height: cint, pixelsImage: ptr uint8): void =

  fcScintillaInternalListBox_RegisterRGBAImage(self.h, typeVal, width, height, pixelsImage)

proc ClearRegisteredImages*(self: ScintillaInternalListBox, ): void =

  fcScintillaInternalListBox_ClearRegisteredImages(self.h)

proc SetDelegate*(self: ScintillaInternalListBox, lbDelegate: ScintillaInternalIListBoxDelegate): void =

  fcScintillaInternalListBox_SetDelegate(self.h, lbDelegate.h)

proc SetList*(self: ScintillaInternalListBox, list: cstring, separator: cchar, typesep: cchar): void =

  fcScintillaInternalListBox_SetList(self.h, list, separator, typesep)

proc SetOptions*(self: ScintillaInternalListBox, options_x: ScintillaInternalListOptions): void =

  fcScintillaInternalListBox_SetOptions(self.h, options_x.h)

type ScintillaInternalListBoxSetFontBase* = proc(font: ScintillaInternalFont): void
proc onSetFont*(self: ScintillaInternalListBox, slot: proc(font: ScintillaInternalFont): void) =
  # TODO check subclass
  type Cb = proc(font: ScintillaInternalFont): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_SetFont(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_SetFont(self: ptr cScintillaInternalListBox, slot: int, font: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_SetFont ".} =
  type Cb = proc(font: ScintillaInternalFont): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaInternalFont(h: font)


  nimfunc[](slotval1)
type ScintillaInternalListBoxCreateBase* = proc(parent: ScintillaInternalWindow, ctrlID: cint, location: ScintillaInternalPoint, lineHeight_x: cint, unicodeMode_x: bool, technology_x: ScintillaTechnology): void
proc onCreate*(self: ScintillaInternalListBox, slot: proc(parent: ScintillaInternalWindow, ctrlID: cint, location: ScintillaInternalPoint, lineHeight_x: cint, unicodeMode_x: bool, technology_x: ScintillaTechnology): void) =
  # TODO check subclass
  type Cb = proc(parent: ScintillaInternalWindow, ctrlID: cint, location: ScintillaInternalPoint, lineHeight_x: cint, unicodeMode_x: bool, technology_x: ScintillaTechnology): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_Create(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_Create(self: ptr cScintillaInternalListBox, slot: int, parent: pointer, ctrlID: cint, location: pointer, lineHeight_x: cint, unicodeMode_x: bool, technology_x: cint): void {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_Create ".} =
  type Cb = proc(parent: ScintillaInternalWindow, ctrlID: cint, location: ScintillaInternalPoint, lineHeight_x: cint, unicodeMode_x: bool, technology_x: ScintillaTechnology): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaInternalWindow(h: parent)

  let slotval2 = ctrlID

  let slotval3 = ScintillaInternalPoint(h: location)

  let slotval4 = lineHeight_x

  let slotval5 = unicodeMode_x

  let slotval6 = ScintillaTechnology(technology_x)


  nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5, slotval6)
type ScintillaInternalListBoxSetAverageCharWidthBase* = proc(width: cint): void
proc onSetAverageCharWidth*(self: ScintillaInternalListBox, slot: proc(width: cint): void) =
  # TODO check subclass
  type Cb = proc(width: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_SetAverageCharWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_SetAverageCharWidth(self: ptr cScintillaInternalListBox, slot: int, width: cint): void {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_SetAverageCharWidth ".} =
  type Cb = proc(width: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = width


  nimfunc[](slotval1)
type ScintillaInternalListBoxSetVisibleRowsBase* = proc(rows: cint): void
proc onSetVisibleRows*(self: ScintillaInternalListBox, slot: proc(rows: cint): void) =
  # TODO check subclass
  type Cb = proc(rows: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_SetVisibleRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_SetVisibleRows(self: ptr cScintillaInternalListBox, slot: int, rows: cint): void {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_SetVisibleRows ".} =
  type Cb = proc(rows: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = rows


  nimfunc[](slotval1)
type ScintillaInternalListBoxGetVisibleRowsBase* = proc(): cint
proc onGetVisibleRows*(self: ScintillaInternalListBox, slot: proc(): cint) =
  # TODO check subclass
  type Cb = proc(): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_GetVisibleRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_GetVisibleRows(self: ptr cScintillaInternalListBox, slot: int): cint {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_GetVisibleRows ".} =
  type Cb = proc(): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type ScintillaInternalListBoxGetDesiredRectBase* = proc(): ScintillaInternalPRectangle
proc onGetDesiredRect*(self: ScintillaInternalListBox, slot: proc(): ScintillaInternalPRectangle) =
  # TODO check subclass
  type Cb = proc(): ScintillaInternalPRectangle
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_GetDesiredRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_GetDesiredRect(self: ptr cScintillaInternalListBox, slot: int): pointer {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_GetDesiredRect ".} =
  type Cb = proc(): ScintillaInternalPRectangle
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
type ScintillaInternalListBoxCaretFromEdgeBase* = proc(): cint
proc onCaretFromEdge*(self: ScintillaInternalListBox, slot: proc(): cint) =
  # TODO check subclass
  type Cb = proc(): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_CaretFromEdge(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_CaretFromEdge(self: ptr cScintillaInternalListBox, slot: int): cint {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_CaretFromEdge ".} =
  type Cb = proc(): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type ScintillaInternalListBoxClearBase* = proc(): void
proc onClear*(self: ScintillaInternalListBox, slot: proc(): void) =
  # TODO check subclass
  type Cb = proc(): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_Clear(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_Clear(self: ptr cScintillaInternalListBox, slot: int): void {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_Clear ".} =
  type Cb = proc(): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()
type ScintillaInternalListBoxAppendBase* = proc(s: cstring, typeVal: cint): void
proc onAppend*(self: ScintillaInternalListBox, slot: proc(s: cstring, typeVal: cint): void) =
  # TODO check subclass
  type Cb = proc(s: cstring, typeVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_Append(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_Append(self: ptr cScintillaInternalListBox, slot: int, s: cstring, typeVal: cint): void {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_Append ".} =
  type Cb = proc(s: cstring, typeVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = (s)

  let slotval2 = typeVal


  nimfunc[](slotval1, slotval2)
type ScintillaInternalListBoxLengthBase* = proc(): cint
proc onLength*(self: ScintillaInternalListBox, slot: proc(): cint) =
  # TODO check subclass
  type Cb = proc(): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_Length(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_Length(self: ptr cScintillaInternalListBox, slot: int): cint {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_Length ".} =
  type Cb = proc(): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type ScintillaInternalListBoxSelectBase* = proc(n: cint): void
proc onSelect*(self: ScintillaInternalListBox, slot: proc(n: cint): void) =
  # TODO check subclass
  type Cb = proc(n: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_Select(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_Select(self: ptr cScintillaInternalListBox, slot: int, n: cint): void {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_Select ".} =
  type Cb = proc(n: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = n


  nimfunc[](slotval1)
type ScintillaInternalListBoxGetSelectionBase* = proc(): cint
proc onGetSelection*(self: ScintillaInternalListBox, slot: proc(): cint) =
  # TODO check subclass
  type Cb = proc(): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_GetSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_GetSelection(self: ptr cScintillaInternalListBox, slot: int): cint {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_GetSelection ".} =
  type Cb = proc(): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type ScintillaInternalListBoxFindBase* = proc(prefix: cstring): cint
proc onFind*(self: ScintillaInternalListBox, slot: proc(prefix: cstring): cint) =
  # TODO check subclass
  type Cb = proc(prefix: cstring): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_Find(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_Find(self: ptr cScintillaInternalListBox, slot: int, prefix: cstring): cint {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_Find ".} =
  type Cb = proc(prefix: cstring): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = (prefix)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type ScintillaInternalListBoxRegisterImageBase* = proc(typeVal: cint, xpm_data: cstring): void
proc onRegisterImage*(self: ScintillaInternalListBox, slot: proc(typeVal: cint, xpm_data: cstring): void) =
  # TODO check subclass
  type Cb = proc(typeVal: cint, xpm_data: cstring): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_RegisterImage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_RegisterImage(self: ptr cScintillaInternalListBox, slot: int, typeVal: cint, xpm_data: cstring): void {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_RegisterImage ".} =
  type Cb = proc(typeVal: cint, xpm_data: cstring): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = typeVal

  let slotval2 = (xpm_data)


  nimfunc[](slotval1, slotval2)
type ScintillaInternalListBoxRegisterRGBAImageBase* = proc(typeVal: cint, width: cint, height: cint, pixelsImage: ptr uint8): void
proc onRegisterRGBAImage*(self: ScintillaInternalListBox, slot: proc(typeVal: cint, width: cint, height: cint, pixelsImage: ptr uint8): void) =
  # TODO check subclass
  type Cb = proc(typeVal: cint, width: cint, height: cint, pixelsImage: ptr uint8): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_RegisterRGBAImage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_RegisterRGBAImage(self: ptr cScintillaInternalListBox, slot: int, typeVal: cint, width: cint, height: cint, pixelsImage: ptr uint8): void {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_RegisterRGBAImage ".} =
  type Cb = proc(typeVal: cint, width: cint, height: cint, pixelsImage: ptr uint8): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = typeVal

  let slotval2 = width

  let slotval3 = height

  let slotval4 = pixelsImage


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
type ScintillaInternalListBoxClearRegisteredImagesBase* = proc(): void
proc onClearRegisteredImages*(self: ScintillaInternalListBox, slot: proc(): void) =
  # TODO check subclass
  type Cb = proc(): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_ClearRegisteredImages(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_ClearRegisteredImages(self: ptr cScintillaInternalListBox, slot: int): void {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_ClearRegisteredImages ".} =
  type Cb = proc(): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()
type ScintillaInternalListBoxSetDelegateBase* = proc(lbDelegate: ScintillaInternalIListBoxDelegate): void
proc onSetDelegate*(self: ScintillaInternalListBox, slot: proc(lbDelegate: ScintillaInternalIListBoxDelegate): void) =
  # TODO check subclass
  type Cb = proc(lbDelegate: ScintillaInternalIListBoxDelegate): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_SetDelegate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_SetDelegate(self: ptr cScintillaInternalListBox, slot: int, lbDelegate: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_SetDelegate ".} =
  type Cb = proc(lbDelegate: ScintillaInternalIListBoxDelegate): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaInternalIListBoxDelegate(h: lbDelegate)


  nimfunc[](slotval1)
type ScintillaInternalListBoxSetListBase* = proc(list: cstring, separator: cchar, typesep: cchar): void
proc onSetList*(self: ScintillaInternalListBox, slot: proc(list: cstring, separator: cchar, typesep: cchar): void) =
  # TODO check subclass
  type Cb = proc(list: cstring, separator: cchar, typesep: cchar): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_SetList(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_SetList(self: ptr cScintillaInternalListBox, slot: int, list: cstring, separator: cchar, typesep: cchar): void {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_SetList ".} =
  type Cb = proc(list: cstring, separator: cchar, typesep: cchar): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = (list)

  let slotval2 = separator

  let slotval3 = typesep


  nimfunc[](slotval1, slotval2, slotval3)
type ScintillaInternalListBoxSetOptionsBase* = proc(options_x: ScintillaInternalListOptions): void
proc onSetOptions*(self: ScintillaInternalListBox, slot: proc(options_x: ScintillaInternalListOptions): void) =
  # TODO check subclass
  type Cb = proc(options_x: ScintillaInternalListOptions): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaInternalListBox_override_virtual_SetOptions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_Scintilla__Internal__ListBox_SetOptions(self: ptr cScintillaInternalListBox, slot: int, options_x: pointer): void {.exportc: "miqt_exec_callback_Scintilla__Internal__ListBox_SetOptions ".} =
  type Cb = proc(options_x: ScintillaInternalListOptions): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaInternalListOptions(h: options_x)


  nimfunc[](slotval1)
proc delete*(self: ScintillaInternalListBox) =
  fcScintillaInternalListBox_delete(self.h)

func init*(T: type ScintillaInternalMenu, h: ptr cScintillaInternalMenu): ScintillaInternalMenu =
  T(h: h)
proc create*(T: type ScintillaInternalMenu, ): ScintillaInternalMenu =

  ScintillaInternalMenu.init(fcScintillaInternalMenu_new())
proc GetID*(self: ScintillaInternalMenu, ): pointer =

  fcScintillaInternalMenu_GetID(self.h)

proc CreatePopUp*(self: ScintillaInternalMenu, ): void =

  fcScintillaInternalMenu_CreatePopUp(self.h)

proc Destroy*(self: ScintillaInternalMenu, ): void =

  fcScintillaInternalMenu_Destroy(self.h)

proc Show*(self: ScintillaInternalMenu, pt: ScintillaInternalPoint, w: ScintillaInternalWindow): void =

  fcScintillaInternalMenu_Show(self.h, pt.h, w.h)

proc delete*(self: ScintillaInternalMenu) =
  fcScintillaInternalMenu_delete(self.h)

func init*(T: type Sci_CharacterRange, h: ptr cSci_CharacterRange): Sci_CharacterRange =
  T(h: h)
proc delete*(self: Sci_CharacterRange) =
  fcSci_CharacterRange_delete(self.h)

func init*(T: type Sci_CharacterRangeFull, h: ptr cSci_CharacterRangeFull): Sci_CharacterRangeFull =
  T(h: h)
proc delete*(self: Sci_CharacterRangeFull) =
  fcSci_CharacterRangeFull_delete(self.h)

func init*(T: type Sci_TextRange, h: ptr cSci_TextRange): Sci_TextRange =
  T(h: h)
proc delete*(self: Sci_TextRange) =
  fcSci_TextRange_delete(self.h)

func init*(T: type Sci_TextRangeFull, h: ptr cSci_TextRangeFull): Sci_TextRangeFull =
  T(h: h)
proc delete*(self: Sci_TextRangeFull) =
  fcSci_TextRangeFull_delete(self.h)

func init*(T: type Sci_TextToFind, h: ptr cSci_TextToFind): Sci_TextToFind =
  T(h: h)
proc delete*(self: Sci_TextToFind) =
  fcSci_TextToFind_delete(self.h)

func init*(T: type Sci_TextToFindFull, h: ptr cSci_TextToFindFull): Sci_TextToFindFull =
  T(h: h)
proc delete*(self: Sci_TextToFindFull) =
  fcSci_TextToFindFull_delete(self.h)

func init*(T: type Sci_Rectangle, h: ptr cSci_Rectangle): Sci_Rectangle =
  T(h: h)
proc delete*(self: Sci_Rectangle) =
  fcSci_Rectangle_delete(self.h)

func init*(T: type Sci_RangeToFormat, h: ptr cSci_RangeToFormat): Sci_RangeToFormat =
  T(h: h)
proc delete*(self: Sci_RangeToFormat) =
  fcSci_RangeToFormat_delete(self.h)

func init*(T: type Sci_RangeToFormatFull, h: ptr cSci_RangeToFormatFull): Sci_RangeToFormatFull =
  T(h: h)
proc delete*(self: Sci_RangeToFormatFull) =
  fcSci_RangeToFormatFull_delete(self.h)

func init*(T: type Sci_NotifyHeader, h: ptr cSci_NotifyHeader): Sci_NotifyHeader =
  T(h: h)
proc delete*(self: Sci_NotifyHeader) =
  fcSci_NotifyHeader_delete(self.h)

func init*(T: type SCNotification, h: ptr cSCNotification): SCNotification =
  T(h: h)
proc delete*(self: SCNotification) =
  fcSCNotification_delete(self.h)

func init*(T: type ScintillaEditBase, h: ptr cScintillaEditBase): ScintillaEditBase =
  T(h: h)
proc create*(T: type ScintillaEditBase, parent: gen_qwidget.QWidget): ScintillaEditBase =

  ScintillaEditBase.init(fcScintillaEditBase_new(parent.h))
proc create*(T: type ScintillaEditBase, ): ScintillaEditBase =

  ScintillaEditBase.init(fcScintillaEditBase_new2())
proc metaObject*(self: ScintillaEditBase, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcScintillaEditBase_metaObject(self.h))

proc metacast*(self: ScintillaEditBase, param1: cstring): pointer =

  fcScintillaEditBase_metacast(self.h, param1)

proc metacall*(self: ScintillaEditBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcScintillaEditBase_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type ScintillaEditBase, s: cstring): string =

  let v_ms = fcScintillaEditBase_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type ScintillaEditBase, s: cstring): string =

  let v_ms = fcScintillaEditBase_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc send*(self: ScintillaEditBase, iMessage: cuint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEditBase_send(self.h, iMessage, wParam, lParam)

proc sends*(self: ScintillaEditBase, iMessage: cuint, wParam: miqt_uintptr_t, s: cstring): miqt_intptr_t =

  fcScintillaEditBase_sends(self.h, iMessage, wParam, s)

proc scrollHorizontal*(self: ScintillaEditBase, value: cint): void =

  fcScintillaEditBase_scrollHorizontal(self.h, value)

proc scrollVertical*(self: ScintillaEditBase, value: cint): void =

  fcScintillaEditBase_scrollVertical(self.h, value)

proc notifyParent*(self: ScintillaEditBase, scn: ScintillaNotificationData): void =

  fcScintillaEditBase_notifyParent(self.h, scn.h)

proc eventCommand*(self: ScintillaEditBase, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): void =

  fcScintillaEditBase_eventCommand(self.h, wParam, lParam)

proc horizontalScrolled*(self: ScintillaEditBase, value: cint): void =

  fcScintillaEditBase_horizontalScrolled(self.h, value)

proc miqt_exec_callback_ScintillaEditBase_horizontalScrolled(slot: int, value: cint) {.exportc.} =
  type Cb = proc(value: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)

proc onhorizontalScrolled*(self: ScintillaEditBase, slot: proc(value: cint)) =
  type Cb = proc(value: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_horizontalScrolled(self.h, cast[int](addr tmp[]))
proc verticalScrolled*(self: ScintillaEditBase, value: cint): void =

  fcScintillaEditBase_verticalScrolled(self.h, value)

proc miqt_exec_callback_ScintillaEditBase_verticalScrolled(slot: int, value: cint) {.exportc.} =
  type Cb = proc(value: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)

proc onverticalScrolled*(self: ScintillaEditBase, slot: proc(value: cint)) =
  type Cb = proc(value: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_verticalScrolled(self.h, cast[int](addr tmp[]))
proc horizontalRangeChanged*(self: ScintillaEditBase, max: cint, page: cint): void =

  fcScintillaEditBase_horizontalRangeChanged(self.h, max, page)

proc miqt_exec_callback_ScintillaEditBase_horizontalRangeChanged(slot: int, max: cint, page: cint) {.exportc.} =
  type Cb = proc(max: cint, page: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = max

  let slotval2 = page


  nimfunc[](slotval1, slotval2)

proc onhorizontalRangeChanged*(self: ScintillaEditBase, slot: proc(max: cint, page: cint)) =
  type Cb = proc(max: cint, page: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_horizontalRangeChanged(self.h, cast[int](addr tmp[]))
proc verticalRangeChanged*(self: ScintillaEditBase, max: cint, page: cint): void =

  fcScintillaEditBase_verticalRangeChanged(self.h, max, page)

proc miqt_exec_callback_ScintillaEditBase_verticalRangeChanged(slot: int, max: cint, page: cint) {.exportc.} =
  type Cb = proc(max: cint, page: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = max

  let slotval2 = page


  nimfunc[](slotval1, slotval2)

proc onverticalRangeChanged*(self: ScintillaEditBase, slot: proc(max: cint, page: cint)) =
  type Cb = proc(max: cint, page: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_verticalRangeChanged(self.h, cast[int](addr tmp[]))
proc notifyChange*(self: ScintillaEditBase, ): void =

  fcScintillaEditBase_notifyChange(self.h)

proc miqt_exec_callback_ScintillaEditBase_notifyChange(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onnotifyChange*(self: ScintillaEditBase, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_notifyChange(self.h, cast[int](addr tmp[]))
proc linesAdded*(self: ScintillaEditBase, linesAdded: miqt_intptr_t): void =

  fcScintillaEditBase_linesAdded(self.h, linesAdded)

proc miqt_exec_callback_ScintillaEditBase_linesAdded(slot: int, linesAdded: miqt_intptr_t) {.exportc.} =
  type Cb = proc(linesAdded: miqt_intptr_t)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = linesAdded


  nimfunc[](slotval1)

proc onlinesAdded*(self: ScintillaEditBase, slot: proc(linesAdded: miqt_intptr_t)) =
  type Cb = proc(linesAdded: miqt_intptr_t)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_linesAdded(self.h, cast[int](addr tmp[]))
proc aboutToCopy*(self: ScintillaEditBase, data: gen_qmimedata.QMimeData): void =

  fcScintillaEditBase_aboutToCopy(self.h, data.h)

proc miqt_exec_callback_ScintillaEditBase_aboutToCopy(slot: int, data: pointer) {.exportc.} =
  type Cb = proc(data: gen_qmimedata.QMimeData)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qmimedata.QMimeData(h: data)


  nimfunc[](slotval1)

proc onaboutToCopy*(self: ScintillaEditBase, slot: proc(data: gen_qmimedata.QMimeData)) =
  type Cb = proc(data: gen_qmimedata.QMimeData)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_aboutToCopy(self.h, cast[int](addr tmp[]))
proc styleNeeded*(self: ScintillaEditBase, position: miqt_intptr_t): void =

  fcScintillaEditBase_styleNeeded(self.h, position)

proc miqt_exec_callback_ScintillaEditBase_styleNeeded(slot: int, position: miqt_intptr_t) {.exportc.} =
  type Cb = proc(position: miqt_intptr_t)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position


  nimfunc[](slotval1)

proc onstyleNeeded*(self: ScintillaEditBase, slot: proc(position: miqt_intptr_t)) =
  type Cb = proc(position: miqt_intptr_t)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_styleNeeded(self.h, cast[int](addr tmp[]))
proc charAdded*(self: ScintillaEditBase, ch: cint): void =

  fcScintillaEditBase_charAdded(self.h, ch)

proc miqt_exec_callback_ScintillaEditBase_charAdded(slot: int, ch: cint) {.exportc.} =
  type Cb = proc(ch: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ch


  nimfunc[](slotval1)

proc oncharAdded*(self: ScintillaEditBase, slot: proc(ch: cint)) =
  type Cb = proc(ch: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_charAdded(self.h, cast[int](addr tmp[]))
proc savePointChanged*(self: ScintillaEditBase, dirty: bool): void =

  fcScintillaEditBase_savePointChanged(self.h, dirty)

proc miqt_exec_callback_ScintillaEditBase_savePointChanged(slot: int, dirty: bool) {.exportc.} =
  type Cb = proc(dirty: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = dirty


  nimfunc[](slotval1)

proc onsavePointChanged*(self: ScintillaEditBase, slot: proc(dirty: bool)) =
  type Cb = proc(dirty: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_savePointChanged(self.h, cast[int](addr tmp[]))
proc modifyAttemptReadOnly*(self: ScintillaEditBase, ): void =

  fcScintillaEditBase_modifyAttemptReadOnly(self.h)

proc miqt_exec_callback_ScintillaEditBase_modifyAttemptReadOnly(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onmodifyAttemptReadOnly*(self: ScintillaEditBase, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_modifyAttemptReadOnly(self.h, cast[int](addr tmp[]))
proc key*(self: ScintillaEditBase, key: cint): void =

  fcScintillaEditBase_key(self.h, key)

proc miqt_exec_callback_ScintillaEditBase_key(slot: int, key: cint) {.exportc.} =
  type Cb = proc(key: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = key


  nimfunc[](slotval1)

proc onkey*(self: ScintillaEditBase, slot: proc(key: cint)) =
  type Cb = proc(key: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_key(self.h, cast[int](addr tmp[]))
proc doubleClick*(self: ScintillaEditBase, position: miqt_intptr_t, line: miqt_intptr_t): void =

  fcScintillaEditBase_doubleClick(self.h, position, line)

proc miqt_exec_callback_ScintillaEditBase_doubleClick(slot: int, position: miqt_intptr_t, line: miqt_intptr_t) {.exportc.} =
  type Cb = proc(position: miqt_intptr_t, line: miqt_intptr_t)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = line


  nimfunc[](slotval1, slotval2)

proc ondoubleClick*(self: ScintillaEditBase, slot: proc(position: miqt_intptr_t, line: miqt_intptr_t)) =
  type Cb = proc(position: miqt_intptr_t, line: miqt_intptr_t)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_doubleClick(self.h, cast[int](addr tmp[]))
proc updateUi*(self: ScintillaEditBase, updated: ScintillaUpdate): void =

  fcScintillaEditBase_updateUi(self.h, cint(updated))

proc miqt_exec_callback_ScintillaEditBase_updateUi(slot: int, updated: cint) {.exportc.} =
  type Cb = proc(updated: ScintillaUpdate)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaUpdate(updated)


  nimfunc[](slotval1)

proc onupdateUi*(self: ScintillaEditBase, slot: proc(updated: ScintillaUpdate)) =
  type Cb = proc(updated: ScintillaUpdate)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_updateUi(self.h, cast[int](addr tmp[]))
proc modified*(self: ScintillaEditBase, typeVal: ScintillaModificationFlags, position: miqt_intptr_t, length: miqt_intptr_t, linesAdded: miqt_intptr_t, text: seq[byte], line: miqt_intptr_t, foldNow: ScintillaFoldLevel, foldPrev: ScintillaFoldLevel): void =

  fcScintillaEditBase_modified(self.h, cint(typeVal), position, length, linesAdded, struct_miqt_string(data: cast[cstring](if len(text) == 0: nil else: unsafeAddr text[0]), len: csize_t(len(text))), line, cint(foldNow), cint(foldPrev))

proc miqt_exec_callback_ScintillaEditBase_modified(slot: int, typeVal: cint, position: miqt_intptr_t, length: miqt_intptr_t, linesAdded: miqt_intptr_t, text: struct_miqt_string, line: miqt_intptr_t, foldNow: cint, foldPrev: cint) {.exportc.} =
  type Cb = proc(typeVal: ScintillaModificationFlags, position: miqt_intptr_t, length: miqt_intptr_t, linesAdded: miqt_intptr_t, text: seq[byte], line: miqt_intptr_t, foldNow: ScintillaFoldLevel, foldPrev: ScintillaFoldLevel)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaModificationFlags(typeVal)

  let slotval2 = position

  let slotval3 = length

  let slotval4 = linesAdded

  var vtext_bytearray = text
  var vtextx_ret = @(toOpenArrayByte(vtext_bytearray.data, 0, int(vtext_bytearray.len)-1))
  c_free(vtext_bytearray.data)
  let slotval5 = vtextx_ret

  let slotval6 = line

  let slotval7 = ScintillaFoldLevel(foldNow)

  let slotval8 = ScintillaFoldLevel(foldPrev)


  nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5, slotval6, slotval7, slotval8)

proc onmodified*(self: ScintillaEditBase, slot: proc(typeVal: ScintillaModificationFlags, position: miqt_intptr_t, length: miqt_intptr_t, linesAdded: miqt_intptr_t, text: seq[byte], line: miqt_intptr_t, foldNow: ScintillaFoldLevel, foldPrev: ScintillaFoldLevel)) =
  type Cb = proc(typeVal: ScintillaModificationFlags, position: miqt_intptr_t, length: miqt_intptr_t, linesAdded: miqt_intptr_t, text: seq[byte], line: miqt_intptr_t, foldNow: ScintillaFoldLevel, foldPrev: ScintillaFoldLevel)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_modified(self.h, cast[int](addr tmp[]))
proc macroRecord*(self: ScintillaEditBase, message: ScintillaMessage, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): void =

  fcScintillaEditBase_macroRecord(self.h, cint(message), wParam, lParam)

proc miqt_exec_callback_ScintillaEditBase_macroRecord(slot: int, message: cint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t) {.exportc.} =
  type Cb = proc(message: ScintillaMessage, wParam: miqt_uintptr_t, lParam: miqt_intptr_t)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaMessage(message)

  let slotval2 = wParam

  let slotval3 = lParam


  nimfunc[](slotval1, slotval2, slotval3)

proc onmacroRecord*(self: ScintillaEditBase, slot: proc(message: ScintillaMessage, wParam: miqt_uintptr_t, lParam: miqt_intptr_t)) =
  type Cb = proc(message: ScintillaMessage, wParam: miqt_uintptr_t, lParam: miqt_intptr_t)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_macroRecord(self.h, cast[int](addr tmp[]))
proc marginClicked*(self: ScintillaEditBase, position: miqt_intptr_t, modifiers: ScintillaKeyMod, margin: cint): void =

  fcScintillaEditBase_marginClicked(self.h, position, cint(modifiers), margin)

proc miqt_exec_callback_ScintillaEditBase_marginClicked(slot: int, position: miqt_intptr_t, modifiers: cint, margin: cint) {.exportc.} =
  type Cb = proc(position: miqt_intptr_t, modifiers: ScintillaKeyMod, margin: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = ScintillaKeyMod(modifiers)

  let slotval3 = margin


  nimfunc[](slotval1, slotval2, slotval3)

proc onmarginClicked*(self: ScintillaEditBase, slot: proc(position: miqt_intptr_t, modifiers: ScintillaKeyMod, margin: cint)) =
  type Cb = proc(position: miqt_intptr_t, modifiers: ScintillaKeyMod, margin: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_marginClicked(self.h, cast[int](addr tmp[]))
proc textAreaClicked*(self: ScintillaEditBase, line: miqt_intptr_t, modifiers: cint): void =

  fcScintillaEditBase_textAreaClicked(self.h, line, modifiers)

proc miqt_exec_callback_ScintillaEditBase_textAreaClicked(slot: int, line: miqt_intptr_t, modifiers: cint) {.exportc.} =
  type Cb = proc(line: miqt_intptr_t, modifiers: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = line

  let slotval2 = modifiers


  nimfunc[](slotval1, slotval2)

proc ontextAreaClicked*(self: ScintillaEditBase, slot: proc(line: miqt_intptr_t, modifiers: cint)) =
  type Cb = proc(line: miqt_intptr_t, modifiers: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_textAreaClicked(self.h, cast[int](addr tmp[]))
proc needShown*(self: ScintillaEditBase, position: miqt_intptr_t, length: miqt_intptr_t): void =

  fcScintillaEditBase_needShown(self.h, position, length)

proc miqt_exec_callback_ScintillaEditBase_needShown(slot: int, position: miqt_intptr_t, length: miqt_intptr_t) {.exportc.} =
  type Cb = proc(position: miqt_intptr_t, length: miqt_intptr_t)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = length


  nimfunc[](slotval1, slotval2)

proc onneedShown*(self: ScintillaEditBase, slot: proc(position: miqt_intptr_t, length: miqt_intptr_t)) =
  type Cb = proc(position: miqt_intptr_t, length: miqt_intptr_t)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_needShown(self.h, cast[int](addr tmp[]))
proc painted*(self: ScintillaEditBase, ): void =

  fcScintillaEditBase_painted(self.h)

proc miqt_exec_callback_ScintillaEditBase_painted(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onpainted*(self: ScintillaEditBase, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_painted(self.h, cast[int](addr tmp[]))
proc userListSelection*(self: ScintillaEditBase, ): void =

  fcScintillaEditBase_userListSelection(self.h)

proc miqt_exec_callback_ScintillaEditBase_userListSelection(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onuserListSelection*(self: ScintillaEditBase, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_userListSelection(self.h, cast[int](addr tmp[]))
proc uriDropped*(self: ScintillaEditBase, uri: string): void =

  fcScintillaEditBase_uriDropped(self.h, struct_miqt_string(data: uri, len: csize_t(len(uri))))

proc miqt_exec_callback_ScintillaEditBase_uriDropped(slot: int, uri: struct_miqt_string) {.exportc.} =
  type Cb = proc(uri: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vuri_ms = uri
  let vurix_ret = string.fromBytes(toOpenArrayByte(vuri_ms.data, 0, int(vuri_ms.len)-1))
  c_free(vuri_ms.data)
  let slotval1 = vurix_ret


  nimfunc[](slotval1)

proc onuriDropped*(self: ScintillaEditBase, slot: proc(uri: string)) =
  type Cb = proc(uri: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_uriDropped(self.h, cast[int](addr tmp[]))
proc dwellStart*(self: ScintillaEditBase, x: cint, y: cint): void =

  fcScintillaEditBase_dwellStart(self.h, x, y)

proc miqt_exec_callback_ScintillaEditBase_dwellStart(slot: int, x: cint, y: cint) {.exportc.} =
  type Cb = proc(x: cint, y: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = x

  let slotval2 = y


  nimfunc[](slotval1, slotval2)

proc ondwellStart*(self: ScintillaEditBase, slot: proc(x: cint, y: cint)) =
  type Cb = proc(x: cint, y: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_dwellStart(self.h, cast[int](addr tmp[]))
proc dwellEnd*(self: ScintillaEditBase, x: cint, y: cint): void =

  fcScintillaEditBase_dwellEnd(self.h, x, y)

proc miqt_exec_callback_ScintillaEditBase_dwellEnd(slot: int, x: cint, y: cint) {.exportc.} =
  type Cb = proc(x: cint, y: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = x

  let slotval2 = y


  nimfunc[](slotval1, slotval2)

proc ondwellEnd*(self: ScintillaEditBase, slot: proc(x: cint, y: cint)) =
  type Cb = proc(x: cint, y: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_dwellEnd(self.h, cast[int](addr tmp[]))
proc zoom*(self: ScintillaEditBase, zoom: cint): void =

  fcScintillaEditBase_zoom(self.h, zoom)

proc miqt_exec_callback_ScintillaEditBase_zoom(slot: int, zoom: cint) {.exportc.} =
  type Cb = proc(zoom: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = zoom


  nimfunc[](slotval1)

proc onzoom*(self: ScintillaEditBase, slot: proc(zoom: cint)) =
  type Cb = proc(zoom: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_zoom(self.h, cast[int](addr tmp[]))
proc hotSpotClick*(self: ScintillaEditBase, position: miqt_intptr_t, modifiers: ScintillaKeyMod): void =

  fcScintillaEditBase_hotSpotClick(self.h, position, cint(modifiers))

proc miqt_exec_callback_ScintillaEditBase_hotSpotClick(slot: int, position: miqt_intptr_t, modifiers: cint) {.exportc.} =
  type Cb = proc(position: miqt_intptr_t, modifiers: ScintillaKeyMod)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = ScintillaKeyMod(modifiers)


  nimfunc[](slotval1, slotval2)

proc onhotSpotClick*(self: ScintillaEditBase, slot: proc(position: miqt_intptr_t, modifiers: ScintillaKeyMod)) =
  type Cb = proc(position: miqt_intptr_t, modifiers: ScintillaKeyMod)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_hotSpotClick(self.h, cast[int](addr tmp[]))
proc hotSpotDoubleClick*(self: ScintillaEditBase, position: miqt_intptr_t, modifiers: ScintillaKeyMod): void =

  fcScintillaEditBase_hotSpotDoubleClick(self.h, position, cint(modifiers))

proc miqt_exec_callback_ScintillaEditBase_hotSpotDoubleClick(slot: int, position: miqt_intptr_t, modifiers: cint) {.exportc.} =
  type Cb = proc(position: miqt_intptr_t, modifiers: ScintillaKeyMod)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position

  let slotval2 = ScintillaKeyMod(modifiers)


  nimfunc[](slotval1, slotval2)

proc onhotSpotDoubleClick*(self: ScintillaEditBase, slot: proc(position: miqt_intptr_t, modifiers: ScintillaKeyMod)) =
  type Cb = proc(position: miqt_intptr_t, modifiers: ScintillaKeyMod)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_hotSpotDoubleClick(self.h, cast[int](addr tmp[]))
proc callTipClick*(self: ScintillaEditBase, ): void =

  fcScintillaEditBase_callTipClick(self.h)

proc miqt_exec_callback_ScintillaEditBase_callTipClick(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc oncallTipClick*(self: ScintillaEditBase, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_callTipClick(self.h, cast[int](addr tmp[]))
proc autoCompleteSelection*(self: ScintillaEditBase, position: miqt_intptr_t, text: string): void =

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

proc onautoCompleteSelection*(self: ScintillaEditBase, slot: proc(position: miqt_intptr_t, text: string)) =
  type Cb = proc(position: miqt_intptr_t, text: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_autoCompleteSelection(self.h, cast[int](addr tmp[]))
proc autoCompleteCancelled*(self: ScintillaEditBase, ): void =

  fcScintillaEditBase_autoCompleteCancelled(self.h)

proc miqt_exec_callback_ScintillaEditBase_autoCompleteCancelled(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onautoCompleteCancelled*(self: ScintillaEditBase, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_autoCompleteCancelled(self.h, cast[int](addr tmp[]))
proc focusChanged*(self: ScintillaEditBase, focused: bool): void =

  fcScintillaEditBase_focusChanged(self.h, focused)

proc miqt_exec_callback_ScintillaEditBase_focusChanged(slot: int, focused: bool) {.exportc.} =
  type Cb = proc(focused: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = focused


  nimfunc[](slotval1)

proc onfocusChanged*(self: ScintillaEditBase, slot: proc(focused: bool)) =
  type Cb = proc(focused: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_focusChanged(self.h, cast[int](addr tmp[]))
proc notify*(self: ScintillaEditBase, pscn: ScintillaNotificationData): void =

  fcScintillaEditBase_notify(self.h, pscn.h)

proc miqt_exec_callback_ScintillaEditBase_notify(slot: int, pscn: pointer) {.exportc.} =
  type Cb = proc(pscn: ScintillaNotificationData)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ScintillaNotificationData(h: pscn)


  nimfunc[](slotval1)

proc onnotify*(self: ScintillaEditBase, slot: proc(pscn: ScintillaNotificationData)) =
  type Cb = proc(pscn: ScintillaNotificationData)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_notify(self.h, cast[int](addr tmp[]))
proc command*(self: ScintillaEditBase, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): void =

  fcScintillaEditBase_command(self.h, wParam, lParam)

proc miqt_exec_callback_ScintillaEditBase_command(slot: int, wParam: miqt_uintptr_t, lParam: miqt_intptr_t) {.exportc.} =
  type Cb = proc(wParam: miqt_uintptr_t, lParam: miqt_intptr_t)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = wParam

  let slotval2 = lParam


  nimfunc[](slotval1, slotval2)

proc oncommand*(self: ScintillaEditBase, slot: proc(wParam: miqt_uintptr_t, lParam: miqt_intptr_t)) =
  type Cb = proc(wParam: miqt_uintptr_t, lParam: miqt_intptr_t)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_command(self.h, cast[int](addr tmp[]))
proc buttonPressed*(self: ScintillaEditBase, event: gen_qevent.QMouseEvent): void =

  fcScintillaEditBase_buttonPressed(self.h, event.h)

proc miqt_exec_callback_ScintillaEditBase_buttonPressed(slot: int, event: pointer) {.exportc.} =
  type Cb = proc(event: gen_qevent.QMouseEvent)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](slotval1)

proc onbuttonPressed*(self: ScintillaEditBase, slot: proc(event: gen_qevent.QMouseEvent)) =
  type Cb = proc(event: gen_qevent.QMouseEvent)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_buttonPressed(self.h, cast[int](addr tmp[]))
proc buttonReleased*(self: ScintillaEditBase, event: gen_qevent.QMouseEvent): void =

  fcScintillaEditBase_buttonReleased(self.h, event.h)

proc miqt_exec_callback_ScintillaEditBase_buttonReleased(slot: int, event: pointer) {.exportc.} =
  type Cb = proc(event: gen_qevent.QMouseEvent)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](slotval1)

proc onbuttonReleased*(self: ScintillaEditBase, slot: proc(event: gen_qevent.QMouseEvent)) =
  type Cb = proc(event: gen_qevent.QMouseEvent)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_buttonReleased(self.h, cast[int](addr tmp[]))
proc keyPressed*(self: ScintillaEditBase, event: gen_qevent.QKeyEvent): void =

  fcScintillaEditBase_keyPressed(self.h, event.h)

proc miqt_exec_callback_ScintillaEditBase_keyPressed(slot: int, event: pointer) {.exportc.} =
  type Cb = proc(event: gen_qevent.QKeyEvent)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](slotval1)

proc onkeyPressed*(self: ScintillaEditBase, slot: proc(event: gen_qevent.QKeyEvent)) =
  type Cb = proc(event: gen_qevent.QKeyEvent)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_keyPressed(self.h, cast[int](addr tmp[]))
proc resized*(self: ScintillaEditBase, ): void =

  fcScintillaEditBase_resized(self.h)

proc miqt_exec_callback_ScintillaEditBase_resized(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onresized*(self: ScintillaEditBase, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaEditBase_connect_resized(self.h, cast[int](addr tmp[]))
proc tr2*(_: type ScintillaEditBase, s: cstring, c: cstring): string =

  let v_ms = fcScintillaEditBase_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type ScintillaEditBase, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcScintillaEditBase_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type ScintillaEditBase, s: cstring, c: cstring): string =

  let v_ms = fcScintillaEditBase_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type ScintillaEditBase, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcScintillaEditBase_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: ScintillaEditBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fScintillaEditBase_virtualbase_metacall(self.h, cint(param1), param2, param3)

type ScintillaEditBasemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_metacall(self: ptr cScintillaEditBase, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_ScintillaEditBase_metacall ".} =
  type Cb = proc(super: ScintillaEditBasemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(ScintillaEditBase(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_send(self: ScintillaEditBase, iMessage: cuint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): miqt_intptr_t =


  fScintillaEditBase_virtualbase_send(self.h, iMessage, wParam, lParam)

type ScintillaEditBasesendBase* = proc(iMessage: cuint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): miqt_intptr_t
proc onsend*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasesendBase, iMessage: cuint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): miqt_intptr_t) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasesendBase, iMessage: cuint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): miqt_intptr_t
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_send(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_send(self: ptr cScintillaEditBase, slot: int, iMessage: cuint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): miqt_intptr_t {.exportc: "miqt_exec_callback_ScintillaEditBase_send ".} =
  type Cb = proc(super: ScintillaEditBasesendBase, iMessage: cuint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): miqt_intptr_t
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(iMessage: cuint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): auto =
    callVirtualBase_send(ScintillaEditBase(h: self), iMessage, wParam, lParam)
  let slotval1 = iMessage

  let slotval2 = wParam

  let slotval3 = lParam


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sends(self: ScintillaEditBase, iMessage: cuint, wParam: miqt_uintptr_t, s: cstring): miqt_intptr_t =


  fScintillaEditBase_virtualbase_sends(self.h, iMessage, wParam, s)

type ScintillaEditBasesendsBase* = proc(iMessage: cuint, wParam: miqt_uintptr_t, s: cstring): miqt_intptr_t
proc onsends*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasesendsBase, iMessage: cuint, wParam: miqt_uintptr_t, s: cstring): miqt_intptr_t) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasesendsBase, iMessage: cuint, wParam: miqt_uintptr_t, s: cstring): miqt_intptr_t
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_sends(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_sends(self: ptr cScintillaEditBase, slot: int, iMessage: cuint, wParam: miqt_uintptr_t, s: cstring): miqt_intptr_t {.exportc: "miqt_exec_callback_ScintillaEditBase_sends ".} =
  type Cb = proc(super: ScintillaEditBasesendsBase, iMessage: cuint, wParam: miqt_uintptr_t, s: cstring): miqt_intptr_t
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(iMessage: cuint, wParam: miqt_uintptr_t, s: cstring): auto =
    callVirtualBase_sends(ScintillaEditBase(h: self), iMessage, wParam, s)
  let slotval1 = iMessage

  let slotval2 = wParam

  let slotval3 = (s)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: ScintillaEditBase, event: gen_qcoreevent.QEvent): bool =


  fScintillaEditBase_virtualbase_event(self.h, event.h)

type ScintillaEditBaseeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBaseeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBaseeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_event(self: ptr cScintillaEditBase, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_ScintillaEditBase_event ".} =
  type Cb = proc(super: ScintillaEditBaseeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(ScintillaEditBase(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_paintEvent(self: ScintillaEditBase, event: gen_qevent.QPaintEvent): void =


  fScintillaEditBase_virtualbase_paintEvent(self.h, event.h)

type ScintillaEditBasepaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasepaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasepaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_paintEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_paintEvent ".} =
  type Cb = proc(super: ScintillaEditBasepaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(ScintillaEditBase(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: ScintillaEditBase, event: gen_qevent.QWheelEvent): void =


  fScintillaEditBase_virtualbase_wheelEvent(self.h, event.h)

type ScintillaEditBasewheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasewheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasewheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_wheelEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_wheelEvent ".} =
  type Cb = proc(super: ScintillaEditBasewheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(ScintillaEditBase(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: ScintillaEditBase, event: gen_qevent.QFocusEvent): void =


  fScintillaEditBase_virtualbase_focusInEvent(self.h, event.h)

type ScintillaEditBasefocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasefocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasefocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_focusInEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_focusInEvent ".} =
  type Cb = proc(super: ScintillaEditBasefocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(ScintillaEditBase(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: ScintillaEditBase, event: gen_qevent.QFocusEvent): void =


  fScintillaEditBase_virtualbase_focusOutEvent(self.h, event.h)

type ScintillaEditBasefocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasefocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasefocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_focusOutEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_focusOutEvent ".} =
  type Cb = proc(super: ScintillaEditBasefocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(ScintillaEditBase(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: ScintillaEditBase, event: gen_qevent.QResizeEvent): void =


  fScintillaEditBase_virtualbase_resizeEvent(self.h, event.h)

type ScintillaEditBaseresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBaseresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBaseresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_resizeEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_resizeEvent ".} =
  type Cb = proc(super: ScintillaEditBaseresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(ScintillaEditBase(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: ScintillaEditBase, event: gen_qevent.QKeyEvent): void =


  fScintillaEditBase_virtualbase_keyPressEvent(self.h, event.h)

type ScintillaEditBasekeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasekeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasekeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_keyPressEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_keyPressEvent ".} =
  type Cb = proc(super: ScintillaEditBasekeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(ScintillaEditBase(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: ScintillaEditBase, event: gen_qevent.QMouseEvent): void =


  fScintillaEditBase_virtualbase_mousePressEvent(self.h, event.h)

type ScintillaEditBasemousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasemousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasemousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_mousePressEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_mousePressEvent ".} =
  type Cb = proc(super: ScintillaEditBasemousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(ScintillaEditBase(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: ScintillaEditBase, event: gen_qevent.QMouseEvent): void =


  fScintillaEditBase_virtualbase_mouseReleaseEvent(self.h, event.h)

type ScintillaEditBasemouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasemouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasemouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_mouseReleaseEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_mouseReleaseEvent ".} =
  type Cb = proc(super: ScintillaEditBasemouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(ScintillaEditBase(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: ScintillaEditBase, event: gen_qevent.QMouseEvent): void =


  fScintillaEditBase_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type ScintillaEditBasemouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasemouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasemouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_mouseDoubleClickEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_mouseDoubleClickEvent ".} =
  type Cb = proc(super: ScintillaEditBasemouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(ScintillaEditBase(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: ScintillaEditBase, event: gen_qevent.QMouseEvent): void =


  fScintillaEditBase_virtualbase_mouseMoveEvent(self.h, event.h)

type ScintillaEditBasemouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasemouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasemouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_mouseMoveEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_mouseMoveEvent ".} =
  type Cb = proc(super: ScintillaEditBasemouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(ScintillaEditBase(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: ScintillaEditBase, event: gen_qevent.QContextMenuEvent): void =


  fScintillaEditBase_virtualbase_contextMenuEvent(self.h, event.h)

type ScintillaEditBasecontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasecontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasecontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_contextMenuEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_contextMenuEvent ".} =
  type Cb = proc(super: ScintillaEditBasecontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(ScintillaEditBase(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: ScintillaEditBase, event: gen_qevent.QDragEnterEvent): void =


  fScintillaEditBase_virtualbase_dragEnterEvent(self.h, event.h)

type ScintillaEditBasedragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasedragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasedragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_dragEnterEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_dragEnterEvent ".} =
  type Cb = proc(super: ScintillaEditBasedragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(ScintillaEditBase(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: ScintillaEditBase, event: gen_qevent.QDragLeaveEvent): void =


  fScintillaEditBase_virtualbase_dragLeaveEvent(self.h, event.h)

type ScintillaEditBasedragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasedragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasedragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_dragLeaveEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_dragLeaveEvent ".} =
  type Cb = proc(super: ScintillaEditBasedragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(ScintillaEditBase(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: ScintillaEditBase, event: gen_qevent.QDragMoveEvent): void =


  fScintillaEditBase_virtualbase_dragMoveEvent(self.h, event.h)

type ScintillaEditBasedragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasedragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasedragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_dragMoveEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_dragMoveEvent ".} =
  type Cb = proc(super: ScintillaEditBasedragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(ScintillaEditBase(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: ScintillaEditBase, event: gen_qevent.QDropEvent): void =


  fScintillaEditBase_virtualbase_dropEvent(self.h, event.h)

type ScintillaEditBasedropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasedropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasedropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_dropEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_dropEvent ".} =
  type Cb = proc(super: ScintillaEditBasedropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(ScintillaEditBase(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: ScintillaEditBase, event: gen_qevent.QInputMethodEvent): void =


  fScintillaEditBase_virtualbase_inputMethodEvent(self.h, event.h)

type ScintillaEditBaseinputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBaseinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBaseinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_inputMethodEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_inputMethodEvent ".} =
  type Cb = proc(super: ScintillaEditBaseinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(ScintillaEditBase(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: ScintillaEditBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fScintillaEditBase_virtualbase_inputMethodQuery(self.h, cint(query)))

type ScintillaEditBaseinputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBaseinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBaseinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_inputMethodQuery(self: ptr cScintillaEditBase, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_ScintillaEditBase_inputMethodQuery ".} =
  type Cb = proc(super: ScintillaEditBaseinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(ScintillaEditBase(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_scrollContentsBy(self: ScintillaEditBase, param1: cint, param2: cint): void =


  fScintillaEditBase_virtualbase_scrollContentsBy(self.h, param1, param2)

type ScintillaEditBasescrollContentsByBase* = proc(param1: cint, param2: cint): void
proc onscrollContentsBy*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasescrollContentsByBase, param1: cint, param2: cint): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasescrollContentsByBase, param1: cint, param2: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_scrollContentsBy(self: ptr cScintillaEditBase, slot: int, param1: cint, param2: cint): void {.exportc: "miqt_exec_callback_ScintillaEditBase_scrollContentsBy ".} =
  type Cb = proc(super: ScintillaEditBasescrollContentsByBase, param1: cint, param2: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint, param2: cint): auto =
    callVirtualBase_scrollContentsBy(ScintillaEditBase(h: self), param1, param2)
  let slotval1 = param1

  let slotval2 = param2


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_minimumSizeHint(self: ScintillaEditBase, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fScintillaEditBase_virtualbase_minimumSizeHint(self.h))

type ScintillaEditBaseminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBaseminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBaseminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_minimumSizeHint(self: ptr cScintillaEditBase, slot: int): pointer {.exportc: "miqt_exec_callback_ScintillaEditBase_minimumSizeHint ".} =
  type Cb = proc(super: ScintillaEditBaseminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(ScintillaEditBase(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_sizeHint(self: ScintillaEditBase, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fScintillaEditBase_virtualbase_sizeHint(self.h))

type ScintillaEditBasesizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasesizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasesizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_sizeHint(self: ptr cScintillaEditBase, slot: int): pointer {.exportc: "miqt_exec_callback_ScintillaEditBase_sizeHint ".} =
  type Cb = proc(super: ScintillaEditBasesizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(ScintillaEditBase(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setupViewport(self: ScintillaEditBase, viewport: gen_qwidget.QWidget): void =


  fScintillaEditBase_virtualbase_setupViewport(self.h, viewport.h)

type ScintillaEditBasesetupViewportBase* = proc(viewport: gen_qwidget.QWidget): void
proc onsetupViewport*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasesetupViewportBase, viewport: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasesetupViewportBase, viewport: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_setupViewport(self: ptr cScintillaEditBase, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_setupViewport ".} =
  type Cb = proc(super: ScintillaEditBasesetupViewportBase, viewport: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(viewport: gen_qwidget.QWidget): auto =
    callVirtualBase_setupViewport(ScintillaEditBase(h: self), viewport)
  let slotval1 = gen_qwidget.QWidget(h: viewport)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: ScintillaEditBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =


  fScintillaEditBase_virtualbase_eventFilter(self.h, param1.h, param2.h)

type ScintillaEditBaseeventFilterBase* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBaseeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBaseeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_eventFilter(self: ptr cScintillaEditBase, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_ScintillaEditBase_eventFilter ".} =
  type Cb = proc(super: ScintillaEditBaseeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(ScintillaEditBase(h: self), param1, param2)
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_viewportEvent(self: ScintillaEditBase, param1: gen_qcoreevent.QEvent): bool =


  fScintillaEditBase_virtualbase_viewportEvent(self.h, param1.h)

type ScintillaEditBaseviewportEventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onviewportEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBaseviewportEventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBaseviewportEventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_viewportEvent(self: ptr cScintillaEditBase, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_ScintillaEditBase_viewportEvent ".} =
  type Cb = proc(super: ScintillaEditBaseviewportEventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_viewportEvent(ScintillaEditBase(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_viewportSizeHint(self: ScintillaEditBase, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fScintillaEditBase_virtualbase_viewportSizeHint(self.h))

type ScintillaEditBaseviewportSizeHintBase* = proc(): gen_qsize.QSize
proc onviewportSizeHint*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBaseviewportSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBaseviewportSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_viewportSizeHint(self: ptr cScintillaEditBase, slot: int): pointer {.exportc: "miqt_exec_callback_ScintillaEditBase_viewportSizeHint ".} =
  type Cb = proc(super: ScintillaEditBaseviewportSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_viewportSizeHint(ScintillaEditBase(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_changeEvent(self: ScintillaEditBase, param1: gen_qcoreevent.QEvent): void =


  fScintillaEditBase_virtualbase_changeEvent(self.h, param1.h)

type ScintillaEditBasechangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasechangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasechangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_changeEvent(self: ptr cScintillaEditBase, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_changeEvent ".} =
  type Cb = proc(super: ScintillaEditBasechangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(ScintillaEditBase(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: ScintillaEditBase, ): cint =


  fScintillaEditBase_virtualbase_devType(self.h)

type ScintillaEditBasedevTypeBase* = proc(): cint
proc ondevType*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasedevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasedevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_devType(self: ptr cScintillaEditBase, slot: int): cint {.exportc: "miqt_exec_callback_ScintillaEditBase_devType ".} =
  type Cb = proc(super: ScintillaEditBasedevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(ScintillaEditBase(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: ScintillaEditBase, visible: bool): void =


  fScintillaEditBase_virtualbase_setVisible(self.h, visible)

type ScintillaEditBasesetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasesetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasesetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_setVisible(self: ptr cScintillaEditBase, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_ScintillaEditBase_setVisible ".} =
  type Cb = proc(super: ScintillaEditBasesetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(ScintillaEditBase(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: ScintillaEditBase, param1: cint): cint =


  fScintillaEditBase_virtualbase_heightForWidth(self.h, param1)

type ScintillaEditBaseheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBaseheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBaseheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_heightForWidth(self: ptr cScintillaEditBase, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_ScintillaEditBase_heightForWidth ".} =
  type Cb = proc(super: ScintillaEditBaseheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(ScintillaEditBase(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: ScintillaEditBase, ): bool =


  fScintillaEditBase_virtualbase_hasHeightForWidth(self.h)

type ScintillaEditBasehasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasehasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasehasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_hasHeightForWidth(self: ptr cScintillaEditBase, slot: int): bool {.exportc: "miqt_exec_callback_ScintillaEditBase_hasHeightForWidth ".} =
  type Cb = proc(super: ScintillaEditBasehasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(ScintillaEditBase(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: ScintillaEditBase, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fScintillaEditBase_virtualbase_paintEngine(self.h))

type ScintillaEditBasepaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasepaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasepaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_paintEngine(self: ptr cScintillaEditBase, slot: int): pointer {.exportc: "miqt_exec_callback_ScintillaEditBase_paintEngine ".} =
  type Cb = proc(super: ScintillaEditBasepaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(ScintillaEditBase(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_keyReleaseEvent(self: ScintillaEditBase, event: gen_qevent.QKeyEvent): void =


  fScintillaEditBase_virtualbase_keyReleaseEvent(self.h, event.h)

type ScintillaEditBasekeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasekeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasekeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_keyReleaseEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_keyReleaseEvent ".} =
  type Cb = proc(super: ScintillaEditBasekeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(ScintillaEditBase(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: ScintillaEditBase, event: gen_qcoreevent.QEvent): void =


  fScintillaEditBase_virtualbase_enterEvent(self.h, event.h)

type ScintillaEditBaseenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBaseenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBaseenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_enterEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_enterEvent ".} =
  type Cb = proc(super: ScintillaEditBaseenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(ScintillaEditBase(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: ScintillaEditBase, event: gen_qcoreevent.QEvent): void =


  fScintillaEditBase_virtualbase_leaveEvent(self.h, event.h)

type ScintillaEditBaseleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBaseleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBaseleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_leaveEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_leaveEvent ".} =
  type Cb = proc(super: ScintillaEditBaseleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(ScintillaEditBase(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: ScintillaEditBase, event: gen_qevent.QMoveEvent): void =


  fScintillaEditBase_virtualbase_moveEvent(self.h, event.h)

type ScintillaEditBasemoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasemoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasemoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_moveEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_moveEvent ".} =
  type Cb = proc(super: ScintillaEditBasemoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(ScintillaEditBase(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: ScintillaEditBase, event: gen_qevent.QCloseEvent): void =


  fScintillaEditBase_virtualbase_closeEvent(self.h, event.h)

type ScintillaEditBasecloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasecloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasecloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_closeEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_closeEvent ".} =
  type Cb = proc(super: ScintillaEditBasecloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(ScintillaEditBase(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: ScintillaEditBase, event: gen_qevent.QTabletEvent): void =


  fScintillaEditBase_virtualbase_tabletEvent(self.h, event.h)

type ScintillaEditBasetabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasetabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasetabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_tabletEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_tabletEvent ".} =
  type Cb = proc(super: ScintillaEditBasetabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(ScintillaEditBase(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: ScintillaEditBase, event: gen_qevent.QActionEvent): void =


  fScintillaEditBase_virtualbase_actionEvent(self.h, event.h)

type ScintillaEditBaseactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBaseactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBaseactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_actionEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_actionEvent ".} =
  type Cb = proc(super: ScintillaEditBaseactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(ScintillaEditBase(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: ScintillaEditBase, event: gen_qevent.QShowEvent): void =


  fScintillaEditBase_virtualbase_showEvent(self.h, event.h)

type ScintillaEditBaseshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBaseshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBaseshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_showEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_showEvent ".} =
  type Cb = proc(super: ScintillaEditBaseshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(ScintillaEditBase(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: ScintillaEditBase, event: gen_qevent.QHideEvent): void =


  fScintillaEditBase_virtualbase_hideEvent(self.h, event.h)

type ScintillaEditBasehideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasehideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasehideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_hideEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_hideEvent ".} =
  type Cb = proc(super: ScintillaEditBasehideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(ScintillaEditBase(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: ScintillaEditBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fScintillaEditBase_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type ScintillaEditBasenativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasenativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasenativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_nativeEvent(self: ptr cScintillaEditBase, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_ScintillaEditBase_nativeEvent ".} =
  type Cb = proc(super: ScintillaEditBasenativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(ScintillaEditBase(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: ScintillaEditBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fScintillaEditBase_virtualbase_metric(self.h, cint(param1))

type ScintillaEditBasemetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasemetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasemetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_metric(self: ptr cScintillaEditBase, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_ScintillaEditBase_metric ".} =
  type Cb = proc(super: ScintillaEditBasemetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(ScintillaEditBase(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: ScintillaEditBase, painter: gen_qpainter.QPainter): void =


  fScintillaEditBase_virtualbase_initPainter(self.h, painter.h)

type ScintillaEditBaseinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBaseinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBaseinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_initPainter(self: ptr cScintillaEditBase, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_initPainter ".} =
  type Cb = proc(super: ScintillaEditBaseinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(ScintillaEditBase(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: ScintillaEditBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fScintillaEditBase_virtualbase_redirected(self.h, offset.h))

type ScintillaEditBaseredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBaseredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBaseredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_redirected(self: ptr cScintillaEditBase, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_ScintillaEditBase_redirected ".} =
  type Cb = proc(super: ScintillaEditBaseredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(ScintillaEditBase(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: ScintillaEditBase, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fScintillaEditBase_virtualbase_sharedPainter(self.h))

type ScintillaEditBasesharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasesharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasesharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_sharedPainter(self: ptr cScintillaEditBase, slot: int): pointer {.exportc: "miqt_exec_callback_ScintillaEditBase_sharedPainter ".} =
  type Cb = proc(super: ScintillaEditBasesharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(ScintillaEditBase(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: ScintillaEditBase, next: bool): bool =


  fScintillaEditBase_virtualbase_focusNextPrevChild(self.h, next)

type ScintillaEditBasefocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasefocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasefocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_focusNextPrevChild(self: ptr cScintillaEditBase, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_ScintillaEditBase_focusNextPrevChild ".} =
  type Cb = proc(super: ScintillaEditBasefocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(ScintillaEditBase(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_timerEvent(self: ScintillaEditBase, event: gen_qcoreevent.QTimerEvent): void =


  fScintillaEditBase_virtualbase_timerEvent(self.h, event.h)

type ScintillaEditBasetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_timerEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_timerEvent ".} =
  type Cb = proc(super: ScintillaEditBasetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(ScintillaEditBase(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: ScintillaEditBase, event: gen_qcoreevent.QChildEvent): void =


  fScintillaEditBase_virtualbase_childEvent(self.h, event.h)

type ScintillaEditBasechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_childEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_childEvent ".} =
  type Cb = proc(super: ScintillaEditBasechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(ScintillaEditBase(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: ScintillaEditBase, event: gen_qcoreevent.QEvent): void =


  fScintillaEditBase_virtualbase_customEvent(self.h, event.h)

type ScintillaEditBasecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_customEvent(self: ptr cScintillaEditBase, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_customEvent ".} =
  type Cb = proc(super: ScintillaEditBasecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(ScintillaEditBase(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: ScintillaEditBase, signal: gen_qmetaobject.QMetaMethod): void =


  fScintillaEditBase_virtualbase_connectNotify(self.h, signal.h)

type ScintillaEditBaseconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBaseconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBaseconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_connectNotify(self: ptr cScintillaEditBase, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_connectNotify ".} =
  type Cb = proc(super: ScintillaEditBaseconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(ScintillaEditBase(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: ScintillaEditBase, signal: gen_qmetaobject.QMetaMethod): void =


  fScintillaEditBase_virtualbase_disconnectNotify(self.h, signal.h)

type ScintillaEditBasedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: ScintillaEditBase, slot: proc(super: ScintillaEditBasedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditBasedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEditBase_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEditBase_disconnectNotify(self: ptr cScintillaEditBase, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_ScintillaEditBase_disconnectNotify ".} =
  type Cb = proc(super: ScintillaEditBasedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(ScintillaEditBase(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: ScintillaEditBase) =
  fcScintillaEditBase_delete(self.h)

func init*(T: type ScintillaDocument, h: ptr cScintillaDocument): ScintillaDocument =
  T(h: h)
proc create*(T: type ScintillaDocument, ): ScintillaDocument =

  ScintillaDocument.init(fcScintillaDocument_new())
proc create*(T: type ScintillaDocument, parent: gen_qobject.QObject): ScintillaDocument =

  ScintillaDocument.init(fcScintillaDocument_new2(parent.h))
proc create*(T: type ScintillaDocument, parent: gen_qobject.QObject, pdoc_x: pointer): ScintillaDocument =

  ScintillaDocument.init(fcScintillaDocument_new3(parent.h, pdoc_x))
proc metaObject*(self: ScintillaDocument, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcScintillaDocument_metaObject(self.h))

proc metacast*(self: ScintillaDocument, param1: cstring): pointer =

  fcScintillaDocument_metacast(self.h, param1)

proc metacall*(self: ScintillaDocument, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcScintillaDocument_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type ScintillaDocument, s: cstring): string =

  let v_ms = fcScintillaDocument_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type ScintillaDocument, s: cstring): string =

  let v_ms = fcScintillaDocument_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc pointer*(self: ScintillaDocument, ): pointer =

  fcScintillaDocument_pointer(self.h)

proc lineFromPosition*(self: ScintillaDocument, pos: cint): cint =

  fcScintillaDocument_lineFromPosition(self.h, pos)

proc isCrLf*(self: ScintillaDocument, pos: cint): bool =

  fcScintillaDocument_isCrLf(self.h, pos)

proc deleteChars*(self: ScintillaDocument, pos: cint, len: cint): bool =

  fcScintillaDocument_deleteChars(self.h, pos, len)

proc undo*(self: ScintillaDocument, ): cint =

  fcScintillaDocument_undo(self.h)

proc redo*(self: ScintillaDocument, ): cint =

  fcScintillaDocument_redo(self.h)

proc canUndo*(self: ScintillaDocument, ): bool =

  fcScintillaDocument_canUndo(self.h)

proc canRedo*(self: ScintillaDocument, ): bool =

  fcScintillaDocument_canRedo(self.h)

proc deleteUndoHistory*(self: ScintillaDocument, ): void =

  fcScintillaDocument_deleteUndoHistory(self.h)

proc setUndoCollection*(self: ScintillaDocument, collect_undo: bool): bool =

  fcScintillaDocument_setUndoCollection(self.h, collect_undo)

proc isCollectingUndo*(self: ScintillaDocument, ): bool =

  fcScintillaDocument_isCollectingUndo(self.h)

proc beginUndoAction*(self: ScintillaDocument, ): void =

  fcScintillaDocument_beginUndoAction(self.h)

proc endUndoAction*(self: ScintillaDocument, ): void =

  fcScintillaDocument_endUndoAction(self.h)

proc setSavePoint*(self: ScintillaDocument, ): void =

  fcScintillaDocument_setSavePoint(self.h)

proc isSavePoint*(self: ScintillaDocument, ): bool =

  fcScintillaDocument_isSavePoint(self.h)

proc setReadOnly*(self: ScintillaDocument, read_only: bool): void =

  fcScintillaDocument_setReadOnly(self.h, read_only)

proc isReadOnly*(self: ScintillaDocument, ): bool =

  fcScintillaDocument_isReadOnly(self.h)

proc insertString*(self: ScintillaDocument, position: cint, str: seq[byte]): void =

  fcScintillaDocument_insertString(self.h, position, struct_miqt_string(data: cast[cstring](if len(str) == 0: nil else: unsafeAddr str[0]), len: csize_t(len(str))))

proc getCharRange*(self: ScintillaDocument, position: cint, length: cint): seq[byte] =

  var v_bytearray = fcScintillaDocument_getCharRange(self.h, position, length)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc styleAt*(self: ScintillaDocument, position: cint): cchar =

  fcScintillaDocument_styleAt(self.h, position)

proc lineStart*(self: ScintillaDocument, lineno: cint): cint =

  fcScintillaDocument_lineStart(self.h, lineno)

proc lineEnd*(self: ScintillaDocument, lineno: cint): cint =

  fcScintillaDocument_lineEnd(self.h, lineno)

proc lineEndPosition*(self: ScintillaDocument, pos: cint): cint =

  fcScintillaDocument_lineEndPosition(self.h, pos)

proc length*(self: ScintillaDocument, ): cint =

  fcScintillaDocument_length(self.h)

proc linesTotal*(self: ScintillaDocument, ): cint =

  fcScintillaDocument_linesTotal(self.h)

proc startStyling*(self: ScintillaDocument, position: cint): void =

  fcScintillaDocument_startStyling(self.h, position)

proc setStyleFor*(self: ScintillaDocument, length: cint, style: cchar): bool =

  fcScintillaDocument_setStyleFor(self.h, length, style)

proc getEndStyled*(self: ScintillaDocument, ): cint =

  fcScintillaDocument_getEndStyled(self.h)

proc ensureStyledTo*(self: ScintillaDocument, position: cint): void =

  fcScintillaDocument_ensureStyledTo(self.h, position)

proc setCurrentIndicator*(self: ScintillaDocument, indic: cint): void =

  fcScintillaDocument_setCurrentIndicator(self.h, indic)

proc decorationFillRange*(self: ScintillaDocument, position: cint, value: cint, fillLength: cint): void =

  fcScintillaDocument_decorationFillRange(self.h, position, value, fillLength)

proc decorationsValueAt*(self: ScintillaDocument, indic: cint, position: cint): cint =

  fcScintillaDocument_decorationsValueAt(self.h, indic, position)

proc decorationsStart*(self: ScintillaDocument, indic: cint, position: cint): cint =

  fcScintillaDocument_decorationsStart(self.h, indic, position)

proc decorationsEnd*(self: ScintillaDocument, indic: cint, position: cint): cint =

  fcScintillaDocument_decorationsEnd(self.h, indic, position)

proc getCodePage*(self: ScintillaDocument, ): cint =

  fcScintillaDocument_getCodePage(self.h)

proc setCodePage*(self: ScintillaDocument, code_page: cint): void =

  fcScintillaDocument_setCodePage(self.h, code_page)

proc getEolMode*(self: ScintillaDocument, ): cint =

  fcScintillaDocument_getEolMode(self.h)

proc setEolMode*(self: ScintillaDocument, eol_mode: cint): void =

  fcScintillaDocument_setEolMode(self.h, eol_mode)

proc movePositionOutsideChar*(self: ScintillaDocument, pos: cint, move_dir: cint, check_line_end: bool): cint =

  fcScintillaDocument_movePositionOutsideChar(self.h, pos, move_dir, check_line_end)

proc getCharacter*(self: ScintillaDocument, pos: cint): cint =

  fcScintillaDocument_getCharacter(self.h, pos)

proc modifyAttempt*(self: ScintillaDocument, ): void =

  fcScintillaDocument_modifyAttempt(self.h)

proc miqt_exec_callback_ScintillaDocument_modifyAttempt(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onmodifyAttempt*(self: ScintillaDocument, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaDocument_connect_modifyAttempt(self.h, cast[int](addr tmp[]))
proc savePoint*(self: ScintillaDocument, atSavePoint: bool): void =

  fcScintillaDocument_savePoint(self.h, atSavePoint)

proc miqt_exec_callback_ScintillaDocument_savePoint(slot: int, atSavePoint: bool) {.exportc.} =
  type Cb = proc(atSavePoint: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = atSavePoint


  nimfunc[](slotval1)

proc onsavePoint*(self: ScintillaDocument, slot: proc(atSavePoint: bool)) =
  type Cb = proc(atSavePoint: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaDocument_connect_savePoint(self.h, cast[int](addr tmp[]))
proc modified*(self: ScintillaDocument, position: cint, modification_type: cint, text: seq[byte], length: cint, linesAdded: cint, line: cint, foldLevelNow: cint, foldLevelPrev: cint): void =

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

proc onmodified*(self: ScintillaDocument, slot: proc(position: cint, modification_type: cint, text: seq[byte], length: cint, linesAdded: cint, line: cint, foldLevelNow: cint, foldLevelPrev: cint)) =
  type Cb = proc(position: cint, modification_type: cint, text: seq[byte], length: cint, linesAdded: cint, line: cint, foldLevelNow: cint, foldLevelPrev: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaDocument_connect_modified(self.h, cast[int](addr tmp[]))
proc styleNeeded*(self: ScintillaDocument, pos: cint): void =

  fcScintillaDocument_styleNeeded(self.h, pos)

proc miqt_exec_callback_ScintillaDocument_styleNeeded(slot: int, pos: cint) {.exportc.} =
  type Cb = proc(pos: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = pos


  nimfunc[](slotval1)

proc onstyleNeeded*(self: ScintillaDocument, slot: proc(pos: cint)) =
  type Cb = proc(pos: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaDocument_connect_styleNeeded(self.h, cast[int](addr tmp[]))
proc errorOccurred*(self: ScintillaDocument, status: cint): void =

  fcScintillaDocument_errorOccurred(self.h, status)

proc miqt_exec_callback_ScintillaDocument_errorOccurred(slot: int, status: cint) {.exportc.} =
  type Cb = proc(status: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = status


  nimfunc[](slotval1)

proc onerrorOccurred*(self: ScintillaDocument, slot: proc(status: cint)) =
  type Cb = proc(status: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fScintillaDocument_connect_errorOccurred(self.h, cast[int](addr tmp[]))
proc tr2*(_: type ScintillaDocument, s: cstring, c: cstring): string =

  let v_ms = fcScintillaDocument_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type ScintillaDocument, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcScintillaDocument_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type ScintillaDocument, s: cstring, c: cstring): string =

  let v_ms = fcScintillaDocument_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type ScintillaDocument, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcScintillaDocument_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc beginUndoAction1*(self: ScintillaDocument, coalesceWithPrior: bool): void =

  fcScintillaDocument_beginUndoAction1(self.h, coalesceWithPrior)

proc callVirtualBase_metacall(self: ScintillaDocument, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fScintillaDocument_virtualbase_metacall(self.h, cint(param1), param2, param3)

type ScintillaDocumentmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: ScintillaDocument, slot: proc(super: ScintillaDocumentmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: ScintillaDocumentmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaDocument_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaDocument_metacall(self: ptr cScintillaDocument, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_ScintillaDocument_metacall ".} =
  type Cb = proc(super: ScintillaDocumentmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(ScintillaDocument(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: ScintillaDocument, event: gen_qcoreevent.QEvent): bool =


  fScintillaDocument_virtualbase_event(self.h, event.h)

type ScintillaDocumenteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: ScintillaDocument, slot: proc(super: ScintillaDocumenteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: ScintillaDocumenteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaDocument_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaDocument_event(self: ptr cScintillaDocument, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_ScintillaDocument_event ".} =
  type Cb = proc(super: ScintillaDocumenteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(ScintillaDocument(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: ScintillaDocument, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fScintillaDocument_virtualbase_eventFilter(self.h, watched.h, event.h)

type ScintillaDocumenteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: ScintillaDocument, slot: proc(super: ScintillaDocumenteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: ScintillaDocumenteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaDocument_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaDocument_eventFilter(self: ptr cScintillaDocument, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_ScintillaDocument_eventFilter ".} =
  type Cb = proc(super: ScintillaDocumenteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(ScintillaDocument(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: ScintillaDocument, event: gen_qcoreevent.QTimerEvent): void =


  fScintillaDocument_virtualbase_timerEvent(self.h, event.h)

type ScintillaDocumenttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: ScintillaDocument, slot: proc(super: ScintillaDocumenttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaDocumenttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaDocument_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaDocument_timerEvent(self: ptr cScintillaDocument, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaDocument_timerEvent ".} =
  type Cb = proc(super: ScintillaDocumenttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(ScintillaDocument(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: ScintillaDocument, event: gen_qcoreevent.QChildEvent): void =


  fScintillaDocument_virtualbase_childEvent(self.h, event.h)

type ScintillaDocumentchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: ScintillaDocument, slot: proc(super: ScintillaDocumentchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaDocumentchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaDocument_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaDocument_childEvent(self: ptr cScintillaDocument, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaDocument_childEvent ".} =
  type Cb = proc(super: ScintillaDocumentchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(ScintillaDocument(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: ScintillaDocument, event: gen_qcoreevent.QEvent): void =


  fScintillaDocument_virtualbase_customEvent(self.h, event.h)

type ScintillaDocumentcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: ScintillaDocument, slot: proc(super: ScintillaDocumentcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaDocumentcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaDocument_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaDocument_customEvent(self: ptr cScintillaDocument, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaDocument_customEvent ".} =
  type Cb = proc(super: ScintillaDocumentcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(ScintillaDocument(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: ScintillaDocument, signal: gen_qmetaobject.QMetaMethod): void =


  fScintillaDocument_virtualbase_connectNotify(self.h, signal.h)

type ScintillaDocumentconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: ScintillaDocument, slot: proc(super: ScintillaDocumentconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaDocumentconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaDocument_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaDocument_connectNotify(self: ptr cScintillaDocument, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_ScintillaDocument_connectNotify ".} =
  type Cb = proc(super: ScintillaDocumentconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(ScintillaDocument(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: ScintillaDocument, signal: gen_qmetaobject.QMetaMethod): void =


  fScintillaDocument_virtualbase_disconnectNotify(self.h, signal.h)

type ScintillaDocumentdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: ScintillaDocument, slot: proc(super: ScintillaDocumentdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaDocumentdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaDocument_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaDocument_disconnectNotify(self: ptr cScintillaDocument, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_ScintillaDocument_disconnectNotify ".} =
  type Cb = proc(super: ScintillaDocumentdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(ScintillaDocument(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: ScintillaDocument) =
  fcScintillaDocument_delete(self.h)

func init*(T: type ScintillaEdit, h: ptr cScintillaEdit): ScintillaEdit =
  T(h: h)
proc create*(T: type ScintillaEdit, parent: gen_qwidget.QWidget): ScintillaEdit =

  ScintillaEdit.init(fcScintillaEdit_new(parent.h))
proc create*(T: type ScintillaEdit, ): ScintillaEdit =

  ScintillaEdit.init(fcScintillaEdit_new2())
proc metaObject*(self: ScintillaEdit, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcScintillaEdit_metaObject(self.h))

proc metacast*(self: ScintillaEdit, param1: cstring): pointer =

  fcScintillaEdit_metacast(self.h, param1)

proc metacall*(self: ScintillaEdit, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcScintillaEdit_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type ScintillaEdit, s: cstring): string =

  let v_ms = fcScintillaEdit_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type ScintillaEdit, s: cstring): string =

  let v_ms = fcScintillaEdit_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc TextReturner*(self: ScintillaEdit, message: cint, wParam: miqt_uintptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_TextReturner(self.h, message, wParam)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc findText*(self: ScintillaEdit, flags: cint, text: cstring, cpMin: cint, cpMax: cint): tuple[first: cint, second: cint] =

  var v_mm = fcScintillaEdit_findText(self.h, flags, text, cpMin, cpMax)
  var v_First_CArray = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Second_CArray = cast[ptr UncheckedArray[cint]](v_mm.values)
  var v_entry_First = v_First_CArray[0]

  var v_entry_Second = v_Second_CArray[0]

  (first: v_entry_First , second: v_entry_Second )

proc getTextRange*(self: ScintillaEdit, start: cint, endVal: cint): seq[byte] =

  var v_bytearray = fcScintillaEdit_getTextRange(self.h, start, endVal)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc getDoc*(self: ScintillaEdit, ): ScintillaDocument =

  ScintillaDocument(h: fcScintillaEdit_getDoc(self.h))

proc setDoc*(self: ScintillaEdit, pdoc_x: ScintillaDocument): void =

  fcScintillaEdit_setDoc(self.h, pdoc_x.h)

proc findText2*(self: ScintillaEdit, flags: cint, text: cstring, cpMin: cint, cpMax: cint): tuple[first: cint, second: cint] =

  var v_mm = fcScintillaEdit_findText2(self.h, flags, text, cpMin, cpMax)
  var v_First_CArray = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Second_CArray = cast[ptr UncheckedArray[cint]](v_mm.values)
  var v_entry_First = v_First_CArray[0]

  var v_entry_Second = v_Second_CArray[0]

  (first: v_entry_First , second: v_entry_Second )

proc textRange*(self: ScintillaEdit, start: cint, endVal: cint): seq[byte] =

  var v_bytearray = fcScintillaEdit_textRange(self.h, start, endVal)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc formatRange*(self: ScintillaEdit, draw: bool, target: gen_qpaintdevice.QPaintDevice, measure: gen_qpaintdevice.QPaintDevice, print_rect: gen_qrect.QRect, page_rect: gen_qrect.QRect, range_start: clong, range_end: clong): clong =

  fcScintillaEdit_formatRange(self.h, draw, target.h, measure.h, print_rect.h, page_rect.h, range_start, range_end)

proc formatRange2*(self: ScintillaEdit, draw: bool, target: gen_qpaintdevice.QPaintDevice, measure: gen_qpaintdevice.QPaintDevice, print_rect: gen_qrect.QRect, page_rect: gen_qrect.QRect, range_start: clong, range_end: clong): clong =

  fcScintillaEdit_formatRange2(self.h, draw, target.h, measure.h, print_rect.h, page_rect.h, range_start, range_end)

proc addText*(self: ScintillaEdit, length: miqt_intptr_t, text: cstring): void =

  fcScintillaEdit_addText(self.h, length, text)

proc addStyledText*(self: ScintillaEdit, length: miqt_intptr_t, c: cstring): void =

  fcScintillaEdit_addStyledText(self.h, length, c)

proc insertText*(self: ScintillaEdit, pos: miqt_intptr_t, text: cstring): void =

  fcScintillaEdit_insertText(self.h, pos, text)

proc changeInsertion*(self: ScintillaEdit, length: miqt_intptr_t, text: cstring): void =

  fcScintillaEdit_changeInsertion(self.h, length, text)

proc clearAll*(self: ScintillaEdit, ): void =

  fcScintillaEdit_clearAll(self.h)

proc deleteRange*(self: ScintillaEdit, start: miqt_intptr_t, lengthDelete: miqt_intptr_t): void =

  fcScintillaEdit_deleteRange(self.h, start, lengthDelete)

proc clearDocumentStyle*(self: ScintillaEdit, ): void =

  fcScintillaEdit_clearDocumentStyle(self.h)

proc length*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_length(self.h)

proc charAt*(self: ScintillaEdit, pos: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_charAt(self.h, pos)

proc currentPos*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_currentPos(self.h)

proc anchor*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_anchor(self.h)

proc styleAt*(self: ScintillaEdit, pos: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_styleAt(self.h, pos)

proc styleIndexAt*(self: ScintillaEdit, pos: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_styleIndexAt(self.h, pos)

proc redo*(self: ScintillaEdit, ): void =

  fcScintillaEdit_redo(self.h)

proc setUndoCollection*(self: ScintillaEdit, collectUndo: bool): void =

  fcScintillaEdit_setUndoCollection(self.h, collectUndo)

proc selectAll*(self: ScintillaEdit, ): void =

  fcScintillaEdit_selectAll(self.h)

proc setSavePoint*(self: ScintillaEdit, ): void =

  fcScintillaEdit_setSavePoint(self.h)

proc canRedo*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_canRedo(self.h)

proc markerLineFromHandle*(self: ScintillaEdit, markerHandle: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_markerLineFromHandle(self.h, markerHandle)

proc markerDeleteHandle*(self: ScintillaEdit, markerHandle: miqt_intptr_t): void =

  fcScintillaEdit_markerDeleteHandle(self.h, markerHandle)

proc markerHandleFromLine*(self: ScintillaEdit, line: miqt_intptr_t, which: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_markerHandleFromLine(self.h, line, which)

proc markerNumberFromLine*(self: ScintillaEdit, line: miqt_intptr_t, which: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_markerNumberFromLine(self.h, line, which)

proc undoCollection*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_undoCollection(self.h)

proc viewWS*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_viewWS(self.h)

proc setViewWS*(self: ScintillaEdit, viewWS: miqt_intptr_t): void =

  fcScintillaEdit_setViewWS(self.h, viewWS)

proc tabDrawMode*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_tabDrawMode(self.h)

proc setTabDrawMode*(self: ScintillaEdit, tabDrawMode: miqt_intptr_t): void =

  fcScintillaEdit_setTabDrawMode(self.h, tabDrawMode)

proc positionFromPoint*(self: ScintillaEdit, x: miqt_intptr_t, y: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_positionFromPoint(self.h, x, y)

proc positionFromPointClose*(self: ScintillaEdit, x: miqt_intptr_t, y: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_positionFromPointClose(self.h, x, y)

proc gotoLine*(self: ScintillaEdit, line: miqt_intptr_t): void =

  fcScintillaEdit_gotoLine(self.h, line)

proc gotoPos*(self: ScintillaEdit, caret: miqt_intptr_t): void =

  fcScintillaEdit_gotoPos(self.h, caret)

proc setAnchor*(self: ScintillaEdit, anchor: miqt_intptr_t): void =

  fcScintillaEdit_setAnchor(self.h, anchor)

proc getCurLine*(self: ScintillaEdit, length: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_getCurLine(self.h, length)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc endStyled*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_endStyled(self.h)

proc convertEOLs*(self: ScintillaEdit, eolMode: miqt_intptr_t): void =

  fcScintillaEdit_convertEOLs(self.h, eolMode)

proc eOLMode*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_eOLMode(self.h)

proc setEOLMode*(self: ScintillaEdit, eolMode: miqt_intptr_t): void =

  fcScintillaEdit_setEOLMode(self.h, eolMode)

proc startStyling*(self: ScintillaEdit, start: miqt_intptr_t, unused: miqt_intptr_t): void =

  fcScintillaEdit_startStyling(self.h, start, unused)

proc setStyling*(self: ScintillaEdit, length: miqt_intptr_t, style: miqt_intptr_t): void =

  fcScintillaEdit_setStyling(self.h, length, style)

proc bufferedDraw*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_bufferedDraw(self.h)

proc setBufferedDraw*(self: ScintillaEdit, buffered: bool): void =

  fcScintillaEdit_setBufferedDraw(self.h, buffered)

proc setTabWidth*(self: ScintillaEdit, tabWidth: miqt_intptr_t): void =

  fcScintillaEdit_setTabWidth(self.h, tabWidth)

proc tabWidth*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_tabWidth(self.h)

proc setTabMinimumWidth*(self: ScintillaEdit, pixels: miqt_intptr_t): void =

  fcScintillaEdit_setTabMinimumWidth(self.h, pixels)

proc tabMinimumWidth*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_tabMinimumWidth(self.h)

proc clearTabStops*(self: ScintillaEdit, line: miqt_intptr_t): void =

  fcScintillaEdit_clearTabStops(self.h, line)

proc addTabStop*(self: ScintillaEdit, line: miqt_intptr_t, x: miqt_intptr_t): void =

  fcScintillaEdit_addTabStop(self.h, line, x)

proc getNextTabStop*(self: ScintillaEdit, line: miqt_intptr_t, x: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_getNextTabStop(self.h, line, x)

proc setCodePage*(self: ScintillaEdit, codePage: miqt_intptr_t): void =

  fcScintillaEdit_setCodePage(self.h, codePage)

proc setFontLocale*(self: ScintillaEdit, localeName: cstring): void =

  fcScintillaEdit_setFontLocale(self.h, localeName)

proc fontLocale*(self: ScintillaEdit, ): seq[byte] =

  var v_bytearray = fcScintillaEdit_fontLocale(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc iMEInteraction*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_iMEInteraction(self.h)

proc setIMEInteraction*(self: ScintillaEdit, imeInteraction: miqt_intptr_t): void =

  fcScintillaEdit_setIMEInteraction(self.h, imeInteraction)

proc markerDefine*(self: ScintillaEdit, markerNumber: miqt_intptr_t, markerSymbol: miqt_intptr_t): void =

  fcScintillaEdit_markerDefine(self.h, markerNumber, markerSymbol)

proc markerSetFore*(self: ScintillaEdit, markerNumber: miqt_intptr_t, fore: miqt_intptr_t): void =

  fcScintillaEdit_markerSetFore(self.h, markerNumber, fore)

proc markerSetBack*(self: ScintillaEdit, markerNumber: miqt_intptr_t, back: miqt_intptr_t): void =

  fcScintillaEdit_markerSetBack(self.h, markerNumber, back)

proc markerSetBackSelected*(self: ScintillaEdit, markerNumber: miqt_intptr_t, back: miqt_intptr_t): void =

  fcScintillaEdit_markerSetBackSelected(self.h, markerNumber, back)

proc markerSetForeTranslucent*(self: ScintillaEdit, markerNumber: miqt_intptr_t, fore: miqt_intptr_t): void =

  fcScintillaEdit_markerSetForeTranslucent(self.h, markerNumber, fore)

proc markerSetBackTranslucent*(self: ScintillaEdit, markerNumber: miqt_intptr_t, back: miqt_intptr_t): void =

  fcScintillaEdit_markerSetBackTranslucent(self.h, markerNumber, back)

proc markerSetBackSelectedTranslucent*(self: ScintillaEdit, markerNumber: miqt_intptr_t, back: miqt_intptr_t): void =

  fcScintillaEdit_markerSetBackSelectedTranslucent(self.h, markerNumber, back)

proc markerSetStrokeWidth*(self: ScintillaEdit, markerNumber: miqt_intptr_t, hundredths: miqt_intptr_t): void =

  fcScintillaEdit_markerSetStrokeWidth(self.h, markerNumber, hundredths)

proc markerEnableHighlight*(self: ScintillaEdit, enabled: bool): void =

  fcScintillaEdit_markerEnableHighlight(self.h, enabled)

proc markerAdd*(self: ScintillaEdit, line: miqt_intptr_t, markerNumber: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_markerAdd(self.h, line, markerNumber)

proc markerDelete*(self: ScintillaEdit, line: miqt_intptr_t, markerNumber: miqt_intptr_t): void =

  fcScintillaEdit_markerDelete(self.h, line, markerNumber)

proc markerDeleteAll*(self: ScintillaEdit, markerNumber: miqt_intptr_t): void =

  fcScintillaEdit_markerDeleteAll(self.h, markerNumber)

proc markerGet*(self: ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_markerGet(self.h, line)

proc markerNext*(self: ScintillaEdit, lineStart: miqt_intptr_t, markerMask: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_markerNext(self.h, lineStart, markerMask)

proc markerPrevious*(self: ScintillaEdit, lineStart: miqt_intptr_t, markerMask: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_markerPrevious(self.h, lineStart, markerMask)

proc markerDefinePixmap*(self: ScintillaEdit, markerNumber: miqt_intptr_t, pixmap: cstring): void =

  fcScintillaEdit_markerDefinePixmap(self.h, markerNumber, pixmap)

proc markerAddSet*(self: ScintillaEdit, line: miqt_intptr_t, markerSet: miqt_intptr_t): void =

  fcScintillaEdit_markerAddSet(self.h, line, markerSet)

proc markerSetAlpha*(self: ScintillaEdit, markerNumber: miqt_intptr_t, alpha: miqt_intptr_t): void =

  fcScintillaEdit_markerSetAlpha(self.h, markerNumber, alpha)

proc markerLayer*(self: ScintillaEdit, markerNumber: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_markerLayer(self.h, markerNumber)

proc markerSetLayer*(self: ScintillaEdit, markerNumber: miqt_intptr_t, layer: miqt_intptr_t): void =

  fcScintillaEdit_markerSetLayer(self.h, markerNumber, layer)

proc setMarginTypeN*(self: ScintillaEdit, margin: miqt_intptr_t, marginType: miqt_intptr_t): void =

  fcScintillaEdit_setMarginTypeN(self.h, margin, marginType)

proc marginTypeN*(self: ScintillaEdit, margin: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_marginTypeN(self.h, margin)

proc setMarginWidthN*(self: ScintillaEdit, margin: miqt_intptr_t, pixelWidth: miqt_intptr_t): void =

  fcScintillaEdit_setMarginWidthN(self.h, margin, pixelWidth)

proc marginWidthN*(self: ScintillaEdit, margin: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_marginWidthN(self.h, margin)

proc setMarginMaskN*(self: ScintillaEdit, margin: miqt_intptr_t, mask: miqt_intptr_t): void =

  fcScintillaEdit_setMarginMaskN(self.h, margin, mask)

proc marginMaskN*(self: ScintillaEdit, margin: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_marginMaskN(self.h, margin)

proc setMarginSensitiveN*(self: ScintillaEdit, margin: miqt_intptr_t, sensitive: bool): void =

  fcScintillaEdit_setMarginSensitiveN(self.h, margin, sensitive)

proc marginSensitiveN*(self: ScintillaEdit, margin: miqt_intptr_t): bool =

  fcScintillaEdit_marginSensitiveN(self.h, margin)

proc setMarginCursorN*(self: ScintillaEdit, margin: miqt_intptr_t, cursor: miqt_intptr_t): void =

  fcScintillaEdit_setMarginCursorN(self.h, margin, cursor)

proc marginCursorN*(self: ScintillaEdit, margin: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_marginCursorN(self.h, margin)

proc setMarginBackN*(self: ScintillaEdit, margin: miqt_intptr_t, back: miqt_intptr_t): void =

  fcScintillaEdit_setMarginBackN(self.h, margin, back)

proc marginBackN*(self: ScintillaEdit, margin: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_marginBackN(self.h, margin)

proc setMargins*(self: ScintillaEdit, margins: miqt_intptr_t): void =

  fcScintillaEdit_setMargins(self.h, margins)

proc margins*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_margins(self.h)

proc styleClearAll*(self: ScintillaEdit, ): void =

  fcScintillaEdit_styleClearAll(self.h)

proc styleSetFore*(self: ScintillaEdit, style: miqt_intptr_t, fore: miqt_intptr_t): void =

  fcScintillaEdit_styleSetFore(self.h, style, fore)

proc styleSetBack*(self: ScintillaEdit, style: miqt_intptr_t, back: miqt_intptr_t): void =

  fcScintillaEdit_styleSetBack(self.h, style, back)

proc styleSetBold*(self: ScintillaEdit, style: miqt_intptr_t, bold: bool): void =

  fcScintillaEdit_styleSetBold(self.h, style, bold)

proc styleSetItalic*(self: ScintillaEdit, style: miqt_intptr_t, italic: bool): void =

  fcScintillaEdit_styleSetItalic(self.h, style, italic)

proc styleSetSize*(self: ScintillaEdit, style: miqt_intptr_t, sizePoints: miqt_intptr_t): void =

  fcScintillaEdit_styleSetSize(self.h, style, sizePoints)

proc styleSetFont*(self: ScintillaEdit, style: miqt_intptr_t, fontName: cstring): void =

  fcScintillaEdit_styleSetFont(self.h, style, fontName)

proc styleSetEOLFilled*(self: ScintillaEdit, style: miqt_intptr_t, eolFilled: bool): void =

  fcScintillaEdit_styleSetEOLFilled(self.h, style, eolFilled)

proc styleResetDefault*(self: ScintillaEdit, ): void =

  fcScintillaEdit_styleResetDefault(self.h)

proc styleSetUnderline*(self: ScintillaEdit, style: miqt_intptr_t, underline: bool): void =

  fcScintillaEdit_styleSetUnderline(self.h, style, underline)

proc styleFore*(self: ScintillaEdit, style: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_styleFore(self.h, style)

proc styleBack*(self: ScintillaEdit, style: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_styleBack(self.h, style)

proc styleBold*(self: ScintillaEdit, style: miqt_intptr_t): bool =

  fcScintillaEdit_styleBold(self.h, style)

proc styleItalic*(self: ScintillaEdit, style: miqt_intptr_t): bool =

  fcScintillaEdit_styleItalic(self.h, style)

proc styleSize*(self: ScintillaEdit, style: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_styleSize(self.h, style)

proc styleFont*(self: ScintillaEdit, style: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_styleFont(self.h, style)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc styleEOLFilled*(self: ScintillaEdit, style: miqt_intptr_t): bool =

  fcScintillaEdit_styleEOLFilled(self.h, style)

proc styleUnderline*(self: ScintillaEdit, style: miqt_intptr_t): bool =

  fcScintillaEdit_styleUnderline(self.h, style)

proc styleCase*(self: ScintillaEdit, style: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_styleCase(self.h, style)

proc styleCharacterSet*(self: ScintillaEdit, style: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_styleCharacterSet(self.h, style)

proc styleVisible*(self: ScintillaEdit, style: miqt_intptr_t): bool =

  fcScintillaEdit_styleVisible(self.h, style)

proc styleChangeable*(self: ScintillaEdit, style: miqt_intptr_t): bool =

  fcScintillaEdit_styleChangeable(self.h, style)

proc styleHotSpot*(self: ScintillaEdit, style: miqt_intptr_t): bool =

  fcScintillaEdit_styleHotSpot(self.h, style)

proc styleSetCase*(self: ScintillaEdit, style: miqt_intptr_t, caseVisible: miqt_intptr_t): void =

  fcScintillaEdit_styleSetCase(self.h, style, caseVisible)

proc styleSetSizeFractional*(self: ScintillaEdit, style: miqt_intptr_t, sizeHundredthPoints: miqt_intptr_t): void =

  fcScintillaEdit_styleSetSizeFractional(self.h, style, sizeHundredthPoints)

proc styleSizeFractional*(self: ScintillaEdit, style: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_styleSizeFractional(self.h, style)

proc styleSetWeight*(self: ScintillaEdit, style: miqt_intptr_t, weight: miqt_intptr_t): void =

  fcScintillaEdit_styleSetWeight(self.h, style, weight)

proc styleWeight*(self: ScintillaEdit, style: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_styleWeight(self.h, style)

proc styleSetCharacterSet*(self: ScintillaEdit, style: miqt_intptr_t, characterSet: miqt_intptr_t): void =

  fcScintillaEdit_styleSetCharacterSet(self.h, style, characterSet)

proc styleSetHotSpot*(self: ScintillaEdit, style: miqt_intptr_t, hotspot: bool): void =

  fcScintillaEdit_styleSetHotSpot(self.h, style, hotspot)

proc styleSetCheckMonospaced*(self: ScintillaEdit, style: miqt_intptr_t, checkMonospaced: bool): void =

  fcScintillaEdit_styleSetCheckMonospaced(self.h, style, checkMonospaced)

proc styleCheckMonospaced*(self: ScintillaEdit, style: miqt_intptr_t): bool =

  fcScintillaEdit_styleCheckMonospaced(self.h, style)

proc styleSetStretch*(self: ScintillaEdit, style: miqt_intptr_t, stretch: miqt_intptr_t): void =

  fcScintillaEdit_styleSetStretch(self.h, style, stretch)

proc styleStretch*(self: ScintillaEdit, style: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_styleStretch(self.h, style)

proc styleSetInvisibleRepresentation*(self: ScintillaEdit, style: miqt_intptr_t, representation: cstring): void =

  fcScintillaEdit_styleSetInvisibleRepresentation(self.h, style, representation)

proc styleInvisibleRepresentation*(self: ScintillaEdit, style: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_styleInvisibleRepresentation(self.h, style)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setElementColour*(self: ScintillaEdit, element: miqt_intptr_t, colourElement: miqt_intptr_t): void =

  fcScintillaEdit_setElementColour(self.h, element, colourElement)

proc elementColour*(self: ScintillaEdit, element: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_elementColour(self.h, element)

proc resetElementColour*(self: ScintillaEdit, element: miqt_intptr_t): void =

  fcScintillaEdit_resetElementColour(self.h, element)

proc elementIsSet*(self: ScintillaEdit, element: miqt_intptr_t): bool =

  fcScintillaEdit_elementIsSet(self.h, element)

proc elementAllowsTranslucent*(self: ScintillaEdit, element: miqt_intptr_t): bool =

  fcScintillaEdit_elementAllowsTranslucent(self.h, element)

proc elementBaseColour*(self: ScintillaEdit, element: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_elementBaseColour(self.h, element)

proc setSelFore*(self: ScintillaEdit, useSetting: bool, fore: miqt_intptr_t): void =

  fcScintillaEdit_setSelFore(self.h, useSetting, fore)

proc setSelBack*(self: ScintillaEdit, useSetting: bool, back: miqt_intptr_t): void =

  fcScintillaEdit_setSelBack(self.h, useSetting, back)

proc selAlpha*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_selAlpha(self.h)

proc setSelAlpha*(self: ScintillaEdit, alpha: miqt_intptr_t): void =

  fcScintillaEdit_setSelAlpha(self.h, alpha)

proc selEOLFilled*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_selEOLFilled(self.h)

proc setSelEOLFilled*(self: ScintillaEdit, filled: bool): void =

  fcScintillaEdit_setSelEOLFilled(self.h, filled)

proc selectionLayer*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_selectionLayer(self.h)

proc setSelectionLayer*(self: ScintillaEdit, layer: miqt_intptr_t): void =

  fcScintillaEdit_setSelectionLayer(self.h, layer)

proc caretLineLayer*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_caretLineLayer(self.h)

proc setCaretLineLayer*(self: ScintillaEdit, layer: miqt_intptr_t): void =

  fcScintillaEdit_setCaretLineLayer(self.h, layer)

proc caretLineHighlightSubLine*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_caretLineHighlightSubLine(self.h)

proc setCaretLineHighlightSubLine*(self: ScintillaEdit, subLine: bool): void =

  fcScintillaEdit_setCaretLineHighlightSubLine(self.h, subLine)

proc setCaretFore*(self: ScintillaEdit, fore: miqt_intptr_t): void =

  fcScintillaEdit_setCaretFore(self.h, fore)

proc assignCmdKey*(self: ScintillaEdit, keyDefinition: miqt_intptr_t, sciCommand: miqt_intptr_t): void =

  fcScintillaEdit_assignCmdKey(self.h, keyDefinition, sciCommand)

proc clearCmdKey*(self: ScintillaEdit, keyDefinition: miqt_intptr_t): void =

  fcScintillaEdit_clearCmdKey(self.h, keyDefinition)

proc clearAllCmdKeys*(self: ScintillaEdit, ): void =

  fcScintillaEdit_clearAllCmdKeys(self.h)

proc setStylingEx*(self: ScintillaEdit, length: miqt_intptr_t, styles: cstring): void =

  fcScintillaEdit_setStylingEx(self.h, length, styles)

proc styleSetVisible*(self: ScintillaEdit, style: miqt_intptr_t, visible: bool): void =

  fcScintillaEdit_styleSetVisible(self.h, style, visible)

proc caretPeriod*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_caretPeriod(self.h)

proc setCaretPeriod*(self: ScintillaEdit, periodMilliseconds: miqt_intptr_t): void =

  fcScintillaEdit_setCaretPeriod(self.h, periodMilliseconds)

proc setWordChars*(self: ScintillaEdit, characters: cstring): void =

  fcScintillaEdit_setWordChars(self.h, characters)

proc wordChars*(self: ScintillaEdit, ): seq[byte] =

  var v_bytearray = fcScintillaEdit_wordChars(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setCharacterCategoryOptimization*(self: ScintillaEdit, countCharacters: miqt_intptr_t): void =

  fcScintillaEdit_setCharacterCategoryOptimization(self.h, countCharacters)

proc characterCategoryOptimization*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_characterCategoryOptimization(self.h)

proc beginUndoAction*(self: ScintillaEdit, ): void =

  fcScintillaEdit_beginUndoAction(self.h)

proc endUndoAction*(self: ScintillaEdit, ): void =

  fcScintillaEdit_endUndoAction(self.h)

proc undoSequence*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_undoSequence(self.h)

proc undoActions*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_undoActions(self.h)

proc setUndoSavePoint*(self: ScintillaEdit, action: miqt_intptr_t): void =

  fcScintillaEdit_setUndoSavePoint(self.h, action)

proc undoSavePoint*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_undoSavePoint(self.h)

proc setUndoDetach*(self: ScintillaEdit, action: miqt_intptr_t): void =

  fcScintillaEdit_setUndoDetach(self.h, action)

proc undoDetach*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_undoDetach(self.h)

proc setUndoTentative*(self: ScintillaEdit, action: miqt_intptr_t): void =

  fcScintillaEdit_setUndoTentative(self.h, action)

proc undoTentative*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_undoTentative(self.h)

proc setUndoCurrent*(self: ScintillaEdit, action: miqt_intptr_t): void =

  fcScintillaEdit_setUndoCurrent(self.h, action)

proc undoCurrent*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_undoCurrent(self.h)

proc pushUndoActionType*(self: ScintillaEdit, typeVal: miqt_intptr_t, pos: miqt_intptr_t): void =

  fcScintillaEdit_pushUndoActionType(self.h, typeVal, pos)

proc changeLastUndoActionText*(self: ScintillaEdit, length: miqt_intptr_t, text: cstring): void =

  fcScintillaEdit_changeLastUndoActionText(self.h, length, text)

proc undoActionType*(self: ScintillaEdit, action: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_undoActionType(self.h, action)

proc undoActionPosition*(self: ScintillaEdit, action: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_undoActionPosition(self.h, action)

proc undoActionText*(self: ScintillaEdit, action: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_undoActionText(self.h, action)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc indicSetStyle*(self: ScintillaEdit, indicator: miqt_intptr_t, indicatorStyle: miqt_intptr_t): void =

  fcScintillaEdit_indicSetStyle(self.h, indicator, indicatorStyle)

proc indicStyle*(self: ScintillaEdit, indicator: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_indicStyle(self.h, indicator)

proc indicSetFore*(self: ScintillaEdit, indicator: miqt_intptr_t, fore: miqt_intptr_t): void =

  fcScintillaEdit_indicSetFore(self.h, indicator, fore)

proc indicFore*(self: ScintillaEdit, indicator: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_indicFore(self.h, indicator)

proc indicSetUnder*(self: ScintillaEdit, indicator: miqt_intptr_t, under: bool): void =

  fcScintillaEdit_indicSetUnder(self.h, indicator, under)

proc indicUnder*(self: ScintillaEdit, indicator: miqt_intptr_t): bool =

  fcScintillaEdit_indicUnder(self.h, indicator)

proc indicSetHoverStyle*(self: ScintillaEdit, indicator: miqt_intptr_t, indicatorStyle: miqt_intptr_t): void =

  fcScintillaEdit_indicSetHoverStyle(self.h, indicator, indicatorStyle)

proc indicHoverStyle*(self: ScintillaEdit, indicator: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_indicHoverStyle(self.h, indicator)

proc indicSetHoverFore*(self: ScintillaEdit, indicator: miqt_intptr_t, fore: miqt_intptr_t): void =

  fcScintillaEdit_indicSetHoverFore(self.h, indicator, fore)

proc indicHoverFore*(self: ScintillaEdit, indicator: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_indicHoverFore(self.h, indicator)

proc indicSetFlags*(self: ScintillaEdit, indicator: miqt_intptr_t, flags: miqt_intptr_t): void =

  fcScintillaEdit_indicSetFlags(self.h, indicator, flags)

proc indicFlags*(self: ScintillaEdit, indicator: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_indicFlags(self.h, indicator)

proc indicSetStrokeWidth*(self: ScintillaEdit, indicator: miqt_intptr_t, hundredths: miqt_intptr_t): void =

  fcScintillaEdit_indicSetStrokeWidth(self.h, indicator, hundredths)

proc indicStrokeWidth*(self: ScintillaEdit, indicator: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_indicStrokeWidth(self.h, indicator)

proc setWhitespaceFore*(self: ScintillaEdit, useSetting: bool, fore: miqt_intptr_t): void =

  fcScintillaEdit_setWhitespaceFore(self.h, useSetting, fore)

proc setWhitespaceBack*(self: ScintillaEdit, useSetting: bool, back: miqt_intptr_t): void =

  fcScintillaEdit_setWhitespaceBack(self.h, useSetting, back)

proc setWhitespaceSize*(self: ScintillaEdit, size: miqt_intptr_t): void =

  fcScintillaEdit_setWhitespaceSize(self.h, size)

proc whitespaceSize*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_whitespaceSize(self.h)

proc setLineState*(self: ScintillaEdit, line: miqt_intptr_t, state: miqt_intptr_t): void =

  fcScintillaEdit_setLineState(self.h, line, state)

proc lineState*(self: ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_lineState(self.h, line)

proc maxLineState*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_maxLineState(self.h)

proc caretLineVisible*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_caretLineVisible(self.h)

proc setCaretLineVisible*(self: ScintillaEdit, show: bool): void =

  fcScintillaEdit_setCaretLineVisible(self.h, show)

proc caretLineBack*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_caretLineBack(self.h)

proc setCaretLineBack*(self: ScintillaEdit, back: miqt_intptr_t): void =

  fcScintillaEdit_setCaretLineBack(self.h, back)

proc caretLineFrame*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_caretLineFrame(self.h)

proc setCaretLineFrame*(self: ScintillaEdit, width: miqt_intptr_t): void =

  fcScintillaEdit_setCaretLineFrame(self.h, width)

proc styleSetChangeable*(self: ScintillaEdit, style: miqt_intptr_t, changeable: bool): void =

  fcScintillaEdit_styleSetChangeable(self.h, style, changeable)

proc autoCShow*(self: ScintillaEdit, lengthEntered: miqt_intptr_t, itemList: cstring): void =

  fcScintillaEdit_autoCShow(self.h, lengthEntered, itemList)

proc autoCCancel*(self: ScintillaEdit, ): void =

  fcScintillaEdit_autoCCancel(self.h)

proc autoCActive*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_autoCActive(self.h)

proc autoCPosStart*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_autoCPosStart(self.h)

proc autoCComplete*(self: ScintillaEdit, ): void =

  fcScintillaEdit_autoCComplete(self.h)

proc autoCStops*(self: ScintillaEdit, characterSet: cstring): void =

  fcScintillaEdit_autoCStops(self.h, characterSet)

proc autoCSetSeparator*(self: ScintillaEdit, separatorCharacter: miqt_intptr_t): void =

  fcScintillaEdit_autoCSetSeparator(self.h, separatorCharacter)

proc autoCSeparator*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_autoCSeparator(self.h)

proc autoCSelect*(self: ScintillaEdit, select: cstring): void =

  fcScintillaEdit_autoCSelect(self.h, select)

proc autoCSetCancelAtStart*(self: ScintillaEdit, cancel: bool): void =

  fcScintillaEdit_autoCSetCancelAtStart(self.h, cancel)

proc autoCCancelAtStart*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_autoCCancelAtStart(self.h)

proc autoCSetFillUps*(self: ScintillaEdit, characterSet: cstring): void =

  fcScintillaEdit_autoCSetFillUps(self.h, characterSet)

proc autoCSetChooseSingle*(self: ScintillaEdit, chooseSingle: bool): void =

  fcScintillaEdit_autoCSetChooseSingle(self.h, chooseSingle)

proc autoCChooseSingle*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_autoCChooseSingle(self.h)

proc autoCSetIgnoreCase*(self: ScintillaEdit, ignoreCase: bool): void =

  fcScintillaEdit_autoCSetIgnoreCase(self.h, ignoreCase)

proc autoCIgnoreCase*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_autoCIgnoreCase(self.h)

proc userListShow*(self: ScintillaEdit, listType: miqt_intptr_t, itemList: cstring): void =

  fcScintillaEdit_userListShow(self.h, listType, itemList)

proc autoCSetAutoHide*(self: ScintillaEdit, autoHide: bool): void =

  fcScintillaEdit_autoCSetAutoHide(self.h, autoHide)

proc autoCAutoHide*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_autoCAutoHide(self.h)

proc autoCSetOptions*(self: ScintillaEdit, options: miqt_intptr_t): void =

  fcScintillaEdit_autoCSetOptions(self.h, options)

proc autoCOptions*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_autoCOptions(self.h)

proc autoCSetDropRestOfWord*(self: ScintillaEdit, dropRestOfWord: bool): void =

  fcScintillaEdit_autoCSetDropRestOfWord(self.h, dropRestOfWord)

proc autoCDropRestOfWord*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_autoCDropRestOfWord(self.h)

proc registerImage*(self: ScintillaEdit, typeVal: miqt_intptr_t, xpmData: cstring): void =

  fcScintillaEdit_registerImage(self.h, typeVal, xpmData)

proc clearRegisteredImages*(self: ScintillaEdit, ): void =

  fcScintillaEdit_clearRegisteredImages(self.h)

proc autoCTypeSeparator*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_autoCTypeSeparator(self.h)

proc autoCSetTypeSeparator*(self: ScintillaEdit, separatorCharacter: miqt_intptr_t): void =

  fcScintillaEdit_autoCSetTypeSeparator(self.h, separatorCharacter)

proc autoCSetMaxWidth*(self: ScintillaEdit, characterCount: miqt_intptr_t): void =

  fcScintillaEdit_autoCSetMaxWidth(self.h, characterCount)

proc autoCMaxWidth*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_autoCMaxWidth(self.h)

proc autoCSetMaxHeight*(self: ScintillaEdit, rowCount: miqt_intptr_t): void =

  fcScintillaEdit_autoCSetMaxHeight(self.h, rowCount)

proc autoCMaxHeight*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_autoCMaxHeight(self.h)

proc autoCSetStyle*(self: ScintillaEdit, style: miqt_intptr_t): void =

  fcScintillaEdit_autoCSetStyle(self.h, style)

proc autoCStyle*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_autoCStyle(self.h)

proc setIndent*(self: ScintillaEdit, indentSize: miqt_intptr_t): void =

  fcScintillaEdit_setIndent(self.h, indentSize)

proc indent*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_indent(self.h)

proc setUseTabs*(self: ScintillaEdit, useTabs: bool): void =

  fcScintillaEdit_setUseTabs(self.h, useTabs)

proc useTabs*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_useTabs(self.h)

proc setLineIndentation*(self: ScintillaEdit, line: miqt_intptr_t, indentation: miqt_intptr_t): void =

  fcScintillaEdit_setLineIndentation(self.h, line, indentation)

proc lineIndentation*(self: ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_lineIndentation(self.h, line)

proc lineIndentPosition*(self: ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_lineIndentPosition(self.h, line)

proc column*(self: ScintillaEdit, pos: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_column(self.h, pos)

proc countCharacters*(self: ScintillaEdit, start: miqt_intptr_t, endVal: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_countCharacters(self.h, start, endVal)

proc countCodeUnits*(self: ScintillaEdit, start: miqt_intptr_t, endVal: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_countCodeUnits(self.h, start, endVal)

proc setHScrollBar*(self: ScintillaEdit, visible: bool): void =

  fcScintillaEdit_setHScrollBar(self.h, visible)

proc hScrollBar*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_hScrollBar(self.h)

proc setIndentationGuides*(self: ScintillaEdit, indentView: miqt_intptr_t): void =

  fcScintillaEdit_setIndentationGuides(self.h, indentView)

proc indentationGuides*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_indentationGuides(self.h)

proc setHighlightGuide*(self: ScintillaEdit, column: miqt_intptr_t): void =

  fcScintillaEdit_setHighlightGuide(self.h, column)

proc highlightGuide*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_highlightGuide(self.h)

proc lineEndPosition*(self: ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_lineEndPosition(self.h, line)

proc codePage*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_codePage(self.h)

proc caretFore*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_caretFore(self.h)

proc readOnly*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_readOnly(self.h)

proc setCurrentPos*(self: ScintillaEdit, caret: miqt_intptr_t): void =

  fcScintillaEdit_setCurrentPos(self.h, caret)

proc setSelectionStart*(self: ScintillaEdit, anchor: miqt_intptr_t): void =

  fcScintillaEdit_setSelectionStart(self.h, anchor)

proc selectionStart*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_selectionStart(self.h)

proc setSelectionEnd*(self: ScintillaEdit, caret: miqt_intptr_t): void =

  fcScintillaEdit_setSelectionEnd(self.h, caret)

proc selectionEnd*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_selectionEnd(self.h)

proc setEmptySelection*(self: ScintillaEdit, caret: miqt_intptr_t): void =

  fcScintillaEdit_setEmptySelection(self.h, caret)

proc setPrintMagnification*(self: ScintillaEdit, magnification: miqt_intptr_t): void =

  fcScintillaEdit_setPrintMagnification(self.h, magnification)

proc printMagnification*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_printMagnification(self.h)

proc setPrintColourMode*(self: ScintillaEdit, mode: miqt_intptr_t): void =

  fcScintillaEdit_setPrintColourMode(self.h, mode)

proc printColourMode*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_printColourMode(self.h)

proc setChangeHistory*(self: ScintillaEdit, changeHistory: miqt_intptr_t): void =

  fcScintillaEdit_setChangeHistory(self.h, changeHistory)

proc changeHistory*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_changeHistory(self.h)

proc firstVisibleLine*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_firstVisibleLine(self.h)

proc getLine*(self: ScintillaEdit, line: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_getLine(self.h, line)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc lineCount*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_lineCount(self.h)

proc allocateLines*(self: ScintillaEdit, lines: miqt_intptr_t): void =

  fcScintillaEdit_allocateLines(self.h, lines)

proc setMarginLeft*(self: ScintillaEdit, pixelWidth: miqt_intptr_t): void =

  fcScintillaEdit_setMarginLeft(self.h, pixelWidth)

proc marginLeft*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_marginLeft(self.h)

proc setMarginRight*(self: ScintillaEdit, pixelWidth: miqt_intptr_t): void =

  fcScintillaEdit_setMarginRight(self.h, pixelWidth)

proc marginRight*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_marginRight(self.h)

proc modify*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_modify(self.h)

proc setSel*(self: ScintillaEdit, anchor: miqt_intptr_t, caret: miqt_intptr_t): void =

  fcScintillaEdit_setSel(self.h, anchor, caret)

proc getSelText*(self: ScintillaEdit, ): seq[byte] =

  var v_bytearray = fcScintillaEdit_getSelText(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc hideSelection*(self: ScintillaEdit, hide: bool): void =

  fcScintillaEdit_hideSelection(self.h, hide)

proc selectionHidden*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_selectionHidden(self.h)

proc pointXFromPosition*(self: ScintillaEdit, pos: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_pointXFromPosition(self.h, pos)

proc pointYFromPosition*(self: ScintillaEdit, pos: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_pointYFromPosition(self.h, pos)

proc lineFromPosition*(self: ScintillaEdit, pos: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_lineFromPosition(self.h, pos)

proc positionFromLine*(self: ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_positionFromLine(self.h, line)

proc lineScroll*(self: ScintillaEdit, columns: miqt_intptr_t, lines: miqt_intptr_t): void =

  fcScintillaEdit_lineScroll(self.h, columns, lines)

proc scrollCaret*(self: ScintillaEdit, ): void =

  fcScintillaEdit_scrollCaret(self.h)

proc scrollRange*(self: ScintillaEdit, secondary: miqt_intptr_t, primary: miqt_intptr_t): void =

  fcScintillaEdit_scrollRange(self.h, secondary, primary)

proc replaceSel*(self: ScintillaEdit, text: cstring): void =

  fcScintillaEdit_replaceSel(self.h, text)

proc setReadOnly*(self: ScintillaEdit, readOnly: bool): void =

  fcScintillaEdit_setReadOnly(self.h, readOnly)

proc null*(self: ScintillaEdit, ): void =

  fcScintillaEdit_null(self.h)

proc canPaste*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_canPaste(self.h)

proc canUndo*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_canUndo(self.h)

proc emptyUndoBuffer*(self: ScintillaEdit, ): void =

  fcScintillaEdit_emptyUndoBuffer(self.h)

proc undo*(self: ScintillaEdit, ): void =

  fcScintillaEdit_undo(self.h)

proc cut*(self: ScintillaEdit, ): void =

  fcScintillaEdit_cut(self.h)

proc copy*(self: ScintillaEdit, ): void =

  fcScintillaEdit_copy(self.h)

proc paste*(self: ScintillaEdit, ): void =

  fcScintillaEdit_paste(self.h)

proc clear*(self: ScintillaEdit, ): void =

  fcScintillaEdit_clear(self.h)

proc setText*(self: ScintillaEdit, text: cstring): void =

  fcScintillaEdit_setText(self.h, text)

proc getText*(self: ScintillaEdit, length: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_getText(self.h, length)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc textLength*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_textLength(self.h)

proc directFunction*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_directFunction(self.h)

proc directStatusFunction*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_directStatusFunction(self.h)

proc directPointer*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_directPointer(self.h)

proc setOvertype*(self: ScintillaEdit, overType: bool): void =

  fcScintillaEdit_setOvertype(self.h, overType)

proc overtype*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_overtype(self.h)

proc setCaretWidth*(self: ScintillaEdit, pixelWidth: miqt_intptr_t): void =

  fcScintillaEdit_setCaretWidth(self.h, pixelWidth)

proc caretWidth*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_caretWidth(self.h)

proc setTargetStart*(self: ScintillaEdit, start: miqt_intptr_t): void =

  fcScintillaEdit_setTargetStart(self.h, start)

proc targetStart*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_targetStart(self.h)

proc setTargetStartVirtualSpace*(self: ScintillaEdit, space: miqt_intptr_t): void =

  fcScintillaEdit_setTargetStartVirtualSpace(self.h, space)

proc targetStartVirtualSpace*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_targetStartVirtualSpace(self.h)

proc setTargetEnd*(self: ScintillaEdit, endVal: miqt_intptr_t): void =

  fcScintillaEdit_setTargetEnd(self.h, endVal)

proc targetEnd*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_targetEnd(self.h)

proc setTargetEndVirtualSpace*(self: ScintillaEdit, space: miqt_intptr_t): void =

  fcScintillaEdit_setTargetEndVirtualSpace(self.h, space)

proc targetEndVirtualSpace*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_targetEndVirtualSpace(self.h)

proc setTargetRange*(self: ScintillaEdit, start: miqt_intptr_t, endVal: miqt_intptr_t): void =

  fcScintillaEdit_setTargetRange(self.h, start, endVal)

proc targetText*(self: ScintillaEdit, ): seq[byte] =

  var v_bytearray = fcScintillaEdit_targetText(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc targetFromSelection*(self: ScintillaEdit, ): void =

  fcScintillaEdit_targetFromSelection(self.h)

proc targetWholeDocument*(self: ScintillaEdit, ): void =

  fcScintillaEdit_targetWholeDocument(self.h)

proc replaceTarget*(self: ScintillaEdit, length: miqt_intptr_t, text: cstring): miqt_intptr_t =

  fcScintillaEdit_replaceTarget(self.h, length, text)

proc replaceTargetRE*(self: ScintillaEdit, length: miqt_intptr_t, text: cstring): miqt_intptr_t =

  fcScintillaEdit_replaceTargetRE(self.h, length, text)

proc replaceTargetMinimal*(self: ScintillaEdit, length: miqt_intptr_t, text: cstring): miqt_intptr_t =

  fcScintillaEdit_replaceTargetMinimal(self.h, length, text)

proc searchInTarget*(self: ScintillaEdit, length: miqt_intptr_t, text: cstring): miqt_intptr_t =

  fcScintillaEdit_searchInTarget(self.h, length, text)

proc setSearchFlags*(self: ScintillaEdit, searchFlags: miqt_intptr_t): void =

  fcScintillaEdit_setSearchFlags(self.h, searchFlags)

proc searchFlags*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_searchFlags(self.h)

proc callTipShow*(self: ScintillaEdit, pos: miqt_intptr_t, definition: cstring): void =

  fcScintillaEdit_callTipShow(self.h, pos, definition)

proc callTipCancel*(self: ScintillaEdit, ): void =

  fcScintillaEdit_callTipCancel(self.h)

proc callTipActive*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_callTipActive(self.h)

proc callTipPosStart*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_callTipPosStart(self.h)

proc callTipSetPosStart*(self: ScintillaEdit, posStart: miqt_intptr_t): void =

  fcScintillaEdit_callTipSetPosStart(self.h, posStart)

proc callTipSetHlt*(self: ScintillaEdit, highlightStart: miqt_intptr_t, highlightEnd: miqt_intptr_t): void =

  fcScintillaEdit_callTipSetHlt(self.h, highlightStart, highlightEnd)

proc callTipSetBack*(self: ScintillaEdit, back: miqt_intptr_t): void =

  fcScintillaEdit_callTipSetBack(self.h, back)

proc callTipSetFore*(self: ScintillaEdit, fore: miqt_intptr_t): void =

  fcScintillaEdit_callTipSetFore(self.h, fore)

proc callTipSetForeHlt*(self: ScintillaEdit, fore: miqt_intptr_t): void =

  fcScintillaEdit_callTipSetForeHlt(self.h, fore)

proc callTipUseStyle*(self: ScintillaEdit, tabSize: miqt_intptr_t): void =

  fcScintillaEdit_callTipUseStyle(self.h, tabSize)

proc callTipSetPosition*(self: ScintillaEdit, above: bool): void =

  fcScintillaEdit_callTipSetPosition(self.h, above)

proc visibleFromDocLine*(self: ScintillaEdit, docLine: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_visibleFromDocLine(self.h, docLine)

proc docLineFromVisible*(self: ScintillaEdit, displayLine: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_docLineFromVisible(self.h, displayLine)

proc wrapCount*(self: ScintillaEdit, docLine: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_wrapCount(self.h, docLine)

proc setFoldLevel*(self: ScintillaEdit, line: miqt_intptr_t, level: miqt_intptr_t): void =

  fcScintillaEdit_setFoldLevel(self.h, line, level)

proc foldLevel*(self: ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_foldLevel(self.h, line)

proc lastChild*(self: ScintillaEdit, line: miqt_intptr_t, level: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_lastChild(self.h, line, level)

proc foldParent*(self: ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_foldParent(self.h, line)

proc showLines*(self: ScintillaEdit, lineStart: miqt_intptr_t, lineEnd: miqt_intptr_t): void =

  fcScintillaEdit_showLines(self.h, lineStart, lineEnd)

proc hideLines*(self: ScintillaEdit, lineStart: miqt_intptr_t, lineEnd: miqt_intptr_t): void =

  fcScintillaEdit_hideLines(self.h, lineStart, lineEnd)

proc lineVisible*(self: ScintillaEdit, line: miqt_intptr_t): bool =

  fcScintillaEdit_lineVisible(self.h, line)

proc allLinesVisible*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_allLinesVisible(self.h)

proc setFoldExpanded*(self: ScintillaEdit, line: miqt_intptr_t, expanded: bool): void =

  fcScintillaEdit_setFoldExpanded(self.h, line, expanded)

proc foldExpanded*(self: ScintillaEdit, line: miqt_intptr_t): bool =

  fcScintillaEdit_foldExpanded(self.h, line)

proc toggleFold*(self: ScintillaEdit, line: miqt_intptr_t): void =

  fcScintillaEdit_toggleFold(self.h, line)

proc toggleFoldShowText*(self: ScintillaEdit, line: miqt_intptr_t, text: cstring): void =

  fcScintillaEdit_toggleFoldShowText(self.h, line, text)

proc foldDisplayTextSetStyle*(self: ScintillaEdit, style: miqt_intptr_t): void =

  fcScintillaEdit_foldDisplayTextSetStyle(self.h, style)

proc foldDisplayTextStyle*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_foldDisplayTextStyle(self.h)

proc setDefaultFoldDisplayText*(self: ScintillaEdit, text: cstring): void =

  fcScintillaEdit_setDefaultFoldDisplayText(self.h, text)

proc getDefaultFoldDisplayText*(self: ScintillaEdit, ): seq[byte] =

  var v_bytearray = fcScintillaEdit_getDefaultFoldDisplayText(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc foldLine*(self: ScintillaEdit, line: miqt_intptr_t, action: miqt_intptr_t): void =

  fcScintillaEdit_foldLine(self.h, line, action)

proc foldChildren*(self: ScintillaEdit, line: miqt_intptr_t, action: miqt_intptr_t): void =

  fcScintillaEdit_foldChildren(self.h, line, action)

proc expandChildren*(self: ScintillaEdit, line: miqt_intptr_t, level: miqt_intptr_t): void =

  fcScintillaEdit_expandChildren(self.h, line, level)

proc foldAll*(self: ScintillaEdit, action: miqt_intptr_t): void =

  fcScintillaEdit_foldAll(self.h, action)

proc ensureVisible*(self: ScintillaEdit, line: miqt_intptr_t): void =

  fcScintillaEdit_ensureVisible(self.h, line)

proc setAutomaticFold*(self: ScintillaEdit, automaticFold: miqt_intptr_t): void =

  fcScintillaEdit_setAutomaticFold(self.h, automaticFold)

proc automaticFold*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_automaticFold(self.h)

proc setFoldFlags*(self: ScintillaEdit, flags: miqt_intptr_t): void =

  fcScintillaEdit_setFoldFlags(self.h, flags)

proc ensureVisibleEnforcePolicy*(self: ScintillaEdit, line: miqt_intptr_t): void =

  fcScintillaEdit_ensureVisibleEnforcePolicy(self.h, line)

proc setTabIndents*(self: ScintillaEdit, tabIndents: bool): void =

  fcScintillaEdit_setTabIndents(self.h, tabIndents)

proc tabIndents*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_tabIndents(self.h)

proc setBackSpaceUnIndents*(self: ScintillaEdit, bsUnIndents: bool): void =

  fcScintillaEdit_setBackSpaceUnIndents(self.h, bsUnIndents)

proc backSpaceUnIndents*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_backSpaceUnIndents(self.h)

proc setMouseDwellTime*(self: ScintillaEdit, periodMilliseconds: miqt_intptr_t): void =

  fcScintillaEdit_setMouseDwellTime(self.h, periodMilliseconds)

proc mouseDwellTime*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_mouseDwellTime(self.h)

proc wordStartPosition*(self: ScintillaEdit, pos: miqt_intptr_t, onlyWordCharacters: bool): miqt_intptr_t =

  fcScintillaEdit_wordStartPosition(self.h, pos, onlyWordCharacters)

proc wordEndPosition*(self: ScintillaEdit, pos: miqt_intptr_t, onlyWordCharacters: bool): miqt_intptr_t =

  fcScintillaEdit_wordEndPosition(self.h, pos, onlyWordCharacters)

proc isRangeWord*(self: ScintillaEdit, start: miqt_intptr_t, endVal: miqt_intptr_t): bool =

  fcScintillaEdit_isRangeWord(self.h, start, endVal)

proc setIdleStyling*(self: ScintillaEdit, idleStyling: miqt_intptr_t): void =

  fcScintillaEdit_setIdleStyling(self.h, idleStyling)

proc idleStyling*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_idleStyling(self.h)

proc setWrapMode*(self: ScintillaEdit, wrapMode: miqt_intptr_t): void =

  fcScintillaEdit_setWrapMode(self.h, wrapMode)

proc wrapMode*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_wrapMode(self.h)

proc setWrapVisualFlags*(self: ScintillaEdit, wrapVisualFlags: miqt_intptr_t): void =

  fcScintillaEdit_setWrapVisualFlags(self.h, wrapVisualFlags)

proc wrapVisualFlags*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_wrapVisualFlags(self.h)

proc setWrapVisualFlagsLocation*(self: ScintillaEdit, wrapVisualFlagsLocation: miqt_intptr_t): void =

  fcScintillaEdit_setWrapVisualFlagsLocation(self.h, wrapVisualFlagsLocation)

proc wrapVisualFlagsLocation*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_wrapVisualFlagsLocation(self.h)

proc setWrapStartIndent*(self: ScintillaEdit, indent: miqt_intptr_t): void =

  fcScintillaEdit_setWrapStartIndent(self.h, indent)

proc wrapStartIndent*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_wrapStartIndent(self.h)

proc setWrapIndentMode*(self: ScintillaEdit, wrapIndentMode: miqt_intptr_t): void =

  fcScintillaEdit_setWrapIndentMode(self.h, wrapIndentMode)

proc wrapIndentMode*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_wrapIndentMode(self.h)

proc setLayoutCache*(self: ScintillaEdit, cacheMode: miqt_intptr_t): void =

  fcScintillaEdit_setLayoutCache(self.h, cacheMode)

proc layoutCache*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_layoutCache(self.h)

proc setScrollWidth*(self: ScintillaEdit, pixelWidth: miqt_intptr_t): void =

  fcScintillaEdit_setScrollWidth(self.h, pixelWidth)

proc scrollWidth*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_scrollWidth(self.h)

proc setScrollWidthTracking*(self: ScintillaEdit, tracking: bool): void =

  fcScintillaEdit_setScrollWidthTracking(self.h, tracking)

proc scrollWidthTracking*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_scrollWidthTracking(self.h)

proc textWidth*(self: ScintillaEdit, style: miqt_intptr_t, text: cstring): miqt_intptr_t =

  fcScintillaEdit_textWidth(self.h, style, text)

proc setEndAtLastLine*(self: ScintillaEdit, endAtLastLine: bool): void =

  fcScintillaEdit_setEndAtLastLine(self.h, endAtLastLine)

proc endAtLastLine*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_endAtLastLine(self.h)

proc textHeight*(self: ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_textHeight(self.h, line)

proc setVScrollBar*(self: ScintillaEdit, visible: bool): void =

  fcScintillaEdit_setVScrollBar(self.h, visible)

proc vScrollBar*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_vScrollBar(self.h)

proc appendText*(self: ScintillaEdit, length: miqt_intptr_t, text: cstring): void =

  fcScintillaEdit_appendText(self.h, length, text)

proc phasesDraw*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_phasesDraw(self.h)

proc setPhasesDraw*(self: ScintillaEdit, phases: miqt_intptr_t): void =

  fcScintillaEdit_setPhasesDraw(self.h, phases)

proc setFontQuality*(self: ScintillaEdit, fontQuality: miqt_intptr_t): void =

  fcScintillaEdit_setFontQuality(self.h, fontQuality)

proc fontQuality*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_fontQuality(self.h)

proc setFirstVisibleLine*(self: ScintillaEdit, displayLine: miqt_intptr_t): void =

  fcScintillaEdit_setFirstVisibleLine(self.h, displayLine)

proc setMultiPaste*(self: ScintillaEdit, multiPaste: miqt_intptr_t): void =

  fcScintillaEdit_setMultiPaste(self.h, multiPaste)

proc multiPaste*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_multiPaste(self.h)

proc tag*(self: ScintillaEdit, tagNumber: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_tag(self.h, tagNumber)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc linesJoin*(self: ScintillaEdit, ): void =

  fcScintillaEdit_linesJoin(self.h)

proc linesSplit*(self: ScintillaEdit, pixelWidth: miqt_intptr_t): void =

  fcScintillaEdit_linesSplit(self.h, pixelWidth)

proc setFoldMarginColour*(self: ScintillaEdit, useSetting: bool, back: miqt_intptr_t): void =

  fcScintillaEdit_setFoldMarginColour(self.h, useSetting, back)

proc setFoldMarginHiColour*(self: ScintillaEdit, useSetting: bool, fore: miqt_intptr_t): void =

  fcScintillaEdit_setFoldMarginHiColour(self.h, useSetting, fore)

proc setAccessibility*(self: ScintillaEdit, accessibility: miqt_intptr_t): void =

  fcScintillaEdit_setAccessibility(self.h, accessibility)

proc accessibility*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_accessibility(self.h)

proc lineDown*(self: ScintillaEdit, ): void =

  fcScintillaEdit_lineDown(self.h)

proc lineDownExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_lineDownExtend(self.h)

proc lineUp*(self: ScintillaEdit, ): void =

  fcScintillaEdit_lineUp(self.h)

proc lineUpExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_lineUpExtend(self.h)

proc charLeft*(self: ScintillaEdit, ): void =

  fcScintillaEdit_charLeft(self.h)

proc charLeftExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_charLeftExtend(self.h)

proc charRight*(self: ScintillaEdit, ): void =

  fcScintillaEdit_charRight(self.h)

proc charRightExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_charRightExtend(self.h)

proc wordLeft*(self: ScintillaEdit, ): void =

  fcScintillaEdit_wordLeft(self.h)

proc wordLeftExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_wordLeftExtend(self.h)

proc wordRight*(self: ScintillaEdit, ): void =

  fcScintillaEdit_wordRight(self.h)

proc wordRightExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_wordRightExtend(self.h)

proc home*(self: ScintillaEdit, ): void =

  fcScintillaEdit_home(self.h)

proc homeExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_homeExtend(self.h)

proc lineEnd*(self: ScintillaEdit, ): void =

  fcScintillaEdit_lineEnd(self.h)

proc lineEndExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_lineEndExtend(self.h)

proc documentStart*(self: ScintillaEdit, ): void =

  fcScintillaEdit_documentStart(self.h)

proc documentStartExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_documentStartExtend(self.h)

proc documentEnd*(self: ScintillaEdit, ): void =

  fcScintillaEdit_documentEnd(self.h)

proc documentEndExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_documentEndExtend(self.h)

proc pageUp*(self: ScintillaEdit, ): void =

  fcScintillaEdit_pageUp(self.h)

proc pageUpExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_pageUpExtend(self.h)

proc pageDown*(self: ScintillaEdit, ): void =

  fcScintillaEdit_pageDown(self.h)

proc pageDownExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_pageDownExtend(self.h)

proc editToggleOvertype*(self: ScintillaEdit, ): void =

  fcScintillaEdit_editToggleOvertype(self.h)

proc cancel*(self: ScintillaEdit, ): void =

  fcScintillaEdit_cancel(self.h)

proc deleteBack*(self: ScintillaEdit, ): void =

  fcScintillaEdit_deleteBack(self.h)

proc tab*(self: ScintillaEdit, ): void =

  fcScintillaEdit_tab(self.h)

proc lineIndent*(self: ScintillaEdit, ): void =

  fcScintillaEdit_lineIndent(self.h)

proc backTab*(self: ScintillaEdit, ): void =

  fcScintillaEdit_backTab(self.h)

proc lineDedent*(self: ScintillaEdit, ): void =

  fcScintillaEdit_lineDedent(self.h)

proc newLine*(self: ScintillaEdit, ): void =

  fcScintillaEdit_newLine(self.h)

proc formFeed*(self: ScintillaEdit, ): void =

  fcScintillaEdit_formFeed(self.h)

proc vCHome*(self: ScintillaEdit, ): void =

  fcScintillaEdit_vCHome(self.h)

proc vCHomeExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_vCHomeExtend(self.h)

proc zoomIn*(self: ScintillaEdit, ): void =

  fcScintillaEdit_zoomIn(self.h)

proc zoomOut*(self: ScintillaEdit, ): void =

  fcScintillaEdit_zoomOut(self.h)

proc delWordLeft*(self: ScintillaEdit, ): void =

  fcScintillaEdit_delWordLeft(self.h)

proc delWordRight*(self: ScintillaEdit, ): void =

  fcScintillaEdit_delWordRight(self.h)

proc delWordRightEnd*(self: ScintillaEdit, ): void =

  fcScintillaEdit_delWordRightEnd(self.h)

proc lineCut*(self: ScintillaEdit, ): void =

  fcScintillaEdit_lineCut(self.h)

proc lineDelete*(self: ScintillaEdit, ): void =

  fcScintillaEdit_lineDelete(self.h)

proc lineTranspose*(self: ScintillaEdit, ): void =

  fcScintillaEdit_lineTranspose(self.h)

proc lineReverse*(self: ScintillaEdit, ): void =

  fcScintillaEdit_lineReverse(self.h)

proc lineDuplicate*(self: ScintillaEdit, ): void =

  fcScintillaEdit_lineDuplicate(self.h)

proc lowerCase*(self: ScintillaEdit, ): void =

  fcScintillaEdit_lowerCase(self.h)

proc upperCase*(self: ScintillaEdit, ): void =

  fcScintillaEdit_upperCase(self.h)

proc lineScrollDown*(self: ScintillaEdit, ): void =

  fcScintillaEdit_lineScrollDown(self.h)

proc lineScrollUp*(self: ScintillaEdit, ): void =

  fcScintillaEdit_lineScrollUp(self.h)

proc deleteBackNotLine*(self: ScintillaEdit, ): void =

  fcScintillaEdit_deleteBackNotLine(self.h)

proc homeDisplay*(self: ScintillaEdit, ): void =

  fcScintillaEdit_homeDisplay(self.h)

proc homeDisplayExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_homeDisplayExtend(self.h)

proc lineEndDisplay*(self: ScintillaEdit, ): void =

  fcScintillaEdit_lineEndDisplay(self.h)

proc lineEndDisplayExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_lineEndDisplayExtend(self.h)

proc homeWrap*(self: ScintillaEdit, ): void =

  fcScintillaEdit_homeWrap(self.h)

proc homeWrapExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_homeWrapExtend(self.h)

proc lineEndWrap*(self: ScintillaEdit, ): void =

  fcScintillaEdit_lineEndWrap(self.h)

proc lineEndWrapExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_lineEndWrapExtend(self.h)

proc vCHomeWrap*(self: ScintillaEdit, ): void =

  fcScintillaEdit_vCHomeWrap(self.h)

proc vCHomeWrapExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_vCHomeWrapExtend(self.h)

proc lineCopy*(self: ScintillaEdit, ): void =

  fcScintillaEdit_lineCopy(self.h)

proc moveCaretInsideView*(self: ScintillaEdit, ): void =

  fcScintillaEdit_moveCaretInsideView(self.h)

proc lineLength*(self: ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_lineLength(self.h, line)

proc braceHighlight*(self: ScintillaEdit, posA: miqt_intptr_t, posB: miqt_intptr_t): void =

  fcScintillaEdit_braceHighlight(self.h, posA, posB)

proc braceHighlightIndicator*(self: ScintillaEdit, useSetting: bool, indicator: miqt_intptr_t): void =

  fcScintillaEdit_braceHighlightIndicator(self.h, useSetting, indicator)

proc braceBadLight*(self: ScintillaEdit, pos: miqt_intptr_t): void =

  fcScintillaEdit_braceBadLight(self.h, pos)

proc braceBadLightIndicator*(self: ScintillaEdit, useSetting: bool, indicator: miqt_intptr_t): void =

  fcScintillaEdit_braceBadLightIndicator(self.h, useSetting, indicator)

proc braceMatch*(self: ScintillaEdit, pos: miqt_intptr_t, maxReStyle: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_braceMatch(self.h, pos, maxReStyle)

proc braceMatchNext*(self: ScintillaEdit, pos: miqt_intptr_t, startPos: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_braceMatchNext(self.h, pos, startPos)

proc viewEOL*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_viewEOL(self.h)

proc setViewEOL*(self: ScintillaEdit, visible: bool): void =

  fcScintillaEdit_setViewEOL(self.h, visible)

proc docPointer*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_docPointer(self.h)

proc setDocPointer*(self: ScintillaEdit, doc: miqt_intptr_t): void =

  fcScintillaEdit_setDocPointer(self.h, doc)

proc setModEventMask*(self: ScintillaEdit, eventMask: miqt_intptr_t): void =

  fcScintillaEdit_setModEventMask(self.h, eventMask)

proc edgeColumn*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_edgeColumn(self.h)

proc setEdgeColumn*(self: ScintillaEdit, column: miqt_intptr_t): void =

  fcScintillaEdit_setEdgeColumn(self.h, column)

proc edgeMode*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_edgeMode(self.h)

proc setEdgeMode*(self: ScintillaEdit, edgeMode: miqt_intptr_t): void =

  fcScintillaEdit_setEdgeMode(self.h, edgeMode)

proc edgeColour*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_edgeColour(self.h)

proc setEdgeColour*(self: ScintillaEdit, edgeColour: miqt_intptr_t): void =

  fcScintillaEdit_setEdgeColour(self.h, edgeColour)

proc multiEdgeAddLine*(self: ScintillaEdit, column: miqt_intptr_t, edgeColour: miqt_intptr_t): void =

  fcScintillaEdit_multiEdgeAddLine(self.h, column, edgeColour)

proc multiEdgeClearAll*(self: ScintillaEdit, ): void =

  fcScintillaEdit_multiEdgeClearAll(self.h)

proc multiEdgeColumn*(self: ScintillaEdit, which: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_multiEdgeColumn(self.h, which)

proc searchAnchor*(self: ScintillaEdit, ): void =

  fcScintillaEdit_searchAnchor(self.h)

proc searchNext*(self: ScintillaEdit, searchFlags: miqt_intptr_t, text: cstring): miqt_intptr_t =

  fcScintillaEdit_searchNext(self.h, searchFlags, text)

proc searchPrev*(self: ScintillaEdit, searchFlags: miqt_intptr_t, text: cstring): miqt_intptr_t =

  fcScintillaEdit_searchPrev(self.h, searchFlags, text)

proc linesOnScreen*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_linesOnScreen(self.h)

proc usePopUp*(self: ScintillaEdit, popUpMode: miqt_intptr_t): void =

  fcScintillaEdit_usePopUp(self.h, popUpMode)

proc selectionIsRectangle*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_selectionIsRectangle(self.h)

proc setZoom*(self: ScintillaEdit, zoomInPoints: miqt_intptr_t): void =

  fcScintillaEdit_setZoom(self.h, zoomInPoints)

proc zoom*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_zoom(self.h)

proc createDocument*(self: ScintillaEdit, bytes: miqt_intptr_t, documentOptions: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_createDocument(self.h, bytes, documentOptions)

proc addRefDocument*(self: ScintillaEdit, doc: miqt_intptr_t): void =

  fcScintillaEdit_addRefDocument(self.h, doc)

proc releaseDocument*(self: ScintillaEdit, doc: miqt_intptr_t): void =

  fcScintillaEdit_releaseDocument(self.h, doc)

proc documentOptions*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_documentOptions(self.h)

proc modEventMask*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_modEventMask(self.h)

proc setCommandEvents*(self: ScintillaEdit, commandEvents: bool): void =

  fcScintillaEdit_setCommandEvents(self.h, commandEvents)

proc commandEvents*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_commandEvents(self.h)

proc setFocus*(self: ScintillaEdit, focus: bool): void =

  fcScintillaEdit_setFocus(self.h, focus)

proc focus*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_focus(self.h)

proc setStatus*(self: ScintillaEdit, status: miqt_intptr_t): void =

  fcScintillaEdit_setStatus(self.h, status)

proc status*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_status(self.h)

proc setMouseDownCaptures*(self: ScintillaEdit, captures: bool): void =

  fcScintillaEdit_setMouseDownCaptures(self.h, captures)

proc mouseDownCaptures*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_mouseDownCaptures(self.h)

proc setMouseWheelCaptures*(self: ScintillaEdit, captures: bool): void =

  fcScintillaEdit_setMouseWheelCaptures(self.h, captures)

proc mouseWheelCaptures*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_mouseWheelCaptures(self.h)

proc setCursor*(self: ScintillaEdit, cursorType: miqt_intptr_t): void =

  fcScintillaEdit_setCursor(self.h, cursorType)

proc cursor*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_cursor(self.h)

proc setControlCharSymbol*(self: ScintillaEdit, symbol: miqt_intptr_t): void =

  fcScintillaEdit_setControlCharSymbol(self.h, symbol)

proc controlCharSymbol*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_controlCharSymbol(self.h)

proc wordPartLeft*(self: ScintillaEdit, ): void =

  fcScintillaEdit_wordPartLeft(self.h)

proc wordPartLeftExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_wordPartLeftExtend(self.h)

proc wordPartRight*(self: ScintillaEdit, ): void =

  fcScintillaEdit_wordPartRight(self.h)

proc wordPartRightExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_wordPartRightExtend(self.h)

proc setVisiblePolicy*(self: ScintillaEdit, visiblePolicy: miqt_intptr_t, visibleSlop: miqt_intptr_t): void =

  fcScintillaEdit_setVisiblePolicy(self.h, visiblePolicy, visibleSlop)

proc delLineLeft*(self: ScintillaEdit, ): void =

  fcScintillaEdit_delLineLeft(self.h)

proc delLineRight*(self: ScintillaEdit, ): void =

  fcScintillaEdit_delLineRight(self.h)

proc setXOffset*(self: ScintillaEdit, xOffset: miqt_intptr_t): void =

  fcScintillaEdit_setXOffset(self.h, xOffset)

proc xOffset*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_xOffset(self.h)

proc chooseCaretX*(self: ScintillaEdit, ): void =

  fcScintillaEdit_chooseCaretX(self.h)

proc grabFocus*(self: ScintillaEdit, ): void =

  fcScintillaEdit_grabFocus(self.h)

proc setXCaretPolicy*(self: ScintillaEdit, caretPolicy: miqt_intptr_t, caretSlop: miqt_intptr_t): void =

  fcScintillaEdit_setXCaretPolicy(self.h, caretPolicy, caretSlop)

proc setYCaretPolicy*(self: ScintillaEdit, caretPolicy: miqt_intptr_t, caretSlop: miqt_intptr_t): void =

  fcScintillaEdit_setYCaretPolicy(self.h, caretPolicy, caretSlop)

proc setPrintWrapMode*(self: ScintillaEdit, wrapMode: miqt_intptr_t): void =

  fcScintillaEdit_setPrintWrapMode(self.h, wrapMode)

proc printWrapMode*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_printWrapMode(self.h)

proc setHotspotActiveFore*(self: ScintillaEdit, useSetting: bool, fore: miqt_intptr_t): void =

  fcScintillaEdit_setHotspotActiveFore(self.h, useSetting, fore)

proc hotspotActiveFore*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_hotspotActiveFore(self.h)

proc setHotspotActiveBack*(self: ScintillaEdit, useSetting: bool, back: miqt_intptr_t): void =

  fcScintillaEdit_setHotspotActiveBack(self.h, useSetting, back)

proc hotspotActiveBack*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_hotspotActiveBack(self.h)

proc setHotspotActiveUnderline*(self: ScintillaEdit, underline: bool): void =

  fcScintillaEdit_setHotspotActiveUnderline(self.h, underline)

proc hotspotActiveUnderline*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_hotspotActiveUnderline(self.h)

proc setHotspotSingleLine*(self: ScintillaEdit, singleLine: bool): void =

  fcScintillaEdit_setHotspotSingleLine(self.h, singleLine)

proc hotspotSingleLine*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_hotspotSingleLine(self.h)

proc paraDown*(self: ScintillaEdit, ): void =

  fcScintillaEdit_paraDown(self.h)

proc paraDownExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_paraDownExtend(self.h)

proc paraUp*(self: ScintillaEdit, ): void =

  fcScintillaEdit_paraUp(self.h)

proc paraUpExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_paraUpExtend(self.h)

proc positionBefore*(self: ScintillaEdit, pos: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_positionBefore(self.h, pos)

proc positionAfter*(self: ScintillaEdit, pos: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_positionAfter(self.h, pos)

proc positionRelative*(self: ScintillaEdit, pos: miqt_intptr_t, relative: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_positionRelative(self.h, pos, relative)

proc positionRelativeCodeUnits*(self: ScintillaEdit, pos: miqt_intptr_t, relative: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_positionRelativeCodeUnits(self.h, pos, relative)

proc copyRange*(self: ScintillaEdit, start: miqt_intptr_t, endVal: miqt_intptr_t): void =

  fcScintillaEdit_copyRange(self.h, start, endVal)

proc copyText*(self: ScintillaEdit, length: miqt_intptr_t, text: cstring): void =

  fcScintillaEdit_copyText(self.h, length, text)

proc setSelectionMode*(self: ScintillaEdit, selectionMode: miqt_intptr_t): void =

  fcScintillaEdit_setSelectionMode(self.h, selectionMode)

proc changeSelectionMode*(self: ScintillaEdit, selectionMode: miqt_intptr_t): void =

  fcScintillaEdit_changeSelectionMode(self.h, selectionMode)

proc selectionMode*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_selectionMode(self.h)

proc setMoveExtendsSelection*(self: ScintillaEdit, moveExtendsSelection: bool): void =

  fcScintillaEdit_setMoveExtendsSelection(self.h, moveExtendsSelection)

proc moveExtendsSelection*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_moveExtendsSelection(self.h)

proc getLineSelStartPosition*(self: ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_getLineSelStartPosition(self.h, line)

proc getLineSelEndPosition*(self: ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_getLineSelEndPosition(self.h, line)

proc lineDownRectExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_lineDownRectExtend(self.h)

proc lineUpRectExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_lineUpRectExtend(self.h)

proc charLeftRectExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_charLeftRectExtend(self.h)

proc charRightRectExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_charRightRectExtend(self.h)

proc homeRectExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_homeRectExtend(self.h)

proc vCHomeRectExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_vCHomeRectExtend(self.h)

proc lineEndRectExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_lineEndRectExtend(self.h)

proc pageUpRectExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_pageUpRectExtend(self.h)

proc pageDownRectExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_pageDownRectExtend(self.h)

proc stutteredPageUp*(self: ScintillaEdit, ): void =

  fcScintillaEdit_stutteredPageUp(self.h)

proc stutteredPageUpExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_stutteredPageUpExtend(self.h)

proc stutteredPageDown*(self: ScintillaEdit, ): void =

  fcScintillaEdit_stutteredPageDown(self.h)

proc stutteredPageDownExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_stutteredPageDownExtend(self.h)

proc wordLeftEnd*(self: ScintillaEdit, ): void =

  fcScintillaEdit_wordLeftEnd(self.h)

proc wordLeftEndExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_wordLeftEndExtend(self.h)

proc wordRightEnd*(self: ScintillaEdit, ): void =

  fcScintillaEdit_wordRightEnd(self.h)

proc wordRightEndExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_wordRightEndExtend(self.h)

proc setWhitespaceChars*(self: ScintillaEdit, characters: cstring): void =

  fcScintillaEdit_setWhitespaceChars(self.h, characters)

proc whitespaceChars*(self: ScintillaEdit, ): seq[byte] =

  var v_bytearray = fcScintillaEdit_whitespaceChars(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setPunctuationChars*(self: ScintillaEdit, characters: cstring): void =

  fcScintillaEdit_setPunctuationChars(self.h, characters)

proc punctuationChars*(self: ScintillaEdit, ): seq[byte] =

  var v_bytearray = fcScintillaEdit_punctuationChars(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setCharsDefault*(self: ScintillaEdit, ): void =

  fcScintillaEdit_setCharsDefault(self.h)

proc autoCCurrent*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_autoCCurrent(self.h)

proc autoCCurrentText*(self: ScintillaEdit, ): seq[byte] =

  var v_bytearray = fcScintillaEdit_autoCCurrentText(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc autoCSetCaseInsensitiveBehaviour*(self: ScintillaEdit, behaviour: miqt_intptr_t): void =

  fcScintillaEdit_autoCSetCaseInsensitiveBehaviour(self.h, behaviour)

proc autoCCaseInsensitiveBehaviour*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_autoCCaseInsensitiveBehaviour(self.h)

proc autoCSetMulti*(self: ScintillaEdit, multi: miqt_intptr_t): void =

  fcScintillaEdit_autoCSetMulti(self.h, multi)

proc autoCMulti*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_autoCMulti(self.h)

proc autoCSetOrder*(self: ScintillaEdit, order: miqt_intptr_t): void =

  fcScintillaEdit_autoCSetOrder(self.h, order)

proc autoCOrder*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_autoCOrder(self.h)

proc allocate*(self: ScintillaEdit, bytes: miqt_intptr_t): void =

  fcScintillaEdit_allocate(self.h, bytes)

proc targetAsUTF8*(self: ScintillaEdit, ): seq[byte] =

  var v_bytearray = fcScintillaEdit_targetAsUTF8(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setLengthForEncode*(self: ScintillaEdit, bytes: miqt_intptr_t): void =

  fcScintillaEdit_setLengthForEncode(self.h, bytes)

proc encodedFromUTF8*(self: ScintillaEdit, utf8: cstring): seq[byte] =

  var v_bytearray = fcScintillaEdit_encodedFromUTF8(self.h, utf8)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc findColumn*(self: ScintillaEdit, line: miqt_intptr_t, column: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_findColumn(self.h, line, column)

proc caretSticky*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_caretSticky(self.h)

proc setCaretSticky*(self: ScintillaEdit, useCaretStickyBehaviour: miqt_intptr_t): void =

  fcScintillaEdit_setCaretSticky(self.h, useCaretStickyBehaviour)

proc toggleCaretSticky*(self: ScintillaEdit, ): void =

  fcScintillaEdit_toggleCaretSticky(self.h)

proc setPasteConvertEndings*(self: ScintillaEdit, convert: bool): void =

  fcScintillaEdit_setPasteConvertEndings(self.h, convert)

proc pasteConvertEndings*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_pasteConvertEndings(self.h)

proc replaceRectangular*(self: ScintillaEdit, length: miqt_intptr_t, text: cstring): void =

  fcScintillaEdit_replaceRectangular(self.h, length, text)

proc selectionDuplicate*(self: ScintillaEdit, ): void =

  fcScintillaEdit_selectionDuplicate(self.h)

proc setCaretLineBackAlpha*(self: ScintillaEdit, alpha: miqt_intptr_t): void =

  fcScintillaEdit_setCaretLineBackAlpha(self.h, alpha)

proc caretLineBackAlpha*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_caretLineBackAlpha(self.h)

proc setCaretStyle*(self: ScintillaEdit, caretStyle: miqt_intptr_t): void =

  fcScintillaEdit_setCaretStyle(self.h, caretStyle)

proc caretStyle*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_caretStyle(self.h)

proc setIndicatorCurrent*(self: ScintillaEdit, indicator: miqt_intptr_t): void =

  fcScintillaEdit_setIndicatorCurrent(self.h, indicator)

proc indicatorCurrent*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_indicatorCurrent(self.h)

proc setIndicatorValue*(self: ScintillaEdit, value: miqt_intptr_t): void =

  fcScintillaEdit_setIndicatorValue(self.h, value)

proc indicatorValue*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_indicatorValue(self.h)

proc indicatorFillRange*(self: ScintillaEdit, start: miqt_intptr_t, lengthFill: miqt_intptr_t): void =

  fcScintillaEdit_indicatorFillRange(self.h, start, lengthFill)

proc indicatorClearRange*(self: ScintillaEdit, start: miqt_intptr_t, lengthClear: miqt_intptr_t): void =

  fcScintillaEdit_indicatorClearRange(self.h, start, lengthClear)

proc indicatorAllOnFor*(self: ScintillaEdit, pos: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_indicatorAllOnFor(self.h, pos)

proc indicatorValueAt*(self: ScintillaEdit, indicator: miqt_intptr_t, pos: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_indicatorValueAt(self.h, indicator, pos)

proc indicatorStart*(self: ScintillaEdit, indicator: miqt_intptr_t, pos: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_indicatorStart(self.h, indicator, pos)

proc indicatorEnd*(self: ScintillaEdit, indicator: miqt_intptr_t, pos: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_indicatorEnd(self.h, indicator, pos)

proc setPositionCache*(self: ScintillaEdit, size: miqt_intptr_t): void =

  fcScintillaEdit_setPositionCache(self.h, size)

proc positionCache*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_positionCache(self.h)

proc setLayoutThreads*(self: ScintillaEdit, threads: miqt_intptr_t): void =

  fcScintillaEdit_setLayoutThreads(self.h, threads)

proc layoutThreads*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_layoutThreads(self.h)

proc copyAllowLine*(self: ScintillaEdit, ): void =

  fcScintillaEdit_copyAllowLine(self.h)

proc cutAllowLine*(self: ScintillaEdit, ): void =

  fcScintillaEdit_cutAllowLine(self.h)

proc setCopySeparator*(self: ScintillaEdit, separator: cstring): void =

  fcScintillaEdit_setCopySeparator(self.h, separator)

proc copySeparator*(self: ScintillaEdit, ): seq[byte] =

  var v_bytearray = fcScintillaEdit_copySeparator(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc characterPointer*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_characterPointer(self.h)

proc rangePointer*(self: ScintillaEdit, start: miqt_intptr_t, lengthRange: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_rangePointer(self.h, start, lengthRange)

proc gapPosition*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_gapPosition(self.h)

proc indicSetAlpha*(self: ScintillaEdit, indicator: miqt_intptr_t, alpha: miqt_intptr_t): void =

  fcScintillaEdit_indicSetAlpha(self.h, indicator, alpha)

proc indicAlpha*(self: ScintillaEdit, indicator: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_indicAlpha(self.h, indicator)

proc indicSetOutlineAlpha*(self: ScintillaEdit, indicator: miqt_intptr_t, alpha: miqt_intptr_t): void =

  fcScintillaEdit_indicSetOutlineAlpha(self.h, indicator, alpha)

proc indicOutlineAlpha*(self: ScintillaEdit, indicator: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_indicOutlineAlpha(self.h, indicator)

proc setExtraAscent*(self: ScintillaEdit, extraAscent: miqt_intptr_t): void =

  fcScintillaEdit_setExtraAscent(self.h, extraAscent)

proc extraAscent*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_extraAscent(self.h)

proc setExtraDescent*(self: ScintillaEdit, extraDescent: miqt_intptr_t): void =

  fcScintillaEdit_setExtraDescent(self.h, extraDescent)

proc extraDescent*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_extraDescent(self.h)

proc markerSymbolDefined*(self: ScintillaEdit, markerNumber: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_markerSymbolDefined(self.h, markerNumber)

proc marginSetText*(self: ScintillaEdit, line: miqt_intptr_t, text: cstring): void =

  fcScintillaEdit_marginSetText(self.h, line, text)

proc marginText*(self: ScintillaEdit, line: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_marginText(self.h, line)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc marginSetStyle*(self: ScintillaEdit, line: miqt_intptr_t, style: miqt_intptr_t): void =

  fcScintillaEdit_marginSetStyle(self.h, line, style)

proc marginStyle*(self: ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_marginStyle(self.h, line)

proc marginSetStyles*(self: ScintillaEdit, line: miqt_intptr_t, styles: cstring): void =

  fcScintillaEdit_marginSetStyles(self.h, line, styles)

proc marginStyles*(self: ScintillaEdit, line: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_marginStyles(self.h, line)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc marginTextClearAll*(self: ScintillaEdit, ): void =

  fcScintillaEdit_marginTextClearAll(self.h)

proc marginSetStyleOffset*(self: ScintillaEdit, style: miqt_intptr_t): void =

  fcScintillaEdit_marginSetStyleOffset(self.h, style)

proc marginStyleOffset*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_marginStyleOffset(self.h)

proc setMarginOptions*(self: ScintillaEdit, marginOptions: miqt_intptr_t): void =

  fcScintillaEdit_setMarginOptions(self.h, marginOptions)

proc marginOptions*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_marginOptions(self.h)

proc annotationSetText*(self: ScintillaEdit, line: miqt_intptr_t, text: cstring): void =

  fcScintillaEdit_annotationSetText(self.h, line, text)

proc annotationText*(self: ScintillaEdit, line: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_annotationText(self.h, line)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc annotationSetStyle*(self: ScintillaEdit, line: miqt_intptr_t, style: miqt_intptr_t): void =

  fcScintillaEdit_annotationSetStyle(self.h, line, style)

proc annotationStyle*(self: ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_annotationStyle(self.h, line)

proc annotationSetStyles*(self: ScintillaEdit, line: miqt_intptr_t, styles: cstring): void =

  fcScintillaEdit_annotationSetStyles(self.h, line, styles)

proc annotationStyles*(self: ScintillaEdit, line: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_annotationStyles(self.h, line)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc annotationLines*(self: ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_annotationLines(self.h, line)

proc annotationClearAll*(self: ScintillaEdit, ): void =

  fcScintillaEdit_annotationClearAll(self.h)

proc annotationSetVisible*(self: ScintillaEdit, visible: miqt_intptr_t): void =

  fcScintillaEdit_annotationSetVisible(self.h, visible)

proc annotationVisible*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_annotationVisible(self.h)

proc annotationSetStyleOffset*(self: ScintillaEdit, style: miqt_intptr_t): void =

  fcScintillaEdit_annotationSetStyleOffset(self.h, style)

proc annotationStyleOffset*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_annotationStyleOffset(self.h)

proc releaseAllExtendedStyles*(self: ScintillaEdit, ): void =

  fcScintillaEdit_releaseAllExtendedStyles(self.h)

proc allocateExtendedStyles*(self: ScintillaEdit, numberStyles: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_allocateExtendedStyles(self.h, numberStyles)

proc addUndoAction*(self: ScintillaEdit, token: miqt_intptr_t, flags: miqt_intptr_t): void =

  fcScintillaEdit_addUndoAction(self.h, token, flags)

proc charPositionFromPoint*(self: ScintillaEdit, x: miqt_intptr_t, y: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_charPositionFromPoint(self.h, x, y)

proc charPositionFromPointClose*(self: ScintillaEdit, x: miqt_intptr_t, y: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_charPositionFromPointClose(self.h, x, y)

proc setMouseSelectionRectangularSwitch*(self: ScintillaEdit, mouseSelectionRectangularSwitch: bool): void =

  fcScintillaEdit_setMouseSelectionRectangularSwitch(self.h, mouseSelectionRectangularSwitch)

proc mouseSelectionRectangularSwitch*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_mouseSelectionRectangularSwitch(self.h)

proc setMultipleSelection*(self: ScintillaEdit, multipleSelection: bool): void =

  fcScintillaEdit_setMultipleSelection(self.h, multipleSelection)

proc multipleSelection*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_multipleSelection(self.h)

proc setAdditionalSelectionTyping*(self: ScintillaEdit, additionalSelectionTyping: bool): void =

  fcScintillaEdit_setAdditionalSelectionTyping(self.h, additionalSelectionTyping)

proc additionalSelectionTyping*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_additionalSelectionTyping(self.h)

proc setAdditionalCaretsBlink*(self: ScintillaEdit, additionalCaretsBlink: bool): void =

  fcScintillaEdit_setAdditionalCaretsBlink(self.h, additionalCaretsBlink)

proc additionalCaretsBlink*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_additionalCaretsBlink(self.h)

proc setAdditionalCaretsVisible*(self: ScintillaEdit, additionalCaretsVisible: bool): void =

  fcScintillaEdit_setAdditionalCaretsVisible(self.h, additionalCaretsVisible)

proc additionalCaretsVisible*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_additionalCaretsVisible(self.h)

proc selections*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_selections(self.h)

proc selectionEmpty*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_selectionEmpty(self.h)

proc clearSelections*(self: ScintillaEdit, ): void =

  fcScintillaEdit_clearSelections(self.h)

proc setSelection*(self: ScintillaEdit, caret: miqt_intptr_t, anchor: miqt_intptr_t): void =

  fcScintillaEdit_setSelection(self.h, caret, anchor)

proc addSelection*(self: ScintillaEdit, caret: miqt_intptr_t, anchor: miqt_intptr_t): void =

  fcScintillaEdit_addSelection(self.h, caret, anchor)

proc selectionFromPoint*(self: ScintillaEdit, x: miqt_intptr_t, y: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_selectionFromPoint(self.h, x, y)

proc dropSelectionN*(self: ScintillaEdit, selection: miqt_intptr_t): void =

  fcScintillaEdit_dropSelectionN(self.h, selection)

proc setMainSelection*(self: ScintillaEdit, selection: miqt_intptr_t): void =

  fcScintillaEdit_setMainSelection(self.h, selection)

proc mainSelection*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_mainSelection(self.h)

proc setSelectionNCaret*(self: ScintillaEdit, selection: miqt_intptr_t, caret: miqt_intptr_t): void =

  fcScintillaEdit_setSelectionNCaret(self.h, selection, caret)

proc selectionNCaret*(self: ScintillaEdit, selection: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_selectionNCaret(self.h, selection)

proc setSelectionNAnchor*(self: ScintillaEdit, selection: miqt_intptr_t, anchor: miqt_intptr_t): void =

  fcScintillaEdit_setSelectionNAnchor(self.h, selection, anchor)

proc selectionNAnchor*(self: ScintillaEdit, selection: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_selectionNAnchor(self.h, selection)

proc setSelectionNCaretVirtualSpace*(self: ScintillaEdit, selection: miqt_intptr_t, space: miqt_intptr_t): void =

  fcScintillaEdit_setSelectionNCaretVirtualSpace(self.h, selection, space)

proc selectionNCaretVirtualSpace*(self: ScintillaEdit, selection: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_selectionNCaretVirtualSpace(self.h, selection)

proc setSelectionNAnchorVirtualSpace*(self: ScintillaEdit, selection: miqt_intptr_t, space: miqt_intptr_t): void =

  fcScintillaEdit_setSelectionNAnchorVirtualSpace(self.h, selection, space)

proc selectionNAnchorVirtualSpace*(self: ScintillaEdit, selection: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_selectionNAnchorVirtualSpace(self.h, selection)

proc setSelectionNStart*(self: ScintillaEdit, selection: miqt_intptr_t, anchor: miqt_intptr_t): void =

  fcScintillaEdit_setSelectionNStart(self.h, selection, anchor)

proc selectionNStart*(self: ScintillaEdit, selection: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_selectionNStart(self.h, selection)

proc selectionNStartVirtualSpace*(self: ScintillaEdit, selection: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_selectionNStartVirtualSpace(self.h, selection)

proc setSelectionNEnd*(self: ScintillaEdit, selection: miqt_intptr_t, caret: miqt_intptr_t): void =

  fcScintillaEdit_setSelectionNEnd(self.h, selection, caret)

proc selectionNEndVirtualSpace*(self: ScintillaEdit, selection: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_selectionNEndVirtualSpace(self.h, selection)

proc selectionNEnd*(self: ScintillaEdit, selection: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_selectionNEnd(self.h, selection)

proc setRectangularSelectionCaret*(self: ScintillaEdit, caret: miqt_intptr_t): void =

  fcScintillaEdit_setRectangularSelectionCaret(self.h, caret)

proc rectangularSelectionCaret*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_rectangularSelectionCaret(self.h)

proc setRectangularSelectionAnchor*(self: ScintillaEdit, anchor: miqt_intptr_t): void =

  fcScintillaEdit_setRectangularSelectionAnchor(self.h, anchor)

proc rectangularSelectionAnchor*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_rectangularSelectionAnchor(self.h)

proc setRectangularSelectionCaretVirtualSpace*(self: ScintillaEdit, space: miqt_intptr_t): void =

  fcScintillaEdit_setRectangularSelectionCaretVirtualSpace(self.h, space)

proc rectangularSelectionCaretVirtualSpace*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_rectangularSelectionCaretVirtualSpace(self.h)

proc setRectangularSelectionAnchorVirtualSpace*(self: ScintillaEdit, space: miqt_intptr_t): void =

  fcScintillaEdit_setRectangularSelectionAnchorVirtualSpace(self.h, space)

proc rectangularSelectionAnchorVirtualSpace*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_rectangularSelectionAnchorVirtualSpace(self.h)

proc setVirtualSpaceOptions*(self: ScintillaEdit, virtualSpaceOptions: miqt_intptr_t): void =

  fcScintillaEdit_setVirtualSpaceOptions(self.h, virtualSpaceOptions)

proc virtualSpaceOptions*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_virtualSpaceOptions(self.h)

proc setRectangularSelectionModifier*(self: ScintillaEdit, modifier: miqt_intptr_t): void =

  fcScintillaEdit_setRectangularSelectionModifier(self.h, modifier)

proc rectangularSelectionModifier*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_rectangularSelectionModifier(self.h)

proc setAdditionalSelFore*(self: ScintillaEdit, fore: miqt_intptr_t): void =

  fcScintillaEdit_setAdditionalSelFore(self.h, fore)

proc setAdditionalSelBack*(self: ScintillaEdit, back: miqt_intptr_t): void =

  fcScintillaEdit_setAdditionalSelBack(self.h, back)

proc setAdditionalSelAlpha*(self: ScintillaEdit, alpha: miqt_intptr_t): void =

  fcScintillaEdit_setAdditionalSelAlpha(self.h, alpha)

proc additionalSelAlpha*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_additionalSelAlpha(self.h)

proc setAdditionalCaretFore*(self: ScintillaEdit, fore: miqt_intptr_t): void =

  fcScintillaEdit_setAdditionalCaretFore(self.h, fore)

proc additionalCaretFore*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_additionalCaretFore(self.h)

proc rotateSelection*(self: ScintillaEdit, ): void =

  fcScintillaEdit_rotateSelection(self.h)

proc swapMainAnchorCaret*(self: ScintillaEdit, ): void =

  fcScintillaEdit_swapMainAnchorCaret(self.h)

proc multipleSelectAddNext*(self: ScintillaEdit, ): void =

  fcScintillaEdit_multipleSelectAddNext(self.h)

proc multipleSelectAddEach*(self: ScintillaEdit, ): void =

  fcScintillaEdit_multipleSelectAddEach(self.h)

proc changeLexerState*(self: ScintillaEdit, start: miqt_intptr_t, endVal: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_changeLexerState(self.h, start, endVal)

proc contractedFoldNext*(self: ScintillaEdit, lineStart: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_contractedFoldNext(self.h, lineStart)

proc verticalCentreCaret*(self: ScintillaEdit, ): void =

  fcScintillaEdit_verticalCentreCaret(self.h)

proc moveSelectedLinesUp*(self: ScintillaEdit, ): void =

  fcScintillaEdit_moveSelectedLinesUp(self.h)

proc moveSelectedLinesDown*(self: ScintillaEdit, ): void =

  fcScintillaEdit_moveSelectedLinesDown(self.h)

proc setIdentifier*(self: ScintillaEdit, identifier: miqt_intptr_t): void =

  fcScintillaEdit_setIdentifier(self.h, identifier)

proc identifier*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_identifier(self.h)

proc rGBAImageSetWidth*(self: ScintillaEdit, width: miqt_intptr_t): void =

  fcScintillaEdit_rGBAImageSetWidth(self.h, width)

proc rGBAImageSetHeight*(self: ScintillaEdit, height: miqt_intptr_t): void =

  fcScintillaEdit_rGBAImageSetHeight(self.h, height)

proc rGBAImageSetScale*(self: ScintillaEdit, scalePercent: miqt_intptr_t): void =

  fcScintillaEdit_rGBAImageSetScale(self.h, scalePercent)

proc markerDefineRGBAImage*(self: ScintillaEdit, markerNumber: miqt_intptr_t, pixels: cstring): void =

  fcScintillaEdit_markerDefineRGBAImage(self.h, markerNumber, pixels)

proc registerRGBAImage*(self: ScintillaEdit, typeVal: miqt_intptr_t, pixels: cstring): void =

  fcScintillaEdit_registerRGBAImage(self.h, typeVal, pixels)

proc scrollToStart*(self: ScintillaEdit, ): void =

  fcScintillaEdit_scrollToStart(self.h)

proc scrollToEnd*(self: ScintillaEdit, ): void =

  fcScintillaEdit_scrollToEnd(self.h)

proc setTechnology*(self: ScintillaEdit, technology: miqt_intptr_t): void =

  fcScintillaEdit_setTechnology(self.h, technology)

proc technology*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_technology(self.h)

proc createLoader*(self: ScintillaEdit, bytes: miqt_intptr_t, documentOptions: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_createLoader(self.h, bytes, documentOptions)

proc findIndicatorShow*(self: ScintillaEdit, start: miqt_intptr_t, endVal: miqt_intptr_t): void =

  fcScintillaEdit_findIndicatorShow(self.h, start, endVal)

proc findIndicatorFlash*(self: ScintillaEdit, start: miqt_intptr_t, endVal: miqt_intptr_t): void =

  fcScintillaEdit_findIndicatorFlash(self.h, start, endVal)

proc findIndicatorHide*(self: ScintillaEdit, ): void =

  fcScintillaEdit_findIndicatorHide(self.h)

proc vCHomeDisplay*(self: ScintillaEdit, ): void =

  fcScintillaEdit_vCHomeDisplay(self.h)

proc vCHomeDisplayExtend*(self: ScintillaEdit, ): void =

  fcScintillaEdit_vCHomeDisplayExtend(self.h)

proc caretLineVisibleAlways*(self: ScintillaEdit, ): bool =

  fcScintillaEdit_caretLineVisibleAlways(self.h)

proc setCaretLineVisibleAlways*(self: ScintillaEdit, alwaysVisible: bool): void =

  fcScintillaEdit_setCaretLineVisibleAlways(self.h, alwaysVisible)

proc setLineEndTypesAllowed*(self: ScintillaEdit, lineEndBitSet: miqt_intptr_t): void =

  fcScintillaEdit_setLineEndTypesAllowed(self.h, lineEndBitSet)

proc lineEndTypesAllowed*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_lineEndTypesAllowed(self.h)

proc lineEndTypesActive*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_lineEndTypesActive(self.h)

proc setRepresentation*(self: ScintillaEdit, encodedCharacter: cstring, representation: cstring): void =

  fcScintillaEdit_setRepresentation(self.h, encodedCharacter, representation)

proc representation*(self: ScintillaEdit, encodedCharacter: cstring): seq[byte] =

  var v_bytearray = fcScintillaEdit_representation(self.h, encodedCharacter)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc clearRepresentation*(self: ScintillaEdit, encodedCharacter: cstring): void =

  fcScintillaEdit_clearRepresentation(self.h, encodedCharacter)

proc clearAllRepresentations*(self: ScintillaEdit, ): void =

  fcScintillaEdit_clearAllRepresentations(self.h)

proc setRepresentationAppearance*(self: ScintillaEdit, encodedCharacter: cstring, appearance: miqt_intptr_t): void =

  fcScintillaEdit_setRepresentationAppearance(self.h, encodedCharacter, appearance)

proc representationAppearance*(self: ScintillaEdit, encodedCharacter: cstring): miqt_intptr_t =

  fcScintillaEdit_representationAppearance(self.h, encodedCharacter)

proc setRepresentationColour*(self: ScintillaEdit, encodedCharacter: cstring, colour: miqt_intptr_t): void =

  fcScintillaEdit_setRepresentationColour(self.h, encodedCharacter, colour)

proc representationColour*(self: ScintillaEdit, encodedCharacter: cstring): miqt_intptr_t =

  fcScintillaEdit_representationColour(self.h, encodedCharacter)

proc eOLAnnotationSetText*(self: ScintillaEdit, line: miqt_intptr_t, text: cstring): void =

  fcScintillaEdit_eOLAnnotationSetText(self.h, line, text)

proc eOLAnnotationText*(self: ScintillaEdit, line: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_eOLAnnotationText(self.h, line)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc eOLAnnotationSetStyle*(self: ScintillaEdit, line: miqt_intptr_t, style: miqt_intptr_t): void =

  fcScintillaEdit_eOLAnnotationSetStyle(self.h, line, style)

proc eOLAnnotationStyle*(self: ScintillaEdit, line: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_eOLAnnotationStyle(self.h, line)

proc eOLAnnotationClearAll*(self: ScintillaEdit, ): void =

  fcScintillaEdit_eOLAnnotationClearAll(self.h)

proc eOLAnnotationSetVisible*(self: ScintillaEdit, visible: miqt_intptr_t): void =

  fcScintillaEdit_eOLAnnotationSetVisible(self.h, visible)

proc eOLAnnotationVisible*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_eOLAnnotationVisible(self.h)

proc eOLAnnotationSetStyleOffset*(self: ScintillaEdit, style: miqt_intptr_t): void =

  fcScintillaEdit_eOLAnnotationSetStyleOffset(self.h, style)

proc eOLAnnotationStyleOffset*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_eOLAnnotationStyleOffset(self.h)

proc supportsFeature*(self: ScintillaEdit, feature: miqt_intptr_t): bool =

  fcScintillaEdit_supportsFeature(self.h, feature)

proc lineCharacterIndex*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_lineCharacterIndex(self.h)

proc allocateLineCharacterIndex*(self: ScintillaEdit, lineCharacterIndex: miqt_intptr_t): void =

  fcScintillaEdit_allocateLineCharacterIndex(self.h, lineCharacterIndex)

proc releaseLineCharacterIndex*(self: ScintillaEdit, lineCharacterIndex: miqt_intptr_t): void =

  fcScintillaEdit_releaseLineCharacterIndex(self.h, lineCharacterIndex)

proc lineFromIndexPosition*(self: ScintillaEdit, pos: miqt_intptr_t, lineCharacterIndex: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_lineFromIndexPosition(self.h, pos, lineCharacterIndex)

proc indexPositionFromLine*(self: ScintillaEdit, line: miqt_intptr_t, lineCharacterIndex: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_indexPositionFromLine(self.h, line, lineCharacterIndex)

proc startRecord*(self: ScintillaEdit, ): void =

  fcScintillaEdit_startRecord(self.h)

proc stopRecord*(self: ScintillaEdit, ): void =

  fcScintillaEdit_stopRecord(self.h)

proc lexer*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_lexer(self.h)

proc colourise*(self: ScintillaEdit, start: miqt_intptr_t, endVal: miqt_intptr_t): void =

  fcScintillaEdit_colourise(self.h, start, endVal)

proc setProperty*(self: ScintillaEdit, key: cstring, value: cstring): void =

  fcScintillaEdit_setProperty(self.h, key, value)

proc setKeyWords*(self: ScintillaEdit, keyWordSet: miqt_intptr_t, keyWords: cstring): void =

  fcScintillaEdit_setKeyWords(self.h, keyWordSet, keyWords)

proc property*(self: ScintillaEdit, key: cstring): seq[byte] =

  var v_bytearray = fcScintillaEdit_property(self.h, key)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc propertyExpanded*(self: ScintillaEdit, key: cstring): seq[byte] =

  var v_bytearray = fcScintillaEdit_propertyExpanded(self.h, key)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc propertyInt*(self: ScintillaEdit, key: cstring, defaultValue: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_propertyInt(self.h, key, defaultValue)

proc lexerLanguage*(self: ScintillaEdit, ): seq[byte] =

  var v_bytearray = fcScintillaEdit_lexerLanguage(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc privateLexerCall*(self: ScintillaEdit, operation: miqt_intptr_t, pointer: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_privateLexerCall(self.h, operation, pointer)

proc propertyNames*(self: ScintillaEdit, ): seq[byte] =

  var v_bytearray = fcScintillaEdit_propertyNames(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc propertyType*(self: ScintillaEdit, name: cstring): miqt_intptr_t =

  fcScintillaEdit_propertyType(self.h, name)

proc describeProperty*(self: ScintillaEdit, name: cstring): seq[byte] =

  var v_bytearray = fcScintillaEdit_describeProperty(self.h, name)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc describeKeyWordSets*(self: ScintillaEdit, ): seq[byte] =

  var v_bytearray = fcScintillaEdit_describeKeyWordSets(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc lineEndTypesSupported*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_lineEndTypesSupported(self.h)

proc allocateSubStyles*(self: ScintillaEdit, styleBase: miqt_intptr_t, numberStyles: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_allocateSubStyles(self.h, styleBase, numberStyles)

proc subStylesStart*(self: ScintillaEdit, styleBase: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_subStylesStart(self.h, styleBase)

proc subStylesLength*(self: ScintillaEdit, styleBase: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_subStylesLength(self.h, styleBase)

proc styleFromSubStyle*(self: ScintillaEdit, subStyle: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_styleFromSubStyle(self.h, subStyle)

proc primaryStyleFromStyle*(self: ScintillaEdit, style: miqt_intptr_t): miqt_intptr_t =

  fcScintillaEdit_primaryStyleFromStyle(self.h, style)

proc freeSubStyles*(self: ScintillaEdit, ): void =

  fcScintillaEdit_freeSubStyles(self.h)

proc setIdentifiers*(self: ScintillaEdit, style: miqt_intptr_t, identifiers: cstring): void =

  fcScintillaEdit_setIdentifiers(self.h, style, identifiers)

proc distanceToSecondaryStyles*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_distanceToSecondaryStyles(self.h)

proc subStyleBases*(self: ScintillaEdit, ): seq[byte] =

  var v_bytearray = fcScintillaEdit_subStyleBases(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc namedStyles*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_namedStyles(self.h)

proc nameOfStyle*(self: ScintillaEdit, style: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_nameOfStyle(self.h, style)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc tagsOfStyle*(self: ScintillaEdit, style: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_tagsOfStyle(self.h, style)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc descriptionOfStyle*(self: ScintillaEdit, style: miqt_intptr_t): seq[byte] =

  var v_bytearray = fcScintillaEdit_descriptionOfStyle(self.h, style)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setILexer*(self: ScintillaEdit, ilexer: miqt_intptr_t): void =

  fcScintillaEdit_setILexer(self.h, ilexer)

proc bidirectional*(self: ScintillaEdit, ): miqt_intptr_t =

  fcScintillaEdit_bidirectional(self.h)

proc setBidirectional*(self: ScintillaEdit, bidirectional: miqt_intptr_t): void =

  fcScintillaEdit_setBidirectional(self.h, bidirectional)

proc tr2*(_: type ScintillaEdit, s: cstring, c: cstring): string =

  let v_ms = fcScintillaEdit_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type ScintillaEdit, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcScintillaEdit_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type ScintillaEdit, s: cstring, c: cstring): string =

  let v_ms = fcScintillaEdit_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type ScintillaEdit, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcScintillaEdit_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: ScintillaEdit, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fScintillaEdit_virtualbase_metacall(self.h, cint(param1), param2, param3)

type ScintillaEditmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: ScintillaEdit, slot: proc(super: ScintillaEditmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_metacall(self: ptr cScintillaEdit, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_ScintillaEdit_metacall ".} =
  type Cb = proc(super: ScintillaEditmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(ScintillaEdit(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_send(self: ScintillaEdit, iMessage: cuint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): miqt_intptr_t =


  fScintillaEdit_virtualbase_send(self.h, iMessage, wParam, lParam)

type ScintillaEditsendBase* = proc(iMessage: cuint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): miqt_intptr_t
proc onsend*(self: ScintillaEdit, slot: proc(super: ScintillaEditsendBase, iMessage: cuint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): miqt_intptr_t) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditsendBase, iMessage: cuint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): miqt_intptr_t
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_send(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_send(self: ptr cScintillaEdit, slot: int, iMessage: cuint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): miqt_intptr_t {.exportc: "miqt_exec_callback_ScintillaEdit_send ".} =
  type Cb = proc(super: ScintillaEditsendBase, iMessage: cuint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): miqt_intptr_t
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(iMessage: cuint, wParam: miqt_uintptr_t, lParam: miqt_intptr_t): auto =
    callVirtualBase_send(ScintillaEdit(h: self), iMessage, wParam, lParam)
  let slotval1 = iMessage

  let slotval2 = wParam

  let slotval3 = lParam


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sends(self: ScintillaEdit, iMessage: cuint, wParam: miqt_uintptr_t, s: cstring): miqt_intptr_t =


  fScintillaEdit_virtualbase_sends(self.h, iMessage, wParam, s)

type ScintillaEditsendsBase* = proc(iMessage: cuint, wParam: miqt_uintptr_t, s: cstring): miqt_intptr_t
proc onsends*(self: ScintillaEdit, slot: proc(super: ScintillaEditsendsBase, iMessage: cuint, wParam: miqt_uintptr_t, s: cstring): miqt_intptr_t) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditsendsBase, iMessage: cuint, wParam: miqt_uintptr_t, s: cstring): miqt_intptr_t
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_sends(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_sends(self: ptr cScintillaEdit, slot: int, iMessage: cuint, wParam: miqt_uintptr_t, s: cstring): miqt_intptr_t {.exportc: "miqt_exec_callback_ScintillaEdit_sends ".} =
  type Cb = proc(super: ScintillaEditsendsBase, iMessage: cuint, wParam: miqt_uintptr_t, s: cstring): miqt_intptr_t
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(iMessage: cuint, wParam: miqt_uintptr_t, s: cstring): auto =
    callVirtualBase_sends(ScintillaEdit(h: self), iMessage, wParam, s)
  let slotval1 = iMessage

  let slotval2 = wParam

  let slotval3 = (s)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: ScintillaEdit, event: gen_qcoreevent.QEvent): bool =


  fScintillaEdit_virtualbase_event(self.h, event.h)

type ScintillaEditeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: ScintillaEdit, slot: proc(super: ScintillaEditeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_event(self: ptr cScintillaEdit, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_ScintillaEdit_event ".} =
  type Cb = proc(super: ScintillaEditeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(ScintillaEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_paintEvent(self: ScintillaEdit, event: gen_qevent.QPaintEvent): void =


  fScintillaEdit_virtualbase_paintEvent(self.h, event.h)

type ScintillaEditpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEditpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_paintEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_paintEvent ".} =
  type Cb = proc(super: ScintillaEditpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(ScintillaEdit(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: ScintillaEdit, event: gen_qevent.QWheelEvent): void =


  fScintillaEdit_virtualbase_wheelEvent(self.h, event.h)

type ScintillaEditwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEditwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_wheelEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_wheelEvent ".} =
  type Cb = proc(super: ScintillaEditwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(ScintillaEdit(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: ScintillaEdit, event: gen_qevent.QFocusEvent): void =


  fScintillaEdit_virtualbase_focusInEvent(self.h, event.h)

type ScintillaEditfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEditfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_focusInEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_focusInEvent ".} =
  type Cb = proc(super: ScintillaEditfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(ScintillaEdit(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: ScintillaEdit, event: gen_qevent.QFocusEvent): void =


  fScintillaEdit_virtualbase_focusOutEvent(self.h, event.h)

type ScintillaEditfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEditfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_focusOutEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_focusOutEvent ".} =
  type Cb = proc(super: ScintillaEditfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(ScintillaEdit(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: ScintillaEdit, event: gen_qevent.QResizeEvent): void =


  fScintillaEdit_virtualbase_resizeEvent(self.h, event.h)

type ScintillaEditresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEditresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_resizeEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_resizeEvent ".} =
  type Cb = proc(super: ScintillaEditresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(ScintillaEdit(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: ScintillaEdit, event: gen_qevent.QKeyEvent): void =


  fScintillaEdit_virtualbase_keyPressEvent(self.h, event.h)

type ScintillaEditkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEditkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_keyPressEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_keyPressEvent ".} =
  type Cb = proc(super: ScintillaEditkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(ScintillaEdit(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: ScintillaEdit, event: gen_qevent.QMouseEvent): void =


  fScintillaEdit_virtualbase_mousePressEvent(self.h, event.h)

type ScintillaEditmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEditmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_mousePressEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_mousePressEvent ".} =
  type Cb = proc(super: ScintillaEditmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(ScintillaEdit(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: ScintillaEdit, event: gen_qevent.QMouseEvent): void =


  fScintillaEdit_virtualbase_mouseReleaseEvent(self.h, event.h)

type ScintillaEditmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEditmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_mouseReleaseEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_mouseReleaseEvent ".} =
  type Cb = proc(super: ScintillaEditmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(ScintillaEdit(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: ScintillaEdit, event: gen_qevent.QMouseEvent): void =


  fScintillaEdit_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type ScintillaEditmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEditmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_mouseDoubleClickEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_mouseDoubleClickEvent ".} =
  type Cb = proc(super: ScintillaEditmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(ScintillaEdit(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: ScintillaEdit, event: gen_qevent.QMouseEvent): void =


  fScintillaEdit_virtualbase_mouseMoveEvent(self.h, event.h)

type ScintillaEditmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEditmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_mouseMoveEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_mouseMoveEvent ".} =
  type Cb = proc(super: ScintillaEditmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(ScintillaEdit(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: ScintillaEdit, event: gen_qevent.QContextMenuEvent): void =


  fScintillaEdit_virtualbase_contextMenuEvent(self.h, event.h)

type ScintillaEditcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEditcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_contextMenuEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_contextMenuEvent ".} =
  type Cb = proc(super: ScintillaEditcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(ScintillaEdit(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: ScintillaEdit, event: gen_qevent.QDragEnterEvent): void =


  fScintillaEdit_virtualbase_dragEnterEvent(self.h, event.h)

type ScintillaEditdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEditdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_dragEnterEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_dragEnterEvent ".} =
  type Cb = proc(super: ScintillaEditdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(ScintillaEdit(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: ScintillaEdit, event: gen_qevent.QDragLeaveEvent): void =


  fScintillaEdit_virtualbase_dragLeaveEvent(self.h, event.h)

type ScintillaEditdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEditdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_dragLeaveEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_dragLeaveEvent ".} =
  type Cb = proc(super: ScintillaEditdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(ScintillaEdit(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: ScintillaEdit, event: gen_qevent.QDragMoveEvent): void =


  fScintillaEdit_virtualbase_dragMoveEvent(self.h, event.h)

type ScintillaEditdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEditdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_dragMoveEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_dragMoveEvent ".} =
  type Cb = proc(super: ScintillaEditdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(ScintillaEdit(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: ScintillaEdit, event: gen_qevent.QDropEvent): void =


  fScintillaEdit_virtualbase_dropEvent(self.h, event.h)

type ScintillaEditdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEditdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_dropEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_dropEvent ".} =
  type Cb = proc(super: ScintillaEditdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(ScintillaEdit(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: ScintillaEdit, event: gen_qevent.QInputMethodEvent): void =


  fScintillaEdit_virtualbase_inputMethodEvent(self.h, event.h)

type ScintillaEditinputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEditinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_inputMethodEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_inputMethodEvent ".} =
  type Cb = proc(super: ScintillaEditinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(ScintillaEdit(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: ScintillaEdit, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fScintillaEdit_virtualbase_inputMethodQuery(self.h, cint(query)))

type ScintillaEditinputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: ScintillaEdit, slot: proc(super: ScintillaEditinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_inputMethodQuery(self: ptr cScintillaEdit, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_ScintillaEdit_inputMethodQuery ".} =
  type Cb = proc(super: ScintillaEditinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(ScintillaEdit(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_scrollContentsBy(self: ScintillaEdit, param1: cint, param2: cint): void =


  fScintillaEdit_virtualbase_scrollContentsBy(self.h, param1, param2)

type ScintillaEditscrollContentsByBase* = proc(param1: cint, param2: cint): void
proc onscrollContentsBy*(self: ScintillaEdit, slot: proc(super: ScintillaEditscrollContentsByBase, param1: cint, param2: cint): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditscrollContentsByBase, param1: cint, param2: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_scrollContentsBy(self: ptr cScintillaEdit, slot: int, param1: cint, param2: cint): void {.exportc: "miqt_exec_callback_ScintillaEdit_scrollContentsBy ".} =
  type Cb = proc(super: ScintillaEditscrollContentsByBase, param1: cint, param2: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint, param2: cint): auto =
    callVirtualBase_scrollContentsBy(ScintillaEdit(h: self), param1, param2)
  let slotval1 = param1

  let slotval2 = param2


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_minimumSizeHint(self: ScintillaEdit, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fScintillaEdit_virtualbase_minimumSizeHint(self.h))

type ScintillaEditminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: ScintillaEdit, slot: proc(super: ScintillaEditminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_minimumSizeHint(self: ptr cScintillaEdit, slot: int): pointer {.exportc: "miqt_exec_callback_ScintillaEdit_minimumSizeHint ".} =
  type Cb = proc(super: ScintillaEditminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(ScintillaEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_sizeHint(self: ScintillaEdit, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fScintillaEdit_virtualbase_sizeHint(self.h))

type ScintillaEditsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: ScintillaEdit, slot: proc(super: ScintillaEditsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_sizeHint(self: ptr cScintillaEdit, slot: int): pointer {.exportc: "miqt_exec_callback_ScintillaEdit_sizeHint ".} =
  type Cb = proc(super: ScintillaEditsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(ScintillaEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setupViewport(self: ScintillaEdit, viewport: gen_qwidget.QWidget): void =


  fScintillaEdit_virtualbase_setupViewport(self.h, viewport.h)

type ScintillaEditsetupViewportBase* = proc(viewport: gen_qwidget.QWidget): void
proc onsetupViewport*(self: ScintillaEdit, slot: proc(super: ScintillaEditsetupViewportBase, viewport: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditsetupViewportBase, viewport: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_setupViewport(self: ptr cScintillaEdit, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_setupViewport ".} =
  type Cb = proc(super: ScintillaEditsetupViewportBase, viewport: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(viewport: gen_qwidget.QWidget): auto =
    callVirtualBase_setupViewport(ScintillaEdit(h: self), viewport)
  let slotval1 = gen_qwidget.QWidget(h: viewport)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: ScintillaEdit, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =


  fScintillaEdit_virtualbase_eventFilter(self.h, param1.h, param2.h)

type ScintillaEditeventFilterBase* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: ScintillaEdit, slot: proc(super: ScintillaEditeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_eventFilter(self: ptr cScintillaEdit, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_ScintillaEdit_eventFilter ".} =
  type Cb = proc(super: ScintillaEditeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(ScintillaEdit(h: self), param1, param2)
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_viewportEvent(self: ScintillaEdit, param1: gen_qcoreevent.QEvent): bool =


  fScintillaEdit_virtualbase_viewportEvent(self.h, param1.h)

type ScintillaEditviewportEventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onviewportEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEditviewportEventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditviewportEventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_viewportEvent(self: ptr cScintillaEdit, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_ScintillaEdit_viewportEvent ".} =
  type Cb = proc(super: ScintillaEditviewportEventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_viewportEvent(ScintillaEdit(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_viewportSizeHint(self: ScintillaEdit, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fScintillaEdit_virtualbase_viewportSizeHint(self.h))

type ScintillaEditviewportSizeHintBase* = proc(): gen_qsize.QSize
proc onviewportSizeHint*(self: ScintillaEdit, slot: proc(super: ScintillaEditviewportSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditviewportSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_viewportSizeHint(self: ptr cScintillaEdit, slot: int): pointer {.exportc: "miqt_exec_callback_ScintillaEdit_viewportSizeHint ".} =
  type Cb = proc(super: ScintillaEditviewportSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_viewportSizeHint(ScintillaEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_changeEvent(self: ScintillaEdit, param1: gen_qcoreevent.QEvent): void =


  fScintillaEdit_virtualbase_changeEvent(self.h, param1.h)

type ScintillaEditchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEditchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_changeEvent(self: ptr cScintillaEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_changeEvent ".} =
  type Cb = proc(super: ScintillaEditchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(ScintillaEdit(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: ScintillaEdit, ): cint =


  fScintillaEdit_virtualbase_devType(self.h)

type ScintillaEditdevTypeBase* = proc(): cint
proc ondevType*(self: ScintillaEdit, slot: proc(super: ScintillaEditdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_devType(self: ptr cScintillaEdit, slot: int): cint {.exportc: "miqt_exec_callback_ScintillaEdit_devType ".} =
  type Cb = proc(super: ScintillaEditdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(ScintillaEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: ScintillaEdit, visible: bool): void =


  fScintillaEdit_virtualbase_setVisible(self.h, visible)

type ScintillaEditsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: ScintillaEdit, slot: proc(super: ScintillaEditsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_setVisible(self: ptr cScintillaEdit, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_ScintillaEdit_setVisible ".} =
  type Cb = proc(super: ScintillaEditsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(ScintillaEdit(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: ScintillaEdit, param1: cint): cint =


  fScintillaEdit_virtualbase_heightForWidth(self.h, param1)

type ScintillaEditheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: ScintillaEdit, slot: proc(super: ScintillaEditheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_heightForWidth(self: ptr cScintillaEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_ScintillaEdit_heightForWidth ".} =
  type Cb = proc(super: ScintillaEditheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(ScintillaEdit(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: ScintillaEdit, ): bool =


  fScintillaEdit_virtualbase_hasHeightForWidth(self.h)

type ScintillaEdithasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: ScintillaEdit, slot: proc(super: ScintillaEdithasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEdithasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_hasHeightForWidth(self: ptr cScintillaEdit, slot: int): bool {.exportc: "miqt_exec_callback_ScintillaEdit_hasHeightForWidth ".} =
  type Cb = proc(super: ScintillaEdithasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(ScintillaEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: ScintillaEdit, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fScintillaEdit_virtualbase_paintEngine(self.h))

type ScintillaEditpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: ScintillaEdit, slot: proc(super: ScintillaEditpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_paintEngine(self: ptr cScintillaEdit, slot: int): pointer {.exportc: "miqt_exec_callback_ScintillaEdit_paintEngine ".} =
  type Cb = proc(super: ScintillaEditpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(ScintillaEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_keyReleaseEvent(self: ScintillaEdit, event: gen_qevent.QKeyEvent): void =


  fScintillaEdit_virtualbase_keyReleaseEvent(self.h, event.h)

type ScintillaEditkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEditkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_keyReleaseEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_keyReleaseEvent ".} =
  type Cb = proc(super: ScintillaEditkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(ScintillaEdit(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: ScintillaEdit, event: gen_qcoreevent.QEvent): void =


  fScintillaEdit_virtualbase_enterEvent(self.h, event.h)

type ScintillaEditenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEditenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_enterEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_enterEvent ".} =
  type Cb = proc(super: ScintillaEditenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(ScintillaEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: ScintillaEdit, event: gen_qcoreevent.QEvent): void =


  fScintillaEdit_virtualbase_leaveEvent(self.h, event.h)

type ScintillaEditleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEditleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_leaveEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_leaveEvent ".} =
  type Cb = proc(super: ScintillaEditleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(ScintillaEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: ScintillaEdit, event: gen_qevent.QMoveEvent): void =


  fScintillaEdit_virtualbase_moveEvent(self.h, event.h)

type ScintillaEditmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEditmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_moveEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_moveEvent ".} =
  type Cb = proc(super: ScintillaEditmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(ScintillaEdit(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: ScintillaEdit, event: gen_qevent.QCloseEvent): void =


  fScintillaEdit_virtualbase_closeEvent(self.h, event.h)

type ScintillaEditcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEditcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_closeEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_closeEvent ".} =
  type Cb = proc(super: ScintillaEditcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(ScintillaEdit(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: ScintillaEdit, event: gen_qevent.QTabletEvent): void =


  fScintillaEdit_virtualbase_tabletEvent(self.h, event.h)

type ScintillaEdittabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEdittabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEdittabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_tabletEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_tabletEvent ".} =
  type Cb = proc(super: ScintillaEdittabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(ScintillaEdit(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: ScintillaEdit, event: gen_qevent.QActionEvent): void =


  fScintillaEdit_virtualbase_actionEvent(self.h, event.h)

type ScintillaEditactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEditactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_actionEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_actionEvent ".} =
  type Cb = proc(super: ScintillaEditactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(ScintillaEdit(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: ScintillaEdit, event: gen_qevent.QShowEvent): void =


  fScintillaEdit_virtualbase_showEvent(self.h, event.h)

type ScintillaEditshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEditshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_showEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_showEvent ".} =
  type Cb = proc(super: ScintillaEditshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(ScintillaEdit(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: ScintillaEdit, event: gen_qevent.QHideEvent): void =


  fScintillaEdit_virtualbase_hideEvent(self.h, event.h)

type ScintillaEdithideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEdithideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEdithideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_hideEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_hideEvent ".} =
  type Cb = proc(super: ScintillaEdithideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(ScintillaEdit(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: ScintillaEdit, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fScintillaEdit_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type ScintillaEditnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEditnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_nativeEvent(self: ptr cScintillaEdit, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_ScintillaEdit_nativeEvent ".} =
  type Cb = proc(super: ScintillaEditnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(ScintillaEdit(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: ScintillaEdit, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fScintillaEdit_virtualbase_metric(self.h, cint(param1))

type ScintillaEditmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: ScintillaEdit, slot: proc(super: ScintillaEditmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_metric(self: ptr cScintillaEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_ScintillaEdit_metric ".} =
  type Cb = proc(super: ScintillaEditmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(ScintillaEdit(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: ScintillaEdit, painter: gen_qpainter.QPainter): void =


  fScintillaEdit_virtualbase_initPainter(self.h, painter.h)

type ScintillaEditinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: ScintillaEdit, slot: proc(super: ScintillaEditinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_initPainter(self: ptr cScintillaEdit, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_initPainter ".} =
  type Cb = proc(super: ScintillaEditinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(ScintillaEdit(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: ScintillaEdit, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fScintillaEdit_virtualbase_redirected(self.h, offset.h))

type ScintillaEditredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: ScintillaEdit, slot: proc(super: ScintillaEditredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_redirected(self: ptr cScintillaEdit, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_ScintillaEdit_redirected ".} =
  type Cb = proc(super: ScintillaEditredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(ScintillaEdit(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: ScintillaEdit, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fScintillaEdit_virtualbase_sharedPainter(self.h))

type ScintillaEditsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: ScintillaEdit, slot: proc(super: ScintillaEditsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_sharedPainter(self: ptr cScintillaEdit, slot: int): pointer {.exportc: "miqt_exec_callback_ScintillaEdit_sharedPainter ".} =
  type Cb = proc(super: ScintillaEditsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(ScintillaEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: ScintillaEdit, next: bool): bool =


  fScintillaEdit_virtualbase_focusNextPrevChild(self.h, next)

type ScintillaEditfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: ScintillaEdit, slot: proc(super: ScintillaEditfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_focusNextPrevChild(self: ptr cScintillaEdit, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_ScintillaEdit_focusNextPrevChild ".} =
  type Cb = proc(super: ScintillaEditfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(ScintillaEdit(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_timerEvent(self: ScintillaEdit, event: gen_qcoreevent.QTimerEvent): void =


  fScintillaEdit_virtualbase_timerEvent(self.h, event.h)

type ScintillaEdittimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEdittimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEdittimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_timerEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_timerEvent ".} =
  type Cb = proc(super: ScintillaEdittimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(ScintillaEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: ScintillaEdit, event: gen_qcoreevent.QChildEvent): void =


  fScintillaEdit_virtualbase_childEvent(self.h, event.h)

type ScintillaEditchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEditchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_childEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_childEvent ".} =
  type Cb = proc(super: ScintillaEditchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(ScintillaEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: ScintillaEdit, event: gen_qcoreevent.QEvent): void =


  fScintillaEdit_virtualbase_customEvent(self.h, event.h)

type ScintillaEditcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: ScintillaEdit, slot: proc(super: ScintillaEditcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_customEvent(self: ptr cScintillaEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_customEvent ".} =
  type Cb = proc(super: ScintillaEditcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(ScintillaEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: ScintillaEdit, signal: gen_qmetaobject.QMetaMethod): void =


  fScintillaEdit_virtualbase_connectNotify(self.h, signal.h)

type ScintillaEditconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: ScintillaEdit, slot: proc(super: ScintillaEditconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_connectNotify(self: ptr cScintillaEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_connectNotify ".} =
  type Cb = proc(super: ScintillaEditconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(ScintillaEdit(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: ScintillaEdit, signal: gen_qmetaobject.QMetaMethod): void =


  fScintillaEdit_virtualbase_disconnectNotify(self.h, signal.h)

type ScintillaEditdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: ScintillaEdit, slot: proc(super: ScintillaEditdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: ScintillaEditdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcScintillaEdit_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_ScintillaEdit_disconnectNotify(self: ptr cScintillaEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_ScintillaEdit_disconnectNotify ".} =
  type Cb = proc(super: ScintillaEditdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(ScintillaEdit(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: ScintillaEdit) =
  fcScintillaEdit_delete(self.h)
