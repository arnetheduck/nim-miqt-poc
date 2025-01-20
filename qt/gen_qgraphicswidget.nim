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
{.compile("gen_qgraphicswidget.cpp", cflags).}


type QGraphicsWidgetEnum* = cint
const
  QGraphicsWidgetType* = 11



import gen_qgraphicswidget_types
export gen_qgraphicswidget_types

import
  gen_qaction,
  gen_qcoreevent,
  gen_qevent,
  gen_qfont,
  gen_qgraphicsitem,
  gen_qgraphicslayout,
  gen_qgraphicssceneevent,
  gen_qkeysequence,
  gen_qmargins,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainter,
  gen_qpainterpath,
  gen_qpalette,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qstyle,
  gen_qstyleoption,
  gen_qvariant,
  gen_qwidget
export
  gen_qaction,
  gen_qcoreevent,
  gen_qevent,
  gen_qfont,
  gen_qgraphicsitem,
  gen_qgraphicslayout,
  gen_qgraphicssceneevent,
  gen_qkeysequence,
  gen_qmargins,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainter,
  gen_qpainterpath,
  gen_qpalette,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qstyle,
  gen_qstyleoption,
  gen_qvariant,
  gen_qwidget

type cQGraphicsWidget*{.exportc: "QGraphicsWidget", incompleteStruct.} = object

