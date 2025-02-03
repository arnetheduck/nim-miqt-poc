import Qt5Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5Widgets")
{.compile("gen_qtextformat.cpp", cflags).}


type QTextLengthType* = cint
const
  QTextLengthVariableLength* = 0
  QTextLengthFixedLength* = 1
  QTextLengthPercentageLength* = 2



type QTextFormatFormatType* = cint
const
  QTextFormatInvalidFormat* = -1
  QTextFormatBlockFormat* = 1
  QTextFormatCharFormat* = 2
  QTextFormatListFormat* = 3
  QTextFormatTableFormat* = 4
  QTextFormatFrameFormat* = 5
  QTextFormatUserFormat* = 100



type QTextFormatProperty* = cint
const
  QTextFormatObjectIndex* = 0
  QTextFormatCssFloat* = 2048
  QTextFormatLayoutDirection* = 2049
  QTextFormatOutlinePen* = 2064
  QTextFormatBackgroundBrush* = 2080
  QTextFormatForegroundBrush* = 2081
  QTextFormatBackgroundImageUrl* = 2083
  QTextFormatBlockAlignment* = 4112
  QTextFormatBlockTopMargin* = 4144
  QTextFormatBlockBottomMargin* = 4145
  QTextFormatBlockLeftMargin* = 4146
  QTextFormatBlockRightMargin* = 4147
  QTextFormatTextIndent* = 4148
  QTextFormatTabPositions* = 4149
  QTextFormatBlockIndent* = 4160
  QTextFormatLineHeight* = 4168
  QTextFormatLineHeightType* = 4169
  QTextFormatBlockNonBreakableLines* = 4176
  QTextFormatBlockTrailingHorizontalRulerWidth* = 4192
  QTextFormatHeadingLevel* = 4208
  QTextFormatBlockQuoteLevel* = 4224
  QTextFormatBlockCodeLanguage* = 4240
  QTextFormatBlockCodeFence* = 4241
  QTextFormatBlockMarker* = 4256
  QTextFormatFirstFontProperty* = 8160
  QTextFormatFontCapitalization* = 8160
  QTextFormatFontLetterSpacingType* = 8243
  QTextFormatFontLetterSpacing* = 8161
  QTextFormatFontWordSpacing* = 8162
  QTextFormatFontStretch* = 8244
  QTextFormatFontStyleHint* = 8163
  QTextFormatFontStyleStrategy* = 8164
  QTextFormatFontKerning* = 8165
  QTextFormatFontHintingPreference* = 8166
  QTextFormatFontFamilies* = 8167
  QTextFormatFontStyleName* = 8168
  QTextFormatFontFamily* = 8192
  QTextFormatFontPointSize* = 8193
  QTextFormatFontSizeAdjustment* = 8194
  QTextFormatFontSizeIncrement* = 8194
  QTextFormatFontWeight* = 8195
  QTextFormatFontItalic* = 8196
  QTextFormatFontUnderline* = 8197
  QTextFormatFontOverline* = 8198
  QTextFormatFontStrikeOut* = 8199
  QTextFormatFontFixedPitch* = 8200
  QTextFormatFontPixelSize* = 8201
  QTextFormatLastFontProperty* = 8201
  QTextFormatTextUnderlineColor* = 8208
  QTextFormatTextVerticalAlignment* = 8225
  QTextFormatTextOutline* = 8226
  QTextFormatTextUnderlineStyle* = 8227
  QTextFormatTextToolTip* = 8228
  QTextFormatIsAnchor* = 8240
  QTextFormatAnchorHref* = 8241
  QTextFormatAnchorName* = 8242
  QTextFormatObjectType* = 12032
  QTextFormatListStyle* = 12288
  QTextFormatListIndent* = 12289
  QTextFormatListNumberPrefix* = 12290
  QTextFormatListNumberSuffix* = 12291
  QTextFormatFrameBorder* = 16384
  QTextFormatFrameMargin* = 16385
  QTextFormatFramePadding* = 16386
  QTextFormatFrameWidth* = 16387
  QTextFormatFrameHeight* = 16388
  QTextFormatFrameTopMargin* = 16389
  QTextFormatFrameBottomMargin* = 16390
  QTextFormatFrameLeftMargin* = 16391
  QTextFormatFrameRightMargin* = 16392
  QTextFormatFrameBorderBrush* = 16393
  QTextFormatFrameBorderStyle* = 16400
  QTextFormatTableColumns* = 16640
  QTextFormatTableColumnWidthConstraints* = 16641
  QTextFormatTableCellSpacing* = 16642
  QTextFormatTableCellPadding* = 16643
  QTextFormatTableHeaderRowCount* = 16644
  QTextFormatTableBorderCollapse* = 16645
  QTextFormatTableCellRowSpan* = 18448
  QTextFormatTableCellColumnSpan* = 18449
  QTextFormatTableCellTopPadding* = 18450
  QTextFormatTableCellBottomPadding* = 18451
  QTextFormatTableCellLeftPadding* = 18452
  QTextFormatTableCellRightPadding* = 18453
  QTextFormatTableCellTopBorder* = 18454
  QTextFormatTableCellBottomBorder* = 18455
  QTextFormatTableCellLeftBorder* = 18456
  QTextFormatTableCellRightBorder* = 18457
  QTextFormatTableCellTopBorderStyle* = 18458
  QTextFormatTableCellBottomBorderStyle* = 18459
  QTextFormatTableCellLeftBorderStyle* = 18460
  QTextFormatTableCellRightBorderStyle* = 18461
  QTextFormatTableCellTopBorderBrush* = 18462
  QTextFormatTableCellBottomBorderBrush* = 18463
  QTextFormatTableCellLeftBorderBrush* = 18464
  QTextFormatTableCellRightBorderBrush* = 18465
  QTextFormatImageName* = 20480
  QTextFormatImageTitle* = 20481
  QTextFormatImageAltText* = 20482
  QTextFormatImageWidth* = 20496
  QTextFormatImageHeight* = 20497
  QTextFormatImageQuality* = 20500
  QTextFormatFullWidthSelection* = 24576
  QTextFormatPageBreakPolicy* = 28672
  QTextFormatUserProperty* = 1048576



type QTextFormatObjectTypes* = cint
const
  QTextFormatNoObject* = 0
  QTextFormatImageObject* = 1
  QTextFormatTableObject* = 2
  QTextFormatTableCellObject* = 3
  QTextFormatUserObject* = 4096



type QTextFormatPageBreakFlag* = cint
const
  QTextFormatPageBreak_Auto* = 0
  QTextFormatPageBreak_AlwaysBefore* = 1
  QTextFormatPageBreak_AlwaysAfter* = 16



type QTextCharFormatVerticalAlignment* = cint
const
  QTextCharFormatAlignNormal* = 0
  QTextCharFormatAlignSuperScript* = 1
  QTextCharFormatAlignSubScript* = 2
  QTextCharFormatAlignMiddle* = 3
  QTextCharFormatAlignTop* = 4
  QTextCharFormatAlignBottom* = 5
  QTextCharFormatAlignBaseline* = 6



type QTextCharFormatUnderlineStyle* = cint
const
  QTextCharFormatNoUnderline* = 0
  QTextCharFormatSingleUnderline* = 1
  QTextCharFormatDashUnderline* = 2
  QTextCharFormatDotLine* = 3
  QTextCharFormatDashDotLine* = 4
  QTextCharFormatDashDotDotLine* = 5
  QTextCharFormatWaveUnderline* = 6
  QTextCharFormatSpellCheckUnderline* = 7



type QTextCharFormatFontPropertiesInheritanceBehavior* = cint
const
  QTextCharFormatFontPropertiesSpecifiedOnly* = 0
  QTextCharFormatFontPropertiesAll* = 1



type QTextBlockFormatLineHeightTypes* = cint
const
  QTextBlockFormatSingleHeight* = 0
  QTextBlockFormatProportionalHeight* = 1
  QTextBlockFormatFixedHeight* = 2
  QTextBlockFormatMinimumHeight* = 3
  QTextBlockFormatLineDistanceHeight* = 4



type QTextBlockFormatMarkerType* = cint
const
  QTextBlockFormatNoMarker* = 0
  QTextBlockFormatUnchecked* = 1
  QTextBlockFormatChecked* = 2



type QTextListFormatStyle* = cint
const
  QTextListFormatListDisc* = -1
  QTextListFormatListCircle* = -2
  QTextListFormatListSquare* = -3
  QTextListFormatListDecimal* = -4
  QTextListFormatListLowerAlpha* = -5
  QTextListFormatListUpperAlpha* = -6
  QTextListFormatListLowerRoman* = -7
  QTextListFormatListUpperRoman* = -8
  QTextListFormatListStyleUndefined* = 0



type QTextFrameFormatPosition* = cint
const
  QTextFrameFormatInFlow* = 0
  QTextFrameFormatFloatLeft* = 1
  QTextFrameFormatFloatRight* = 2



type QTextFrameFormatBorderStyle* = cint
const
  QTextFrameFormatBorderStyle_None* = 0
  QTextFrameFormatBorderStyle_Dotted* = 1
  QTextFrameFormatBorderStyle_Dashed* = 2
  QTextFrameFormatBorderStyle_Solid* = 3
  QTextFrameFormatBorderStyle_Double* = 4
  QTextFrameFormatBorderStyle_DotDash* = 5
  QTextFrameFormatBorderStyle_DotDotDash* = 6
  QTextFrameFormatBorderStyle_Groove* = 7
  QTextFrameFormatBorderStyle_Ridge* = 8
  QTextFrameFormatBorderStyle_Inset* = 9
  QTextFrameFormatBorderStyle_Outset* = 10



import gen_qtextformat_types
export gen_qtextformat_types

import
  gen_qbrush,
  gen_qcolor,
  gen_qfont,
  gen_qnamespace,
  gen_qpen,
  gen_qtextoption,
  gen_qvariant,
  std/tables
export
  gen_qbrush,
  gen_qcolor,
  gen_qfont,
  gen_qnamespace,
  gen_qpen,
  gen_qtextoption,
  gen_qvariant

type cQTextLength*{.exportc: "QTextLength", incompleteStruct.} = object
type cQTextFormat*{.exportc: "QTextFormat", incompleteStruct.} = object
type cQTextCharFormat*{.exportc: "QTextCharFormat", incompleteStruct.} = object
type cQTextBlockFormat*{.exportc: "QTextBlockFormat", incompleteStruct.} = object
type cQTextListFormat*{.exportc: "QTextListFormat", incompleteStruct.} = object
type cQTextImageFormat*{.exportc: "QTextImageFormat", incompleteStruct.} = object
type cQTextFrameFormat*{.exportc: "QTextFrameFormat", incompleteStruct.} = object
type cQTextTableFormat*{.exportc: "QTextTableFormat", incompleteStruct.} = object
type cQTextTableCellFormat*{.exportc: "QTextTableCellFormat", incompleteStruct.} = object

