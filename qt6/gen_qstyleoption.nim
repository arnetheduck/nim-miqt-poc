import Qt6Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt6Widgets")
{.compile("gen_qstyleoption.cpp", cflags).}


type QStyleOptionOptionType* = cint
const
  QStyleOptionSO_Default* = 0
  QStyleOptionSO_FocusRect* = 1
  QStyleOptionSO_Button* = 2
  QStyleOptionSO_Tab* = 3
  QStyleOptionSO_MenuItem* = 4
  QStyleOptionSO_Frame* = 5
  QStyleOptionSO_ProgressBar* = 6
  QStyleOptionSO_ToolBox* = 7
  QStyleOptionSO_Header* = 8
  QStyleOptionSO_DockWidget* = 9
  QStyleOptionSO_ViewItem* = 10
  QStyleOptionSO_TabWidgetFrame* = 11
  QStyleOptionSO_TabBarBase* = 12
  QStyleOptionSO_RubberBand* = 13
  QStyleOptionSO_ToolBar* = 14
  QStyleOptionSO_GraphicsItem* = 15
  QStyleOptionSO_Complex* = 983040
  QStyleOptionSO_Slider* = 983041
  QStyleOptionSO_SpinBox* = 983042
  QStyleOptionSO_ToolButton* = 983043
  QStyleOptionSO_ComboBox* = 983044
  QStyleOptionSO_TitleBar* = 983045
  QStyleOptionSO_GroupBox* = 983046
  QStyleOptionSO_SizeGrip* = 983047
  QStyleOptionSO_CustomBase* = 3840
  QStyleOptionSO_ComplexCustomBase* = 251658240



type QStyleOptionStyleOptionType* = cint
const
  QStyleOptionType* = 0



type QStyleOptionStyleOptionVersion* = cint
const
  QStyleOptionVersion* = 1



type QStyleOptionFocusRectStyleOptionType* = cint
const
  QStyleOptionFocusRectType* = 1



type QStyleOptionFocusRectStyleOptionVersion* = cint
const
  QStyleOptionFocusRectVersion* = 1



type QStyleOptionFrameStyleOptionType* = cint
const
  QStyleOptionFrameType* = 5



type QStyleOptionFrameStyleOptionVersion* = cint
const
  QStyleOptionFrameVersion* = 1



type QStyleOptionFrameFrameFeature* = cint
const
  QStyleOptionFrameNone* = 0
  QStyleOptionFrameFlat* = 1
  QStyleOptionFrameRounded* = 2



type QStyleOptionTabWidgetFrameStyleOptionType* = cint
const
  QStyleOptionTabWidgetFrameType* = 11



type QStyleOptionTabWidgetFrameStyleOptionVersion* = cint
const
  QStyleOptionTabWidgetFrameVersion* = 1



type QStyleOptionTabBarBaseStyleOptionType* = cint
const
  QStyleOptionTabBarBaseType* = 12



type QStyleOptionTabBarBaseStyleOptionVersion* = cint
const
  QStyleOptionTabBarBaseVersion* = 1



type QStyleOptionHeaderStyleOptionType* = cint
const
  QStyleOptionHeaderType* = 8



type QStyleOptionHeaderStyleOptionVersion* = cint
const
  QStyleOptionHeaderVersion* = 1



type QStyleOptionHeaderSectionPosition* = cint
const
  QStyleOptionHeaderBeginning* = 0
  QStyleOptionHeaderMiddle* = 1
  QStyleOptionHeaderEnd* = 2
  QStyleOptionHeaderOnlyOneSection* = 3



type QStyleOptionHeaderSelectedPosition* = cint
const
  QStyleOptionHeaderNotAdjacent* = 0
  QStyleOptionHeaderNextIsSelected* = 1
  QStyleOptionHeaderPreviousIsSelected* = 2
  QStyleOptionHeaderNextAndPreviousAreSelected* = 3



type QStyleOptionHeaderSortIndicator* = cint
const
  QStyleOptionHeaderNone* = 0
  QStyleOptionHeaderSortUp* = 1
  QStyleOptionHeaderSortDown* = 2



type QStyleOptionHeaderV2StyleOptionType* = cint
const
  QStyleOptionHeaderV2Type* = 8



type QStyleOptionHeaderV2StyleOptionVersion* = cint
const
  QStyleOptionHeaderV2Version* = 2



type QStyleOptionButtonStyleOptionType* = cint
const
  QStyleOptionButtonType* = 2



type QStyleOptionButtonStyleOptionVersion* = cint
const
  QStyleOptionButtonVersion* = 1



type QStyleOptionButtonButtonFeature* = cint
const
  QStyleOptionButtonNone* = 0
  QStyleOptionButtonFlat* = 1
  QStyleOptionButtonHasMenu* = 2
  QStyleOptionButtonDefaultButton* = 4
  QStyleOptionButtonAutoDefaultButton* = 8
  QStyleOptionButtonCommandLinkButton* = 16



type QStyleOptionTabStyleOptionType* = cint
const
  QStyleOptionTabType* = 3



type QStyleOptionTabStyleOptionVersion* = cint
const
  QStyleOptionTabVersion* = 1



type QStyleOptionTabTabPosition* = cint
const
  QStyleOptionTabBeginning* = 0
  QStyleOptionTabMiddle* = 1
  QStyleOptionTabEnd* = 2
  QStyleOptionTabOnlyOneTab* = 3



type QStyleOptionTabSelectedPosition* = cint
const
  QStyleOptionTabNotAdjacent* = 0
  QStyleOptionTabNextIsSelected* = 1
  QStyleOptionTabPreviousIsSelected* = 2



type QStyleOptionTabCornerWidget* = cint
const
  QStyleOptionTabNoCornerWidgets* = 0
  QStyleOptionTabLeftCornerWidget* = 1
  QStyleOptionTabRightCornerWidget* = 2



type QStyleOptionTabTabFeature* = cint
const
  QStyleOptionTabNone* = 0
  QStyleOptionTabHasFrame* = 1



type QStyleOptionToolBarStyleOptionType* = cint
const
  QStyleOptionToolBarType* = 14



type QStyleOptionToolBarStyleOptionVersion* = cint
const
  QStyleOptionToolBarVersion* = 1



type QStyleOptionToolBarToolBarPosition* = cint
const
  QStyleOptionToolBarBeginning* = 0
  QStyleOptionToolBarMiddle* = 1
  QStyleOptionToolBarEnd* = 2
  QStyleOptionToolBarOnlyOne* = 3



