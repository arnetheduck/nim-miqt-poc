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
{.compile("gen_qtoolbox.cpp", cflags).}


import gen_qtoolbox_types
export gen_qtoolbox_types

import
  gen_qcoreevent,
  gen_qevent,
  gen_qframe,
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
  gen_qvariant,
  gen_qwidget
export
  gen_qcoreevent,
  gen_qevent,
  gen_qframe,
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
  gen_qvariant,
  gen_qwidget

type cQToolBox*{.exportc: "QToolBox", incompleteStruct.} = object

proc fcQToolBox_new(parent: pointer): ptr cQToolBox {.importc: "QToolBox_new".}
proc fcQToolBox_new2(): ptr cQToolBox {.importc: "QToolBox_new2".}
proc fcQToolBox_new3(parent: pointer, f: cint): ptr cQToolBox {.importc: "QToolBox_new3".}
proc fcQToolBox_metaObject(self: pointer, ): pointer {.importc: "QToolBox_metaObject".}
proc fcQToolBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QToolBox_metacast".}
proc fcQToolBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QToolBox_metacall".}
proc fcQToolBox_tr(s: cstring): struct_miqt_string {.importc: "QToolBox_tr".}
proc fcQToolBox_addItem(self: pointer, widget: pointer, text: struct_miqt_string): cint {.importc: "QToolBox_addItem".}
proc fcQToolBox_addItem2(self: pointer, widget: pointer, icon: pointer, text: struct_miqt_string): cint {.importc: "QToolBox_addItem2".}
proc fcQToolBox_insertItem(self: pointer, index: cint, widget: pointer, text: struct_miqt_string): cint {.importc: "QToolBox_insertItem".}
proc fcQToolBox_insertItem2(self: pointer, index: cint, widget: pointer, icon: pointer, text: struct_miqt_string): cint {.importc: "QToolBox_insertItem2".}
proc fcQToolBox_removeItem(self: pointer, index: cint): void {.importc: "QToolBox_removeItem".}
proc fcQToolBox_setItemEnabled(self: pointer, index: cint, enabled: bool): void {.importc: "QToolBox_setItemEnabled".}
proc fcQToolBox_isItemEnabled(self: pointer, index: cint): bool {.importc: "QToolBox_isItemEnabled".}
proc fcQToolBox_setItemText(self: pointer, index: cint, text: struct_miqt_string): void {.importc: "QToolBox_setItemText".}
proc fcQToolBox_itemText(self: pointer, index: cint): struct_miqt_string {.importc: "QToolBox_itemText".}
proc fcQToolBox_setItemIcon(self: pointer, index: cint, icon: pointer): void {.importc: "QToolBox_setItemIcon".}
proc fcQToolBox_itemIcon(self: pointer, index: cint): pointer {.importc: "QToolBox_itemIcon".}
proc fcQToolBox_setItemToolTip(self: pointer, index: cint, toolTip: struct_miqt_string): void {.importc: "QToolBox_setItemToolTip".}
proc fcQToolBox_itemToolTip(self: pointer, index: cint): struct_miqt_string {.importc: "QToolBox_itemToolTip".}
proc fcQToolBox_currentIndex(self: pointer, ): cint {.importc: "QToolBox_currentIndex".}
proc fcQToolBox_currentWidget(self: pointer, ): pointer {.importc: "QToolBox_currentWidget".}
proc fcQToolBox_widget(self: pointer, index: cint): pointer {.importc: "QToolBox_widget".}
proc fcQToolBox_indexOf(self: pointer, widget: pointer): cint {.importc: "QToolBox_indexOf".}
proc fcQToolBox_count(self: pointer, ): cint {.importc: "QToolBox_count".}
proc fcQToolBox_setCurrentIndex(self: pointer, index: cint): void {.importc: "QToolBox_setCurrentIndex".}
proc fcQToolBox_setCurrentWidget(self: pointer, widget: pointer): void {.importc: "QToolBox_setCurrentWidget".}
proc fcQToolBox_currentChanged(self: pointer, index: cint): void {.importc: "QToolBox_currentChanged".}
proc fQToolBox_connect_currentChanged(self: pointer, slot: int) {.importc: "QToolBox_connect_currentChanged".}
proc fcQToolBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QToolBox_tr2".}
proc fcQToolBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QToolBox_tr3".}
proc fQToolBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QToolBox_virtualbase_metacall".}
proc fcQToolBox_override_virtual_metacall(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_metacall".}
proc fQToolBox_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QToolBox_virtualbase_event".}
proc fcQToolBox_override_virtual_event(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_event".}
proc fQToolBox_virtualbase_itemInserted(self: pointer, index: cint): void{.importc: "QToolBox_virtualbase_itemInserted".}
proc fcQToolBox_override_virtual_itemInserted(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_itemInserted".}
proc fQToolBox_virtualbase_itemRemoved(self: pointer, index: cint): void{.importc: "QToolBox_virtualbase_itemRemoved".}
proc fcQToolBox_override_virtual_itemRemoved(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_itemRemoved".}
proc fQToolBox_virtualbase_showEvent(self: pointer, e: pointer): void{.importc: "QToolBox_virtualbase_showEvent".}
proc fcQToolBox_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_showEvent".}
proc fQToolBox_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QToolBox_virtualbase_changeEvent".}
proc fcQToolBox_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_changeEvent".}
proc fQToolBox_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QToolBox_virtualbase_sizeHint".}
proc fcQToolBox_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_sizeHint".}
proc fQToolBox_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QToolBox_virtualbase_paintEvent".}
proc fcQToolBox_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_paintEvent".}
proc fQToolBox_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QToolBox_virtualbase_initStyleOption".}
proc fcQToolBox_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_initStyleOption".}
proc fQToolBox_virtualbase_devType(self: pointer, ): cint{.importc: "QToolBox_virtualbase_devType".}
proc fcQToolBox_override_virtual_devType(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_devType".}
proc fQToolBox_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QToolBox_virtualbase_setVisible".}
proc fcQToolBox_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_setVisible".}
proc fQToolBox_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QToolBox_virtualbase_minimumSizeHint".}
proc fcQToolBox_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_minimumSizeHint".}
proc fQToolBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QToolBox_virtualbase_heightForWidth".}
proc fcQToolBox_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_heightForWidth".}
proc fQToolBox_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QToolBox_virtualbase_hasHeightForWidth".}
proc fcQToolBox_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_hasHeightForWidth".}
proc fQToolBox_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QToolBox_virtualbase_paintEngine".}
proc fcQToolBox_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_paintEngine".}
proc fQToolBox_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_mousePressEvent".}
proc fcQToolBox_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_mousePressEvent".}
proc fQToolBox_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_mouseReleaseEvent".}
proc fcQToolBox_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_mouseReleaseEvent".}
proc fQToolBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_mouseDoubleClickEvent".}
proc fcQToolBox_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_mouseDoubleClickEvent".}
proc fQToolBox_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_mouseMoveEvent".}
proc fcQToolBox_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_mouseMoveEvent".}
proc fQToolBox_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_wheelEvent".}
proc fcQToolBox_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_wheelEvent".}
proc fQToolBox_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_keyPressEvent".}
proc fcQToolBox_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_keyPressEvent".}
proc fQToolBox_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_keyReleaseEvent".}
proc fcQToolBox_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_keyReleaseEvent".}
proc fQToolBox_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_focusInEvent".}
proc fcQToolBox_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_focusInEvent".}
proc fQToolBox_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_focusOutEvent".}
proc fcQToolBox_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_focusOutEvent".}
proc fQToolBox_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_enterEvent".}
proc fcQToolBox_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_enterEvent".}
proc fQToolBox_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_leaveEvent".}
proc fcQToolBox_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_leaveEvent".}
proc fQToolBox_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_moveEvent".}
proc fcQToolBox_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_moveEvent".}
proc fQToolBox_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_resizeEvent".}
proc fcQToolBox_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_resizeEvent".}
proc fQToolBox_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_closeEvent".}
proc fcQToolBox_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_closeEvent".}
proc fQToolBox_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_contextMenuEvent".}
proc fcQToolBox_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_contextMenuEvent".}
proc fQToolBox_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_tabletEvent".}
proc fcQToolBox_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_tabletEvent".}
proc fQToolBox_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_actionEvent".}
proc fcQToolBox_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_actionEvent".}
proc fQToolBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_dragEnterEvent".}
proc fcQToolBox_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_dragEnterEvent".}
proc fQToolBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_dragMoveEvent".}
proc fcQToolBox_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_dragMoveEvent".}
proc fQToolBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_dragLeaveEvent".}
proc fcQToolBox_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_dragLeaveEvent".}
proc fQToolBox_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_dropEvent".}
proc fcQToolBox_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_dropEvent".}
proc fQToolBox_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_hideEvent".}
proc fcQToolBox_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_hideEvent".}
proc fQToolBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QToolBox_virtualbase_nativeEvent".}
proc fcQToolBox_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_nativeEvent".}
proc fQToolBox_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QToolBox_virtualbase_metric".}
proc fcQToolBox_override_virtual_metric(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_metric".}
proc fQToolBox_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QToolBox_virtualbase_initPainter".}
proc fcQToolBox_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_initPainter".}
proc fQToolBox_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QToolBox_virtualbase_redirected".}
proc fcQToolBox_override_virtual_redirected(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_redirected".}
proc fQToolBox_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QToolBox_virtualbase_sharedPainter".}
proc fcQToolBox_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_sharedPainter".}
proc fQToolBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QToolBox_virtualbase_inputMethodEvent".}
proc fcQToolBox_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_inputMethodEvent".}
proc fQToolBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QToolBox_virtualbase_inputMethodQuery".}
proc fcQToolBox_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_inputMethodQuery".}
proc fQToolBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QToolBox_virtualbase_focusNextPrevChild".}
proc fcQToolBox_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_focusNextPrevChild".}
proc fQToolBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QToolBox_virtualbase_eventFilter".}
proc fcQToolBox_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_eventFilter".}
proc fQToolBox_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_timerEvent".}
proc fcQToolBox_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_timerEvent".}
proc fQToolBox_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_childEvent".}
proc fcQToolBox_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_childEvent".}
proc fQToolBox_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_customEvent".}
proc fcQToolBox_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_customEvent".}
proc fQToolBox_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QToolBox_virtualbase_connectNotify".}
proc fcQToolBox_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_connectNotify".}
proc fQToolBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QToolBox_virtualbase_disconnectNotify".}
proc fcQToolBox_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_disconnectNotify".}
proc fcQToolBox_staticMetaObject(): pointer {.importc: "QToolBox_staticMetaObject".}
proc fcQToolBox_delete(self: pointer) {.importc: "QToolBox_delete".}


func init*(T: type QToolBox, h: ptr cQToolBox): QToolBox =
  T(h: h)
proc create*(T: type QToolBox, parent: gen_qwidget.QWidget): QToolBox =

  QToolBox.init(fcQToolBox_new(parent.h))
proc create*(T: type QToolBox, ): QToolBox =

  QToolBox.init(fcQToolBox_new2())
proc create*(T: type QToolBox, parent: gen_qwidget.QWidget, f: gen_qnamespace.WindowType): QToolBox =

  QToolBox.init(fcQToolBox_new3(parent.h, cint(f)))
proc metaObject*(self: QToolBox, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQToolBox_metaObject(self.h))

proc metacast*(self: QToolBox, param1: cstring): pointer =

  fcQToolBox_metacast(self.h, param1)

proc metacall*(self: QToolBox, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQToolBox_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QToolBox, s: cstring): string =

  let v_ms = fcQToolBox_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addItem*(self: QToolBox, widget: gen_qwidget.QWidget, text: string): cint =

  fcQToolBox_addItem(self.h, widget.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc addItem2*(self: QToolBox, widget: gen_qwidget.QWidget, icon: gen_qicon.QIcon, text: string): cint =

  fcQToolBox_addItem2(self.h, widget.h, icon.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc insertItem*(self: QToolBox, index: cint, widget: gen_qwidget.QWidget, text: string): cint =

  fcQToolBox_insertItem(self.h, index, widget.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc insertItem2*(self: QToolBox, index: cint, widget: gen_qwidget.QWidget, icon: gen_qicon.QIcon, text: string): cint =

  fcQToolBox_insertItem2(self.h, index, widget.h, icon.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc removeItem*(self: QToolBox, index: cint): void =

  fcQToolBox_removeItem(self.h, index)

proc setItemEnabled*(self: QToolBox, index: cint, enabled: bool): void =

  fcQToolBox_setItemEnabled(self.h, index, enabled)

proc isItemEnabled*(self: QToolBox, index: cint): bool =

  fcQToolBox_isItemEnabled(self.h, index)

proc setItemText*(self: QToolBox, index: cint, text: string): void =

  fcQToolBox_setItemText(self.h, index, struct_miqt_string(data: text, len: csize_t(len(text))))

proc itemText*(self: QToolBox, index: cint): string =

  let v_ms = fcQToolBox_itemText(self.h, index)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setItemIcon*(self: QToolBox, index: cint, icon: gen_qicon.QIcon): void =

  fcQToolBox_setItemIcon(self.h, index, icon.h)

proc itemIcon*(self: QToolBox, index: cint): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQToolBox_itemIcon(self.h, index))

proc setItemToolTip*(self: QToolBox, index: cint, toolTip: string): void =

  fcQToolBox_setItemToolTip(self.h, index, struct_miqt_string(data: toolTip, len: csize_t(len(toolTip))))

proc itemToolTip*(self: QToolBox, index: cint): string =

  let v_ms = fcQToolBox_itemToolTip(self.h, index)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc currentIndex*(self: QToolBox, ): cint =

  fcQToolBox_currentIndex(self.h)

proc currentWidget*(self: QToolBox, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQToolBox_currentWidget(self.h))

proc widget*(self: QToolBox, index: cint): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQToolBox_widget(self.h, index))

proc indexOf*(self: QToolBox, widget: gen_qwidget.QWidget): cint =

  fcQToolBox_indexOf(self.h, widget.h)

proc count*(self: QToolBox, ): cint =

  fcQToolBox_count(self.h)

proc setCurrentIndex*(self: QToolBox, index: cint): void =

  fcQToolBox_setCurrentIndex(self.h, index)

proc setCurrentWidget*(self: QToolBox, widget: gen_qwidget.QWidget): void =

  fcQToolBox_setCurrentWidget(self.h, widget.h)

proc currentChanged*(self: QToolBox, index: cint): void =

  fcQToolBox_currentChanged(self.h, index)

proc miqt_exec_callback_QToolBox_currentChanged(slot: int, index: cint) {.exportc.} =
  type Cb = proc(index: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)

proc oncurrentChanged*(self: QToolBox, slot: proc(index: cint)) =
  type Cb = proc(index: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQToolBox_connect_currentChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QToolBox, s: cstring, c: cstring): string =

  let v_ms = fcQToolBox_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QToolBox, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQToolBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QToolBox, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQToolBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QToolBoxmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QToolBox, slot: proc(super: QToolBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_metacall(self: ptr cQToolBox, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QToolBox_metacall ".} =
  type Cb = proc(super: QToolBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QToolBox(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QToolBox, e: gen_qcoreevent.QEvent): bool =


  fQToolBox_virtualbase_event(self.h, e.h)

type QToolBoxeventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QToolBox, slot: proc(super: QToolBoxeventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxeventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_event(self: ptr cQToolBox, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QToolBox_event ".} =
  type Cb = proc(super: QToolBoxeventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QToolBox(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_itemInserted(self: QToolBox, index: cint): void =


  fQToolBox_virtualbase_itemInserted(self.h, index)

type QToolBoxitemInsertedBase* = proc(index: cint): void
proc onitemInserted*(self: QToolBox, slot: proc(super: QToolBoxitemInsertedBase, index: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxitemInsertedBase, index: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_itemInserted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_itemInserted(self: ptr cQToolBox, slot: int, index: cint): void {.exportc: "miqt_exec_callback_QToolBox_itemInserted ".} =
  type Cb = proc(super: QToolBoxitemInsertedBase, index: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: cint): auto =
    callVirtualBase_itemInserted(QToolBox(h: self), index)
  let slotval1 = index


  nimfunc[](superCall, slotval1)
proc callVirtualBase_itemRemoved(self: QToolBox, index: cint): void =


  fQToolBox_virtualbase_itemRemoved(self.h, index)

type QToolBoxitemRemovedBase* = proc(index: cint): void
proc onitemRemoved*(self: QToolBox, slot: proc(super: QToolBoxitemRemovedBase, index: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxitemRemovedBase, index: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_itemRemoved(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_itemRemoved(self: ptr cQToolBox, slot: int, index: cint): void {.exportc: "miqt_exec_callback_QToolBox_itemRemoved ".} =
  type Cb = proc(super: QToolBoxitemRemovedBase, index: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: cint): auto =
    callVirtualBase_itemRemoved(QToolBox(h: self), index)
  let slotval1 = index


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QToolBox, e: gen_qevent.QShowEvent): void =


  fQToolBox_virtualbase_showEvent(self.h, e.h)

type QToolBoxshowEventBase* = proc(e: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QToolBox, slot: proc(super: QToolBoxshowEventBase, e: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxshowEventBase, e: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_showEvent(self: ptr cQToolBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QToolBox_showEvent ".} =
  type Cb = proc(super: QToolBoxshowEventBase, e: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QToolBox(h: self), e)
  let slotval1 = gen_qevent.QShowEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QToolBox, param1: gen_qcoreevent.QEvent): void =


  fQToolBox_virtualbase_changeEvent(self.h, param1.h)

type QToolBoxchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QToolBox, slot: proc(super: QToolBoxchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_changeEvent(self: ptr cQToolBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QToolBox_changeEvent ".} =
  type Cb = proc(super: QToolBoxchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QToolBox(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QToolBox, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQToolBox_virtualbase_sizeHint(self.h))

type QToolBoxsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QToolBox, slot: proc(super: QToolBoxsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_sizeHint(self: ptr cQToolBox, slot: int): pointer {.exportc: "miqt_exec_callback_QToolBox_sizeHint ".} =
  type Cb = proc(super: QToolBoxsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QToolBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_paintEvent(self: QToolBox, param1: gen_qevent.QPaintEvent): void =


  fQToolBox_virtualbase_paintEvent(self.h, param1.h)

type QToolBoxpaintEventBase* = proc(param1: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QToolBox, slot: proc(super: QToolBoxpaintEventBase, param1: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_paintEvent(self: ptr cQToolBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QToolBox_paintEvent ".} =
  type Cb = proc(super: QToolBoxpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QToolBox(h: self), param1)
  let slotval1 = gen_qevent.QPaintEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_initStyleOption(self: QToolBox, option: gen_qstyleoption.QStyleOptionFrame): void =


  fQToolBox_virtualbase_initStyleOption(self.h, option.h)

type QToolBoxinitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOptionFrame): void
proc oninitStyleOption*(self: QToolBox, slot: proc(super: QToolBoxinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_initStyleOption(self: ptr cQToolBox, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QToolBox_initStyleOption ".} =
  type Cb = proc(super: QToolBoxinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionFrame): auto =
    callVirtualBase_initStyleOption(QToolBox(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOptionFrame(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QToolBox, ): cint =


  fQToolBox_virtualbase_devType(self.h)

type QToolBoxdevTypeBase* = proc(): cint
proc ondevType*(self: QToolBox, slot: proc(super: QToolBoxdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_devType(self: ptr cQToolBox, slot: int): cint {.exportc: "miqt_exec_callback_QToolBox_devType ".} =
  type Cb = proc(super: QToolBoxdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QToolBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QToolBox, visible: bool): void =


  fQToolBox_virtualbase_setVisible(self.h, visible)

type QToolBoxsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QToolBox, slot: proc(super: QToolBoxsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_setVisible(self: ptr cQToolBox, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QToolBox_setVisible ".} =
  type Cb = proc(super: QToolBoxsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QToolBox(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_minimumSizeHint(self: QToolBox, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQToolBox_virtualbase_minimumSizeHint(self.h))

type QToolBoxminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QToolBox, slot: proc(super: QToolBoxminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_minimumSizeHint(self: ptr cQToolBox, slot: int): pointer {.exportc: "miqt_exec_callback_QToolBox_minimumSizeHint ".} =
  type Cb = proc(super: QToolBoxminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QToolBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QToolBox, param1: cint): cint =


  fQToolBox_virtualbase_heightForWidth(self.h, param1)

type QToolBoxheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QToolBox, slot: proc(super: QToolBoxheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_heightForWidth(self: ptr cQToolBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QToolBox_heightForWidth ".} =
  type Cb = proc(super: QToolBoxheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QToolBox(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QToolBox, ): bool =


  fQToolBox_virtualbase_hasHeightForWidth(self.h)

type QToolBoxhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QToolBox, slot: proc(super: QToolBoxhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_hasHeightForWidth(self: ptr cQToolBox, slot: int): bool {.exportc: "miqt_exec_callback_QToolBox_hasHeightForWidth ".} =
  type Cb = proc(super: QToolBoxhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QToolBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QToolBox, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQToolBox_virtualbase_paintEngine(self.h))

type QToolBoxpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QToolBox, slot: proc(super: QToolBoxpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_paintEngine(self: ptr cQToolBox, slot: int): pointer {.exportc: "miqt_exec_callback_QToolBox_paintEngine ".} =
  type Cb = proc(super: QToolBoxpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QToolBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mousePressEvent(self: QToolBox, event: gen_qevent.QMouseEvent): void =


  fQToolBox_virtualbase_mousePressEvent(self.h, event.h)

type QToolBoxmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QToolBox, slot: proc(super: QToolBoxmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_mousePressEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_mousePressEvent ".} =
  type Cb = proc(super: QToolBoxmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QToolBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QToolBox, event: gen_qevent.QMouseEvent): void =


  fQToolBox_virtualbase_mouseReleaseEvent(self.h, event.h)

type QToolBoxmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QToolBox, slot: proc(super: QToolBoxmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_mouseReleaseEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_mouseReleaseEvent ".} =
  type Cb = proc(super: QToolBoxmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QToolBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QToolBox, event: gen_qevent.QMouseEvent): void =


  fQToolBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QToolBoxmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QToolBox, slot: proc(super: QToolBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_mouseDoubleClickEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QToolBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QToolBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QToolBox, event: gen_qevent.QMouseEvent): void =


  fQToolBox_virtualbase_mouseMoveEvent(self.h, event.h)

type QToolBoxmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QToolBox, slot: proc(super: QToolBoxmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_mouseMoveEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_mouseMoveEvent ".} =
  type Cb = proc(super: QToolBoxmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QToolBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QToolBox, event: gen_qevent.QWheelEvent): void =


  fQToolBox_virtualbase_wheelEvent(self.h, event.h)

type QToolBoxwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QToolBox, slot: proc(super: QToolBoxwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_wheelEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_wheelEvent ".} =
  type Cb = proc(super: QToolBoxwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QToolBox(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QToolBox, event: gen_qevent.QKeyEvent): void =


  fQToolBox_virtualbase_keyPressEvent(self.h, event.h)

type QToolBoxkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QToolBox, slot: proc(super: QToolBoxkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_keyPressEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_keyPressEvent ".} =
  type Cb = proc(super: QToolBoxkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QToolBox(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QToolBox, event: gen_qevent.QKeyEvent): void =


  fQToolBox_virtualbase_keyReleaseEvent(self.h, event.h)

type QToolBoxkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QToolBox, slot: proc(super: QToolBoxkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_keyReleaseEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_keyReleaseEvent ".} =
  type Cb = proc(super: QToolBoxkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QToolBox(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QToolBox, event: gen_qevent.QFocusEvent): void =


  fQToolBox_virtualbase_focusInEvent(self.h, event.h)

type QToolBoxfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QToolBox, slot: proc(super: QToolBoxfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_focusInEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_focusInEvent ".} =
  type Cb = proc(super: QToolBoxfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QToolBox(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QToolBox, event: gen_qevent.QFocusEvent): void =


  fQToolBox_virtualbase_focusOutEvent(self.h, event.h)

type QToolBoxfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QToolBox, slot: proc(super: QToolBoxfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_focusOutEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_focusOutEvent ".} =
  type Cb = proc(super: QToolBoxfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QToolBox(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QToolBox, event: gen_qevent.QEnterEvent): void =


  fQToolBox_virtualbase_enterEvent(self.h, event.h)

type QToolBoxenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QToolBox, slot: proc(super: QToolBoxenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_enterEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_enterEvent ".} =
  type Cb = proc(super: QToolBoxenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QToolBox(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QToolBox, event: gen_qcoreevent.QEvent): void =


  fQToolBox_virtualbase_leaveEvent(self.h, event.h)

type QToolBoxleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QToolBox, slot: proc(super: QToolBoxleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_leaveEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_leaveEvent ".} =
  type Cb = proc(super: QToolBoxleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QToolBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QToolBox, event: gen_qevent.QMoveEvent): void =


  fQToolBox_virtualbase_moveEvent(self.h, event.h)

type QToolBoxmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QToolBox, slot: proc(super: QToolBoxmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_moveEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_moveEvent ".} =
  type Cb = proc(super: QToolBoxmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QToolBox(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QToolBox, event: gen_qevent.QResizeEvent): void =


  fQToolBox_virtualbase_resizeEvent(self.h, event.h)

type QToolBoxresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QToolBox, slot: proc(super: QToolBoxresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_resizeEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_resizeEvent ".} =
  type Cb = proc(super: QToolBoxresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QToolBox(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QToolBox, event: gen_qevent.QCloseEvent): void =


  fQToolBox_virtualbase_closeEvent(self.h, event.h)

type QToolBoxcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QToolBox, slot: proc(super: QToolBoxcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_closeEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_closeEvent ".} =
  type Cb = proc(super: QToolBoxcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QToolBox(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QToolBox, event: gen_qevent.QContextMenuEvent): void =


  fQToolBox_virtualbase_contextMenuEvent(self.h, event.h)

type QToolBoxcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QToolBox, slot: proc(super: QToolBoxcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_contextMenuEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_contextMenuEvent ".} =
  type Cb = proc(super: QToolBoxcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QToolBox(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QToolBox, event: gen_qevent.QTabletEvent): void =


  fQToolBox_virtualbase_tabletEvent(self.h, event.h)

type QToolBoxtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QToolBox, slot: proc(super: QToolBoxtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_tabletEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_tabletEvent ".} =
  type Cb = proc(super: QToolBoxtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QToolBox(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QToolBox, event: gen_qevent.QActionEvent): void =


  fQToolBox_virtualbase_actionEvent(self.h, event.h)

type QToolBoxactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QToolBox, slot: proc(super: QToolBoxactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_actionEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_actionEvent ".} =
  type Cb = proc(super: QToolBoxactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QToolBox(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QToolBox, event: gen_qevent.QDragEnterEvent): void =


  fQToolBox_virtualbase_dragEnterEvent(self.h, event.h)

type QToolBoxdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QToolBox, slot: proc(super: QToolBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_dragEnterEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_dragEnterEvent ".} =
  type Cb = proc(super: QToolBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QToolBox(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QToolBox, event: gen_qevent.QDragMoveEvent): void =


  fQToolBox_virtualbase_dragMoveEvent(self.h, event.h)

type QToolBoxdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QToolBox, slot: proc(super: QToolBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_dragMoveEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_dragMoveEvent ".} =
  type Cb = proc(super: QToolBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QToolBox(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QToolBox, event: gen_qevent.QDragLeaveEvent): void =


  fQToolBox_virtualbase_dragLeaveEvent(self.h, event.h)

type QToolBoxdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QToolBox, slot: proc(super: QToolBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_dragLeaveEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_dragLeaveEvent ".} =
  type Cb = proc(super: QToolBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QToolBox(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QToolBox, event: gen_qevent.QDropEvent): void =


  fQToolBox_virtualbase_dropEvent(self.h, event.h)

type QToolBoxdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QToolBox, slot: proc(super: QToolBoxdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_dropEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_dropEvent ".} =
  type Cb = proc(super: QToolBoxdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QToolBox(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QToolBox, event: gen_qevent.QHideEvent): void =


  fQToolBox_virtualbase_hideEvent(self.h, event.h)

type QToolBoxhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QToolBox, slot: proc(super: QToolBoxhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_hideEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_hideEvent ".} =
  type Cb = proc(super: QToolBoxhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QToolBox(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QToolBox, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQToolBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QToolBoxnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QToolBox, slot: proc(super: QToolBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_nativeEvent(self: ptr cQToolBox, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QToolBox_nativeEvent ".} =
  type Cb = proc(super: QToolBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QToolBox(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QToolBox, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQToolBox_virtualbase_metric(self.h, cint(param1))

type QToolBoxmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QToolBox, slot: proc(super: QToolBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_metric(self: ptr cQToolBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QToolBox_metric ".} =
  type Cb = proc(super: QToolBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QToolBox(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QToolBox, painter: gen_qpainter.QPainter): void =


  fQToolBox_virtualbase_initPainter(self.h, painter.h)

type QToolBoxinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QToolBox, slot: proc(super: QToolBoxinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_initPainter(self: ptr cQToolBox, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QToolBox_initPainter ".} =
  type Cb = proc(super: QToolBoxinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QToolBox(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QToolBox, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQToolBox_virtualbase_redirected(self.h, offset.h))

type QToolBoxredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QToolBox, slot: proc(super: QToolBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_redirected(self: ptr cQToolBox, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QToolBox_redirected ".} =
  type Cb = proc(super: QToolBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QToolBox(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QToolBox, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQToolBox_virtualbase_sharedPainter(self.h))

type QToolBoxsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QToolBox, slot: proc(super: QToolBoxsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_sharedPainter(self: ptr cQToolBox, slot: int): pointer {.exportc: "miqt_exec_callback_QToolBox_sharedPainter ".} =
  type Cb = proc(super: QToolBoxsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QToolBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QToolBox, param1: gen_qevent.QInputMethodEvent): void =


  fQToolBox_virtualbase_inputMethodEvent(self.h, param1.h)

type QToolBoxinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QToolBox, slot: proc(super: QToolBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_inputMethodEvent(self: ptr cQToolBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QToolBox_inputMethodEvent ".} =
  type Cb = proc(super: QToolBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QToolBox(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QToolBox, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQToolBox_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QToolBoxinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QToolBox, slot: proc(super: QToolBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_inputMethodQuery(self: ptr cQToolBox, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QToolBox_inputMethodQuery ".} =
  type Cb = proc(super: QToolBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QToolBox(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QToolBox, next: bool): bool =


  fQToolBox_virtualbase_focusNextPrevChild(self.h, next)

type QToolBoxfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QToolBox, slot: proc(super: QToolBoxfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_focusNextPrevChild(self: ptr cQToolBox, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QToolBox_focusNextPrevChild ".} =
  type Cb = proc(super: QToolBoxfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QToolBox(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QToolBox, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQToolBox_virtualbase_eventFilter(self.h, watched.h, event.h)

type QToolBoxeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QToolBox, slot: proc(super: QToolBoxeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_eventFilter(self: ptr cQToolBox, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QToolBox_eventFilter ".} =
  type Cb = proc(super: QToolBoxeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QToolBox(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QToolBox, event: gen_qcoreevent.QTimerEvent): void =


  fQToolBox_virtualbase_timerEvent(self.h, event.h)

type QToolBoxtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QToolBox, slot: proc(super: QToolBoxtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_timerEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_timerEvent ".} =
  type Cb = proc(super: QToolBoxtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QToolBox(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QToolBox, event: gen_qcoreevent.QChildEvent): void =


  fQToolBox_virtualbase_childEvent(self.h, event.h)

type QToolBoxchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QToolBox, slot: proc(super: QToolBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_childEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_childEvent ".} =
  type Cb = proc(super: QToolBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QToolBox(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QToolBox, event: gen_qcoreevent.QEvent): void =


  fQToolBox_virtualbase_customEvent(self.h, event.h)

type QToolBoxcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QToolBox, slot: proc(super: QToolBoxcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_customEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_customEvent ".} =
  type Cb = proc(super: QToolBoxcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QToolBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QToolBox, signal: gen_qmetaobject.QMetaMethod): void =


  fQToolBox_virtualbase_connectNotify(self.h, signal.h)

type QToolBoxconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QToolBox, slot: proc(super: QToolBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_connectNotify(self: ptr cQToolBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QToolBox_connectNotify ".} =
  type Cb = proc(super: QToolBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QToolBox(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QToolBox, signal: gen_qmetaobject.QMetaMethod): void =


  fQToolBox_virtualbase_disconnectNotify(self.h, signal.h)

type QToolBoxdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QToolBox, slot: proc(super: QToolBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_disconnectNotify(self: ptr cQToolBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QToolBox_disconnectNotify ".} =
  type Cb = proc(super: QToolBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QToolBox(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QToolBox): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQToolBox_staticMetaObject())
proc delete*(self: QToolBox) =
  fcQToolBox_delete(self.h)
