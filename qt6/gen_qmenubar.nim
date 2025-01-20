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
{.compile("gen_qmenubar.cpp", cflags).}


import gen_qmenubar_types
export gen_qmenubar_types

import
  gen_qaction,
  gen_qcoreevent,
  gen_qevent,
  gen_qicon,
  gen_qmenu,
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
  gen_qstyleoption,
  gen_qvariant,
  gen_qwidget
export
  gen_qaction,
  gen_qcoreevent,
  gen_qevent,
  gen_qicon,
  gen_qmenu,
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
  gen_qstyleoption,
  gen_qvariant,
  gen_qwidget

type cQMenuBar*{.exportc: "QMenuBar", incompleteStruct.} = object

proc fcQMenuBar_new(parent: pointer): ptr cQMenuBar {.importc: "QMenuBar_new".}
proc fcQMenuBar_new2(): ptr cQMenuBar {.importc: "QMenuBar_new2".}
proc fcQMenuBar_metaObject(self: pointer, ): pointer {.importc: "QMenuBar_metaObject".}
proc fcQMenuBar_metacast(self: pointer, param1: cstring): pointer {.importc: "QMenuBar_metacast".}
proc fcQMenuBar_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMenuBar_metacall".}
proc fcQMenuBar_tr(s: cstring): struct_miqt_string {.importc: "QMenuBar_tr".}
proc fcQMenuBar_addMenu(self: pointer, menu: pointer): pointer {.importc: "QMenuBar_addMenu".}
proc fcQMenuBar_addMenuWithTitle(self: pointer, title: struct_miqt_string): pointer {.importc: "QMenuBar_addMenuWithTitle".}
proc fcQMenuBar_addMenu2(self: pointer, icon: pointer, title: struct_miqt_string): pointer {.importc: "QMenuBar_addMenu2".}
proc fcQMenuBar_addSeparator(self: pointer, ): pointer {.importc: "QMenuBar_addSeparator".}
proc fcQMenuBar_insertSeparator(self: pointer, before: pointer): pointer {.importc: "QMenuBar_insertSeparator".}
proc fcQMenuBar_insertMenu(self: pointer, before: pointer, menu: pointer): pointer {.importc: "QMenuBar_insertMenu".}
proc fcQMenuBar_clear(self: pointer, ): void {.importc: "QMenuBar_clear".}
proc fcQMenuBar_activeAction(self: pointer, ): pointer {.importc: "QMenuBar_activeAction".}
proc fcQMenuBar_setActiveAction(self: pointer, action: pointer): void {.importc: "QMenuBar_setActiveAction".}
proc fcQMenuBar_setDefaultUp(self: pointer, defaultUp: bool): void {.importc: "QMenuBar_setDefaultUp".}
proc fcQMenuBar_isDefaultUp(self: pointer, ): bool {.importc: "QMenuBar_isDefaultUp".}
proc fcQMenuBar_sizeHint(self: pointer, ): pointer {.importc: "QMenuBar_sizeHint".}
proc fcQMenuBar_minimumSizeHint(self: pointer, ): pointer {.importc: "QMenuBar_minimumSizeHint".}
proc fcQMenuBar_heightForWidth(self: pointer, param1: cint): cint {.importc: "QMenuBar_heightForWidth".}
proc fcQMenuBar_actionGeometry(self: pointer, param1: pointer): pointer {.importc: "QMenuBar_actionGeometry".}
proc fcQMenuBar_actionAt(self: pointer, param1: pointer): pointer {.importc: "QMenuBar_actionAt".}
proc fcQMenuBar_setCornerWidget(self: pointer, w: pointer): void {.importc: "QMenuBar_setCornerWidget".}
proc fcQMenuBar_cornerWidget(self: pointer, ): pointer {.importc: "QMenuBar_cornerWidget".}
proc fcQMenuBar_isNativeMenuBar(self: pointer, ): bool {.importc: "QMenuBar_isNativeMenuBar".}
proc fcQMenuBar_setNativeMenuBar(self: pointer, nativeMenuBar: bool): void {.importc: "QMenuBar_setNativeMenuBar".}
proc fcQMenuBar_setVisible(self: pointer, visible: bool): void {.importc: "QMenuBar_setVisible".}
proc fcQMenuBar_triggered(self: pointer, action: pointer): void {.importc: "QMenuBar_triggered".}
proc fQMenuBar_connect_triggered(self: pointer, slot: int) {.importc: "QMenuBar_connect_triggered".}
proc fcQMenuBar_hovered(self: pointer, action: pointer): void {.importc: "QMenuBar_hovered".}
proc fQMenuBar_connect_hovered(self: pointer, slot: int) {.importc: "QMenuBar_connect_hovered".}
proc fcQMenuBar_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMenuBar_tr2".}
proc fcQMenuBar_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMenuBar_tr3".}
proc fcQMenuBar_setCornerWidget2(self: pointer, w: pointer, corner: cint): void {.importc: "QMenuBar_setCornerWidget2".}
proc fcQMenuBar_cornerWidget1(self: pointer, corner: cint): pointer {.importc: "QMenuBar_cornerWidget1".}
proc fQMenuBar_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QMenuBar_virtualbase_metaObject".}
proc fcQMenuBar_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_metaObject".}
proc fQMenuBar_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QMenuBar_virtualbase_metacast".}
proc fcQMenuBar_override_virtual_metacast(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_metacast".}
proc fQMenuBar_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QMenuBar_virtualbase_metacall".}
proc fcQMenuBar_override_virtual_metacall(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_metacall".}
proc fQMenuBar_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QMenuBar_virtualbase_sizeHint".}
proc fcQMenuBar_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_sizeHint".}
proc fQMenuBar_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QMenuBar_virtualbase_minimumSizeHint".}
proc fcQMenuBar_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_minimumSizeHint".}
proc fQMenuBar_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QMenuBar_virtualbase_heightForWidth".}
proc fcQMenuBar_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_heightForWidth".}
proc fQMenuBar_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QMenuBar_virtualbase_setVisible".}
proc fcQMenuBar_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_setVisible".}
proc fQMenuBar_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QMenuBar_virtualbase_changeEvent".}
proc fcQMenuBar_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_changeEvent".}
proc fQMenuBar_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QMenuBar_virtualbase_keyPressEvent".}
proc fcQMenuBar_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_keyPressEvent".}
proc fQMenuBar_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QMenuBar_virtualbase_mouseReleaseEvent".}
proc fcQMenuBar_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_mouseReleaseEvent".}
proc fQMenuBar_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QMenuBar_virtualbase_mousePressEvent".}
proc fcQMenuBar_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_mousePressEvent".}
proc fQMenuBar_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QMenuBar_virtualbase_mouseMoveEvent".}
proc fcQMenuBar_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_mouseMoveEvent".}
proc fQMenuBar_virtualbase_leaveEvent(self: pointer, param1: pointer): void{.importc: "QMenuBar_virtualbase_leaveEvent".}
proc fcQMenuBar_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_leaveEvent".}
proc fQMenuBar_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QMenuBar_virtualbase_paintEvent".}
proc fcQMenuBar_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_paintEvent".}
proc fQMenuBar_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QMenuBar_virtualbase_resizeEvent".}
proc fcQMenuBar_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_resizeEvent".}
proc fQMenuBar_virtualbase_actionEvent(self: pointer, param1: pointer): void{.importc: "QMenuBar_virtualbase_actionEvent".}
proc fcQMenuBar_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_actionEvent".}
proc fQMenuBar_virtualbase_focusOutEvent(self: pointer, param1: pointer): void{.importc: "QMenuBar_virtualbase_focusOutEvent".}
proc fcQMenuBar_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_focusOutEvent".}
proc fQMenuBar_virtualbase_focusInEvent(self: pointer, param1: pointer): void{.importc: "QMenuBar_virtualbase_focusInEvent".}
proc fcQMenuBar_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_focusInEvent".}
proc fQMenuBar_virtualbase_timerEvent(self: pointer, param1: pointer): void{.importc: "QMenuBar_virtualbase_timerEvent".}
proc fcQMenuBar_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_timerEvent".}
proc fQMenuBar_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QMenuBar_virtualbase_eventFilter".}
proc fcQMenuBar_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_eventFilter".}
proc fQMenuBar_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QMenuBar_virtualbase_event".}
proc fcQMenuBar_override_virtual_event(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_event".}
proc fQMenuBar_virtualbase_initStyleOption(self: pointer, option: pointer, action: pointer): void{.importc: "QMenuBar_virtualbase_initStyleOption".}
proc fcQMenuBar_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_initStyleOption".}
proc fQMenuBar_virtualbase_devType(self: pointer, ): cint{.importc: "QMenuBar_virtualbase_devType".}
proc fcQMenuBar_override_virtual_devType(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_devType".}
proc fQMenuBar_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QMenuBar_virtualbase_hasHeightForWidth".}
proc fcQMenuBar_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_hasHeightForWidth".}
proc fQMenuBar_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QMenuBar_virtualbase_paintEngine".}
proc fcQMenuBar_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_paintEngine".}
proc fQMenuBar_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_mouseDoubleClickEvent".}
proc fcQMenuBar_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_mouseDoubleClickEvent".}
proc fQMenuBar_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_wheelEvent".}
proc fcQMenuBar_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_wheelEvent".}
proc fQMenuBar_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_keyReleaseEvent".}
proc fcQMenuBar_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_keyReleaseEvent".}
proc fQMenuBar_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_enterEvent".}
proc fcQMenuBar_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_enterEvent".}
proc fQMenuBar_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_moveEvent".}
proc fcQMenuBar_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_moveEvent".}
proc fQMenuBar_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_closeEvent".}
proc fcQMenuBar_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_closeEvent".}
proc fQMenuBar_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_contextMenuEvent".}
proc fcQMenuBar_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_contextMenuEvent".}
proc fQMenuBar_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_tabletEvent".}
proc fcQMenuBar_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_tabletEvent".}
proc fQMenuBar_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_dragEnterEvent".}
proc fcQMenuBar_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_dragEnterEvent".}
proc fQMenuBar_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_dragMoveEvent".}
proc fcQMenuBar_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_dragMoveEvent".}
proc fQMenuBar_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_dragLeaveEvent".}
proc fcQMenuBar_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_dragLeaveEvent".}
proc fQMenuBar_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_dropEvent".}
proc fcQMenuBar_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_dropEvent".}
proc fQMenuBar_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_showEvent".}
proc fcQMenuBar_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_showEvent".}
proc fQMenuBar_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_hideEvent".}
proc fcQMenuBar_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_hideEvent".}
proc fQMenuBar_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QMenuBar_virtualbase_nativeEvent".}
proc fcQMenuBar_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_nativeEvent".}
proc fQMenuBar_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QMenuBar_virtualbase_metric".}
proc fcQMenuBar_override_virtual_metric(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_metric".}
proc fQMenuBar_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QMenuBar_virtualbase_initPainter".}
proc fcQMenuBar_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_initPainter".}
proc fQMenuBar_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QMenuBar_virtualbase_redirected".}
proc fcQMenuBar_override_virtual_redirected(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_redirected".}
proc fQMenuBar_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QMenuBar_virtualbase_sharedPainter".}
proc fcQMenuBar_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_sharedPainter".}
proc fQMenuBar_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QMenuBar_virtualbase_inputMethodEvent".}
proc fcQMenuBar_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_inputMethodEvent".}
proc fQMenuBar_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QMenuBar_virtualbase_inputMethodQuery".}
proc fcQMenuBar_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_inputMethodQuery".}
proc fQMenuBar_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QMenuBar_virtualbase_focusNextPrevChild".}
proc fcQMenuBar_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_focusNextPrevChild".}
proc fQMenuBar_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_childEvent".}
proc fcQMenuBar_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_childEvent".}
proc fQMenuBar_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QMenuBar_virtualbase_customEvent".}
proc fcQMenuBar_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_customEvent".}
proc fQMenuBar_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QMenuBar_virtualbase_connectNotify".}
proc fcQMenuBar_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_connectNotify".}
proc fQMenuBar_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QMenuBar_virtualbase_disconnectNotify".}
proc fcQMenuBar_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QMenuBar_override_virtual_disconnectNotify".}
proc fcQMenuBar_staticMetaObject(): pointer {.importc: "QMenuBar_staticMetaObject".}
proc fcQMenuBar_delete(self: pointer) {.importc: "QMenuBar_delete".}


func init*(T: type QMenuBar, h: ptr cQMenuBar): QMenuBar =
  T(h: h)
proc create*(T: type QMenuBar, parent: gen_qwidget.QWidget): QMenuBar =

  QMenuBar.init(fcQMenuBar_new(parent.h))
proc create*(T: type QMenuBar, ): QMenuBar =

  QMenuBar.init(fcQMenuBar_new2())
proc metaObject*(self: QMenuBar, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMenuBar_metaObject(self.h))

proc metacast*(self: QMenuBar, param1: cstring): pointer =

  fcQMenuBar_metacast(self.h, param1)

proc metacall*(self: QMenuBar, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQMenuBar_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QMenuBar, s: cstring): string =

  let v_ms = fcQMenuBar_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addMenu*(self: QMenuBar, menu: gen_qmenu.QMenu): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQMenuBar_addMenu(self.h, menu.h))

proc addMenuWithTitle*(self: QMenuBar, title: string): gen_qmenu.QMenu =

  gen_qmenu.QMenu(h: fcQMenuBar_addMenuWithTitle(self.h, struct_miqt_string(data: title, len: csize_t(len(title)))))

proc addMenu2*(self: QMenuBar, icon: gen_qicon.QIcon, title: string): gen_qmenu.QMenu =

  gen_qmenu.QMenu(h: fcQMenuBar_addMenu2(self.h, icon.h, struct_miqt_string(data: title, len: csize_t(len(title)))))

proc addSeparator*(self: QMenuBar, ): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQMenuBar_addSeparator(self.h))

proc insertSeparator*(self: QMenuBar, before: gen_qaction.QAction): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQMenuBar_insertSeparator(self.h, before.h))

proc insertMenu*(self: QMenuBar, before: gen_qaction.QAction, menu: gen_qmenu.QMenu): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQMenuBar_insertMenu(self.h, before.h, menu.h))

proc clear*(self: QMenuBar, ): void =

  fcQMenuBar_clear(self.h)

proc activeAction*(self: QMenuBar, ): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQMenuBar_activeAction(self.h))

proc setActiveAction*(self: QMenuBar, action: gen_qaction.QAction): void =

  fcQMenuBar_setActiveAction(self.h, action.h)

proc setDefaultUp*(self: QMenuBar, defaultUp: bool): void =

  fcQMenuBar_setDefaultUp(self.h, defaultUp)

proc isDefaultUp*(self: QMenuBar, ): bool =

  fcQMenuBar_isDefaultUp(self.h)

proc sizeHint*(self: QMenuBar, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQMenuBar_sizeHint(self.h))

proc minimumSizeHint*(self: QMenuBar, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQMenuBar_minimumSizeHint(self.h))

proc heightForWidth*(self: QMenuBar, param1: cint): cint =

  fcQMenuBar_heightForWidth(self.h, param1)

proc actionGeometry*(self: QMenuBar, param1: gen_qaction.QAction): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQMenuBar_actionGeometry(self.h, param1.h))

