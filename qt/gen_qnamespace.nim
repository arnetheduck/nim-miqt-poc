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
{.compile("gen_qnamespace.cpp", cflags).}


type GlobalColor* = cint
const
  Qtcolor0* = 0
  Qtcolor1* = 1
  Qtblack* = 2
  Qtwhite* = 3
  QtdarkGray* = 4
  Qtgray* = 5
  QtlightGray* = 6
  Qtred* = 7
  Qtgreen* = 8
  Qtblue* = 9
  Qtcyan* = 10
  Qtmagenta* = 11
  Qtyellow* = 12
  QtdarkRed* = 13
  QtdarkGreen* = 14
  QtdarkBlue* = 15
  QtdarkCyan* = 16
  QtdarkMagenta* = 17
  QtdarkYellow* = 18
  Qttransparent* = 19



type KeyboardModifier* = cint
const
  QtNoModifier* = 0
  QtShiftModifier* = 33554432
  QtControlModifier* = 67108864
  QtAltModifier* = 134217728
  QtMetaModifier* = 268435456
  QtKeypadModifier* = 536870912
  QtGroupSwitchModifier* = 1073741824
  QtKeyboardModifierMask* = 4261412864



type Modifier* = cint
const
  QtMETA* = 268435456
  QtSHIFT* = 33554432
  QtCTRL* = 67108864
  QtALT* = 134217728
  QtMODIFIER_MASK* = 4261412864
  QtUNICODE_ACCEL* = 0



type MouseButton* = cint
const
  QtNoButton* = 0
  QtLeftButton* = 1
  QtRightButton* = 2
  QtMiddleButton* = 4
  QtMidButton* = 4
  QtBackButton* = 8
  QtXButton1* = 8
  QtExtraButton1* = 8
  QtForwardButton* = 16
  QtXButton2* = 16
  QtExtraButton2* = 16
  QtTaskButton* = 32
  QtExtraButton3* = 32
  QtExtraButton4* = 64
  QtExtraButton5* = 128
  QtExtraButton6* = 256
  QtExtraButton7* = 512
  QtExtraButton8* = 1024
  QtExtraButton9* = 2048
  QtExtraButton10* = 4096
  QtExtraButton11* = 8192
  QtExtraButton12* = 16384
  QtExtraButton13* = 32768
  QtExtraButton14* = 65536
  QtExtraButton15* = 131072
  QtExtraButton16* = 262144
  QtExtraButton17* = 524288
  QtExtraButton18* = 1048576
  QtExtraButton19* = 2097152
  QtExtraButton20* = 4194304
  QtExtraButton21* = 8388608
  QtExtraButton22* = 16777216
  QtExtraButton23* = 33554432
  QtExtraButton24* = 67108864
  QtAllButtons* = 134217727
  QtMaxMouseButton* = 67108864
  QtMouseButtonMask* = 4294967295



type Orientation* = cint
const
  QtHorizontal* = 1
  QtVertical* = 2



type FocusPolicy* = cint
const
  QtNoFocus* = 0
  QtTabFocus* = 1
  QtClickFocus* = 2
  QtStrongFocus* = 11
  QtWheelFocus* = 15



type TabFocusBehavior* = cint
const
  QtNoTabFocus* = 0
  QtTabFocusTextControls* = 1
  QtTabFocusListControls* = 2
  QtTabFocusAllControls* = 255



type SortOrder* = cint
const
  QtAscendingOrder* = 0
  QtDescendingOrder* = 1



type SplitBehaviorFlags* = cint
const
  QtKeepEmptyParts* = 0
  QtSkipEmptyParts* = 1



type TileRule* = cint
const
  QtStretchTile* = 0
  QtRepeatTile* = 1
  QtRoundTile* = 2



type AlignmentFlag* = cint
const
  QtAlignLeft* = 1
  QtAlignLeading* = 1
  QtAlignRight* = 2
  QtAlignTrailing* = 2
  QtAlignHCenter* = 4
  QtAlignJustify* = 8
  QtAlignAbsolute* = 16
  QtAlignHorizontal_Mask* = 31
  QtAlignTop* = 32
  QtAlignBottom* = 64
  QtAlignVCenter* = 128
  QtAlignBaseline* = 256
  QtAlignVertical_Mask* = 480
  QtAlignCenter* = 132



type TextFlag* = cint
const
  QtTextSingleLine* = 256
  QtTextDontClip* = 512
  QtTextExpandTabs* = 1024
  QtTextShowMnemonic* = 2048
  QtTextWordWrap* = 4096
  QtTextWrapAnywhere* = 8192
  QtTextDontPrint* = 16384
  QtTextIncludeTrailingSpaces* = 134217728
  QtTextHideMnemonic* = 32768
  QtTextJustificationForced* = 65536
  QtTextForceLeftToRight* = 131072
  QtTextForceRightToLeft* = 262144
  QtTextLongestVariant* = 524288
  QtTextBypassShaping* = 1048576



type TextElideMode* = cint
const
  QtElideLeft* = 0
  QtElideRight* = 1
  QtElideMiddle* = 2
  QtElideNone* = 3



type WhiteSpaceMode* = cint
const
  QtWhiteSpaceNormal* = 0
  QtWhiteSpacePre* = 1
  QtWhiteSpaceNoWrap* = 2
  QtWhiteSpaceModeUndefined* = -1



type HitTestAccuracy* = cint
const
  QtExactHit* = 0
  QtFuzzyHit* = 1



type WindowType* = cint
const
  QtWidget* = 0
  QtWindow* = 1
  QtDialog* = 3
  QtSheet* = 5
  QtDrawer* = 7
  QtPopup* = 9
  QtTool* = 11
  QtToolTip* = 13
  QtSplashScreen* = 15
  QtDesktop* = 17
  QtSubWindow* = 18
  QtForeignWindow* = 33
  QtCoverWindow* = 65
  QtWindowType_Mask* = 255
  QtMSWindowsFixedSizeDialogHint* = 256
  QtMSWindowsOwnDC* = 512
  QtBypassWindowManagerHint* = 1024
  QtX11BypassWindowManagerHint* = 1024
  QtFramelessWindowHint* = 2048
  QtWindowTitleHint* = 4096
  QtWindowSystemMenuHint* = 8192
  QtWindowMinimizeButtonHint* = 16384
  QtWindowMaximizeButtonHint* = 32768
  QtWindowMinMaxButtonsHint* = 49152
  QtWindowContextHelpButtonHint* = 65536
  QtWindowShadeButtonHint* = 131072
  QtWindowStaysOnTopHint* = 262144
  QtWindowTransparentForInput* = 524288
  QtWindowOverridesSystemGestures* = 1048576
  QtWindowDoesNotAcceptFocus* = 2097152
  QtMaximizeUsingFullscreenGeometryHint* = 4194304
  QtCustomizeWindowHint* = 33554432
  QtWindowStaysOnBottomHint* = 67108864
  QtWindowCloseButtonHint* = 134217728
  QtMacWindowToolBarButtonHint* = 268435456
  QtBypassGraphicsProxyWidget* = 536870912
  QtNoDropShadowWindowHint* = 1073741824
  QtWindowFullscreenButtonHint* = 2147483648



