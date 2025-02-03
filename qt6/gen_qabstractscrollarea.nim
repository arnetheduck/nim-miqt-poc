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
{.compile("gen_qabstractscrollarea.cpp", cflags).}


type QAbstractScrollAreaSizeAdjustPolicy* = cint
const
  QAbstractScrollAreaAdjustIgnored* = 0
  QAbstractScrollAreaAdjustToContentsOnFirstShow* = 1
  QAbstractScrollAreaAdjustToContents* = 2



import gen_qabstractscrollarea_types
export gen_qabstractscrollarea_types

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
  gen_qscrollbar,
  gen_qsize,
  gen_qstyleoption,
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
  gen_qscrollbar,
  gen_qsize,
  gen_qstyleoption,
  gen_qvariant,
  gen_qwidget

type cQAbstractScrollArea*{.exportc: "QAbstractScrollArea", incompleteStruct.} = object

proc fcQAbstractScrollArea_new(parent: pointer): ptr cQAbstractScrollArea {.importc: "QAbstractScrollArea_new".}
proc fcQAbstractScrollArea_new2(): ptr cQAbstractScrollArea {.importc: "QAbstractScrollArea_new2".}
proc fcQAbstractScrollArea_metaObject(self: pointer, ): pointer {.importc: "QAbstractScrollArea_metaObject".}
proc fcQAbstractScrollArea_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractScrollArea_metacast".}
proc fcQAbstractScrollArea_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractScrollArea_metacall".}
proc fcQAbstractScrollArea_tr(s: cstring): struct_miqt_string {.importc: "QAbstractScrollArea_tr".}
proc fcQAbstractScrollArea_verticalScrollBarPolicy(self: pointer, ): cint {.importc: "QAbstractScrollArea_verticalScrollBarPolicy".}
proc fcQAbstractScrollArea_setVerticalScrollBarPolicy(self: pointer, verticalScrollBarPolicy: cint): void {.importc: "QAbstractScrollArea_setVerticalScrollBarPolicy".}
proc fcQAbstractScrollArea_verticalScrollBar(self: pointer, ): pointer {.importc: "QAbstractScrollArea_verticalScrollBar".}
proc fcQAbstractScrollArea_setVerticalScrollBar(self: pointer, scrollbar: pointer): void {.importc: "QAbstractScrollArea_setVerticalScrollBar".}
proc fcQAbstractScrollArea_horizontalScrollBarPolicy(self: pointer, ): cint {.importc: "QAbstractScrollArea_horizontalScrollBarPolicy".}
proc fcQAbstractScrollArea_setHorizontalScrollBarPolicy(self: pointer, horizontalScrollBarPolicy: cint): void {.importc: "QAbstractScrollArea_setHorizontalScrollBarPolicy".}
proc fcQAbstractScrollArea_horizontalScrollBar(self: pointer, ): pointer {.importc: "QAbstractScrollArea_horizontalScrollBar".}
proc fcQAbstractScrollArea_setHorizontalScrollBar(self: pointer, scrollbar: pointer): void {.importc: "QAbstractScrollArea_setHorizontalScrollBar".}
proc fcQAbstractScrollArea_cornerWidget(self: pointer, ): pointer {.importc: "QAbstractScrollArea_cornerWidget".}
proc fcQAbstractScrollArea_setCornerWidget(self: pointer, widget: pointer): void {.importc: "QAbstractScrollArea_setCornerWidget".}
proc fcQAbstractScrollArea_addScrollBarWidget(self: pointer, widget: pointer, alignment: cint): void {.importc: "QAbstractScrollArea_addScrollBarWidget".}
proc fcQAbstractScrollArea_scrollBarWidgets(self: pointer, alignment: cint): struct_miqt_array {.importc: "QAbstractScrollArea_scrollBarWidgets".}
proc fcQAbstractScrollArea_viewport(self: pointer, ): pointer {.importc: "QAbstractScrollArea_viewport".}
proc fcQAbstractScrollArea_setViewport(self: pointer, widget: pointer): void {.importc: "QAbstractScrollArea_setViewport".}
proc fcQAbstractScrollArea_maximumViewportSize(self: pointer, ): pointer {.importc: "QAbstractScrollArea_maximumViewportSize".}
proc fcQAbstractScrollArea_minimumSizeHint(self: pointer, ): pointer {.importc: "QAbstractScrollArea_minimumSizeHint".}
proc fcQAbstractScrollArea_sizeHint(self: pointer, ): pointer {.importc: "QAbstractScrollArea_sizeHint".}
proc fcQAbstractScrollArea_setupViewport(self: pointer, viewport: pointer): void {.importc: "QAbstractScrollArea_setupViewport".}
proc fcQAbstractScrollArea_sizeAdjustPolicy(self: pointer, ): cint {.importc: "QAbstractScrollArea_sizeAdjustPolicy".}
proc fcQAbstractScrollArea_setSizeAdjustPolicy(self: pointer, policy: cint): void {.importc: "QAbstractScrollArea_setSizeAdjustPolicy".}
proc fcQAbstractScrollArea_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractScrollArea_tr2".}
proc fcQAbstractScrollArea_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractScrollArea_tr3".}
proc fQAbstractScrollArea_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAbstractScrollArea_virtualbase_metacall".}
proc fcQAbstractScrollArea_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_metacall".}
proc fQAbstractScrollArea_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QAbstractScrollArea_virtualbase_minimumSizeHint".}
proc fcQAbstractScrollArea_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_minimumSizeHint".}
proc fQAbstractScrollArea_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QAbstractScrollArea_virtualbase_sizeHint".}
proc fcQAbstractScrollArea_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_sizeHint".}
proc fQAbstractScrollArea_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QAbstractScrollArea_virtualbase_setupViewport".}
proc fcQAbstractScrollArea_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_setupViewport".}
proc fQAbstractScrollArea_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QAbstractScrollArea_virtualbase_eventFilter".}
proc fcQAbstractScrollArea_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_eventFilter".}
proc fQAbstractScrollArea_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QAbstractScrollArea_virtualbase_event".}
proc fcQAbstractScrollArea_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_event".}
proc fQAbstractScrollArea_virtualbase_viewportEvent(self: pointer, param1: pointer): bool{.importc: "QAbstractScrollArea_virtualbase_viewportEvent".}
proc fcQAbstractScrollArea_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_viewportEvent".}
proc fQAbstractScrollArea_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_resizeEvent".}
proc fcQAbstractScrollArea_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_resizeEvent".}
proc fQAbstractScrollArea_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_paintEvent".}
proc fcQAbstractScrollArea_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_paintEvent".}
proc fQAbstractScrollArea_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_mousePressEvent".}
proc fcQAbstractScrollArea_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_mousePressEvent".}
proc fQAbstractScrollArea_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_mouseReleaseEvent".}
proc fcQAbstractScrollArea_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_mouseReleaseEvent".}
proc fQAbstractScrollArea_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_mouseDoubleClickEvent".}
proc fcQAbstractScrollArea_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_mouseDoubleClickEvent".}
proc fQAbstractScrollArea_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_mouseMoveEvent".}
proc fcQAbstractScrollArea_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_mouseMoveEvent".}
proc fQAbstractScrollArea_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_wheelEvent".}
proc fcQAbstractScrollArea_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_wheelEvent".}
proc fQAbstractScrollArea_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_contextMenuEvent".}
proc fcQAbstractScrollArea_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_contextMenuEvent".}
proc fQAbstractScrollArea_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_dragEnterEvent".}
proc fcQAbstractScrollArea_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_dragEnterEvent".}
proc fQAbstractScrollArea_virtualbase_dragMoveEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_dragMoveEvent".}
proc fcQAbstractScrollArea_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_dragMoveEvent".}
proc fQAbstractScrollArea_virtualbase_dragLeaveEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_dragLeaveEvent".}
proc fcQAbstractScrollArea_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_dragLeaveEvent".}
proc fQAbstractScrollArea_virtualbase_dropEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_dropEvent".}
proc fcQAbstractScrollArea_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_dropEvent".}
proc fQAbstractScrollArea_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_keyPressEvent".}
proc fcQAbstractScrollArea_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_keyPressEvent".}
proc fQAbstractScrollArea_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QAbstractScrollArea_virtualbase_scrollContentsBy".}
proc fcQAbstractScrollArea_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_scrollContentsBy".}
proc fQAbstractScrollArea_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QAbstractScrollArea_virtualbase_viewportSizeHint".}
proc fcQAbstractScrollArea_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_viewportSizeHint".}
proc fQAbstractScrollArea_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_changeEvent".}
proc fcQAbstractScrollArea_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_changeEvent".}
proc fQAbstractScrollArea_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QAbstractScrollArea_virtualbase_initStyleOption".}
proc fcQAbstractScrollArea_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_initStyleOption".}
proc fQAbstractScrollArea_virtualbase_devType(self: pointer, ): cint{.importc: "QAbstractScrollArea_virtualbase_devType".}
proc fcQAbstractScrollArea_override_virtual_devType(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_devType".}
proc fQAbstractScrollArea_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QAbstractScrollArea_virtualbase_setVisible".}
proc fcQAbstractScrollArea_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_setVisible".}
proc fQAbstractScrollArea_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QAbstractScrollArea_virtualbase_heightForWidth".}
proc fcQAbstractScrollArea_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_heightForWidth".}
proc fQAbstractScrollArea_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QAbstractScrollArea_virtualbase_hasHeightForWidth".}
proc fcQAbstractScrollArea_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_hasHeightForWidth".}
proc fQAbstractScrollArea_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QAbstractScrollArea_virtualbase_paintEngine".}
proc fcQAbstractScrollArea_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_paintEngine".}
proc fQAbstractScrollArea_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QAbstractScrollArea_virtualbase_keyReleaseEvent".}
proc fcQAbstractScrollArea_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_keyReleaseEvent".}
proc fQAbstractScrollArea_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QAbstractScrollArea_virtualbase_focusInEvent".}
proc fcQAbstractScrollArea_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_focusInEvent".}
proc fQAbstractScrollArea_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QAbstractScrollArea_virtualbase_focusOutEvent".}
proc fcQAbstractScrollArea_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_focusOutEvent".}
proc fQAbstractScrollArea_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QAbstractScrollArea_virtualbase_enterEvent".}
proc fcQAbstractScrollArea_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_enterEvent".}
proc fQAbstractScrollArea_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QAbstractScrollArea_virtualbase_leaveEvent".}
proc fcQAbstractScrollArea_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_leaveEvent".}
proc fQAbstractScrollArea_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QAbstractScrollArea_virtualbase_moveEvent".}
proc fcQAbstractScrollArea_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_moveEvent".}
proc fQAbstractScrollArea_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QAbstractScrollArea_virtualbase_closeEvent".}
proc fcQAbstractScrollArea_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_closeEvent".}
proc fQAbstractScrollArea_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QAbstractScrollArea_virtualbase_tabletEvent".}
proc fcQAbstractScrollArea_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_tabletEvent".}
proc fQAbstractScrollArea_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QAbstractScrollArea_virtualbase_actionEvent".}
proc fcQAbstractScrollArea_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_actionEvent".}
proc fQAbstractScrollArea_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QAbstractScrollArea_virtualbase_showEvent".}
proc fcQAbstractScrollArea_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_showEvent".}
proc fQAbstractScrollArea_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QAbstractScrollArea_virtualbase_hideEvent".}
proc fcQAbstractScrollArea_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_hideEvent".}
proc fQAbstractScrollArea_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QAbstractScrollArea_virtualbase_nativeEvent".}
proc fcQAbstractScrollArea_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_nativeEvent".}
proc fQAbstractScrollArea_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QAbstractScrollArea_virtualbase_metric".}
proc fcQAbstractScrollArea_override_virtual_metric(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_metric".}
proc fQAbstractScrollArea_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QAbstractScrollArea_virtualbase_initPainter".}
proc fcQAbstractScrollArea_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_initPainter".}
proc fQAbstractScrollArea_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QAbstractScrollArea_virtualbase_redirected".}
proc fcQAbstractScrollArea_override_virtual_redirected(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_redirected".}
proc fQAbstractScrollArea_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QAbstractScrollArea_virtualbase_sharedPainter".}
proc fcQAbstractScrollArea_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_sharedPainter".}
proc fQAbstractScrollArea_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QAbstractScrollArea_virtualbase_inputMethodEvent".}
proc fcQAbstractScrollArea_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_inputMethodEvent".}
proc fQAbstractScrollArea_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QAbstractScrollArea_virtualbase_inputMethodQuery".}
proc fcQAbstractScrollArea_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_inputMethodQuery".}
proc fQAbstractScrollArea_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QAbstractScrollArea_virtualbase_focusNextPrevChild".}
proc fcQAbstractScrollArea_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_focusNextPrevChild".}
proc fQAbstractScrollArea_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractScrollArea_virtualbase_timerEvent".}
proc fcQAbstractScrollArea_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_timerEvent".}
proc fQAbstractScrollArea_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractScrollArea_virtualbase_childEvent".}
proc fcQAbstractScrollArea_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_childEvent".}
proc fQAbstractScrollArea_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractScrollArea_virtualbase_customEvent".}
proc fcQAbstractScrollArea_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_customEvent".}
proc fQAbstractScrollArea_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractScrollArea_virtualbase_connectNotify".}
proc fcQAbstractScrollArea_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_connectNotify".}
proc fQAbstractScrollArea_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractScrollArea_virtualbase_disconnectNotify".}
proc fcQAbstractScrollArea_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractScrollArea_override_virtual_disconnectNotify".}
proc fcQAbstractScrollArea_delete(self: pointer) {.importc: "QAbstractScrollArea_delete".}


func init*(T: type QAbstractScrollArea, h: ptr cQAbstractScrollArea): QAbstractScrollArea =
  T(h: h)
proc create*(T: type QAbstractScrollArea, parent: gen_qwidget.QWidget): QAbstractScrollArea =

  QAbstractScrollArea.init(fcQAbstractScrollArea_new(parent.h))
proc create*(T: type QAbstractScrollArea, ): QAbstractScrollArea =

  QAbstractScrollArea.init(fcQAbstractScrollArea_new2())
proc metaObject*(self: QAbstractScrollArea, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAbstractScrollArea_metaObject(self.h))

proc metacast*(self: QAbstractScrollArea, param1: cstring): pointer =

  fcQAbstractScrollArea_metacast(self.h, param1)

proc metacall*(self: QAbstractScrollArea, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAbstractScrollArea_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAbstractScrollArea, s: cstring): string =

  let v_ms = fcQAbstractScrollArea_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc verticalScrollBarPolicy*(self: QAbstractScrollArea, ): gen_qnamespace.ScrollBarPolicy =

  gen_qnamespace.ScrollBarPolicy(fcQAbstractScrollArea_verticalScrollBarPolicy(self.h))

proc setVerticalScrollBarPolicy*(self: QAbstractScrollArea, verticalScrollBarPolicy: gen_qnamespace.ScrollBarPolicy): void =

  fcQAbstractScrollArea_setVerticalScrollBarPolicy(self.h, cint(verticalScrollBarPolicy))

proc verticalScrollBar*(self: QAbstractScrollArea, ): gen_qscrollbar.QScrollBar =

  gen_qscrollbar.QScrollBar(h: fcQAbstractScrollArea_verticalScrollBar(self.h))

proc setVerticalScrollBar*(self: QAbstractScrollArea, scrollbar: gen_qscrollbar.QScrollBar): void =

  fcQAbstractScrollArea_setVerticalScrollBar(self.h, scrollbar.h)

proc horizontalScrollBarPolicy*(self: QAbstractScrollArea, ): gen_qnamespace.ScrollBarPolicy =

  gen_qnamespace.ScrollBarPolicy(fcQAbstractScrollArea_horizontalScrollBarPolicy(self.h))

proc setHorizontalScrollBarPolicy*(self: QAbstractScrollArea, horizontalScrollBarPolicy: gen_qnamespace.ScrollBarPolicy): void =

  fcQAbstractScrollArea_setHorizontalScrollBarPolicy(self.h, cint(horizontalScrollBarPolicy))

proc horizontalScrollBar*(self: QAbstractScrollArea, ): gen_qscrollbar.QScrollBar =

  gen_qscrollbar.QScrollBar(h: fcQAbstractScrollArea_horizontalScrollBar(self.h))

proc setHorizontalScrollBar*(self: QAbstractScrollArea, scrollbar: gen_qscrollbar.QScrollBar): void =

  fcQAbstractScrollArea_setHorizontalScrollBar(self.h, scrollbar.h)

proc cornerWidget*(self: QAbstractScrollArea, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQAbstractScrollArea_cornerWidget(self.h))

proc setCornerWidget*(self: QAbstractScrollArea, widget: gen_qwidget.QWidget): void =

  fcQAbstractScrollArea_setCornerWidget(self.h, widget.h)

proc addScrollBarWidget*(self: QAbstractScrollArea, widget: gen_qwidget.QWidget, alignment: gen_qnamespace.AlignmentFlag): void =

  fcQAbstractScrollArea_addScrollBarWidget(self.h, widget.h, cint(alignment))

proc scrollBarWidgets*(self: QAbstractScrollArea, alignment: gen_qnamespace.AlignmentFlag): seq[gen_qwidget.QWidget] =

  var v_ma = fcQAbstractScrollArea_scrollBarWidgets(self.h, cint(alignment))
  var vx_ret = newSeq[gen_qwidget.QWidget](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwidget.QWidget(h: v_outCast[i])
  vx_ret

proc viewport*(self: QAbstractScrollArea, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQAbstractScrollArea_viewport(self.h))

proc setViewport*(self: QAbstractScrollArea, widget: gen_qwidget.QWidget): void =

  fcQAbstractScrollArea_setViewport(self.h, widget.h)

proc maximumViewportSize*(self: QAbstractScrollArea, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQAbstractScrollArea_maximumViewportSize(self.h))

proc minimumSizeHint*(self: QAbstractScrollArea, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQAbstractScrollArea_minimumSizeHint(self.h))

proc sizeHint*(self: QAbstractScrollArea, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQAbstractScrollArea_sizeHint(self.h))

proc setupViewport*(self: QAbstractScrollArea, viewport: gen_qwidget.QWidget): void =

  fcQAbstractScrollArea_setupViewport(self.h, viewport.h)

proc sizeAdjustPolicy*(self: QAbstractScrollArea, ): QAbstractScrollAreaSizeAdjustPolicy =

  QAbstractScrollAreaSizeAdjustPolicy(fcQAbstractScrollArea_sizeAdjustPolicy(self.h))

proc setSizeAdjustPolicy*(self: QAbstractScrollArea, policy: QAbstractScrollAreaSizeAdjustPolicy): void =

  fcQAbstractScrollArea_setSizeAdjustPolicy(self.h, cint(policy))

proc tr2*(_: type QAbstractScrollArea, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractScrollArea_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAbstractScrollArea, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractScrollArea_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QAbstractScrollArea, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAbstractScrollArea_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAbstractScrollAreametacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreametacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreametacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_metacall(self: ptr cQAbstractScrollArea, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAbstractScrollArea_metacall ".} =
  type Cb = proc(super: QAbstractScrollAreametacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAbstractScrollArea(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_minimumSizeHint(self: QAbstractScrollArea, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQAbstractScrollArea_virtualbase_minimumSizeHint(self.h))

type QAbstractScrollAreaminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreaminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreaminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_minimumSizeHint(self: ptr cQAbstractScrollArea, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractScrollArea_minimumSizeHint ".} =
  type Cb = proc(super: QAbstractScrollAreaminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QAbstractScrollArea(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_sizeHint(self: QAbstractScrollArea, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQAbstractScrollArea_virtualbase_sizeHint(self.h))

type QAbstractScrollAreasizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreasizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreasizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_sizeHint(self: ptr cQAbstractScrollArea, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractScrollArea_sizeHint ".} =
  type Cb = proc(super: QAbstractScrollAreasizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QAbstractScrollArea(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setupViewport(self: QAbstractScrollArea, viewport: gen_qwidget.QWidget): void =


  fQAbstractScrollArea_virtualbase_setupViewport(self.h, viewport.h)

type QAbstractScrollAreasetupViewportBase* = proc(viewport: gen_qwidget.QWidget): void
proc onsetupViewport*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreasetupViewportBase, viewport: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreasetupViewportBase, viewport: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_setupViewport(self: ptr cQAbstractScrollArea, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_setupViewport ".} =
  type Cb = proc(super: QAbstractScrollAreasetupViewportBase, viewport: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(viewport: gen_qwidget.QWidget): auto =
    callVirtualBase_setupViewport(QAbstractScrollArea(h: self), viewport)
  let slotval1 = gen_qwidget.QWidget(h: viewport)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QAbstractScrollArea, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =


  fQAbstractScrollArea_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QAbstractScrollAreaeventFilterBase* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreaeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreaeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_eventFilter(self: ptr cQAbstractScrollArea, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QAbstractScrollArea_eventFilter ".} =
  type Cb = proc(super: QAbstractScrollAreaeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAbstractScrollArea(h: self), param1, param2)
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QAbstractScrollArea, param1: gen_qcoreevent.QEvent): bool =


  fQAbstractScrollArea_virtualbase_event(self.h, param1.h)

type QAbstractScrollAreaeventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreaeventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreaeventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_event(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QAbstractScrollArea_event ".} =
  type Cb = proc(super: QAbstractScrollAreaeventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAbstractScrollArea(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_viewportEvent(self: QAbstractScrollArea, param1: gen_qcoreevent.QEvent): bool =


  fQAbstractScrollArea_virtualbase_viewportEvent(self.h, param1.h)

type QAbstractScrollAreaviewportEventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onviewportEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreaviewportEventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreaviewportEventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_viewportEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QAbstractScrollArea_viewportEvent ".} =
  type Cb = proc(super: QAbstractScrollAreaviewportEventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_viewportEvent(QAbstractScrollArea(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_resizeEvent(self: QAbstractScrollArea, param1: gen_qevent.QResizeEvent): void =


  fQAbstractScrollArea_virtualbase_resizeEvent(self.h, param1.h)

type QAbstractScrollArearesizeEventBase* = proc(param1: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollArearesizeEventBase, param1: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollArearesizeEventBase, param1: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_resizeEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_resizeEvent ".} =
  type Cb = proc(super: QAbstractScrollArearesizeEventBase, param1: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QAbstractScrollArea(h: self), param1)
  let slotval1 = gen_qevent.QResizeEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QAbstractScrollArea, param1: gen_qevent.QPaintEvent): void =


  fQAbstractScrollArea_virtualbase_paintEvent(self.h, param1.h)

type QAbstractScrollAreapaintEventBase* = proc(param1: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreapaintEventBase, param1: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreapaintEventBase, param1: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_paintEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_paintEvent ".} =
  type Cb = proc(super: QAbstractScrollAreapaintEventBase, param1: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QAbstractScrollArea(h: self), param1)
  let slotval1 = gen_qevent.QPaintEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QAbstractScrollArea, param1: gen_qevent.QMouseEvent): void =


  fQAbstractScrollArea_virtualbase_mousePressEvent(self.h, param1.h)

type QAbstractScrollAreamousePressEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreamousePressEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreamousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_mousePressEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_mousePressEvent ".} =
  type Cb = proc(super: QAbstractScrollAreamousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QAbstractScrollArea(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QAbstractScrollArea, param1: gen_qevent.QMouseEvent): void =


  fQAbstractScrollArea_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QAbstractScrollAreamouseReleaseEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreamouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreamouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_mouseReleaseEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_mouseReleaseEvent ".} =
  type Cb = proc(super: QAbstractScrollAreamouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QAbstractScrollArea(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QAbstractScrollArea, param1: gen_qevent.QMouseEvent): void =


  fQAbstractScrollArea_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

type QAbstractScrollAreamouseDoubleClickEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreamouseDoubleClickEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreamouseDoubleClickEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_mouseDoubleClickEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QAbstractScrollAreamouseDoubleClickEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QAbstractScrollArea(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QAbstractScrollArea, param1: gen_qevent.QMouseEvent): void =


  fQAbstractScrollArea_virtualbase_mouseMoveEvent(self.h, param1.h)

type QAbstractScrollAreamouseMoveEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreamouseMoveEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreamouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_mouseMoveEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_mouseMoveEvent ".} =
  type Cb = proc(super: QAbstractScrollAreamouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QAbstractScrollArea(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QAbstractScrollArea, param1: gen_qevent.QWheelEvent): void =


  fQAbstractScrollArea_virtualbase_wheelEvent(self.h, param1.h)

type QAbstractScrollAreawheelEventBase* = proc(param1: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreawheelEventBase, param1: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreawheelEventBase, param1: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_wheelEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_wheelEvent ".} =
  type Cb = proc(super: QAbstractScrollAreawheelEventBase, param1: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QAbstractScrollArea(h: self), param1)
  let slotval1 = gen_qevent.QWheelEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QAbstractScrollArea, param1: gen_qevent.QContextMenuEvent): void =


  fQAbstractScrollArea_virtualbase_contextMenuEvent(self.h, param1.h)

type QAbstractScrollAreacontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreacontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreacontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_contextMenuEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_contextMenuEvent ".} =
  type Cb = proc(super: QAbstractScrollAreacontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QAbstractScrollArea(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QAbstractScrollArea, param1: gen_qevent.QDragEnterEvent): void =


  fQAbstractScrollArea_virtualbase_dragEnterEvent(self.h, param1.h)

type QAbstractScrollAreadragEnterEventBase* = proc(param1: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreadragEnterEventBase, param1: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreadragEnterEventBase, param1: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_dragEnterEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_dragEnterEvent ".} =
  type Cb = proc(super: QAbstractScrollAreadragEnterEventBase, param1: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QAbstractScrollArea(h: self), param1)
  let slotval1 = gen_qevent.QDragEnterEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QAbstractScrollArea, param1: gen_qevent.QDragMoveEvent): void =


  fQAbstractScrollArea_virtualbase_dragMoveEvent(self.h, param1.h)

type QAbstractScrollAreadragMoveEventBase* = proc(param1: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreadragMoveEventBase, param1: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreadragMoveEventBase, param1: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_dragMoveEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_dragMoveEvent ".} =
  type Cb = proc(super: QAbstractScrollAreadragMoveEventBase, param1: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QAbstractScrollArea(h: self), param1)
  let slotval1 = gen_qevent.QDragMoveEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QAbstractScrollArea, param1: gen_qevent.QDragLeaveEvent): void =


  fQAbstractScrollArea_virtualbase_dragLeaveEvent(self.h, param1.h)

type QAbstractScrollAreadragLeaveEventBase* = proc(param1: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreadragLeaveEventBase, param1: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreadragLeaveEventBase, param1: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_dragLeaveEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_dragLeaveEvent ".} =
  type Cb = proc(super: QAbstractScrollAreadragLeaveEventBase, param1: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QAbstractScrollArea(h: self), param1)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QAbstractScrollArea, param1: gen_qevent.QDropEvent): void =


  fQAbstractScrollArea_virtualbase_dropEvent(self.h, param1.h)

type QAbstractScrollAreadropEventBase* = proc(param1: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreadropEventBase, param1: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreadropEventBase, param1: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_dropEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_dropEvent ".} =
  type Cb = proc(super: QAbstractScrollAreadropEventBase, param1: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QAbstractScrollArea(h: self), param1)
  let slotval1 = gen_qevent.QDropEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QAbstractScrollArea, param1: gen_qevent.QKeyEvent): void =


  fQAbstractScrollArea_virtualbase_keyPressEvent(self.h, param1.h)

type QAbstractScrollAreakeyPressEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreakeyPressEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreakeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_keyPressEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_keyPressEvent ".} =
  type Cb = proc(super: QAbstractScrollAreakeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QAbstractScrollArea(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_scrollContentsBy(self: QAbstractScrollArea, dx: cint, dy: cint): void =


  fQAbstractScrollArea_virtualbase_scrollContentsBy(self.h, dx, dy)

type QAbstractScrollAreascrollContentsByBase* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreascrollContentsByBase, dx: cint, dy: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreascrollContentsByBase, dx: cint, dy: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_scrollContentsBy(self: ptr cQAbstractScrollArea, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_scrollContentsBy ".} =
  type Cb = proc(super: QAbstractScrollAreascrollContentsByBase, dx: cint, dy: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(dx: cint, dy: cint): auto =
    callVirtualBase_scrollContentsBy(QAbstractScrollArea(h: self), dx, dy)
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_viewportSizeHint(self: QAbstractScrollArea, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQAbstractScrollArea_virtualbase_viewportSizeHint(self.h))

type QAbstractScrollAreaviewportSizeHintBase* = proc(): gen_qsize.QSize
proc onviewportSizeHint*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreaviewportSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreaviewportSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_viewportSizeHint(self: ptr cQAbstractScrollArea, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractScrollArea_viewportSizeHint ".} =
  type Cb = proc(super: QAbstractScrollAreaviewportSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_viewportSizeHint(QAbstractScrollArea(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_changeEvent(self: QAbstractScrollArea, param1: gen_qcoreevent.QEvent): void =


  fQAbstractScrollArea_virtualbase_changeEvent(self.h, param1.h)

type QAbstractScrollAreachangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreachangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreachangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_changeEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_changeEvent ".} =
  type Cb = proc(super: QAbstractScrollAreachangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QAbstractScrollArea(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_initStyleOption(self: QAbstractScrollArea, option: gen_qstyleoption.QStyleOptionFrame): void =


  fQAbstractScrollArea_virtualbase_initStyleOption(self.h, option.h)

type QAbstractScrollAreainitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOptionFrame): void
proc oninitStyleOption*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreainitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreainitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_initStyleOption(self: ptr cQAbstractScrollArea, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_initStyleOption ".} =
  type Cb = proc(super: QAbstractScrollAreainitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionFrame): auto =
    callVirtualBase_initStyleOption(QAbstractScrollArea(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOptionFrame(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QAbstractScrollArea, ): cint =


  fQAbstractScrollArea_virtualbase_devType(self.h)

type QAbstractScrollAreadevTypeBase* = proc(): cint
proc ondevType*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreadevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreadevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_devType(self: ptr cQAbstractScrollArea, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractScrollArea_devType ".} =
  type Cb = proc(super: QAbstractScrollAreadevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QAbstractScrollArea(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QAbstractScrollArea, visible: bool): void =


  fQAbstractScrollArea_virtualbase_setVisible(self.h, visible)

type QAbstractScrollAreasetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreasetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreasetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_setVisible(self: ptr cQAbstractScrollArea, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_setVisible ".} =
  type Cb = proc(super: QAbstractScrollAreasetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QAbstractScrollArea(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QAbstractScrollArea, param1: cint): cint =


  fQAbstractScrollArea_virtualbase_heightForWidth(self.h, param1)

type QAbstractScrollAreaheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreaheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreaheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_heightForWidth(self: ptr cQAbstractScrollArea, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QAbstractScrollArea_heightForWidth ".} =
  type Cb = proc(super: QAbstractScrollAreaheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QAbstractScrollArea(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QAbstractScrollArea, ): bool =


  fQAbstractScrollArea_virtualbase_hasHeightForWidth(self.h)

type QAbstractScrollAreahasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreahasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreahasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_hasHeightForWidth(self: ptr cQAbstractScrollArea, slot: int): bool {.exportc: "miqt_exec_callback_QAbstractScrollArea_hasHeightForWidth ".} =
  type Cb = proc(super: QAbstractScrollAreahasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QAbstractScrollArea(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QAbstractScrollArea, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQAbstractScrollArea_virtualbase_paintEngine(self.h))

type QAbstractScrollAreapaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreapaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreapaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_paintEngine(self: ptr cQAbstractScrollArea, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractScrollArea_paintEngine ".} =
  type Cb = proc(super: QAbstractScrollAreapaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QAbstractScrollArea(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_keyReleaseEvent(self: QAbstractScrollArea, event: gen_qevent.QKeyEvent): void =


  fQAbstractScrollArea_virtualbase_keyReleaseEvent(self.h, event.h)

type QAbstractScrollAreakeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreakeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreakeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_keyReleaseEvent(self: ptr cQAbstractScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_keyReleaseEvent ".} =
  type Cb = proc(super: QAbstractScrollAreakeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QAbstractScrollArea(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QAbstractScrollArea, event: gen_qevent.QFocusEvent): void =


  fQAbstractScrollArea_virtualbase_focusInEvent(self.h, event.h)

type QAbstractScrollAreafocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreafocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreafocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_focusInEvent(self: ptr cQAbstractScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_focusInEvent ".} =
  type Cb = proc(super: QAbstractScrollAreafocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QAbstractScrollArea(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QAbstractScrollArea, event: gen_qevent.QFocusEvent): void =


  fQAbstractScrollArea_virtualbase_focusOutEvent(self.h, event.h)

type QAbstractScrollAreafocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreafocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreafocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_focusOutEvent(self: ptr cQAbstractScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_focusOutEvent ".} =
  type Cb = proc(super: QAbstractScrollAreafocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QAbstractScrollArea(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QAbstractScrollArea, event: gen_qevent.QEnterEvent): void =


  fQAbstractScrollArea_virtualbase_enterEvent(self.h, event.h)

type QAbstractScrollAreaenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreaenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreaenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_enterEvent(self: ptr cQAbstractScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_enterEvent ".} =
  type Cb = proc(super: QAbstractScrollAreaenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QAbstractScrollArea(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QAbstractScrollArea, event: gen_qcoreevent.QEvent): void =


  fQAbstractScrollArea_virtualbase_leaveEvent(self.h, event.h)

type QAbstractScrollArealeaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollArealeaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollArealeaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_leaveEvent(self: ptr cQAbstractScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_leaveEvent ".} =
  type Cb = proc(super: QAbstractScrollArealeaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QAbstractScrollArea(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QAbstractScrollArea, event: gen_qevent.QMoveEvent): void =


  fQAbstractScrollArea_virtualbase_moveEvent(self.h, event.h)

type QAbstractScrollAreamoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreamoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreamoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_moveEvent(self: ptr cQAbstractScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_moveEvent ".} =
  type Cb = proc(super: QAbstractScrollAreamoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QAbstractScrollArea(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QAbstractScrollArea, event: gen_qevent.QCloseEvent): void =


  fQAbstractScrollArea_virtualbase_closeEvent(self.h, event.h)

type QAbstractScrollAreacloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreacloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreacloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_closeEvent(self: ptr cQAbstractScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_closeEvent ".} =
  type Cb = proc(super: QAbstractScrollAreacloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QAbstractScrollArea(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QAbstractScrollArea, event: gen_qevent.QTabletEvent): void =


  fQAbstractScrollArea_virtualbase_tabletEvent(self.h, event.h)

type QAbstractScrollAreatabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreatabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreatabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_tabletEvent(self: ptr cQAbstractScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_tabletEvent ".} =
  type Cb = proc(super: QAbstractScrollAreatabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QAbstractScrollArea(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QAbstractScrollArea, event: gen_qevent.QActionEvent): void =


  fQAbstractScrollArea_virtualbase_actionEvent(self.h, event.h)

type QAbstractScrollAreaactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreaactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreaactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_actionEvent(self: ptr cQAbstractScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_actionEvent ".} =
  type Cb = proc(super: QAbstractScrollAreaactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QAbstractScrollArea(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QAbstractScrollArea, event: gen_qevent.QShowEvent): void =


  fQAbstractScrollArea_virtualbase_showEvent(self.h, event.h)

type QAbstractScrollAreashowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreashowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreashowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_showEvent(self: ptr cQAbstractScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_showEvent ".} =
  type Cb = proc(super: QAbstractScrollAreashowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QAbstractScrollArea(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QAbstractScrollArea, event: gen_qevent.QHideEvent): void =


  fQAbstractScrollArea_virtualbase_hideEvent(self.h, event.h)

type QAbstractScrollAreahideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreahideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreahideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_hideEvent(self: ptr cQAbstractScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_hideEvent ".} =
  type Cb = proc(super: QAbstractScrollAreahideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QAbstractScrollArea(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QAbstractScrollArea, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQAbstractScrollArea_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QAbstractScrollAreanativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreanativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreanativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_nativeEvent(self: ptr cQAbstractScrollArea, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QAbstractScrollArea_nativeEvent ".} =
  type Cb = proc(super: QAbstractScrollAreanativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QAbstractScrollArea(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QAbstractScrollArea, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQAbstractScrollArea_virtualbase_metric(self.h, cint(param1))

type QAbstractScrollAreametricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreametricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreametricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_metric(self: ptr cQAbstractScrollArea, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QAbstractScrollArea_metric ".} =
  type Cb = proc(super: QAbstractScrollAreametricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QAbstractScrollArea(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QAbstractScrollArea, painter: gen_qpainter.QPainter): void =


  fQAbstractScrollArea_virtualbase_initPainter(self.h, painter.h)

type QAbstractScrollAreainitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreainitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreainitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_initPainter(self: ptr cQAbstractScrollArea, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_initPainter ".} =
  type Cb = proc(super: QAbstractScrollAreainitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QAbstractScrollArea(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QAbstractScrollArea, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQAbstractScrollArea_virtualbase_redirected(self.h, offset.h))

type QAbstractScrollArearedirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollArearedirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollArearedirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_redirected(self: ptr cQAbstractScrollArea, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractScrollArea_redirected ".} =
  type Cb = proc(super: QAbstractScrollArearedirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QAbstractScrollArea(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QAbstractScrollArea, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQAbstractScrollArea_virtualbase_sharedPainter(self.h))

type QAbstractScrollAreasharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreasharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreasharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_sharedPainter(self: ptr cQAbstractScrollArea, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractScrollArea_sharedPainter ".} =
  type Cb = proc(super: QAbstractScrollAreasharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QAbstractScrollArea(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QAbstractScrollArea, param1: gen_qevent.QInputMethodEvent): void =


  fQAbstractScrollArea_virtualbase_inputMethodEvent(self.h, param1.h)

type QAbstractScrollAreainputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreainputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreainputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_inputMethodEvent(self: ptr cQAbstractScrollArea, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_inputMethodEvent ".} =
  type Cb = proc(super: QAbstractScrollAreainputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QAbstractScrollArea(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QAbstractScrollArea, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQAbstractScrollArea_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QAbstractScrollAreainputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreainputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreainputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_inputMethodQuery(self: ptr cQAbstractScrollArea, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QAbstractScrollArea_inputMethodQuery ".} =
  type Cb = proc(super: QAbstractScrollAreainputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QAbstractScrollArea(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QAbstractScrollArea, next: bool): bool =


  fQAbstractScrollArea_virtualbase_focusNextPrevChild(self.h, next)

type QAbstractScrollAreafocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreafocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreafocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_focusNextPrevChild(self: ptr cQAbstractScrollArea, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QAbstractScrollArea_focusNextPrevChild ".} =
  type Cb = proc(super: QAbstractScrollAreafocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QAbstractScrollArea(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAbstractScrollArea, event: gen_qcoreevent.QTimerEvent): void =


  fQAbstractScrollArea_virtualbase_timerEvent(self.h, event.h)

type QAbstractScrollAreatimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreatimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreatimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_timerEvent(self: ptr cQAbstractScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_timerEvent ".} =
  type Cb = proc(super: QAbstractScrollAreatimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAbstractScrollArea(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAbstractScrollArea, event: gen_qcoreevent.QChildEvent): void =


  fQAbstractScrollArea_virtualbase_childEvent(self.h, event.h)

type QAbstractScrollAreachildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreachildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreachildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_childEvent(self: ptr cQAbstractScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_childEvent ".} =
  type Cb = proc(super: QAbstractScrollAreachildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAbstractScrollArea(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAbstractScrollArea, event: gen_qcoreevent.QEvent): void =


  fQAbstractScrollArea_virtualbase_customEvent(self.h, event.h)

type QAbstractScrollAreacustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreacustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreacustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_customEvent(self: ptr cQAbstractScrollArea, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_customEvent ".} =
  type Cb = proc(super: QAbstractScrollAreacustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAbstractScrollArea(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAbstractScrollArea, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractScrollArea_virtualbase_connectNotify(self.h, signal.h)

type QAbstractScrollAreaconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreaconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreaconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_connectNotify(self: ptr cQAbstractScrollArea, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_connectNotify ".} =
  type Cb = proc(super: QAbstractScrollAreaconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAbstractScrollArea(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAbstractScrollArea, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractScrollArea_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractScrollAreadisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAbstractScrollArea, slot: proc(super: QAbstractScrollAreadisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractScrollAreadisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractScrollArea_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractScrollArea_disconnectNotify(self: ptr cQAbstractScrollArea, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractScrollArea_disconnectNotify ".} =
  type Cb = proc(super: QAbstractScrollAreadisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAbstractScrollArea(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QAbstractScrollArea) =
  fcQAbstractScrollArea_delete(self.h)
