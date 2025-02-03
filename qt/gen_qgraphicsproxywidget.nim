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
{.compile("gen_qgraphicsproxywidget.cpp", cflags).}


type QGraphicsProxyWidgetEnum* = cint
const
  QGraphicsProxyWidgetType* = 12



import gen_qgraphicsproxywidget_types
export gen_qgraphicsproxywidget_types

import
  gen_qcoreevent,
  gen_qevent,
  gen_qgraphicsitem,
  gen_qgraphicssceneevent,
  gen_qgraphicswidget,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainter,
  gen_qpainterpath,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qstyleoption,
  gen_qvariant,
  gen_qwidget
export
  gen_qcoreevent,
  gen_qevent,
  gen_qgraphicsitem,
  gen_qgraphicssceneevent,
  gen_qgraphicswidget,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainter,
  gen_qpainterpath,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qstyleoption,
  gen_qvariant,
  gen_qwidget

type cQGraphicsProxyWidget*{.exportc: "QGraphicsProxyWidget", incompleteStruct.} = object

proc fcQGraphicsProxyWidget_new(): ptr cQGraphicsProxyWidget {.importc: "QGraphicsProxyWidget_new".}
proc fcQGraphicsProxyWidget_new2(parent: pointer): ptr cQGraphicsProxyWidget {.importc: "QGraphicsProxyWidget_new2".}
proc fcQGraphicsProxyWidget_new3(parent: pointer, wFlags: cint): ptr cQGraphicsProxyWidget {.importc: "QGraphicsProxyWidget_new3".}
proc fcQGraphicsProxyWidget_metaObject(self: pointer, ): pointer {.importc: "QGraphicsProxyWidget_metaObject".}
proc fcQGraphicsProxyWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsProxyWidget_metacast".}
proc fcQGraphicsProxyWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsProxyWidget_metacall".}
proc fcQGraphicsProxyWidget_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsProxyWidget_tr".}
proc fcQGraphicsProxyWidget_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsProxyWidget_trUtf8".}
proc fcQGraphicsProxyWidget_setWidget(self: pointer, widget: pointer): void {.importc: "QGraphicsProxyWidget_setWidget".}
proc fcQGraphicsProxyWidget_widget(self: pointer, ): pointer {.importc: "QGraphicsProxyWidget_widget".}
proc fcQGraphicsProxyWidget_subWidgetRect(self: pointer, widget: pointer): pointer {.importc: "QGraphicsProxyWidget_subWidgetRect".}
proc fcQGraphicsProxyWidget_setGeometry(self: pointer, rect: pointer): void {.importc: "QGraphicsProxyWidget_setGeometry".}
proc fcQGraphicsProxyWidget_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsProxyWidget_paint".}
proc fcQGraphicsProxyWidget_typeX(self: pointer, ): cint {.importc: "QGraphicsProxyWidget_type".}
proc fcQGraphicsProxyWidget_createProxyForChildWidget(self: pointer, child: pointer): pointer {.importc: "QGraphicsProxyWidget_createProxyForChildWidget".}
proc fcQGraphicsProxyWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsProxyWidget_tr2".}
proc fcQGraphicsProxyWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsProxyWidget_tr3".}
proc fcQGraphicsProxyWidget_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsProxyWidget_trUtf82".}
proc fcQGraphicsProxyWidget_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsProxyWidget_trUtf83".}
proc fQGraphicsProxyWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGraphicsProxyWidget_virtualbase_metacall".}
proc fcQGraphicsProxyWidget_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_metacall".}
proc fQGraphicsProxyWidget_virtualbase_setGeometry(self: pointer, rect: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_setGeometry".}
proc fcQGraphicsProxyWidget_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_setGeometry".}
proc fQGraphicsProxyWidget_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_paint".}
proc fcQGraphicsProxyWidget_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_paint".}
proc fQGraphicsProxyWidget_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsProxyWidget_virtualbase_type".}
proc fcQGraphicsProxyWidget_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_type".}
proc fQGraphicsProxyWidget_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsProxyWidget_virtualbase_itemChange".}
proc fcQGraphicsProxyWidget_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_itemChange".}
proc fQGraphicsProxyWidget_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGraphicsProxyWidget_virtualbase_event".}
proc fcQGraphicsProxyWidget_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_event".}
proc fQGraphicsProxyWidget_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QGraphicsProxyWidget_virtualbase_eventFilter".}
proc fcQGraphicsProxyWidget_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_eventFilter".}
proc fQGraphicsProxyWidget_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_showEvent".}
proc fcQGraphicsProxyWidget_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_showEvent".}
proc fQGraphicsProxyWidget_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_hideEvent".}
proc fcQGraphicsProxyWidget_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_hideEvent".}
proc fQGraphicsProxyWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_contextMenuEvent".}
proc fcQGraphicsProxyWidget_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_contextMenuEvent".}
proc fQGraphicsProxyWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_dragEnterEvent".}
proc fcQGraphicsProxyWidget_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_dragEnterEvent".}
proc fQGraphicsProxyWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_dragLeaveEvent".}
proc fcQGraphicsProxyWidget_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_dragLeaveEvent".}
proc fQGraphicsProxyWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_dragMoveEvent".}
proc fcQGraphicsProxyWidget_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_dragMoveEvent".}
proc fQGraphicsProxyWidget_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_dropEvent".}
proc fcQGraphicsProxyWidget_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_dropEvent".}
proc fQGraphicsProxyWidget_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_hoverEnterEvent".}
proc fcQGraphicsProxyWidget_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_hoverEnterEvent".}
proc fQGraphicsProxyWidget_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsProxyWidget_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_hoverLeaveEvent".}
proc fQGraphicsProxyWidget_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_hoverMoveEvent".}
proc fcQGraphicsProxyWidget_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_hoverMoveEvent".}
proc fQGraphicsProxyWidget_virtualbase_grabMouseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_grabMouseEvent".}
proc fcQGraphicsProxyWidget_override_virtual_grabMouseEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_grabMouseEvent".}
proc fQGraphicsProxyWidget_virtualbase_ungrabMouseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_ungrabMouseEvent".}
proc fcQGraphicsProxyWidget_override_virtual_ungrabMouseEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_ungrabMouseEvent".}
proc fQGraphicsProxyWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_mouseMoveEvent".}
proc fcQGraphicsProxyWidget_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_mouseMoveEvent".}
proc fQGraphicsProxyWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_mousePressEvent".}
proc fcQGraphicsProxyWidget_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_mousePressEvent".}
proc fQGraphicsProxyWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsProxyWidget_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_mouseReleaseEvent".}
proc fQGraphicsProxyWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsProxyWidget_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsProxyWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_wheelEvent".}
proc fcQGraphicsProxyWidget_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_wheelEvent".}
proc fQGraphicsProxyWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_keyPressEvent".}
proc fcQGraphicsProxyWidget_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_keyPressEvent".}
proc fQGraphicsProxyWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_keyReleaseEvent".}
proc fcQGraphicsProxyWidget_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_keyReleaseEvent".}
proc fQGraphicsProxyWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_focusInEvent".}
proc fcQGraphicsProxyWidget_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_focusInEvent".}
proc fQGraphicsProxyWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_focusOutEvent".}
proc fcQGraphicsProxyWidget_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_focusOutEvent".}
proc fQGraphicsProxyWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QGraphicsProxyWidget_virtualbase_focusNextPrevChild".}
proc fcQGraphicsProxyWidget_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_focusNextPrevChild".}
proc fQGraphicsProxyWidget_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsProxyWidget_virtualbase_inputMethodQuery".}
proc fcQGraphicsProxyWidget_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_inputMethodQuery".}
proc fQGraphicsProxyWidget_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_inputMethodEvent".}
proc fcQGraphicsProxyWidget_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_inputMethodEvent".}
proc fQGraphicsProxyWidget_virtualbase_sizeHint(self: pointer, which: cint, constraint: pointer): pointer{.importc: "QGraphicsProxyWidget_virtualbase_sizeHint".}
proc fcQGraphicsProxyWidget_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_sizeHint".}
proc fQGraphicsProxyWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_resizeEvent".}
proc fcQGraphicsProxyWidget_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_resizeEvent".}
proc fQGraphicsProxyWidget_virtualbase_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void{.importc: "QGraphicsProxyWidget_virtualbase_getContentsMargins".}
proc fcQGraphicsProxyWidget_override_virtual_getContentsMargins(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_getContentsMargins".}
proc fQGraphicsProxyWidget_virtualbase_paintWindowFrame(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_paintWindowFrame".}
proc fcQGraphicsProxyWidget_override_virtual_paintWindowFrame(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_paintWindowFrame".}
proc fQGraphicsProxyWidget_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QGraphicsProxyWidget_virtualbase_boundingRect".}
proc fcQGraphicsProxyWidget_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_boundingRect".}
proc fQGraphicsProxyWidget_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsProxyWidget_virtualbase_shape".}
proc fcQGraphicsProxyWidget_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_shape".}
proc fQGraphicsProxyWidget_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_initStyleOption".}
proc fcQGraphicsProxyWidget_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_initStyleOption".}
proc fQGraphicsProxyWidget_virtualbase_updateGeometry(self: pointer, ): void{.importc: "QGraphicsProxyWidget_virtualbase_updateGeometry".}
proc fcQGraphicsProxyWidget_override_virtual_updateGeometry(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_updateGeometry".}
proc fQGraphicsProxyWidget_virtualbase_propertyChange(self: pointer, propertyName: struct_miqt_string, value: pointer): pointer{.importc: "QGraphicsProxyWidget_virtualbase_propertyChange".}
proc fcQGraphicsProxyWidget_override_virtual_propertyChange(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_propertyChange".}
proc fQGraphicsProxyWidget_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsProxyWidget_virtualbase_sceneEvent".}
proc fcQGraphicsProxyWidget_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_sceneEvent".}
proc fQGraphicsProxyWidget_virtualbase_windowFrameEvent(self: pointer, e: pointer): bool{.importc: "QGraphicsProxyWidget_virtualbase_windowFrameEvent".}
proc fcQGraphicsProxyWidget_override_virtual_windowFrameEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_windowFrameEvent".}
proc fQGraphicsProxyWidget_virtualbase_windowFrameSectionAt(self: pointer, pos: pointer): cint{.importc: "QGraphicsProxyWidget_virtualbase_windowFrameSectionAt".}
proc fcQGraphicsProxyWidget_override_virtual_windowFrameSectionAt(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_windowFrameSectionAt".}
proc fQGraphicsProxyWidget_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_changeEvent".}
proc fcQGraphicsProxyWidget_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_changeEvent".}
proc fQGraphicsProxyWidget_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_closeEvent".}
proc fcQGraphicsProxyWidget_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_closeEvent".}
proc fQGraphicsProxyWidget_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_moveEvent".}
proc fcQGraphicsProxyWidget_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_moveEvent".}
proc fQGraphicsProxyWidget_virtualbase_polishEvent(self: pointer, ): void{.importc: "QGraphicsProxyWidget_virtualbase_polishEvent".}
proc fcQGraphicsProxyWidget_override_virtual_polishEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_polishEvent".}
proc fQGraphicsProxyWidget_virtualbase_grabKeyboardEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_grabKeyboardEvent".}
proc fcQGraphicsProxyWidget_override_virtual_grabKeyboardEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_grabKeyboardEvent".}
proc fQGraphicsProxyWidget_virtualbase_ungrabKeyboardEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_ungrabKeyboardEvent".}
proc fcQGraphicsProxyWidget_override_virtual_ungrabKeyboardEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_ungrabKeyboardEvent".}
proc fQGraphicsProxyWidget_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_timerEvent".}
proc fcQGraphicsProxyWidget_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_timerEvent".}
proc fQGraphicsProxyWidget_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_childEvent".}
proc fcQGraphicsProxyWidget_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_childEvent".}
proc fQGraphicsProxyWidget_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_customEvent".}
proc fcQGraphicsProxyWidget_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_customEvent".}
proc fQGraphicsProxyWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_connectNotify".}
proc fcQGraphicsProxyWidget_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_connectNotify".}
proc fQGraphicsProxyWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_disconnectNotify".}
proc fcQGraphicsProxyWidget_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_disconnectNotify".}
proc fQGraphicsProxyWidget_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsProxyWidget_virtualbase_advance".}
proc fcQGraphicsProxyWidget_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_advance".}
proc fQGraphicsProxyWidget_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsProxyWidget_virtualbase_contains".}
proc fcQGraphicsProxyWidget_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_contains".}
proc fQGraphicsProxyWidget_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsProxyWidget_virtualbase_collidesWithItem".}
proc fcQGraphicsProxyWidget_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_collidesWithItem".}
proc fQGraphicsProxyWidget_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsProxyWidget_virtualbase_collidesWithPath".}
proc fcQGraphicsProxyWidget_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_collidesWithPath".}
proc fQGraphicsProxyWidget_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsProxyWidget_virtualbase_isObscuredBy".}
proc fcQGraphicsProxyWidget_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_isObscuredBy".}
proc fQGraphicsProxyWidget_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsProxyWidget_virtualbase_opaqueArea".}
proc fcQGraphicsProxyWidget_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_opaqueArea".}
proc fQGraphicsProxyWidget_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsProxyWidget_virtualbase_sceneEventFilter".}
proc fcQGraphicsProxyWidget_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_sceneEventFilter".}
proc fQGraphicsProxyWidget_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsProxyWidget_virtualbase_supportsExtension".}
proc fcQGraphicsProxyWidget_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_supportsExtension".}
proc fQGraphicsProxyWidget_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsProxyWidget_virtualbase_setExtension".}
proc fcQGraphicsProxyWidget_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_setExtension".}
proc fQGraphicsProxyWidget_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsProxyWidget_virtualbase_extension".}
proc fcQGraphicsProxyWidget_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsProxyWidget_override_virtual_extension".}
proc fcQGraphicsProxyWidget_delete(self: pointer) {.importc: "QGraphicsProxyWidget_delete".}


func init*(T: type QGraphicsProxyWidget, h: ptr cQGraphicsProxyWidget): QGraphicsProxyWidget =
  T(h: h)
proc create*(T: type QGraphicsProxyWidget, ): QGraphicsProxyWidget =

  QGraphicsProxyWidget.init(fcQGraphicsProxyWidget_new())
proc create*(T: type QGraphicsProxyWidget, parent: gen_qgraphicsitem.QGraphicsItem): QGraphicsProxyWidget =

  QGraphicsProxyWidget.init(fcQGraphicsProxyWidget_new2(parent.h))
proc create*(T: type QGraphicsProxyWidget, parent: gen_qgraphicsitem.QGraphicsItem, wFlags: gen_qnamespace.WindowType): QGraphicsProxyWidget =

  QGraphicsProxyWidget.init(fcQGraphicsProxyWidget_new3(parent.h, cint(wFlags)))
proc metaObject*(self: QGraphicsProxyWidget, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQGraphicsProxyWidget_metaObject(self.h))

proc metacast*(self: QGraphicsProxyWidget, param1: cstring): pointer =

  fcQGraphicsProxyWidget_metacast(self.h, param1)

proc metacall*(self: QGraphicsProxyWidget, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQGraphicsProxyWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QGraphicsProxyWidget, s: cstring): string =

  let v_ms = fcQGraphicsProxyWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QGraphicsProxyWidget, s: cstring): string =

  let v_ms = fcQGraphicsProxyWidget_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWidget*(self: QGraphicsProxyWidget, widget: gen_qwidget.QWidget): void =

  fcQGraphicsProxyWidget_setWidget(self.h, widget.h)

proc widget*(self: QGraphicsProxyWidget, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQGraphicsProxyWidget_widget(self.h))

proc subWidgetRect*(self: QGraphicsProxyWidget, widget: gen_qwidget.QWidget): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsProxyWidget_subWidgetRect(self.h, widget.h))

proc setGeometry*(self: QGraphicsProxyWidget, rect: gen_qrect.QRectF): void =

  fcQGraphicsProxyWidget_setGeometry(self.h, rect.h)

proc paint*(self: QGraphicsProxyWidget, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =

  fcQGraphicsProxyWidget_paint(self.h, painter.h, option.h, widget.h)

proc typeX*(self: QGraphicsProxyWidget, ): cint =

  fcQGraphicsProxyWidget_typeX(self.h)

proc createProxyForChildWidget*(self: QGraphicsProxyWidget, child: gen_qwidget.QWidget): QGraphicsProxyWidget =

  QGraphicsProxyWidget(h: fcQGraphicsProxyWidget_createProxyForChildWidget(self.h, child.h))

proc tr2*(_: type QGraphicsProxyWidget, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsProxyWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QGraphicsProxyWidget, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsProxyWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QGraphicsProxyWidget, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsProxyWidget_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QGraphicsProxyWidget, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsProxyWidget_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QGraphicsProxyWidget, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQGraphicsProxyWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGraphicsProxyWidgetmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_metacall(self: ptr cQGraphicsProxyWidget, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_metacall ".} =
  type Cb = proc(super: QGraphicsProxyWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QGraphicsProxyWidget(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setGeometry(self: QGraphicsProxyWidget, rect: gen_qrect.QRectF): void =


  fQGraphicsProxyWidget_virtualbase_setGeometry(self.h, rect.h)

type QGraphicsProxyWidgetsetGeometryBase* = proc(rect: gen_qrect.QRectF): void
proc onsetGeometry*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetsetGeometryBase, rect: gen_qrect.QRectF): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetsetGeometryBase, rect: gen_qrect.QRectF): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_setGeometry(self: ptr cQGraphicsProxyWidget, slot: int, rect: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_setGeometry ".} =
  type Cb = proc(super: QGraphicsProxyWidgetsetGeometryBase, rect: gen_qrect.QRectF): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(rect: gen_qrect.QRectF): auto =
    callVirtualBase_setGeometry(QGraphicsProxyWidget(h: self), rect)
  let slotval1 = gen_qrect.QRectF(h: rect)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paint(self: QGraphicsProxyWidget, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =


  fQGraphicsProxyWidget_virtualbase_paint(self.h, painter.h, option.h, widget.h)

type QGraphicsProxyWidgetpaintBase* = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
proc onpaint*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetpaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetpaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_paint(self: ptr cQGraphicsProxyWidget, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_paint ".} =
  type Cb = proc(super: QGraphicsProxyWidgetpaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_paint(QGraphicsProxyWidget(h: self), painter, option, widget)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qstyleoption.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_typeX(self: QGraphicsProxyWidget, ): cint =


  fQGraphicsProxyWidget_virtualbase_type(self.h)

type QGraphicsProxyWidgettypeXBase* = proc(): cint
proc ontypeX*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgettypeXBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgettypeXBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_type(self: ptr cQGraphicsProxyWidget, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_type ".} =
  type Cb = proc(super: QGraphicsProxyWidgettypeXBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_typeX(QGraphicsProxyWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_itemChange(self: QGraphicsProxyWidget, change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsProxyWidget_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsProxyWidgetitemChangeBase* = proc(change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onitemChange*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetitemChangeBase, change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetitemChangeBase, change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_itemChange(self: ptr cQGraphicsProxyWidget, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_itemChange ".} =
  type Cb = proc(super: QGraphicsProxyWidgetitemChangeBase, change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): auto =
    callVirtualBase_itemChange(QGraphicsProxyWidget(h: self), change, value)
  let slotval1 = gen_qgraphicsitem.QGraphicsItemGraphicsItemChange(change)

  let slotval2 = gen_qvariant.QVariant(h: value)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_event(self: QGraphicsProxyWidget, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsProxyWidget_virtualbase_event(self.h, event.h)

type QGraphicsProxyWidgeteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgeteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgeteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_event(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_event ".} =
  type Cb = proc(super: QGraphicsProxyWidgeteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QGraphicsProxyWidget, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsProxyWidget_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QGraphicsProxyWidgeteventFilterBase* = proc(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgeteventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgeteventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_eventFilter(self: ptr cQGraphicsProxyWidget, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_eventFilter ".} =
  type Cb = proc(super: QGraphicsProxyWidgeteventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QGraphicsProxyWidget(h: self), objectVal, event)
  let slotval1 = gen_qobject.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_showEvent(self: QGraphicsProxyWidget, event: gen_qevent.QShowEvent): void =


  fQGraphicsProxyWidget_virtualbase_showEvent(self.h, event.h)

type QGraphicsProxyWidgetshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_showEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_showEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgetshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QGraphicsProxyWidget, event: gen_qevent.QHideEvent): void =


  fQGraphicsProxyWidget_virtualbase_hideEvent(self.h, event.h)

type QGraphicsProxyWidgethideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgethideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgethideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_hideEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_hideEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgethideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void =


  fQGraphicsProxyWidget_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsProxyWidgetcontextMenuEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_contextMenuEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_contextMenuEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgetcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsProxyWidget_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsProxyWidgetdragEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_dragEnterEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_dragEnterEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgetdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragEnterEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsProxyWidget_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsProxyWidgetdragLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_dragLeaveEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_dragLeaveEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgetdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragLeaveEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsProxyWidget_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsProxyWidgetdragMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_dragMoveEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_dragMoveEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgetdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragMoveEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsProxyWidget_virtualbase_dropEvent(self.h, event.h)

type QGraphicsProxyWidgetdropEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_dropEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_dropEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgetdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dropEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverEnterEvent(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsProxyWidget_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsProxyWidgethoverEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgethoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgethoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_hoverEnterEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_hoverEnterEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgethoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverEnterEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverLeaveEvent(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsProxyWidget_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsProxyWidgethoverLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgethoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgethoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_hoverLeaveEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_hoverLeaveEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgethoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverLeaveEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverMoveEvent(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsProxyWidget_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsProxyWidgethoverMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgethoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgethoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_hoverMoveEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_hoverMoveEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgethoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverMoveEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_grabMouseEvent(self: QGraphicsProxyWidget, event: gen_qcoreevent.QEvent): void =


  fQGraphicsProxyWidget_virtualbase_grabMouseEvent(self.h, event.h)

type QGraphicsProxyWidgetgrabMouseEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc ongrabMouseEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetgrabMouseEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetgrabMouseEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_grabMouseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_grabMouseEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_grabMouseEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgetgrabMouseEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_grabMouseEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_ungrabMouseEvent(self: QGraphicsProxyWidget, event: gen_qcoreevent.QEvent): void =


  fQGraphicsProxyWidget_virtualbase_ungrabMouseEvent(self.h, event.h)

type QGraphicsProxyWidgetungrabMouseEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onungrabMouseEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetungrabMouseEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetungrabMouseEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_ungrabMouseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_ungrabMouseEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_ungrabMouseEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgetungrabMouseEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_ungrabMouseEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsProxyWidget_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsProxyWidgetmouseMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_mouseMoveEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_mouseMoveEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgetmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsProxyWidget_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsProxyWidgetmousePressEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_mousePressEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_mousePressEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgetmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mousePressEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsProxyWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsProxyWidgetmouseReleaseEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_mouseReleaseEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_mouseReleaseEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgetmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsProxyWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsProxyWidgetmouseDoubleClickEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_mouseDoubleClickEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgetmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void =


  fQGraphicsProxyWidget_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsProxyWidgetwheelEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_wheelEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_wheelEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgetwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): auto =
    callVirtualBase_wheelEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QGraphicsProxyWidget, event: gen_qevent.QKeyEvent): void =


  fQGraphicsProxyWidget_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsProxyWidgetkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_keyPressEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_keyPressEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QGraphicsProxyWidget, event: gen_qevent.QKeyEvent): void =


  fQGraphicsProxyWidget_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsProxyWidgetkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_keyReleaseEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_keyReleaseEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QGraphicsProxyWidget, event: gen_qevent.QFocusEvent): void =


  fQGraphicsProxyWidget_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsProxyWidgetfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_focusInEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_focusInEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QGraphicsProxyWidget, event: gen_qevent.QFocusEvent): void =


  fQGraphicsProxyWidget_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsProxyWidgetfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_focusOutEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_focusOutEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusNextPrevChild(self: QGraphicsProxyWidget, next: bool): bool =


  fQGraphicsProxyWidget_virtualbase_focusNextPrevChild(self.h, next)

type QGraphicsProxyWidgetfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_focusNextPrevChild(self: ptr cQGraphicsProxyWidget, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_focusNextPrevChild ".} =
  type Cb = proc(super: QGraphicsProxyWidgetfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QGraphicsProxyWidget(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_inputMethodQuery(self: QGraphicsProxyWidget, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsProxyWidget_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsProxyWidgetinputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_inputMethodQuery(self: ptr cQGraphicsProxyWidget, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_inputMethodQuery ".} =
  type Cb = proc(super: QGraphicsProxyWidgetinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QGraphicsProxyWidget(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QGraphicsProxyWidget, event: gen_qevent.QInputMethodEvent): void =


  fQGraphicsProxyWidget_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsProxyWidgetinputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_inputMethodEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_inputMethodEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgetinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QGraphicsProxyWidget, which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF =


  gen_qsize.QSizeF(h: fQGraphicsProxyWidget_virtualbase_sizeHint(self.h, cint(which), constraint.h))

type QGraphicsProxyWidgetsizeHintBase* = proc(which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF
proc onsizeHint*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetsizeHintBase, which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetsizeHintBase, which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_sizeHint(self: ptr cQGraphicsProxyWidget, slot: int, which: cint, constraint: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_sizeHint ".} =
  type Cb = proc(super: QGraphicsProxyWidgetsizeHintBase, which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): auto =
    callVirtualBase_sizeHint(QGraphicsProxyWidget(h: self), which, constraint)
  let slotval1 = gen_qnamespace.SizeHint(which)

  let slotval2 = gen_qsize.QSizeF(h: constraint)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_resizeEvent(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent.QGraphicsSceneResizeEvent): void =


  fQGraphicsProxyWidget_virtualbase_resizeEvent(self.h, event.h)

type QGraphicsProxyWidgetresizeEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneResizeEvent): void
proc onresizeEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetresizeEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetresizeEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_resizeEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_resizeEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgetresizeEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneResizeEvent): auto =
    callVirtualBase_resizeEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_getContentsMargins(self: QGraphicsProxyWidget, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =


  fQGraphicsProxyWidget_virtualbase_getContentsMargins(self.h, left, top, right, bottom)

type QGraphicsProxyWidgetgetContentsMarginsBase* = proc(left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
proc ongetContentsMargins*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetgetContentsMarginsBase, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetgetContentsMarginsBase, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_getContentsMargins(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_getContentsMargins(self: ptr cQGraphicsProxyWidget, slot: int, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_getContentsMargins ".} =
  type Cb = proc(super: QGraphicsProxyWidgetgetContentsMarginsBase, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): auto =
    callVirtualBase_getContentsMargins(QGraphicsProxyWidget(h: self), left, top, right, bottom)
  let slotval1 = left

  let slotval2 = top

  let slotval3 = right

  let slotval4 = bottom


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_paintWindowFrame(self: QGraphicsProxyWidget, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =


  fQGraphicsProxyWidget_virtualbase_paintWindowFrame(self.h, painter.h, option.h, widget.h)

type QGraphicsProxyWidgetpaintWindowFrameBase* = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
proc onpaintWindowFrame*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetpaintWindowFrameBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetpaintWindowFrameBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_paintWindowFrame(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_paintWindowFrame(self: ptr cQGraphicsProxyWidget, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_paintWindowFrame ".} =
  type Cb = proc(super: QGraphicsProxyWidgetpaintWindowFrameBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_paintWindowFrame(QGraphicsProxyWidget(h: self), painter, option, widget)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qstyleoption.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_boundingRect(self: QGraphicsProxyWidget, ): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQGraphicsProxyWidget_virtualbase_boundingRect(self.h))

type QGraphicsProxyWidgetboundingRectBase* = proc(): gen_qrect.QRectF
proc onboundingRect*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetboundingRectBase): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetboundingRectBase): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_boundingRect(self: ptr cQGraphicsProxyWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_boundingRect ".} =
  type Cb = proc(super: QGraphicsProxyWidgetboundingRectBase): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_boundingRect(QGraphicsProxyWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_shape(self: QGraphicsProxyWidget, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsProxyWidget_virtualbase_shape(self.h))

type QGraphicsProxyWidgetshapeBase* = proc(): gen_qpainterpath.QPainterPath
proc onshape*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetshapeBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetshapeBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_shape(self: ptr cQGraphicsProxyWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_shape ".} =
  type Cb = proc(super: QGraphicsProxyWidgetshapeBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_shape(QGraphicsProxyWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_initStyleOption(self: QGraphicsProxyWidget, option: gen_qstyleoption.QStyleOption): void =


  fQGraphicsProxyWidget_virtualbase_initStyleOption(self.h, option.h)

type QGraphicsProxyWidgetinitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOption): void
proc oninitStyleOption*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetinitStyleOptionBase, option: gen_qstyleoption.QStyleOption): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetinitStyleOptionBase, option: gen_qstyleoption.QStyleOption): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_initStyleOption(self: ptr cQGraphicsProxyWidget, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_initStyleOption ".} =
  type Cb = proc(super: QGraphicsProxyWidgetinitStyleOptionBase, option: gen_qstyleoption.QStyleOption): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOption): auto =
    callVirtualBase_initStyleOption(QGraphicsProxyWidget(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOption(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_updateGeometry(self: QGraphicsProxyWidget, ): void =


  fQGraphicsProxyWidget_virtualbase_updateGeometry(self.h)

type QGraphicsProxyWidgetupdateGeometryBase* = proc(): void
proc onupdateGeometry*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetupdateGeometryBase): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetupdateGeometryBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_updateGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_updateGeometry(self: ptr cQGraphicsProxyWidget, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_updateGeometry ".} =
  type Cb = proc(super: QGraphicsProxyWidgetupdateGeometryBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateGeometry(QGraphicsProxyWidget(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_propertyChange(self: QGraphicsProxyWidget, propertyName: string, value: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsProxyWidget_virtualbase_propertyChange(self.h, struct_miqt_string(data: propertyName, len: csize_t(len(propertyName))), value.h))

type QGraphicsProxyWidgetpropertyChangeBase* = proc(propertyName: string, value: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onpropertyChange*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetpropertyChangeBase, propertyName: string, value: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetpropertyChangeBase, propertyName: string, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_propertyChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_propertyChange(self: ptr cQGraphicsProxyWidget, slot: int, propertyName: struct_miqt_string, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_propertyChange ".} =
  type Cb = proc(super: QGraphicsProxyWidgetpropertyChangeBase, propertyName: string, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(propertyName: string, value: gen_qvariant.QVariant): auto =
    callVirtualBase_propertyChange(QGraphicsProxyWidget(h: self), propertyName, value)
  let vpropertyName_ms = propertyName
  let vpropertyNamex_ret = string.fromBytes(toOpenArrayByte(vpropertyName_ms.data, 0, int(vpropertyName_ms.len)-1))
  c_free(vpropertyName_ms.data)
  let slotval1 = vpropertyNamex_ret

  let slotval2 = gen_qvariant.QVariant(h: value)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_sceneEvent(self: QGraphicsProxyWidget, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsProxyWidget_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsProxyWidgetsceneEventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onsceneEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetsceneEventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_sceneEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_sceneEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgetsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_windowFrameEvent(self: QGraphicsProxyWidget, e: gen_qcoreevent.QEvent): bool =


  fQGraphicsProxyWidget_virtualbase_windowFrameEvent(self.h, e.h)

type QGraphicsProxyWidgetwindowFrameEventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onwindowFrameEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetwindowFrameEventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetwindowFrameEventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_windowFrameEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_windowFrameEvent(self: ptr cQGraphicsProxyWidget, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_windowFrameEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgetwindowFrameEventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_windowFrameEvent(QGraphicsProxyWidget(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_windowFrameSectionAt(self: QGraphicsProxyWidget, pos: gen_qpoint.QPointF): gen_qnamespace.WindowFrameSection =


  gen_qnamespace.WindowFrameSection(fQGraphicsProxyWidget_virtualbase_windowFrameSectionAt(self.h, pos.h))

type QGraphicsProxyWidgetwindowFrameSectionAtBase* = proc(pos: gen_qpoint.QPointF): gen_qnamespace.WindowFrameSection
proc onwindowFrameSectionAt*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetwindowFrameSectionAtBase, pos: gen_qpoint.QPointF): gen_qnamespace.WindowFrameSection) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetwindowFrameSectionAtBase, pos: gen_qpoint.QPointF): gen_qnamespace.WindowFrameSection
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_windowFrameSectionAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_windowFrameSectionAt(self: ptr cQGraphicsProxyWidget, slot: int, pos: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_windowFrameSectionAt ".} =
  type Cb = proc(super: QGraphicsProxyWidgetwindowFrameSectionAtBase, pos: gen_qpoint.QPointF): gen_qnamespace.WindowFrameSection
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(pos: gen_qpoint.QPointF): auto =
    callVirtualBase_windowFrameSectionAt(QGraphicsProxyWidget(h: self), pos)
  let slotval1 = gen_qpoint.QPointF(h: pos)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  cint(virtualReturn)
proc callVirtualBase_changeEvent(self: QGraphicsProxyWidget, event: gen_qcoreevent.QEvent): void =


  fQGraphicsProxyWidget_virtualbase_changeEvent(self.h, event.h)

type QGraphicsProxyWidgetchangeEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetchangeEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetchangeEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_changeEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_changeEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgetchangeEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QGraphicsProxyWidget, event: gen_qevent.QCloseEvent): void =


  fQGraphicsProxyWidget_virtualbase_closeEvent(self.h, event.h)

type QGraphicsProxyWidgetcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_closeEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_closeEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QGraphicsProxyWidget, event: gen_qgraphicssceneevent.QGraphicsSceneMoveEvent): void =


  fQGraphicsProxyWidget_virtualbase_moveEvent(self.h, event.h)

type QGraphicsProxyWidgetmoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMoveEvent): void
proc onmoveEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetmoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetmoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_moveEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_moveEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgetmoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMoveEvent): auto =
    callVirtualBase_moveEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_polishEvent(self: QGraphicsProxyWidget, ): void =


  fQGraphicsProxyWidget_virtualbase_polishEvent(self.h)

type QGraphicsProxyWidgetpolishEventBase* = proc(): void
proc onpolishEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetpolishEventBase): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetpolishEventBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_polishEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_polishEvent(self: ptr cQGraphicsProxyWidget, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_polishEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgetpolishEventBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_polishEvent(QGraphicsProxyWidget(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_grabKeyboardEvent(self: QGraphicsProxyWidget, event: gen_qcoreevent.QEvent): void =


  fQGraphicsProxyWidget_virtualbase_grabKeyboardEvent(self.h, event.h)

type QGraphicsProxyWidgetgrabKeyboardEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc ongrabKeyboardEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetgrabKeyboardEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetgrabKeyboardEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_grabKeyboardEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_grabKeyboardEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_grabKeyboardEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgetgrabKeyboardEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_grabKeyboardEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_ungrabKeyboardEvent(self: QGraphicsProxyWidget, event: gen_qcoreevent.QEvent): void =


  fQGraphicsProxyWidget_virtualbase_ungrabKeyboardEvent(self.h, event.h)

type QGraphicsProxyWidgetungrabKeyboardEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onungrabKeyboardEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetungrabKeyboardEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetungrabKeyboardEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_ungrabKeyboardEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_ungrabKeyboardEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_ungrabKeyboardEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgetungrabKeyboardEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_ungrabKeyboardEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QGraphicsProxyWidget, event: gen_qcoreevent.QTimerEvent): void =


  fQGraphicsProxyWidget_virtualbase_timerEvent(self.h, event.h)

type QGraphicsProxyWidgettimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_timerEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_timerEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QGraphicsProxyWidget, event: gen_qcoreevent.QChildEvent): void =


  fQGraphicsProxyWidget_virtualbase_childEvent(self.h, event.h)

type QGraphicsProxyWidgetchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_childEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_childEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QGraphicsProxyWidget, event: gen_qcoreevent.QEvent): void =


  fQGraphicsProxyWidget_virtualbase_customEvent(self.h, event.h)

type QGraphicsProxyWidgetcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_customEvent(self: ptr cQGraphicsProxyWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_customEvent ".} =
  type Cb = proc(super: QGraphicsProxyWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QGraphicsProxyWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QGraphicsProxyWidget, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsProxyWidget_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsProxyWidgetconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_connectNotify(self: ptr cQGraphicsProxyWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_connectNotify ".} =
  type Cb = proc(super: QGraphicsProxyWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QGraphicsProxyWidget(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QGraphicsProxyWidget, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsProxyWidget_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsProxyWidgetdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_disconnectNotify(self: ptr cQGraphicsProxyWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_disconnectNotify ".} =
  type Cb = proc(super: QGraphicsProxyWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QGraphicsProxyWidget(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_advance(self: QGraphicsProxyWidget, phase: cint): void =


  fQGraphicsProxyWidget_virtualbase_advance(self.h, phase)

type QGraphicsProxyWidgetadvanceBase* = proc(phase: cint): void
proc onadvance*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetadvanceBase, phase: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetadvanceBase, phase: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_advance(self: ptr cQGraphicsProxyWidget, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_advance ".} =
  type Cb = proc(super: QGraphicsProxyWidgetadvanceBase, phase: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(phase: cint): auto =
    callVirtualBase_advance(QGraphicsProxyWidget(h: self), phase)
  let slotval1 = phase


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contains(self: QGraphicsProxyWidget, point: gen_qpoint.QPointF): bool =


  fQGraphicsProxyWidget_virtualbase_contains(self.h, point.h)

type QGraphicsProxyWidgetcontainsBase* = proc(point: gen_qpoint.QPointF): bool
proc oncontains*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetcontainsBase, point: gen_qpoint.QPointF): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetcontainsBase, point: gen_qpoint.QPointF): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_contains(self: ptr cQGraphicsProxyWidget, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_contains ".} =
  type Cb = proc(super: QGraphicsProxyWidgetcontainsBase, point: gen_qpoint.QPointF): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(point: gen_qpoint.QPointF): auto =
    callVirtualBase_contains(QGraphicsProxyWidget(h: self), point)
  let slotval1 = gen_qpoint.QPointF(h: point)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_collidesWithItem(self: QGraphicsProxyWidget, other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsProxyWidget_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsProxyWidgetcollidesWithItemBase* = proc(other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithItem*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetcollidesWithItemBase, other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetcollidesWithItemBase, other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_collidesWithItem(self: ptr cQGraphicsProxyWidget, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_collidesWithItem ".} =
  type Cb = proc(super: QGraphicsProxyWidgetcollidesWithItemBase, other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithItem(QGraphicsProxyWidget(h: self), other, mode)
  let slotval1 = gen_qgraphicsitem.QGraphicsItem(h: other)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_collidesWithPath(self: QGraphicsProxyWidget, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsProxyWidget_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsProxyWidgetcollidesWithPathBase* = proc(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithPath*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_collidesWithPath(self: ptr cQGraphicsProxyWidget, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_collidesWithPath ".} =
  type Cb = proc(super: QGraphicsProxyWidgetcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithPath(QGraphicsProxyWidget(h: self), path, mode)
  let slotval1 = gen_qpainterpath.QPainterPath(h: path)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_isObscuredBy(self: QGraphicsProxyWidget, item: gen_qgraphicsitem.QGraphicsItem): bool =


  fQGraphicsProxyWidget_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsProxyWidgetisObscuredByBase* = proc(item: gen_qgraphicsitem.QGraphicsItem): bool
proc onisObscuredBy*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetisObscuredByBase, item: gen_qgraphicsitem.QGraphicsItem): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetisObscuredByBase, item: gen_qgraphicsitem.QGraphicsItem): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_isObscuredBy(self: ptr cQGraphicsProxyWidget, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_isObscuredBy ".} =
  type Cb = proc(super: QGraphicsProxyWidgetisObscuredByBase, item: gen_qgraphicsitem.QGraphicsItem): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(item: gen_qgraphicsitem.QGraphicsItem): auto =
    callVirtualBase_isObscuredBy(QGraphicsProxyWidget(h: self), item)
  let slotval1 = gen_qgraphicsitem.QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_opaqueArea(self: QGraphicsProxyWidget, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsProxyWidget_virtualbase_opaqueArea(self.h))

type QGraphicsProxyWidgetopaqueAreaBase* = proc(): gen_qpainterpath.QPainterPath
proc onopaqueArea*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetopaqueAreaBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetopaqueAreaBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_opaqueArea(self: ptr cQGraphicsProxyWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_opaqueArea ".} =
  type Cb = proc(super: QGraphicsProxyWidgetopaqueAreaBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_opaqueArea(QGraphicsProxyWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_sceneEventFilter(self: QGraphicsProxyWidget, watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsProxyWidget_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsProxyWidgetsceneEventFilterBase* = proc(watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): bool
proc onsceneEventFilter*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetsceneEventFilterBase, watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetsceneEventFilterBase, watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_sceneEventFilter(self: ptr cQGraphicsProxyWidget, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_sceneEventFilter ".} =
  type Cb = proc(super: QGraphicsProxyWidgetsceneEventFilterBase, watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEventFilter(QGraphicsProxyWidget(h: self), watched, event)
  let slotval1 = gen_qgraphicsitem.QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_supportsExtension(self: QGraphicsProxyWidget, extension: gen_qgraphicsitem.QGraphicsItemExtension): bool =


  fQGraphicsProxyWidget_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsProxyWidgetsupportsExtensionBase* = proc(extension: gen_qgraphicsitem.QGraphicsItemExtension): bool
proc onsupportsExtension*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetsupportsExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetsupportsExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_supportsExtension(self: ptr cQGraphicsProxyWidget, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_supportsExtension ".} =
  type Cb = proc(super: QGraphicsProxyWidgetsupportsExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: gen_qgraphicsitem.QGraphicsItemExtension): auto =
    callVirtualBase_supportsExtension(QGraphicsProxyWidget(h: self), extension)
  let slotval1 = gen_qgraphicsitem.QGraphicsItemExtension(extension)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_setExtension(self: QGraphicsProxyWidget, extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): void =


  fQGraphicsProxyWidget_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsProxyWidgetsetExtensionBase* = proc(extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
proc onsetExtension*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetsetExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetsetExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_setExtension(self: ptr cQGraphicsProxyWidget, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_setExtension ".} =
  type Cb = proc(super: QGraphicsProxyWidgetsetExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): auto =
    callVirtualBase_setExtension(QGraphicsProxyWidget(h: self), extension, variant)
  let slotval1 = gen_qgraphicsitem.QGraphicsItemExtension(extension)

  let slotval2 = gen_qvariant.QVariant(h: variant)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_extension(self: QGraphicsProxyWidget, variant: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsProxyWidget_virtualbase_extension(self.h, variant.h))

type QGraphicsProxyWidgetextensionBase* = proc(variant: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onextension*(self: QGraphicsProxyWidget, slot: proc(super: QGraphicsProxyWidgetextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsProxyWidgetextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsProxyWidget_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsProxyWidget_extension(self: ptr cQGraphicsProxyWidget, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsProxyWidget_extension ".} =
  type Cb = proc(super: QGraphicsProxyWidgetextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(variant: gen_qvariant.QVariant): auto =
    callVirtualBase_extension(QGraphicsProxyWidget(h: self), variant)
  let slotval1 = gen_qvariant.QVariant(h: variant)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc delete*(self: QGraphicsProxyWidget) =
  fcQGraphicsProxyWidget_delete(self.h)
