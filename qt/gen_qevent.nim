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
{.compile("gen_qevent.cpp", cflags).}


type QWheelEventEnum* = cint
const
  QWheelEventDefaultDeltasPerStep* = 120



type QTabletEventTabletDevice* = cint
const
  QTabletEventNoDevice* = 0
  QTabletEventPuck* = 1
  QTabletEventStylus* = 2
  QTabletEventAirbrush* = 3
  QTabletEventFourDMouse* = 4
  QTabletEventXFreeEraser* = 5
  QTabletEventRotationStylus* = 6



type QTabletEventPointerType* = cint
const
  QTabletEventUnknownPointer* = 0
  QTabletEventPen* = 1
  QTabletEventCursor* = 2
  QTabletEventEraser* = 3



type QPlatformSurfaceEventSurfaceEventType* = cint
const
  QPlatformSurfaceEventSurfaceCreated* = 0
  QPlatformSurfaceEventSurfaceAboutToBeDestroyed* = 1



type QContextMenuEventReason* = cint
const
  QContextMenuEventMouse* = 0
  QContextMenuEventKeyboard* = 1
  QContextMenuEventOther* = 2



type QInputMethodEventAttributeType* = cint
const
  QInputMethodEventTextFormat* = 0
  QInputMethodEventCursor* = 1
  QInputMethodEventLanguage* = 2
  QInputMethodEventRuby* = 3
  QInputMethodEventSelection* = 4



type QTouchEventTouchPointInfoFlag* = cint
const
  QTouchEventTouchPointPen* = 1
  QTouchEventTouchPointToken* = 2



type QScrollEventScrollState* = cint
const
  QScrollEventScrollStarted* = 0
  QScrollEventScrollUpdated* = 1
  QScrollEventScrollFinished* = 2



import gen_qevent_types
export gen_qevent_types

import
  gen_qaction,
  gen_qcoreevent,
  gen_qfile,
  gen_qiodevice,
  gen_qkeysequence,
  gen_qmimedata,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpoint,
  gen_qrect,
  gen_qregion,
  gen_qscreen,
  gen_qsize,
  gen_qtouchdevice,
  gen_qurl,
  gen_qvariant,
  gen_qvector2d,
  gen_qwindow
export
  gen_qaction,
  gen_qcoreevent,
  gen_qfile,
  gen_qiodevice,
  gen_qkeysequence,
  gen_qmimedata,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpoint,
  gen_qrect,
  gen_qregion,
  gen_qscreen,
  gen_qsize,
  gen_qtouchdevice,
  gen_qurl,
  gen_qvariant,
  gen_qvector2d,
  gen_qwindow

type cQInputEvent*{.exportc: "QInputEvent", incompleteStruct.} = object
type cQEnterEvent*{.exportc: "QEnterEvent", incompleteStruct.} = object
type cQMouseEvent*{.exportc: "QMouseEvent", incompleteStruct.} = object
type cQHoverEvent*{.exportc: "QHoverEvent", incompleteStruct.} = object
type cQWheelEvent*{.exportc: "QWheelEvent", incompleteStruct.} = object
type cQTabletEvent*{.exportc: "QTabletEvent", incompleteStruct.} = object
type cQNativeGestureEvent*{.exportc: "QNativeGestureEvent", incompleteStruct.} = object
type cQKeyEvent*{.exportc: "QKeyEvent", incompleteStruct.} = object
type cQFocusEvent*{.exportc: "QFocusEvent", incompleteStruct.} = object
type cQPaintEvent*{.exportc: "QPaintEvent", incompleteStruct.} = object
type cQMoveEvent*{.exportc: "QMoveEvent", incompleteStruct.} = object
type cQExposeEvent*{.exportc: "QExposeEvent", incompleteStruct.} = object
type cQPlatformSurfaceEvent*{.exportc: "QPlatformSurfaceEvent", incompleteStruct.} = object
type cQResizeEvent*{.exportc: "QResizeEvent", incompleteStruct.} = object
type cQCloseEvent*{.exportc: "QCloseEvent", incompleteStruct.} = object
type cQIconDragEvent*{.exportc: "QIconDragEvent", incompleteStruct.} = object
type cQShowEvent*{.exportc: "QShowEvent", incompleteStruct.} = object
type cQHideEvent*{.exportc: "QHideEvent", incompleteStruct.} = object
type cQContextMenuEvent*{.exportc: "QContextMenuEvent", incompleteStruct.} = object
type cQInputMethodEvent*{.exportc: "QInputMethodEvent", incompleteStruct.} = object
type cQInputMethodQueryEvent*{.exportc: "QInputMethodQueryEvent", incompleteStruct.} = object
type cQDropEvent*{.exportc: "QDropEvent", incompleteStruct.} = object
type cQDragMoveEvent*{.exportc: "QDragMoveEvent", incompleteStruct.} = object
type cQDragEnterEvent*{.exportc: "QDragEnterEvent", incompleteStruct.} = object
type cQDragLeaveEvent*{.exportc: "QDragLeaveEvent", incompleteStruct.} = object
type cQHelpEvent*{.exportc: "QHelpEvent", incompleteStruct.} = object
type cQStatusTipEvent*{.exportc: "QStatusTipEvent", incompleteStruct.} = object
type cQWhatsThisClickedEvent*{.exportc: "QWhatsThisClickedEvent", incompleteStruct.} = object
type cQActionEvent*{.exportc: "QActionEvent", incompleteStruct.} = object
type cQFileOpenEvent*{.exportc: "QFileOpenEvent", incompleteStruct.} = object
type cQToolBarChangeEvent*{.exportc: "QToolBarChangeEvent", incompleteStruct.} = object
type cQShortcutEvent*{.exportc: "QShortcutEvent", incompleteStruct.} = object
type cQWindowStateChangeEvent*{.exportc: "QWindowStateChangeEvent", incompleteStruct.} = object
type cQPointingDeviceUniqueId*{.exportc: "QPointingDeviceUniqueId", incompleteStruct.} = object
type cQTouchEvent*{.exportc: "QTouchEvent", incompleteStruct.} = object
type cQScrollPrepareEvent*{.exportc: "QScrollPrepareEvent", incompleteStruct.} = object
type cQScrollEvent*{.exportc: "QScrollEvent", incompleteStruct.} = object
type cQScreenOrientationChangeEvent*{.exportc: "QScreenOrientationChangeEvent", incompleteStruct.} = object
type cQApplicationStateChangeEvent*{.exportc: "QApplicationStateChangeEvent", incompleteStruct.} = object
type cQInputMethodEventAttribute*{.exportc: "QInputMethodEvent__Attribute", incompleteStruct.} = object
type cQTouchEventTouchPoint*{.exportc: "QTouchEvent__TouchPoint", incompleteStruct.} = object