proc fcQTextLength_new(): ptr cQTextLength {.importc: "QTextLength_new".}
proc fcQTextLength_new2(typeVal: cint, value: float64): ptr cQTextLength {.importc: "QTextLength_new2".}
proc fcQTextLength_new3(param1: pointer): ptr cQTextLength {.importc: "QTextLength_new3".}
proc fcQTextLength_typeX(self: pointer, ): cint {.importc: "QTextLength_type".}
proc fcQTextLength_value(self: pointer, maximumLength: float64): float64 {.importc: "QTextLength_value".}
proc fcQTextLength_rawValue(self: pointer, ): float64 {.importc: "QTextLength_rawValue".}
proc fcQTextLength_operatorEqual(self: pointer, other: pointer): bool {.importc: "QTextLength_operatorEqual".}
proc fcQTextLength_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QTextLength_operatorNotEqual".}
proc fcQTextLength_ToQVariant(self: pointer, ): pointer {.importc: "QTextLength_ToQVariant".}
proc fcQTextLength_delete(self: pointer) {.importc: "QTextLength_delete".}
proc fcQTextFormat_new(): ptr cQTextFormat {.importc: "QTextFormat_new".}
proc fcQTextFormat_new2(typeVal: cint): ptr cQTextFormat {.importc: "QTextFormat_new2".}
proc fcQTextFormat_new3(rhs: pointer): ptr cQTextFormat {.importc: "QTextFormat_new3".}
proc fcQTextFormat_operatorAssign(self: pointer, rhs: pointer): void {.importc: "QTextFormat_operatorAssign".}
proc fcQTextFormat_swap(self: pointer, other: pointer): void {.importc: "QTextFormat_swap".}
proc fcQTextFormat_merge(self: pointer, other: pointer): void {.importc: "QTextFormat_merge".}
proc fcQTextFormat_isValid(self: pointer, ): bool {.importc: "QTextFormat_isValid".}
proc fcQTextFormat_isEmpty(self: pointer, ): bool {.importc: "QTextFormat_isEmpty".}
proc fcQTextFormat_typeX(self: pointer, ): cint {.importc: "QTextFormat_type".}
proc fcQTextFormat_objectIndex(self: pointer, ): cint {.importc: "QTextFormat_objectIndex".}
proc fcQTextFormat_setObjectIndex(self: pointer, objectVal: cint): void {.importc: "QTextFormat_setObjectIndex".}
proc fcQTextFormat_property(self: pointer, propertyId: cint): pointer {.importc: "QTextFormat_property".}
proc fcQTextFormat_setProperty(self: pointer, propertyId: cint, value: pointer): void {.importc: "QTextFormat_setProperty".}
proc fcQTextFormat_clearProperty(self: pointer, propertyId: cint): void {.importc: "QTextFormat_clearProperty".}
proc fcQTextFormat_hasProperty(self: pointer, propertyId: cint): bool {.importc: "QTextFormat_hasProperty".}
proc fcQTextFormat_boolProperty(self: pointer, propertyId: cint): bool {.importc: "QTextFormat_boolProperty".}
proc fcQTextFormat_intProperty(self: pointer, propertyId: cint): cint {.importc: "QTextFormat_intProperty".}
proc fcQTextFormat_doubleProperty(self: pointer, propertyId: cint): float64 {.importc: "QTextFormat_doubleProperty".}
proc fcQTextFormat_stringProperty(self: pointer, propertyId: cint): struct_miqt_string {.importc: "QTextFormat_stringProperty".}
proc fcQTextFormat_colorProperty(self: pointer, propertyId: cint): pointer {.importc: "QTextFormat_colorProperty".}
proc fcQTextFormat_penProperty(self: pointer, propertyId: cint): pointer {.importc: "QTextFormat_penProperty".}
proc fcQTextFormat_brushProperty(self: pointer, propertyId: cint): pointer {.importc: "QTextFormat_brushProperty".}
proc fcQTextFormat_lengthProperty(self: pointer, propertyId: cint): pointer {.importc: "QTextFormat_lengthProperty".}
proc fcQTextFormat_lengthVectorProperty(self: pointer, propertyId: cint): struct_miqt_array {.importc: "QTextFormat_lengthVectorProperty".}
proc fcQTextFormat_setProperty2(self: pointer, propertyId: cint, lengths: struct_miqt_array): void {.importc: "QTextFormat_setProperty2".}
proc fcQTextFormat_properties(self: pointer, ): struct_miqt_map {.importc: "QTextFormat_properties".}
proc fcQTextFormat_propertyCount(self: pointer, ): cint {.importc: "QTextFormat_propertyCount".}
proc fcQTextFormat_setObjectType(self: pointer, typeVal: cint): void {.importc: "QTextFormat_setObjectType".}
proc fcQTextFormat_objectType(self: pointer, ): cint {.importc: "QTextFormat_objectType".}
proc fcQTextFormat_isCharFormat(self: pointer, ): bool {.importc: "QTextFormat_isCharFormat".}
proc fcQTextFormat_isBlockFormat(self: pointer, ): bool {.importc: "QTextFormat_isBlockFormat".}
proc fcQTextFormat_isListFormat(self: pointer, ): bool {.importc: "QTextFormat_isListFormat".}
proc fcQTextFormat_isFrameFormat(self: pointer, ): bool {.importc: "QTextFormat_isFrameFormat".}
proc fcQTextFormat_isImageFormat(self: pointer, ): bool {.importc: "QTextFormat_isImageFormat".}
proc fcQTextFormat_isTableFormat(self: pointer, ): bool {.importc: "QTextFormat_isTableFormat".}
proc fcQTextFormat_isTableCellFormat(self: pointer, ): bool {.importc: "QTextFormat_isTableCellFormat".}
proc fcQTextFormat_toBlockFormat(self: pointer, ): pointer {.importc: "QTextFormat_toBlockFormat".}
proc fcQTextFormat_toCharFormat(self: pointer, ): pointer {.importc: "QTextFormat_toCharFormat".}
proc fcQTextFormat_toListFormat(self: pointer, ): pointer {.importc: "QTextFormat_toListFormat".}
proc fcQTextFormat_toTableFormat(self: pointer, ): pointer {.importc: "QTextFormat_toTableFormat".}
proc fcQTextFormat_toFrameFormat(self: pointer, ): pointer {.importc: "QTextFormat_toFrameFormat".}
proc fcQTextFormat_toImageFormat(self: pointer, ): pointer {.importc: "QTextFormat_toImageFormat".}
proc fcQTextFormat_toTableCellFormat(self: pointer, ): pointer {.importc: "QTextFormat_toTableCellFormat".}
proc fcQTextFormat_operatorEqual(self: pointer, rhs: pointer): bool {.importc: "QTextFormat_operatorEqual".}
proc fcQTextFormat_operatorNotEqual(self: pointer, rhs: pointer): bool {.importc: "QTextFormat_operatorNotEqual".}
proc fcQTextFormat_ToQVariant(self: pointer, ): pointer {.importc: "QTextFormat_ToQVariant".}
proc fcQTextFormat_setLayoutDirection(self: pointer, direction: cint): void {.importc: "QTextFormat_setLayoutDirection".}
proc fcQTextFormat_layoutDirection(self: pointer, ): cint {.importc: "QTextFormat_layoutDirection".}
proc fcQTextFormat_setBackground(self: pointer, brush: pointer): void {.importc: "QTextFormat_setBackground".}
proc fcQTextFormat_background(self: pointer, ): pointer {.importc: "QTextFormat_background".}
proc fcQTextFormat_clearBackground(self: pointer, ): void {.importc: "QTextFormat_clearBackground".}
proc fcQTextFormat_setForeground(self: pointer, brush: pointer): void {.importc: "QTextFormat_setForeground".}
proc fcQTextFormat_foreground(self: pointer, ): pointer {.importc: "QTextFormat_foreground".}
proc fcQTextFormat_clearForeground(self: pointer, ): void {.importc: "QTextFormat_clearForeground".}
proc fcQTextFormat_delete(self: pointer) {.importc: "QTextFormat_delete".}
proc fcQTextCharFormat_new(): ptr cQTextCharFormat {.importc: "QTextCharFormat_new".}
proc fcQTextCharFormat_new2(param1: pointer): ptr cQTextCharFormat {.importc: "QTextCharFormat_new2".}
proc fcQTextCharFormat_isValid(self: pointer, ): bool {.importc: "QTextCharFormat_isValid".}
proc fcQTextCharFormat_setFont(self: pointer, font: pointer, behavior: cint): void {.importc: "QTextCharFormat_setFont".}
proc fcQTextCharFormat_setFontWithFont(self: pointer, font: pointer): void {.importc: "QTextCharFormat_setFontWithFont".}
proc fcQTextCharFormat_font(self: pointer, ): pointer {.importc: "QTextCharFormat_font".}
proc fcQTextCharFormat_setFontFamily(self: pointer, family: struct_miqt_string): void {.importc: "QTextCharFormat_setFontFamily".}
proc fcQTextCharFormat_fontFamily(self: pointer, ): struct_miqt_string {.importc: "QTextCharFormat_fontFamily".}
proc fcQTextCharFormat_setFontFamilies(self: pointer, families: struct_miqt_array): void {.importc: "QTextCharFormat_setFontFamilies".}
proc fcQTextCharFormat_fontFamilies(self: pointer, ): pointer {.importc: "QTextCharFormat_fontFamilies".}
proc fcQTextCharFormat_setFontStyleName(self: pointer, styleName: struct_miqt_string): void {.importc: "QTextCharFormat_setFontStyleName".}
proc fcQTextCharFormat_fontStyleName(self: pointer, ): pointer {.importc: "QTextCharFormat_fontStyleName".}
proc fcQTextCharFormat_setFontPointSize(self: pointer, size: float64): void {.importc: "QTextCharFormat_setFontPointSize".}
proc fcQTextCharFormat_fontPointSize(self: pointer, ): float64 {.importc: "QTextCharFormat_fontPointSize".}
proc fcQTextCharFormat_setFontWeight(self: pointer, weight: cint): void {.importc: "QTextCharFormat_setFontWeight".}
proc fcQTextCharFormat_fontWeight(self: pointer, ): cint {.importc: "QTextCharFormat_fontWeight".}
proc fcQTextCharFormat_setFontItalic(self: pointer, italic: bool): void {.importc: "QTextCharFormat_setFontItalic".}
proc fcQTextCharFormat_fontItalic(self: pointer, ): bool {.importc: "QTextCharFormat_fontItalic".}
proc fcQTextCharFormat_setFontCapitalization(self: pointer, capitalization: cint): void {.importc: "QTextCharFormat_setFontCapitalization".}
proc fcQTextCharFormat_fontCapitalization(self: pointer, ): cint {.importc: "QTextCharFormat_fontCapitalization".}
proc fcQTextCharFormat_setFontLetterSpacingType(self: pointer, letterSpacingType: cint): void {.importc: "QTextCharFormat_setFontLetterSpacingType".}
proc fcQTextCharFormat_fontLetterSpacingType(self: pointer, ): cint {.importc: "QTextCharFormat_fontLetterSpacingType".}
proc fcQTextCharFormat_setFontLetterSpacing(self: pointer, spacing: float64): void {.importc: "QTextCharFormat_setFontLetterSpacing".}
proc fcQTextCharFormat_fontLetterSpacing(self: pointer, ): float64 {.importc: "QTextCharFormat_fontLetterSpacing".}
proc fcQTextCharFormat_setFontWordSpacing(self: pointer, spacing: float64): void {.importc: "QTextCharFormat_setFontWordSpacing".}
proc fcQTextCharFormat_fontWordSpacing(self: pointer, ): float64 {.importc: "QTextCharFormat_fontWordSpacing".}
proc fcQTextCharFormat_setFontUnderline(self: pointer, underline: bool): void {.importc: "QTextCharFormat_setFontUnderline".}
proc fcQTextCharFormat_fontUnderline(self: pointer, ): bool {.importc: "QTextCharFormat_fontUnderline".}
proc fcQTextCharFormat_setFontOverline(self: pointer, overline: bool): void {.importc: "QTextCharFormat_setFontOverline".}
proc fcQTextCharFormat_fontOverline(self: pointer, ): bool {.importc: "QTextCharFormat_fontOverline".}
proc fcQTextCharFormat_setFontStrikeOut(self: pointer, strikeOut: bool): void {.importc: "QTextCharFormat_setFontStrikeOut".}
proc fcQTextCharFormat_fontStrikeOut(self: pointer, ): bool {.importc: "QTextCharFormat_fontStrikeOut".}
proc fcQTextCharFormat_setUnderlineColor(self: pointer, color: pointer): void {.importc: "QTextCharFormat_setUnderlineColor".}
proc fcQTextCharFormat_underlineColor(self: pointer, ): pointer {.importc: "QTextCharFormat_underlineColor".}
proc fcQTextCharFormat_setFontFixedPitch(self: pointer, fixedPitch: bool): void {.importc: "QTextCharFormat_setFontFixedPitch".}
proc fcQTextCharFormat_fontFixedPitch(self: pointer, ): bool {.importc: "QTextCharFormat_fontFixedPitch".}
proc fcQTextCharFormat_setFontStretch(self: pointer, factor: cint): void {.importc: "QTextCharFormat_setFontStretch".}
proc fcQTextCharFormat_fontStretch(self: pointer, ): cint {.importc: "QTextCharFormat_fontStretch".}
proc fcQTextCharFormat_setFontStyleHint(self: pointer, hint: cint): void {.importc: "QTextCharFormat_setFontStyleHint".}
proc fcQTextCharFormat_setFontStyleStrategy(self: pointer, strategy: cint): void {.importc: "QTextCharFormat_setFontStyleStrategy".}
proc fcQTextCharFormat_fontStyleHint(self: pointer, ): cint {.importc: "QTextCharFormat_fontStyleHint".}
proc fcQTextCharFormat_fontStyleStrategy(self: pointer, ): cint {.importc: "QTextCharFormat_fontStyleStrategy".}
proc fcQTextCharFormat_setFontHintingPreference(self: pointer, hintingPreference: cint): void {.importc: "QTextCharFormat_setFontHintingPreference".}
proc fcQTextCharFormat_fontHintingPreference(self: pointer, ): cint {.importc: "QTextCharFormat_fontHintingPreference".}
proc fcQTextCharFormat_setFontKerning(self: pointer, enable: bool): void {.importc: "QTextCharFormat_setFontKerning".}
proc fcQTextCharFormat_fontKerning(self: pointer, ): bool {.importc: "QTextCharFormat_fontKerning".}
proc fcQTextCharFormat_setUnderlineStyle(self: pointer, style: cint): void {.importc: "QTextCharFormat_setUnderlineStyle".}
proc fcQTextCharFormat_underlineStyle(self: pointer, ): cint {.importc: "QTextCharFormat_underlineStyle".}
proc fcQTextCharFormat_setVerticalAlignment(self: pointer, alignment: cint): void {.importc: "QTextCharFormat_setVerticalAlignment".}
proc fcQTextCharFormat_verticalAlignment(self: pointer, ): cint {.importc: "QTextCharFormat_verticalAlignment".}
proc fcQTextCharFormat_setTextOutline(self: pointer, pen: pointer): void {.importc: "QTextCharFormat_setTextOutline".}
proc fcQTextCharFormat_textOutline(self: pointer, ): pointer {.importc: "QTextCharFormat_textOutline".}
proc fcQTextCharFormat_setToolTip(self: pointer, tip: struct_miqt_string): void {.importc: "QTextCharFormat_setToolTip".}
proc fcQTextCharFormat_toolTip(self: pointer, ): struct_miqt_string {.importc: "QTextCharFormat_toolTip".}
proc fcQTextCharFormat_setAnchor(self: pointer, anchor: bool): void {.importc: "QTextCharFormat_setAnchor".}
proc fcQTextCharFormat_isAnchor(self: pointer, ): bool {.importc: "QTextCharFormat_isAnchor".}
proc fcQTextCharFormat_setAnchorHref(self: pointer, value: struct_miqt_string): void {.importc: "QTextCharFormat_setAnchorHref".}
proc fcQTextCharFormat_anchorHref(self: pointer, ): struct_miqt_string {.importc: "QTextCharFormat_anchorHref".}
proc fcQTextCharFormat_setAnchorName(self: pointer, name: struct_miqt_string): void {.importc: "QTextCharFormat_setAnchorName".}
proc fcQTextCharFormat_anchorName(self: pointer, ): struct_miqt_string {.importc: "QTextCharFormat_anchorName".}
proc fcQTextCharFormat_setAnchorNames(self: pointer, names: struct_miqt_array): void {.importc: "QTextCharFormat_setAnchorNames".}
proc fcQTextCharFormat_anchorNames(self: pointer, ): struct_miqt_array {.importc: "QTextCharFormat_anchorNames".}
proc fcQTextCharFormat_setTableCellRowSpan(self: pointer, tableCellRowSpan: cint): void {.importc: "QTextCharFormat_setTableCellRowSpan".}
proc fcQTextCharFormat_tableCellRowSpan(self: pointer, ): cint {.importc: "QTextCharFormat_tableCellRowSpan".}
proc fcQTextCharFormat_setTableCellColumnSpan(self: pointer, tableCellColumnSpan: cint): void {.importc: "QTextCharFormat_setTableCellColumnSpan".}
proc fcQTextCharFormat_tableCellColumnSpan(self: pointer, ): cint {.importc: "QTextCharFormat_tableCellColumnSpan".}
proc fcQTextCharFormat_setFontStyleHint2(self: pointer, hint: cint, strategy: cint): void {.importc: "QTextCharFormat_setFontStyleHint2".}
proc fcQTextCharFormat_delete(self: pointer) {.importc: "QTextCharFormat_delete".}
proc fcQTextBlockFormat_new(): ptr cQTextBlockFormat {.importc: "QTextBlockFormat_new".}
proc fcQTextBlockFormat_new2(param1: pointer): ptr cQTextBlockFormat {.importc: "QTextBlockFormat_new2".}
proc fcQTextBlockFormat_isValid(self: pointer, ): bool {.importc: "QTextBlockFormat_isValid".}
proc fcQTextBlockFormat_setAlignment(self: pointer, alignment: cint): void {.importc: "QTextBlockFormat_setAlignment".}
proc fcQTextBlockFormat_alignment(self: pointer, ): cint {.importc: "QTextBlockFormat_alignment".}
proc fcQTextBlockFormat_setTopMargin(self: pointer, margin: float64): void {.importc: "QTextBlockFormat_setTopMargin".}
proc fcQTextBlockFormat_topMargin(self: pointer, ): float64 {.importc: "QTextBlockFormat_topMargin".}
proc fcQTextBlockFormat_setBottomMargin(self: pointer, margin: float64): void {.importc: "QTextBlockFormat_setBottomMargin".}
proc fcQTextBlockFormat_bottomMargin(self: pointer, ): float64 {.importc: "QTextBlockFormat_bottomMargin".}
proc fcQTextBlockFormat_setLeftMargin(self: pointer, margin: float64): void {.importc: "QTextBlockFormat_setLeftMargin".}
proc fcQTextBlockFormat_leftMargin(self: pointer, ): float64 {.importc: "QTextBlockFormat_leftMargin".}
proc fcQTextBlockFormat_setRightMargin(self: pointer, margin: float64): void {.importc: "QTextBlockFormat_setRightMargin".}
proc fcQTextBlockFormat_rightMargin(self: pointer, ): float64 {.importc: "QTextBlockFormat_rightMargin".}
proc fcQTextBlockFormat_setTextIndent(self: pointer, aindent: float64): void {.importc: "QTextBlockFormat_setTextIndent".}
proc fcQTextBlockFormat_textIndent(self: pointer, ): float64 {.importc: "QTextBlockFormat_textIndent".}
proc fcQTextBlockFormat_setIndent(self: pointer, indent: cint): void {.importc: "QTextBlockFormat_setIndent".}
proc fcQTextBlockFormat_indent(self: pointer, ): cint {.importc: "QTextBlockFormat_indent".}
proc fcQTextBlockFormat_setHeadingLevel(self: pointer, alevel: cint): void {.importc: "QTextBlockFormat_setHeadingLevel".}
proc fcQTextBlockFormat_headingLevel(self: pointer, ): cint {.importc: "QTextBlockFormat_headingLevel".}
proc fcQTextBlockFormat_setLineHeight(self: pointer, height: float64, heightType: cint): void {.importc: "QTextBlockFormat_setLineHeight".}
proc fcQTextBlockFormat_lineHeight(self: pointer, scriptLineHeight: float64, scaling: float64): float64 {.importc: "QTextBlockFormat_lineHeight".}
proc fcQTextBlockFormat_lineHeight2(self: pointer, ): float64 {.importc: "QTextBlockFormat_lineHeight2".}
proc fcQTextBlockFormat_lineHeightType(self: pointer, ): cint {.importc: "QTextBlockFormat_lineHeightType".}
proc fcQTextBlockFormat_setNonBreakableLines(self: pointer, b: bool): void {.importc: "QTextBlockFormat_setNonBreakableLines".}
proc fcQTextBlockFormat_nonBreakableLines(self: pointer, ): bool {.importc: "QTextBlockFormat_nonBreakableLines".}
proc fcQTextBlockFormat_setPageBreakPolicy(self: pointer, flags: cint): void {.importc: "QTextBlockFormat_setPageBreakPolicy".}
proc fcQTextBlockFormat_pageBreakPolicy(self: pointer, ): cint {.importc: "QTextBlockFormat_pageBreakPolicy".}
proc fcQTextBlockFormat_setTabPositions(self: pointer, tabs: struct_miqt_array): void {.importc: "QTextBlockFormat_setTabPositions".}
proc fcQTextBlockFormat_tabPositions(self: pointer, ): struct_miqt_array {.importc: "QTextBlockFormat_tabPositions".}
proc fcQTextBlockFormat_setMarker(self: pointer, marker: cint): void {.importc: "QTextBlockFormat_setMarker".}
proc fcQTextBlockFormat_marker(self: pointer, ): cint {.importc: "QTextBlockFormat_marker".}
proc fcQTextBlockFormat_delete(self: pointer) {.importc: "QTextBlockFormat_delete".}
proc fcQTextListFormat_new(): ptr cQTextListFormat {.importc: "QTextListFormat_new".}
proc fcQTextListFormat_new2(param1: pointer): ptr cQTextListFormat {.importc: "QTextListFormat_new2".}
proc fcQTextListFormat_isValid(self: pointer, ): bool {.importc: "QTextListFormat_isValid".}
proc fcQTextListFormat_setStyle(self: pointer, style: cint): void {.importc: "QTextListFormat_setStyle".}
proc fcQTextListFormat_style(self: pointer, ): cint {.importc: "QTextListFormat_style".}
proc fcQTextListFormat_setIndent(self: pointer, indent: cint): void {.importc: "QTextListFormat_setIndent".}
proc fcQTextListFormat_indent(self: pointer, ): cint {.importc: "QTextListFormat_indent".}
proc fcQTextListFormat_setNumberPrefix(self: pointer, numberPrefix: struct_miqt_string): void {.importc: "QTextListFormat_setNumberPrefix".}
proc fcQTextListFormat_numberPrefix(self: pointer, ): struct_miqt_string {.importc: "QTextListFormat_numberPrefix".}
proc fcQTextListFormat_setNumberSuffix(self: pointer, numberSuffix: struct_miqt_string): void {.importc: "QTextListFormat_setNumberSuffix".}
proc fcQTextListFormat_numberSuffix(self: pointer, ): struct_miqt_string {.importc: "QTextListFormat_numberSuffix".}
proc fcQTextListFormat_delete(self: pointer) {.importc: "QTextListFormat_delete".}
proc fcQTextImageFormat_new(): ptr cQTextImageFormat {.importc: "QTextImageFormat_new".}
proc fcQTextImageFormat_isValid(self: pointer, ): bool {.importc: "QTextImageFormat_isValid".}
proc fcQTextImageFormat_setName(self: pointer, name: struct_miqt_string): void {.importc: "QTextImageFormat_setName".}
proc fcQTextImageFormat_name(self: pointer, ): struct_miqt_string {.importc: "QTextImageFormat_name".}
proc fcQTextImageFormat_setWidth(self: pointer, width: float64): void {.importc: "QTextImageFormat_setWidth".}
proc fcQTextImageFormat_width(self: pointer, ): float64 {.importc: "QTextImageFormat_width".}
proc fcQTextImageFormat_setHeight(self: pointer, height: float64): void {.importc: "QTextImageFormat_setHeight".}
proc fcQTextImageFormat_height(self: pointer, ): float64 {.importc: "QTextImageFormat_height".}
proc fcQTextImageFormat_setQuality(self: pointer, ): void {.importc: "QTextImageFormat_setQuality".}
proc fcQTextImageFormat_quality(self: pointer, ): cint {.importc: "QTextImageFormat_quality".}
proc fcQTextImageFormat_setQuality1(self: pointer, quality: cint): void {.importc: "QTextImageFormat_setQuality1".}
proc fcQTextImageFormat_delete(self: pointer) {.importc: "QTextImageFormat_delete".}
proc fcQTextFrameFormat_new(): ptr cQTextFrameFormat {.importc: "QTextFrameFormat_new".}
proc fcQTextFrameFormat_new2(param1: pointer): ptr cQTextFrameFormat {.importc: "QTextFrameFormat_new2".}
proc fcQTextFrameFormat_isValid(self: pointer, ): bool {.importc: "QTextFrameFormat_isValid".}
proc fcQTextFrameFormat_setPosition(self: pointer, f: cint): void {.importc: "QTextFrameFormat_setPosition".}
proc fcQTextFrameFormat_position(self: pointer, ): cint {.importc: "QTextFrameFormat_position".}
proc fcQTextFrameFormat_setBorder(self: pointer, border: float64): void {.importc: "QTextFrameFormat_setBorder".}
proc fcQTextFrameFormat_border(self: pointer, ): float64 {.importc: "QTextFrameFormat_border".}
proc fcQTextFrameFormat_setBorderBrush(self: pointer, brush: pointer): void {.importc: "QTextFrameFormat_setBorderBrush".}
proc fcQTextFrameFormat_borderBrush(self: pointer, ): pointer {.importc: "QTextFrameFormat_borderBrush".}
proc fcQTextFrameFormat_setBorderStyle(self: pointer, style: cint): void {.importc: "QTextFrameFormat_setBorderStyle".}
proc fcQTextFrameFormat_borderStyle(self: pointer, ): cint {.importc: "QTextFrameFormat_borderStyle".}
proc fcQTextFrameFormat_setMargin(self: pointer, margin: float64): void {.importc: "QTextFrameFormat_setMargin".}
proc fcQTextFrameFormat_margin(self: pointer, ): float64 {.importc: "QTextFrameFormat_margin".}
proc fcQTextFrameFormat_setTopMargin(self: pointer, margin: float64): void {.importc: "QTextFrameFormat_setTopMargin".}
proc fcQTextFrameFormat_topMargin(self: pointer, ): float64 {.importc: "QTextFrameFormat_topMargin".}
proc fcQTextFrameFormat_setBottomMargin(self: pointer, margin: float64): void {.importc: "QTextFrameFormat_setBottomMargin".}
proc fcQTextFrameFormat_bottomMargin(self: pointer, ): float64 {.importc: "QTextFrameFormat_bottomMargin".}
proc fcQTextFrameFormat_setLeftMargin(self: pointer, margin: float64): void {.importc: "QTextFrameFormat_setLeftMargin".}
proc fcQTextFrameFormat_leftMargin(self: pointer, ): float64 {.importc: "QTextFrameFormat_leftMargin".}
proc fcQTextFrameFormat_setRightMargin(self: pointer, margin: float64): void {.importc: "QTextFrameFormat_setRightMargin".}
proc fcQTextFrameFormat_rightMargin(self: pointer, ): float64 {.importc: "QTextFrameFormat_rightMargin".}
proc fcQTextFrameFormat_setPadding(self: pointer, padding: float64): void {.importc: "QTextFrameFormat_setPadding".}
proc fcQTextFrameFormat_padding(self: pointer, ): float64 {.importc: "QTextFrameFormat_padding".}
proc fcQTextFrameFormat_setWidth(self: pointer, width: float64): void {.importc: "QTextFrameFormat_setWidth".}
proc fcQTextFrameFormat_setWidthWithLength(self: pointer, length: pointer): void {.importc: "QTextFrameFormat_setWidthWithLength".}
proc fcQTextFrameFormat_width(self: pointer, ): pointer {.importc: "QTextFrameFormat_width".}
proc fcQTextFrameFormat_setHeight(self: pointer, height: float64): void {.importc: "QTextFrameFormat_setHeight".}
proc fcQTextFrameFormat_setHeightWithHeight(self: pointer, height: pointer): void {.importc: "QTextFrameFormat_setHeightWithHeight".}
proc fcQTextFrameFormat_height(self: pointer, ): pointer {.importc: "QTextFrameFormat_height".}
proc fcQTextFrameFormat_setPageBreakPolicy(self: pointer, flags: cint): void {.importc: "QTextFrameFormat_setPageBreakPolicy".}
proc fcQTextFrameFormat_pageBreakPolicy(self: pointer, ): cint {.importc: "QTextFrameFormat_pageBreakPolicy".}
proc fcQTextFrameFormat_delete(self: pointer) {.importc: "QTextFrameFormat_delete".}
proc fcQTextTableFormat_new(): ptr cQTextTableFormat {.importc: "QTextTableFormat_new".}
proc fcQTextTableFormat_isValid(self: pointer, ): bool {.importc: "QTextTableFormat_isValid".}
proc fcQTextTableFormat_columns(self: pointer, ): cint {.importc: "QTextTableFormat_columns".}
proc fcQTextTableFormat_setColumns(self: pointer, columns: cint): void {.importc: "QTextTableFormat_setColumns".}
proc fcQTextTableFormat_setColumnWidthConstraints(self: pointer, constraints: struct_miqt_array): void {.importc: "QTextTableFormat_setColumnWidthConstraints".}
proc fcQTextTableFormat_columnWidthConstraints(self: pointer, ): struct_miqt_array {.importc: "QTextTableFormat_columnWidthConstraints".}
proc fcQTextTableFormat_clearColumnWidthConstraints(self: pointer, ): void {.importc: "QTextTableFormat_clearColumnWidthConstraints".}
proc fcQTextTableFormat_cellSpacing(self: pointer, ): float64 {.importc: "QTextTableFormat_cellSpacing".}
proc fcQTextTableFormat_setCellSpacing(self: pointer, spacing: float64): void {.importc: "QTextTableFormat_setCellSpacing".}
proc fcQTextTableFormat_cellPadding(self: pointer, ): float64 {.importc: "QTextTableFormat_cellPadding".}
proc fcQTextTableFormat_setCellPadding(self: pointer, padding: float64): void {.importc: "QTextTableFormat_setCellPadding".}
proc fcQTextTableFormat_setAlignment(self: pointer, alignment: cint): void {.importc: "QTextTableFormat_setAlignment".}
proc fcQTextTableFormat_alignment(self: pointer, ): cint {.importc: "QTextTableFormat_alignment".}
proc fcQTextTableFormat_setHeaderRowCount(self: pointer, count: cint): void {.importc: "QTextTableFormat_setHeaderRowCount".}
proc fcQTextTableFormat_headerRowCount(self: pointer, ): cint {.importc: "QTextTableFormat_headerRowCount".}
proc fcQTextTableFormat_setBorderCollapse(self: pointer, borderCollapse: bool): void {.importc: "QTextTableFormat_setBorderCollapse".}
proc fcQTextTableFormat_borderCollapse(self: pointer, ): bool {.importc: "QTextTableFormat_borderCollapse".}
proc fcQTextTableFormat_delete(self: pointer) {.importc: "QTextTableFormat_delete".}
proc fcQTextTableCellFormat_new(): ptr cQTextTableCellFormat {.importc: "QTextTableCellFormat_new".}
proc fcQTextTableCellFormat_isValid(self: pointer, ): bool {.importc: "QTextTableCellFormat_isValid".}
proc fcQTextTableCellFormat_setTopPadding(self: pointer, padding: float64): void {.importc: "QTextTableCellFormat_setTopPadding".}
proc fcQTextTableCellFormat_topPadding(self: pointer, ): float64 {.importc: "QTextTableCellFormat_topPadding".}
proc fcQTextTableCellFormat_setBottomPadding(self: pointer, padding: float64): void {.importc: "QTextTableCellFormat_setBottomPadding".}
proc fcQTextTableCellFormat_bottomPadding(self: pointer, ): float64 {.importc: "QTextTableCellFormat_bottomPadding".}
proc fcQTextTableCellFormat_setLeftPadding(self: pointer, padding: float64): void {.importc: "QTextTableCellFormat_setLeftPadding".}
proc fcQTextTableCellFormat_leftPadding(self: pointer, ): float64 {.importc: "QTextTableCellFormat_leftPadding".}
proc fcQTextTableCellFormat_setRightPadding(self: pointer, padding: float64): void {.importc: "QTextTableCellFormat_setRightPadding".}
proc fcQTextTableCellFormat_rightPadding(self: pointer, ): float64 {.importc: "QTextTableCellFormat_rightPadding".}
proc fcQTextTableCellFormat_setPadding(self: pointer, padding: float64): void {.importc: "QTextTableCellFormat_setPadding".}
proc fcQTextTableCellFormat_setTopBorder(self: pointer, width: float64): void {.importc: "QTextTableCellFormat_setTopBorder".}
proc fcQTextTableCellFormat_topBorder(self: pointer, ): float64 {.importc: "QTextTableCellFormat_topBorder".}
proc fcQTextTableCellFormat_setBottomBorder(self: pointer, width: float64): void {.importc: "QTextTableCellFormat_setBottomBorder".}
proc fcQTextTableCellFormat_bottomBorder(self: pointer, ): float64 {.importc: "QTextTableCellFormat_bottomBorder".}
proc fcQTextTableCellFormat_setLeftBorder(self: pointer, width: float64): void {.importc: "QTextTableCellFormat_setLeftBorder".}
proc fcQTextTableCellFormat_leftBorder(self: pointer, ): float64 {.importc: "QTextTableCellFormat_leftBorder".}
proc fcQTextTableCellFormat_setRightBorder(self: pointer, width: float64): void {.importc: "QTextTableCellFormat_setRightBorder".}
proc fcQTextTableCellFormat_rightBorder(self: pointer, ): float64 {.importc: "QTextTableCellFormat_rightBorder".}
proc fcQTextTableCellFormat_setBorder(self: pointer, width: float64): void {.importc: "QTextTableCellFormat_setBorder".}
proc fcQTextTableCellFormat_setTopBorderStyle(self: pointer, style: cint): void {.importc: "QTextTableCellFormat_setTopBorderStyle".}
proc fcQTextTableCellFormat_topBorderStyle(self: pointer, ): cint {.importc: "QTextTableCellFormat_topBorderStyle".}
proc fcQTextTableCellFormat_setBottomBorderStyle(self: pointer, style: cint): void {.importc: "QTextTableCellFormat_setBottomBorderStyle".}
proc fcQTextTableCellFormat_bottomBorderStyle(self: pointer, ): cint {.importc: "QTextTableCellFormat_bottomBorderStyle".}
proc fcQTextTableCellFormat_setLeftBorderStyle(self: pointer, style: cint): void {.importc: "QTextTableCellFormat_setLeftBorderStyle".}
proc fcQTextTableCellFormat_leftBorderStyle(self: pointer, ): cint {.importc: "QTextTableCellFormat_leftBorderStyle".}
proc fcQTextTableCellFormat_setRightBorderStyle(self: pointer, style: cint): void {.importc: "QTextTableCellFormat_setRightBorderStyle".}
proc fcQTextTableCellFormat_rightBorderStyle(self: pointer, ): cint {.importc: "QTextTableCellFormat_rightBorderStyle".}
proc fcQTextTableCellFormat_setBorderStyle(self: pointer, style: cint): void {.importc: "QTextTableCellFormat_setBorderStyle".}
proc fcQTextTableCellFormat_setTopBorderBrush(self: pointer, brush: pointer): void {.importc: "QTextTableCellFormat_setTopBorderBrush".}
proc fcQTextTableCellFormat_topBorderBrush(self: pointer, ): pointer {.importc: "QTextTableCellFormat_topBorderBrush".}
proc fcQTextTableCellFormat_setBottomBorderBrush(self: pointer, brush: pointer): void {.importc: "QTextTableCellFormat_setBottomBorderBrush".}
proc fcQTextTableCellFormat_bottomBorderBrush(self: pointer, ): pointer {.importc: "QTextTableCellFormat_bottomBorderBrush".}
proc fcQTextTableCellFormat_setLeftBorderBrush(self: pointer, brush: pointer): void {.importc: "QTextTableCellFormat_setLeftBorderBrush".}
proc fcQTextTableCellFormat_leftBorderBrush(self: pointer, ): pointer {.importc: "QTextTableCellFormat_leftBorderBrush".}
proc fcQTextTableCellFormat_setRightBorderBrush(self: pointer, brush: pointer): void {.importc: "QTextTableCellFormat_setRightBorderBrush".}
proc fcQTextTableCellFormat_rightBorderBrush(self: pointer, ): pointer {.importc: "QTextTableCellFormat_rightBorderBrush".}
proc fcQTextTableCellFormat_setBorderBrush(self: pointer, brush: pointer): void {.importc: "QTextTableCellFormat_setBorderBrush".}
proc fcQTextTableCellFormat_delete(self: pointer) {.importc: "QTextTableCellFormat_delete".}


