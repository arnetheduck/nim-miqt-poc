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
{.compile("gen_qstyle.cpp", cflags).}


type QStyleStateFlag* = cint
const
  QStyleState_None* = 0
  QStyleState_Enabled* = 1
  QStyleState_Raised* = 2
  QStyleState_Sunken* = 4
  QStyleState_Off* = 8
  QStyleState_NoChange* = 16
  QStyleState_On* = 32
  QStyleState_DownArrow* = 64
  QStyleState_Horizontal* = 128
  QStyleState_HasFocus* = 256
  QStyleState_Top* = 512
  QStyleState_Bottom* = 1024
  QStyleState_FocusAtBorder* = 2048
  QStyleState_AutoRaise* = 4096
  QStyleState_MouseOver* = 8192
  QStyleState_UpArrow* = 16384
  QStyleState_Selected* = 32768
  QStyleState_Active* = 65536
  QStyleState_Window* = 131072
  QStyleState_Open* = 262144
  QStyleState_Children* = 524288
  QStyleState_Item* = 1048576
  QStyleState_Sibling* = 2097152
  QStyleState_Editing* = 4194304
  QStyleState_KeyboardFocusChange* = 8388608
  QStyleState_ReadOnly* = 33554432
  QStyleState_Small* = 67108864
  QStyleState_Mini* = 134217728



type QStylePrimitiveElement* = cint
const
  QStylePE_Frame* = 0
  QStylePE_FrameDefaultButton* = 1
  QStylePE_FrameDockWidget* = 2
  QStylePE_FrameFocusRect* = 3
  QStylePE_FrameGroupBox* = 4
  QStylePE_FrameLineEdit* = 5
  QStylePE_FrameMenu* = 6
  QStylePE_FrameStatusBarItem* = 7
  QStylePE_FrameStatusBar* = 7
  QStylePE_FrameTabWidget* = 8
  QStylePE_FrameWindow* = 9
  QStylePE_FrameButtonBevel* = 10
  QStylePE_FrameButtonTool* = 11
  QStylePE_FrameTabBarBase* = 12
  QStylePE_PanelButtonCommand* = 13
  QStylePE_PanelButtonBevel* = 14
  QStylePE_PanelButtonTool* = 15
  QStylePE_PanelMenuBar* = 16
  QStylePE_PanelToolBar* = 17
  QStylePE_PanelLineEdit* = 18
  QStylePE_IndicatorArrowDown* = 19
  QStylePE_IndicatorArrowLeft* = 20
  QStylePE_IndicatorArrowRight* = 21
  QStylePE_IndicatorArrowUp* = 22
  QStylePE_IndicatorBranch* = 23
  QStylePE_IndicatorButtonDropDown* = 24
  QStylePE_IndicatorItemViewItemCheck* = 25
  QStylePE_IndicatorViewItemCheck* = 25
  QStylePE_IndicatorCheckBox* = 26
  QStylePE_IndicatorDockWidgetResizeHandle* = 27
  QStylePE_IndicatorHeaderArrow* = 28
  QStylePE_IndicatorMenuCheckMark* = 29
  QStylePE_IndicatorProgressChunk* = 30
  QStylePE_IndicatorRadioButton* = 31
  QStylePE_IndicatorSpinDown* = 32
  QStylePE_IndicatorSpinMinus* = 33
  QStylePE_IndicatorSpinPlus* = 34
  QStylePE_IndicatorSpinUp* = 35
  QStylePE_IndicatorToolBarHandle* = 36
  QStylePE_IndicatorToolBarSeparator* = 37
  QStylePE_PanelTipLabel* = 38
  QStylePE_IndicatorTabTear* = 39
  QStylePE_IndicatorTabTearLeft* = 39
  QStylePE_PanelScrollAreaCorner* = 40
  QStylePE_Widget* = 41
  QStylePE_IndicatorColumnViewArrow* = 42
  QStylePE_IndicatorItemViewItemDrop* = 43
  QStylePE_PanelItemViewItem* = 44
  QStylePE_PanelItemViewRow* = 45
  QStylePE_PanelStatusBar* = 46
  QStylePE_IndicatorTabClose* = 47
  QStylePE_PanelMenu* = 48
  QStylePE_IndicatorTabTearRight* = 49
  QStylePE_CustomBase* = 251658240



type QStyleControlElement* = cint
const
  QStyleCE_PushButton* = 0
  QStyleCE_PushButtonBevel* = 1
  QStyleCE_PushButtonLabel* = 2
  QStyleCE_CheckBox* = 3
  QStyleCE_CheckBoxLabel* = 4
  QStyleCE_RadioButton* = 5
  QStyleCE_RadioButtonLabel* = 6
  QStyleCE_TabBarTab* = 7
  QStyleCE_TabBarTabShape* = 8
  QStyleCE_TabBarTabLabel* = 9
  QStyleCE_ProgressBar* = 10
  QStyleCE_ProgressBarGroove* = 11
  QStyleCE_ProgressBarContents* = 12
  QStyleCE_ProgressBarLabel* = 13
  QStyleCE_MenuItem* = 14
  QStyleCE_MenuScroller* = 15
  QStyleCE_MenuVMargin* = 16
  QStyleCE_MenuHMargin* = 17
  QStyleCE_MenuTearoff* = 18
  QStyleCE_MenuEmptyArea* = 19
  QStyleCE_MenuBarItem* = 20
  QStyleCE_MenuBarEmptyArea* = 21
  QStyleCE_ToolButtonLabel* = 22
  QStyleCE_Header* = 23
  QStyleCE_HeaderSection* = 24
  QStyleCE_HeaderLabel* = 25
  QStyleCE_ToolBoxTab* = 26
  QStyleCE_SizeGrip* = 27
  QStyleCE_Splitter* = 28
  QStyleCE_RubberBand* = 29
  QStyleCE_DockWidgetTitle* = 30
  QStyleCE_ScrollBarAddLine* = 31
  QStyleCE_ScrollBarSubLine* = 32
  QStyleCE_ScrollBarAddPage* = 33
  QStyleCE_ScrollBarSubPage* = 34
  QStyleCE_ScrollBarSlider* = 35
  QStyleCE_ScrollBarFirst* = 36
  QStyleCE_ScrollBarLast* = 37
  QStyleCE_FocusFrame* = 38
  QStyleCE_ComboBoxLabel* = 39
  QStyleCE_ToolBar* = 40
  QStyleCE_ToolBoxTabShape* = 41
  QStyleCE_ToolBoxTabLabel* = 42
  QStyleCE_HeaderEmptyArea* = 43
  QStyleCE_ColumnViewGrip* = 44
  QStyleCE_ItemViewItem* = 45
  QStyleCE_ShapedFrame* = 46
  QStyleCE_CustomBase* = 4026531840



type QStyleSubElement* = cint
const
  QStyleSE_PushButtonContents* = 0
  QStyleSE_PushButtonFocusRect* = 1
  QStyleSE_CheckBoxIndicator* = 2
  QStyleSE_CheckBoxContents* = 3
  QStyleSE_CheckBoxFocusRect* = 4
  QStyleSE_CheckBoxClickRect* = 5
  QStyleSE_RadioButtonIndicator* = 6
  QStyleSE_RadioButtonContents* = 7
  QStyleSE_RadioButtonFocusRect* = 8
  QStyleSE_RadioButtonClickRect* = 9
  QStyleSE_ComboBoxFocusRect* = 10
  QStyleSE_SliderFocusRect* = 11
  QStyleSE_ProgressBarGroove* = 12
  QStyleSE_ProgressBarContents* = 13
  QStyleSE_ProgressBarLabel* = 14
  QStyleSE_ToolBoxTabContents* = 15
  QStyleSE_HeaderLabel* = 16
  QStyleSE_HeaderArrow* = 17
  QStyleSE_TabWidgetTabBar* = 18
  QStyleSE_TabWidgetTabPane* = 19
  QStyleSE_TabWidgetTabContents* = 20
  QStyleSE_TabWidgetLeftCorner* = 21
  QStyleSE_TabWidgetRightCorner* = 22
  QStyleSE_ItemViewItemCheckIndicator* = 23
  QStyleSE_ViewItemCheckIndicator* = 23
  QStyleSE_TabBarTearIndicator* = 24
  QStyleSE_TabBarTearIndicatorLeft* = 24
  QStyleSE_TreeViewDisclosureItem* = 25
  QStyleSE_LineEditContents* = 26
  QStyleSE_FrameContents* = 27
  QStyleSE_DockWidgetCloseButton* = 28
  QStyleSE_DockWidgetFloatButton* = 29
  QStyleSE_DockWidgetTitleBarText* = 30
  QStyleSE_DockWidgetIcon* = 31
  QStyleSE_CheckBoxLayoutItem* = 32
  QStyleSE_ComboBoxLayoutItem* = 33
  QStyleSE_DateTimeEditLayoutItem* = 34
  QStyleSE_DialogButtonBoxLayoutItem* = 35
  QStyleSE_LabelLayoutItem* = 36
  QStyleSE_ProgressBarLayoutItem* = 37
  QStyleSE_PushButtonLayoutItem* = 38
  QStyleSE_RadioButtonLayoutItem* = 39
  QStyleSE_SliderLayoutItem* = 40
  QStyleSE_SpinBoxLayoutItem* = 41
  QStyleSE_ToolButtonLayoutItem* = 42
  QStyleSE_FrameLayoutItem* = 43
  QStyleSE_GroupBoxLayoutItem* = 44
  QStyleSE_TabWidgetLayoutItem* = 45
  QStyleSE_ItemViewItemDecoration* = 46
  QStyleSE_ItemViewItemText* = 47
  QStyleSE_ItemViewItemFocusRect* = 48
  QStyleSE_TabBarTabLeftButton* = 49
  QStyleSE_TabBarTabRightButton* = 50
  QStyleSE_TabBarTabText* = 51
  QStyleSE_ShapedFrameContents* = 52
  QStyleSE_ToolBarHandle* = 53
  QStyleSE_TabBarScrollLeftButton* = 54
  QStyleSE_TabBarScrollRightButton* = 55
  QStyleSE_TabBarTearIndicatorRight* = 56
  QStyleSE_PushButtonBevel* = 57
  QStyleSE_CustomBase* = 4026531840