proc fcQInputEvent_new(typeVal: cint): ptr cQInputEvent {.importc: "QInputEvent_new".}
proc fcQInputEvent_new2(param1: pointer): ptr cQInputEvent {.importc: "QInputEvent_new2".}
proc fcQInputEvent_new3(typeVal: cint, modifiers: cint): ptr cQInputEvent {.importc: "QInputEvent_new3".}
proc fcQInputEvent_modifiers(self: pointer, ): cint {.importc: "QInputEvent_modifiers".}
proc fcQInputEvent_setModifiers(self: pointer, amodifiers: cint): void {.importc: "QInputEvent_setModifiers".}
proc fcQInputEvent_timestamp(self: pointer, ): culong {.importc: "QInputEvent_timestamp".}
proc fcQInputEvent_setTimestamp(self: pointer, atimestamp: culong): void {.importc: "QInputEvent_setTimestamp".}
proc fcQInputEvent_delete(self: pointer) {.importc: "QInputEvent_delete".}
proc fcQEnterEvent_new(localPos: pointer, windowPos: pointer, screenPos: pointer): ptr cQEnterEvent {.importc: "QEnterEvent_new".}
proc fcQEnterEvent_new2(param1: pointer): ptr cQEnterEvent {.importc: "QEnterEvent_new2".}
proc fcQEnterEvent_pos(self: pointer, ): pointer {.importc: "QEnterEvent_pos".}
proc fcQEnterEvent_globalPos(self: pointer, ): pointer {.importc: "QEnterEvent_globalPos".}
proc fcQEnterEvent_x(self: pointer, ): cint {.importc: "QEnterEvent_x".}
proc fcQEnterEvent_y(self: pointer, ): cint {.importc: "QEnterEvent_y".}
proc fcQEnterEvent_globalX(self: pointer, ): cint {.importc: "QEnterEvent_globalX".}
proc fcQEnterEvent_globalY(self: pointer, ): cint {.importc: "QEnterEvent_globalY".}
proc fcQEnterEvent_localPos(self: pointer, ): pointer {.importc: "QEnterEvent_localPos".}
proc fcQEnterEvent_windowPos(self: pointer, ): pointer {.importc: "QEnterEvent_windowPos".}
proc fcQEnterEvent_screenPos(self: pointer, ): pointer {.importc: "QEnterEvent_screenPos".}
proc fcQEnterEvent_delete(self: pointer) {.importc: "QEnterEvent_delete".}
proc fcQMouseEvent_new(typeVal: cint, localPos: pointer, button: cint, buttons: cint, modifiers: cint): ptr cQMouseEvent {.importc: "QMouseEvent_new".}
proc fcQMouseEvent_new2(typeVal: cint, localPos: pointer, screenPos: pointer, button: cint, buttons: cint, modifiers: cint): ptr cQMouseEvent {.importc: "QMouseEvent_new2".}
proc fcQMouseEvent_new3(typeVal: cint, localPos: pointer, windowPos: pointer, screenPos: pointer, button: cint, buttons: cint, modifiers: cint): ptr cQMouseEvent {.importc: "QMouseEvent_new3".}
proc fcQMouseEvent_new4(typeVal: cint, localPos: pointer, windowPos: pointer, screenPos: pointer, button: cint, buttons: cint, modifiers: cint, source: cint): ptr cQMouseEvent {.importc: "QMouseEvent_new4".}
proc fcQMouseEvent_new5(param1: pointer): ptr cQMouseEvent {.importc: "QMouseEvent_new5".}
proc fcQMouseEvent_pos(self: pointer, ): pointer {.importc: "QMouseEvent_pos".}
proc fcQMouseEvent_globalPos(self: pointer, ): pointer {.importc: "QMouseEvent_globalPos".}
proc fcQMouseEvent_x(self: pointer, ): cint {.importc: "QMouseEvent_x".}
proc fcQMouseEvent_y(self: pointer, ): cint {.importc: "QMouseEvent_y".}
proc fcQMouseEvent_globalX(self: pointer, ): cint {.importc: "QMouseEvent_globalX".}
proc fcQMouseEvent_globalY(self: pointer, ): cint {.importc: "QMouseEvent_globalY".}
proc fcQMouseEvent_localPos(self: pointer, ): pointer {.importc: "QMouseEvent_localPos".}
proc fcQMouseEvent_windowPos(self: pointer, ): pointer {.importc: "QMouseEvent_windowPos".}
proc fcQMouseEvent_screenPos(self: pointer, ): pointer {.importc: "QMouseEvent_screenPos".}
proc fcQMouseEvent_button(self: pointer, ): cint {.importc: "QMouseEvent_button".}
proc fcQMouseEvent_buttons(self: pointer, ): cint {.importc: "QMouseEvent_buttons".}
proc fcQMouseEvent_setLocalPos(self: pointer, localPosition: pointer): void {.importc: "QMouseEvent_setLocalPos".}
proc fcQMouseEvent_source(self: pointer, ): cint {.importc: "QMouseEvent_source".}
proc fcQMouseEvent_flags(self: pointer, ): cint {.importc: "QMouseEvent_flags".}
proc fcQMouseEvent_delete(self: pointer) {.importc: "QMouseEvent_delete".}
proc fcQHoverEvent_new(typeVal: cint, pos: pointer, oldPos: pointer): ptr cQHoverEvent {.importc: "QHoverEvent_new".}
proc fcQHoverEvent_new2(param1: pointer): ptr cQHoverEvent {.importc: "QHoverEvent_new2".}
proc fcQHoverEvent_new3(typeVal: cint, pos: pointer, oldPos: pointer, modifiers: cint): ptr cQHoverEvent {.importc: "QHoverEvent_new3".}
proc fcQHoverEvent_pos(self: pointer, ): pointer {.importc: "QHoverEvent_pos".}
proc fcQHoverEvent_oldPos(self: pointer, ): pointer {.importc: "QHoverEvent_oldPos".}
proc fcQHoverEvent_posF(self: pointer, ): pointer {.importc: "QHoverEvent_posF".}
proc fcQHoverEvent_oldPosF(self: pointer, ): pointer {.importc: "QHoverEvent_oldPosF".}
proc fcQHoverEvent_delete(self: pointer) {.importc: "QHoverEvent_delete".}
proc fcQWheelEvent_new(pos: pointer, delta: cint, buttons: cint, modifiers: cint): ptr cQWheelEvent {.importc: "QWheelEvent_new".}
proc fcQWheelEvent_new2(pos: pointer, globalPos: pointer, delta: cint, buttons: cint, modifiers: cint): ptr cQWheelEvent {.importc: "QWheelEvent_new2".}
proc fcQWheelEvent_new3(pos: pointer, globalPos: pointer, pixelDelta: pointer, angleDelta: pointer, qt4Delta: cint, qt4Orientation: cint, buttons: cint, modifiers: cint): ptr cQWheelEvent {.importc: "QWheelEvent_new3".}
proc fcQWheelEvent_new4(pos: pointer, globalPos: pointer, pixelDelta: pointer, angleDelta: pointer, qt4Delta: cint, qt4Orientation: cint, buttons: cint, modifiers: cint, phase: cint): ptr cQWheelEvent {.importc: "QWheelEvent_new4".}
proc fcQWheelEvent_new5(pos: pointer, globalPos: pointer, pixelDelta: pointer, angleDelta: pointer, qt4Delta: cint, qt4Orientation: cint, buttons: cint, modifiers: cint, phase: cint, source: cint): ptr cQWheelEvent {.importc: "QWheelEvent_new5".}
proc fcQWheelEvent_new6(pos: pointer, globalPos: pointer, pixelDelta: pointer, angleDelta: pointer, qt4Delta: cint, qt4Orientation: cint, buttons: cint, modifiers: cint, phase: cint, source: cint, inverted: bool): ptr cQWheelEvent {.importc: "QWheelEvent_new6".}
proc fcQWheelEvent_new7(pos: pointer, globalPos: pointer, pixelDelta: pointer, angleDelta: pointer, buttons: cint, modifiers: cint, phase: cint, inverted: bool): ptr cQWheelEvent {.importc: "QWheelEvent_new7".}
proc fcQWheelEvent_new8(param1: pointer): ptr cQWheelEvent {.importc: "QWheelEvent_new8".}
proc fcQWheelEvent_new9(pos: pointer, delta: cint, buttons: cint, modifiers: cint, orient: cint): ptr cQWheelEvent {.importc: "QWheelEvent_new9".}
proc fcQWheelEvent_new10(pos: pointer, globalPos: pointer, delta: cint, buttons: cint, modifiers: cint, orient: cint): ptr cQWheelEvent {.importc: "QWheelEvent_new10".}
proc fcQWheelEvent_new11(pos: pointer, globalPos: pointer, pixelDelta: pointer, angleDelta: pointer, buttons: cint, modifiers: cint, phase: cint, inverted: bool, source: cint): ptr cQWheelEvent {.importc: "QWheelEvent_new11".}
proc fcQWheelEvent_pixelDelta(self: pointer, ): pointer {.importc: "QWheelEvent_pixelDelta".}
proc fcQWheelEvent_angleDelta(self: pointer, ): pointer {.importc: "QWheelEvent_angleDelta".}
proc fcQWheelEvent_delta(self: pointer, ): cint {.importc: "QWheelEvent_delta".}
proc fcQWheelEvent_orientation(self: pointer, ): cint {.importc: "QWheelEvent_orientation".}
proc fcQWheelEvent_pos(self: pointer, ): pointer {.importc: "QWheelEvent_pos".}
proc fcQWheelEvent_globalPos(self: pointer, ): pointer {.importc: "QWheelEvent_globalPos".}
proc fcQWheelEvent_x(self: pointer, ): cint {.importc: "QWheelEvent_x".}
proc fcQWheelEvent_y(self: pointer, ): cint {.importc: "QWheelEvent_y".}
proc fcQWheelEvent_globalX(self: pointer, ): cint {.importc: "QWheelEvent_globalX".}
proc fcQWheelEvent_globalY(self: pointer, ): cint {.importc: "QWheelEvent_globalY".}
proc fcQWheelEvent_posF(self: pointer, ): pointer {.importc: "QWheelEvent_posF".}
proc fcQWheelEvent_globalPosF(self: pointer, ): pointer {.importc: "QWheelEvent_globalPosF".}
proc fcQWheelEvent_position(self: pointer, ): pointer {.importc: "QWheelEvent_position".}
proc fcQWheelEvent_globalPosition(self: pointer, ): pointer {.importc: "QWheelEvent_globalPosition".}
proc fcQWheelEvent_buttons(self: pointer, ): cint {.importc: "QWheelEvent_buttons".}
proc fcQWheelEvent_phase(self: pointer, ): cint {.importc: "QWheelEvent_phase".}
proc fcQWheelEvent_inverted(self: pointer, ): bool {.importc: "QWheelEvent_inverted".}
proc fcQWheelEvent_source(self: pointer, ): cint {.importc: "QWheelEvent_source".}
proc fcQWheelEvent_delete(self: pointer) {.importc: "QWheelEvent_delete".}
proc fcQTabletEvent_new(t: cint, pos: pointer, globalPos: pointer, device: cint, pointerType: cint, pressure: float64, xTilt: cint, yTilt: cint, tangentialPressure: float64, rotation: float64, z: cint, keyState: cint, uniqueID: clonglong): ptr cQTabletEvent {.importc: "QTabletEvent_new".}
proc fcQTabletEvent_new2(t: cint, pos: pointer, globalPos: pointer, device: cint, pointerType: cint, pressure: float64, xTilt: cint, yTilt: cint, tangentialPressure: float64, rotation: float64, z: cint, keyState: cint, uniqueID: clonglong, button: cint, buttons: cint): ptr cQTabletEvent {.importc: "QTabletEvent_new2".}
proc fcQTabletEvent_new3(param1: pointer): ptr cQTabletEvent {.importc: "QTabletEvent_new3".}
proc fcQTabletEvent_pos(self: pointer, ): pointer {.importc: "QTabletEvent_pos".}
proc fcQTabletEvent_globalPos(self: pointer, ): pointer {.importc: "QTabletEvent_globalPos".}
proc fcQTabletEvent_posF(self: pointer, ): pointer {.importc: "QTabletEvent_posF".}
proc fcQTabletEvent_globalPosF(self: pointer, ): pointer {.importc: "QTabletEvent_globalPosF".}
proc fcQTabletEvent_x(self: pointer, ): cint {.importc: "QTabletEvent_x".}
proc fcQTabletEvent_y(self: pointer, ): cint {.importc: "QTabletEvent_y".}
proc fcQTabletEvent_globalX(self: pointer, ): cint {.importc: "QTabletEvent_globalX".}
proc fcQTabletEvent_globalY(self: pointer, ): cint {.importc: "QTabletEvent_globalY".}
proc fcQTabletEvent_hiResGlobalX(self: pointer, ): float64 {.importc: "QTabletEvent_hiResGlobalX".}
proc fcQTabletEvent_hiResGlobalY(self: pointer, ): float64 {.importc: "QTabletEvent_hiResGlobalY".}
proc fcQTabletEvent_device(self: pointer, ): cint {.importc: "QTabletEvent_device".}
proc fcQTabletEvent_deviceType(self: pointer, ): cint {.importc: "QTabletEvent_deviceType".}
proc fcQTabletEvent_pointerType(self: pointer, ): cint {.importc: "QTabletEvent_pointerType".}
proc fcQTabletEvent_uniqueId(self: pointer, ): clonglong {.importc: "QTabletEvent_uniqueId".}
proc fcQTabletEvent_pressure(self: pointer, ): float64 {.importc: "QTabletEvent_pressure".}
proc fcQTabletEvent_z(self: pointer, ): cint {.importc: "QTabletEvent_z".}
proc fcQTabletEvent_tangentialPressure(self: pointer, ): float64 {.importc: "QTabletEvent_tangentialPressure".}
proc fcQTabletEvent_rotation(self: pointer, ): float64 {.importc: "QTabletEvent_rotation".}
proc fcQTabletEvent_xTilt(self: pointer, ): cint {.importc: "QTabletEvent_xTilt".}
proc fcQTabletEvent_yTilt(self: pointer, ): cint {.importc: "QTabletEvent_yTilt".}
proc fcQTabletEvent_button(self: pointer, ): cint {.importc: "QTabletEvent_button".}
proc fcQTabletEvent_buttons(self: pointer, ): cint {.importc: "QTabletEvent_buttons".}
proc fcQTabletEvent_staticMetaObject(): pointer {.importc: "QTabletEvent_staticMetaObject".}
proc fcQTabletEvent_delete(self: pointer) {.importc: "QTabletEvent_delete".}
proc fcQNativeGestureEvent_new(typeVal: cint, localPos: pointer, windowPos: pointer, screenPos: pointer, value: float64, sequenceId: culong, intArgument: culonglong): ptr cQNativeGestureEvent {.importc: "QNativeGestureEvent_new".}
proc fcQNativeGestureEvent_new2(typeVal: cint, dev: pointer, localPos: pointer, windowPos: pointer, screenPos: pointer, value: float64, sequenceId: culong, intArgument: culonglong): ptr cQNativeGestureEvent {.importc: "QNativeGestureEvent_new2".}
proc fcQNativeGestureEvent_new3(param1: pointer): ptr cQNativeGestureEvent {.importc: "QNativeGestureEvent_new3".}
proc fcQNativeGestureEvent_gestureType(self: pointer, ): cint {.importc: "QNativeGestureEvent_gestureType".}
proc fcQNativeGestureEvent_value(self: pointer, ): float64 {.importc: "QNativeGestureEvent_value".}
proc fcQNativeGestureEvent_pos(self: pointer, ): pointer {.importc: "QNativeGestureEvent_pos".}
proc fcQNativeGestureEvent_globalPos(self: pointer, ): pointer {.importc: "QNativeGestureEvent_globalPos".}
proc fcQNativeGestureEvent_localPos(self: pointer, ): pointer {.importc: "QNativeGestureEvent_localPos".}
proc fcQNativeGestureEvent_windowPos(self: pointer, ): pointer {.importc: "QNativeGestureEvent_windowPos".}
proc fcQNativeGestureEvent_screenPos(self: pointer, ): pointer {.importc: "QNativeGestureEvent_screenPos".}
proc fcQNativeGestureEvent_device(self: pointer, ): pointer {.importc: "QNativeGestureEvent_device".}
proc fcQNativeGestureEvent_delete(self: pointer) {.importc: "QNativeGestureEvent_delete".}
proc fcQKeyEvent_new(typeVal: cint, key: cint, modifiers: cint): ptr cQKeyEvent {.importc: "QKeyEvent_new".}
proc fcQKeyEvent_new2(typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint): ptr cQKeyEvent {.importc: "QKeyEvent_new2".}
proc fcQKeyEvent_new3(param1: pointer): ptr cQKeyEvent {.importc: "QKeyEvent_new3".}
proc fcQKeyEvent_new4(typeVal: cint, key: cint, modifiers: cint, text: struct_miqt_string): ptr cQKeyEvent {.importc: "QKeyEvent_new4".}
proc fcQKeyEvent_new5(typeVal: cint, key: cint, modifiers: cint, text: struct_miqt_string, autorep: bool): ptr cQKeyEvent {.importc: "QKeyEvent_new5".}
proc fcQKeyEvent_new6(typeVal: cint, key: cint, modifiers: cint, text: struct_miqt_string, autorep: bool, count: cushort): ptr cQKeyEvent {.importc: "QKeyEvent_new6".}
proc fcQKeyEvent_new7(typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: struct_miqt_string): ptr cQKeyEvent {.importc: "QKeyEvent_new7".}
proc fcQKeyEvent_new8(typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: struct_miqt_string, autorep: bool): ptr cQKeyEvent {.importc: "QKeyEvent_new8".}
proc fcQKeyEvent_new9(typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: struct_miqt_string, autorep: bool, count: cushort): ptr cQKeyEvent {.importc: "QKeyEvent_new9".}
proc fcQKeyEvent_key(self: pointer, ): cint {.importc: "QKeyEvent_key".}
proc fcQKeyEvent_matches(self: pointer, key: cint): bool {.importc: "QKeyEvent_matches".}
proc fcQKeyEvent_modifiers(self: pointer, ): cint {.importc: "QKeyEvent_modifiers".}
proc fcQKeyEvent_text(self: pointer, ): struct_miqt_string {.importc: "QKeyEvent_text".}
proc fcQKeyEvent_isAutoRepeat(self: pointer, ): bool {.importc: "QKeyEvent_isAutoRepeat".}
proc fcQKeyEvent_count(self: pointer, ): cint {.importc: "QKeyEvent_count".}
proc fcQKeyEvent_nativeScanCode(self: pointer, ): cuint {.importc: "QKeyEvent_nativeScanCode".}
proc fcQKeyEvent_nativeVirtualKey(self: pointer, ): cuint {.importc: "QKeyEvent_nativeVirtualKey".}
proc fcQKeyEvent_nativeModifiers(self: pointer, ): cuint {.importc: "QKeyEvent_nativeModifiers".}
proc fcQKeyEvent_delete(self: pointer) {.importc: "QKeyEvent_delete".}
proc fcQFocusEvent_new(typeVal: cint): ptr cQFocusEvent {.importc: "QFocusEvent_new".}
proc fcQFocusEvent_new2(param1: pointer): ptr cQFocusEvent {.importc: "QFocusEvent_new2".}
proc fcQFocusEvent_new3(typeVal: cint, reason: cint): ptr cQFocusEvent {.importc: "QFocusEvent_new3".}
proc fcQFocusEvent_gotFocus(self: pointer, ): bool {.importc: "QFocusEvent_gotFocus".}
proc fcQFocusEvent_lostFocus(self: pointer, ): bool {.importc: "QFocusEvent_lostFocus".}
proc fcQFocusEvent_reason(self: pointer, ): cint {.importc: "QFocusEvent_reason".}
proc fcQFocusEvent_delete(self: pointer) {.importc: "QFocusEvent_delete".}
proc fcQPaintEvent_new(paintRegion: pointer): ptr cQPaintEvent {.importc: "QPaintEvent_new".}
proc fcQPaintEvent_new2(paintRect: pointer): ptr cQPaintEvent {.importc: "QPaintEvent_new2".}
proc fcQPaintEvent_new3(param1: pointer): ptr cQPaintEvent {.importc: "QPaintEvent_new3".}
proc fcQPaintEvent_rect(self: pointer, ): pointer {.importc: "QPaintEvent_rect".}
proc fcQPaintEvent_region(self: pointer, ): pointer {.importc: "QPaintEvent_region".}
proc fcQPaintEvent_delete(self: pointer) {.importc: "QPaintEvent_delete".}
proc fcQMoveEvent_new(pos: pointer, oldPos: pointer): ptr cQMoveEvent {.importc: "QMoveEvent_new".}
proc fcQMoveEvent_new2(param1: pointer): ptr cQMoveEvent {.importc: "QMoveEvent_new2".}
proc fcQMoveEvent_pos(self: pointer, ): pointer {.importc: "QMoveEvent_pos".}
proc fcQMoveEvent_oldPos(self: pointer, ): pointer {.importc: "QMoveEvent_oldPos".}
proc fcQMoveEvent_delete(self: pointer) {.importc: "QMoveEvent_delete".}
proc fcQExposeEvent_new(rgn: pointer): ptr cQExposeEvent {.importc: "QExposeEvent_new".}
proc fcQExposeEvent_new2(param1: pointer): ptr cQExposeEvent {.importc: "QExposeEvent_new2".}
proc fcQExposeEvent_region(self: pointer, ): pointer {.importc: "QExposeEvent_region".}
proc fcQExposeEvent_delete(self: pointer) {.importc: "QExposeEvent_delete".}
proc fcQPlatformSurfaceEvent_new(surfaceEventType: cint): ptr cQPlatformSurfaceEvent {.importc: "QPlatformSurfaceEvent_new".}
proc fcQPlatformSurfaceEvent_new2(param1: pointer): ptr cQPlatformSurfaceEvent {.importc: "QPlatformSurfaceEvent_new2".}
proc fcQPlatformSurfaceEvent_surfaceEventType(self: pointer, ): cint {.importc: "QPlatformSurfaceEvent_surfaceEventType".}
proc fcQPlatformSurfaceEvent_delete(self: pointer) {.importc: "QPlatformSurfaceEvent_delete".}
proc fcQResizeEvent_new(size: pointer, oldSize: pointer): ptr cQResizeEvent {.importc: "QResizeEvent_new".}
proc fcQResizeEvent_new2(param1: pointer): ptr cQResizeEvent {.importc: "QResizeEvent_new2".}
proc fcQResizeEvent_size(self: pointer, ): pointer {.importc: "QResizeEvent_size".}
proc fcQResizeEvent_oldSize(self: pointer, ): pointer {.importc: "QResizeEvent_oldSize".}
proc fcQResizeEvent_delete(self: pointer) {.importc: "QResizeEvent_delete".}
proc fcQCloseEvent_new(): ptr cQCloseEvent {.importc: "QCloseEvent_new".}
proc fcQCloseEvent_new2(param1: pointer): ptr cQCloseEvent {.importc: "QCloseEvent_new2".}
proc fcQCloseEvent_operatorAssign(self: pointer, param1: pointer): void {.importc: "QCloseEvent_operatorAssign".}
proc fcQCloseEvent_delete(self: pointer) {.importc: "QCloseEvent_delete".}
proc fcQIconDragEvent_new(): ptr cQIconDragEvent {.importc: "QIconDragEvent_new".}
proc fcQIconDragEvent_new2(param1: pointer): ptr cQIconDragEvent {.importc: "QIconDragEvent_new2".}
proc fcQIconDragEvent_operatorAssign(self: pointer, param1: pointer): void {.importc: "QIconDragEvent_operatorAssign".}
proc fcQIconDragEvent_delete(self: pointer) {.importc: "QIconDragEvent_delete".}
proc fcQShowEvent_new(): ptr cQShowEvent {.importc: "QShowEvent_new".}
proc fcQShowEvent_new2(param1: pointer): ptr cQShowEvent {.importc: "QShowEvent_new2".}
proc fcQShowEvent_operatorAssign(self: pointer, param1: pointer): void {.importc: "QShowEvent_operatorAssign".}
proc fcQShowEvent_delete(self: pointer) {.importc: "QShowEvent_delete".}
proc fcQHideEvent_new(): ptr cQHideEvent {.importc: "QHideEvent_new".}
proc fcQHideEvent_new2(param1: pointer): ptr cQHideEvent {.importc: "QHideEvent_new2".}
proc fcQHideEvent_operatorAssign(self: pointer, param1: pointer): void {.importc: "QHideEvent_operatorAssign".}
proc fcQHideEvent_delete(self: pointer) {.importc: "QHideEvent_delete".}
proc fcQContextMenuEvent_new(reason: cint, pos: pointer, globalPos: pointer, modifiers: cint): ptr cQContextMenuEvent {.importc: "QContextMenuEvent_new".}
proc fcQContextMenuEvent_new2(reason: cint, pos: pointer, globalPos: pointer): ptr cQContextMenuEvent {.importc: "QContextMenuEvent_new2".}
proc fcQContextMenuEvent_new3(reason: cint, pos: pointer): ptr cQContextMenuEvent {.importc: "QContextMenuEvent_new3".}
proc fcQContextMenuEvent_new4(param1: pointer): ptr cQContextMenuEvent {.importc: "QContextMenuEvent_new4".}
proc fcQContextMenuEvent_x(self: pointer, ): cint {.importc: "QContextMenuEvent_x".}
proc fcQContextMenuEvent_y(self: pointer, ): cint {.importc: "QContextMenuEvent_y".}
proc fcQContextMenuEvent_globalX(self: pointer, ): cint {.importc: "QContextMenuEvent_globalX".}
proc fcQContextMenuEvent_globalY(self: pointer, ): cint {.importc: "QContextMenuEvent_globalY".}
proc fcQContextMenuEvent_pos(self: pointer, ): pointer {.importc: "QContextMenuEvent_pos".}
proc fcQContextMenuEvent_globalPos(self: pointer, ): pointer {.importc: "QContextMenuEvent_globalPos".}
proc fcQContextMenuEvent_reason(self: pointer, ): cint {.importc: "QContextMenuEvent_reason".}
proc fcQContextMenuEvent_delete(self: pointer) {.importc: "QContextMenuEvent_delete".}
proc fcQInputMethodEvent_new(): ptr cQInputMethodEvent {.importc: "QInputMethodEvent_new".}
proc fcQInputMethodEvent_new2(preeditText: struct_miqt_string, attributes: struct_miqt_array): ptr cQInputMethodEvent {.importc: "QInputMethodEvent_new2".}
proc fcQInputMethodEvent_new3(other: pointer): ptr cQInputMethodEvent {.importc: "QInputMethodEvent_new3".}
proc fcQInputMethodEvent_setCommitString(self: pointer, commitString: struct_miqt_string): void {.importc: "QInputMethodEvent_setCommitString".}
proc fcQInputMethodEvent_attributes(self: pointer, ): struct_miqt_array {.importc: "QInputMethodEvent_attributes".}
proc fcQInputMethodEvent_preeditString(self: pointer, ): struct_miqt_string {.importc: "QInputMethodEvent_preeditString".}
proc fcQInputMethodEvent_commitString(self: pointer, ): struct_miqt_string {.importc: "QInputMethodEvent_commitString".}
proc fcQInputMethodEvent_replacementStart(self: pointer, ): cint {.importc: "QInputMethodEvent_replacementStart".}
proc fcQInputMethodEvent_replacementLength(self: pointer, ): cint {.importc: "QInputMethodEvent_replacementLength".}
proc fcQInputMethodEvent_setCommitString2(self: pointer, commitString: struct_miqt_string, replaceFrom: cint): void {.importc: "QInputMethodEvent_setCommitString2".}
proc fcQInputMethodEvent_setCommitString3(self: pointer, commitString: struct_miqt_string, replaceFrom: cint, replaceLength: cint): void {.importc: "QInputMethodEvent_setCommitString3".}
proc fcQInputMethodEvent_delete(self: pointer) {.importc: "QInputMethodEvent_delete".}
proc fcQInputMethodQueryEvent_new(queries: cint): ptr cQInputMethodQueryEvent {.importc: "QInputMethodQueryEvent_new".}
proc fcQInputMethodQueryEvent_new2(param1: pointer): ptr cQInputMethodQueryEvent {.importc: "QInputMethodQueryEvent_new2".}
proc fcQInputMethodQueryEvent_queries(self: pointer, ): cint {.importc: "QInputMethodQueryEvent_queries".}
proc fcQInputMethodQueryEvent_setValue(self: pointer, query: cint, value: pointer): void {.importc: "QInputMethodQueryEvent_setValue".}
proc fcQInputMethodQueryEvent_value(self: pointer, query: cint): pointer {.importc: "QInputMethodQueryEvent_value".}
proc fcQInputMethodQueryEvent_delete(self: pointer) {.importc: "QInputMethodQueryEvent_delete".}
proc fcQDropEvent_new(pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint): ptr cQDropEvent {.importc: "QDropEvent_new".}
proc fcQDropEvent_new2(param1: pointer): ptr cQDropEvent {.importc: "QDropEvent_new2".}
proc fcQDropEvent_new3(pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint, typeVal: cint): ptr cQDropEvent {.importc: "QDropEvent_new3".}
proc fcQDropEvent_pos(self: pointer, ): pointer {.importc: "QDropEvent_pos".}
proc fcQDropEvent_posF(self: pointer, ): pointer {.importc: "QDropEvent_posF".}
proc fcQDropEvent_mouseButtons(self: pointer, ): cint {.importc: "QDropEvent_mouseButtons".}
proc fcQDropEvent_keyboardModifiers(self: pointer, ): cint {.importc: "QDropEvent_keyboardModifiers".}
proc fcQDropEvent_possibleActions(self: pointer, ): cint {.importc: "QDropEvent_possibleActions".}
proc fcQDropEvent_proposedAction(self: pointer, ): cint {.importc: "QDropEvent_proposedAction".}
proc fcQDropEvent_acceptProposedAction(self: pointer, ): void {.importc: "QDropEvent_acceptProposedAction".}
proc fcQDropEvent_dropAction(self: pointer, ): cint {.importc: "QDropEvent_dropAction".}
proc fcQDropEvent_setDropAction(self: pointer, action: cint): void {.importc: "QDropEvent_setDropAction".}
proc fcQDropEvent_source(self: pointer, ): pointer {.importc: "QDropEvent_source".}
proc fcQDropEvent_mimeData(self: pointer, ): pointer {.importc: "QDropEvent_mimeData".}
proc fcQDropEvent_delete(self: pointer) {.importc: "QDropEvent_delete".}
proc fcQDragMoveEvent_new(pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint): ptr cQDragMoveEvent {.importc: "QDragMoveEvent_new".}
proc fcQDragMoveEvent_new2(param1: pointer): ptr cQDragMoveEvent {.importc: "QDragMoveEvent_new2".}
proc fcQDragMoveEvent_new3(pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint, typeVal: cint): ptr cQDragMoveEvent {.importc: "QDragMoveEvent_new3".}
proc fcQDragMoveEvent_answerRect(self: pointer, ): pointer {.importc: "QDragMoveEvent_answerRect".}
proc fcQDragMoveEvent_accept(self: pointer, ): void {.importc: "QDragMoveEvent_accept".}
proc fcQDragMoveEvent_ignore(self: pointer, ): void {.importc: "QDragMoveEvent_ignore".}
proc fcQDragMoveEvent_acceptWithQRect(self: pointer, r: pointer): void {.importc: "QDragMoveEvent_acceptWithQRect".}
proc fcQDragMoveEvent_ignoreWithQRect(self: pointer, r: pointer): void {.importc: "QDragMoveEvent_ignoreWithQRect".}
proc fcQDragMoveEvent_delete(self: pointer) {.importc: "QDragMoveEvent_delete".}
proc fcQDragEnterEvent_new(pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint): ptr cQDragEnterEvent {.importc: "QDragEnterEvent_new".}
proc fcQDragEnterEvent_new2(param1: pointer): ptr cQDragEnterEvent {.importc: "QDragEnterEvent_new2".}
proc fcQDragEnterEvent_operatorAssign(self: pointer, param1: pointer): void {.importc: "QDragEnterEvent_operatorAssign".}
proc fcQDragEnterEvent_delete(self: pointer) {.importc: "QDragEnterEvent_delete".}
proc fcQDragLeaveEvent_new(): ptr cQDragLeaveEvent {.importc: "QDragLeaveEvent_new".}
proc fcQDragLeaveEvent_new2(param1: pointer): ptr cQDragLeaveEvent {.importc: "QDragLeaveEvent_new2".}
proc fcQDragLeaveEvent_operatorAssign(self: pointer, param1: pointer): void {.importc: "QDragLeaveEvent_operatorAssign".}
proc fcQDragLeaveEvent_delete(self: pointer) {.importc: "QDragLeaveEvent_delete".}
proc fcQHelpEvent_new(typeVal: cint, pos: pointer, globalPos: pointer): ptr cQHelpEvent {.importc: "QHelpEvent_new".}
proc fcQHelpEvent_new2(param1: pointer): ptr cQHelpEvent {.importc: "QHelpEvent_new2".}
proc fcQHelpEvent_x(self: pointer, ): cint {.importc: "QHelpEvent_x".}
proc fcQHelpEvent_y(self: pointer, ): cint {.importc: "QHelpEvent_y".}
proc fcQHelpEvent_globalX(self: pointer, ): cint {.importc: "QHelpEvent_globalX".}
proc fcQHelpEvent_globalY(self: pointer, ): cint {.importc: "QHelpEvent_globalY".}
proc fcQHelpEvent_pos(self: pointer, ): pointer {.importc: "QHelpEvent_pos".}
proc fcQHelpEvent_globalPos(self: pointer, ): pointer {.importc: "QHelpEvent_globalPos".}
proc fcQHelpEvent_delete(self: pointer) {.importc: "QHelpEvent_delete".}
proc fcQStatusTipEvent_new(tip: struct_miqt_string): ptr cQStatusTipEvent {.importc: "QStatusTipEvent_new".}
proc fcQStatusTipEvent_new2(param1: pointer): ptr cQStatusTipEvent {.importc: "QStatusTipEvent_new2".}
proc fcQStatusTipEvent_tip(self: pointer, ): struct_miqt_string {.importc: "QStatusTipEvent_tip".}
proc fcQStatusTipEvent_delete(self: pointer) {.importc: "QStatusTipEvent_delete".}
proc fcQWhatsThisClickedEvent_new(href: struct_miqt_string): ptr cQWhatsThisClickedEvent {.importc: "QWhatsThisClickedEvent_new".}
proc fcQWhatsThisClickedEvent_new2(param1: pointer): ptr cQWhatsThisClickedEvent {.importc: "QWhatsThisClickedEvent_new2".}
proc fcQWhatsThisClickedEvent_href(self: pointer, ): struct_miqt_string {.importc: "QWhatsThisClickedEvent_href".}
proc fcQWhatsThisClickedEvent_delete(self: pointer) {.importc: "QWhatsThisClickedEvent_delete".}
proc fcQActionEvent_new(typeVal: cint, action: pointer): ptr cQActionEvent {.importc: "QActionEvent_new".}
proc fcQActionEvent_new2(param1: pointer): ptr cQActionEvent {.importc: "QActionEvent_new2".}
proc fcQActionEvent_new3(typeVal: cint, action: pointer, before: pointer): ptr cQActionEvent {.importc: "QActionEvent_new3".}
proc fcQActionEvent_action(self: pointer, ): pointer {.importc: "QActionEvent_action".}
proc fcQActionEvent_before(self: pointer, ): pointer {.importc: "QActionEvent_before".}
proc fcQActionEvent_operatorAssign(self: pointer, param1: pointer): void {.importc: "QActionEvent_operatorAssign".}
proc fcQActionEvent_delete(self: pointer) {.importc: "QActionEvent_delete".}
proc fcQFileOpenEvent_new(file: struct_miqt_string): ptr cQFileOpenEvent {.importc: "QFileOpenEvent_new".}
proc fcQFileOpenEvent_new2(url: pointer): ptr cQFileOpenEvent {.importc: "QFileOpenEvent_new2".}
proc fcQFileOpenEvent_new3(param1: pointer): ptr cQFileOpenEvent {.importc: "QFileOpenEvent_new3".}
proc fcQFileOpenEvent_file(self: pointer, ): struct_miqt_string {.importc: "QFileOpenEvent_file".}
proc fcQFileOpenEvent_url(self: pointer, ): pointer {.importc: "QFileOpenEvent_url".}
proc fcQFileOpenEvent_openFile(self: pointer, file: pointer, flags: cint): bool {.importc: "QFileOpenEvent_openFile".}
proc fcQFileOpenEvent_delete(self: pointer) {.importc: "QFileOpenEvent_delete".}
proc fcQToolBarChangeEvent_new(t: bool): ptr cQToolBarChangeEvent {.importc: "QToolBarChangeEvent_new".}
proc fcQToolBarChangeEvent_new2(param1: pointer): ptr cQToolBarChangeEvent {.importc: "QToolBarChangeEvent_new2".}
proc fcQToolBarChangeEvent_toggle(self: pointer, ): bool {.importc: "QToolBarChangeEvent_toggle".}
proc fcQToolBarChangeEvent_delete(self: pointer) {.importc: "QToolBarChangeEvent_delete".}
proc fcQShortcutEvent_new(key: pointer, id: cint): ptr cQShortcutEvent {.importc: "QShortcutEvent_new".}
proc fcQShortcutEvent_new2(param1: pointer): ptr cQShortcutEvent {.importc: "QShortcutEvent_new2".}
proc fcQShortcutEvent_new3(key: pointer, id: cint, ambiguous: bool): ptr cQShortcutEvent {.importc: "QShortcutEvent_new3".}
proc fcQShortcutEvent_key(self: pointer, ): pointer {.importc: "QShortcutEvent_key".}
proc fcQShortcutEvent_shortcutId(self: pointer, ): cint {.importc: "QShortcutEvent_shortcutId".}
proc fcQShortcutEvent_isAmbiguous(self: pointer, ): bool {.importc: "QShortcutEvent_isAmbiguous".}
proc fcQShortcutEvent_delete(self: pointer) {.importc: "QShortcutEvent_delete".}
proc fcQWindowStateChangeEvent_new(aOldState: cint): ptr cQWindowStateChangeEvent {.importc: "QWindowStateChangeEvent_new".}
proc fcQWindowStateChangeEvent_new2(param1: pointer): ptr cQWindowStateChangeEvent {.importc: "QWindowStateChangeEvent_new2".}
proc fcQWindowStateChangeEvent_new3(aOldState: cint, isOverride: bool): ptr cQWindowStateChangeEvent {.importc: "QWindowStateChangeEvent_new3".}
proc fcQWindowStateChangeEvent_oldState(self: pointer, ): cint {.importc: "QWindowStateChangeEvent_oldState".}
proc fcQWindowStateChangeEvent_isOverride(self: pointer, ): bool {.importc: "QWindowStateChangeEvent_isOverride".}
proc fcQWindowStateChangeEvent_delete(self: pointer) {.importc: "QWindowStateChangeEvent_delete".}
proc fcQPointingDeviceUniqueId_new(): ptr cQPointingDeviceUniqueId {.importc: "QPointingDeviceUniqueId_new".}
proc fcQPointingDeviceUniqueId_new2(param1: pointer): ptr cQPointingDeviceUniqueId {.importc: "QPointingDeviceUniqueId_new2".}
proc fcQPointingDeviceUniqueId_fromNumericId(id: clonglong): pointer {.importc: "QPointingDeviceUniqueId_fromNumericId".}
proc fcQPointingDeviceUniqueId_isValid(self: pointer, ): bool {.importc: "QPointingDeviceUniqueId_isValid".}
proc fcQPointingDeviceUniqueId_numericId(self: pointer, ): clonglong {.importc: "QPointingDeviceUniqueId_numericId".}
proc fcQPointingDeviceUniqueId_staticMetaObject(): pointer {.importc: "QPointingDeviceUniqueId_staticMetaObject".}
proc fcQPointingDeviceUniqueId_delete(self: pointer) {.importc: "QPointingDeviceUniqueId_delete".}
proc fcQTouchEvent_new(eventType: cint): ptr cQTouchEvent {.importc: "QTouchEvent_new".}
proc fcQTouchEvent_new2(param1: pointer): ptr cQTouchEvent {.importc: "QTouchEvent_new2".}
proc fcQTouchEvent_new3(eventType: cint, device: pointer): ptr cQTouchEvent {.importc: "QTouchEvent_new3".}
proc fcQTouchEvent_new4(eventType: cint, device: pointer, modifiers: cint): ptr cQTouchEvent {.importc: "QTouchEvent_new4".}
proc fcQTouchEvent_new5(eventType: cint, device: pointer, modifiers: cint, touchPointStates: cint): ptr cQTouchEvent {.importc: "QTouchEvent_new5".}
proc fcQTouchEvent_new6(eventType: cint, device: pointer, modifiers: cint, touchPointStates: cint, touchPoints: struct_miqt_array): ptr cQTouchEvent {.importc: "QTouchEvent_new6".}
proc fcQTouchEvent_window(self: pointer, ): pointer {.importc: "QTouchEvent_window".}
proc fcQTouchEvent_target(self: pointer, ): pointer {.importc: "QTouchEvent_target".}
proc fcQTouchEvent_touchPointStates(self: pointer, ): cint {.importc: "QTouchEvent_touchPointStates".}
proc fcQTouchEvent_touchPoints(self: pointer, ): struct_miqt_array {.importc: "QTouchEvent_touchPoints".}
proc fcQTouchEvent_device(self: pointer, ): pointer {.importc: "QTouchEvent_device".}
proc fcQTouchEvent_setWindow(self: pointer, awindow: pointer): void {.importc: "QTouchEvent_setWindow".}
proc fcQTouchEvent_setTarget(self: pointer, atarget: pointer): void {.importc: "QTouchEvent_setTarget".}
proc fcQTouchEvent_setTouchPointStates(self: pointer, aTouchPointStates: cint): void {.importc: "QTouchEvent_setTouchPointStates".}
proc fcQTouchEvent_setTouchPoints(self: pointer, atouchPoints: struct_miqt_array): void {.importc: "QTouchEvent_setTouchPoints".}
proc fcQTouchEvent_setDevice(self: pointer, adevice: pointer): void {.importc: "QTouchEvent_setDevice".}
proc fcQTouchEvent_delete(self: pointer) {.importc: "QTouchEvent_delete".}
proc fcQScrollPrepareEvent_new(startPos: pointer): ptr cQScrollPrepareEvent {.importc: "QScrollPrepareEvent_new".}
proc fcQScrollPrepareEvent_new2(param1: pointer): ptr cQScrollPrepareEvent {.importc: "QScrollPrepareEvent_new2".}
proc fcQScrollPrepareEvent_startPos(self: pointer, ): pointer {.importc: "QScrollPrepareEvent_startPos".}
proc fcQScrollPrepareEvent_viewportSize(self: pointer, ): pointer {.importc: "QScrollPrepareEvent_viewportSize".}
proc fcQScrollPrepareEvent_contentPosRange(self: pointer, ): pointer {.importc: "QScrollPrepareEvent_contentPosRange".}
proc fcQScrollPrepareEvent_contentPos(self: pointer, ): pointer {.importc: "QScrollPrepareEvent_contentPos".}
proc fcQScrollPrepareEvent_setViewportSize(self: pointer, size: pointer): void {.importc: "QScrollPrepareEvent_setViewportSize".}
proc fcQScrollPrepareEvent_setContentPosRange(self: pointer, rect: pointer): void {.importc: "QScrollPrepareEvent_setContentPosRange".}
proc fcQScrollPrepareEvent_setContentPos(self: pointer, pos: pointer): void {.importc: "QScrollPrepareEvent_setContentPos".}
proc fcQScrollPrepareEvent_delete(self: pointer) {.importc: "QScrollPrepareEvent_delete".}
proc fcQScrollEvent_new(contentPos: pointer, overshoot: pointer, scrollState: cint): ptr cQScrollEvent {.importc: "QScrollEvent_new".}
proc fcQScrollEvent_new2(param1: pointer): ptr cQScrollEvent {.importc: "QScrollEvent_new2".}
proc fcQScrollEvent_contentPos(self: pointer, ): pointer {.importc: "QScrollEvent_contentPos".}
proc fcQScrollEvent_overshootDistance(self: pointer, ): pointer {.importc: "QScrollEvent_overshootDistance".}
proc fcQScrollEvent_scrollState(self: pointer, ): cint {.importc: "QScrollEvent_scrollState".}
proc fcQScrollEvent_delete(self: pointer) {.importc: "QScrollEvent_delete".}
proc fcQScreenOrientationChangeEvent_new(screen: pointer, orientation: cint): ptr cQScreenOrientationChangeEvent {.importc: "QScreenOrientationChangeEvent_new".}
proc fcQScreenOrientationChangeEvent_new2(param1: pointer): ptr cQScreenOrientationChangeEvent {.importc: "QScreenOrientationChangeEvent_new2".}
proc fcQScreenOrientationChangeEvent_screen(self: pointer, ): pointer {.importc: "QScreenOrientationChangeEvent_screen".}
proc fcQScreenOrientationChangeEvent_orientation(self: pointer, ): cint {.importc: "QScreenOrientationChangeEvent_orientation".}
proc fcQScreenOrientationChangeEvent_delete(self: pointer) {.importc: "QScreenOrientationChangeEvent_delete".}
proc fcQApplicationStateChangeEvent_new(state: cint): ptr cQApplicationStateChangeEvent {.importc: "QApplicationStateChangeEvent_new".}
proc fcQApplicationStateChangeEvent_new2(param1: pointer): ptr cQApplicationStateChangeEvent {.importc: "QApplicationStateChangeEvent_new2".}
proc fcQApplicationStateChangeEvent_applicationState(self: pointer, ): cint {.importc: "QApplicationStateChangeEvent_applicationState".}
proc fcQApplicationStateChangeEvent_delete(self: pointer) {.importc: "QApplicationStateChangeEvent_delete".}
proc fcQInputMethodEventAttribute_new(typ: cint, s: cint, l: cint, val: pointer): ptr cQInputMethodEventAttribute {.importc: "QInputMethodEvent__Attribute_new".}
proc fcQInputMethodEventAttribute_new2(typ: cint, s: cint, l: cint): ptr cQInputMethodEventAttribute {.importc: "QInputMethodEvent__Attribute_new2".}
proc fcQInputMethodEventAttribute_new3(param1: pointer): ptr cQInputMethodEventAttribute {.importc: "QInputMethodEvent__Attribute_new3".}
proc fcQInputMethodEventAttribute_operatorAssign(self: pointer, param1: pointer): void {.importc: "QInputMethodEvent__Attribute_operatorAssign".}
proc fcQInputMethodEventAttribute_delete(self: pointer) {.importc: "QInputMethodEvent__Attribute_delete".}
proc fcQTouchEventTouchPoint_new(): ptr cQTouchEventTouchPoint {.importc: "QTouchEvent__TouchPoint_new".}
proc fcQTouchEventTouchPoint_new2(other: pointer): ptr cQTouchEventTouchPoint {.importc: "QTouchEvent__TouchPoint_new2".}
proc fcQTouchEventTouchPoint_new3(id: cint): ptr cQTouchEventTouchPoint {.importc: "QTouchEvent__TouchPoint_new3".}
proc fcQTouchEventTouchPoint_operatorAssign(self: pointer, other: pointer): void {.importc: "QTouchEvent__TouchPoint_operatorAssign".}
proc fcQTouchEventTouchPoint_swap(self: pointer, other: pointer): void {.importc: "QTouchEvent__TouchPoint_swap".}
proc fcQTouchEventTouchPoint_id(self: pointer, ): cint {.importc: "QTouchEvent__TouchPoint_id".}
proc fcQTouchEventTouchPoint_uniqueId(self: pointer, ): pointer {.importc: "QTouchEvent__TouchPoint_uniqueId".}
proc fcQTouchEventTouchPoint_state(self: pointer, ): cint {.importc: "QTouchEvent__TouchPoint_state".}
proc fcQTouchEventTouchPoint_pos(self: pointer, ): pointer {.importc: "QTouchEvent__TouchPoint_pos".}
proc fcQTouchEventTouchPoint_startPos(self: pointer, ): pointer {.importc: "QTouchEvent__TouchPoint_startPos".}
proc fcQTouchEventTouchPoint_lastPos(self: pointer, ): pointer {.importc: "QTouchEvent__TouchPoint_lastPos".}
proc fcQTouchEventTouchPoint_scenePos(self: pointer, ): pointer {.importc: "QTouchEvent__TouchPoint_scenePos".}
proc fcQTouchEventTouchPoint_startScenePos(self: pointer, ): pointer {.importc: "QTouchEvent__TouchPoint_startScenePos".}
proc fcQTouchEventTouchPoint_lastScenePos(self: pointer, ): pointer {.importc: "QTouchEvent__TouchPoint_lastScenePos".}
proc fcQTouchEventTouchPoint_screenPos(self: pointer, ): pointer {.importc: "QTouchEvent__TouchPoint_screenPos".}
proc fcQTouchEventTouchPoint_startScreenPos(self: pointer, ): pointer {.importc: "QTouchEvent__TouchPoint_startScreenPos".}
proc fcQTouchEventTouchPoint_lastScreenPos(self: pointer, ): pointer {.importc: "QTouchEvent__TouchPoint_lastScreenPos".}
proc fcQTouchEventTouchPoint_normalizedPos(self: pointer, ): pointer {.importc: "QTouchEvent__TouchPoint_normalizedPos".}
proc fcQTouchEventTouchPoint_startNormalizedPos(self: pointer, ): pointer {.importc: "QTouchEvent__TouchPoint_startNormalizedPos".}
proc fcQTouchEventTouchPoint_lastNormalizedPos(self: pointer, ): pointer {.importc: "QTouchEvent__TouchPoint_lastNormalizedPos".}
proc fcQTouchEventTouchPoint_rect(self: pointer, ): pointer {.importc: "QTouchEvent__TouchPoint_rect".}
proc fcQTouchEventTouchPoint_sceneRect(self: pointer, ): pointer {.importc: "QTouchEvent__TouchPoint_sceneRect".}
proc fcQTouchEventTouchPoint_screenRect(self: pointer, ): pointer {.importc: "QTouchEvent__TouchPoint_screenRect".}
proc fcQTouchEventTouchPoint_setRect(self: pointer, rect: pointer): void {.importc: "QTouchEvent__TouchPoint_setRect".}
proc fcQTouchEventTouchPoint_setSceneRect(self: pointer, sceneRect: pointer): void {.importc: "QTouchEvent__TouchPoint_setSceneRect".}
proc fcQTouchEventTouchPoint_setScreenRect(self: pointer, screenRect: pointer): void {.importc: "QTouchEvent__TouchPoint_setScreenRect".}
proc fcQTouchEventTouchPoint_pressure(self: pointer, ): float64 {.importc: "QTouchEvent__TouchPoint_pressure".}
proc fcQTouchEventTouchPoint_rotation(self: pointer, ): float64 {.importc: "QTouchEvent__TouchPoint_rotation".}
proc fcQTouchEventTouchPoint_ellipseDiameters(self: pointer, ): pointer {.importc: "QTouchEvent__TouchPoint_ellipseDiameters".}
proc fcQTouchEventTouchPoint_velocity(self: pointer, ): pointer {.importc: "QTouchEvent__TouchPoint_velocity".}
proc fcQTouchEventTouchPoint_flags(self: pointer, ): cint {.importc: "QTouchEvent__TouchPoint_flags".}
proc fcQTouchEventTouchPoint_rawScreenPositions(self: pointer, ): struct_miqt_array {.importc: "QTouchEvent__TouchPoint_rawScreenPositions".}
proc fcQTouchEventTouchPoint_setId(self: pointer, id: cint): void {.importc: "QTouchEvent__TouchPoint_setId".}
proc fcQTouchEventTouchPoint_setUniqueId(self: pointer, uid: clonglong): void {.importc: "QTouchEvent__TouchPoint_setUniqueId".}
proc fcQTouchEventTouchPoint_setState(self: pointer, state: cint): void {.importc: "QTouchEvent__TouchPoint_setState".}
proc fcQTouchEventTouchPoint_setPos(self: pointer, pos: pointer): void {.importc: "QTouchEvent__TouchPoint_setPos".}
proc fcQTouchEventTouchPoint_setScenePos(self: pointer, scenePos: pointer): void {.importc: "QTouchEvent__TouchPoint_setScenePos".}
proc fcQTouchEventTouchPoint_setScreenPos(self: pointer, screenPos: pointer): void {.importc: "QTouchEvent__TouchPoint_setScreenPos".}
proc fcQTouchEventTouchPoint_setNormalizedPos(self: pointer, normalizedPos: pointer): void {.importc: "QTouchEvent__TouchPoint_setNormalizedPos".}
proc fcQTouchEventTouchPoint_setStartPos(self: pointer, startPos: pointer): void {.importc: "QTouchEvent__TouchPoint_setStartPos".}
proc fcQTouchEventTouchPoint_setStartScenePos(self: pointer, startScenePos: pointer): void {.importc: "QTouchEvent__TouchPoint_setStartScenePos".}
proc fcQTouchEventTouchPoint_setStartScreenPos(self: pointer, startScreenPos: pointer): void {.importc: "QTouchEvent__TouchPoint_setStartScreenPos".}
proc fcQTouchEventTouchPoint_setStartNormalizedPos(self: pointer, startNormalizedPos: pointer): void {.importc: "QTouchEvent__TouchPoint_setStartNormalizedPos".}
proc fcQTouchEventTouchPoint_setLastPos(self: pointer, lastPos: pointer): void {.importc: "QTouchEvent__TouchPoint_setLastPos".}
proc fcQTouchEventTouchPoint_setLastScenePos(self: pointer, lastScenePos: pointer): void {.importc: "QTouchEvent__TouchPoint_setLastScenePos".}
proc fcQTouchEventTouchPoint_setLastScreenPos(self: pointer, lastScreenPos: pointer): void {.importc: "QTouchEvent__TouchPoint_setLastScreenPos".}
proc fcQTouchEventTouchPoint_setLastNormalizedPos(self: pointer, lastNormalizedPos: pointer): void {.importc: "QTouchEvent__TouchPoint_setLastNormalizedPos".}
proc fcQTouchEventTouchPoint_setPressure(self: pointer, pressure: float64): void {.importc: "QTouchEvent__TouchPoint_setPressure".}
proc fcQTouchEventTouchPoint_setRotation(self: pointer, angle: float64): void {.importc: "QTouchEvent__TouchPoint_setRotation".}
proc fcQTouchEventTouchPoint_setEllipseDiameters(self: pointer, dia: pointer): void {.importc: "QTouchEvent__TouchPoint_setEllipseDiameters".}
proc fcQTouchEventTouchPoint_setVelocity(self: pointer, v: pointer): void {.importc: "QTouchEvent__TouchPoint_setVelocity".}
proc fcQTouchEventTouchPoint_setFlags(self: pointer, flags: cint): void {.importc: "QTouchEvent__TouchPoint_setFlags".}
proc fcQTouchEventTouchPoint_setRawScreenPositions(self: pointer, positions: struct_miqt_array): void {.importc: "QTouchEvent__TouchPoint_setRawScreenPositions".}
proc fcQTouchEventTouchPoint_delete(self: pointer) {.importc: "QTouchEvent__TouchPoint_delete".}


