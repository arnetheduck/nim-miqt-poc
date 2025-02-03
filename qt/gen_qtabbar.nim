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
{.compile("gen_qtabbar.cpp", cflags).}


type QTabBarShape* = cint
const
  QTabBarRoundedNorth* = 0
  QTabBarRoundedSouth* = 1
  QTabBarRoundedWest* = 2
  QTabBarRoundedEast* = 3
  QTabBarTriangularNorth* = 4
  QTabBarTriangularSouth* = 5
  QTabBarTriangularWest* = 6
  QTabBarTriangularEast* = 7



type QTabBarButtonPosition* = cint
const
  QTabBarLeftSide* = 0
  QTabBarRightSide* = 1



type QTabBarSelectionBehavior* = cint
const
  QTabBarSelectLeftTab* = 0
  QTabBarSelectRightTab* = 1
  QTabBarSelectPreviousTab* = 2



import gen_qtabbar_types
export gen_qtabbar_types

import
  gen_qcolor,
  gen_qcoreevent,
  gen_qevent,
  gen_qicon,
  gen_qmetaobject,
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
  gen_qcolor,
  gen_qcoreevent,
  gen_qevent,
  gen_qicon,
  gen_qmetaobject,
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

type cQTabBar*{.exportc: "QTabBar", incompleteStruct.} = object

