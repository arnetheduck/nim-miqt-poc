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
{.compile("gen_qevent.cpp", cflags).}


type QWheelEventEnum* = cint
const
  QWheelEventDefaultDeltasPerStep* = 120



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
  gen_qeventpoint,
  gen_qfile,
  gen_qinputdevice,
  gen_qiodevicebase,
  gen_qkeysequence,
  gen_qmimedata,
  gen_qnamespace,
  gen_qobject,
  gen_qpoint,
  gen_qpointingdevice,
  gen_qrect,
  gen_qregion,
  gen_qscreen,
  gen_qsize,
  gen_qurl,
  gen_qvariant
export
  gen_qaction,
  gen_qcoreevent,
  gen_qeventpoint,
  gen_qfile,
  gen_qinputdevice,
  gen_qiodevicebase,
  gen_qkeysequence,
  gen_qmimedata,
  gen_qnamespace,
  gen_qobject,
  gen_qpoint,
  gen_qpointingdevice,
  gen_qrect,
  gen_qregion,
  gen_qscreen,
  gen_qsize,
  gen_qurl,
  gen_qvariant

type cQInputEvent*{.exportc: "QInputEvent", incompleteStruct.} = object
type cQPointerEvent*{.exportc: "QPointerEvent", incompleteStruct.} = object
type cQSinglePointEvent*{.exportc: "QSinglePointEvent", incompleteStruct.} = object
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
type cQTouchEvent*{.exportc: "QTouchEvent", incompleteStruct.} = object
type cQScrollPrepareEvent*{.exportc: "QScrollPrepareEvent", incompleteStruct.} = object
type cQScrollEvent*{.exportc: "QScrollEvent", incompleteStruct.} = object
type cQScreenOrientationChangeEvent*{.exportc: "QScreenOrientationChangeEvent", incompleteStruct.} = object
type cQApplicationStateChangeEvent*{.exportc: "QApplicationStateChangeEvent", incompleteStruct.} = object
type cQInputMethodEventAttribute*{.exportc: "QInputMethodEvent__Attribute", incompleteStruct.} = object