proc actionAt*(self: QMenuBar, param1: gen_qpoint.QPoint): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQMenuBar_actionAt(self.h, param1.h))

proc setCornerWidget*(self: QMenuBar, w: gen_qwidget.QWidget): void =

  fcQMenuBar_setCornerWidget(self.h, w.h)

proc cornerWidget*(self: QMenuBar, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQMenuBar_cornerWidget(self.h))

proc isNativeMenuBar*(self: QMenuBar, ): bool =

  fcQMenuBar_isNativeMenuBar(self.h)

proc setNativeMenuBar*(self: QMenuBar, nativeMenuBar: bool): void =

  fcQMenuBar_setNativeMenuBar(self.h, nativeMenuBar)

proc setVisible*(self: QMenuBar, visible: bool): void =

  fcQMenuBar_setVisible(self.h, visible)

proc triggered*(self: QMenuBar, action: gen_qaction.QAction): void =

  fcQMenuBar_triggered(self.h, action.h)

proc miqt_exec_callback_QMenuBar_triggered(slot: int, action: pointer) {.exportc.} =
  type Cb = proc(action: gen_qaction.QAction)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qaction.QAction(h: action)


  nimfunc[](slotval1)

proc ontriggered*(self: QMenuBar, slot: proc(action: gen_qaction.QAction)) =
  type Cb = proc(action: gen_qaction.QAction)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMenuBar_connect_triggered(self.h, cast[int](addr tmp[]))
