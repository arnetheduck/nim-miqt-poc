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
{.compile("gen_qsplitter.cpp", cflags).}


import gen_qsplitter_types
export gen_qsplitter_types

import
  gen_qcoreevent,
  gen_qevent,
  gen_qframe,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qsize,
  gen_qvariant,
  gen_qwidget
export
  gen_qcoreevent,
  gen_qevent,
  gen_qframe,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qsize,
  gen_qvariant,
  gen_qwidget

type cQSplitter*{.exportc: "QSplitter", incompleteStruct.} = object
type cQSplitterHandle*{.exportc: "QSplitterHandle", incompleteStruct.} = object

proc fcQSplitter_new(parent: pointer): ptr cQSplitter {.importc: "QSplitter_new".}
proc fcQSplitter_new2(): ptr cQSplitter {.importc: "QSplitter_new2".}
proc fcQSplitter_new3(param1: cint): ptr cQSplitter {.importc: "QSplitter_new3".}
proc fcQSplitter_new4(param1: cint, parent: pointer): ptr cQSplitter {.importc: "QSplitter_new4".}
proc fcQSplitter_metaObject(self: pointer, ): pointer {.importc: "QSplitter_metaObject".}
proc fcQSplitter_metacast(self: pointer, param1: cstring): pointer {.importc: "QSplitter_metacast".}
proc fcQSplitter_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSplitter_metacall".}
proc fcQSplitter_tr(s: cstring): struct_miqt_string {.importc: "QSplitter_tr".}
proc fcQSplitter_trUtf8(s: cstring): struct_miqt_string {.importc: "QSplitter_trUtf8".}
proc fcQSplitter_addWidget(self: pointer, widget: pointer): void {.importc: "QSplitter_addWidget".}
proc fcQSplitter_insertWidget(self: pointer, index: cint, widget: pointer): void {.importc: "QSplitter_insertWidget".}
proc fcQSplitter_replaceWidget(self: pointer, index: cint, widget: pointer): pointer {.importc: "QSplitter_replaceWidget".}
proc fcQSplitter_setOrientation(self: pointer, orientation: cint): void {.importc: "QSplitter_setOrientation".}
proc fcQSplitter_orientation(self: pointer, ): cint {.importc: "QSplitter_orientation".}
proc fcQSplitter_setChildrenCollapsible(self: pointer, childrenCollapsible: bool): void {.importc: "QSplitter_setChildrenCollapsible".}
proc fcQSplitter_childrenCollapsible(self: pointer, ): bool {.importc: "QSplitter_childrenCollapsible".}
proc fcQSplitter_setCollapsible(self: pointer, index: cint, param2: bool): void {.importc: "QSplitter_setCollapsible".}
proc fcQSplitter_isCollapsible(self: pointer, index: cint): bool {.importc: "QSplitter_isCollapsible".}
proc fcQSplitter_setOpaqueResize(self: pointer, ): void {.importc: "QSplitter_setOpaqueResize".}
proc fcQSplitter_opaqueResize(self: pointer, ): bool {.importc: "QSplitter_opaqueResize".}
proc fcQSplitter_refresh(self: pointer, ): void {.importc: "QSplitter_refresh".}
proc fcQSplitter_sizeHint(self: pointer, ): pointer {.importc: "QSplitter_sizeHint".}
proc fcQSplitter_minimumSizeHint(self: pointer, ): pointer {.importc: "QSplitter_minimumSizeHint".}
proc fcQSplitter_sizes(self: pointer, ): struct_miqt_array {.importc: "QSplitter_sizes".}
proc fcQSplitter_setSizes(self: pointer, list: struct_miqt_array): void {.importc: "QSplitter_setSizes".}
proc fcQSplitter_saveState(self: pointer, ): struct_miqt_string {.importc: "QSplitter_saveState".}
proc fcQSplitter_restoreState(self: pointer, state: struct_miqt_string): bool {.importc: "QSplitter_restoreState".}
proc fcQSplitter_handleWidth(self: pointer, ): cint {.importc: "QSplitter_handleWidth".}
proc fcQSplitter_setHandleWidth(self: pointer, handleWidth: cint): void {.importc: "QSplitter_setHandleWidth".}
proc fcQSplitter_indexOf(self: pointer, w: pointer): cint {.importc: "QSplitter_indexOf".}
proc fcQSplitter_widget(self: pointer, index: cint): pointer {.importc: "QSplitter_widget".}
proc fcQSplitter_count(self: pointer, ): cint {.importc: "QSplitter_count".}
proc fcQSplitter_getRange(self: pointer, index: cint, param2: ptr cint, param3: ptr cint): void {.importc: "QSplitter_getRange".}
proc fcQSplitter_handle(self: pointer, index: cint): pointer {.importc: "QSplitter_handle".}
proc fcQSplitter_setStretchFactor(self: pointer, index: cint, stretch: cint): void {.importc: "QSplitter_setStretchFactor".}
proc fcQSplitter_splitterMoved(self: pointer, pos: cint, index: cint): void {.importc: "QSplitter_splitterMoved".}
proc fQSplitter_connect_splitterMoved(self: pointer, slot: int) {.importc: "QSplitter_connect_splitterMoved".}
proc fcQSplitter_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSplitter_tr2".}
proc fcQSplitter_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSplitter_tr3".}
proc fcQSplitter_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSplitter_trUtf82".}
proc fcQSplitter_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSplitter_trUtf83".}
proc fcQSplitter_setOpaqueResize1(self: pointer, opaque: bool): void {.importc: "QSplitter_setOpaqueResize1".}
proc fQSplitter_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSplitter_virtualbase_metacall".}
proc fcQSplitter_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_metacall".}
proc fQSplitter_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QSplitter_virtualbase_sizeHint".}
proc fcQSplitter_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_sizeHint".}
proc fQSplitter_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QSplitter_virtualbase_minimumSizeHint".}
proc fcQSplitter_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_minimumSizeHint".}
proc fQSplitter_virtualbase_createHandle(self: pointer, ): pointer{.importc: "QSplitter_virtualbase_createHandle".}
proc fcQSplitter_override_virtual_createHandle(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_createHandle".}
proc fQSplitter_virtualbase_childEvent(self: pointer, param1: pointer): void{.importc: "QSplitter_virtualbase_childEvent".}
proc fcQSplitter_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_childEvent".}
proc fQSplitter_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QSplitter_virtualbase_event".}
proc fcQSplitter_override_virtual_event(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_event".}
proc fQSplitter_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QSplitter_virtualbase_resizeEvent".}
proc fcQSplitter_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_resizeEvent".}
proc fQSplitter_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QSplitter_virtualbase_changeEvent".}
proc fcQSplitter_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_changeEvent".}
proc fQSplitter_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QSplitter_virtualbase_paintEvent".}
proc fcQSplitter_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_paintEvent".}
proc fQSplitter_virtualbase_devType(self: pointer, ): cint{.importc: "QSplitter_virtualbase_devType".}
proc fcQSplitter_override_virtual_devType(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_devType".}
proc fQSplitter_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QSplitter_virtualbase_setVisible".}
proc fcQSplitter_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_setVisible".}
proc fQSplitter_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QSplitter_virtualbase_heightForWidth".}
proc fcQSplitter_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_heightForWidth".}
proc fQSplitter_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QSplitter_virtualbase_hasHeightForWidth".}
proc fcQSplitter_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_hasHeightForWidth".}
proc fQSplitter_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QSplitter_virtualbase_paintEngine".}
proc fcQSplitter_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_paintEngine".}
proc fQSplitter_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_mousePressEvent".}
proc fcQSplitter_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_mousePressEvent".}
proc fQSplitter_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_mouseReleaseEvent".}
proc fcQSplitter_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_mouseReleaseEvent".}
proc fQSplitter_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_mouseDoubleClickEvent".}
proc fcQSplitter_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_mouseDoubleClickEvent".}
proc fQSplitter_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_mouseMoveEvent".}
proc fcQSplitter_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_mouseMoveEvent".}
proc fQSplitter_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_wheelEvent".}
proc fcQSplitter_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_wheelEvent".}
proc fQSplitter_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_keyPressEvent".}
proc fcQSplitter_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_keyPressEvent".}
proc fQSplitter_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_keyReleaseEvent".}
proc fcQSplitter_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_keyReleaseEvent".}
proc fQSplitter_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_focusInEvent".}
proc fcQSplitter_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_focusInEvent".}
proc fQSplitter_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_focusOutEvent".}
proc fcQSplitter_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_focusOutEvent".}
proc fQSplitter_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_enterEvent".}
proc fcQSplitter_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_enterEvent".}
proc fQSplitter_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_leaveEvent".}
proc fcQSplitter_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_leaveEvent".}
proc fQSplitter_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_moveEvent".}
proc fcQSplitter_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_moveEvent".}
proc fQSplitter_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_closeEvent".}
proc fcQSplitter_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_closeEvent".}
proc fQSplitter_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_contextMenuEvent".}
proc fcQSplitter_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_contextMenuEvent".}
proc fQSplitter_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_tabletEvent".}
proc fcQSplitter_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_tabletEvent".}
proc fQSplitter_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_actionEvent".}
proc fcQSplitter_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_actionEvent".}
proc fQSplitter_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_dragEnterEvent".}
proc fcQSplitter_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_dragEnterEvent".}
proc fQSplitter_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_dragMoveEvent".}
proc fcQSplitter_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_dragMoveEvent".}
proc fQSplitter_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_dragLeaveEvent".}
proc fcQSplitter_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_dragLeaveEvent".}
proc fQSplitter_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_dropEvent".}
proc fcQSplitter_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_dropEvent".}
proc fQSplitter_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_showEvent".}
proc fcQSplitter_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_showEvent".}
proc fQSplitter_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_hideEvent".}
proc fcQSplitter_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_hideEvent".}
proc fQSplitter_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QSplitter_virtualbase_nativeEvent".}
proc fcQSplitter_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_nativeEvent".}
proc fQSplitter_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QSplitter_virtualbase_metric".}
proc fcQSplitter_override_virtual_metric(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_metric".}
proc fQSplitter_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QSplitter_virtualbase_initPainter".}
proc fcQSplitter_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_initPainter".}
proc fQSplitter_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QSplitter_virtualbase_redirected".}
proc fcQSplitter_override_virtual_redirected(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_redirected".}
proc fQSplitter_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QSplitter_virtualbase_sharedPainter".}
proc fcQSplitter_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_sharedPainter".}
proc fQSplitter_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QSplitter_virtualbase_inputMethodEvent".}
proc fcQSplitter_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_inputMethodEvent".}
proc fQSplitter_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QSplitter_virtualbase_inputMethodQuery".}
proc fcQSplitter_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_inputMethodQuery".}
proc fQSplitter_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QSplitter_virtualbase_focusNextPrevChild".}
proc fcQSplitter_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_focusNextPrevChild".}
proc fQSplitter_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSplitter_virtualbase_eventFilter".}
proc fcQSplitter_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_eventFilter".}
proc fQSplitter_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_timerEvent".}
proc fcQSplitter_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_timerEvent".}
proc fQSplitter_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSplitter_virtualbase_customEvent".}
proc fcQSplitter_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_customEvent".}
proc fQSplitter_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSplitter_virtualbase_connectNotify".}
proc fcQSplitter_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_connectNotify".}
proc fQSplitter_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSplitter_virtualbase_disconnectNotify".}
proc fcQSplitter_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSplitter_override_virtual_disconnectNotify".}
proc fcQSplitter_staticMetaObject(): pointer {.importc: "QSplitter_staticMetaObject".}
proc fcQSplitter_delete(self: pointer) {.importc: "QSplitter_delete".}
proc fcQSplitterHandle_new(o: cint, parent: pointer): ptr cQSplitterHandle {.importc: "QSplitterHandle_new".}
proc fcQSplitterHandle_metaObject(self: pointer, ): pointer {.importc: "QSplitterHandle_metaObject".}
proc fcQSplitterHandle_metacast(self: pointer, param1: cstring): pointer {.importc: "QSplitterHandle_metacast".}
proc fcQSplitterHandle_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSplitterHandle_metacall".}
proc fcQSplitterHandle_tr(s: cstring): struct_miqt_string {.importc: "QSplitterHandle_tr".}
proc fcQSplitterHandle_trUtf8(s: cstring): struct_miqt_string {.importc: "QSplitterHandle_trUtf8".}
proc fcQSplitterHandle_setOrientation(self: pointer, o: cint): void {.importc: "QSplitterHandle_setOrientation".}
proc fcQSplitterHandle_orientation(self: pointer, ): cint {.importc: "QSplitterHandle_orientation".}
proc fcQSplitterHandle_opaqueResize(self: pointer, ): bool {.importc: "QSplitterHandle_opaqueResize".}
proc fcQSplitterHandle_splitter(self: pointer, ): pointer {.importc: "QSplitterHandle_splitter".}
proc fcQSplitterHandle_sizeHint(self: pointer, ): pointer {.importc: "QSplitterHandle_sizeHint".}
proc fcQSplitterHandle_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSplitterHandle_tr2".}
proc fcQSplitterHandle_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSplitterHandle_tr3".}
proc fcQSplitterHandle_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSplitterHandle_trUtf82".}
proc fcQSplitterHandle_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSplitterHandle_trUtf83".}
proc fQSplitterHandle_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSplitterHandle_virtualbase_metacall".}
proc fcQSplitterHandle_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_metacall".}
proc fQSplitterHandle_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QSplitterHandle_virtualbase_sizeHint".}
proc fcQSplitterHandle_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_sizeHint".}
proc fQSplitterHandle_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QSplitterHandle_virtualbase_paintEvent".}
proc fcQSplitterHandle_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_paintEvent".}
proc fQSplitterHandle_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QSplitterHandle_virtualbase_mouseMoveEvent".}
proc fcQSplitterHandle_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_mouseMoveEvent".}
proc fQSplitterHandle_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QSplitterHandle_virtualbase_mousePressEvent".}
proc fcQSplitterHandle_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_mousePressEvent".}
proc fQSplitterHandle_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QSplitterHandle_virtualbase_mouseReleaseEvent".}
proc fcQSplitterHandle_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_mouseReleaseEvent".}
proc fQSplitterHandle_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QSplitterHandle_virtualbase_resizeEvent".}
proc fcQSplitterHandle_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_resizeEvent".}
proc fQSplitterHandle_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QSplitterHandle_virtualbase_event".}
proc fcQSplitterHandle_override_virtual_event(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_event".}
proc fQSplitterHandle_virtualbase_devType(self: pointer, ): cint{.importc: "QSplitterHandle_virtualbase_devType".}
proc fcQSplitterHandle_override_virtual_devType(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_devType".}
proc fQSplitterHandle_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QSplitterHandle_virtualbase_setVisible".}
proc fcQSplitterHandle_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_setVisible".}
proc fQSplitterHandle_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QSplitterHandle_virtualbase_minimumSizeHint".}
proc fcQSplitterHandle_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_minimumSizeHint".}
proc fQSplitterHandle_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QSplitterHandle_virtualbase_heightForWidth".}
proc fcQSplitterHandle_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_heightForWidth".}
proc fQSplitterHandle_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QSplitterHandle_virtualbase_hasHeightForWidth".}
proc fcQSplitterHandle_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_hasHeightForWidth".}
proc fQSplitterHandle_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QSplitterHandle_virtualbase_paintEngine".}
proc fcQSplitterHandle_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_paintEngine".}
proc fQSplitterHandle_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_mouseDoubleClickEvent".}
proc fcQSplitterHandle_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_mouseDoubleClickEvent".}
proc fQSplitterHandle_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_wheelEvent".}
proc fcQSplitterHandle_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_wheelEvent".}
proc fQSplitterHandle_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_keyPressEvent".}
proc fcQSplitterHandle_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_keyPressEvent".}
proc fQSplitterHandle_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_keyReleaseEvent".}
proc fcQSplitterHandle_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_keyReleaseEvent".}
proc fQSplitterHandle_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_focusInEvent".}
proc fcQSplitterHandle_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_focusInEvent".}
proc fQSplitterHandle_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_focusOutEvent".}
proc fcQSplitterHandle_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_focusOutEvent".}
proc fQSplitterHandle_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_enterEvent".}
proc fcQSplitterHandle_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_enterEvent".}
proc fQSplitterHandle_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_leaveEvent".}
proc fcQSplitterHandle_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_leaveEvent".}
proc fQSplitterHandle_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_moveEvent".}
proc fcQSplitterHandle_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_moveEvent".}
proc fQSplitterHandle_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_closeEvent".}
proc fcQSplitterHandle_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_closeEvent".}
proc fQSplitterHandle_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_contextMenuEvent".}
proc fcQSplitterHandle_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_contextMenuEvent".}
proc fQSplitterHandle_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_tabletEvent".}
proc fcQSplitterHandle_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_tabletEvent".}
proc fQSplitterHandle_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_actionEvent".}
proc fcQSplitterHandle_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_actionEvent".}
proc fQSplitterHandle_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_dragEnterEvent".}
proc fcQSplitterHandle_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_dragEnterEvent".}
proc fQSplitterHandle_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_dragMoveEvent".}
proc fcQSplitterHandle_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_dragMoveEvent".}
proc fQSplitterHandle_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_dragLeaveEvent".}
proc fcQSplitterHandle_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_dragLeaveEvent".}
proc fQSplitterHandle_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_dropEvent".}
proc fcQSplitterHandle_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_dropEvent".}
proc fQSplitterHandle_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_showEvent".}
proc fcQSplitterHandle_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_showEvent".}
proc fQSplitterHandle_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_hideEvent".}
proc fcQSplitterHandle_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_hideEvent".}
proc fQSplitterHandle_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QSplitterHandle_virtualbase_nativeEvent".}
proc fcQSplitterHandle_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_nativeEvent".}
proc fQSplitterHandle_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QSplitterHandle_virtualbase_changeEvent".}
proc fcQSplitterHandle_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_changeEvent".}
proc fQSplitterHandle_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QSplitterHandle_virtualbase_metric".}
proc fcQSplitterHandle_override_virtual_metric(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_metric".}
proc fQSplitterHandle_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QSplitterHandle_virtualbase_initPainter".}
proc fcQSplitterHandle_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_initPainter".}
proc fQSplitterHandle_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QSplitterHandle_virtualbase_redirected".}
proc fcQSplitterHandle_override_virtual_redirected(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_redirected".}
proc fQSplitterHandle_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QSplitterHandle_virtualbase_sharedPainter".}
proc fcQSplitterHandle_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_sharedPainter".}
proc fQSplitterHandle_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QSplitterHandle_virtualbase_inputMethodEvent".}
proc fcQSplitterHandle_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_inputMethodEvent".}
proc fQSplitterHandle_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QSplitterHandle_virtualbase_inputMethodQuery".}
proc fcQSplitterHandle_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_inputMethodQuery".}
proc fQSplitterHandle_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QSplitterHandle_virtualbase_focusNextPrevChild".}
proc fcQSplitterHandle_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_focusNextPrevChild".}
proc fQSplitterHandle_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSplitterHandle_virtualbase_eventFilter".}
proc fcQSplitterHandle_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_eventFilter".}
proc fQSplitterHandle_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_timerEvent".}
proc fcQSplitterHandle_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_timerEvent".}
proc fQSplitterHandle_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_childEvent".}
proc fcQSplitterHandle_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_childEvent".}
proc fQSplitterHandle_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSplitterHandle_virtualbase_customEvent".}
proc fcQSplitterHandle_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_customEvent".}
proc fQSplitterHandle_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSplitterHandle_virtualbase_connectNotify".}
proc fcQSplitterHandle_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_connectNotify".}
proc fQSplitterHandle_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSplitterHandle_virtualbase_disconnectNotify".}
proc fcQSplitterHandle_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSplitterHandle_override_virtual_disconnectNotify".}
proc fcQSplitterHandle_staticMetaObject(): pointer {.importc: "QSplitterHandle_staticMetaObject".}
proc fcQSplitterHandle_delete(self: pointer) {.importc: "QSplitterHandle_delete".}


func init*(T: type QSplitter, h: ptr cQSplitter): QSplitter =
  T(h: h)
proc create*(T: type QSplitter, parent: gen_qwidget.QWidget): QSplitter =

  QSplitter.init(fcQSplitter_new(parent.h))
proc create*(T: type QSplitter, ): QSplitter =

  QSplitter.init(fcQSplitter_new2())
proc create*(T: type QSplitter, param1: gen_qnamespace.Orientation): QSplitter =

  QSplitter.init(fcQSplitter_new3(cint(param1)))
proc create*(T: type QSplitter, param1: gen_qnamespace.Orientation, parent: gen_qwidget.QWidget): QSplitter =

  QSplitter.init(fcQSplitter_new4(cint(param1), parent.h))
proc metaObject*(self: QSplitter, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSplitter_metaObject(self.h))

proc metacast*(self: QSplitter, param1: cstring): pointer =

  fcQSplitter_metacast(self.h, param1)

proc metacall*(self: QSplitter, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQSplitter_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QSplitter, s: cstring): string =

  let v_ms = fcQSplitter_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QSplitter, s: cstring): string =

  let v_ms = fcQSplitter_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addWidget*(self: QSplitter, widget: gen_qwidget.QWidget): void =

  fcQSplitter_addWidget(self.h, widget.h)

proc insertWidget*(self: QSplitter, index: cint, widget: gen_qwidget.QWidget): void =

  fcQSplitter_insertWidget(self.h, index, widget.h)

proc replaceWidget*(self: QSplitter, index: cint, widget: gen_qwidget.QWidget): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQSplitter_replaceWidget(self.h, index, widget.h))

proc setOrientation*(self: QSplitter, orientation: gen_qnamespace.Orientation): void =

  fcQSplitter_setOrientation(self.h, cint(orientation))

proc orientation*(self: QSplitter, ): gen_qnamespace.Orientation =

  gen_qnamespace.Orientation(fcQSplitter_orientation(self.h))

proc setChildrenCollapsible*(self: QSplitter, childrenCollapsible: bool): void =

  fcQSplitter_setChildrenCollapsible(self.h, childrenCollapsible)

proc childrenCollapsible*(self: QSplitter, ): bool =

  fcQSplitter_childrenCollapsible(self.h)

proc setCollapsible*(self: QSplitter, index: cint, param2: bool): void =

  fcQSplitter_setCollapsible(self.h, index, param2)

proc isCollapsible*(self: QSplitter, index: cint): bool =

  fcQSplitter_isCollapsible(self.h, index)

proc setOpaqueResize*(self: QSplitter, ): void =

  fcQSplitter_setOpaqueResize(self.h)

proc opaqueResize*(self: QSplitter, ): bool =

  fcQSplitter_opaqueResize(self.h)

proc refresh*(self: QSplitter, ): void =

  fcQSplitter_refresh(self.h)

proc sizeHint*(self: QSplitter, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQSplitter_sizeHint(self.h))

proc minimumSizeHint*(self: QSplitter, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQSplitter_minimumSizeHint(self.h))

proc sizes*(self: QSplitter, ): seq[cint] =

  var v_ma = fcQSplitter_sizes(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc setSizes*(self: QSplitter, list: seq[cint]): void =

  var list_CArray = newSeq[cint](len(list))
  for i in 0..<len(list):
    list_CArray[i] = list[i]

  fcQSplitter_setSizes(self.h, struct_miqt_array(len: csize_t(len(list)), data: if len(list) == 0: nil else: addr(list_CArray[0])))

proc saveState*(self: QSplitter, ): seq[byte] =

  var v_bytearray = fcQSplitter_saveState(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc restoreState*(self: QSplitter, state: seq[byte]): bool =

  fcQSplitter_restoreState(self.h, struct_miqt_string(data: cast[cstring](if len(state) == 0: nil else: unsafeAddr state[0]), len: csize_t(len(state))))

proc handleWidth*(self: QSplitter, ): cint =

  fcQSplitter_handleWidth(self.h)

proc setHandleWidth*(self: QSplitter, handleWidth: cint): void =

  fcQSplitter_setHandleWidth(self.h, handleWidth)

proc indexOf*(self: QSplitter, w: gen_qwidget.QWidget): cint =

  fcQSplitter_indexOf(self.h, w.h)

proc widget*(self: QSplitter, index: cint): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQSplitter_widget(self.h, index))

proc count*(self: QSplitter, ): cint =

  fcQSplitter_count(self.h)

proc getRange*(self: QSplitter, index: cint, param2: ptr cint, param3: ptr cint): void =

  fcQSplitter_getRange(self.h, index, param2, param3)

proc handle*(self: QSplitter, index: cint): QSplitterHandle =

  QSplitterHandle(h: fcQSplitter_handle(self.h, index))

proc setStretchFactor*(self: QSplitter, index: cint, stretch: cint): void =

  fcQSplitter_setStretchFactor(self.h, index, stretch)

proc splitterMoved*(self: QSplitter, pos: cint, index: cint): void =

  fcQSplitter_splitterMoved(self.h, pos, index)

proc miqt_exec_callback_QSplitter_splitterMoved(slot: int, pos: cint, index: cint) {.exportc.} =
  type Cb = proc(pos: cint, index: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = pos

  let slotval2 = index


  nimfunc[](slotval1, slotval2)

proc onsplitterMoved*(self: QSplitter, slot: proc(pos: cint, index: cint)) =
  type Cb = proc(pos: cint, index: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSplitter_connect_splitterMoved(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QSplitter, s: cstring, c: cstring): string =

  let v_ms = fcQSplitter_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QSplitter, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSplitter_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QSplitter, s: cstring, c: cstring): string =

  let v_ms = fcQSplitter_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QSplitter, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSplitter_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOpaqueResize1*(self: QSplitter, opaque: bool): void =

  fcQSplitter_setOpaqueResize1(self.h, opaque)

proc callVirtualBase_metacall(self: QSplitter, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQSplitter_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSplittermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QSplitter, slot: proc(super: QSplittermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QSplittermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_metacall(self: ptr cQSplitter, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSplitter_metacall ".} =
  type Cb = proc(super: QSplittermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QSplitter(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QSplitter, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQSplitter_virtualbase_sizeHint(self.h))

type QSplittersizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QSplitter, slot: proc(super: QSplittersizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QSplittersizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_sizeHint(self: ptr cQSplitter, slot: int): pointer {.exportc: "miqt_exec_callback_QSplitter_sizeHint ".} =
  type Cb = proc(super: QSplittersizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QSplitter(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QSplitter, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQSplitter_virtualbase_minimumSizeHint(self.h))

type QSplitterminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QSplitter, slot: proc(super: QSplitterminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QSplitterminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_minimumSizeHint(self: ptr cQSplitter, slot: int): pointer {.exportc: "miqt_exec_callback_QSplitter_minimumSizeHint ".} =
  type Cb = proc(super: QSplitterminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QSplitter(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_createHandle(self: QSplitter, ): QSplitterHandle =


  QSplitterHandle(h: fQSplitter_virtualbase_createHandle(self.h))

type QSplittercreateHandleBase* = proc(): QSplitterHandle
proc oncreateHandle*(self: QSplitter, slot: proc(super: QSplittercreateHandleBase): QSplitterHandle) =
  # TODO check subclass
  type Cb = proc(super: QSplittercreateHandleBase): QSplitterHandle
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_createHandle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_createHandle(self: ptr cQSplitter, slot: int): pointer {.exportc: "miqt_exec_callback_QSplitter_createHandle ".} =
  type Cb = proc(super: QSplittercreateHandleBase): QSplitterHandle
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_createHandle(QSplitter(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_childEvent(self: QSplitter, param1: gen_qcoreevent.QChildEvent): void =


  fQSplitter_virtualbase_childEvent(self.h, param1.h)

type QSplitterchildEventBase* = proc(param1: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QSplitter, slot: proc(super: QSplitterchildEventBase, param1: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterchildEventBase, param1: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_childEvent(self: ptr cQSplitter, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplitter_childEvent ".} =
  type Cb = proc(super: QSplitterchildEventBase, param1: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QSplitter(h: self), param1)
  let slotval1 = gen_qcoreevent.QChildEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QSplitter, param1: gen_qcoreevent.QEvent): bool =


  fQSplitter_virtualbase_event(self.h, param1.h)

type QSplittereventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QSplitter, slot: proc(super: QSplittereventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSplittereventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_event(self: ptr cQSplitter, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QSplitter_event ".} =
  type Cb = proc(super: QSplittereventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QSplitter(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_resizeEvent(self: QSplitter, param1: gen_qevent.QResizeEvent): void =


  fQSplitter_virtualbase_resizeEvent(self.h, param1.h)

type QSplitterresizeEventBase* = proc(param1: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QSplitter, slot: proc(super: QSplitterresizeEventBase, param1: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_resizeEvent(self: ptr cQSplitter, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplitter_resizeEvent ".} =
  type Cb = proc(super: QSplitterresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QSplitter(h: self), param1)
  let slotval1 = gen_qevent.QResizeEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QSplitter, param1: gen_qcoreevent.QEvent): void =


  fQSplitter_virtualbase_changeEvent(self.h, param1.h)

type QSplitterchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QSplitter, slot: proc(super: QSplitterchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_changeEvent(self: ptr cQSplitter, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplitter_changeEvent ".} =
  type Cb = proc(super: QSplitterchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QSplitter(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QSplitter, param1: gen_qevent.QPaintEvent): void =


  fQSplitter_virtualbase_paintEvent(self.h, param1.h)

type QSplitterpaintEventBase* = proc(param1: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QSplitter, slot: proc(super: QSplitterpaintEventBase, param1: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_paintEvent(self: ptr cQSplitter, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplitter_paintEvent ".} =
  type Cb = proc(super: QSplitterpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QSplitter(h: self), param1)
  let slotval1 = gen_qevent.QPaintEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QSplitter, ): cint =


  fQSplitter_virtualbase_devType(self.h)

type QSplitterdevTypeBase* = proc(): cint
proc ondevType*(self: QSplitter, slot: proc(super: QSplitterdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QSplitterdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_devType(self: ptr cQSplitter, slot: int): cint {.exportc: "miqt_exec_callback_QSplitter_devType ".} =
  type Cb = proc(super: QSplitterdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QSplitter(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QSplitter, visible: bool): void =


  fQSplitter_virtualbase_setVisible(self.h, visible)

type QSplittersetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QSplitter, slot: proc(super: QSplittersetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QSplittersetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_setVisible(self: ptr cQSplitter, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QSplitter_setVisible ".} =
  type Cb = proc(super: QSplittersetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QSplitter(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QSplitter, param1: cint): cint =


  fQSplitter_virtualbase_heightForWidth(self.h, param1)

type QSplitterheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QSplitter, slot: proc(super: QSplitterheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QSplitterheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_heightForWidth(self: ptr cQSplitter, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSplitter_heightForWidth ".} =
  type Cb = proc(super: QSplitterheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QSplitter(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QSplitter, ): bool =


  fQSplitter_virtualbase_hasHeightForWidth(self.h)

type QSplitterhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QSplitter, slot: proc(super: QSplitterhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSplitterhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_hasHeightForWidth(self: ptr cQSplitter, slot: int): bool {.exportc: "miqt_exec_callback_QSplitter_hasHeightForWidth ".} =
  type Cb = proc(super: QSplitterhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QSplitter(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QSplitter, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQSplitter_virtualbase_paintEngine(self.h))

type QSplitterpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QSplitter, slot: proc(super: QSplitterpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QSplitterpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_paintEngine(self: ptr cQSplitter, slot: int): pointer {.exportc: "miqt_exec_callback_QSplitter_paintEngine ".} =
  type Cb = proc(super: QSplitterpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QSplitter(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mousePressEvent(self: QSplitter, event: gen_qevent.QMouseEvent): void =


  fQSplitter_virtualbase_mousePressEvent(self.h, event.h)

type QSplittermousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QSplitter, slot: proc(super: QSplittermousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplittermousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_mousePressEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_mousePressEvent ".} =
  type Cb = proc(super: QSplittermousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QSplitter(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QSplitter, event: gen_qevent.QMouseEvent): void =


  fQSplitter_virtualbase_mouseReleaseEvent(self.h, event.h)

type QSplittermouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QSplitter, slot: proc(super: QSplittermouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplittermouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_mouseReleaseEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_mouseReleaseEvent ".} =
  type Cb = proc(super: QSplittermouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QSplitter(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QSplitter, event: gen_qevent.QMouseEvent): void =


  fQSplitter_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QSplittermouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QSplitter, slot: proc(super: QSplittermouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplittermouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_mouseDoubleClickEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QSplittermouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QSplitter(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QSplitter, event: gen_qevent.QMouseEvent): void =


  fQSplitter_virtualbase_mouseMoveEvent(self.h, event.h)

type QSplittermouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QSplitter, slot: proc(super: QSplittermouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplittermouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_mouseMoveEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_mouseMoveEvent ".} =
  type Cb = proc(super: QSplittermouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QSplitter(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QSplitter, event: gen_qevent.QWheelEvent): void =


  fQSplitter_virtualbase_wheelEvent(self.h, event.h)

type QSplitterwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QSplitter, slot: proc(super: QSplitterwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_wheelEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_wheelEvent ".} =
  type Cb = proc(super: QSplitterwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QSplitter(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QSplitter, event: gen_qevent.QKeyEvent): void =


  fQSplitter_virtualbase_keyPressEvent(self.h, event.h)

type QSplitterkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QSplitter, slot: proc(super: QSplitterkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_keyPressEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_keyPressEvent ".} =
  type Cb = proc(super: QSplitterkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QSplitter(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QSplitter, event: gen_qevent.QKeyEvent): void =


  fQSplitter_virtualbase_keyReleaseEvent(self.h, event.h)

type QSplitterkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QSplitter, slot: proc(super: QSplitterkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_keyReleaseEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_keyReleaseEvent ".} =
  type Cb = proc(super: QSplitterkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QSplitter(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QSplitter, event: gen_qevent.QFocusEvent): void =


  fQSplitter_virtualbase_focusInEvent(self.h, event.h)

type QSplitterfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QSplitter, slot: proc(super: QSplitterfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_focusInEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_focusInEvent ".} =
  type Cb = proc(super: QSplitterfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QSplitter(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QSplitter, event: gen_qevent.QFocusEvent): void =


  fQSplitter_virtualbase_focusOutEvent(self.h, event.h)

type QSplitterfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QSplitter, slot: proc(super: QSplitterfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_focusOutEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_focusOutEvent ".} =
  type Cb = proc(super: QSplitterfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QSplitter(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QSplitter, event: gen_qcoreevent.QEvent): void =


  fQSplitter_virtualbase_enterEvent(self.h, event.h)

type QSplitterenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QSplitter, slot: proc(super: QSplitterenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_enterEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_enterEvent ".} =
  type Cb = proc(super: QSplitterenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QSplitter(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QSplitter, event: gen_qcoreevent.QEvent): void =


  fQSplitter_virtualbase_leaveEvent(self.h, event.h)

type QSplitterleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QSplitter, slot: proc(super: QSplitterleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_leaveEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_leaveEvent ".} =
  type Cb = proc(super: QSplitterleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QSplitter(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QSplitter, event: gen_qevent.QMoveEvent): void =


  fQSplitter_virtualbase_moveEvent(self.h, event.h)

type QSplittermoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QSplitter, slot: proc(super: QSplittermoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplittermoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_moveEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_moveEvent ".} =
  type Cb = proc(super: QSplittermoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QSplitter(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QSplitter, event: gen_qevent.QCloseEvent): void =


  fQSplitter_virtualbase_closeEvent(self.h, event.h)

type QSplittercloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QSplitter, slot: proc(super: QSplittercloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplittercloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_closeEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_closeEvent ".} =
  type Cb = proc(super: QSplittercloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QSplitter(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QSplitter, event: gen_qevent.QContextMenuEvent): void =


  fQSplitter_virtualbase_contextMenuEvent(self.h, event.h)

type QSplittercontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QSplitter, slot: proc(super: QSplittercontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplittercontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_contextMenuEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_contextMenuEvent ".} =
  type Cb = proc(super: QSplittercontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QSplitter(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QSplitter, event: gen_qevent.QTabletEvent): void =


  fQSplitter_virtualbase_tabletEvent(self.h, event.h)

type QSplittertabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QSplitter, slot: proc(super: QSplittertabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplittertabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_tabletEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_tabletEvent ".} =
  type Cb = proc(super: QSplittertabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QSplitter(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QSplitter, event: gen_qevent.QActionEvent): void =


  fQSplitter_virtualbase_actionEvent(self.h, event.h)

type QSplitteractionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QSplitter, slot: proc(super: QSplitteractionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitteractionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_actionEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_actionEvent ".} =
  type Cb = proc(super: QSplitteractionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QSplitter(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QSplitter, event: gen_qevent.QDragEnterEvent): void =


  fQSplitter_virtualbase_dragEnterEvent(self.h, event.h)

type QSplitterdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QSplitter, slot: proc(super: QSplitterdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_dragEnterEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_dragEnterEvent ".} =
  type Cb = proc(super: QSplitterdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QSplitter(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QSplitter, event: gen_qevent.QDragMoveEvent): void =


  fQSplitter_virtualbase_dragMoveEvent(self.h, event.h)

type QSplitterdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QSplitter, slot: proc(super: QSplitterdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_dragMoveEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_dragMoveEvent ".} =
  type Cb = proc(super: QSplitterdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QSplitter(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QSplitter, event: gen_qevent.QDragLeaveEvent): void =


  fQSplitter_virtualbase_dragLeaveEvent(self.h, event.h)

type QSplitterdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QSplitter, slot: proc(super: QSplitterdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_dragLeaveEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_dragLeaveEvent ".} =
  type Cb = proc(super: QSplitterdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QSplitter(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QSplitter, event: gen_qevent.QDropEvent): void =


  fQSplitter_virtualbase_dropEvent(self.h, event.h)

type QSplitterdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QSplitter, slot: proc(super: QSplitterdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_dropEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_dropEvent ".} =
  type Cb = proc(super: QSplitterdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QSplitter(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QSplitter, event: gen_qevent.QShowEvent): void =


  fQSplitter_virtualbase_showEvent(self.h, event.h)

type QSplittershowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QSplitter, slot: proc(super: QSplittershowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplittershowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_showEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_showEvent ".} =
  type Cb = proc(super: QSplittershowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QSplitter(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QSplitter, event: gen_qevent.QHideEvent): void =


  fQSplitter_virtualbase_hideEvent(self.h, event.h)

type QSplitterhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QSplitter, slot: proc(super: QSplitterhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_hideEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_hideEvent ".} =
  type Cb = proc(super: QSplitterhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QSplitter(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QSplitter, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQSplitter_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QSplitternativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QSplitter, slot: proc(super: QSplitternativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QSplitternativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_nativeEvent(self: ptr cQSplitter, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QSplitter_nativeEvent ".} =
  type Cb = proc(super: QSplitternativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QSplitter(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QSplitter, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQSplitter_virtualbase_metric(self.h, cint(param1))

type QSplittermetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QSplitter, slot: proc(super: QSplittermetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QSplittermetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_metric(self: ptr cQSplitter, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSplitter_metric ".} =
  type Cb = proc(super: QSplittermetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QSplitter(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QSplitter, painter: gen_qpainter.QPainter): void =


  fQSplitter_virtualbase_initPainter(self.h, painter.h)

type QSplitterinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QSplitter, slot: proc(super: QSplitterinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_initPainter(self: ptr cQSplitter, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QSplitter_initPainter ".} =
  type Cb = proc(super: QSplitterinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QSplitter(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QSplitter, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQSplitter_virtualbase_redirected(self.h, offset.h))

type QSplitterredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QSplitter, slot: proc(super: QSplitterredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QSplitterredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_redirected(self: ptr cQSplitter, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QSplitter_redirected ".} =
  type Cb = proc(super: QSplitterredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QSplitter(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QSplitter, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQSplitter_virtualbase_sharedPainter(self.h))

type QSplittersharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QSplitter, slot: proc(super: QSplittersharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QSplittersharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_sharedPainter(self: ptr cQSplitter, slot: int): pointer {.exportc: "miqt_exec_callback_QSplitter_sharedPainter ".} =
  type Cb = proc(super: QSplittersharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QSplitter(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QSplitter, param1: gen_qevent.QInputMethodEvent): void =


  fQSplitter_virtualbase_inputMethodEvent(self.h, param1.h)

type QSplitterinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QSplitter, slot: proc(super: QSplitterinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_inputMethodEvent(self: ptr cQSplitter, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplitter_inputMethodEvent ".} =
  type Cb = proc(super: QSplitterinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QSplitter(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QSplitter, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQSplitter_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QSplitterinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QSplitter, slot: proc(super: QSplitterinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QSplitterinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_inputMethodQuery(self: ptr cQSplitter, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QSplitter_inputMethodQuery ".} =
  type Cb = proc(super: QSplitterinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QSplitter(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QSplitter, next: bool): bool =


  fQSplitter_virtualbase_focusNextPrevChild(self.h, next)

type QSplitterfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QSplitter, slot: proc(super: QSplitterfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QSplitterfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_focusNextPrevChild(self: ptr cQSplitter, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QSplitter_focusNextPrevChild ".} =
  type Cb = proc(super: QSplitterfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QSplitter(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QSplitter, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQSplitter_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSplittereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QSplitter, slot: proc(super: QSplittereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSplittereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_eventFilter(self: ptr cQSplitter, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSplitter_eventFilter ".} =
  type Cb = proc(super: QSplittereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QSplitter(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QSplitter, event: gen_qcoreevent.QTimerEvent): void =


  fQSplitter_virtualbase_timerEvent(self.h, event.h)

type QSplittertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QSplitter, slot: proc(super: QSplittertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplittertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_timerEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_timerEvent ".} =
  type Cb = proc(super: QSplittertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QSplitter(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QSplitter, event: gen_qcoreevent.QEvent): void =


  fQSplitter_virtualbase_customEvent(self.h, event.h)

type QSplittercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QSplitter, slot: proc(super: QSplittercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplittercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_customEvent(self: ptr cQSplitter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitter_customEvent ".} =
  type Cb = proc(super: QSplittercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QSplitter(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QSplitter, signal: gen_qmetaobject.QMetaMethod): void =


  fQSplitter_virtualbase_connectNotify(self.h, signal.h)

type QSplitterconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QSplitter, slot: proc(super: QSplitterconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_connectNotify(self: ptr cQSplitter, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSplitter_connectNotify ".} =
  type Cb = proc(super: QSplitterconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QSplitter(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QSplitter, signal: gen_qmetaobject.QMetaMethod): void =


  fQSplitter_virtualbase_disconnectNotify(self.h, signal.h)

type QSplitterdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QSplitter, slot: proc(super: QSplitterdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitter_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitter_disconnectNotify(self: ptr cQSplitter, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSplitter_disconnectNotify ".} =
  type Cb = proc(super: QSplitterdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QSplitter(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QSplitter): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQSplitter_staticMetaObject())
proc delete*(self: QSplitter) =
  fcQSplitter_delete(self.h)

func init*(T: type QSplitterHandle, h: ptr cQSplitterHandle): QSplitterHandle =
  T(h: h)
proc create*(T: type QSplitterHandle, o: gen_qnamespace.Orientation, parent: QSplitter): QSplitterHandle =

  QSplitterHandle.init(fcQSplitterHandle_new(cint(o), parent.h))
proc metaObject*(self: QSplitterHandle, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSplitterHandle_metaObject(self.h))

proc metacast*(self: QSplitterHandle, param1: cstring): pointer =

  fcQSplitterHandle_metacast(self.h, param1)

proc metacall*(self: QSplitterHandle, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQSplitterHandle_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QSplitterHandle, s: cstring): string =

  let v_ms = fcQSplitterHandle_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QSplitterHandle, s: cstring): string =

  let v_ms = fcQSplitterHandle_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOrientation*(self: QSplitterHandle, o: gen_qnamespace.Orientation): void =

  fcQSplitterHandle_setOrientation(self.h, cint(o))

proc orientation*(self: QSplitterHandle, ): gen_qnamespace.Orientation =

  gen_qnamespace.Orientation(fcQSplitterHandle_orientation(self.h))

proc opaqueResize*(self: QSplitterHandle, ): bool =

  fcQSplitterHandle_opaqueResize(self.h)

proc splitter*(self: QSplitterHandle, ): QSplitter =

  QSplitter(h: fcQSplitterHandle_splitter(self.h))

proc sizeHint*(self: QSplitterHandle, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQSplitterHandle_sizeHint(self.h))

proc tr2*(_: type QSplitterHandle, s: cstring, c: cstring): string =

  let v_ms = fcQSplitterHandle_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QSplitterHandle, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSplitterHandle_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QSplitterHandle, s: cstring, c: cstring): string =

  let v_ms = fcQSplitterHandle_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QSplitterHandle, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSplitterHandle_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QSplitterHandle, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQSplitterHandle_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSplitterHandlemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QSplitterHandle, slot: proc(super: QSplitterHandlemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandlemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_metacall(self: ptr cQSplitterHandle, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSplitterHandle_metacall ".} =
  type Cb = proc(super: QSplitterHandlemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QSplitterHandle(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QSplitterHandle, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQSplitterHandle_virtualbase_sizeHint(self.h))

type QSplitterHandlesizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QSplitterHandle, slot: proc(super: QSplitterHandlesizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandlesizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_sizeHint(self: ptr cQSplitterHandle, slot: int): pointer {.exportc: "miqt_exec_callback_QSplitterHandle_sizeHint ".} =
  type Cb = proc(super: QSplitterHandlesizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QSplitterHandle(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_paintEvent(self: QSplitterHandle, param1: gen_qevent.QPaintEvent): void =


  fQSplitterHandle_virtualbase_paintEvent(self.h, param1.h)

type QSplitterHandlepaintEventBase* = proc(param1: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandlepaintEventBase, param1: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandlepaintEventBase, param1: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_paintEvent(self: ptr cQSplitterHandle, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_paintEvent ".} =
  type Cb = proc(super: QSplitterHandlepaintEventBase, param1: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QSplitterHandle(h: self), param1)
  let slotval1 = gen_qevent.QPaintEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QSplitterHandle, param1: gen_qevent.QMouseEvent): void =


  fQSplitterHandle_virtualbase_mouseMoveEvent(self.h, param1.h)

type QSplitterHandlemouseMoveEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandlemouseMoveEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandlemouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_mouseMoveEvent(self: ptr cQSplitterHandle, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_mouseMoveEvent ".} =
  type Cb = proc(super: QSplitterHandlemouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QSplitterHandle(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QSplitterHandle, param1: gen_qevent.QMouseEvent): void =


  fQSplitterHandle_virtualbase_mousePressEvent(self.h, param1.h)

type QSplitterHandlemousePressEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandlemousePressEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandlemousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_mousePressEvent(self: ptr cQSplitterHandle, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_mousePressEvent ".} =
  type Cb = proc(super: QSplitterHandlemousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QSplitterHandle(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QSplitterHandle, param1: gen_qevent.QMouseEvent): void =


  fQSplitterHandle_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QSplitterHandlemouseReleaseEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandlemouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandlemouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_mouseReleaseEvent(self: ptr cQSplitterHandle, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_mouseReleaseEvent ".} =
  type Cb = proc(super: QSplitterHandlemouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QSplitterHandle(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QSplitterHandle, param1: gen_qevent.QResizeEvent): void =


  fQSplitterHandle_virtualbase_resizeEvent(self.h, param1.h)

type QSplitterHandleresizeEventBase* = proc(param1: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandleresizeEventBase, param1: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandleresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_resizeEvent(self: ptr cQSplitterHandle, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_resizeEvent ".} =
  type Cb = proc(super: QSplitterHandleresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QSplitterHandle(h: self), param1)
  let slotval1 = gen_qevent.QResizeEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QSplitterHandle, param1: gen_qcoreevent.QEvent): bool =


  fQSplitterHandle_virtualbase_event(self.h, param1.h)

type QSplitterHandleeventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QSplitterHandle, slot: proc(super: QSplitterHandleeventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandleeventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_event(self: ptr cQSplitterHandle, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QSplitterHandle_event ".} =
  type Cb = proc(super: QSplitterHandleeventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QSplitterHandle(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_devType(self: QSplitterHandle, ): cint =


  fQSplitterHandle_virtualbase_devType(self.h)

type QSplitterHandledevTypeBase* = proc(): cint
proc ondevType*(self: QSplitterHandle, slot: proc(super: QSplitterHandledevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandledevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_devType(self: ptr cQSplitterHandle, slot: int): cint {.exportc: "miqt_exec_callback_QSplitterHandle_devType ".} =
  type Cb = proc(super: QSplitterHandledevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QSplitterHandle(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QSplitterHandle, visible: bool): void =


  fQSplitterHandle_virtualbase_setVisible(self.h, visible)

type QSplitterHandlesetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QSplitterHandle, slot: proc(super: QSplitterHandlesetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandlesetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_setVisible(self: ptr cQSplitterHandle, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QSplitterHandle_setVisible ".} =
  type Cb = proc(super: QSplitterHandlesetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QSplitterHandle(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_minimumSizeHint(self: QSplitterHandle, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQSplitterHandle_virtualbase_minimumSizeHint(self.h))

type QSplitterHandleminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QSplitterHandle, slot: proc(super: QSplitterHandleminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandleminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_minimumSizeHint(self: ptr cQSplitterHandle, slot: int): pointer {.exportc: "miqt_exec_callback_QSplitterHandle_minimumSizeHint ".} =
  type Cb = proc(super: QSplitterHandleminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QSplitterHandle(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QSplitterHandle, param1: cint): cint =


  fQSplitterHandle_virtualbase_heightForWidth(self.h, param1)

type QSplitterHandleheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QSplitterHandle, slot: proc(super: QSplitterHandleheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandleheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_heightForWidth(self: ptr cQSplitterHandle, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSplitterHandle_heightForWidth ".} =
  type Cb = proc(super: QSplitterHandleheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QSplitterHandle(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QSplitterHandle, ): bool =


  fQSplitterHandle_virtualbase_hasHeightForWidth(self.h)

type QSplitterHandlehasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QSplitterHandle, slot: proc(super: QSplitterHandlehasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandlehasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_hasHeightForWidth(self: ptr cQSplitterHandle, slot: int): bool {.exportc: "miqt_exec_callback_QSplitterHandle_hasHeightForWidth ".} =
  type Cb = proc(super: QSplitterHandlehasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QSplitterHandle(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QSplitterHandle, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQSplitterHandle_virtualbase_paintEngine(self.h))

type QSplitterHandlepaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QSplitterHandle, slot: proc(super: QSplitterHandlepaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandlepaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_paintEngine(self: ptr cQSplitterHandle, slot: int): pointer {.exportc: "miqt_exec_callback_QSplitterHandle_paintEngine ".} =
  type Cb = proc(super: QSplitterHandlepaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QSplitterHandle(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mouseDoubleClickEvent(self: QSplitterHandle, event: gen_qevent.QMouseEvent): void =


  fQSplitterHandle_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QSplitterHandlemouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandlemouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandlemouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_mouseDoubleClickEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QSplitterHandlemouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QSplitterHandle(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QSplitterHandle, event: gen_qevent.QWheelEvent): void =


  fQSplitterHandle_virtualbase_wheelEvent(self.h, event.h)

type QSplitterHandlewheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandlewheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandlewheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_wheelEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_wheelEvent ".} =
  type Cb = proc(super: QSplitterHandlewheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QSplitterHandle(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QSplitterHandle, event: gen_qevent.QKeyEvent): void =


  fQSplitterHandle_virtualbase_keyPressEvent(self.h, event.h)

type QSplitterHandlekeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandlekeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandlekeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_keyPressEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_keyPressEvent ".} =
  type Cb = proc(super: QSplitterHandlekeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QSplitterHandle(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QSplitterHandle, event: gen_qevent.QKeyEvent): void =


  fQSplitterHandle_virtualbase_keyReleaseEvent(self.h, event.h)

type QSplitterHandlekeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandlekeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandlekeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_keyReleaseEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_keyReleaseEvent ".} =
  type Cb = proc(super: QSplitterHandlekeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QSplitterHandle(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QSplitterHandle, event: gen_qevent.QFocusEvent): void =


  fQSplitterHandle_virtualbase_focusInEvent(self.h, event.h)

type QSplitterHandlefocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandlefocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandlefocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_focusInEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_focusInEvent ".} =
  type Cb = proc(super: QSplitterHandlefocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QSplitterHandle(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QSplitterHandle, event: gen_qevent.QFocusEvent): void =


  fQSplitterHandle_virtualbase_focusOutEvent(self.h, event.h)

type QSplitterHandlefocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandlefocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandlefocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_focusOutEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_focusOutEvent ".} =
  type Cb = proc(super: QSplitterHandlefocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QSplitterHandle(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QSplitterHandle, event: gen_qcoreevent.QEvent): void =


  fQSplitterHandle_virtualbase_enterEvent(self.h, event.h)

type QSplitterHandleenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandleenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandleenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_enterEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_enterEvent ".} =
  type Cb = proc(super: QSplitterHandleenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QSplitterHandle(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QSplitterHandle, event: gen_qcoreevent.QEvent): void =


  fQSplitterHandle_virtualbase_leaveEvent(self.h, event.h)

type QSplitterHandleleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandleleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandleleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_leaveEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_leaveEvent ".} =
  type Cb = proc(super: QSplitterHandleleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QSplitterHandle(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QSplitterHandle, event: gen_qevent.QMoveEvent): void =


  fQSplitterHandle_virtualbase_moveEvent(self.h, event.h)

type QSplitterHandlemoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandlemoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandlemoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_moveEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_moveEvent ".} =
  type Cb = proc(super: QSplitterHandlemoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QSplitterHandle(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QSplitterHandle, event: gen_qevent.QCloseEvent): void =


  fQSplitterHandle_virtualbase_closeEvent(self.h, event.h)

type QSplitterHandlecloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandlecloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandlecloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_closeEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_closeEvent ".} =
  type Cb = proc(super: QSplitterHandlecloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QSplitterHandle(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QSplitterHandle, event: gen_qevent.QContextMenuEvent): void =


  fQSplitterHandle_virtualbase_contextMenuEvent(self.h, event.h)

type QSplitterHandlecontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandlecontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandlecontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_contextMenuEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_contextMenuEvent ".} =
  type Cb = proc(super: QSplitterHandlecontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QSplitterHandle(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QSplitterHandle, event: gen_qevent.QTabletEvent): void =


  fQSplitterHandle_virtualbase_tabletEvent(self.h, event.h)

type QSplitterHandletabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandletabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandletabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_tabletEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_tabletEvent ".} =
  type Cb = proc(super: QSplitterHandletabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QSplitterHandle(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QSplitterHandle, event: gen_qevent.QActionEvent): void =


  fQSplitterHandle_virtualbase_actionEvent(self.h, event.h)

type QSplitterHandleactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandleactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandleactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_actionEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_actionEvent ".} =
  type Cb = proc(super: QSplitterHandleactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QSplitterHandle(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QSplitterHandle, event: gen_qevent.QDragEnterEvent): void =


  fQSplitterHandle_virtualbase_dragEnterEvent(self.h, event.h)

type QSplitterHandledragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandledragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandledragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_dragEnterEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_dragEnterEvent ".} =
  type Cb = proc(super: QSplitterHandledragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QSplitterHandle(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QSplitterHandle, event: gen_qevent.QDragMoveEvent): void =


  fQSplitterHandle_virtualbase_dragMoveEvent(self.h, event.h)

type QSplitterHandledragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandledragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandledragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_dragMoveEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_dragMoveEvent ".} =
  type Cb = proc(super: QSplitterHandledragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QSplitterHandle(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QSplitterHandle, event: gen_qevent.QDragLeaveEvent): void =


  fQSplitterHandle_virtualbase_dragLeaveEvent(self.h, event.h)

type QSplitterHandledragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandledragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandledragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_dragLeaveEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_dragLeaveEvent ".} =
  type Cb = proc(super: QSplitterHandledragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QSplitterHandle(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QSplitterHandle, event: gen_qevent.QDropEvent): void =


  fQSplitterHandle_virtualbase_dropEvent(self.h, event.h)

type QSplitterHandledropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandledropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandledropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_dropEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_dropEvent ".} =
  type Cb = proc(super: QSplitterHandledropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QSplitterHandle(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QSplitterHandle, event: gen_qevent.QShowEvent): void =


  fQSplitterHandle_virtualbase_showEvent(self.h, event.h)

type QSplitterHandleshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandleshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandleshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_showEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_showEvent ".} =
  type Cb = proc(super: QSplitterHandleshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QSplitterHandle(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QSplitterHandle, event: gen_qevent.QHideEvent): void =


  fQSplitterHandle_virtualbase_hideEvent(self.h, event.h)

type QSplitterHandlehideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandlehideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandlehideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_hideEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_hideEvent ".} =
  type Cb = proc(super: QSplitterHandlehideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QSplitterHandle(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QSplitterHandle, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQSplitterHandle_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QSplitterHandlenativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandlenativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandlenativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_nativeEvent(self: ptr cQSplitterHandle, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QSplitterHandle_nativeEvent ".} =
  type Cb = proc(super: QSplitterHandlenativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QSplitterHandle(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_changeEvent(self: QSplitterHandle, param1: gen_qcoreevent.QEvent): void =


  fQSplitterHandle_virtualbase_changeEvent(self.h, param1.h)

type QSplitterHandlechangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandlechangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandlechangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_changeEvent(self: ptr cQSplitterHandle, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_changeEvent ".} =
  type Cb = proc(super: QSplitterHandlechangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QSplitterHandle(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_metric(self: QSplitterHandle, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQSplitterHandle_virtualbase_metric(self.h, cint(param1))

type QSplitterHandlemetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QSplitterHandle, slot: proc(super: QSplitterHandlemetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandlemetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_metric(self: ptr cQSplitterHandle, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSplitterHandle_metric ".} =
  type Cb = proc(super: QSplitterHandlemetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QSplitterHandle(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QSplitterHandle, painter: gen_qpainter.QPainter): void =


  fQSplitterHandle_virtualbase_initPainter(self.h, painter.h)

type QSplitterHandleinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QSplitterHandle, slot: proc(super: QSplitterHandleinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandleinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_initPainter(self: ptr cQSplitterHandle, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_initPainter ".} =
  type Cb = proc(super: QSplitterHandleinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QSplitterHandle(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QSplitterHandle, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQSplitterHandle_virtualbase_redirected(self.h, offset.h))

type QSplitterHandleredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QSplitterHandle, slot: proc(super: QSplitterHandleredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandleredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_redirected(self: ptr cQSplitterHandle, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QSplitterHandle_redirected ".} =
  type Cb = proc(super: QSplitterHandleredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QSplitterHandle(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QSplitterHandle, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQSplitterHandle_virtualbase_sharedPainter(self.h))

type QSplitterHandlesharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QSplitterHandle, slot: proc(super: QSplitterHandlesharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandlesharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_sharedPainter(self: ptr cQSplitterHandle, slot: int): pointer {.exportc: "miqt_exec_callback_QSplitterHandle_sharedPainter ".} =
  type Cb = proc(super: QSplitterHandlesharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QSplitterHandle(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QSplitterHandle, param1: gen_qevent.QInputMethodEvent): void =


  fQSplitterHandle_virtualbase_inputMethodEvent(self.h, param1.h)

type QSplitterHandleinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandleinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandleinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_inputMethodEvent(self: ptr cQSplitterHandle, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_inputMethodEvent ".} =
  type Cb = proc(super: QSplitterHandleinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QSplitterHandle(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QSplitterHandle, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQSplitterHandle_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QSplitterHandleinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QSplitterHandle, slot: proc(super: QSplitterHandleinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandleinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_inputMethodQuery(self: ptr cQSplitterHandle, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QSplitterHandle_inputMethodQuery ".} =
  type Cb = proc(super: QSplitterHandleinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QSplitterHandle(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QSplitterHandle, next: bool): bool =


  fQSplitterHandle_virtualbase_focusNextPrevChild(self.h, next)

type QSplitterHandlefocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QSplitterHandle, slot: proc(super: QSplitterHandlefocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandlefocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_focusNextPrevChild(self: ptr cQSplitterHandle, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QSplitterHandle_focusNextPrevChild ".} =
  type Cb = proc(super: QSplitterHandlefocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QSplitterHandle(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QSplitterHandle, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQSplitterHandle_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSplitterHandleeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QSplitterHandle, slot: proc(super: QSplitterHandleeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandleeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_eventFilter(self: ptr cQSplitterHandle, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSplitterHandle_eventFilter ".} =
  type Cb = proc(super: QSplitterHandleeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QSplitterHandle(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QSplitterHandle, event: gen_qcoreevent.QTimerEvent): void =


  fQSplitterHandle_virtualbase_timerEvent(self.h, event.h)

type QSplitterHandletimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandletimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandletimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_timerEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_timerEvent ".} =
  type Cb = proc(super: QSplitterHandletimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QSplitterHandle(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QSplitterHandle, event: gen_qcoreevent.QChildEvent): void =


  fQSplitterHandle_virtualbase_childEvent(self.h, event.h)

type QSplitterHandlechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandlechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandlechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_childEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_childEvent ".} =
  type Cb = proc(super: QSplitterHandlechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QSplitterHandle(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QSplitterHandle, event: gen_qcoreevent.QEvent): void =


  fQSplitterHandle_virtualbase_customEvent(self.h, event.h)

type QSplitterHandlecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QSplitterHandle, slot: proc(super: QSplitterHandlecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandlecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_customEvent(self: ptr cQSplitterHandle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_customEvent ".} =
  type Cb = proc(super: QSplitterHandlecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QSplitterHandle(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QSplitterHandle, signal: gen_qmetaobject.QMetaMethod): void =


  fQSplitterHandle_virtualbase_connectNotify(self.h, signal.h)

type QSplitterHandleconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QSplitterHandle, slot: proc(super: QSplitterHandleconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandleconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_connectNotify(self: ptr cQSplitterHandle, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_connectNotify ".} =
  type Cb = proc(super: QSplitterHandleconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QSplitterHandle(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QSplitterHandle, signal: gen_qmetaobject.QMetaMethod): void =


  fQSplitterHandle_virtualbase_disconnectNotify(self.h, signal.h)

type QSplitterHandledisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QSplitterHandle, slot: proc(super: QSplitterHandledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSplitterHandledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSplitterHandle_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSplitterHandle_disconnectNotify(self: ptr cQSplitterHandle, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSplitterHandle_disconnectNotify ".} =
  type Cb = proc(super: QSplitterHandledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QSplitterHandle(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QSplitterHandle): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQSplitterHandle_staticMetaObject())
proc delete*(self: QSplitterHandle) =
  fcQSplitterHandle_delete(self.h)
