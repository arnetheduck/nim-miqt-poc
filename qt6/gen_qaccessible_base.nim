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
{.compile("gen_qaccessible_base.cpp", cflags).}


type QAccessibleEventEnum* = cint
const
  QAccessibleSoundPlayed* = 1
  QAccessibleAlert* = 2
  QAccessibleForegroundChanged* = 3
  QAccessibleMenuStart* = 4
  QAccessibleMenuEnd* = 5
  QAccessiblePopupMenuStart* = 6
  QAccessiblePopupMenuEnd* = 7
  QAccessibleContextHelpStart* = 12
  QAccessibleContextHelpEnd* = 13
  QAccessibleDragDropStart* = 14
  QAccessibleDragDropEnd* = 15
  QAccessibleDialogStart* = 16
  QAccessibleDialogEnd* = 17
  QAccessibleScrollingStart* = 18
  QAccessibleScrollingEnd* = 19
  QAccessibleMenuCommand* = 24
  QAccessibleActionChanged* = 257
  QAccessibleActiveDescendantChanged* = 258
  QAccessibleAttributeChanged* = 259
  QAccessibleDocumentContentChanged* = 260
  QAccessibleDocumentLoadComplete* = 261
  QAccessibleDocumentLoadStopped* = 262
  QAccessibleDocumentReload* = 263
  QAccessibleHyperlinkEndIndexChanged* = 264
  QAccessibleHyperlinkNumberOfAnchorsChanged* = 265
  QAccessibleHyperlinkSelectedLinkChanged* = 266
  QAccessibleHypertextLinkActivated* = 267
  QAccessibleHypertextLinkSelected* = 268
  QAccessibleHyperlinkStartIndexChanged* = 269
  QAccessibleHypertextChanged* = 270
  QAccessibleHypertextNLinksChanged* = 271
  QAccessibleObjectAttributeChanged* = 272
  QAccessiblePageChanged* = 273
  QAccessibleSectionChanged* = 274
  QAccessibleTableCaptionChanged* = 275
  QAccessibleTableColumnDescriptionChanged* = 276
  QAccessibleTableColumnHeaderChanged* = 277
  QAccessibleTableModelChanged* = 278
  QAccessibleTableRowDescriptionChanged* = 279
  QAccessibleTableRowHeaderChanged* = 280
  QAccessibleTableSummaryChanged* = 281
  QAccessibleTextAttributeChanged* = 282
  QAccessibleTextCaretMoved* = 283
  QAccessibleTextColumnChanged* = 285
  QAccessibleTextInserted* = 286
  QAccessibleTextRemoved* = 287
  QAccessibleTextUpdated* = 288
  QAccessibleTextSelectionChanged* = 289
  QAccessibleVisibleDataChanged* = 290
  QAccessibleObjectCreated* = 32768
  QAccessibleObjectDestroyed* = 32769
  QAccessibleObjectShow* = 32770
  QAccessibleObjectHide* = 32771
  QAccessibleObjectReorder* = 32772
  QAccessibleFocus* = 32773
  QAccessibleSelection* = 32774
  QAccessibleSelectionAdd* = 32775
  QAccessibleSelectionRemove* = 32776
  QAccessibleSelectionWithin* = 32777
  QAccessibleStateChanged* = 32778
  QAccessibleLocationChanged* = 32779
  QAccessibleNameChanged* = 32780
  QAccessibleDescriptionChanged* = 32781
  QAccessibleValueChanged* = 32782
  QAccessibleParentChanged* = 32783
  QAccessibleHelpChanged* = 32928
  QAccessibleDefaultActionChanged* = 32944
  QAccessibleAcceleratorChanged* = 32960
  QAccessibleInvalidEvent* = 32961