type QStyleComplexControl* = cint
const
  QStyleCC_SpinBox* = 0
  QStyleCC_ComboBox* = 1
  QStyleCC_ScrollBar* = 2
  QStyleCC_Slider* = 3
  QStyleCC_ToolButton* = 4
  QStyleCC_TitleBar* = 5
  QStyleCC_Dial* = 6
  QStyleCC_GroupBox* = 7
  QStyleCC_MdiControls* = 8
  QStyleCC_CustomBase* = 4026531840



type QStyleSubControl* = cint
const
  QStyleSC_None* = 0
  QStyleSC_ScrollBarAddLine* = 1
  QStyleSC_ScrollBarSubLine* = 2
  QStyleSC_ScrollBarAddPage* = 4
  QStyleSC_ScrollBarSubPage* = 8
  QStyleSC_ScrollBarFirst* = 16
  QStyleSC_ScrollBarLast* = 32
  QStyleSC_ScrollBarSlider* = 64
  QStyleSC_ScrollBarGroove* = 128
  QStyleSC_SpinBoxUp* = 1
  QStyleSC_SpinBoxDown* = 2
  QStyleSC_SpinBoxFrame* = 4
  QStyleSC_SpinBoxEditField* = 8
  QStyleSC_ComboBoxFrame* = 1
  QStyleSC_ComboBoxEditField* = 2
  QStyleSC_ComboBoxArrow* = 4
  QStyleSC_ComboBoxListBoxPopup* = 8
  QStyleSC_SliderGroove* = 1
  QStyleSC_SliderHandle* = 2
  QStyleSC_SliderTickmarks* = 4
  QStyleSC_ToolButton* = 1
  QStyleSC_ToolButtonMenu* = 2
  QStyleSC_TitleBarSysMenu* = 1
  QStyleSC_TitleBarMinButton* = 2
  QStyleSC_TitleBarMaxButton* = 4
  QStyleSC_TitleBarCloseButton* = 8
  QStyleSC_TitleBarNormalButton* = 16
  QStyleSC_TitleBarShadeButton* = 32
  QStyleSC_TitleBarUnshadeButton* = 64
  QStyleSC_TitleBarContextHelpButton* = 128
  QStyleSC_TitleBarLabel* = 256
  QStyleSC_DialGroove* = 1
  QStyleSC_DialHandle* = 2
  QStyleSC_DialTickmarks* = 4
  QStyleSC_GroupBoxCheckBox* = 1
  QStyleSC_GroupBoxLabel* = 2
  QStyleSC_GroupBoxContents* = 4
  QStyleSC_GroupBoxFrame* = 8
  QStyleSC_MdiMinButton* = 1
  QStyleSC_MdiNormalButton* = 2
  QStyleSC_MdiCloseButton* = 4
  QStyleSC_CustomBase* = 4026531840
  QStyleSC_All* = 4294967295



type QStylePixelMetric* = cint
const
  QStylePM_ButtonMargin* = 0
  QStylePM_ButtonDefaultIndicator* = 1
  QStylePM_MenuButtonIndicator* = 2
  QStylePM_ButtonShiftHorizontal* = 3
  QStylePM_ButtonShiftVertical* = 4
  QStylePM_DefaultFrameWidth* = 5
  QStylePM_SpinBoxFrameWidth* = 6
  QStylePM_ComboBoxFrameWidth* = 7
  QStylePM_MaximumDragDistance* = 8
  QStylePM_ScrollBarExtent* = 9
  QStylePM_ScrollBarSliderMin* = 10
  QStylePM_SliderThickness* = 11
  QStylePM_SliderControlThickness* = 12
  QStylePM_SliderLength* = 13
  QStylePM_SliderTickmarkOffset* = 14
  QStylePM_SliderSpaceAvailable* = 15
  QStylePM_DockWidgetSeparatorExtent* = 16
  QStylePM_DockWidgetHandleExtent* = 17
  QStylePM_DockWidgetFrameWidth* = 18
  QStylePM_TabBarTabOverlap* = 19
  QStylePM_TabBarTabHSpace* = 20
  QStylePM_TabBarTabVSpace* = 21
  QStylePM_TabBarBaseHeight* = 22
  QStylePM_TabBarBaseOverlap* = 23
  QStylePM_ProgressBarChunkWidth* = 24
  QStylePM_SplitterWidth* = 25
  QStylePM_TitleBarHeight* = 26
  QStylePM_MenuScrollerHeight* = 27
  QStylePM_MenuHMargin* = 28
  QStylePM_MenuVMargin* = 29
  QStylePM_MenuPanelWidth* = 30
  QStylePM_MenuTearoffHeight* = 31
  QStylePM_MenuDesktopFrameWidth* = 32
  QStylePM_MenuBarPanelWidth* = 33
  QStylePM_MenuBarItemSpacing* = 34
  QStylePM_MenuBarVMargin* = 35
  QStylePM_MenuBarHMargin* = 36
  QStylePM_IndicatorWidth* = 37
  QStylePM_IndicatorHeight* = 38
  QStylePM_ExclusiveIndicatorWidth* = 39
  QStylePM_ExclusiveIndicatorHeight* = 40
  QStylePM_DialogButtonsSeparator* = 41
  QStylePM_DialogButtonsButtonWidth* = 42
  QStylePM_DialogButtonsButtonHeight* = 43
  QStylePM_MdiSubWindowFrameWidth* = 44
  QStylePM_MdiSubWindowMinimizedWidth* = 45
  QStylePM_MDIFrameWidth* = 44
  QStylePM_MDIMinimizedWidth* = 45
  QStylePM_HeaderMargin* = 46
  QStylePM_HeaderMarkSize* = 47
  QStylePM_HeaderGripMargin* = 48
  QStylePM_TabBarTabShiftHorizontal* = 49
  QStylePM_TabBarTabShiftVertical* = 50
  QStylePM_TabBarScrollButtonWidth* = 51
  QStylePM_ToolBarFrameWidth* = 52
  QStylePM_ToolBarHandleExtent* = 53
  QStylePM_ToolBarItemSpacing* = 54
  QStylePM_ToolBarItemMargin* = 55
  QStylePM_ToolBarSeparatorExtent* = 56
  QStylePM_ToolBarExtensionExtent* = 57
  QStylePM_SpinBoxSliderHeight* = 58
  QStylePM_DefaultTopLevelMargin* = 59
  QStylePM_DefaultChildMargin* = 60
  QStylePM_DefaultLayoutSpacing* = 61
  QStylePM_ToolBarIconSize* = 62
  QStylePM_ListViewIconSize* = 63
  QStylePM_IconViewIconSize* = 64
  QStylePM_SmallIconSize* = 65
  QStylePM_LargeIconSize* = 66
  QStylePM_FocusFrameVMargin* = 67
  QStylePM_FocusFrameHMargin* = 68
  QStylePM_ToolTipLabelFrameWidth* = 69
  QStylePM_CheckBoxLabelSpacing* = 70
  QStylePM_TabBarIconSize* = 71
  QStylePM_SizeGripSize* = 72
  QStylePM_DockWidgetTitleMargin* = 73
  QStylePM_MessageBoxIconSize* = 74
  QStylePM_ButtonIconSize* = 75
  QStylePM_DockWidgetTitleBarButtonMargin* = 76
  QStylePM_RadioButtonLabelSpacing* = 77
  QStylePM_LayoutLeftMargin* = 78
  QStylePM_LayoutTopMargin* = 79
  QStylePM_LayoutRightMargin* = 80
  QStylePM_LayoutBottomMargin* = 81
  QStylePM_LayoutHorizontalSpacing* = 82
  QStylePM_LayoutVerticalSpacing* = 83
  QStylePM_TabBar_ScrollButtonOverlap* = 84
  QStylePM_TextCursorWidth* = 85
  QStylePM_TabCloseIndicatorWidth* = 86
  QStylePM_TabCloseIndicatorHeight* = 87
  QStylePM_ScrollView_ScrollBarSpacing* = 88
  QStylePM_ScrollView_ScrollBarOverlap* = 89
  QStylePM_SubMenuOverlap* = 90
  QStylePM_TreeViewIndentation* = 91
  QStylePM_HeaderDefaultSectionSizeHorizontal* = 92
  QStylePM_HeaderDefaultSectionSizeVertical* = 93
  QStylePM_TitleBarButtonIconSize* = 94
  QStylePM_TitleBarButtonSize* = 95
  QStylePM_CustomBase* = 4026531840



type QStyleContentsType* = cint
const
  QStyleCT_PushButton* = 0
  QStyleCT_CheckBox* = 1
  QStyleCT_RadioButton* = 2
  QStyleCT_ToolButton* = 3
  QStyleCT_ComboBox* = 4
  QStyleCT_Splitter* = 5
  QStyleCT_ProgressBar* = 6
  QStyleCT_MenuItem* = 7
  QStyleCT_MenuBarItem* = 8
  QStyleCT_MenuBar* = 9
  QStyleCT_Menu* = 10
  QStyleCT_TabBarTab* = 11
  QStyleCT_Slider* = 12
  QStyleCT_ScrollBar* = 13
  QStyleCT_LineEdit* = 14
  QStyleCT_SpinBox* = 15
  QStyleCT_SizeGrip* = 16
  QStyleCT_TabWidget* = 17
  QStyleCT_DialogButtons* = 18
  QStyleCT_HeaderSection* = 19
  QStyleCT_GroupBox* = 20
  QStyleCT_MdiControls* = 21
  QStyleCT_ItemViewItem* = 22
  QStyleCT_CustomBase* = 4026531840



type QStyleRequestSoftwareInputPanel* = cint
const
  QStyleRSIP_OnMouseClickAndAlreadyFocused* = 0
  QStyleRSIP_OnMouseClick* = 1



