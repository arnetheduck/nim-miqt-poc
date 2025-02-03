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
{.compile("gen_qmenu.cpp", cflags).}


import gen_qmenu_types
export gen_qmenu_types

import
  gen_qaction,
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
  gen_qaction,
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

type cQMenu*{.exportc: "QMenu", incompleteStruct.} = object

proc fcQMenu_new(parent: pointer): ptr cQMenu {.importc: "QMenu_new".}
proc fcQMenu_new2(): ptr cQMenu {.importc: "QMenu_new2".}
proc fcQMenu_new3(title: struct_miqt_string): ptr cQMenu {.importc: "QMenu_new3".}
proc fcQMenu_new4(title: struct_miqt_string, parent: pointer): ptr cQMenu {.importc: "QMenu_new4".}
proc fcQMenu_metaObject(self: pointer, ): pointer {.importc: "QMenu_metaObject".}
proc fcQMenu_metacast(self: pointer, param1: cstring): pointer {.importc: "QMenu_metacast".}
proc fcQMenu_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMenu_metacall".}
proc fcQMenu_tr(s: cstring): struct_miqt_string {.importc: "QMenu_tr".}
proc fcQMenu_trUtf8(s: cstring): struct_miqt_string {.importc: "QMenu_trUtf8".}
proc fcQMenu_addAction(self: pointer, text: struct_miqt_string): pointer {.importc: "QMenu_addAction".}
proc fcQMenu_addAction2(self: pointer, icon: pointer, text: struct_miqt_string): pointer {.importc: "QMenu_addAction2".}
proc fcQMenu_addMenu(self: pointer, menu: pointer): pointer {.importc: "QMenu_addMenu".}
proc fcQMenu_addMenuWithTitle(self: pointer, title: struct_miqt_string): pointer {.importc: "QMenu_addMenuWithTitle".}
proc fcQMenu_addMenu2(self: pointer, icon: pointer, title: struct_miqt_string): pointer {.importc: "QMenu_addMenu2".}
proc fcQMenu_addSeparator(self: pointer, ): pointer {.importc: "QMenu_addSeparator".}
proc fcQMenu_addSection(self: pointer, text: struct_miqt_string): pointer {.importc: "QMenu_addSection".}
proc fcQMenu_addSection2(self: pointer, icon: pointer, text: struct_miqt_string): pointer {.importc: "QMenu_addSection2".}
proc fcQMenu_insertMenu(self: pointer, before: pointer, menu: pointer): pointer {.importc: "QMenu_insertMenu".}
proc fcQMenu_insertSeparator(self: pointer, before: pointer): pointer {.importc: "QMenu_insertSeparator".}
proc fcQMenu_insertSection(self: pointer, before: pointer, text: struct_miqt_string): pointer {.importc: "QMenu_insertSection".}
proc fcQMenu_insertSection2(self: pointer, before: pointer, icon: pointer, text: struct_miqt_string): pointer {.importc: "QMenu_insertSection2".}
proc fcQMenu_isEmpty(self: pointer, ): bool {.importc: "QMenu_isEmpty".}
proc fcQMenu_clear(self: pointer, ): void {.importc: "QMenu_clear".}
proc fcQMenu_setTearOffEnabled(self: pointer, tearOffEnabled: bool): void {.importc: "QMenu_setTearOffEnabled".}
proc fcQMenu_isTearOffEnabled(self: pointer, ): bool {.importc: "QMenu_isTearOffEnabled".}
proc fcQMenu_isTearOffMenuVisible(self: pointer, ): bool {.importc: "QMenu_isTearOffMenuVisible".}
proc fcQMenu_showTearOffMenu(self: pointer, ): void {.importc: "QMenu_showTearOffMenu".}
proc fcQMenu_showTearOffMenuWithPos(self: pointer, pos: pointer): void {.importc: "QMenu_showTearOffMenuWithPos".}
proc fcQMenu_hideTearOffMenu(self: pointer, ): void {.importc: "QMenu_hideTearOffMenu".}
proc fcQMenu_setDefaultAction(self: pointer, defaultAction: pointer): void {.importc: "QMenu_setDefaultAction".}
proc fcQMenu_defaultAction(self: pointer, ): pointer {.importc: "QMenu_defaultAction".}
proc fcQMenu_setActiveAction(self: pointer, act: pointer): void {.importc: "QMenu_setActiveAction".}
proc fcQMenu_activeAction(self: pointer, ): pointer {.importc: "QMenu_activeAction".}
proc fcQMenu_popup(self: pointer, pos: pointer): void {.importc: "QMenu_popup".}
proc fcQMenu_exec(self: pointer, ): pointer {.importc: "QMenu_exec".}
proc fcQMenu_execWithPos(self: pointer, pos: pointer): pointer {.importc: "QMenu_execWithPos".}
proc fcQMenu_exec2(actions: struct_miqt_array, pos: pointer): pointer {.importc: "QMenu_exec2".}
proc fcQMenu_sizeHint(self: pointer, ): pointer {.importc: "QMenu_sizeHint".}
proc fcQMenu_actionGeometry(self: pointer, param1: pointer): pointer {.importc: "QMenu_actionGeometry".}
proc fcQMenu_actionAt(self: pointer, param1: pointer): pointer {.importc: "QMenu_actionAt".}
proc fcQMenu_menuAction(self: pointer, ): pointer {.importc: "QMenu_menuAction".}
proc fcQMenu_title(self: pointer, ): struct_miqt_string {.importc: "QMenu_title".}
proc fcQMenu_setTitle(self: pointer, title: struct_miqt_string): void {.importc: "QMenu_setTitle".}
proc fcQMenu_icon(self: pointer, ): pointer {.importc: "QMenu_icon".}
proc fcQMenu_setIcon(self: pointer, icon: pointer): void {.importc: "QMenu_setIcon".}
proc fcQMenu_setNoReplayFor(self: pointer, widget: pointer): void {.importc: "QMenu_setNoReplayFor".}
proc fcQMenu_separatorsCollapsible(self: pointer, ): bool {.importc: "QMenu_separatorsCollapsible".}
proc fcQMenu_setSeparatorsCollapsible(self: pointer, collapse: bool): void {.importc: "QMenu_setSeparatorsCollapsible".}
proc fcQMenu_toolTipsVisible(self: pointer, ): bool {.importc: "QMenu_toolTipsVisible".}
proc fcQMenu_setToolTipsVisible(self: pointer, visible: bool): void {.importc: "QMenu_setToolTipsVisible".}
proc fcQMenu_aboutToShow(self: pointer, ): void {.importc: "QMenu_aboutToShow".}
proc fQMenu_connect_aboutToShow(self: pointer, slot: int) {.importc: "QMenu_connect_aboutToShow".}
proc fcQMenu_aboutToHide(self: pointer, ): void {.importc: "QMenu_aboutToHide".}
proc fQMenu_connect_aboutToHide(self: pointer, slot: int) {.importc: "QMenu_connect_aboutToHide".}
proc fcQMenu_triggered(self: pointer, action: pointer): void {.importc: "QMenu_triggered".}
proc fQMenu_connect_triggered(self: pointer, slot: int) {.importc: "QMenu_connect_triggered".}
proc fcQMenu_hovered(self: pointer, action: pointer): void {.importc: "QMenu_hovered".}
proc fQMenu_connect_hovered(self: pointer, slot: int) {.importc: "QMenu_connect_hovered".}
proc fcQMenu_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMenu_tr2".}
proc fcQMenu_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMenu_tr3".}
proc fcQMenu_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMenu_trUtf82".}
proc fcQMenu_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMenu_trUtf83".}
proc fcQMenu_popup2(self: pointer, pos: pointer, at: pointer): void {.importc: "QMenu_popup2".}
proc fcQMenu_exec22(self: pointer, pos: pointer, at: pointer): pointer {.importc: "QMenu_exec22".}
proc fcQMenu_exec3(actions: struct_miqt_array, pos: pointer, at: pointer): pointer {.importc: "QMenu_exec3".}
proc fcQMenu_exec4(actions: struct_miqt_array, pos: pointer, at: pointer, parent: pointer): pointer {.importc: "QMenu_exec4".}
proc fQMenu_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QMenu_virtualbase_metacall".}
proc fcQMenu_override_virtual_metacall(self: pointer, slot: int) {.importc: "QMenu_override_virtual_metacall".}
proc fQMenu_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QMenu_virtualbase_sizeHint".}
proc fcQMenu_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QMenu_override_virtual_sizeHint".}
proc fQMenu_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QMenu_virtualbase_changeEvent".}
proc fcQMenu_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_changeEvent".}
proc fQMenu_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QMenu_virtualbase_keyPressEvent".}
proc fcQMenu_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_keyPressEvent".}
proc fQMenu_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QMenu_virtualbase_mouseReleaseEvent".}
proc fcQMenu_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_mouseReleaseEvent".}
proc fQMenu_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QMenu_virtualbase_mousePressEvent".}
proc fcQMenu_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_mousePressEvent".}
proc fQMenu_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QMenu_virtualbase_mouseMoveEvent".}
proc fcQMenu_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_mouseMoveEvent".}
proc fQMenu_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QMenu_virtualbase_wheelEvent".}
proc fcQMenu_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_wheelEvent".}
proc fQMenu_virtualbase_enterEvent(self: pointer, param1: pointer): void{.importc: "QMenu_virtualbase_enterEvent".}
proc fcQMenu_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_enterEvent".}
proc fQMenu_virtualbase_leaveEvent(self: pointer, param1: pointer): void{.importc: "QMenu_virtualbase_leaveEvent".}
proc fcQMenu_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_leaveEvent".}
proc fQMenu_virtualbase_hideEvent(self: pointer, param1: pointer): void{.importc: "QMenu_virtualbase_hideEvent".}
proc fcQMenu_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_hideEvent".}
proc fQMenu_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QMenu_virtualbase_paintEvent".}
proc fcQMenu_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_paintEvent".}
proc fQMenu_virtualbase_actionEvent(self: pointer, param1: pointer): void{.importc: "QMenu_virtualbase_actionEvent".}
proc fcQMenu_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_actionEvent".}
proc fQMenu_virtualbase_timerEvent(self: pointer, param1: pointer): void{.importc: "QMenu_virtualbase_timerEvent".}
proc fcQMenu_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_timerEvent".}
proc fQMenu_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QMenu_virtualbase_event".}
proc fcQMenu_override_virtual_event(self: pointer, slot: int) {.importc: "QMenu_override_virtual_event".}
proc fQMenu_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QMenu_virtualbase_focusNextPrevChild".}
proc fcQMenu_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QMenu_override_virtual_focusNextPrevChild".}
proc fQMenu_virtualbase_devType(self: pointer, ): cint{.importc: "QMenu_virtualbase_devType".}
proc fcQMenu_override_virtual_devType(self: pointer, slot: int) {.importc: "QMenu_override_virtual_devType".}
proc fQMenu_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QMenu_virtualbase_setVisible".}
proc fcQMenu_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QMenu_override_virtual_setVisible".}
proc fQMenu_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QMenu_virtualbase_minimumSizeHint".}
proc fcQMenu_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QMenu_override_virtual_minimumSizeHint".}
proc fQMenu_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QMenu_virtualbase_heightForWidth".}
proc fcQMenu_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QMenu_override_virtual_heightForWidth".}
proc fQMenu_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QMenu_virtualbase_hasHeightForWidth".}
proc fcQMenu_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QMenu_override_virtual_hasHeightForWidth".}
proc fQMenu_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QMenu_virtualbase_paintEngine".}
proc fcQMenu_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QMenu_override_virtual_paintEngine".}
proc fQMenu_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_mouseDoubleClickEvent".}
proc fcQMenu_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_mouseDoubleClickEvent".}
proc fQMenu_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_keyReleaseEvent".}
proc fcQMenu_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_keyReleaseEvent".}
proc fQMenu_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_focusInEvent".}
proc fcQMenu_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_focusInEvent".}
proc fQMenu_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_focusOutEvent".}
proc fcQMenu_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_focusOutEvent".}
proc fQMenu_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_moveEvent".}
proc fcQMenu_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_moveEvent".}
proc fQMenu_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_resizeEvent".}
proc fcQMenu_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_resizeEvent".}
proc fQMenu_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_closeEvent".}
proc fcQMenu_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_closeEvent".}
proc fQMenu_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_contextMenuEvent".}
proc fcQMenu_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_contextMenuEvent".}
proc fQMenu_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_tabletEvent".}
proc fcQMenu_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_tabletEvent".}
proc fQMenu_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_dragEnterEvent".}
proc fcQMenu_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_dragEnterEvent".}
proc fQMenu_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_dragMoveEvent".}
proc fcQMenu_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_dragMoveEvent".}
proc fQMenu_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_dragLeaveEvent".}
proc fcQMenu_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_dragLeaveEvent".}
proc fQMenu_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_dropEvent".}
proc fcQMenu_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_dropEvent".}
proc fQMenu_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_showEvent".}
proc fcQMenu_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_showEvent".}
proc fQMenu_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QMenu_virtualbase_nativeEvent".}
proc fcQMenu_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_nativeEvent".}
proc fQMenu_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QMenu_virtualbase_metric".}
proc fcQMenu_override_virtual_metric(self: pointer, slot: int) {.importc: "QMenu_override_virtual_metric".}
proc fQMenu_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QMenu_virtualbase_initPainter".}
proc fcQMenu_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QMenu_override_virtual_initPainter".}
proc fQMenu_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QMenu_virtualbase_redirected".}
proc fcQMenu_override_virtual_redirected(self: pointer, slot: int) {.importc: "QMenu_override_virtual_redirected".}
proc fQMenu_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QMenu_virtualbase_sharedPainter".}
proc fcQMenu_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QMenu_override_virtual_sharedPainter".}
proc fQMenu_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QMenu_virtualbase_inputMethodEvent".}
proc fcQMenu_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_inputMethodEvent".}
proc fQMenu_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QMenu_virtualbase_inputMethodQuery".}
proc fcQMenu_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QMenu_override_virtual_inputMethodQuery".}
proc fQMenu_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QMenu_virtualbase_eventFilter".}
proc fcQMenu_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QMenu_override_virtual_eventFilter".}
proc fQMenu_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_childEvent".}
proc fcQMenu_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_childEvent".}
proc fQMenu_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QMenu_virtualbase_customEvent".}
proc fcQMenu_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QMenu_override_virtual_customEvent".}
proc fQMenu_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QMenu_virtualbase_connectNotify".}
proc fcQMenu_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QMenu_override_virtual_connectNotify".}
proc fQMenu_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QMenu_virtualbase_disconnectNotify".}
proc fcQMenu_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QMenu_override_virtual_disconnectNotify".}
proc fcQMenu_delete(self: pointer) {.importc: "QMenu_delete".}


