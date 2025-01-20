import Qt5WebKitWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5WebKitWidgets")
{.compile("gen_qgraphicswebview.cpp", cflags).}


import gen_qgraphicswebview_types
export gen_qgraphicswebview_types

import
  gen_qaction,
  gen_qcoreevent,
  gen_qevent,
  gen_qgraphicsitem,
  gen_qgraphicssceneevent,
  gen_qgraphicswidget,
  gen_qicon,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qnetworkaccessmanager,
  gen_qnetworkrequest,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainter,
  gen_qpainterpath,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qstyleoption,
  gen_qurl,
  gen_qvariant,
  gen_qwebhistory,
  gen_qwebpage,
  gen_qwebsettings,
  gen_qwidget
export
  gen_qaction,
  gen_qcoreevent,
  gen_qevent,
  gen_qgraphicsitem,
  gen_qgraphicssceneevent,
  gen_qgraphicswidget,
  gen_qicon,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qnetworkaccessmanager,
  gen_qnetworkrequest,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainter,
  gen_qpainterpath,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qstyleoption,
  gen_qurl,
  gen_qvariant,
  gen_qwebhistory,
  gen_qwebpage,
  gen_qwebsettings,
  gen_qwidget

type cQGraphicsWebView*{.exportc: "QGraphicsWebView", incompleteStruct.} = object