type QStyleOptionToolBarToolBarFeature* = cint
const
  QStyleOptionToolBarNone* = 0
  QStyleOptionToolBarMovable* = 1



type QStyleOptionProgressBarStyleOptionType* = cint
const
  QStyleOptionProgressBarType* = 6



type QStyleOptionProgressBarStyleOptionVersion* = cint
const
  QStyleOptionProgressBarVersion* = 1



type QStyleOptionMenuItemStyleOptionType* = cint
const
  QStyleOptionMenuItemType* = 4



type QStyleOptionMenuItemStyleOptionVersion* = cint
const
  QStyleOptionMenuItemVersion* = 1



type QStyleOptionMenuItemMenuItemType* = cint
const
  QStyleOptionMenuItemNormal* = 0
  QStyleOptionMenuItemDefaultItem* = 1
  QStyleOptionMenuItemSeparator* = 2
  QStyleOptionMenuItemSubMenu* = 3
  QStyleOptionMenuItemScroller* = 4
  QStyleOptionMenuItemTearOff* = 5
  QStyleOptionMenuItemMargin* = 6
  QStyleOptionMenuItemEmptyArea* = 7



type QStyleOptionMenuItemCheckType* = cint
const
  QStyleOptionMenuItemNotCheckable* = 0
  QStyleOptionMenuItemExclusive* = 1
  QStyleOptionMenuItemNonExclusive* = 2



type QStyleOptionDockWidgetStyleOptionType* = cint
const
  QStyleOptionDockWidgetType* = 9



type QStyleOptionDockWidgetStyleOptionVersion* = cint
const
  QStyleOptionDockWidgetVersion* = 1



type QStyleOptionViewItemStyleOptionType* = cint
const
  QStyleOptionViewItemType* = 10



type QStyleOptionViewItemStyleOptionVersion* = cint
const
  QStyleOptionViewItemVersion* = 1



type QStyleOptionViewItemPosition* = cint
const
  QStyleOptionViewItemLeft* = 0
  QStyleOptionViewItemRight* = 1
  QStyleOptionViewItemTop* = 2
  QStyleOptionViewItemBottom* = 3



type QStyleOptionViewItemViewItemFeature* = cint
const
  QStyleOptionViewItemNone* = 0
  QStyleOptionViewItemWrapText* = 1
  QStyleOptionViewItemAlternate* = 2
  QStyleOptionViewItemHasCheckIndicator* = 4
  QStyleOptionViewItemHasDisplay* = 8
  QStyleOptionViewItemHasDecoration* = 16



type QStyleOptionViewItemViewItemPosition* = cint
const
  QStyleOptionViewItemInvalid* = 0
  QStyleOptionViewItemBeginning* = 1
  QStyleOptionViewItemMiddle* = 2
  QStyleOptionViewItemEnd* = 3
  QStyleOptionViewItemOnlyOne* = 4



type QStyleOptionToolBoxStyleOptionType* = cint
const
  QStyleOptionToolBoxType* = 7



type QStyleOptionToolBoxStyleOptionVersion* = cint
const
  QStyleOptionToolBoxVersion* = 1



type QStyleOptionToolBoxTabPosition* = cint
const
  QStyleOptionToolBoxBeginning* = 0
  QStyleOptionToolBoxMiddle* = 1
  QStyleOptionToolBoxEnd* = 2
  QStyleOptionToolBoxOnlyOneTab* = 3



type QStyleOptionToolBoxSelectedPosition* = cint
const
  QStyleOptionToolBoxNotAdjacent* = 0
  QStyleOptionToolBoxNextIsSelected* = 1
  QStyleOptionToolBoxPreviousIsSelected* = 2



type QStyleOptionRubberBandStyleOptionType* = cint
const
  QStyleOptionRubberBandType* = 13



type QStyleOptionRubberBandStyleOptionVersion* = cint
const
  QStyleOptionRubberBandVersion* = 1



type QStyleOptionComplexStyleOptionType* = cint
const
  QStyleOptionComplexType* = 983040



type QStyleOptionComplexStyleOptionVersion* = cint
const
  QStyleOptionComplexVersion* = 1



type QStyleOptionSliderStyleOptionType* = cint
const
  QStyleOptionSliderType* = 983041



type QStyleOptionSliderStyleOptionVersion* = cint
const
  QStyleOptionSliderVersion* = 1



type QStyleOptionSpinBoxStyleOptionType* = cint
const
  QStyleOptionSpinBoxType* = 983042



type QStyleOptionSpinBoxStyleOptionVersion* = cint
const
  QStyleOptionSpinBoxVersion* = 1



type QStyleOptionToolButtonStyleOptionType* = cint
const
  QStyleOptionToolButtonType* = 983043



type QStyleOptionToolButtonStyleOptionVersion* = cint
const
  QStyleOptionToolButtonVersion* = 1



type QStyleOptionToolButtonToolButtonFeature* = cint
const
  QStyleOptionToolButtonNone* = 0
  QStyleOptionToolButtonArrow* = 1
  QStyleOptionToolButtonMenu* = 4
  QStyleOptionToolButtonMenuButtonPopup* = 4
  QStyleOptionToolButtonPopupDelay* = 8
  QStyleOptionToolButtonHasMenu* = 16



type QStyleOptionComboBoxStyleOptionType* = cint
const
  QStyleOptionComboBoxType* = 983044



type QStyleOptionComboBoxStyleOptionVersion* = cint
const
  QStyleOptionComboBoxVersion* = 1



type QStyleOptionTitleBarStyleOptionType* = cint
const
  QStyleOptionTitleBarType* = 983045



type QStyleOptionTitleBarStyleOptionVersion* = cint
const
  QStyleOptionTitleBarVersion* = 1



type QStyleOptionGroupBoxStyleOptionType* = cint
const
  QStyleOptionGroupBoxType* = 983046



type QStyleOptionGroupBoxStyleOptionVersion* = cint
const
  QStyleOptionGroupBoxVersion* = 1



type QStyleOptionSizeGripStyleOptionType* = cint
const
  QStyleOptionSizeGripType* = 983047



type QStyleOptionSizeGripStyleOptionVersion* = cint
const
  QStyleOptionSizeGripVersion* = 1



type QStyleOptionGraphicsItemStyleOptionType* = cint
const
  QStyleOptionGraphicsItemType* = 15