func init*(T: type QMenu, h: ptr cQMenu): QMenu =
  T(h: h)
proc create*(T: type QMenu, parent: gen_qwidget.QWidget): QMenu =

  QMenu.init(fcQMenu_new(parent.h))
proc create*(T: type QMenu, ): QMenu =

  QMenu.init(fcQMenu_new2())
proc create*(T: type QMenu, title: string): QMenu =

  QMenu.init(fcQMenu_new3(struct_miqt_string(data: title, len: csize_t(len(title)))))
proc create*(T: type QMenu, title: string, parent: gen_qwidget.QWidget): QMenu =

  QMenu.init(fcQMenu_new4(struct_miqt_string(data: title, len: csize_t(len(title))), parent.h))
proc metaObject*(self: QMenu, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMenu_metaObject(self.h))

proc metacast*(self: QMenu, param1: cstring): pointer =

  fcQMenu_metacast(self.h, param1)

proc metacall*(self: QMenu, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQMenu_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QMenu, s: cstring): string =

  let v_ms = fcQMenu_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QMenu, s: cstring): string =

  let v_ms = fcQMenu_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addAction*(self: QMenu, text: string): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQMenu_addAction(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc addAction2*(self: QMenu, icon: gen_qicon.QIcon, text: string): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQMenu_addAction2(self.h, icon.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc addMenu*(self: QMenu, menu: QMenu): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQMenu_addMenu(self.h, menu.h))

proc addMenuWithTitle*(self: QMenu, title: string): QMenu =

  QMenu(h: fcQMenu_addMenuWithTitle(self.h, struct_miqt_string(data: title, len: csize_t(len(title)))))

proc addMenu2*(self: QMenu, icon: gen_qicon.QIcon, title: string): QMenu =

  QMenu(h: fcQMenu_addMenu2(self.h, icon.h, struct_miqt_string(data: title, len: csize_t(len(title)))))

proc addSeparator*(self: QMenu, ): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQMenu_addSeparator(self.h))