proc hovered*(self: QMenuBar, action: gen_qaction.QAction): void =

  fcQMenuBar_hovered(self.h, action.h)

proc miqt_exec_callback_QMenuBar_hovered(slot: int, action: pointer) {.exportc.} =
  type Cb = proc(action: gen_qaction.QAction)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qaction.QAction(h: action)


  nimfunc[](slotval1)

proc onhovered*(self: QMenuBar, slot: proc(action: gen_qaction.QAction)) =
  type Cb = proc(action: gen_qaction.QAction)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMenuBar_connect_hovered(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QMenuBar, s: cstring, c: cstring): string =

  let v_ms = fcQMenuBar_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QMenuBar, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMenuBar_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCornerWidget2*(self: QMenuBar, w: gen_qwidget.QWidget, corner: gen_qnamespace.Corner): void =

  fcQMenuBar_setCornerWidget2(self.h, w.h, cint(corner))

proc cornerWidget1*(self: QMenuBar, corner: gen_qnamespace.Corner): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQMenuBar_cornerWidget1(self.h, cint(corner)))

proc callVirtualBase_metaObject(self: QMenuBar, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQMenuBar_virtualbase_metaObject(self.h))

type QMenuBarmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QMenuBar, slot: proc(super: QMenuBarmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_metaObject(self: ptr cQMenuBar, slot: int): pointer {.exportc: "miqt_exec_callback_QMenuBar_metaObject ".} =
  type Cb = proc(super: QMenuBarmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QMenuBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QMenuBar, param1: cstring): pointer =


  fQMenuBar_virtualbase_metacast(self.h, param1)

type QMenuBarmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QMenuBar, slot: proc(super: QMenuBarmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_metacast(self: ptr cQMenuBar, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QMenuBar_metacast ".} =
  type Cb = proc(super: QMenuBarmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QMenuBar(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QMenuBar, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQMenuBar_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QMenuBarmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QMenuBar, slot: proc(super: QMenuBarmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_metacall(self: ptr cQMenuBar, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QMenuBar_metacall ".} =
  type Cb = proc(super: QMenuBarmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QMenuBar(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QMenuBar, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQMenuBar_virtualbase_sizeHint(self.h))

type QMenuBarsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QMenuBar, slot: proc(super: QMenuBarsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_sizeHint(self: ptr cQMenuBar, slot: int): pointer {.exportc: "miqt_exec_callback_QMenuBar_sizeHint ".} =
  type Cb = proc(super: QMenuBarsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QMenuBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QMenuBar, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQMenuBar_virtualbase_minimumSizeHint(self.h))

type QMenuBarminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QMenuBar, slot: proc(super: QMenuBarminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_minimumSizeHint(self: ptr cQMenuBar, slot: int): pointer {.exportc: "miqt_exec_callback_QMenuBar_minimumSizeHint ".} =
  type Cb = proc(super: QMenuBarminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QMenuBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QMenuBar, param1: cint): cint =


  fQMenuBar_virtualbase_heightForWidth(self.h, param1)

type QMenuBarheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QMenuBar, slot: proc(super: QMenuBarheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_heightForWidth(self: ptr cQMenuBar, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QMenuBar_heightForWidth ".} =
  type Cb = proc(super: QMenuBarheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QMenuBar(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_setVisible(self: QMenuBar, visible: bool): void =


  fQMenuBar_virtualbase_setVisible(self.h, visible)

type QMenuBarsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QMenuBar, slot: proc(super: QMenuBarsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_setVisible(self: ptr cQMenuBar, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QMenuBar_setVisible ".} =
  type Cb = proc(super: QMenuBarsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QMenuBar(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QMenuBar, param1: gen_qcoreevent.QEvent): void =


  fQMenuBar_virtualbase_changeEvent(self.h, param1.h)

type QMenuBarchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QMenuBar, slot: proc(super: QMenuBarchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_changeEvent(self: ptr cQMenuBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_changeEvent ".} =
  type Cb = proc(super: QMenuBarchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QMenuBar(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QMenuBar, param1: gen_qevent.QKeyEvent): void =


  fQMenuBar_virtualbase_keyPressEvent(self.h, param1.h)

type QMenuBarkeyPressEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QMenuBar, slot: proc(super: QMenuBarkeyPressEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_keyPressEvent(self: ptr cQMenuBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_keyPressEvent ".} =
  type Cb = proc(super: QMenuBarkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QMenuBar(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QMenuBar, param1: gen_qevent.QMouseEvent): void =


  fQMenuBar_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QMenuBarmouseReleaseEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QMenuBar, slot: proc(super: QMenuBarmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_mouseReleaseEvent(self: ptr cQMenuBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_mouseReleaseEvent ".} =
  type Cb = proc(super: QMenuBarmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QMenuBar(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QMenuBar, param1: gen_qevent.QMouseEvent): void =


  fQMenuBar_virtualbase_mousePressEvent(self.h, param1.h)

type QMenuBarmousePressEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QMenuBar, slot: proc(super: QMenuBarmousePressEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarmousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_mousePressEvent(self: ptr cQMenuBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_mousePressEvent ".} =
  type Cb = proc(super: QMenuBarmousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QMenuBar(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QMenuBar, param1: gen_qevent.QMouseEvent): void =


  fQMenuBar_virtualbase_mouseMoveEvent(self.h, param1.h)

type QMenuBarmouseMoveEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QMenuBar, slot: proc(super: QMenuBarmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_mouseMoveEvent(self: ptr cQMenuBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_mouseMoveEvent ".} =
  type Cb = proc(super: QMenuBarmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QMenuBar(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QMenuBar, param1: gen_qcoreevent.QEvent): void =


  fQMenuBar_virtualbase_leaveEvent(self.h, param1.h)

type QMenuBarleaveEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QMenuBar, slot: proc(super: QMenuBarleaveEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarleaveEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_leaveEvent(self: ptr cQMenuBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_leaveEvent ".} =
  type Cb = proc(super: QMenuBarleaveEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QMenuBar(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QMenuBar, param1: gen_qevent.QPaintEvent): void =


  fQMenuBar_virtualbase_paintEvent(self.h, param1.h)

type QMenuBarpaintEventBase* = proc(param1: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QMenuBar, slot: proc(super: QMenuBarpaintEventBase, param1: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_paintEvent(self: ptr cQMenuBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_paintEvent ".} =
  type Cb = proc(super: QMenuBarpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QMenuBar(h: self), param1)
  let slotval1 = gen_qevent.QPaintEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QMenuBar, param1: gen_qevent.QResizeEvent): void =


  fQMenuBar_virtualbase_resizeEvent(self.h, param1.h)

type QMenuBarresizeEventBase* = proc(param1: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QMenuBar, slot: proc(super: QMenuBarresizeEventBase, param1: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_resizeEvent(self: ptr cQMenuBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_resizeEvent ".} =
  type Cb = proc(super: QMenuBarresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QMenuBar(h: self), param1)
  let slotval1 = gen_qevent.QResizeEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QMenuBar, param1: gen_qevent.QActionEvent): void =


  fQMenuBar_virtualbase_actionEvent(self.h, param1.h)

type QMenuBaractionEventBase* = proc(param1: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QMenuBar, slot: proc(super: QMenuBaractionEventBase, param1: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBaractionEventBase, param1: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_actionEvent(self: ptr cQMenuBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_actionEvent ".} =
  type Cb = proc(super: QMenuBaractionEventBase, param1: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QMenuBar(h: self), param1)
  let slotval1 = gen_qevent.QActionEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QMenuBar, param1: gen_qevent.QFocusEvent): void =


  fQMenuBar_virtualbase_focusOutEvent(self.h, param1.h)

type QMenuBarfocusOutEventBase* = proc(param1: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QMenuBar, slot: proc(super: QMenuBarfocusOutEventBase, param1: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarfocusOutEventBase, param1: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_focusOutEvent(self: ptr cQMenuBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_focusOutEvent ".} =
  type Cb = proc(super: QMenuBarfocusOutEventBase, param1: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QMenuBar(h: self), param1)
  let slotval1 = gen_qevent.QFocusEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QMenuBar, param1: gen_qevent.QFocusEvent): void =


  fQMenuBar_virtualbase_focusInEvent(self.h, param1.h)

type QMenuBarfocusInEventBase* = proc(param1: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QMenuBar, slot: proc(super: QMenuBarfocusInEventBase, param1: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarfocusInEventBase, param1: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_focusInEvent(self: ptr cQMenuBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_focusInEvent ".} =
  type Cb = proc(super: QMenuBarfocusInEventBase, param1: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QMenuBar(h: self), param1)
  let slotval1 = gen_qevent.QFocusEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QMenuBar, param1: gen_qcoreevent.QTimerEvent): void =


  fQMenuBar_virtualbase_timerEvent(self.h, param1.h)

type QMenuBartimerEventBase* = proc(param1: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QMenuBar, slot: proc(super: QMenuBartimerEventBase, param1: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBartimerEventBase, param1: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_timerEvent(self: ptr cQMenuBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_timerEvent ".} =
  type Cb = proc(super: QMenuBartimerEventBase, param1: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QMenuBar(h: self), param1)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QMenuBar, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =


  fQMenuBar_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QMenuBareventFilterBase* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QMenuBar, slot: proc(super: QMenuBareventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QMenuBareventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_eventFilter(self: ptr cQMenuBar, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QMenuBar_eventFilter ".} =
  type Cb = proc(super: QMenuBareventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QMenuBar(h: self), param1, param2)
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QMenuBar, param1: gen_qcoreevent.QEvent): bool =


  fQMenuBar_virtualbase_event(self.h, param1.h)

type QMenuBareventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QMenuBar, slot: proc(super: QMenuBareventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QMenuBareventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_event(self: ptr cQMenuBar, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QMenuBar_event ".} =
  type Cb = proc(super: QMenuBareventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QMenuBar(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initStyleOption(self: QMenuBar, option: gen_qstyleoption.QStyleOptionMenuItem, action: gen_qaction.QAction): void =


  fQMenuBar_virtualbase_initStyleOption(self.h, option.h, action.h)

type QMenuBarinitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOptionMenuItem, action: gen_qaction.QAction): void
proc oninitStyleOption*(self: QMenuBar, slot: proc(super: QMenuBarinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionMenuItem, action: gen_qaction.QAction): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionMenuItem, action: gen_qaction.QAction): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_initStyleOption(self: ptr cQMenuBar, slot: int, option: pointer, action: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_initStyleOption ".} =
  type Cb = proc(super: QMenuBarinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionMenuItem, action: gen_qaction.QAction): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionMenuItem, action: gen_qaction.QAction): auto =
    callVirtualBase_initStyleOption(QMenuBar(h: self), option, action)
  let slotval1 = gen_qstyleoption.QStyleOptionMenuItem(h: option)

  let slotval2 = gen_qaction.QAction(h: action)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_devType(self: QMenuBar, ): cint =


  fQMenuBar_virtualbase_devType(self.h)

type QMenuBardevTypeBase* = proc(): cint
proc ondevType*(self: QMenuBar, slot: proc(super: QMenuBardevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QMenuBardevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_devType(self: ptr cQMenuBar, slot: int): cint {.exportc: "miqt_exec_callback_QMenuBar_devType ".} =
  type Cb = proc(super: QMenuBardevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QMenuBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QMenuBar, ): bool =


  fQMenuBar_virtualbase_hasHeightForWidth(self.h)

type QMenuBarhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QMenuBar, slot: proc(super: QMenuBarhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_hasHeightForWidth(self: ptr cQMenuBar, slot: int): bool {.exportc: "miqt_exec_callback_QMenuBar_hasHeightForWidth ".} =
  type Cb = proc(super: QMenuBarhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QMenuBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QMenuBar, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQMenuBar_virtualbase_paintEngine(self.h))

type QMenuBarpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QMenuBar, slot: proc(super: QMenuBarpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_paintEngine(self: ptr cQMenuBar, slot: int): pointer {.exportc: "miqt_exec_callback_QMenuBar_paintEngine ".} =
  type Cb = proc(super: QMenuBarpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QMenuBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mouseDoubleClickEvent(self: QMenuBar, event: gen_qevent.QMouseEvent): void =


  fQMenuBar_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QMenuBarmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QMenuBar, slot: proc(super: QMenuBarmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_mouseDoubleClickEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QMenuBarmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QMenuBar(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QMenuBar, event: gen_qevent.QWheelEvent): void =


  fQMenuBar_virtualbase_wheelEvent(self.h, event.h)

type QMenuBarwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QMenuBar, slot: proc(super: QMenuBarwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_wheelEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_wheelEvent ".} =
  type Cb = proc(super: QMenuBarwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QMenuBar(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QMenuBar, event: gen_qevent.QKeyEvent): void =


  fQMenuBar_virtualbase_keyReleaseEvent(self.h, event.h)

type QMenuBarkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QMenuBar, slot: proc(super: QMenuBarkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_keyReleaseEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_keyReleaseEvent ".} =
  type Cb = proc(super: QMenuBarkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QMenuBar(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QMenuBar, event: gen_qevent.QEnterEvent): void =


  fQMenuBar_virtualbase_enterEvent(self.h, event.h)

type QMenuBarenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QMenuBar, slot: proc(super: QMenuBarenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_enterEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_enterEvent ".} =
  type Cb = proc(super: QMenuBarenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QMenuBar(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QMenuBar, event: gen_qevent.QMoveEvent): void =


  fQMenuBar_virtualbase_moveEvent(self.h, event.h)

type QMenuBarmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QMenuBar, slot: proc(super: QMenuBarmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_moveEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_moveEvent ".} =
  type Cb = proc(super: QMenuBarmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QMenuBar(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QMenuBar, event: gen_qevent.QCloseEvent): void =


  fQMenuBar_virtualbase_closeEvent(self.h, event.h)

type QMenuBarcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QMenuBar, slot: proc(super: QMenuBarcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_closeEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_closeEvent ".} =
  type Cb = proc(super: QMenuBarcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QMenuBar(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QMenuBar, event: gen_qevent.QContextMenuEvent): void =


  fQMenuBar_virtualbase_contextMenuEvent(self.h, event.h)

type QMenuBarcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QMenuBar, slot: proc(super: QMenuBarcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_contextMenuEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_contextMenuEvent ".} =
  type Cb = proc(super: QMenuBarcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QMenuBar(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QMenuBar, event: gen_qevent.QTabletEvent): void =


  fQMenuBar_virtualbase_tabletEvent(self.h, event.h)

type QMenuBartabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QMenuBar, slot: proc(super: QMenuBartabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBartabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_tabletEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_tabletEvent ".} =
  type Cb = proc(super: QMenuBartabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QMenuBar(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QMenuBar, event: gen_qevent.QDragEnterEvent): void =


  fQMenuBar_virtualbase_dragEnterEvent(self.h, event.h)

type QMenuBardragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QMenuBar, slot: proc(super: QMenuBardragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBardragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_dragEnterEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_dragEnterEvent ".} =
  type Cb = proc(super: QMenuBardragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QMenuBar(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QMenuBar, event: gen_qevent.QDragMoveEvent): void =


  fQMenuBar_virtualbase_dragMoveEvent(self.h, event.h)

type QMenuBardragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QMenuBar, slot: proc(super: QMenuBardragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBardragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_dragMoveEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_dragMoveEvent ".} =
  type Cb = proc(super: QMenuBardragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QMenuBar(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QMenuBar, event: gen_qevent.QDragLeaveEvent): void =


  fQMenuBar_virtualbase_dragLeaveEvent(self.h, event.h)

type QMenuBardragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QMenuBar, slot: proc(super: QMenuBardragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBardragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_dragLeaveEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_dragLeaveEvent ".} =
  type Cb = proc(super: QMenuBardragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QMenuBar(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QMenuBar, event: gen_qevent.QDropEvent): void =


  fQMenuBar_virtualbase_dropEvent(self.h, event.h)

type QMenuBardropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QMenuBar, slot: proc(super: QMenuBardropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBardropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_dropEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_dropEvent ".} =
  type Cb = proc(super: QMenuBardropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QMenuBar(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QMenuBar, event: gen_qevent.QShowEvent): void =


  fQMenuBar_virtualbase_showEvent(self.h, event.h)

type QMenuBarshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QMenuBar, slot: proc(super: QMenuBarshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_showEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_showEvent ".} =
  type Cb = proc(super: QMenuBarshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QMenuBar(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QMenuBar, event: gen_qevent.QHideEvent): void =


  fQMenuBar_virtualbase_hideEvent(self.h, event.h)

type QMenuBarhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QMenuBar, slot: proc(super: QMenuBarhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_hideEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_hideEvent ".} =
  type Cb = proc(super: QMenuBarhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QMenuBar(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QMenuBar, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQMenuBar_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QMenuBarnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QMenuBar, slot: proc(super: QMenuBarnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_nativeEvent(self: ptr cQMenuBar, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QMenuBar_nativeEvent ".} =
  type Cb = proc(super: QMenuBarnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QMenuBar(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QMenuBar, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQMenuBar_virtualbase_metric(self.h, cint(param1))

type QMenuBarmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QMenuBar, slot: proc(super: QMenuBarmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_metric(self: ptr cQMenuBar, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QMenuBar_metric ".} =
  type Cb = proc(super: QMenuBarmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QMenuBar(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QMenuBar, painter: gen_qpainter.QPainter): void =


  fQMenuBar_virtualbase_initPainter(self.h, painter.h)

type QMenuBarinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QMenuBar, slot: proc(super: QMenuBarinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_initPainter(self: ptr cQMenuBar, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_initPainter ".} =
  type Cb = proc(super: QMenuBarinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QMenuBar(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QMenuBar, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQMenuBar_virtualbase_redirected(self.h, offset.h))

type QMenuBarredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QMenuBar, slot: proc(super: QMenuBarredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_redirected(self: ptr cQMenuBar, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QMenuBar_redirected ".} =
  type Cb = proc(super: QMenuBarredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QMenuBar(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QMenuBar, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQMenuBar_virtualbase_sharedPainter(self.h))

type QMenuBarsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QMenuBar, slot: proc(super: QMenuBarsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_sharedPainter(self: ptr cQMenuBar, slot: int): pointer {.exportc: "miqt_exec_callback_QMenuBar_sharedPainter ".} =
  type Cb = proc(super: QMenuBarsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QMenuBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QMenuBar, param1: gen_qevent.QInputMethodEvent): void =


  fQMenuBar_virtualbase_inputMethodEvent(self.h, param1.h)

type QMenuBarinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QMenuBar, slot: proc(super: QMenuBarinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_inputMethodEvent(self: ptr cQMenuBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_inputMethodEvent ".} =
  type Cb = proc(super: QMenuBarinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QMenuBar(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QMenuBar, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQMenuBar_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QMenuBarinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QMenuBar, slot: proc(super: QMenuBarinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_inputMethodQuery(self: ptr cQMenuBar, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QMenuBar_inputMethodQuery ".} =
  type Cb = proc(super: QMenuBarinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QMenuBar(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QMenuBar, next: bool): bool =


  fQMenuBar_virtualbase_focusNextPrevChild(self.h, next)

type QMenuBarfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QMenuBar, slot: proc(super: QMenuBarfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_focusNextPrevChild(self: ptr cQMenuBar, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QMenuBar_focusNextPrevChild ".} =
  type Cb = proc(super: QMenuBarfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QMenuBar(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_childEvent(self: QMenuBar, event: gen_qcoreevent.QChildEvent): void =


  fQMenuBar_virtualbase_childEvent(self.h, event.h)

type QMenuBarchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QMenuBar, slot: proc(super: QMenuBarchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_childEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_childEvent ".} =
  type Cb = proc(super: QMenuBarchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QMenuBar(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QMenuBar, event: gen_qcoreevent.QEvent): void =


  fQMenuBar_virtualbase_customEvent(self.h, event.h)

type QMenuBarcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QMenuBar, slot: proc(super: QMenuBarcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_customEvent(self: ptr cQMenuBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_customEvent ".} =
  type Cb = proc(super: QMenuBarcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QMenuBar(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QMenuBar, signal: gen_qmetaobject.QMetaMethod): void =


  fQMenuBar_virtualbase_connectNotify(self.h, signal.h)

type QMenuBarconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QMenuBar, slot: proc(super: QMenuBarconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBarconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_connectNotify(self: ptr cQMenuBar, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_connectNotify ".} =
  type Cb = proc(super: QMenuBarconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QMenuBar(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QMenuBar, signal: gen_qmetaobject.QMetaMethod): void =


  fQMenuBar_virtualbase_disconnectNotify(self.h, signal.h)

type QMenuBardisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QMenuBar, slot: proc(super: QMenuBardisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QMenuBardisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMenuBar_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMenuBar_disconnectNotify(self: ptr cQMenuBar, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMenuBar_disconnectNotify ".} =
  type Cb = proc(super: QMenuBardisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QMenuBar(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QMenuBar): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQMenuBar_staticMetaObject())
proc delete*(self: QMenuBar) =
  fcQMenuBar_delete(self.h)