proc fcQGraphicsWebView_new(): ptr cQGraphicsWebView {.importc: "QGraphicsWebView_new".}
proc fcQGraphicsWebView_new2(parent: pointer): ptr cQGraphicsWebView {.importc: "QGraphicsWebView_new2".}
proc fcQGraphicsWebView_metaObject(self: pointer, ): pointer {.importc: "QGraphicsWebView_metaObject".}
proc fcQGraphicsWebView_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsWebView_metacast".}
proc fcQGraphicsWebView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsWebView_metacall".}
proc fcQGraphicsWebView_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsWebView_tr".}
proc fcQGraphicsWebView_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsWebView_trUtf8".}
proc fcQGraphicsWebView_page(self: pointer, ): pointer {.importc: "QGraphicsWebView_page".}
proc fcQGraphicsWebView_setPage(self: pointer, page: pointer): void {.importc: "QGraphicsWebView_setPage".}
proc fcQGraphicsWebView_url(self: pointer, ): pointer {.importc: "QGraphicsWebView_url".}
proc fcQGraphicsWebView_setUrl(self: pointer, url: pointer): void {.importc: "QGraphicsWebView_setUrl".}
proc fcQGraphicsWebView_title(self: pointer, ): struct_miqt_string {.importc: "QGraphicsWebView_title".}
proc fcQGraphicsWebView_icon(self: pointer, ): pointer {.importc: "QGraphicsWebView_icon".}
proc fcQGraphicsWebView_zoomFactor(self: pointer, ): float64 {.importc: "QGraphicsWebView_zoomFactor".}
proc fcQGraphicsWebView_setZoomFactor(self: pointer, zoomFactor: float64): void {.importc: "QGraphicsWebView_setZoomFactor".}
proc fcQGraphicsWebView_isModified(self: pointer, ): bool {.importc: "QGraphicsWebView_isModified".}
proc fcQGraphicsWebView_load(self: pointer, url: pointer): void {.importc: "QGraphicsWebView_load".}
proc fcQGraphicsWebView_loadWithRequest(self: pointer, request: pointer): void {.importc: "QGraphicsWebView_loadWithRequest".}
proc fcQGraphicsWebView_setHtml(self: pointer, html: struct_miqt_string): void {.importc: "QGraphicsWebView_setHtml".}
proc fcQGraphicsWebView_setContent(self: pointer, data: struct_miqt_string): void {.importc: "QGraphicsWebView_setContent".}
proc fcQGraphicsWebView_history(self: pointer, ): pointer {.importc: "QGraphicsWebView_history".}
proc fcQGraphicsWebView_settings(self: pointer, ): pointer {.importc: "QGraphicsWebView_settings".}
proc fcQGraphicsWebView_pageAction(self: pointer, action: cint): pointer {.importc: "QGraphicsWebView_pageAction".}
proc fcQGraphicsWebView_triggerPageAction(self: pointer, action: cint): void {.importc: "QGraphicsWebView_triggerPageAction".}
proc fcQGraphicsWebView_findText(self: pointer, subString: struct_miqt_string): bool {.importc: "QGraphicsWebView_findText".}
proc fcQGraphicsWebView_resizesToContents(self: pointer, ): bool {.importc: "QGraphicsWebView_resizesToContents".}
proc fcQGraphicsWebView_setResizesToContents(self: pointer, enabled: bool): void {.importc: "QGraphicsWebView_setResizesToContents".}
proc fcQGraphicsWebView_isTiledBackingStoreFrozen(self: pointer, ): bool {.importc: "QGraphicsWebView_isTiledBackingStoreFrozen".}
proc fcQGraphicsWebView_setTiledBackingStoreFrozen(self: pointer, frozen: bool): void {.importc: "QGraphicsWebView_setTiledBackingStoreFrozen".}
proc fcQGraphicsWebView_setGeometry(self: pointer, rect: pointer): void {.importc: "QGraphicsWebView_setGeometry".}
proc fcQGraphicsWebView_updateGeometry(self: pointer, ): void {.importc: "QGraphicsWebView_updateGeometry".}
proc fcQGraphicsWebView_paint(self: pointer, param1: pointer, options: pointer, widget: pointer): void {.importc: "QGraphicsWebView_paint".}
proc fcQGraphicsWebView_itemChange(self: pointer, change: cint, value: pointer): pointer {.importc: "QGraphicsWebView_itemChange".}
proc fcQGraphicsWebView_event(self: pointer, param1: pointer): bool {.importc: "QGraphicsWebView_event".}
proc fcQGraphicsWebView_sizeHint(self: pointer, which: cint, constraint: pointer): pointer {.importc: "QGraphicsWebView_sizeHint".}
proc fcQGraphicsWebView_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QGraphicsWebView_inputMethodQuery".}
proc fcQGraphicsWebView_renderHints(self: pointer, ): cint {.importc: "QGraphicsWebView_renderHints".}
proc fcQGraphicsWebView_setRenderHints(self: pointer, renderHints: cint): void {.importc: "QGraphicsWebView_setRenderHints".}
proc fcQGraphicsWebView_setRenderHint(self: pointer, param1: cint): void {.importc: "QGraphicsWebView_setRenderHint".}
proc fcQGraphicsWebView_stop(self: pointer, ): void {.importc: "QGraphicsWebView_stop".}
proc fcQGraphicsWebView_back(self: pointer, ): void {.importc: "QGraphicsWebView_back".}
proc fcQGraphicsWebView_forward(self: pointer, ): void {.importc: "QGraphicsWebView_forward".}
proc fcQGraphicsWebView_reload(self: pointer, ): void {.importc: "QGraphicsWebView_reload".}
proc fcQGraphicsWebView_loadStarted(self: pointer, ): void {.importc: "QGraphicsWebView_loadStarted".}
proc fQGraphicsWebView_connect_loadStarted(self: pointer, slot: int) {.importc: "QGraphicsWebView_connect_loadStarted".}
proc fcQGraphicsWebView_loadFinished(self: pointer, param1: bool): void {.importc: "QGraphicsWebView_loadFinished".}
proc fQGraphicsWebView_connect_loadFinished(self: pointer, slot: int) {.importc: "QGraphicsWebView_connect_loadFinished".}
proc fcQGraphicsWebView_loadProgress(self: pointer, progress: cint): void {.importc: "QGraphicsWebView_loadProgress".}
proc fQGraphicsWebView_connect_loadProgress(self: pointer, slot: int) {.importc: "QGraphicsWebView_connect_loadProgress".}
proc fcQGraphicsWebView_urlChanged(self: pointer, param1: pointer): void {.importc: "QGraphicsWebView_urlChanged".}
proc fQGraphicsWebView_connect_urlChanged(self: pointer, slot: int) {.importc: "QGraphicsWebView_connect_urlChanged".}
proc fcQGraphicsWebView_titleChanged(self: pointer, param1: struct_miqt_string): void {.importc: "QGraphicsWebView_titleChanged".}
proc fQGraphicsWebView_connect_titleChanged(self: pointer, slot: int) {.importc: "QGraphicsWebView_connect_titleChanged".}
proc fcQGraphicsWebView_iconChanged(self: pointer, ): void {.importc: "QGraphicsWebView_iconChanged".}
proc fQGraphicsWebView_connect_iconChanged(self: pointer, slot: int) {.importc: "QGraphicsWebView_connect_iconChanged".}
proc fcQGraphicsWebView_statusBarMessage(self: pointer, message: struct_miqt_string): void {.importc: "QGraphicsWebView_statusBarMessage".}
proc fQGraphicsWebView_connect_statusBarMessage(self: pointer, slot: int) {.importc: "QGraphicsWebView_connect_statusBarMessage".}
proc fcQGraphicsWebView_linkClicked(self: pointer, param1: pointer): void {.importc: "QGraphicsWebView_linkClicked".}
proc fQGraphicsWebView_connect_linkClicked(self: pointer, slot: int) {.importc: "QGraphicsWebView_connect_linkClicked".}
proc fcQGraphicsWebView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsWebView_tr2".}
proc fcQGraphicsWebView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsWebView_tr3".}
proc fcQGraphicsWebView_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsWebView_trUtf82".}
proc fcQGraphicsWebView_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsWebView_trUtf83".}
proc fcQGraphicsWebView_load2(self: pointer, request: pointer, operation: cint): void {.importc: "QGraphicsWebView_load2".}
proc fcQGraphicsWebView_load3(self: pointer, request: pointer, operation: cint, body: struct_miqt_string): void {.importc: "QGraphicsWebView_load3".}
proc fcQGraphicsWebView_setHtml2(self: pointer, html: struct_miqt_string, baseUrl: pointer): void {.importc: "QGraphicsWebView_setHtml2".}
proc fcQGraphicsWebView_setContent2(self: pointer, data: struct_miqt_string, mimeType: struct_miqt_string): void {.importc: "QGraphicsWebView_setContent2".}
proc fcQGraphicsWebView_setContent3(self: pointer, data: struct_miqt_string, mimeType: struct_miqt_string, baseUrl: pointer): void {.importc: "QGraphicsWebView_setContent3".}
proc fcQGraphicsWebView_triggerPageAction2(self: pointer, action: cint, checked: bool): void {.importc: "QGraphicsWebView_triggerPageAction2".}
proc fcQGraphicsWebView_findText2(self: pointer, subString: struct_miqt_string, options: cint): bool {.importc: "QGraphicsWebView_findText2".}
proc fcQGraphicsWebView_setRenderHint2(self: pointer, param1: cint, enabled: bool): void {.importc: "QGraphicsWebView_setRenderHint2".}
proc fQGraphicsWebView_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QGraphicsWebView_virtualbase_metaObject".}
proc fcQGraphicsWebView_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_metaObject".}
proc fQGraphicsWebView_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QGraphicsWebView_virtualbase_metacast".}
proc fcQGraphicsWebView_override_virtual_metacast(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_metacast".}
proc fQGraphicsWebView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGraphicsWebView_virtualbase_metacall".}
proc fcQGraphicsWebView_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_metacall".}
proc fQGraphicsWebView_virtualbase_setGeometry(self: pointer, rect: pointer): void{.importc: "QGraphicsWebView_virtualbase_setGeometry".}
proc fcQGraphicsWebView_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_setGeometry".}
proc fQGraphicsWebView_virtualbase_updateGeometry(self: pointer, ): void{.importc: "QGraphicsWebView_virtualbase_updateGeometry".}
proc fcQGraphicsWebView_override_virtual_updateGeometry(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_updateGeometry".}
proc fQGraphicsWebView_virtualbase_paint(self: pointer, param1: pointer, options: pointer, widget: pointer): void{.importc: "QGraphicsWebView_virtualbase_paint".}
proc fcQGraphicsWebView_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_paint".}
proc fQGraphicsWebView_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsWebView_virtualbase_itemChange".}
proc fcQGraphicsWebView_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_itemChange".}
proc fQGraphicsWebView_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QGraphicsWebView_virtualbase_event".}
proc fcQGraphicsWebView_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_event".}
proc fQGraphicsWebView_virtualbase_sizeHint(self: pointer, which: cint, constraint: pointer): pointer{.importc: "QGraphicsWebView_virtualbase_sizeHint".}
proc fcQGraphicsWebView_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_sizeHint".}
proc fQGraphicsWebView_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsWebView_virtualbase_inputMethodQuery".}
proc fcQGraphicsWebView_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_inputMethodQuery".}
proc fQGraphicsWebView_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_mousePressEvent".}
proc fcQGraphicsWebView_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_mousePressEvent".}
proc fQGraphicsWebView_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsWebView_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsWebView_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsWebView_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_mouseReleaseEvent".}
proc fQGraphicsWebView_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_mouseMoveEvent".}
proc fcQGraphicsWebView_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_mouseMoveEvent".}
proc fQGraphicsWebView_virtualbase_hoverMoveEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_hoverMoveEvent".}
proc fcQGraphicsWebView_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_hoverMoveEvent".}
proc fQGraphicsWebView_virtualbase_hoverLeaveEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsWebView_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_hoverLeaveEvent".}
proc fQGraphicsWebView_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_wheelEvent".}
proc fcQGraphicsWebView_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_wheelEvent".}
proc fQGraphicsWebView_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_keyPressEvent".}
proc fcQGraphicsWebView_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_keyPressEvent".}
proc fQGraphicsWebView_virtualbase_keyReleaseEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_keyReleaseEvent".}
proc fcQGraphicsWebView_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_keyReleaseEvent".}
proc fQGraphicsWebView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_contextMenuEvent".}
proc fcQGraphicsWebView_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_contextMenuEvent".}
proc fQGraphicsWebView_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_dragEnterEvent".}
proc fcQGraphicsWebView_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_dragEnterEvent".}
proc fQGraphicsWebView_virtualbase_dragLeaveEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_dragLeaveEvent".}
proc fcQGraphicsWebView_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_dragLeaveEvent".}
proc fQGraphicsWebView_virtualbase_dragMoveEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_dragMoveEvent".}
proc fcQGraphicsWebView_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_dragMoveEvent".}
proc fQGraphicsWebView_virtualbase_dropEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_dropEvent".}
proc fcQGraphicsWebView_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_dropEvent".}
proc fQGraphicsWebView_virtualbase_focusInEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_focusInEvent".}
proc fcQGraphicsWebView_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_focusInEvent".}
proc fQGraphicsWebView_virtualbase_focusOutEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_focusOutEvent".}
proc fcQGraphicsWebView_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_focusOutEvent".}
proc fQGraphicsWebView_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QGraphicsWebView_virtualbase_inputMethodEvent".}
proc fcQGraphicsWebView_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_inputMethodEvent".}
proc fQGraphicsWebView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QGraphicsWebView_virtualbase_focusNextPrevChild".}
proc fcQGraphicsWebView_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_focusNextPrevChild".}
proc fQGraphicsWebView_virtualbase_sceneEvent(self: pointer, param1: pointer): bool{.importc: "QGraphicsWebView_virtualbase_sceneEvent".}
proc fcQGraphicsWebView_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_sceneEvent".}
proc fQGraphicsWebView_virtualbase_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void{.importc: "QGraphicsWebView_virtualbase_getContentsMargins".}
proc fcQGraphicsWebView_override_virtual_getContentsMargins(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_getContentsMargins".}
proc fQGraphicsWebView_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsWebView_virtualbase_type".}
proc fcQGraphicsWebView_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_type".}
proc fQGraphicsWebView_virtualbase_paintWindowFrame(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsWebView_virtualbase_paintWindowFrame".}
proc fcQGraphicsWebView_override_virtual_paintWindowFrame(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_paintWindowFrame".}
proc fQGraphicsWebView_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QGraphicsWebView_virtualbase_boundingRect".}
proc fcQGraphicsWebView_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_boundingRect".}
proc fQGraphicsWebView_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsWebView_virtualbase_shape".}
proc fcQGraphicsWebView_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_shape".}
proc fQGraphicsWebView_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QGraphicsWebView_virtualbase_initStyleOption".}
proc fcQGraphicsWebView_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_initStyleOption".}
proc fQGraphicsWebView_virtualbase_propertyChange(self: pointer, propertyName: struct_miqt_string, value: pointer): pointer{.importc: "QGraphicsWebView_virtualbase_propertyChange".}
proc fcQGraphicsWebView_override_virtual_propertyChange(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_propertyChange".}
proc fQGraphicsWebView_virtualbase_windowFrameEvent(self: pointer, e: pointer): bool{.importc: "QGraphicsWebView_virtualbase_windowFrameEvent".}
proc fcQGraphicsWebView_override_virtual_windowFrameEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_windowFrameEvent".}
proc fQGraphicsWebView_virtualbase_windowFrameSectionAt(self: pointer, pos: pointer): cint{.importc: "QGraphicsWebView_virtualbase_windowFrameSectionAt".}
proc fcQGraphicsWebView_override_virtual_windowFrameSectionAt(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_windowFrameSectionAt".}
proc fQGraphicsWebView_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWebView_virtualbase_changeEvent".}
proc fcQGraphicsWebView_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_changeEvent".}
proc fQGraphicsWebView_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWebView_virtualbase_closeEvent".}
proc fcQGraphicsWebView_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_closeEvent".}
proc fQGraphicsWebView_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWebView_virtualbase_hideEvent".}
proc fcQGraphicsWebView_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_hideEvent".}
proc fQGraphicsWebView_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWebView_virtualbase_moveEvent".}
proc fcQGraphicsWebView_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_moveEvent".}
proc fQGraphicsWebView_virtualbase_polishEvent(self: pointer, ): void{.importc: "QGraphicsWebView_virtualbase_polishEvent".}
proc fcQGraphicsWebView_override_virtual_polishEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_polishEvent".}
proc fQGraphicsWebView_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWebView_virtualbase_resizeEvent".}
proc fcQGraphicsWebView_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_resizeEvent".}
proc fQGraphicsWebView_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWebView_virtualbase_showEvent".}
proc fcQGraphicsWebView_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_showEvent".}
proc fQGraphicsWebView_virtualbase_grabMouseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWebView_virtualbase_grabMouseEvent".}
proc fcQGraphicsWebView_override_virtual_grabMouseEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_grabMouseEvent".}
proc fQGraphicsWebView_virtualbase_ungrabMouseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWebView_virtualbase_ungrabMouseEvent".}
proc fcQGraphicsWebView_override_virtual_ungrabMouseEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_ungrabMouseEvent".}
proc fQGraphicsWebView_virtualbase_grabKeyboardEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWebView_virtualbase_grabKeyboardEvent".}
proc fcQGraphicsWebView_override_virtual_grabKeyboardEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_grabKeyboardEvent".}
proc fQGraphicsWebView_virtualbase_ungrabKeyboardEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWebView_virtualbase_ungrabKeyboardEvent".}
proc fcQGraphicsWebView_override_virtual_ungrabKeyboardEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_ungrabKeyboardEvent".}
proc fQGraphicsWebView_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsWebView_virtualbase_eventFilter".}
proc fcQGraphicsWebView_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_eventFilter".}
proc fQGraphicsWebView_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWebView_virtualbase_timerEvent".}
proc fcQGraphicsWebView_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_timerEvent".}
proc fQGraphicsWebView_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWebView_virtualbase_childEvent".}
proc fcQGraphicsWebView_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_childEvent".}
proc fQGraphicsWebView_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWebView_virtualbase_customEvent".}
proc fcQGraphicsWebView_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_customEvent".}
proc fQGraphicsWebView_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsWebView_virtualbase_connectNotify".}
proc fcQGraphicsWebView_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_connectNotify".}
proc fQGraphicsWebView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsWebView_virtualbase_disconnectNotify".}
proc fcQGraphicsWebView_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_disconnectNotify".}
proc fQGraphicsWebView_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsWebView_virtualbase_advance".}
proc fcQGraphicsWebView_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_advance".}
proc fQGraphicsWebView_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsWebView_virtualbase_contains".}
proc fcQGraphicsWebView_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_contains".}
proc fQGraphicsWebView_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsWebView_virtualbase_collidesWithItem".}
proc fcQGraphicsWebView_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_collidesWithItem".}
proc fQGraphicsWebView_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsWebView_virtualbase_collidesWithPath".}
proc fcQGraphicsWebView_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_collidesWithPath".}
proc fQGraphicsWebView_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsWebView_virtualbase_isObscuredBy".}
proc fcQGraphicsWebView_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_isObscuredBy".}
proc fQGraphicsWebView_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsWebView_virtualbase_opaqueArea".}
proc fcQGraphicsWebView_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_opaqueArea".}
proc fQGraphicsWebView_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsWebView_virtualbase_sceneEventFilter".}
proc fcQGraphicsWebView_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_sceneEventFilter".}
proc fQGraphicsWebView_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsWebView_virtualbase_hoverEnterEvent".}
proc fcQGraphicsWebView_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_hoverEnterEvent".}
proc fQGraphicsWebView_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsWebView_virtualbase_supportsExtension".}
proc fcQGraphicsWebView_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_supportsExtension".}
proc fQGraphicsWebView_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsWebView_virtualbase_setExtension".}
proc fcQGraphicsWebView_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_setExtension".}
proc fQGraphicsWebView_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsWebView_virtualbase_extension".}
proc fcQGraphicsWebView_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsWebView_override_virtual_extension".}
proc fcQGraphicsWebView_staticMetaObject(): pointer {.importc: "QGraphicsWebView_staticMetaObject".}
proc fcQGraphicsWebView_delete(self: pointer) {.importc: "QGraphicsWebView_delete".}


func init*(T: type QGraphicsWebView, h: ptr cQGraphicsWebView): QGraphicsWebView =
  T(h: h)
proc create*(T: type QGraphicsWebView, ): QGraphicsWebView =

  QGraphicsWebView.init(fcQGraphicsWebView_new())
proc create*(T: type QGraphicsWebView, parent: gen_qgraphicsitem.QGraphicsItem): QGraphicsWebView =

  QGraphicsWebView.init(fcQGraphicsWebView_new2(parent.h))
proc metaObject*(self: QGraphicsWebView, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQGraphicsWebView_metaObject(self.h))

proc metacast*(self: QGraphicsWebView, param1: cstring): pointer =

  fcQGraphicsWebView_metacast(self.h, param1)

proc metacall*(self: QGraphicsWebView, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQGraphicsWebView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QGraphicsWebView, s: cstring): string =

  let v_ms = fcQGraphicsWebView_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QGraphicsWebView, s: cstring): string =

  let v_ms = fcQGraphicsWebView_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc page*(self: QGraphicsWebView, ): gen_qwebpage.QWebPage =

  gen_qwebpage.QWebPage(h: fcQGraphicsWebView_page(self.h))

proc setPage*(self: QGraphicsWebView, page: gen_qwebpage.QWebPage): void =

  fcQGraphicsWebView_setPage(self.h, page.h)

proc url*(self: QGraphicsWebView, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQGraphicsWebView_url(self.h))

proc setUrl*(self: QGraphicsWebView, url: gen_qurl.QUrl): void =

  fcQGraphicsWebView_setUrl(self.h, url.h)

proc title*(self: QGraphicsWebView, ): string =

  let v_ms = fcQGraphicsWebView_title(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc icon*(self: QGraphicsWebView, ): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQGraphicsWebView_icon(self.h))

proc zoomFactor*(self: QGraphicsWebView, ): float64 =

  fcQGraphicsWebView_zoomFactor(self.h)

proc setZoomFactor*(self: QGraphicsWebView, zoomFactor: float64): void =

  fcQGraphicsWebView_setZoomFactor(self.h, zoomFactor)

proc isModified*(self: QGraphicsWebView, ): bool =

  fcQGraphicsWebView_isModified(self.h)

proc load*(self: QGraphicsWebView, url: gen_qurl.QUrl): void =

  fcQGraphicsWebView_load(self.h, url.h)

proc loadWithRequest*(self: QGraphicsWebView, request: gen_qnetworkrequest.QNetworkRequest): void =

  fcQGraphicsWebView_loadWithRequest(self.h, request.h)

proc setHtml*(self: QGraphicsWebView, html: string): void =

  fcQGraphicsWebView_setHtml(self.h, struct_miqt_string(data: html, len: csize_t(len(html))))

proc setContent*(self: QGraphicsWebView, data: seq[byte]): void =

  fcQGraphicsWebView_setContent(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc history*(self: QGraphicsWebView, ): gen_qwebhistory.QWebHistory =

  gen_qwebhistory.QWebHistory(h: fcQGraphicsWebView_history(self.h))

proc settings*(self: QGraphicsWebView, ): gen_qwebsettings.QWebSettings =

  gen_qwebsettings.QWebSettings(h: fcQGraphicsWebView_settings(self.h))

proc pageAction*(self: QGraphicsWebView, action: gen_qwebpage.QWebPageWebAction): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQGraphicsWebView_pageAction(self.h, cint(action)))

proc triggerPageAction*(self: QGraphicsWebView, action: gen_qwebpage.QWebPageWebAction): void =

  fcQGraphicsWebView_triggerPageAction(self.h, cint(action))

proc findText*(self: QGraphicsWebView, subString: string): bool =

  fcQGraphicsWebView_findText(self.h, struct_miqt_string(data: subString, len: csize_t(len(subString))))

proc resizesToContents*(self: QGraphicsWebView, ): bool =

  fcQGraphicsWebView_resizesToContents(self.h)

proc setResizesToContents*(self: QGraphicsWebView, enabled: bool): void =

  fcQGraphicsWebView_setResizesToContents(self.h, enabled)

proc isTiledBackingStoreFrozen*(self: QGraphicsWebView, ): bool =

  fcQGraphicsWebView_isTiledBackingStoreFrozen(self.h)

proc setTiledBackingStoreFrozen*(self: QGraphicsWebView, frozen: bool): void =

  fcQGraphicsWebView_setTiledBackingStoreFrozen(self.h, frozen)

proc setGeometry*(self: QGraphicsWebView, rect: gen_qrect.QRectF): void =

  fcQGraphicsWebView_setGeometry(self.h, rect.h)

proc updateGeometry*(self: QGraphicsWebView, ): void =

  fcQGraphicsWebView_updateGeometry(self.h)

proc paint*(self: QGraphicsWebView, param1: gen_qpainter.QPainter, options: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =

  fcQGraphicsWebView_paint(self.h, param1.h, options.h, widget.h)

proc itemChange*(self: QGraphicsWebView, change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQGraphicsWebView_itemChange(self.h, cint(change), value.h))

proc event*(self: QGraphicsWebView, param1: gen_qcoreevent.QEvent): bool =

  fcQGraphicsWebView_event(self.h, param1.h)

proc sizeHint*(self: QGraphicsWebView, which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQGraphicsWebView_sizeHint(self.h, cint(which), constraint.h))

proc inputMethodQuery*(self: QGraphicsWebView, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQGraphicsWebView_inputMethodQuery(self.h, cint(query)))

proc renderHints*(self: QGraphicsWebView, ): gen_qpainter.QPainterRenderHint =

  gen_qpainter.QPainterRenderHint(fcQGraphicsWebView_renderHints(self.h))

proc setRenderHints*(self: QGraphicsWebView, renderHints: gen_qpainter.QPainterRenderHint): void =

  fcQGraphicsWebView_setRenderHints(self.h, cint(renderHints))

proc setRenderHint*(self: QGraphicsWebView, param1: gen_qpainter.QPainterRenderHint): void =

  fcQGraphicsWebView_setRenderHint(self.h, cint(param1))

proc stop*(self: QGraphicsWebView, ): void =

  fcQGraphicsWebView_stop(self.h)

proc back*(self: QGraphicsWebView, ): void =

  fcQGraphicsWebView_back(self.h)

proc forward*(self: QGraphicsWebView, ): void =

  fcQGraphicsWebView_forward(self.h)

proc reload*(self: QGraphicsWebView, ): void =

  fcQGraphicsWebView_reload(self.h)

proc loadStarted*(self: QGraphicsWebView, ): void =

  fcQGraphicsWebView_loadStarted(self.h)

proc miqt_exec_callback_QGraphicsWebView_loadStarted(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onloadStarted*(self: QGraphicsWebView, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsWebView_connect_loadStarted(self.h, cast[int](addr tmp[]))
proc loadFinished*(self: QGraphicsWebView, param1: bool): void =

  fcQGraphicsWebView_loadFinished(self.h, param1)

proc miqt_exec_callback_QGraphicsWebView_loadFinished(slot: int, param1: bool) {.exportc.} =
  type Cb = proc(param1: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onloadFinished*(self: QGraphicsWebView, slot: proc(param1: bool)) =
  type Cb = proc(param1: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsWebView_connect_loadFinished(self.h, cast[int](addr tmp[]))
proc loadProgress*(self: QGraphicsWebView, progress: cint): void =

  fcQGraphicsWebView_loadProgress(self.h, progress)

proc miqt_exec_callback_QGraphicsWebView_loadProgress(slot: int, progress: cint) {.exportc.} =
  type Cb = proc(progress: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = progress


  nimfunc[](slotval1)

proc onloadProgress*(self: QGraphicsWebView, slot: proc(progress: cint)) =
  type Cb = proc(progress: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsWebView_connect_loadProgress(self.h, cast[int](addr tmp[]))
proc urlChanged*(self: QGraphicsWebView, param1: gen_qurl.QUrl): void =

  fcQGraphicsWebView_urlChanged(self.h, param1.h)

proc miqt_exec_callback_QGraphicsWebView_urlChanged(slot: int, param1: pointer) {.exportc.} =
  type Cb = proc(param1: gen_qurl.QUrl)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: param1)


  nimfunc[](slotval1)

proc onurlChanged*(self: QGraphicsWebView, slot: proc(param1: gen_qurl.QUrl)) =
  type Cb = proc(param1: gen_qurl.QUrl)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsWebView_connect_urlChanged(self.h, cast[int](addr tmp[]))
proc titleChanged*(self: QGraphicsWebView, param1: string): void =

  fcQGraphicsWebView_titleChanged(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc miqt_exec_callback_QGraphicsWebView_titleChanged(slot: int, param1: struct_miqt_string) {.exportc.} =
  type Cb = proc(param1: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret


  nimfunc[](slotval1)

proc ontitleChanged*(self: QGraphicsWebView, slot: proc(param1: string)) =
  type Cb = proc(param1: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsWebView_connect_titleChanged(self.h, cast[int](addr tmp[]))
proc iconChanged*(self: QGraphicsWebView, ): void =

  fcQGraphicsWebView_iconChanged(self.h)

proc miqt_exec_callback_QGraphicsWebView_iconChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc oniconChanged*(self: QGraphicsWebView, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsWebView_connect_iconChanged(self.h, cast[int](addr tmp[]))
proc statusBarMessage*(self: QGraphicsWebView, message: string): void =

  fcQGraphicsWebView_statusBarMessage(self.h, struct_miqt_string(data: message, len: csize_t(len(message))))

proc miqt_exec_callback_QGraphicsWebView_statusBarMessage(slot: int, message: struct_miqt_string) {.exportc.} =
  type Cb = proc(message: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vmessage_ms = message
  let vmessagex_ret = string.fromBytes(toOpenArrayByte(vmessage_ms.data, 0, int(vmessage_ms.len)-1))
  c_free(vmessage_ms.data)
  let slotval1 = vmessagex_ret


  nimfunc[](slotval1)

proc onstatusBarMessage*(self: QGraphicsWebView, slot: proc(message: string)) =
  type Cb = proc(message: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsWebView_connect_statusBarMessage(self.h, cast[int](addr tmp[]))
proc linkClicked*(self: QGraphicsWebView, param1: gen_qurl.QUrl): void =

  fcQGraphicsWebView_linkClicked(self.h, param1.h)

proc miqt_exec_callback_QGraphicsWebView_linkClicked(slot: int, param1: pointer) {.exportc.} =
  type Cb = proc(param1: gen_qurl.QUrl)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: param1)


  nimfunc[](slotval1)

proc onlinkClicked*(self: QGraphicsWebView, slot: proc(param1: gen_qurl.QUrl)) =
  type Cb = proc(param1: gen_qurl.QUrl)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsWebView_connect_linkClicked(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QGraphicsWebView, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsWebView_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QGraphicsWebView, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsWebView_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QGraphicsWebView, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsWebView_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QGraphicsWebView, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsWebView_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc load2*(self: QGraphicsWebView, request: gen_qnetworkrequest.QNetworkRequest, operation: gen_qnetworkaccessmanager.QNetworkAccessManagerOperation): void =

  fcQGraphicsWebView_load2(self.h, request.h, cint(operation))

proc load3*(self: QGraphicsWebView, request: gen_qnetworkrequest.QNetworkRequest, operation: gen_qnetworkaccessmanager.QNetworkAccessManagerOperation, body: seq[byte]): void =

  fcQGraphicsWebView_load3(self.h, request.h, cint(operation), struct_miqt_string(data: cast[cstring](if len(body) == 0: nil else: unsafeAddr body[0]), len: csize_t(len(body))))

proc setHtml2*(self: QGraphicsWebView, html: string, baseUrl: gen_qurl.QUrl): void =

  fcQGraphicsWebView_setHtml2(self.h, struct_miqt_string(data: html, len: csize_t(len(html))), baseUrl.h)

proc setContent2*(self: QGraphicsWebView, data: seq[byte], mimeType: string): void =

  fcQGraphicsWebView_setContent2(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))))

proc setContent3*(self: QGraphicsWebView, data: seq[byte], mimeType: string, baseUrl: gen_qurl.QUrl): void =

  fcQGraphicsWebView_setContent3(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))), baseUrl.h)

proc triggerPageAction2*(self: QGraphicsWebView, action: gen_qwebpage.QWebPageWebAction, checked: bool): void =

  fcQGraphicsWebView_triggerPageAction2(self.h, cint(action), checked)

proc findText2*(self: QGraphicsWebView, subString: string, options: gen_qwebpage.QWebPageFindFlag): bool =

  fcQGraphicsWebView_findText2(self.h, struct_miqt_string(data: subString, len: csize_t(len(subString))), cint(options))

proc setRenderHint2*(self: QGraphicsWebView, param1: gen_qpainter.QPainterRenderHint, enabled: bool): void =

  fcQGraphicsWebView_setRenderHint2(self.h, cint(param1), enabled)

proc callVirtualBase_metaObject(self: QGraphicsWebView, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQGraphicsWebView_virtualbase_metaObject(self.h))

type QGraphicsWebViewmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_metaObject(self: ptr cQGraphicsWebView, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsWebView_metaObject ".} =
  type Cb = proc(super: QGraphicsWebViewmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QGraphicsWebView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QGraphicsWebView, param1: cstring): pointer =


  fQGraphicsWebView_virtualbase_metacast(self.h, param1)

type QGraphicsWebViewmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_metacast(self: ptr cQGraphicsWebView, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QGraphicsWebView_metacast ".} =
  type Cb = proc(super: QGraphicsWebViewmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QGraphicsWebView(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QGraphicsWebView, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQGraphicsWebView_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGraphicsWebViewmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_metacall(self: ptr cQGraphicsWebView, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsWebView_metacall ".} =
  type Cb = proc(super: QGraphicsWebViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QGraphicsWebView(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setGeometry(self: QGraphicsWebView, rect: gen_qrect.QRectF): void =


  fQGraphicsWebView_virtualbase_setGeometry(self.h, rect.h)

type QGraphicsWebViewsetGeometryBase* = proc(rect: gen_qrect.QRectF): void
proc onsetGeometry*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewsetGeometryBase, rect: gen_qrect.QRectF): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewsetGeometryBase, rect: gen_qrect.QRectF): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_setGeometry(self: ptr cQGraphicsWebView, slot: int, rect: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_setGeometry ".} =
  type Cb = proc(super: QGraphicsWebViewsetGeometryBase, rect: gen_qrect.QRectF): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(rect: gen_qrect.QRectF): auto =
    callVirtualBase_setGeometry(QGraphicsWebView(h: self), rect)
  let slotval1 = gen_qrect.QRectF(h: rect)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_updateGeometry(self: QGraphicsWebView, ): void =


  fQGraphicsWebView_virtualbase_updateGeometry(self.h)

type QGraphicsWebViewupdateGeometryBase* = proc(): void
proc onupdateGeometry*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewupdateGeometryBase): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewupdateGeometryBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_updateGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_updateGeometry(self: ptr cQGraphicsWebView, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsWebView_updateGeometry ".} =
  type Cb = proc(super: QGraphicsWebViewupdateGeometryBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateGeometry(QGraphicsWebView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_paint(self: QGraphicsWebView, param1: gen_qpainter.QPainter, options: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =


  fQGraphicsWebView_virtualbase_paint(self.h, param1.h, options.h, widget.h)

type QGraphicsWebViewpaintBase* = proc(param1: gen_qpainter.QPainter, options: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
proc onpaint*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewpaintBase, param1: gen_qpainter.QPainter, options: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewpaintBase, param1: gen_qpainter.QPainter, options: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_paint(self: ptr cQGraphicsWebView, slot: int, param1: pointer, options: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_paint ".} =
  type Cb = proc(super: QGraphicsWebViewpaintBase, param1: gen_qpainter.QPainter, options: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpainter.QPainter, options: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_paint(QGraphicsWebView(h: self), param1, options, widget)
  let slotval1 = gen_qpainter.QPainter(h: param1)

  let slotval2 = gen_qstyleoption.QStyleOptionGraphicsItem(h: options)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_itemChange(self: QGraphicsWebView, change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsWebView_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsWebViewitemChangeBase* = proc(change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onitemChange*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewitemChangeBase, change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewitemChangeBase, change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_itemChange(self: ptr cQGraphicsWebView, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsWebView_itemChange ".} =
  type Cb = proc(super: QGraphicsWebViewitemChangeBase, change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): auto =
    callVirtualBase_itemChange(QGraphicsWebView(h: self), change, value)
  let slotval1 = gen_qgraphicsitem.QGraphicsItemGraphicsItemChange(change)

  let slotval2 = gen_qvariant.QVariant(h: value)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_event(self: QGraphicsWebView, param1: gen_qcoreevent.QEvent): bool =


  fQGraphicsWebView_virtualbase_event(self.h, param1.h)

type QGraphicsWebVieweventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebVieweventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebVieweventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_event(self: ptr cQGraphicsWebView, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsWebView_event ".} =
  type Cb = proc(super: QGraphicsWebVieweventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QGraphicsWebView(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QGraphicsWebView, which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF =


  gen_qsize.QSizeF(h: fQGraphicsWebView_virtualbase_sizeHint(self.h, cint(which), constraint.h))

type QGraphicsWebViewsizeHintBase* = proc(which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF
proc onsizeHint*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewsizeHintBase, which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewsizeHintBase, which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_sizeHint(self: ptr cQGraphicsWebView, slot: int, which: cint, constraint: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsWebView_sizeHint ".} =
  type Cb = proc(super: QGraphicsWebViewsizeHintBase, which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): auto =
    callVirtualBase_sizeHint(QGraphicsWebView(h: self), which, constraint)
  let slotval1 = gen_qnamespace.SizeHint(which)

  let slotval2 = gen_qsize.QSizeF(h: constraint)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_inputMethodQuery(self: QGraphicsWebView, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsWebView_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsWebViewinputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_inputMethodQuery(self: ptr cQGraphicsWebView, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsWebView_inputMethodQuery ".} =
  type Cb = proc(super: QGraphicsWebViewinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QGraphicsWebView(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_mousePressEvent(self: QGraphicsWebView, param1: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsWebView_virtualbase_mousePressEvent(self.h, param1.h)

type QGraphicsWebViewmousePressEventBase* = proc(param1: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewmousePressEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewmousePressEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_mousePressEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_mousePressEvent ".} =
  type Cb = proc(super: QGraphicsWebViewmousePressEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mousePressEvent(QGraphicsWebView(h: self), param1)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QGraphicsWebView, param1: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsWebView_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

type QGraphicsWebViewmouseDoubleClickEventBase* = proc(param1: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewmouseDoubleClickEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewmouseDoubleClickEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_mouseDoubleClickEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QGraphicsWebViewmouseDoubleClickEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QGraphicsWebView(h: self), param1)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QGraphicsWebView, param1: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsWebView_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QGraphicsWebViewmouseReleaseEventBase* = proc(param1: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewmouseReleaseEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewmouseReleaseEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_mouseReleaseEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_mouseReleaseEvent ".} =
  type Cb = proc(super: QGraphicsWebViewmouseReleaseEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QGraphicsWebView(h: self), param1)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QGraphicsWebView, param1: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsWebView_virtualbase_mouseMoveEvent(self.h, param1.h)

type QGraphicsWebViewmouseMoveEventBase* = proc(param1: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewmouseMoveEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewmouseMoveEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_mouseMoveEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_mouseMoveEvent ".} =
  type Cb = proc(super: QGraphicsWebViewmouseMoveEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QGraphicsWebView(h: self), param1)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverMoveEvent(self: QGraphicsWebView, param1: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsWebView_virtualbase_hoverMoveEvent(self.h, param1.h)

type QGraphicsWebViewhoverMoveEventBase* = proc(param1: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewhoverMoveEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewhoverMoveEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_hoverMoveEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_hoverMoveEvent ".} =
  type Cb = proc(super: QGraphicsWebViewhoverMoveEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverMoveEvent(QGraphicsWebView(h: self), param1)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverLeaveEvent(self: QGraphicsWebView, param1: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsWebView_virtualbase_hoverLeaveEvent(self.h, param1.h)

type QGraphicsWebViewhoverLeaveEventBase* = proc(param1: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewhoverLeaveEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewhoverLeaveEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_hoverLeaveEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_hoverLeaveEvent ".} =
  type Cb = proc(super: QGraphicsWebViewhoverLeaveEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverLeaveEvent(QGraphicsWebView(h: self), param1)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QGraphicsWebView, param1: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void =


  fQGraphicsWebView_virtualbase_wheelEvent(self.h, param1.h)

type QGraphicsWebViewwheelEventBase* = proc(param1: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewwheelEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewwheelEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_wheelEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_wheelEvent ".} =
  type Cb = proc(super: QGraphicsWebViewwheelEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): auto =
    callVirtualBase_wheelEvent(QGraphicsWebView(h: self), param1)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneWheelEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QGraphicsWebView, param1: gen_qevent.QKeyEvent): void =


  fQGraphicsWebView_virtualbase_keyPressEvent(self.h, param1.h)

type QGraphicsWebViewkeyPressEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewkeyPressEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_keyPressEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_keyPressEvent ".} =
  type Cb = proc(super: QGraphicsWebViewkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QGraphicsWebView(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QGraphicsWebView, param1: gen_qevent.QKeyEvent): void =


  fQGraphicsWebView_virtualbase_keyReleaseEvent(self.h, param1.h)

type QGraphicsWebViewkeyReleaseEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewkeyReleaseEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewkeyReleaseEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_keyReleaseEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_keyReleaseEvent ".} =
  type Cb = proc(super: QGraphicsWebViewkeyReleaseEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QGraphicsWebView(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QGraphicsWebView, param1: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void =


  fQGraphicsWebView_virtualbase_contextMenuEvent(self.h, param1.h)

type QGraphicsWebViewcontextMenuEventBase* = proc(param1: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewcontextMenuEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewcontextMenuEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_contextMenuEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_contextMenuEvent ".} =
  type Cb = proc(super: QGraphicsWebViewcontextMenuEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QGraphicsWebView(h: self), param1)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QGraphicsWebView, param1: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsWebView_virtualbase_dragEnterEvent(self.h, param1.h)

type QGraphicsWebViewdragEnterEventBase* = proc(param1: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewdragEnterEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewdragEnterEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_dragEnterEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_dragEnterEvent ".} =
  type Cb = proc(super: QGraphicsWebViewdragEnterEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragEnterEvent(QGraphicsWebView(h: self), param1)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QGraphicsWebView, param1: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsWebView_virtualbase_dragLeaveEvent(self.h, param1.h)

type QGraphicsWebViewdragLeaveEventBase* = proc(param1: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewdragLeaveEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewdragLeaveEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_dragLeaveEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_dragLeaveEvent ".} =
  type Cb = proc(super: QGraphicsWebViewdragLeaveEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragLeaveEvent(QGraphicsWebView(h: self), param1)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QGraphicsWebView, param1: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsWebView_virtualbase_dragMoveEvent(self.h, param1.h)

type QGraphicsWebViewdragMoveEventBase* = proc(param1: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewdragMoveEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewdragMoveEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_dragMoveEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_dragMoveEvent ".} =
  type Cb = proc(super: QGraphicsWebViewdragMoveEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragMoveEvent(QGraphicsWebView(h: self), param1)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QGraphicsWebView, param1: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsWebView_virtualbase_dropEvent(self.h, param1.h)

type QGraphicsWebViewdropEventBase* = proc(param1: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewdropEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewdropEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_dropEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_dropEvent ".} =
  type Cb = proc(super: QGraphicsWebViewdropEventBase, param1: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dropEvent(QGraphicsWebView(h: self), param1)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QGraphicsWebView, param1: gen_qevent.QFocusEvent): void =


  fQGraphicsWebView_virtualbase_focusInEvent(self.h, param1.h)

type QGraphicsWebViewfocusInEventBase* = proc(param1: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewfocusInEventBase, param1: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewfocusInEventBase, param1: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_focusInEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_focusInEvent ".} =
  type Cb = proc(super: QGraphicsWebViewfocusInEventBase, param1: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QGraphicsWebView(h: self), param1)
  let slotval1 = gen_qevent.QFocusEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QGraphicsWebView, param1: gen_qevent.QFocusEvent): void =


  fQGraphicsWebView_virtualbase_focusOutEvent(self.h, param1.h)

type QGraphicsWebViewfocusOutEventBase* = proc(param1: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewfocusOutEventBase, param1: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewfocusOutEventBase, param1: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_focusOutEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_focusOutEvent ".} =
  type Cb = proc(super: QGraphicsWebViewfocusOutEventBase, param1: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QGraphicsWebView(h: self), param1)
  let slotval1 = gen_qevent.QFocusEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QGraphicsWebView, param1: gen_qevent.QInputMethodEvent): void =


  fQGraphicsWebView_virtualbase_inputMethodEvent(self.h, param1.h)

type QGraphicsWebViewinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_inputMethodEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_inputMethodEvent ".} =
  type Cb = proc(super: QGraphicsWebViewinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QGraphicsWebView(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusNextPrevChild(self: QGraphicsWebView, next: bool): bool =


  fQGraphicsWebView_virtualbase_focusNextPrevChild(self.h, next)

type QGraphicsWebViewfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_focusNextPrevChild(self: ptr cQGraphicsWebView, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QGraphicsWebView_focusNextPrevChild ".} =
  type Cb = proc(super: QGraphicsWebViewfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QGraphicsWebView(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_sceneEvent(self: QGraphicsWebView, param1: gen_qcoreevent.QEvent): bool =


  fQGraphicsWebView_virtualbase_sceneEvent(self.h, param1.h)

type QGraphicsWebViewsceneEventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onsceneEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewsceneEventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewsceneEventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_sceneEvent(self: ptr cQGraphicsWebView, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsWebView_sceneEvent ".} =
  type Cb = proc(super: QGraphicsWebViewsceneEventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEvent(QGraphicsWebView(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_getContentsMargins(self: QGraphicsWebView, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =


  fQGraphicsWebView_virtualbase_getContentsMargins(self.h, left, top, right, bottom)

type QGraphicsWebViewgetContentsMarginsBase* = proc(left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
proc ongetContentsMargins*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewgetContentsMarginsBase, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewgetContentsMarginsBase, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_getContentsMargins(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_getContentsMargins(self: ptr cQGraphicsWebView, slot: int, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.exportc: "miqt_exec_callback_QGraphicsWebView_getContentsMargins ".} =
  type Cb = proc(super: QGraphicsWebViewgetContentsMarginsBase, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): auto =
    callVirtualBase_getContentsMargins(QGraphicsWebView(h: self), left, top, right, bottom)
  let slotval1 = left

  let slotval2 = top

  let slotval3 = right

  let slotval4 = bottom


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_typeX(self: QGraphicsWebView, ): cint =


  fQGraphicsWebView_virtualbase_type(self.h)

type QGraphicsWebViewtypeXBase* = proc(): cint
proc ontypeX*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewtypeXBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewtypeXBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_type(self: ptr cQGraphicsWebView, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsWebView_type ".} =
  type Cb = proc(super: QGraphicsWebViewtypeXBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_typeX(QGraphicsWebView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintWindowFrame(self: QGraphicsWebView, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =


  fQGraphicsWebView_virtualbase_paintWindowFrame(self.h, painter.h, option.h, widget.h)

type QGraphicsWebViewpaintWindowFrameBase* = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
proc onpaintWindowFrame*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewpaintWindowFrameBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewpaintWindowFrameBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_paintWindowFrame(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_paintWindowFrame(self: ptr cQGraphicsWebView, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_paintWindowFrame ".} =
  type Cb = proc(super: QGraphicsWebViewpaintWindowFrameBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_paintWindowFrame(QGraphicsWebView(h: self), painter, option, widget)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qstyleoption.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_boundingRect(self: QGraphicsWebView, ): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQGraphicsWebView_virtualbase_boundingRect(self.h))

type QGraphicsWebViewboundingRectBase* = proc(): gen_qrect.QRectF
proc onboundingRect*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewboundingRectBase): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewboundingRectBase): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_boundingRect(self: ptr cQGraphicsWebView, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsWebView_boundingRect ".} =
  type Cb = proc(super: QGraphicsWebViewboundingRectBase): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_boundingRect(QGraphicsWebView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_shape(self: QGraphicsWebView, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsWebView_virtualbase_shape(self.h))

type QGraphicsWebViewshapeBase* = proc(): gen_qpainterpath.QPainterPath
proc onshape*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewshapeBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewshapeBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_shape(self: ptr cQGraphicsWebView, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsWebView_shape ".} =
  type Cb = proc(super: QGraphicsWebViewshapeBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_shape(QGraphicsWebView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_initStyleOption(self: QGraphicsWebView, option: gen_qstyleoption.QStyleOption): void =


  fQGraphicsWebView_virtualbase_initStyleOption(self.h, option.h)

type QGraphicsWebViewinitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOption): void
proc oninitStyleOption*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewinitStyleOptionBase, option: gen_qstyleoption.QStyleOption): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewinitStyleOptionBase, option: gen_qstyleoption.QStyleOption): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_initStyleOption(self: ptr cQGraphicsWebView, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_initStyleOption ".} =
  type Cb = proc(super: QGraphicsWebViewinitStyleOptionBase, option: gen_qstyleoption.QStyleOption): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOption): auto =
    callVirtualBase_initStyleOption(QGraphicsWebView(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOption(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_propertyChange(self: QGraphicsWebView, propertyName: string, value: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsWebView_virtualbase_propertyChange(self.h, struct_miqt_string(data: propertyName, len: csize_t(len(propertyName))), value.h))

type QGraphicsWebViewpropertyChangeBase* = proc(propertyName: string, value: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onpropertyChange*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewpropertyChangeBase, propertyName: string, value: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewpropertyChangeBase, propertyName: string, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_propertyChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_propertyChange(self: ptr cQGraphicsWebView, slot: int, propertyName: struct_miqt_string, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsWebView_propertyChange ".} =
  type Cb = proc(super: QGraphicsWebViewpropertyChangeBase, propertyName: string, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(propertyName: string, value: gen_qvariant.QVariant): auto =
    callVirtualBase_propertyChange(QGraphicsWebView(h: self), propertyName, value)
  let vpropertyName_ms = propertyName
  let vpropertyNamex_ret = string.fromBytes(toOpenArrayByte(vpropertyName_ms.data, 0, int(vpropertyName_ms.len)-1))
  c_free(vpropertyName_ms.data)
  let slotval1 = vpropertyNamex_ret

  let slotval2 = gen_qvariant.QVariant(h: value)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_windowFrameEvent(self: QGraphicsWebView, e: gen_qcoreevent.QEvent): bool =


  fQGraphicsWebView_virtualbase_windowFrameEvent(self.h, e.h)

type QGraphicsWebViewwindowFrameEventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onwindowFrameEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewwindowFrameEventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewwindowFrameEventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_windowFrameEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_windowFrameEvent(self: ptr cQGraphicsWebView, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsWebView_windowFrameEvent ".} =
  type Cb = proc(super: QGraphicsWebViewwindowFrameEventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_windowFrameEvent(QGraphicsWebView(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_windowFrameSectionAt(self: QGraphicsWebView, pos: gen_qpoint.QPointF): gen_qnamespace.WindowFrameSection =


  gen_qnamespace.WindowFrameSection(fQGraphicsWebView_virtualbase_windowFrameSectionAt(self.h, pos.h))

type QGraphicsWebViewwindowFrameSectionAtBase* = proc(pos: gen_qpoint.QPointF): gen_qnamespace.WindowFrameSection
proc onwindowFrameSectionAt*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewwindowFrameSectionAtBase, pos: gen_qpoint.QPointF): gen_qnamespace.WindowFrameSection) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewwindowFrameSectionAtBase, pos: gen_qpoint.QPointF): gen_qnamespace.WindowFrameSection
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_windowFrameSectionAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_windowFrameSectionAt(self: ptr cQGraphicsWebView, slot: int, pos: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsWebView_windowFrameSectionAt ".} =
  type Cb = proc(super: QGraphicsWebViewwindowFrameSectionAtBase, pos: gen_qpoint.QPointF): gen_qnamespace.WindowFrameSection
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(pos: gen_qpoint.QPointF): auto =
    callVirtualBase_windowFrameSectionAt(QGraphicsWebView(h: self), pos)
  let slotval1 = gen_qpoint.QPointF(h: pos)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  cint(virtualReturn)
proc callVirtualBase_changeEvent(self: QGraphicsWebView, event: gen_qcoreevent.QEvent): void =


  fQGraphicsWebView_virtualbase_changeEvent(self.h, event.h)

type QGraphicsWebViewchangeEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewchangeEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewchangeEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_changeEvent(self: ptr cQGraphicsWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_changeEvent ".} =
  type Cb = proc(super: QGraphicsWebViewchangeEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QGraphicsWebView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QGraphicsWebView, event: gen_qevent.QCloseEvent): void =


  fQGraphicsWebView_virtualbase_closeEvent(self.h, event.h)

type QGraphicsWebViewcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_closeEvent(self: ptr cQGraphicsWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_closeEvent ".} =
  type Cb = proc(super: QGraphicsWebViewcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QGraphicsWebView(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QGraphicsWebView, event: gen_qevent.QHideEvent): void =


  fQGraphicsWebView_virtualbase_hideEvent(self.h, event.h)

type QGraphicsWebViewhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_hideEvent(self: ptr cQGraphicsWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_hideEvent ".} =
  type Cb = proc(super: QGraphicsWebViewhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QGraphicsWebView(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QGraphicsWebView, event: gen_qgraphicssceneevent.QGraphicsSceneMoveEvent): void =


  fQGraphicsWebView_virtualbase_moveEvent(self.h, event.h)

type QGraphicsWebViewmoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMoveEvent): void
proc onmoveEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewmoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewmoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_moveEvent(self: ptr cQGraphicsWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_moveEvent ".} =
  type Cb = proc(super: QGraphicsWebViewmoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMoveEvent): auto =
    callVirtualBase_moveEvent(QGraphicsWebView(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_polishEvent(self: QGraphicsWebView, ): void =


  fQGraphicsWebView_virtualbase_polishEvent(self.h)

type QGraphicsWebViewpolishEventBase* = proc(): void
proc onpolishEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewpolishEventBase): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewpolishEventBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_polishEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_polishEvent(self: ptr cQGraphicsWebView, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsWebView_polishEvent ".} =
  type Cb = proc(super: QGraphicsWebViewpolishEventBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_polishEvent(QGraphicsWebView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_resizeEvent(self: QGraphicsWebView, event: gen_qgraphicssceneevent.QGraphicsSceneResizeEvent): void =


  fQGraphicsWebView_virtualbase_resizeEvent(self.h, event.h)

type QGraphicsWebViewresizeEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneResizeEvent): void
proc onresizeEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewresizeEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewresizeEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_resizeEvent(self: ptr cQGraphicsWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_resizeEvent ".} =
  type Cb = proc(super: QGraphicsWebViewresizeEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneResizeEvent): auto =
    callVirtualBase_resizeEvent(QGraphicsWebView(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QGraphicsWebView, event: gen_qevent.QShowEvent): void =


  fQGraphicsWebView_virtualbase_showEvent(self.h, event.h)

type QGraphicsWebViewshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_showEvent(self: ptr cQGraphicsWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_showEvent ".} =
  type Cb = proc(super: QGraphicsWebViewshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QGraphicsWebView(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_grabMouseEvent(self: QGraphicsWebView, event: gen_qcoreevent.QEvent): void =


  fQGraphicsWebView_virtualbase_grabMouseEvent(self.h, event.h)

type QGraphicsWebViewgrabMouseEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc ongrabMouseEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewgrabMouseEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewgrabMouseEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_grabMouseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_grabMouseEvent(self: ptr cQGraphicsWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_grabMouseEvent ".} =
  type Cb = proc(super: QGraphicsWebViewgrabMouseEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_grabMouseEvent(QGraphicsWebView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_ungrabMouseEvent(self: QGraphicsWebView, event: gen_qcoreevent.QEvent): void =


  fQGraphicsWebView_virtualbase_ungrabMouseEvent(self.h, event.h)

type QGraphicsWebViewungrabMouseEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onungrabMouseEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewungrabMouseEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewungrabMouseEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_ungrabMouseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_ungrabMouseEvent(self: ptr cQGraphicsWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_ungrabMouseEvent ".} =
  type Cb = proc(super: QGraphicsWebViewungrabMouseEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_ungrabMouseEvent(QGraphicsWebView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_grabKeyboardEvent(self: QGraphicsWebView, event: gen_qcoreevent.QEvent): void =


  fQGraphicsWebView_virtualbase_grabKeyboardEvent(self.h, event.h)

type QGraphicsWebViewgrabKeyboardEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc ongrabKeyboardEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewgrabKeyboardEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewgrabKeyboardEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_grabKeyboardEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_grabKeyboardEvent(self: ptr cQGraphicsWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_grabKeyboardEvent ".} =
  type Cb = proc(super: QGraphicsWebViewgrabKeyboardEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_grabKeyboardEvent(QGraphicsWebView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_ungrabKeyboardEvent(self: QGraphicsWebView, event: gen_qcoreevent.QEvent): void =


  fQGraphicsWebView_virtualbase_ungrabKeyboardEvent(self.h, event.h)

type QGraphicsWebViewungrabKeyboardEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onungrabKeyboardEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewungrabKeyboardEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewungrabKeyboardEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_ungrabKeyboardEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_ungrabKeyboardEvent(self: ptr cQGraphicsWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_ungrabKeyboardEvent ".} =
  type Cb = proc(super: QGraphicsWebViewungrabKeyboardEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_ungrabKeyboardEvent(QGraphicsWebView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QGraphicsWebView, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsWebView_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsWebVieweventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebVieweventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebVieweventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_eventFilter(self: ptr cQGraphicsWebView, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsWebView_eventFilter ".} =
  type Cb = proc(super: QGraphicsWebVieweventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QGraphicsWebView(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QGraphicsWebView, event: gen_qcoreevent.QTimerEvent): void =


  fQGraphicsWebView_virtualbase_timerEvent(self.h, event.h)

type QGraphicsWebViewtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_timerEvent(self: ptr cQGraphicsWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_timerEvent ".} =
  type Cb = proc(super: QGraphicsWebViewtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QGraphicsWebView(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QGraphicsWebView, event: gen_qcoreevent.QChildEvent): void =


  fQGraphicsWebView_virtualbase_childEvent(self.h, event.h)

type QGraphicsWebViewchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_childEvent(self: ptr cQGraphicsWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_childEvent ".} =
  type Cb = proc(super: QGraphicsWebViewchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QGraphicsWebView(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QGraphicsWebView, event: gen_qcoreevent.QEvent): void =


  fQGraphicsWebView_virtualbase_customEvent(self.h, event.h)

type QGraphicsWebViewcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_customEvent(self: ptr cQGraphicsWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_customEvent ".} =
  type Cb = proc(super: QGraphicsWebViewcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QGraphicsWebView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QGraphicsWebView, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsWebView_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsWebViewconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_connectNotify(self: ptr cQGraphicsWebView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_connectNotify ".} =
  type Cb = proc(super: QGraphicsWebViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QGraphicsWebView(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QGraphicsWebView, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsWebView_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsWebViewdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_disconnectNotify(self: ptr cQGraphicsWebView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_disconnectNotify ".} =
  type Cb = proc(super: QGraphicsWebViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QGraphicsWebView(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_advance(self: QGraphicsWebView, phase: cint): void =


  fQGraphicsWebView_virtualbase_advance(self.h, phase)

type QGraphicsWebViewadvanceBase* = proc(phase: cint): void
proc onadvance*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewadvanceBase, phase: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewadvanceBase, phase: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_advance(self: ptr cQGraphicsWebView, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsWebView_advance ".} =
  type Cb = proc(super: QGraphicsWebViewadvanceBase, phase: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(phase: cint): auto =
    callVirtualBase_advance(QGraphicsWebView(h: self), phase)
  let slotval1 = phase


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contains(self: QGraphicsWebView, point: gen_qpoint.QPointF): bool =


  fQGraphicsWebView_virtualbase_contains(self.h, point.h)

type QGraphicsWebViewcontainsBase* = proc(point: gen_qpoint.QPointF): bool
proc oncontains*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewcontainsBase, point: gen_qpoint.QPointF): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewcontainsBase, point: gen_qpoint.QPointF): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_contains(self: ptr cQGraphicsWebView, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsWebView_contains ".} =
  type Cb = proc(super: QGraphicsWebViewcontainsBase, point: gen_qpoint.QPointF): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(point: gen_qpoint.QPointF): auto =
    callVirtualBase_contains(QGraphicsWebView(h: self), point)
  let slotval1 = gen_qpoint.QPointF(h: point)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_collidesWithItem(self: QGraphicsWebView, other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsWebView_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsWebViewcollidesWithItemBase* = proc(other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithItem*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewcollidesWithItemBase, other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewcollidesWithItemBase, other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_collidesWithItem(self: ptr cQGraphicsWebView, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsWebView_collidesWithItem ".} =
  type Cb = proc(super: QGraphicsWebViewcollidesWithItemBase, other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithItem(QGraphicsWebView(h: self), other, mode)
  let slotval1 = gen_qgraphicsitem.QGraphicsItem(h: other)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_collidesWithPath(self: QGraphicsWebView, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsWebView_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsWebViewcollidesWithPathBase* = proc(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithPath*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_collidesWithPath(self: ptr cQGraphicsWebView, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsWebView_collidesWithPath ".} =
  type Cb = proc(super: QGraphicsWebViewcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithPath(QGraphicsWebView(h: self), path, mode)
  let slotval1 = gen_qpainterpath.QPainterPath(h: path)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_isObscuredBy(self: QGraphicsWebView, item: gen_qgraphicsitem.QGraphicsItem): bool =


  fQGraphicsWebView_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsWebViewisObscuredByBase* = proc(item: gen_qgraphicsitem.QGraphicsItem): bool
proc onisObscuredBy*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewisObscuredByBase, item: gen_qgraphicsitem.QGraphicsItem): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewisObscuredByBase, item: gen_qgraphicsitem.QGraphicsItem): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_isObscuredBy(self: ptr cQGraphicsWebView, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsWebView_isObscuredBy ".} =
  type Cb = proc(super: QGraphicsWebViewisObscuredByBase, item: gen_qgraphicsitem.QGraphicsItem): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(item: gen_qgraphicsitem.QGraphicsItem): auto =
    callVirtualBase_isObscuredBy(QGraphicsWebView(h: self), item)
  let slotval1 = gen_qgraphicsitem.QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_opaqueArea(self: QGraphicsWebView, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsWebView_virtualbase_opaqueArea(self.h))

type QGraphicsWebViewopaqueAreaBase* = proc(): gen_qpainterpath.QPainterPath
proc onopaqueArea*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewopaqueAreaBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewopaqueAreaBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_opaqueArea(self: ptr cQGraphicsWebView, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsWebView_opaqueArea ".} =
  type Cb = proc(super: QGraphicsWebViewopaqueAreaBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_opaqueArea(QGraphicsWebView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_sceneEventFilter(self: QGraphicsWebView, watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsWebView_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsWebViewsceneEventFilterBase* = proc(watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): bool
proc onsceneEventFilter*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewsceneEventFilterBase, watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewsceneEventFilterBase, watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_sceneEventFilter(self: ptr cQGraphicsWebView, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsWebView_sceneEventFilter ".} =
  type Cb = proc(super: QGraphicsWebViewsceneEventFilterBase, watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEventFilter(QGraphicsWebView(h: self), watched, event)
  let slotval1 = gen_qgraphicsitem.QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_hoverEnterEvent(self: QGraphicsWebView, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsWebView_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsWebViewhoverEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_hoverEnterEvent(self: ptr cQGraphicsWebView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_hoverEnterEvent ".} =
  type Cb = proc(super: QGraphicsWebViewhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverEnterEvent(QGraphicsWebView(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_supportsExtension(self: QGraphicsWebView, extension: gen_qgraphicsitem.QGraphicsItemExtension): bool =


  fQGraphicsWebView_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsWebViewsupportsExtensionBase* = proc(extension: gen_qgraphicsitem.QGraphicsItemExtension): bool
proc onsupportsExtension*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewsupportsExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewsupportsExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_supportsExtension(self: ptr cQGraphicsWebView, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsWebView_supportsExtension ".} =
  type Cb = proc(super: QGraphicsWebViewsupportsExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: gen_qgraphicsitem.QGraphicsItemExtension): auto =
    callVirtualBase_supportsExtension(QGraphicsWebView(h: self), extension)
  let slotval1 = gen_qgraphicsitem.QGraphicsItemExtension(extension)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_setExtension(self: QGraphicsWebView, extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): void =


  fQGraphicsWebView_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsWebViewsetExtensionBase* = proc(extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
proc onsetExtension*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewsetExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewsetExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_setExtension(self: ptr cQGraphicsWebView, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsWebView_setExtension ".} =
  type Cb = proc(super: QGraphicsWebViewsetExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): auto =
    callVirtualBase_setExtension(QGraphicsWebView(h: self), extension, variant)
  let slotval1 = gen_qgraphicsitem.QGraphicsItemExtension(extension)

  let slotval2 = gen_qvariant.QVariant(h: variant)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_extension(self: QGraphicsWebView, variant: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsWebView_virtualbase_extension(self.h, variant.h))

type QGraphicsWebViewextensionBase* = proc(variant: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onextension*(self: QGraphicsWebView, slot: proc(super: QGraphicsWebViewextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsWebViewextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsWebView_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsWebView_extension(self: ptr cQGraphicsWebView, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsWebView_extension ".} =
  type Cb = proc(super: QGraphicsWebViewextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(variant: gen_qvariant.QVariant): auto =
    callVirtualBase_extension(QGraphicsWebView(h: self), variant)
  let slotval1 = gen_qvariant.QVariant(h: variant)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc staticMetaObject*(_: type QGraphicsWebView): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQGraphicsWebView_staticMetaObject())
proc delete*(self: QGraphicsWebView) =
  fcQGraphicsWebView_delete(self.h)