proc fcQInputEvent_new(typeVal: cint, m_dev: pointer): ptr cQInputEvent {.importc: "QInputEvent_new".}
proc fcQInputEvent_new2(typeVal: cint, m_dev: pointer, modifiers: cint): ptr cQInputEvent {.importc: "QInputEvent_new2".}
proc fcQInputEvent_clone(self: pointer, ): pointer {.importc: "QInputEvent_clone".}
proc fcQInputEvent_device(self: pointer, ): pointer {.importc: "QInputEvent_device".}
proc fcQInputEvent_deviceType(self: pointer, ): cint {.importc: "QInputEvent_deviceType".}
proc fcQInputEvent_modifiers(self: pointer, ): cint {.importc: "QInputEvent_modifiers".}
proc fcQInputEvent_setModifiers(self: pointer, modifiers: cint): void {.importc: "QInputEvent_setModifiers".}
proc fcQInputEvent_timestamp(self: pointer, ): culonglong {.importc: "QInputEvent_timestamp".}
proc fcQInputEvent_setTimestamp(self: pointer, timestamp: culonglong): void {.importc: "QInputEvent_setTimestamp".}
proc fQInputEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QInputEvent_virtualbase_clone".}
proc fcQInputEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QInputEvent_override_virtual_clone".}
proc fQInputEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void{.importc: "QInputEvent_virtualbase_setTimestamp".}
proc fcQInputEvent_override_virtual_setTimestamp(self: pointer, slot: int) {.importc: "QInputEvent_override_virtual_setTimestamp".}
proc fQInputEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QInputEvent_virtualbase_setAccepted".}
proc fcQInputEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QInputEvent_override_virtual_setAccepted".}
proc fcQInputEvent_delete(self: pointer) {.importc: "QInputEvent_delete".}
proc fcQPointerEvent_new(typeVal: cint, dev: pointer): ptr cQPointerEvent {.importc: "QPointerEvent_new".}
proc fcQPointerEvent_new2(typeVal: cint, dev: pointer, modifiers: cint): ptr cQPointerEvent {.importc: "QPointerEvent_new2".}
proc fcQPointerEvent_new3(typeVal: cint, dev: pointer, modifiers: cint, points: struct_miqt_array): ptr cQPointerEvent {.importc: "QPointerEvent_new3".}
proc fcQPointerEvent_clone(self: pointer, ): pointer {.importc: "QPointerEvent_clone".}
proc fcQPointerEvent_pointingDevice(self: pointer, ): pointer {.importc: "QPointerEvent_pointingDevice".}
proc fcQPointerEvent_pointerType(self: pointer, ): cint {.importc: "QPointerEvent_pointerType".}
proc fcQPointerEvent_setTimestamp(self: pointer, timestamp: culonglong): void {.importc: "QPointerEvent_setTimestamp".}
proc fcQPointerEvent_pointCount(self: pointer, ): int64 {.importc: "QPointerEvent_pointCount".}
proc fcQPointerEvent_point(self: pointer, i: int64): pointer {.importc: "QPointerEvent_point".}
proc fcQPointerEvent_points(self: pointer, ): struct_miqt_array {.importc: "QPointerEvent_points".}
proc fcQPointerEvent_pointById(self: pointer, id: cint): pointer {.importc: "QPointerEvent_pointById".}
proc fcQPointerEvent_allPointsGrabbed(self: pointer, ): bool {.importc: "QPointerEvent_allPointsGrabbed".}
proc fcQPointerEvent_isBeginEvent(self: pointer, ): bool {.importc: "QPointerEvent_isBeginEvent".}
proc fcQPointerEvent_isUpdateEvent(self: pointer, ): bool {.importc: "QPointerEvent_isUpdateEvent".}
proc fcQPointerEvent_isEndEvent(self: pointer, ): bool {.importc: "QPointerEvent_isEndEvent".}
proc fcQPointerEvent_allPointsAccepted(self: pointer, ): bool {.importc: "QPointerEvent_allPointsAccepted".}
proc fcQPointerEvent_setAccepted(self: pointer, accepted: bool): void {.importc: "QPointerEvent_setAccepted".}
proc fcQPointerEvent_exclusiveGrabber(self: pointer, point: pointer): pointer {.importc: "QPointerEvent_exclusiveGrabber".}
proc fcQPointerEvent_setExclusiveGrabber(self: pointer, point: pointer, exclusiveGrabber: pointer): void {.importc: "QPointerEvent_setExclusiveGrabber".}
proc fcQPointerEvent_clearPassiveGrabbers(self: pointer, point: pointer): void {.importc: "QPointerEvent_clearPassiveGrabbers".}
proc fcQPointerEvent_addPassiveGrabber(self: pointer, point: pointer, grabber: pointer): bool {.importc: "QPointerEvent_addPassiveGrabber".}
proc fcQPointerEvent_removePassiveGrabber(self: pointer, point: pointer, grabber: pointer): bool {.importc: "QPointerEvent_removePassiveGrabber".}
proc fQPointerEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QPointerEvent_virtualbase_clone".}
proc fcQPointerEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QPointerEvent_override_virtual_clone".}
proc fQPointerEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void{.importc: "QPointerEvent_virtualbase_setTimestamp".}
proc fcQPointerEvent_override_virtual_setTimestamp(self: pointer, slot: int) {.importc: "QPointerEvent_override_virtual_setTimestamp".}
proc fQPointerEvent_virtualbase_isBeginEvent(self: pointer, ): bool{.importc: "QPointerEvent_virtualbase_isBeginEvent".}
proc fcQPointerEvent_override_virtual_isBeginEvent(self: pointer, slot: int) {.importc: "QPointerEvent_override_virtual_isBeginEvent".}
proc fQPointerEvent_virtualbase_isUpdateEvent(self: pointer, ): bool{.importc: "QPointerEvent_virtualbase_isUpdateEvent".}
proc fcQPointerEvent_override_virtual_isUpdateEvent(self: pointer, slot: int) {.importc: "QPointerEvent_override_virtual_isUpdateEvent".}
proc fQPointerEvent_virtualbase_isEndEvent(self: pointer, ): bool{.importc: "QPointerEvent_virtualbase_isEndEvent".}
proc fcQPointerEvent_override_virtual_isEndEvent(self: pointer, slot: int) {.importc: "QPointerEvent_override_virtual_isEndEvent".}
proc fQPointerEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QPointerEvent_virtualbase_setAccepted".}
proc fcQPointerEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QPointerEvent_override_virtual_setAccepted".}
proc fcQPointerEvent_delete(self: pointer) {.importc: "QPointerEvent_delete".}
proc fcQSinglePointEvent_clone(self: pointer, ): pointer {.importc: "QSinglePointEvent_clone".}
proc fcQSinglePointEvent_button(self: pointer, ): cint {.importc: "QSinglePointEvent_button".}
proc fcQSinglePointEvent_buttons(self: pointer, ): cint {.importc: "QSinglePointEvent_buttons".}
proc fcQSinglePointEvent_position(self: pointer, ): pointer {.importc: "QSinglePointEvent_position".}
proc fcQSinglePointEvent_scenePosition(self: pointer, ): pointer {.importc: "QSinglePointEvent_scenePosition".}
proc fcQSinglePointEvent_globalPosition(self: pointer, ): pointer {.importc: "QSinglePointEvent_globalPosition".}
proc fcQSinglePointEvent_isBeginEvent(self: pointer, ): bool {.importc: "QSinglePointEvent_isBeginEvent".}
proc fcQSinglePointEvent_isUpdateEvent(self: pointer, ): bool {.importc: "QSinglePointEvent_isUpdateEvent".}
proc fcQSinglePointEvent_isEndEvent(self: pointer, ): bool {.importc: "QSinglePointEvent_isEndEvent".}
proc fcQSinglePointEvent_exclusivePointGrabber(self: pointer, ): pointer {.importc: "QSinglePointEvent_exclusivePointGrabber".}
proc fcQSinglePointEvent_setExclusivePointGrabber(self: pointer, exclusiveGrabber: pointer): void {.importc: "QSinglePointEvent_setExclusivePointGrabber".}
proc fcQSinglePointEvent_delete(self: pointer) {.importc: "QSinglePointEvent_delete".}
proc fcQEnterEvent_new(localPos: pointer, scenePos: pointer, globalPos: pointer): ptr cQEnterEvent {.importc: "QEnterEvent_new".}
proc fcQEnterEvent_new2(localPos: pointer, scenePos: pointer, globalPos: pointer, device: pointer): ptr cQEnterEvent {.importc: "QEnterEvent_new2".}
proc fcQEnterEvent_clone(self: pointer, ): pointer {.importc: "QEnterEvent_clone".}
proc fcQEnterEvent_pos(self: pointer, ): pointer {.importc: "QEnterEvent_pos".}
proc fcQEnterEvent_globalPos(self: pointer, ): pointer {.importc: "QEnterEvent_globalPos".}
proc fcQEnterEvent_x(self: pointer, ): cint {.importc: "QEnterEvent_x".}
proc fcQEnterEvent_y(self: pointer, ): cint {.importc: "QEnterEvent_y".}
proc fcQEnterEvent_globalX(self: pointer, ): cint {.importc: "QEnterEvent_globalX".}
proc fcQEnterEvent_globalY(self: pointer, ): cint {.importc: "QEnterEvent_globalY".}
proc fcQEnterEvent_localPos(self: pointer, ): pointer {.importc: "QEnterEvent_localPos".}
proc fcQEnterEvent_windowPos(self: pointer, ): pointer {.importc: "QEnterEvent_windowPos".}
proc fcQEnterEvent_screenPos(self: pointer, ): pointer {.importc: "QEnterEvent_screenPos".}
proc fQEnterEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QEnterEvent_virtualbase_clone".}
proc fcQEnterEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QEnterEvent_override_virtual_clone".}
proc fQEnterEvent_virtualbase_isBeginEvent(self: pointer, ): bool{.importc: "QEnterEvent_virtualbase_isBeginEvent".}
proc fcQEnterEvent_override_virtual_isBeginEvent(self: pointer, slot: int) {.importc: "QEnterEvent_override_virtual_isBeginEvent".}
proc fQEnterEvent_virtualbase_isUpdateEvent(self: pointer, ): bool{.importc: "QEnterEvent_virtualbase_isUpdateEvent".}
proc fcQEnterEvent_override_virtual_isUpdateEvent(self: pointer, slot: int) {.importc: "QEnterEvent_override_virtual_isUpdateEvent".}
proc fQEnterEvent_virtualbase_isEndEvent(self: pointer, ): bool{.importc: "QEnterEvent_virtualbase_isEndEvent".}
proc fcQEnterEvent_override_virtual_isEndEvent(self: pointer, slot: int) {.importc: "QEnterEvent_override_virtual_isEndEvent".}
proc fQEnterEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void{.importc: "QEnterEvent_virtualbase_setTimestamp".}
proc fcQEnterEvent_override_virtual_setTimestamp(self: pointer, slot: int) {.importc: "QEnterEvent_override_virtual_setTimestamp".}
proc fQEnterEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QEnterEvent_virtualbase_setAccepted".}
proc fcQEnterEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QEnterEvent_override_virtual_setAccepted".}
proc fcQEnterEvent_delete(self: pointer) {.importc: "QEnterEvent_delete".}
proc fcQMouseEvent_new(typeVal: cint, localPos: pointer, button: cint, buttons: cint, modifiers: cint): ptr cQMouseEvent {.importc: "QMouseEvent_new".}
proc fcQMouseEvent_new2(typeVal: cint, localPos: pointer, globalPos: pointer, button: cint, buttons: cint, modifiers: cint): ptr cQMouseEvent {.importc: "QMouseEvent_new2".}
proc fcQMouseEvent_new3(typeVal: cint, localPos: pointer, scenePos: pointer, globalPos: pointer, button: cint, buttons: cint, modifiers: cint): ptr cQMouseEvent {.importc: "QMouseEvent_new3".}
proc fcQMouseEvent_new4(typeVal: cint, localPos: pointer, scenePos: pointer, globalPos: pointer, button: cint, buttons: cint, modifiers: cint, source: cint): ptr cQMouseEvent {.importc: "QMouseEvent_new4".}
proc fcQMouseEvent_new5(typeVal: cint, localPos: pointer, button: cint, buttons: cint, modifiers: cint, device: pointer): ptr cQMouseEvent {.importc: "QMouseEvent_new5".}
proc fcQMouseEvent_new6(typeVal: cint, localPos: pointer, globalPos: pointer, button: cint, buttons: cint, modifiers: cint, device: pointer): ptr cQMouseEvent {.importc: "QMouseEvent_new6".}
proc fcQMouseEvent_new7(typeVal: cint, localPos: pointer, scenePos: pointer, globalPos: pointer, button: cint, buttons: cint, modifiers: cint, device: pointer): ptr cQMouseEvent {.importc: "QMouseEvent_new7".}
proc fcQMouseEvent_new8(typeVal: cint, localPos: pointer, scenePos: pointer, globalPos: pointer, button: cint, buttons: cint, modifiers: cint, source: cint, device: pointer): ptr cQMouseEvent {.importc: "QMouseEvent_new8".}
proc fcQMouseEvent_clone(self: pointer, ): pointer {.importc: "QMouseEvent_clone".}
proc fcQMouseEvent_pos(self: pointer, ): pointer {.importc: "QMouseEvent_pos".}
proc fcQMouseEvent_globalPos(self: pointer, ): pointer {.importc: "QMouseEvent_globalPos".}
proc fcQMouseEvent_x(self: pointer, ): cint {.importc: "QMouseEvent_x".}
proc fcQMouseEvent_y(self: pointer, ): cint {.importc: "QMouseEvent_y".}
proc fcQMouseEvent_globalX(self: pointer, ): cint {.importc: "QMouseEvent_globalX".}
proc fcQMouseEvent_globalY(self: pointer, ): cint {.importc: "QMouseEvent_globalY".}
proc fcQMouseEvent_localPos(self: pointer, ): pointer {.importc: "QMouseEvent_localPos".}
proc fcQMouseEvent_windowPos(self: pointer, ): pointer {.importc: "QMouseEvent_windowPos".}
proc fcQMouseEvent_screenPos(self: pointer, ): pointer {.importc: "QMouseEvent_screenPos".}
proc fcQMouseEvent_source(self: pointer, ): cint {.importc: "QMouseEvent_source".}
proc fcQMouseEvent_flags(self: pointer, ): cint {.importc: "QMouseEvent_flags".}
proc fQMouseEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QMouseEvent_virtualbase_clone".}
proc fcQMouseEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QMouseEvent_override_virtual_clone".}
proc fQMouseEvent_virtualbase_isBeginEvent(self: pointer, ): bool{.importc: "QMouseEvent_virtualbase_isBeginEvent".}
proc fcQMouseEvent_override_virtual_isBeginEvent(self: pointer, slot: int) {.importc: "QMouseEvent_override_virtual_isBeginEvent".}
proc fQMouseEvent_virtualbase_isUpdateEvent(self: pointer, ): bool{.importc: "QMouseEvent_virtualbase_isUpdateEvent".}
proc fcQMouseEvent_override_virtual_isUpdateEvent(self: pointer, slot: int) {.importc: "QMouseEvent_override_virtual_isUpdateEvent".}
proc fQMouseEvent_virtualbase_isEndEvent(self: pointer, ): bool{.importc: "QMouseEvent_virtualbase_isEndEvent".}
proc fcQMouseEvent_override_virtual_isEndEvent(self: pointer, slot: int) {.importc: "QMouseEvent_override_virtual_isEndEvent".}
proc fQMouseEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void{.importc: "QMouseEvent_virtualbase_setTimestamp".}
proc fcQMouseEvent_override_virtual_setTimestamp(self: pointer, slot: int) {.importc: "QMouseEvent_override_virtual_setTimestamp".}
proc fQMouseEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QMouseEvent_virtualbase_setAccepted".}
proc fcQMouseEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QMouseEvent_override_virtual_setAccepted".}
proc fcQMouseEvent_delete(self: pointer) {.importc: "QMouseEvent_delete".}
proc fcQHoverEvent_new(typeVal: cint, scenePos: pointer, globalPos: pointer, oldPos: pointer): ptr cQHoverEvent {.importc: "QHoverEvent_new".}
proc fcQHoverEvent_new2(typeVal: cint, pos: pointer, oldPos: pointer): ptr cQHoverEvent {.importc: "QHoverEvent_new2".}
proc fcQHoverEvent_new3(typeVal: cint, scenePos: pointer, globalPos: pointer, oldPos: pointer, modifiers: cint): ptr cQHoverEvent {.importc: "QHoverEvent_new3".}
proc fcQHoverEvent_new4(typeVal: cint, scenePos: pointer, globalPos: pointer, oldPos: pointer, modifiers: cint, device: pointer): ptr cQHoverEvent {.importc: "QHoverEvent_new4".}
proc fcQHoverEvent_new5(typeVal: cint, pos: pointer, oldPos: pointer, modifiers: cint): ptr cQHoverEvent {.importc: "QHoverEvent_new5".}
proc fcQHoverEvent_new6(typeVal: cint, pos: pointer, oldPos: pointer, modifiers: cint, device: pointer): ptr cQHoverEvent {.importc: "QHoverEvent_new6".}
proc fcQHoverEvent_clone(self: pointer, ): pointer {.importc: "QHoverEvent_clone".}
proc fcQHoverEvent_pos(self: pointer, ): pointer {.importc: "QHoverEvent_pos".}
proc fcQHoverEvent_posF(self: pointer, ): pointer {.importc: "QHoverEvent_posF".}
proc fcQHoverEvent_isUpdateEvent(self: pointer, ): bool {.importc: "QHoverEvent_isUpdateEvent".}
proc fcQHoverEvent_oldPos(self: pointer, ): pointer {.importc: "QHoverEvent_oldPos".}
proc fcQHoverEvent_oldPosF(self: pointer, ): pointer {.importc: "QHoverEvent_oldPosF".}
proc fQHoverEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QHoverEvent_virtualbase_clone".}
proc fcQHoverEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QHoverEvent_override_virtual_clone".}
proc fQHoverEvent_virtualbase_isUpdateEvent(self: pointer, ): bool{.importc: "QHoverEvent_virtualbase_isUpdateEvent".}
proc fcQHoverEvent_override_virtual_isUpdateEvent(self: pointer, slot: int) {.importc: "QHoverEvent_override_virtual_isUpdateEvent".}
proc fQHoverEvent_virtualbase_isBeginEvent(self: pointer, ): bool{.importc: "QHoverEvent_virtualbase_isBeginEvent".}
proc fcQHoverEvent_override_virtual_isBeginEvent(self: pointer, slot: int) {.importc: "QHoverEvent_override_virtual_isBeginEvent".}
proc fQHoverEvent_virtualbase_isEndEvent(self: pointer, ): bool{.importc: "QHoverEvent_virtualbase_isEndEvent".}
proc fcQHoverEvent_override_virtual_isEndEvent(self: pointer, slot: int) {.importc: "QHoverEvent_override_virtual_isEndEvent".}
proc fQHoverEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void{.importc: "QHoverEvent_virtualbase_setTimestamp".}
proc fcQHoverEvent_override_virtual_setTimestamp(self: pointer, slot: int) {.importc: "QHoverEvent_override_virtual_setTimestamp".}
proc fQHoverEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QHoverEvent_virtualbase_setAccepted".}
proc fcQHoverEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QHoverEvent_override_virtual_setAccepted".}
proc fcQHoverEvent_delete(self: pointer) {.importc: "QHoverEvent_delete".}
proc fcQWheelEvent_new(pos: pointer, globalPos: pointer, pixelDelta: pointer, angleDelta: pointer, buttons: cint, modifiers: cint, phase: cint, inverted: bool): ptr cQWheelEvent {.importc: "QWheelEvent_new".}
proc fcQWheelEvent_new2(pos: pointer, globalPos: pointer, pixelDelta: pointer, angleDelta: pointer, buttons: cint, modifiers: cint, phase: cint, inverted: bool, source: cint): ptr cQWheelEvent {.importc: "QWheelEvent_new2".}
proc fcQWheelEvent_new3(pos: pointer, globalPos: pointer, pixelDelta: pointer, angleDelta: pointer, buttons: cint, modifiers: cint, phase: cint, inverted: bool, source: cint, device: pointer): ptr cQWheelEvent {.importc: "QWheelEvent_new3".}
proc fcQWheelEvent_clone(self: pointer, ): pointer {.importc: "QWheelEvent_clone".}
proc fcQWheelEvent_pixelDelta(self: pointer, ): pointer {.importc: "QWheelEvent_pixelDelta".}
proc fcQWheelEvent_angleDelta(self: pointer, ): pointer {.importc: "QWheelEvent_angleDelta".}
proc fcQWheelEvent_phase(self: pointer, ): cint {.importc: "QWheelEvent_phase".}
proc fcQWheelEvent_inverted(self: pointer, ): bool {.importc: "QWheelEvent_inverted".}
proc fcQWheelEvent_isInverted(self: pointer, ): bool {.importc: "QWheelEvent_isInverted".}
proc fcQWheelEvent_hasPixelDelta(self: pointer, ): bool {.importc: "QWheelEvent_hasPixelDelta".}
proc fcQWheelEvent_isBeginEvent(self: pointer, ): bool {.importc: "QWheelEvent_isBeginEvent".}
proc fcQWheelEvent_isUpdateEvent(self: pointer, ): bool {.importc: "QWheelEvent_isUpdateEvent".}
proc fcQWheelEvent_isEndEvent(self: pointer, ): bool {.importc: "QWheelEvent_isEndEvent".}
proc fcQWheelEvent_source(self: pointer, ): cint {.importc: "QWheelEvent_source".}
proc fQWheelEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QWheelEvent_virtualbase_clone".}
proc fcQWheelEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QWheelEvent_override_virtual_clone".}
proc fQWheelEvent_virtualbase_isBeginEvent(self: pointer, ): bool{.importc: "QWheelEvent_virtualbase_isBeginEvent".}
proc fcQWheelEvent_override_virtual_isBeginEvent(self: pointer, slot: int) {.importc: "QWheelEvent_override_virtual_isBeginEvent".}
proc fQWheelEvent_virtualbase_isUpdateEvent(self: pointer, ): bool{.importc: "QWheelEvent_virtualbase_isUpdateEvent".}
proc fcQWheelEvent_override_virtual_isUpdateEvent(self: pointer, slot: int) {.importc: "QWheelEvent_override_virtual_isUpdateEvent".}
proc fQWheelEvent_virtualbase_isEndEvent(self: pointer, ): bool{.importc: "QWheelEvent_virtualbase_isEndEvent".}
proc fcQWheelEvent_override_virtual_isEndEvent(self: pointer, slot: int) {.importc: "QWheelEvent_override_virtual_isEndEvent".}
proc fQWheelEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void{.importc: "QWheelEvent_virtualbase_setTimestamp".}
proc fcQWheelEvent_override_virtual_setTimestamp(self: pointer, slot: int) {.importc: "QWheelEvent_override_virtual_setTimestamp".}
proc fQWheelEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QWheelEvent_virtualbase_setAccepted".}
proc fcQWheelEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QWheelEvent_override_virtual_setAccepted".}
proc fcQWheelEvent_delete(self: pointer) {.importc: "QWheelEvent_delete".}
proc fcQTabletEvent_new(t: cint, device: pointer, pos: pointer, globalPos: pointer, pressure: float64, xTilt: float32, yTilt: float32, tangentialPressure: float32, rotation: float64, z: float32, keyState: cint, button: cint, buttons: cint): ptr cQTabletEvent {.importc: "QTabletEvent_new".}
proc fcQTabletEvent_clone(self: pointer, ): pointer {.importc: "QTabletEvent_clone".}
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
proc fcQTabletEvent_uniqueId(self: pointer, ): clonglong {.importc: "QTabletEvent_uniqueId".}
proc fcQTabletEvent_pressure(self: pointer, ): float64 {.importc: "QTabletEvent_pressure".}
proc fcQTabletEvent_rotation(self: pointer, ): float64 {.importc: "QTabletEvent_rotation".}
proc fcQTabletEvent_z(self: pointer, ): float64 {.importc: "QTabletEvent_z".}
proc fcQTabletEvent_tangentialPressure(self: pointer, ): float64 {.importc: "QTabletEvent_tangentialPressure".}
proc fcQTabletEvent_xTilt(self: pointer, ): float64 {.importc: "QTabletEvent_xTilt".}
proc fcQTabletEvent_yTilt(self: pointer, ): float64 {.importc: "QTabletEvent_yTilt".}
proc fQTabletEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QTabletEvent_virtualbase_clone".}
proc fcQTabletEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QTabletEvent_override_virtual_clone".}
proc fQTabletEvent_virtualbase_isBeginEvent(self: pointer, ): bool{.importc: "QTabletEvent_virtualbase_isBeginEvent".}
proc fcQTabletEvent_override_virtual_isBeginEvent(self: pointer, slot: int) {.importc: "QTabletEvent_override_virtual_isBeginEvent".}
proc fQTabletEvent_virtualbase_isUpdateEvent(self: pointer, ): bool{.importc: "QTabletEvent_virtualbase_isUpdateEvent".}
proc fcQTabletEvent_override_virtual_isUpdateEvent(self: pointer, slot: int) {.importc: "QTabletEvent_override_virtual_isUpdateEvent".}
proc fQTabletEvent_virtualbase_isEndEvent(self: pointer, ): bool{.importc: "QTabletEvent_virtualbase_isEndEvent".}
proc fcQTabletEvent_override_virtual_isEndEvent(self: pointer, slot: int) {.importc: "QTabletEvent_override_virtual_isEndEvent".}
proc fQTabletEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void{.importc: "QTabletEvent_virtualbase_setTimestamp".}
proc fcQTabletEvent_override_virtual_setTimestamp(self: pointer, slot: int) {.importc: "QTabletEvent_override_virtual_setTimestamp".}
proc fQTabletEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QTabletEvent_virtualbase_setAccepted".}
proc fcQTabletEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QTabletEvent_override_virtual_setAccepted".}
proc fcQTabletEvent_delete(self: pointer) {.importc: "QTabletEvent_delete".}
proc fcQNativeGestureEvent_new(typeVal: cint, dev: pointer, localPos: pointer, scenePos: pointer, globalPos: pointer, value: float64, sequenceId: culonglong, intArgument: culonglong): ptr cQNativeGestureEvent {.importc: "QNativeGestureEvent_new".}
proc fcQNativeGestureEvent_new2(typeVal: cint, dev: pointer, fingerCount: cint, localPos: pointer, scenePos: pointer, globalPos: pointer, value: float64, delta: pointer): ptr cQNativeGestureEvent {.importc: "QNativeGestureEvent_new2".}
proc fcQNativeGestureEvent_new3(typeVal: cint, dev: pointer, fingerCount: cint, localPos: pointer, scenePos: pointer, globalPos: pointer, value: float64, delta: pointer, sequenceId: culonglong): ptr cQNativeGestureEvent {.importc: "QNativeGestureEvent_new3".}
proc fcQNativeGestureEvent_clone(self: pointer, ): pointer {.importc: "QNativeGestureEvent_clone".}
proc fcQNativeGestureEvent_gestureType(self: pointer, ): cint {.importc: "QNativeGestureEvent_gestureType".}
proc fcQNativeGestureEvent_fingerCount(self: pointer, ): cint {.importc: "QNativeGestureEvent_fingerCount".}
proc fcQNativeGestureEvent_value(self: pointer, ): float64 {.importc: "QNativeGestureEvent_value".}
proc fcQNativeGestureEvent_delta(self: pointer, ): pointer {.importc: "QNativeGestureEvent_delta".}
proc fcQNativeGestureEvent_pos(self: pointer, ): pointer {.importc: "QNativeGestureEvent_pos".}
proc fcQNativeGestureEvent_globalPos(self: pointer, ): pointer {.importc: "QNativeGestureEvent_globalPos".}
proc fcQNativeGestureEvent_localPos(self: pointer, ): pointer {.importc: "QNativeGestureEvent_localPos".}
proc fcQNativeGestureEvent_windowPos(self: pointer, ): pointer {.importc: "QNativeGestureEvent_windowPos".}
proc fcQNativeGestureEvent_screenPos(self: pointer, ): pointer {.importc: "QNativeGestureEvent_screenPos".}
proc fQNativeGestureEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QNativeGestureEvent_virtualbase_clone".}
proc fcQNativeGestureEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QNativeGestureEvent_override_virtual_clone".}
proc fQNativeGestureEvent_virtualbase_isBeginEvent(self: pointer, ): bool{.importc: "QNativeGestureEvent_virtualbase_isBeginEvent".}
proc fcQNativeGestureEvent_override_virtual_isBeginEvent(self: pointer, slot: int) {.importc: "QNativeGestureEvent_override_virtual_isBeginEvent".}
proc fQNativeGestureEvent_virtualbase_isUpdateEvent(self: pointer, ): bool{.importc: "QNativeGestureEvent_virtualbase_isUpdateEvent".}
proc fcQNativeGestureEvent_override_virtual_isUpdateEvent(self: pointer, slot: int) {.importc: "QNativeGestureEvent_override_virtual_isUpdateEvent".}
proc fQNativeGestureEvent_virtualbase_isEndEvent(self: pointer, ): bool{.importc: "QNativeGestureEvent_virtualbase_isEndEvent".}
proc fcQNativeGestureEvent_override_virtual_isEndEvent(self: pointer, slot: int) {.importc: "QNativeGestureEvent_override_virtual_isEndEvent".}
proc fQNativeGestureEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void{.importc: "QNativeGestureEvent_virtualbase_setTimestamp".}
proc fcQNativeGestureEvent_override_virtual_setTimestamp(self: pointer, slot: int) {.importc: "QNativeGestureEvent_override_virtual_setTimestamp".}
proc fQNativeGestureEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QNativeGestureEvent_virtualbase_setAccepted".}
proc fcQNativeGestureEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QNativeGestureEvent_override_virtual_setAccepted".}
proc fcQNativeGestureEvent_delete(self: pointer) {.importc: "QNativeGestureEvent_delete".}
proc fcQKeyEvent_new(typeVal: cint, key: cint, modifiers: cint): ptr cQKeyEvent {.importc: "QKeyEvent_new".}
proc fcQKeyEvent_new2(typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint): ptr cQKeyEvent {.importc: "QKeyEvent_new2".}
proc fcQKeyEvent_new3(typeVal: cint, key: cint, modifiers: cint, text: struct_miqt_string): ptr cQKeyEvent {.importc: "QKeyEvent_new3".}
proc fcQKeyEvent_new4(typeVal: cint, key: cint, modifiers: cint, text: struct_miqt_string, autorep: bool): ptr cQKeyEvent {.importc: "QKeyEvent_new4".}
proc fcQKeyEvent_new5(typeVal: cint, key: cint, modifiers: cint, text: struct_miqt_string, autorep: bool, count: cushort): ptr cQKeyEvent {.importc: "QKeyEvent_new5".}
proc fcQKeyEvent_new6(typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: struct_miqt_string): ptr cQKeyEvent {.importc: "QKeyEvent_new6".}
proc fcQKeyEvent_new7(typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: struct_miqt_string, autorep: bool): ptr cQKeyEvent {.importc: "QKeyEvent_new7".}
proc fcQKeyEvent_new8(typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: struct_miqt_string, autorep: bool, count: cushort): ptr cQKeyEvent {.importc: "QKeyEvent_new8".}
proc fcQKeyEvent_new9(typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: struct_miqt_string, autorep: bool, count: cushort, device: pointer): ptr cQKeyEvent {.importc: "QKeyEvent_new9".}
proc fcQKeyEvent_clone(self: pointer, ): pointer {.importc: "QKeyEvent_clone".}
proc fcQKeyEvent_key(self: pointer, ): cint {.importc: "QKeyEvent_key".}
proc fcQKeyEvent_matches(self: pointer, key: cint): bool {.importc: "QKeyEvent_matches".}
proc fcQKeyEvent_modifiers(self: pointer, ): cint {.importc: "QKeyEvent_modifiers".}
proc fcQKeyEvent_keyCombination(self: pointer, ): pointer {.importc: "QKeyEvent_keyCombination".}
proc fcQKeyEvent_text(self: pointer, ): struct_miqt_string {.importc: "QKeyEvent_text".}
proc fcQKeyEvent_isAutoRepeat(self: pointer, ): bool {.importc: "QKeyEvent_isAutoRepeat".}
proc fcQKeyEvent_count(self: pointer, ): cint {.importc: "QKeyEvent_count".}
proc fcQKeyEvent_nativeScanCode(self: pointer, ): cuint {.importc: "QKeyEvent_nativeScanCode".}
proc fcQKeyEvent_nativeVirtualKey(self: pointer, ): cuint {.importc: "QKeyEvent_nativeVirtualKey".}
proc fcQKeyEvent_nativeModifiers(self: pointer, ): cuint {.importc: "QKeyEvent_nativeModifiers".}
proc fQKeyEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QKeyEvent_virtualbase_clone".}
proc fcQKeyEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QKeyEvent_override_virtual_clone".}
proc fQKeyEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void{.importc: "QKeyEvent_virtualbase_setTimestamp".}
proc fcQKeyEvent_override_virtual_setTimestamp(self: pointer, slot: int) {.importc: "QKeyEvent_override_virtual_setTimestamp".}
proc fQKeyEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QKeyEvent_virtualbase_setAccepted".}
proc fcQKeyEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QKeyEvent_override_virtual_setAccepted".}
proc fcQKeyEvent_delete(self: pointer) {.importc: "QKeyEvent_delete".}
proc fcQFocusEvent_new(typeVal: cint): ptr cQFocusEvent {.importc: "QFocusEvent_new".}
proc fcQFocusEvent_new2(typeVal: cint, reason: cint): ptr cQFocusEvent {.importc: "QFocusEvent_new2".}
proc fcQFocusEvent_clone(self: pointer, ): pointer {.importc: "QFocusEvent_clone".}
proc fcQFocusEvent_gotFocus(self: pointer, ): bool {.importc: "QFocusEvent_gotFocus".}
proc fcQFocusEvent_lostFocus(self: pointer, ): bool {.importc: "QFocusEvent_lostFocus".}
proc fcQFocusEvent_reason(self: pointer, ): cint {.importc: "QFocusEvent_reason".}
proc fQFocusEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QFocusEvent_virtualbase_clone".}
proc fcQFocusEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QFocusEvent_override_virtual_clone".}
proc fQFocusEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QFocusEvent_virtualbase_setAccepted".}
proc fcQFocusEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QFocusEvent_override_virtual_setAccepted".}
proc fcQFocusEvent_delete(self: pointer) {.importc: "QFocusEvent_delete".}
proc fcQPaintEvent_new(paintRegion: pointer): ptr cQPaintEvent {.importc: "QPaintEvent_new".}
proc fcQPaintEvent_new2(paintRect: pointer): ptr cQPaintEvent {.importc: "QPaintEvent_new2".}
proc fcQPaintEvent_clone(self: pointer, ): pointer {.importc: "QPaintEvent_clone".}
proc fcQPaintEvent_rect(self: pointer, ): pointer {.importc: "QPaintEvent_rect".}
proc fcQPaintEvent_region(self: pointer, ): pointer {.importc: "QPaintEvent_region".}
proc fQPaintEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QPaintEvent_virtualbase_clone".}
proc fcQPaintEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QPaintEvent_override_virtual_clone".}
proc fQPaintEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QPaintEvent_virtualbase_setAccepted".}
proc fcQPaintEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QPaintEvent_override_virtual_setAccepted".}
proc fcQPaintEvent_delete(self: pointer) {.importc: "QPaintEvent_delete".}
proc fcQMoveEvent_new(pos: pointer, oldPos: pointer): ptr cQMoveEvent {.importc: "QMoveEvent_new".}
proc fcQMoveEvent_clone(self: pointer, ): pointer {.importc: "QMoveEvent_clone".}
proc fcQMoveEvent_pos(self: pointer, ): pointer {.importc: "QMoveEvent_pos".}
proc fcQMoveEvent_oldPos(self: pointer, ): pointer {.importc: "QMoveEvent_oldPos".}
proc fQMoveEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QMoveEvent_virtualbase_clone".}
proc fcQMoveEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QMoveEvent_override_virtual_clone".}
proc fQMoveEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QMoveEvent_virtualbase_setAccepted".}
proc fcQMoveEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QMoveEvent_override_virtual_setAccepted".}
proc fcQMoveEvent_delete(self: pointer) {.importc: "QMoveEvent_delete".}
proc fcQExposeEvent_new(m_region: pointer): ptr cQExposeEvent {.importc: "QExposeEvent_new".}
proc fcQExposeEvent_clone(self: pointer, ): pointer {.importc: "QExposeEvent_clone".}
proc fcQExposeEvent_region(self: pointer, ): pointer {.importc: "QExposeEvent_region".}
proc fQExposeEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QExposeEvent_virtualbase_clone".}
proc fcQExposeEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QExposeEvent_override_virtual_clone".}
proc fQExposeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QExposeEvent_virtualbase_setAccepted".}
proc fcQExposeEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QExposeEvent_override_virtual_setAccepted".}
proc fcQExposeEvent_delete(self: pointer) {.importc: "QExposeEvent_delete".}
proc fcQPlatformSurfaceEvent_new(surfaceEventType: cint): ptr cQPlatformSurfaceEvent {.importc: "QPlatformSurfaceEvent_new".}
proc fcQPlatformSurfaceEvent_clone(self: pointer, ): pointer {.importc: "QPlatformSurfaceEvent_clone".}
proc fcQPlatformSurfaceEvent_surfaceEventType(self: pointer, ): cint {.importc: "QPlatformSurfaceEvent_surfaceEventType".}
proc fQPlatformSurfaceEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QPlatformSurfaceEvent_virtualbase_clone".}
proc fcQPlatformSurfaceEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QPlatformSurfaceEvent_override_virtual_clone".}
proc fQPlatformSurfaceEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QPlatformSurfaceEvent_virtualbase_setAccepted".}
proc fcQPlatformSurfaceEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QPlatformSurfaceEvent_override_virtual_setAccepted".}
proc fcQPlatformSurfaceEvent_delete(self: pointer) {.importc: "QPlatformSurfaceEvent_delete".}
proc fcQResizeEvent_new(size: pointer, oldSize: pointer): ptr cQResizeEvent {.importc: "QResizeEvent_new".}
proc fcQResizeEvent_clone(self: pointer, ): pointer {.importc: "QResizeEvent_clone".}
proc fcQResizeEvent_size(self: pointer, ): pointer {.importc: "QResizeEvent_size".}
proc fcQResizeEvent_oldSize(self: pointer, ): pointer {.importc: "QResizeEvent_oldSize".}
proc fQResizeEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QResizeEvent_virtualbase_clone".}
proc fcQResizeEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QResizeEvent_override_virtual_clone".}
proc fQResizeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QResizeEvent_virtualbase_setAccepted".}
proc fcQResizeEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QResizeEvent_override_virtual_setAccepted".}
proc fcQResizeEvent_delete(self: pointer) {.importc: "QResizeEvent_delete".}
proc fcQCloseEvent_new(): ptr cQCloseEvent {.importc: "QCloseEvent_new".}
proc fcQCloseEvent_clone(self: pointer, ): pointer {.importc: "QCloseEvent_clone".}
proc fQCloseEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QCloseEvent_virtualbase_clone".}
proc fcQCloseEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QCloseEvent_override_virtual_clone".}
proc fQCloseEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QCloseEvent_virtualbase_setAccepted".}
proc fcQCloseEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QCloseEvent_override_virtual_setAccepted".}
proc fcQCloseEvent_delete(self: pointer) {.importc: "QCloseEvent_delete".}
proc fcQIconDragEvent_new(): ptr cQIconDragEvent {.importc: "QIconDragEvent_new".}
proc fcQIconDragEvent_clone(self: pointer, ): pointer {.importc: "QIconDragEvent_clone".}
proc fQIconDragEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QIconDragEvent_virtualbase_clone".}
proc fcQIconDragEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QIconDragEvent_override_virtual_clone".}
proc fQIconDragEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QIconDragEvent_virtualbase_setAccepted".}
proc fcQIconDragEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QIconDragEvent_override_virtual_setAccepted".}
proc fcQIconDragEvent_delete(self: pointer) {.importc: "QIconDragEvent_delete".}
proc fcQShowEvent_new(): ptr cQShowEvent {.importc: "QShowEvent_new".}
proc fcQShowEvent_clone(self: pointer, ): pointer {.importc: "QShowEvent_clone".}
proc fQShowEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QShowEvent_virtualbase_clone".}
proc fcQShowEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QShowEvent_override_virtual_clone".}
proc fQShowEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QShowEvent_virtualbase_setAccepted".}
proc fcQShowEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QShowEvent_override_virtual_setAccepted".}
proc fcQShowEvent_delete(self: pointer) {.importc: "QShowEvent_delete".}
proc fcQHideEvent_new(): ptr cQHideEvent {.importc: "QHideEvent_new".}
proc fcQHideEvent_clone(self: pointer, ): pointer {.importc: "QHideEvent_clone".}
proc fQHideEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QHideEvent_virtualbase_clone".}
proc fcQHideEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QHideEvent_override_virtual_clone".}
proc fQHideEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QHideEvent_virtualbase_setAccepted".}
proc fcQHideEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QHideEvent_override_virtual_setAccepted".}
proc fcQHideEvent_delete(self: pointer) {.importc: "QHideEvent_delete".}
proc fcQContextMenuEvent_new(reason: cint, pos: pointer, globalPos: pointer): ptr cQContextMenuEvent {.importc: "QContextMenuEvent_new".}
proc fcQContextMenuEvent_new2(reason: cint, pos: pointer): ptr cQContextMenuEvent {.importc: "QContextMenuEvent_new2".}
proc fcQContextMenuEvent_new3(reason: cint, pos: pointer, globalPos: pointer, modifiers: cint): ptr cQContextMenuEvent {.importc: "QContextMenuEvent_new3".}
proc fcQContextMenuEvent_clone(self: pointer, ): pointer {.importc: "QContextMenuEvent_clone".}
proc fcQContextMenuEvent_x(self: pointer, ): cint {.importc: "QContextMenuEvent_x".}
proc fcQContextMenuEvent_y(self: pointer, ): cint {.importc: "QContextMenuEvent_y".}
proc fcQContextMenuEvent_globalX(self: pointer, ): cint {.importc: "QContextMenuEvent_globalX".}
proc fcQContextMenuEvent_globalY(self: pointer, ): cint {.importc: "QContextMenuEvent_globalY".}
proc fcQContextMenuEvent_pos(self: pointer, ): pointer {.importc: "QContextMenuEvent_pos".}
proc fcQContextMenuEvent_globalPos(self: pointer, ): pointer {.importc: "QContextMenuEvent_globalPos".}
proc fcQContextMenuEvent_reason(self: pointer, ): cint {.importc: "QContextMenuEvent_reason".}
proc fQContextMenuEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QContextMenuEvent_virtualbase_clone".}
proc fcQContextMenuEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QContextMenuEvent_override_virtual_clone".}
proc fQContextMenuEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void{.importc: "QContextMenuEvent_virtualbase_setTimestamp".}
proc fcQContextMenuEvent_override_virtual_setTimestamp(self: pointer, slot: int) {.importc: "QContextMenuEvent_override_virtual_setTimestamp".}
proc fQContextMenuEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QContextMenuEvent_virtualbase_setAccepted".}
proc fcQContextMenuEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QContextMenuEvent_override_virtual_setAccepted".}
proc fcQContextMenuEvent_delete(self: pointer) {.importc: "QContextMenuEvent_delete".}
proc fcQInputMethodEvent_new(): ptr cQInputMethodEvent {.importc: "QInputMethodEvent_new".}
proc fcQInputMethodEvent_new2(preeditText: struct_miqt_string, attributes: struct_miqt_array): ptr cQInputMethodEvent {.importc: "QInputMethodEvent_new2".}
proc fcQInputMethodEvent_clone(self: pointer, ): pointer {.importc: "QInputMethodEvent_clone".}
proc fcQInputMethodEvent_setCommitString(self: pointer, commitString: struct_miqt_string): void {.importc: "QInputMethodEvent_setCommitString".}
proc fcQInputMethodEvent_attributes(self: pointer, ): struct_miqt_array {.importc: "QInputMethodEvent_attributes".}
proc fcQInputMethodEvent_preeditString(self: pointer, ): struct_miqt_string {.importc: "QInputMethodEvent_preeditString".}
proc fcQInputMethodEvent_commitString(self: pointer, ): struct_miqt_string {.importc: "QInputMethodEvent_commitString".}
proc fcQInputMethodEvent_replacementStart(self: pointer, ): cint {.importc: "QInputMethodEvent_replacementStart".}
proc fcQInputMethodEvent_replacementLength(self: pointer, ): cint {.importc: "QInputMethodEvent_replacementLength".}
proc fcQInputMethodEvent_setCommitString2(self: pointer, commitString: struct_miqt_string, replaceFrom: cint): void {.importc: "QInputMethodEvent_setCommitString2".}
proc fcQInputMethodEvent_setCommitString3(self: pointer, commitString: struct_miqt_string, replaceFrom: cint, replaceLength: cint): void {.importc: "QInputMethodEvent_setCommitString3".}
proc fQInputMethodEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QInputMethodEvent_virtualbase_clone".}
proc fcQInputMethodEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QInputMethodEvent_override_virtual_clone".}
proc fQInputMethodEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QInputMethodEvent_virtualbase_setAccepted".}
proc fcQInputMethodEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QInputMethodEvent_override_virtual_setAccepted".}
proc fcQInputMethodEvent_delete(self: pointer) {.importc: "QInputMethodEvent_delete".}
proc fcQInputMethodQueryEvent_new(queries: cint): ptr cQInputMethodQueryEvent {.importc: "QInputMethodQueryEvent_new".}
proc fcQInputMethodQueryEvent_clone(self: pointer, ): pointer {.importc: "QInputMethodQueryEvent_clone".}
proc fcQInputMethodQueryEvent_queries(self: pointer, ): cint {.importc: "QInputMethodQueryEvent_queries".}
proc fcQInputMethodQueryEvent_setValue(self: pointer, query: cint, value: pointer): void {.importc: "QInputMethodQueryEvent_setValue".}
proc fcQInputMethodQueryEvent_value(self: pointer, query: cint): pointer {.importc: "QInputMethodQueryEvent_value".}
proc fQInputMethodQueryEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QInputMethodQueryEvent_virtualbase_clone".}
proc fcQInputMethodQueryEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QInputMethodQueryEvent_override_virtual_clone".}
proc fQInputMethodQueryEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QInputMethodQueryEvent_virtualbase_setAccepted".}
proc fcQInputMethodQueryEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QInputMethodQueryEvent_override_virtual_setAccepted".}
proc fcQInputMethodQueryEvent_delete(self: pointer) {.importc: "QInputMethodQueryEvent_delete".}
proc fcQDropEvent_new(pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint): ptr cQDropEvent {.importc: "QDropEvent_new".}
proc fcQDropEvent_new2(pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint, typeVal: cint): ptr cQDropEvent {.importc: "QDropEvent_new2".}
proc fcQDropEvent_clone(self: pointer, ): pointer {.importc: "QDropEvent_clone".}
proc fcQDropEvent_pos(self: pointer, ): pointer {.importc: "QDropEvent_pos".}
proc fcQDropEvent_posF(self: pointer, ): pointer {.importc: "QDropEvent_posF".}
proc fcQDropEvent_mouseButtons(self: pointer, ): cint {.importc: "QDropEvent_mouseButtons".}
proc fcQDropEvent_keyboardModifiers(self: pointer, ): cint {.importc: "QDropEvent_keyboardModifiers".}
proc fcQDropEvent_position(self: pointer, ): pointer {.importc: "QDropEvent_position".}
proc fcQDropEvent_buttons(self: pointer, ): cint {.importc: "QDropEvent_buttons".}
proc fcQDropEvent_modifiers(self: pointer, ): cint {.importc: "QDropEvent_modifiers".}
proc fcQDropEvent_possibleActions(self: pointer, ): cint {.importc: "QDropEvent_possibleActions".}
proc fcQDropEvent_proposedAction(self: pointer, ): cint {.importc: "QDropEvent_proposedAction".}
proc fcQDropEvent_acceptProposedAction(self: pointer, ): void {.importc: "QDropEvent_acceptProposedAction".}
proc fcQDropEvent_dropAction(self: pointer, ): cint {.importc: "QDropEvent_dropAction".}
proc fcQDropEvent_setDropAction(self: pointer, action: cint): void {.importc: "QDropEvent_setDropAction".}
proc fcQDropEvent_source(self: pointer, ): pointer {.importc: "QDropEvent_source".}
proc fcQDropEvent_mimeData(self: pointer, ): pointer {.importc: "QDropEvent_mimeData".}
proc fQDropEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QDropEvent_virtualbase_clone".}
proc fcQDropEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QDropEvent_override_virtual_clone".}
proc fQDropEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QDropEvent_virtualbase_setAccepted".}
proc fcQDropEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QDropEvent_override_virtual_setAccepted".}
proc fcQDropEvent_delete(self: pointer) {.importc: "QDropEvent_delete".}
proc fcQDragMoveEvent_new(pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint): ptr cQDragMoveEvent {.importc: "QDragMoveEvent_new".}
proc fcQDragMoveEvent_new2(pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint, typeVal: cint): ptr cQDragMoveEvent {.importc: "QDragMoveEvent_new2".}
proc fcQDragMoveEvent_clone(self: pointer, ): pointer {.importc: "QDragMoveEvent_clone".}
proc fcQDragMoveEvent_answerRect(self: pointer, ): pointer {.importc: "QDragMoveEvent_answerRect".}
proc fcQDragMoveEvent_accept(self: pointer, ): void {.importc: "QDragMoveEvent_accept".}
proc fcQDragMoveEvent_ignore(self: pointer, ): void {.importc: "QDragMoveEvent_ignore".}
proc fcQDragMoveEvent_acceptWithQRect(self: pointer, r: pointer): void {.importc: "QDragMoveEvent_acceptWithQRect".}
proc fcQDragMoveEvent_ignoreWithQRect(self: pointer, r: pointer): void {.importc: "QDragMoveEvent_ignoreWithQRect".}
proc fQDragMoveEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QDragMoveEvent_virtualbase_clone".}
proc fcQDragMoveEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QDragMoveEvent_override_virtual_clone".}
proc fQDragMoveEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QDragMoveEvent_virtualbase_setAccepted".}
proc fcQDragMoveEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QDragMoveEvent_override_virtual_setAccepted".}
proc fcQDragMoveEvent_delete(self: pointer) {.importc: "QDragMoveEvent_delete".}
proc fcQDragEnterEvent_new(pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint): ptr cQDragEnterEvent {.importc: "QDragEnterEvent_new".}
proc fcQDragEnterEvent_clone(self: pointer, ): pointer {.importc: "QDragEnterEvent_clone".}
proc fQDragEnterEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QDragEnterEvent_virtualbase_clone".}
proc fcQDragEnterEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QDragEnterEvent_override_virtual_clone".}
proc fQDragEnterEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QDragEnterEvent_virtualbase_setAccepted".}
proc fcQDragEnterEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QDragEnterEvent_override_virtual_setAccepted".}
proc fcQDragEnterEvent_delete(self: pointer) {.importc: "QDragEnterEvent_delete".}
proc fcQDragLeaveEvent_new(): ptr cQDragLeaveEvent {.importc: "QDragLeaveEvent_new".}
proc fcQDragLeaveEvent_clone(self: pointer, ): pointer {.importc: "QDragLeaveEvent_clone".}
proc fQDragLeaveEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QDragLeaveEvent_virtualbase_clone".}
proc fcQDragLeaveEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QDragLeaveEvent_override_virtual_clone".}
proc fQDragLeaveEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QDragLeaveEvent_virtualbase_setAccepted".}
proc fcQDragLeaveEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QDragLeaveEvent_override_virtual_setAccepted".}
proc fcQDragLeaveEvent_delete(self: pointer) {.importc: "QDragLeaveEvent_delete".}
proc fcQHelpEvent_new(typeVal: cint, pos: pointer, globalPos: pointer): ptr cQHelpEvent {.importc: "QHelpEvent_new".}
proc fcQHelpEvent_clone(self: pointer, ): pointer {.importc: "QHelpEvent_clone".}
proc fcQHelpEvent_x(self: pointer, ): cint {.importc: "QHelpEvent_x".}
proc fcQHelpEvent_y(self: pointer, ): cint {.importc: "QHelpEvent_y".}
proc fcQHelpEvent_globalX(self: pointer, ): cint {.importc: "QHelpEvent_globalX".}
proc fcQHelpEvent_globalY(self: pointer, ): cint {.importc: "QHelpEvent_globalY".}
proc fcQHelpEvent_pos(self: pointer, ): pointer {.importc: "QHelpEvent_pos".}
proc fcQHelpEvent_globalPos(self: pointer, ): pointer {.importc: "QHelpEvent_globalPos".}
proc fQHelpEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QHelpEvent_virtualbase_clone".}
proc fcQHelpEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QHelpEvent_override_virtual_clone".}
proc fQHelpEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QHelpEvent_virtualbase_setAccepted".}
proc fcQHelpEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QHelpEvent_override_virtual_setAccepted".}
proc fcQHelpEvent_delete(self: pointer) {.importc: "QHelpEvent_delete".}
proc fcQStatusTipEvent_new(tip: struct_miqt_string): ptr cQStatusTipEvent {.importc: "QStatusTipEvent_new".}
proc fcQStatusTipEvent_clone(self: pointer, ): pointer {.importc: "QStatusTipEvent_clone".}
proc fcQStatusTipEvent_tip(self: pointer, ): struct_miqt_string {.importc: "QStatusTipEvent_tip".}
proc fQStatusTipEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QStatusTipEvent_virtualbase_clone".}
proc fcQStatusTipEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QStatusTipEvent_override_virtual_clone".}
proc fQStatusTipEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QStatusTipEvent_virtualbase_setAccepted".}
proc fcQStatusTipEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QStatusTipEvent_override_virtual_setAccepted".}
proc fcQStatusTipEvent_delete(self: pointer) {.importc: "QStatusTipEvent_delete".}
proc fcQWhatsThisClickedEvent_new(href: struct_miqt_string): ptr cQWhatsThisClickedEvent {.importc: "QWhatsThisClickedEvent_new".}
proc fcQWhatsThisClickedEvent_clone(self: pointer, ): pointer {.importc: "QWhatsThisClickedEvent_clone".}
proc fcQWhatsThisClickedEvent_href(self: pointer, ): struct_miqt_string {.importc: "QWhatsThisClickedEvent_href".}
proc fQWhatsThisClickedEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QWhatsThisClickedEvent_virtualbase_clone".}
proc fcQWhatsThisClickedEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QWhatsThisClickedEvent_override_virtual_clone".}
proc fQWhatsThisClickedEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QWhatsThisClickedEvent_virtualbase_setAccepted".}
proc fcQWhatsThisClickedEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QWhatsThisClickedEvent_override_virtual_setAccepted".}
proc fcQWhatsThisClickedEvent_delete(self: pointer) {.importc: "QWhatsThisClickedEvent_delete".}
proc fcQActionEvent_new(typeVal: cint, action: pointer): ptr cQActionEvent {.importc: "QActionEvent_new".}
proc fcQActionEvent_new2(typeVal: cint, action: pointer, before: pointer): ptr cQActionEvent {.importc: "QActionEvent_new2".}
proc fcQActionEvent_clone(self: pointer, ): pointer {.importc: "QActionEvent_clone".}
proc fcQActionEvent_action(self: pointer, ): pointer {.importc: "QActionEvent_action".}
proc fcQActionEvent_before(self: pointer, ): pointer {.importc: "QActionEvent_before".}
proc fQActionEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QActionEvent_virtualbase_clone".}
proc fcQActionEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QActionEvent_override_virtual_clone".}
proc fQActionEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QActionEvent_virtualbase_setAccepted".}
proc fcQActionEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QActionEvent_override_virtual_setAccepted".}
proc fcQActionEvent_delete(self: pointer) {.importc: "QActionEvent_delete".}
proc fcQFileOpenEvent_new(file: struct_miqt_string): ptr cQFileOpenEvent {.importc: "QFileOpenEvent_new".}
proc fcQFileOpenEvent_new2(url: pointer): ptr cQFileOpenEvent {.importc: "QFileOpenEvent_new2".}
proc fcQFileOpenEvent_clone(self: pointer, ): pointer {.importc: "QFileOpenEvent_clone".}
proc fcQFileOpenEvent_file(self: pointer, ): struct_miqt_string {.importc: "QFileOpenEvent_file".}
proc fcQFileOpenEvent_url(self: pointer, ): pointer {.importc: "QFileOpenEvent_url".}
proc fcQFileOpenEvent_openFile(self: pointer, file: pointer, flags: cint): bool {.importc: "QFileOpenEvent_openFile".}
proc fQFileOpenEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QFileOpenEvent_virtualbase_clone".}
proc fcQFileOpenEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QFileOpenEvent_override_virtual_clone".}
proc fQFileOpenEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QFileOpenEvent_virtualbase_setAccepted".}
proc fcQFileOpenEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QFileOpenEvent_override_virtual_setAccepted".}
proc fcQFileOpenEvent_delete(self: pointer) {.importc: "QFileOpenEvent_delete".}
proc fcQToolBarChangeEvent_new(t: bool): ptr cQToolBarChangeEvent {.importc: "QToolBarChangeEvent_new".}
proc fcQToolBarChangeEvent_clone(self: pointer, ): pointer {.importc: "QToolBarChangeEvent_clone".}
proc fcQToolBarChangeEvent_toggle(self: pointer, ): bool {.importc: "QToolBarChangeEvent_toggle".}
proc fQToolBarChangeEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QToolBarChangeEvent_virtualbase_clone".}
proc fcQToolBarChangeEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QToolBarChangeEvent_override_virtual_clone".}
proc fQToolBarChangeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QToolBarChangeEvent_virtualbase_setAccepted".}
proc fcQToolBarChangeEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QToolBarChangeEvent_override_virtual_setAccepted".}
proc fcQToolBarChangeEvent_delete(self: pointer) {.importc: "QToolBarChangeEvent_delete".}
proc fcQShortcutEvent_new(key: pointer, id: cint): ptr cQShortcutEvent {.importc: "QShortcutEvent_new".}
proc fcQShortcutEvent_new2(key: pointer, id: cint, ambiguous: bool): ptr cQShortcutEvent {.importc: "QShortcutEvent_new2".}
proc fcQShortcutEvent_clone(self: pointer, ): pointer {.importc: "QShortcutEvent_clone".}
proc fcQShortcutEvent_key(self: pointer, ): pointer {.importc: "QShortcutEvent_key".}
proc fcQShortcutEvent_shortcutId(self: pointer, ): cint {.importc: "QShortcutEvent_shortcutId".}
proc fcQShortcutEvent_isAmbiguous(self: pointer, ): bool {.importc: "QShortcutEvent_isAmbiguous".}
proc fQShortcutEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QShortcutEvent_virtualbase_clone".}
proc fcQShortcutEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QShortcutEvent_override_virtual_clone".}
proc fQShortcutEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QShortcutEvent_virtualbase_setAccepted".}
proc fcQShortcutEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QShortcutEvent_override_virtual_setAccepted".}
proc fcQShortcutEvent_delete(self: pointer) {.importc: "QShortcutEvent_delete".}
proc fcQWindowStateChangeEvent_new(oldState: cint): ptr cQWindowStateChangeEvent {.importc: "QWindowStateChangeEvent_new".}
proc fcQWindowStateChangeEvent_new2(oldState: cint, isOverride: bool): ptr cQWindowStateChangeEvent {.importc: "QWindowStateChangeEvent_new2".}
proc fcQWindowStateChangeEvent_clone(self: pointer, ): pointer {.importc: "QWindowStateChangeEvent_clone".}
proc fcQWindowStateChangeEvent_oldState(self: pointer, ): cint {.importc: "QWindowStateChangeEvent_oldState".}
proc fcQWindowStateChangeEvent_isOverride(self: pointer, ): bool {.importc: "QWindowStateChangeEvent_isOverride".}
proc fQWindowStateChangeEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QWindowStateChangeEvent_virtualbase_clone".}
proc fcQWindowStateChangeEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QWindowStateChangeEvent_override_virtual_clone".}
proc fQWindowStateChangeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QWindowStateChangeEvent_virtualbase_setAccepted".}
proc fcQWindowStateChangeEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QWindowStateChangeEvent_override_virtual_setAccepted".}
proc fcQWindowStateChangeEvent_delete(self: pointer) {.importc: "QWindowStateChangeEvent_delete".}
proc fcQTouchEvent_new(eventType: cint): ptr cQTouchEvent {.importc: "QTouchEvent_new".}
proc fcQTouchEvent_new2(eventType: cint, device: pointer, modifiers: cint, touchPointStates: cint): ptr cQTouchEvent {.importc: "QTouchEvent_new2".}
proc fcQTouchEvent_new3(eventType: cint, device: pointer): ptr cQTouchEvent {.importc: "QTouchEvent_new3".}
proc fcQTouchEvent_new4(eventType: cint, device: pointer, modifiers: cint): ptr cQTouchEvent {.importc: "QTouchEvent_new4".}
proc fcQTouchEvent_new5(eventType: cint, device: pointer, modifiers: cint, touchPoints: struct_miqt_array): ptr cQTouchEvent {.importc: "QTouchEvent_new5".}
proc fcQTouchEvent_new6(eventType: cint, device: pointer, modifiers: cint, touchPointStates: cint, touchPoints: struct_miqt_array): ptr cQTouchEvent {.importc: "QTouchEvent_new6".}
proc fcQTouchEvent_clone(self: pointer, ): pointer {.importc: "QTouchEvent_clone".}
proc fcQTouchEvent_target(self: pointer, ): pointer {.importc: "QTouchEvent_target".}
proc fcQTouchEvent_touchPointStates(self: pointer, ): cint {.importc: "QTouchEvent_touchPointStates".}
proc fcQTouchEvent_touchPoints(self: pointer, ): struct_miqt_array {.importc: "QTouchEvent_touchPoints".}
proc fcQTouchEvent_isBeginEvent(self: pointer, ): bool {.importc: "QTouchEvent_isBeginEvent".}
proc fcQTouchEvent_isUpdateEvent(self: pointer, ): bool {.importc: "QTouchEvent_isUpdateEvent".}
proc fcQTouchEvent_isEndEvent(self: pointer, ): bool {.importc: "QTouchEvent_isEndEvent".}
proc fQTouchEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QTouchEvent_virtualbase_clone".}
proc fcQTouchEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QTouchEvent_override_virtual_clone".}
proc fQTouchEvent_virtualbase_isBeginEvent(self: pointer, ): bool{.importc: "QTouchEvent_virtualbase_isBeginEvent".}
proc fcQTouchEvent_override_virtual_isBeginEvent(self: pointer, slot: int) {.importc: "QTouchEvent_override_virtual_isBeginEvent".}
proc fQTouchEvent_virtualbase_isUpdateEvent(self: pointer, ): bool{.importc: "QTouchEvent_virtualbase_isUpdateEvent".}
proc fcQTouchEvent_override_virtual_isUpdateEvent(self: pointer, slot: int) {.importc: "QTouchEvent_override_virtual_isUpdateEvent".}
proc fQTouchEvent_virtualbase_isEndEvent(self: pointer, ): bool{.importc: "QTouchEvent_virtualbase_isEndEvent".}
proc fcQTouchEvent_override_virtual_isEndEvent(self: pointer, slot: int) {.importc: "QTouchEvent_override_virtual_isEndEvent".}
proc fQTouchEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void{.importc: "QTouchEvent_virtualbase_setTimestamp".}
proc fcQTouchEvent_override_virtual_setTimestamp(self: pointer, slot: int) {.importc: "QTouchEvent_override_virtual_setTimestamp".}
proc fQTouchEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QTouchEvent_virtualbase_setAccepted".}
proc fcQTouchEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QTouchEvent_override_virtual_setAccepted".}
proc fcQTouchEvent_delete(self: pointer) {.importc: "QTouchEvent_delete".}
proc fcQScrollPrepareEvent_new(startPos: pointer): ptr cQScrollPrepareEvent {.importc: "QScrollPrepareEvent_new".}
proc fcQScrollPrepareEvent_clone(self: pointer, ): pointer {.importc: "QScrollPrepareEvent_clone".}
proc fcQScrollPrepareEvent_startPos(self: pointer, ): pointer {.importc: "QScrollPrepareEvent_startPos".}
proc fcQScrollPrepareEvent_viewportSize(self: pointer, ): pointer {.importc: "QScrollPrepareEvent_viewportSize".}
proc fcQScrollPrepareEvent_contentPosRange(self: pointer, ): pointer {.importc: "QScrollPrepareEvent_contentPosRange".}
proc fcQScrollPrepareEvent_contentPos(self: pointer, ): pointer {.importc: "QScrollPrepareEvent_contentPos".}
proc fcQScrollPrepareEvent_setViewportSize(self: pointer, size: pointer): void {.importc: "QScrollPrepareEvent_setViewportSize".}
proc fcQScrollPrepareEvent_setContentPosRange(self: pointer, rect: pointer): void {.importc: "QScrollPrepareEvent_setContentPosRange".}
proc fcQScrollPrepareEvent_setContentPos(self: pointer, pos: pointer): void {.importc: "QScrollPrepareEvent_setContentPos".}
proc fQScrollPrepareEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QScrollPrepareEvent_virtualbase_clone".}
proc fcQScrollPrepareEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QScrollPrepareEvent_override_virtual_clone".}
proc fQScrollPrepareEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QScrollPrepareEvent_virtualbase_setAccepted".}
proc fcQScrollPrepareEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QScrollPrepareEvent_override_virtual_setAccepted".}
proc fcQScrollPrepareEvent_delete(self: pointer) {.importc: "QScrollPrepareEvent_delete".}
proc fcQScrollEvent_new(contentPos: pointer, overshoot: pointer, scrollState: cint): ptr cQScrollEvent {.importc: "QScrollEvent_new".}
proc fcQScrollEvent_clone(self: pointer, ): pointer {.importc: "QScrollEvent_clone".}
proc fcQScrollEvent_contentPos(self: pointer, ): pointer {.importc: "QScrollEvent_contentPos".}
proc fcQScrollEvent_overshootDistance(self: pointer, ): pointer {.importc: "QScrollEvent_overshootDistance".}
proc fcQScrollEvent_scrollState(self: pointer, ): cint {.importc: "QScrollEvent_scrollState".}
proc fQScrollEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QScrollEvent_virtualbase_clone".}
proc fcQScrollEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QScrollEvent_override_virtual_clone".}
proc fQScrollEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QScrollEvent_virtualbase_setAccepted".}
proc fcQScrollEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QScrollEvent_override_virtual_setAccepted".}
proc fcQScrollEvent_delete(self: pointer) {.importc: "QScrollEvent_delete".}
proc fcQScreenOrientationChangeEvent_new(screen: pointer, orientation: cint): ptr cQScreenOrientationChangeEvent {.importc: "QScreenOrientationChangeEvent_new".}
proc fcQScreenOrientationChangeEvent_clone(self: pointer, ): pointer {.importc: "QScreenOrientationChangeEvent_clone".}
proc fcQScreenOrientationChangeEvent_screen(self: pointer, ): pointer {.importc: "QScreenOrientationChangeEvent_screen".}
proc fcQScreenOrientationChangeEvent_orientation(self: pointer, ): cint {.importc: "QScreenOrientationChangeEvent_orientation".}
proc fQScreenOrientationChangeEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QScreenOrientationChangeEvent_virtualbase_clone".}
proc fcQScreenOrientationChangeEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QScreenOrientationChangeEvent_override_virtual_clone".}
proc fQScreenOrientationChangeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QScreenOrientationChangeEvent_virtualbase_setAccepted".}
proc fcQScreenOrientationChangeEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QScreenOrientationChangeEvent_override_virtual_setAccepted".}
proc fcQScreenOrientationChangeEvent_delete(self: pointer) {.importc: "QScreenOrientationChangeEvent_delete".}
proc fcQApplicationStateChangeEvent_new(state: cint): ptr cQApplicationStateChangeEvent {.importc: "QApplicationStateChangeEvent_new".}
proc fcQApplicationStateChangeEvent_clone(self: pointer, ): pointer {.importc: "QApplicationStateChangeEvent_clone".}
proc fcQApplicationStateChangeEvent_applicationState(self: pointer, ): cint {.importc: "QApplicationStateChangeEvent_applicationState".}
proc fQApplicationStateChangeEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QApplicationStateChangeEvent_virtualbase_clone".}
proc fcQApplicationStateChangeEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QApplicationStateChangeEvent_override_virtual_clone".}
proc fQApplicationStateChangeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QApplicationStateChangeEvent_virtualbase_setAccepted".}
proc fcQApplicationStateChangeEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QApplicationStateChangeEvent_override_virtual_setAccepted".}
proc fcQApplicationStateChangeEvent_delete(self: pointer) {.importc: "QApplicationStateChangeEvent_delete".}
proc fcQInputMethodEventAttribute_new(typ: cint, s: cint, l: cint, val: pointer): ptr cQInputMethodEventAttribute {.importc: "QInputMethodEvent__Attribute_new".}
proc fcQInputMethodEventAttribute_new2(typ: cint, s: cint, l: cint): ptr cQInputMethodEventAttribute {.importc: "QInputMethodEvent__Attribute_new2".}
proc fcQInputMethodEventAttribute_new3(param1: pointer): ptr cQInputMethodEventAttribute {.importc: "QInputMethodEvent__Attribute_new3".}
proc fcQInputMethodEventAttribute_operatorAssign(self: pointer, param1: pointer): void {.importc: "QInputMethodEvent__Attribute_operatorAssign".}
proc fcQInputMethodEventAttribute_delete(self: pointer) {.importc: "QInputMethodEvent__Attribute_delete".}