type WindowState* = cint
const
  QtWindowNoState* = 0
  QtWindowMinimized* = 1
  QtWindowMaximized* = 2
  QtWindowFullScreen* = 4
  QtWindowActive* = 8



type ApplicationState* = cint
const
  QtApplicationSuspended* = 0
  QtApplicationHidden* = 1
  QtApplicationInactive* = 2
  QtApplicationActive* = 4



type ScreenOrientation* = cint
const
  QtPrimaryOrientation* = 0
  QtPortraitOrientation* = 1
  QtLandscapeOrientation* = 2
  QtInvertedPortraitOrientation* = 4
  QtInvertedLandscapeOrientation* = 8



type WidgetAttribute* = cint
const
  QtWA_Disabled* = 0
  QtWA_UnderMouse* = 1
  QtWA_MouseTracking* = 2
  QtWA_ContentsPropagated* = 3
  QtWA_OpaquePaintEvent* = 4
  QtWA_NoBackground* = 4
  QtWA_StaticContents* = 5
  QtWA_LaidOut* = 7
  QtWA_PaintOnScreen* = 8
  QtWA_NoSystemBackground* = 9
  QtWA_UpdatesDisabled* = 10
  QtWA_Mapped* = 11
  QtWA_MacNoClickThrough* = 12
  QtWA_InputMethodEnabled* = 14
  QtWA_WState_Visible* = 15
  QtWA_WState_Hidden* = 16
  QtWA_ForceDisabled* = 32
  QtWA_KeyCompression* = 33
  QtWA_PendingMoveEvent* = 34
  QtWA_PendingResizeEvent* = 35
  QtWA_SetPalette* = 36
  QtWA_SetFont* = 37
  QtWA_SetCursor* = 38
  QtWA_NoChildEventsFromChildren* = 39
  QtWA_WindowModified* = 41
  QtWA_Resized* = 42
  QtWA_Moved* = 43
  QtWA_PendingUpdate* = 44
  QtWA_InvalidSize* = 45
  QtWA_MacBrushedMetal* = 46
  QtWA_MacMetalStyle* = 46
  QtWA_CustomWhatsThis* = 47
  QtWA_LayoutOnEntireRect* = 48
  QtWA_OutsideWSRange* = 49
  QtWA_GrabbedShortcut* = 50
  QtWA_TransparentForMouseEvents* = 51
  QtWA_PaintUnclipped* = 52
  QtWA_SetWindowIcon* = 53
  QtWA_NoMouseReplay* = 54
  QtWA_DeleteOnClose* = 55
  QtWA_RightToLeft* = 56
  QtWA_SetLayoutDirection* = 57
  QtWA_NoChildEventsForParent* = 58
  QtWA_ForceUpdatesDisabled* = 59
  QtWA_WState_Created* = 60
  QtWA_WState_CompressKeys* = 61
  QtWA_WState_InPaintEvent* = 62
  QtWA_WState_Reparented* = 63
  QtWA_WState_ConfigPending* = 64
  QtWA_WState_Polished* = 66
  QtWA_WState_DND* = 67
  QtWA_WState_OwnSizePolicy* = 68
  QtWA_WState_ExplicitShowHide* = 69
  QtWA_ShowModal* = 70
  QtWA_MouseNoMask* = 71
  QtWA_GroupLeader* = 72
  QtWA_NoMousePropagation* = 73
  QtWA_Hover* = 74
  QtWA_InputMethodTransparent* = 75
  QtWA_QuitOnClose* = 76
  QtWA_KeyboardFocusChange* = 77
  QtWA_AcceptDrops* = 78
  QtWA_DropSiteRegistered* = 79
  QtWA_ForceAcceptDrops* = 79
  QtWA_WindowPropagation* = 80
  QtWA_NoX11EventCompression* = 81
  QtWA_TintedBackground* = 82
  QtWA_X11OpenGLOverlay* = 83
  QtWA_AlwaysShowToolTips* = 84
  QtWA_MacOpaqueSizeGrip* = 85
  QtWA_SetStyle* = 86
  QtWA_SetLocale* = 87
  QtWA_MacShowFocusRect* = 88
  QtWA_MacNormalSize* = 89
  QtWA_MacSmallSize* = 90
  QtWA_MacMiniSize* = 91
  QtWA_LayoutUsesWidgetRect* = 92
  QtWA_StyledBackground* = 93
  QtWA_MSWindowsUseDirect3D* = 94
  QtWA_CanHostQMdiSubWindowTitleBar* = 95
  QtWA_MacAlwaysShowToolWindow* = 96
  QtWA_StyleSheet* = 97
  QtWA_ShowWithoutActivating* = 98
  QtWA_X11BypassTransientForHint* = 99
  QtWA_NativeWindow* = 100
  QtWA_DontCreateNativeAncestors* = 101
  QtWA_MacVariableSize* = 102
  QtWA_DontShowOnScreen* = 103
  QtWA_X11NetWmWindowTypeDesktop* = 104
  QtWA_X11NetWmWindowTypeDock* = 105
  QtWA_X11NetWmWindowTypeToolBar* = 106
  QtWA_X11NetWmWindowTypeMenu* = 107
  QtWA_X11NetWmWindowTypeUtility* = 108
  QtWA_X11NetWmWindowTypeSplash* = 109
  QtWA_X11NetWmWindowTypeDialog* = 110
  QtWA_X11NetWmWindowTypeDropDownMenu* = 111
  QtWA_X11NetWmWindowTypePopupMenu* = 112
  QtWA_X11NetWmWindowTypeToolTip* = 113
  QtWA_X11NetWmWindowTypeNotification* = 114
  QtWA_X11NetWmWindowTypeCombo* = 115
  QtWA_X11NetWmWindowTypeDND* = 116
  QtWA_MacFrameworkScaled* = 117
  QtWA_SetWindowModality* = 118
  QtWA_WState_WindowOpacitySet* = 119
  QtWA_TranslucentBackground* = 120
  QtWA_AcceptTouchEvents* = 121
  QtWA_WState_AcceptedTouchBeginEvent* = 122
  QtWA_TouchPadAcceptSingleTouchEvents* = 123
  QtWA_X11DoNotAcceptFocus* = 126
  QtWA_MacNoShadow* = 127
  QtWA_AlwaysStackOnTop* = 128
  QtWA_TabletTracking* = 129
  QtWA_ContentsMarginsRespectsSafeArea* = 130
  QtWA_StyleSheetTarget* = 131
  QtWA_AttributeCount* = 132