proc addSection*(self: QMenu, text: string): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQMenu_addSection(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc addSection2*(self: QMenu, icon: gen_qicon.QIcon, text: string): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQMenu_addSection2(self.h, icon.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc insertMenu*(self: QMenu, before: gen_qaction.QAction, menu: QMenu): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQMenu_insertMenu(self.h, before.h, menu.h))

proc insertSeparator*(self: QMenu, before: gen_qaction.QAction): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQMenu_insertSeparator(self.h, before.h))

proc insertSection*(self: QMenu, before: gen_qaction.QAction, text: string): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQMenu_insertSection(self.h, before.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc insertSection2*(self: QMenu, before: gen_qaction.QAction, icon: gen_qicon.QIcon, text: string): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQMenu_insertSection2(self.h, before.h, icon.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc isEmpty*(self: QMenu, ): bool =

  fcQMenu_isEmpty(self.h)

proc clear*(self: QMenu, ): void =

  fcQMenu_clear(self.h)

proc setTearOffEnabled*(self: QMenu, tearOffEnabled: bool): void =

  fcQMenu_setTearOffEnabled(self.h, tearOffEnabled)

proc isTearOffEnabled*(self: QMenu, ): bool =

  fcQMenu_isTearOffEnabled(self.h)

proc isTearOffMenuVisible*(self: QMenu, ): bool =

  fcQMenu_isTearOffMenuVisible(self.h)

proc showTearOffMenu*(self: QMenu, ): void =

  fcQMenu_showTearOffMenu(self.h)

proc showTearOffMenuWithPos*(self: QMenu, pos: gen_qpoint.QPoint): void =

  fcQMenu_showTearOffMenuWithPos(self.h, pos.h)

proc hideTearOffMenu*(self: QMenu, ): void =

  fcQMenu_hideTearOffMenu(self.h)

proc setDefaultAction*(self: QMenu, defaultAction: gen_qaction.QAction): void =

  fcQMenu_setDefaultAction(self.h, defaultAction.h)

proc defaultAction*(self: QMenu, ): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQMenu_defaultAction(self.h))

proc setActiveAction*(self: QMenu, act: gen_qaction.QAction): void =

  fcQMenu_setActiveAction(self.h, act.h)

proc activeAction*(self: QMenu, ): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQMenu_activeAction(self.h))