proc fcQTabBar_new(parent: pointer): ptr cQTabBar {.importc: "QTabBar_new".}
proc fcQTabBar_new2(): ptr cQTabBar {.importc: "QTabBar_new2".}
proc fcQTabBar_metaObject(self: pointer, ): pointer {.importc: "QTabBar_metaObject".}
proc fcQTabBar_metacast(self: pointer, param1: cstring): pointer {.importc: "QTabBar_metacast".}
proc fcQTabBar_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTabBar_metacall".}
proc fcQTabBar_tr(s: cstring): struct_miqt_string {.importc: "QTabBar_tr".}
proc fcQTabBar_trUtf8(s: cstring): struct_miqt_string {.importc: "QTabBar_trUtf8".}
proc fcQTabBar_shape(self: pointer, ): cint {.importc: "QTabBar_shape".}
proc fcQTabBar_setShape(self: pointer, shape: cint): void {.importc: "QTabBar_setShape".}
proc fcQTabBar_addTab(self: pointer, text: struct_miqt_string): cint {.importc: "QTabBar_addTab".}
proc fcQTabBar_addTab2(self: pointer, icon: pointer, text: struct_miqt_string): cint {.importc: "QTabBar_addTab2".}
proc fcQTabBar_insertTab(self: pointer, index: cint, text: struct_miqt_string): cint {.importc: "QTabBar_insertTab".}
proc fcQTabBar_insertTab2(self: pointer, index: cint, icon: pointer, text: struct_miqt_string): cint {.importc: "QTabBar_insertTab2".}
proc fcQTabBar_removeTab(self: pointer, index: cint): void {.importc: "QTabBar_removeTab".}
proc fcQTabBar_moveTab(self: pointer, fromVal: cint, to: cint): void {.importc: "QTabBar_moveTab".}
proc fcQTabBar_isTabEnabled(self: pointer, index: cint): bool {.importc: "QTabBar_isTabEnabled".}
proc fcQTabBar_setTabEnabled(self: pointer, index: cint, enabled: bool): void {.importc: "QTabBar_setTabEnabled".}
proc fcQTabBar_isTabVisible(self: pointer, index: cint): bool {.importc: "QTabBar_isTabVisible".}
proc fcQTabBar_setTabVisible(self: pointer, index: cint, visible: bool): void {.importc: "QTabBar_setTabVisible".}
proc fcQTabBar_tabText(self: pointer, index: cint): struct_miqt_string {.importc: "QTabBar_tabText".}
proc fcQTabBar_setTabText(self: pointer, index: cint, text: struct_miqt_string): void {.importc: "QTabBar_setTabText".}
proc fcQTabBar_tabTextColor(self: pointer, index: cint): pointer {.importc: "QTabBar_tabTextColor".}
proc fcQTabBar_setTabTextColor(self: pointer, index: cint, color: pointer): void {.importc: "QTabBar_setTabTextColor".}
proc fcQTabBar_tabIcon(self: pointer, index: cint): pointer {.importc: "QTabBar_tabIcon".}
proc fcQTabBar_setTabIcon(self: pointer, index: cint, icon: pointer): void {.importc: "QTabBar_setTabIcon".}
proc fcQTabBar_elideMode(self: pointer, ): cint {.importc: "QTabBar_elideMode".}
proc fcQTabBar_setElideMode(self: pointer, mode: cint): void {.importc: "QTabBar_setElideMode".}
proc fcQTabBar_setTabToolTip(self: pointer, index: cint, tip: struct_miqt_string): void {.importc: "QTabBar_setTabToolTip".}
proc fcQTabBar_tabToolTip(self: pointer, index: cint): struct_miqt_string {.importc: "QTabBar_tabToolTip".}
proc fcQTabBar_setTabWhatsThis(self: pointer, index: cint, text: struct_miqt_string): void {.importc: "QTabBar_setTabWhatsThis".}
proc fcQTabBar_tabWhatsThis(self: pointer, index: cint): struct_miqt_string {.importc: "QTabBar_tabWhatsThis".}
proc fcQTabBar_setTabData(self: pointer, index: cint, data: pointer): void {.importc: "QTabBar_setTabData".}
proc fcQTabBar_tabData(self: pointer, index: cint): pointer {.importc: "QTabBar_tabData".}
proc fcQTabBar_tabRect(self: pointer, index: cint): pointer {.importc: "QTabBar_tabRect".}
proc fcQTabBar_tabAt(self: pointer, pos: pointer): cint {.importc: "QTabBar_tabAt".}
proc fcQTabBar_currentIndex(self: pointer, ): cint {.importc: "QTabBar_currentIndex".}
proc fcQTabBar_count(self: pointer, ): cint {.importc: "QTabBar_count".}
proc fcQTabBar_sizeHint(self: pointer, ): pointer {.importc: "QTabBar_sizeHint".}
proc fcQTabBar_minimumSizeHint(self: pointer, ): pointer {.importc: "QTabBar_minimumSizeHint".}
proc fcQTabBar_setDrawBase(self: pointer, drawTheBase: bool): void {.importc: "QTabBar_setDrawBase".}
proc fcQTabBar_drawBase(self: pointer, ): bool {.importc: "QTabBar_drawBase".}
proc fcQTabBar_iconSize(self: pointer, ): pointer {.importc: "QTabBar_iconSize".}
proc fcQTabBar_setIconSize(self: pointer, size: pointer): void {.importc: "QTabBar_setIconSize".}
proc fcQTabBar_usesScrollButtons(self: pointer, ): bool {.importc: "QTabBar_usesScrollButtons".}
proc fcQTabBar_setUsesScrollButtons(self: pointer, useButtons: bool): void {.importc: "QTabBar_setUsesScrollButtons".}
proc fcQTabBar_tabsClosable(self: pointer, ): bool {.importc: "QTabBar_tabsClosable".}
proc fcQTabBar_setTabsClosable(self: pointer, closable: bool): void {.importc: "QTabBar_setTabsClosable".}
proc fcQTabBar_setTabButton(self: pointer, index: cint, position: cint, widget: pointer): void {.importc: "QTabBar_setTabButton".}
proc fcQTabBar_tabButton(self: pointer, index: cint, position: cint): pointer {.importc: "QTabBar_tabButton".}
proc fcQTabBar_selectionBehaviorOnRemove(self: pointer, ): cint {.importc: "QTabBar_selectionBehaviorOnRemove".}
proc fcQTabBar_setSelectionBehaviorOnRemove(self: pointer, behavior: cint): void {.importc: "QTabBar_setSelectionBehaviorOnRemove".}
proc fcQTabBar_expanding(self: pointer, ): bool {.importc: "QTabBar_expanding".}
proc fcQTabBar_setExpanding(self: pointer, enabled: bool): void {.importc: "QTabBar_setExpanding".}
proc fcQTabBar_isMovable(self: pointer, ): bool {.importc: "QTabBar_isMovable".}
proc fcQTabBar_setMovable(self: pointer, movable: bool): void {.importc: "QTabBar_setMovable".}
proc fcQTabBar_documentMode(self: pointer, ): bool {.importc: "QTabBar_documentMode".}
proc fcQTabBar_setDocumentMode(self: pointer, set: bool): void {.importc: "QTabBar_setDocumentMode".}
proc fcQTabBar_autoHide(self: pointer, ): bool {.importc: "QTabBar_autoHide".}
proc fcQTabBar_setAutoHide(self: pointer, hide: bool): void {.importc: "QTabBar_setAutoHide".}
proc fcQTabBar_changeCurrentOnDrag(self: pointer, ): bool {.importc: "QTabBar_changeCurrentOnDrag".}
proc fcQTabBar_setChangeCurrentOnDrag(self: pointer, change: bool): void {.importc: "QTabBar_setChangeCurrentOnDrag".}
proc fcQTabBar_accessibleTabName(self: pointer, index: cint): struct_miqt_string {.importc: "QTabBar_accessibleTabName".}
proc fcQTabBar_setAccessibleTabName(self: pointer, index: cint, name: struct_miqt_string): void {.importc: "QTabBar_setAccessibleTabName".}
proc fcQTabBar_setCurrentIndex(self: pointer, index: cint): void {.importc: "QTabBar_setCurrentIndex".}
proc fcQTabBar_currentChanged(self: pointer, index: cint): void {.importc: "QTabBar_currentChanged".}
proc fQTabBar_connect_currentChanged(self: pointer, slot: int) {.importc: "QTabBar_connect_currentChanged".}
proc fcQTabBar_tabCloseRequested(self: pointer, index: cint): void {.importc: "QTabBar_tabCloseRequested".}
proc fQTabBar_connect_tabCloseRequested(self: pointer, slot: int) {.importc: "QTabBar_connect_tabCloseRequested".}
proc fcQTabBar_tabMoved(self: pointer, fromVal: cint, to: cint): void {.importc: "QTabBar_tabMoved".}
proc fQTabBar_connect_tabMoved(self: pointer, slot: int) {.importc: "QTabBar_connect_tabMoved".}
proc fcQTabBar_tabBarClicked(self: pointer, index: cint): void {.importc: "QTabBar_tabBarClicked".}
proc fQTabBar_connect_tabBarClicked(self: pointer, slot: int) {.importc: "QTabBar_connect_tabBarClicked".}
proc fcQTabBar_tabBarDoubleClicked(self: pointer, index: cint): void {.importc: "QTabBar_tabBarDoubleClicked".}
proc fQTabBar_connect_tabBarDoubleClicked(self: pointer, slot: int) {.importc: "QTabBar_connect_tabBarDoubleClicked".}
proc fcQTabBar_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTabBar_tr2".}
proc fcQTabBar_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTabBar_tr3".}
proc fcQTabBar_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTabBar_trUtf82".}
proc fcQTabBar_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTabBar_trUtf83".}
proc fQTabBar_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTabBar_virtualbase_metacall".}
proc fcQTabBar_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_metacall".}
proc fQTabBar_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QTabBar_virtualbase_sizeHint".}
proc fcQTabBar_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_sizeHint".}
proc fQTabBar_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QTabBar_virtualbase_minimumSizeHint".}
proc fcQTabBar_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_minimumSizeHint".}
proc fQTabBar_virtualbase_tabSizeHint(self: pointer, index: cint): pointer{.importc: "QTabBar_virtualbase_tabSizeHint".}
proc fcQTabBar_override_virtual_tabSizeHint(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_tabSizeHint".}
proc fQTabBar_virtualbase_minimumTabSizeHint(self: pointer, index: cint): pointer{.importc: "QTabBar_virtualbase_minimumTabSizeHint".}
proc fcQTabBar_override_virtual_minimumTabSizeHint(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_minimumTabSizeHint".}
proc fQTabBar_virtualbase_tabInserted(self: pointer, index: cint): void{.importc: "QTabBar_virtualbase_tabInserted".}
proc fcQTabBar_override_virtual_tabInserted(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_tabInserted".}
proc fQTabBar_virtualbase_tabRemoved(self: pointer, index: cint): void{.importc: "QTabBar_virtualbase_tabRemoved".}
proc fcQTabBar_override_virtual_tabRemoved(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_tabRemoved".}
proc fQTabBar_virtualbase_tabLayoutChange(self: pointer, ): void{.importc: "QTabBar_virtualbase_tabLayoutChange".}
proc fcQTabBar_override_virtual_tabLayoutChange(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_tabLayoutChange".}
proc fQTabBar_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QTabBar_virtualbase_event".}
proc fcQTabBar_override_virtual_event(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_event".}
proc fQTabBar_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QTabBar_virtualbase_resizeEvent".}
proc fcQTabBar_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_resizeEvent".}
proc fQTabBar_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QTabBar_virtualbase_showEvent".}
proc fcQTabBar_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_showEvent".}
proc fQTabBar_virtualbase_hideEvent(self: pointer, param1: pointer): void{.importc: "QTabBar_virtualbase_hideEvent".}
proc fcQTabBar_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_hideEvent".}
proc fQTabBar_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QTabBar_virtualbase_paintEvent".}
proc fcQTabBar_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_paintEvent".}
proc fQTabBar_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QTabBar_virtualbase_mousePressEvent".}
proc fcQTabBar_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_mousePressEvent".}
proc fQTabBar_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QTabBar_virtualbase_mouseMoveEvent".}
proc fcQTabBar_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_mouseMoveEvent".}
proc fQTabBar_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QTabBar_virtualbase_mouseReleaseEvent".}
proc fcQTabBar_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_mouseReleaseEvent".}
proc fQTabBar_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_wheelEvent".}
proc fcQTabBar_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_wheelEvent".}
proc fQTabBar_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QTabBar_virtualbase_keyPressEvent".}
proc fcQTabBar_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_keyPressEvent".}
proc fQTabBar_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QTabBar_virtualbase_changeEvent".}
proc fcQTabBar_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_changeEvent".}
proc fQTabBar_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_timerEvent".}
proc fcQTabBar_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_timerEvent".}
proc fQTabBar_virtualbase_devType(self: pointer, ): cint{.importc: "QTabBar_virtualbase_devType".}
proc fcQTabBar_override_virtual_devType(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_devType".}
proc fQTabBar_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QTabBar_virtualbase_setVisible".}
proc fcQTabBar_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_setVisible".}
proc fQTabBar_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QTabBar_virtualbase_heightForWidth".}
proc fcQTabBar_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_heightForWidth".}
proc fQTabBar_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QTabBar_virtualbase_hasHeightForWidth".}
proc fcQTabBar_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_hasHeightForWidth".}
proc fQTabBar_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QTabBar_virtualbase_paintEngine".}
proc fcQTabBar_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_paintEngine".}
proc fQTabBar_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_mouseDoubleClickEvent".}
proc fcQTabBar_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_mouseDoubleClickEvent".}
proc fQTabBar_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_keyReleaseEvent".}
proc fcQTabBar_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_keyReleaseEvent".}
proc fQTabBar_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_focusInEvent".}
proc fcQTabBar_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_focusInEvent".}
proc fQTabBar_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_focusOutEvent".}
proc fcQTabBar_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_focusOutEvent".}
proc fQTabBar_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_enterEvent".}
proc fcQTabBar_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_enterEvent".}
proc fQTabBar_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_leaveEvent".}
proc fcQTabBar_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_leaveEvent".}
proc fQTabBar_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_moveEvent".}
proc fcQTabBar_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_moveEvent".}
proc fQTabBar_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_closeEvent".}
proc fcQTabBar_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_closeEvent".}
proc fQTabBar_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_contextMenuEvent".}
proc fcQTabBar_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_contextMenuEvent".}
proc fQTabBar_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_tabletEvent".}
proc fcQTabBar_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_tabletEvent".}
proc fQTabBar_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_actionEvent".}
proc fcQTabBar_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_actionEvent".}
proc fQTabBar_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_dragEnterEvent".}
proc fcQTabBar_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_dragEnterEvent".}
proc fQTabBar_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_dragMoveEvent".}
proc fcQTabBar_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_dragMoveEvent".}
proc fQTabBar_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_dragLeaveEvent".}
proc fcQTabBar_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_dragLeaveEvent".}
proc fQTabBar_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_dropEvent".}
proc fcQTabBar_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_dropEvent".}
proc fQTabBar_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QTabBar_virtualbase_nativeEvent".}
proc fcQTabBar_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_nativeEvent".}
proc fQTabBar_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QTabBar_virtualbase_metric".}
proc fcQTabBar_override_virtual_metric(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_metric".}
proc fQTabBar_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QTabBar_virtualbase_initPainter".}
proc fcQTabBar_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_initPainter".}
proc fQTabBar_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QTabBar_virtualbase_redirected".}
proc fcQTabBar_override_virtual_redirected(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_redirected".}
proc fQTabBar_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QTabBar_virtualbase_sharedPainter".}
proc fcQTabBar_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_sharedPainter".}
proc fQTabBar_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QTabBar_virtualbase_inputMethodEvent".}
proc fcQTabBar_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_inputMethodEvent".}
proc fQTabBar_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QTabBar_virtualbase_inputMethodQuery".}
proc fcQTabBar_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_inputMethodQuery".}
proc fQTabBar_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QTabBar_virtualbase_focusNextPrevChild".}
proc fcQTabBar_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_focusNextPrevChild".}
proc fQTabBar_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTabBar_virtualbase_eventFilter".}
proc fcQTabBar_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_eventFilter".}
proc fQTabBar_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_childEvent".}
proc fcQTabBar_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_childEvent".}
proc fQTabBar_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTabBar_virtualbase_customEvent".}
proc fcQTabBar_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_customEvent".}
proc fQTabBar_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTabBar_virtualbase_connectNotify".}
proc fcQTabBar_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_connectNotify".}
proc fQTabBar_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTabBar_virtualbase_disconnectNotify".}
proc fcQTabBar_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTabBar_override_virtual_disconnectNotify".}
proc fcQTabBar_delete(self: pointer) {.importc: "QTabBar_delete".}


func init*(T: type QTabBar, h: ptr cQTabBar): QTabBar =
  T(h: h)
proc create*(T: type QTabBar, parent: gen_qwidget.QWidget): QTabBar =

  QTabBar.init(fcQTabBar_new(parent.h))
proc create*(T: type QTabBar, ): QTabBar =

  QTabBar.init(fcQTabBar_new2())
proc metaObject*(self: QTabBar, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQTabBar_metaObject(self.h))

proc metacast*(self: QTabBar, param1: cstring): pointer =

  fcQTabBar_metacast(self.h, param1)

proc metacall*(self: QTabBar, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQTabBar_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QTabBar, s: cstring): string =

  let v_ms = fcQTabBar_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QTabBar, s: cstring): string =

  let v_ms = fcQTabBar_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc shape*(self: QTabBar, ): QTabBarShape =

  QTabBarShape(fcQTabBar_shape(self.h))

proc setShape*(self: QTabBar, shape: QTabBarShape): void =

  fcQTabBar_setShape(self.h, cint(shape))

proc addTab*(self: QTabBar, text: string): cint =

  fcQTabBar_addTab(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc addTab2*(self: QTabBar, icon: gen_qicon.QIcon, text: string): cint =

  fcQTabBar_addTab2(self.h, icon.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc insertTab*(self: QTabBar, index: cint, text: string): cint =

  fcQTabBar_insertTab(self.h, index, struct_miqt_string(data: text, len: csize_t(len(text))))

proc insertTab2*(self: QTabBar, index: cint, icon: gen_qicon.QIcon, text: string): cint =

  fcQTabBar_insertTab2(self.h, index, icon.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc removeTab*(self: QTabBar, index: cint): void =

  fcQTabBar_removeTab(self.h, index)

proc moveTab*(self: QTabBar, fromVal: cint, to: cint): void =

  fcQTabBar_moveTab(self.h, fromVal, to)

proc isTabEnabled*(self: QTabBar, index: cint): bool =

  fcQTabBar_isTabEnabled(self.h, index)

proc setTabEnabled*(self: QTabBar, index: cint, enabled: bool): void =

  fcQTabBar_setTabEnabled(self.h, index, enabled)

proc isTabVisible*(self: QTabBar, index: cint): bool =

  fcQTabBar_isTabVisible(self.h, index)

proc setTabVisible*(self: QTabBar, index: cint, visible: bool): void =

  fcQTabBar_setTabVisible(self.h, index, visible)

proc tabText*(self: QTabBar, index: cint): string =

  let v_ms = fcQTabBar_tabText(self.h, index)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTabText*(self: QTabBar, index: cint, text: string): void =

  fcQTabBar_setTabText(self.h, index, struct_miqt_string(data: text, len: csize_t(len(text))))

proc tabTextColor*(self: QTabBar, index: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQTabBar_tabTextColor(self.h, index))

proc setTabTextColor*(self: QTabBar, index: cint, color: gen_qcolor.QColor): void =

  fcQTabBar_setTabTextColor(self.h, index, color.h)

proc tabIcon*(self: QTabBar, index: cint): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQTabBar_tabIcon(self.h, index))

proc setTabIcon*(self: QTabBar, index: cint, icon: gen_qicon.QIcon): void =

  fcQTabBar_setTabIcon(self.h, index, icon.h)

proc elideMode*(self: QTabBar, ): gen_qnamespace.TextElideMode =

  gen_qnamespace.TextElideMode(fcQTabBar_elideMode(self.h))

proc setElideMode*(self: QTabBar, mode: gen_qnamespace.TextElideMode): void =

  fcQTabBar_setElideMode(self.h, cint(mode))

proc setTabToolTip*(self: QTabBar, index: cint, tip: string): void =

  fcQTabBar_setTabToolTip(self.h, index, struct_miqt_string(data: tip, len: csize_t(len(tip))))

proc tabToolTip*(self: QTabBar, index: cint): string =

  let v_ms = fcQTabBar_tabToolTip(self.h, index)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTabWhatsThis*(self: QTabBar, index: cint, text: string): void =

  fcQTabBar_setTabWhatsThis(self.h, index, struct_miqt_string(data: text, len: csize_t(len(text))))

proc tabWhatsThis*(self: QTabBar, index: cint): string =

  let v_ms = fcQTabBar_tabWhatsThis(self.h, index)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTabData*(self: QTabBar, index: cint, data: gen_qvariant.QVariant): void =

  fcQTabBar_setTabData(self.h, index, data.h)

proc tabData*(self: QTabBar, index: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQTabBar_tabData(self.h, index))

proc tabRect*(self: QTabBar, index: cint): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQTabBar_tabRect(self.h, index))

proc tabAt*(self: QTabBar, pos: gen_qpoint.QPoint): cint =

  fcQTabBar_tabAt(self.h, pos.h)

proc currentIndex*(self: QTabBar, ): cint =

  fcQTabBar_currentIndex(self.h)

proc count*(self: QTabBar, ): cint =

  fcQTabBar_count(self.h)

proc sizeHint*(self: QTabBar, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQTabBar_sizeHint(self.h))

proc minimumSizeHint*(self: QTabBar, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQTabBar_minimumSizeHint(self.h))

proc setDrawBase*(self: QTabBar, drawTheBase: bool): void =

  fcQTabBar_setDrawBase(self.h, drawTheBase)

proc drawBase*(self: QTabBar, ): bool =

  fcQTabBar_drawBase(self.h)

proc iconSize*(self: QTabBar, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQTabBar_iconSize(self.h))

proc setIconSize*(self: QTabBar, size: gen_qsize.QSize): void =

  fcQTabBar_setIconSize(self.h, size.h)

proc usesScrollButtons*(self: QTabBar, ): bool =

  fcQTabBar_usesScrollButtons(self.h)

proc setUsesScrollButtons*(self: QTabBar, useButtons: bool): void =

  fcQTabBar_setUsesScrollButtons(self.h, useButtons)

proc tabsClosable*(self: QTabBar, ): bool =

  fcQTabBar_tabsClosable(self.h)

proc setTabsClosable*(self: QTabBar, closable: bool): void =

  fcQTabBar_setTabsClosable(self.h, closable)

proc setTabButton*(self: QTabBar, index: cint, position: QTabBarButtonPosition, widget: gen_qwidget.QWidget): void =

  fcQTabBar_setTabButton(self.h, index, cint(position), widget.h)

proc tabButton*(self: QTabBar, index: cint, position: QTabBarButtonPosition): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQTabBar_tabButton(self.h, index, cint(position)))

proc selectionBehaviorOnRemove*(self: QTabBar, ): QTabBarSelectionBehavior =

  QTabBarSelectionBehavior(fcQTabBar_selectionBehaviorOnRemove(self.h))

proc setSelectionBehaviorOnRemove*(self: QTabBar, behavior: QTabBarSelectionBehavior): void =

  fcQTabBar_setSelectionBehaviorOnRemove(self.h, cint(behavior))

proc expanding*(self: QTabBar, ): bool =

  fcQTabBar_expanding(self.h)

proc setExpanding*(self: QTabBar, enabled: bool): void =

  fcQTabBar_setExpanding(self.h, enabled)

proc isMovable*(self: QTabBar, ): bool =

  fcQTabBar_isMovable(self.h)

proc setMovable*(self: QTabBar, movable: bool): void =

  fcQTabBar_setMovable(self.h, movable)

proc documentMode*(self: QTabBar, ): bool =

  fcQTabBar_documentMode(self.h)

proc setDocumentMode*(self: QTabBar, set: bool): void =

  fcQTabBar_setDocumentMode(self.h, set)

proc autoHide*(self: QTabBar, ): bool =

  fcQTabBar_autoHide(self.h)

proc setAutoHide*(self: QTabBar, hide: bool): void =

  fcQTabBar_setAutoHide(self.h, hide)

proc changeCurrentOnDrag*(self: QTabBar, ): bool =

  fcQTabBar_changeCurrentOnDrag(self.h)

proc setChangeCurrentOnDrag*(self: QTabBar, change: bool): void =

  fcQTabBar_setChangeCurrentOnDrag(self.h, change)

proc accessibleTabName*(self: QTabBar, index: cint): string =

  let v_ms = fcQTabBar_accessibleTabName(self.h, index)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAccessibleTabName*(self: QTabBar, index: cint, name: string): void =

  fcQTabBar_setAccessibleTabName(self.h, index, struct_miqt_string(data: name, len: csize_t(len(name))))

proc setCurrentIndex*(self: QTabBar, index: cint): void =

  fcQTabBar_setCurrentIndex(self.h, index)

proc currentChanged*(self: QTabBar, index: cint): void =

  fcQTabBar_currentChanged(self.h, index)

proc miqt_exec_callback_QTabBar_currentChanged(slot: int, index: cint) {.exportc.} =
  type Cb = proc(index: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)

proc oncurrentChanged*(self: QTabBar, slot: proc(index: cint)) =
  type Cb = proc(index: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTabBar_connect_currentChanged(self.h, cast[int](addr tmp[]))
proc tabCloseRequested*(self: QTabBar, index: cint): void =

  fcQTabBar_tabCloseRequested(self.h, index)

proc miqt_exec_callback_QTabBar_tabCloseRequested(slot: int, index: cint) {.exportc.} =
  type Cb = proc(index: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)

proc ontabCloseRequested*(self: QTabBar, slot: proc(index: cint)) =
  type Cb = proc(index: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTabBar_connect_tabCloseRequested(self.h, cast[int](addr tmp[]))
proc tabMoved*(self: QTabBar, fromVal: cint, to: cint): void =

  fcQTabBar_tabMoved(self.h, fromVal, to)

proc miqt_exec_callback_QTabBar_tabMoved(slot: int, fromVal: cint, to: cint) {.exportc.} =
  type Cb = proc(fromVal: cint, to: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = fromVal

  let slotval2 = to


  nimfunc[](slotval1, slotval2)

proc ontabMoved*(self: QTabBar, slot: proc(fromVal: cint, to: cint)) =
  type Cb = proc(fromVal: cint, to: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTabBar_connect_tabMoved(self.h, cast[int](addr tmp[]))
proc tabBarClicked*(self: QTabBar, index: cint): void =

  fcQTabBar_tabBarClicked(self.h, index)

proc miqt_exec_callback_QTabBar_tabBarClicked(slot: int, index: cint) {.exportc.} =
  type Cb = proc(index: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)

proc ontabBarClicked*(self: QTabBar, slot: proc(index: cint)) =
  type Cb = proc(index: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTabBar_connect_tabBarClicked(self.h, cast[int](addr tmp[]))
proc tabBarDoubleClicked*(self: QTabBar, index: cint): void =

  fcQTabBar_tabBarDoubleClicked(self.h, index)

proc miqt_exec_callback_QTabBar_tabBarDoubleClicked(slot: int, index: cint) {.exportc.} =
  type Cb = proc(index: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)

proc ontabBarDoubleClicked*(self: QTabBar, slot: proc(index: cint)) =
  type Cb = proc(index: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTabBar_connect_tabBarDoubleClicked(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QTabBar, s: cstring, c: cstring): string =

  let v_ms = fcQTabBar_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QTabBar, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTabBar_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QTabBar, s: cstring, c: cstring): string =

  let v_ms = fcQTabBar_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QTabBar, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTabBar_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QTabBar, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQTabBar_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTabBarmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QTabBar, slot: proc(super: QTabBarmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QTabBarmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_metacall(self: ptr cQTabBar, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTabBar_metacall ".} =
  type Cb = proc(super: QTabBarmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QTabBar(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QTabBar, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQTabBar_virtualbase_sizeHint(self.h))

type QTabBarsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QTabBar, slot: proc(super: QTabBarsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QTabBarsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_sizeHint(self: ptr cQTabBar, slot: int): pointer {.exportc: "miqt_exec_callback_QTabBar_sizeHint ".} =
  type Cb = proc(super: QTabBarsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QTabBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QTabBar, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQTabBar_virtualbase_minimumSizeHint(self.h))

type QTabBarminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QTabBar, slot: proc(super: QTabBarminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QTabBarminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_minimumSizeHint(self: ptr cQTabBar, slot: int): pointer {.exportc: "miqt_exec_callback_QTabBar_minimumSizeHint ".} =
  type Cb = proc(super: QTabBarminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QTabBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_tabSizeHint(self: QTabBar, index: cint): gen_qsize.QSize =


  gen_qsize.QSize(h: fQTabBar_virtualbase_tabSizeHint(self.h, index))

type QTabBartabSizeHintBase* = proc(index: cint): gen_qsize.QSize
proc ontabSizeHint*(self: QTabBar, slot: proc(super: QTabBartabSizeHintBase, index: cint): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QTabBartabSizeHintBase, index: cint): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_tabSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_tabSizeHint(self: ptr cQTabBar, slot: int, index: cint): pointer {.exportc: "miqt_exec_callback_QTabBar_tabSizeHint ".} =
  type Cb = proc(super: QTabBartabSizeHintBase, index: cint): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: cint): auto =
    callVirtualBase_tabSizeHint(QTabBar(h: self), index)
  let slotval1 = index


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_minimumTabSizeHint(self: QTabBar, index: cint): gen_qsize.QSize =


  gen_qsize.QSize(h: fQTabBar_virtualbase_minimumTabSizeHint(self.h, index))

type QTabBarminimumTabSizeHintBase* = proc(index: cint): gen_qsize.QSize
proc onminimumTabSizeHint*(self: QTabBar, slot: proc(super: QTabBarminimumTabSizeHintBase, index: cint): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QTabBarminimumTabSizeHintBase, index: cint): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_minimumTabSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_minimumTabSizeHint(self: ptr cQTabBar, slot: int, index: cint): pointer {.exportc: "miqt_exec_callback_QTabBar_minimumTabSizeHint ".} =
  type Cb = proc(super: QTabBarminimumTabSizeHintBase, index: cint): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: cint): auto =
    callVirtualBase_minimumTabSizeHint(QTabBar(h: self), index)
  let slotval1 = index


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_tabInserted(self: QTabBar, index: cint): void =


  fQTabBar_virtualbase_tabInserted(self.h, index)

type QTabBartabInsertedBase* = proc(index: cint): void
proc ontabInserted*(self: QTabBar, slot: proc(super: QTabBartabInsertedBase, index: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBartabInsertedBase, index: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_tabInserted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_tabInserted(self: ptr cQTabBar, slot: int, index: cint): void {.exportc: "miqt_exec_callback_QTabBar_tabInserted ".} =
  type Cb = proc(super: QTabBartabInsertedBase, index: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: cint): auto =
    callVirtualBase_tabInserted(QTabBar(h: self), index)
  let slotval1 = index


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabRemoved(self: QTabBar, index: cint): void =


  fQTabBar_virtualbase_tabRemoved(self.h, index)

type QTabBartabRemovedBase* = proc(index: cint): void
proc ontabRemoved*(self: QTabBar, slot: proc(super: QTabBartabRemovedBase, index: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBartabRemovedBase, index: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_tabRemoved(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_tabRemoved(self: ptr cQTabBar, slot: int, index: cint): void {.exportc: "miqt_exec_callback_QTabBar_tabRemoved ".} =
  type Cb = proc(super: QTabBartabRemovedBase, index: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: cint): auto =
    callVirtualBase_tabRemoved(QTabBar(h: self), index)
  let slotval1 = index


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabLayoutChange(self: QTabBar, ): void =


  fQTabBar_virtualbase_tabLayoutChange(self.h)

type QTabBartabLayoutChangeBase* = proc(): void
proc ontabLayoutChange*(self: QTabBar, slot: proc(super: QTabBartabLayoutChangeBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBartabLayoutChangeBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_tabLayoutChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_tabLayoutChange(self: ptr cQTabBar, slot: int): void {.exportc: "miqt_exec_callback_QTabBar_tabLayoutChange ".} =
  type Cb = proc(super: QTabBartabLayoutChangeBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_tabLayoutChange(QTabBar(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_event(self: QTabBar, param1: gen_qcoreevent.QEvent): bool =


  fQTabBar_virtualbase_event(self.h, param1.h)

type QTabBareventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QTabBar, slot: proc(super: QTabBareventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTabBareventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_event(self: ptr cQTabBar, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QTabBar_event ".} =
  type Cb = proc(super: QTabBareventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QTabBar(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_resizeEvent(self: QTabBar, param1: gen_qevent.QResizeEvent): void =


  fQTabBar_virtualbase_resizeEvent(self.h, param1.h)

type QTabBarresizeEventBase* = proc(param1: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QTabBar, slot: proc(super: QTabBarresizeEventBase, param1: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBarresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_resizeEvent(self: ptr cQTabBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabBar_resizeEvent ".} =
  type Cb = proc(super: QTabBarresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QTabBar(h: self), param1)
  let slotval1 = gen_qevent.QResizeEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QTabBar, param1: gen_qevent.QShowEvent): void =


  fQTabBar_virtualbase_showEvent(self.h, param1.h)

type QTabBarshowEventBase* = proc(param1: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QTabBar, slot: proc(super: QTabBarshowEventBase, param1: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBarshowEventBase, param1: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_showEvent(self: ptr cQTabBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabBar_showEvent ".} =
  type Cb = proc(super: QTabBarshowEventBase, param1: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QTabBar(h: self), param1)
  let slotval1 = gen_qevent.QShowEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QTabBar, param1: gen_qevent.QHideEvent): void =


  fQTabBar_virtualbase_hideEvent(self.h, param1.h)

type QTabBarhideEventBase* = proc(param1: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QTabBar, slot: proc(super: QTabBarhideEventBase, param1: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBarhideEventBase, param1: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_hideEvent(self: ptr cQTabBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabBar_hideEvent ".} =
  type Cb = proc(super: QTabBarhideEventBase, param1: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QTabBar(h: self), param1)
  let slotval1 = gen_qevent.QHideEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QTabBar, param1: gen_qevent.QPaintEvent): void =


  fQTabBar_virtualbase_paintEvent(self.h, param1.h)

type QTabBarpaintEventBase* = proc(param1: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QTabBar, slot: proc(super: QTabBarpaintEventBase, param1: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBarpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_paintEvent(self: ptr cQTabBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabBar_paintEvent ".} =
  type Cb = proc(super: QTabBarpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QTabBar(h: self), param1)
  let slotval1 = gen_qevent.QPaintEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QTabBar, param1: gen_qevent.QMouseEvent): void =


  fQTabBar_virtualbase_mousePressEvent(self.h, param1.h)

type QTabBarmousePressEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QTabBar, slot: proc(super: QTabBarmousePressEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBarmousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_mousePressEvent(self: ptr cQTabBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabBar_mousePressEvent ".} =
  type Cb = proc(super: QTabBarmousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QTabBar(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QTabBar, param1: gen_qevent.QMouseEvent): void =


  fQTabBar_virtualbase_mouseMoveEvent(self.h, param1.h)

type QTabBarmouseMoveEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QTabBar, slot: proc(super: QTabBarmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBarmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_mouseMoveEvent(self: ptr cQTabBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabBar_mouseMoveEvent ".} =
  type Cb = proc(super: QTabBarmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QTabBar(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QTabBar, param1: gen_qevent.QMouseEvent): void =


  fQTabBar_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QTabBarmouseReleaseEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QTabBar, slot: proc(super: QTabBarmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBarmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_mouseReleaseEvent(self: ptr cQTabBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabBar_mouseReleaseEvent ".} =
  type Cb = proc(super: QTabBarmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QTabBar(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QTabBar, event: gen_qevent.QWheelEvent): void =


  fQTabBar_virtualbase_wheelEvent(self.h, event.h)

type QTabBarwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QTabBar, slot: proc(super: QTabBarwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBarwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_wheelEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_wheelEvent ".} =
  type Cb = proc(super: QTabBarwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QTabBar(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QTabBar, param1: gen_qevent.QKeyEvent): void =


  fQTabBar_virtualbase_keyPressEvent(self.h, param1.h)

type QTabBarkeyPressEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QTabBar, slot: proc(super: QTabBarkeyPressEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBarkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_keyPressEvent(self: ptr cQTabBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabBar_keyPressEvent ".} =
  type Cb = proc(super: QTabBarkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QTabBar(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QTabBar, param1: gen_qcoreevent.QEvent): void =


  fQTabBar_virtualbase_changeEvent(self.h, param1.h)

type QTabBarchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QTabBar, slot: proc(super: QTabBarchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBarchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_changeEvent(self: ptr cQTabBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabBar_changeEvent ".} =
  type Cb = proc(super: QTabBarchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QTabBar(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QTabBar, event: gen_qcoreevent.QTimerEvent): void =


  fQTabBar_virtualbase_timerEvent(self.h, event.h)

type QTabBartimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QTabBar, slot: proc(super: QTabBartimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBartimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_timerEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_timerEvent ".} =
  type Cb = proc(super: QTabBartimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QTabBar(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QTabBar, ): cint =


  fQTabBar_virtualbase_devType(self.h)

type QTabBardevTypeBase* = proc(): cint
proc ondevType*(self: QTabBar, slot: proc(super: QTabBardevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QTabBardevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_devType(self: ptr cQTabBar, slot: int): cint {.exportc: "miqt_exec_callback_QTabBar_devType ".} =
  type Cb = proc(super: QTabBardevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QTabBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QTabBar, visible: bool): void =


  fQTabBar_virtualbase_setVisible(self.h, visible)

type QTabBarsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QTabBar, slot: proc(super: QTabBarsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBarsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_setVisible(self: ptr cQTabBar, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QTabBar_setVisible ".} =
  type Cb = proc(super: QTabBarsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QTabBar(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QTabBar, param1: cint): cint =


  fQTabBar_virtualbase_heightForWidth(self.h, param1)

type QTabBarheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QTabBar, slot: proc(super: QTabBarheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QTabBarheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_heightForWidth(self: ptr cQTabBar, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTabBar_heightForWidth ".} =
  type Cb = proc(super: QTabBarheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QTabBar(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QTabBar, ): bool =


  fQTabBar_virtualbase_hasHeightForWidth(self.h)

type QTabBarhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QTabBar, slot: proc(super: QTabBarhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QTabBarhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_hasHeightForWidth(self: ptr cQTabBar, slot: int): bool {.exportc: "miqt_exec_callback_QTabBar_hasHeightForWidth ".} =
  type Cb = proc(super: QTabBarhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QTabBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QTabBar, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQTabBar_virtualbase_paintEngine(self.h))

type QTabBarpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QTabBar, slot: proc(super: QTabBarpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QTabBarpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_paintEngine(self: ptr cQTabBar, slot: int): pointer {.exportc: "miqt_exec_callback_QTabBar_paintEngine ".} =
  type Cb = proc(super: QTabBarpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QTabBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mouseDoubleClickEvent(self: QTabBar, event: gen_qevent.QMouseEvent): void =


  fQTabBar_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QTabBarmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QTabBar, slot: proc(super: QTabBarmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBarmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_mouseDoubleClickEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QTabBarmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QTabBar(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QTabBar, event: gen_qevent.QKeyEvent): void =


  fQTabBar_virtualbase_keyReleaseEvent(self.h, event.h)

type QTabBarkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QTabBar, slot: proc(super: QTabBarkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBarkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_keyReleaseEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_keyReleaseEvent ".} =
  type Cb = proc(super: QTabBarkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QTabBar(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QTabBar, event: gen_qevent.QFocusEvent): void =


  fQTabBar_virtualbase_focusInEvent(self.h, event.h)

type QTabBarfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QTabBar, slot: proc(super: QTabBarfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBarfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_focusInEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_focusInEvent ".} =
  type Cb = proc(super: QTabBarfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QTabBar(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QTabBar, event: gen_qevent.QFocusEvent): void =


  fQTabBar_virtualbase_focusOutEvent(self.h, event.h)

type QTabBarfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QTabBar, slot: proc(super: QTabBarfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBarfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_focusOutEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_focusOutEvent ".} =
  type Cb = proc(super: QTabBarfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QTabBar(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QTabBar, event: gen_qcoreevent.QEvent): void =


  fQTabBar_virtualbase_enterEvent(self.h, event.h)

type QTabBarenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QTabBar, slot: proc(super: QTabBarenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBarenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_enterEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_enterEvent ".} =
  type Cb = proc(super: QTabBarenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QTabBar(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QTabBar, event: gen_qcoreevent.QEvent): void =


  fQTabBar_virtualbase_leaveEvent(self.h, event.h)

type QTabBarleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QTabBar, slot: proc(super: QTabBarleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBarleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_leaveEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_leaveEvent ".} =
  type Cb = proc(super: QTabBarleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QTabBar(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QTabBar, event: gen_qevent.QMoveEvent): void =


  fQTabBar_virtualbase_moveEvent(self.h, event.h)

type QTabBarmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QTabBar, slot: proc(super: QTabBarmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBarmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_moveEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_moveEvent ".} =
  type Cb = proc(super: QTabBarmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QTabBar(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QTabBar, event: gen_qevent.QCloseEvent): void =


  fQTabBar_virtualbase_closeEvent(self.h, event.h)

type QTabBarcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QTabBar, slot: proc(super: QTabBarcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBarcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_closeEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_closeEvent ".} =
  type Cb = proc(super: QTabBarcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QTabBar(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QTabBar, event: gen_qevent.QContextMenuEvent): void =


  fQTabBar_virtualbase_contextMenuEvent(self.h, event.h)

type QTabBarcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QTabBar, slot: proc(super: QTabBarcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBarcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_contextMenuEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_contextMenuEvent ".} =
  type Cb = proc(super: QTabBarcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QTabBar(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QTabBar, event: gen_qevent.QTabletEvent): void =


  fQTabBar_virtualbase_tabletEvent(self.h, event.h)

type QTabBartabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QTabBar, slot: proc(super: QTabBartabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBartabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_tabletEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_tabletEvent ".} =
  type Cb = proc(super: QTabBartabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QTabBar(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QTabBar, event: gen_qevent.QActionEvent): void =


  fQTabBar_virtualbase_actionEvent(self.h, event.h)

type QTabBaractionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QTabBar, slot: proc(super: QTabBaractionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBaractionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_actionEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_actionEvent ".} =
  type Cb = proc(super: QTabBaractionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QTabBar(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QTabBar, event: gen_qevent.QDragEnterEvent): void =


  fQTabBar_virtualbase_dragEnterEvent(self.h, event.h)

type QTabBardragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QTabBar, slot: proc(super: QTabBardragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBardragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_dragEnterEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_dragEnterEvent ".} =
  type Cb = proc(super: QTabBardragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QTabBar(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QTabBar, event: gen_qevent.QDragMoveEvent): void =


  fQTabBar_virtualbase_dragMoveEvent(self.h, event.h)

type QTabBardragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QTabBar, slot: proc(super: QTabBardragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBardragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_dragMoveEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_dragMoveEvent ".} =
  type Cb = proc(super: QTabBardragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QTabBar(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QTabBar, event: gen_qevent.QDragLeaveEvent): void =


  fQTabBar_virtualbase_dragLeaveEvent(self.h, event.h)

type QTabBardragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QTabBar, slot: proc(super: QTabBardragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBardragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_dragLeaveEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_dragLeaveEvent ".} =
  type Cb = proc(super: QTabBardragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QTabBar(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QTabBar, event: gen_qevent.QDropEvent): void =


  fQTabBar_virtualbase_dropEvent(self.h, event.h)

type QTabBardropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QTabBar, slot: proc(super: QTabBardropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBardropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_dropEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_dropEvent ".} =
  type Cb = proc(super: QTabBardropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QTabBar(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QTabBar, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQTabBar_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QTabBarnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QTabBar, slot: proc(super: QTabBarnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QTabBarnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_nativeEvent(self: ptr cQTabBar, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QTabBar_nativeEvent ".} =
  type Cb = proc(super: QTabBarnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QTabBar(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QTabBar, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQTabBar_virtualbase_metric(self.h, cint(param1))

type QTabBarmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QTabBar, slot: proc(super: QTabBarmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QTabBarmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_metric(self: ptr cQTabBar, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTabBar_metric ".} =
  type Cb = proc(super: QTabBarmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QTabBar(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QTabBar, painter: gen_qpainter.QPainter): void =


  fQTabBar_virtualbase_initPainter(self.h, painter.h)

type QTabBarinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QTabBar, slot: proc(super: QTabBarinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBarinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_initPainter(self: ptr cQTabBar, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QTabBar_initPainter ".} =
  type Cb = proc(super: QTabBarinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QTabBar(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QTabBar, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQTabBar_virtualbase_redirected(self.h, offset.h))

type QTabBarredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QTabBar, slot: proc(super: QTabBarredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QTabBarredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_redirected(self: ptr cQTabBar, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QTabBar_redirected ".} =
  type Cb = proc(super: QTabBarredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QTabBar(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QTabBar, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQTabBar_virtualbase_sharedPainter(self.h))

type QTabBarsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QTabBar, slot: proc(super: QTabBarsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QTabBarsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_sharedPainter(self: ptr cQTabBar, slot: int): pointer {.exportc: "miqt_exec_callback_QTabBar_sharedPainter ".} =
  type Cb = proc(super: QTabBarsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QTabBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QTabBar, param1: gen_qevent.QInputMethodEvent): void =


  fQTabBar_virtualbase_inputMethodEvent(self.h, param1.h)

type QTabBarinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QTabBar, slot: proc(super: QTabBarinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBarinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_inputMethodEvent(self: ptr cQTabBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabBar_inputMethodEvent ".} =
  type Cb = proc(super: QTabBarinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QTabBar(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QTabBar, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQTabBar_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QTabBarinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QTabBar, slot: proc(super: QTabBarinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QTabBarinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_inputMethodQuery(self: ptr cQTabBar, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QTabBar_inputMethodQuery ".} =
  type Cb = proc(super: QTabBarinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QTabBar(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QTabBar, next: bool): bool =


  fQTabBar_virtualbase_focusNextPrevChild(self.h, next)

type QTabBarfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QTabBar, slot: proc(super: QTabBarfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QTabBarfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_focusNextPrevChild(self: ptr cQTabBar, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QTabBar_focusNextPrevChild ".} =
  type Cb = proc(super: QTabBarfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QTabBar(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QTabBar, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQTabBar_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTabBareventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QTabBar, slot: proc(super: QTabBareventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTabBareventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_eventFilter(self: ptr cQTabBar, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTabBar_eventFilter ".} =
  type Cb = proc(super: QTabBareventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QTabBar(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_childEvent(self: QTabBar, event: gen_qcoreevent.QChildEvent): void =


  fQTabBar_virtualbase_childEvent(self.h, event.h)

type QTabBarchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QTabBar, slot: proc(super: QTabBarchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBarchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_childEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_childEvent ".} =
  type Cb = proc(super: QTabBarchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QTabBar(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QTabBar, event: gen_qcoreevent.QEvent): void =


  fQTabBar_virtualbase_customEvent(self.h, event.h)

type QTabBarcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QTabBar, slot: proc(super: QTabBarcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBarcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_customEvent(self: ptr cQTabBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabBar_customEvent ".} =
  type Cb = proc(super: QTabBarcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QTabBar(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QTabBar, signal: gen_qmetaobject.QMetaMethod): void =


  fQTabBar_virtualbase_connectNotify(self.h, signal.h)

type QTabBarconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QTabBar, slot: proc(super: QTabBarconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBarconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_connectNotify(self: ptr cQTabBar, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTabBar_connectNotify ".} =
  type Cb = proc(super: QTabBarconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QTabBar(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QTabBar, signal: gen_qmetaobject.QMetaMethod): void =


  fQTabBar_virtualbase_disconnectNotify(self.h, signal.h)

type QTabBardisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QTabBar, slot: proc(super: QTabBardisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTabBardisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabBar_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabBar_disconnectNotify(self: ptr cQTabBar, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTabBar_disconnectNotify ".} =
  type Cb = proc(super: QTabBardisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QTabBar(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QTabBar) =
  fcQTabBar_delete(self.h)