type ApplicationAttribute* = cint
const
  QtAA_ImmediateWidgetCreation* = 0
  QtAA_MSWindowsUseDirect3DByDefault* = 1
  QtAA_DontShowIconsInMenus* = 2
  QtAA_NativeWindows* = 3
  QtAA_DontCreateNativeWidgetSiblings* = 4
  QtAA_PluginApplication* = 5
  QtAA_MacPluginApplication* = 5
  QtAA_DontUseNativeMenuBar* = 6
  QtAA_MacDontSwapCtrlAndMeta* = 7
  QtAA_Use96Dpi* = 8
  QtAA_DisableNativeVirtualKeyboard* = 9
  QtAA_X11InitThreads* = 10
  QtAA_SynthesizeTouchForUnhandledMouseEvents* = 11
  QtAA_SynthesizeMouseForUnhandledTouchEvents* = 12
  QtAA_UseHighDpiPixmaps* = 13
  QtAA_ForceRasterWidgets* = 14
  QtAA_UseDesktopOpenGL* = 15
  QtAA_UseOpenGLES* = 16
  QtAA_UseSoftwareOpenGL* = 17
  QtAA_ShareOpenGLContexts* = 18
  QtAA_SetPalette* = 19
  QtAA_EnableHighDpiScaling* = 20
  QtAA_DisableHighDpiScaling* = 21
  QtAA_UseStyleSheetPropagationInWidgetStyles* = 22
  QtAA_DontUseNativeDialogs* = 23
  QtAA_SynthesizeMouseForUnhandledTabletEvents* = 24
  QtAA_CompressHighFrequencyEvents* = 25
  QtAA_DontCheckOpenGLContextThreadAffinity* = 26
  QtAA_DisableShaderDiskCache* = 27
  QtAA_DontShowShortcutsInContextMenus* = 28
  QtAA_CompressTabletEvents* = 29
  QtAA_DisableWindowContextHelpButton* = 30
  QtAA_DisableSessionManager* = 31
  QtAA_AttributeCount* = 32



type ImageConversionFlag* = cint
const
  QtColorMode_Mask* = 3
  QtAutoColor* = 0
  QtColorOnly* = 3
  QtMonoOnly* = 2
  QtAlphaDither_Mask* = 12
  QtThresholdAlphaDither* = 0
  QtOrderedAlphaDither* = 4
  QtDiffuseAlphaDither* = 8
  QtNoAlpha* = 12
  QtDither_Mask* = 48
  QtDiffuseDither* = 0
  QtOrderedDither* = 16
  QtThresholdDither* = 32
  QtDitherMode_Mask* = 192
  QtAutoDither* = 0
  QtPreferDither* = 64
  QtAvoidDither* = 128
  QtNoOpaqueDetection* = 256
  QtNoFormatConversion* = 512



type BGMode* = cint
const
  QtTransparentMode* = 0
  QtOpaqueMode* = 1