type QStyleOptionGraphicsItemStyleOptionVersion* = cint
const
  QStyleOptionGraphicsItemVersion* = 1



type QStyleHintReturnHintReturnType* = cint
const
  QStyleHintReturnSH_Default* = 61440
  QStyleHintReturnSH_Mask* = 61441
  QStyleHintReturnSH_Variant* = 61442



type QStyleHintReturnStyleOptionType* = cint
const
  QStyleHintReturnType* = 61440



type QStyleHintReturnStyleOptionVersion* = cint
const
  QStyleHintReturnVersion* = 1



type QStyleHintReturnMaskStyleOptionType* = cint
const
  QStyleHintReturnMaskType* = 61441



type QStyleHintReturnMaskStyleOptionVersion* = cint
const
  QStyleHintReturnMaskVersion* = 1



type QStyleHintReturnVariantStyleOptionType* = cint
const
  QStyleHintReturnVariantType* = 61442



type QStyleHintReturnVariantStyleOptionVersion* = cint
const
  QStyleHintReturnVariantVersion* = 1



import gen_qstyleoption_types
export gen_qstyleoption_types

import
  gen_qtransform,
  gen_qwidget
export
  gen_qtransform,
  gen_qwidget

type cQStyleOption*{.exportc: "QStyleOption", incompleteStruct.} = object
type cQStyleOptionFocusRect*{.exportc: "QStyleOptionFocusRect", incompleteStruct.} = object
type cQStyleOptionFrame*{.exportc: "QStyleOptionFrame", incompleteStruct.} = object
type cQStyleOptionTabWidgetFrame*{.exportc: "QStyleOptionTabWidgetFrame", incompleteStruct.} = object
type cQStyleOptionTabBarBase*{.exportc: "QStyleOptionTabBarBase", incompleteStruct.} = object
type cQStyleOptionHeader*{.exportc: "QStyleOptionHeader", incompleteStruct.} = object
type cQStyleOptionHeaderV2*{.exportc: "QStyleOptionHeaderV2", incompleteStruct.} = object
type cQStyleOptionButton*{.exportc: "QStyleOptionButton", incompleteStruct.} = object
type cQStyleOptionTab*{.exportc: "QStyleOptionTab", incompleteStruct.} = object
type cQStyleOptionToolBar*{.exportc: "QStyleOptionToolBar", incompleteStruct.} = object
type cQStyleOptionProgressBar*{.exportc: "QStyleOptionProgressBar", incompleteStruct.} = object
type cQStyleOptionMenuItem*{.exportc: "QStyleOptionMenuItem", incompleteStruct.} = object
type cQStyleOptionDockWidget*{.exportc: "QStyleOptionDockWidget", incompleteStruct.} = object
type cQStyleOptionViewItem*{.exportc: "QStyleOptionViewItem", incompleteStruct.} = object
type cQStyleOptionToolBox*{.exportc: "QStyleOptionToolBox", incompleteStruct.} = object
type cQStyleOptionRubberBand*{.exportc: "QStyleOptionRubberBand", incompleteStruct.} = object
type cQStyleOptionComplex*{.exportc: "QStyleOptionComplex", incompleteStruct.} = object
type cQStyleOptionSlider*{.exportc: "QStyleOptionSlider", incompleteStruct.} = object
type cQStyleOptionSpinBox*{.exportc: "QStyleOptionSpinBox", incompleteStruct.} = object
type cQStyleOptionToolButton*{.exportc: "QStyleOptionToolButton", incompleteStruct.} = object
type cQStyleOptionComboBox*{.exportc: "QStyleOptionComboBox", incompleteStruct.} = object
type cQStyleOptionTitleBar*{.exportc: "QStyleOptionTitleBar", incompleteStruct.} = object
type cQStyleOptionGroupBox*{.exportc: "QStyleOptionGroupBox", incompleteStruct.} = object
type cQStyleOptionSizeGrip*{.exportc: "QStyleOptionSizeGrip", incompleteStruct.} = object
type cQStyleOptionGraphicsItem*{.exportc: "QStyleOptionGraphicsItem", incompleteStruct.} = object
type cQStyleHintReturn*{.exportc: "QStyleHintReturn", incompleteStruct.} = object
type cQStyleHintReturnMask*{.exportc: "QStyleHintReturnMask", incompleteStruct.} = object
type cQStyleHintReturnVariant*{.exportc: "QStyleHintReturnVariant", incompleteStruct.} = object