type QStyleStyleHint* = cint
const
  QStyleSH_EtchDisabledText* = 0
  QStyleSH_DitherDisabledText* = 1
  QStyleSH_ScrollBar_MiddleClickAbsolutePosition* = 2
  QStyleSH_ScrollBar_ScrollWhenPointerLeavesControl* = 3
  QStyleSH_TabBar_SelectMouseType* = 4
  QStyleSH_TabBar_Alignment* = 5
  QStyleSH_Header_ArrowAlignment* = 6
  QStyleSH_Slider_SnapToValue* = 7
  QStyleSH_Slider_SloppyKeyEvents* = 8
  QStyleSH_ProgressDialog_CenterCancelButton* = 9
  QStyleSH_ProgressDialog_TextLabelAlignment* = 10
  QStyleSH_PrintDialog_RightAlignButtons* = 11
  QStyleSH_MainWindow_SpaceBelowMenuBar* = 12
  QStyleSH_FontDialog_SelectAssociatedText* = 13
  QStyleSH_Menu_AllowActiveAndDisabled* = 14
  QStyleSH_Menu_SpaceActivatesItem* = 15
  QStyleSH_Menu_SubMenuPopupDelay* = 16
  QStyleSH_ScrollView_FrameOnlyAroundContents* = 17
  QStyleSH_MenuBar_AltKeyNavigation* = 18
  QStyleSH_ComboBox_ListMouseTracking* = 19
  QStyleSH_Menu_MouseTracking* = 20
  QStyleSH_MenuBar_MouseTracking* = 21
  QStyleSH_ItemView_ChangeHighlightOnFocus* = 22
  QStyleSH_Widget_ShareActivation* = 23
  QStyleSH_Workspace_FillSpaceOnMaximize* = 24
  QStyleSH_ComboBox_Popup* = 25
  QStyleSH_TitleBar_NoBorder* = 26
  QStyleSH_Slider_StopMouseOverSlider* = 27
  QStyleSH_ScrollBar_StopMouseOverSlider* = 27
  QStyleSH_BlinkCursorWhenTextSelected* = 28
  QStyleSH_RichText_FullWidthSelection* = 29
  QStyleSH_Menu_Scrollable* = 30
  QStyleSH_GroupBox_TextLabelVerticalAlignment* = 31
  QStyleSH_GroupBox_TextLabelColor* = 32
  QStyleSH_Menu_SloppySubMenus* = 33
  QStyleSH_Table_GridLineColor* = 34
  QStyleSH_LineEdit_PasswordCharacter* = 35
  QStyleSH_DialogButtons_DefaultButton* = 36
  QStyleSH_ToolBox_SelectedPageTitleBold* = 37
  QStyleSH_TabBar_PreferNoArrows* = 38
  QStyleSH_ScrollBar_LeftClickAbsolutePosition* = 39
  QStyleSH_ListViewExpand_SelectMouseType* = 40
  QStyleSH_UnderlineShortcut* = 41
  QStyleSH_SpinBox_AnimateButton* = 42
  QStyleSH_SpinBox_KeyPressAutoRepeatRate* = 43
  QStyleSH_SpinBox_ClickAutoRepeatRate* = 44
  QStyleSH_Menu_FillScreenWithScroll* = 45
  QStyleSH_ToolTipLabel_Opacity* = 46
  QStyleSH_DrawMenuBarSeparator* = 47
  QStyleSH_TitleBar_ModifyNotification* = 48
  QStyleSH_Button_FocusPolicy* = 49
  QStyleSH_MessageBox_UseBorderForButtonSpacing* = 50
  QStyleSH_TitleBar_AutoRaise* = 51
  QStyleSH_ToolButton_PopupDelay* = 52
  QStyleSH_FocusFrame_Mask* = 53
  QStyleSH_RubberBand_Mask* = 54
  QStyleSH_WindowFrame_Mask* = 55
  QStyleSH_SpinControls_DisableOnBounds* = 56
  QStyleSH_Dial_BackgroundRole* = 57
  QStyleSH_ComboBox_LayoutDirection* = 58
  QStyleSH_ItemView_EllipsisLocation* = 59
  QStyleSH_ItemView_ShowDecorationSelected* = 60
  QStyleSH_ItemView_ActivateItemOnSingleClick* = 61
  QStyleSH_ScrollBar_ContextMenu* = 62
  QStyleSH_ScrollBar_RollBetweenButtons* = 63
  QStyleSH_Slider_AbsoluteSetButtons* = 64
  QStyleSH_Slider_PageSetButtons* = 65
  QStyleSH_Menu_KeyboardSearch* = 66
  QStyleSH_TabBar_ElideMode* = 67
  QStyleSH_DialogButtonLayout* = 68
  QStyleSH_ComboBox_PopupFrameStyle* = 69
  QStyleSH_MessageBox_TextInteractionFlags* = 70
  QStyleSH_DialogButtonBox_ButtonsHaveIcons* = 71
  QStyleSH_SpellCheckUnderlineStyle* = 72
  QStyleSH_MessageBox_CenterButtons* = 73
  QStyleSH_Menu_SelectionWrap* = 74
  QStyleSH_ItemView_MovementWithoutUpdatingSelection* = 75
  QStyleSH_ToolTip_Mask* = 76
  QStyleSH_FocusFrame_AboveWidget* = 77
  QStyleSH_TextControl_FocusIndicatorTextCharFormat* = 78
  QStyleSH_WizardStyle* = 79
  QStyleSH_ItemView_ArrowKeysNavigateIntoChildren* = 80
  QStyleSH_Menu_Mask* = 81
  QStyleSH_Menu_FlashTriggeredItem* = 82
  QStyleSH_Menu_FadeOutOnHide* = 83
  QStyleSH_SpinBox_ClickAutoRepeatThreshold* = 84
  QStyleSH_ItemView_PaintAlternatingRowColorsForEmptyArea* = 85
  QStyleSH_FormLayoutWrapPolicy* = 86
  QStyleSH_TabWidget_DefaultTabPosition* = 87
  QStyleSH_ToolBar_Movable* = 88
  QStyleSH_FormLayoutFieldGrowthPolicy* = 89
  QStyleSH_FormLayoutFormAlignment* = 90
  QStyleSH_FormLayoutLabelAlignment* = 91
  QStyleSH_ItemView_DrawDelegateFrame* = 92
  QStyleSH_TabBar_CloseButtonPosition* = 93
  QStyleSH_DockWidget_ButtonsHaveFrame* = 94
  QStyleSH_ToolButtonStyle* = 95
  QStyleSH_RequestSoftwareInputPanel* = 96
  QStyleSH_ScrollBar_Transient* = 97
  QStyleSH_Menu_SupportsSections* = 98
  QStyleSH_ToolTip_WakeUpDelay* = 99
  QStyleSH_ToolTip_FallAsleepDelay* = 100
  QStyleSH_Widget_Animate* = 101
  QStyleSH_Splitter_OpaqueResize* = 102
  QStyleSH_ComboBox_UseNativePopup* = 103
  QStyleSH_LineEdit_PasswordMaskDelay* = 104
  QStyleSH_TabBar_ChangeCurrentDelay* = 105
  QStyleSH_Menu_SubMenuUniDirection* = 106
  QStyleSH_Menu_SubMenuUniDirectionFailCount* = 107
  QStyleSH_Menu_SubMenuSloppySelectOtherActions* = 108
  QStyleSH_Menu_SubMenuSloppyCloseTimeout* = 109
  QStyleSH_Menu_SubMenuResetWhenReenteringParent* = 110
  QStyleSH_Menu_SubMenuDontStartSloppyOnLeave* = 111
  QStyleSH_ItemView_ScrollMode* = 112
  QStyleSH_TitleBar_ShowToolTipsOnButtons* = 113
  QStyleSH_Widget_Animation_Duration* = 114
  QStyleSH_ComboBox_AllowWheelScrolling* = 115
  QStyleSH_SpinBox_ButtonsInsideFrame* = 116
  QStyleSH_SpinBox_StepModifier* = 117
  QStyleSH_CustomBase* = 4026531840



type QStyleStandardPixmap* = cint
const
  QStyleSP_TitleBarMenuButton* = 0
  QStyleSP_TitleBarMinButton* = 1
  QStyleSP_TitleBarMaxButton* = 2
  QStyleSP_TitleBarCloseButton* = 3
  QStyleSP_TitleBarNormalButton* = 4
  QStyleSP_TitleBarShadeButton* = 5
  QStyleSP_TitleBarUnshadeButton* = 6
  QStyleSP_TitleBarContextHelpButton* = 7
  QStyleSP_DockWidgetCloseButton* = 8
  QStyleSP_MessageBoxInformation* = 9
  QStyleSP_MessageBoxWarning* = 10
  QStyleSP_MessageBoxCritical* = 11
  QStyleSP_MessageBoxQuestion* = 12
  QStyleSP_DesktopIcon* = 13
  QStyleSP_TrashIcon* = 14
  QStyleSP_ComputerIcon* = 15
  QStyleSP_DriveFDIcon* = 16
  QStyleSP_DriveHDIcon* = 17
  QStyleSP_DriveCDIcon* = 18
  QStyleSP_DriveDVDIcon* = 19
  QStyleSP_DriveNetIcon* = 20
  QStyleSP_DirOpenIcon* = 21
  QStyleSP_DirClosedIcon* = 22
  QStyleSP_DirLinkIcon* = 23
  QStyleSP_DirLinkOpenIcon* = 24
  QStyleSP_FileIcon* = 25
  QStyleSP_FileLinkIcon* = 26
  QStyleSP_ToolBarHorizontalExtensionButton* = 27
  QStyleSP_ToolBarVerticalExtensionButton* = 28
  QStyleSP_FileDialogStart* = 29
  QStyleSP_FileDialogEnd* = 30
  QStyleSP_FileDialogToParent* = 31
  QStyleSP_FileDialogNewFolder* = 32
  QStyleSP_FileDialogDetailedView* = 33
  QStyleSP_FileDialogInfoView* = 34
  QStyleSP_FileDialogContentsView* = 35
  QStyleSP_FileDialogListView* = 36
  QStyleSP_FileDialogBack* = 37
  QStyleSP_DirIcon* = 38
  QStyleSP_DialogOkButton* = 39
  QStyleSP_DialogCancelButton* = 40
  QStyleSP_DialogHelpButton* = 41
  QStyleSP_DialogOpenButton* = 42
  QStyleSP_DialogSaveButton* = 43
  QStyleSP_DialogCloseButton* = 44
  QStyleSP_DialogApplyButton* = 45
  QStyleSP_DialogResetButton* = 46
  QStyleSP_DialogDiscardButton* = 47
  QStyleSP_DialogYesButton* = 48
  QStyleSP_DialogNoButton* = 49
  QStyleSP_ArrowUp* = 50
  QStyleSP_ArrowDown* = 51
  QStyleSP_ArrowLeft* = 52
  QStyleSP_ArrowRight* = 53
  QStyleSP_ArrowBack* = 54
  QStyleSP_ArrowForward* = 55
  QStyleSP_DirHomeIcon* = 56
  QStyleSP_CommandLink* = 57
  QStyleSP_VistaShield* = 58
  QStyleSP_BrowserReload* = 59
  QStyleSP_BrowserStop* = 60
  QStyleSP_MediaPlay* = 61
  QStyleSP_MediaStop* = 62
  QStyleSP_MediaPause* = 63
  QStyleSP_MediaSkipForward* = 64
  QStyleSP_MediaSkipBackward* = 65
  QStyleSP_MediaSeekForward* = 66
  QStyleSP_MediaSeekBackward* = 67
  QStyleSP_MediaVolume* = 68
  QStyleSP_MediaVolumeMuted* = 69
  QStyleSP_LineEditClearButton* = 70
  QStyleSP_DialogYesToAllButton* = 71
  QStyleSP_DialogNoToAllButton* = 72
  QStyleSP_DialogSaveAllButton* = 73
  QStyleSP_DialogAbortButton* = 74
  QStyleSP_DialogRetryButton* = 75
  QStyleSP_DialogIgnoreButton* = 76
  QStyleSP_RestoreDefaultsButton* = 77
  QStyleSP_CustomBase* = 4026531840