func init*(T: type QInputEvent, h: ptr cQInputEvent): QInputEvent =
  T(h: h)
proc create*(T: type QInputEvent, typeVal: gen_qcoreevent.QEventType, m_dev: gen_qinputdevice.QInputDevice): QInputEvent =

  QInputEvent.init(fcQInputEvent_new(cint(typeVal), m_dev.h))
proc create*(T: type QInputEvent, typeVal: gen_qcoreevent.QEventType, m_dev: gen_qinputdevice.QInputDevice, modifiers: gen_qnamespace.KeyboardModifier): QInputEvent =

  QInputEvent.init(fcQInputEvent_new2(cint(typeVal), m_dev.h, cint(modifiers)))
proc clone*(self: QInputEvent, ): QInputEvent =

  QInputEvent(h: fcQInputEvent_clone(self.h))

proc device*(self: QInputEvent, ): gen_qinputdevice.QInputDevice =

  gen_qinputdevice.QInputDevice(h: fcQInputEvent_device(self.h))

proc deviceType*(self: QInputEvent, ): gen_qinputdevice.QInputDeviceDeviceType =

  gen_qinputdevice.QInputDeviceDeviceType(fcQInputEvent_deviceType(self.h))

proc modifiers*(self: QInputEvent, ): gen_qnamespace.KeyboardModifier =

  gen_qnamespace.KeyboardModifier(fcQInputEvent_modifiers(self.h))

proc setModifiers*(self: QInputEvent, modifiers: gen_qnamespace.KeyboardModifier): void =

  fcQInputEvent_setModifiers(self.h, cint(modifiers))

proc timestamp*(self: QInputEvent, ): culonglong =

  fcQInputEvent_timestamp(self.h)

proc setTimestamp*(self: QInputEvent, timestamp: culonglong): void =

  fcQInputEvent_setTimestamp(self.h, timestamp)

proc callVirtualBase_clone(self: QInputEvent, ): QInputEvent =


  QInputEvent(h: fQInputEvent_virtualbase_clone(self.h))