type Key* = cint
const
  QtKey_Escape* = 16777216
  QtKey_Tab* = 16777217
  QtKey_Backtab* = 16777218
  QtKey_Backspace* = 16777219
  QtKey_Return* = 16777220
  QtKey_Enter* = 16777221
  QtKey_Insert* = 16777222
  QtKey_Delete* = 16777223
  QtKey_Pause* = 16777224
  QtKey_Print* = 16777225
  QtKey_SysReq* = 16777226
  QtKey_Clear* = 16777227
  QtKey_Home* = 16777232
  QtKey_End* = 16777233
  QtKey_Left* = 16777234
  QtKey_Up* = 16777235
  QtKey_Right* = 16777236
  QtKey_Down* = 16777237
  QtKey_PageUp* = 16777238
  QtKey_PageDown* = 16777239
  QtKey_Shift* = 16777248
  QtKey_Control* = 16777249
  QtKey_Meta* = 16777250
  QtKey_Alt* = 16777251
  QtKey_CapsLock* = 16777252
  QtKey_NumLock* = 16777253
  QtKey_ScrollLock* = 16777254
  QtKey_F1* = 16777264
  QtKey_F2* = 16777265
  QtKey_F3* = 16777266
  QtKey_F4* = 16777267
  QtKey_F5* = 16777268
  QtKey_F6* = 16777269
  QtKey_F7* = 16777270
  QtKey_F8* = 16777271
  QtKey_F9* = 16777272
  QtKey_F10* = 16777273
  QtKey_F11* = 16777274
  QtKey_F12* = 16777275
  QtKey_F13* = 16777276
  QtKey_F14* = 16777277
  QtKey_F15* = 16777278
  QtKey_F16* = 16777279
  QtKey_F17* = 16777280
  QtKey_F18* = 16777281
  QtKey_F19* = 16777282
  QtKey_F20* = 16777283
  QtKey_F21* = 16777284
  QtKey_F22* = 16777285
  QtKey_F23* = 16777286
  QtKey_F24* = 16777287
  QtKey_F25* = 16777288
  QtKey_F26* = 16777289
  QtKey_F27* = 16777290
  QtKey_F28* = 16777291
  QtKey_F29* = 16777292
  QtKey_F30* = 16777293
  QtKey_F31* = 16777294
  QtKey_F32* = 16777295
  QtKey_F33* = 16777296
  QtKey_F34* = 16777297
  QtKey_F35* = 16777298
  QtKey_Super_L* = 16777299
  QtKey_Super_R* = 16777300
  QtKey_Menu* = 16777301
  QtKey_Hyper_L* = 16777302
  QtKey_Hyper_R* = 16777303
  QtKey_Help* = 16777304
  QtKey_Direction_L* = 16777305
  QtKey_Direction_R* = 16777312
  QtKey_Space* = 32
  QtKey_Any* = 32
  QtKey_Exclam* = 33
  QtKey_QuoteDbl* = 34
  QtKey_NumberSign* = 35
  QtKey_Dollar* = 36
  QtKey_Percent* = 37
  QtKey_Ampersand* = 38
  QtKey_Apostrophe* = 39
  QtKey_ParenLeft* = 40
  QtKey_ParenRight* = 41
  QtKey_Asterisk* = 42
  QtKey_Plus* = 43
  QtKey_Comma* = 44
  QtKey_Minus* = 45
  QtKey_Period* = 46
  QtKey_Slash* = 47
  QtKey_0* = 48
  QtKey_1* = 49
  QtKey_2* = 50
  QtKey_3* = 51
  QtKey_4* = 52
  QtKey_5* = 53
  QtKey_6* = 54
  QtKey_7* = 55
  QtKey_8* = 56
  QtKey_9* = 57
  QtKey_Colon* = 58
  QtKey_Semicolon* = 59
  QtKey_Less* = 60
  QtKey_Equal* = 61
  QtKey_Greater* = 62
  QtKey_Question* = 63
  QtKey_At* = 64
  QtKey_A* = 65
  QtKey_B* = 66
  QtKey_C* = 67
  QtKey_D* = 68
  QtKey_E* = 69
  QtKey_F* = 70
  QtKey_G* = 71
  QtKey_H* = 72
  QtKey_I* = 73
  QtKey_J* = 74
  QtKey_K* = 75
  QtKey_L* = 76
  QtKey_M* = 77
  QtKey_N* = 78
  QtKey_O* = 79
  QtKey_P* = 80
  QtKey_Q* = 81
  QtKey_R* = 82
  QtKey_S* = 83
  QtKey_T* = 84
  QtKey_U* = 85
  QtKey_V* = 86
  QtKey_W* = 87
  QtKey_X* = 88
  QtKey_Y* = 89
  QtKey_Z* = 90
  QtKey_BracketLeft* = 91
  QtKey_Backslash* = 92
  QtKey_BracketRight* = 93
  QtKey_AsciiCircum* = 94
  QtKey_Underscore* = 95
  QtKey_QuoteLeft* = 96
  QtKey_BraceLeft* = 123
  QtKey_Bar* = 124
  QtKey_BraceRight* = 125
  QtKey_AsciiTilde* = 126
  QtKey_nobreakspace* = 160
  QtKey_exclamdown* = 161
  QtKey_cent* = 162
  QtKey_sterling* = 163
  QtKey_currency* = 164
  QtKey_yen* = 165
  QtKey_brokenbar* = 166
  QtKey_section* = 167
  QtKey_diaeresis* = 168
  QtKey_copyright* = 169
  QtKey_ordfeminine* = 170
  QtKey_guillemotleft* = 171
  QtKey_notsign* = 172
  QtKey_hyphen* = 173
  QtKey_registered* = 174
  QtKey_macron* = 175
  QtKey_degree* = 176
  QtKey_plusminus* = 177
  QtKey_twosuperior* = 178
  QtKey_threesuperior* = 179
  QtKey_acute* = 180
  QtKey_mu* = 181
  QtKey_paragraph* = 182
  QtKey_periodcentered* = 183
  QtKey_cedilla* = 184
  QtKey_onesuperior* = 185
  QtKey_masculine* = 186
  QtKey_guillemotright* = 187
  QtKey_onequarter* = 188
  QtKey_onehalf* = 189
  QtKey_threequarters* = 190
  QtKey_questiondown* = 191
  QtKey_Agrave* = 192
  QtKey_Aacute* = 193
  QtKey_Acircumflex* = 194
  QtKey_Atilde* = 195
  QtKey_Adiaeresis* = 196
  QtKey_Aring* = 197
  QtKey_AE* = 198
  QtKey_Ccedilla* = 199
  QtKey_Egrave* = 200
  QtKey_Eacute* = 201
  QtKey_Ecircumflex* = 202
  QtKey_Ediaeresis* = 203
  QtKey_Igrave* = 204
  QtKey_Iacute* = 205
  QtKey_Icircumflex* = 206
  QtKey_Idiaeresis* = 207
  QtKey_ETH* = 208
  QtKey_Ntilde* = 209
  QtKey_Ograve* = 210
  QtKey_Oacute* = 211
  QtKey_Ocircumflex* = 212
  QtKey_Otilde* = 213
  QtKey_Odiaeresis* = 214
  QtKey_multiply* = 215
  QtKey_Ooblique* = 216
  QtKey_Ugrave* = 217
  QtKey_Uacute* = 218
  QtKey_Ucircumflex* = 219
  QtKey_Udiaeresis* = 220
  QtKey_Yacute* = 221
  QtKey_THORN* = 222
  QtKey_ssharp* = 223
  QtKey_division* = 247
  QtKey_ydiaeresis* = 255
  QtKey_AltGr* = 16781571
  QtKey_Multi_key* = 16781600
  QtKey_Codeinput* = 16781623
  QtKey_SingleCandidate* = 16781628
  QtKey_MultipleCandidate* = 16781629
  QtKey_PreviousCandidate* = 16781630
  QtKey_Mode_switch* = 16781694
  QtKey_Kanji* = 16781601
  QtKey_Muhenkan* = 16781602
  QtKey_Henkan* = 16781603
  QtKey_Romaji* = 16781604
  QtKey_Hiragana* = 16781605
  QtKey_Katakana* = 16781606
  QtKey_Hiragana_Katakana* = 16781607
  QtKey_Zenkaku* = 16781608
  QtKey_Hankaku* = 16781609
  QtKey_Zenkaku_Hankaku* = 16781610
  QtKey_Touroku* = 16781611
  QtKey_Massyo* = 16781612
  QtKey_Kana_Lock* = 16781613
  QtKey_Kana_Shift* = 16781614
  QtKey_Eisu_Shift* = 16781615
  QtKey_Eisu_toggle* = 16781616
  QtKey_Hangul* = 16781617
  QtKey_Hangul_Start* = 16781618
  QtKey_Hangul_End* = 16781619
  QtKey_Hangul_Hanja* = 16781620
  QtKey_Hangul_Jamo* = 16781621
  QtKey_Hangul_Romaja* = 16781622
  QtKey_Hangul_Jeonja* = 16781624
  QtKey_Hangul_Banja* = 16781625
  QtKey_Hangul_PreHanja* = 16781626
  QtKey_Hangul_PostHanja* = 16781627
  QtKey_Hangul_Special* = 16781631
  QtKey_Dead_Grave* = 16781904
  QtKey_Dead_Acute* = 16781905
  QtKey_Dead_Circumflex* = 16781906
  QtKey_Dead_Tilde* = 16781907
  QtKey_Dead_Macron* = 16781908
  QtKey_Dead_Breve* = 16781909
  QtKey_Dead_Abovedot* = 16781910
  QtKey_Dead_Diaeresis* = 16781911
  QtKey_Dead_Abovering* = 16781912
  QtKey_Dead_Doubleacute* = 16781913
  QtKey_Dead_Caron* = 16781914
  QtKey_Dead_Cedilla* = 16781915
  QtKey_Dead_Ogonek* = 16781916
  QtKey_Dead_Iota* = 16781917
  QtKey_Dead_Voiced_Sound* = 16781918
  QtKey_Dead_Semivoiced_Sound* = 16781919
  QtKey_Dead_Belowdot* = 16781920
  QtKey_Dead_Hook* = 16781921
  QtKey_Dead_Horn* = 16781922
  QtKey_Dead_Stroke* = 16781923
  QtKey_Dead_Abovecomma* = 16781924
  QtKey_Dead_Abovereversedcomma* = 16781925
  QtKey_Dead_Doublegrave* = 16781926
  QtKey_Dead_Belowring* = 16781927
  QtKey_Dead_Belowmacron* = 16781928
  QtKey_Dead_Belowcircumflex* = 16781929
  QtKey_Dead_Belowtilde* = 16781930
  QtKey_Dead_Belowbreve* = 16781931
  QtKey_Dead_Belowdiaeresis* = 16781932
  QtKey_Dead_Invertedbreve* = 16781933
  QtKey_Dead_Belowcomma* = 16781934
  QtKey_Dead_Currency* = 16781935
  QtKey_Dead_a* = 16781952
  QtKey_Dead_A2* = 16781953
  QtKey_Dead_e* = 16781954
  QtKey_Dead_E2* = 16781955
  QtKey_Dead_i* = 16781956
  QtKey_Dead_I2* = 16781957
  QtKey_Dead_o* = 16781958
  QtKey_Dead_O2* = 16781959
  QtKey_Dead_u* = 16781960
  QtKey_Dead_U2* = 16781961
  QtKey_Dead_Small_Schwa* = 16781962
  QtKey_Dead_Capital_Schwa* = 16781963
  QtKey_Dead_Greek* = 16781964
  QtKey_Dead_Lowline* = 16781968
  QtKey_Dead_Aboveverticalline* = 16781969
  QtKey_Dead_Belowverticalline* = 16781970
  QtKey_Dead_Longsolidusoverlay* = 16781971
  QtKey_Back* = 16777313
  QtKey_Forward* = 16777314
  QtKey_Stop* = 16777315
  QtKey_Refresh* = 16777316
  QtKey_VolumeDown* = 16777328
  QtKey_VolumeMute* = 16777329
  QtKey_VolumeUp* = 16777330
  QtKey_BassBoost* = 16777331
  QtKey_BassUp* = 16777332
  QtKey_BassDown* = 16777333
  QtKey_TrebleUp* = 16777334
  QtKey_TrebleDown* = 16777335
  QtKey_MediaPlay* = 16777344
  QtKey_MediaStop* = 16777345
  QtKey_MediaPrevious* = 16777346
  QtKey_MediaNext* = 16777347
  QtKey_MediaRecord* = 16777348
  QtKey_MediaPause* = 16777349
  QtKey_MediaTogglePlayPause* = 16777350
  QtKey_HomePage* = 16777360
  QtKey_Favorites* = 16777361
  QtKey_Search* = 16777362
  QtKey_Standby* = 16777363
  QtKey_OpenUrl* = 16777364
  QtKey_LaunchMail* = 16777376
  QtKey_LaunchMedia* = 16777377
  QtKey_Launch0* = 16777378
  QtKey_Launch1* = 16777379
  QtKey_Launch2* = 16777380
  QtKey_Launch3* = 16777381
  QtKey_Launch4* = 16777382
  QtKey_Launch5* = 16777383
  QtKey_Launch6* = 16777384
  QtKey_Launch7* = 16777385
  QtKey_Launch8* = 16777386
  QtKey_Launch9* = 16777387
  QtKey_LaunchA* = 16777388
  QtKey_LaunchB* = 16777389
  QtKey_LaunchC* = 16777390
  QtKey_LaunchD* = 16777391
  QtKey_LaunchE* = 16777392
  QtKey_LaunchF* = 16777393
  QtKey_MonBrightnessUp* = 16777394
  QtKey_MonBrightnessDown* = 16777395
  QtKey_KeyboardLightOnOff* = 16777396
  QtKey_KeyboardBrightnessUp* = 16777397
  QtKey_KeyboardBrightnessDown* = 16777398
  QtKey_PowerOff* = 16777399
  QtKey_WakeUp* = 16777400
  QtKey_Eject* = 16777401
  QtKey_ScreenSaver* = 16777402
  QtKey_WWW* = 16777403
  QtKey_Memo* = 16777404
  QtKey_LightBulb* = 16777405
  QtKey_Shop* = 16777406
  QtKey_History* = 16777407
  QtKey_AddFavorite* = 16777408
  QtKey_HotLinks* = 16777409
  QtKey_BrightnessAdjust* = 16777410
  QtKey_Finance* = 16777411
  QtKey_Community* = 16777412
  QtKey_AudioRewind* = 16777413
  QtKey_BackForward* = 16777414
  QtKey_ApplicationLeft* = 16777415
  QtKey_ApplicationRight* = 16777416
  QtKey_Book* = 16777417
  QtKey_CD* = 16777418
  QtKey_Calculator* = 16777419
  QtKey_ToDoList* = 16777420
  QtKey_ClearGrab* = 16777421
  QtKey_Close* = 16777422
  QtKey_Copy* = 16777423
  QtKey_Cut* = 16777424
  QtKey_Display* = 16777425
  QtKey_DOS* = 16777426
  QtKey_Documents* = 16777427
  QtKey_Excel* = 16777428
  QtKey_Explorer* = 16777429
  QtKey_Game* = 16777430
  QtKey_Go* = 16777431
  QtKey_iTouch* = 16777432
  QtKey_LogOff* = 16777433
  QtKey_Market* = 16777434
  QtKey_Meeting* = 16777435
  QtKey_MenuKB* = 16777436
  QtKey_MenuPB* = 16777437
  QtKey_MySites* = 16777438
  QtKey_News* = 16777439
  QtKey_OfficeHome* = 16777440
  QtKey_Option* = 16777441
  QtKey_Paste* = 16777442
  QtKey_Phone* = 16777443
  QtKey_Calendar* = 16777444
  QtKey_Reply* = 16777445
  QtKey_Reload* = 16777446
  QtKey_RotateWindows* = 16777447
  QtKey_RotationPB* = 16777448
  QtKey_RotationKB* = 16777449
  QtKey_Save* = 16777450
  QtKey_Send* = 16777451
  QtKey_Spell* = 16777452
  QtKey_SplitScreen* = 16777453
  QtKey_Support* = 16777454
  QtKey_TaskPane* = 16777455
  QtKey_Terminal* = 16777456
  QtKey_Tools* = 16777457
  QtKey_Travel* = 16777458
  QtKey_Video* = 16777459
  QtKey_Word* = 16777460
  QtKey_Xfer* = 16777461
  QtKey_ZoomIn* = 16777462
  QtKey_ZoomOut* = 16777463
  QtKey_Away* = 16777464
  QtKey_Messenger* = 16777465
  QtKey_WebCam* = 16777466
  QtKey_MailForward* = 16777467
  QtKey_Pictures* = 16777468
  QtKey_Music* = 16777469
  QtKey_Battery* = 16777470
  QtKey_Bluetooth* = 16777471
  QtKey_WLAN* = 16777472
  QtKey_UWB* = 16777473
  QtKey_AudioForward* = 16777474
  QtKey_AudioRepeat* = 16777475
  QtKey_AudioRandomPlay* = 16777476
  QtKey_Subtitle* = 16777477
  QtKey_AudioCycleTrack* = 16777478
  QtKey_Time* = 16777479
  QtKey_Hibernate* = 16777480
  QtKey_View* = 16777481
  QtKey_TopMenu* = 16777482
  QtKey_PowerDown* = 16777483
  QtKey_Suspend* = 16777484
  QtKey_ContrastAdjust* = 16777485
  QtKey_LaunchG* = 16777486
  QtKey_LaunchH* = 16777487
  QtKey_TouchpadToggle* = 16777488
  QtKey_TouchpadOn* = 16777489
  QtKey_TouchpadOff* = 16777490
  QtKey_MicMute* = 16777491
  QtKey_Red* = 16777492
  QtKey_Green* = 16777493
  QtKey_Yellow* = 16777494
  QtKey_Blue* = 16777495
  QtKey_ChannelUp* = 16777496
  QtKey_ChannelDown* = 16777497
  QtKey_Guide* = 16777498
  QtKey_Info* = 16777499
  QtKey_Settings* = 16777500
  QtKey_MicVolumeUp* = 16777501
  QtKey_MicVolumeDown* = 16777502
  QtKey_New* = 16777504
  QtKey_Open* = 16777505
  QtKey_Find* = 16777506
  QtKey_Undo* = 16777507
  QtKey_Redo* = 16777508
  QtKey_MediaLast* = 16842751
  QtKey_Select* = 16842752
  QtKey_Yes* = 16842753
  QtKey_No* = 16842754
  QtKey_Cancel* = 16908289
  QtKey_Printer* = 16908290
  QtKey_Execute* = 16908291
  QtKey_Sleep* = 16908292
  QtKey_Play* = 16908293
  QtKey_Zoom* = 16908294
  QtKey_Exit* = 16908298
  QtKey_Context1* = 17825792
  QtKey_Context2* = 17825793
  QtKey_Context3* = 17825794
  QtKey_Context4* = 17825795
  QtKey_Call* = 17825796
  QtKey_Hangup* = 17825797
  QtKey_Flip* = 17825798
  QtKey_ToggleCallHangup* = 17825799
  QtKey_VoiceDial* = 17825800
  QtKey_LastNumberRedial* = 17825801
  QtKey_Camera* = 17825824
  QtKey_CameraFocus* = 17825825
  QtKey_unknown* = 33554431