import gen_qstyle_types
export gen_qstyle_types

import
  gen_qapplication,
  gen_qcoreevent,
  gen_qfontmetrics,
  gen_qicon,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainter,
  gen_qpalette,
  gen_qpixmap,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qsizepolicy,
  gen_qstyleoption,
  gen_qwidget
export
  gen_qapplication,
  gen_qcoreevent,
  gen_qfontmetrics,
  gen_qicon,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainter,
  gen_qpalette,
  gen_qpixmap,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qsizepolicy,
  gen_qstyleoption,
  gen_qwidget

type cQStyle*{.exportc: "QStyle", incompleteStruct.} = object

proc fcQStyle_new(): ptr cQStyle {.importc: "QStyle_new".}
proc fcQStyle_metaObject(self: pointer, ): pointer {.importc: "QStyle_metaObject".}
proc fcQStyle_metacast(self: pointer, param1: cstring): pointer {.importc: "QStyle_metacast".}
proc fcQStyle_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStyle_metacall".}
proc fcQStyle_tr(s: cstring): struct_miqt_string {.importc: "QStyle_tr".}
proc fcQStyle_trUtf8(s: cstring): struct_miqt_string {.importc: "QStyle_trUtf8".}
proc fcQStyle_polish(self: pointer, widget: pointer): void {.importc: "QStyle_polish".}
proc fcQStyle_unpolish(self: pointer, widget: pointer): void {.importc: "QStyle_unpolish".}
proc fcQStyle_polishWithApplication(self: pointer, application: pointer): void {.importc: "QStyle_polishWithApplication".}
proc fcQStyle_unpolishWithApplication(self: pointer, application: pointer): void {.importc: "QStyle_unpolishWithApplication".}
proc fcQStyle_polishWithPalette(self: pointer, palette: pointer): void {.importc: "QStyle_polishWithPalette".}
proc fcQStyle_itemTextRect(self: pointer, fm: pointer, r: pointer, flags: cint, enabled: bool, text: struct_miqt_string): pointer {.importc: "QStyle_itemTextRect".}
proc fcQStyle_itemPixmapRect(self: pointer, r: pointer, flags: cint, pixmap: pointer): pointer {.importc: "QStyle_itemPixmapRect".}
proc fcQStyle_drawItemText(self: pointer, painter: pointer, rect: pointer, flags: cint, pal: pointer, enabled: bool, text: struct_miqt_string, textRole: cint): void {.importc: "QStyle_drawItemText".}
proc fcQStyle_drawItemPixmap(self: pointer, painter: pointer, rect: pointer, alignment: cint, pixmap: pointer): void {.importc: "QStyle_drawItemPixmap".}
proc fcQStyle_standardPalette(self: pointer, ): pointer {.importc: "QStyle_standardPalette".}
proc fcQStyle_drawPrimitive(self: pointer, pe: cint, opt: pointer, p: pointer, w: pointer): void {.importc: "QStyle_drawPrimitive".}
proc fcQStyle_drawControl(self: pointer, element: cint, opt: pointer, p: pointer, w: pointer): void {.importc: "QStyle_drawControl".}
proc fcQStyle_subElementRect(self: pointer, subElement: cint, option: pointer, widget: pointer): pointer {.importc: "QStyle_subElementRect".}
proc fcQStyle_drawComplexControl(self: pointer, cc: cint, opt: pointer, p: pointer, widget: pointer): void {.importc: "QStyle_drawComplexControl".}
proc fcQStyle_hitTestComplexControl(self: pointer, cc: cint, opt: pointer, pt: pointer, widget: pointer): cint {.importc: "QStyle_hitTestComplexControl".}
proc fcQStyle_subControlRect(self: pointer, cc: cint, opt: pointer, sc: cint, widget: pointer): pointer {.importc: "QStyle_subControlRect".}
proc fcQStyle_pixelMetric(self: pointer, metric: cint, option: pointer, widget: pointer): cint {.importc: "QStyle_pixelMetric".}
proc fcQStyle_sizeFromContents(self: pointer, ct: cint, opt: pointer, contentsSize: pointer, w: pointer): pointer {.importc: "QStyle_sizeFromContents".}
proc fcQStyle_styleHint(self: pointer, stylehint: cint, opt: pointer, widget: pointer, returnData: pointer): cint {.importc: "QStyle_styleHint".}
proc fcQStyle_standardPixmap(self: pointer, standardPixmap: cint, opt: pointer, widget: pointer): pointer {.importc: "QStyle_standardPixmap".}
proc fcQStyle_standardIcon(self: pointer, standardIcon: cint, option: pointer, widget: pointer): pointer {.importc: "QStyle_standardIcon".}
proc fcQStyle_generatedIconPixmap(self: pointer, iconMode: cint, pixmap: pointer, opt: pointer): pointer {.importc: "QStyle_generatedIconPixmap".}
proc fcQStyle_visualRect(direction: cint, boundingRect: pointer, logicalRect: pointer): pointer {.importc: "QStyle_visualRect".}
proc fcQStyle_visualPos(direction: cint, boundingRect: pointer, logicalPos: pointer): pointer {.importc: "QStyle_visualPos".}
proc fcQStyle_sliderPositionFromValue(min: cint, max: cint, val: cint, space: cint): cint {.importc: "QStyle_sliderPositionFromValue".}
proc fcQStyle_sliderValueFromPosition(min: cint, max: cint, pos: cint, space: cint): cint {.importc: "QStyle_sliderValueFromPosition".}
proc fcQStyle_visualAlignment(direction: cint, alignment: cint): cint {.importc: "QStyle_visualAlignment".}
proc fcQStyle_alignedRect(direction: cint, alignment: cint, size: pointer, rectangle: pointer): pointer {.importc: "QStyle_alignedRect".}
proc fcQStyle_layoutSpacing(self: pointer, control1: cint, control2: cint, orientation: cint, option: pointer, widget: pointer): cint {.importc: "QStyle_layoutSpacing".}
proc fcQStyle_combinedLayoutSpacing(self: pointer, controls1: cint, controls2: cint, orientation: cint): cint {.importc: "QStyle_combinedLayoutSpacing".}
proc fcQStyle_proxy(self: pointer, ): pointer {.importc: "QStyle_proxy".}
proc fcQStyle_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStyle_tr2".}
proc fcQStyle_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStyle_tr3".}
proc fcQStyle_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QStyle_trUtf82".}
proc fcQStyle_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStyle_trUtf83".}
proc fcQStyle_sliderPositionFromValue5(min: cint, max: cint, val: cint, space: cint, upsideDown: bool): cint {.importc: "QStyle_sliderPositionFromValue5".}
proc fcQStyle_sliderValueFromPosition5(min: cint, max: cint, pos: cint, space: cint, upsideDown: bool): cint {.importc: "QStyle_sliderValueFromPosition5".}
proc fcQStyle_combinedLayoutSpacing4(self: pointer, controls1: cint, controls2: cint, orientation: cint, option: pointer): cint {.importc: "QStyle_combinedLayoutSpacing4".}
proc fcQStyle_combinedLayoutSpacing5(self: pointer, controls1: cint, controls2: cint, orientation: cint, option: pointer, widget: pointer): cint {.importc: "QStyle_combinedLayoutSpacing5".}
proc fQStyle_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QStyle_virtualbase_metacall".}
proc fcQStyle_override_virtual_metacall(self: pointer, slot: int) {.importc: "QStyle_override_virtual_metacall".}
proc fQStyle_virtualbase_polish(self: pointer, widget: pointer): void{.importc: "QStyle_virtualbase_polish".}
proc fcQStyle_override_virtual_polish(self: pointer, slot: int) {.importc: "QStyle_override_virtual_polish".}
proc fQStyle_virtualbase_unpolish(self: pointer, widget: pointer): void{.importc: "QStyle_virtualbase_unpolish".}
proc fcQStyle_override_virtual_unpolish(self: pointer, slot: int) {.importc: "QStyle_override_virtual_unpolish".}
proc fQStyle_virtualbase_polishWithApplication(self: pointer, application: pointer): void{.importc: "QStyle_virtualbase_polishWithApplication".}
proc fcQStyle_override_virtual_polishWithApplication(self: pointer, slot: int) {.importc: "QStyle_override_virtual_polishWithApplication".}
proc fQStyle_virtualbase_unpolishWithApplication(self: pointer, application: pointer): void{.importc: "QStyle_virtualbase_unpolishWithApplication".}
proc fcQStyle_override_virtual_unpolishWithApplication(self: pointer, slot: int) {.importc: "QStyle_override_virtual_unpolishWithApplication".}
proc fQStyle_virtualbase_polishWithPalette(self: pointer, palette: pointer): void{.importc: "QStyle_virtualbase_polishWithPalette".}
proc fcQStyle_override_virtual_polishWithPalette(self: pointer, slot: int) {.importc: "QStyle_override_virtual_polishWithPalette".}
proc fQStyle_virtualbase_itemTextRect(self: pointer, fm: pointer, r: pointer, flags: cint, enabled: bool, text: struct_miqt_string): pointer{.importc: "QStyle_virtualbase_itemTextRect".}
proc fcQStyle_override_virtual_itemTextRect(self: pointer, slot: int) {.importc: "QStyle_override_virtual_itemTextRect".}
proc fQStyle_virtualbase_itemPixmapRect(self: pointer, r: pointer, flags: cint, pixmap: pointer): pointer{.importc: "QStyle_virtualbase_itemPixmapRect".}
proc fcQStyle_override_virtual_itemPixmapRect(self: pointer, slot: int) {.importc: "QStyle_override_virtual_itemPixmapRect".}
proc fQStyle_virtualbase_drawItemText(self: pointer, painter: pointer, rect: pointer, flags: cint, pal: pointer, enabled: bool, text: struct_miqt_string, textRole: cint): void{.importc: "QStyle_virtualbase_drawItemText".}
proc fcQStyle_override_virtual_drawItemText(self: pointer, slot: int) {.importc: "QStyle_override_virtual_drawItemText".}
proc fQStyle_virtualbase_drawItemPixmap(self: pointer, painter: pointer, rect: pointer, alignment: cint, pixmap: pointer): void{.importc: "QStyle_virtualbase_drawItemPixmap".}
proc fcQStyle_override_virtual_drawItemPixmap(self: pointer, slot: int) {.importc: "QStyle_override_virtual_drawItemPixmap".}
proc fQStyle_virtualbase_standardPalette(self: pointer, ): pointer{.importc: "QStyle_virtualbase_standardPalette".}
proc fcQStyle_override_virtual_standardPalette(self: pointer, slot: int) {.importc: "QStyle_override_virtual_standardPalette".}
proc fcQStyle_override_virtual_drawPrimitive(self: pointer, slot: int) {.importc: "QStyle_override_virtual_drawPrimitive".}
proc fcQStyle_override_virtual_drawControl(self: pointer, slot: int) {.importc: "QStyle_override_virtual_drawControl".}
proc fcQStyle_override_virtual_subElementRect(self: pointer, slot: int) {.importc: "QStyle_override_virtual_subElementRect".}
proc fcQStyle_override_virtual_drawComplexControl(self: pointer, slot: int) {.importc: "QStyle_override_virtual_drawComplexControl".}
proc fcQStyle_override_virtual_hitTestComplexControl(self: pointer, slot: int) {.importc: "QStyle_override_virtual_hitTestComplexControl".}
proc fcQStyle_override_virtual_subControlRect(self: pointer, slot: int) {.importc: "QStyle_override_virtual_subControlRect".}
proc fcQStyle_override_virtual_pixelMetric(self: pointer, slot: int) {.importc: "QStyle_override_virtual_pixelMetric".}
proc fcQStyle_override_virtual_sizeFromContents(self: pointer, slot: int) {.importc: "QStyle_override_virtual_sizeFromContents".}
proc fcQStyle_override_virtual_styleHint(self: pointer, slot: int) {.importc: "QStyle_override_virtual_styleHint".}
proc fcQStyle_override_virtual_standardPixmap(self: pointer, slot: int) {.importc: "QStyle_override_virtual_standardPixmap".}
proc fcQStyle_override_virtual_standardIcon(self: pointer, slot: int) {.importc: "QStyle_override_virtual_standardIcon".}
proc fcQStyle_override_virtual_generatedIconPixmap(self: pointer, slot: int) {.importc: "QStyle_override_virtual_generatedIconPixmap".}
proc fcQStyle_override_virtual_layoutSpacing(self: pointer, slot: int) {.importc: "QStyle_override_virtual_layoutSpacing".}
proc fQStyle_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QStyle_virtualbase_event".}
proc fcQStyle_override_virtual_event(self: pointer, slot: int) {.importc: "QStyle_override_virtual_event".}
proc fQStyle_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QStyle_virtualbase_eventFilter".}
proc fcQStyle_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QStyle_override_virtual_eventFilter".}
proc fQStyle_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QStyle_virtualbase_timerEvent".}
proc fcQStyle_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QStyle_override_virtual_timerEvent".}
proc fQStyle_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QStyle_virtualbase_childEvent".}
proc fcQStyle_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QStyle_override_virtual_childEvent".}
proc fQStyle_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QStyle_virtualbase_customEvent".}
proc fcQStyle_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QStyle_override_virtual_customEvent".}
proc fQStyle_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QStyle_virtualbase_connectNotify".}
proc fcQStyle_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QStyle_override_virtual_connectNotify".}
proc fQStyle_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QStyle_virtualbase_disconnectNotify".}
proc fcQStyle_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QStyle_override_virtual_disconnectNotify".}
proc fcQStyle_staticMetaObject(): pointer {.importc: "QStyle_staticMetaObject".}
proc fcQStyle_delete(self: pointer) {.importc: "QStyle_delete".}


