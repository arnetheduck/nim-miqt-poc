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
{.compile("gen_qtextbrowser.cpp", cflags).}


import gen_qtextbrowser_types
export gen_qtextbrowser_types

import
  gen_qcoreevent,
  gen_qevent,
  gen_qmetaobject,
  gen_qmimedata,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qsize,
  gen_qstyleoption,
  gen_qtextcursor,
  gen_qtextdocument,
  gen_qtextedit,
  gen_qurl,
  gen_qvariant,
  gen_qwidget
export
  gen_qcoreevent,
  gen_qevent,
  gen_qmetaobject,
  gen_qmimedata,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qsize,
  gen_qstyleoption,
  gen_qtextcursor,
  gen_qtextdocument,
  gen_qtextedit,
  gen_qurl,
  gen_qvariant,
  gen_qwidget

type cQTextBrowser*{.exportc: "QTextBrowser", incompleteStruct.} = object

proc fcQTextBrowser_new(parent: pointer): ptr cQTextBrowser {.importc: "QTextBrowser_new".}
proc fcQTextBrowser_new2(): ptr cQTextBrowser {.importc: "QTextBrowser_new2".}
proc fcQTextBrowser_metaObject(self: pointer, ): pointer {.importc: "QTextBrowser_metaObject".}
proc fcQTextBrowser_metacast(self: pointer, param1: cstring): pointer {.importc: "QTextBrowser_metacast".}
proc fcQTextBrowser_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTextBrowser_metacall".}
proc fcQTextBrowser_tr(s: cstring): struct_miqt_string {.importc: "QTextBrowser_tr".}
proc fcQTextBrowser_source(self: pointer, ): pointer {.importc: "QTextBrowser_source".}
proc fcQTextBrowser_sourceType(self: pointer, ): cint {.importc: "QTextBrowser_sourceType".}
proc fcQTextBrowser_searchPaths(self: pointer, ): struct_miqt_array {.importc: "QTextBrowser_searchPaths".}
proc fcQTextBrowser_setSearchPaths(self: pointer, paths: struct_miqt_array): void {.importc: "QTextBrowser_setSearchPaths".}
proc fcQTextBrowser_loadResource(self: pointer, typeVal: cint, name: pointer): pointer {.importc: "QTextBrowser_loadResource".}
proc fcQTextBrowser_isBackwardAvailable(self: pointer, ): bool {.importc: "QTextBrowser_isBackwardAvailable".}
proc fcQTextBrowser_isForwardAvailable(self: pointer, ): bool {.importc: "QTextBrowser_isForwardAvailable".}
proc fcQTextBrowser_clearHistory(self: pointer, ): void {.importc: "QTextBrowser_clearHistory".}
proc fcQTextBrowser_historyTitle(self: pointer, param1: cint): struct_miqt_string {.importc: "QTextBrowser_historyTitle".}
proc fcQTextBrowser_historyUrl(self: pointer, param1: cint): pointer {.importc: "QTextBrowser_historyUrl".}
proc fcQTextBrowser_backwardHistoryCount(self: pointer, ): cint {.importc: "QTextBrowser_backwardHistoryCount".}
proc fcQTextBrowser_forwardHistoryCount(self: pointer, ): cint {.importc: "QTextBrowser_forwardHistoryCount".}
proc fcQTextBrowser_openExternalLinks(self: pointer, ): bool {.importc: "QTextBrowser_openExternalLinks".}
proc fcQTextBrowser_setOpenExternalLinks(self: pointer, open: bool): void {.importc: "QTextBrowser_setOpenExternalLinks".}
proc fcQTextBrowser_openLinks(self: pointer, ): bool {.importc: "QTextBrowser_openLinks".}
proc fcQTextBrowser_setOpenLinks(self: pointer, open: bool): void {.importc: "QTextBrowser_setOpenLinks".}
proc fcQTextBrowser_setSource(self: pointer, name: pointer): void {.importc: "QTextBrowser_setSource".}
proc fcQTextBrowser_backward(self: pointer, ): void {.importc: "QTextBrowser_backward".}
proc fcQTextBrowser_forward(self: pointer, ): void {.importc: "QTextBrowser_forward".}
proc fcQTextBrowser_home(self: pointer, ): void {.importc: "QTextBrowser_home".}
proc fcQTextBrowser_reload(self: pointer, ): void {.importc: "QTextBrowser_reload".}
proc fcQTextBrowser_backwardAvailable(self: pointer, param1: bool): void {.importc: "QTextBrowser_backwardAvailable".}
proc fQTextBrowser_connect_backwardAvailable(self: pointer, slot: int) {.importc: "QTextBrowser_connect_backwardAvailable".}
proc fcQTextBrowser_forwardAvailable(self: pointer, param1: bool): void {.importc: "QTextBrowser_forwardAvailable".}
proc fQTextBrowser_connect_forwardAvailable(self: pointer, slot: int) {.importc: "QTextBrowser_connect_forwardAvailable".}
proc fcQTextBrowser_historyChanged(self: pointer, ): void {.importc: "QTextBrowser_historyChanged".}
proc fQTextBrowser_connect_historyChanged(self: pointer, slot: int) {.importc: "QTextBrowser_connect_historyChanged".}
proc fcQTextBrowser_sourceChanged(self: pointer, param1: pointer): void {.importc: "QTextBrowser_sourceChanged".}
proc fQTextBrowser_connect_sourceChanged(self: pointer, slot: int) {.importc: "QTextBrowser_connect_sourceChanged".}
proc fcQTextBrowser_highlighted(self: pointer, param1: pointer): void {.importc: "QTextBrowser_highlighted".}
proc fQTextBrowser_connect_highlighted(self: pointer, slot: int) {.importc: "QTextBrowser_connect_highlighted".}
proc fcQTextBrowser_anchorClicked(self: pointer, param1: pointer): void {.importc: "QTextBrowser_anchorClicked".}
proc fQTextBrowser_connect_anchorClicked(self: pointer, slot: int) {.importc: "QTextBrowser_connect_anchorClicked".}
proc fcQTextBrowser_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTextBrowser_tr2".}
proc fcQTextBrowser_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTextBrowser_tr3".}
proc fcQTextBrowser_setSource2(self: pointer, name: pointer, typeVal: cint): void {.importc: "QTextBrowser_setSource2".}
proc fQTextBrowser_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTextBrowser_virtualbase_metacall".}
proc fcQTextBrowser_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_metacall".}
proc fQTextBrowser_virtualbase_loadResource(self: pointer, typeVal: cint, name: pointer): pointer{.importc: "QTextBrowser_virtualbase_loadResource".}
proc fcQTextBrowser_override_virtual_loadResource(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_loadResource".}
proc fQTextBrowser_virtualbase_backward(self: pointer, ): void{.importc: "QTextBrowser_virtualbase_backward".}
proc fcQTextBrowser_override_virtual_backward(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_backward".}
proc fQTextBrowser_virtualbase_forward(self: pointer, ): void{.importc: "QTextBrowser_virtualbase_forward".}
proc fcQTextBrowser_override_virtual_forward(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_forward".}
proc fQTextBrowser_virtualbase_home(self: pointer, ): void{.importc: "QTextBrowser_virtualbase_home".}
proc fcQTextBrowser_override_virtual_home(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_home".}
proc fQTextBrowser_virtualbase_reload(self: pointer, ): void{.importc: "QTextBrowser_virtualbase_reload".}
proc fcQTextBrowser_override_virtual_reload(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_reload".}
proc fQTextBrowser_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QTextBrowser_virtualbase_event".}
proc fcQTextBrowser_override_virtual_event(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_event".}
proc fQTextBrowser_virtualbase_keyPressEvent(self: pointer, ev: pointer): void{.importc: "QTextBrowser_virtualbase_keyPressEvent".}
proc fcQTextBrowser_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_keyPressEvent".}
proc fQTextBrowser_virtualbase_mouseMoveEvent(self: pointer, ev: pointer): void{.importc: "QTextBrowser_virtualbase_mouseMoveEvent".}
proc fcQTextBrowser_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_mouseMoveEvent".}
proc fQTextBrowser_virtualbase_mousePressEvent(self: pointer, ev: pointer): void{.importc: "QTextBrowser_virtualbase_mousePressEvent".}
proc fcQTextBrowser_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_mousePressEvent".}
proc fQTextBrowser_virtualbase_mouseReleaseEvent(self: pointer, ev: pointer): void{.importc: "QTextBrowser_virtualbase_mouseReleaseEvent".}
proc fcQTextBrowser_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_mouseReleaseEvent".}
proc fQTextBrowser_virtualbase_focusOutEvent(self: pointer, ev: pointer): void{.importc: "QTextBrowser_virtualbase_focusOutEvent".}
proc fcQTextBrowser_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_focusOutEvent".}
proc fQTextBrowser_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QTextBrowser_virtualbase_focusNextPrevChild".}
proc fcQTextBrowser_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_focusNextPrevChild".}
proc fQTextBrowser_virtualbase_paintEvent(self: pointer, e: pointer): void{.importc: "QTextBrowser_virtualbase_paintEvent".}
proc fcQTextBrowser_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_paintEvent".}
proc fQTextBrowser_virtualbase_doSetSource(self: pointer, name: pointer, typeVal: cint): void{.importc: "QTextBrowser_virtualbase_doSetSource".}
proc fcQTextBrowser_override_virtual_doSetSource(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_doSetSource".}
proc fQTextBrowser_virtualbase_inputMethodQuery(self: pointer, property: cint): pointer{.importc: "QTextBrowser_virtualbase_inputMethodQuery".}
proc fcQTextBrowser_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_inputMethodQuery".}
proc fQTextBrowser_virtualbase_timerEvent(self: pointer, e: pointer): void{.importc: "QTextBrowser_virtualbase_timerEvent".}
proc fcQTextBrowser_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_timerEvent".}
proc fQTextBrowser_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void{.importc: "QTextBrowser_virtualbase_keyReleaseEvent".}
proc fcQTextBrowser_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_keyReleaseEvent".}
proc fQTextBrowser_virtualbase_resizeEvent(self: pointer, e: pointer): void{.importc: "QTextBrowser_virtualbase_resizeEvent".}
proc fcQTextBrowser_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_resizeEvent".}
proc fQTextBrowser_virtualbase_mouseDoubleClickEvent(self: pointer, e: pointer): void{.importc: "QTextBrowser_virtualbase_mouseDoubleClickEvent".}
proc fcQTextBrowser_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_mouseDoubleClickEvent".}
proc fQTextBrowser_virtualbase_contextMenuEvent(self: pointer, e: pointer): void{.importc: "QTextBrowser_virtualbase_contextMenuEvent".}
proc fcQTextBrowser_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_contextMenuEvent".}
proc fQTextBrowser_virtualbase_dragEnterEvent(self: pointer, e: pointer): void{.importc: "QTextBrowser_virtualbase_dragEnterEvent".}
proc fcQTextBrowser_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_dragEnterEvent".}
proc fQTextBrowser_virtualbase_dragLeaveEvent(self: pointer, e: pointer): void{.importc: "QTextBrowser_virtualbase_dragLeaveEvent".}
proc fcQTextBrowser_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_dragLeaveEvent".}
proc fQTextBrowser_virtualbase_dragMoveEvent(self: pointer, e: pointer): void{.importc: "QTextBrowser_virtualbase_dragMoveEvent".}
proc fcQTextBrowser_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_dragMoveEvent".}
proc fQTextBrowser_virtualbase_dropEvent(self: pointer, e: pointer): void{.importc: "QTextBrowser_virtualbase_dropEvent".}
proc fcQTextBrowser_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_dropEvent".}
proc fQTextBrowser_virtualbase_focusInEvent(self: pointer, e: pointer): void{.importc: "QTextBrowser_virtualbase_focusInEvent".}
proc fcQTextBrowser_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_focusInEvent".}
proc fQTextBrowser_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QTextBrowser_virtualbase_showEvent".}
proc fcQTextBrowser_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_showEvent".}
proc fQTextBrowser_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QTextBrowser_virtualbase_changeEvent".}
proc fcQTextBrowser_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_changeEvent".}
proc fQTextBrowser_virtualbase_wheelEvent(self: pointer, e: pointer): void{.importc: "QTextBrowser_virtualbase_wheelEvent".}
proc fcQTextBrowser_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_wheelEvent".}
proc fQTextBrowser_virtualbase_createMimeDataFromSelection(self: pointer, ): pointer{.importc: "QTextBrowser_virtualbase_createMimeDataFromSelection".}
proc fcQTextBrowser_override_virtual_createMimeDataFromSelection(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_createMimeDataFromSelection".}
proc fQTextBrowser_virtualbase_canInsertFromMimeData(self: pointer, source: pointer): bool{.importc: "QTextBrowser_virtualbase_canInsertFromMimeData".}
proc fcQTextBrowser_override_virtual_canInsertFromMimeData(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_canInsertFromMimeData".}
proc fQTextBrowser_virtualbase_insertFromMimeData(self: pointer, source: pointer): void{.importc: "QTextBrowser_virtualbase_insertFromMimeData".}
proc fcQTextBrowser_override_virtual_insertFromMimeData(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_insertFromMimeData".}
proc fQTextBrowser_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QTextBrowser_virtualbase_inputMethodEvent".}
proc fcQTextBrowser_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_inputMethodEvent".}
proc fQTextBrowser_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QTextBrowser_virtualbase_scrollContentsBy".}
proc fcQTextBrowser_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_scrollContentsBy".}
proc fQTextBrowser_virtualbase_doSetTextCursor(self: pointer, cursor: pointer): void{.importc: "QTextBrowser_virtualbase_doSetTextCursor".}
proc fcQTextBrowser_override_virtual_doSetTextCursor(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_doSetTextCursor".}
proc fQTextBrowser_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QTextBrowser_virtualbase_minimumSizeHint".}
proc fcQTextBrowser_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_minimumSizeHint".}
proc fQTextBrowser_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QTextBrowser_virtualbase_sizeHint".}
proc fcQTextBrowser_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_sizeHint".}
proc fQTextBrowser_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QTextBrowser_virtualbase_setupViewport".}
proc fcQTextBrowser_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_setupViewport".}
proc fQTextBrowser_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QTextBrowser_virtualbase_eventFilter".}
proc fcQTextBrowser_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_eventFilter".}
proc fQTextBrowser_virtualbase_viewportEvent(self: pointer, param1: pointer): bool{.importc: "QTextBrowser_virtualbase_viewportEvent".}
proc fcQTextBrowser_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_viewportEvent".}
proc fQTextBrowser_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QTextBrowser_virtualbase_viewportSizeHint".}
proc fcQTextBrowser_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_viewportSizeHint".}
proc fQTextBrowser_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QTextBrowser_virtualbase_initStyleOption".}
proc fcQTextBrowser_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_initStyleOption".}
proc fQTextBrowser_virtualbase_devType(self: pointer, ): cint{.importc: "QTextBrowser_virtualbase_devType".}
proc fcQTextBrowser_override_virtual_devType(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_devType".}
proc fQTextBrowser_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QTextBrowser_virtualbase_setVisible".}
proc fcQTextBrowser_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_setVisible".}
proc fQTextBrowser_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QTextBrowser_virtualbase_heightForWidth".}
proc fcQTextBrowser_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_heightForWidth".}
proc fQTextBrowser_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QTextBrowser_virtualbase_hasHeightForWidth".}
proc fcQTextBrowser_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_hasHeightForWidth".}
proc fQTextBrowser_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QTextBrowser_virtualbase_paintEngine".}
proc fcQTextBrowser_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_paintEngine".}
proc fQTextBrowser_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QTextBrowser_virtualbase_enterEvent".}
proc fcQTextBrowser_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_enterEvent".}
proc fQTextBrowser_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QTextBrowser_virtualbase_leaveEvent".}
proc fcQTextBrowser_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_leaveEvent".}
proc fQTextBrowser_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QTextBrowser_virtualbase_moveEvent".}
proc fcQTextBrowser_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_moveEvent".}
proc fQTextBrowser_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QTextBrowser_virtualbase_closeEvent".}
proc fcQTextBrowser_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_closeEvent".}
proc fQTextBrowser_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QTextBrowser_virtualbase_tabletEvent".}
proc fcQTextBrowser_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_tabletEvent".}
proc fQTextBrowser_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QTextBrowser_virtualbase_actionEvent".}
proc fcQTextBrowser_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_actionEvent".}
proc fQTextBrowser_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QTextBrowser_virtualbase_hideEvent".}
proc fcQTextBrowser_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_hideEvent".}
proc fQTextBrowser_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QTextBrowser_virtualbase_nativeEvent".}
proc fcQTextBrowser_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_nativeEvent".}
proc fQTextBrowser_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QTextBrowser_virtualbase_metric".}
proc fcQTextBrowser_override_virtual_metric(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_metric".}
proc fQTextBrowser_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QTextBrowser_virtualbase_initPainter".}
proc fcQTextBrowser_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_initPainter".}
proc fQTextBrowser_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QTextBrowser_virtualbase_redirected".}
proc fcQTextBrowser_override_virtual_redirected(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_redirected".}
proc fQTextBrowser_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QTextBrowser_virtualbase_sharedPainter".}
proc fcQTextBrowser_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_sharedPainter".}
proc fQTextBrowser_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTextBrowser_virtualbase_childEvent".}
proc fcQTextBrowser_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_childEvent".}
proc fQTextBrowser_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTextBrowser_virtualbase_customEvent".}
proc fcQTextBrowser_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_customEvent".}
proc fQTextBrowser_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTextBrowser_virtualbase_connectNotify".}
proc fcQTextBrowser_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_connectNotify".}
proc fQTextBrowser_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTextBrowser_virtualbase_disconnectNotify".}
proc fcQTextBrowser_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTextBrowser_override_virtual_disconnectNotify".}
proc fcQTextBrowser_delete(self: pointer) {.importc: "QTextBrowser_delete".}


func init*(T: type QTextBrowser, h: ptr cQTextBrowser): QTextBrowser =
  T(h: h)
proc create*(T: type QTextBrowser, parent: gen_qwidget.QWidget): QTextBrowser =

  QTextBrowser.init(fcQTextBrowser_new(parent.h))
proc create*(T: type QTextBrowser, ): QTextBrowser =

  QTextBrowser.init(fcQTextBrowser_new2())
proc metaObject*(self: QTextBrowser, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQTextBrowser_metaObject(self.h))

proc metacast*(self: QTextBrowser, param1: cstring): pointer =

  fcQTextBrowser_metacast(self.h, param1)

proc metacall*(self: QTextBrowser, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQTextBrowser_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QTextBrowser, s: cstring): string =

  let v_ms = fcQTextBrowser_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc source*(self: QTextBrowser, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQTextBrowser_source(self.h))

proc sourceType*(self: QTextBrowser, ): gen_qtextdocument.QTextDocumentResourceType =

  gen_qtextdocument.QTextDocumentResourceType(fcQTextBrowser_sourceType(self.h))

proc searchPaths*(self: QTextBrowser, ): seq[string] =

  var v_ma = fcQTextBrowser_searchPaths(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setSearchPaths*(self: QTextBrowser, paths: seq[string]): void =

  var paths_CArray = newSeq[struct_miqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_miqt_string(data: paths[i], len: csize_t(len(paths[i])))

  fcQTextBrowser_setSearchPaths(self.h, struct_miqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0])))

proc loadResource*(self: QTextBrowser, typeVal: cint, name: gen_qurl.QUrl): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQTextBrowser_loadResource(self.h, typeVal, name.h))

proc isBackwardAvailable*(self: QTextBrowser, ): bool =

  fcQTextBrowser_isBackwardAvailable(self.h)

proc isForwardAvailable*(self: QTextBrowser, ): bool =

  fcQTextBrowser_isForwardAvailable(self.h)

proc clearHistory*(self: QTextBrowser, ): void =

  fcQTextBrowser_clearHistory(self.h)

proc historyTitle*(self: QTextBrowser, param1: cint): string =

  let v_ms = fcQTextBrowser_historyTitle(self.h, param1)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc historyUrl*(self: QTextBrowser, param1: cint): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQTextBrowser_historyUrl(self.h, param1))

proc backwardHistoryCount*(self: QTextBrowser, ): cint =

  fcQTextBrowser_backwardHistoryCount(self.h)

proc forwardHistoryCount*(self: QTextBrowser, ): cint =

  fcQTextBrowser_forwardHistoryCount(self.h)

proc openExternalLinks*(self: QTextBrowser, ): bool =

  fcQTextBrowser_openExternalLinks(self.h)

proc setOpenExternalLinks*(self: QTextBrowser, open: bool): void =

  fcQTextBrowser_setOpenExternalLinks(self.h, open)

proc openLinks*(self: QTextBrowser, ): bool =

  fcQTextBrowser_openLinks(self.h)

proc setOpenLinks*(self: QTextBrowser, open: bool): void =

  fcQTextBrowser_setOpenLinks(self.h, open)

proc setSource*(self: QTextBrowser, name: gen_qurl.QUrl): void =

  fcQTextBrowser_setSource(self.h, name.h)

proc backward*(self: QTextBrowser, ): void =

  fcQTextBrowser_backward(self.h)

proc forward*(self: QTextBrowser, ): void =

  fcQTextBrowser_forward(self.h)

proc home*(self: QTextBrowser, ): void =

  fcQTextBrowser_home(self.h)

proc reload*(self: QTextBrowser, ): void =

  fcQTextBrowser_reload(self.h)

proc backwardAvailable*(self: QTextBrowser, param1: bool): void =

  fcQTextBrowser_backwardAvailable(self.h, param1)

proc miqt_exec_callback_QTextBrowser_backwardAvailable(slot: int, param1: bool) {.exportc.} =
  type Cb = proc(param1: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onbackwardAvailable*(self: QTextBrowser, slot: proc(param1: bool)) =
  type Cb = proc(param1: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTextBrowser_connect_backwardAvailable(self.h, cast[int](addr tmp[]))
proc forwardAvailable*(self: QTextBrowser, param1: bool): void =

  fcQTextBrowser_forwardAvailable(self.h, param1)

proc miqt_exec_callback_QTextBrowser_forwardAvailable(slot: int, param1: bool) {.exportc.} =
  type Cb = proc(param1: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onforwardAvailable*(self: QTextBrowser, slot: proc(param1: bool)) =
  type Cb = proc(param1: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTextBrowser_connect_forwardAvailable(self.h, cast[int](addr tmp[]))
proc historyChanged*(self: QTextBrowser, ): void =

  fcQTextBrowser_historyChanged(self.h)

proc miqt_exec_callback_QTextBrowser_historyChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onhistoryChanged*(self: QTextBrowser, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTextBrowser_connect_historyChanged(self.h, cast[int](addr tmp[]))
proc sourceChanged*(self: QTextBrowser, param1: gen_qurl.QUrl): void =

  fcQTextBrowser_sourceChanged(self.h, param1.h)

proc miqt_exec_callback_QTextBrowser_sourceChanged(slot: int, param1: pointer) {.exportc.} =
  type Cb = proc(param1: gen_qurl.QUrl)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: param1)


  nimfunc[](slotval1)

proc onsourceChanged*(self: QTextBrowser, slot: proc(param1: gen_qurl.QUrl)) =
  type Cb = proc(param1: gen_qurl.QUrl)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTextBrowser_connect_sourceChanged(self.h, cast[int](addr tmp[]))
proc highlighted*(self: QTextBrowser, param1: gen_qurl.QUrl): void =

  fcQTextBrowser_highlighted(self.h, param1.h)

proc miqt_exec_callback_QTextBrowser_highlighted(slot: int, param1: pointer) {.exportc.} =
  type Cb = proc(param1: gen_qurl.QUrl)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: param1)


  nimfunc[](slotval1)

proc onhighlighted*(self: QTextBrowser, slot: proc(param1: gen_qurl.QUrl)) =
  type Cb = proc(param1: gen_qurl.QUrl)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTextBrowser_connect_highlighted(self.h, cast[int](addr tmp[]))
proc anchorClicked*(self: QTextBrowser, param1: gen_qurl.QUrl): void =

  fcQTextBrowser_anchorClicked(self.h, param1.h)

proc miqt_exec_callback_QTextBrowser_anchorClicked(slot: int, param1: pointer) {.exportc.} =
  type Cb = proc(param1: gen_qurl.QUrl)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: param1)


  nimfunc[](slotval1)

proc onanchorClicked*(self: QTextBrowser, slot: proc(param1: gen_qurl.QUrl)) =
  type Cb = proc(param1: gen_qurl.QUrl)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTextBrowser_connect_anchorClicked(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QTextBrowser, s: cstring, c: cstring): string =

  let v_ms = fcQTextBrowser_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QTextBrowser, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTextBrowser_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSource2*(self: QTextBrowser, name: gen_qurl.QUrl, typeVal: gen_qtextdocument.QTextDocumentResourceType): void =

  fcQTextBrowser_setSource2(self.h, name.h, cint(typeVal))

proc callVirtualBase_metacall(self: QTextBrowser, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQTextBrowser_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTextBrowsermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QTextBrowser, slot: proc(super: QTextBrowsermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowsermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_metacall(self: ptr cQTextBrowser, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTextBrowser_metacall ".} =
  type Cb = proc(super: QTextBrowsermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QTextBrowser(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_loadResource(self: QTextBrowser, typeVal: cint, name: gen_qurl.QUrl): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQTextBrowser_virtualbase_loadResource(self.h, typeVal, name.h))

type QTextBrowserloadResourceBase* = proc(typeVal: cint, name: gen_qurl.QUrl): gen_qvariant.QVariant
proc onloadResource*(self: QTextBrowser, slot: proc(super: QTextBrowserloadResourceBase, typeVal: cint, name: gen_qurl.QUrl): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserloadResourceBase, typeVal: cint, name: gen_qurl.QUrl): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_loadResource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_loadResource(self: ptr cQTextBrowser, slot: int, typeVal: cint, name: pointer): pointer {.exportc: "miqt_exec_callback_QTextBrowser_loadResource ".} =
  type Cb = proc(super: QTextBrowserloadResourceBase, typeVal: cint, name: gen_qurl.QUrl): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(typeVal: cint, name: gen_qurl.QUrl): auto =
    callVirtualBase_loadResource(QTextBrowser(h: self), typeVal, name)
  let slotval1 = typeVal

  let slotval2 = gen_qurl.QUrl(h: name)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_backward(self: QTextBrowser, ): void =


  fQTextBrowser_virtualbase_backward(self.h)

type QTextBrowserbackwardBase* = proc(): void
proc onbackward*(self: QTextBrowser, slot: proc(super: QTextBrowserbackwardBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserbackwardBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_backward(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_backward(self: ptr cQTextBrowser, slot: int): void {.exportc: "miqt_exec_callback_QTextBrowser_backward ".} =
  type Cb = proc(super: QTextBrowserbackwardBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_backward(QTextBrowser(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_forward(self: QTextBrowser, ): void =


  fQTextBrowser_virtualbase_forward(self.h)

type QTextBrowserforwardBase* = proc(): void
proc onforward*(self: QTextBrowser, slot: proc(super: QTextBrowserforwardBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserforwardBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_forward(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_forward(self: ptr cQTextBrowser, slot: int): void {.exportc: "miqt_exec_callback_QTextBrowser_forward ".} =
  type Cb = proc(super: QTextBrowserforwardBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_forward(QTextBrowser(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_home(self: QTextBrowser, ): void =


  fQTextBrowser_virtualbase_home(self.h)

type QTextBrowserhomeBase* = proc(): void
proc onhome*(self: QTextBrowser, slot: proc(super: QTextBrowserhomeBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserhomeBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_home(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_home(self: ptr cQTextBrowser, slot: int): void {.exportc: "miqt_exec_callback_QTextBrowser_home ".} =
  type Cb = proc(super: QTextBrowserhomeBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_home(QTextBrowser(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_reload(self: QTextBrowser, ): void =


  fQTextBrowser_virtualbase_reload(self.h)

type QTextBrowserreloadBase* = proc(): void
proc onreload*(self: QTextBrowser, slot: proc(super: QTextBrowserreloadBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserreloadBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_reload(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_reload(self: ptr cQTextBrowser, slot: int): void {.exportc: "miqt_exec_callback_QTextBrowser_reload ".} =
  type Cb = proc(super: QTextBrowserreloadBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reload(QTextBrowser(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_event(self: QTextBrowser, e: gen_qcoreevent.QEvent): bool =


  fQTextBrowser_virtualbase_event(self.h, e.h)

type QTextBrowsereventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QTextBrowser, slot: proc(super: QTextBrowsereventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowsereventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_event(self: ptr cQTextBrowser, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QTextBrowser_event ".} =
  type Cb = proc(super: QTextBrowsereventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QTextBrowser(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_keyPressEvent(self: QTextBrowser, ev: gen_qevent.QKeyEvent): void =


  fQTextBrowser_virtualbase_keyPressEvent(self.h, ev.h)

type QTextBrowserkeyPressEventBase* = proc(ev: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QTextBrowser, slot: proc(super: QTextBrowserkeyPressEventBase, ev: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserkeyPressEventBase, ev: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_keyPressEvent(self: ptr cQTextBrowser, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_keyPressEvent ".} =
  type Cb = proc(super: QTextBrowserkeyPressEventBase, ev: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(ev: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QTextBrowser(h: self), ev)
  let slotval1 = gen_qevent.QKeyEvent(h: ev)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QTextBrowser, ev: gen_qevent.QMouseEvent): void =


  fQTextBrowser_virtualbase_mouseMoveEvent(self.h, ev.h)

type QTextBrowsermouseMoveEventBase* = proc(ev: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QTextBrowser, slot: proc(super: QTextBrowsermouseMoveEventBase, ev: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowsermouseMoveEventBase, ev: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_mouseMoveEvent(self: ptr cQTextBrowser, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_mouseMoveEvent ".} =
  type Cb = proc(super: QTextBrowsermouseMoveEventBase, ev: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(ev: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QTextBrowser(h: self), ev)
  let slotval1 = gen_qevent.QMouseEvent(h: ev)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QTextBrowser, ev: gen_qevent.QMouseEvent): void =


  fQTextBrowser_virtualbase_mousePressEvent(self.h, ev.h)

type QTextBrowsermousePressEventBase* = proc(ev: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QTextBrowser, slot: proc(super: QTextBrowsermousePressEventBase, ev: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowsermousePressEventBase, ev: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_mousePressEvent(self: ptr cQTextBrowser, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_mousePressEvent ".} =
  type Cb = proc(super: QTextBrowsermousePressEventBase, ev: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(ev: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QTextBrowser(h: self), ev)
  let slotval1 = gen_qevent.QMouseEvent(h: ev)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QTextBrowser, ev: gen_qevent.QMouseEvent): void =


  fQTextBrowser_virtualbase_mouseReleaseEvent(self.h, ev.h)

type QTextBrowsermouseReleaseEventBase* = proc(ev: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QTextBrowser, slot: proc(super: QTextBrowsermouseReleaseEventBase, ev: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowsermouseReleaseEventBase, ev: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_mouseReleaseEvent(self: ptr cQTextBrowser, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_mouseReleaseEvent ".} =
  type Cb = proc(super: QTextBrowsermouseReleaseEventBase, ev: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(ev: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QTextBrowser(h: self), ev)
  let slotval1 = gen_qevent.QMouseEvent(h: ev)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QTextBrowser, ev: gen_qevent.QFocusEvent): void =


  fQTextBrowser_virtualbase_focusOutEvent(self.h, ev.h)

type QTextBrowserfocusOutEventBase* = proc(ev: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QTextBrowser, slot: proc(super: QTextBrowserfocusOutEventBase, ev: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserfocusOutEventBase, ev: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_focusOutEvent(self: ptr cQTextBrowser, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_focusOutEvent ".} =
  type Cb = proc(super: QTextBrowserfocusOutEventBase, ev: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(ev: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QTextBrowser(h: self), ev)
  let slotval1 = gen_qevent.QFocusEvent(h: ev)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusNextPrevChild(self: QTextBrowser, next: bool): bool =


  fQTextBrowser_virtualbase_focusNextPrevChild(self.h, next)

type QTextBrowserfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QTextBrowser, slot: proc(super: QTextBrowserfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_focusNextPrevChild(self: ptr cQTextBrowser, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QTextBrowser_focusNextPrevChild ".} =
  type Cb = proc(super: QTextBrowserfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QTextBrowser(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_paintEvent(self: QTextBrowser, e: gen_qevent.QPaintEvent): void =


  fQTextBrowser_virtualbase_paintEvent(self.h, e.h)

type QTextBrowserpaintEventBase* = proc(e: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QTextBrowser, slot: proc(super: QTextBrowserpaintEventBase, e: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserpaintEventBase, e: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_paintEvent(self: ptr cQTextBrowser, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_paintEvent ".} =
  type Cb = proc(super: QTextBrowserpaintEventBase, e: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QTextBrowser(h: self), e)
  let slotval1 = gen_qevent.QPaintEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_doSetSource(self: QTextBrowser, name: gen_qurl.QUrl, typeVal: gen_qtextdocument.QTextDocumentResourceType): void =


  fQTextBrowser_virtualbase_doSetSource(self.h, name.h, cint(typeVal))

type QTextBrowserdoSetSourceBase* = proc(name: gen_qurl.QUrl, typeVal: gen_qtextdocument.QTextDocumentResourceType): void
proc ondoSetSource*(self: QTextBrowser, slot: proc(super: QTextBrowserdoSetSourceBase, name: gen_qurl.QUrl, typeVal: gen_qtextdocument.QTextDocumentResourceType): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserdoSetSourceBase, name: gen_qurl.QUrl, typeVal: gen_qtextdocument.QTextDocumentResourceType): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_doSetSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_doSetSource(self: ptr cQTextBrowser, slot: int, name: pointer, typeVal: cint): void {.exportc: "miqt_exec_callback_QTextBrowser_doSetSource ".} =
  type Cb = proc(super: QTextBrowserdoSetSourceBase, name: gen_qurl.QUrl, typeVal: gen_qtextdocument.QTextDocumentResourceType): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(name: gen_qurl.QUrl, typeVal: gen_qtextdocument.QTextDocumentResourceType): auto =
    callVirtualBase_doSetSource(QTextBrowser(h: self), name, typeVal)
  let slotval1 = gen_qurl.QUrl(h: name)

  let slotval2 = gen_qtextdocument.QTextDocumentResourceType(typeVal)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_inputMethodQuery(self: QTextBrowser, property: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQTextBrowser_virtualbase_inputMethodQuery(self.h, cint(property)))

type QTextBrowserinputMethodQueryBase* = proc(property: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QTextBrowser, slot: proc(super: QTextBrowserinputMethodQueryBase, property: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserinputMethodQueryBase, property: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_inputMethodQuery(self: ptr cQTextBrowser, slot: int, property: cint): pointer {.exportc: "miqt_exec_callback_QTextBrowser_inputMethodQuery ".} =
  type Cb = proc(super: QTextBrowserinputMethodQueryBase, property: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(property: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QTextBrowser(h: self), property)
  let slotval1 = gen_qnamespace.InputMethodQuery(property)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_timerEvent(self: QTextBrowser, e: gen_qcoreevent.QTimerEvent): void =


  fQTextBrowser_virtualbase_timerEvent(self.h, e.h)

type QTextBrowsertimerEventBase* = proc(e: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QTextBrowser, slot: proc(super: QTextBrowsertimerEventBase, e: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowsertimerEventBase, e: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_timerEvent(self: ptr cQTextBrowser, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_timerEvent ".} =
  type Cb = proc(super: QTextBrowsertimerEventBase, e: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QTextBrowser(h: self), e)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QTextBrowser, e: gen_qevent.QKeyEvent): void =


  fQTextBrowser_virtualbase_keyReleaseEvent(self.h, e.h)

type QTextBrowserkeyReleaseEventBase* = proc(e: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QTextBrowser, slot: proc(super: QTextBrowserkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_keyReleaseEvent(self: ptr cQTextBrowser, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_keyReleaseEvent ".} =
  type Cb = proc(super: QTextBrowserkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QTextBrowser(h: self), e)
  let slotval1 = gen_qevent.QKeyEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QTextBrowser, e: gen_qevent.QResizeEvent): void =


  fQTextBrowser_virtualbase_resizeEvent(self.h, e.h)

type QTextBrowserresizeEventBase* = proc(e: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QTextBrowser, slot: proc(super: QTextBrowserresizeEventBase, e: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserresizeEventBase, e: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_resizeEvent(self: ptr cQTextBrowser, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_resizeEvent ".} =
  type Cb = proc(super: QTextBrowserresizeEventBase, e: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QTextBrowser(h: self), e)
  let slotval1 = gen_qevent.QResizeEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QTextBrowser, e: gen_qevent.QMouseEvent): void =


  fQTextBrowser_virtualbase_mouseDoubleClickEvent(self.h, e.h)

type QTextBrowsermouseDoubleClickEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QTextBrowser, slot: proc(super: QTextBrowsermouseDoubleClickEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowsermouseDoubleClickEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_mouseDoubleClickEvent(self: ptr cQTextBrowser, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QTextBrowsermouseDoubleClickEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QTextBrowser(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QTextBrowser, e: gen_qevent.QContextMenuEvent): void =


  fQTextBrowser_virtualbase_contextMenuEvent(self.h, e.h)

type QTextBrowsercontextMenuEventBase* = proc(e: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QTextBrowser, slot: proc(super: QTextBrowsercontextMenuEventBase, e: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowsercontextMenuEventBase, e: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_contextMenuEvent(self: ptr cQTextBrowser, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_contextMenuEvent ".} =
  type Cb = proc(super: QTextBrowsercontextMenuEventBase, e: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QTextBrowser(h: self), e)
  let slotval1 = gen_qevent.QContextMenuEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QTextBrowser, e: gen_qevent.QDragEnterEvent): void =


  fQTextBrowser_virtualbase_dragEnterEvent(self.h, e.h)

type QTextBrowserdragEnterEventBase* = proc(e: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QTextBrowser, slot: proc(super: QTextBrowserdragEnterEventBase, e: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserdragEnterEventBase, e: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_dragEnterEvent(self: ptr cQTextBrowser, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_dragEnterEvent ".} =
  type Cb = proc(super: QTextBrowserdragEnterEventBase, e: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QTextBrowser(h: self), e)
  let slotval1 = gen_qevent.QDragEnterEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QTextBrowser, e: gen_qevent.QDragLeaveEvent): void =


  fQTextBrowser_virtualbase_dragLeaveEvent(self.h, e.h)

type QTextBrowserdragLeaveEventBase* = proc(e: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QTextBrowser, slot: proc(super: QTextBrowserdragLeaveEventBase, e: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserdragLeaveEventBase, e: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_dragLeaveEvent(self: ptr cQTextBrowser, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_dragLeaveEvent ".} =
  type Cb = proc(super: QTextBrowserdragLeaveEventBase, e: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QTextBrowser(h: self), e)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QTextBrowser, e: gen_qevent.QDragMoveEvent): void =


  fQTextBrowser_virtualbase_dragMoveEvent(self.h, e.h)

type QTextBrowserdragMoveEventBase* = proc(e: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QTextBrowser, slot: proc(super: QTextBrowserdragMoveEventBase, e: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserdragMoveEventBase, e: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_dragMoveEvent(self: ptr cQTextBrowser, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_dragMoveEvent ".} =
  type Cb = proc(super: QTextBrowserdragMoveEventBase, e: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QTextBrowser(h: self), e)
  let slotval1 = gen_qevent.QDragMoveEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QTextBrowser, e: gen_qevent.QDropEvent): void =


  fQTextBrowser_virtualbase_dropEvent(self.h, e.h)

type QTextBrowserdropEventBase* = proc(e: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QTextBrowser, slot: proc(super: QTextBrowserdropEventBase, e: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserdropEventBase, e: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_dropEvent(self: ptr cQTextBrowser, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_dropEvent ".} =
  type Cb = proc(super: QTextBrowserdropEventBase, e: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QTextBrowser(h: self), e)
  let slotval1 = gen_qevent.QDropEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QTextBrowser, e: gen_qevent.QFocusEvent): void =


  fQTextBrowser_virtualbase_focusInEvent(self.h, e.h)

type QTextBrowserfocusInEventBase* = proc(e: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QTextBrowser, slot: proc(super: QTextBrowserfocusInEventBase, e: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserfocusInEventBase, e: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_focusInEvent(self: ptr cQTextBrowser, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_focusInEvent ".} =
  type Cb = proc(super: QTextBrowserfocusInEventBase, e: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QTextBrowser(h: self), e)
  let slotval1 = gen_qevent.QFocusEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QTextBrowser, param1: gen_qevent.QShowEvent): void =


  fQTextBrowser_virtualbase_showEvent(self.h, param1.h)

type QTextBrowsershowEventBase* = proc(param1: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QTextBrowser, slot: proc(super: QTextBrowsershowEventBase, param1: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowsershowEventBase, param1: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_showEvent(self: ptr cQTextBrowser, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_showEvent ".} =
  type Cb = proc(super: QTextBrowsershowEventBase, param1: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QTextBrowser(h: self), param1)
  let slotval1 = gen_qevent.QShowEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QTextBrowser, e: gen_qcoreevent.QEvent): void =


  fQTextBrowser_virtualbase_changeEvent(self.h, e.h)

type QTextBrowserchangeEventBase* = proc(e: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QTextBrowser, slot: proc(super: QTextBrowserchangeEventBase, e: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserchangeEventBase, e: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_changeEvent(self: ptr cQTextBrowser, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_changeEvent ".} =
  type Cb = proc(super: QTextBrowserchangeEventBase, e: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QTextBrowser(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QTextBrowser, e: gen_qevent.QWheelEvent): void =


  fQTextBrowser_virtualbase_wheelEvent(self.h, e.h)

type QTextBrowserwheelEventBase* = proc(e: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QTextBrowser, slot: proc(super: QTextBrowserwheelEventBase, e: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserwheelEventBase, e: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_wheelEvent(self: ptr cQTextBrowser, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_wheelEvent ".} =
  type Cb = proc(super: QTextBrowserwheelEventBase, e: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QTextBrowser(h: self), e)
  let slotval1 = gen_qevent.QWheelEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_createMimeDataFromSelection(self: QTextBrowser, ): gen_qmimedata.QMimeData =


  gen_qmimedata.QMimeData(h: fQTextBrowser_virtualbase_createMimeDataFromSelection(self.h))

type QTextBrowsercreateMimeDataFromSelectionBase* = proc(): gen_qmimedata.QMimeData
proc oncreateMimeDataFromSelection*(self: QTextBrowser, slot: proc(super: QTextBrowsercreateMimeDataFromSelectionBase): gen_qmimedata.QMimeData) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowsercreateMimeDataFromSelectionBase): gen_qmimedata.QMimeData
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_createMimeDataFromSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_createMimeDataFromSelection(self: ptr cQTextBrowser, slot: int): pointer {.exportc: "miqt_exec_callback_QTextBrowser_createMimeDataFromSelection ".} =
  type Cb = proc(super: QTextBrowsercreateMimeDataFromSelectionBase): gen_qmimedata.QMimeData
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_createMimeDataFromSelection(QTextBrowser(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_canInsertFromMimeData(self: QTextBrowser, source: gen_qmimedata.QMimeData): bool =


  fQTextBrowser_virtualbase_canInsertFromMimeData(self.h, source.h)

type QTextBrowsercanInsertFromMimeDataBase* = proc(source: gen_qmimedata.QMimeData): bool
proc oncanInsertFromMimeData*(self: QTextBrowser, slot: proc(super: QTextBrowsercanInsertFromMimeDataBase, source: gen_qmimedata.QMimeData): bool) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowsercanInsertFromMimeDataBase, source: gen_qmimedata.QMimeData): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_canInsertFromMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_canInsertFromMimeData(self: ptr cQTextBrowser, slot: int, source: pointer): bool {.exportc: "miqt_exec_callback_QTextBrowser_canInsertFromMimeData ".} =
  type Cb = proc(super: QTextBrowsercanInsertFromMimeDataBase, source: gen_qmimedata.QMimeData): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(source: gen_qmimedata.QMimeData): auto =
    callVirtualBase_canInsertFromMimeData(QTextBrowser(h: self), source)
  let slotval1 = gen_qmimedata.QMimeData(h: source)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_insertFromMimeData(self: QTextBrowser, source: gen_qmimedata.QMimeData): void =


  fQTextBrowser_virtualbase_insertFromMimeData(self.h, source.h)

type QTextBrowserinsertFromMimeDataBase* = proc(source: gen_qmimedata.QMimeData): void
proc oninsertFromMimeData*(self: QTextBrowser, slot: proc(super: QTextBrowserinsertFromMimeDataBase, source: gen_qmimedata.QMimeData): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserinsertFromMimeDataBase, source: gen_qmimedata.QMimeData): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_insertFromMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_insertFromMimeData(self: ptr cQTextBrowser, slot: int, source: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_insertFromMimeData ".} =
  type Cb = proc(super: QTextBrowserinsertFromMimeDataBase, source: gen_qmimedata.QMimeData): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(source: gen_qmimedata.QMimeData): auto =
    callVirtualBase_insertFromMimeData(QTextBrowser(h: self), source)
  let slotval1 = gen_qmimedata.QMimeData(h: source)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QTextBrowser, param1: gen_qevent.QInputMethodEvent): void =


  fQTextBrowser_virtualbase_inputMethodEvent(self.h, param1.h)

type QTextBrowserinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QTextBrowser, slot: proc(super: QTextBrowserinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_inputMethodEvent(self: ptr cQTextBrowser, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_inputMethodEvent ".} =
  type Cb = proc(super: QTextBrowserinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QTextBrowser(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_scrollContentsBy(self: QTextBrowser, dx: cint, dy: cint): void =


  fQTextBrowser_virtualbase_scrollContentsBy(self.h, dx, dy)

type QTextBrowserscrollContentsByBase* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: QTextBrowser, slot: proc(super: QTextBrowserscrollContentsByBase, dx: cint, dy: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserscrollContentsByBase, dx: cint, dy: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_scrollContentsBy(self: ptr cQTextBrowser, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QTextBrowser_scrollContentsBy ".} =
  type Cb = proc(super: QTextBrowserscrollContentsByBase, dx: cint, dy: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(dx: cint, dy: cint): auto =
    callVirtualBase_scrollContentsBy(QTextBrowser(h: self), dx, dy)
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_doSetTextCursor(self: QTextBrowser, cursor: gen_qtextcursor.QTextCursor): void =


  fQTextBrowser_virtualbase_doSetTextCursor(self.h, cursor.h)

type QTextBrowserdoSetTextCursorBase* = proc(cursor: gen_qtextcursor.QTextCursor): void
proc ondoSetTextCursor*(self: QTextBrowser, slot: proc(super: QTextBrowserdoSetTextCursorBase, cursor: gen_qtextcursor.QTextCursor): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserdoSetTextCursorBase, cursor: gen_qtextcursor.QTextCursor): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_doSetTextCursor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_doSetTextCursor(self: ptr cQTextBrowser, slot: int, cursor: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_doSetTextCursor ".} =
  type Cb = proc(super: QTextBrowserdoSetTextCursorBase, cursor: gen_qtextcursor.QTextCursor): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(cursor: gen_qtextcursor.QTextCursor): auto =
    callVirtualBase_doSetTextCursor(QTextBrowser(h: self), cursor)
  let slotval1 = gen_qtextcursor.QTextCursor(h: cursor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_minimumSizeHint(self: QTextBrowser, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQTextBrowser_virtualbase_minimumSizeHint(self.h))

type QTextBrowserminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QTextBrowser, slot: proc(super: QTextBrowserminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_minimumSizeHint(self: ptr cQTextBrowser, slot: int): pointer {.exportc: "miqt_exec_callback_QTextBrowser_minimumSizeHint ".} =
  type Cb = proc(super: QTextBrowserminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QTextBrowser(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_sizeHint(self: QTextBrowser, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQTextBrowser_virtualbase_sizeHint(self.h))

type QTextBrowsersizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QTextBrowser, slot: proc(super: QTextBrowsersizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowsersizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_sizeHint(self: ptr cQTextBrowser, slot: int): pointer {.exportc: "miqt_exec_callback_QTextBrowser_sizeHint ".} =
  type Cb = proc(super: QTextBrowsersizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QTextBrowser(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setupViewport(self: QTextBrowser, viewport: gen_qwidget.QWidget): void =


  fQTextBrowser_virtualbase_setupViewport(self.h, viewport.h)

type QTextBrowsersetupViewportBase* = proc(viewport: gen_qwidget.QWidget): void
proc onsetupViewport*(self: QTextBrowser, slot: proc(super: QTextBrowsersetupViewportBase, viewport: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowsersetupViewportBase, viewport: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_setupViewport(self: ptr cQTextBrowser, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_setupViewport ".} =
  type Cb = proc(super: QTextBrowsersetupViewportBase, viewport: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(viewport: gen_qwidget.QWidget): auto =
    callVirtualBase_setupViewport(QTextBrowser(h: self), viewport)
  let slotval1 = gen_qwidget.QWidget(h: viewport)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QTextBrowser, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =


  fQTextBrowser_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QTextBrowsereventFilterBase* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QTextBrowser, slot: proc(super: QTextBrowsereventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowsereventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_eventFilter(self: ptr cQTextBrowser, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QTextBrowser_eventFilter ".} =
  type Cb = proc(super: QTextBrowsereventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QTextBrowser(h: self), param1, param2)
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_viewportEvent(self: QTextBrowser, param1: gen_qcoreevent.QEvent): bool =


  fQTextBrowser_virtualbase_viewportEvent(self.h, param1.h)

type QTextBrowserviewportEventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onviewportEvent*(self: QTextBrowser, slot: proc(super: QTextBrowserviewportEventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserviewportEventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_viewportEvent(self: ptr cQTextBrowser, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QTextBrowser_viewportEvent ".} =
  type Cb = proc(super: QTextBrowserviewportEventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_viewportEvent(QTextBrowser(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_viewportSizeHint(self: QTextBrowser, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQTextBrowser_virtualbase_viewportSizeHint(self.h))

type QTextBrowserviewportSizeHintBase* = proc(): gen_qsize.QSize
proc onviewportSizeHint*(self: QTextBrowser, slot: proc(super: QTextBrowserviewportSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserviewportSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_viewportSizeHint(self: ptr cQTextBrowser, slot: int): pointer {.exportc: "miqt_exec_callback_QTextBrowser_viewportSizeHint ".} =
  type Cb = proc(super: QTextBrowserviewportSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_viewportSizeHint(QTextBrowser(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_initStyleOption(self: QTextBrowser, option: gen_qstyleoption.QStyleOptionFrame): void =


  fQTextBrowser_virtualbase_initStyleOption(self.h, option.h)

type QTextBrowserinitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOptionFrame): void
proc oninitStyleOption*(self: QTextBrowser, slot: proc(super: QTextBrowserinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_initStyleOption(self: ptr cQTextBrowser, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_initStyleOption ".} =
  type Cb = proc(super: QTextBrowserinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionFrame): auto =
    callVirtualBase_initStyleOption(QTextBrowser(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOptionFrame(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QTextBrowser, ): cint =


  fQTextBrowser_virtualbase_devType(self.h)

type QTextBrowserdevTypeBase* = proc(): cint
proc ondevType*(self: QTextBrowser, slot: proc(super: QTextBrowserdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_devType(self: ptr cQTextBrowser, slot: int): cint {.exportc: "miqt_exec_callback_QTextBrowser_devType ".} =
  type Cb = proc(super: QTextBrowserdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QTextBrowser(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QTextBrowser, visible: bool): void =


  fQTextBrowser_virtualbase_setVisible(self.h, visible)

type QTextBrowsersetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QTextBrowser, slot: proc(super: QTextBrowsersetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowsersetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_setVisible(self: ptr cQTextBrowser, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QTextBrowser_setVisible ".} =
  type Cb = proc(super: QTextBrowsersetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QTextBrowser(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QTextBrowser, param1: cint): cint =


  fQTextBrowser_virtualbase_heightForWidth(self.h, param1)

type QTextBrowserheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QTextBrowser, slot: proc(super: QTextBrowserheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_heightForWidth(self: ptr cQTextBrowser, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTextBrowser_heightForWidth ".} =
  type Cb = proc(super: QTextBrowserheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QTextBrowser(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QTextBrowser, ): bool =


  fQTextBrowser_virtualbase_hasHeightForWidth(self.h)

type QTextBrowserhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QTextBrowser, slot: proc(super: QTextBrowserhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_hasHeightForWidth(self: ptr cQTextBrowser, slot: int): bool {.exportc: "miqt_exec_callback_QTextBrowser_hasHeightForWidth ".} =
  type Cb = proc(super: QTextBrowserhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QTextBrowser(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QTextBrowser, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQTextBrowser_virtualbase_paintEngine(self.h))

type QTextBrowserpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QTextBrowser, slot: proc(super: QTextBrowserpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_paintEngine(self: ptr cQTextBrowser, slot: int): pointer {.exportc: "miqt_exec_callback_QTextBrowser_paintEngine ".} =
  type Cb = proc(super: QTextBrowserpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QTextBrowser(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_enterEvent(self: QTextBrowser, event: gen_qevent.QEnterEvent): void =


  fQTextBrowser_virtualbase_enterEvent(self.h, event.h)

type QTextBrowserenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QTextBrowser, slot: proc(super: QTextBrowserenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_enterEvent(self: ptr cQTextBrowser, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_enterEvent ".} =
  type Cb = proc(super: QTextBrowserenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QTextBrowser(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QTextBrowser, event: gen_qcoreevent.QEvent): void =


  fQTextBrowser_virtualbase_leaveEvent(self.h, event.h)

type QTextBrowserleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QTextBrowser, slot: proc(super: QTextBrowserleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_leaveEvent(self: ptr cQTextBrowser, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_leaveEvent ".} =
  type Cb = proc(super: QTextBrowserleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QTextBrowser(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QTextBrowser, event: gen_qevent.QMoveEvent): void =


  fQTextBrowser_virtualbase_moveEvent(self.h, event.h)

type QTextBrowsermoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QTextBrowser, slot: proc(super: QTextBrowsermoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowsermoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_moveEvent(self: ptr cQTextBrowser, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_moveEvent ".} =
  type Cb = proc(super: QTextBrowsermoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QTextBrowser(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QTextBrowser, event: gen_qevent.QCloseEvent): void =


  fQTextBrowser_virtualbase_closeEvent(self.h, event.h)

type QTextBrowsercloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QTextBrowser, slot: proc(super: QTextBrowsercloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowsercloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_closeEvent(self: ptr cQTextBrowser, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_closeEvent ".} =
  type Cb = proc(super: QTextBrowsercloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QTextBrowser(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QTextBrowser, event: gen_qevent.QTabletEvent): void =


  fQTextBrowser_virtualbase_tabletEvent(self.h, event.h)

type QTextBrowsertabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QTextBrowser, slot: proc(super: QTextBrowsertabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowsertabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_tabletEvent(self: ptr cQTextBrowser, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_tabletEvent ".} =
  type Cb = proc(super: QTextBrowsertabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QTextBrowser(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QTextBrowser, event: gen_qevent.QActionEvent): void =


  fQTextBrowser_virtualbase_actionEvent(self.h, event.h)

type QTextBrowseractionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QTextBrowser, slot: proc(super: QTextBrowseractionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowseractionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_actionEvent(self: ptr cQTextBrowser, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_actionEvent ".} =
  type Cb = proc(super: QTextBrowseractionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QTextBrowser(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QTextBrowser, event: gen_qevent.QHideEvent): void =


  fQTextBrowser_virtualbase_hideEvent(self.h, event.h)

type QTextBrowserhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QTextBrowser, slot: proc(super: QTextBrowserhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_hideEvent(self: ptr cQTextBrowser, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_hideEvent ".} =
  type Cb = proc(super: QTextBrowserhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QTextBrowser(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QTextBrowser, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQTextBrowser_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QTextBrowsernativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QTextBrowser, slot: proc(super: QTextBrowsernativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowsernativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_nativeEvent(self: ptr cQTextBrowser, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QTextBrowser_nativeEvent ".} =
  type Cb = proc(super: QTextBrowsernativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QTextBrowser(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QTextBrowser, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQTextBrowser_virtualbase_metric(self.h, cint(param1))

type QTextBrowsermetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QTextBrowser, slot: proc(super: QTextBrowsermetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowsermetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_metric(self: ptr cQTextBrowser, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTextBrowser_metric ".} =
  type Cb = proc(super: QTextBrowsermetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QTextBrowser(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QTextBrowser, painter: gen_qpainter.QPainter): void =


  fQTextBrowser_virtualbase_initPainter(self.h, painter.h)

type QTextBrowserinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QTextBrowser, slot: proc(super: QTextBrowserinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_initPainter(self: ptr cQTextBrowser, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_initPainter ".} =
  type Cb = proc(super: QTextBrowserinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QTextBrowser(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QTextBrowser, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQTextBrowser_virtualbase_redirected(self.h, offset.h))

type QTextBrowserredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QTextBrowser, slot: proc(super: QTextBrowserredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_redirected(self: ptr cQTextBrowser, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QTextBrowser_redirected ".} =
  type Cb = proc(super: QTextBrowserredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QTextBrowser(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QTextBrowser, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQTextBrowser_virtualbase_sharedPainter(self.h))

type QTextBrowsersharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QTextBrowser, slot: proc(super: QTextBrowsersharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowsersharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_sharedPainter(self: ptr cQTextBrowser, slot: int): pointer {.exportc: "miqt_exec_callback_QTextBrowser_sharedPainter ".} =
  type Cb = proc(super: QTextBrowsersharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QTextBrowser(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_childEvent(self: QTextBrowser, event: gen_qcoreevent.QChildEvent): void =


  fQTextBrowser_virtualbase_childEvent(self.h, event.h)

type QTextBrowserchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QTextBrowser, slot: proc(super: QTextBrowserchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_childEvent(self: ptr cQTextBrowser, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_childEvent ".} =
  type Cb = proc(super: QTextBrowserchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QTextBrowser(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QTextBrowser, event: gen_qcoreevent.QEvent): void =


  fQTextBrowser_virtualbase_customEvent(self.h, event.h)

type QTextBrowsercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QTextBrowser, slot: proc(super: QTextBrowsercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowsercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_customEvent(self: ptr cQTextBrowser, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_customEvent ".} =
  type Cb = proc(super: QTextBrowsercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QTextBrowser(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QTextBrowser, signal: gen_qmetaobject.QMetaMethod): void =


  fQTextBrowser_virtualbase_connectNotify(self.h, signal.h)

type QTextBrowserconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QTextBrowser, slot: proc(super: QTextBrowserconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_connectNotify(self: ptr cQTextBrowser, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_connectNotify ".} =
  type Cb = proc(super: QTextBrowserconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QTextBrowser(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QTextBrowser, signal: gen_qmetaobject.QMetaMethod): void =


  fQTextBrowser_virtualbase_disconnectNotify(self.h, signal.h)

type QTextBrowserdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QTextBrowser, slot: proc(super: QTextBrowserdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTextBrowserdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextBrowser_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextBrowser_disconnectNotify(self: ptr cQTextBrowser, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTextBrowser_disconnectNotify ".} =
  type Cb = proc(super: QTextBrowserdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QTextBrowser(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QTextBrowser) =
  fcQTextBrowser_delete(self.h)