type ArrowType* = cint
const
  QtNoArrow* = 0
  QtUpArrow* = 1
  QtDownArrow* = 2
  QtLeftArrow* = 3
  QtRightArrow* = 4



type PenStyle* = cint
const
  QtNoPen* = 0
  QtSolidLine* = 1
  QtDashLine* = 2
  QtDotLine* = 3
  QtDashDotLine* = 4
  QtDashDotDotLine* = 5
  QtCustomDashLine* = 6
  QtMPenStyle* = 15



type PenCapStyle* = cint
const
  QtFlatCap* = 0
  QtSquareCap* = 16
  QtRoundCap* = 32
  QtMPenCapStyle* = 48



type PenJoinStyle* = cint
const
  QtMiterJoin* = 0
  QtBevelJoin* = 64
  QtRoundJoin* = 128
  QtSvgMiterJoin* = 256
  QtMPenJoinStyle* = 448



type BrushStyle* = cint
const
  QtNoBrush* = 0
  QtSolidPattern* = 1
  QtDense1Pattern* = 2
  QtDense2Pattern* = 3
  QtDense3Pattern* = 4
  QtDense4Pattern* = 5
  QtDense5Pattern* = 6
  QtDense6Pattern* = 7
  QtDense7Pattern* = 8
  QtHorPattern* = 9
  QtVerPattern* = 10
  QtCrossPattern* = 11
  QtBDiagPattern* = 12
  QtFDiagPattern* = 13
  QtDiagCrossPattern* = 14
  QtLinearGradientPattern* = 15
  QtRadialGradientPattern* = 16
  QtConicalGradientPattern* = 17
  QtTexturePattern* = 24