proc popup*(self: QMenu, pos: gen_qpoint.QPoint): void =

  fcQMenu_popup(self.h, pos.h)

proc exec*(self: QMenu, ): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQMenu_exec(self.h))

proc execWithPos*(self: QMenu, pos: gen_qpoint.QPoint): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQMenu_execWithPos(self.h, pos.h))

proc exec2*(_: type QMenu, actions: seq[gen_qaction.QAction], pos: gen_qpoint.QPoint): gen_qaction.QAction =

  var actions_CArray = newSeq[pointer](len(actions))
  for i in 0..<len(actions):
    actions_CArray[i] = actions[i].h

  gen_qaction.QAction(h: fcQMenu_exec2(struct_miqt_array(len: csize_t(len(actions)), data: if len(actions) == 0: nil else: addr(actions_CArray[0])), pos.h))

proc sizeHint*(self: QMenu, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQMenu_sizeHint(self.h))

proc actionGeometry*(self: QMenu, param1: gen_qaction.QAction): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQMenu_actionGeometry(self.h, param1.h))

proc actionAt*(self: QMenu, param1: gen_qpoint.QPoint): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQMenu_actionAt(self.h, param1.h))

proc menuAction*(self: QMenu, ): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQMenu_menuAction(self.h))

proc title*(self: QMenu, ): string =

  let v_ms = fcQMenu_title(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTitle*(self: QMenu, title: string): void =

  fcQMenu_setTitle(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

proc icon*(self: QMenu, ): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQMenu_icon(self.h))

proc setIcon*(self: QMenu, icon: gen_qicon.QIcon): void =

  fcQMenu_setIcon(self.h, icon.h)

proc setNoReplayFor*(self: QMenu, widget: gen_qwidget.QWidget): void =

  fcQMenu_setNoReplayFor(self.h, widget.h)

proc separatorsCollapsible*(self: QMenu, ): bool =

  fcQMenu_separatorsCollapsible(self.h)

proc setSeparatorsCollapsible*(self: QMenu, collapse: bool): void =

  fcQMenu_setSeparatorsCollapsible(self.h, collapse)

proc toolTipsVisible*(self: QMenu, ): bool =

  fcQMenu_toolTipsVisible(self.h)

proc setToolTipsVisible*(self: QMenu, visible: bool): void =

  fcQMenu_setToolTipsVisible(self.h, visible)

proc aboutToShow*(self: QMenu, ): void =

  fcQMenu_aboutToShow(self.h)

proc miqt_exec_callback_QMenu_aboutToShow(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onaboutToShow*(self: QMenu, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMenu_connect_aboutToShow(self.h, cast[int](addr tmp[]))
proc aboutToHide*(self: QMenu, ): void =

  fcQMenu_aboutToHide(self.h)

proc miqt_exec_callback_QMenu_aboutToHide(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onaboutToHide*(self: QMenu, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMenu_connect_aboutToHide(self.h, cast[int](addr tmp[]))
proc triggered*(self: QMenu, action: gen_qaction.QAction): void =

  fcQMenu_triggered(self.h, action.h)

proc miqt_exec_callback_QMenu_triggered(slot: int, action: pointer) {.exportc.} =
  type Cb = proc(action: gen_qaction.QAction)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qaction.QAction(h: action)


  nimfunc[](slotval1)

proc ontriggered*(self: QMenu, slot: proc(action: gen_qaction.QAction)) =
  type Cb = proc(action: gen_qaction.QAction)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMenu_connect_triggered(self.h, cast[int](addr tmp[]))
proc hovered*(self: QMenu, action: gen_qaction.QAction): void =

  fcQMenu_hovered(self.h, action.h)

proc miqt_exec_callback_QMenu_hovered(slot: int, action: pointer) {.exportc.} =
  type Cb = proc(action: gen_qaction.QAction)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qaction.QAction(h: action)


  nimfunc[](slotval1)

proc onhovered*(self: QMenu, slot: proc(action: gen_qaction.QAction)) =
  type Cb = proc(action: gen_qaction.QAction)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMenu_connect_hovered(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QMenu, s: cstring, c: cstring): string =

  let v_ms = fcQMenu_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QMenu, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMenu_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QMenu, s: cstring, c: cstring): string =

  let v_ms = fcQMenu_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QMenu, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMenu_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc popup2*(self: QMenu, pos: gen_qpoint.QPoint, at: gen_qaction.QAction): void =

  fcQMenu_popup2(self.h, pos.h, at.h)

proc exec22*(self: QMenu, pos: gen_qpoint.QPoint, at: gen_qaction.QAction): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQMenu_exec22(self.h, pos.h, at.h))

proc exec3*(_: type QMenu, actions: seq[gen_qaction.QAction], pos: gen_qpoint.QPoint, at: gen_qaction.QAction): gen_qaction.QAction =

  var actions_CArray = newSeq[pointer](len(actions))
  for i in 0..<len(actions):
    actions_CArray[i] = actions[i].h

  gen_qaction.QAction(h: fcQMenu_exec3(struct_miqt_array(len: csize_t(len(actions)), data: if len(actions) == 0: nil else: addr(actions_CArray[0])), pos.h, at.h))

proc exec4*(_: type QMenu, actions: seq[gen_qaction.QAction], pos: gen_qpoint.QPoint, at: gen_qaction.QAction, parent: gen_qwidget.QWidget): gen_qaction.QAction =

  var actions_CArray = newSeq[pointer](len(actions))
  for i in 0..<len(actions):
    actions_CArray[i] = actions[i].h

  gen_qaction.QAction(h: fcQMenu_exec4(struct_miqt_array(len: csize_t(len(actions)), data: if len(actions) == 0: nil else: addr(actions_CArray[0])), pos.h, at.h, parent.h))

proc callVirtualBase_metacall(self: QMenu, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQMenu_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QMenumetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QMenu, slot: proc(super: QMenumetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QMenumetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_metacall(self: ptr cQMenu, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QMenu_metacall ".} =
  type Cb = proc(super: QMenumetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QMenu(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QMenu, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQMenu_virtualbase_sizeHint(self.h))

type QMenusizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QMenu, slot: proc(super: QMenusizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QMenusizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_sizeHint(self: ptr cQMenu, slot: int): pointer {.exportc: "miqt_exec_callback_QMenu_sizeHint ".} =
  type Cb = proc(super: QMenusizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QMenu(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_changeEvent(self: QMenu, param1: gen_qcoreevent.QEvent): void =


  fQMenu_virtualbase_changeEvent(self.h, param1.h)

type QMenuchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QMenu, slot: proc(super: QMenuchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_changeEvent(self: ptr cQMenu, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenu_changeEvent ".} =
  type Cb = proc(super: QMenuchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QMenu(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QMenu, param1: gen_qevent.QKeyEvent): void =


  fQMenu_virtualbase_keyPressEvent(self.h, param1.h)

type QMenukeyPressEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QMenu, slot: proc(super: QMenukeyPressEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenukeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_keyPressEvent(self: ptr cQMenu, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenu_keyPressEvent ".} =
  type Cb = proc(super: QMenukeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QMenu(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QMenu, param1: gen_qevent.QMouseEvent): void =


  fQMenu_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QMenumouseReleaseEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QMenu, slot: proc(super: QMenumouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenumouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_mouseReleaseEvent(self: ptr cQMenu, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenu_mouseReleaseEvent ".} =
  type Cb = proc(super: QMenumouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QMenu(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QMenu, param1: gen_qevent.QMouseEvent): void =


  fQMenu_virtualbase_mousePressEvent(self.h, param1.h)

type QMenumousePressEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QMenu, slot: proc(super: QMenumousePressEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenumousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_mousePressEvent(self: ptr cQMenu, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenu_mousePressEvent ".} =
  type Cb = proc(super: QMenumousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QMenu(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QMenu, param1: gen_qevent.QMouseEvent): void =


  fQMenu_virtualbase_mouseMoveEvent(self.h, param1.h)

type QMenumouseMoveEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QMenu, slot: proc(super: QMenumouseMoveEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenumouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_mouseMoveEvent(self: ptr cQMenu, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenu_mouseMoveEvent ".} =
  type Cb = proc(super: QMenumouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QMenu(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QMenu, param1: gen_qevent.QWheelEvent): void =


  fQMenu_virtualbase_wheelEvent(self.h, param1.h)

type QMenuwheelEventBase* = proc(param1: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QMenu, slot: proc(super: QMenuwheelEventBase, param1: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuwheelEventBase, param1: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_wheelEvent(self: ptr cQMenu, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenu_wheelEvent ".} =
  type Cb = proc(super: QMenuwheelEventBase, param1: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QMenu(h: self), param1)
  let slotval1 = gen_qevent.QWheelEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QMenu, param1: gen_qcoreevent.QEvent): void =


  fQMenu_virtualbase_enterEvent(self.h, param1.h)

type QMenuenterEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QMenu, slot: proc(super: QMenuenterEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuenterEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_enterEvent(self: ptr cQMenu, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenu_enterEvent ".} =
  type Cb = proc(super: QMenuenterEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QMenu(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QMenu, param1: gen_qcoreevent.QEvent): void =


  fQMenu_virtualbase_leaveEvent(self.h, param1.h)

type QMenuleaveEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QMenu, slot: proc(super: QMenuleaveEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuleaveEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_leaveEvent(self: ptr cQMenu, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenu_leaveEvent ".} =
  type Cb = proc(super: QMenuleaveEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QMenu(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QMenu, param1: gen_qevent.QHideEvent): void =


  fQMenu_virtualbase_hideEvent(self.h, param1.h)

type QMenuhideEventBase* = proc(param1: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QMenu, slot: proc(super: QMenuhideEventBase, param1: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuhideEventBase, param1: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_hideEvent(self: ptr cQMenu, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenu_hideEvent ".} =
  type Cb = proc(super: QMenuhideEventBase, param1: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QMenu(h: self), param1)
  let slotval1 = gen_qevent.QHideEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QMenu, param1: gen_qevent.QPaintEvent): void =


  fQMenu_virtualbase_paintEvent(self.h, param1.h)

type QMenupaintEventBase* = proc(param1: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QMenu, slot: proc(super: QMenupaintEventBase, param1: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenupaintEventBase, param1: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_paintEvent(self: ptr cQMenu, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenu_paintEvent ".} =
  type Cb = proc(super: QMenupaintEventBase, param1: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QMenu(h: self), param1)
  let slotval1 = gen_qevent.QPaintEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QMenu, param1: gen_qevent.QActionEvent): void =


  fQMenu_virtualbase_actionEvent(self.h, param1.h)

type QMenuactionEventBase* = proc(param1: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QMenu, slot: proc(super: QMenuactionEventBase, param1: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuactionEventBase, param1: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_actionEvent(self: ptr cQMenu, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenu_actionEvent ".} =
  type Cb = proc(super: QMenuactionEventBase, param1: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QMenu(h: self), param1)
  let slotval1 = gen_qevent.QActionEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QMenu, param1: gen_qcoreevent.QTimerEvent): void =


  fQMenu_virtualbase_timerEvent(self.h, param1.h)

type QMenutimerEventBase* = proc(param1: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QMenu, slot: proc(super: QMenutimerEventBase, param1: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenutimerEventBase, param1: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_timerEvent(self: ptr cQMenu, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenu_timerEvent ".} =
  type Cb = proc(super: QMenutimerEventBase, param1: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QMenu(h: self), param1)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QMenu, param1: gen_qcoreevent.QEvent): bool =


  fQMenu_virtualbase_event(self.h, param1.h)

type QMenueventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QMenu, slot: proc(super: QMenueventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QMenueventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_event(self: ptr cQMenu, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QMenu_event ".} =
  type Cb = proc(super: QMenueventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QMenu(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_focusNextPrevChild(self: QMenu, next: bool): bool =


  fQMenu_virtualbase_focusNextPrevChild(self.h, next)

type QMenufocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QMenu, slot: proc(super: QMenufocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QMenufocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_focusNextPrevChild(self: ptr cQMenu, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QMenu_focusNextPrevChild ".} =
  type Cb = proc(super: QMenufocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QMenu(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_devType(self: QMenu, ): cint =


  fQMenu_virtualbase_devType(self.h)

type QMenudevTypeBase* = proc(): cint
proc ondevType*(self: QMenu, slot: proc(super: QMenudevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QMenudevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_devType(self: ptr cQMenu, slot: int): cint {.exportc: "miqt_exec_callback_QMenu_devType ".} =
  type Cb = proc(super: QMenudevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QMenu(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QMenu, visible: bool): void =


  fQMenu_virtualbase_setVisible(self.h, visible)

type QMenusetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QMenu, slot: proc(super: QMenusetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QMenusetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_setVisible(self: ptr cQMenu, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QMenu_setVisible ".} =
  type Cb = proc(super: QMenusetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QMenu(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_minimumSizeHint(self: QMenu, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQMenu_virtualbase_minimumSizeHint(self.h))

type QMenuminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QMenu, slot: proc(super: QMenuminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QMenuminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_minimumSizeHint(self: ptr cQMenu, slot: int): pointer {.exportc: "miqt_exec_callback_QMenu_minimumSizeHint ".} =
  type Cb = proc(super: QMenuminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QMenu(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QMenu, param1: cint): cint =


  fQMenu_virtualbase_heightForWidth(self.h, param1)

type QMenuheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QMenu, slot: proc(super: QMenuheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QMenuheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_heightForWidth(self: ptr cQMenu, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QMenu_heightForWidth ".} =
  type Cb = proc(super: QMenuheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QMenu(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QMenu, ): bool =


  fQMenu_virtualbase_hasHeightForWidth(self.h)

type QMenuhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QMenu, slot: proc(super: QMenuhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QMenuhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_hasHeightForWidth(self: ptr cQMenu, slot: int): bool {.exportc: "miqt_exec_callback_QMenu_hasHeightForWidth ".} =
  type Cb = proc(super: QMenuhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QMenu(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QMenu, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQMenu_virtualbase_paintEngine(self.h))

type QMenupaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QMenu, slot: proc(super: QMenupaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QMenupaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_paintEngine(self: ptr cQMenu, slot: int): pointer {.exportc: "miqt_exec_callback_QMenu_paintEngine ".} =
  type Cb = proc(super: QMenupaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QMenu(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mouseDoubleClickEvent(self: QMenu, event: gen_qevent.QMouseEvent): void =


  fQMenu_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QMenumouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QMenu, slot: proc(super: QMenumouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenumouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_mouseDoubleClickEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QMenumouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QMenu(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QMenu, event: gen_qevent.QKeyEvent): void =


  fQMenu_virtualbase_keyReleaseEvent(self.h, event.h)

type QMenukeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QMenu, slot: proc(super: QMenukeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenukeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_keyReleaseEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_keyReleaseEvent ".} =
  type Cb = proc(super: QMenukeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QMenu(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QMenu, event: gen_qevent.QFocusEvent): void =


  fQMenu_virtualbase_focusInEvent(self.h, event.h)

type QMenufocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QMenu, slot: proc(super: QMenufocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenufocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_focusInEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_focusInEvent ".} =
  type Cb = proc(super: QMenufocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QMenu(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QMenu, event: gen_qevent.QFocusEvent): void =


  fQMenu_virtualbase_focusOutEvent(self.h, event.h)

type QMenufocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QMenu, slot: proc(super: QMenufocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenufocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_focusOutEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_focusOutEvent ".} =
  type Cb = proc(super: QMenufocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QMenu(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QMenu, event: gen_qevent.QMoveEvent): void =


  fQMenu_virtualbase_moveEvent(self.h, event.h)

type QMenumoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QMenu, slot: proc(super: QMenumoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenumoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_moveEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_moveEvent ".} =
  type Cb = proc(super: QMenumoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QMenu(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QMenu, event: gen_qevent.QResizeEvent): void =


  fQMenu_virtualbase_resizeEvent(self.h, event.h)

type QMenuresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QMenu, slot: proc(super: QMenuresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_resizeEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_resizeEvent ".} =
  type Cb = proc(super: QMenuresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QMenu(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QMenu, event: gen_qevent.QCloseEvent): void =


  fQMenu_virtualbase_closeEvent(self.h, event.h)

type QMenucloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QMenu, slot: proc(super: QMenucloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenucloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_closeEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_closeEvent ".} =
  type Cb = proc(super: QMenucloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QMenu(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QMenu, event: gen_qevent.QContextMenuEvent): void =


  fQMenu_virtualbase_contextMenuEvent(self.h, event.h)

type QMenucontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QMenu, slot: proc(super: QMenucontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenucontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_contextMenuEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_contextMenuEvent ".} =
  type Cb = proc(super: QMenucontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QMenu(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QMenu, event: gen_qevent.QTabletEvent): void =


  fQMenu_virtualbase_tabletEvent(self.h, event.h)

type QMenutabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QMenu, slot: proc(super: QMenutabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenutabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_tabletEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_tabletEvent ".} =
  type Cb = proc(super: QMenutabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QMenu(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QMenu, event: gen_qevent.QDragEnterEvent): void =


  fQMenu_virtualbase_dragEnterEvent(self.h, event.h)

type QMenudragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QMenu, slot: proc(super: QMenudragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenudragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_dragEnterEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_dragEnterEvent ".} =
  type Cb = proc(super: QMenudragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QMenu(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QMenu, event: gen_qevent.QDragMoveEvent): void =


  fQMenu_virtualbase_dragMoveEvent(self.h, event.h)

type QMenudragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QMenu, slot: proc(super: QMenudragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenudragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_dragMoveEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_dragMoveEvent ".} =
  type Cb = proc(super: QMenudragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QMenu(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QMenu, event: gen_qevent.QDragLeaveEvent): void =


  fQMenu_virtualbase_dragLeaveEvent(self.h, event.h)

type QMenudragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QMenu, slot: proc(super: QMenudragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenudragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_dragLeaveEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_dragLeaveEvent ".} =
  type Cb = proc(super: QMenudragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QMenu(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QMenu, event: gen_qevent.QDropEvent): void =


  fQMenu_virtualbase_dropEvent(self.h, event.h)

type QMenudropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QMenu, slot: proc(super: QMenudropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenudropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_dropEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_dropEvent ".} =
  type Cb = proc(super: QMenudropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QMenu(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QMenu, event: gen_qevent.QShowEvent): void =


  fQMenu_virtualbase_showEvent(self.h, event.h)

type QMenushowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QMenu, slot: proc(super: QMenushowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenushowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_showEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_showEvent ".} =
  type Cb = proc(super: QMenushowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QMenu(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QMenu, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQMenu_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QMenunativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QMenu, slot: proc(super: QMenunativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QMenunativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_nativeEvent(self: ptr cQMenu, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QMenu_nativeEvent ".} =
  type Cb = proc(super: QMenunativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QMenu(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QMenu, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQMenu_virtualbase_metric(self.h, cint(param1))

type QMenumetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QMenu, slot: proc(super: QMenumetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QMenumetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_metric(self: ptr cQMenu, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QMenu_metric ".} =
  type Cb = proc(super: QMenumetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QMenu(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QMenu, painter: gen_qpainter.QPainter): void =


  fQMenu_virtualbase_initPainter(self.h, painter.h)

type QMenuinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QMenu, slot: proc(super: QMenuinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_initPainter(self: ptr cQMenu, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QMenu_initPainter ".} =
  type Cb = proc(super: QMenuinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QMenu(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QMenu, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQMenu_virtualbase_redirected(self.h, offset.h))

type QMenuredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QMenu, slot: proc(super: QMenuredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QMenuredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_redirected(self: ptr cQMenu, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QMenu_redirected ".} =
  type Cb = proc(super: QMenuredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QMenu(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QMenu, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQMenu_virtualbase_sharedPainter(self.h))

type QMenusharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QMenu, slot: proc(super: QMenusharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QMenusharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_sharedPainter(self: ptr cQMenu, slot: int): pointer {.exportc: "miqt_exec_callback_QMenu_sharedPainter ".} =
  type Cb = proc(super: QMenusharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QMenu(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QMenu, param1: gen_qevent.QInputMethodEvent): void =


  fQMenu_virtualbase_inputMethodEvent(self.h, param1.h)

type QMenuinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QMenu, slot: proc(super: QMenuinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_inputMethodEvent(self: ptr cQMenu, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenu_inputMethodEvent ".} =
  type Cb = proc(super: QMenuinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QMenu(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QMenu, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQMenu_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QMenuinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QMenu, slot: proc(super: QMenuinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QMenuinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_inputMethodQuery(self: ptr cQMenu, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QMenu_inputMethodQuery ".} =
  type Cb = proc(super: QMenuinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QMenu(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eventFilter(self: QMenu, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQMenu_virtualbase_eventFilter(self.h, watched.h, event.h)

type QMenueventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QMenu, slot: proc(super: QMenueventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QMenueventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_eventFilter(self: ptr cQMenu, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QMenu_eventFilter ".} =
  type Cb = proc(super: QMenueventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QMenu(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_childEvent(self: QMenu, event: gen_qcoreevent.QChildEvent): void =


  fQMenu_virtualbase_childEvent(self.h, event.h)

type QMenuchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QMenu, slot: proc(super: QMenuchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_childEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_childEvent ".} =
  type Cb = proc(super: QMenuchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QMenu(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QMenu, event: gen_qcoreevent.QEvent): void =


  fQMenu_virtualbase_customEvent(self.h, event.h)

type QMenucustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QMenu, slot: proc(super: QMenucustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenucustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_customEvent(self: ptr cQMenu, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenu_customEvent ".} =
  type Cb = proc(super: QMenucustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QMenu(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QMenu, signal: gen_qmetaobject.QMetaMethod): void =


  fQMenu_virtualbase_connectNotify(self.h, signal.h)

type QMenuconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QMenu, slot: proc(super: QMenuconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_connectNotify(self: ptr cQMenu, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMenu_connectNotify ".} =
  type Cb = proc(super: QMenuconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QMenu(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QMenu, signal: gen_qmetaobject.QMetaMethod): void =


  fQMenu_virtualbase_disconnectNotify(self.h, signal.h)

type QMenudisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QMenu, slot: proc(super: QMenudisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QMenudisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenu_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenu_disconnectNotify(self: ptr cQMenu, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMenu_disconnectNotify ".} =
  type Cb = proc(super: QMenudisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QMenu(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QMenu) =
  fcQMenu_delete(self.h)