func init*(T: type QInputEvent, h: ptr cQInputEvent): QInputEvent =
  T(h: h)
proc create*(T: type QInputEvent, typeVal: gen_qcoreevent.QEventType): QInputEvent =

  QInputEvent.init(fcQInputEvent_new(cint(typeVal)))
proc create*(T: type QInputEvent, param1: QInputEvent): QInputEvent =

  QInputEvent.init(fcQInputEvent_new2(param1.h))
proc create*(T: type QInputEvent, typeVal: gen_qcoreevent.QEventType, modifiers: gen_qnamespace.KeyboardModifier): QInputEvent =

  QInputEvent.init(fcQInputEvent_new3(cint(typeVal), cint(modifiers)))
proc modifiers*(self: QInputEvent, ): gen_qnamespace.KeyboardModifier =

  gen_qnamespace.KeyboardModifier(fcQInputEvent_modifiers(self.h))

proc setModifiers*(self: QInputEvent, amodifiers: gen_qnamespace.KeyboardModifier): void =

  fcQInputEvent_setModifiers(self.h, cint(amodifiers))

proc timestamp*(self: QInputEvent, ): culong =

  fcQInputEvent_timestamp(self.h)

proc setTimestamp*(self: QInputEvent, atimestamp: culong): void =

  fcQInputEvent_setTimestamp(self.h, atimestamp)