proc fcQGraphicsWidget_new(): ptr cQGraphicsWidget {.importc: "QGraphicsWidget_new".}
proc fcQGraphicsWidget_new2(parent: pointer): ptr cQGraphicsWidget {.importc: "QGraphicsWidget_new2".}
proc fcQGraphicsWidget_new3(parent: pointer, wFlags: cint): ptr cQGraphicsWidget {.importc: "QGraphicsWidget_new3".}
proc fcQGraphicsWidget_metaObject(self: pointer, ): pointer {.importc: "QGraphicsWidget_metaObject".}
proc fcQGraphicsWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsWidget_metacast".}
proc fcQGraphicsWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsWidget_metacall".}
proc fcQGraphicsWidget_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsWidget_tr".}
proc fcQGraphicsWidget_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsWidget_trUtf8".}
proc fcQGraphicsWidget_layout(self: pointer, ): pointer {.importc: "QGraphicsWidget_layout".}
proc fcQGraphicsWidget_setLayout(self: pointer, layout: pointer): void {.importc: "QGraphicsWidget_setLayout".}
proc fcQGraphicsWidget_adjustSize(self: pointer, ): void {.importc: "QGraphicsWidget_adjustSize".}
proc fcQGraphicsWidget_layoutDirection(self: pointer, ): cint {.importc: "QGraphicsWidget_layoutDirection".}
proc fcQGraphicsWidget_setLayoutDirection(self: pointer, direction: cint): void {.importc: "QGraphicsWidget_setLayoutDirection".}
proc fcQGraphicsWidget_unsetLayoutDirection(self: pointer, ): void {.importc: "QGraphicsWidget_unsetLayoutDirection".}
proc fcQGraphicsWidget_style(self: pointer, ): pointer {.importc: "QGraphicsWidget_style".}
proc fcQGraphicsWidget_setStyle(self: pointer, style: pointer): void {.importc: "QGraphicsWidget_setStyle".}
proc fcQGraphicsWidget_font(self: pointer, ): pointer {.importc: "QGraphicsWidget_font".}
proc fcQGraphicsWidget_setFont(self: pointer, font: pointer): void {.importc: "QGraphicsWidget_setFont".}
proc fcQGraphicsWidget_palette(self: pointer, ): pointer {.importc: "QGraphicsWidget_palette".}
proc fcQGraphicsWidget_setPalette(self: pointer, palette: pointer): void {.importc: "QGraphicsWidget_setPalette".}
proc fcQGraphicsWidget_autoFillBackground(self: pointer, ): bool {.importc: "QGraphicsWidget_autoFillBackground".}
proc fcQGraphicsWidget_setAutoFillBackground(self: pointer, enabled: bool): void {.importc: "QGraphicsWidget_setAutoFillBackground".}
proc fcQGraphicsWidget_resize(self: pointer, size: pointer): void {.importc: "QGraphicsWidget_resize".}
proc fcQGraphicsWidget_resize2(self: pointer, w: float64, h: float64): void {.importc: "QGraphicsWidget_resize2".}
proc fcQGraphicsWidget_size(self: pointer, ): pointer {.importc: "QGraphicsWidget_size".}
proc fcQGraphicsWidget_setGeometry(self: pointer, rect: pointer): void {.importc: "QGraphicsWidget_setGeometry".}
proc fcQGraphicsWidget_setGeometry2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QGraphicsWidget_setGeometry2".}
proc fcQGraphicsWidget_rect(self: pointer, ): pointer {.importc: "QGraphicsWidget_rect".}
proc fcQGraphicsWidget_setContentsMargins(self: pointer, left: float64, top: float64, right: float64, bottom: float64): void {.importc: "QGraphicsWidget_setContentsMargins".}
proc fcQGraphicsWidget_setContentsMarginsWithMargins(self: pointer, margins: pointer): void {.importc: "QGraphicsWidget_setContentsMarginsWithMargins".}
proc fcQGraphicsWidget_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.importc: "QGraphicsWidget_getContentsMargins".}
proc fcQGraphicsWidget_setWindowFrameMargins(self: pointer, left: float64, top: float64, right: float64, bottom: float64): void {.importc: "QGraphicsWidget_setWindowFrameMargins".}
proc fcQGraphicsWidget_setWindowFrameMarginsWithMargins(self: pointer, margins: pointer): void {.importc: "QGraphicsWidget_setWindowFrameMarginsWithMargins".}
proc fcQGraphicsWidget_getWindowFrameMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.importc: "QGraphicsWidget_getWindowFrameMargins".}
proc fcQGraphicsWidget_unsetWindowFrameMargins(self: pointer, ): void {.importc: "QGraphicsWidget_unsetWindowFrameMargins".}
proc fcQGraphicsWidget_windowFrameGeometry(self: pointer, ): pointer {.importc: "QGraphicsWidget_windowFrameGeometry".}
proc fcQGraphicsWidget_windowFrameRect(self: pointer, ): pointer {.importc: "QGraphicsWidget_windowFrameRect".}
proc fcQGraphicsWidget_windowFlags(self: pointer, ): cint {.importc: "QGraphicsWidget_windowFlags".}
proc fcQGraphicsWidget_windowType(self: pointer, ): cint {.importc: "QGraphicsWidget_windowType".}
proc fcQGraphicsWidget_setWindowFlags(self: pointer, wFlags: cint): void {.importc: "QGraphicsWidget_setWindowFlags".}
proc fcQGraphicsWidget_isActiveWindow(self: pointer, ): bool {.importc: "QGraphicsWidget_isActiveWindow".}
proc fcQGraphicsWidget_setWindowTitle(self: pointer, title: struct_miqt_string): void {.importc: "QGraphicsWidget_setWindowTitle".}
proc fcQGraphicsWidget_windowTitle(self: pointer, ): struct_miqt_string {.importc: "QGraphicsWidget_windowTitle".}
proc fcQGraphicsWidget_focusPolicy(self: pointer, ): cint {.importc: "QGraphicsWidget_focusPolicy".}
proc fcQGraphicsWidget_setFocusPolicy(self: pointer, policy: cint): void {.importc: "QGraphicsWidget_setFocusPolicy".}
proc fcQGraphicsWidget_setTabOrder(first: pointer, second: pointer): void {.importc: "QGraphicsWidget_setTabOrder".}
proc fcQGraphicsWidget_focusWidget(self: pointer, ): pointer {.importc: "QGraphicsWidget_focusWidget".}
proc fcQGraphicsWidget_grabShortcut(self: pointer, sequence: pointer): cint {.importc: "QGraphicsWidget_grabShortcut".}
proc fcQGraphicsWidget_releaseShortcut(self: pointer, id: cint): void {.importc: "QGraphicsWidget_releaseShortcut".}
proc fcQGraphicsWidget_setShortcutEnabled(self: pointer, id: cint): void {.importc: "QGraphicsWidget_setShortcutEnabled".}
proc fcQGraphicsWidget_setShortcutAutoRepeat(self: pointer, id: cint): void {.importc: "QGraphicsWidget_setShortcutAutoRepeat".}
proc fcQGraphicsWidget_addAction(self: pointer, action: pointer): void {.importc: "QGraphicsWidget_addAction".}
proc fcQGraphicsWidget_addActions(self: pointer, actions: struct_miqt_array): void {.importc: "QGraphicsWidget_addActions".}
proc fcQGraphicsWidget_insertActions(self: pointer, before: pointer, actions: struct_miqt_array): void {.importc: "QGraphicsWidget_insertActions".}
proc fcQGraphicsWidget_insertAction(self: pointer, before: pointer, action: pointer): void {.importc: "QGraphicsWidget_insertAction".}
proc fcQGraphicsWidget_removeAction(self: pointer, action: pointer): void {.importc: "QGraphicsWidget_removeAction".}
proc fcQGraphicsWidget_actions(self: pointer, ): struct_miqt_array {.importc: "QGraphicsWidget_actions".}
proc fcQGraphicsWidget_setAttribute(self: pointer, attribute: cint): void {.importc: "QGraphicsWidget_setAttribute".}
proc fcQGraphicsWidget_testAttribute(self: pointer, attribute: cint): bool {.importc: "QGraphicsWidget_testAttribute".}
proc fcQGraphicsWidget_typeX(self: pointer, ): cint {.importc: "QGraphicsWidget_type".}
proc fcQGraphicsWidget_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsWidget_paint".}
proc fcQGraphicsWidget_paintWindowFrame(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsWidget_paintWindowFrame".}
proc fcQGraphicsWidget_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsWidget_boundingRect".}
proc fcQGraphicsWidget_shape(self: pointer, ): pointer {.importc: "QGraphicsWidget_shape".}
proc fcQGraphicsWidget_geometryChanged(self: pointer, ): void {.importc: "QGraphicsWidget_geometryChanged".}
proc fQGraphicsWidget_connect_geometryChanged(self: pointer, slot: int) {.importc: "QGraphicsWidget_connect_geometryChanged".}
proc fcQGraphicsWidget_layoutChanged(self: pointer, ): void {.importc: "QGraphicsWidget_layoutChanged".}
proc fQGraphicsWidget_connect_layoutChanged(self: pointer, slot: int) {.importc: "QGraphicsWidget_connect_layoutChanged".}
proc fcQGraphicsWidget_close(self: pointer, ): bool {.importc: "QGraphicsWidget_close".}
proc fcQGraphicsWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsWidget_tr2".}
proc fcQGraphicsWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsWidget_tr3".}
proc fcQGraphicsWidget_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsWidget_trUtf82".}
proc fcQGraphicsWidget_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsWidget_trUtf83".}
proc fcQGraphicsWidget_grabShortcut2(self: pointer, sequence: pointer, context: cint): cint {.importc: "QGraphicsWidget_grabShortcut2".}
proc fcQGraphicsWidget_setShortcutEnabled2(self: pointer, id: cint, enabled: bool): void {.importc: "QGraphicsWidget_setShortcutEnabled2".}
proc fcQGraphicsWidget_setShortcutAutoRepeat2(self: pointer, id: cint, enabled: bool): void {.importc: "QGraphicsWidget_setShortcutAutoRepeat2".}
proc fcQGraphicsWidget_setAttribute2(self: pointer, attribute: cint, on: bool): void {.importc: "QGraphicsWidget_setAttribute2".}
proc fQGraphicsWidget_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QGraphicsWidget_virtualbase_metaObject".}
proc fcQGraphicsWidget_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_metaObject".}
proc fQGraphicsWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QGraphicsWidget_virtualbase_metacast".}
proc fcQGraphicsWidget_override_virtual_metacast(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_metacast".}
proc fQGraphicsWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGraphicsWidget_virtualbase_metacall".}
proc fcQGraphicsWidget_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_metacall".}
proc fQGraphicsWidget_virtualbase_setGeometry(self: pointer, rect: pointer): void{.importc: "QGraphicsWidget_virtualbase_setGeometry".}
proc fcQGraphicsWidget_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_setGeometry".}
proc fQGraphicsWidget_virtualbase_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void{.importc: "QGraphicsWidget_virtualbase_getContentsMargins".}
proc fcQGraphicsWidget_override_virtual_getContentsMargins(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_getContentsMargins".}
proc fQGraphicsWidget_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsWidget_virtualbase_type".}
proc fcQGraphicsWidget_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_type".}
proc fQGraphicsWidget_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsWidget_virtualbase_paint".}
proc fcQGraphicsWidget_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_paint".}
proc fQGraphicsWidget_virtualbase_paintWindowFrame(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsWidget_virtualbase_paintWindowFrame".}
proc fcQGraphicsWidget_override_virtual_paintWindowFrame(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_paintWindowFrame".}
proc fQGraphicsWidget_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QGraphicsWidget_virtualbase_boundingRect".}
proc fcQGraphicsWidget_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_boundingRect".}
proc fQGraphicsWidget_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsWidget_virtualbase_shape".}
proc fcQGraphicsWidget_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_shape".}
proc fQGraphicsWidget_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QGraphicsWidget_virtualbase_initStyleOption".}
proc fcQGraphicsWidget_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_initStyleOption".}
proc fQGraphicsWidget_virtualbase_sizeHint(self: pointer, which: cint, constraint: pointer): pointer{.importc: "QGraphicsWidget_virtualbase_sizeHint".}
proc fcQGraphicsWidget_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_sizeHint".}
proc fQGraphicsWidget_virtualbase_updateGeometry(self: pointer, ): void{.importc: "QGraphicsWidget_virtualbase_updateGeometry".}
proc fcQGraphicsWidget_override_virtual_updateGeometry(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_updateGeometry".}
proc fQGraphicsWidget_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsWidget_virtualbase_itemChange".}
proc fcQGraphicsWidget_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_itemChange".}
proc fQGraphicsWidget_virtualbase_propertyChange(self: pointer, propertyName: struct_miqt_string, value: pointer): pointer{.importc: "QGraphicsWidget_virtualbase_propertyChange".}
proc fcQGraphicsWidget_override_virtual_propertyChange(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_propertyChange".}
proc fQGraphicsWidget_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsWidget_virtualbase_sceneEvent".}
proc fcQGraphicsWidget_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_sceneEvent".}
proc fQGraphicsWidget_virtualbase_windowFrameEvent(self: pointer, e: pointer): bool{.importc: "QGraphicsWidget_virtualbase_windowFrameEvent".}
proc fcQGraphicsWidget_override_virtual_windowFrameEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_windowFrameEvent".}
proc fQGraphicsWidget_virtualbase_windowFrameSectionAt(self: pointer, pos: pointer): cint{.importc: "QGraphicsWidget_virtualbase_windowFrameSectionAt".}
proc fcQGraphicsWidget_override_virtual_windowFrameSectionAt(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_windowFrameSectionAt".}
proc fQGraphicsWidget_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGraphicsWidget_virtualbase_event".}
proc fcQGraphicsWidget_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_event".}
proc fQGraphicsWidget_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_changeEvent".}
proc fcQGraphicsWidget_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_changeEvent".}
proc fQGraphicsWidget_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_closeEvent".}
proc fcQGraphicsWidget_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_closeEvent".}
proc fQGraphicsWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_focusInEvent".}
proc fcQGraphicsWidget_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_focusInEvent".}
proc fQGraphicsWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QGraphicsWidget_virtualbase_focusNextPrevChild".}
proc fcQGraphicsWidget_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_focusNextPrevChild".}
proc fQGraphicsWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_focusOutEvent".}
proc fcQGraphicsWidget_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_focusOutEvent".}
proc fQGraphicsWidget_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_hideEvent".}
proc fcQGraphicsWidget_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_hideEvent".}
proc fQGraphicsWidget_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_moveEvent".}
proc fcQGraphicsWidget_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_moveEvent".}
proc fQGraphicsWidget_virtualbase_polishEvent(self: pointer, ): void{.importc: "QGraphicsWidget_virtualbase_polishEvent".}
proc fcQGraphicsWidget_override_virtual_polishEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_polishEvent".}
proc fQGraphicsWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_resizeEvent".}
proc fcQGraphicsWidget_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_resizeEvent".}
proc fQGraphicsWidget_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_showEvent".}
proc fcQGraphicsWidget_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_showEvent".}
proc fQGraphicsWidget_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_hoverMoveEvent".}
proc fcQGraphicsWidget_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_hoverMoveEvent".}
proc fQGraphicsWidget_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsWidget_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_hoverLeaveEvent".}
proc fQGraphicsWidget_virtualbase_grabMouseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_grabMouseEvent".}
proc fcQGraphicsWidget_override_virtual_grabMouseEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_grabMouseEvent".}
proc fQGraphicsWidget_virtualbase_ungrabMouseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_ungrabMouseEvent".}
proc fcQGraphicsWidget_override_virtual_ungrabMouseEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_ungrabMouseEvent".}
proc fQGraphicsWidget_virtualbase_grabKeyboardEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_grabKeyboardEvent".}
proc fcQGraphicsWidget_override_virtual_grabKeyboardEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_grabKeyboardEvent".}
proc fQGraphicsWidget_virtualbase_ungrabKeyboardEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_ungrabKeyboardEvent".}
proc fcQGraphicsWidget_override_virtual_ungrabKeyboardEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_ungrabKeyboardEvent".}
proc fQGraphicsWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsWidget_virtualbase_eventFilter".}
proc fcQGraphicsWidget_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_eventFilter".}
proc fQGraphicsWidget_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_timerEvent".}
proc fcQGraphicsWidget_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_timerEvent".}
proc fQGraphicsWidget_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_childEvent".}
proc fcQGraphicsWidget_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_childEvent".}
proc fQGraphicsWidget_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_customEvent".}
proc fcQGraphicsWidget_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_customEvent".}
proc fQGraphicsWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsWidget_virtualbase_connectNotify".}
proc fcQGraphicsWidget_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_connectNotify".}
proc fQGraphicsWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsWidget_virtualbase_disconnectNotify".}
proc fcQGraphicsWidget_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_disconnectNotify".}
proc fQGraphicsWidget_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsWidget_virtualbase_advance".}
proc fcQGraphicsWidget_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_advance".}
proc fQGraphicsWidget_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsWidget_virtualbase_contains".}
proc fcQGraphicsWidget_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_contains".}
proc fQGraphicsWidget_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsWidget_virtualbase_collidesWithItem".}
proc fcQGraphicsWidget_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_collidesWithItem".}
proc fQGraphicsWidget_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsWidget_virtualbase_collidesWithPath".}
proc fcQGraphicsWidget_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_collidesWithPath".}
proc fQGraphicsWidget_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsWidget_virtualbase_isObscuredBy".}
proc fcQGraphicsWidget_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_isObscuredBy".}
proc fQGraphicsWidget_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsWidget_virtualbase_opaqueArea".}
proc fcQGraphicsWidget_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_opaqueArea".}
proc fQGraphicsWidget_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsWidget_virtualbase_sceneEventFilter".}
proc fcQGraphicsWidget_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_sceneEventFilter".}
proc fQGraphicsWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_contextMenuEvent".}
proc fcQGraphicsWidget_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_contextMenuEvent".}
proc fQGraphicsWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_dragEnterEvent".}
proc fcQGraphicsWidget_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_dragEnterEvent".}
proc fQGraphicsWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_dragLeaveEvent".}
proc fcQGraphicsWidget_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_dragLeaveEvent".}
proc fQGraphicsWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_dragMoveEvent".}
proc fcQGraphicsWidget_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_dragMoveEvent".}
proc fQGraphicsWidget_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_dropEvent".}
proc fcQGraphicsWidget_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_dropEvent".}
proc fQGraphicsWidget_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_hoverEnterEvent".}
proc fcQGraphicsWidget_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_hoverEnterEvent".}
proc fQGraphicsWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_keyPressEvent".}
proc fcQGraphicsWidget_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_keyPressEvent".}
proc fQGraphicsWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_keyReleaseEvent".}
proc fcQGraphicsWidget_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_keyReleaseEvent".}
proc fQGraphicsWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_mousePressEvent".}
proc fcQGraphicsWidget_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_mousePressEvent".}
proc fQGraphicsWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_mouseMoveEvent".}
proc fcQGraphicsWidget_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_mouseMoveEvent".}
proc fQGraphicsWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsWidget_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_mouseReleaseEvent".}
proc fQGraphicsWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsWidget_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_wheelEvent".}
proc fcQGraphicsWidget_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_wheelEvent".}
proc fQGraphicsWidget_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWidget_virtualbase_inputMethodEvent".}
proc fcQGraphicsWidget_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_inputMethodEvent".}
proc fQGraphicsWidget_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsWidget_virtualbase_inputMethodQuery".}
proc fcQGraphicsWidget_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_inputMethodQuery".}
proc fQGraphicsWidget_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsWidget_virtualbase_supportsExtension".}
proc fcQGraphicsWidget_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_supportsExtension".}
proc fQGraphicsWidget_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsWidget_virtualbase_setExtension".}
proc fcQGraphicsWidget_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_setExtension".}
proc fQGraphicsWidget_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsWidget_virtualbase_extension".}
proc fcQGraphicsWidget_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsWidget_override_virtual_extension".}
proc fcQGraphicsWidget_staticMetaObject(): pointer {.importc: "QGraphicsWidget_staticMetaObject".}
proc fcQGraphicsWidget_delete(self: pointer) {.importc: "QGraphicsWidget_delete".}


func init*(T: type QGraphicsWidget, h: ptr cQGraphicsWidget): QGraphicsWidget =
  T(h: h)
proc create*(T: type QGraphicsWidget, ): QGraphicsWidget =

  QGraphicsWidget.init(fcQGraphicsWidget_new())
proc create*(T: type QGraphicsWidget, parent: gen_qgraphicsitem.QGraphicsItem): QGraphicsWidget =

  QGraphicsWidget.init(fcQGraphicsWidget_new2(parent.h))
proc create*(T: type QGraphicsWidget, parent: gen_qgraphicsitem.QGraphicsItem, wFlags: gen_qnamespace.WindowType): QGraphicsWidget =

  QGraphicsWidget.init(fcQGraphicsWidget_new3(parent.h, cint(wFlags)))
proc metaObject*(self: QGraphicsWidget, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQGraphicsWidget_metaObject(self.h))

proc metacast*(self: QGraphicsWidget, param1: cstring): pointer =

  fcQGraphicsWidget_metacast(self.h, param1)

proc metacall*(self: QGraphicsWidget, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQGraphicsWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QGraphicsWidget, s: cstring): string =

  let v_ms = fcQGraphicsWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QGraphicsWidget, s: cstring): string =

  let v_ms = fcQGraphicsWidget_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc layout*(self: QGraphicsWidget, ): gen_qgraphicslayout.QGraphicsLayout =

  gen_qgraphicslayout.QGraphicsLayout(h: fcQGraphicsWidget_layout(self.h))

proc setLayout*(self: QGraphicsWidget, layout: gen_qgraphicslayout.QGraphicsLayout): void =

  fcQGraphicsWidget_setLayout(self.h, layout.h)

proc adjustSize*(self: QGraphicsWidget, ): void =

  fcQGraphicsWidget_adjustSize(self.h)

proc layoutDirection*(self: QGraphicsWidget, ): gen_qnamespace.LayoutDirection =

  gen_qnamespace.LayoutDirection(fcQGraphicsWidget_layoutDirection(self.h))

proc setLayoutDirection*(self: QGraphicsWidget, direction: gen_qnamespace.LayoutDirection): void =

  fcQGraphicsWidget_setLayoutDirection(self.h, cint(direction))

proc unsetLayoutDirection*(self: QGraphicsWidget, ): void =

  fcQGraphicsWidget_unsetLayoutDirection(self.h)

proc style*(self: QGraphicsWidget, ): gen_qstyle.QStyle =

  gen_qstyle.QStyle(h: fcQGraphicsWidget_style(self.h))

proc setStyle*(self: QGraphicsWidget, style: gen_qstyle.QStyle): void =

  fcQGraphicsWidget_setStyle(self.h, style.h)

proc font*(self: QGraphicsWidget, ): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQGraphicsWidget_font(self.h))

proc setFont*(self: QGraphicsWidget, font: gen_qfont.QFont): void =

  fcQGraphicsWidget_setFont(self.h, font.h)

proc palette*(self: QGraphicsWidget, ): gen_qpalette.QPalette =

  gen_qpalette.QPalette(h: fcQGraphicsWidget_palette(self.h))

proc setPalette*(self: QGraphicsWidget, palette: gen_qpalette.QPalette): void =

  fcQGraphicsWidget_setPalette(self.h, palette.h)

proc autoFillBackground*(self: QGraphicsWidget, ): bool =

  fcQGraphicsWidget_autoFillBackground(self.h)

proc setAutoFillBackground*(self: QGraphicsWidget, enabled: bool): void =

  fcQGraphicsWidget_setAutoFillBackground(self.h, enabled)

proc resize*(self: QGraphicsWidget, size: gen_qsize.QSizeF): void =

  fcQGraphicsWidget_resize(self.h, size.h)

proc resize2*(self: QGraphicsWidget, w: float64, h: float64): void =

  fcQGraphicsWidget_resize2(self.h, w, h)

proc size*(self: QGraphicsWidget, ): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQGraphicsWidget_size(self.h))

proc setGeometry*(self: QGraphicsWidget, rect: gen_qrect.QRectF): void =

  fcQGraphicsWidget_setGeometry(self.h, rect.h)

proc setGeometry2*(self: QGraphicsWidget, x: float64, y: float64, w: float64, h: float64): void =

  fcQGraphicsWidget_setGeometry2(self.h, x, y, w, h)

proc rect*(self: QGraphicsWidget, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsWidget_rect(self.h))

proc setContentsMargins*(self: QGraphicsWidget, left: float64, top: float64, right: float64, bottom: float64): void =

  fcQGraphicsWidget_setContentsMargins(self.h, left, top, right, bottom)

proc setContentsMarginsWithMargins*(self: QGraphicsWidget, margins: gen_qmargins.QMarginsF): void =

  fcQGraphicsWidget_setContentsMarginsWithMargins(self.h, margins.h)

proc getContentsMargins*(self: QGraphicsWidget, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =

  fcQGraphicsWidget_getContentsMargins(self.h, left, top, right, bottom)

proc setWindowFrameMargins*(self: QGraphicsWidget, left: float64, top: float64, right: float64, bottom: float64): void =

  fcQGraphicsWidget_setWindowFrameMargins(self.h, left, top, right, bottom)

proc setWindowFrameMarginsWithMargins*(self: QGraphicsWidget, margins: gen_qmargins.QMarginsF): void =

  fcQGraphicsWidget_setWindowFrameMarginsWithMargins(self.h, margins.h)

proc getWindowFrameMargins*(self: QGraphicsWidget, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =

  fcQGraphicsWidget_getWindowFrameMargins(self.h, left, top, right, bottom)

proc unsetWindowFrameMargins*(self: QGraphicsWidget, ): void =

  fcQGraphicsWidget_unsetWindowFrameMargins(self.h)

proc windowFrameGeometry*(self: QGraphicsWidget, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsWidget_windowFrameGeometry(self.h))

proc windowFrameRect*(self: QGraphicsWidget, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsWidget_windowFrameRect(self.h))

proc windowFlags*(self: QGraphicsWidget, ): gen_qnamespace.WindowType =

  gen_qnamespace.WindowType(fcQGraphicsWidget_windowFlags(self.h))

proc windowType*(self: QGraphicsWidget, ): gen_qnamespace.WindowType =

  gen_qnamespace.WindowType(fcQGraphicsWidget_windowType(self.h))

proc setWindowFlags*(self: QGraphicsWidget, wFlags: gen_qnamespace.WindowType): void =

  fcQGraphicsWidget_setWindowFlags(self.h, cint(wFlags))

proc isActiveWindow*(self: QGraphicsWidget, ): bool =

  fcQGraphicsWidget_isActiveWindow(self.h)

proc setWindowTitle*(self: QGraphicsWidget, title: string): void =

  fcQGraphicsWidget_setWindowTitle(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

proc windowTitle*(self: QGraphicsWidget, ): string =

  let v_ms = fcQGraphicsWidget_windowTitle(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc focusPolicy*(self: QGraphicsWidget, ): gen_qnamespace.FocusPolicy =

  gen_qnamespace.FocusPolicy(fcQGraphicsWidget_focusPolicy(self.h))

proc setFocusPolicy*(self: QGraphicsWidget, policy: gen_qnamespace.FocusPolicy): void =

  fcQGraphicsWidget_setFocusPolicy(self.h, cint(policy))

proc setTabOrder*(_: type QGraphicsWidget, first: QGraphicsWidget, second: QGraphicsWidget): void =

  fcQGraphicsWidget_setTabOrder(first.h, second.h)

proc focusWidget*(self: QGraphicsWidget, ): QGraphicsWidget =

  QGraphicsWidget(h: fcQGraphicsWidget_focusWidget(self.h))

proc grabShortcut*(self: QGraphicsWidget, sequence: gen_qkeysequence.QKeySequence): cint =

  fcQGraphicsWidget_grabShortcut(self.h, sequence.h)

proc releaseShortcut*(self: QGraphicsWidget, id: cint): void =

  fcQGraphicsWidget_releaseShortcut(self.h, id)

proc setShortcutEnabled*(self: QGraphicsWidget, id: cint): void =

  fcQGraphicsWidget_setShortcutEnabled(self.h, id)

proc setShortcutAutoRepeat*(self: QGraphicsWidget, id: cint): void =

  fcQGraphicsWidget_setShortcutAutoRepeat(self.h, id)

proc addAction*(self: QGraphicsWidget, action: gen_qaction.QAction): void =

  fcQGraphicsWidget_addAction(self.h, action.h)

proc addActions*(self: QGraphicsWidget, actions: seq[gen_qaction.QAction]): void =

  var actions_CArray = newSeq[pointer](len(actions))
  for i in 0..<len(actions):
    actions_CArray[i] = actions[i].h

  fcQGraphicsWidget_addActions(self.h, struct_miqt_array(len: csize_t(len(actions)), data: if len(actions) == 0: nil else: addr(actions_CArray[0])))

proc insertActions*(self: QGraphicsWidget, before: gen_qaction.QAction, actions: seq[gen_qaction.QAction]): void =

  var actions_CArray = newSeq[pointer](len(actions))
  for i in 0..<len(actions):
    actions_CArray[i] = actions[i].h

  fcQGraphicsWidget_insertActions(self.h, before.h, struct_miqt_array(len: csize_t(len(actions)), data: if len(actions) == 0: nil else: addr(actions_CArray[0])))

proc insertAction*(self: QGraphicsWidget, before: gen_qaction.QAction, action: gen_qaction.QAction): void =

  fcQGraphicsWidget_insertAction(self.h, before.h, action.h)

proc removeAction*(self: QGraphicsWidget, action: gen_qaction.QAction): void =

  fcQGraphicsWidget_removeAction(self.h, action.h)

proc actions*(self: QGraphicsWidget, ): seq[gen_qaction.QAction] =

  var v_ma = fcQGraphicsWidget_actions(self.h)
  var vx_ret = newSeq[gen_qaction.QAction](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qaction.QAction(h: v_outCast[i])
  vx_ret

proc setAttribute*(self: QGraphicsWidget, attribute: gen_qnamespace.WidgetAttribute): void =

  fcQGraphicsWidget_setAttribute(self.h, cint(attribute))

proc testAttribute*(self: QGraphicsWidget, attribute: gen_qnamespace.WidgetAttribute): bool =

  fcQGraphicsWidget_testAttribute(self.h, cint(attribute))

proc typeX*(self: QGraphicsWidget, ): cint =

  fcQGraphicsWidget_typeX(self.h)

proc paint*(self: QGraphicsWidget, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =

  fcQGraphicsWidget_paint(self.h, painter.h, option.h, widget.h)

proc paintWindowFrame*(self: QGraphicsWidget, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =

  fcQGraphicsWidget_paintWindowFrame(self.h, painter.h, option.h, widget.h)

proc boundingRect*(self: QGraphicsWidget, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsWidget_boundingRect(self.h))

proc shape*(self: QGraphicsWidget, ): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQGraphicsWidget_shape(self.h))

proc geometryChanged*(self: QGraphicsWidget, ): void =

  fcQGraphicsWidget_geometryChanged(self.h)

proc miqt_exec_callback_QGraphicsWidget_geometryChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc ongeometryChanged*(self: QGraphicsWidget, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsWidget_connect_geometryChanged(self.h, cast[int](addr tmp[]))
proc layoutChanged*(self: QGraphicsWidget, ): void =

  fcQGraphicsWidget_layoutChanged(self.h)

proc miqt_exec_callback_QGraphicsWidget_layoutChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onlayoutChanged*(self: QGraphicsWidget, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsWidget_connect_layoutChanged(self.h, cast[int](addr tmp[]))
proc close*(self: QGraphicsWidget, ): bool =

  fcQGraphicsWidget_close(self.h)

proc tr2*(_: type QGraphicsWidget, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QGraphicsWidget, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QGraphicsWidget, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsWidget_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QGraphicsWidget, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsWidget_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc grabShortcut2*(self: QGraphicsWidget, sequence: gen_qkeysequence.QKeySequence, context: gen_qnamespace.ShortcutContext): cint =

  fcQGraphicsWidget_grabShortcut2(self.h, sequence.h, cint(context))

proc setShortcutEnabled2*(self: QGraphicsWidget, id: cint, enabled: bool): void =

  fcQGraphicsWidget_setShortcutEnabled2(self.h, id, enabled)

proc setShortcutAutoRepeat2*(self: QGraphicsWidget, id: cint, enabled: bool): void =

  fcQGraphicsWidget_setShortcutAutoRepeat2(self.h, id, enabled)

proc setAttribute2*(self: QGraphicsWidget, attribute: gen_qnamespace.WidgetAttribute, on: bool): void =

  fcQGraphicsWidget_setAttribute2(self.h, cint(attribute), on)

proc callVirtualBase_metaObject(self: QGraphicsWidget, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQGraphicsWidget_virtualbase_metaObject(self.h))

type QGraphicsWidgetmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_metaObject(self: ptr cQGraphicsWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsWidget_metaObject ".} =
  type Cb = proc(super: QGraphicsWidgetmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QGraphicsWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QGraphicsWidget, param1: cstring): pointer =


  fQGraphicsWidget_virtualbase_metacast(self.h, param1)

type QGraphicsWidgetmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_metacast(self: ptr cQGraphicsWidget, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QGraphicsWidget_metacast ".} =
  type Cb = proc(super: QGraphicsWidgetmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QGraphicsWidget(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QGraphicsWidget, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQGraphicsWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGraphicsWidgetmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_metacall(self: ptr cQGraphicsWidget, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsWidget_metacall ".} =
  type Cb = proc(super: QGraphicsWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QGraphicsWidget(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setGeometry(self: QGraphicsWidget, rect: gen_qrect.QRectF): void =


  fQGraphicsWidget_virtualbase_setGeometry(self.h, rect.h)

type QGraphicsWidgetsetGeometryBase* = proc(rect: gen_qrect.QRectF): void
proc onsetGeometry*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetsetGeometryBase, rect: gen_qrect.QRectF): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetsetGeometryBase, rect: gen_qrect.QRectF): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_setGeometry(self: ptr cQGraphicsWidget, slot: int, rect: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_setGeometry ".} =
  type Cb = proc(super: QGraphicsWidgetsetGeometryBase, rect: gen_qrect.QRectF): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(rect: gen_qrect.QRectF): auto =
    callVirtualBase_setGeometry(QGraphicsWidget(h: self), rect)
  let slotval1 = gen_qrect.QRectF(h: rect)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_getContentsMargins(self: QGraphicsWidget, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =


  fQGraphicsWidget_virtualbase_getContentsMargins(self.h, left, top, right, bottom)

type QGraphicsWidgetgetContentsMarginsBase* = proc(left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
proc ongetContentsMargins*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetgetContentsMarginsBase, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetgetContentsMarginsBase, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_getContentsMargins(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_getContentsMargins(self: ptr cQGraphicsWidget, slot: int, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.exportc: "miqt_exec_callback_QGraphicsWidget_getContentsMargins ".} =
  type Cb = proc(super: QGraphicsWidgetgetContentsMarginsBase, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): auto =
    callVirtualBase_getContentsMargins(QGraphicsWidget(h: self), left, top, right, bottom)
  let slotval1 = left

  let slotval2 = top

  let slotval3 = right

  let slotval4 = bottom


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_typeX(self: QGraphicsWidget, ): cint =


  fQGraphicsWidget_virtualbase_type(self.h)

type QGraphicsWidgettypeXBase* = proc(): cint
proc ontypeX*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgettypeXBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgettypeXBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_type(self: ptr cQGraphicsWidget, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsWidget_type ".} =
  type Cb = proc(super: QGraphicsWidgettypeXBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_typeX(QGraphicsWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paint(self: QGraphicsWidget, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =


  fQGraphicsWidget_virtualbase_paint(self.h, painter.h, option.h, widget.h)

type QGraphicsWidgetpaintBase* = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
proc onpaint*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetpaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetpaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_paint(self: ptr cQGraphicsWidget, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_paint ".} =
  type Cb = proc(super: QGraphicsWidgetpaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_paint(QGraphicsWidget(h: self), painter, option, widget)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qstyleoption.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_paintWindowFrame(self: QGraphicsWidget, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =


  fQGraphicsWidget_virtualbase_paintWindowFrame(self.h, painter.h, option.h, widget.h)

type QGraphicsWidgetpaintWindowFrameBase* = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
proc onpaintWindowFrame*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetpaintWindowFrameBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetpaintWindowFrameBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_paintWindowFrame(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_paintWindowFrame(self: ptr cQGraphicsWidget, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_paintWindowFrame ".} =
  type Cb = proc(super: QGraphicsWidgetpaintWindowFrameBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_paintWindowFrame(QGraphicsWidget(h: self), painter, option, widget)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qstyleoption.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_boundingRect(self: QGraphicsWidget, ): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQGraphicsWidget_virtualbase_boundingRect(self.h))

type QGraphicsWidgetboundingRectBase* = proc(): gen_qrect.QRectF
proc onboundingRect*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetboundingRectBase): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetboundingRectBase): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_boundingRect(self: ptr cQGraphicsWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsWidget_boundingRect ".} =
  type Cb = proc(super: QGraphicsWidgetboundingRectBase): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_boundingRect(QGraphicsWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_shape(self: QGraphicsWidget, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsWidget_virtualbase_shape(self.h))

type QGraphicsWidgetshapeBase* = proc(): gen_qpainterpath.QPainterPath
proc onshape*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetshapeBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetshapeBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_shape(self: ptr cQGraphicsWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsWidget_shape ".} =
  type Cb = proc(super: QGraphicsWidgetshapeBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_shape(QGraphicsWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_initStyleOption(self: QGraphicsWidget, option: gen_qstyleoption.QStyleOption): void =


  fQGraphicsWidget_virtualbase_initStyleOption(self.h, option.h)

type QGraphicsWidgetinitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOption): void
proc oninitStyleOption*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetinitStyleOptionBase, option: gen_qstyleoption.QStyleOption): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetinitStyleOptionBase, option: gen_qstyleoption.QStyleOption): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_initStyleOption(self: ptr cQGraphicsWidget, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_initStyleOption ".} =
  type Cb = proc(super: QGraphicsWidgetinitStyleOptionBase, option: gen_qstyleoption.QStyleOption): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOption): auto =
    callVirtualBase_initStyleOption(QGraphicsWidget(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOption(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QGraphicsWidget, which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF =


  gen_qsize.QSizeF(h: fQGraphicsWidget_virtualbase_sizeHint(self.h, cint(which), constraint.h))

type QGraphicsWidgetsizeHintBase* = proc(which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF
proc onsizeHint*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetsizeHintBase, which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetsizeHintBase, which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_sizeHint(self: ptr cQGraphicsWidget, slot: int, which: cint, constraint: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsWidget_sizeHint ".} =
  type Cb = proc(super: QGraphicsWidgetsizeHintBase, which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): auto =
    callVirtualBase_sizeHint(QGraphicsWidget(h: self), which, constraint)
  let slotval1 = gen_qnamespace.SizeHint(which)

  let slotval2 = gen_qsize.QSizeF(h: constraint)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_updateGeometry(self: QGraphicsWidget, ): void =


  fQGraphicsWidget_virtualbase_updateGeometry(self.h)

type QGraphicsWidgetupdateGeometryBase* = proc(): void
proc onupdateGeometry*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetupdateGeometryBase): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetupdateGeometryBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_updateGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_updateGeometry(self: ptr cQGraphicsWidget, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsWidget_updateGeometry ".} =
  type Cb = proc(super: QGraphicsWidgetupdateGeometryBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateGeometry(QGraphicsWidget(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_itemChange(self: QGraphicsWidget, change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsWidget_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsWidgetitemChangeBase* = proc(change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onitemChange*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetitemChangeBase, change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetitemChangeBase, change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_itemChange(self: ptr cQGraphicsWidget, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsWidget_itemChange ".} =
  type Cb = proc(super: QGraphicsWidgetitemChangeBase, change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): auto =
    callVirtualBase_itemChange(QGraphicsWidget(h: self), change, value)
  let slotval1 = gen_qgraphicsitem.QGraphicsItemGraphicsItemChange(change)

  let slotval2 = gen_qvariant.QVariant(h: value)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_propertyChange(self: QGraphicsWidget, propertyName: string, value: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsWidget_virtualbase_propertyChange(self.h, struct_miqt_string(data: propertyName, len: csize_t(len(propertyName))), value.h))

type QGraphicsWidgetpropertyChangeBase* = proc(propertyName: string, value: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onpropertyChange*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetpropertyChangeBase, propertyName: string, value: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetpropertyChangeBase, propertyName: string, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_propertyChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_propertyChange(self: ptr cQGraphicsWidget, slot: int, propertyName: struct_miqt_string, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsWidget_propertyChange ".} =
  type Cb = proc(super: QGraphicsWidgetpropertyChangeBase, propertyName: string, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(propertyName: string, value: gen_qvariant.QVariant): auto =
    callVirtualBase_propertyChange(QGraphicsWidget(h: self), propertyName, value)
  let vpropertyName_ms = propertyName
  let vpropertyNamex_ret = string.fromBytes(toOpenArrayByte(vpropertyName_ms.data, 0, int(vpropertyName_ms.len)-1))
  c_free(vpropertyName_ms.data)
  let slotval1 = vpropertyNamex_ret

  let slotval2 = gen_qvariant.QVariant(h: value)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_sceneEvent(self: QGraphicsWidget, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsWidget_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsWidgetsceneEventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onsceneEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetsceneEventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_sceneEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsWidget_sceneEvent ".} =
  type Cb = proc(super: QGraphicsWidgetsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_windowFrameEvent(self: QGraphicsWidget, e: gen_qcoreevent.QEvent): bool =


  fQGraphicsWidget_virtualbase_windowFrameEvent(self.h, e.h)

type QGraphicsWidgetwindowFrameEventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onwindowFrameEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetwindowFrameEventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetwindowFrameEventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_windowFrameEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_windowFrameEvent(self: ptr cQGraphicsWidget, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsWidget_windowFrameEvent ".} =
  type Cb = proc(super: QGraphicsWidgetwindowFrameEventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_windowFrameEvent(QGraphicsWidget(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_windowFrameSectionAt(self: QGraphicsWidget, pos: gen_qpoint.QPointF): gen_qnamespace.WindowFrameSection =


  gen_qnamespace.WindowFrameSection(fQGraphicsWidget_virtualbase_windowFrameSectionAt(self.h, pos.h))

type QGraphicsWidgetwindowFrameSectionAtBase* = proc(pos: gen_qpoint.QPointF): gen_qnamespace.WindowFrameSection
proc onwindowFrameSectionAt*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetwindowFrameSectionAtBase, pos: gen_qpoint.QPointF): gen_qnamespace.WindowFrameSection) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetwindowFrameSectionAtBase, pos: gen_qpoint.QPointF): gen_qnamespace.WindowFrameSection
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_windowFrameSectionAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_windowFrameSectionAt(self: ptr cQGraphicsWidget, slot: int, pos: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsWidget_windowFrameSectionAt ".} =
  type Cb = proc(super: QGraphicsWidgetwindowFrameSectionAtBase, pos: gen_qpoint.QPointF): gen_qnamespace.WindowFrameSection
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(pos: gen_qpoint.QPointF): auto =
    callVirtualBase_windowFrameSectionAt(QGraphicsWidget(h: self), pos)
  let slotval1 = gen_qpoint.QPointF(h: pos)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  cint(virtualReturn)
proc callVirtualBase_event(self: QGraphicsWidget, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsWidget_virtualbase_event(self.h, event.h)

type QGraphicsWidgeteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgeteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgeteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_event(self: ptr cQGraphicsWidget, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsWidget_event ".} =
  type Cb = proc(super: QGraphicsWidgeteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_changeEvent(self: QGraphicsWidget, event: gen_qcoreevent.QEvent): void =


  fQGraphicsWidget_virtualbase_changeEvent(self.h, event.h)

type QGraphicsWidgetchangeEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetchangeEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetchangeEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_changeEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_changeEvent ".} =
  type Cb = proc(super: QGraphicsWidgetchangeEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QGraphicsWidget, event: gen_qevent.QCloseEvent): void =


  fQGraphicsWidget_virtualbase_closeEvent(self.h, event.h)

type QGraphicsWidgetcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_closeEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_closeEvent ".} =
  type Cb = proc(super: QGraphicsWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QGraphicsWidget, event: gen_qevent.QFocusEvent): void =


  fQGraphicsWidget_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsWidgetfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_focusInEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_focusInEvent ".} =
  type Cb = proc(super: QGraphicsWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusNextPrevChild(self: QGraphicsWidget, next: bool): bool =


  fQGraphicsWidget_virtualbase_focusNextPrevChild(self.h, next)

type QGraphicsWidgetfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_focusNextPrevChild(self: ptr cQGraphicsWidget, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QGraphicsWidget_focusNextPrevChild ".} =
  type Cb = proc(super: QGraphicsWidgetfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QGraphicsWidget(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_focusOutEvent(self: QGraphicsWidget, event: gen_qevent.QFocusEvent): void =


  fQGraphicsWidget_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsWidgetfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_focusOutEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_focusOutEvent ".} =
  type Cb = proc(super: QGraphicsWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QGraphicsWidget, event: gen_qevent.QHideEvent): void =


  fQGraphicsWidget_virtualbase_hideEvent(self.h, event.h)

type QGraphicsWidgethideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgethideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgethideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_hideEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_hideEvent ".} =
  type Cb = proc(super: QGraphicsWidgethideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QGraphicsWidget, event: gen_qgraphicssceneevent.QGraphicsSceneMoveEvent): void =


  fQGraphicsWidget_virtualbase_moveEvent(self.h, event.h)

type QGraphicsWidgetmoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMoveEvent): void
proc onmoveEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetmoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetmoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_moveEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_moveEvent ".} =
  type Cb = proc(super: QGraphicsWidgetmoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMoveEvent): auto =
    callVirtualBase_moveEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_polishEvent(self: QGraphicsWidget, ): void =


  fQGraphicsWidget_virtualbase_polishEvent(self.h)

type QGraphicsWidgetpolishEventBase* = proc(): void
proc onpolishEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetpolishEventBase): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetpolishEventBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_polishEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_polishEvent(self: ptr cQGraphicsWidget, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsWidget_polishEvent ".} =
  type Cb = proc(super: QGraphicsWidgetpolishEventBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_polishEvent(QGraphicsWidget(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_resizeEvent(self: QGraphicsWidget, event: gen_qgraphicssceneevent.QGraphicsSceneResizeEvent): void =


  fQGraphicsWidget_virtualbase_resizeEvent(self.h, event.h)

type QGraphicsWidgetresizeEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneResizeEvent): void
proc onresizeEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetresizeEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetresizeEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_resizeEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_resizeEvent ".} =
  type Cb = proc(super: QGraphicsWidgetresizeEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneResizeEvent): auto =
    callVirtualBase_resizeEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QGraphicsWidget, event: gen_qevent.QShowEvent): void =


  fQGraphicsWidget_virtualbase_showEvent(self.h, event.h)

type QGraphicsWidgetshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_showEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_showEvent ".} =
  type Cb = proc(super: QGraphicsWidgetshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverMoveEvent(self: QGraphicsWidget, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsWidget_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsWidgethoverMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgethoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgethoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_hoverMoveEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_hoverMoveEvent ".} =
  type Cb = proc(super: QGraphicsWidgethoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverMoveEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverLeaveEvent(self: QGraphicsWidget, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsWidget_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsWidgethoverLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgethoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgethoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_hoverLeaveEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_hoverLeaveEvent ".} =
  type Cb = proc(super: QGraphicsWidgethoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverLeaveEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_grabMouseEvent(self: QGraphicsWidget, event: gen_qcoreevent.QEvent): void =


  fQGraphicsWidget_virtualbase_grabMouseEvent(self.h, event.h)

type QGraphicsWidgetgrabMouseEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc ongrabMouseEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetgrabMouseEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetgrabMouseEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_grabMouseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_grabMouseEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_grabMouseEvent ".} =
  type Cb = proc(super: QGraphicsWidgetgrabMouseEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_grabMouseEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_ungrabMouseEvent(self: QGraphicsWidget, event: gen_qcoreevent.QEvent): void =


  fQGraphicsWidget_virtualbase_ungrabMouseEvent(self.h, event.h)

type QGraphicsWidgetungrabMouseEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onungrabMouseEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetungrabMouseEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetungrabMouseEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_ungrabMouseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_ungrabMouseEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_ungrabMouseEvent ".} =
  type Cb = proc(super: QGraphicsWidgetungrabMouseEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_ungrabMouseEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_grabKeyboardEvent(self: QGraphicsWidget, event: gen_qcoreevent.QEvent): void =


  fQGraphicsWidget_virtualbase_grabKeyboardEvent(self.h, event.h)

type QGraphicsWidgetgrabKeyboardEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc ongrabKeyboardEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetgrabKeyboardEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetgrabKeyboardEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_grabKeyboardEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_grabKeyboardEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_grabKeyboardEvent ".} =
  type Cb = proc(super: QGraphicsWidgetgrabKeyboardEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_grabKeyboardEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_ungrabKeyboardEvent(self: QGraphicsWidget, event: gen_qcoreevent.QEvent): void =


  fQGraphicsWidget_virtualbase_ungrabKeyboardEvent(self.h, event.h)

type QGraphicsWidgetungrabKeyboardEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onungrabKeyboardEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetungrabKeyboardEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetungrabKeyboardEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_ungrabKeyboardEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_ungrabKeyboardEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_ungrabKeyboardEvent ".} =
  type Cb = proc(super: QGraphicsWidgetungrabKeyboardEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_ungrabKeyboardEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QGraphicsWidget, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsWidgeteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_eventFilter(self: ptr cQGraphicsWidget, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsWidget_eventFilter ".} =
  type Cb = proc(super: QGraphicsWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QGraphicsWidget(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QGraphicsWidget, event: gen_qcoreevent.QTimerEvent): void =


  fQGraphicsWidget_virtualbase_timerEvent(self.h, event.h)

type QGraphicsWidgettimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_timerEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_timerEvent ".} =
  type Cb = proc(super: QGraphicsWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QGraphicsWidget, event: gen_qcoreevent.QChildEvent): void =


  fQGraphicsWidget_virtualbase_childEvent(self.h, event.h)

type QGraphicsWidgetchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_childEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_childEvent ".} =
  type Cb = proc(super: QGraphicsWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QGraphicsWidget, event: gen_qcoreevent.QEvent): void =


  fQGraphicsWidget_virtualbase_customEvent(self.h, event.h)

type QGraphicsWidgetcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_customEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_customEvent ".} =
  type Cb = proc(super: QGraphicsWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QGraphicsWidget, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsWidget_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsWidgetconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_connectNotify(self: ptr cQGraphicsWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_connectNotify ".} =
  type Cb = proc(super: QGraphicsWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QGraphicsWidget(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QGraphicsWidget, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsWidget_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsWidgetdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_disconnectNotify(self: ptr cQGraphicsWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_disconnectNotify ".} =
  type Cb = proc(super: QGraphicsWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QGraphicsWidget(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_advance(self: QGraphicsWidget, phase: cint): void =


  fQGraphicsWidget_virtualbase_advance(self.h, phase)

type QGraphicsWidgetadvanceBase* = proc(phase: cint): void
proc onadvance*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetadvanceBase, phase: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetadvanceBase, phase: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_advance(self: ptr cQGraphicsWidget, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsWidget_advance ".} =
  type Cb = proc(super: QGraphicsWidgetadvanceBase, phase: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(phase: cint): auto =
    callVirtualBase_advance(QGraphicsWidget(h: self), phase)
  let slotval1 = phase


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contains(self: QGraphicsWidget, point: gen_qpoint.QPointF): bool =


  fQGraphicsWidget_virtualbase_contains(self.h, point.h)

type QGraphicsWidgetcontainsBase* = proc(point: gen_qpoint.QPointF): bool
proc oncontains*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetcontainsBase, point: gen_qpoint.QPointF): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetcontainsBase, point: gen_qpoint.QPointF): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_contains(self: ptr cQGraphicsWidget, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsWidget_contains ".} =
  type Cb = proc(super: QGraphicsWidgetcontainsBase, point: gen_qpoint.QPointF): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(point: gen_qpoint.QPointF): auto =
    callVirtualBase_contains(QGraphicsWidget(h: self), point)
  let slotval1 = gen_qpoint.QPointF(h: point)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_collidesWithItem(self: QGraphicsWidget, other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsWidget_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsWidgetcollidesWithItemBase* = proc(other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithItem*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetcollidesWithItemBase, other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetcollidesWithItemBase, other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_collidesWithItem(self: ptr cQGraphicsWidget, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsWidget_collidesWithItem ".} =
  type Cb = proc(super: QGraphicsWidgetcollidesWithItemBase, other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithItem(QGraphicsWidget(h: self), other, mode)
  let slotval1 = gen_qgraphicsitem.QGraphicsItem(h: other)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_collidesWithPath(self: QGraphicsWidget, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsWidget_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsWidgetcollidesWithPathBase* = proc(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithPath*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_collidesWithPath(self: ptr cQGraphicsWidget, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsWidget_collidesWithPath ".} =
  type Cb = proc(super: QGraphicsWidgetcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithPath(QGraphicsWidget(h: self), path, mode)
  let slotval1 = gen_qpainterpath.QPainterPath(h: path)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_isObscuredBy(self: QGraphicsWidget, item: gen_qgraphicsitem.QGraphicsItem): bool =


  fQGraphicsWidget_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsWidgetisObscuredByBase* = proc(item: gen_qgraphicsitem.QGraphicsItem): bool
proc onisObscuredBy*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetisObscuredByBase, item: gen_qgraphicsitem.QGraphicsItem): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetisObscuredByBase, item: gen_qgraphicsitem.QGraphicsItem): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_isObscuredBy(self: ptr cQGraphicsWidget, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsWidget_isObscuredBy ".} =
  type Cb = proc(super: QGraphicsWidgetisObscuredByBase, item: gen_qgraphicsitem.QGraphicsItem): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(item: gen_qgraphicsitem.QGraphicsItem): auto =
    callVirtualBase_isObscuredBy(QGraphicsWidget(h: self), item)
  let slotval1 = gen_qgraphicsitem.QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_opaqueArea(self: QGraphicsWidget, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsWidget_virtualbase_opaqueArea(self.h))

type QGraphicsWidgetopaqueAreaBase* = proc(): gen_qpainterpath.QPainterPath
proc onopaqueArea*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetopaqueAreaBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetopaqueAreaBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_opaqueArea(self: ptr cQGraphicsWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsWidget_opaqueArea ".} =
  type Cb = proc(super: QGraphicsWidgetopaqueAreaBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_opaqueArea(QGraphicsWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_sceneEventFilter(self: QGraphicsWidget, watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsWidget_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsWidgetsceneEventFilterBase* = proc(watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): bool
proc onsceneEventFilter*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetsceneEventFilterBase, watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetsceneEventFilterBase, watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_sceneEventFilter(self: ptr cQGraphicsWidget, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsWidget_sceneEventFilter ".} =
  type Cb = proc(super: QGraphicsWidgetsceneEventFilterBase, watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEventFilter(QGraphicsWidget(h: self), watched, event)
  let slotval1 = gen_qgraphicsitem.QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_contextMenuEvent(self: QGraphicsWidget, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void =


  fQGraphicsWidget_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsWidgetcontextMenuEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_contextMenuEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_contextMenuEvent ".} =
  type Cb = proc(super: QGraphicsWidgetcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QGraphicsWidget, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsWidget_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsWidgetdragEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_dragEnterEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_dragEnterEvent ".} =
  type Cb = proc(super: QGraphicsWidgetdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragEnterEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QGraphicsWidget, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsWidget_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsWidgetdragLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_dragLeaveEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_dragLeaveEvent ".} =
  type Cb = proc(super: QGraphicsWidgetdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragLeaveEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QGraphicsWidget, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsWidget_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsWidgetdragMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_dragMoveEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_dragMoveEvent ".} =
  type Cb = proc(super: QGraphicsWidgetdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragMoveEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QGraphicsWidget, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsWidget_virtualbase_dropEvent(self.h, event.h)

type QGraphicsWidgetdropEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_dropEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_dropEvent ".} =
  type Cb = proc(super: QGraphicsWidgetdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dropEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverEnterEvent(self: QGraphicsWidget, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsWidget_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsWidgethoverEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgethoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgethoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_hoverEnterEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_hoverEnterEvent ".} =
  type Cb = proc(super: QGraphicsWidgethoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverEnterEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QGraphicsWidget, event: gen_qevent.QKeyEvent): void =


  fQGraphicsWidget_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsWidgetkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_keyPressEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_keyPressEvent ".} =
  type Cb = proc(super: QGraphicsWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QGraphicsWidget, event: gen_qevent.QKeyEvent): void =


  fQGraphicsWidget_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsWidgetkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_keyReleaseEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_keyReleaseEvent ".} =
  type Cb = proc(super: QGraphicsWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QGraphicsWidget, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsWidget_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsWidgetmousePressEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_mousePressEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_mousePressEvent ".} =
  type Cb = proc(super: QGraphicsWidgetmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mousePressEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QGraphicsWidget, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsWidget_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsWidgetmouseMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_mouseMoveEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_mouseMoveEvent ".} =
  type Cb = proc(super: QGraphicsWidgetmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QGraphicsWidget, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsWidgetmouseReleaseEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_mouseReleaseEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_mouseReleaseEvent ".} =
  type Cb = proc(super: QGraphicsWidgetmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QGraphicsWidget, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsWidgetmouseDoubleClickEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_mouseDoubleClickEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QGraphicsWidgetmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QGraphicsWidget, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void =


  fQGraphicsWidget_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsWidgetwheelEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_wheelEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_wheelEvent ".} =
  type Cb = proc(super: QGraphicsWidgetwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): auto =
    callVirtualBase_wheelEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QGraphicsWidget, event: gen_qevent.QInputMethodEvent): void =


  fQGraphicsWidget_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsWidgetinputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_inputMethodEvent(self: ptr cQGraphicsWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_inputMethodEvent ".} =
  type Cb = proc(super: QGraphicsWidgetinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QGraphicsWidget(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QGraphicsWidget, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsWidget_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsWidgetinputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_inputMethodQuery(self: ptr cQGraphicsWidget, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsWidget_inputMethodQuery ".} =
  type Cb = proc(super: QGraphicsWidgetinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QGraphicsWidget(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_supportsExtension(self: QGraphicsWidget, extension: gen_qgraphicsitem.QGraphicsItemExtension): bool =


  fQGraphicsWidget_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsWidgetsupportsExtensionBase* = proc(extension: gen_qgraphicsitem.QGraphicsItemExtension): bool
proc onsupportsExtension*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetsupportsExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetsupportsExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_supportsExtension(self: ptr cQGraphicsWidget, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsWidget_supportsExtension ".} =
  type Cb = proc(super: QGraphicsWidgetsupportsExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: gen_qgraphicsitem.QGraphicsItemExtension): auto =
    callVirtualBase_supportsExtension(QGraphicsWidget(h: self), extension)
  let slotval1 = gen_qgraphicsitem.QGraphicsItemExtension(extension)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_setExtension(self: QGraphicsWidget, extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): void =


  fQGraphicsWidget_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsWidgetsetExtensionBase* = proc(extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
proc onsetExtension*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetsetExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetsetExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_setExtension(self: ptr cQGraphicsWidget, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWidget_setExtension ".} =
  type Cb = proc(super: QGraphicsWidgetsetExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): auto =
    callVirtualBase_setExtension(QGraphicsWidget(h: self), extension, variant)
  let slotval1 = gen_qgraphicsitem.QGraphicsItemExtension(extension)

  let slotval2 = gen_qvariant.QVariant(h: variant)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_extension(self: QGraphicsWidget, variant: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsWidget_virtualbase_extension(self.h, variant.h))

type QGraphicsWidgetextensionBase* = proc(variant: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onextension*(self: QGraphicsWidget, slot: proc(super: QGraphicsWidgetextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWidgetextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWidget_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWidget_extension(self: ptr cQGraphicsWidget, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsWidget_extension ".} =
  type Cb = proc(super: QGraphicsWidgetextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(variant: gen_qvariant.QVariant): auto =
    callVirtualBase_extension(QGraphicsWidget(h: self), variant)
  let slotval1 = gen_qvariant.QVariant(h: variant)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc staticMetaObject*(_: type QGraphicsWidget): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQGraphicsWidget_staticMetaObject())
proc delete*(self: QGraphicsWidget) =
  fcQGraphicsWidget_delete(self.h)