type SizeMode* = cint
const
  QtAbsoluteSize* = 0
  QtRelativeSize* = 1



type UIEffect* = cint
const
  QtUI_General* = 0
  QtUI_AnimateMenu* = 1
  QtUI_FadeMenu* = 2
  QtUI_AnimateCombo* = 3
  QtUI_AnimateTooltip* = 4
  QtUI_FadeTooltip* = 5
  QtUI_AnimateToolBox* = 6



type CursorShape* = cint
const
  QtArrowCursor* = 0
  QtUpArrowCursor* = 1
  QtCrossCursor* = 2
  QtWaitCursor* = 3
  QtIBeamCursor* = 4
  QtSizeVerCursor* = 5
  QtSizeHorCursor* = 6
  QtSizeBDiagCursor* = 7
  QtSizeFDiagCursor* = 8
  QtSizeAllCursor* = 9
  QtBlankCursor* = 10
  QtSplitVCursor* = 11
  QtSplitHCursor* = 12
  QtPointingHandCursor* = 13
  QtForbiddenCursor* = 14
  QtWhatsThisCursor* = 15
  QtBusyCursor* = 16
  QtOpenHandCursor* = 17
  QtClosedHandCursor* = 18
  QtDragCopyCursor* = 19
  QtDragMoveCursor* = 20
  QtDragLinkCursor* = 21
  QtLastCursor* = 21
  QtBitmapCursor* = 24
  QtCustomCursor* = 25



type TextFormat* = cint
const
  QtPlainText* = 0
  QtRichText* = 1
  QtAutoText* = 2
  QtMarkdownText* = 3



type AspectRatioMode* = cint
const
  QtIgnoreAspectRatio* = 0
  QtKeepAspectRatio* = 1
  QtKeepAspectRatioByExpanding* = 2



type DockWidgetArea* = cint
const
  QtLeftDockWidgetArea* = 1
  QtRightDockWidgetArea* = 2
  QtTopDockWidgetArea* = 4
  QtBottomDockWidgetArea* = 8
  QtDockWidgetArea_Mask* = 15
  QtAllDockWidgetAreas* = 15
  QtNoDockWidgetArea* = 0



type DockWidgetAreaSizes* = cint
const
  QtNDockWidgetAreas* = 4



type ToolBarArea* = cint
const
  QtLeftToolBarArea* = 1
  QtRightToolBarArea* = 2
  QtTopToolBarArea* = 4
  QtBottomToolBarArea* = 8
  QtToolBarArea_Mask* = 15
  QtAllToolBarAreas* = 15
  QtNoToolBarArea* = 0



type ToolBarAreaSizes* = cint
const
  QtNToolBarAreas* = 4



type DateFormat* = cint
const
  QtTextDate* = 0
  QtISODate* = 1
  QtSystemLocaleDate* = 2
  QtLocalDate* = 2
  QtLocaleDate* = 3
  QtSystemLocaleShortDate* = 4
  QtSystemLocaleLongDate* = 5
  QtDefaultLocaleShortDate* = 6
  QtDefaultLocaleLongDate* = 7
  QtRFC2822Date* = 8
  QtISODateWithMs* = 9



type TimeSpec* = cint
const
  QtLocalTime* = 0
  QtUTC* = 1
  QtOffsetFromUTC* = 2
  QtTimeZone* = 3



type DayOfWeek* = cint
const
  QtMonday* = 1
  QtTuesday* = 2
  QtWednesday* = 3
  QtThursday* = 4
  QtFriday* = 5
  QtSaturday* = 6
  QtSunday* = 7



type ScrollBarPolicy* = cint
const
  QtScrollBarAsNeeded* = 0
  QtScrollBarAlwaysOff* = 1
  QtScrollBarAlwaysOn* = 2