proc delete*(self: QInputEvent) =
  fcQInputEvent_delete(self.h)

func init*(T: type QEnterEvent, h: ptr cQEnterEvent): QEnterEvent =
  T(h: h)
proc create*(T: type QEnterEvent, localPos: gen_qpoint.QPointF, windowPos: gen_qpoint.QPointF, screenPos: gen_qpoint.QPointF): QEnterEvent =

  QEnterEvent.init(fcQEnterEvent_new(localPos.h, windowPos.h, screenPos.h))
proc create*(T: type QEnterEvent, param1: QEnterEvent): QEnterEvent =

  QEnterEvent.init(fcQEnterEvent_new2(param1.h))
proc pos*(self: QEnterEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQEnterEvent_pos(self.h))

proc globalPos*(self: QEnterEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQEnterEvent_globalPos(self.h))

proc x*(self: QEnterEvent, ): cint =

  fcQEnterEvent_x(self.h)

proc y*(self: QEnterEvent, ): cint =

  fcQEnterEvent_y(self.h)

proc globalX*(self: QEnterEvent, ): cint =

  fcQEnterEvent_globalX(self.h)

proc globalY*(self: QEnterEvent, ): cint =

  fcQEnterEvent_globalY(self.h)

proc localPos*(self: QEnterEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQEnterEvent_localPos(self.h))

proc windowPos*(self: QEnterEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQEnterEvent_windowPos(self.h))

proc screenPos*(self: QEnterEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQEnterEvent_screenPos(self.h))

proc delete*(self: QEnterEvent) =
  fcQEnterEvent_delete(self.h)

func init*(T: type QMouseEvent, h: ptr cQMouseEvent): QMouseEvent =
  T(h: h)
proc create*(T: type QMouseEvent, typeVal: gen_qcoreevent.QEventType, localPos: gen_qpoint.QPointF, button: gen_qnamespace.MouseButton, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier): QMouseEvent =

  QMouseEvent.init(fcQMouseEvent_new(cint(typeVal), localPos.h, cint(button), cint(buttons), cint(modifiers)))
proc create*(T: type QMouseEvent, typeVal: gen_qcoreevent.QEventType, localPos: gen_qpoint.QPointF, screenPos: gen_qpoint.QPointF, button: gen_qnamespace.MouseButton, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier): QMouseEvent =

  QMouseEvent.init(fcQMouseEvent_new2(cint(typeVal), localPos.h, screenPos.h, cint(button), cint(buttons), cint(modifiers)))
proc create*(T: type QMouseEvent, typeVal: gen_qcoreevent.QEventType, localPos: gen_qpoint.QPointF, windowPos: gen_qpoint.QPointF, screenPos: gen_qpoint.QPointF, button: gen_qnamespace.MouseButton, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier): QMouseEvent =

  QMouseEvent.init(fcQMouseEvent_new3(cint(typeVal), localPos.h, windowPos.h, screenPos.h, cint(button), cint(buttons), cint(modifiers)))
proc create*(T: type QMouseEvent, typeVal: gen_qcoreevent.QEventType, localPos: gen_qpoint.QPointF, windowPos: gen_qpoint.QPointF, screenPos: gen_qpoint.QPointF, button: gen_qnamespace.MouseButton, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier, source: gen_qnamespace.MouseEventSource): QMouseEvent =

  QMouseEvent.init(fcQMouseEvent_new4(cint(typeVal), localPos.h, windowPos.h, screenPos.h, cint(button), cint(buttons), cint(modifiers), cint(source)))
proc create*(T: type QMouseEvent, param1: QMouseEvent): QMouseEvent =

  QMouseEvent.init(fcQMouseEvent_new5(param1.h))
proc pos*(self: QMouseEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQMouseEvent_pos(self.h))

proc globalPos*(self: QMouseEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQMouseEvent_globalPos(self.h))

proc x*(self: QMouseEvent, ): cint =

  fcQMouseEvent_x(self.h)

proc y*(self: QMouseEvent, ): cint =

  fcQMouseEvent_y(self.h)

proc globalX*(self: QMouseEvent, ): cint =

  fcQMouseEvent_globalX(self.h)

proc globalY*(self: QMouseEvent, ): cint =

  fcQMouseEvent_globalY(self.h)

proc localPos*(self: QMouseEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQMouseEvent_localPos(self.h))

proc windowPos*(self: QMouseEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQMouseEvent_windowPos(self.h))

proc screenPos*(self: QMouseEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQMouseEvent_screenPos(self.h))

proc button*(self: QMouseEvent, ): gen_qnamespace.MouseButton =

  gen_qnamespace.MouseButton(fcQMouseEvent_button(self.h))

proc buttons*(self: QMouseEvent, ): gen_qnamespace.MouseButton =

  gen_qnamespace.MouseButton(fcQMouseEvent_buttons(self.h))

proc setLocalPos*(self: QMouseEvent, localPosition: gen_qpoint.QPointF): void =

  fcQMouseEvent_setLocalPos(self.h, localPosition.h)

proc source*(self: QMouseEvent, ): gen_qnamespace.MouseEventSource =

  gen_qnamespace.MouseEventSource(fcQMouseEvent_source(self.h))

proc flags*(self: QMouseEvent, ): gen_qnamespace.MouseEventFlag =

  gen_qnamespace.MouseEventFlag(fcQMouseEvent_flags(self.h))

proc delete*(self: QMouseEvent) =
  fcQMouseEvent_delete(self.h)

func init*(T: type QHoverEvent, h: ptr cQHoverEvent): QHoverEvent =
  T(h: h)