func init*(T: type QStyle, h: ptr cQStyle): QStyle =
  T(h: h)
proc create*(T: type QStyle, ): QStyle =

  QStyle.init(fcQStyle_new())
proc metaObject*(self: QStyle, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQStyle_metaObject(self.h))

proc metacast*(self: QStyle, param1: cstring): pointer =

  fcQStyle_metacast(self.h, param1)

proc metacall*(self: QStyle, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQStyle_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QStyle, s: cstring): string =

  let v_ms = fcQStyle_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QStyle, s: cstring): string =

  let v_ms = fcQStyle_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc polish*(self: QStyle, widget: gen_qwidget.QWidget): void =

  fcQStyle_polish(self.h, widget.h)

proc unpolish*(self: QStyle, widget: gen_qwidget.QWidget): void =

  fcQStyle_unpolish(self.h, widget.h)

proc polishWithApplication*(self: QStyle, application: gen_qapplication.QApplication): void =

  fcQStyle_polishWithApplication(self.h, application.h)

proc unpolishWithApplication*(self: QStyle, application: gen_qapplication.QApplication): void =

  fcQStyle_unpolishWithApplication(self.h, application.h)

proc polishWithPalette*(self: QStyle, palette: gen_qpalette.QPalette): void =

  fcQStyle_polishWithPalette(self.h, palette.h)

proc itemTextRect*(self: QStyle, fm: gen_qfontmetrics.QFontMetrics, r: gen_qrect.QRect, flags: cint, enabled: bool, text: string): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQStyle_itemTextRect(self.h, fm.h, r.h, flags, enabled, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc itemPixmapRect*(self: QStyle, r: gen_qrect.QRect, flags: cint, pixmap: gen_qpixmap.QPixmap): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQStyle_itemPixmapRect(self.h, r.h, flags, pixmap.h))

proc drawItemText*(self: QStyle, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, flags: cint, pal: gen_qpalette.QPalette, enabled: bool, text: string, textRole: gen_qpalette.QPaletteColorRole): void =

  fcQStyle_drawItemText(self.h, painter.h, rect.h, flags, pal.h, enabled, struct_miqt_string(data: text, len: csize_t(len(text))), cint(textRole))

proc drawItemPixmap*(self: QStyle, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, alignment: cint, pixmap: gen_qpixmap.QPixmap): void =

  fcQStyle_drawItemPixmap(self.h, painter.h, rect.h, alignment, pixmap.h)

proc standardPalette*(self: QStyle, ): gen_qpalette.QPalette =

  gen_qpalette.QPalette(h: fcQStyle_standardPalette(self.h))

proc drawPrimitive*(self: QStyle, pe: QStylePrimitiveElement, opt: gen_qstyleoption.QStyleOption, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): void =

  fcQStyle_drawPrimitive(self.h, cint(pe), opt.h, p.h, w.h)

proc drawControl*(self: QStyle, element: QStyleControlElement, opt: gen_qstyleoption.QStyleOption, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): void =

  fcQStyle_drawControl(self.h, cint(element), opt.h, p.h, w.h)

proc subElementRect*(self: QStyle, subElement: QStyleSubElement, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQStyle_subElementRect(self.h, cint(subElement), option.h, widget.h))

proc drawComplexControl*(self: QStyle, cc: QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, p: gen_qpainter.QPainter, widget: gen_qwidget.QWidget): void =

  fcQStyle_drawComplexControl(self.h, cint(cc), opt.h, p.h, widget.h)

proc hitTestComplexControl*(self: QStyle, cc: QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, pt: gen_qpoint.QPoint, widget: gen_qwidget.QWidget): QStyleSubControl =

  QStyleSubControl(fcQStyle_hitTestComplexControl(self.h, cint(cc), opt.h, pt.h, widget.h))

proc subControlRect*(self: QStyle, cc: QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, sc: QStyleSubControl, widget: gen_qwidget.QWidget): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQStyle_subControlRect(self.h, cint(cc), opt.h, cint(sc), widget.h))

proc pixelMetric*(self: QStyle, metric: QStylePixelMetric, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint =

  fcQStyle_pixelMetric(self.h, cint(metric), option.h, widget.h)

proc sizeFromContents*(self: QStyle, ct: QStyleContentsType, opt: gen_qstyleoption.QStyleOption, contentsSize: gen_qsize.QSize, w: gen_qwidget.QWidget): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQStyle_sizeFromContents(self.h, cint(ct), opt.h, contentsSize.h, w.h))

proc styleHint*(self: QStyle, stylehint: QStyleStyleHint, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget, returnData: gen_qstyleoption.QStyleHintReturn): cint =

  fcQStyle_styleHint(self.h, cint(stylehint), opt.h, widget.h, returnData.h)

proc standardPixmap*(self: QStyle, standardPixmap: QStyleStandardPixmap, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQStyle_standardPixmap(self.h, cint(standardPixmap), opt.h, widget.h))

proc standardIcon*(self: QStyle, standardIcon: QStyleStandardPixmap, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQStyle_standardIcon(self.h, cint(standardIcon), option.h, widget.h))

proc generatedIconPixmap*(self: QStyle, iconMode: gen_qicon.QIconMode, pixmap: gen_qpixmap.QPixmap, opt: gen_qstyleoption.QStyleOption): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQStyle_generatedIconPixmap(self.h, cint(iconMode), pixmap.h, opt.h))

proc visualRect*(_: type QStyle, direction: gen_qnamespace.LayoutDirection, boundingRect: gen_qrect.QRect, logicalRect: gen_qrect.QRect): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQStyle_visualRect(cint(direction), boundingRect.h, logicalRect.h))

proc visualPos*(_: type QStyle, direction: gen_qnamespace.LayoutDirection, boundingRect: gen_qrect.QRect, logicalPos: gen_qpoint.QPoint): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQStyle_visualPos(cint(direction), boundingRect.h, logicalPos.h))

proc sliderPositionFromValue*(_: type QStyle, min: cint, max: cint, val: cint, space: cint): cint =

  fcQStyle_sliderPositionFromValue(min, max, val, space)

