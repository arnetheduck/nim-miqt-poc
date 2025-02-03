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
{.compile("gen_qtabwidget.cpp", cflags).}


type QTabWidgetTabPosition* = cint
const
  QTabWidgetNorth* = 0
  QTabWidgetSouth* = 1
  QTabWidgetWest* = 2
  QTabWidgetEast* = 3



type QTabWidgetTabShape* = cint
const
  QTabWidgetRounded* = 0
  QTabWidgetTriangular* = 1



import gen_qtabwidget_types
export gen_qtabwidget_types

import
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
  gen_qsize,
  gen_qstyleoption,
  gen_qtabbar,
  gen_qvariant,
  gen_qwidget
export
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
  gen_qsize,
  gen_qstyleoption,
  gen_qtabbar,
  gen_qvariant,
  gen_qwidget

type cQTabWidget*{.exportc: "QTabWidget", incompleteStruct.} = object

proc fcQTabWidget_new(parent: pointer): ptr cQTabWidget {.importc: "QTabWidget_new".}
proc fcQTabWidget_new2(): ptr cQTabWidget {.importc: "QTabWidget_new2".}
proc fcQTabWidget_metaObject(self: pointer, ): pointer {.importc: "QTabWidget_metaObject".}
proc fcQTabWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QTabWidget_metacast".}
proc fcQTabWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTabWidget_metacall".}
proc fcQTabWidget_tr(s: cstring): struct_miqt_string {.importc: "QTabWidget_tr".}
proc fcQTabWidget_addTab(self: pointer, widget: pointer, param2: struct_miqt_string): cint {.importc: "QTabWidget_addTab".}
proc fcQTabWidget_addTab2(self: pointer, widget: pointer, icon: pointer, label: struct_miqt_string): cint {.importc: "QTabWidget_addTab2".}
proc fcQTabWidget_insertTab(self: pointer, index: cint, widget: pointer, param3: struct_miqt_string): cint {.importc: "QTabWidget_insertTab".}
proc fcQTabWidget_insertTab2(self: pointer, index: cint, widget: pointer, icon: pointer, label: struct_miqt_string): cint {.importc: "QTabWidget_insertTab2".}
proc fcQTabWidget_removeTab(self: pointer, index: cint): void {.importc: "QTabWidget_removeTab".}
proc fcQTabWidget_isTabEnabled(self: pointer, index: cint): bool {.importc: "QTabWidget_isTabEnabled".}
proc fcQTabWidget_setTabEnabled(self: pointer, index: cint, enabled: bool): void {.importc: "QTabWidget_setTabEnabled".}
proc fcQTabWidget_isTabVisible(self: pointer, index: cint): bool {.importc: "QTabWidget_isTabVisible".}
proc fcQTabWidget_setTabVisible(self: pointer, index: cint, visible: bool): void {.importc: "QTabWidget_setTabVisible".}
proc fcQTabWidget_tabText(self: pointer, index: cint): struct_miqt_string {.importc: "QTabWidget_tabText".}
proc fcQTabWidget_setTabText(self: pointer, index: cint, text: struct_miqt_string): void {.importc: "QTabWidget_setTabText".}
proc fcQTabWidget_tabIcon(self: pointer, index: cint): pointer {.importc: "QTabWidget_tabIcon".}
proc fcQTabWidget_setTabIcon(self: pointer, index: cint, icon: pointer): void {.importc: "QTabWidget_setTabIcon".}
proc fcQTabWidget_setTabToolTip(self: pointer, index: cint, tip: struct_miqt_string): void {.importc: "QTabWidget_setTabToolTip".}
proc fcQTabWidget_tabToolTip(self: pointer, index: cint): struct_miqt_string {.importc: "QTabWidget_tabToolTip".}
proc fcQTabWidget_setTabWhatsThis(self: pointer, index: cint, text: struct_miqt_string): void {.importc: "QTabWidget_setTabWhatsThis".}
proc fcQTabWidget_tabWhatsThis(self: pointer, index: cint): struct_miqt_string {.importc: "QTabWidget_tabWhatsThis".}
proc fcQTabWidget_currentIndex(self: pointer, ): cint {.importc: "QTabWidget_currentIndex".}
proc fcQTabWidget_currentWidget(self: pointer, ): pointer {.importc: "QTabWidget_currentWidget".}
proc fcQTabWidget_widget(self: pointer, index: cint): pointer {.importc: "QTabWidget_widget".}
proc fcQTabWidget_indexOf(self: pointer, widget: pointer): cint {.importc: "QTabWidget_indexOf".}
proc fcQTabWidget_count(self: pointer, ): cint {.importc: "QTabWidget_count".}
proc fcQTabWidget_tabPosition(self: pointer, ): cint {.importc: "QTabWidget_tabPosition".}
proc fcQTabWidget_setTabPosition(self: pointer, position: cint): void {.importc: "QTabWidget_setTabPosition".}
proc fcQTabWidget_tabsClosable(self: pointer, ): bool {.importc: "QTabWidget_tabsClosable".}
proc fcQTabWidget_setTabsClosable(self: pointer, closeable: bool): void {.importc: "QTabWidget_setTabsClosable".}
proc fcQTabWidget_isMovable(self: pointer, ): bool {.importc: "QTabWidget_isMovable".}
proc fcQTabWidget_setMovable(self: pointer, movable: bool): void {.importc: "QTabWidget_setMovable".}
proc fcQTabWidget_tabShape(self: pointer, ): cint {.importc: "QTabWidget_tabShape".}
proc fcQTabWidget_setTabShape(self: pointer, s: cint): void {.importc: "QTabWidget_setTabShape".}
proc fcQTabWidget_sizeHint(self: pointer, ): pointer {.importc: "QTabWidget_sizeHint".}
proc fcQTabWidget_minimumSizeHint(self: pointer, ): pointer {.importc: "QTabWidget_minimumSizeHint".}
proc fcQTabWidget_heightForWidth(self: pointer, width: cint): cint {.importc: "QTabWidget_heightForWidth".}
proc fcQTabWidget_hasHeightForWidth(self: pointer, ): bool {.importc: "QTabWidget_hasHeightForWidth".}
proc fcQTabWidget_setCornerWidget(self: pointer, w: pointer): void {.importc: "QTabWidget_setCornerWidget".}
proc fcQTabWidget_cornerWidget(self: pointer, ): pointer {.importc: "QTabWidget_cornerWidget".}
proc fcQTabWidget_elideMode(self: pointer, ): cint {.importc: "QTabWidget_elideMode".}
proc fcQTabWidget_setElideMode(self: pointer, mode: cint): void {.importc: "QTabWidget_setElideMode".}
proc fcQTabWidget_iconSize(self: pointer, ): pointer {.importc: "QTabWidget_iconSize".}
proc fcQTabWidget_setIconSize(self: pointer, size: pointer): void {.importc: "QTabWidget_setIconSize".}
proc fcQTabWidget_usesScrollButtons(self: pointer, ): bool {.importc: "QTabWidget_usesScrollButtons".}
proc fcQTabWidget_setUsesScrollButtons(self: pointer, useButtons: bool): void {.importc: "QTabWidget_setUsesScrollButtons".}
proc fcQTabWidget_documentMode(self: pointer, ): bool {.importc: "QTabWidget_documentMode".}
proc fcQTabWidget_setDocumentMode(self: pointer, set: bool): void {.importc: "QTabWidget_setDocumentMode".}
proc fcQTabWidget_tabBarAutoHide(self: pointer, ): bool {.importc: "QTabWidget_tabBarAutoHide".}
proc fcQTabWidget_setTabBarAutoHide(self: pointer, enabled: bool): void {.importc: "QTabWidget_setTabBarAutoHide".}
proc fcQTabWidget_clear(self: pointer, ): void {.importc: "QTabWidget_clear".}
proc fcQTabWidget_tabBar(self: pointer, ): pointer {.importc: "QTabWidget_tabBar".}
proc fcQTabWidget_setCurrentIndex(self: pointer, index: cint): void {.importc: "QTabWidget_setCurrentIndex".}
proc fcQTabWidget_setCurrentWidget(self: pointer, widget: pointer): void {.importc: "QTabWidget_setCurrentWidget".}
proc fcQTabWidget_currentChanged(self: pointer, index: cint): void {.importc: "QTabWidget_currentChanged".}
proc fQTabWidget_connect_currentChanged(self: pointer, slot: int) {.importc: "QTabWidget_connect_currentChanged".}
proc fcQTabWidget_tabCloseRequested(self: pointer, index: cint): void {.importc: "QTabWidget_tabCloseRequested".}
proc fQTabWidget_connect_tabCloseRequested(self: pointer, slot: int) {.importc: "QTabWidget_connect_tabCloseRequested".}
proc fcQTabWidget_tabBarClicked(self: pointer, index: cint): void {.importc: "QTabWidget_tabBarClicked".}
proc fQTabWidget_connect_tabBarClicked(self: pointer, slot: int) {.importc: "QTabWidget_connect_tabBarClicked".}
proc fcQTabWidget_tabBarDoubleClicked(self: pointer, index: cint): void {.importc: "QTabWidget_tabBarDoubleClicked".}
proc fQTabWidget_connect_tabBarDoubleClicked(self: pointer, slot: int) {.importc: "QTabWidget_connect_tabBarDoubleClicked".}
proc fcQTabWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTabWidget_tr2".}
proc fcQTabWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTabWidget_tr3".}
proc fcQTabWidget_setCornerWidget2(self: pointer, w: pointer, corner: cint): void {.importc: "QTabWidget_setCornerWidget2".}
proc fcQTabWidget_cornerWidget1(self: pointer, corner: cint): pointer {.importc: "QTabWidget_cornerWidget1".}
proc fQTabWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTabWidget_virtualbase_metacall".}
proc fcQTabWidget_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_metacall".}
proc fQTabWidget_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QTabWidget_virtualbase_sizeHint".}
proc fcQTabWidget_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_sizeHint".}
proc fQTabWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QTabWidget_virtualbase_minimumSizeHint".}
proc fcQTabWidget_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_minimumSizeHint".}
proc fQTabWidget_virtualbase_heightForWidth(self: pointer, width: cint): cint{.importc: "QTabWidget_virtualbase_heightForWidth".}
proc fcQTabWidget_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_heightForWidth".}
proc fQTabWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QTabWidget_virtualbase_hasHeightForWidth".}
proc fcQTabWidget_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_hasHeightForWidth".}
proc fQTabWidget_virtualbase_tabInserted(self: pointer, index: cint): void{.importc: "QTabWidget_virtualbase_tabInserted".}
proc fcQTabWidget_override_virtual_tabInserted(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_tabInserted".}
proc fQTabWidget_virtualbase_tabRemoved(self: pointer, index: cint): void{.importc: "QTabWidget_virtualbase_tabRemoved".}
proc fcQTabWidget_override_virtual_tabRemoved(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_tabRemoved".}
proc fQTabWidget_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QTabWidget_virtualbase_showEvent".}
proc fcQTabWidget_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_showEvent".}
proc fQTabWidget_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QTabWidget_virtualbase_resizeEvent".}
proc fcQTabWidget_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_resizeEvent".}
proc fQTabWidget_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QTabWidget_virtualbase_keyPressEvent".}
proc fcQTabWidget_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_keyPressEvent".}
proc fQTabWidget_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QTabWidget_virtualbase_paintEvent".}
proc fcQTabWidget_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_paintEvent".}
proc fQTabWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QTabWidget_virtualbase_changeEvent".}
proc fcQTabWidget_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_changeEvent".}
proc fQTabWidget_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QTabWidget_virtualbase_event".}
proc fcQTabWidget_override_virtual_event(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_event".}
proc fQTabWidget_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QTabWidget_virtualbase_initStyleOption".}
proc fcQTabWidget_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_initStyleOption".}
proc fQTabWidget_virtualbase_devType(self: pointer, ): cint{.importc: "QTabWidget_virtualbase_devType".}
proc fcQTabWidget_override_virtual_devType(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_devType".}
proc fQTabWidget_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QTabWidget_virtualbase_setVisible".}
proc fcQTabWidget_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_setVisible".}
proc fQTabWidget_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QTabWidget_virtualbase_paintEngine".}
proc fcQTabWidget_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_paintEngine".}
proc fQTabWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_mousePressEvent".}
proc fcQTabWidget_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_mousePressEvent".}
proc fQTabWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_mouseReleaseEvent".}
proc fcQTabWidget_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_mouseReleaseEvent".}
proc fQTabWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQTabWidget_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_mouseDoubleClickEvent".}
proc fQTabWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_mouseMoveEvent".}
proc fcQTabWidget_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_mouseMoveEvent".}
proc fQTabWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_wheelEvent".}
proc fcQTabWidget_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_wheelEvent".}
proc fQTabWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_keyReleaseEvent".}
proc fcQTabWidget_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_keyReleaseEvent".}
proc fQTabWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_focusInEvent".}
proc fcQTabWidget_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_focusInEvent".}
proc fQTabWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_focusOutEvent".}
proc fcQTabWidget_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_focusOutEvent".}
proc fQTabWidget_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_enterEvent".}
proc fcQTabWidget_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_enterEvent".}
proc fQTabWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_leaveEvent".}
proc fcQTabWidget_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_leaveEvent".}
proc fQTabWidget_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_moveEvent".}
proc fcQTabWidget_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_moveEvent".}
proc fQTabWidget_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_closeEvent".}
proc fcQTabWidget_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_closeEvent".}
proc fQTabWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_contextMenuEvent".}
proc fcQTabWidget_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_contextMenuEvent".}
proc fQTabWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_tabletEvent".}
proc fcQTabWidget_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_tabletEvent".}
proc fQTabWidget_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_actionEvent".}
proc fcQTabWidget_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_actionEvent".}
proc fQTabWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_dragEnterEvent".}
proc fcQTabWidget_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_dragEnterEvent".}
proc fQTabWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_dragMoveEvent".}
proc fcQTabWidget_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_dragMoveEvent".}
proc fQTabWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_dragLeaveEvent".}
proc fcQTabWidget_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_dragLeaveEvent".}
proc fQTabWidget_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_dropEvent".}
proc fcQTabWidget_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_dropEvent".}
proc fQTabWidget_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_hideEvent".}
proc fcQTabWidget_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_hideEvent".}
proc fQTabWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QTabWidget_virtualbase_nativeEvent".}
proc fcQTabWidget_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_nativeEvent".}
proc fQTabWidget_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QTabWidget_virtualbase_metric".}
proc fcQTabWidget_override_virtual_metric(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_metric".}
proc fQTabWidget_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QTabWidget_virtualbase_initPainter".}
proc fcQTabWidget_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_initPainter".}
proc fQTabWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QTabWidget_virtualbase_redirected".}
proc fcQTabWidget_override_virtual_redirected(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_redirected".}
proc fQTabWidget_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QTabWidget_virtualbase_sharedPainter".}
proc fcQTabWidget_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_sharedPainter".}
proc fQTabWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QTabWidget_virtualbase_inputMethodEvent".}
proc fcQTabWidget_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_inputMethodEvent".}
proc fQTabWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QTabWidget_virtualbase_inputMethodQuery".}
proc fcQTabWidget_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_inputMethodQuery".}
proc fQTabWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QTabWidget_virtualbase_focusNextPrevChild".}
proc fcQTabWidget_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_focusNextPrevChild".}
proc fQTabWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTabWidget_virtualbase_eventFilter".}
proc fcQTabWidget_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_eventFilter".}
proc fQTabWidget_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_timerEvent".}
proc fcQTabWidget_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_timerEvent".}
proc fQTabWidget_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_childEvent".}
proc fcQTabWidget_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_childEvent".}
proc fQTabWidget_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTabWidget_virtualbase_customEvent".}
proc fcQTabWidget_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_customEvent".}
proc fQTabWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTabWidget_virtualbase_connectNotify".}
proc fcQTabWidget_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_connectNotify".}
proc fQTabWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTabWidget_virtualbase_disconnectNotify".}
proc fcQTabWidget_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTabWidget_override_virtual_disconnectNotify".}
proc fcQTabWidget_delete(self: pointer) {.importc: "QTabWidget_delete".}


func init*(T: type QTabWidget, h: ptr cQTabWidget): QTabWidget =
  T(h: h)
proc create*(T: type QTabWidget, parent: gen_qwidget.QWidget): QTabWidget =

  QTabWidget.init(fcQTabWidget_new(parent.h))
proc create*(T: type QTabWidget, ): QTabWidget =

  QTabWidget.init(fcQTabWidget_new2())
proc metaObject*(self: QTabWidget, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQTabWidget_metaObject(self.h))

proc metacast*(self: QTabWidget, param1: cstring): pointer =

  fcQTabWidget_metacast(self.h, param1)

proc metacall*(self: QTabWidget, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQTabWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QTabWidget, s: cstring): string =

  let v_ms = fcQTabWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addTab*(self: QTabWidget, widget: gen_qwidget.QWidget, param2: string): cint =

  fcQTabWidget_addTab(self.h, widget.h, struct_miqt_string(data: param2, len: csize_t(len(param2))))

proc addTab2*(self: QTabWidget, widget: gen_qwidget.QWidget, icon: gen_qicon.QIcon, label: string): cint =

  fcQTabWidget_addTab2(self.h, widget.h, icon.h, struct_miqt_string(data: label, len: csize_t(len(label))))

proc insertTab*(self: QTabWidget, index: cint, widget: gen_qwidget.QWidget, param3: string): cint =

  fcQTabWidget_insertTab(self.h, index, widget.h, struct_miqt_string(data: param3, len: csize_t(len(param3))))

proc insertTab2*(self: QTabWidget, index: cint, widget: gen_qwidget.QWidget, icon: gen_qicon.QIcon, label: string): cint =

  fcQTabWidget_insertTab2(self.h, index, widget.h, icon.h, struct_miqt_string(data: label, len: csize_t(len(label))))

proc removeTab*(self: QTabWidget, index: cint): void =

  fcQTabWidget_removeTab(self.h, index)

proc isTabEnabled*(self: QTabWidget, index: cint): bool =

  fcQTabWidget_isTabEnabled(self.h, index)

proc setTabEnabled*(self: QTabWidget, index: cint, enabled: bool): void =

  fcQTabWidget_setTabEnabled(self.h, index, enabled)

proc isTabVisible*(self: QTabWidget, index: cint): bool =

  fcQTabWidget_isTabVisible(self.h, index)

proc setTabVisible*(self: QTabWidget, index: cint, visible: bool): void =

  fcQTabWidget_setTabVisible(self.h, index, visible)

proc tabText*(self: QTabWidget, index: cint): string =

  let v_ms = fcQTabWidget_tabText(self.h, index)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTabText*(self: QTabWidget, index: cint, text: string): void =

  fcQTabWidget_setTabText(self.h, index, struct_miqt_string(data: text, len: csize_t(len(text))))

proc tabIcon*(self: QTabWidget, index: cint): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQTabWidget_tabIcon(self.h, index))

proc setTabIcon*(self: QTabWidget, index: cint, icon: gen_qicon.QIcon): void =

  fcQTabWidget_setTabIcon(self.h, index, icon.h)

proc setTabToolTip*(self: QTabWidget, index: cint, tip: string): void =

  fcQTabWidget_setTabToolTip(self.h, index, struct_miqt_string(data: tip, len: csize_t(len(tip))))

proc tabToolTip*(self: QTabWidget, index: cint): string =

  let v_ms = fcQTabWidget_tabToolTip(self.h, index)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTabWhatsThis*(self: QTabWidget, index: cint, text: string): void =

  fcQTabWidget_setTabWhatsThis(self.h, index, struct_miqt_string(data: text, len: csize_t(len(text))))

proc tabWhatsThis*(self: QTabWidget, index: cint): string =

  let v_ms = fcQTabWidget_tabWhatsThis(self.h, index)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc currentIndex*(self: QTabWidget, ): cint =

  fcQTabWidget_currentIndex(self.h)

proc currentWidget*(self: QTabWidget, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQTabWidget_currentWidget(self.h))

proc widget*(self: QTabWidget, index: cint): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQTabWidget_widget(self.h, index))

proc indexOf*(self: QTabWidget, widget: gen_qwidget.QWidget): cint =

  fcQTabWidget_indexOf(self.h, widget.h)

proc count*(self: QTabWidget, ): cint =

  fcQTabWidget_count(self.h)

proc tabPosition*(self: QTabWidget, ): QTabWidgetTabPosition =

  QTabWidgetTabPosition(fcQTabWidget_tabPosition(self.h))

proc setTabPosition*(self: QTabWidget, position: QTabWidgetTabPosition): void =

  fcQTabWidget_setTabPosition(self.h, cint(position))

proc tabsClosable*(self: QTabWidget, ): bool =

  fcQTabWidget_tabsClosable(self.h)

proc setTabsClosable*(self: QTabWidget, closeable: bool): void =

  fcQTabWidget_setTabsClosable(self.h, closeable)

proc isMovable*(self: QTabWidget, ): bool =

  fcQTabWidget_isMovable(self.h)

proc setMovable*(self: QTabWidget, movable: bool): void =

  fcQTabWidget_setMovable(self.h, movable)

proc tabShape*(self: QTabWidget, ): QTabWidgetTabShape =

  QTabWidgetTabShape(fcQTabWidget_tabShape(self.h))

proc setTabShape*(self: QTabWidget, s: QTabWidgetTabShape): void =

  fcQTabWidget_setTabShape(self.h, cint(s))

proc sizeHint*(self: QTabWidget, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQTabWidget_sizeHint(self.h))

proc minimumSizeHint*(self: QTabWidget, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQTabWidget_minimumSizeHint(self.h))

proc heightForWidth*(self: QTabWidget, width: cint): cint =

  fcQTabWidget_heightForWidth(self.h, width)

proc hasHeightForWidth*(self: QTabWidget, ): bool =

  fcQTabWidget_hasHeightForWidth(self.h)

proc setCornerWidget*(self: QTabWidget, w: gen_qwidget.QWidget): void =

  fcQTabWidget_setCornerWidget(self.h, w.h)

proc cornerWidget*(self: QTabWidget, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQTabWidget_cornerWidget(self.h))

proc elideMode*(self: QTabWidget, ): gen_qnamespace.TextElideMode =

  gen_qnamespace.TextElideMode(fcQTabWidget_elideMode(self.h))

proc setElideMode*(self: QTabWidget, mode: gen_qnamespace.TextElideMode): void =

  fcQTabWidget_setElideMode(self.h, cint(mode))

proc iconSize*(self: QTabWidget, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQTabWidget_iconSize(self.h))

proc setIconSize*(self: QTabWidget, size: gen_qsize.QSize): void =

  fcQTabWidget_setIconSize(self.h, size.h)

proc usesScrollButtons*(self: QTabWidget, ): bool =

  fcQTabWidget_usesScrollButtons(self.h)

proc setUsesScrollButtons*(self: QTabWidget, useButtons: bool): void =

  fcQTabWidget_setUsesScrollButtons(self.h, useButtons)

proc documentMode*(self: QTabWidget, ): bool =

  fcQTabWidget_documentMode(self.h)

proc setDocumentMode*(self: QTabWidget, set: bool): void =

  fcQTabWidget_setDocumentMode(self.h, set)

proc tabBarAutoHide*(self: QTabWidget, ): bool =

  fcQTabWidget_tabBarAutoHide(self.h)

proc setTabBarAutoHide*(self: QTabWidget, enabled: bool): void =

  fcQTabWidget_setTabBarAutoHide(self.h, enabled)

proc clear*(self: QTabWidget, ): void =

  fcQTabWidget_clear(self.h)

proc tabBar*(self: QTabWidget, ): gen_qtabbar.QTabBar =

  gen_qtabbar.QTabBar(h: fcQTabWidget_tabBar(self.h))

proc setCurrentIndex*(self: QTabWidget, index: cint): void =

  fcQTabWidget_setCurrentIndex(self.h, index)

proc setCurrentWidget*(self: QTabWidget, widget: gen_qwidget.QWidget): void =

  fcQTabWidget_setCurrentWidget(self.h, widget.h)

proc currentChanged*(self: QTabWidget, index: cint): void =

  fcQTabWidget_currentChanged(self.h, index)

proc miqt_exec_callback_QTabWidget_currentChanged(slot: int, index: cint) {.exportc.} =
  type Cb = proc(index: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)

proc oncurrentChanged*(self: QTabWidget, slot: proc(index: cint)) =
  type Cb = proc(index: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTabWidget_connect_currentChanged(self.h, cast[int](addr tmp[]))
proc tabCloseRequested*(self: QTabWidget, index: cint): void =

  fcQTabWidget_tabCloseRequested(self.h, index)

proc miqt_exec_callback_QTabWidget_tabCloseRequested(slot: int, index: cint) {.exportc.} =
  type Cb = proc(index: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)

proc ontabCloseRequested*(self: QTabWidget, slot: proc(index: cint)) =
  type Cb = proc(index: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTabWidget_connect_tabCloseRequested(self.h, cast[int](addr tmp[]))
proc tabBarClicked*(self: QTabWidget, index: cint): void =

  fcQTabWidget_tabBarClicked(self.h, index)

proc miqt_exec_callback_QTabWidget_tabBarClicked(slot: int, index: cint) {.exportc.} =
  type Cb = proc(index: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)

proc ontabBarClicked*(self: QTabWidget, slot: proc(index: cint)) =
  type Cb = proc(index: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTabWidget_connect_tabBarClicked(self.h, cast[int](addr tmp[]))
proc tabBarDoubleClicked*(self: QTabWidget, index: cint): void =

  fcQTabWidget_tabBarDoubleClicked(self.h, index)

proc miqt_exec_callback_QTabWidget_tabBarDoubleClicked(slot: int, index: cint) {.exportc.} =
  type Cb = proc(index: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)

proc ontabBarDoubleClicked*(self: QTabWidget, slot: proc(index: cint)) =
  type Cb = proc(index: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTabWidget_connect_tabBarDoubleClicked(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QTabWidget, s: cstring, c: cstring): string =

  let v_ms = fcQTabWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QTabWidget, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTabWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCornerWidget2*(self: QTabWidget, w: gen_qwidget.QWidget, corner: gen_qnamespace.Corner): void =

  fcQTabWidget_setCornerWidget2(self.h, w.h, cint(corner))

proc cornerWidget1*(self: QTabWidget, corner: gen_qnamespace.Corner): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQTabWidget_cornerWidget1(self.h, cint(corner)))

proc callVirtualBase_metacall(self: QTabWidget, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQTabWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTabWidgetmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QTabWidget, slot: proc(super: QTabWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_metacall(self: ptr cQTabWidget, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTabWidget_metacall ".} =
  type Cb = proc(super: QTabWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QTabWidget(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QTabWidget, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQTabWidget_virtualbase_sizeHint(self.h))

type QTabWidgetsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QTabWidget, slot: proc(super: QTabWidgetsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_sizeHint(self: ptr cQTabWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTabWidget_sizeHint ".} =
  type Cb = proc(super: QTabWidgetsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QTabWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QTabWidget, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQTabWidget_virtualbase_minimumSizeHint(self.h))

type QTabWidgetminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QTabWidget, slot: proc(super: QTabWidgetminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_minimumSizeHint(self: ptr cQTabWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTabWidget_minimumSizeHint ".} =
  type Cb = proc(super: QTabWidgetminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QTabWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QTabWidget, width: cint): cint =


  fQTabWidget_virtualbase_heightForWidth(self.h, width)

type QTabWidgetheightForWidthBase* = proc(width: cint): cint
proc onheightForWidth*(self: QTabWidget, slot: proc(super: QTabWidgetheightForWidthBase, width: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetheightForWidthBase, width: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_heightForWidth(self: ptr cQTabWidget, slot: int, width: cint): cint {.exportc: "miqt_exec_callback_QTabWidget_heightForWidth ".} =
  type Cb = proc(super: QTabWidgetheightForWidthBase, width: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(width: cint): auto =
    callVirtualBase_heightForWidth(QTabWidget(h: self), width)
  let slotval1 = width


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QTabWidget, ): bool =


  fQTabWidget_virtualbase_hasHeightForWidth(self.h)

type QTabWidgethasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QTabWidget, slot: proc(super: QTabWidgethasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgethasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_hasHeightForWidth(self: ptr cQTabWidget, slot: int): bool {.exportc: "miqt_exec_callback_QTabWidget_hasHeightForWidth ".} =
  type Cb = proc(super: QTabWidgethasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QTabWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_tabInserted(self: QTabWidget, index: cint): void =


  fQTabWidget_virtualbase_tabInserted(self.h, index)

type QTabWidgettabInsertedBase* = proc(index: cint): void
proc ontabInserted*(self: QTabWidget, slot: proc(super: QTabWidgettabInsertedBase, index: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgettabInsertedBase, index: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_tabInserted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_tabInserted(self: ptr cQTabWidget, slot: int, index: cint): void {.exportc: "miqt_exec_callback_QTabWidget_tabInserted ".} =
  type Cb = proc(super: QTabWidgettabInsertedBase, index: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: cint): auto =
    callVirtualBase_tabInserted(QTabWidget(h: self), index)
  let slotval1 = index


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabRemoved(self: QTabWidget, index: cint): void =


  fQTabWidget_virtualbase_tabRemoved(self.h, index)

type QTabWidgettabRemovedBase* = proc(index: cint): void
proc ontabRemoved*(self: QTabWidget, slot: proc(super: QTabWidgettabRemovedBase, index: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgettabRemovedBase, index: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_tabRemoved(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_tabRemoved(self: ptr cQTabWidget, slot: int, index: cint): void {.exportc: "miqt_exec_callback_QTabWidget_tabRemoved ".} =
  type Cb = proc(super: QTabWidgettabRemovedBase, index: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: cint): auto =
    callVirtualBase_tabRemoved(QTabWidget(h: self), index)
  let slotval1 = index


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QTabWidget, param1: gen_qevent.QShowEvent): void =


  fQTabWidget_virtualbase_showEvent(self.h, param1.h)

type QTabWidgetshowEventBase* = proc(param1: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QTabWidget, slot: proc(super: QTabWidgetshowEventBase, param1: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetshowEventBase, param1: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_showEvent(self: ptr cQTabWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_showEvent ".} =
  type Cb = proc(super: QTabWidgetshowEventBase, param1: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QTabWidget(h: self), param1)
  let slotval1 = gen_qevent.QShowEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QTabWidget, param1: gen_qevent.QResizeEvent): void =


  fQTabWidget_virtualbase_resizeEvent(self.h, param1.h)

type QTabWidgetresizeEventBase* = proc(param1: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QTabWidget, slot: proc(super: QTabWidgetresizeEventBase, param1: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_resizeEvent(self: ptr cQTabWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_resizeEvent ".} =
  type Cb = proc(super: QTabWidgetresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QTabWidget(h: self), param1)
  let slotval1 = gen_qevent.QResizeEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QTabWidget, param1: gen_qevent.QKeyEvent): void =


  fQTabWidget_virtualbase_keyPressEvent(self.h, param1.h)

type QTabWidgetkeyPressEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QTabWidget, slot: proc(super: QTabWidgetkeyPressEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_keyPressEvent(self: ptr cQTabWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_keyPressEvent ".} =
  type Cb = proc(super: QTabWidgetkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QTabWidget(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QTabWidget, param1: gen_qevent.QPaintEvent): void =


  fQTabWidget_virtualbase_paintEvent(self.h, param1.h)

type QTabWidgetpaintEventBase* = proc(param1: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QTabWidget, slot: proc(super: QTabWidgetpaintEventBase, param1: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_paintEvent(self: ptr cQTabWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_paintEvent ".} =
  type Cb = proc(super: QTabWidgetpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QTabWidget(h: self), param1)
  let slotval1 = gen_qevent.QPaintEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QTabWidget, param1: gen_qcoreevent.QEvent): void =


  fQTabWidget_virtualbase_changeEvent(self.h, param1.h)

type QTabWidgetchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QTabWidget, slot: proc(super: QTabWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_changeEvent(self: ptr cQTabWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_changeEvent ".} =
  type Cb = proc(super: QTabWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QTabWidget(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QTabWidget, param1: gen_qcoreevent.QEvent): bool =


  fQTabWidget_virtualbase_event(self.h, param1.h)

type QTabWidgeteventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QTabWidget, slot: proc(super: QTabWidgeteventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgeteventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_event(self: ptr cQTabWidget, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QTabWidget_event ".} =
  type Cb = proc(super: QTabWidgeteventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QTabWidget(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initStyleOption(self: QTabWidget, option: gen_qstyleoption.QStyleOptionTabWidgetFrame): void =


  fQTabWidget_virtualbase_initStyleOption(self.h, option.h)

type QTabWidgetinitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOptionTabWidgetFrame): void
proc oninitStyleOption*(self: QTabWidget, slot: proc(super: QTabWidgetinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionTabWidgetFrame): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionTabWidgetFrame): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_initStyleOption(self: ptr cQTabWidget, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_initStyleOption ".} =
  type Cb = proc(super: QTabWidgetinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionTabWidgetFrame): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionTabWidgetFrame): auto =
    callVirtualBase_initStyleOption(QTabWidget(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOptionTabWidgetFrame(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QTabWidget, ): cint =


  fQTabWidget_virtualbase_devType(self.h)

type QTabWidgetdevTypeBase* = proc(): cint
proc ondevType*(self: QTabWidget, slot: proc(super: QTabWidgetdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_devType(self: ptr cQTabWidget, slot: int): cint {.exportc: "miqt_exec_callback_QTabWidget_devType ".} =
  type Cb = proc(super: QTabWidgetdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QTabWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QTabWidget, visible: bool): void =


  fQTabWidget_virtualbase_setVisible(self.h, visible)

type QTabWidgetsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QTabWidget, slot: proc(super: QTabWidgetsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_setVisible(self: ptr cQTabWidget, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QTabWidget_setVisible ".} =
  type Cb = proc(super: QTabWidgetsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QTabWidget(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEngine(self: QTabWidget, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQTabWidget_virtualbase_paintEngine(self.h))

type QTabWidgetpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QTabWidget, slot: proc(super: QTabWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_paintEngine(self: ptr cQTabWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTabWidget_paintEngine ".} =
  type Cb = proc(super: QTabWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QTabWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mousePressEvent(self: QTabWidget, event: gen_qevent.QMouseEvent): void =


  fQTabWidget_virtualbase_mousePressEvent(self.h, event.h)

type QTabWidgetmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QTabWidget, slot: proc(super: QTabWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_mousePressEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_mousePressEvent ".} =
  type Cb = proc(super: QTabWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QTabWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QTabWidget, event: gen_qevent.QMouseEvent): void =


  fQTabWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

type QTabWidgetmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QTabWidget, slot: proc(super: QTabWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_mouseReleaseEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_mouseReleaseEvent ".} =
  type Cb = proc(super: QTabWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QTabWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QTabWidget, event: gen_qevent.QMouseEvent): void =


  fQTabWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QTabWidgetmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QTabWidget, slot: proc(super: QTabWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_mouseDoubleClickEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QTabWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QTabWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QTabWidget, event: gen_qevent.QMouseEvent): void =


  fQTabWidget_virtualbase_mouseMoveEvent(self.h, event.h)

type QTabWidgetmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QTabWidget, slot: proc(super: QTabWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_mouseMoveEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_mouseMoveEvent ".} =
  type Cb = proc(super: QTabWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QTabWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QTabWidget, event: gen_qevent.QWheelEvent): void =


  fQTabWidget_virtualbase_wheelEvent(self.h, event.h)

type QTabWidgetwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QTabWidget, slot: proc(super: QTabWidgetwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_wheelEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_wheelEvent ".} =
  type Cb = proc(super: QTabWidgetwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QTabWidget(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QTabWidget, event: gen_qevent.QKeyEvent): void =


  fQTabWidget_virtualbase_keyReleaseEvent(self.h, event.h)

type QTabWidgetkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QTabWidget, slot: proc(super: QTabWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_keyReleaseEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_keyReleaseEvent ".} =
  type Cb = proc(super: QTabWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QTabWidget(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QTabWidget, event: gen_qevent.QFocusEvent): void =


  fQTabWidget_virtualbase_focusInEvent(self.h, event.h)

type QTabWidgetfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QTabWidget, slot: proc(super: QTabWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_focusInEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_focusInEvent ".} =
  type Cb = proc(super: QTabWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QTabWidget(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QTabWidget, event: gen_qevent.QFocusEvent): void =


  fQTabWidget_virtualbase_focusOutEvent(self.h, event.h)

type QTabWidgetfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QTabWidget, slot: proc(super: QTabWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_focusOutEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_focusOutEvent ".} =
  type Cb = proc(super: QTabWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QTabWidget(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QTabWidget, event: gen_qevent.QEnterEvent): void =


  fQTabWidget_virtualbase_enterEvent(self.h, event.h)

type QTabWidgetenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QTabWidget, slot: proc(super: QTabWidgetenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_enterEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_enterEvent ".} =
  type Cb = proc(super: QTabWidgetenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QTabWidget(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QTabWidget, event: gen_qcoreevent.QEvent): void =


  fQTabWidget_virtualbase_leaveEvent(self.h, event.h)

type QTabWidgetleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QTabWidget, slot: proc(super: QTabWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_leaveEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_leaveEvent ".} =
  type Cb = proc(super: QTabWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QTabWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QTabWidget, event: gen_qevent.QMoveEvent): void =


  fQTabWidget_virtualbase_moveEvent(self.h, event.h)

type QTabWidgetmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QTabWidget, slot: proc(super: QTabWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_moveEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_moveEvent ".} =
  type Cb = proc(super: QTabWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QTabWidget(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QTabWidget, event: gen_qevent.QCloseEvent): void =


  fQTabWidget_virtualbase_closeEvent(self.h, event.h)

type QTabWidgetcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QTabWidget, slot: proc(super: QTabWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_closeEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_closeEvent ".} =
  type Cb = proc(super: QTabWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QTabWidget(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QTabWidget, event: gen_qevent.QContextMenuEvent): void =


  fQTabWidget_virtualbase_contextMenuEvent(self.h, event.h)

type QTabWidgetcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QTabWidget, slot: proc(super: QTabWidgetcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_contextMenuEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_contextMenuEvent ".} =
  type Cb = proc(super: QTabWidgetcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QTabWidget(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QTabWidget, event: gen_qevent.QTabletEvent): void =


  fQTabWidget_virtualbase_tabletEvent(self.h, event.h)

type QTabWidgettabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QTabWidget, slot: proc(super: QTabWidgettabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgettabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_tabletEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_tabletEvent ".} =
  type Cb = proc(super: QTabWidgettabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QTabWidget(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QTabWidget, event: gen_qevent.QActionEvent): void =


  fQTabWidget_virtualbase_actionEvent(self.h, event.h)

type QTabWidgetactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QTabWidget, slot: proc(super: QTabWidgetactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_actionEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_actionEvent ".} =
  type Cb = proc(super: QTabWidgetactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QTabWidget(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QTabWidget, event: gen_qevent.QDragEnterEvent): void =


  fQTabWidget_virtualbase_dragEnterEvent(self.h, event.h)

type QTabWidgetdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QTabWidget, slot: proc(super: QTabWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_dragEnterEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_dragEnterEvent ".} =
  type Cb = proc(super: QTabWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QTabWidget(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QTabWidget, event: gen_qevent.QDragMoveEvent): void =


  fQTabWidget_virtualbase_dragMoveEvent(self.h, event.h)

type QTabWidgetdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QTabWidget, slot: proc(super: QTabWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_dragMoveEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_dragMoveEvent ".} =
  type Cb = proc(super: QTabWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QTabWidget(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QTabWidget, event: gen_qevent.QDragLeaveEvent): void =


  fQTabWidget_virtualbase_dragLeaveEvent(self.h, event.h)

type QTabWidgetdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QTabWidget, slot: proc(super: QTabWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_dragLeaveEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_dragLeaveEvent ".} =
  type Cb = proc(super: QTabWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QTabWidget(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QTabWidget, event: gen_qevent.QDropEvent): void =


  fQTabWidget_virtualbase_dropEvent(self.h, event.h)

type QTabWidgetdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QTabWidget, slot: proc(super: QTabWidgetdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_dropEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_dropEvent ".} =
  type Cb = proc(super: QTabWidgetdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QTabWidget(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QTabWidget, event: gen_qevent.QHideEvent): void =


  fQTabWidget_virtualbase_hideEvent(self.h, event.h)

type QTabWidgethideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QTabWidget, slot: proc(super: QTabWidgethideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgethideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_hideEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_hideEvent ".} =
  type Cb = proc(super: QTabWidgethideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QTabWidget(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QTabWidget, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQTabWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QTabWidgetnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QTabWidget, slot: proc(super: QTabWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_nativeEvent(self: ptr cQTabWidget, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QTabWidget_nativeEvent ".} =
  type Cb = proc(super: QTabWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QTabWidget(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QTabWidget, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQTabWidget_virtualbase_metric(self.h, cint(param1))

type QTabWidgetmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QTabWidget, slot: proc(super: QTabWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_metric(self: ptr cQTabWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTabWidget_metric ".} =
  type Cb = proc(super: QTabWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QTabWidget(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QTabWidget, painter: gen_qpainter.QPainter): void =


  fQTabWidget_virtualbase_initPainter(self.h, painter.h)

type QTabWidgetinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QTabWidget, slot: proc(super: QTabWidgetinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_initPainter(self: ptr cQTabWidget, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_initPainter ".} =
  type Cb = proc(super: QTabWidgetinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QTabWidget(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QTabWidget, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQTabWidget_virtualbase_redirected(self.h, offset.h))

type QTabWidgetredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QTabWidget, slot: proc(super: QTabWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_redirected(self: ptr cQTabWidget, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QTabWidget_redirected ".} =
  type Cb = proc(super: QTabWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QTabWidget(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QTabWidget, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQTabWidget_virtualbase_sharedPainter(self.h))

type QTabWidgetsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QTabWidget, slot: proc(super: QTabWidgetsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_sharedPainter(self: ptr cQTabWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTabWidget_sharedPainter ".} =
  type Cb = proc(super: QTabWidgetsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QTabWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QTabWidget, param1: gen_qevent.QInputMethodEvent): void =


  fQTabWidget_virtualbase_inputMethodEvent(self.h, param1.h)

type QTabWidgetinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QTabWidget, slot: proc(super: QTabWidgetinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_inputMethodEvent(self: ptr cQTabWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_inputMethodEvent ".} =
  type Cb = proc(super: QTabWidgetinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QTabWidget(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QTabWidget, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQTabWidget_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QTabWidgetinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QTabWidget, slot: proc(super: QTabWidgetinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_inputMethodQuery(self: ptr cQTabWidget, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QTabWidget_inputMethodQuery ".} =
  type Cb = proc(super: QTabWidgetinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QTabWidget(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QTabWidget, next: bool): bool =


  fQTabWidget_virtualbase_focusNextPrevChild(self.h, next)

type QTabWidgetfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QTabWidget, slot: proc(super: QTabWidgetfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_focusNextPrevChild(self: ptr cQTabWidget, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QTabWidget_focusNextPrevChild ".} =
  type Cb = proc(super: QTabWidgetfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QTabWidget(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QTabWidget, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQTabWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTabWidgeteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QTabWidget, slot: proc(super: QTabWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_eventFilter(self: ptr cQTabWidget, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTabWidget_eventFilter ".} =
  type Cb = proc(super: QTabWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QTabWidget(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QTabWidget, event: gen_qcoreevent.QTimerEvent): void =


  fQTabWidget_virtualbase_timerEvent(self.h, event.h)

type QTabWidgettimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QTabWidget, slot: proc(super: QTabWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_timerEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_timerEvent ".} =
  type Cb = proc(super: QTabWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QTabWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QTabWidget, event: gen_qcoreevent.QChildEvent): void =


  fQTabWidget_virtualbase_childEvent(self.h, event.h)

type QTabWidgetchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QTabWidget, slot: proc(super: QTabWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_childEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_childEvent ".} =
  type Cb = proc(super: QTabWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QTabWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QTabWidget, event: gen_qcoreevent.QEvent): void =


  fQTabWidget_virtualbase_customEvent(self.h, event.h)

type QTabWidgetcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QTabWidget, slot: proc(super: QTabWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_customEvent(self: ptr cQTabWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_customEvent ".} =
  type Cb = proc(super: QTabWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QTabWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QTabWidget, signal: gen_qmetaobject.QMetaMethod): void =


  fQTabWidget_virtualbase_connectNotify(self.h, signal.h)

type QTabWidgetconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QTabWidget, slot: proc(super: QTabWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_connectNotify(self: ptr cQTabWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_connectNotify ".} =
  type Cb = proc(super: QTabWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QTabWidget(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QTabWidget, signal: gen_qmetaobject.QMetaMethod): void =


  fQTabWidget_virtualbase_disconnectNotify(self.h, signal.h)

type QTabWidgetdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QTabWidget, slot: proc(super: QTabWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTabWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabWidget_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabWidget_disconnectNotify(self: ptr cQTabWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTabWidget_disconnectNotify ".} =
  type Cb = proc(super: QTabWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QTabWidget(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QTabWidget) =
  fcQTabWidget_delete(self.h)