func init*(T: type QTextLength, h: ptr cQTextLength): QTextLength =
  T(h: h)
proc create*(T: type QTextLength, ): QTextLength =

  QTextLength.init(fcQTextLength_new())
proc create*(T: type QTextLength, typeVal: QTextLengthType, value: float64): QTextLength =

  QTextLength.init(fcQTextLength_new2(cint(typeVal), value))
proc create*(T: type QTextLength, param1: QTextLength): QTextLength =

  QTextLength.init(fcQTextLength_new3(param1.h))
proc typeX*(self: QTextLength, ): QTextLengthType =

  QTextLengthType(fcQTextLength_typeX(self.h))

proc value*(self: QTextLength, maximumLength: float64): float64 =

  fcQTextLength_value(self.h, maximumLength)

proc rawValue*(self: QTextLength, ): float64 =

  fcQTextLength_rawValue(self.h)

proc operatorEqual*(self: QTextLength, other: QTextLength): bool =

  fcQTextLength_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QTextLength, other: QTextLength): bool =

  fcQTextLength_operatorNotEqual(self.h, other.h)

proc ToQVariant*(self: QTextLength, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQTextLength_ToQVariant(self.h))

proc delete*(self: QTextLength) =
  fcQTextLength_delete(self.h)

func init*(T: type QTextFormat, h: ptr cQTextFormat): QTextFormat =
  T(h: h)