proc sliderValueFromPosition*(_: type QStyle, min: cint, max: cint, pos: cint, space: cint): cint =

  fcQStyle_sliderValueFromPosition(min, max, pos, space)

proc visualAlignment*(_: type QStyle, direction: gen_qnamespace.LayoutDirection, alignment: gen_qnamespace.AlignmentFlag): gen_qnamespace.AlignmentFlag =

  gen_qnamespace.AlignmentFlag(fcQStyle_visualAlignment(cint(direction), cint(alignment)))

proc alignedRect*(_: type QStyle, direction: gen_qnamespace.LayoutDirection, alignment: gen_qnamespace.AlignmentFlag, size: gen_qsize.QSize, rectangle: gen_qrect.QRect): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQStyle_alignedRect(cint(direction), cint(alignment), size.h, rectangle.h))

proc layoutSpacing*(self: QStyle, control1: gen_qsizepolicy.QSizePolicyControlType, control2: gen_qsizepolicy.QSizePolicyControlType, orientation: gen_qnamespace.Orientation, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint =

  fcQStyle_layoutSpacing(self.h, cint(control1), cint(control2), cint(orientation), option.h, widget.h)

proc combinedLayoutSpacing*(self: QStyle, controls1: gen_qsizepolicy.QSizePolicyControlType, controls2: gen_qsizepolicy.QSizePolicyControlType, orientation: gen_qnamespace.Orientation): cint =

  fcQStyle_combinedLayoutSpacing(self.h, cint(controls1), cint(controls2), cint(orientation))

proc proxy*(self: QStyle, ): QStyle =

  QStyle(h: fcQStyle_proxy(self.h))

proc tr2*(_: type QStyle, s: cstring, c: cstring): string =

  let v_ms = fcQStyle_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QStyle, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQStyle_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QStyle, s: cstring, c: cstring): string =

  let v_ms = fcQStyle_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QStyle, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQStyle_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sliderPositionFromValue5*(_: type QStyle, min: cint, max: cint, val: cint, space: cint, upsideDown: bool): cint =

  fcQStyle_sliderPositionFromValue5(min, max, val, space, upsideDown)

proc sliderValueFromPosition5*(_: type QStyle, min: cint, max: cint, pos: cint, space: cint, upsideDown: bool): cint =

  fcQStyle_sliderValueFromPosition5(min, max, pos, space, upsideDown)

proc combinedLayoutSpacing4*(self: QStyle, controls1: gen_qsizepolicy.QSizePolicyControlType, controls2: gen_qsizepolicy.QSizePolicyControlType, orientation: gen_qnamespace.Orientation, option: gen_qstyleoption.QStyleOption): cint =

  fcQStyle_combinedLayoutSpacing4(self.h, cint(controls1), cint(controls2), cint(orientation), option.h)