proc fcQStyleOption_new(): ptr cQStyleOption {.importc: "QStyleOption_new".}
proc fcQStyleOption_new2(other: pointer): ptr cQStyleOption {.importc: "QStyleOption_new2".}
proc fcQStyleOption_new3(version: cint): ptr cQStyleOption {.importc: "QStyleOption_new3".}
proc fcQStyleOption_new4(version: cint, typeVal: cint): ptr cQStyleOption {.importc: "QStyleOption_new4".}
proc fcQStyleOption_initFrom(self: pointer, w: pointer): void {.importc: "QStyleOption_initFrom".}
proc fcQStyleOption_operatorAssign(self: pointer, other: pointer): void {.importc: "QStyleOption_operatorAssign".}
proc fcQStyleOption_delete(self: pointer) {.importc: "QStyleOption_delete".}
proc fcQStyleOptionFocusRect_new(): ptr cQStyleOptionFocusRect {.importc: "QStyleOptionFocusRect_new".}
proc fcQStyleOptionFocusRect_new2(other: pointer): ptr cQStyleOptionFocusRect {.importc: "QStyleOptionFocusRect_new2".}
proc fcQStyleOptionFocusRect_delete(self: pointer) {.importc: "QStyleOptionFocusRect_delete".}
proc fcQStyleOptionFrame_new(): ptr cQStyleOptionFrame {.importc: "QStyleOptionFrame_new".}
proc fcQStyleOptionFrame_new2(other: pointer): ptr cQStyleOptionFrame {.importc: "QStyleOptionFrame_new2".}
proc fcQStyleOptionFrame_delete(self: pointer) {.importc: "QStyleOptionFrame_delete".}
proc fcQStyleOptionTabWidgetFrame_new(): ptr cQStyleOptionTabWidgetFrame {.importc: "QStyleOptionTabWidgetFrame_new".}
proc fcQStyleOptionTabWidgetFrame_new2(other: pointer): ptr cQStyleOptionTabWidgetFrame {.importc: "QStyleOptionTabWidgetFrame_new2".}
proc fcQStyleOptionTabWidgetFrame_delete(self: pointer) {.importc: "QStyleOptionTabWidgetFrame_delete".}
proc fcQStyleOptionTabBarBase_new(): ptr cQStyleOptionTabBarBase {.importc: "QStyleOptionTabBarBase_new".}
proc fcQStyleOptionTabBarBase_new2(other: pointer): ptr cQStyleOptionTabBarBase {.importc: "QStyleOptionTabBarBase_new2".}
proc fcQStyleOptionTabBarBase_delete(self: pointer) {.importc: "QStyleOptionTabBarBase_delete".}
proc fcQStyleOptionHeader_new(): ptr cQStyleOptionHeader {.importc: "QStyleOptionHeader_new".}
proc fcQStyleOptionHeader_new2(other: pointer): ptr cQStyleOptionHeader {.importc: "QStyleOptionHeader_new2".}
proc fcQStyleOptionHeader_delete(self: pointer) {.importc: "QStyleOptionHeader_delete".}
proc fcQStyleOptionHeaderV2_new(): ptr cQStyleOptionHeaderV2 {.importc: "QStyleOptionHeaderV2_new".}
proc fcQStyleOptionHeaderV2_new2(other: pointer): ptr cQStyleOptionHeaderV2 {.importc: "QStyleOptionHeaderV2_new2".}
proc fcQStyleOptionHeaderV2_delete(self: pointer) {.importc: "QStyleOptionHeaderV2_delete".}
proc fcQStyleOptionButton_new(): ptr cQStyleOptionButton {.importc: "QStyleOptionButton_new".}
proc fcQStyleOptionButton_new2(other: pointer): ptr cQStyleOptionButton {.importc: "QStyleOptionButton_new2".}
proc fcQStyleOptionButton_delete(self: pointer) {.importc: "QStyleOptionButton_delete".}
proc fcQStyleOptionTab_new(): ptr cQStyleOptionTab {.importc: "QStyleOptionTab_new".}
proc fcQStyleOptionTab_new2(other: pointer): ptr cQStyleOptionTab {.importc: "QStyleOptionTab_new2".}
proc fcQStyleOptionTab_delete(self: pointer) {.importc: "QStyleOptionTab_delete".}
proc fcQStyleOptionToolBar_new(): ptr cQStyleOptionToolBar {.importc: "QStyleOptionToolBar_new".}
proc fcQStyleOptionToolBar_new2(other: pointer): ptr cQStyleOptionToolBar {.importc: "QStyleOptionToolBar_new2".}
proc fcQStyleOptionToolBar_delete(self: pointer) {.importc: "QStyleOptionToolBar_delete".}
proc fcQStyleOptionProgressBar_new(): ptr cQStyleOptionProgressBar {.importc: "QStyleOptionProgressBar_new".}
proc fcQStyleOptionProgressBar_new2(other: pointer): ptr cQStyleOptionProgressBar {.importc: "QStyleOptionProgressBar_new2".}
proc fcQStyleOptionProgressBar_delete(self: pointer) {.importc: "QStyleOptionProgressBar_delete".}
proc fcQStyleOptionMenuItem_new(): ptr cQStyleOptionMenuItem {.importc: "QStyleOptionMenuItem_new".}
proc fcQStyleOptionMenuItem_new2(other: pointer): ptr cQStyleOptionMenuItem {.importc: "QStyleOptionMenuItem_new2".}
proc fcQStyleOptionMenuItem_delete(self: pointer) {.importc: "QStyleOptionMenuItem_delete".}
proc fcQStyleOptionDockWidget_new(): ptr cQStyleOptionDockWidget {.importc: "QStyleOptionDockWidget_new".}
proc fcQStyleOptionDockWidget_new2(other: pointer): ptr cQStyleOptionDockWidget {.importc: "QStyleOptionDockWidget_new2".}
proc fcQStyleOptionDockWidget_delete(self: pointer) {.importc: "QStyleOptionDockWidget_delete".}
proc fcQStyleOptionViewItem_new(): ptr cQStyleOptionViewItem {.importc: "QStyleOptionViewItem_new".}
proc fcQStyleOptionViewItem_new2(other: pointer): ptr cQStyleOptionViewItem {.importc: "QStyleOptionViewItem_new2".}
proc fcQStyleOptionViewItem_delete(self: pointer) {.importc: "QStyleOptionViewItem_delete".}
proc fcQStyleOptionToolBox_new(): ptr cQStyleOptionToolBox {.importc: "QStyleOptionToolBox_new".}
proc fcQStyleOptionToolBox_new2(other: pointer): ptr cQStyleOptionToolBox {.importc: "QStyleOptionToolBox_new2".}
proc fcQStyleOptionToolBox_delete(self: pointer) {.importc: "QStyleOptionToolBox_delete".}
proc fcQStyleOptionRubberBand_new(): ptr cQStyleOptionRubberBand {.importc: "QStyleOptionRubberBand_new".}
proc fcQStyleOptionRubberBand_new2(other: pointer): ptr cQStyleOptionRubberBand {.importc: "QStyleOptionRubberBand_new2".}
proc fcQStyleOptionRubberBand_delete(self: pointer) {.importc: "QStyleOptionRubberBand_delete".}
proc fcQStyleOptionComplex_new(): ptr cQStyleOptionComplex {.importc: "QStyleOptionComplex_new".}
proc fcQStyleOptionComplex_new2(other: pointer): ptr cQStyleOptionComplex {.importc: "QStyleOptionComplex_new2".}
proc fcQStyleOptionComplex_new3(version: cint): ptr cQStyleOptionComplex {.importc: "QStyleOptionComplex_new3".}
proc fcQStyleOptionComplex_new4(version: cint, typeVal: cint): ptr cQStyleOptionComplex {.importc: "QStyleOptionComplex_new4".}
proc fcQStyleOptionComplex_delete(self: pointer) {.importc: "QStyleOptionComplex_delete".}
proc fcQStyleOptionSlider_new(): ptr cQStyleOptionSlider {.importc: "QStyleOptionSlider_new".}
proc fcQStyleOptionSlider_new2(other: pointer): ptr cQStyleOptionSlider {.importc: "QStyleOptionSlider_new2".}
proc fcQStyleOptionSlider_delete(self: pointer) {.importc: "QStyleOptionSlider_delete".}
proc fcQStyleOptionSpinBox_new(): ptr cQStyleOptionSpinBox {.importc: "QStyleOptionSpinBox_new".}
proc fcQStyleOptionSpinBox_new2(other: pointer): ptr cQStyleOptionSpinBox {.importc: "QStyleOptionSpinBox_new2".}
proc fcQStyleOptionSpinBox_delete(self: pointer) {.importc: "QStyleOptionSpinBox_delete".}
proc fcQStyleOptionToolButton_new(): ptr cQStyleOptionToolButton {.importc: "QStyleOptionToolButton_new".}
proc fcQStyleOptionToolButton_new2(other: pointer): ptr cQStyleOptionToolButton {.importc: "QStyleOptionToolButton_new2".}
proc fcQStyleOptionToolButton_delete(self: pointer) {.importc: "QStyleOptionToolButton_delete".}
proc fcQStyleOptionComboBox_new(): ptr cQStyleOptionComboBox {.importc: "QStyleOptionComboBox_new".}
proc fcQStyleOptionComboBox_new2(other: pointer): ptr cQStyleOptionComboBox {.importc: "QStyleOptionComboBox_new2".}
proc fcQStyleOptionComboBox_delete(self: pointer) {.importc: "QStyleOptionComboBox_delete".}
proc fcQStyleOptionTitleBar_new(): ptr cQStyleOptionTitleBar {.importc: "QStyleOptionTitleBar_new".}
proc fcQStyleOptionTitleBar_new2(other: pointer): ptr cQStyleOptionTitleBar {.importc: "QStyleOptionTitleBar_new2".}
proc fcQStyleOptionTitleBar_delete(self: pointer) {.importc: "QStyleOptionTitleBar_delete".}
proc fcQStyleOptionGroupBox_new(): ptr cQStyleOptionGroupBox {.importc: "QStyleOptionGroupBox_new".}
proc fcQStyleOptionGroupBox_new2(other: pointer): ptr cQStyleOptionGroupBox {.importc: "QStyleOptionGroupBox_new2".}
proc fcQStyleOptionGroupBox_delete(self: pointer) {.importc: "QStyleOptionGroupBox_delete".}
proc fcQStyleOptionSizeGrip_new(): ptr cQStyleOptionSizeGrip {.importc: "QStyleOptionSizeGrip_new".}
proc fcQStyleOptionSizeGrip_new2(other: pointer): ptr cQStyleOptionSizeGrip {.importc: "QStyleOptionSizeGrip_new2".}
proc fcQStyleOptionSizeGrip_delete(self: pointer) {.importc: "QStyleOptionSizeGrip_delete".}
proc fcQStyleOptionGraphicsItem_new(): ptr cQStyleOptionGraphicsItem {.importc: "QStyleOptionGraphicsItem_new".}
proc fcQStyleOptionGraphicsItem_new2(other: pointer): ptr cQStyleOptionGraphicsItem {.importc: "QStyleOptionGraphicsItem_new2".}
proc fcQStyleOptionGraphicsItem_levelOfDetailFromTransform(worldTransform: pointer): float64 {.importc: "QStyleOptionGraphicsItem_levelOfDetailFromTransform".}
proc fcQStyleOptionGraphicsItem_delete(self: pointer) {.importc: "QStyleOptionGraphicsItem_delete".}
proc fcQStyleHintReturn_new(): ptr cQStyleHintReturn {.importc: "QStyleHintReturn_new".}
proc fcQStyleHintReturn_new2(param1: pointer): ptr cQStyleHintReturn {.importc: "QStyleHintReturn_new2".}
proc fcQStyleHintReturn_new3(version: cint): ptr cQStyleHintReturn {.importc: "QStyleHintReturn_new3".}
proc fcQStyleHintReturn_new4(version: cint, typeVal: cint): ptr cQStyleHintReturn {.importc: "QStyleHintReturn_new4".}
proc fcQStyleHintReturn_operatorAssign(self: pointer, param1: pointer): void {.importc: "QStyleHintReturn_operatorAssign".}
proc fcQStyleHintReturn_delete(self: pointer) {.importc: "QStyleHintReturn_delete".}
proc fcQStyleHintReturnMask_new(): ptr cQStyleHintReturnMask {.importc: "QStyleHintReturnMask_new".}
proc fcQStyleHintReturnMask_new2(param1: pointer): ptr cQStyleHintReturnMask {.importc: "QStyleHintReturnMask_new2".}
proc fcQStyleHintReturnMask_operatorAssign(self: pointer, param1: pointer): void {.importc: "QStyleHintReturnMask_operatorAssign".}
proc fcQStyleHintReturnMask_delete(self: pointer) {.importc: "QStyleHintReturnMask_delete".}
proc fcQStyleHintReturnVariant_new(): ptr cQStyleHintReturnVariant {.importc: "QStyleHintReturnVariant_new".}
proc fcQStyleHintReturnVariant_new2(param1: pointer): ptr cQStyleHintReturnVariant {.importc: "QStyleHintReturnVariant_new2".}
proc fcQStyleHintReturnVariant_operatorAssign(self: pointer, param1: pointer): void {.importc: "QStyleHintReturnVariant_operatorAssign".}
proc fcQStyleHintReturnVariant_delete(self: pointer) {.importc: "QStyleHintReturnVariant_delete".}