type QAccessibleRole* = cint
const
  QAccessibleNoRole* = 0
  QAccessibleTitleBar* = 1
  QAccessibleMenuBar* = 2
  QAccessibleScrollBar* = 3
  QAccessibleGrip* = 4
  QAccessibleSound* = 5
  QAccessibleCursor* = 6
  QAccessibleCaret* = 7
  QAccessibleAlertMessage* = 8
  QAccessibleWindow* = 9
  QAccessibleClient* = 10
  QAccessiblePopupMenu* = 11
  QAccessibleMenuItem* = 12
  QAccessibleToolTip* = 13
  QAccessibleApplication2* = 14
  QAccessibleDocument* = 15
  QAccessiblePane* = 16
  QAccessibleChart* = 17
  QAccessibleDialog* = 18
  QAccessibleBorder* = 19
  QAccessibleGrouping* = 20
  QAccessibleSeparator* = 21
  QAccessibleToolBar* = 22
  QAccessibleStatusBar* = 23
  QAccessibleTable* = 24
  QAccessibleColumnHeader* = 25
  QAccessibleRowHeader* = 26
  QAccessibleColumn* = 27
  QAccessibleRow* = 28
  QAccessibleCell* = 29
  QAccessibleLink* = 30
  QAccessibleHelpBalloon* = 31
  QAccessibleAssistant* = 32
  QAccessibleList* = 33
  QAccessibleListItem* = 34
  QAccessibleTree* = 35
  QAccessibleTreeItem* = 36
  QAccessiblePageTab* = 37
  QAccessiblePropertyPage* = 38
  QAccessibleIndicator* = 39
  QAccessibleGraphic* = 40
  QAccessibleStaticText* = 41
  QAccessibleEditableText* = 42
  QAccessibleButton* = 43
  QAccessiblePushButton* = 43
  QAccessibleCheckBox* = 44
  QAccessibleRadioButton* = 45
  QAccessibleComboBox* = 46
  QAccessibleProgressBar* = 48
  QAccessibleDial* = 49
  QAccessibleHotkeyField* = 50
  QAccessibleSlider* = 51
  QAccessibleSpinBox* = 52
  QAccessibleCanvas* = 53
  QAccessibleAnimation* = 54
  QAccessibleEquation* = 55
  QAccessibleButtonDropDown* = 56
  QAccessibleButtonMenu* = 57
  QAccessibleButtonDropGrid* = 58
  QAccessibleWhitespace* = 59
  QAccessiblePageTabList* = 60
  QAccessibleClock* = 61
  QAccessibleSplitter* = 62
  QAccessibleLayeredPane* = 128
  QAccessibleTerminal* = 129
  QAccessibleDesktop* = 130
  QAccessibleParagraph* = 131
  QAccessibleWebDocument* = 132
  QAccessibleSection* = 133
  QAccessibleNotification* = 134
  QAccessibleColorChooser* = 1028
  QAccessibleFooter* = 1038
  QAccessibleForm* = 1040
  QAccessibleHeading* = 1044
  QAccessibleNote* = 1051
  QAccessibleComplementaryContent* = 1068
  QAccessibleUserRole* = 65535



type QAccessibleText* = cint
const
  QAccessibleName* = 0
  QAccessibleDescription* = 1
  QAccessibleValue* = 2
  QAccessibleHelp* = 3
  QAccessibleAccelerator* = 4
  QAccessibleDebugDescription* = 5
  QAccessibleUserText* = 65535



type QAccessibleRelationFlag* = cint
const
  QAccessibleLabel* = 1
  QAccessibleLabelled* = 2
  QAccessibleController* = 4
  QAccessibleControlled* = 8
  QAccessibleAllRelations* = 4294967295



type QAccessibleInterfaceType* = cint
const
  QAccessibleTextInterface2* = 0
  QAccessibleEditableTextInterface2* = 1
  QAccessibleValueInterface2* = 2
  QAccessibleActionInterface2* = 3
  QAccessibleImageInterface2* = 4
  QAccessibleTableInterface2* = 5
  QAccessibleTableCellInterface2* = 6
  QAccessibleHyperlinkInterface2* = 7



type QAccessibleTextBoundaryType* = cint
const
  QAccessibleCharBoundary* = 0
  QAccessibleWordBoundary* = 1
  QAccessibleSentenceBoundary* = 2
  QAccessibleParagraphBoundary* = 3
  QAccessibleLineBoundary* = 4
  QAccessibleNoBoundary* = 5



import gen_qaccessible_base_types
export gen_qaccessible_base_types

import
  gen_qaccessible,
  gen_qobject,
  gen_qobjectdefs,
  gen_qtextcursor
export
  gen_qaccessible,
  gen_qobject,
  gen_qobjectdefs,
  gen_qtextcursor

type cQAccessible*{.exportc: "QAccessible", incompleteStruct.} = object
type cQAccessibleState*{.exportc: "QAccessible__State", incompleteStruct.} = object
type cQAccessibleActivationObserver*{.exportc: "QAccessible__ActivationObserver", incompleteStruct.} = object

proc fcQAccessible_installActivationObserver(param1: pointer): void {.importc: "QAccessible_installActivationObserver".}
proc fcQAccessible_removeActivationObserver(param1: pointer): void {.importc: "QAccessible_removeActivationObserver".}
proc fcQAccessible_queryAccessibleInterface(param1: pointer): pointer {.importc: "QAccessible_queryAccessibleInterface".}
proc fcQAccessible_uniqueId(iface: pointer): cuint {.importc: "QAccessible_uniqueId".}
proc fcQAccessible_accessibleInterface(uniqueId: cuint): pointer {.importc: "QAccessible_accessibleInterface".}
proc fcQAccessible_registerAccessibleInterface(iface: pointer): cuint {.importc: "QAccessible_registerAccessibleInterface".}
proc fcQAccessible_deleteAccessibleInterface(uniqueId: cuint): void {.importc: "QAccessible_deleteAccessibleInterface".}
proc fcQAccessible_updateAccessibility(event: pointer): void {.importc: "QAccessible_updateAccessibility".}
proc fcQAccessible_isActive(): bool {.importc: "QAccessible_isActive".}
proc fcQAccessible_setActive(active: bool): void {.importc: "QAccessible_setActive".}
proc fcQAccessible_setRootObject(objectVal: pointer): void {.importc: "QAccessible_setRootObject".}
proc fcQAccessible_cleanup(): void {.importc: "QAccessible_cleanup".}
proc fcQAccessible_qAccessibleTextBoundaryHelper(cursor: pointer, boundaryType: cint): struct_miqt_map {.importc: "QAccessible_qAccessibleTextBoundaryHelper".}
proc fcQAccessible_staticMetaObject(): pointer {.importc: "QAccessible_staticMetaObject".}
proc fcQAccessible_delete(self: pointer) {.importc: "QAccessible_delete".}
proc fcQAccessibleState_new(): ptr cQAccessibleState {.importc: "QAccessible__State_new".}
proc fcQAccessibleState_delete(self: pointer) {.importc: "QAccessible__State_delete".}
proc fcQAccessibleActivationObserver_accessibilityActiveChanged(self: pointer, active: bool): void {.importc: "QAccessible__ActivationObserver_accessibilityActiveChanged".}
proc fcQAccessibleActivationObserver_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAccessible__ActivationObserver_operatorAssign".}
proc fcQAccessibleActivationObserver_delete(self: pointer) {.importc: "QAccessible__ActivationObserver_delete".}