proc combinedLayoutSpacing5*(self: QStyle, controls1: gen_qsizepolicy.QSizePolicyControlType, controls2: gen_qsizepolicy.QSizePolicyControlType, orientation: gen_qnamespace.Orientation, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint =

  fcQStyle_combinedLayoutSpacing5(self.h, cint(controls1), cint(controls2), cint(orientation), option.h, widget.h)

proc callVirtualBase_metacall(self: QStyle, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQStyle_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QStylemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QStyle, slot: proc(super: QStylemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QStylemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_metacall(self: ptr cQStyle, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QStyle_metacall ".} =
  type Cb = proc(super: QStylemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QStyle(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_polish(self: QStyle, widget: gen_qwidget.QWidget): void =


  fQStyle_virtualbase_polish(self.h, widget.h)

type QStylepolishBase* = proc(widget: gen_qwidget.QWidget): void
proc onpolish*(self: QStyle, slot: proc(super: QStylepolishBase, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QStylepolishBase, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_polish(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_polish(self: ptr cQStyle, slot: int, widget: pointer): void {.exportc: "miqt_exec_callback_QStyle_polish ".} =
  type Cb = proc(super: QStylepolishBase, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(widget: gen_qwidget.QWidget): auto =
    callVirtualBase_polish(QStyle(h: self), widget)
  let slotval1 = gen_qwidget.QWidget(h: widget)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_unpolish(self: QStyle, widget: gen_qwidget.QWidget): void =


  fQStyle_virtualbase_unpolish(self.h, widget.h)

type QStyleunpolishBase* = proc(widget: gen_qwidget.QWidget): void
proc onunpolish*(self: QStyle, slot: proc(super: QStyleunpolishBase, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QStyleunpolishBase, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_unpolish(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_unpolish(self: ptr cQStyle, slot: int, widget: pointer): void {.exportc: "miqt_exec_callback_QStyle_unpolish ".} =
  type Cb = proc(super: QStyleunpolishBase, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(widget: gen_qwidget.QWidget): auto =
    callVirtualBase_unpolish(QStyle(h: self), widget)
  let slotval1 = gen_qwidget.QWidget(h: widget)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_polishWithApplication(self: QStyle, application: gen_qapplication.QApplication): void =


  fQStyle_virtualbase_polishWithApplication(self.h, application.h)

type QStylepolishWithApplicationBase* = proc(application: gen_qapplication.QApplication): void
proc onpolishWithApplication*(self: QStyle, slot: proc(super: QStylepolishWithApplicationBase, application: gen_qapplication.QApplication): void) =
  # TODO check subclass
  type Cb = proc(super: QStylepolishWithApplicationBase, application: gen_qapplication.QApplication): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_polishWithApplication(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_polishWithApplication(self: ptr cQStyle, slot: int, application: pointer): void {.exportc: "miqt_exec_callback_QStyle_polishWithApplication ".} =
  type Cb = proc(super: QStylepolishWithApplicationBase, application: gen_qapplication.QApplication): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(application: gen_qapplication.QApplication): auto =
    callVirtualBase_polishWithApplication(QStyle(h: self), application)
  let slotval1 = gen_qapplication.QApplication(h: application)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_unpolishWithApplication(self: QStyle, application: gen_qapplication.QApplication): void =


  fQStyle_virtualbase_unpolishWithApplication(self.h, application.h)

type QStyleunpolishWithApplicationBase* = proc(application: gen_qapplication.QApplication): void
proc onunpolishWithApplication*(self: QStyle, slot: proc(super: QStyleunpolishWithApplicationBase, application: gen_qapplication.QApplication): void) =
  # TODO check subclass
  type Cb = proc(super: QStyleunpolishWithApplicationBase, application: gen_qapplication.QApplication): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_unpolishWithApplication(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_unpolishWithApplication(self: ptr cQStyle, slot: int, application: pointer): void {.exportc: "miqt_exec_callback_QStyle_unpolishWithApplication ".} =
  type Cb = proc(super: QStyleunpolishWithApplicationBase, application: gen_qapplication.QApplication): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(application: gen_qapplication.QApplication): auto =
    callVirtualBase_unpolishWithApplication(QStyle(h: self), application)
  let slotval1 = gen_qapplication.QApplication(h: application)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_polishWithPalette(self: QStyle, palette: gen_qpalette.QPalette): void =


  fQStyle_virtualbase_polishWithPalette(self.h, palette.h)

type QStylepolishWithPaletteBase* = proc(palette: gen_qpalette.QPalette): void
proc onpolishWithPalette*(self: QStyle, slot: proc(super: QStylepolishWithPaletteBase, palette: gen_qpalette.QPalette): void) =
  # TODO check subclass
  type Cb = proc(super: QStylepolishWithPaletteBase, palette: gen_qpalette.QPalette): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_polishWithPalette(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_polishWithPalette(self: ptr cQStyle, slot: int, palette: pointer): void {.exportc: "miqt_exec_callback_QStyle_polishWithPalette ".} =
  type Cb = proc(super: QStylepolishWithPaletteBase, palette: gen_qpalette.QPalette): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(palette: gen_qpalette.QPalette): auto =
    callVirtualBase_polishWithPalette(QStyle(h: self), palette)
  let slotval1 = gen_qpalette.QPalette(h: palette)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_itemTextRect(self: QStyle, fm: gen_qfontmetrics.QFontMetrics, r: gen_qrect.QRect, flags: cint, enabled: bool, text: string): gen_qrect.QRect =


  gen_qrect.QRect(h: fQStyle_virtualbase_itemTextRect(self.h, fm.h, r.h, flags, enabled, struct_miqt_string(data: text, len: csize_t(len(text)))))

type QStyleitemTextRectBase* = proc(fm: gen_qfontmetrics.QFontMetrics, r: gen_qrect.QRect, flags: cint, enabled: bool, text: string): gen_qrect.QRect
proc onitemTextRect*(self: QStyle, slot: proc(super: QStyleitemTextRectBase, fm: gen_qfontmetrics.QFontMetrics, r: gen_qrect.QRect, flags: cint, enabled: bool, text: string): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QStyleitemTextRectBase, fm: gen_qfontmetrics.QFontMetrics, r: gen_qrect.QRect, flags: cint, enabled: bool, text: string): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_itemTextRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_itemTextRect(self: ptr cQStyle, slot: int, fm: pointer, r: pointer, flags: cint, enabled: bool, text: struct_miqt_string): pointer {.exportc: "miqt_exec_callback_QStyle_itemTextRect ".} =
  type Cb = proc(super: QStyleitemTextRectBase, fm: gen_qfontmetrics.QFontMetrics, r: gen_qrect.QRect, flags: cint, enabled: bool, text: string): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fm: gen_qfontmetrics.QFontMetrics, r: gen_qrect.QRect, flags: cint, enabled: bool, text: string): auto =
    callVirtualBase_itemTextRect(QStyle(h: self), fm, r, flags, enabled, text)
  let slotval1 = gen_qfontmetrics.QFontMetrics(h: fm)

  let slotval2 = gen_qrect.QRect(h: r)

  let slotval3 = flags

  let slotval4 = enabled

  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval5 = vtextx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn.h
proc callVirtualBase_itemPixmapRect(self: QStyle, r: gen_qrect.QRect, flags: cint, pixmap: gen_qpixmap.QPixmap): gen_qrect.QRect =


  gen_qrect.QRect(h: fQStyle_virtualbase_itemPixmapRect(self.h, r.h, flags, pixmap.h))

type QStyleitemPixmapRectBase* = proc(r: gen_qrect.QRect, flags: cint, pixmap: gen_qpixmap.QPixmap): gen_qrect.QRect
proc onitemPixmapRect*(self: QStyle, slot: proc(super: QStyleitemPixmapRectBase, r: gen_qrect.QRect, flags: cint, pixmap: gen_qpixmap.QPixmap): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QStyleitemPixmapRectBase, r: gen_qrect.QRect, flags: cint, pixmap: gen_qpixmap.QPixmap): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_itemPixmapRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_itemPixmapRect(self: ptr cQStyle, slot: int, r: pointer, flags: cint, pixmap: pointer): pointer {.exportc: "miqt_exec_callback_QStyle_itemPixmapRect ".} =
  type Cb = proc(super: QStyleitemPixmapRectBase, r: gen_qrect.QRect, flags: cint, pixmap: gen_qpixmap.QPixmap): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(r: gen_qrect.QRect, flags: cint, pixmap: gen_qpixmap.QPixmap): auto =
    callVirtualBase_itemPixmapRect(QStyle(h: self), r, flags, pixmap)
  let slotval1 = gen_qrect.QRect(h: r)

  let slotval2 = flags

  let slotval3 = gen_qpixmap.QPixmap(h: pixmap)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_drawItemText(self: QStyle, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, flags: cint, pal: gen_qpalette.QPalette, enabled: bool, text: string, textRole: gen_qpalette.QPaletteColorRole): void =


  fQStyle_virtualbase_drawItemText(self.h, painter.h, rect.h, flags, pal.h, enabled, struct_miqt_string(data: text, len: csize_t(len(text))), cint(textRole))

type QStyledrawItemTextBase* = proc(painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, flags: cint, pal: gen_qpalette.QPalette, enabled: bool, text: string, textRole: gen_qpalette.QPaletteColorRole): void
proc ondrawItemText*(self: QStyle, slot: proc(super: QStyledrawItemTextBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, flags: cint, pal: gen_qpalette.QPalette, enabled: bool, text: string, textRole: gen_qpalette.QPaletteColorRole): void) =
  # TODO check subclass
  type Cb = proc(super: QStyledrawItemTextBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, flags: cint, pal: gen_qpalette.QPalette, enabled: bool, text: string, textRole: gen_qpalette.QPaletteColorRole): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_drawItemText(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_drawItemText(self: ptr cQStyle, slot: int, painter: pointer, rect: pointer, flags: cint, pal: pointer, enabled: bool, text: struct_miqt_string, textRole: cint): void {.exportc: "miqt_exec_callback_QStyle_drawItemText ".} =
  type Cb = proc(super: QStyledrawItemTextBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, flags: cint, pal: gen_qpalette.QPalette, enabled: bool, text: string, textRole: gen_qpalette.QPaletteColorRole): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, flags: cint, pal: gen_qpalette.QPalette, enabled: bool, text: string, textRole: gen_qpalette.QPaletteColorRole): auto =
    callVirtualBase_drawItemText(QStyle(h: self), painter, rect, flags, pal, enabled, text, textRole)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qrect.QRect(h: rect)

  let slotval3 = flags

  let slotval4 = gen_qpalette.QPalette(h: pal)

  let slotval5 = enabled

  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval6 = vtextx_ret

  let slotval7 = gen_qpalette.QPaletteColorRole(textRole)


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5, slotval6, slotval7)
proc callVirtualBase_drawItemPixmap(self: QStyle, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, alignment: cint, pixmap: gen_qpixmap.QPixmap): void =


  fQStyle_virtualbase_drawItemPixmap(self.h, painter.h, rect.h, alignment, pixmap.h)

type QStyledrawItemPixmapBase* = proc(painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, alignment: cint, pixmap: gen_qpixmap.QPixmap): void
proc ondrawItemPixmap*(self: QStyle, slot: proc(super: QStyledrawItemPixmapBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, alignment: cint, pixmap: gen_qpixmap.QPixmap): void) =
  # TODO check subclass
  type Cb = proc(super: QStyledrawItemPixmapBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, alignment: cint, pixmap: gen_qpixmap.QPixmap): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_drawItemPixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_drawItemPixmap(self: ptr cQStyle, slot: int, painter: pointer, rect: pointer, alignment: cint, pixmap: pointer): void {.exportc: "miqt_exec_callback_QStyle_drawItemPixmap ".} =
  type Cb = proc(super: QStyledrawItemPixmapBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, alignment: cint, pixmap: gen_qpixmap.QPixmap): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, alignment: cint, pixmap: gen_qpixmap.QPixmap): auto =
    callVirtualBase_drawItemPixmap(QStyle(h: self), painter, rect, alignment, pixmap)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qrect.QRect(h: rect)

  let slotval3 = alignment

  let slotval4 = gen_qpixmap.QPixmap(h: pixmap)


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_standardPalette(self: QStyle, ): gen_qpalette.QPalette =


  gen_qpalette.QPalette(h: fQStyle_virtualbase_standardPalette(self.h))

type QStylestandardPaletteBase* = proc(): gen_qpalette.QPalette
proc onstandardPalette*(self: QStyle, slot: proc(super: QStylestandardPaletteBase): gen_qpalette.QPalette) =
  # TODO check subclass
  type Cb = proc(super: QStylestandardPaletteBase): gen_qpalette.QPalette
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_standardPalette(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_standardPalette(self: ptr cQStyle, slot: int): pointer {.exportc: "miqt_exec_callback_QStyle_standardPalette ".} =
  type Cb = proc(super: QStylestandardPaletteBase): gen_qpalette.QPalette
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_standardPalette(QStyle(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
type QStyledrawPrimitiveBase* = proc(pe: QStylePrimitiveElement, opt: gen_qstyleoption.QStyleOption, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): void
proc ondrawPrimitive*(self: QStyle, slot: proc(pe: QStylePrimitiveElement, opt: gen_qstyleoption.QStyleOption, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(pe: QStylePrimitiveElement, opt: gen_qstyleoption.QStyleOption, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_drawPrimitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_drawPrimitive(self: ptr cQStyle, slot: int, pe: cint, opt: pointer, p: pointer, w: pointer): void {.exportc: "miqt_exec_callback_QStyle_drawPrimitive ".} =
  type Cb = proc(pe: QStylePrimitiveElement, opt: gen_qstyleoption.QStyleOption, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QStylePrimitiveElement(pe)

  let slotval2 = gen_qstyleoption.QStyleOption(h: opt)

  let slotval3 = gen_qpainter.QPainter(h: p)

  let slotval4 = gen_qwidget.QWidget(h: w)


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
type QStyledrawControlBase* = proc(element: QStyleControlElement, opt: gen_qstyleoption.QStyleOption, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): void
proc ondrawControl*(self: QStyle, slot: proc(element: QStyleControlElement, opt: gen_qstyleoption.QStyleOption, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(element: QStyleControlElement, opt: gen_qstyleoption.QStyleOption, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_drawControl(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_drawControl(self: ptr cQStyle, slot: int, element: cint, opt: pointer, p: pointer, w: pointer): void {.exportc: "miqt_exec_callback_QStyle_drawControl ".} =
  type Cb = proc(element: QStyleControlElement, opt: gen_qstyleoption.QStyleOption, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QStyleControlElement(element)

  let slotval2 = gen_qstyleoption.QStyleOption(h: opt)

  let slotval3 = gen_qpainter.QPainter(h: p)

  let slotval4 = gen_qwidget.QWidget(h: w)


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
type QStylesubElementRectBase* = proc(subElement: QStyleSubElement, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qrect.QRect
proc onsubElementRect*(self: QStyle, slot: proc(subElement: QStyleSubElement, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(subElement: QStyleSubElement, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_subElementRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_subElementRect(self: ptr cQStyle, slot: int, subElement: cint, option: pointer, widget: pointer): pointer {.exportc: "miqt_exec_callback_QStyle_subElementRect ".} =
  type Cb = proc(subElement: QStyleSubElement, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QStyleSubElement(subElement)

  let slotval2 = gen_qstyleoption.QStyleOption(h: option)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
type QStyledrawComplexControlBase* = proc(cc: QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, p: gen_qpainter.QPainter, widget: gen_qwidget.QWidget): void
proc ondrawComplexControl*(self: QStyle, slot: proc(cc: QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, p: gen_qpainter.QPainter, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(cc: QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, p: gen_qpainter.QPainter, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_drawComplexControl(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_drawComplexControl(self: ptr cQStyle, slot: int, cc: cint, opt: pointer, p: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QStyle_drawComplexControl ".} =
  type Cb = proc(cc: QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, p: gen_qpainter.QPainter, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QStyleComplexControl(cc)

  let slotval2 = gen_qstyleoption.QStyleOptionComplex(h: opt)

  let slotval3 = gen_qpainter.QPainter(h: p)

  let slotval4 = gen_qwidget.QWidget(h: widget)


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
type QStylehitTestComplexControlBase* = proc(cc: QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, pt: gen_qpoint.QPoint, widget: gen_qwidget.QWidget): QStyleSubControl
proc onhitTestComplexControl*(self: QStyle, slot: proc(cc: QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, pt: gen_qpoint.QPoint, widget: gen_qwidget.QWidget): QStyleSubControl) =
  # TODO check subclass
  type Cb = proc(cc: QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, pt: gen_qpoint.QPoint, widget: gen_qwidget.QWidget): QStyleSubControl
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_hitTestComplexControl(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_hitTestComplexControl(self: ptr cQStyle, slot: int, cc: cint, opt: pointer, pt: pointer, widget: pointer): cint {.exportc: "miqt_exec_callback_QStyle_hitTestComplexControl ".} =
  type Cb = proc(cc: QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, pt: gen_qpoint.QPoint, widget: gen_qwidget.QWidget): QStyleSubControl
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QStyleComplexControl(cc)

  let slotval2 = gen_qstyleoption.QStyleOptionComplex(h: opt)

  let slotval3 = gen_qpoint.QPoint(h: pt)

  let slotval4 = gen_qwidget.QWidget(h: widget)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  cint(virtualReturn)
type QStylesubControlRectBase* = proc(cc: QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, sc: QStyleSubControl, widget: gen_qwidget.QWidget): gen_qrect.QRect
proc onsubControlRect*(self: QStyle, slot: proc(cc: QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, sc: QStyleSubControl, widget: gen_qwidget.QWidget): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(cc: QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, sc: QStyleSubControl, widget: gen_qwidget.QWidget): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_subControlRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_subControlRect(self: ptr cQStyle, slot: int, cc: cint, opt: pointer, sc: cint, widget: pointer): pointer {.exportc: "miqt_exec_callback_QStyle_subControlRect ".} =
  type Cb = proc(cc: QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, sc: QStyleSubControl, widget: gen_qwidget.QWidget): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QStyleComplexControl(cc)

  let slotval2 = gen_qstyleoption.QStyleOptionComplex(h: opt)

  let slotval3 = QStyleSubControl(sc)

  let slotval4 = gen_qwidget.QWidget(h: widget)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn.h
type QStylepixelMetricBase* = proc(metric: QStylePixelMetric, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint
proc onpixelMetric*(self: QStyle, slot: proc(metric: QStylePixelMetric, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint) =
  # TODO check subclass
  type Cb = proc(metric: QStylePixelMetric, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_pixelMetric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_pixelMetric(self: ptr cQStyle, slot: int, metric: cint, option: pointer, widget: pointer): cint {.exportc: "miqt_exec_callback_QStyle_pixelMetric ".} =
  type Cb = proc(metric: QStylePixelMetric, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QStylePixelMetric(metric)

  let slotval2 = gen_qstyleoption.QStyleOption(h: option)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QStylesizeFromContentsBase* = proc(ct: QStyleContentsType, opt: gen_qstyleoption.QStyleOption, contentsSize: gen_qsize.QSize, w: gen_qwidget.QWidget): gen_qsize.QSize
proc onsizeFromContents*(self: QStyle, slot: proc(ct: QStyleContentsType, opt: gen_qstyleoption.QStyleOption, contentsSize: gen_qsize.QSize, w: gen_qwidget.QWidget): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(ct: QStyleContentsType, opt: gen_qstyleoption.QStyleOption, contentsSize: gen_qsize.QSize, w: gen_qwidget.QWidget): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_sizeFromContents(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_sizeFromContents(self: ptr cQStyle, slot: int, ct: cint, opt: pointer, contentsSize: pointer, w: pointer): pointer {.exportc: "miqt_exec_callback_QStyle_sizeFromContents ".} =
  type Cb = proc(ct: QStyleContentsType, opt: gen_qstyleoption.QStyleOption, contentsSize: gen_qsize.QSize, w: gen_qwidget.QWidget): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QStyleContentsType(ct)

  let slotval2 = gen_qstyleoption.QStyleOption(h: opt)

  let slotval3 = gen_qsize.QSize(h: contentsSize)

  let slotval4 = gen_qwidget.QWidget(h: w)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn.h
type QStylestyleHintBase* = proc(stylehint: QStyleStyleHint, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget, returnData: gen_qstyleoption.QStyleHintReturn): cint
proc onstyleHint*(self: QStyle, slot: proc(stylehint: QStyleStyleHint, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget, returnData: gen_qstyleoption.QStyleHintReturn): cint) =
  # TODO check subclass
  type Cb = proc(stylehint: QStyleStyleHint, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget, returnData: gen_qstyleoption.QStyleHintReturn): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_styleHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_styleHint(self: ptr cQStyle, slot: int, stylehint: cint, opt: pointer, widget: pointer, returnData: pointer): cint {.exportc: "miqt_exec_callback_QStyle_styleHint ".} =
  type Cb = proc(stylehint: QStyleStyleHint, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget, returnData: gen_qstyleoption.QStyleHintReturn): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QStyleStyleHint(stylehint)

  let slotval2 = gen_qstyleoption.QStyleOption(h: opt)

  let slotval3 = gen_qwidget.QWidget(h: widget)

  let slotval4 = gen_qstyleoption.QStyleHintReturn(h: returnData)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
type QStylestandardPixmapBase* = proc(standardPixmap: QStyleStandardPixmap, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qpixmap.QPixmap
proc onstandardPixmap*(self: QStyle, slot: proc(standardPixmap: QStyleStandardPixmap, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qpixmap.QPixmap) =
  # TODO check subclass
  type Cb = proc(standardPixmap: QStyleStandardPixmap, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qpixmap.QPixmap
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_standardPixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_standardPixmap(self: ptr cQStyle, slot: int, standardPixmap: cint, opt: pointer, widget: pointer): pointer {.exportc: "miqt_exec_callback_QStyle_standardPixmap ".} =
  type Cb = proc(standardPixmap: QStyleStandardPixmap, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qpixmap.QPixmap
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QStyleStandardPixmap(standardPixmap)

  let slotval2 = gen_qstyleoption.QStyleOption(h: opt)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
type QStylestandardIconBase* = proc(standardIcon: QStyleStandardPixmap, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qicon.QIcon
proc onstandardIcon*(self: QStyle, slot: proc(standardIcon: QStyleStandardPixmap, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qicon.QIcon) =
  # TODO check subclass
  type Cb = proc(standardIcon: QStyleStandardPixmap, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qicon.QIcon
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_standardIcon(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_standardIcon(self: ptr cQStyle, slot: int, standardIcon: cint, option: pointer, widget: pointer): pointer {.exportc: "miqt_exec_callback_QStyle_standardIcon ".} =
  type Cb = proc(standardIcon: QStyleStandardPixmap, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qicon.QIcon
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QStyleStandardPixmap(standardIcon)

  let slotval2 = gen_qstyleoption.QStyleOption(h: option)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
type QStylegeneratedIconPixmapBase* = proc(iconMode: gen_qicon.QIconMode, pixmap: gen_qpixmap.QPixmap, opt: gen_qstyleoption.QStyleOption): gen_qpixmap.QPixmap
proc ongeneratedIconPixmap*(self: QStyle, slot: proc(iconMode: gen_qicon.QIconMode, pixmap: gen_qpixmap.QPixmap, opt: gen_qstyleoption.QStyleOption): gen_qpixmap.QPixmap) =
  # TODO check subclass
  type Cb = proc(iconMode: gen_qicon.QIconMode, pixmap: gen_qpixmap.QPixmap, opt: gen_qstyleoption.QStyleOption): gen_qpixmap.QPixmap
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_generatedIconPixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_generatedIconPixmap(self: ptr cQStyle, slot: int, iconMode: cint, pixmap: pointer, opt: pointer): pointer {.exportc: "miqt_exec_callback_QStyle_generatedIconPixmap ".} =
  type Cb = proc(iconMode: gen_qicon.QIconMode, pixmap: gen_qpixmap.QPixmap, opt: gen_qstyleoption.QStyleOption): gen_qpixmap.QPixmap
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qicon.QIconMode(iconMode)

  let slotval2 = gen_qpixmap.QPixmap(h: pixmap)

  let slotval3 = gen_qstyleoption.QStyleOption(h: opt)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
type QStylelayoutSpacingBase* = proc(control1: gen_qsizepolicy.QSizePolicyControlType, control2: gen_qsizepolicy.QSizePolicyControlType, orientation: gen_qnamespace.Orientation, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint
proc onlayoutSpacing*(self: QStyle, slot: proc(control1: gen_qsizepolicy.QSizePolicyControlType, control2: gen_qsizepolicy.QSizePolicyControlType, orientation: gen_qnamespace.Orientation, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint) =
  # TODO check subclass
  type Cb = proc(control1: gen_qsizepolicy.QSizePolicyControlType, control2: gen_qsizepolicy.QSizePolicyControlType, orientation: gen_qnamespace.Orientation, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_layoutSpacing(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_layoutSpacing(self: ptr cQStyle, slot: int, control1: cint, control2: cint, orientation: cint, option: pointer, widget: pointer): cint {.exportc: "miqt_exec_callback_QStyle_layoutSpacing ".} =
  type Cb = proc(control1: gen_qsizepolicy.QSizePolicyControlType, control2: gen_qsizepolicy.QSizePolicyControlType, orientation: gen_qnamespace.Orientation, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qsizepolicy.QSizePolicyControlType(control1)

  let slotval2 = gen_qsizepolicy.QSizePolicyControlType(control2)

  let slotval3 = gen_qnamespace.Orientation(orientation)

  let slotval4 = gen_qstyleoption.QStyleOption(h: option)

  let slotval5 = gen_qwidget.QWidget(h: widget)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_event(self: QStyle, event: gen_qcoreevent.QEvent): bool =


  fQStyle_virtualbase_event(self.h, event.h)

type QStyleeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QStyle, slot: proc(super: QStyleeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QStyleeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_event(self: ptr cQStyle, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QStyle_event ".} =
  type Cb = proc(super: QStyleeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QStyle(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QStyle, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQStyle_virtualbase_eventFilter(self.h, watched.h, event.h)

type QStyleeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QStyle, slot: proc(super: QStyleeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QStyleeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_eventFilter(self: ptr cQStyle, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QStyle_eventFilter ".} =
  type Cb = proc(super: QStyleeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QStyle(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QStyle, event: gen_qcoreevent.QTimerEvent): void =


  fQStyle_virtualbase_timerEvent(self.h, event.h)

type QStyletimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QStyle, slot: proc(super: QStyletimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStyletimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_timerEvent(self: ptr cQStyle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStyle_timerEvent ".} =
  type Cb = proc(super: QStyletimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QStyle(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QStyle, event: gen_qcoreevent.QChildEvent): void =


  fQStyle_virtualbase_childEvent(self.h, event.h)

type QStylechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QStyle, slot: proc(super: QStylechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStylechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_childEvent(self: ptr cQStyle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStyle_childEvent ".} =
  type Cb = proc(super: QStylechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QStyle(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QStyle, event: gen_qcoreevent.QEvent): void =


  fQStyle_virtualbase_customEvent(self.h, event.h)

type QStylecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QStyle, slot: proc(super: QStylecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStylecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_customEvent(self: ptr cQStyle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStyle_customEvent ".} =
  type Cb = proc(super: QStylecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QStyle(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QStyle, signal: gen_qmetaobject.QMetaMethod): void =


  fQStyle_virtualbase_connectNotify(self.h, signal.h)

type QStyleconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QStyle, slot: proc(super: QStyleconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QStyleconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_connectNotify(self: ptr cQStyle, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStyle_connectNotify ".} =
  type Cb = proc(super: QStyleconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QStyle(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QStyle, signal: gen_qmetaobject.QMetaMethod): void =


  fQStyle_virtualbase_disconnectNotify(self.h, signal.h)

type QStyledisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QStyle, slot: proc(super: QStyledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QStyledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyle_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyle_disconnectNotify(self: ptr cQStyle, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStyle_disconnectNotify ".} =
  type Cb = proc(super: QStyledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QStyle(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QStyle): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQStyle_staticMetaObject())
proc delete*(self: QStyle) =
  fcQStyle_delete(self.h)