func init*(T: type QStyleOption, h: ptr cQStyleOption): QStyleOption =
  T(h: h)
proc create*(T: type QStyleOption, ): QStyleOption =

  QStyleOption.init(fcQStyleOption_new())
proc create*(T: type QStyleOption, other: QStyleOption): QStyleOption =

  QStyleOption.init(fcQStyleOption_new2(other.h))
proc create*(T: type QStyleOption, version: cint): QStyleOption =

  QStyleOption.init(fcQStyleOption_new3(version))
proc create*(T: type QStyleOption, version: cint, typeVal: cint): QStyleOption =

  QStyleOption.init(fcQStyleOption_new4(version, typeVal))
proc initFrom*(self: QStyleOption, w: gen_qwidget.QWidget): void =

  fcQStyleOption_initFrom(self.h, w.h)

proc operatorAssign*(self: QStyleOption, other: QStyleOption): void =

  fcQStyleOption_operatorAssign(self.h, other.h)

proc delete*(self: QStyleOption) =
  fcQStyleOption_delete(self.h)

func init*(T: type QStyleOptionFocusRect, h: ptr cQStyleOptionFocusRect): QStyleOptionFocusRect =
  T(h: h)
proc create*(T: type QStyleOptionFocusRect, ): QStyleOptionFocusRect =

  QStyleOptionFocusRect.init(fcQStyleOptionFocusRect_new())