type QInputEventcloneBase* = proc(): QInputEvent
proc onclone*(self: QInputEvent, slot: proc(super: QInputEventcloneBase): QInputEvent) =
  # TODO check subclass
  type Cb = proc(super: QInputEventcloneBase): QInputEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputEvent_clone(self: ptr cQInputEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QInputEvent_clone ".} =
  type Cb = proc(super: QInputEventcloneBase): QInputEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QInputEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setTimestamp(self: QInputEvent, timestamp: culonglong): void =


  fQInputEvent_virtualbase_setTimestamp(self.h, timestamp)

type QInputEventsetTimestampBase* = proc(timestamp: culonglong): void
proc onsetTimestamp*(self: QInputEvent, slot: proc(super: QInputEventsetTimestampBase, timestamp: culonglong): void) =
  # TODO check subclass
  type Cb = proc(super: QInputEventsetTimestampBase, timestamp: culonglong): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputEvent_override_virtual_setTimestamp(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputEvent_setTimestamp(self: ptr cQInputEvent, slot: int, timestamp: culonglong): void {.exportc: "miqt_exec_callback_QInputEvent_setTimestamp ".} =
  type Cb = proc(super: QInputEventsetTimestampBase, timestamp: culonglong): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(timestamp: culonglong): auto =
    callVirtualBase_setTimestamp(QInputEvent(h: self), timestamp)
  let slotval1 = timestamp


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setAccepted(self: QInputEvent, accepted: bool): void =


  fQInputEvent_virtualbase_setAccepted(self.h, accepted)

type QInputEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QInputEvent, slot: proc(super: QInputEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QInputEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputEvent_setAccepted(self: ptr cQInputEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QInputEvent_setAccepted ".} =
  type Cb = proc(super: QInputEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QInputEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QInputEvent) =
  fcQInputEvent_delete(self.h)

func init*(T: type QPointerEvent, h: ptr cQPointerEvent): QPointerEvent =
  T(h: h)
proc create*(T: type QPointerEvent, typeVal: gen_qcoreevent.QEventType, dev: gen_qpointingdevice.QPointingDevice): QPointerEvent =

  QPointerEvent.init(fcQPointerEvent_new(cint(typeVal), dev.h))
proc create*(T: type QPointerEvent, typeVal: gen_qcoreevent.QEventType, dev: gen_qpointingdevice.QPointingDevice, modifiers: gen_qnamespace.KeyboardModifier): QPointerEvent =

  QPointerEvent.init(fcQPointerEvent_new2(cint(typeVal), dev.h, cint(modifiers)))
proc create*(T: type QPointerEvent, typeVal: gen_qcoreevent.QEventType, dev: gen_qpointingdevice.QPointingDevice, modifiers: gen_qnamespace.KeyboardModifier, points: seq[gen_qeventpoint.QEventPoint]): QPointerEvent =

  var points_CArray = newSeq[pointer](len(points))
  for i in 0..<len(points):
    points_CArray[i] = points[i].h

  QPointerEvent.init(fcQPointerEvent_new3(cint(typeVal), dev.h, cint(modifiers), struct_miqt_array(len: csize_t(len(points)), data: if len(points) == 0: nil else: addr(points_CArray[0]))))
proc clone*(self: QPointerEvent, ): QPointerEvent =

  QPointerEvent(h: fcQPointerEvent_clone(self.h))

proc pointingDevice*(self: QPointerEvent, ): gen_qpointingdevice.QPointingDevice =

  gen_qpointingdevice.QPointingDevice(h: fcQPointerEvent_pointingDevice(self.h))

proc pointerType*(self: QPointerEvent, ): gen_qpointingdevice.QPointingDevicePointerType =

  gen_qpointingdevice.QPointingDevicePointerType(fcQPointerEvent_pointerType(self.h))

proc setTimestamp*(self: QPointerEvent, timestamp: culonglong): void =

  fcQPointerEvent_setTimestamp(self.h, timestamp)

proc pointCount*(self: QPointerEvent, ): int64 =

  fcQPointerEvent_pointCount(self.h)

proc point*(self: QPointerEvent, i: int64): gen_qeventpoint.QEventPoint =

  gen_qeventpoint.QEventPoint(h: fcQPointerEvent_point(self.h, i))

proc points*(self: QPointerEvent, ): seq[gen_qeventpoint.QEventPoint] =

  var v_ma = fcQPointerEvent_points(self.h)
  var vx_ret = newSeq[gen_qeventpoint.QEventPoint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qeventpoint.QEventPoint(h: v_outCast[i])
  vx_ret

proc pointById*(self: QPointerEvent, id: cint): gen_qeventpoint.QEventPoint =

  gen_qeventpoint.QEventPoint(h: fcQPointerEvent_pointById(self.h, id))

proc allPointsGrabbed*(self: QPointerEvent, ): bool =

  fcQPointerEvent_allPointsGrabbed(self.h)

proc isBeginEvent*(self: QPointerEvent, ): bool =

  fcQPointerEvent_isBeginEvent(self.h)

proc isUpdateEvent*(self: QPointerEvent, ): bool =

  fcQPointerEvent_isUpdateEvent(self.h)

proc isEndEvent*(self: QPointerEvent, ): bool =

  fcQPointerEvent_isEndEvent(self.h)

proc allPointsAccepted*(self: QPointerEvent, ): bool =

  fcQPointerEvent_allPointsAccepted(self.h)

proc setAccepted*(self: QPointerEvent, accepted: bool): void =

  fcQPointerEvent_setAccepted(self.h, accepted)

proc exclusiveGrabber*(self: QPointerEvent, point: gen_qeventpoint.QEventPoint): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQPointerEvent_exclusiveGrabber(self.h, point.h))

proc setExclusiveGrabber*(self: QPointerEvent, point: gen_qeventpoint.QEventPoint, exclusiveGrabber: gen_qobject.QObject): void =

  fcQPointerEvent_setExclusiveGrabber(self.h, point.h, exclusiveGrabber.h)

proc clearPassiveGrabbers*(self: QPointerEvent, point: gen_qeventpoint.QEventPoint): void =

  fcQPointerEvent_clearPassiveGrabbers(self.h, point.h)

proc addPassiveGrabber*(self: QPointerEvent, point: gen_qeventpoint.QEventPoint, grabber: gen_qobject.QObject): bool =

  fcQPointerEvent_addPassiveGrabber(self.h, point.h, grabber.h)

proc removePassiveGrabber*(self: QPointerEvent, point: gen_qeventpoint.QEventPoint, grabber: gen_qobject.QObject): bool =

  fcQPointerEvent_removePassiveGrabber(self.h, point.h, grabber.h)

proc callVirtualBase_clone(self: QPointerEvent, ): QPointerEvent =


  QPointerEvent(h: fQPointerEvent_virtualbase_clone(self.h))

type QPointerEventcloneBase* = proc(): QPointerEvent
proc onclone*(self: QPointerEvent, slot: proc(super: QPointerEventcloneBase): QPointerEvent) =
  # TODO check subclass
  type Cb = proc(super: QPointerEventcloneBase): QPointerEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPointerEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointerEvent_clone(self: ptr cQPointerEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QPointerEvent_clone ".} =
  type Cb = proc(super: QPointerEventcloneBase): QPointerEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QPointerEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setTimestamp(self: QPointerEvent, timestamp: culonglong): void =


  fQPointerEvent_virtualbase_setTimestamp(self.h, timestamp)

type QPointerEventsetTimestampBase* = proc(timestamp: culonglong): void
proc onsetTimestamp*(self: QPointerEvent, slot: proc(super: QPointerEventsetTimestampBase, timestamp: culonglong): void) =
  # TODO check subclass
  type Cb = proc(super: QPointerEventsetTimestampBase, timestamp: culonglong): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPointerEvent_override_virtual_setTimestamp(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointerEvent_setTimestamp(self: ptr cQPointerEvent, slot: int, timestamp: culonglong): void {.exportc: "miqt_exec_callback_QPointerEvent_setTimestamp ".} =
  type Cb = proc(super: QPointerEventsetTimestampBase, timestamp: culonglong): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(timestamp: culonglong): auto =
    callVirtualBase_setTimestamp(QPointerEvent(h: self), timestamp)
  let slotval1 = timestamp


  nimfunc[](superCall, slotval1)
proc callVirtualBase_isBeginEvent(self: QPointerEvent, ): bool =


  fQPointerEvent_virtualbase_isBeginEvent(self.h)

type QPointerEventisBeginEventBase* = proc(): bool
proc onisBeginEvent*(self: QPointerEvent, slot: proc(super: QPointerEventisBeginEventBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QPointerEventisBeginEventBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPointerEvent_override_virtual_isBeginEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointerEvent_isBeginEvent(self: ptr cQPointerEvent, slot: int): bool {.exportc: "miqt_exec_callback_QPointerEvent_isBeginEvent ".} =
  type Cb = proc(super: QPointerEventisBeginEventBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isBeginEvent(QPointerEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_isUpdateEvent(self: QPointerEvent, ): bool =


  fQPointerEvent_virtualbase_isUpdateEvent(self.h)

type QPointerEventisUpdateEventBase* = proc(): bool
proc onisUpdateEvent*(self: QPointerEvent, slot: proc(super: QPointerEventisUpdateEventBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QPointerEventisUpdateEventBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPointerEvent_override_virtual_isUpdateEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointerEvent_isUpdateEvent(self: ptr cQPointerEvent, slot: int): bool {.exportc: "miqt_exec_callback_QPointerEvent_isUpdateEvent ".} =
  type Cb = proc(super: QPointerEventisUpdateEventBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isUpdateEvent(QPointerEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_isEndEvent(self: QPointerEvent, ): bool =


  fQPointerEvent_virtualbase_isEndEvent(self.h)

type QPointerEventisEndEventBase* = proc(): bool
proc onisEndEvent*(self: QPointerEvent, slot: proc(super: QPointerEventisEndEventBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QPointerEventisEndEventBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPointerEvent_override_virtual_isEndEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointerEvent_isEndEvent(self: ptr cQPointerEvent, slot: int): bool {.exportc: "miqt_exec_callback_QPointerEvent_isEndEvent ".} =
  type Cb = proc(super: QPointerEventisEndEventBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isEndEvent(QPointerEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setAccepted(self: QPointerEvent, accepted: bool): void =


  fQPointerEvent_virtualbase_setAccepted(self.h, accepted)

type QPointerEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QPointerEvent, slot: proc(super: QPointerEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QPointerEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPointerEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointerEvent_setAccepted(self: ptr cQPointerEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QPointerEvent_setAccepted ".} =
  type Cb = proc(super: QPointerEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QPointerEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QPointerEvent) =
  fcQPointerEvent_delete(self.h)

func init*(T: type QSinglePointEvent, h: ptr cQSinglePointEvent): QSinglePointEvent =
  T(h: h)
proc clone*(self: QSinglePointEvent, ): QSinglePointEvent =

  QSinglePointEvent(h: fcQSinglePointEvent_clone(self.h))

proc button*(self: QSinglePointEvent, ): gen_qnamespace.MouseButton =

  gen_qnamespace.MouseButton(fcQSinglePointEvent_button(self.h))

proc buttons*(self: QSinglePointEvent, ): gen_qnamespace.MouseButton =

  gen_qnamespace.MouseButton(fcQSinglePointEvent_buttons(self.h))

proc position*(self: QSinglePointEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQSinglePointEvent_position(self.h))

proc scenePosition*(self: QSinglePointEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQSinglePointEvent_scenePosition(self.h))

proc globalPosition*(self: QSinglePointEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQSinglePointEvent_globalPosition(self.h))

proc isBeginEvent*(self: QSinglePointEvent, ): bool =

  fcQSinglePointEvent_isBeginEvent(self.h)

proc isUpdateEvent*(self: QSinglePointEvent, ): bool =

  fcQSinglePointEvent_isUpdateEvent(self.h)

proc isEndEvent*(self: QSinglePointEvent, ): bool =

  fcQSinglePointEvent_isEndEvent(self.h)

proc exclusivePointGrabber*(self: QSinglePointEvent, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQSinglePointEvent_exclusivePointGrabber(self.h))

proc setExclusivePointGrabber*(self: QSinglePointEvent, exclusiveGrabber: gen_qobject.QObject): void =

  fcQSinglePointEvent_setExclusivePointGrabber(self.h, exclusiveGrabber.h)

proc delete*(self: QSinglePointEvent) =
  fcQSinglePointEvent_delete(self.h)

func init*(T: type QEnterEvent, h: ptr cQEnterEvent): QEnterEvent =
  T(h: h)
proc create*(T: type QEnterEvent, localPos: gen_qpoint.QPointF, scenePos: gen_qpoint.QPointF, globalPos: gen_qpoint.QPointF): QEnterEvent =

  QEnterEvent.init(fcQEnterEvent_new(localPos.h, scenePos.h, globalPos.h))
proc create*(T: type QEnterEvent, localPos: gen_qpoint.QPointF, scenePos: gen_qpoint.QPointF, globalPos: gen_qpoint.QPointF, device: gen_qpointingdevice.QPointingDevice): QEnterEvent =

  QEnterEvent.init(fcQEnterEvent_new2(localPos.h, scenePos.h, globalPos.h, device.h))
proc clone*(self: QEnterEvent, ): QEnterEvent =

  QEnterEvent(h: fcQEnterEvent_clone(self.h))

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

proc callVirtualBase_clone(self: QEnterEvent, ): QEnterEvent =


  QEnterEvent(h: fQEnterEvent_virtualbase_clone(self.h))

type QEnterEventcloneBase* = proc(): QEnterEvent
proc onclone*(self: QEnterEvent, slot: proc(super: QEnterEventcloneBase): QEnterEvent) =
  # TODO check subclass
  type Cb = proc(super: QEnterEventcloneBase): QEnterEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQEnterEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEnterEvent_clone(self: ptr cQEnterEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QEnterEvent_clone ".} =
  type Cb = proc(super: QEnterEventcloneBase): QEnterEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QEnterEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_isBeginEvent(self: QEnterEvent, ): bool =


  fQEnterEvent_virtualbase_isBeginEvent(self.h)

type QEnterEventisBeginEventBase* = proc(): bool
proc onisBeginEvent*(self: QEnterEvent, slot: proc(super: QEnterEventisBeginEventBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QEnterEventisBeginEventBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQEnterEvent_override_virtual_isBeginEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEnterEvent_isBeginEvent(self: ptr cQEnterEvent, slot: int): bool {.exportc: "miqt_exec_callback_QEnterEvent_isBeginEvent ".} =
  type Cb = proc(super: QEnterEventisBeginEventBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isBeginEvent(QEnterEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_isUpdateEvent(self: QEnterEvent, ): bool =


  fQEnterEvent_virtualbase_isUpdateEvent(self.h)

type QEnterEventisUpdateEventBase* = proc(): bool
proc onisUpdateEvent*(self: QEnterEvent, slot: proc(super: QEnterEventisUpdateEventBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QEnterEventisUpdateEventBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQEnterEvent_override_virtual_isUpdateEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEnterEvent_isUpdateEvent(self: ptr cQEnterEvent, slot: int): bool {.exportc: "miqt_exec_callback_QEnterEvent_isUpdateEvent ".} =
  type Cb = proc(super: QEnterEventisUpdateEventBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isUpdateEvent(QEnterEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_isEndEvent(self: QEnterEvent, ): bool =


  fQEnterEvent_virtualbase_isEndEvent(self.h)

type QEnterEventisEndEventBase* = proc(): bool
proc onisEndEvent*(self: QEnterEvent, slot: proc(super: QEnterEventisEndEventBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QEnterEventisEndEventBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQEnterEvent_override_virtual_isEndEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEnterEvent_isEndEvent(self: ptr cQEnterEvent, slot: int): bool {.exportc: "miqt_exec_callback_QEnterEvent_isEndEvent ".} =
  type Cb = proc(super: QEnterEventisEndEventBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isEndEvent(QEnterEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setTimestamp(self: QEnterEvent, timestamp: culonglong): void =


  fQEnterEvent_virtualbase_setTimestamp(self.h, timestamp)

type QEnterEventsetTimestampBase* = proc(timestamp: culonglong): void
proc onsetTimestamp*(self: QEnterEvent, slot: proc(super: QEnterEventsetTimestampBase, timestamp: culonglong): void) =
  # TODO check subclass
  type Cb = proc(super: QEnterEventsetTimestampBase, timestamp: culonglong): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQEnterEvent_override_virtual_setTimestamp(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEnterEvent_setTimestamp(self: ptr cQEnterEvent, slot: int, timestamp: culonglong): void {.exportc: "miqt_exec_callback_QEnterEvent_setTimestamp ".} =
  type Cb = proc(super: QEnterEventsetTimestampBase, timestamp: culonglong): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(timestamp: culonglong): auto =
    callVirtualBase_setTimestamp(QEnterEvent(h: self), timestamp)
  let slotval1 = timestamp


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setAccepted(self: QEnterEvent, accepted: bool): void =


  fQEnterEvent_virtualbase_setAccepted(self.h, accepted)

type QEnterEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QEnterEvent, slot: proc(super: QEnterEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QEnterEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQEnterEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEnterEvent_setAccepted(self: ptr cQEnterEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QEnterEvent_setAccepted ".} =
  type Cb = proc(super: QEnterEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QEnterEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QEnterEvent) =
  fcQEnterEvent_delete(self.h)

func init*(T: type QMouseEvent, h: ptr cQMouseEvent): QMouseEvent =
  T(h: h)
proc create*(T: type QMouseEvent, typeVal: gen_qcoreevent.QEventType, localPos: gen_qpoint.QPointF, button: gen_qnamespace.MouseButton, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier): QMouseEvent =

  QMouseEvent.init(fcQMouseEvent_new(cint(typeVal), localPos.h, cint(button), cint(buttons), cint(modifiers)))
proc create*(T: type QMouseEvent, typeVal: gen_qcoreevent.QEventType, localPos: gen_qpoint.QPointF, globalPos: gen_qpoint.QPointF, button: gen_qnamespace.MouseButton, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier): QMouseEvent =

  QMouseEvent.init(fcQMouseEvent_new2(cint(typeVal), localPos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers)))
proc create*(T: type QMouseEvent, typeVal: gen_qcoreevent.QEventType, localPos: gen_qpoint.QPointF, scenePos: gen_qpoint.QPointF, globalPos: gen_qpoint.QPointF, button: gen_qnamespace.MouseButton, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier): QMouseEvent =

  QMouseEvent.init(fcQMouseEvent_new3(cint(typeVal), localPos.h, scenePos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers)))
proc create*(T: type QMouseEvent, typeVal: gen_qcoreevent.QEventType, localPos: gen_qpoint.QPointF, scenePos: gen_qpoint.QPointF, globalPos: gen_qpoint.QPointF, button: gen_qnamespace.MouseButton, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier, source: gen_qnamespace.MouseEventSource): QMouseEvent =

  QMouseEvent.init(fcQMouseEvent_new4(cint(typeVal), localPos.h, scenePos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers), cint(source)))
proc create*(T: type QMouseEvent, typeVal: gen_qcoreevent.QEventType, localPos: gen_qpoint.QPointF, button: gen_qnamespace.MouseButton, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier, device: gen_qpointingdevice.QPointingDevice): QMouseEvent =

  QMouseEvent.init(fcQMouseEvent_new5(cint(typeVal), localPos.h, cint(button), cint(buttons), cint(modifiers), device.h))
proc create*(T: type QMouseEvent, typeVal: gen_qcoreevent.QEventType, localPos: gen_qpoint.QPointF, globalPos: gen_qpoint.QPointF, button: gen_qnamespace.MouseButton, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier, device: gen_qpointingdevice.QPointingDevice): QMouseEvent =

  QMouseEvent.init(fcQMouseEvent_new6(cint(typeVal), localPos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers), device.h))
proc create*(T: type QMouseEvent, typeVal: gen_qcoreevent.QEventType, localPos: gen_qpoint.QPointF, scenePos: gen_qpoint.QPointF, globalPos: gen_qpoint.QPointF, button: gen_qnamespace.MouseButton, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier, device: gen_qpointingdevice.QPointingDevice): QMouseEvent =

  QMouseEvent.init(fcQMouseEvent_new7(cint(typeVal), localPos.h, scenePos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers), device.h))
proc create*(T: type QMouseEvent, typeVal: gen_qcoreevent.QEventType, localPos: gen_qpoint.QPointF, scenePos: gen_qpoint.QPointF, globalPos: gen_qpoint.QPointF, button: gen_qnamespace.MouseButton, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier, source: gen_qnamespace.MouseEventSource, device: gen_qpointingdevice.QPointingDevice): QMouseEvent =

  QMouseEvent.init(fcQMouseEvent_new8(cint(typeVal), localPos.h, scenePos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers), cint(source), device.h))
proc clone*(self: QMouseEvent, ): QMouseEvent =

  QMouseEvent(h: fcQMouseEvent_clone(self.h))

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

proc source*(self: QMouseEvent, ): gen_qnamespace.MouseEventSource =

  gen_qnamespace.MouseEventSource(fcQMouseEvent_source(self.h))

proc flags*(self: QMouseEvent, ): gen_qnamespace.MouseEventFlag =

  gen_qnamespace.MouseEventFlag(fcQMouseEvent_flags(self.h))

proc callVirtualBase_clone(self: QMouseEvent, ): QMouseEvent =


  QMouseEvent(h: fQMouseEvent_virtualbase_clone(self.h))

type QMouseEventcloneBase* = proc(): QMouseEvent
proc onclone*(self: QMouseEvent, slot: proc(super: QMouseEventcloneBase): QMouseEvent) =
  # TODO check subclass
  type Cb = proc(super: QMouseEventcloneBase): QMouseEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEvent_clone(self: ptr cQMouseEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QMouseEvent_clone ".} =
  type Cb = proc(super: QMouseEventcloneBase): QMouseEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QMouseEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_isBeginEvent(self: QMouseEvent, ): bool =


  fQMouseEvent_virtualbase_isBeginEvent(self.h)

type QMouseEventisBeginEventBase* = proc(): bool
proc onisBeginEvent*(self: QMouseEvent, slot: proc(super: QMouseEventisBeginEventBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QMouseEventisBeginEventBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEvent_override_virtual_isBeginEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEvent_isBeginEvent(self: ptr cQMouseEvent, slot: int): bool {.exportc: "miqt_exec_callback_QMouseEvent_isBeginEvent ".} =
  type Cb = proc(super: QMouseEventisBeginEventBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isBeginEvent(QMouseEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_isUpdateEvent(self: QMouseEvent, ): bool =


  fQMouseEvent_virtualbase_isUpdateEvent(self.h)

type QMouseEventisUpdateEventBase* = proc(): bool
proc onisUpdateEvent*(self: QMouseEvent, slot: proc(super: QMouseEventisUpdateEventBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QMouseEventisUpdateEventBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEvent_override_virtual_isUpdateEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEvent_isUpdateEvent(self: ptr cQMouseEvent, slot: int): bool {.exportc: "miqt_exec_callback_QMouseEvent_isUpdateEvent ".} =
  type Cb = proc(super: QMouseEventisUpdateEventBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isUpdateEvent(QMouseEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_isEndEvent(self: QMouseEvent, ): bool =


  fQMouseEvent_virtualbase_isEndEvent(self.h)

type QMouseEventisEndEventBase* = proc(): bool
proc onisEndEvent*(self: QMouseEvent, slot: proc(super: QMouseEventisEndEventBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QMouseEventisEndEventBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEvent_override_virtual_isEndEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEvent_isEndEvent(self: ptr cQMouseEvent, slot: int): bool {.exportc: "miqt_exec_callback_QMouseEvent_isEndEvent ".} =
  type Cb = proc(super: QMouseEventisEndEventBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isEndEvent(QMouseEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setTimestamp(self: QMouseEvent, timestamp: culonglong): void =


  fQMouseEvent_virtualbase_setTimestamp(self.h, timestamp)

type QMouseEventsetTimestampBase* = proc(timestamp: culonglong): void
proc onsetTimestamp*(self: QMouseEvent, slot: proc(super: QMouseEventsetTimestampBase, timestamp: culonglong): void) =
  # TODO check subclass
  type Cb = proc(super: QMouseEventsetTimestampBase, timestamp: culonglong): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEvent_override_virtual_setTimestamp(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEvent_setTimestamp(self: ptr cQMouseEvent, slot: int, timestamp: culonglong): void {.exportc: "miqt_exec_callback_QMouseEvent_setTimestamp ".} =
  type Cb = proc(super: QMouseEventsetTimestampBase, timestamp: culonglong): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(timestamp: culonglong): auto =
    callVirtualBase_setTimestamp(QMouseEvent(h: self), timestamp)
  let slotval1 = timestamp


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setAccepted(self: QMouseEvent, accepted: bool): void =


  fQMouseEvent_virtualbase_setAccepted(self.h, accepted)

type QMouseEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QMouseEvent, slot: proc(super: QMouseEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QMouseEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEvent_setAccepted(self: ptr cQMouseEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QMouseEvent_setAccepted ".} =
  type Cb = proc(super: QMouseEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QMouseEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QMouseEvent) =
  fcQMouseEvent_delete(self.h)

func init*(T: type QHoverEvent, h: ptr cQHoverEvent): QHoverEvent =
  T(h: h)
proc create*(T: type QHoverEvent, typeVal: gen_qcoreevent.QEventType, scenePos: gen_qpoint.QPointF, globalPos: gen_qpoint.QPointF, oldPos: gen_qpoint.QPointF): QHoverEvent =

  QHoverEvent.init(fcQHoverEvent_new(cint(typeVal), scenePos.h, globalPos.h, oldPos.h))
proc create*(T: type QHoverEvent, typeVal: gen_qcoreevent.QEventType, pos: gen_qpoint.QPointF, oldPos: gen_qpoint.QPointF): QHoverEvent =

  QHoverEvent.init(fcQHoverEvent_new2(cint(typeVal), pos.h, oldPos.h))
proc create*(T: type QHoverEvent, typeVal: gen_qcoreevent.QEventType, scenePos: gen_qpoint.QPointF, globalPos: gen_qpoint.QPointF, oldPos: gen_qpoint.QPointF, modifiers: gen_qnamespace.KeyboardModifier): QHoverEvent =

  QHoverEvent.init(fcQHoverEvent_new3(cint(typeVal), scenePos.h, globalPos.h, oldPos.h, cint(modifiers)))
proc create*(T: type QHoverEvent, typeVal: gen_qcoreevent.QEventType, scenePos: gen_qpoint.QPointF, globalPos: gen_qpoint.QPointF, oldPos: gen_qpoint.QPointF, modifiers: gen_qnamespace.KeyboardModifier, device: gen_qpointingdevice.QPointingDevice): QHoverEvent =

  QHoverEvent.init(fcQHoverEvent_new4(cint(typeVal), scenePos.h, globalPos.h, oldPos.h, cint(modifiers), device.h))
proc create*(T: type QHoverEvent, typeVal: gen_qcoreevent.QEventType, pos: gen_qpoint.QPointF, oldPos: gen_qpoint.QPointF, modifiers: gen_qnamespace.KeyboardModifier): QHoverEvent =

  QHoverEvent.init(fcQHoverEvent_new5(cint(typeVal), pos.h, oldPos.h, cint(modifiers)))
proc create*(T: type QHoverEvent, typeVal: gen_qcoreevent.QEventType, pos: gen_qpoint.QPointF, oldPos: gen_qpoint.QPointF, modifiers: gen_qnamespace.KeyboardModifier, device: gen_qpointingdevice.QPointingDevice): QHoverEvent =

  QHoverEvent.init(fcQHoverEvent_new6(cint(typeVal), pos.h, oldPos.h, cint(modifiers), device.h))
proc clone*(self: QHoverEvent, ): QHoverEvent =

  QHoverEvent(h: fcQHoverEvent_clone(self.h))

proc pos*(self: QHoverEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQHoverEvent_pos(self.h))

proc posF*(self: QHoverEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQHoverEvent_posF(self.h))

proc isUpdateEvent*(self: QHoverEvent, ): bool =

  fcQHoverEvent_isUpdateEvent(self.h)

proc oldPos*(self: QHoverEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQHoverEvent_oldPos(self.h))

proc oldPosF*(self: QHoverEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQHoverEvent_oldPosF(self.h))

proc callVirtualBase_clone(self: QHoverEvent, ): QHoverEvent =


  QHoverEvent(h: fQHoverEvent_virtualbase_clone(self.h))

type QHoverEventcloneBase* = proc(): QHoverEvent
proc onclone*(self: QHoverEvent, slot: proc(super: QHoverEventcloneBase): QHoverEvent) =
  # TODO check subclass
  type Cb = proc(super: QHoverEventcloneBase): QHoverEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHoverEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHoverEvent_clone(self: ptr cQHoverEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QHoverEvent_clone ".} =
  type Cb = proc(super: QHoverEventcloneBase): QHoverEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QHoverEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_isUpdateEvent(self: QHoverEvent, ): bool =


  fQHoverEvent_virtualbase_isUpdateEvent(self.h)

type QHoverEventisUpdateEventBase* = proc(): bool
proc onisUpdateEvent*(self: QHoverEvent, slot: proc(super: QHoverEventisUpdateEventBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QHoverEventisUpdateEventBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHoverEvent_override_virtual_isUpdateEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHoverEvent_isUpdateEvent(self: ptr cQHoverEvent, slot: int): bool {.exportc: "miqt_exec_callback_QHoverEvent_isUpdateEvent ".} =
  type Cb = proc(super: QHoverEventisUpdateEventBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isUpdateEvent(QHoverEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_isBeginEvent(self: QHoverEvent, ): bool =


  fQHoverEvent_virtualbase_isBeginEvent(self.h)

type QHoverEventisBeginEventBase* = proc(): bool
proc onisBeginEvent*(self: QHoverEvent, slot: proc(super: QHoverEventisBeginEventBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QHoverEventisBeginEventBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHoverEvent_override_virtual_isBeginEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHoverEvent_isBeginEvent(self: ptr cQHoverEvent, slot: int): bool {.exportc: "miqt_exec_callback_QHoverEvent_isBeginEvent ".} =
  type Cb = proc(super: QHoverEventisBeginEventBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isBeginEvent(QHoverEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_isEndEvent(self: QHoverEvent, ): bool =


  fQHoverEvent_virtualbase_isEndEvent(self.h)

type QHoverEventisEndEventBase* = proc(): bool
proc onisEndEvent*(self: QHoverEvent, slot: proc(super: QHoverEventisEndEventBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QHoverEventisEndEventBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHoverEvent_override_virtual_isEndEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHoverEvent_isEndEvent(self: ptr cQHoverEvent, slot: int): bool {.exportc: "miqt_exec_callback_QHoverEvent_isEndEvent ".} =
  type Cb = proc(super: QHoverEventisEndEventBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isEndEvent(QHoverEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setTimestamp(self: QHoverEvent, timestamp: culonglong): void =


  fQHoverEvent_virtualbase_setTimestamp(self.h, timestamp)

type QHoverEventsetTimestampBase* = proc(timestamp: culonglong): void
proc onsetTimestamp*(self: QHoverEvent, slot: proc(super: QHoverEventsetTimestampBase, timestamp: culonglong): void) =
  # TODO check subclass
  type Cb = proc(super: QHoverEventsetTimestampBase, timestamp: culonglong): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHoverEvent_override_virtual_setTimestamp(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHoverEvent_setTimestamp(self: ptr cQHoverEvent, slot: int, timestamp: culonglong): void {.exportc: "miqt_exec_callback_QHoverEvent_setTimestamp ".} =
  type Cb = proc(super: QHoverEventsetTimestampBase, timestamp: culonglong): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(timestamp: culonglong): auto =
    callVirtualBase_setTimestamp(QHoverEvent(h: self), timestamp)
  let slotval1 = timestamp


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setAccepted(self: QHoverEvent, accepted: bool): void =


  fQHoverEvent_virtualbase_setAccepted(self.h, accepted)

type QHoverEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QHoverEvent, slot: proc(super: QHoverEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QHoverEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHoverEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHoverEvent_setAccepted(self: ptr cQHoverEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QHoverEvent_setAccepted ".} =
  type Cb = proc(super: QHoverEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QHoverEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QHoverEvent) =
  fcQHoverEvent_delete(self.h)

func init*(T: type QWheelEvent, h: ptr cQWheelEvent): QWheelEvent =
  T(h: h)
proc create*(T: type QWheelEvent, pos: gen_qpoint.QPointF, globalPos: gen_qpoint.QPointF, pixelDelta: gen_qpoint.QPoint, angleDelta: gen_qpoint.QPoint, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier, phase: gen_qnamespace.ScrollPhase, inverted: bool): QWheelEvent =

  QWheelEvent.init(fcQWheelEvent_new(pos.h, globalPos.h, pixelDelta.h, angleDelta.h, cint(buttons), cint(modifiers), cint(phase), inverted))
proc create*(T: type QWheelEvent, pos: gen_qpoint.QPointF, globalPos: gen_qpoint.QPointF, pixelDelta: gen_qpoint.QPoint, angleDelta: gen_qpoint.QPoint, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier, phase: gen_qnamespace.ScrollPhase, inverted: bool, source: gen_qnamespace.MouseEventSource): QWheelEvent =

  QWheelEvent.init(fcQWheelEvent_new2(pos.h, globalPos.h, pixelDelta.h, angleDelta.h, cint(buttons), cint(modifiers), cint(phase), inverted, cint(source)))
proc create*(T: type QWheelEvent, pos: gen_qpoint.QPointF, globalPos: gen_qpoint.QPointF, pixelDelta: gen_qpoint.QPoint, angleDelta: gen_qpoint.QPoint, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier, phase: gen_qnamespace.ScrollPhase, inverted: bool, source: gen_qnamespace.MouseEventSource, device: gen_qpointingdevice.QPointingDevice): QWheelEvent =

  QWheelEvent.init(fcQWheelEvent_new3(pos.h, globalPos.h, pixelDelta.h, angleDelta.h, cint(buttons), cint(modifiers), cint(phase), inverted, cint(source), device.h))
proc clone*(self: QWheelEvent, ): QWheelEvent =

  QWheelEvent(h: fcQWheelEvent_clone(self.h))

proc pixelDelta*(self: QWheelEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQWheelEvent_pixelDelta(self.h))

proc angleDelta*(self: QWheelEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQWheelEvent_angleDelta(self.h))

proc phase*(self: QWheelEvent, ): gen_qnamespace.ScrollPhase =

  gen_qnamespace.ScrollPhase(fcQWheelEvent_phase(self.h))

proc inverted*(self: QWheelEvent, ): bool =

  fcQWheelEvent_inverted(self.h)

proc isInverted*(self: QWheelEvent, ): bool =

  fcQWheelEvent_isInverted(self.h)

proc hasPixelDelta*(self: QWheelEvent, ): bool =

  fcQWheelEvent_hasPixelDelta(self.h)

proc isBeginEvent*(self: QWheelEvent, ): bool =

  fcQWheelEvent_isBeginEvent(self.h)

proc isUpdateEvent*(self: QWheelEvent, ): bool =

  fcQWheelEvent_isUpdateEvent(self.h)

proc isEndEvent*(self: QWheelEvent, ): bool =

  fcQWheelEvent_isEndEvent(self.h)

proc source*(self: QWheelEvent, ): gen_qnamespace.MouseEventSource =

  gen_qnamespace.MouseEventSource(fcQWheelEvent_source(self.h))

proc callVirtualBase_clone(self: QWheelEvent, ): QWheelEvent =


  QWheelEvent(h: fQWheelEvent_virtualbase_clone(self.h))

type QWheelEventcloneBase* = proc(): QWheelEvent
proc onclone*(self: QWheelEvent, slot: proc(super: QWheelEventcloneBase): QWheelEvent) =
  # TODO check subclass
  type Cb = proc(super: QWheelEventcloneBase): QWheelEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWheelEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWheelEvent_clone(self: ptr cQWheelEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QWheelEvent_clone ".} =
  type Cb = proc(super: QWheelEventcloneBase): QWheelEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QWheelEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_isBeginEvent(self: QWheelEvent, ): bool =


  fQWheelEvent_virtualbase_isBeginEvent(self.h)

type QWheelEventisBeginEventBase* = proc(): bool
proc onisBeginEvent*(self: QWheelEvent, slot: proc(super: QWheelEventisBeginEventBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QWheelEventisBeginEventBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWheelEvent_override_virtual_isBeginEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWheelEvent_isBeginEvent(self: ptr cQWheelEvent, slot: int): bool {.exportc: "miqt_exec_callback_QWheelEvent_isBeginEvent ".} =
  type Cb = proc(super: QWheelEventisBeginEventBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isBeginEvent(QWheelEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_isUpdateEvent(self: QWheelEvent, ): bool =


  fQWheelEvent_virtualbase_isUpdateEvent(self.h)

type QWheelEventisUpdateEventBase* = proc(): bool
proc onisUpdateEvent*(self: QWheelEvent, slot: proc(super: QWheelEventisUpdateEventBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QWheelEventisUpdateEventBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWheelEvent_override_virtual_isUpdateEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWheelEvent_isUpdateEvent(self: ptr cQWheelEvent, slot: int): bool {.exportc: "miqt_exec_callback_QWheelEvent_isUpdateEvent ".} =
  type Cb = proc(super: QWheelEventisUpdateEventBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isUpdateEvent(QWheelEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_isEndEvent(self: QWheelEvent, ): bool =


  fQWheelEvent_virtualbase_isEndEvent(self.h)

type QWheelEventisEndEventBase* = proc(): bool
proc onisEndEvent*(self: QWheelEvent, slot: proc(super: QWheelEventisEndEventBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QWheelEventisEndEventBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWheelEvent_override_virtual_isEndEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWheelEvent_isEndEvent(self: ptr cQWheelEvent, slot: int): bool {.exportc: "miqt_exec_callback_QWheelEvent_isEndEvent ".} =
  type Cb = proc(super: QWheelEventisEndEventBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isEndEvent(QWheelEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setTimestamp(self: QWheelEvent, timestamp: culonglong): void =


  fQWheelEvent_virtualbase_setTimestamp(self.h, timestamp)

type QWheelEventsetTimestampBase* = proc(timestamp: culonglong): void
proc onsetTimestamp*(self: QWheelEvent, slot: proc(super: QWheelEventsetTimestampBase, timestamp: culonglong): void) =
  # TODO check subclass
  type Cb = proc(super: QWheelEventsetTimestampBase, timestamp: culonglong): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWheelEvent_override_virtual_setTimestamp(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWheelEvent_setTimestamp(self: ptr cQWheelEvent, slot: int, timestamp: culonglong): void {.exportc: "miqt_exec_callback_QWheelEvent_setTimestamp ".} =
  type Cb = proc(super: QWheelEventsetTimestampBase, timestamp: culonglong): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(timestamp: culonglong): auto =
    callVirtualBase_setTimestamp(QWheelEvent(h: self), timestamp)
  let slotval1 = timestamp


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setAccepted(self: QWheelEvent, accepted: bool): void =


  fQWheelEvent_virtualbase_setAccepted(self.h, accepted)

type QWheelEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QWheelEvent, slot: proc(super: QWheelEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QWheelEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWheelEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWheelEvent_setAccepted(self: ptr cQWheelEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QWheelEvent_setAccepted ".} =
  type Cb = proc(super: QWheelEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QWheelEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QWheelEvent) =
  fcQWheelEvent_delete(self.h)

func init*(T: type QTabletEvent, h: ptr cQTabletEvent): QTabletEvent =
  T(h: h)
proc create*(T: type QTabletEvent, t: gen_qcoreevent.QEventType, device: gen_qpointingdevice.QPointingDevice, pos: gen_qpoint.QPointF, globalPos: gen_qpoint.QPointF, pressure: float64, xTilt: float32, yTilt: float32, tangentialPressure: float32, rotation: float64, z: float32, keyState: gen_qnamespace.KeyboardModifier, button: gen_qnamespace.MouseButton, buttons: gen_qnamespace.MouseButton): QTabletEvent =

  QTabletEvent.init(fcQTabletEvent_new(cint(t), device.h, pos.h, globalPos.h, pressure, xTilt, yTilt, tangentialPressure, rotation, z, cint(keyState), cint(button), cint(buttons)))
proc clone*(self: QTabletEvent, ): QTabletEvent =

  QTabletEvent(h: fcQTabletEvent_clone(self.h))

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

proc uniqueId*(self: QTabletEvent, ): clonglong =

  fcQTabletEvent_uniqueId(self.h)

proc pressure*(self: QTabletEvent, ): float64 =

  fcQTabletEvent_pressure(self.h)

proc rotation*(self: QTabletEvent, ): float64 =

  fcQTabletEvent_rotation(self.h)

proc z*(self: QTabletEvent, ): float64 =

  fcQTabletEvent_z(self.h)

proc tangentialPressure*(self: QTabletEvent, ): float64 =

  fcQTabletEvent_tangentialPressure(self.h)

proc xTilt*(self: QTabletEvent, ): float64 =

  fcQTabletEvent_xTilt(self.h)

proc yTilt*(self: QTabletEvent, ): float64 =

  fcQTabletEvent_yTilt(self.h)

proc callVirtualBase_clone(self: QTabletEvent, ): QTabletEvent =


  QTabletEvent(h: fQTabletEvent_virtualbase_clone(self.h))

type QTabletEventcloneBase* = proc(): QTabletEvent
proc onclone*(self: QTabletEvent, slot: proc(super: QTabletEventcloneBase): QTabletEvent) =
  # TODO check subclass
  type Cb = proc(super: QTabletEventcloneBase): QTabletEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabletEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabletEvent_clone(self: ptr cQTabletEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QTabletEvent_clone ".} =
  type Cb = proc(super: QTabletEventcloneBase): QTabletEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QTabletEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_isBeginEvent(self: QTabletEvent, ): bool =


  fQTabletEvent_virtualbase_isBeginEvent(self.h)

type QTabletEventisBeginEventBase* = proc(): bool
proc onisBeginEvent*(self: QTabletEvent, slot: proc(super: QTabletEventisBeginEventBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QTabletEventisBeginEventBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabletEvent_override_virtual_isBeginEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabletEvent_isBeginEvent(self: ptr cQTabletEvent, slot: int): bool {.exportc: "miqt_exec_callback_QTabletEvent_isBeginEvent ".} =
  type Cb = proc(super: QTabletEventisBeginEventBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isBeginEvent(QTabletEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_isUpdateEvent(self: QTabletEvent, ): bool =


  fQTabletEvent_virtualbase_isUpdateEvent(self.h)

type QTabletEventisUpdateEventBase* = proc(): bool
proc onisUpdateEvent*(self: QTabletEvent, slot: proc(super: QTabletEventisUpdateEventBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QTabletEventisUpdateEventBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabletEvent_override_virtual_isUpdateEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabletEvent_isUpdateEvent(self: ptr cQTabletEvent, slot: int): bool {.exportc: "miqt_exec_callback_QTabletEvent_isUpdateEvent ".} =
  type Cb = proc(super: QTabletEventisUpdateEventBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isUpdateEvent(QTabletEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_isEndEvent(self: QTabletEvent, ): bool =


  fQTabletEvent_virtualbase_isEndEvent(self.h)

type QTabletEventisEndEventBase* = proc(): bool
proc onisEndEvent*(self: QTabletEvent, slot: proc(super: QTabletEventisEndEventBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QTabletEventisEndEventBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabletEvent_override_virtual_isEndEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabletEvent_isEndEvent(self: ptr cQTabletEvent, slot: int): bool {.exportc: "miqt_exec_callback_QTabletEvent_isEndEvent ".} =
  type Cb = proc(super: QTabletEventisEndEventBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isEndEvent(QTabletEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setTimestamp(self: QTabletEvent, timestamp: culonglong): void =


  fQTabletEvent_virtualbase_setTimestamp(self.h, timestamp)

type QTabletEventsetTimestampBase* = proc(timestamp: culonglong): void
proc onsetTimestamp*(self: QTabletEvent, slot: proc(super: QTabletEventsetTimestampBase, timestamp: culonglong): void) =
  # TODO check subclass
  type Cb = proc(super: QTabletEventsetTimestampBase, timestamp: culonglong): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabletEvent_override_virtual_setTimestamp(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabletEvent_setTimestamp(self: ptr cQTabletEvent, slot: int, timestamp: culonglong): void {.exportc: "miqt_exec_callback_QTabletEvent_setTimestamp ".} =
  type Cb = proc(super: QTabletEventsetTimestampBase, timestamp: culonglong): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(timestamp: culonglong): auto =
    callVirtualBase_setTimestamp(QTabletEvent(h: self), timestamp)
  let slotval1 = timestamp


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setAccepted(self: QTabletEvent, accepted: bool): void =


  fQTabletEvent_virtualbase_setAccepted(self.h, accepted)

type QTabletEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QTabletEvent, slot: proc(super: QTabletEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QTabletEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTabletEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabletEvent_setAccepted(self: ptr cQTabletEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QTabletEvent_setAccepted ".} =
  type Cb = proc(super: QTabletEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QTabletEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QTabletEvent) =
  fcQTabletEvent_delete(self.h)

func init*(T: type QNativeGestureEvent, h: ptr cQNativeGestureEvent): QNativeGestureEvent =
  T(h: h)
proc create*(T: type QNativeGestureEvent, typeVal: gen_qnamespace.NativeGestureType, dev: gen_qpointingdevice.QPointingDevice, localPos: gen_qpoint.QPointF, scenePos: gen_qpoint.QPointF, globalPos: gen_qpoint.QPointF, value: float64, sequenceId: culonglong, intArgument: culonglong): QNativeGestureEvent =

  QNativeGestureEvent.init(fcQNativeGestureEvent_new(cint(typeVal), dev.h, localPos.h, scenePos.h, globalPos.h, value, sequenceId, intArgument))
proc create*(T: type QNativeGestureEvent, typeVal: gen_qnamespace.NativeGestureType, dev: gen_qpointingdevice.QPointingDevice, fingerCount: cint, localPos: gen_qpoint.QPointF, scenePos: gen_qpoint.QPointF, globalPos: gen_qpoint.QPointF, value: float64, delta: gen_qpoint.QPointF): QNativeGestureEvent =

  QNativeGestureEvent.init(fcQNativeGestureEvent_new2(cint(typeVal), dev.h, fingerCount, localPos.h, scenePos.h, globalPos.h, value, delta.h))
proc create*(T: type QNativeGestureEvent, typeVal: gen_qnamespace.NativeGestureType, dev: gen_qpointingdevice.QPointingDevice, fingerCount: cint, localPos: gen_qpoint.QPointF, scenePos: gen_qpoint.QPointF, globalPos: gen_qpoint.QPointF, value: float64, delta: gen_qpoint.QPointF, sequenceId: culonglong): QNativeGestureEvent =

  QNativeGestureEvent.init(fcQNativeGestureEvent_new3(cint(typeVal), dev.h, fingerCount, localPos.h, scenePos.h, globalPos.h, value, delta.h, sequenceId))
proc clone*(self: QNativeGestureEvent, ): QNativeGestureEvent =

  QNativeGestureEvent(h: fcQNativeGestureEvent_clone(self.h))

proc gestureType*(self: QNativeGestureEvent, ): gen_qnamespace.NativeGestureType =

  gen_qnamespace.NativeGestureType(fcQNativeGestureEvent_gestureType(self.h))

proc fingerCount*(self: QNativeGestureEvent, ): cint =

  fcQNativeGestureEvent_fingerCount(self.h)

proc value*(self: QNativeGestureEvent, ): float64 =

  fcQNativeGestureEvent_value(self.h)

proc delta*(self: QNativeGestureEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQNativeGestureEvent_delta(self.h))

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

proc callVirtualBase_clone(self: QNativeGestureEvent, ): QNativeGestureEvent =


  QNativeGestureEvent(h: fQNativeGestureEvent_virtualbase_clone(self.h))

type QNativeGestureEventcloneBase* = proc(): QNativeGestureEvent
proc onclone*(self: QNativeGestureEvent, slot: proc(super: QNativeGestureEventcloneBase): QNativeGestureEvent) =
  # TODO check subclass
  type Cb = proc(super: QNativeGestureEventcloneBase): QNativeGestureEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNativeGestureEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNativeGestureEvent_clone(self: ptr cQNativeGestureEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QNativeGestureEvent_clone ".} =
  type Cb = proc(super: QNativeGestureEventcloneBase): QNativeGestureEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QNativeGestureEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_isBeginEvent(self: QNativeGestureEvent, ): bool =


  fQNativeGestureEvent_virtualbase_isBeginEvent(self.h)

type QNativeGestureEventisBeginEventBase* = proc(): bool
proc onisBeginEvent*(self: QNativeGestureEvent, slot: proc(super: QNativeGestureEventisBeginEventBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QNativeGestureEventisBeginEventBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNativeGestureEvent_override_virtual_isBeginEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNativeGestureEvent_isBeginEvent(self: ptr cQNativeGestureEvent, slot: int): bool {.exportc: "miqt_exec_callback_QNativeGestureEvent_isBeginEvent ".} =
  type Cb = proc(super: QNativeGestureEventisBeginEventBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isBeginEvent(QNativeGestureEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_isUpdateEvent(self: QNativeGestureEvent, ): bool =


  fQNativeGestureEvent_virtualbase_isUpdateEvent(self.h)

type QNativeGestureEventisUpdateEventBase* = proc(): bool
proc onisUpdateEvent*(self: QNativeGestureEvent, slot: proc(super: QNativeGestureEventisUpdateEventBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QNativeGestureEventisUpdateEventBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNativeGestureEvent_override_virtual_isUpdateEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNativeGestureEvent_isUpdateEvent(self: ptr cQNativeGestureEvent, slot: int): bool {.exportc: "miqt_exec_callback_QNativeGestureEvent_isUpdateEvent ".} =
  type Cb = proc(super: QNativeGestureEventisUpdateEventBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isUpdateEvent(QNativeGestureEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_isEndEvent(self: QNativeGestureEvent, ): bool =


  fQNativeGestureEvent_virtualbase_isEndEvent(self.h)

type QNativeGestureEventisEndEventBase* = proc(): bool
proc onisEndEvent*(self: QNativeGestureEvent, slot: proc(super: QNativeGestureEventisEndEventBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QNativeGestureEventisEndEventBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNativeGestureEvent_override_virtual_isEndEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNativeGestureEvent_isEndEvent(self: ptr cQNativeGestureEvent, slot: int): bool {.exportc: "miqt_exec_callback_QNativeGestureEvent_isEndEvent ".} =
  type Cb = proc(super: QNativeGestureEventisEndEventBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isEndEvent(QNativeGestureEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setTimestamp(self: QNativeGestureEvent, timestamp: culonglong): void =


  fQNativeGestureEvent_virtualbase_setTimestamp(self.h, timestamp)

type QNativeGestureEventsetTimestampBase* = proc(timestamp: culonglong): void
proc onsetTimestamp*(self: QNativeGestureEvent, slot: proc(super: QNativeGestureEventsetTimestampBase, timestamp: culonglong): void) =
  # TODO check subclass
  type Cb = proc(super: QNativeGestureEventsetTimestampBase, timestamp: culonglong): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNativeGestureEvent_override_virtual_setTimestamp(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNativeGestureEvent_setTimestamp(self: ptr cQNativeGestureEvent, slot: int, timestamp: culonglong): void {.exportc: "miqt_exec_callback_QNativeGestureEvent_setTimestamp ".} =
  type Cb = proc(super: QNativeGestureEventsetTimestampBase, timestamp: culonglong): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(timestamp: culonglong): auto =
    callVirtualBase_setTimestamp(QNativeGestureEvent(h: self), timestamp)
  let slotval1 = timestamp


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setAccepted(self: QNativeGestureEvent, accepted: bool): void =


  fQNativeGestureEvent_virtualbase_setAccepted(self.h, accepted)

type QNativeGestureEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QNativeGestureEvent, slot: proc(super: QNativeGestureEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QNativeGestureEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNativeGestureEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNativeGestureEvent_setAccepted(self: ptr cQNativeGestureEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QNativeGestureEvent_setAccepted ".} =
  type Cb = proc(super: QNativeGestureEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QNativeGestureEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QNativeGestureEvent) =
  fcQNativeGestureEvent_delete(self.h)

func init*(T: type QKeyEvent, h: ptr cQKeyEvent): QKeyEvent =
  T(h: h)
proc create*(T: type QKeyEvent, typeVal: gen_qcoreevent.QEventType, key: cint, modifiers: gen_qnamespace.KeyboardModifier): QKeyEvent =

  QKeyEvent.init(fcQKeyEvent_new(cint(typeVal), key, cint(modifiers)))
proc create*(T: type QKeyEvent, typeVal: gen_qcoreevent.QEventType, key: cint, modifiers: gen_qnamespace.KeyboardModifier, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint): QKeyEvent =

  QKeyEvent.init(fcQKeyEvent_new2(cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers))
proc create*(T: type QKeyEvent, typeVal: gen_qcoreevent.QEventType, key: cint, modifiers: gen_qnamespace.KeyboardModifier, text: string): QKeyEvent =

  QKeyEvent.init(fcQKeyEvent_new3(cint(typeVal), key, cint(modifiers), struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create*(T: type QKeyEvent, typeVal: gen_qcoreevent.QEventType, key: cint, modifiers: gen_qnamespace.KeyboardModifier, text: string, autorep: bool): QKeyEvent =

  QKeyEvent.init(fcQKeyEvent_new4(cint(typeVal), key, cint(modifiers), struct_miqt_string(data: text, len: csize_t(len(text))), autorep))
proc create*(T: type QKeyEvent, typeVal: gen_qcoreevent.QEventType, key: cint, modifiers: gen_qnamespace.KeyboardModifier, text: string, autorep: bool, count: cushort): QKeyEvent =

  QKeyEvent.init(fcQKeyEvent_new5(cint(typeVal), key, cint(modifiers), struct_miqt_string(data: text, len: csize_t(len(text))), autorep, count))
proc create*(T: type QKeyEvent, typeVal: gen_qcoreevent.QEventType, key: cint, modifiers: gen_qnamespace.KeyboardModifier, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: string): QKeyEvent =

  QKeyEvent.init(fcQKeyEvent_new6(cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers, struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create*(T: type QKeyEvent, typeVal: gen_qcoreevent.QEventType, key: cint, modifiers: gen_qnamespace.KeyboardModifier, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: string, autorep: bool): QKeyEvent =

  QKeyEvent.init(fcQKeyEvent_new7(cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers, struct_miqt_string(data: text, len: csize_t(len(text))), autorep))
proc create*(T: type QKeyEvent, typeVal: gen_qcoreevent.QEventType, key: cint, modifiers: gen_qnamespace.KeyboardModifier, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: string, autorep: bool, count: cushort): QKeyEvent =

  QKeyEvent.init(fcQKeyEvent_new8(cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers, struct_miqt_string(data: text, len: csize_t(len(text))), autorep, count))
proc create*(T: type QKeyEvent, typeVal: gen_qcoreevent.QEventType, key: cint, modifiers: gen_qnamespace.KeyboardModifier, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: string, autorep: bool, count: cushort, device: gen_qinputdevice.QInputDevice): QKeyEvent =

  QKeyEvent.init(fcQKeyEvent_new9(cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers, struct_miqt_string(data: text, len: csize_t(len(text))), autorep, count, device.h))
proc clone*(self: QKeyEvent, ): QKeyEvent =

  QKeyEvent(h: fcQKeyEvent_clone(self.h))

proc key*(self: QKeyEvent, ): cint =

  fcQKeyEvent_key(self.h)

proc matches*(self: QKeyEvent, key: gen_qkeysequence.QKeySequenceStandardKey): bool =

  fcQKeyEvent_matches(self.h, cint(key))

proc modifiers*(self: QKeyEvent, ): gen_qnamespace.KeyboardModifier =

  gen_qnamespace.KeyboardModifier(fcQKeyEvent_modifiers(self.h))

proc keyCombination*(self: QKeyEvent, ): gen_qnamespace.QKeyCombination =

  gen_qnamespace.QKeyCombination(h: fcQKeyEvent_keyCombination(self.h))

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

proc callVirtualBase_clone(self: QKeyEvent, ): QKeyEvent =


  QKeyEvent(h: fQKeyEvent_virtualbase_clone(self.h))

type QKeyEventcloneBase* = proc(): QKeyEvent
proc onclone*(self: QKeyEvent, slot: proc(super: QKeyEventcloneBase): QKeyEvent) =
  # TODO check subclass
  type Cb = proc(super: QKeyEventcloneBase): QKeyEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeyEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeyEvent_clone(self: ptr cQKeyEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QKeyEvent_clone ".} =
  type Cb = proc(super: QKeyEventcloneBase): QKeyEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QKeyEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setTimestamp(self: QKeyEvent, timestamp: culonglong): void =


  fQKeyEvent_virtualbase_setTimestamp(self.h, timestamp)

type QKeyEventsetTimestampBase* = proc(timestamp: culonglong): void
proc onsetTimestamp*(self: QKeyEvent, slot: proc(super: QKeyEventsetTimestampBase, timestamp: culonglong): void) =
  # TODO check subclass
  type Cb = proc(super: QKeyEventsetTimestampBase, timestamp: culonglong): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeyEvent_override_virtual_setTimestamp(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeyEvent_setTimestamp(self: ptr cQKeyEvent, slot: int, timestamp: culonglong): void {.exportc: "miqt_exec_callback_QKeyEvent_setTimestamp ".} =
  type Cb = proc(super: QKeyEventsetTimestampBase, timestamp: culonglong): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(timestamp: culonglong): auto =
    callVirtualBase_setTimestamp(QKeyEvent(h: self), timestamp)
  let slotval1 = timestamp


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setAccepted(self: QKeyEvent, accepted: bool): void =


  fQKeyEvent_virtualbase_setAccepted(self.h, accepted)

type QKeyEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QKeyEvent, slot: proc(super: QKeyEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QKeyEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeyEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeyEvent_setAccepted(self: ptr cQKeyEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QKeyEvent_setAccepted ".} =
  type Cb = proc(super: QKeyEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QKeyEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QKeyEvent) =
  fcQKeyEvent_delete(self.h)

func init*(T: type QFocusEvent, h: ptr cQFocusEvent): QFocusEvent =
  T(h: h)
proc create*(T: type QFocusEvent, typeVal: gen_qcoreevent.QEventType): QFocusEvent =

  QFocusEvent.init(fcQFocusEvent_new(cint(typeVal)))
proc create*(T: type QFocusEvent, typeVal: gen_qcoreevent.QEventType, reason: gen_qnamespace.FocusReason): QFocusEvent =

  QFocusEvent.init(fcQFocusEvent_new2(cint(typeVal), cint(reason)))
proc clone*(self: QFocusEvent, ): QFocusEvent =

  QFocusEvent(h: fcQFocusEvent_clone(self.h))

proc gotFocus*(self: QFocusEvent, ): bool =

  fcQFocusEvent_gotFocus(self.h)

proc lostFocus*(self: QFocusEvent, ): bool =

  fcQFocusEvent_lostFocus(self.h)

proc reason*(self: QFocusEvent, ): gen_qnamespace.FocusReason =

  gen_qnamespace.FocusReason(fcQFocusEvent_reason(self.h))

proc callVirtualBase_clone(self: QFocusEvent, ): QFocusEvent =


  QFocusEvent(h: fQFocusEvent_virtualbase_clone(self.h))

type QFocusEventcloneBase* = proc(): QFocusEvent
proc onclone*(self: QFocusEvent, slot: proc(super: QFocusEventcloneBase): QFocusEvent) =
  # TODO check subclass
  type Cb = proc(super: QFocusEventcloneBase): QFocusEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusEvent_clone(self: ptr cQFocusEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QFocusEvent_clone ".} =
  type Cb = proc(super: QFocusEventcloneBase): QFocusEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QFocusEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QFocusEvent, accepted: bool): void =


  fQFocusEvent_virtualbase_setAccepted(self.h, accepted)

type QFocusEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QFocusEvent, slot: proc(super: QFocusEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QFocusEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusEvent_setAccepted(self: ptr cQFocusEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QFocusEvent_setAccepted ".} =
  type Cb = proc(super: QFocusEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QFocusEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QFocusEvent) =
  fcQFocusEvent_delete(self.h)

func init*(T: type QPaintEvent, h: ptr cQPaintEvent): QPaintEvent =
  T(h: h)
proc create*(T: type QPaintEvent, paintRegion: gen_qregion.QRegion): QPaintEvent =

  QPaintEvent.init(fcQPaintEvent_new(paintRegion.h))
proc create2*(T: type QPaintEvent, paintRect: gen_qrect.QRect): QPaintEvent =

  QPaintEvent.init(fcQPaintEvent_new2(paintRect.h))
proc clone*(self: QPaintEvent, ): QPaintEvent =

  QPaintEvent(h: fcQPaintEvent_clone(self.h))

proc rect*(self: QPaintEvent, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQPaintEvent_rect(self.h))

proc region*(self: QPaintEvent, ): gen_qregion.QRegion =

  gen_qregion.QRegion(h: fcQPaintEvent_region(self.h))

proc callVirtualBase_clone(self: QPaintEvent, ): QPaintEvent =


  QPaintEvent(h: fQPaintEvent_virtualbase_clone(self.h))

type QPaintEventcloneBase* = proc(): QPaintEvent
proc onclone*(self: QPaintEvent, slot: proc(super: QPaintEventcloneBase): QPaintEvent) =
  # TODO check subclass
  type Cb = proc(super: QPaintEventcloneBase): QPaintEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEvent_clone(self: ptr cQPaintEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QPaintEvent_clone ".} =
  type Cb = proc(super: QPaintEventcloneBase): QPaintEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QPaintEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QPaintEvent, accepted: bool): void =


  fQPaintEvent_virtualbase_setAccepted(self.h, accepted)

type QPaintEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QPaintEvent, slot: proc(super: QPaintEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QPaintEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEvent_setAccepted(self: ptr cQPaintEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QPaintEvent_setAccepted ".} =
  type Cb = proc(super: QPaintEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QPaintEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QPaintEvent) =
  fcQPaintEvent_delete(self.h)

func init*(T: type QMoveEvent, h: ptr cQMoveEvent): QMoveEvent =
  T(h: h)
proc create*(T: type QMoveEvent, pos: gen_qpoint.QPoint, oldPos: gen_qpoint.QPoint): QMoveEvent =

  QMoveEvent.init(fcQMoveEvent_new(pos.h, oldPos.h))
proc clone*(self: QMoveEvent, ): QMoveEvent =

  QMoveEvent(h: fcQMoveEvent_clone(self.h))

proc pos*(self: QMoveEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQMoveEvent_pos(self.h))

proc oldPos*(self: QMoveEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQMoveEvent_oldPos(self.h))

proc callVirtualBase_clone(self: QMoveEvent, ): QMoveEvent =


  QMoveEvent(h: fQMoveEvent_virtualbase_clone(self.h))

type QMoveEventcloneBase* = proc(): QMoveEvent
proc onclone*(self: QMoveEvent, slot: proc(super: QMoveEventcloneBase): QMoveEvent) =
  # TODO check subclass
  type Cb = proc(super: QMoveEventcloneBase): QMoveEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMoveEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMoveEvent_clone(self: ptr cQMoveEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QMoveEvent_clone ".} =
  type Cb = proc(super: QMoveEventcloneBase): QMoveEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QMoveEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QMoveEvent, accepted: bool): void =


  fQMoveEvent_virtualbase_setAccepted(self.h, accepted)

type QMoveEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QMoveEvent, slot: proc(super: QMoveEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QMoveEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMoveEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMoveEvent_setAccepted(self: ptr cQMoveEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QMoveEvent_setAccepted ".} =
  type Cb = proc(super: QMoveEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QMoveEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QMoveEvent) =
  fcQMoveEvent_delete(self.h)

func init*(T: type QExposeEvent, h: ptr cQExposeEvent): QExposeEvent =
  T(h: h)
proc create*(T: type QExposeEvent, m_region: gen_qregion.QRegion): QExposeEvent =

  QExposeEvent.init(fcQExposeEvent_new(m_region.h))
proc clone*(self: QExposeEvent, ): QExposeEvent =

  QExposeEvent(h: fcQExposeEvent_clone(self.h))

proc region*(self: QExposeEvent, ): gen_qregion.QRegion =

  gen_qregion.QRegion(h: fcQExposeEvent_region(self.h))

proc callVirtualBase_clone(self: QExposeEvent, ): QExposeEvent =


  QExposeEvent(h: fQExposeEvent_virtualbase_clone(self.h))

type QExposeEventcloneBase* = proc(): QExposeEvent
proc onclone*(self: QExposeEvent, slot: proc(super: QExposeEventcloneBase): QExposeEvent) =
  # TODO check subclass
  type Cb = proc(super: QExposeEventcloneBase): QExposeEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQExposeEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QExposeEvent_clone(self: ptr cQExposeEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QExposeEvent_clone ".} =
  type Cb = proc(super: QExposeEventcloneBase): QExposeEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QExposeEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QExposeEvent, accepted: bool): void =


  fQExposeEvent_virtualbase_setAccepted(self.h, accepted)

type QExposeEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QExposeEvent, slot: proc(super: QExposeEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QExposeEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQExposeEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QExposeEvent_setAccepted(self: ptr cQExposeEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QExposeEvent_setAccepted ".} =
  type Cb = proc(super: QExposeEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QExposeEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QExposeEvent) =
  fcQExposeEvent_delete(self.h)

func init*(T: type QPlatformSurfaceEvent, h: ptr cQPlatformSurfaceEvent): QPlatformSurfaceEvent =
  T(h: h)
proc create*(T: type QPlatformSurfaceEvent, surfaceEventType: QPlatformSurfaceEventSurfaceEventType): QPlatformSurfaceEvent =

  QPlatformSurfaceEvent.init(fcQPlatformSurfaceEvent_new(cint(surfaceEventType)))
proc clone*(self: QPlatformSurfaceEvent, ): QPlatformSurfaceEvent =

  QPlatformSurfaceEvent(h: fcQPlatformSurfaceEvent_clone(self.h))

proc surfaceEventType*(self: QPlatformSurfaceEvent, ): QPlatformSurfaceEventSurfaceEventType =

  QPlatformSurfaceEventSurfaceEventType(fcQPlatformSurfaceEvent_surfaceEventType(self.h))

proc callVirtualBase_clone(self: QPlatformSurfaceEvent, ): QPlatformSurfaceEvent =


  QPlatformSurfaceEvent(h: fQPlatformSurfaceEvent_virtualbase_clone(self.h))

type QPlatformSurfaceEventcloneBase* = proc(): QPlatformSurfaceEvent
proc onclone*(self: QPlatformSurfaceEvent, slot: proc(super: QPlatformSurfaceEventcloneBase): QPlatformSurfaceEvent) =
  # TODO check subclass
  type Cb = proc(super: QPlatformSurfaceEventcloneBase): QPlatformSurfaceEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlatformSurfaceEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlatformSurfaceEvent_clone(self: ptr cQPlatformSurfaceEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QPlatformSurfaceEvent_clone ".} =
  type Cb = proc(super: QPlatformSurfaceEventcloneBase): QPlatformSurfaceEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QPlatformSurfaceEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QPlatformSurfaceEvent, accepted: bool): void =


  fQPlatformSurfaceEvent_virtualbase_setAccepted(self.h, accepted)

type QPlatformSurfaceEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QPlatformSurfaceEvent, slot: proc(super: QPlatformSurfaceEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QPlatformSurfaceEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPlatformSurfaceEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlatformSurfaceEvent_setAccepted(self: ptr cQPlatformSurfaceEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QPlatformSurfaceEvent_setAccepted ".} =
  type Cb = proc(super: QPlatformSurfaceEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QPlatformSurfaceEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QPlatformSurfaceEvent) =
  fcQPlatformSurfaceEvent_delete(self.h)

func init*(T: type QResizeEvent, h: ptr cQResizeEvent): QResizeEvent =
  T(h: h)
proc create*(T: type QResizeEvent, size: gen_qsize.QSize, oldSize: gen_qsize.QSize): QResizeEvent =

  QResizeEvent.init(fcQResizeEvent_new(size.h, oldSize.h))
proc clone*(self: QResizeEvent, ): QResizeEvent =

  QResizeEvent(h: fcQResizeEvent_clone(self.h))

proc size*(self: QResizeEvent, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQResizeEvent_size(self.h))

proc oldSize*(self: QResizeEvent, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQResizeEvent_oldSize(self.h))

proc callVirtualBase_clone(self: QResizeEvent, ): QResizeEvent =


  QResizeEvent(h: fQResizeEvent_virtualbase_clone(self.h))

type QResizeEventcloneBase* = proc(): QResizeEvent
proc onclone*(self: QResizeEvent, slot: proc(super: QResizeEventcloneBase): QResizeEvent) =
  # TODO check subclass
  type Cb = proc(super: QResizeEventcloneBase): QResizeEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQResizeEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QResizeEvent_clone(self: ptr cQResizeEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QResizeEvent_clone ".} =
  type Cb = proc(super: QResizeEventcloneBase): QResizeEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QResizeEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QResizeEvent, accepted: bool): void =


  fQResizeEvent_virtualbase_setAccepted(self.h, accepted)

type QResizeEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QResizeEvent, slot: proc(super: QResizeEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QResizeEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQResizeEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QResizeEvent_setAccepted(self: ptr cQResizeEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QResizeEvent_setAccepted ".} =
  type Cb = proc(super: QResizeEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QResizeEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QResizeEvent) =
  fcQResizeEvent_delete(self.h)

func init*(T: type QCloseEvent, h: ptr cQCloseEvent): QCloseEvent =
  T(h: h)
proc create*(T: type QCloseEvent, ): QCloseEvent =

  QCloseEvent.init(fcQCloseEvent_new())
proc clone*(self: QCloseEvent, ): QCloseEvent =

  QCloseEvent(h: fcQCloseEvent_clone(self.h))

proc callVirtualBase_clone(self: QCloseEvent, ): QCloseEvent =


  QCloseEvent(h: fQCloseEvent_virtualbase_clone(self.h))

type QCloseEventcloneBase* = proc(): QCloseEvent
proc onclone*(self: QCloseEvent, slot: proc(super: QCloseEventcloneBase): QCloseEvent) =
  # TODO check subclass
  type Cb = proc(super: QCloseEventcloneBase): QCloseEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCloseEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCloseEvent_clone(self: ptr cQCloseEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QCloseEvent_clone ".} =
  type Cb = proc(super: QCloseEventcloneBase): QCloseEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QCloseEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QCloseEvent, accepted: bool): void =


  fQCloseEvent_virtualbase_setAccepted(self.h, accepted)

type QCloseEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QCloseEvent, slot: proc(super: QCloseEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QCloseEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCloseEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCloseEvent_setAccepted(self: ptr cQCloseEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QCloseEvent_setAccepted ".} =
  type Cb = proc(super: QCloseEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QCloseEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QCloseEvent) =
  fcQCloseEvent_delete(self.h)

func init*(T: type QIconDragEvent, h: ptr cQIconDragEvent): QIconDragEvent =
  T(h: h)
proc create*(T: type QIconDragEvent, ): QIconDragEvent =

  QIconDragEvent.init(fcQIconDragEvent_new())
proc clone*(self: QIconDragEvent, ): QIconDragEvent =

  QIconDragEvent(h: fcQIconDragEvent_clone(self.h))

proc callVirtualBase_clone(self: QIconDragEvent, ): QIconDragEvent =


  QIconDragEvent(h: fQIconDragEvent_virtualbase_clone(self.h))

type QIconDragEventcloneBase* = proc(): QIconDragEvent
proc onclone*(self: QIconDragEvent, slot: proc(super: QIconDragEventcloneBase): QIconDragEvent) =
  # TODO check subclass
  type Cb = proc(super: QIconDragEventcloneBase): QIconDragEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIconDragEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconDragEvent_clone(self: ptr cQIconDragEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QIconDragEvent_clone ".} =
  type Cb = proc(super: QIconDragEventcloneBase): QIconDragEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QIconDragEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QIconDragEvent, accepted: bool): void =


  fQIconDragEvent_virtualbase_setAccepted(self.h, accepted)

type QIconDragEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QIconDragEvent, slot: proc(super: QIconDragEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QIconDragEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIconDragEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconDragEvent_setAccepted(self: ptr cQIconDragEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QIconDragEvent_setAccepted ".} =
  type Cb = proc(super: QIconDragEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QIconDragEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QIconDragEvent) =
  fcQIconDragEvent_delete(self.h)

func init*(T: type QShowEvent, h: ptr cQShowEvent): QShowEvent =
  T(h: h)
proc create*(T: type QShowEvent, ): QShowEvent =

  QShowEvent.init(fcQShowEvent_new())
proc clone*(self: QShowEvent, ): QShowEvent =

  QShowEvent(h: fcQShowEvent_clone(self.h))

proc callVirtualBase_clone(self: QShowEvent, ): QShowEvent =


  QShowEvent(h: fQShowEvent_virtualbase_clone(self.h))

type QShowEventcloneBase* = proc(): QShowEvent
proc onclone*(self: QShowEvent, slot: proc(super: QShowEventcloneBase): QShowEvent) =
  # TODO check subclass
  type Cb = proc(super: QShowEventcloneBase): QShowEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQShowEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QShowEvent_clone(self: ptr cQShowEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QShowEvent_clone ".} =
  type Cb = proc(super: QShowEventcloneBase): QShowEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QShowEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QShowEvent, accepted: bool): void =


  fQShowEvent_virtualbase_setAccepted(self.h, accepted)

type QShowEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QShowEvent, slot: proc(super: QShowEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QShowEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQShowEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QShowEvent_setAccepted(self: ptr cQShowEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QShowEvent_setAccepted ".} =
  type Cb = proc(super: QShowEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QShowEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QShowEvent) =
  fcQShowEvent_delete(self.h)

func init*(T: type QHideEvent, h: ptr cQHideEvent): QHideEvent =
  T(h: h)
proc create*(T: type QHideEvent, ): QHideEvent =

  QHideEvent.init(fcQHideEvent_new())
proc clone*(self: QHideEvent, ): QHideEvent =

  QHideEvent(h: fcQHideEvent_clone(self.h))

proc callVirtualBase_clone(self: QHideEvent, ): QHideEvent =


  QHideEvent(h: fQHideEvent_virtualbase_clone(self.h))

type QHideEventcloneBase* = proc(): QHideEvent
proc onclone*(self: QHideEvent, slot: proc(super: QHideEventcloneBase): QHideEvent) =
  # TODO check subclass
  type Cb = proc(super: QHideEventcloneBase): QHideEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHideEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHideEvent_clone(self: ptr cQHideEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QHideEvent_clone ".} =
  type Cb = proc(super: QHideEventcloneBase): QHideEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QHideEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QHideEvent, accepted: bool): void =


  fQHideEvent_virtualbase_setAccepted(self.h, accepted)

type QHideEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QHideEvent, slot: proc(super: QHideEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QHideEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHideEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHideEvent_setAccepted(self: ptr cQHideEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QHideEvent_setAccepted ".} =
  type Cb = proc(super: QHideEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QHideEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QHideEvent) =
  fcQHideEvent_delete(self.h)

func init*(T: type QContextMenuEvent, h: ptr cQContextMenuEvent): QContextMenuEvent =
  T(h: h)
proc create*(T: type QContextMenuEvent, reason: QContextMenuEventReason, pos: gen_qpoint.QPoint, globalPos: gen_qpoint.QPoint): QContextMenuEvent =

  QContextMenuEvent.init(fcQContextMenuEvent_new(cint(reason), pos.h, globalPos.h))
proc create*(T: type QContextMenuEvent, reason: QContextMenuEventReason, pos: gen_qpoint.QPoint): QContextMenuEvent =

  QContextMenuEvent.init(fcQContextMenuEvent_new2(cint(reason), pos.h))
proc create*(T: type QContextMenuEvent, reason: QContextMenuEventReason, pos: gen_qpoint.QPoint, globalPos: gen_qpoint.QPoint, modifiers: gen_qnamespace.KeyboardModifier): QContextMenuEvent =

  QContextMenuEvent.init(fcQContextMenuEvent_new3(cint(reason), pos.h, globalPos.h, cint(modifiers)))
proc clone*(self: QContextMenuEvent, ): QContextMenuEvent =

  QContextMenuEvent(h: fcQContextMenuEvent_clone(self.h))

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

proc callVirtualBase_clone(self: QContextMenuEvent, ): QContextMenuEvent =


  QContextMenuEvent(h: fQContextMenuEvent_virtualbase_clone(self.h))

type QContextMenuEventcloneBase* = proc(): QContextMenuEvent
proc onclone*(self: QContextMenuEvent, slot: proc(super: QContextMenuEventcloneBase): QContextMenuEvent) =
  # TODO check subclass
  type Cb = proc(super: QContextMenuEventcloneBase): QContextMenuEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQContextMenuEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QContextMenuEvent_clone(self: ptr cQContextMenuEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QContextMenuEvent_clone ".} =
  type Cb = proc(super: QContextMenuEventcloneBase): QContextMenuEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QContextMenuEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setTimestamp(self: QContextMenuEvent, timestamp: culonglong): void =


  fQContextMenuEvent_virtualbase_setTimestamp(self.h, timestamp)

type QContextMenuEventsetTimestampBase* = proc(timestamp: culonglong): void
proc onsetTimestamp*(self: QContextMenuEvent, slot: proc(super: QContextMenuEventsetTimestampBase, timestamp: culonglong): void) =
  # TODO check subclass
  type Cb = proc(super: QContextMenuEventsetTimestampBase, timestamp: culonglong): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQContextMenuEvent_override_virtual_setTimestamp(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QContextMenuEvent_setTimestamp(self: ptr cQContextMenuEvent, slot: int, timestamp: culonglong): void {.exportc: "miqt_exec_callback_QContextMenuEvent_setTimestamp ".} =
  type Cb = proc(super: QContextMenuEventsetTimestampBase, timestamp: culonglong): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(timestamp: culonglong): auto =
    callVirtualBase_setTimestamp(QContextMenuEvent(h: self), timestamp)
  let slotval1 = timestamp


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setAccepted(self: QContextMenuEvent, accepted: bool): void =


  fQContextMenuEvent_virtualbase_setAccepted(self.h, accepted)

type QContextMenuEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QContextMenuEvent, slot: proc(super: QContextMenuEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QContextMenuEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQContextMenuEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QContextMenuEvent_setAccepted(self: ptr cQContextMenuEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QContextMenuEvent_setAccepted ".} =
  type Cb = proc(super: QContextMenuEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QContextMenuEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
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
proc clone*(self: QInputMethodEvent, ): QInputMethodEvent =

  QInputMethodEvent(h: fcQInputMethodEvent_clone(self.h))

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

proc callVirtualBase_clone(self: QInputMethodEvent, ): QInputMethodEvent =


  QInputMethodEvent(h: fQInputMethodEvent_virtualbase_clone(self.h))

type QInputMethodEventcloneBase* = proc(): QInputMethodEvent
proc onclone*(self: QInputMethodEvent, slot: proc(super: QInputMethodEventcloneBase): QInputMethodEvent) =
  # TODO check subclass
  type Cb = proc(super: QInputMethodEventcloneBase): QInputMethodEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputMethodEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputMethodEvent_clone(self: ptr cQInputMethodEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QInputMethodEvent_clone ".} =
  type Cb = proc(super: QInputMethodEventcloneBase): QInputMethodEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QInputMethodEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QInputMethodEvent, accepted: bool): void =


  fQInputMethodEvent_virtualbase_setAccepted(self.h, accepted)

type QInputMethodEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QInputMethodEvent, slot: proc(super: QInputMethodEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QInputMethodEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputMethodEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputMethodEvent_setAccepted(self: ptr cQInputMethodEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QInputMethodEvent_setAccepted ".} =
  type Cb = proc(super: QInputMethodEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QInputMethodEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QInputMethodEvent) =
  fcQInputMethodEvent_delete(self.h)

func init*(T: type QInputMethodQueryEvent, h: ptr cQInputMethodQueryEvent): QInputMethodQueryEvent =
  T(h: h)
proc create*(T: type QInputMethodQueryEvent, queries: gen_qnamespace.InputMethodQuery): QInputMethodQueryEvent =

  QInputMethodQueryEvent.init(fcQInputMethodQueryEvent_new(cint(queries)))
proc clone*(self: QInputMethodQueryEvent, ): QInputMethodQueryEvent =

  QInputMethodQueryEvent(h: fcQInputMethodQueryEvent_clone(self.h))

proc queries*(self: QInputMethodQueryEvent, ): gen_qnamespace.InputMethodQuery =

  gen_qnamespace.InputMethodQuery(fcQInputMethodQueryEvent_queries(self.h))

proc setValue*(self: QInputMethodQueryEvent, query: gen_qnamespace.InputMethodQuery, value: gen_qvariant.QVariant): void =

  fcQInputMethodQueryEvent_setValue(self.h, cint(query), value.h)

proc value*(self: QInputMethodQueryEvent, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQInputMethodQueryEvent_value(self.h, cint(query)))

proc callVirtualBase_clone(self: QInputMethodQueryEvent, ): QInputMethodQueryEvent =


  QInputMethodQueryEvent(h: fQInputMethodQueryEvent_virtualbase_clone(self.h))

type QInputMethodQueryEventcloneBase* = proc(): QInputMethodQueryEvent
proc onclone*(self: QInputMethodQueryEvent, slot: proc(super: QInputMethodQueryEventcloneBase): QInputMethodQueryEvent) =
  # TODO check subclass
  type Cb = proc(super: QInputMethodQueryEventcloneBase): QInputMethodQueryEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputMethodQueryEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputMethodQueryEvent_clone(self: ptr cQInputMethodQueryEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QInputMethodQueryEvent_clone ".} =
  type Cb = proc(super: QInputMethodQueryEventcloneBase): QInputMethodQueryEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QInputMethodQueryEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QInputMethodQueryEvent, accepted: bool): void =


  fQInputMethodQueryEvent_virtualbase_setAccepted(self.h, accepted)

type QInputMethodQueryEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QInputMethodQueryEvent, slot: proc(super: QInputMethodQueryEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QInputMethodQueryEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQInputMethodQueryEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputMethodQueryEvent_setAccepted(self: ptr cQInputMethodQueryEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QInputMethodQueryEvent_setAccepted ".} =
  type Cb = proc(super: QInputMethodQueryEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QInputMethodQueryEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QInputMethodQueryEvent) =
  fcQInputMethodQueryEvent_delete(self.h)

func init*(T: type QDropEvent, h: ptr cQDropEvent): QDropEvent =
  T(h: h)
proc create*(T: type QDropEvent, pos: gen_qpoint.QPointF, actions: gen_qnamespace.DropAction, data: gen_qmimedata.QMimeData, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier): QDropEvent =

  QDropEvent.init(fcQDropEvent_new(pos.h, cint(actions), data.h, cint(buttons), cint(modifiers)))
proc create*(T: type QDropEvent, pos: gen_qpoint.QPointF, actions: gen_qnamespace.DropAction, data: gen_qmimedata.QMimeData, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier, typeVal: gen_qcoreevent.QEventType): QDropEvent =

  QDropEvent.init(fcQDropEvent_new2(pos.h, cint(actions), data.h, cint(buttons), cint(modifiers), cint(typeVal)))
proc clone*(self: QDropEvent, ): QDropEvent =

  QDropEvent(h: fcQDropEvent_clone(self.h))

proc pos*(self: QDropEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQDropEvent_pos(self.h))

proc posF*(self: QDropEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQDropEvent_posF(self.h))

proc mouseButtons*(self: QDropEvent, ): gen_qnamespace.MouseButton =

  gen_qnamespace.MouseButton(fcQDropEvent_mouseButtons(self.h))

proc keyboardModifiers*(self: QDropEvent, ): gen_qnamespace.KeyboardModifier =

  gen_qnamespace.KeyboardModifier(fcQDropEvent_keyboardModifiers(self.h))

proc position*(self: QDropEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQDropEvent_position(self.h))

proc buttons*(self: QDropEvent, ): gen_qnamespace.MouseButton =

  gen_qnamespace.MouseButton(fcQDropEvent_buttons(self.h))

proc modifiers*(self: QDropEvent, ): gen_qnamespace.KeyboardModifier =

  gen_qnamespace.KeyboardModifier(fcQDropEvent_modifiers(self.h))

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

proc callVirtualBase_clone(self: QDropEvent, ): QDropEvent =


  QDropEvent(h: fQDropEvent_virtualbase_clone(self.h))

type QDropEventcloneBase* = proc(): QDropEvent
proc onclone*(self: QDropEvent, slot: proc(super: QDropEventcloneBase): QDropEvent) =
  # TODO check subclass
  type Cb = proc(super: QDropEventcloneBase): QDropEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDropEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDropEvent_clone(self: ptr cQDropEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QDropEvent_clone ".} =
  type Cb = proc(super: QDropEventcloneBase): QDropEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QDropEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QDropEvent, accepted: bool): void =


  fQDropEvent_virtualbase_setAccepted(self.h, accepted)

type QDropEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QDropEvent, slot: proc(super: QDropEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QDropEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDropEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDropEvent_setAccepted(self: ptr cQDropEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QDropEvent_setAccepted ".} =
  type Cb = proc(super: QDropEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QDropEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QDropEvent) =
  fcQDropEvent_delete(self.h)

func init*(T: type QDragMoveEvent, h: ptr cQDragMoveEvent): QDragMoveEvent =
  T(h: h)
proc create*(T: type QDragMoveEvent, pos: gen_qpoint.QPoint, actions: gen_qnamespace.DropAction, data: gen_qmimedata.QMimeData, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier): QDragMoveEvent =

  QDragMoveEvent.init(fcQDragMoveEvent_new(pos.h, cint(actions), data.h, cint(buttons), cint(modifiers)))
proc create*(T: type QDragMoveEvent, pos: gen_qpoint.QPoint, actions: gen_qnamespace.DropAction, data: gen_qmimedata.QMimeData, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier, typeVal: gen_qcoreevent.QEventType): QDragMoveEvent =

  QDragMoveEvent.init(fcQDragMoveEvent_new2(pos.h, cint(actions), data.h, cint(buttons), cint(modifiers), cint(typeVal)))
proc clone*(self: QDragMoveEvent, ): QDragMoveEvent =

  QDragMoveEvent(h: fcQDragMoveEvent_clone(self.h))

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

proc callVirtualBase_clone(self: QDragMoveEvent, ): QDragMoveEvent =


  QDragMoveEvent(h: fQDragMoveEvent_virtualbase_clone(self.h))

type QDragMoveEventcloneBase* = proc(): QDragMoveEvent
proc onclone*(self: QDragMoveEvent, slot: proc(super: QDragMoveEventcloneBase): QDragMoveEvent) =
  # TODO check subclass
  type Cb = proc(super: QDragMoveEventcloneBase): QDragMoveEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDragMoveEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDragMoveEvent_clone(self: ptr cQDragMoveEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QDragMoveEvent_clone ".} =
  type Cb = proc(super: QDragMoveEventcloneBase): QDragMoveEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QDragMoveEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QDragMoveEvent, accepted: bool): void =


  fQDragMoveEvent_virtualbase_setAccepted(self.h, accepted)

type QDragMoveEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QDragMoveEvent, slot: proc(super: QDragMoveEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QDragMoveEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDragMoveEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDragMoveEvent_setAccepted(self: ptr cQDragMoveEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QDragMoveEvent_setAccepted ".} =
  type Cb = proc(super: QDragMoveEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QDragMoveEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QDragMoveEvent) =
  fcQDragMoveEvent_delete(self.h)

func init*(T: type QDragEnterEvent, h: ptr cQDragEnterEvent): QDragEnterEvent =
  T(h: h)
proc create*(T: type QDragEnterEvent, pos: gen_qpoint.QPoint, actions: gen_qnamespace.DropAction, data: gen_qmimedata.QMimeData, buttons: gen_qnamespace.MouseButton, modifiers: gen_qnamespace.KeyboardModifier): QDragEnterEvent =

  QDragEnterEvent.init(fcQDragEnterEvent_new(pos.h, cint(actions), data.h, cint(buttons), cint(modifiers)))
proc clone*(self: QDragEnterEvent, ): QDragEnterEvent =

  QDragEnterEvent(h: fcQDragEnterEvent_clone(self.h))

proc callVirtualBase_clone(self: QDragEnterEvent, ): QDragEnterEvent =


  QDragEnterEvent(h: fQDragEnterEvent_virtualbase_clone(self.h))

type QDragEnterEventcloneBase* = proc(): QDragEnterEvent
proc onclone*(self: QDragEnterEvent, slot: proc(super: QDragEnterEventcloneBase): QDragEnterEvent) =
  # TODO check subclass
  type Cb = proc(super: QDragEnterEventcloneBase): QDragEnterEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDragEnterEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDragEnterEvent_clone(self: ptr cQDragEnterEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QDragEnterEvent_clone ".} =
  type Cb = proc(super: QDragEnterEventcloneBase): QDragEnterEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QDragEnterEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QDragEnterEvent, accepted: bool): void =


  fQDragEnterEvent_virtualbase_setAccepted(self.h, accepted)

type QDragEnterEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QDragEnterEvent, slot: proc(super: QDragEnterEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QDragEnterEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDragEnterEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDragEnterEvent_setAccepted(self: ptr cQDragEnterEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QDragEnterEvent_setAccepted ".} =
  type Cb = proc(super: QDragEnterEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QDragEnterEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QDragEnterEvent) =
  fcQDragEnterEvent_delete(self.h)

func init*(T: type QDragLeaveEvent, h: ptr cQDragLeaveEvent): QDragLeaveEvent =
  T(h: h)
proc create*(T: type QDragLeaveEvent, ): QDragLeaveEvent =

  QDragLeaveEvent.init(fcQDragLeaveEvent_new())
proc clone*(self: QDragLeaveEvent, ): QDragLeaveEvent =

  QDragLeaveEvent(h: fcQDragLeaveEvent_clone(self.h))

proc callVirtualBase_clone(self: QDragLeaveEvent, ): QDragLeaveEvent =


  QDragLeaveEvent(h: fQDragLeaveEvent_virtualbase_clone(self.h))

type QDragLeaveEventcloneBase* = proc(): QDragLeaveEvent
proc onclone*(self: QDragLeaveEvent, slot: proc(super: QDragLeaveEventcloneBase): QDragLeaveEvent) =
  # TODO check subclass
  type Cb = proc(super: QDragLeaveEventcloneBase): QDragLeaveEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDragLeaveEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDragLeaveEvent_clone(self: ptr cQDragLeaveEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QDragLeaveEvent_clone ".} =
  type Cb = proc(super: QDragLeaveEventcloneBase): QDragLeaveEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QDragLeaveEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QDragLeaveEvent, accepted: bool): void =


  fQDragLeaveEvent_virtualbase_setAccepted(self.h, accepted)

type QDragLeaveEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QDragLeaveEvent, slot: proc(super: QDragLeaveEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QDragLeaveEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDragLeaveEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDragLeaveEvent_setAccepted(self: ptr cQDragLeaveEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QDragLeaveEvent_setAccepted ".} =
  type Cb = proc(super: QDragLeaveEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QDragLeaveEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QDragLeaveEvent) =
  fcQDragLeaveEvent_delete(self.h)

func init*(T: type QHelpEvent, h: ptr cQHelpEvent): QHelpEvent =
  T(h: h)
proc create*(T: type QHelpEvent, typeVal: gen_qcoreevent.QEventType, pos: gen_qpoint.QPoint, globalPos: gen_qpoint.QPoint): QHelpEvent =

  QHelpEvent.init(fcQHelpEvent_new(cint(typeVal), pos.h, globalPos.h))
proc clone*(self: QHelpEvent, ): QHelpEvent =

  QHelpEvent(h: fcQHelpEvent_clone(self.h))

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

proc callVirtualBase_clone(self: QHelpEvent, ): QHelpEvent =


  QHelpEvent(h: fQHelpEvent_virtualbase_clone(self.h))

type QHelpEventcloneBase* = proc(): QHelpEvent
proc onclone*(self: QHelpEvent, slot: proc(super: QHelpEventcloneBase): QHelpEvent) =
  # TODO check subclass
  type Cb = proc(super: QHelpEventcloneBase): QHelpEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHelpEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHelpEvent_clone(self: ptr cQHelpEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QHelpEvent_clone ".} =
  type Cb = proc(super: QHelpEventcloneBase): QHelpEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QHelpEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QHelpEvent, accepted: bool): void =


  fQHelpEvent_virtualbase_setAccepted(self.h, accepted)

type QHelpEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QHelpEvent, slot: proc(super: QHelpEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QHelpEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHelpEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHelpEvent_setAccepted(self: ptr cQHelpEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QHelpEvent_setAccepted ".} =
  type Cb = proc(super: QHelpEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QHelpEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QHelpEvent) =
  fcQHelpEvent_delete(self.h)

func init*(T: type QStatusTipEvent, h: ptr cQStatusTipEvent): QStatusTipEvent =
  T(h: h)
proc create*(T: type QStatusTipEvent, tip: string): QStatusTipEvent =

  QStatusTipEvent.init(fcQStatusTipEvent_new(struct_miqt_string(data: tip, len: csize_t(len(tip)))))
proc clone*(self: QStatusTipEvent, ): QStatusTipEvent =

  QStatusTipEvent(h: fcQStatusTipEvent_clone(self.h))

proc tip*(self: QStatusTipEvent, ): string =

  let v_ms = fcQStatusTipEvent_tip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_clone(self: QStatusTipEvent, ): QStatusTipEvent =


  QStatusTipEvent(h: fQStatusTipEvent_virtualbase_clone(self.h))

type QStatusTipEventcloneBase* = proc(): QStatusTipEvent
proc onclone*(self: QStatusTipEvent, slot: proc(super: QStatusTipEventcloneBase): QStatusTipEvent) =
  # TODO check subclass
  type Cb = proc(super: QStatusTipEventcloneBase): QStatusTipEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusTipEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusTipEvent_clone(self: ptr cQStatusTipEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QStatusTipEvent_clone ".} =
  type Cb = proc(super: QStatusTipEventcloneBase): QStatusTipEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QStatusTipEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QStatusTipEvent, accepted: bool): void =


  fQStatusTipEvent_virtualbase_setAccepted(self.h, accepted)

type QStatusTipEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QStatusTipEvent, slot: proc(super: QStatusTipEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QStatusTipEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusTipEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusTipEvent_setAccepted(self: ptr cQStatusTipEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QStatusTipEvent_setAccepted ".} =
  type Cb = proc(super: QStatusTipEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QStatusTipEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QStatusTipEvent) =
  fcQStatusTipEvent_delete(self.h)

func init*(T: type QWhatsThisClickedEvent, h: ptr cQWhatsThisClickedEvent): QWhatsThisClickedEvent =
  T(h: h)
proc create*(T: type QWhatsThisClickedEvent, href: string): QWhatsThisClickedEvent =

  QWhatsThisClickedEvent.init(fcQWhatsThisClickedEvent_new(struct_miqt_string(data: href, len: csize_t(len(href)))))
proc clone*(self: QWhatsThisClickedEvent, ): QWhatsThisClickedEvent =

  QWhatsThisClickedEvent(h: fcQWhatsThisClickedEvent_clone(self.h))

proc href*(self: QWhatsThisClickedEvent, ): string =

  let v_ms = fcQWhatsThisClickedEvent_href(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_clone(self: QWhatsThisClickedEvent, ): QWhatsThisClickedEvent =


  QWhatsThisClickedEvent(h: fQWhatsThisClickedEvent_virtualbase_clone(self.h))

type QWhatsThisClickedEventcloneBase* = proc(): QWhatsThisClickedEvent
proc onclone*(self: QWhatsThisClickedEvent, slot: proc(super: QWhatsThisClickedEventcloneBase): QWhatsThisClickedEvent) =
  # TODO check subclass
  type Cb = proc(super: QWhatsThisClickedEventcloneBase): QWhatsThisClickedEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWhatsThisClickedEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWhatsThisClickedEvent_clone(self: ptr cQWhatsThisClickedEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QWhatsThisClickedEvent_clone ".} =
  type Cb = proc(super: QWhatsThisClickedEventcloneBase): QWhatsThisClickedEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QWhatsThisClickedEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QWhatsThisClickedEvent, accepted: bool): void =


  fQWhatsThisClickedEvent_virtualbase_setAccepted(self.h, accepted)

type QWhatsThisClickedEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QWhatsThisClickedEvent, slot: proc(super: QWhatsThisClickedEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QWhatsThisClickedEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWhatsThisClickedEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWhatsThisClickedEvent_setAccepted(self: ptr cQWhatsThisClickedEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QWhatsThisClickedEvent_setAccepted ".} =
  type Cb = proc(super: QWhatsThisClickedEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QWhatsThisClickedEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QWhatsThisClickedEvent) =
  fcQWhatsThisClickedEvent_delete(self.h)

func init*(T: type QActionEvent, h: ptr cQActionEvent): QActionEvent =
  T(h: h)
proc create*(T: type QActionEvent, typeVal: cint, action: gen_qaction.QAction): QActionEvent =

  QActionEvent.init(fcQActionEvent_new(typeVal, action.h))
proc create*(T: type QActionEvent, typeVal: cint, action: gen_qaction.QAction, before: gen_qaction.QAction): QActionEvent =

  QActionEvent.init(fcQActionEvent_new2(typeVal, action.h, before.h))
proc clone*(self: QActionEvent, ): QActionEvent =

  QActionEvent(h: fcQActionEvent_clone(self.h))

proc action*(self: QActionEvent, ): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQActionEvent_action(self.h))

proc before*(self: QActionEvent, ): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQActionEvent_before(self.h))

proc callVirtualBase_clone(self: QActionEvent, ): QActionEvent =


  QActionEvent(h: fQActionEvent_virtualbase_clone(self.h))

type QActionEventcloneBase* = proc(): QActionEvent
proc onclone*(self: QActionEvent, slot: proc(super: QActionEventcloneBase): QActionEvent) =
  # TODO check subclass
  type Cb = proc(super: QActionEventcloneBase): QActionEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQActionEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QActionEvent_clone(self: ptr cQActionEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QActionEvent_clone ".} =
  type Cb = proc(super: QActionEventcloneBase): QActionEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QActionEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QActionEvent, accepted: bool): void =


  fQActionEvent_virtualbase_setAccepted(self.h, accepted)

type QActionEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QActionEvent, slot: proc(super: QActionEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QActionEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQActionEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QActionEvent_setAccepted(self: ptr cQActionEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QActionEvent_setAccepted ".} =
  type Cb = proc(super: QActionEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QActionEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QActionEvent) =
  fcQActionEvent_delete(self.h)

func init*(T: type QFileOpenEvent, h: ptr cQFileOpenEvent): QFileOpenEvent =
  T(h: h)
proc create*(T: type QFileOpenEvent, file: string): QFileOpenEvent =

  QFileOpenEvent.init(fcQFileOpenEvent_new(struct_miqt_string(data: file, len: csize_t(len(file)))))
proc create*(T: type QFileOpenEvent, url: gen_qurl.QUrl): QFileOpenEvent =

  QFileOpenEvent.init(fcQFileOpenEvent_new2(url.h))
proc clone*(self: QFileOpenEvent, ): QFileOpenEvent =

  QFileOpenEvent(h: fcQFileOpenEvent_clone(self.h))

proc file*(self: QFileOpenEvent, ): string =

  let v_ms = fcQFileOpenEvent_file(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc url*(self: QFileOpenEvent, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQFileOpenEvent_url(self.h))

proc openFile*(self: QFileOpenEvent, file: gen_qfile.QFile, flags: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool =

  fcQFileOpenEvent_openFile(self.h, file.h, cint(flags))

proc callVirtualBase_clone(self: QFileOpenEvent, ): QFileOpenEvent =


  QFileOpenEvent(h: fQFileOpenEvent_virtualbase_clone(self.h))

type QFileOpenEventcloneBase* = proc(): QFileOpenEvent
proc onclone*(self: QFileOpenEvent, slot: proc(super: QFileOpenEventcloneBase): QFileOpenEvent) =
  # TODO check subclass
  type Cb = proc(super: QFileOpenEventcloneBase): QFileOpenEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileOpenEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileOpenEvent_clone(self: ptr cQFileOpenEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QFileOpenEvent_clone ".} =
  type Cb = proc(super: QFileOpenEventcloneBase): QFileOpenEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QFileOpenEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QFileOpenEvent, accepted: bool): void =


  fQFileOpenEvent_virtualbase_setAccepted(self.h, accepted)

type QFileOpenEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QFileOpenEvent, slot: proc(super: QFileOpenEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QFileOpenEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileOpenEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileOpenEvent_setAccepted(self: ptr cQFileOpenEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QFileOpenEvent_setAccepted ".} =
  type Cb = proc(super: QFileOpenEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QFileOpenEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QFileOpenEvent) =
  fcQFileOpenEvent_delete(self.h)

func init*(T: type QToolBarChangeEvent, h: ptr cQToolBarChangeEvent): QToolBarChangeEvent =
  T(h: h)
proc create*(T: type QToolBarChangeEvent, t: bool): QToolBarChangeEvent =

  QToolBarChangeEvent.init(fcQToolBarChangeEvent_new(t))
proc clone*(self: QToolBarChangeEvent, ): QToolBarChangeEvent =

  QToolBarChangeEvent(h: fcQToolBarChangeEvent_clone(self.h))

proc toggle*(self: QToolBarChangeEvent, ): bool =

  fcQToolBarChangeEvent_toggle(self.h)

proc callVirtualBase_clone(self: QToolBarChangeEvent, ): QToolBarChangeEvent =


  QToolBarChangeEvent(h: fQToolBarChangeEvent_virtualbase_clone(self.h))

type QToolBarChangeEventcloneBase* = proc(): QToolBarChangeEvent
proc onclone*(self: QToolBarChangeEvent, slot: proc(super: QToolBarChangeEventcloneBase): QToolBarChangeEvent) =
  # TODO check subclass
  type Cb = proc(super: QToolBarChangeEventcloneBase): QToolBarChangeEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBarChangeEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBarChangeEvent_clone(self: ptr cQToolBarChangeEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QToolBarChangeEvent_clone ".} =
  type Cb = proc(super: QToolBarChangeEventcloneBase): QToolBarChangeEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QToolBarChangeEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QToolBarChangeEvent, accepted: bool): void =


  fQToolBarChangeEvent_virtualbase_setAccepted(self.h, accepted)

type QToolBarChangeEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QToolBarChangeEvent, slot: proc(super: QToolBarChangeEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QToolBarChangeEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBarChangeEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBarChangeEvent_setAccepted(self: ptr cQToolBarChangeEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QToolBarChangeEvent_setAccepted ".} =
  type Cb = proc(super: QToolBarChangeEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QToolBarChangeEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QToolBarChangeEvent) =
  fcQToolBarChangeEvent_delete(self.h)

func init*(T: type QShortcutEvent, h: ptr cQShortcutEvent): QShortcutEvent =
  T(h: h)
proc create*(T: type QShortcutEvent, key: gen_qkeysequence.QKeySequence, id: cint): QShortcutEvent =

  QShortcutEvent.init(fcQShortcutEvent_new(key.h, id))
proc create*(T: type QShortcutEvent, key: gen_qkeysequence.QKeySequence, id: cint, ambiguous: bool): QShortcutEvent =

  QShortcutEvent.init(fcQShortcutEvent_new2(key.h, id, ambiguous))
proc clone*(self: QShortcutEvent, ): QShortcutEvent =

  QShortcutEvent(h: fcQShortcutEvent_clone(self.h))

proc key*(self: QShortcutEvent, ): gen_qkeysequence.QKeySequence =

  gen_qkeysequence.QKeySequence(h: fcQShortcutEvent_key(self.h))

proc shortcutId*(self: QShortcutEvent, ): cint =

  fcQShortcutEvent_shortcutId(self.h)

proc isAmbiguous*(self: QShortcutEvent, ): bool =

  fcQShortcutEvent_isAmbiguous(self.h)

proc callVirtualBase_clone(self: QShortcutEvent, ): QShortcutEvent =


  QShortcutEvent(h: fQShortcutEvent_virtualbase_clone(self.h))

type QShortcutEventcloneBase* = proc(): QShortcutEvent
proc onclone*(self: QShortcutEvent, slot: proc(super: QShortcutEventcloneBase): QShortcutEvent) =
  # TODO check subclass
  type Cb = proc(super: QShortcutEventcloneBase): QShortcutEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcutEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QShortcutEvent_clone(self: ptr cQShortcutEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QShortcutEvent_clone ".} =
  type Cb = proc(super: QShortcutEventcloneBase): QShortcutEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QShortcutEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QShortcutEvent, accepted: bool): void =


  fQShortcutEvent_virtualbase_setAccepted(self.h, accepted)

type QShortcutEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QShortcutEvent, slot: proc(super: QShortcutEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QShortcutEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcutEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QShortcutEvent_setAccepted(self: ptr cQShortcutEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QShortcutEvent_setAccepted ".} =
  type Cb = proc(super: QShortcutEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QShortcutEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QShortcutEvent) =
  fcQShortcutEvent_delete(self.h)

func init*(T: type QWindowStateChangeEvent, h: ptr cQWindowStateChangeEvent): QWindowStateChangeEvent =
  T(h: h)
proc create*(T: type QWindowStateChangeEvent, oldState: gen_qnamespace.WindowState): QWindowStateChangeEvent =

  QWindowStateChangeEvent.init(fcQWindowStateChangeEvent_new(cint(oldState)))
proc create*(T: type QWindowStateChangeEvent, oldState: gen_qnamespace.WindowState, isOverride: bool): QWindowStateChangeEvent =

  QWindowStateChangeEvent.init(fcQWindowStateChangeEvent_new2(cint(oldState), isOverride))
proc clone*(self: QWindowStateChangeEvent, ): QWindowStateChangeEvent =

  QWindowStateChangeEvent(h: fcQWindowStateChangeEvent_clone(self.h))

proc oldState*(self: QWindowStateChangeEvent, ): gen_qnamespace.WindowState =

  gen_qnamespace.WindowState(fcQWindowStateChangeEvent_oldState(self.h))

proc isOverride*(self: QWindowStateChangeEvent, ): bool =

  fcQWindowStateChangeEvent_isOverride(self.h)

proc callVirtualBase_clone(self: QWindowStateChangeEvent, ): QWindowStateChangeEvent =


  QWindowStateChangeEvent(h: fQWindowStateChangeEvent_virtualbase_clone(self.h))

type QWindowStateChangeEventcloneBase* = proc(): QWindowStateChangeEvent
proc onclone*(self: QWindowStateChangeEvent, slot: proc(super: QWindowStateChangeEventcloneBase): QWindowStateChangeEvent) =
  # TODO check subclass
  type Cb = proc(super: QWindowStateChangeEventcloneBase): QWindowStateChangeEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindowStateChangeEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindowStateChangeEvent_clone(self: ptr cQWindowStateChangeEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QWindowStateChangeEvent_clone ".} =
  type Cb = proc(super: QWindowStateChangeEventcloneBase): QWindowStateChangeEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QWindowStateChangeEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QWindowStateChangeEvent, accepted: bool): void =


  fQWindowStateChangeEvent_virtualbase_setAccepted(self.h, accepted)

type QWindowStateChangeEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QWindowStateChangeEvent, slot: proc(super: QWindowStateChangeEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QWindowStateChangeEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWindowStateChangeEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindowStateChangeEvent_setAccepted(self: ptr cQWindowStateChangeEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QWindowStateChangeEvent_setAccepted ".} =
  type Cb = proc(super: QWindowStateChangeEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QWindowStateChangeEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QWindowStateChangeEvent) =
  fcQWindowStateChangeEvent_delete(self.h)

func init*(T: type QTouchEvent, h: ptr cQTouchEvent): QTouchEvent =
  T(h: h)
proc create*(T: type QTouchEvent, eventType: gen_qcoreevent.QEventType): QTouchEvent =

  QTouchEvent.init(fcQTouchEvent_new(cint(eventType)))
proc create*(T: type QTouchEvent, eventType: gen_qcoreevent.QEventType, device: gen_qpointingdevice.QPointingDevice, modifiers: gen_qnamespace.KeyboardModifier, touchPointStates: gen_qeventpoint.QEventPointState): QTouchEvent =

  QTouchEvent.init(fcQTouchEvent_new2(cint(eventType), device.h, cint(modifiers), cint(touchPointStates)))
proc create*(T: type QTouchEvent, eventType: gen_qcoreevent.QEventType, device: gen_qpointingdevice.QPointingDevice): QTouchEvent =

  QTouchEvent.init(fcQTouchEvent_new3(cint(eventType), device.h))
proc create*(T: type QTouchEvent, eventType: gen_qcoreevent.QEventType, device: gen_qpointingdevice.QPointingDevice, modifiers: gen_qnamespace.KeyboardModifier): QTouchEvent =

  QTouchEvent.init(fcQTouchEvent_new4(cint(eventType), device.h, cint(modifiers)))
proc create*(T: type QTouchEvent, eventType: gen_qcoreevent.QEventType, device: gen_qpointingdevice.QPointingDevice, modifiers: gen_qnamespace.KeyboardModifier, touchPoints: seq[gen_qeventpoint.QEventPoint]): QTouchEvent =

  var touchPoints_CArray = newSeq[pointer](len(touchPoints))
  for i in 0..<len(touchPoints):
    touchPoints_CArray[i] = touchPoints[i].h

  QTouchEvent.init(fcQTouchEvent_new5(cint(eventType), device.h, cint(modifiers), struct_miqt_array(len: csize_t(len(touchPoints)), data: if len(touchPoints) == 0: nil else: addr(touchPoints_CArray[0]))))
proc create*(T: type QTouchEvent, eventType: gen_qcoreevent.QEventType, device: gen_qpointingdevice.QPointingDevice, modifiers: gen_qnamespace.KeyboardModifier, touchPointStates: gen_qeventpoint.QEventPointState, touchPoints: seq[gen_qeventpoint.QEventPoint]): QTouchEvent =

  var touchPoints_CArray = newSeq[pointer](len(touchPoints))
  for i in 0..<len(touchPoints):
    touchPoints_CArray[i] = touchPoints[i].h

  QTouchEvent.init(fcQTouchEvent_new6(cint(eventType), device.h, cint(modifiers), cint(touchPointStates), struct_miqt_array(len: csize_t(len(touchPoints)), data: if len(touchPoints) == 0: nil else: addr(touchPoints_CArray[0]))))
proc clone*(self: QTouchEvent, ): QTouchEvent =

  QTouchEvent(h: fcQTouchEvent_clone(self.h))

proc target*(self: QTouchEvent, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQTouchEvent_target(self.h))

proc touchPointStates*(self: QTouchEvent, ): gen_qeventpoint.QEventPointState =

  gen_qeventpoint.QEventPointState(fcQTouchEvent_touchPointStates(self.h))

proc touchPoints*(self: QTouchEvent, ): seq[gen_qeventpoint.QEventPoint] =

  var v_ma = fcQTouchEvent_touchPoints(self.h)
  var vx_ret = newSeq[gen_qeventpoint.QEventPoint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qeventpoint.QEventPoint(h: v_outCast[i])
  vx_ret

proc isBeginEvent*(self: QTouchEvent, ): bool =

  fcQTouchEvent_isBeginEvent(self.h)

proc isUpdateEvent*(self: QTouchEvent, ): bool =

  fcQTouchEvent_isUpdateEvent(self.h)

proc isEndEvent*(self: QTouchEvent, ): bool =

  fcQTouchEvent_isEndEvent(self.h)

proc callVirtualBase_clone(self: QTouchEvent, ): QTouchEvent =


  QTouchEvent(h: fQTouchEvent_virtualbase_clone(self.h))

type QTouchEventcloneBase* = proc(): QTouchEvent
proc onclone*(self: QTouchEvent, slot: proc(super: QTouchEventcloneBase): QTouchEvent) =
  # TODO check subclass
  type Cb = proc(super: QTouchEventcloneBase): QTouchEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTouchEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTouchEvent_clone(self: ptr cQTouchEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QTouchEvent_clone ".} =
  type Cb = proc(super: QTouchEventcloneBase): QTouchEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QTouchEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_isBeginEvent(self: QTouchEvent, ): bool =


  fQTouchEvent_virtualbase_isBeginEvent(self.h)

type QTouchEventisBeginEventBase* = proc(): bool
proc onisBeginEvent*(self: QTouchEvent, slot: proc(super: QTouchEventisBeginEventBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QTouchEventisBeginEventBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTouchEvent_override_virtual_isBeginEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTouchEvent_isBeginEvent(self: ptr cQTouchEvent, slot: int): bool {.exportc: "miqt_exec_callback_QTouchEvent_isBeginEvent ".} =
  type Cb = proc(super: QTouchEventisBeginEventBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isBeginEvent(QTouchEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_isUpdateEvent(self: QTouchEvent, ): bool =


  fQTouchEvent_virtualbase_isUpdateEvent(self.h)

type QTouchEventisUpdateEventBase* = proc(): bool
proc onisUpdateEvent*(self: QTouchEvent, slot: proc(super: QTouchEventisUpdateEventBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QTouchEventisUpdateEventBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTouchEvent_override_virtual_isUpdateEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTouchEvent_isUpdateEvent(self: ptr cQTouchEvent, slot: int): bool {.exportc: "miqt_exec_callback_QTouchEvent_isUpdateEvent ".} =
  type Cb = proc(super: QTouchEventisUpdateEventBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isUpdateEvent(QTouchEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_isEndEvent(self: QTouchEvent, ): bool =


  fQTouchEvent_virtualbase_isEndEvent(self.h)

type QTouchEventisEndEventBase* = proc(): bool
proc onisEndEvent*(self: QTouchEvent, slot: proc(super: QTouchEventisEndEventBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QTouchEventisEndEventBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTouchEvent_override_virtual_isEndEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTouchEvent_isEndEvent(self: ptr cQTouchEvent, slot: int): bool {.exportc: "miqt_exec_callback_QTouchEvent_isEndEvent ".} =
  type Cb = proc(super: QTouchEventisEndEventBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isEndEvent(QTouchEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setTimestamp(self: QTouchEvent, timestamp: culonglong): void =


  fQTouchEvent_virtualbase_setTimestamp(self.h, timestamp)

type QTouchEventsetTimestampBase* = proc(timestamp: culonglong): void
proc onsetTimestamp*(self: QTouchEvent, slot: proc(super: QTouchEventsetTimestampBase, timestamp: culonglong): void) =
  # TODO check subclass
  type Cb = proc(super: QTouchEventsetTimestampBase, timestamp: culonglong): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTouchEvent_override_virtual_setTimestamp(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTouchEvent_setTimestamp(self: ptr cQTouchEvent, slot: int, timestamp: culonglong): void {.exportc: "miqt_exec_callback_QTouchEvent_setTimestamp ".} =
  type Cb = proc(super: QTouchEventsetTimestampBase, timestamp: culonglong): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(timestamp: culonglong): auto =
    callVirtualBase_setTimestamp(QTouchEvent(h: self), timestamp)
  let slotval1 = timestamp


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setAccepted(self: QTouchEvent, accepted: bool): void =


  fQTouchEvent_virtualbase_setAccepted(self.h, accepted)

type QTouchEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QTouchEvent, slot: proc(super: QTouchEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QTouchEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTouchEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTouchEvent_setAccepted(self: ptr cQTouchEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QTouchEvent_setAccepted ".} =
  type Cb = proc(super: QTouchEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QTouchEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QTouchEvent) =
  fcQTouchEvent_delete(self.h)

func init*(T: type QScrollPrepareEvent, h: ptr cQScrollPrepareEvent): QScrollPrepareEvent =
  T(h: h)
proc create*(T: type QScrollPrepareEvent, startPos: gen_qpoint.QPointF): QScrollPrepareEvent =

  QScrollPrepareEvent.init(fcQScrollPrepareEvent_new(startPos.h))
proc clone*(self: QScrollPrepareEvent, ): QScrollPrepareEvent =

  QScrollPrepareEvent(h: fcQScrollPrepareEvent_clone(self.h))

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

proc callVirtualBase_clone(self: QScrollPrepareEvent, ): QScrollPrepareEvent =


  QScrollPrepareEvent(h: fQScrollPrepareEvent_virtualbase_clone(self.h))

type QScrollPrepareEventcloneBase* = proc(): QScrollPrepareEvent
proc onclone*(self: QScrollPrepareEvent, slot: proc(super: QScrollPrepareEventcloneBase): QScrollPrepareEvent) =
  # TODO check subclass
  type Cb = proc(super: QScrollPrepareEventcloneBase): QScrollPrepareEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollPrepareEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollPrepareEvent_clone(self: ptr cQScrollPrepareEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QScrollPrepareEvent_clone ".} =
  type Cb = proc(super: QScrollPrepareEventcloneBase): QScrollPrepareEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QScrollPrepareEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QScrollPrepareEvent, accepted: bool): void =


  fQScrollPrepareEvent_virtualbase_setAccepted(self.h, accepted)

type QScrollPrepareEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QScrollPrepareEvent, slot: proc(super: QScrollPrepareEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollPrepareEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollPrepareEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollPrepareEvent_setAccepted(self: ptr cQScrollPrepareEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QScrollPrepareEvent_setAccepted ".} =
  type Cb = proc(super: QScrollPrepareEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QScrollPrepareEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QScrollPrepareEvent) =
  fcQScrollPrepareEvent_delete(self.h)

func init*(T: type QScrollEvent, h: ptr cQScrollEvent): QScrollEvent =
  T(h: h)
proc create*(T: type QScrollEvent, contentPos: gen_qpoint.QPointF, overshoot: gen_qpoint.QPointF, scrollState: QScrollEventScrollState): QScrollEvent =

  QScrollEvent.init(fcQScrollEvent_new(contentPos.h, overshoot.h, cint(scrollState)))
proc clone*(self: QScrollEvent, ): QScrollEvent =

  QScrollEvent(h: fcQScrollEvent_clone(self.h))

proc contentPos*(self: QScrollEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQScrollEvent_contentPos(self.h))

proc overshootDistance*(self: QScrollEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQScrollEvent_overshootDistance(self.h))

proc scrollState*(self: QScrollEvent, ): QScrollEventScrollState =

  QScrollEventScrollState(fcQScrollEvent_scrollState(self.h))

proc callVirtualBase_clone(self: QScrollEvent, ): QScrollEvent =


  QScrollEvent(h: fQScrollEvent_virtualbase_clone(self.h))

type QScrollEventcloneBase* = proc(): QScrollEvent
proc onclone*(self: QScrollEvent, slot: proc(super: QScrollEventcloneBase): QScrollEvent) =
  # TODO check subclass
  type Cb = proc(super: QScrollEventcloneBase): QScrollEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollEvent_clone(self: ptr cQScrollEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QScrollEvent_clone ".} =
  type Cb = proc(super: QScrollEventcloneBase): QScrollEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QScrollEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QScrollEvent, accepted: bool): void =


  fQScrollEvent_virtualbase_setAccepted(self.h, accepted)

type QScrollEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QScrollEvent, slot: proc(super: QScrollEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QScrollEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollEvent_setAccepted(self: ptr cQScrollEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QScrollEvent_setAccepted ".} =
  type Cb = proc(super: QScrollEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QScrollEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QScrollEvent) =
  fcQScrollEvent_delete(self.h)

func init*(T: type QScreenOrientationChangeEvent, h: ptr cQScreenOrientationChangeEvent): QScreenOrientationChangeEvent =
  T(h: h)
proc create*(T: type QScreenOrientationChangeEvent, screen: gen_qscreen.QScreen, orientation: gen_qnamespace.ScreenOrientation): QScreenOrientationChangeEvent =

  QScreenOrientationChangeEvent.init(fcQScreenOrientationChangeEvent_new(screen.h, cint(orientation)))
proc clone*(self: QScreenOrientationChangeEvent, ): QScreenOrientationChangeEvent =

  QScreenOrientationChangeEvent(h: fcQScreenOrientationChangeEvent_clone(self.h))

proc screen*(self: QScreenOrientationChangeEvent, ): gen_qscreen.QScreen =

  gen_qscreen.QScreen(h: fcQScreenOrientationChangeEvent_screen(self.h))

proc orientation*(self: QScreenOrientationChangeEvent, ): gen_qnamespace.ScreenOrientation =

  gen_qnamespace.ScreenOrientation(fcQScreenOrientationChangeEvent_orientation(self.h))

proc callVirtualBase_clone(self: QScreenOrientationChangeEvent, ): QScreenOrientationChangeEvent =


  QScreenOrientationChangeEvent(h: fQScreenOrientationChangeEvent_virtualbase_clone(self.h))

type QScreenOrientationChangeEventcloneBase* = proc(): QScreenOrientationChangeEvent
proc onclone*(self: QScreenOrientationChangeEvent, slot: proc(super: QScreenOrientationChangeEventcloneBase): QScreenOrientationChangeEvent) =
  # TODO check subclass
  type Cb = proc(super: QScreenOrientationChangeEventcloneBase): QScreenOrientationChangeEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScreenOrientationChangeEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScreenOrientationChangeEvent_clone(self: ptr cQScreenOrientationChangeEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QScreenOrientationChangeEvent_clone ".} =
  type Cb = proc(super: QScreenOrientationChangeEventcloneBase): QScreenOrientationChangeEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QScreenOrientationChangeEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QScreenOrientationChangeEvent, accepted: bool): void =


  fQScreenOrientationChangeEvent_virtualbase_setAccepted(self.h, accepted)

type QScreenOrientationChangeEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QScreenOrientationChangeEvent, slot: proc(super: QScreenOrientationChangeEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QScreenOrientationChangeEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScreenOrientationChangeEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScreenOrientationChangeEvent_setAccepted(self: ptr cQScreenOrientationChangeEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QScreenOrientationChangeEvent_setAccepted ".} =
  type Cb = proc(super: QScreenOrientationChangeEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QScreenOrientationChangeEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QScreenOrientationChangeEvent) =
  fcQScreenOrientationChangeEvent_delete(self.h)

func init*(T: type QApplicationStateChangeEvent, h: ptr cQApplicationStateChangeEvent): QApplicationStateChangeEvent =
  T(h: h)
proc create*(T: type QApplicationStateChangeEvent, state: gen_qnamespace.ApplicationState): QApplicationStateChangeEvent =

  QApplicationStateChangeEvent.init(fcQApplicationStateChangeEvent_new(cint(state)))
proc clone*(self: QApplicationStateChangeEvent, ): QApplicationStateChangeEvent =

  QApplicationStateChangeEvent(h: fcQApplicationStateChangeEvent_clone(self.h))

proc applicationState*(self: QApplicationStateChangeEvent, ): gen_qnamespace.ApplicationState =

  gen_qnamespace.ApplicationState(fcQApplicationStateChangeEvent_applicationState(self.h))

proc callVirtualBase_clone(self: QApplicationStateChangeEvent, ): QApplicationStateChangeEvent =


  QApplicationStateChangeEvent(h: fQApplicationStateChangeEvent_virtualbase_clone(self.h))

type QApplicationStateChangeEventcloneBase* = proc(): QApplicationStateChangeEvent
proc onclone*(self: QApplicationStateChangeEvent, slot: proc(super: QApplicationStateChangeEventcloneBase): QApplicationStateChangeEvent) =
  # TODO check subclass
  type Cb = proc(super: QApplicationStateChangeEventcloneBase): QApplicationStateChangeEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQApplicationStateChangeEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QApplicationStateChangeEvent_clone(self: ptr cQApplicationStateChangeEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QApplicationStateChangeEvent_clone ".} =
  type Cb = proc(super: QApplicationStateChangeEventcloneBase): QApplicationStateChangeEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QApplicationStateChangeEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QApplicationStateChangeEvent, accepted: bool): void =


  fQApplicationStateChangeEvent_virtualbase_setAccepted(self.h, accepted)

type QApplicationStateChangeEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QApplicationStateChangeEvent, slot: proc(super: QApplicationStateChangeEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QApplicationStateChangeEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQApplicationStateChangeEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QApplicationStateChangeEvent_setAccepted(self: ptr cQApplicationStateChangeEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QApplicationStateChangeEvent_setAccepted ".} =
  type Cb = proc(super: QApplicationStateChangeEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QApplicationStateChangeEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
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