proc create*(T: type QTextFormat, ): QTextFormat =

  QTextFormat.init(fcQTextFormat_new())
proc create*(T: type QTextFormat, typeVal: cint): QTextFormat =

  QTextFormat.init(fcQTextFormat_new2(typeVal))
proc create*(T: type QTextFormat, rhs: QTextFormat): QTextFormat =

  QTextFormat.init(fcQTextFormat_new3(rhs.h))
proc operatorAssign*(self: QTextFormat, rhs: QTextFormat): void =

  fcQTextFormat_operatorAssign(self.h, rhs.h)

proc swap*(self: QTextFormat, other: QTextFormat): void =

  fcQTextFormat_swap(self.h, other.h)

proc merge*(self: QTextFormat, other: QTextFormat): void =

  fcQTextFormat_merge(self.h, other.h)

proc isValid*(self: QTextFormat, ): bool =

  fcQTextFormat_isValid(self.h)

proc isEmpty*(self: QTextFormat, ): bool =

  fcQTextFormat_isEmpty(self.h)

proc typeX*(self: QTextFormat, ): cint =

  fcQTextFormat_typeX(self.h)

proc objectIndex*(self: QTextFormat, ): cint =

  fcQTextFormat_objectIndex(self.h)

proc setObjectIndex*(self: QTextFormat, objectVal: cint): void =

  fcQTextFormat_setObjectIndex(self.h, objectVal)