proc create*(T: type QStyleOptionFocusRect, other: QStyleOptionFocusRect): QStyleOptionFocusRect =

  QStyleOptionFocusRect.init(fcQStyleOptionFocusRect_new2(other.h))
proc delete*(self: QStyleOptionFocusRect) =
  fcQStyleOptionFocusRect_delete(self.h)

func init*(T: type QStyleOptionFrame, h: ptr cQStyleOptionFrame): QStyleOptionFrame =
  T(h: h)
proc create*(T: type QStyleOptionFrame, ): QStyleOptionFrame =

  QStyleOptionFrame.init(fcQStyleOptionFrame_new())
proc create*(T: type QStyleOptionFrame, other: QStyleOptionFrame): QStyleOptionFrame =

  QStyleOptionFrame.init(fcQStyleOptionFrame_new2(other.h))
proc delete*(self: QStyleOptionFrame) =
  fcQStyleOptionFrame_delete(self.h)

func init*(T: type QStyleOptionTabWidgetFrame, h: ptr cQStyleOptionTabWidgetFrame): QStyleOptionTabWidgetFrame =
  T(h: h)
proc create*(T: type QStyleOptionTabWidgetFrame, ): QStyleOptionTabWidgetFrame =

  QStyleOptionTabWidgetFrame.init(fcQStyleOptionTabWidgetFrame_new())
proc create*(T: type QStyleOptionTabWidgetFrame, other: QStyleOptionTabWidgetFrame): QStyleOptionTabWidgetFrame =

  QStyleOptionTabWidgetFrame.init(fcQStyleOptionTabWidgetFrame_new2(other.h))
proc delete*(self: QStyleOptionTabWidgetFrame) =
  fcQStyleOptionTabWidgetFrame_delete(self.h)

func init*(T: type QStyleOptionTabBarBase, h: ptr cQStyleOptionTabBarBase): QStyleOptionTabBarBase =
  T(h: h)
proc create*(T: type QStyleOptionTabBarBase, ): QStyleOptionTabBarBase =

  QStyleOptionTabBarBase.init(fcQStyleOptionTabBarBase_new())
proc create*(T: type QStyleOptionTabBarBase, other: QStyleOptionTabBarBase): QStyleOptionTabBarBase =

  QStyleOptionTabBarBase.init(fcQStyleOptionTabBarBase_new2(other.h))
proc delete*(self: QStyleOptionTabBarBase) =
  fcQStyleOptionTabBarBase_delete(self.h)

func init*(T: type QStyleOptionHeader, h: ptr cQStyleOptionHeader): QStyleOptionHeader =
  T(h: h)
proc create*(T: type QStyleOptionHeader, ): QStyleOptionHeader =

  QStyleOptionHeader.init(fcQStyleOptionHeader_new())
proc create*(T: type QStyleOptionHeader, other: QStyleOptionHeader): QStyleOptionHeader =

  QStyleOptionHeader.init(fcQStyleOptionHeader_new2(other.h))
proc delete*(self: QStyleOptionHeader) =
  fcQStyleOptionHeader_delete(self.h)

func init*(T: type QStyleOptionHeaderV2, h: ptr cQStyleOptionHeaderV2): QStyleOptionHeaderV2 =
  T(h: h)
proc create*(T: type QStyleOptionHeaderV2, ): QStyleOptionHeaderV2 =

  QStyleOptionHeaderV2.init(fcQStyleOptionHeaderV2_new())
proc create*(T: type QStyleOptionHeaderV2, other: QStyleOptionHeaderV2): QStyleOptionHeaderV2 =

  QStyleOptionHeaderV2.init(fcQStyleOptionHeaderV2_new2(other.h))
proc delete*(self: QStyleOptionHeaderV2) =
  fcQStyleOptionHeaderV2_delete(self.h)

func init*(T: type QStyleOptionButton, h: ptr cQStyleOptionButton): QStyleOptionButton =
  T(h: h)
proc create*(T: type QStyleOptionButton, ): QStyleOptionButton =

  QStyleOptionButton.init(fcQStyleOptionButton_new())
proc create*(T: type QStyleOptionButton, other: QStyleOptionButton): QStyleOptionButton =

  QStyleOptionButton.init(fcQStyleOptionButton_new2(other.h))
proc delete*(self: QStyleOptionButton) =
  fcQStyleOptionButton_delete(self.h)

func init*(T: type QStyleOptionTab, h: ptr cQStyleOptionTab): QStyleOptionTab =
  T(h: h)
proc create*(T: type QStyleOptionTab, ): QStyleOptionTab =

  QStyleOptionTab.init(fcQStyleOptionTab_new())
proc create*(T: type QStyleOptionTab, other: QStyleOptionTab): QStyleOptionTab =

  QStyleOptionTab.init(fcQStyleOptionTab_new2(other.h))
proc delete*(self: QStyleOptionTab) =
  fcQStyleOptionTab_delete(self.h)

func init*(T: type QStyleOptionToolBar, h: ptr cQStyleOptionToolBar): QStyleOptionToolBar =
  T(h: h)
proc create*(T: type QStyleOptionToolBar, ): QStyleOptionToolBar =

  QStyleOptionToolBar.init(fcQStyleOptionToolBar_new())
proc create*(T: type QStyleOptionToolBar, other: QStyleOptionToolBar): QStyleOptionToolBar =

  QStyleOptionToolBar.init(fcQStyleOptionToolBar_new2(other.h))
proc delete*(self: QStyleOptionToolBar) =
  fcQStyleOptionToolBar_delete(self.h)

func init*(T: type QStyleOptionProgressBar, h: ptr cQStyleOptionProgressBar): QStyleOptionProgressBar =
  T(h: h)
proc create*(T: type QStyleOptionProgressBar, ): QStyleOptionProgressBar =

  QStyleOptionProgressBar.init(fcQStyleOptionProgressBar_new())
proc create*(T: type QStyleOptionProgressBar, other: QStyleOptionProgressBar): QStyleOptionProgressBar =

  QStyleOptionProgressBar.init(fcQStyleOptionProgressBar_new2(other.h))