func init*(T: type QAccessible, h: ptr cQAccessible): QAccessible =
  T(h: h)
proc installActivationObserver*(_: type QAccessible, param1: QAccessibleActivationObserver): void =

  fcQAccessible_installActivationObserver(param1.h)

proc removeActivationObserver*(_: type QAccessible, param1: QAccessibleActivationObserver): void =

  fcQAccessible_removeActivationObserver(param1.h)

proc queryAccessibleInterface*(_: type QAccessible, param1: gen_qobject.QObject): gen_qaccessible.QAccessibleInterface =

  gen_qaccessible.QAccessibleInterface(h: fcQAccessible_queryAccessibleInterface(param1.h))

proc uniqueId*(_: type QAccessible, iface: gen_qaccessible.QAccessibleInterface): cuint =

  fcQAccessible_uniqueId(iface.h)

proc accessibleInterface*(_: type QAccessible, uniqueId: cuint): gen_qaccessible.QAccessibleInterface =

  gen_qaccessible.QAccessibleInterface(h: fcQAccessible_accessibleInterface(uniqueId))

proc registerAccessibleInterface*(_: type QAccessible, iface: gen_qaccessible.QAccessibleInterface): cuint =

  fcQAccessible_registerAccessibleInterface(iface.h)

proc deleteAccessibleInterface*(_: type QAccessible, uniqueId: cuint): void =

  fcQAccessible_deleteAccessibleInterface(uniqueId)

proc updateAccessibility*(_: type QAccessible, event: gen_qaccessible.QAccessibleEvent): void =

  fcQAccessible_updateAccessibility(event.h)

proc isActive*(_: type QAccessible, ): bool =

  fcQAccessible_isActive()

proc setActive*(_: type QAccessible, active: bool): void =

  fcQAccessible_setActive(active)

proc setRootObject*(_: type QAccessible, objectVal: gen_qobject.QObject): void =

  fcQAccessible_setRootObject(objectVal.h)

proc cleanup*(_: type QAccessible, ): void =

  fcQAccessible_cleanup()

proc qAccessibleTextBoundaryHelper*(_: type QAccessible, cursor: gen_qtextcursor.QTextCursor, boundaryType: QAccessibleTextBoundaryType): tuple[first: cint, second: cint] =

  var v_mm = fcQAccessible_qAccessibleTextBoundaryHelper(cursor.h, cint(boundaryType))
  var v_First_CArray = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Second_CArray = cast[ptr UncheckedArray[cint]](v_mm.values)
  var v_entry_First = v_First_CArray[0]

  var v_entry_Second = v_Second_CArray[0]

  (first: v_entry_First , second: v_entry_Second )

proc staticMetaObject*(_: type QAccessible): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQAccessible_staticMetaObject())
proc delete*(self: QAccessible) =
  fcQAccessible_delete(self.h)

func init*(T: type QAccessibleState, h: ptr cQAccessibleState): QAccessibleState =
  T(h: h)
proc create*(T: type QAccessibleState, ): QAccessibleState =

  QAccessibleState.init(fcQAccessibleState_new())
proc delete*(self: QAccessibleState) =
  fcQAccessibleState_delete(self.h)

func init*(T: type QAccessibleActivationObserver, h: ptr cQAccessibleActivationObserver): QAccessibleActivationObserver =
  T(h: h)
proc accessibilityActiveChanged*(self: QAccessibleActivationObserver, active: bool): void =

  fcQAccessibleActivationObserver_accessibilityActiveChanged(self.h, active)

proc operatorAssign*(self: QAccessibleActivationObserver, param1: QAccessibleActivationObserver): void =

  fcQAccessibleActivationObserver_operatorAssign(self.h, param1.h)

proc delete*(self: QAccessibleActivationObserver) =
  fcQAccessibleActivationObserver_delete(self.h)