proc property*(self: QTextFormat, propertyId: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQTextFormat_property(self.h, propertyId))

proc setProperty*(self: QTextFormat, propertyId: cint, value: gen_qvariant.QVariant): void =

  fcQTextFormat_setProperty(self.h, propertyId, value.h)

proc clearProperty*(self: QTextFormat, propertyId: cint): void =

  fcQTextFormat_clearProperty(self.h, propertyId)

proc hasProperty*(self: QTextFormat, propertyId: cint): bool =

  fcQTextFormat_hasProperty(self.h, propertyId)

proc boolProperty*(self: QTextFormat, propertyId: cint): bool =

  fcQTextFormat_boolProperty(self.h, propertyId)

proc intProperty*(self: QTextFormat, propertyId: cint): cint =

  fcQTextFormat_intProperty(self.h, propertyId)

proc doubleProperty*(self: QTextFormat, propertyId: cint): float64 =

  fcQTextFormat_doubleProperty(self.h, propertyId)

proc stringProperty*(self: QTextFormat, propertyId: cint): string =

  let v_ms = fcQTextFormat_stringProperty(self.h, propertyId)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc colorProperty*(self: QTextFormat, propertyId: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQTextFormat_colorProperty(self.h, propertyId))

proc penProperty*(self: QTextFormat, propertyId: cint): gen_qpen.QPen =

  gen_qpen.QPen(h: fcQTextFormat_penProperty(self.h, propertyId))

proc brushProperty*(self: QTextFormat, propertyId: cint): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQTextFormat_brushProperty(self.h, propertyId))

proc lengthProperty*(self: QTextFormat, propertyId: cint): QTextLength =

  QTextLength(h: fcQTextFormat_lengthProperty(self.h, propertyId))