proc delete*(self: QStyleOptionProgressBar) =
  fcQStyleOptionProgressBar_delete(self.h)

func init*(T: type QStyleOptionMenuItem, h: ptr cQStyleOptionMenuItem): QStyleOptionMenuItem =
  T(h: h)
proc create*(T: type QStyleOptionMenuItem, ): QStyleOptionMenuItem =

  QStyleOptionMenuItem.init(fcQStyleOptionMenuItem_new())
proc create*(T: type QStyleOptionMenuItem, other: QStyleOptionMenuItem): QStyleOptionMenuItem =

  QStyleOptionMenuItem.init(fcQStyleOptionMenuItem_new2(other.h))
proc delete*(self: QStyleOptionMenuItem) =
  fcQStyleOptionMenuItem_delete(self.h)

func init*(T: type QStyleOptionDockWidget, h: ptr cQStyleOptionDockWidget): QStyleOptionDockWidget =
  T(h: h)
proc create*(T: type QStyleOptionDockWidget, ): QStyleOptionDockWidget =

  QStyleOptionDockWidget.init(fcQStyleOptionDockWidget_new())
proc create*(T: type QStyleOptionDockWidget, other: QStyleOptionDockWidget): QStyleOptionDockWidget =

  QStyleOptionDockWidget.init(fcQStyleOptionDockWidget_new2(other.h))
proc delete*(self: QStyleOptionDockWidget) =
  fcQStyleOptionDockWidget_delete(self.h)

func init*(T: type QStyleOptionViewItem, h: ptr cQStyleOptionViewItem): QStyleOptionViewItem =
  T(h: h)
proc create*(T: type QStyleOptionViewItem, ): QStyleOptionViewItem =

  QStyleOptionViewItem.init(fcQStyleOptionViewItem_new())
proc create*(T: type QStyleOptionViewItem, other: QStyleOptionViewItem): QStyleOptionViewItem =

  QStyleOptionViewItem.init(fcQStyleOptionViewItem_new2(other.h))
proc delete*(self: QStyleOptionViewItem) =
  fcQStyleOptionViewItem_delete(self.h)

func init*(T: type QStyleOptionToolBox, h: ptr cQStyleOptionToolBox): QStyleOptionToolBox =
  T(h: h)
proc create*(T: type QStyleOptionToolBox, ): QStyleOptionToolBox =

  QStyleOptionToolBox.init(fcQStyleOptionToolBox_new())
proc create*(T: type QStyleOptionToolBox, other: QStyleOptionToolBox): QStyleOptionToolBox =

  QStyleOptionToolBox.init(fcQStyleOptionToolBox_new2(other.h))
proc delete*(self: QStyleOptionToolBox) =
  fcQStyleOptionToolBox_delete(self.h)

func init*(T: type QStyleOptionRubberBand, h: ptr cQStyleOptionRubberBand): QStyleOptionRubberBand =
  T(h: h)
proc create*(T: type QStyleOptionRubberBand, ): QStyleOptionRubberBand =

  QStyleOptionRubberBand.init(fcQStyleOptionRubberBand_new())
proc create*(T: type QStyleOptionRubberBand, other: QStyleOptionRubberBand): QStyleOptionRubberBand =

  QStyleOptionRubberBand.init(fcQStyleOptionRubberBand_new2(other.h))
proc delete*(self: QStyleOptionRubberBand) =
  fcQStyleOptionRubberBand_delete(self.h)

func init*(T: type QStyleOptionComplex, h: ptr cQStyleOptionComplex): QStyleOptionComplex =
  T(h: h)
proc create*(T: type QStyleOptionComplex, ): QStyleOptionComplex =

  QStyleOptionComplex.init(fcQStyleOptionComplex_new())
proc create*(T: type QStyleOptionComplex, other: QStyleOptionComplex): QStyleOptionComplex =

  QStyleOptionComplex.init(fcQStyleOptionComplex_new2(other.h))
proc create*(T: type QStyleOptionComplex, version: cint): QStyleOptionComplex =

  QStyleOptionComplex.init(fcQStyleOptionComplex_new3(version))
proc create*(T: type QStyleOptionComplex, version: cint, typeVal: cint): QStyleOptionComplex =

  QStyleOptionComplex.init(fcQStyleOptionComplex_new4(version, typeVal))
proc delete*(self: QStyleOptionComplex) =
  fcQStyleOptionComplex_delete(self.h)

func init*(T: type QStyleOptionSlider, h: ptr cQStyleOptionSlider): QStyleOptionSlider =
  T(h: h)
proc create*(T: type QStyleOptionSlider, ): QStyleOptionSlider =

  QStyleOptionSlider.init(fcQStyleOptionSlider_new())
proc create*(T: type QStyleOptionSlider, other: QStyleOptionSlider): QStyleOptionSlider =

  QStyleOptionSlider.init(fcQStyleOptionSlider_new2(other.h))
proc delete*(self: QStyleOptionSlider) =
  fcQStyleOptionSlider_delete(self.h)

func init*(T: type QStyleOptionSpinBox, h: ptr cQStyleOptionSpinBox): QStyleOptionSpinBox =
  T(h: h)
proc create*(T: type QStyleOptionSpinBox, ): QStyleOptionSpinBox =

  QStyleOptionSpinBox.init(fcQStyleOptionSpinBox_new())
proc create*(T: type QStyleOptionSpinBox, other: QStyleOptionSpinBox): QStyleOptionSpinBox =

  QStyleOptionSpinBox.init(fcQStyleOptionSpinBox_new2(other.h))
proc delete*(self: QStyleOptionSpinBox) =
  fcQStyleOptionSpinBox_delete(self.h)

func init*(T: type QStyleOptionToolButton, h: ptr cQStyleOptionToolButton): QStyleOptionToolButton =
  T(h: h)
proc create*(T: type QStyleOptionToolButton, ): QStyleOptionToolButton =

  QStyleOptionToolButton.init(fcQStyleOptionToolButton_new())
proc create*(T: type QStyleOptionToolButton, other: QStyleOptionToolButton): QStyleOptionToolButton =

  QStyleOptionToolButton.init(fcQStyleOptionToolButton_new2(other.h))
proc delete*(self: QStyleOptionToolButton) =
  fcQStyleOptionToolButton_delete(self.h)