proc create*(T: type QHoverEvent, typeVal: gen_qcoreevent.QEventType, pos: gen_qpoint.QPointF, oldPos: gen_qpoint.QPointF): QHoverEvent =

  QHoverEvent.init(fcQHoverEvent_new(cint(typeVal), pos.h, oldPos.h))
proc create*(T: type QHoverEvent, param1: QHoverEvent): QHoverEvent =

  QHoverEvent.init(fcQHoverEvent_new2(param1.h))
proc create*(T: type QHoverEvent, typeVal: gen_qcoreevent.QEventType, pos: gen_qpoint.QPointF, oldPos: gen_qpoint.QPointF, modifiers: gen_qnamespace.KeyboardModifier): QHoverEvent =

  QHoverEvent.init(fcQHoverEvent_new3(cint(typeVal), pos.h, oldPos.h, cint(modifiers)))
proc pos*(self: QHoverEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQHoverEvent_pos(self.h))

proc oldPos*(self: QHoverEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQHoverEvent_oldPos(self.h))

proc posF*(self: QHoverEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQHoverEvent_posF(self.h))

proc oldPosF*(self: QHoverEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQHoverEvent_oldPosF(self.h))

proc delete*(self: QHoverEvent) =
  fcQHoverEvent_delete(self.h)

func init*(T: type QWheelEvent, h: ptr cQWheelEvent): QWheelEvent =
  T(h: h)
proc create*(T: type QWheelEvent, pos: gen_qpoint.QPointF, delta: cint, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier): QWheelEvent =

  QWheelEvent.init(fcQWheelEvent_new(pos.h, delta, cint(buttons), cint(modifiers)))
proc create*(T: type QWheelEvent, pos: gen_qpoint.QPointF, globalPos: gen_qpoint.QPointF, delta: cint, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier): QWheelEvent =

  QWheelEvent.init(fcQWheelEvent_new2(pos.h, globalPos.h, delta, cint(buttons), cint(modifiers)))
proc create*(T: type QWheelEvent, pos: gen_qpoint.QPointF, globalPos: gen_qpoint.QPointF, pixelDelta: gen_qpoint.QPoint, angleDelta: gen_qpoint.QPoint, qt4Delta: cint, qt4Orientation: gen_qnamespace.Orientation, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier): QWheelEvent =

  QWheelEvent.init(fcQWheelEvent_new3(pos.h, globalPos.h, pixelDelta.h, angleDelta.h, qt4Delta, cint(qt4Orientation), cint(buttons), cint(modifiers)))
proc create*(T: type QWheelEvent, pos: gen_qpoint.QPointF, globalPos: gen_qpoint.QPointF, pixelDelta: gen_qpoint.QPoint, angleDelta: gen_qpoint.QPoint, qt4Delta: cint, qt4Orientation: gen_qnamespace.Orientation, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier, phase: gen_qnamespace.ScrollPhase): QWheelEvent =

  QWheelEvent.init(fcQWheelEvent_new4(pos.h, globalPos.h, pixelDelta.h, angleDelta.h, qt4Delta, cint(qt4Orientation), cint(buttons), cint(modifiers), cint(phase)))
proc create*(T: type QWheelEvent, pos: gen_qpoint.QPointF, globalPos: gen_qpoint.QPointF, pixelDelta: gen_qpoint.QPoint, angleDelta: gen_qpoint.QPoint, qt4Delta: cint, qt4Orientation: gen_qnamespace.Orientation, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier, phase: gen_qnamespace.ScrollPhase, source: gen_qnamespace.MouseEventSource): QWheelEvent =

  QWheelEvent.init(fcQWheelEvent_new5(pos.h, globalPos.h, pixelDelta.h, angleDelta.h, qt4Delta, cint(qt4Orientation), cint(buttons), cint(modifiers), cint(phase), cint(source)))
proc create*(T: type QWheelEvent, pos: gen_qpoint.QPointF, globalPos: gen_qpoint.QPointF, pixelDelta: gen_qpoint.QPoint, angleDelta: gen_qpoint.QPoint, qt4Delta: cint, qt4Orientation: gen_qnamespace.Orientation, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier, phase: gen_qnamespace.ScrollPhase, source: gen_qnamespace.MouseEventSource, inverted: bool): QWheelEvent =

  QWheelEvent.init(fcQWheelEvent_new6(pos.h, globalPos.h, pixelDelta.h, angleDelta.h, qt4Delta, cint(qt4Orientation), cint(buttons), cint(modifiers), cint(phase), cint(source), inverted))
proc create*(T: type QWheelEvent, pos: gen_qpoint.QPointF, globalPos: gen_qpoint.QPointF, pixelDelta: gen_qpoint.QPoint, angleDelta: gen_qpoint.QPoint, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier, phase: gen_qnamespace.ScrollPhase, inverted: bool): QWheelEvent =

  QWheelEvent.init(fcQWheelEvent_new7(pos.h, globalPos.h, pixelDelta.h, angleDelta.h, cint(buttons), cint(modifiers), cint(phase), inverted))
proc create*(T: type QWheelEvent, param1: QWheelEvent): QWheelEvent =

  QWheelEvent.init(fcQWheelEvent_new8(param1.h))
proc create*(T: type QWheelEvent, pos: gen_qpoint.QPointF, delta: cint, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier, orient: gen_qnamespace.Orientation): QWheelEvent =

  QWheelEvent.init(fcQWheelEvent_new9(pos.h, delta, cint(buttons), cint(modifiers), cint(orient)))
proc create*(T: type QWheelEvent, pos: gen_qpoint.QPointF, globalPos: gen_qpoint.QPointF, delta: cint, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier, orient: gen_qnamespace.Orientation): QWheelEvent =

  QWheelEvent.init(fcQWheelEvent_new10(pos.h, globalPos.h, delta, cint(buttons), cint(modifiers), cint(orient)))
proc create*(T: type QWheelEvent, pos: gen_qpoint.QPointF, globalPos: gen_qpoint.QPointF, pixelDelta: gen_qpoint.QPoint, angleDelta: gen_qpoint.QPoint, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier, phase: gen_qnamespace.ScrollPhase, inverted: bool, source: gen_qnamespace.MouseEventSource): QWheelEvent =

  QWheelEvent.init(fcQWheelEvent_new11(pos.h, globalPos.h, pixelDelta.h, angleDelta.h, cint(buttons), cint(modifiers), cint(phase), inverted, cint(source)))
proc pixelDelta*(self: QWheelEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQWheelEvent_pixelDelta(self.h))

proc angleDelta*(self: QWheelEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQWheelEvent_angleDelta(self.h))

proc delta*(self: QWheelEvent, ): cint =

  fcQWheelEvent_delta(self.h)

proc orientation*(self: QWheelEvent, ): gen_qnamespace.Orientation =

  gen_qnamespace.Orientation(fcQWheelEvent_orientation(self.h))

proc pos*(self: QWheelEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQWheelEvent_pos(self.h))

proc globalPos*(self: QWheelEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQWheelEvent_globalPos(self.h))

proc x*(self: QWheelEvent, ): cint =

  fcQWheelEvent_x(self.h)

proc y*(self: QWheelEvent, ): cint =

  fcQWheelEvent_y(self.h)

proc globalX*(self: QWheelEvent, ): cint =

  fcQWheelEvent_globalX(self.h)

proc globalY*(self: QWheelEvent, ): cint =

  fcQWheelEvent_globalY(self.h)

proc posF*(self: QWheelEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQWheelEvent_posF(self.h))

proc globalPosF*(self: QWheelEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQWheelEvent_globalPosF(self.h))

proc position*(self: QWheelEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQWheelEvent_position(self.h))

proc globalPosition*(self: QWheelEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQWheelEvent_globalPosition(self.h))

proc buttons*(self: QWheelEvent, ): gen_qnamespace.MouseButton =

  gen_qnamespace.MouseButton(fcQWheelEvent_buttons(self.h))

proc phase*(self: QWheelEvent, ): gen_qnamespace.ScrollPhase =

  gen_qnamespace.ScrollPhase(fcQWheelEvent_phase(self.h))

proc inverted*(self: QWheelEvent, ): bool =

  fcQWheelEvent_inverted(self.h)

proc source*(self: QWheelEvent, ): gen_qnamespace.MouseEventSource =

  gen_qnamespace.MouseEventSource(fcQWheelEvent_source(self.h))

proc delete*(self: QWheelEvent) =
  fcQWheelEvent_delete(self.h)

func init*(T: type QTabletEvent, h: ptr cQTabletEvent): QTabletEvent =
  T(h: h)
proc create*(T: type QTabletEvent, t: gen_qcoreevent.QEventType, pos: gen_qpoint.QPointF, globalPos: gen_qpoint.QPointF, device: cint, pointerType: cint, pressure: float64, xTilt: cint, yTilt: cint, tangentialPressure: float64, rotation: float64, z: cint, keyState: gen_qnamespace.KeyboardModifier, uniqueID: clonglong): QTabletEvent =

  QTabletEvent.init(fcQTabletEvent_new(cint(t), pos.h, globalPos.h, device, pointerType, pressure, xTilt, yTilt, tangentialPressure, rotation, z, cint(keyState), uniqueID))
proc create*(T: type QTabletEvent, t: gen_qcoreevent.QEventType, pos: gen_qpoint.QPointF, globalPos: gen_qpoint.QPointF, device: cint, pointerType: cint, pressure: float64, xTilt: cint, yTilt: cint, tangentialPressure: float64, rotation: float64, z: cint, keyState: gen_qnamespace.KeyboardModifier, uniqueID: clonglong, button: gen_qnamespace.MouseButton, buttons: gen_qnamespace.MouseButton): QTabletEvent =

  QTabletEvent.init(fcQTabletEvent_new2(cint(t), pos.h, globalPos.h, device, pointerType, pressure, xTilt, yTilt, tangentialPressure, rotation, z, cint(keyState), uniqueID, cint(button), cint(buttons)))
proc create*(T: type QTabletEvent, param1: QTabletEvent): QTabletEvent =

  QTabletEvent.init(fcQTabletEvent_new3(param1.h))
proc pos*(self: QTabletEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQTabletEvent_pos(self.h))

proc globalPos*(self: QTabletEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQTabletEvent_globalPos(self.h))

proc posF*(self: QTabletEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQTabletEvent_posF(self.h))

proc globalPosF*(self: QTabletEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQTabletEvent_globalPosF(self.h))

proc x*(self: QTabletEvent, ): cint =

  fcQTabletEvent_x(self.h)

proc y*(self: QTabletEvent, ): cint =

  fcQTabletEvent_y(self.h)

proc globalX*(self: QTabletEvent, ): cint =

  fcQTabletEvent_globalX(self.h)

proc globalY*(self: QTabletEvent, ): cint =

  fcQTabletEvent_globalY(self.h)

proc hiResGlobalX*(self: QTabletEvent, ): float64 =

  fcQTabletEvent_hiResGlobalX(self.h)

proc hiResGlobalY*(self: QTabletEvent, ): float64 =

  fcQTabletEvent_hiResGlobalY(self.h)

proc device*(self: QTabletEvent, ): QTabletEventTabletDevice =

  QTabletEventTabletDevice(fcQTabletEvent_device(self.h))

proc deviceType*(self: QTabletEvent, ): QTabletEventTabletDevice =

  QTabletEventTabletDevice(fcQTabletEvent_deviceType(self.h))

proc pointerType*(self: QTabletEvent, ): QTabletEventPointerType =

  QTabletEventPointerType(fcQTabletEvent_pointerType(self.h))

proc uniqueId*(self: QTabletEvent, ): clonglong =

  fcQTabletEvent_uniqueId(self.h)

proc pressure*(self: QTabletEvent, ): float64 =

  fcQTabletEvent_pressure(self.h)

proc z*(self: QTabletEvent, ): cint =

  fcQTabletEvent_z(self.h)

proc tangentialPressure*(self: QTabletEvent, ): float64 =

  fcQTabletEvent_tangentialPressure(self.h)

proc rotation*(self: QTabletEvent, ): float64 =

  fcQTabletEvent_rotation(self.h)

proc xTilt*(self: QTabletEvent, ): cint =

  fcQTabletEvent_xTilt(self.h)

proc yTilt*(self: QTabletEvent, ): cint =

  fcQTabletEvent_yTilt(self.h)

proc button*(self: QTabletEvent, ): gen_qnamespace.MouseButton =

  gen_qnamespace.MouseButton(fcQTabletEvent_button(self.h))

proc buttons*(self: QTabletEvent, ): gen_qnamespace.MouseButton =

  gen_qnamespace.MouseButton(fcQTabletEvent_buttons(self.h))

proc staticMetaObject*(_: type QTabletEvent): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQTabletEvent_staticMetaObject())
proc delete*(self: QTabletEvent) =
  fcQTabletEvent_delete(self.h)

func init*(T: type QNativeGestureEvent, h: ptr cQNativeGestureEvent): QNativeGestureEvent =
  T(h: h)
proc create*(T: type QNativeGestureEvent, typeVal: gen_qnamespace.NativeGestureType, localPos: gen_qpoint.QPointF, windowPos: gen_qpoint.QPointF, screenPos: gen_qpoint.QPointF, value: float64, sequenceId: culong, intArgument: culonglong): QNativeGestureEvent =

  QNativeGestureEvent.init(fcQNativeGestureEvent_new(cint(typeVal), localPos.h, windowPos.h, screenPos.h, value, sequenceId, intArgument))
proc create*(T: type QNativeGestureEvent, typeVal: gen_qnamespace.NativeGestureType, dev: gen_qtouchdevice.QTouchDevice, localPos: gen_qpoint.QPointF, windowPos: gen_qpoint.QPointF, screenPos: gen_qpoint.QPointF, value: float64, sequenceId: culong, intArgument: culonglong): QNativeGestureEvent =

  QNativeGestureEvent.init(fcQNativeGestureEvent_new2(cint(typeVal), dev.h, localPos.h, windowPos.h, screenPos.h, value, sequenceId, intArgument))
proc create*(T: type QNativeGestureEvent, param1: QNativeGestureEvent): QNativeGestureEvent =

  QNativeGestureEvent.init(fcQNativeGestureEvent_new3(param1.h))
proc gestureType*(self: QNativeGestureEvent, ): gen_qnamespace.NativeGestureType =

  gen_qnamespace.NativeGestureType(fcQNativeGestureEvent_gestureType(self.h))

proc value*(self: QNativeGestureEvent, ): float64 =

  fcQNativeGestureEvent_value(self.h)

proc pos*(self: QNativeGestureEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQNativeGestureEvent_pos(self.h))

proc globalPos*(self: QNativeGestureEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQNativeGestureEvent_globalPos(self.h))

proc localPos*(self: QNativeGestureEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQNativeGestureEvent_localPos(self.h))

proc windowPos*(self: QNativeGestureEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQNativeGestureEvent_windowPos(self.h))

proc screenPos*(self: QNativeGestureEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQNativeGestureEvent_screenPos(self.h))

proc device*(self: QNativeGestureEvent, ): gen_qtouchdevice.QTouchDevice =

  gen_qtouchdevice.QTouchDevice(h: fcQNativeGestureEvent_device(self.h))

proc delete*(self: QNativeGestureEvent) =
  fcQNativeGestureEvent_delete(self.h)

func init*(T: type QKeyEvent, h: ptr cQKeyEvent): QKeyEvent =
  T(h: h)
proc create*(T: type QKeyEvent, typeVal: gen_qcoreevent.QEventType, key: cint, modifiers: gen_qnamespace.KeyboardModifier): QKeyEvent =

  QKeyEvent.init(fcQKeyEvent_new(cint(typeVal), key, cint(modifiers)))
proc create*(T: type QKeyEvent, typeVal: gen_qcoreevent.QEventType, key: cint, modifiers: gen_qnamespace.KeyboardModifier, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint): QKeyEvent =

  QKeyEvent.init(fcQKeyEvent_new2(cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers))
proc create*(T: type QKeyEvent, param1: QKeyEvent): QKeyEvent =

  QKeyEvent.init(fcQKeyEvent_new3(param1.h))