type CaseSensitivity* = cint
const
  QtCaseInsensitive* = 0
  QtCaseSensitive* = 1



type Corner* = cint
const
  QtTopLeftCorner* = 0
  QtTopRightCorner* = 1
  QtBottomLeftCorner* = 2
  QtBottomRightCorner* = 3



type Edge* = cint
const
  QtTopEdge* = 1
  QtLeftEdge* = 2
  QtRightEdge* = 4
  QtBottomEdge* = 8



type ConnectionType* = cint
const
  QtAutoConnection* = 0
  QtDirectConnection* = 1
  QtQueuedConnection* = 2
  QtBlockingQueuedConnection* = 3
  QtUniqueConnection* = 128



type ShortcutContext* = cint
const
  QtWidgetShortcut* = 0
  QtWindowShortcut* = 1
  QtApplicationShortcut* = 2
  QtWidgetWithChildrenShortcut* = 3



type FillRule* = cint
const
  QtOddEvenFill* = 0
  QtWindingFill* = 1



type MaskMode* = cint
const
  QtMaskInColor* = 0
  QtMaskOutColor* = 1



type ClipOperation* = cint
const
  QtNoClip* = 0
  QtReplaceClip* = 1
  QtIntersectClip* = 2



type ItemSelectionMode* = cint
const
  QtContainsItemShape* = 0
  QtIntersectsItemShape* = 1
  QtContainsItemBoundingRect* = 2
  QtIntersectsItemBoundingRect* = 3



type ItemSelectionOperation* = cint
const
  QtReplaceSelection* = 0
  QtAddToSelection* = 1



type TransformationMode* = cint
const
  QtFastTransformation* = 0
  QtSmoothTransformation* = 1



type Axis* = cint
const
  QtXAxis* = 0
  QtYAxis* = 1
  QtZAxis* = 2



type FocusReason* = cint
const
  QtMouseFocusReason* = 0
  QtTabFocusReason* = 1
  QtBacktabFocusReason* = 2
  QtActiveWindowFocusReason* = 3
  QtPopupFocusReason* = 4
  QtShortcutFocusReason* = 5
  QtMenuBarFocusReason* = 6
  QtOtherFocusReason* = 7
  QtNoFocusReason* = 8



type ContextMenuPolicy* = cint
const
  QtNoContextMenu* = 0
  QtDefaultContextMenu* = 1
  QtActionsContextMenu* = 2
  QtCustomContextMenu* = 3
  QtPreventContextMenu* = 4



type InputMethodQuery* = cint
const
  QtImEnabled* = 1
  QtImCursorRectangle* = 2
  QtImMicroFocus* = 2
  QtImFont* = 4
  QtImCursorPosition* = 8
  QtImSurroundingText* = 16
  QtImCurrentSelection* = 32
  QtImMaximumTextLength* = 64
  QtImAnchorPosition* = 128
  QtImHints* = 256
  QtImPreferredLanguage* = 512
  QtImAbsolutePosition* = 1024
  QtImTextBeforeCursor* = 2048
  QtImTextAfterCursor* = 4096
  QtImEnterKeyType* = 8192
  QtImAnchorRectangle* = 16384
  QtImInputItemClipRectangle* = 32768
  QtImPlatformData* = 2147483648
  QtImQueryInput* = 16570
  QtImQueryAll* = 4294967295



type InputMethodHint* = cint
const
  QtImhNone* = 0
  QtImhHiddenText* = 1
  QtImhSensitiveData* = 2
  QtImhNoAutoUppercase* = 4
  QtImhPreferNumbers* = 8
  QtImhPreferUppercase* = 16
  QtImhPreferLowercase* = 32
  QtImhNoPredictiveText* = 64
  QtImhDate* = 128
  QtImhTime* = 256
  QtImhPreferLatin* = 512
  QtImhMultiLine* = 1024
  QtImhNoEditMenu* = 2048
  QtImhNoTextHandles* = 4096
  QtImhDigitsOnly* = 65536
  QtImhFormattedNumbersOnly* = 131072
  QtImhUppercaseOnly* = 262144
  QtImhLowercaseOnly* = 524288
  QtImhDialableCharactersOnly* = 1048576
  QtImhEmailCharactersOnly* = 2097152
  QtImhUrlCharactersOnly* = 4194304
  QtImhLatinOnly* = 8388608
  QtImhExclusiveInputMask* = 4294901760



type EnterKeyType* = cint
const
  QtEnterKeyDefault* = 0
  QtEnterKeyReturn* = 1
  QtEnterKeyDone* = 2
  QtEnterKeyGo* = 3
  QtEnterKeySend* = 4
  QtEnterKeySearch* = 5
  QtEnterKeyNext* = 6
  QtEnterKeyPrevious* = 7



type ToolButtonStyle* = cint
const
  QtToolButtonIconOnly* = 0
  QtToolButtonTextOnly* = 1
  QtToolButtonTextBesideIcon* = 2
  QtToolButtonTextUnderIcon* = 3
  QtToolButtonFollowStyle* = 4



type LayoutDirection* = cint
const
  QtLeftToRight* = 0
  QtRightToLeft* = 1
  QtLayoutDirectionAuto* = 2



type AnchorPoint* = cint
const
  QtAnchorLeft* = 0
  QtAnchorHorizontalCenter* = 1
  QtAnchorRight* = 2
  QtAnchorTop* = 3
  QtAnchorVerticalCenter* = 4
  QtAnchorBottom* = 5



type FindChildOption* = cint
const
  QtFindDirectChildrenOnly* = 0
  QtFindChildrenRecursively* = 1



type DropAction* = cint
const
  QtCopyAction* = 1
  QtMoveAction* = 2
  QtLinkAction* = 4
  QtActionMask* = 255
  QtTargetMoveAction* = 32770
  QtIgnoreAction* = 0



type CheckState* = cint
const
  QtUnchecked* = 0
  QtPartiallyChecked* = 1
  QtChecked* = 2



type ItemDataRole* = cint
const
  QtDisplayRole* = 0
  QtDecorationRole* = 1
  QtEditRole* = 2
  QtToolTipRole* = 3
  QtStatusTipRole* = 4
  QtWhatsThisRole* = 5
  QtFontRole* = 6
  QtTextAlignmentRole* = 7
  QtBackgroundRole* = 8
  QtForegroundRole* = 9
  QtBackgroundColorRole* = 8
  QtTextColorRole* = 9
  QtCheckStateRole* = 10
  QtAccessibleTextRole* = 11
  QtAccessibleDescriptionRole* = 12
  QtSizeHintRole* = 13
  QtInitialSortOrderRole* = 14
  QtDisplayPropertyRole* = 27
  QtDecorationPropertyRole* = 28
  QtToolTipPropertyRole* = 29
  QtStatusTipPropertyRole* = 30
  QtWhatsThisPropertyRole* = 31
  QtUserRole* = 256