func init*(T: type QStyleOptionComboBox, h: ptr cQStyleOptionComboBox): QStyleOptionComboBox =
  T(h: h)
proc create*(T: type QStyleOptionComboBox, ): QStyleOptionComboBox =

  QStyleOptionComboBox.init(fcQStyleOptionComboBox_new())
proc create*(T: type QStyleOptionComboBox, other: QStyleOptionComboBox): QStyleOptionComboBox =

  QStyleOptionComboBox.init(fcQStyleOptionComboBox_new2(other.h))
proc delete*(self: QStyleOptionComboBox) =
  fcQStyleOptionComboBox_delete(self.h)

func init*(T: type QStyleOptionTitleBar, h: ptr cQStyleOptionTitleBar): QStyleOptionTitleBar =
  T(h: h)
proc create*(T: type QStyleOptionTitleBar, ): QStyleOptionTitleBar =

  QStyleOptionTitleBar.init(fcQStyleOptionTitleBar_new())
proc create*(T: type QStyleOptionTitleBar, other: QStyleOptionTitleBar): QStyleOptionTitleBar =

  QStyleOptionTitleBar.init(fcQStyleOptionTitleBar_new2(other.h))
proc delete*(self: QStyleOptionTitleBar) =
  fcQStyleOptionTitleBar_delete(self.h)

func init*(T: type QStyleOptionGroupBox, h: ptr cQStyleOptionGroupBox): QStyleOptionGroupBox =
  T(h: h)
proc create*(T: type QStyleOptionGroupBox, ): QStyleOptionGroupBox =

  QStyleOptionGroupBox.init(fcQStyleOptionGroupBox_new())
proc create*(T: type QStyleOptionGroupBox, other: QStyleOptionGroupBox): QStyleOptionGroupBox =

  QStyleOptionGroupBox.init(fcQStyleOptionGroupBox_new2(other.h))
proc delete*(self: QStyleOptionGroupBox) =
  fcQStyleOptionGroupBox_delete(self.h)

func init*(T: type QStyleOptionSizeGrip, h: ptr cQStyleOptionSizeGrip): QStyleOptionSizeGrip =
  T(h: h)
proc create*(T: type QStyleOptionSizeGrip, ): QStyleOptionSizeGrip =

  QStyleOptionSizeGrip.init(fcQStyleOptionSizeGrip_new())
proc create*(T: type QStyleOptionSizeGrip, other: QStyleOptionSizeGrip): QStyleOptionSizeGrip =

  QStyleOptionSizeGrip.init(fcQStyleOptionSizeGrip_new2(other.h))
proc delete*(self: QStyleOptionSizeGrip) =
  fcQStyleOptionSizeGrip_delete(self.h)

func init*(T: type QStyleOptionGraphicsItem, h: ptr cQStyleOptionGraphicsItem): QStyleOptionGraphicsItem =
  T(h: h)
proc create*(T: type QStyleOptionGraphicsItem, ): QStyleOptionGraphicsItem =

  QStyleOptionGraphicsItem.init(fcQStyleOptionGraphicsItem_new())
proc create*(T: type QStyleOptionGraphicsItem, other: QStyleOptionGraphicsItem): QStyleOptionGraphicsItem =

  QStyleOptionGraphicsItem.init(fcQStyleOptionGraphicsItem_new2(other.h))
proc levelOfDetailFromTransform*(_: type QStyleOptionGraphicsItem, worldTransform: gen_qtransform.QTransform): float64 =

  fcQStyleOptionGraphicsItem_levelOfDetailFromTransform(worldTransform.h)

proc delete*(self: QStyleOptionGraphicsItem) =
  fcQStyleOptionGraphicsItem_delete(self.h)

func init*(T: type QStyleHintReturn, h: ptr cQStyleHintReturn): QStyleHintReturn =
  T(h: h)
proc create*(T: type QStyleHintReturn, ): QStyleHintReturn =

  QStyleHintReturn.init(fcQStyleHintReturn_new())
proc create*(T: type QStyleHintReturn, param1: QStyleHintReturn): QStyleHintReturn =

  QStyleHintReturn.init(fcQStyleHintReturn_new2(param1.h))
proc create*(T: type QStyleHintReturn, version: cint): QStyleHintReturn =

  QStyleHintReturn.init(fcQStyleHintReturn_new3(version))
proc create*(T: type QStyleHintReturn, version: cint, typeVal: cint): QStyleHintReturn =

  QStyleHintReturn.init(fcQStyleHintReturn_new4(version, typeVal))
proc operatorAssign*(self: QStyleHintReturn, param1: QStyleHintReturn): void =

  fcQStyleHintReturn_operatorAssign(self.h, param1.h)

proc delete*(self: QStyleHintReturn) =
  fcQStyleHintReturn_delete(self.h)

func init*(T: type QStyleHintReturnMask, h: ptr cQStyleHintReturnMask): QStyleHintReturnMask =
  T(h: h)
proc create*(T: type QStyleHintReturnMask, ): QStyleHintReturnMask =

  QStyleHintReturnMask.init(fcQStyleHintReturnMask_new())
proc create*(T: type QStyleHintReturnMask, param1: QStyleHintReturnMask): QStyleHintReturnMask =

  QStyleHintReturnMask.init(fcQStyleHintReturnMask_new2(param1.h))
proc operatorAssign*(self: QStyleHintReturnMask, param1: QStyleHintReturnMask): void =

  fcQStyleHintReturnMask_operatorAssign(self.h, param1.h)

proc delete*(self: QStyleHintReturnMask) =
  fcQStyleHintReturnMask_delete(self.h)

func init*(T: type QStyleHintReturnVariant, h: ptr cQStyleHintReturnVariant): QStyleHintReturnVariant =
  T(h: h)
proc create*(T: type QStyleHintReturnVariant, ): QStyleHintReturnVariant =

  QStyleHintReturnVariant.init(fcQStyleHintReturnVariant_new())
proc create*(T: type QStyleHintReturnVariant, param1: QStyleHintReturnVariant): QStyleHintReturnVariant =

  QStyleHintReturnVariant.init(fcQStyleHintReturnVariant_new2(param1.h))
proc operatorAssign*(self: QStyleHintReturnVariant, param1: QStyleHintReturnVariant): void =

  fcQStyleHintReturnVariant_operatorAssign(self.h, param1.h)

proc delete*(self: QStyleHintReturnVariant) =
  fcQStyleHintReturnVariant_delete(self.h)