proc create*(T: type QKeyEvent, typeVal: gen_qcoreevent.QEventType, key: cint, modifiers: gen_qnamespace.KeyboardModifier, text: string): QKeyEvent =

  QKeyEvent.init(fcQKeyEvent_new4(cint(typeVal), key, cint(modifiers), struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create*(T: type QKeyEvent, typeVal: gen_qcoreevent.QEventType, key: cint, modifiers: gen_qnamespace.KeyboardModifier, text: string, autorep: bool): QKeyEvent =

  QKeyEvent.init(fcQKeyEvent_new5(cint(typeVal), key, cint(modifiers), struct_miqt_string(data: text, len: csize_t(len(text))), autorep))
proc create*(T: type QKeyEvent, typeVal: gen_qcoreevent.QEventType, key: cint, modifiers: gen_qnamespace.KeyboardModifier, text: string, autorep: bool, count: cushort): QKeyEvent =

  QKeyEvent.init(fcQKeyEvent_new6(cint(typeVal), key, cint(modifiers), struct_miqt_string(data: text, len: csize_t(len(text))), autorep, count))
proc create*(T: type QKeyEvent, typeVal: gen_qcoreevent.QEventType, key: cint, modifiers: gen_qnamespace.KeyboardModifier, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: string): QKeyEvent =

  QKeyEvent.init(fcQKeyEvent_new7(cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers, struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create*(T: type QKeyEvent, typeVal: gen_qcoreevent.QEventType, key: cint, modifiers: gen_qnamespace.KeyboardModifier, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: string, autorep: bool): QKeyEvent =

  QKeyEvent.init(fcQKeyEvent_new8(cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers, struct_miqt_string(data: text, len: csize_t(len(text))), autorep))
proc create*(T: type QKeyEvent, typeVal: gen_qcoreevent.QEventType, key: cint, modifiers: gen_qnamespace.KeyboardModifier, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: string, autorep: bool, count: cushort): QKeyEvent =

  QKeyEvent.init(fcQKeyEvent_new9(cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers, struct_miqt_string(data: text, len: csize_t(len(text))), autorep, count))
proc key*(self: QKeyEvent, ): cint =

  fcQKeyEvent_key(self.h)

proc matches*(self: QKeyEvent, key: gen_qkeysequence.QKeySequenceStandardKey): bool =

  fcQKeyEvent_matches(self.h, cint(key))

proc modifiers*(self: QKeyEvent, ): gen_qnamespace.KeyboardModifier =

  gen_qnamespace.KeyboardModifier(fcQKeyEvent_modifiers(self.h))

proc text*(self: QKeyEvent, ): string =

  let v_ms = fcQKeyEvent_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isAutoRepeat*(self: QKeyEvent, ): bool =

  fcQKeyEvent_isAutoRepeat(self.h)

proc count*(self: QKeyEvent, ): cint =

  fcQKeyEvent_count(self.h)

proc nativeScanCode*(self: QKeyEvent, ): cuint =

  fcQKeyEvent_nativeScanCode(self.h)

proc nativeVirtualKey*(self: QKeyEvent, ): cuint =

  fcQKeyEvent_nativeVirtualKey(self.h)

proc nativeModifiers*(self: QKeyEvent, ): cuint =

  fcQKeyEvent_nativeModifiers(self.h)

proc delete*(self: QKeyEvent) =
  fcQKeyEvent_delete(self.h)

func init*(T: type QFocusEvent, h: ptr cQFocusEvent): QFocusEvent =
  T(h: h)
proc create*(T: type QFocusEvent, typeVal: gen_qcoreevent.QEventType): QFocusEvent =

  QFocusEvent.init(fcQFocusEvent_new(cint(typeVal)))
proc create*(T: type QFocusEvent, param1: QFocusEvent): QFocusEvent =

  QFocusEvent.init(fcQFocusEvent_new2(param1.h))
proc create*(T: type QFocusEvent, typeVal: gen_qcoreevent.QEventType, reason: gen_qnamespace.FocusReason): QFocusEvent =

  QFocusEvent.init(fcQFocusEvent_new3(cint(typeVal), cint(reason)))
proc gotFocus*(self: QFocusEvent, ): bool =

  fcQFocusEvent_gotFocus(self.h)

proc lostFocus*(self: QFocusEvent, ): bool =

  fcQFocusEvent_lostFocus(self.h)

proc reason*(self: QFocusEvent, ): gen_qnamespace.FocusReason =

  gen_qnamespace.FocusReason(fcQFocusEvent_reason(self.h))

proc delete*(self: QFocusEvent) =
  fcQFocusEvent_delete(self.h)

func init*(T: type QPaintEvent, h: ptr cQPaintEvent): QPaintEvent =
  T(h: h)
proc create*(T: type QPaintEvent, paintRegion: gen_qregion.QRegion): QPaintEvent =

  QPaintEvent.init(fcQPaintEvent_new(paintRegion.h))
proc create2*(T: type QPaintEvent, paintRect: gen_qrect.QRect): QPaintEvent =

  QPaintEvent.init(fcQPaintEvent_new2(paintRect.h))
proc create2*(T: type QPaintEvent, param1: QPaintEvent): QPaintEvent =

  QPaintEvent.init(fcQPaintEvent_new3(param1.h))
proc rect*(self: QPaintEvent, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQPaintEvent_rect(self.h))

proc region*(self: QPaintEvent, ): gen_qregion.QRegion =

  gen_qregion.QRegion(h: fcQPaintEvent_region(self.h))

proc delete*(self: QPaintEvent) =
  fcQPaintEvent_delete(self.h)

func init*(T: type QMoveEvent, h: ptr cQMoveEvent): QMoveEvent =
  T(h: h)
proc create*(T: type QMoveEvent, pos: gen_qpoint.QPoint, oldPos: gen_qpoint.QPoint): QMoveEvent =

  QMoveEvent.init(fcQMoveEvent_new(pos.h, oldPos.h))
proc create*(T: type QMoveEvent, param1: QMoveEvent): QMoveEvent =

  QMoveEvent.init(fcQMoveEvent_new2(param1.h))
proc pos*(self: QMoveEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQMoveEvent_pos(self.h))

proc oldPos*(self: QMoveEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQMoveEvent_oldPos(self.h))

proc delete*(self: QMoveEvent) =
  fcQMoveEvent_delete(self.h)

func init*(T: type QExposeEvent, h: ptr cQExposeEvent): QExposeEvent =
  T(h: h)
proc create*(T: type QExposeEvent, rgn: gen_qregion.QRegion): QExposeEvent =

  QExposeEvent.init(fcQExposeEvent_new(rgn.h))
proc create2*(T: type QExposeEvent, param1: QExposeEvent): QExposeEvent =

  QExposeEvent.init(fcQExposeEvent_new2(param1.h))
proc region*(self: QExposeEvent, ): gen_qregion.QRegion =

  gen_qregion.QRegion(h: fcQExposeEvent_region(self.h))

proc delete*(self: QExposeEvent) =
  fcQExposeEvent_delete(self.h)

func init*(T: type QPlatformSurfaceEvent, h: ptr cQPlatformSurfaceEvent): QPlatformSurfaceEvent =
  T(h: h)
proc create*(T: type QPlatformSurfaceEvent, surfaceEventType: QPlatformSurfaceEventSurfaceEventType): QPlatformSurfaceEvent =

  QPlatformSurfaceEvent.init(fcQPlatformSurfaceEvent_new(cint(surfaceEventType)))
proc create*(T: type QPlatformSurfaceEvent, param1: QPlatformSurfaceEvent): QPlatformSurfaceEvent =

  QPlatformSurfaceEvent.init(fcQPlatformSurfaceEvent_new2(param1.h))
proc surfaceEventType*(self: QPlatformSurfaceEvent, ): QPlatformSurfaceEventSurfaceEventType =

  QPlatformSurfaceEventSurfaceEventType(fcQPlatformSurfaceEvent_surfaceEventType(self.h))

proc delete*(self: QPlatformSurfaceEvent) =
  fcQPlatformSurfaceEvent_delete(self.h)

func init*(T: type QResizeEvent, h: ptr cQResizeEvent): QResizeEvent =
  T(h: h)
proc create*(T: type QResizeEvent, size: gen_qsize.QSize, oldSize: gen_qsize.QSize): QResizeEvent =

  QResizeEvent.init(fcQResizeEvent_new(size.h, oldSize.h))
proc create*(T: type QResizeEvent, param1: QResizeEvent): QResizeEvent =

  QResizeEvent.init(fcQResizeEvent_new2(param1.h))
proc size*(self: QResizeEvent, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQResizeEvent_size(self.h))

proc oldSize*(self: QResizeEvent, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQResizeEvent_oldSize(self.h))

proc delete*(self: QResizeEvent) =
  fcQResizeEvent_delete(self.h)

func init*(T: type QCloseEvent, h: ptr cQCloseEvent): QCloseEvent =
  T(h: h)
proc create*(T: type QCloseEvent, ): QCloseEvent =

  QCloseEvent.init(fcQCloseEvent_new())
proc create*(T: type QCloseEvent, param1: QCloseEvent): QCloseEvent =

  QCloseEvent.init(fcQCloseEvent_new2(param1.h))
proc operatorAssign*(self: QCloseEvent, param1: QCloseEvent): void =

  fcQCloseEvent_operatorAssign(self.h, param1.h)

proc delete*(self: QCloseEvent) =
  fcQCloseEvent_delete(self.h)

func init*(T: type QIconDragEvent, h: ptr cQIconDragEvent): QIconDragEvent =
  T(h: h)
proc create*(T: type QIconDragEvent, ): QIconDragEvent =

  QIconDragEvent.init(fcQIconDragEvent_new())
proc create*(T: type QIconDragEvent, param1: QIconDragEvent): QIconDragEvent =

  QIconDragEvent.init(fcQIconDragEvent_new2(param1.h))
proc operatorAssign*(self: QIconDragEvent, param1: QIconDragEvent): void =

  fcQIconDragEvent_operatorAssign(self.h, param1.h)

proc delete*(self: QIconDragEvent) =
  fcQIconDragEvent_delete(self.h)

func init*(T: type QShowEvent, h: ptr cQShowEvent): QShowEvent =
  T(h: h)
proc create*(T: type QShowEvent, ): QShowEvent =

  QShowEvent.init(fcQShowEvent_new())
proc create*(T: type QShowEvent, param1: QShowEvent): QShowEvent =

  QShowEvent.init(fcQShowEvent_new2(param1.h))
proc operatorAssign*(self: QShowEvent, param1: QShowEvent): void =

  fcQShowEvent_operatorAssign(self.h, param1.h)

proc delete*(self: QShowEvent) =
  fcQShowEvent_delete(self.h)

func init*(T: type QHideEvent, h: ptr cQHideEvent): QHideEvent =
  T(h: h)
proc create*(T: type QHideEvent, ): QHideEvent =

  QHideEvent.init(fcQHideEvent_new())
proc create*(T: type QHideEvent, param1: QHideEvent): QHideEvent =

  QHideEvent.init(fcQHideEvent_new2(param1.h))
proc operatorAssign*(self: QHideEvent, param1: QHideEvent): void =

  fcQHideEvent_operatorAssign(self.h, param1.h)

proc delete*(self: QHideEvent) =
  fcQHideEvent_delete(self.h)

func init*(T: type QContextMenuEvent, h: ptr cQContextMenuEvent): QContextMenuEvent =
  T(h: h)
proc create*(T: type QContextMenuEvent, reason: QContextMenuEventReason, pos: gen_qpoint.QPoint, globalPos: gen_qpoint.QPoint, modifiers: gen_qnamespace.KeyboardModifier): QContextMenuEvent =

  QContextMenuEvent.init(fcQContextMenuEvent_new(cint(reason), pos.h, globalPos.h, cint(modifiers)))
proc create*(T: type QContextMenuEvent, reason: QContextMenuEventReason, pos: gen_qpoint.QPoint, globalPos: gen_qpoint.QPoint): QContextMenuEvent =

  QContextMenuEvent.init(fcQContextMenuEvent_new2(cint(reason), pos.h, globalPos.h))
proc create*(T: type QContextMenuEvent, reason: QContextMenuEventReason, pos: gen_qpoint.QPoint): QContextMenuEvent =

  QContextMenuEvent.init(fcQContextMenuEvent_new3(cint(reason), pos.h))
proc create*(T: type QContextMenuEvent, param1: QContextMenuEvent): QContextMenuEvent =

  QContextMenuEvent.init(fcQContextMenuEvent_new4(param1.h))
proc x*(self: QContextMenuEvent, ): cint =

  fcQContextMenuEvent_x(self.h)

proc y*(self: QContextMenuEvent, ): cint =

  fcQContextMenuEvent_y(self.h)

proc globalX*(self: QContextMenuEvent, ): cint =

  fcQContextMenuEvent_globalX(self.h)

proc globalY*(self: QContextMenuEvent, ): cint =

  fcQContextMenuEvent_globalY(self.h)

proc pos*(self: QContextMenuEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQContextMenuEvent_pos(self.h))

proc globalPos*(self: QContextMenuEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQContextMenuEvent_globalPos(self.h))

proc reason*(self: QContextMenuEvent, ): QContextMenuEventReason =

  QContextMenuEventReason(fcQContextMenuEvent_reason(self.h))

proc delete*(self: QContextMenuEvent) =
  fcQContextMenuEvent_delete(self.h)

func init*(T: type QInputMethodEvent, h: ptr cQInputMethodEvent): QInputMethodEvent =
  T(h: h)
proc create*(T: type QInputMethodEvent, ): QInputMethodEvent =

  QInputMethodEvent.init(fcQInputMethodEvent_new())
proc create*(T: type QInputMethodEvent, preeditText: string, attributes: seq[QInputMethodEventAttribute]): QInputMethodEvent =

  var attributes_CArray = newSeq[pointer](len(attributes))
  for i in 0..<len(attributes):
    attributes_CArray[i] = attributes[i].h

  QInputMethodEvent.init(fcQInputMethodEvent_new2(struct_miqt_string(data: preeditText, len: csize_t(len(preeditText))), struct_miqt_array(len: csize_t(len(attributes)), data: if len(attributes) == 0: nil else: addr(attributes_CArray[0]))))
proc create*(T: type QInputMethodEvent, other: QInputMethodEvent): QInputMethodEvent =

  QInputMethodEvent.init(fcQInputMethodEvent_new3(other.h))
proc setCommitString*(self: QInputMethodEvent, commitString: string): void =

  fcQInputMethodEvent_setCommitString(self.h, struct_miqt_string(data: commitString, len: csize_t(len(commitString))))

proc attributes*(self: QInputMethodEvent, ): seq[QInputMethodEventAttribute] =

  var v_ma = fcQInputMethodEvent_attributes(self.h)
  var vx_ret = newSeq[QInputMethodEventAttribute](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QInputMethodEventAttribute(h: v_outCast[i])
  vx_ret

proc preeditString*(self: QInputMethodEvent, ): string =

  let v_ms = fcQInputMethodEvent_preeditString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc commitString*(self: QInputMethodEvent, ): string =

  let v_ms = fcQInputMethodEvent_commitString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc replacementStart*(self: QInputMethodEvent, ): cint =

  fcQInputMethodEvent_replacementStart(self.h)

proc replacementLength*(self: QInputMethodEvent, ): cint =

  fcQInputMethodEvent_replacementLength(self.h)

proc setCommitString2*(self: QInputMethodEvent, commitString: string, replaceFrom: cint): void =

  fcQInputMethodEvent_setCommitString2(self.h, struct_miqt_string(data: commitString, len: csize_t(len(commitString))), replaceFrom)

proc setCommitString3*(self: QInputMethodEvent, commitString: string, replaceFrom: cint, replaceLength: cint): void =

  fcQInputMethodEvent_setCommitString3(self.h, struct_miqt_string(data: commitString, len: csize_t(len(commitString))), replaceFrom, replaceLength)

proc delete*(self: QInputMethodEvent) =
  fcQInputMethodEvent_delete(self.h)

func init*(T: type QInputMethodQueryEvent, h: ptr cQInputMethodQueryEvent): QInputMethodQueryEvent =
  T(h: h)
proc create*(T: type QInputMethodQueryEvent, queries: gen_qnamespace.InputMethodQuery): QInputMethodQueryEvent =

  QInputMethodQueryEvent.init(fcQInputMethodQueryEvent_new(cint(queries)))
proc create*(T: type QInputMethodQueryEvent, param1: QInputMethodQueryEvent): QInputMethodQueryEvent =

  QInputMethodQueryEvent.init(fcQInputMethodQueryEvent_new2(param1.h))
proc queries*(self: QInputMethodQueryEvent, ): gen_qnamespace.InputMethodQuery =

  gen_qnamespace.InputMethodQuery(fcQInputMethodQueryEvent_queries(self.h))

proc setValue*(self: QInputMethodQueryEvent, query: gen_qnamespace.InputMethodQuery, value: gen_qvariant.QVariant): void =

  fcQInputMethodQueryEvent_setValue(self.h, cint(query), value.h)

proc value*(self: QInputMethodQueryEvent, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQInputMethodQueryEvent_value(self.h, cint(query)))

proc delete*(self: QInputMethodQueryEvent) =
  fcQInputMethodQueryEvent_delete(self.h)

func init*(T: type QDropEvent, h: ptr cQDropEvent): QDropEvent =
  T(h: h)
proc create*(T: type QDropEvent, pos: gen_qpoint.QPointF, actions: gen_qnamespace.DropAction, data: gen_qmimedata.QMimeData, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier): QDropEvent =

  QDropEvent.init(fcQDropEvent_new(pos.h, cint(actions), data.h, cint(buttons), cint(modifiers)))
proc create*(T: type QDropEvent, param1: QDropEvent): QDropEvent =

  QDropEvent.init(fcQDropEvent_new2(param1.h))
proc create*(T: type QDropEvent, pos: gen_qpoint.QPointF, actions: gen_qnamespace.DropAction, data: gen_qmimedata.QMimeData, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier, typeVal: gen_qcoreevent.QEventType): QDropEvent =

  QDropEvent.init(fcQDropEvent_new3(pos.h, cint(actions), data.h, cint(buttons), cint(modifiers), cint(typeVal)))
proc pos*(self: QDropEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQDropEvent_pos(self.h))

proc posF*(self: QDropEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQDropEvent_posF(self.h))

proc mouseButtons*(self: QDropEvent, ): gen_qnamespace.MouseButton =

  gen_qnamespace.MouseButton(fcQDropEvent_mouseButtons(self.h))

proc keyboardModifiers*(self: QDropEvent, ): gen_qnamespace.KeyboardModifier =

  gen_qnamespace.KeyboardModifier(fcQDropEvent_keyboardModifiers(self.h))

proc possibleActions*(self: QDropEvent, ): gen_qnamespace.DropAction =

  gen_qnamespace.DropAction(fcQDropEvent_possibleActions(self.h))

proc proposedAction*(self: QDropEvent, ): gen_qnamespace.DropAction =

  gen_qnamespace.DropAction(fcQDropEvent_proposedAction(self.h))

proc acceptProposedAction*(self: QDropEvent, ): void =

  fcQDropEvent_acceptProposedAction(self.h)

proc dropAction*(self: QDropEvent, ): gen_qnamespace.DropAction =

  gen_qnamespace.DropAction(fcQDropEvent_dropAction(self.h))

proc setDropAction*(self: QDropEvent, action: gen_qnamespace.DropAction): void =

  fcQDropEvent_setDropAction(self.h, cint(action))

proc source*(self: QDropEvent, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQDropEvent_source(self.h))

proc mimeData*(self: QDropEvent, ): gen_qmimedata.QMimeData =

  gen_qmimedata.QMimeData(h: fcQDropEvent_mimeData(self.h))

proc delete*(self: QDropEvent) =
  fcQDropEvent_delete(self.h)

func init*(T: type QDragMoveEvent, h: ptr cQDragMoveEvent): QDragMoveEvent =
  T(h: h)
proc create*(T: type QDragMoveEvent, pos: gen_qpoint.QPoint, actions: gen_qnamespace.DropAction, data: gen_qmimedata.QMimeData, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier): QDragMoveEvent =

  QDragMoveEvent.init(fcQDragMoveEvent_new(pos.h, cint(actions), data.h, cint(buttons), cint(modifiers)))
proc create*(T: type QDragMoveEvent, param1: QDragMoveEvent): QDragMoveEvent =

  QDragMoveEvent.init(fcQDragMoveEvent_new2(param1.h))
proc create*(T: type QDragMoveEvent, pos: gen_qpoint.QPoint, actions: gen_qnamespace.DropAction, data: gen_qmimedata.QMimeData, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier, typeVal: gen_qcoreevent.QEventType): QDragMoveEvent =

  QDragMoveEvent.init(fcQDragMoveEvent_new3(pos.h, cint(actions), data.h, cint(buttons), cint(modifiers), cint(typeVal)))
proc answerRect*(self: QDragMoveEvent, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQDragMoveEvent_answerRect(self.h))

proc accept*(self: QDragMoveEvent, ): void =

  fcQDragMoveEvent_accept(self.h)

proc ignore*(self: QDragMoveEvent, ): void =

  fcQDragMoveEvent_ignore(self.h)

proc acceptWithQRect*(self: QDragMoveEvent, r: gen_qrect.QRect): void =

  fcQDragMoveEvent_acceptWithQRect(self.h, r.h)

proc ignoreWithQRect*(self: QDragMoveEvent, r: gen_qrect.QRect): void =

  fcQDragMoveEvent_ignoreWithQRect(self.h, r.h)

proc delete*(self: QDragMoveEvent) =
  fcQDragMoveEvent_delete(self.h)

func init*(T: type QDragEnterEvent, h: ptr cQDragEnterEvent): QDragEnterEvent =
  T(h: h)
proc create*(T: type QDragEnterEvent, pos: gen_qpoint.QPoint, actions: gen_qnamespace.DropAction, data: gen_qmimedata.QMimeData, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier): QDragEnterEvent =

  QDragEnterEvent.init(fcQDragEnterEvent_new(pos.h, cint(actions), data.h, cint(buttons), cint(modifiers)))
proc create*(T: type QDragEnterEvent, param1: QDragEnterEvent): QDragEnterEvent =

  QDragEnterEvent.init(fcQDragEnterEvent_new2(param1.h))
proc operatorAssign*(self: QDragEnterEvent, param1: QDragEnterEvent): void =

  fcQDragEnterEvent_operatorAssign(self.h, param1.h)

proc delete*(self: QDragEnterEvent) =
  fcQDragEnterEvent_delete(self.h)

func init*(T: type QDragLeaveEvent, h: ptr cQDragLeaveEvent): QDragLeaveEvent =
  T(h: h)
proc create*(T: type QDragLeaveEvent, ): QDragLeaveEvent =

  QDragLeaveEvent.init(fcQDragLeaveEvent_new())
proc create*(T: type QDragLeaveEvent, param1: QDragLeaveEvent): QDragLeaveEvent =

  QDragLeaveEvent.init(fcQDragLeaveEvent_new2(param1.h))
proc operatorAssign*(self: QDragLeaveEvent, param1: QDragLeaveEvent): void =

  fcQDragLeaveEvent_operatorAssign(self.h, param1.h)

proc delete*(self: QDragLeaveEvent) =
  fcQDragLeaveEvent_delete(self.h)

func init*(T: type QHelpEvent, h: ptr cQHelpEvent): QHelpEvent =
  T(h: h)
proc create*(T: type QHelpEvent, typeVal: gen_qcoreevent.QEventType, pos: gen_qpoint.QPoint, globalPos: gen_qpoint.QPoint): QHelpEvent =

  QHelpEvent.init(fcQHelpEvent_new(cint(typeVal), pos.h, globalPos.h))
proc create*(T: type QHelpEvent, param1: QHelpEvent): QHelpEvent =

  QHelpEvent.init(fcQHelpEvent_new2(param1.h))
proc x*(self: QHelpEvent, ): cint =

  fcQHelpEvent_x(self.h)

proc y*(self: QHelpEvent, ): cint =

  fcQHelpEvent_y(self.h)

proc globalX*(self: QHelpEvent, ): cint =

  fcQHelpEvent_globalX(self.h)

proc globalY*(self: QHelpEvent, ): cint =

  fcQHelpEvent_globalY(self.h)

proc pos*(self: QHelpEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQHelpEvent_pos(self.h))

proc globalPos*(self: QHelpEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQHelpEvent_globalPos(self.h))

proc delete*(self: QHelpEvent) =
  fcQHelpEvent_delete(self.h)

func init*(T: type QStatusTipEvent, h: ptr cQStatusTipEvent): QStatusTipEvent =
  T(h: h)
proc create*(T: type QStatusTipEvent, tip: string): QStatusTipEvent =

  QStatusTipEvent.init(fcQStatusTipEvent_new(struct_miqt_string(data: tip, len: csize_t(len(tip)))))
proc create*(T: type QStatusTipEvent, param1: QStatusTipEvent): QStatusTipEvent =

  QStatusTipEvent.init(fcQStatusTipEvent_new2(param1.h))
proc tip*(self: QStatusTipEvent, ): string =

  let v_ms = fcQStatusTipEvent_tip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QStatusTipEvent) =
  fcQStatusTipEvent_delete(self.h)

func init*(T: type QWhatsThisClickedEvent, h: ptr cQWhatsThisClickedEvent): QWhatsThisClickedEvent =
  T(h: h)
proc create*(T: type QWhatsThisClickedEvent, href: string): QWhatsThisClickedEvent =

  QWhatsThisClickedEvent.init(fcQWhatsThisClickedEvent_new(struct_miqt_string(data: href, len: csize_t(len(href)))))
proc create*(T: type QWhatsThisClickedEvent, param1: QWhatsThisClickedEvent): QWhatsThisClickedEvent =

  QWhatsThisClickedEvent.init(fcQWhatsThisClickedEvent_new2(param1.h))
proc href*(self: QWhatsThisClickedEvent, ): string =

  let v_ms = fcQWhatsThisClickedEvent_href(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QWhatsThisClickedEvent) =
  fcQWhatsThisClickedEvent_delete(self.h)

func init*(T: type QActionEvent, h: ptr cQActionEvent): QActionEvent =
  T(h: h)
proc create*(T: type QActionEvent, typeVal: cint, action: gen_qaction.QAction): QActionEvent =

  QActionEvent.init(fcQActionEvent_new(typeVal, action.h))
proc create*(T: type QActionEvent, param1: QActionEvent): QActionEvent =

  QActionEvent.init(fcQActionEvent_new2(param1.h))
proc create*(T: type QActionEvent, typeVal: cint, action: gen_qaction.QAction, before: gen_qaction.QAction): QActionEvent =

  QActionEvent.init(fcQActionEvent_new3(typeVal, action.h, before.h))
proc action*(self: QActionEvent, ): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQActionEvent_action(self.h))

proc before*(self: QActionEvent, ): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQActionEvent_before(self.h))

proc operatorAssign*(self: QActionEvent, param1: QActionEvent): void =

  fcQActionEvent_operatorAssign(self.h, param1.h)

proc delete*(self: QActionEvent) =
  fcQActionEvent_delete(self.h)

func init*(T: type QFileOpenEvent, h: ptr cQFileOpenEvent): QFileOpenEvent =
  T(h: h)
proc create*(T: type QFileOpenEvent, file: string): QFileOpenEvent =

  QFileOpenEvent.init(fcQFileOpenEvent_new(struct_miqt_string(data: file, len: csize_t(len(file)))))
proc create*(T: type QFileOpenEvent, url: gen_qurl.QUrl): QFileOpenEvent =

  QFileOpenEvent.init(fcQFileOpenEvent_new2(url.h))
proc create2*(T: type QFileOpenEvent, param1: QFileOpenEvent): QFileOpenEvent =

  QFileOpenEvent.init(fcQFileOpenEvent_new3(param1.h))
proc file*(self: QFileOpenEvent, ): string =

  let v_ms = fcQFileOpenEvent_file(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc url*(self: QFileOpenEvent, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQFileOpenEvent_url(self.h))

proc openFile*(self: QFileOpenEvent, file: gen_qfile.QFile, flags: gen_qiodevice.QIODeviceOpenModeFlag): bool =

  fcQFileOpenEvent_openFile(self.h, file.h, cint(flags))

proc delete*(self: QFileOpenEvent) =
  fcQFileOpenEvent_delete(self.h)

func init*(T: type QToolBarChangeEvent, h: ptr cQToolBarChangeEvent): QToolBarChangeEvent =
  T(h: h)
proc create*(T: type QToolBarChangeEvent, t: bool): QToolBarChangeEvent =

  QToolBarChangeEvent.init(fcQToolBarChangeEvent_new(t))
proc create*(T: type QToolBarChangeEvent, param1: QToolBarChangeEvent): QToolBarChangeEvent =

  QToolBarChangeEvent.init(fcQToolBarChangeEvent_new2(param1.h))
proc toggle*(self: QToolBarChangeEvent, ): bool =

  fcQToolBarChangeEvent_toggle(self.h)

proc delete*(self: QToolBarChangeEvent) =
  fcQToolBarChangeEvent_delete(self.h)

func init*(T: type QShortcutEvent, h: ptr cQShortcutEvent): QShortcutEvent =
  T(h: h)
proc create*(T: type QShortcutEvent, key: gen_qkeysequence.QKeySequence, id: cint): QShortcutEvent =

  QShortcutEvent.init(fcQShortcutEvent_new(key.h, id))
proc create*(T: type QShortcutEvent, param1: QShortcutEvent): QShortcutEvent =

  QShortcutEvent.init(fcQShortcutEvent_new2(param1.h))
proc create*(T: type QShortcutEvent, key: gen_qkeysequence.QKeySequence, id: cint, ambiguous: bool): QShortcutEvent =

  QShortcutEvent.init(fcQShortcutEvent_new3(key.h, id, ambiguous))
proc key*(self: QShortcutEvent, ): gen_qkeysequence.QKeySequence =

  gen_qkeysequence.QKeySequence(h: fcQShortcutEvent_key(self.h))

proc shortcutId*(self: QShortcutEvent, ): cint =

  fcQShortcutEvent_shortcutId(self.h)

proc isAmbiguous*(self: QShortcutEvent, ): bool =

  fcQShortcutEvent_isAmbiguous(self.h)

proc delete*(self: QShortcutEvent) =
  fcQShortcutEvent_delete(self.h)

func init*(T: type QWindowStateChangeEvent, h: ptr cQWindowStateChangeEvent): QWindowStateChangeEvent =
  T(h: h)
proc create*(T: type QWindowStateChangeEvent, aOldState: gen_qnamespace.WindowState): QWindowStateChangeEvent =

  QWindowStateChangeEvent.init(fcQWindowStateChangeEvent_new(cint(aOldState)))
proc create*(T: type QWindowStateChangeEvent, param1: QWindowStateChangeEvent): QWindowStateChangeEvent =

  QWindowStateChangeEvent.init(fcQWindowStateChangeEvent_new2(param1.h))
proc create*(T: type QWindowStateChangeEvent, aOldState: gen_qnamespace.WindowState, isOverride: bool): QWindowStateChangeEvent =

  QWindowStateChangeEvent.init(fcQWindowStateChangeEvent_new3(cint(aOldState), isOverride))
proc oldState*(self: QWindowStateChangeEvent, ): gen_qnamespace.WindowState =

  gen_qnamespace.WindowState(fcQWindowStateChangeEvent_oldState(self.h))

proc isOverride*(self: QWindowStateChangeEvent, ): bool =

  fcQWindowStateChangeEvent_isOverride(self.h)

proc delete*(self: QWindowStateChangeEvent) =
  fcQWindowStateChangeEvent_delete(self.h)

func init*(T: type QPointingDeviceUniqueId, h: ptr cQPointingDeviceUniqueId): QPointingDeviceUniqueId =
  T(h: h)
proc create*(T: type QPointingDeviceUniqueId, ): QPointingDeviceUniqueId =

  QPointingDeviceUniqueId.init(fcQPointingDeviceUniqueId_new())
proc create*(T: type QPointingDeviceUniqueId, param1: QPointingDeviceUniqueId): QPointingDeviceUniqueId =

  QPointingDeviceUniqueId.init(fcQPointingDeviceUniqueId_new2(param1.h))
proc fromNumericId*(_: type QPointingDeviceUniqueId, id: clonglong): QPointingDeviceUniqueId =

  QPointingDeviceUniqueId(h: fcQPointingDeviceUniqueId_fromNumericId(id))

proc isValid*(self: QPointingDeviceUniqueId, ): bool =

  fcQPointingDeviceUniqueId_isValid(self.h)

proc numericId*(self: QPointingDeviceUniqueId, ): clonglong =

  fcQPointingDeviceUniqueId_numericId(self.h)

proc staticMetaObject*(_: type QPointingDeviceUniqueId): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQPointingDeviceUniqueId_staticMetaObject())
proc delete*(self: QPointingDeviceUniqueId) =
  fcQPointingDeviceUniqueId_delete(self.h)

func init*(T: type QTouchEvent, h: ptr cQTouchEvent): QTouchEvent =
  T(h: h)
proc create*(T: type QTouchEvent, eventType: gen_qcoreevent.QEventType): QTouchEvent =

  QTouchEvent.init(fcQTouchEvent_new(cint(eventType)))
proc create*(T: type QTouchEvent, param1: QTouchEvent): QTouchEvent =

  QTouchEvent.init(fcQTouchEvent_new2(param1.h))
proc create*(T: type QTouchEvent, eventType: gen_qcoreevent.QEventType, device: gen_qtouchdevice.QTouchDevice): QTouchEvent =

  QTouchEvent.init(fcQTouchEvent_new3(cint(eventType), device.h))
proc create*(T: type QTouchEvent, eventType: gen_qcoreevent.QEventType, device: gen_qtouchdevice.QTouchDevice, modifiers: gen_qnamespace.KeyboardModifier): QTouchEvent =

  QTouchEvent.init(fcQTouchEvent_new4(cint(eventType), device.h, cint(modifiers)))
proc create*(T: type QTouchEvent, eventType: gen_qcoreevent.QEventType, device: gen_qtouchdevice.QTouchDevice, modifiers: gen_qnamespace.KeyboardModifier, touchPointStates: gen_qnamespace.TouchPointState): QTouchEvent =

  QTouchEvent.init(fcQTouchEvent_new5(cint(eventType), device.h, cint(modifiers), cint(touchPointStates)))
proc create*(T: type QTouchEvent, eventType: gen_qcoreevent.QEventType, device: gen_qtouchdevice.QTouchDevice, modifiers: gen_qnamespace.KeyboardModifier, touchPointStates: gen_qnamespace.TouchPointState, touchPoints: seq[QTouchEventTouchPoint]): QTouchEvent =

  var touchPoints_CArray = newSeq[pointer](len(touchPoints))
  for i in 0..<len(touchPoints):
    touchPoints_CArray[i] = touchPoints[i].h

  QTouchEvent.init(fcQTouchEvent_new6(cint(eventType), device.h, cint(modifiers), cint(touchPointStates), struct_miqt_array(len: csize_t(len(touchPoints)), data: if len(touchPoints) == 0: nil else: addr(touchPoints_CArray[0]))))
proc window*(self: QTouchEvent, ): gen_qwindow.QWindow =

  gen_qwindow.QWindow(h: fcQTouchEvent_window(self.h))

proc target*(self: QTouchEvent, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQTouchEvent_target(self.h))

proc touchPointStates*(self: QTouchEvent, ): gen_qnamespace.TouchPointState =

  gen_qnamespace.TouchPointState(fcQTouchEvent_touchPointStates(self.h))

proc touchPoints*(self: QTouchEvent, ): seq[QTouchEventTouchPoint] =

  var v_ma = fcQTouchEvent_touchPoints(self.h)
  var vx_ret = newSeq[QTouchEventTouchPoint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QTouchEventTouchPoint(h: v_outCast[i])
  vx_ret

proc device*(self: QTouchEvent, ): gen_qtouchdevice.QTouchDevice =

  gen_qtouchdevice.QTouchDevice(h: fcQTouchEvent_device(self.h))

proc setWindow*(self: QTouchEvent, awindow: gen_qwindow.QWindow): void =

  fcQTouchEvent_setWindow(self.h, awindow.h)

proc setTarget*(self: QTouchEvent, atarget: gen_qobject.QObject): void =

  fcQTouchEvent_setTarget(self.h, atarget.h)

proc setTouchPointStates*(self: QTouchEvent, aTouchPointStates: gen_qnamespace.TouchPointState): void =

  fcQTouchEvent_setTouchPointStates(self.h, cint(aTouchPointStates))

proc setTouchPoints*(self: QTouchEvent, atouchPoints: seq[QTouchEventTouchPoint]): void =

  var atouchPoints_CArray = newSeq[pointer](len(atouchPoints))
  for i in 0..<len(atouchPoints):
    atouchPoints_CArray[i] = atouchPoints[i].h

  fcQTouchEvent_setTouchPoints(self.h, struct_miqt_array(len: csize_t(len(atouchPoints)), data: if len(atouchPoints) == 0: nil else: addr(atouchPoints_CArray[0])))

proc setDevice*(self: QTouchEvent, adevice: gen_qtouchdevice.QTouchDevice): void =

  fcQTouchEvent_setDevice(self.h, adevice.h)

proc delete*(self: QTouchEvent) =
  fcQTouchEvent_delete(self.h)

func init*(T: type QScrollPrepareEvent, h: ptr cQScrollPrepareEvent): QScrollPrepareEvent =
  T(h: h)
proc create*(T: type QScrollPrepareEvent, startPos: gen_qpoint.QPointF): QScrollPrepareEvent =

  QScrollPrepareEvent.init(fcQScrollPrepareEvent_new(startPos.h))
proc create2*(T: type QScrollPrepareEvent, param1: QScrollPrepareEvent): QScrollPrepareEvent =

  QScrollPrepareEvent.init(fcQScrollPrepareEvent_new2(param1.h))
proc startPos*(self: QScrollPrepareEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQScrollPrepareEvent_startPos(self.h))

proc viewportSize*(self: QScrollPrepareEvent, ): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQScrollPrepareEvent_viewportSize(self.h))

proc contentPosRange*(self: QScrollPrepareEvent, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQScrollPrepareEvent_contentPosRange(self.h))

proc contentPos*(self: QScrollPrepareEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQScrollPrepareEvent_contentPos(self.h))

proc setViewportSize*(self: QScrollPrepareEvent, size: gen_qsize.QSizeF): void =

  fcQScrollPrepareEvent_setViewportSize(self.h, size.h)

proc setContentPosRange*(self: QScrollPrepareEvent, rect: gen_qrect.QRectF): void =

  fcQScrollPrepareEvent_setContentPosRange(self.h, rect.h)

proc setContentPos*(self: QScrollPrepareEvent, pos: gen_qpoint.QPointF): void =

  fcQScrollPrepareEvent_setContentPos(self.h, pos.h)

proc delete*(self: QScrollPrepareEvent) =
  fcQScrollPrepareEvent_delete(self.h)

func init*(T: type QScrollEvent, h: ptr cQScrollEvent): QScrollEvent =
  T(h: h)
proc create*(T: type QScrollEvent, contentPos: gen_qpoint.QPointF, overshoot: gen_qpoint.QPointF, scrollState: QScrollEventScrollState): QScrollEvent =

  QScrollEvent.init(fcQScrollEvent_new(contentPos.h, overshoot.h, cint(scrollState)))
proc create*(T: type QScrollEvent, param1: QScrollEvent): QScrollEvent =

  QScrollEvent.init(fcQScrollEvent_new2(param1.h))
proc contentPos*(self: QScrollEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQScrollEvent_contentPos(self.h))

proc overshootDistance*(self: QScrollEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQScrollEvent_overshootDistance(self.h))

proc scrollState*(self: QScrollEvent, ): QScrollEventScrollState =

  QScrollEventScrollState(fcQScrollEvent_scrollState(self.h))

proc delete*(self: QScrollEvent) =
  fcQScrollEvent_delete(self.h)

func init*(T: type QScreenOrientationChangeEvent, h: ptr cQScreenOrientationChangeEvent): QScreenOrientationChangeEvent =
  T(h: h)
proc create*(T: type QScreenOrientationChangeEvent, screen: gen_qscreen.QScreen, orientation: gen_qnamespace.ScreenOrientation): QScreenOrientationChangeEvent =

  QScreenOrientationChangeEvent.init(fcQScreenOrientationChangeEvent_new(screen.h, cint(orientation)))
proc create*(T: type QScreenOrientationChangeEvent, param1: QScreenOrientationChangeEvent): QScreenOrientationChangeEvent =

  QScreenOrientationChangeEvent.init(fcQScreenOrientationChangeEvent_new2(param1.h))
proc screen*(self: QScreenOrientationChangeEvent, ): gen_qscreen.QScreen =

  gen_qscreen.QScreen(h: fcQScreenOrientationChangeEvent_screen(self.h))

proc orientation*(self: QScreenOrientationChangeEvent, ): gen_qnamespace.ScreenOrientation =

  gen_qnamespace.ScreenOrientation(fcQScreenOrientationChangeEvent_orientation(self.h))

proc delete*(self: QScreenOrientationChangeEvent) =
  fcQScreenOrientationChangeEvent_delete(self.h)

func init*(T: type QApplicationStateChangeEvent, h: ptr cQApplicationStateChangeEvent): QApplicationStateChangeEvent =
  T(h: h)
proc create*(T: type QApplicationStateChangeEvent, state: gen_qnamespace.ApplicationState): QApplicationStateChangeEvent =

  QApplicationStateChangeEvent.init(fcQApplicationStateChangeEvent_new(cint(state)))
proc create*(T: type QApplicationStateChangeEvent, param1: QApplicationStateChangeEvent): QApplicationStateChangeEvent =

  QApplicationStateChangeEvent.init(fcQApplicationStateChangeEvent_new2(param1.h))
proc applicationState*(self: QApplicationStateChangeEvent, ): gen_qnamespace.ApplicationState =

  gen_qnamespace.ApplicationState(fcQApplicationStateChangeEvent_applicationState(self.h))

proc delete*(self: QApplicationStateChangeEvent) =
  fcQApplicationStateChangeEvent_delete(self.h)

func init*(T: type QInputMethodEventAttribute, h: ptr cQInputMethodEventAttribute): QInputMethodEventAttribute =
  T(h: h)
proc create*(T: type QInputMethodEventAttribute, typ: QInputMethodEventAttributeType, s: cint, l: cint, val: gen_qvariant.QVariant): QInputMethodEventAttribute =

  QInputMethodEventAttribute.init(fcQInputMethodEventAttribute_new(cint(typ), s, l, val.h))
proc create*(T: type QInputMethodEventAttribute, typ: QInputMethodEventAttributeType, s: cint, l: cint): QInputMethodEventAttribute =

  QInputMethodEventAttribute.init(fcQInputMethodEventAttribute_new2(cint(typ), s, l))
proc create*(T: type QInputMethodEventAttribute, param1: QInputMethodEventAttribute): QInputMethodEventAttribute =

  QInputMethodEventAttribute.init(fcQInputMethodEventAttribute_new3(param1.h))
proc operatorAssign*(self: QInputMethodEventAttribute, param1: QInputMethodEventAttribute): void =

  fcQInputMethodEventAttribute_operatorAssign(self.h, param1.h)

proc delete*(self: QInputMethodEventAttribute) =
  fcQInputMethodEventAttribute_delete(self.h)

func init*(T: type QTouchEventTouchPoint, h: ptr cQTouchEventTouchPoint): QTouchEventTouchPoint =
  T(h: h)
proc create*(T: type QTouchEventTouchPoint, ): QTouchEventTouchPoint =

  QTouchEventTouchPoint.init(fcQTouchEventTouchPoint_new())
proc create*(T: type QTouchEventTouchPoint, other: QTouchEventTouchPoint): QTouchEventTouchPoint =

  QTouchEventTouchPoint.init(fcQTouchEventTouchPoint_new2(other.h))
proc create*(T: type QTouchEventTouchPoint, id: cint): QTouchEventTouchPoint =

  QTouchEventTouchPoint.init(fcQTouchEventTouchPoint_new3(id))
proc operatorAssign*(self: QTouchEventTouchPoint, other: QTouchEventTouchPoint): void =

  fcQTouchEventTouchPoint_operatorAssign(self.h, other.h)

proc swap*(self: QTouchEventTouchPoint, other: QTouchEventTouchPoint): void =

  fcQTouchEventTouchPoint_swap(self.h, other.h)

proc id*(self: QTouchEventTouchPoint, ): cint =

  fcQTouchEventTouchPoint_id(self.h)

proc uniqueId*(self: QTouchEventTouchPoint, ): QPointingDeviceUniqueId =

  QPointingDeviceUniqueId(h: fcQTouchEventTouchPoint_uniqueId(self.h))

proc state*(self: QTouchEventTouchPoint, ): gen_qnamespace.TouchPointState =

  gen_qnamespace.TouchPointState(fcQTouchEventTouchPoint_state(self.h))

proc pos*(self: QTouchEventTouchPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQTouchEventTouchPoint_pos(self.h))

proc startPos*(self: QTouchEventTouchPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQTouchEventTouchPoint_startPos(self.h))

proc lastPos*(self: QTouchEventTouchPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQTouchEventTouchPoint_lastPos(self.h))

proc scenePos*(self: QTouchEventTouchPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQTouchEventTouchPoint_scenePos(self.h))

proc startScenePos*(self: QTouchEventTouchPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQTouchEventTouchPoint_startScenePos(self.h))

proc lastScenePos*(self: QTouchEventTouchPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQTouchEventTouchPoint_lastScenePos(self.h))

proc screenPos*(self: QTouchEventTouchPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQTouchEventTouchPoint_screenPos(self.h))

proc startScreenPos*(self: QTouchEventTouchPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQTouchEventTouchPoint_startScreenPos(self.h))

proc lastScreenPos*(self: QTouchEventTouchPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQTouchEventTouchPoint_lastScreenPos(self.h))

proc normalizedPos*(self: QTouchEventTouchPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQTouchEventTouchPoint_normalizedPos(self.h))

proc startNormalizedPos*(self: QTouchEventTouchPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQTouchEventTouchPoint_startNormalizedPos(self.h))

proc lastNormalizedPos*(self: QTouchEventTouchPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQTouchEventTouchPoint_lastNormalizedPos(self.h))

proc rect*(self: QTouchEventTouchPoint, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQTouchEventTouchPoint_rect(self.h))

proc sceneRect*(self: QTouchEventTouchPoint, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQTouchEventTouchPoint_sceneRect(self.h))

proc screenRect*(self: QTouchEventTouchPoint, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQTouchEventTouchPoint_screenRect(self.h))

proc setRect*(self: QTouchEventTouchPoint, rect: gen_qrect.QRectF): void =

  fcQTouchEventTouchPoint_setRect(self.h, rect.h)

proc setSceneRect*(self: QTouchEventTouchPoint, sceneRect: gen_qrect.QRectF): void =

  fcQTouchEventTouchPoint_setSceneRect(self.h, sceneRect.h)

proc setScreenRect*(self: QTouchEventTouchPoint, screenRect: gen_qrect.QRectF): void =

  fcQTouchEventTouchPoint_setScreenRect(self.h, screenRect.h)

proc pressure*(self: QTouchEventTouchPoint, ): float64 =

  fcQTouchEventTouchPoint_pressure(self.h)

proc rotation*(self: QTouchEventTouchPoint, ): float64 =

  fcQTouchEventTouchPoint_rotation(self.h)

proc ellipseDiameters*(self: QTouchEventTouchPoint, ): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQTouchEventTouchPoint_ellipseDiameters(self.h))

proc velocity*(self: QTouchEventTouchPoint, ): gen_qvector2d.QVector2D =

  gen_qvector2d.QVector2D(h: fcQTouchEventTouchPoint_velocity(self.h))

proc flags*(self: QTouchEventTouchPoint, ): QTouchEventTouchPointInfoFlag =

  QTouchEventTouchPointInfoFlag(fcQTouchEventTouchPoint_flags(self.h))

proc rawScreenPositions*(self: QTouchEventTouchPoint, ): seq[gen_qpoint.QPointF] =

  var v_ma = fcQTouchEventTouchPoint_rawScreenPositions(self.h)
  var vx_ret = newSeq[gen_qpoint.QPointF](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qpoint.QPointF(h: v_outCast[i])
  vx_ret

proc setId*(self: QTouchEventTouchPoint, id: cint): void =

  fcQTouchEventTouchPoint_setId(self.h, id)

proc setUniqueId*(self: QTouchEventTouchPoint, uid: clonglong): void =

  fcQTouchEventTouchPoint_setUniqueId(self.h, uid)

proc setState*(self: QTouchEventTouchPoint, state: gen_qnamespace.TouchPointState): void =

  fcQTouchEventTouchPoint_setState(self.h, cint(state))

proc setPos*(self: QTouchEventTouchPoint, pos: gen_qpoint.QPointF): void =

  fcQTouchEventTouchPoint_setPos(self.h, pos.h)

proc setScenePos*(self: QTouchEventTouchPoint, scenePos: gen_qpoint.QPointF): void =

  fcQTouchEventTouchPoint_setScenePos(self.h, scenePos.h)

proc setScreenPos*(self: QTouchEventTouchPoint, screenPos: gen_qpoint.QPointF): void =

  fcQTouchEventTouchPoint_setScreenPos(self.h, screenPos.h)

proc setNormalizedPos*(self: QTouchEventTouchPoint, normalizedPos: gen_qpoint.QPointF): void =

  fcQTouchEventTouchPoint_setNormalizedPos(self.h, normalizedPos.h)

proc setStartPos*(self: QTouchEventTouchPoint, startPos: gen_qpoint.QPointF): void =

  fcQTouchEventTouchPoint_setStartPos(self.h, startPos.h)

proc setStartScenePos*(self: QTouchEventTouchPoint, startScenePos: gen_qpoint.QPointF): void =

  fcQTouchEventTouchPoint_setStartScenePos(self.h, startScenePos.h)

proc setStartScreenPos*(self: QTouchEventTouchPoint, startScreenPos: gen_qpoint.QPointF): void =

  fcQTouchEventTouchPoint_setStartScreenPos(self.h, startScreenPos.h)

proc setStartNormalizedPos*(self: QTouchEventTouchPoint, startNormalizedPos: gen_qpoint.QPointF): void =

  fcQTouchEventTouchPoint_setStartNormalizedPos(self.h, startNormalizedPos.h)

proc setLastPos*(self: QTouchEventTouchPoint, lastPos: gen_qpoint.QPointF): void =

  fcQTouchEventTouchPoint_setLastPos(self.h, lastPos.h)

proc setLastScenePos*(self: QTouchEventTouchPoint, lastScenePos: gen_qpoint.QPointF): void =

  fcQTouchEventTouchPoint_setLastScenePos(self.h, lastScenePos.h)

proc setLastScreenPos*(self: QTouchEventTouchPoint, lastScreenPos: gen_qpoint.QPointF): void =

  fcQTouchEventTouchPoint_setLastScreenPos(self.h, lastScreenPos.h)

proc setLastNormalizedPos*(self: QTouchEventTouchPoint, lastNormalizedPos: gen_qpoint.QPointF): void =

  fcQTouchEventTouchPoint_setLastNormalizedPos(self.h, lastNormalizedPos.h)

proc setPressure*(self: QTouchEventTouchPoint, pressure: float64): void =

  fcQTouchEventTouchPoint_setPressure(self.h, pressure)

proc setRotation*(self: QTouchEventTouchPoint, angle: float64): void =

  fcQTouchEventTouchPoint_setRotation(self.h, angle)

proc setEllipseDiameters*(self: QTouchEventTouchPoint, dia: gen_qsize.QSizeF): void =

  fcQTouchEventTouchPoint_setEllipseDiameters(self.h, dia.h)

proc setVelocity*(self: QTouchEventTouchPoint, v: gen_qvector2d.QVector2D): void =

  fcQTouchEventTouchPoint_setVelocity(self.h, v.h)

proc setFlags*(self: QTouchEventTouchPoint, flags: QTouchEventTouchPointInfoFlag): void =

  fcQTouchEventTouchPoint_setFlags(self.h, cint(flags))

proc setRawScreenPositions*(self: QTouchEventTouchPoint, positions: seq[gen_qpoint.QPointF]): void =

  var positions_CArray = newSeq[pointer](len(positions))
  for i in 0..<len(positions):
    positions_CArray[i] = positions[i].h

  fcQTouchEventTouchPoint_setRawScreenPositions(self.h, struct_miqt_array(len: csize_t(len(positions)), data: if len(positions) == 0: nil else: addr(positions_CArray[0])))

proc delete*(self: QTouchEventTouchPoint) =
  fcQTouchEventTouchPoint_delete(self.h)