proc lengthVectorProperty*(self: QTextFormat, propertyId: cint): seq[QTextLength] =

  var v_ma = fcQTextFormat_lengthVectorProperty(self.h, propertyId)
  var vx_ret = newSeq[QTextLength](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QTextLength(h: v_outCast[i])
  vx_ret

proc setProperty2*(self: QTextFormat, propertyId: cint, lengths: seq[QTextLength]): void =

  var lengths_CArray = newSeq[pointer](len(lengths))
  for i in 0..<len(lengths):
    lengths_CArray[i] = lengths[i].h

  fcQTextFormat_setProperty2(self.h, propertyId, struct_miqt_array(len: csize_t(len(lengths)), data: if len(lengths) == 0: nil else: addr(lengths_CArray[0])))

proc properties*(self: QTextFormat, ): Table[cint,gen_qvariant.QVariant] =

  var v_mm = fcQTextFormat_properties(self.h)
  var vx_ret: Table[cint, gen_qvariant.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc propertyCount*(self: QTextFormat, ): cint =

  fcQTextFormat_propertyCount(self.h)

proc setObjectType*(self: QTextFormat, typeVal: cint): void =

  fcQTextFormat_setObjectType(self.h, typeVal)

proc objectType*(self: QTextFormat, ): cint =

  fcQTextFormat_objectType(self.h)

proc isCharFormat*(self: QTextFormat, ): bool =

  fcQTextFormat_isCharFormat(self.h)

proc isBlockFormat*(self: QTextFormat, ): bool =

  fcQTextFormat_isBlockFormat(self.h)

proc isListFormat*(self: QTextFormat, ): bool =

  fcQTextFormat_isListFormat(self.h)

proc isFrameFormat*(self: QTextFormat, ): bool =

  fcQTextFormat_isFrameFormat(self.h)

proc isImageFormat*(self: QTextFormat, ): bool =

  fcQTextFormat_isImageFormat(self.h)

proc isTableFormat*(self: QTextFormat, ): bool =

  fcQTextFormat_isTableFormat(self.h)

proc isTableCellFormat*(self: QTextFormat, ): bool =

  fcQTextFormat_isTableCellFormat(self.h)

proc toBlockFormat*(self: QTextFormat, ): QTextBlockFormat =

  QTextBlockFormat(h: fcQTextFormat_toBlockFormat(self.h))

proc toCharFormat*(self: QTextFormat, ): QTextCharFormat =

  QTextCharFormat(h: fcQTextFormat_toCharFormat(self.h))

proc toListFormat*(self: QTextFormat, ): QTextListFormat =

  QTextListFormat(h: fcQTextFormat_toListFormat(self.h))

proc toTableFormat*(self: QTextFormat, ): QTextTableFormat =

  QTextTableFormat(h: fcQTextFormat_toTableFormat(self.h))

proc toFrameFormat*(self: QTextFormat, ): QTextFrameFormat =

  QTextFrameFormat(h: fcQTextFormat_toFrameFormat(self.h))

proc toImageFormat*(self: QTextFormat, ): QTextImageFormat =

  QTextImageFormat(h: fcQTextFormat_toImageFormat(self.h))

proc toTableCellFormat*(self: QTextFormat, ): QTextTableCellFormat =

  QTextTableCellFormat(h: fcQTextFormat_toTableCellFormat(self.h))

proc operatorEqual*(self: QTextFormat, rhs: QTextFormat): bool =

  fcQTextFormat_operatorEqual(self.h, rhs.h)

proc operatorNotEqual*(self: QTextFormat, rhs: QTextFormat): bool =

  fcQTextFormat_operatorNotEqual(self.h, rhs.h)

proc ToQVariant*(self: QTextFormat, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQTextFormat_ToQVariant(self.h))

proc setLayoutDirection*(self: QTextFormat, direction: gen_qnamespace.LayoutDirection): void =

  fcQTextFormat_setLayoutDirection(self.h, cint(direction))

proc layoutDirection*(self: QTextFormat, ): gen_qnamespace.LayoutDirection =

  gen_qnamespace.LayoutDirection(fcQTextFormat_layoutDirection(self.h))

proc setBackground*(self: QTextFormat, brush: gen_qbrush.QBrush): void =

  fcQTextFormat_setBackground(self.h, brush.h)

proc background*(self: QTextFormat, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQTextFormat_background(self.h))

proc clearBackground*(self: QTextFormat, ): void =

  fcQTextFormat_clearBackground(self.h)

proc setForeground*(self: QTextFormat, brush: gen_qbrush.QBrush): void =

  fcQTextFormat_setForeground(self.h, brush.h)

proc foreground*(self: QTextFormat, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQTextFormat_foreground(self.h))

proc clearForeground*(self: QTextFormat, ): void =

  fcQTextFormat_clearForeground(self.h)

proc delete*(self: QTextFormat) =
  fcQTextFormat_delete(self.h)

func init*(T: type QTextCharFormat, h: ptr cQTextCharFormat): QTextCharFormat =
  T(h: h)
proc create*(T: type QTextCharFormat, ): QTextCharFormat =

  QTextCharFormat.init(fcQTextCharFormat_new())
proc create*(T: type QTextCharFormat, param1: QTextCharFormat): QTextCharFormat =

  QTextCharFormat.init(fcQTextCharFormat_new2(param1.h))
proc isValid*(self: QTextCharFormat, ): bool =

  fcQTextCharFormat_isValid(self.h)

proc setFont*(self: QTextCharFormat, font: gen_qfont.QFont, behavior: QTextCharFormatFontPropertiesInheritanceBehavior): void =

  fcQTextCharFormat_setFont(self.h, font.h, cint(behavior))

proc setFontWithFont*(self: QTextCharFormat, font: gen_qfont.QFont): void =

  fcQTextCharFormat_setFontWithFont(self.h, font.h)

proc font*(self: QTextCharFormat, ): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQTextCharFormat_font(self.h))

proc setFontFamily*(self: QTextCharFormat, family: string): void =

  fcQTextCharFormat_setFontFamily(self.h, struct_miqt_string(data: family, len: csize_t(len(family))))

proc fontFamily*(self: QTextCharFormat, ): string =

  let v_ms = fcQTextCharFormat_fontFamily(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFontFamilies*(self: QTextCharFormat, families: seq[string]): void =

  var families_CArray = newSeq[struct_miqt_string](len(families))
  for i in 0..<len(families):
    families_CArray[i] = struct_miqt_string(data: families[i], len: csize_t(len(families[i])))

  fcQTextCharFormat_setFontFamilies(self.h, struct_miqt_array(len: csize_t(len(families)), data: if len(families) == 0: nil else: addr(families_CArray[0])))

proc fontFamilies*(self: QTextCharFormat, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQTextCharFormat_fontFamilies(self.h))

proc setFontStyleName*(self: QTextCharFormat, styleName: string): void =

  fcQTextCharFormat_setFontStyleName(self.h, struct_miqt_string(data: styleName, len: csize_t(len(styleName))))

proc fontStyleName*(self: QTextCharFormat, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQTextCharFormat_fontStyleName(self.h))

proc setFontPointSize*(self: QTextCharFormat, size: float64): void =

  fcQTextCharFormat_setFontPointSize(self.h, size)

proc fontPointSize*(self: QTextCharFormat, ): float64 =

  fcQTextCharFormat_fontPointSize(self.h)

proc setFontWeight*(self: QTextCharFormat, weight: cint): void =

  fcQTextCharFormat_setFontWeight(self.h, weight)

proc fontWeight*(self: QTextCharFormat, ): cint =

  fcQTextCharFormat_fontWeight(self.h)

proc setFontItalic*(self: QTextCharFormat, italic: bool): void =

  fcQTextCharFormat_setFontItalic(self.h, italic)

proc fontItalic*(self: QTextCharFormat, ): bool =

  fcQTextCharFormat_fontItalic(self.h)

proc setFontCapitalization*(self: QTextCharFormat, capitalization: gen_qfont.QFontCapitalization): void =

  fcQTextCharFormat_setFontCapitalization(self.h, cint(capitalization))

proc fontCapitalization*(self: QTextCharFormat, ): gen_qfont.QFontCapitalization =

  gen_qfont.QFontCapitalization(fcQTextCharFormat_fontCapitalization(self.h))

proc setFontLetterSpacingType*(self: QTextCharFormat, letterSpacingType: gen_qfont.QFontSpacingType): void =

  fcQTextCharFormat_setFontLetterSpacingType(self.h, cint(letterSpacingType))

proc fontLetterSpacingType*(self: QTextCharFormat, ): gen_qfont.QFontSpacingType =

  gen_qfont.QFontSpacingType(fcQTextCharFormat_fontLetterSpacingType(self.h))

proc setFontLetterSpacing*(self: QTextCharFormat, spacing: float64): void =

  fcQTextCharFormat_setFontLetterSpacing(self.h, spacing)

proc fontLetterSpacing*(self: QTextCharFormat, ): float64 =

  fcQTextCharFormat_fontLetterSpacing(self.h)

proc setFontWordSpacing*(self: QTextCharFormat, spacing: float64): void =

  fcQTextCharFormat_setFontWordSpacing(self.h, spacing)

proc fontWordSpacing*(self: QTextCharFormat, ): float64 =

  fcQTextCharFormat_fontWordSpacing(self.h)

proc setFontUnderline*(self: QTextCharFormat, underline: bool): void =

  fcQTextCharFormat_setFontUnderline(self.h, underline)

proc fontUnderline*(self: QTextCharFormat, ): bool =

  fcQTextCharFormat_fontUnderline(self.h)

proc setFontOverline*(self: QTextCharFormat, overline: bool): void =

  fcQTextCharFormat_setFontOverline(self.h, overline)

proc fontOverline*(self: QTextCharFormat, ): bool =

  fcQTextCharFormat_fontOverline(self.h)

proc setFontStrikeOut*(self: QTextCharFormat, strikeOut: bool): void =

  fcQTextCharFormat_setFontStrikeOut(self.h, strikeOut)

proc fontStrikeOut*(self: QTextCharFormat, ): bool =

  fcQTextCharFormat_fontStrikeOut(self.h)

proc setUnderlineColor*(self: QTextCharFormat, color: gen_qcolor.QColor): void =

  fcQTextCharFormat_setUnderlineColor(self.h, color.h)

proc underlineColor*(self: QTextCharFormat, ): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQTextCharFormat_underlineColor(self.h))

proc setFontFixedPitch*(self: QTextCharFormat, fixedPitch: bool): void =

  fcQTextCharFormat_setFontFixedPitch(self.h, fixedPitch)

proc fontFixedPitch*(self: QTextCharFormat, ): bool =

  fcQTextCharFormat_fontFixedPitch(self.h)

proc setFontStretch*(self: QTextCharFormat, factor: cint): void =

  fcQTextCharFormat_setFontStretch(self.h, factor)

proc fontStretch*(self: QTextCharFormat, ): cint =

  fcQTextCharFormat_fontStretch(self.h)

proc setFontStyleHint*(self: QTextCharFormat, hint: gen_qfont.QFontStyleHint): void =

  fcQTextCharFormat_setFontStyleHint(self.h, cint(hint))

proc setFontStyleStrategy*(self: QTextCharFormat, strategy: gen_qfont.QFontStyleStrategy): void =

  fcQTextCharFormat_setFontStyleStrategy(self.h, cint(strategy))

proc fontStyleHint*(self: QTextCharFormat, ): gen_qfont.QFontStyleHint =

  gen_qfont.QFontStyleHint(fcQTextCharFormat_fontStyleHint(self.h))

proc fontStyleStrategy*(self: QTextCharFormat, ): gen_qfont.QFontStyleStrategy =

  gen_qfont.QFontStyleStrategy(fcQTextCharFormat_fontStyleStrategy(self.h))

proc setFontHintingPreference*(self: QTextCharFormat, hintingPreference: gen_qfont.QFontHintingPreference): void =

  fcQTextCharFormat_setFontHintingPreference(self.h, cint(hintingPreference))

proc fontHintingPreference*(self: QTextCharFormat, ): gen_qfont.QFontHintingPreference =

  gen_qfont.QFontHintingPreference(fcQTextCharFormat_fontHintingPreference(self.h))

proc setFontKerning*(self: QTextCharFormat, enable: bool): void =

  fcQTextCharFormat_setFontKerning(self.h, enable)

proc fontKerning*(self: QTextCharFormat, ): bool =

  fcQTextCharFormat_fontKerning(self.h)

proc setUnderlineStyle*(self: QTextCharFormat, style: QTextCharFormatUnderlineStyle): void =

  fcQTextCharFormat_setUnderlineStyle(self.h, cint(style))

proc underlineStyle*(self: QTextCharFormat, ): QTextCharFormatUnderlineStyle =

  QTextCharFormatUnderlineStyle(fcQTextCharFormat_underlineStyle(self.h))

proc setVerticalAlignment*(self: QTextCharFormat, alignment: QTextCharFormatVerticalAlignment): void =

  fcQTextCharFormat_setVerticalAlignment(self.h, cint(alignment))

proc verticalAlignment*(self: QTextCharFormat, ): QTextCharFormatVerticalAlignment =

  QTextCharFormatVerticalAlignment(fcQTextCharFormat_verticalAlignment(self.h))

proc setTextOutline*(self: QTextCharFormat, pen: gen_qpen.QPen): void =

  fcQTextCharFormat_setTextOutline(self.h, pen.h)

proc textOutline*(self: QTextCharFormat, ): gen_qpen.QPen =

  gen_qpen.QPen(h: fcQTextCharFormat_textOutline(self.h))

proc setToolTip*(self: QTextCharFormat, tip: string): void =

  fcQTextCharFormat_setToolTip(self.h, struct_miqt_string(data: tip, len: csize_t(len(tip))))

proc toolTip*(self: QTextCharFormat, ): string =

  let v_ms = fcQTextCharFormat_toolTip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAnchor*(self: QTextCharFormat, anchor: bool): void =

  fcQTextCharFormat_setAnchor(self.h, anchor)

proc isAnchor*(self: QTextCharFormat, ): bool =

  fcQTextCharFormat_isAnchor(self.h)

proc setAnchorHref*(self: QTextCharFormat, value: string): void =

  fcQTextCharFormat_setAnchorHref(self.h, struct_miqt_string(data: value, len: csize_t(len(value))))

proc anchorHref*(self: QTextCharFormat, ): string =

  let v_ms = fcQTextCharFormat_anchorHref(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAnchorName*(self: QTextCharFormat, name: string): void =

  fcQTextCharFormat_setAnchorName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc anchorName*(self: QTextCharFormat, ): string =

  let v_ms = fcQTextCharFormat_anchorName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAnchorNames*(self: QTextCharFormat, names: seq[string]): void =

  var names_CArray = newSeq[struct_miqt_string](len(names))
  for i in 0..<len(names):
    names_CArray[i] = struct_miqt_string(data: names[i], len: csize_t(len(names[i])))

  fcQTextCharFormat_setAnchorNames(self.h, struct_miqt_array(len: csize_t(len(names)), data: if len(names) == 0: nil else: addr(names_CArray[0])))

proc anchorNames*(self: QTextCharFormat, ): seq[string] =

  var v_ma = fcQTextCharFormat_anchorNames(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setTableCellRowSpan*(self: QTextCharFormat, tableCellRowSpan: cint): void =

  fcQTextCharFormat_setTableCellRowSpan(self.h, tableCellRowSpan)

proc tableCellRowSpan*(self: QTextCharFormat, ): cint =

  fcQTextCharFormat_tableCellRowSpan(self.h)

proc setTableCellColumnSpan*(self: QTextCharFormat, tableCellColumnSpan: cint): void =

  fcQTextCharFormat_setTableCellColumnSpan(self.h, tableCellColumnSpan)

proc tableCellColumnSpan*(self: QTextCharFormat, ): cint =

  fcQTextCharFormat_tableCellColumnSpan(self.h)

proc setFontStyleHint2*(self: QTextCharFormat, hint: gen_qfont.QFontStyleHint, strategy: gen_qfont.QFontStyleStrategy): void =

  fcQTextCharFormat_setFontStyleHint2(self.h, cint(hint), cint(strategy))

proc delete*(self: QTextCharFormat) =
  fcQTextCharFormat_delete(self.h)

func init*(T: type QTextBlockFormat, h: ptr cQTextBlockFormat): QTextBlockFormat =
  T(h: h)
proc create*(T: type QTextBlockFormat, ): QTextBlockFormat =

  QTextBlockFormat.init(fcQTextBlockFormat_new())
proc create*(T: type QTextBlockFormat, param1: QTextBlockFormat): QTextBlockFormat =

  QTextBlockFormat.init(fcQTextBlockFormat_new2(param1.h))
proc isValid*(self: QTextBlockFormat, ): bool =

  fcQTextBlockFormat_isValid(self.h)

proc setAlignment*(self: QTextBlockFormat, alignment: gen_qnamespace.AlignmentFlag): void =

  fcQTextBlockFormat_setAlignment(self.h, cint(alignment))

proc alignment*(self: QTextBlockFormat, ): gen_qnamespace.AlignmentFlag =

  gen_qnamespace.AlignmentFlag(fcQTextBlockFormat_alignment(self.h))

proc setTopMargin*(self: QTextBlockFormat, margin: float64): void =

  fcQTextBlockFormat_setTopMargin(self.h, margin)

proc topMargin*(self: QTextBlockFormat, ): float64 =

  fcQTextBlockFormat_topMargin(self.h)

proc setBottomMargin*(self: QTextBlockFormat, margin: float64): void =

  fcQTextBlockFormat_setBottomMargin(self.h, margin)

proc bottomMargin*(self: QTextBlockFormat, ): float64 =

  fcQTextBlockFormat_bottomMargin(self.h)

proc setLeftMargin*(self: QTextBlockFormat, margin: float64): void =

  fcQTextBlockFormat_setLeftMargin(self.h, margin)

proc leftMargin*(self: QTextBlockFormat, ): float64 =

  fcQTextBlockFormat_leftMargin(self.h)

proc setRightMargin*(self: QTextBlockFormat, margin: float64): void =

  fcQTextBlockFormat_setRightMargin(self.h, margin)

proc rightMargin*(self: QTextBlockFormat, ): float64 =

  fcQTextBlockFormat_rightMargin(self.h)

proc setTextIndent*(self: QTextBlockFormat, aindent: float64): void =

  fcQTextBlockFormat_setTextIndent(self.h, aindent)

proc textIndent*(self: QTextBlockFormat, ): float64 =

  fcQTextBlockFormat_textIndent(self.h)

proc setIndent*(self: QTextBlockFormat, indent: cint): void =

  fcQTextBlockFormat_setIndent(self.h, indent)

proc indent*(self: QTextBlockFormat, ): cint =

  fcQTextBlockFormat_indent(self.h)

proc setHeadingLevel*(self: QTextBlockFormat, alevel: cint): void =

  fcQTextBlockFormat_setHeadingLevel(self.h, alevel)

proc headingLevel*(self: QTextBlockFormat, ): cint =

  fcQTextBlockFormat_headingLevel(self.h)

proc setLineHeight*(self: QTextBlockFormat, height: float64, heightType: cint): void =

  fcQTextBlockFormat_setLineHeight(self.h, height, heightType)

proc lineHeight*(self: QTextBlockFormat, scriptLineHeight: float64, scaling: float64): float64 =

  fcQTextBlockFormat_lineHeight(self.h, scriptLineHeight, scaling)

proc lineHeight2*(self: QTextBlockFormat, ): float64 =

  fcQTextBlockFormat_lineHeight2(self.h)

proc lineHeightType*(self: QTextBlockFormat, ): cint =

  fcQTextBlockFormat_lineHeightType(self.h)

proc setNonBreakableLines*(self: QTextBlockFormat, b: bool): void =

  fcQTextBlockFormat_setNonBreakableLines(self.h, b)

proc nonBreakableLines*(self: QTextBlockFormat, ): bool =

  fcQTextBlockFormat_nonBreakableLines(self.h)

proc setPageBreakPolicy*(self: QTextBlockFormat, flags: QTextFormatPageBreakFlag): void =

  fcQTextBlockFormat_setPageBreakPolicy(self.h, cint(flags))

proc pageBreakPolicy*(self: QTextBlockFormat, ): QTextFormatPageBreakFlag =

  QTextFormatPageBreakFlag(fcQTextBlockFormat_pageBreakPolicy(self.h))

proc setTabPositions*(self: QTextBlockFormat, tabs: seq[gen_qtextoption.QTextOptionTab]): void =

  var tabs_CArray = newSeq[pointer](len(tabs))
  for i in 0..<len(tabs):
    tabs_CArray[i] = tabs[i].h

  fcQTextBlockFormat_setTabPositions(self.h, struct_miqt_array(len: csize_t(len(tabs)), data: if len(tabs) == 0: nil else: addr(tabs_CArray[0])))

proc tabPositions*(self: QTextBlockFormat, ): seq[gen_qtextoption.QTextOptionTab] =

  var v_ma = fcQTextBlockFormat_tabPositions(self.h)
  var vx_ret = newSeq[gen_qtextoption.QTextOptionTab](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtextoption.QTextOptionTab(h: v_outCast[i])
  vx_ret

proc setMarker*(self: QTextBlockFormat, marker: QTextBlockFormatMarkerType): void =

  fcQTextBlockFormat_setMarker(self.h, cint(marker))

proc marker*(self: QTextBlockFormat, ): QTextBlockFormatMarkerType =

  QTextBlockFormatMarkerType(fcQTextBlockFormat_marker(self.h))

proc delete*(self: QTextBlockFormat) =
  fcQTextBlockFormat_delete(self.h)

func init*(T: type QTextListFormat, h: ptr cQTextListFormat): QTextListFormat =
  T(h: h)
proc create*(T: type QTextListFormat, ): QTextListFormat =

  QTextListFormat.init(fcQTextListFormat_new())
proc create*(T: type QTextListFormat, param1: QTextListFormat): QTextListFormat =

  QTextListFormat.init(fcQTextListFormat_new2(param1.h))
proc isValid*(self: QTextListFormat, ): bool =

  fcQTextListFormat_isValid(self.h)

proc setStyle*(self: QTextListFormat, style: QTextListFormatStyle): void =

  fcQTextListFormat_setStyle(self.h, cint(style))

proc style*(self: QTextListFormat, ): QTextListFormatStyle =

  QTextListFormatStyle(fcQTextListFormat_style(self.h))

proc setIndent*(self: QTextListFormat, indent: cint): void =

  fcQTextListFormat_setIndent(self.h, indent)

proc indent*(self: QTextListFormat, ): cint =

  fcQTextListFormat_indent(self.h)

proc setNumberPrefix*(self: QTextListFormat, numberPrefix: string): void =

  fcQTextListFormat_setNumberPrefix(self.h, struct_miqt_string(data: numberPrefix, len: csize_t(len(numberPrefix))))

proc numberPrefix*(self: QTextListFormat, ): string =

  let v_ms = fcQTextListFormat_numberPrefix(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setNumberSuffix*(self: QTextListFormat, numberSuffix: string): void =

  fcQTextListFormat_setNumberSuffix(self.h, struct_miqt_string(data: numberSuffix, len: csize_t(len(numberSuffix))))

proc numberSuffix*(self: QTextListFormat, ): string =

  let v_ms = fcQTextListFormat_numberSuffix(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QTextListFormat) =
  fcQTextListFormat_delete(self.h)

func init*(T: type QTextImageFormat, h: ptr cQTextImageFormat): QTextImageFormat =
  T(h: h)
proc create*(T: type QTextImageFormat, ): QTextImageFormat =

  QTextImageFormat.init(fcQTextImageFormat_new())
proc isValid*(self: QTextImageFormat, ): bool =

  fcQTextImageFormat_isValid(self.h)

proc setName*(self: QTextImageFormat, name: string): void =

  fcQTextImageFormat_setName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc name*(self: QTextImageFormat, ): string =

  let v_ms = fcQTextImageFormat_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWidth*(self: QTextImageFormat, width: float64): void =

  fcQTextImageFormat_setWidth(self.h, width)

proc width*(self: QTextImageFormat, ): float64 =

  fcQTextImageFormat_width(self.h)

proc setHeight*(self: QTextImageFormat, height: float64): void =

  fcQTextImageFormat_setHeight(self.h, height)

proc height*(self: QTextImageFormat, ): float64 =

  fcQTextImageFormat_height(self.h)

proc setQuality*(self: QTextImageFormat, ): void =

  fcQTextImageFormat_setQuality(self.h)

proc quality*(self: QTextImageFormat, ): cint =

  fcQTextImageFormat_quality(self.h)

proc setQuality1*(self: QTextImageFormat, quality: cint): void =

  fcQTextImageFormat_setQuality1(self.h, quality)

proc delete*(self: QTextImageFormat) =
  fcQTextImageFormat_delete(self.h)

func init*(T: type QTextFrameFormat, h: ptr cQTextFrameFormat): QTextFrameFormat =
  T(h: h)
proc create*(T: type QTextFrameFormat, ): QTextFrameFormat =

  QTextFrameFormat.init(fcQTextFrameFormat_new())
proc create*(T: type QTextFrameFormat, param1: QTextFrameFormat): QTextFrameFormat =

  QTextFrameFormat.init(fcQTextFrameFormat_new2(param1.h))
proc isValid*(self: QTextFrameFormat, ): bool =

  fcQTextFrameFormat_isValid(self.h)

proc setPosition*(self: QTextFrameFormat, f: QTextFrameFormatPosition): void =

  fcQTextFrameFormat_setPosition(self.h, cint(f))

proc position*(self: QTextFrameFormat, ): QTextFrameFormatPosition =

  QTextFrameFormatPosition(fcQTextFrameFormat_position(self.h))

proc setBorder*(self: QTextFrameFormat, border: float64): void =

  fcQTextFrameFormat_setBorder(self.h, border)

proc border*(self: QTextFrameFormat, ): float64 =

  fcQTextFrameFormat_border(self.h)

proc setBorderBrush*(self: QTextFrameFormat, brush: gen_qbrush.QBrush): void =

  fcQTextFrameFormat_setBorderBrush(self.h, brush.h)

proc borderBrush*(self: QTextFrameFormat, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQTextFrameFormat_borderBrush(self.h))

proc setBorderStyle*(self: QTextFrameFormat, style: QTextFrameFormatBorderStyle): void =

  fcQTextFrameFormat_setBorderStyle(self.h, cint(style))

proc borderStyle*(self: QTextFrameFormat, ): QTextFrameFormatBorderStyle =

  QTextFrameFormatBorderStyle(fcQTextFrameFormat_borderStyle(self.h))

proc setMargin*(self: QTextFrameFormat, margin: float64): void =

  fcQTextFrameFormat_setMargin(self.h, margin)

proc margin*(self: QTextFrameFormat, ): float64 =

  fcQTextFrameFormat_margin(self.h)

proc setTopMargin*(self: QTextFrameFormat, margin: float64): void =

  fcQTextFrameFormat_setTopMargin(self.h, margin)

proc topMargin*(self: QTextFrameFormat, ): float64 =

  fcQTextFrameFormat_topMargin(self.h)

proc setBottomMargin*(self: QTextFrameFormat, margin: float64): void =

  fcQTextFrameFormat_setBottomMargin(self.h, margin)

proc bottomMargin*(self: QTextFrameFormat, ): float64 =

  fcQTextFrameFormat_bottomMargin(self.h)

proc setLeftMargin*(self: QTextFrameFormat, margin: float64): void =

  fcQTextFrameFormat_setLeftMargin(self.h, margin)

proc leftMargin*(self: QTextFrameFormat, ): float64 =

  fcQTextFrameFormat_leftMargin(self.h)

proc setRightMargin*(self: QTextFrameFormat, margin: float64): void =

  fcQTextFrameFormat_setRightMargin(self.h, margin)

proc rightMargin*(self: QTextFrameFormat, ): float64 =

  fcQTextFrameFormat_rightMargin(self.h)

proc setPadding*(self: QTextFrameFormat, padding: float64): void =

  fcQTextFrameFormat_setPadding(self.h, padding)

proc padding*(self: QTextFrameFormat, ): float64 =

  fcQTextFrameFormat_padding(self.h)

proc setWidth*(self: QTextFrameFormat, width: float64): void =

  fcQTextFrameFormat_setWidth(self.h, width)

proc setWidthWithLength*(self: QTextFrameFormat, length: QTextLength): void =

  fcQTextFrameFormat_setWidthWithLength(self.h, length.h)

proc width*(self: QTextFrameFormat, ): QTextLength =

  QTextLength(h: fcQTextFrameFormat_width(self.h))

proc setHeight*(self: QTextFrameFormat, height: float64): void =

  fcQTextFrameFormat_setHeight(self.h, height)

proc setHeightWithHeight*(self: QTextFrameFormat, height: QTextLength): void =

  fcQTextFrameFormat_setHeightWithHeight(self.h, height.h)

proc height*(self: QTextFrameFormat, ): QTextLength =

  QTextLength(h: fcQTextFrameFormat_height(self.h))

proc setPageBreakPolicy*(self: QTextFrameFormat, flags: QTextFormatPageBreakFlag): void =

  fcQTextFrameFormat_setPageBreakPolicy(self.h, cint(flags))

proc pageBreakPolicy*(self: QTextFrameFormat, ): QTextFormatPageBreakFlag =

  QTextFormatPageBreakFlag(fcQTextFrameFormat_pageBreakPolicy(self.h))

proc delete*(self: QTextFrameFormat) =
  fcQTextFrameFormat_delete(self.h)

func init*(T: type QTextTableFormat, h: ptr cQTextTableFormat): QTextTableFormat =
  T(h: h)
proc create*(T: type QTextTableFormat, ): QTextTableFormat =

  QTextTableFormat.init(fcQTextTableFormat_new())
proc isValid*(self: QTextTableFormat, ): bool =

  fcQTextTableFormat_isValid(self.h)

proc columns*(self: QTextTableFormat, ): cint =

  fcQTextTableFormat_columns(self.h)

proc setColumns*(self: QTextTableFormat, columns: cint): void =

  fcQTextTableFormat_setColumns(self.h, columns)

proc setColumnWidthConstraints*(self: QTextTableFormat, constraints: seq[QTextLength]): void =

  var constraints_CArray = newSeq[pointer](len(constraints))
  for i in 0..<len(constraints):
    constraints_CArray[i] = constraints[i].h

  fcQTextTableFormat_setColumnWidthConstraints(self.h, struct_miqt_array(len: csize_t(len(constraints)), data: if len(constraints) == 0: nil else: addr(constraints_CArray[0])))

proc columnWidthConstraints*(self: QTextTableFormat, ): seq[QTextLength] =

  var v_ma = fcQTextTableFormat_columnWidthConstraints(self.h)
  var vx_ret = newSeq[QTextLength](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QTextLength(h: v_outCast[i])
  vx_ret

proc clearColumnWidthConstraints*(self: QTextTableFormat, ): void =

  fcQTextTableFormat_clearColumnWidthConstraints(self.h)

proc cellSpacing*(self: QTextTableFormat, ): float64 =

  fcQTextTableFormat_cellSpacing(self.h)

proc setCellSpacing*(self: QTextTableFormat, spacing: float64): void =

  fcQTextTableFormat_setCellSpacing(self.h, spacing)

proc cellPadding*(self: QTextTableFormat, ): float64 =

  fcQTextTableFormat_cellPadding(self.h)

proc setCellPadding*(self: QTextTableFormat, padding: float64): void =

  fcQTextTableFormat_setCellPadding(self.h, padding)

proc setAlignment*(self: QTextTableFormat, alignment: gen_qnamespace.AlignmentFlag): void =

  fcQTextTableFormat_setAlignment(self.h, cint(alignment))

proc alignment*(self: QTextTableFormat, ): gen_qnamespace.AlignmentFlag =

  gen_qnamespace.AlignmentFlag(fcQTextTableFormat_alignment(self.h))

proc setHeaderRowCount*(self: QTextTableFormat, count: cint): void =

  fcQTextTableFormat_setHeaderRowCount(self.h, count)

proc headerRowCount*(self: QTextTableFormat, ): cint =

  fcQTextTableFormat_headerRowCount(self.h)

proc setBorderCollapse*(self: QTextTableFormat, borderCollapse: bool): void =

  fcQTextTableFormat_setBorderCollapse(self.h, borderCollapse)

proc borderCollapse*(self: QTextTableFormat, ): bool =

  fcQTextTableFormat_borderCollapse(self.h)

proc delete*(self: QTextTableFormat) =
  fcQTextTableFormat_delete(self.h)

func init*(T: type QTextTableCellFormat, h: ptr cQTextTableCellFormat): QTextTableCellFormat =
  T(h: h)
proc create*(T: type QTextTableCellFormat, ): QTextTableCellFormat =

  QTextTableCellFormat.init(fcQTextTableCellFormat_new())
proc isValid*(self: QTextTableCellFormat, ): bool =

  fcQTextTableCellFormat_isValid(self.h)

proc setTopPadding*(self: QTextTableCellFormat, padding: float64): void =

  fcQTextTableCellFormat_setTopPadding(self.h, padding)

proc topPadding*(self: QTextTableCellFormat, ): float64 =

  fcQTextTableCellFormat_topPadding(self.h)

proc setBottomPadding*(self: QTextTableCellFormat, padding: float64): void =

  fcQTextTableCellFormat_setBottomPadding(self.h, padding)

proc bottomPadding*(self: QTextTableCellFormat, ): float64 =

  fcQTextTableCellFormat_bottomPadding(self.h)

proc setLeftPadding*(self: QTextTableCellFormat, padding: float64): void =

  fcQTextTableCellFormat_setLeftPadding(self.h, padding)

proc leftPadding*(self: QTextTableCellFormat, ): float64 =

  fcQTextTableCellFormat_leftPadding(self.h)

proc setRightPadding*(self: QTextTableCellFormat, padding: float64): void =

  fcQTextTableCellFormat_setRightPadding(self.h, padding)

proc rightPadding*(self: QTextTableCellFormat, ): float64 =

  fcQTextTableCellFormat_rightPadding(self.h)

proc setPadding*(self: QTextTableCellFormat, padding: float64): void =

  fcQTextTableCellFormat_setPadding(self.h, padding)

proc setTopBorder*(self: QTextTableCellFormat, width: float64): void =

  fcQTextTableCellFormat_setTopBorder(self.h, width)

proc topBorder*(self: QTextTableCellFormat, ): float64 =

  fcQTextTableCellFormat_topBorder(self.h)

proc setBottomBorder*(self: QTextTableCellFormat, width: float64): void =

  fcQTextTableCellFormat_setBottomBorder(self.h, width)

proc bottomBorder*(self: QTextTableCellFormat, ): float64 =

  fcQTextTableCellFormat_bottomBorder(self.h)

proc setLeftBorder*(self: QTextTableCellFormat, width: float64): void =

  fcQTextTableCellFormat_setLeftBorder(self.h, width)

proc leftBorder*(self: QTextTableCellFormat, ): float64 =

  fcQTextTableCellFormat_leftBorder(self.h)

proc setRightBorder*(self: QTextTableCellFormat, width: float64): void =

  fcQTextTableCellFormat_setRightBorder(self.h, width)

proc rightBorder*(self: QTextTableCellFormat, ): float64 =

  fcQTextTableCellFormat_rightBorder(self.h)

proc setBorder*(self: QTextTableCellFormat, width: float64): void =

  fcQTextTableCellFormat_setBorder(self.h, width)

proc setTopBorderStyle*(self: QTextTableCellFormat, style: QTextFrameFormatBorderStyle): void =

  fcQTextTableCellFormat_setTopBorderStyle(self.h, cint(style))

proc topBorderStyle*(self: QTextTableCellFormat, ): QTextFrameFormatBorderStyle =

  QTextFrameFormatBorderStyle(fcQTextTableCellFormat_topBorderStyle(self.h))

proc setBottomBorderStyle*(self: QTextTableCellFormat, style: QTextFrameFormatBorderStyle): void =

  fcQTextTableCellFormat_setBottomBorderStyle(self.h, cint(style))

proc bottomBorderStyle*(self: QTextTableCellFormat, ): QTextFrameFormatBorderStyle =

  QTextFrameFormatBorderStyle(fcQTextTableCellFormat_bottomBorderStyle(self.h))

proc setLeftBorderStyle*(self: QTextTableCellFormat, style: QTextFrameFormatBorderStyle): void =

  fcQTextTableCellFormat_setLeftBorderStyle(self.h, cint(style))

proc leftBorderStyle*(self: QTextTableCellFormat, ): QTextFrameFormatBorderStyle =

  QTextFrameFormatBorderStyle(fcQTextTableCellFormat_leftBorderStyle(self.h))

proc setRightBorderStyle*(self: QTextTableCellFormat, style: QTextFrameFormatBorderStyle): void =

  fcQTextTableCellFormat_setRightBorderStyle(self.h, cint(style))

proc rightBorderStyle*(self: QTextTableCellFormat, ): QTextFrameFormatBorderStyle =

  QTextFrameFormatBorderStyle(fcQTextTableCellFormat_rightBorderStyle(self.h))

proc setBorderStyle*(self: QTextTableCellFormat, style: QTextFrameFormatBorderStyle): void =

  fcQTextTableCellFormat_setBorderStyle(self.h, cint(style))

proc setTopBorderBrush*(self: QTextTableCellFormat, brush: gen_qbrush.QBrush): void =

  fcQTextTableCellFormat_setTopBorderBrush(self.h, brush.h)

proc topBorderBrush*(self: QTextTableCellFormat, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQTextTableCellFormat_topBorderBrush(self.h))

proc setBottomBorderBrush*(self: QTextTableCellFormat, brush: gen_qbrush.QBrush): void =

  fcQTextTableCellFormat_setBottomBorderBrush(self.h, brush.h)

proc bottomBorderBrush*(self: QTextTableCellFormat, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQTextTableCellFormat_bottomBorderBrush(self.h))

proc setLeftBorderBrush*(self: QTextTableCellFormat, brush: gen_qbrush.QBrush): void =

  fcQTextTableCellFormat_setLeftBorderBrush(self.h, brush.h)

proc leftBorderBrush*(self: QTextTableCellFormat, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQTextTableCellFormat_leftBorderBrush(self.h))

proc setRightBorderBrush*(self: QTextTableCellFormat, brush: gen_qbrush.QBrush): void =

  fcQTextTableCellFormat_setRightBorderBrush(self.h, brush.h)

proc rightBorderBrush*(self: QTextTableCellFormat, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQTextTableCellFormat_rightBorderBrush(self.h))

proc setBorderBrush*(self: QTextTableCellFormat, brush: gen_qbrush.QBrush): void =

  fcQTextTableCellFormat_setBorderBrush(self.h, brush.h)

proc delete*(self: QTextTableCellFormat) =
  fcQTextTableCellFormat_delete(self.h)