type ItemFlag* = cint
const
  QtNoItemFlags* = 0
  QtItemIsSelectable* = 1
  QtItemIsEditable* = 2
  QtItemIsDragEnabled* = 4
  QtItemIsDropEnabled* = 8
  QtItemIsUserCheckable* = 16
  QtItemIsEnabled* = 32
  QtItemIsAutoTristate* = 64
  QtItemIsTristate* = 64
  QtItemNeverHasChildren* = 128
  QtItemIsUserTristate* = 256



type MatchFlag* = cint
const
  QtMatchExactly* = 0
  QtMatchContains* = 1
  QtMatchStartsWith* = 2
  QtMatchEndsWith* = 3
  QtMatchRegExp* = 4
  QtMatchWildcard* = 5
  QtMatchFixedString* = 8
  QtMatchRegularExpression* = 9
  QtMatchCaseSensitive* = 16
  QtMatchWrap* = 32
  QtMatchRecursive* = 64



type WindowModality* = cint
const
  QtNonModal* = 0
  QtWindowModal* = 1
  QtApplicationModal* = 2



type TextInteractionFlag* = cint
const
  QtNoTextInteraction* = 0
  QtTextSelectableByMouse* = 1
  QtTextSelectableByKeyboard* = 2
  QtLinksAccessibleByMouse* = 4
  QtLinksAccessibleByKeyboard* = 8
  QtTextEditable* = 16
  QtTextEditorInteraction* = 19
  QtTextBrowserInteraction* = 13



type EventPriority* = cint
const
  QtHighEventPriority* = 1
  QtNormalEventPriority* = 0
  QtLowEventPriority* = -1



type SizeHint* = cint
const
  QtMinimumSize* = 0
  QtPreferredSize* = 1
  QtMaximumSize* = 2
  QtMinimumDescent* = 3
  QtNSizeHints* = 4



type WindowFrameSection* = cint
const
  QtNoSection* = 0
  QtLeftSection* = 1
  QtTopLeftSection* = 2
  QtTopSection* = 3
  QtTopRightSection* = 4
  QtRightSection* = 5
  QtBottomRightSection* = 6
  QtBottomSection* = 7
  QtBottomLeftSection* = 8
  QtTitleBarArea* = 9



type Initialization* = cint
const
  QtUninitialized* = 0



type CoordinateSystem* = cint
const
  QtDeviceCoordinates* = 0
  QtLogicalCoordinates* = 1



type TouchPointState* = cint
const
  QtTouchPointPressed* = 1
  QtTouchPointMoved* = 2
  QtTouchPointStationary* = 4
  QtTouchPointReleased* = 8



type GestureState* = cint
const
  QtNoGesture* = 0
  QtGestureStarted* = 1
  QtGestureUpdated* = 2
  QtGestureFinished* = 3
  QtGestureCanceled* = 4



type GestureType* = cint
const
  QtTapGesture* = 1
  QtTapAndHoldGesture* = 2
  QtPanGesture* = 3
  QtPinchGesture* = 4
  QtSwipeGesture* = 5
  QtCustomGesture* = 256
  QtLastGestureType* = 4294967295



type GestureFlag* = cint
const
  QtDontStartGestureOnChildren* = 1
  QtReceivePartialGestures* = 2
  QtIgnoredGesturesPropagateToParent* = 4



type NativeGestureType* = cint
const
  QtBeginNativeGesture* = 0
  QtEndNativeGesture* = 1
  QtPanNativeGesture* = 2
  QtZoomNativeGesture* = 3
  QtSmartZoomNativeGesture* = 4
  QtRotateNativeGesture* = 5
  QtSwipeNativeGesture* = 6



type NavigationMode* = cint
const
  QtNavigationModeNone* = 0
  QtNavigationModeKeypadTabOrder* = 1
  QtNavigationModeKeypadDirectional* = 2
  QtNavigationModeCursorAuto* = 3
  QtNavigationModeCursorForceVisible* = 4



type CursorMoveStyle* = cint
const
  QtLogicalMoveStyle* = 0
  QtVisualMoveStyle* = 1



type TimerType* = cint
const
  QtPreciseTimer* = 0
  QtCoarseTimer* = 1
  QtVeryCoarseTimer* = 2



type ScrollPhase* = cint
const
  QtNoScrollPhase* = 0
  QtScrollBegin* = 1
  QtScrollUpdate* = 2
  QtScrollEnd* = 3
  QtScrollMomentum* = 4



type MouseEventSource* = cint
const
  QtMouseEventNotSynthesized* = 0
  QtMouseEventSynthesizedBySystem* = 1
  QtMouseEventSynthesizedByQt* = 2
  QtMouseEventSynthesizedByApplication* = 3



type MouseEventFlag* = cint
const
  QtMouseEventCreatedDoubleClick* = 1
  QtMouseEventFlagMask* = 255



type ChecksumType* = cint
const
  QtChecksumIso3309* = 0
  QtChecksumItuV41* = 1



type HighDpiScaleFactorRoundingPolicy* = cint
const
  QtUnset* = 0
  QtRound* = 1
  QtCeil* = 2
  QtFloor* = 3
  QtRoundPreferFloor* = 4
  QtPassThrough* = 5



type ReturnByValueConstant* = cint
const
  QtReturnByValue* = 0



type QInternalPaintDeviceFlags* = cint
const
  QInternalUnknownDevice* = 0
  QInternalWidget* = 1
  QInternalPixmap* = 2
  QInternalImage* = 3
  QInternalPrinter* = 4
  QInternalPicture* = 5
  QInternalPbuffer* = 6
  QInternalFramebufferObject* = 7
  QInternalCustomRaster* = 8
  QInternalMacQuartz* = 9
  QInternalPaintBuffer* = 10
  QInternalOpenGL* = 11



type QInternalRelayoutType* = cint
const
  QInternalRelayoutNormal* = 0
  QInternalRelayoutDragging* = 1
  QInternalRelayoutDropped* = 2



type QInternalDockPosition* = cint
const
  QInternalLeftDock* = 0
  QInternalRightDock* = 1
  QInternalTopDock* = 2
  QInternalBottomDock* = 3
  QInternalDockCount* = 4



type QInternalCallback* = cint
const
  QInternalEventNotifyCallback* = 0
  QInternalLastCallback* = 1



import gen_qnamespace_types
export gen_qnamespace_types


type cQInternal*{.exportc: "QInternal", incompleteStruct.} = object

proc fcQInternal_activateCallbacks(param1: cint, param2: pointer): bool {.importc: "QInternal_activateCallbacks".}
proc fcQInternal_delete(self: pointer) {.importc: "QInternal_delete".}


func init*(T: type QInternal, h: ptr cQInternal): QInternal =
  T(h: h)
proc activateCallbacks*(_: type QInternal, param1: QInternalCallback, param2: pointer): bool =

  fcQInternal_activateCallbacks(cint(param1), param2)

proc delete*(self: QInternal) =
  fcQInternal_delete(self.h)
