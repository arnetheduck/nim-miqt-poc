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
{.compile("gen_qabstractslider.cpp", cflags).}


type QAbstractSliderSliderAction* = cint
const
  QAbstractSliderSliderNoAction* = 0
  QAbstractSliderSliderSingleStepAdd* = 1
  QAbstractSliderSliderSingleStepSub* = 2
  QAbstractSliderSliderPageStepAdd* = 3
  QAbstractSliderSliderPageStepSub* = 4
  QAbstractSliderSliderToMinimum* = 5
  QAbstractSliderSliderToMaximum* = 6
  QAbstractSliderSliderMove* = 7



type QAbstractSliderSliderChange* = cint
const
  QAbstractSliderSliderRangeChange* = 0
  QAbstractSliderSliderOrientationChange* = 1
  QAbstractSliderSliderStepsChange* = 2
  QAbstractSliderSliderValueChange* = 3



import gen_qabstractslider_types
export gen_qabstractslider_types

import
  gen_qcoreevent,
  gen_qevent,
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

type cQAbstractSlider*{.exportc: "QAbstractSlider", incompleteStruct.} = object

proc fcQAbstractSlider_new(parent: pointer): ptr cQAbstractSlider {.importc: "QAbstractSlider_new".}
proc fcQAbstractSlider_new2(): ptr cQAbstractSlider {.importc: "QAbstractSlider_new2".}
proc fcQAbstractSlider_metaObject(self: pointer, ): pointer {.importc: "QAbstractSlider_metaObject".}
proc fcQAbstractSlider_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractSlider_metacast".}
proc fcQAbstractSlider_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractSlider_metacall".}
proc fcQAbstractSlider_tr(s: cstring): struct_miqt_string {.importc: "QAbstractSlider_tr".}
proc fcQAbstractSlider_orientation(self: pointer, ): cint {.importc: "QAbstractSlider_orientation".}
proc fcQAbstractSlider_setMinimum(self: pointer, minimum: cint): void {.importc: "QAbstractSlider_setMinimum".}
proc fcQAbstractSlider_minimum(self: pointer, ): cint {.importc: "QAbstractSlider_minimum".}
proc fcQAbstractSlider_setMaximum(self: pointer, maximum: cint): void {.importc: "QAbstractSlider_setMaximum".}
proc fcQAbstractSlider_maximum(self: pointer, ): cint {.importc: "QAbstractSlider_maximum".}
proc fcQAbstractSlider_setSingleStep(self: pointer, singleStep: cint): void {.importc: "QAbstractSlider_setSingleStep".}
proc fcQAbstractSlider_singleStep(self: pointer, ): cint {.importc: "QAbstractSlider_singleStep".}
proc fcQAbstractSlider_setPageStep(self: pointer, pageStep: cint): void {.importc: "QAbstractSlider_setPageStep".}
proc fcQAbstractSlider_pageStep(self: pointer, ): cint {.importc: "QAbstractSlider_pageStep".}
proc fcQAbstractSlider_setTracking(self: pointer, enable: bool): void {.importc: "QAbstractSlider_setTracking".}
proc fcQAbstractSlider_hasTracking(self: pointer, ): bool {.importc: "QAbstractSlider_hasTracking".}
proc fcQAbstractSlider_setSliderDown(self: pointer, sliderDown: bool): void {.importc: "QAbstractSlider_setSliderDown".}
proc fcQAbstractSlider_isSliderDown(self: pointer, ): bool {.importc: "QAbstractSlider_isSliderDown".}
proc fcQAbstractSlider_setSliderPosition(self: pointer, sliderPosition: cint): void {.importc: "QAbstractSlider_setSliderPosition".}
proc fcQAbstractSlider_sliderPosition(self: pointer, ): cint {.importc: "QAbstractSlider_sliderPosition".}
proc fcQAbstractSlider_setInvertedAppearance(self: pointer, invertedAppearance: bool): void {.importc: "QAbstractSlider_setInvertedAppearance".}
proc fcQAbstractSlider_invertedAppearance(self: pointer, ): bool {.importc: "QAbstractSlider_invertedAppearance".}
proc fcQAbstractSlider_setInvertedControls(self: pointer, invertedControls: bool): void {.importc: "QAbstractSlider_setInvertedControls".}
proc fcQAbstractSlider_invertedControls(self: pointer, ): bool {.importc: "QAbstractSlider_invertedControls".}
proc fcQAbstractSlider_value(self: pointer, ): cint {.importc: "QAbstractSlider_value".}
proc fcQAbstractSlider_triggerAction(self: pointer, action: cint): void {.importc: "QAbstractSlider_triggerAction".}
proc fcQAbstractSlider_setValue(self: pointer, value: cint): void {.importc: "QAbstractSlider_setValue".}
proc fcQAbstractSlider_setOrientation(self: pointer, orientation: cint): void {.importc: "QAbstractSlider_setOrientation".}
proc fcQAbstractSlider_setRange(self: pointer, min: cint, max: cint): void {.importc: "QAbstractSlider_setRange".}
proc fcQAbstractSlider_valueChanged(self: pointer, value: cint): void {.importc: "QAbstractSlider_valueChanged".}
proc fQAbstractSlider_connect_valueChanged(self: pointer, slot: int) {.importc: "QAbstractSlider_connect_valueChanged".}
proc fcQAbstractSlider_sliderPressed(self: pointer, ): void {.importc: "QAbstractSlider_sliderPressed".}
proc fQAbstractSlider_connect_sliderPressed(self: pointer, slot: int) {.importc: "QAbstractSlider_connect_sliderPressed".}
proc fcQAbstractSlider_sliderMoved(self: pointer, position: cint): void {.importc: "QAbstractSlider_sliderMoved".}
proc fQAbstractSlider_connect_sliderMoved(self: pointer, slot: int) {.importc: "QAbstractSlider_connect_sliderMoved".}
proc fcQAbstractSlider_sliderReleased(self: pointer, ): void {.importc: "QAbstractSlider_sliderReleased".}
proc fQAbstractSlider_connect_sliderReleased(self: pointer, slot: int) {.importc: "QAbstractSlider_connect_sliderReleased".}
proc fcQAbstractSlider_rangeChanged(self: pointer, min: cint, max: cint): void {.importc: "QAbstractSlider_rangeChanged".}
proc fQAbstractSlider_connect_rangeChanged(self: pointer, slot: int) {.importc: "QAbstractSlider_connect_rangeChanged".}
proc fcQAbstractSlider_actionTriggered(self: pointer, action: cint): void {.importc: "QAbstractSlider_actionTriggered".}
proc fQAbstractSlider_connect_actionTriggered(self: pointer, slot: int) {.importc: "QAbstractSlider_connect_actionTriggered".}
proc fcQAbstractSlider_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractSlider_tr2".}
proc fcQAbstractSlider_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractSlider_tr3".}
proc fQAbstractSlider_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAbstractSlider_virtualbase_metacall".}
proc fcQAbstractSlider_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_metacall".}
proc fQAbstractSlider_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QAbstractSlider_virtualbase_event".}
proc fcQAbstractSlider_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_event".}
proc fQAbstractSlider_virtualbase_sliderChange(self: pointer, change: cint): void{.importc: "QAbstractSlider_virtualbase_sliderChange".}
proc fcQAbstractSlider_override_virtual_sliderChange(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_sliderChange".}
proc fQAbstractSlider_virtualbase_keyPressEvent(self: pointer, ev: pointer): void{.importc: "QAbstractSlider_virtualbase_keyPressEvent".}
proc fcQAbstractSlider_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_keyPressEvent".}
proc fQAbstractSlider_virtualbase_timerEvent(self: pointer, param1: pointer): void{.importc: "QAbstractSlider_virtualbase_timerEvent".}
proc fcQAbstractSlider_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_timerEvent".}
proc fQAbstractSlider_virtualbase_wheelEvent(self: pointer, e: pointer): void{.importc: "QAbstractSlider_virtualbase_wheelEvent".}
proc fcQAbstractSlider_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_wheelEvent".}
proc fQAbstractSlider_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QAbstractSlider_virtualbase_changeEvent".}
proc fcQAbstractSlider_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_changeEvent".}
proc fQAbstractSlider_virtualbase_devType(self: pointer, ): cint{.importc: "QAbstractSlider_virtualbase_devType".}
proc fcQAbstractSlider_override_virtual_devType(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_devType".}
proc fQAbstractSlider_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QAbstractSlider_virtualbase_setVisible".}
proc fcQAbstractSlider_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_setVisible".}
proc fQAbstractSlider_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QAbstractSlider_virtualbase_sizeHint".}
proc fcQAbstractSlider_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_sizeHint".}
proc fQAbstractSlider_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QAbstractSlider_virtualbase_minimumSizeHint".}
proc fcQAbstractSlider_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_minimumSizeHint".}
proc fQAbstractSlider_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QAbstractSlider_virtualbase_heightForWidth".}
proc fcQAbstractSlider_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_heightForWidth".}
proc fQAbstractSlider_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QAbstractSlider_virtualbase_hasHeightForWidth".}
proc fcQAbstractSlider_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_hasHeightForWidth".}
proc fQAbstractSlider_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QAbstractSlider_virtualbase_paintEngine".}
proc fcQAbstractSlider_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_paintEngine".}
proc fQAbstractSlider_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_mousePressEvent".}
proc fcQAbstractSlider_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_mousePressEvent".}
proc fQAbstractSlider_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_mouseReleaseEvent".}
proc fcQAbstractSlider_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_mouseReleaseEvent".}
proc fQAbstractSlider_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_mouseDoubleClickEvent".}
proc fcQAbstractSlider_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_mouseDoubleClickEvent".}
proc fQAbstractSlider_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_mouseMoveEvent".}
proc fcQAbstractSlider_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_mouseMoveEvent".}
proc fQAbstractSlider_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_keyReleaseEvent".}
proc fcQAbstractSlider_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_keyReleaseEvent".}
proc fQAbstractSlider_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_focusInEvent".}
proc fcQAbstractSlider_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_focusInEvent".}
proc fQAbstractSlider_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_focusOutEvent".}
proc fcQAbstractSlider_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_focusOutEvent".}
proc fQAbstractSlider_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_enterEvent".}
proc fcQAbstractSlider_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_enterEvent".}
proc fQAbstractSlider_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_leaveEvent".}
proc fcQAbstractSlider_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_leaveEvent".}
proc fQAbstractSlider_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_paintEvent".}
proc fcQAbstractSlider_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_paintEvent".}
proc fQAbstractSlider_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_moveEvent".}
proc fcQAbstractSlider_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_moveEvent".}
proc fQAbstractSlider_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_resizeEvent".}
proc fcQAbstractSlider_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_resizeEvent".}
proc fQAbstractSlider_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_closeEvent".}
proc fcQAbstractSlider_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_closeEvent".}
proc fQAbstractSlider_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_contextMenuEvent".}
proc fcQAbstractSlider_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_contextMenuEvent".}
proc fQAbstractSlider_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_tabletEvent".}
proc fcQAbstractSlider_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_tabletEvent".}
proc fQAbstractSlider_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_actionEvent".}
proc fcQAbstractSlider_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_actionEvent".}
proc fQAbstractSlider_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_dragEnterEvent".}
proc fcQAbstractSlider_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_dragEnterEvent".}
proc fQAbstractSlider_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_dragMoveEvent".}
proc fcQAbstractSlider_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_dragMoveEvent".}
proc fQAbstractSlider_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_dragLeaveEvent".}
proc fcQAbstractSlider_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_dragLeaveEvent".}
proc fQAbstractSlider_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_dropEvent".}
proc fcQAbstractSlider_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_dropEvent".}
proc fQAbstractSlider_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_showEvent".}
proc fcQAbstractSlider_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_showEvent".}
proc fQAbstractSlider_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_hideEvent".}
proc fcQAbstractSlider_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_hideEvent".}
proc fQAbstractSlider_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QAbstractSlider_virtualbase_nativeEvent".}
proc fcQAbstractSlider_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_nativeEvent".}
proc fQAbstractSlider_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QAbstractSlider_virtualbase_metric".}
proc fcQAbstractSlider_override_virtual_metric(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_metric".}
proc fQAbstractSlider_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QAbstractSlider_virtualbase_initPainter".}
proc fcQAbstractSlider_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_initPainter".}
proc fQAbstractSlider_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QAbstractSlider_virtualbase_redirected".}
proc fcQAbstractSlider_override_virtual_redirected(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_redirected".}
proc fQAbstractSlider_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QAbstractSlider_virtualbase_sharedPainter".}
proc fcQAbstractSlider_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_sharedPainter".}
proc fQAbstractSlider_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QAbstractSlider_virtualbase_inputMethodEvent".}
proc fcQAbstractSlider_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_inputMethodEvent".}
proc fQAbstractSlider_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QAbstractSlider_virtualbase_inputMethodQuery".}
proc fcQAbstractSlider_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_inputMethodQuery".}
proc fQAbstractSlider_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QAbstractSlider_virtualbase_focusNextPrevChild".}
proc fcQAbstractSlider_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_focusNextPrevChild".}
proc fQAbstractSlider_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractSlider_virtualbase_eventFilter".}
proc fcQAbstractSlider_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_eventFilter".}
proc fQAbstractSlider_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_childEvent".}
proc fcQAbstractSlider_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_childEvent".}
proc fQAbstractSlider_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_customEvent".}
proc fcQAbstractSlider_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_customEvent".}
proc fQAbstractSlider_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractSlider_virtualbase_connectNotify".}
proc fcQAbstractSlider_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_connectNotify".}
proc fQAbstractSlider_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractSlider_virtualbase_disconnectNotify".}
proc fcQAbstractSlider_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_disconnectNotify".}
proc fcQAbstractSlider_staticMetaObject(): pointer {.importc: "QAbstractSlider_staticMetaObject".}
proc fcQAbstractSlider_delete(self: pointer) {.importc: "QAbstractSlider_delete".}


func init*(T: type QAbstractSlider, h: ptr cQAbstractSlider): QAbstractSlider =
  T(h: h)
proc create*(T: type QAbstractSlider, parent: gen_qwidget.QWidget): QAbstractSlider =

  QAbstractSlider.init(fcQAbstractSlider_new(parent.h))
proc create*(T: type QAbstractSlider, ): QAbstractSlider =

  QAbstractSlider.init(fcQAbstractSlider_new2())
proc metaObject*(self: QAbstractSlider, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAbstractSlider_metaObject(self.h))

proc metacast*(self: QAbstractSlider, param1: cstring): pointer =

  fcQAbstractSlider_metacast(self.h, param1)

proc metacall*(self: QAbstractSlider, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAbstractSlider_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAbstractSlider, s: cstring): string =

  let v_ms = fcQAbstractSlider_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc orientation*(self: QAbstractSlider, ): gen_qnamespace.Orientation =

  gen_qnamespace.Orientation(fcQAbstractSlider_orientation(self.h))

proc setMinimum*(self: QAbstractSlider, minimum: cint): void =

  fcQAbstractSlider_setMinimum(self.h, minimum)

proc minimum*(self: QAbstractSlider, ): cint =

  fcQAbstractSlider_minimum(self.h)

proc setMaximum*(self: QAbstractSlider, maximum: cint): void =

  fcQAbstractSlider_setMaximum(self.h, maximum)

proc maximum*(self: QAbstractSlider, ): cint =

  fcQAbstractSlider_maximum(self.h)

proc setSingleStep*(self: QAbstractSlider, singleStep: cint): void =

  fcQAbstractSlider_setSingleStep(self.h, singleStep)

proc singleStep*(self: QAbstractSlider, ): cint =

  fcQAbstractSlider_singleStep(self.h)

proc setPageStep*(self: QAbstractSlider, pageStep: cint): void =

  fcQAbstractSlider_setPageStep(self.h, pageStep)

proc pageStep*(self: QAbstractSlider, ): cint =

  fcQAbstractSlider_pageStep(self.h)

proc setTracking*(self: QAbstractSlider, enable: bool): void =

  fcQAbstractSlider_setTracking(self.h, enable)

proc hasTracking*(self: QAbstractSlider, ): bool =

  fcQAbstractSlider_hasTracking(self.h)

proc setSliderDown*(self: QAbstractSlider, sliderDown: bool): void =

  fcQAbstractSlider_setSliderDown(self.h, sliderDown)

proc isSliderDown*(self: QAbstractSlider, ): bool =

  fcQAbstractSlider_isSliderDown(self.h)

proc setSliderPosition*(self: QAbstractSlider, sliderPosition: cint): void =

  fcQAbstractSlider_setSliderPosition(self.h, sliderPosition)

proc sliderPosition*(self: QAbstractSlider, ): cint =

  fcQAbstractSlider_sliderPosition(self.h)

proc setInvertedAppearance*(self: QAbstractSlider, invertedAppearance: bool): void =

  fcQAbstractSlider_setInvertedAppearance(self.h, invertedAppearance)

proc invertedAppearance*(self: QAbstractSlider, ): bool =

  fcQAbstractSlider_invertedAppearance(self.h)

proc setInvertedControls*(self: QAbstractSlider, invertedControls: bool): void =

  fcQAbstractSlider_setInvertedControls(self.h, invertedControls)

proc invertedControls*(self: QAbstractSlider, ): bool =

  fcQAbstractSlider_invertedControls(self.h)

proc value*(self: QAbstractSlider, ): cint =

  fcQAbstractSlider_value(self.h)

proc triggerAction*(self: QAbstractSlider, action: QAbstractSliderSliderAction): void =

  fcQAbstractSlider_triggerAction(self.h, cint(action))

proc setValue*(self: QAbstractSlider, value: cint): void =

  fcQAbstractSlider_setValue(self.h, value)

proc setOrientation*(self: QAbstractSlider, orientation: gen_qnamespace.Orientation): void =

  fcQAbstractSlider_setOrientation(self.h, cint(orientation))

proc setRange*(self: QAbstractSlider, min: cint, max: cint): void =

  fcQAbstractSlider_setRange(self.h, min, max)

proc valueChanged*(self: QAbstractSlider, value: cint): void =

  fcQAbstractSlider_valueChanged(self.h, value)

proc miqt_exec_callback_QAbstractSlider_valueChanged(slot: int, value: cint) {.exportc.} =
  type Cb = proc(value: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)

proc onvalueChanged*(self: QAbstractSlider, slot: proc(value: cint)) =
  type Cb = proc(value: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractSlider_connect_valueChanged(self.h, cast[int](addr tmp[]))
proc sliderPressed*(self: QAbstractSlider, ): void =

  fcQAbstractSlider_sliderPressed(self.h)

proc miqt_exec_callback_QAbstractSlider_sliderPressed(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onsliderPressed*(self: QAbstractSlider, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractSlider_connect_sliderPressed(self.h, cast[int](addr tmp[]))
proc sliderMoved*(self: QAbstractSlider, position: cint): void =

  fcQAbstractSlider_sliderMoved(self.h, position)

proc miqt_exec_callback_QAbstractSlider_sliderMoved(slot: int, position: cint) {.exportc.} =
  type Cb = proc(position: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = position


  nimfunc[](slotval1)

proc onsliderMoved*(self: QAbstractSlider, slot: proc(position: cint)) =
  type Cb = proc(position: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractSlider_connect_sliderMoved(self.h, cast[int](addr tmp[]))
proc sliderReleased*(self: QAbstractSlider, ): void =

  fcQAbstractSlider_sliderReleased(self.h)

proc miqt_exec_callback_QAbstractSlider_sliderReleased(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onsliderReleased*(self: QAbstractSlider, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractSlider_connect_sliderReleased(self.h, cast[int](addr tmp[]))
proc rangeChanged*(self: QAbstractSlider, min: cint, max: cint): void =

  fcQAbstractSlider_rangeChanged(self.h, min, max)

proc miqt_exec_callback_QAbstractSlider_rangeChanged(slot: int, min: cint, max: cint) {.exportc.} =
  type Cb = proc(min: cint, max: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = min

  let slotval2 = max


  nimfunc[](slotval1, slotval2)

proc onrangeChanged*(self: QAbstractSlider, slot: proc(min: cint, max: cint)) =
  type Cb = proc(min: cint, max: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractSlider_connect_rangeChanged(self.h, cast[int](addr tmp[]))
proc actionTriggered*(self: QAbstractSlider, action: cint): void =

  fcQAbstractSlider_actionTriggered(self.h, action)

proc miqt_exec_callback_QAbstractSlider_actionTriggered(slot: int, action: cint) {.exportc.} =
  type Cb = proc(action: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = action


  nimfunc[](slotval1)

proc onactionTriggered*(self: QAbstractSlider, slot: proc(action: cint)) =
  type Cb = proc(action: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractSlider_connect_actionTriggered(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QAbstractSlider, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractSlider_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAbstractSlider, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractSlider_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QAbstractSlider, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAbstractSlider_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAbstractSlidermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAbstractSlider, slot: proc(super: QAbstractSlidermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSlidermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_metacall(self: ptr cQAbstractSlider, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAbstractSlider_metacall ".} =
  type Cb = proc(super: QAbstractSlidermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAbstractSlider(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QAbstractSlider, e: gen_qcoreevent.QEvent): bool =


  fQAbstractSlider_virtualbase_event(self.h, e.h)

type QAbstractSlidereventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAbstractSlider, slot: proc(super: QAbstractSlidereventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSlidereventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_event(self: ptr cQAbstractSlider, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QAbstractSlider_event ".} =
  type Cb = proc(super: QAbstractSlidereventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAbstractSlider(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_sliderChange(self: QAbstractSlider, change: QAbstractSliderSliderChange): void =


  fQAbstractSlider_virtualbase_sliderChange(self.h, cint(change))

type QAbstractSlidersliderChangeBase* = proc(change: QAbstractSliderSliderChange): void
proc onsliderChange*(self: QAbstractSlider, slot: proc(super: QAbstractSlidersliderChangeBase, change: QAbstractSliderSliderChange): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSlidersliderChangeBase, change: QAbstractSliderSliderChange): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_sliderChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_sliderChange(self: ptr cQAbstractSlider, slot: int, change: cint): void {.exportc: "miqt_exec_callback_QAbstractSlider_sliderChange ".} =
  type Cb = proc(super: QAbstractSlidersliderChangeBase, change: QAbstractSliderSliderChange): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(change: QAbstractSliderSliderChange): auto =
    callVirtualBase_sliderChange(QAbstractSlider(h: self), change)
  let slotval1 = QAbstractSliderSliderChange(change)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QAbstractSlider, ev: gen_qevent.QKeyEvent): void =


  fQAbstractSlider_virtualbase_keyPressEvent(self.h, ev.h)

type QAbstractSliderkeyPressEventBase* = proc(ev: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSliderkeyPressEventBase, ev: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSliderkeyPressEventBase, ev: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_keyPressEvent(self: ptr cQAbstractSlider, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_keyPressEvent ".} =
  type Cb = proc(super: QAbstractSliderkeyPressEventBase, ev: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(ev: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QAbstractSlider(h: self), ev)
  let slotval1 = gen_qevent.QKeyEvent(h: ev)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QAbstractSlider, param1: gen_qcoreevent.QTimerEvent): void =


  fQAbstractSlider_virtualbase_timerEvent(self.h, param1.h)

type QAbstractSlidertimerEventBase* = proc(param1: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSlidertimerEventBase, param1: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSlidertimerEventBase, param1: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_timerEvent(self: ptr cQAbstractSlider, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_timerEvent ".} =
  type Cb = proc(super: QAbstractSlidertimerEventBase, param1: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAbstractSlider(h: self), param1)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QAbstractSlider, e: gen_qevent.QWheelEvent): void =


  fQAbstractSlider_virtualbase_wheelEvent(self.h, e.h)

type QAbstractSliderwheelEventBase* = proc(e: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSliderwheelEventBase, e: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSliderwheelEventBase, e: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_wheelEvent(self: ptr cQAbstractSlider, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_wheelEvent ".} =
  type Cb = proc(super: QAbstractSliderwheelEventBase, e: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QAbstractSlider(h: self), e)
  let slotval1 = gen_qevent.QWheelEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QAbstractSlider, e: gen_qcoreevent.QEvent): void =


  fQAbstractSlider_virtualbase_changeEvent(self.h, e.h)

type QAbstractSliderchangeEventBase* = proc(e: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSliderchangeEventBase, e: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSliderchangeEventBase, e: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_changeEvent(self: ptr cQAbstractSlider, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_changeEvent ".} =
  type Cb = proc(super: QAbstractSliderchangeEventBase, e: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QAbstractSlider(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QAbstractSlider, ): cint =


  fQAbstractSlider_virtualbase_devType(self.h)

type QAbstractSliderdevTypeBase* = proc(): cint
proc ondevType*(self: QAbstractSlider, slot: proc(super: QAbstractSliderdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSliderdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_devType(self: ptr cQAbstractSlider, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractSlider_devType ".} =
  type Cb = proc(super: QAbstractSliderdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QAbstractSlider(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QAbstractSlider, visible: bool): void =


  fQAbstractSlider_virtualbase_setVisible(self.h, visible)

type QAbstractSlidersetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QAbstractSlider, slot: proc(super: QAbstractSlidersetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSlidersetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_setVisible(self: ptr cQAbstractSlider, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QAbstractSlider_setVisible ".} =
  type Cb = proc(super: QAbstractSlidersetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QAbstractSlider(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QAbstractSlider, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQAbstractSlider_virtualbase_sizeHint(self.h))

type QAbstractSlidersizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QAbstractSlider, slot: proc(super: QAbstractSlidersizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSlidersizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_sizeHint(self: ptr cQAbstractSlider, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractSlider_sizeHint ".} =
  type Cb = proc(super: QAbstractSlidersizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QAbstractSlider(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QAbstractSlider, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQAbstractSlider_virtualbase_minimumSizeHint(self.h))

type QAbstractSliderminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QAbstractSlider, slot: proc(super: QAbstractSliderminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSliderminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_minimumSizeHint(self: ptr cQAbstractSlider, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractSlider_minimumSizeHint ".} =
  type Cb = proc(super: QAbstractSliderminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QAbstractSlider(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QAbstractSlider, param1: cint): cint =


  fQAbstractSlider_virtualbase_heightForWidth(self.h, param1)

type QAbstractSliderheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QAbstractSlider, slot: proc(super: QAbstractSliderheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSliderheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_heightForWidth(self: ptr cQAbstractSlider, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QAbstractSlider_heightForWidth ".} =
  type Cb = proc(super: QAbstractSliderheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QAbstractSlider(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QAbstractSlider, ): bool =


  fQAbstractSlider_virtualbase_hasHeightForWidth(self.h)

type QAbstractSliderhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QAbstractSlider, slot: proc(super: QAbstractSliderhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSliderhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_hasHeightForWidth(self: ptr cQAbstractSlider, slot: int): bool {.exportc: "miqt_exec_callback_QAbstractSlider_hasHeightForWidth ".} =
  type Cb = proc(super: QAbstractSliderhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QAbstractSlider(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QAbstractSlider, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQAbstractSlider_virtualbase_paintEngine(self.h))

type QAbstractSliderpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QAbstractSlider, slot: proc(super: QAbstractSliderpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSliderpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_paintEngine(self: ptr cQAbstractSlider, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractSlider_paintEngine ".} =
  type Cb = proc(super: QAbstractSliderpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QAbstractSlider(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mousePressEvent(self: QAbstractSlider, event: gen_qevent.QMouseEvent): void =


  fQAbstractSlider_virtualbase_mousePressEvent(self.h, event.h)

type QAbstractSlidermousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSlidermousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSlidermousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_mousePressEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_mousePressEvent ".} =
  type Cb = proc(super: QAbstractSlidermousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QAbstractSlider(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QAbstractSlider, event: gen_qevent.QMouseEvent): void =


  fQAbstractSlider_virtualbase_mouseReleaseEvent(self.h, event.h)

type QAbstractSlidermouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSlidermouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSlidermouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_mouseReleaseEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_mouseReleaseEvent ".} =
  type Cb = proc(super: QAbstractSlidermouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QAbstractSlider(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QAbstractSlider, event: gen_qevent.QMouseEvent): void =


  fQAbstractSlider_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QAbstractSlidermouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSlidermouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSlidermouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_mouseDoubleClickEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QAbstractSlidermouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QAbstractSlider(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QAbstractSlider, event: gen_qevent.QMouseEvent): void =


  fQAbstractSlider_virtualbase_mouseMoveEvent(self.h, event.h)

type QAbstractSlidermouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSlidermouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSlidermouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_mouseMoveEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_mouseMoveEvent ".} =
  type Cb = proc(super: QAbstractSlidermouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QAbstractSlider(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QAbstractSlider, event: gen_qevent.QKeyEvent): void =


  fQAbstractSlider_virtualbase_keyReleaseEvent(self.h, event.h)

type QAbstractSliderkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSliderkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSliderkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_keyReleaseEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_keyReleaseEvent ".} =
  type Cb = proc(super: QAbstractSliderkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QAbstractSlider(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QAbstractSlider, event: gen_qevent.QFocusEvent): void =


  fQAbstractSlider_virtualbase_focusInEvent(self.h, event.h)

type QAbstractSliderfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSliderfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSliderfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_focusInEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_focusInEvent ".} =
  type Cb = proc(super: QAbstractSliderfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QAbstractSlider(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QAbstractSlider, event: gen_qevent.QFocusEvent): void =


  fQAbstractSlider_virtualbase_focusOutEvent(self.h, event.h)

type QAbstractSliderfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSliderfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSliderfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_focusOutEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_focusOutEvent ".} =
  type Cb = proc(super: QAbstractSliderfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QAbstractSlider(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QAbstractSlider, event: gen_qevent.QEnterEvent): void =


  fQAbstractSlider_virtualbase_enterEvent(self.h, event.h)

type QAbstractSliderenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSliderenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSliderenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_enterEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_enterEvent ".} =
  type Cb = proc(super: QAbstractSliderenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QAbstractSlider(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QAbstractSlider, event: gen_qcoreevent.QEvent): void =


  fQAbstractSlider_virtualbase_leaveEvent(self.h, event.h)

type QAbstractSliderleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSliderleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSliderleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_leaveEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_leaveEvent ".} =
  type Cb = proc(super: QAbstractSliderleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QAbstractSlider(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QAbstractSlider, event: gen_qevent.QPaintEvent): void =


  fQAbstractSlider_virtualbase_paintEvent(self.h, event.h)

type QAbstractSliderpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSliderpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSliderpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_paintEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_paintEvent ".} =
  type Cb = proc(super: QAbstractSliderpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QAbstractSlider(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QAbstractSlider, event: gen_qevent.QMoveEvent): void =


  fQAbstractSlider_virtualbase_moveEvent(self.h, event.h)

type QAbstractSlidermoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSlidermoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSlidermoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_moveEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_moveEvent ".} =
  type Cb = proc(super: QAbstractSlidermoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QAbstractSlider(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QAbstractSlider, event: gen_qevent.QResizeEvent): void =


  fQAbstractSlider_virtualbase_resizeEvent(self.h, event.h)

type QAbstractSliderresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSliderresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSliderresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_resizeEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_resizeEvent ".} =
  type Cb = proc(super: QAbstractSliderresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QAbstractSlider(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QAbstractSlider, event: gen_qevent.QCloseEvent): void =


  fQAbstractSlider_virtualbase_closeEvent(self.h, event.h)

type QAbstractSlidercloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSlidercloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSlidercloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_closeEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_closeEvent ".} =
  type Cb = proc(super: QAbstractSlidercloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QAbstractSlider(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QAbstractSlider, event: gen_qevent.QContextMenuEvent): void =


  fQAbstractSlider_virtualbase_contextMenuEvent(self.h, event.h)

type QAbstractSlidercontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSlidercontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSlidercontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_contextMenuEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_contextMenuEvent ".} =
  type Cb = proc(super: QAbstractSlidercontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QAbstractSlider(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QAbstractSlider, event: gen_qevent.QTabletEvent): void =


  fQAbstractSlider_virtualbase_tabletEvent(self.h, event.h)

type QAbstractSlidertabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSlidertabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSlidertabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_tabletEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_tabletEvent ".} =
  type Cb = proc(super: QAbstractSlidertabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QAbstractSlider(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QAbstractSlider, event: gen_qevent.QActionEvent): void =


  fQAbstractSlider_virtualbase_actionEvent(self.h, event.h)

type QAbstractSlideractionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSlideractionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSlideractionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_actionEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_actionEvent ".} =
  type Cb = proc(super: QAbstractSlideractionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QAbstractSlider(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QAbstractSlider, event: gen_qevent.QDragEnterEvent): void =


  fQAbstractSlider_virtualbase_dragEnterEvent(self.h, event.h)

type QAbstractSliderdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSliderdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSliderdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_dragEnterEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_dragEnterEvent ".} =
  type Cb = proc(super: QAbstractSliderdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QAbstractSlider(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QAbstractSlider, event: gen_qevent.QDragMoveEvent): void =


  fQAbstractSlider_virtualbase_dragMoveEvent(self.h, event.h)

type QAbstractSliderdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSliderdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSliderdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_dragMoveEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_dragMoveEvent ".} =
  type Cb = proc(super: QAbstractSliderdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QAbstractSlider(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QAbstractSlider, event: gen_qevent.QDragLeaveEvent): void =


  fQAbstractSlider_virtualbase_dragLeaveEvent(self.h, event.h)

type QAbstractSliderdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSliderdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSliderdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_dragLeaveEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_dragLeaveEvent ".} =
  type Cb = proc(super: QAbstractSliderdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QAbstractSlider(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QAbstractSlider, event: gen_qevent.QDropEvent): void =


  fQAbstractSlider_virtualbase_dropEvent(self.h, event.h)

type QAbstractSliderdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSliderdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSliderdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_dropEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_dropEvent ".} =
  type Cb = proc(super: QAbstractSliderdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QAbstractSlider(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QAbstractSlider, event: gen_qevent.QShowEvent): void =


  fQAbstractSlider_virtualbase_showEvent(self.h, event.h)

type QAbstractSlidershowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSlidershowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSlidershowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_showEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_showEvent ".} =
  type Cb = proc(super: QAbstractSlidershowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QAbstractSlider(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QAbstractSlider, event: gen_qevent.QHideEvent): void =


  fQAbstractSlider_virtualbase_hideEvent(self.h, event.h)

type QAbstractSliderhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSliderhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSliderhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_hideEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_hideEvent ".} =
  type Cb = proc(super: QAbstractSliderhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QAbstractSlider(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QAbstractSlider, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQAbstractSlider_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QAbstractSlidernativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSlidernativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSlidernativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_nativeEvent(self: ptr cQAbstractSlider, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QAbstractSlider_nativeEvent ".} =
  type Cb = proc(super: QAbstractSlidernativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QAbstractSlider(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QAbstractSlider, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQAbstractSlider_virtualbase_metric(self.h, cint(param1))

type QAbstractSlidermetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QAbstractSlider, slot: proc(super: QAbstractSlidermetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSlidermetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_metric(self: ptr cQAbstractSlider, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QAbstractSlider_metric ".} =
  type Cb = proc(super: QAbstractSlidermetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QAbstractSlider(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QAbstractSlider, painter: gen_qpainter.QPainter): void =


  fQAbstractSlider_virtualbase_initPainter(self.h, painter.h)

type QAbstractSliderinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QAbstractSlider, slot: proc(super: QAbstractSliderinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSliderinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_initPainter(self: ptr cQAbstractSlider, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_initPainter ".} =
  type Cb = proc(super: QAbstractSliderinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QAbstractSlider(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QAbstractSlider, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQAbstractSlider_virtualbase_redirected(self.h, offset.h))

type QAbstractSliderredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QAbstractSlider, slot: proc(super: QAbstractSliderredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSliderredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_redirected(self: ptr cQAbstractSlider, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractSlider_redirected ".} =
  type Cb = proc(super: QAbstractSliderredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QAbstractSlider(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QAbstractSlider, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQAbstractSlider_virtualbase_sharedPainter(self.h))

type QAbstractSlidersharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QAbstractSlider, slot: proc(super: QAbstractSlidersharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSlidersharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_sharedPainter(self: ptr cQAbstractSlider, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractSlider_sharedPainter ".} =
  type Cb = proc(super: QAbstractSlidersharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QAbstractSlider(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QAbstractSlider, param1: gen_qevent.QInputMethodEvent): void =


  fQAbstractSlider_virtualbase_inputMethodEvent(self.h, param1.h)

type QAbstractSliderinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSliderinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSliderinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_inputMethodEvent(self: ptr cQAbstractSlider, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_inputMethodEvent ".} =
  type Cb = proc(super: QAbstractSliderinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QAbstractSlider(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QAbstractSlider, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQAbstractSlider_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QAbstractSliderinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QAbstractSlider, slot: proc(super: QAbstractSliderinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSliderinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_inputMethodQuery(self: ptr cQAbstractSlider, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QAbstractSlider_inputMethodQuery ".} =
  type Cb = proc(super: QAbstractSliderinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QAbstractSlider(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QAbstractSlider, next: bool): bool =


  fQAbstractSlider_virtualbase_focusNextPrevChild(self.h, next)

type QAbstractSliderfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QAbstractSlider, slot: proc(super: QAbstractSliderfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSliderfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_focusNextPrevChild(self: ptr cQAbstractSlider, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QAbstractSlider_focusNextPrevChild ".} =
  type Cb = proc(super: QAbstractSliderfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QAbstractSlider(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QAbstractSlider, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAbstractSlider_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAbstractSlidereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAbstractSlider, slot: proc(super: QAbstractSlidereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSlidereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_eventFilter(self: ptr cQAbstractSlider, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractSlider_eventFilter ".} =
  type Cb = proc(super: QAbstractSlidereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAbstractSlider(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_childEvent(self: QAbstractSlider, event: gen_qcoreevent.QChildEvent): void =


  fQAbstractSlider_virtualbase_childEvent(self.h, event.h)

type QAbstractSliderchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSliderchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSliderchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_childEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_childEvent ".} =
  type Cb = proc(super: QAbstractSliderchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAbstractSlider(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAbstractSlider, event: gen_qcoreevent.QEvent): void =


  fQAbstractSlider_virtualbase_customEvent(self.h, event.h)

type QAbstractSlidercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAbstractSlider, slot: proc(super: QAbstractSlidercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSlidercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_customEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_customEvent ".} =
  type Cb = proc(super: QAbstractSlidercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAbstractSlider(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAbstractSlider, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractSlider_virtualbase_connectNotify(self.h, signal.h)

type QAbstractSliderconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAbstractSlider, slot: proc(super: QAbstractSliderconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSliderconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_connectNotify(self: ptr cQAbstractSlider, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_connectNotify ".} =
  type Cb = proc(super: QAbstractSliderconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAbstractSlider(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAbstractSlider, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractSlider_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractSliderdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAbstractSlider, slot: proc(super: QAbstractSliderdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractSliderdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_disconnectNotify(self: ptr cQAbstractSlider, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_disconnectNotify ".} =
  type Cb = proc(super: QAbstractSliderdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAbstractSlider(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QAbstractSlider): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQAbstractSlider_staticMetaObject())
proc delete*(self: QAbstractSlider) =
  fcQAbstractSlider_delete(self.h)
