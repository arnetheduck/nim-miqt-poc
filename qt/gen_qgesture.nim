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
{.compile("gen_qgesture.cpp", cflags).}


type QGestureGestureCancelPolicy* = cint
const
  QGestureCancelNone* = 0
  QGestureCancelAllInContext* = 1



type QPinchGestureChangeFlag* = cint
const
  QPinchGestureScaleFactorChanged* = 1
  QPinchGestureRotationAngleChanged* = 2
  QPinchGestureCenterPointChanged* = 4



type QSwipeGestureSwipeDirection* = cint
const
  QSwipeGestureNoDirection* = 0
  QSwipeGestureLeft* = 1
  QSwipeGestureRight* = 2
  QSwipeGestureUp* = 3
  QSwipeGestureDown* = 4



import gen_qgesture_types
export gen_qgesture_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpoint,
  gen_qwidget
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpoint,
  gen_qwidget

type cQGesture*{.exportc: "QGesture", incompleteStruct.} = object
type cQPanGesture*{.exportc: "QPanGesture", incompleteStruct.} = object
type cQPinchGesture*{.exportc: "QPinchGesture", incompleteStruct.} = object
type cQSwipeGesture*{.exportc: "QSwipeGesture", incompleteStruct.} = object
type cQTapGesture*{.exportc: "QTapGesture", incompleteStruct.} = object
type cQTapAndHoldGesture*{.exportc: "QTapAndHoldGesture", incompleteStruct.} = object
type cQGestureEvent*{.exportc: "QGestureEvent", incompleteStruct.} = object

proc fcQGesture_new(): ptr cQGesture {.importc: "QGesture_new".}
proc fcQGesture_new2(parent: pointer): ptr cQGesture {.importc: "QGesture_new2".}
proc fcQGesture_metaObject(self: pointer, ): pointer {.importc: "QGesture_metaObject".}
proc fcQGesture_metacast(self: pointer, param1: cstring): pointer {.importc: "QGesture_metacast".}
proc fcQGesture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGesture_metacall".}
proc fcQGesture_tr(s: cstring): struct_miqt_string {.importc: "QGesture_tr".}
proc fcQGesture_trUtf8(s: cstring): struct_miqt_string {.importc: "QGesture_trUtf8".}
proc fcQGesture_gestureType(self: pointer, ): cint {.importc: "QGesture_gestureType".}
proc fcQGesture_state(self: pointer, ): cint {.importc: "QGesture_state".}
proc fcQGesture_hotSpot(self: pointer, ): pointer {.importc: "QGesture_hotSpot".}
proc fcQGesture_setHotSpot(self: pointer, value: pointer): void {.importc: "QGesture_setHotSpot".}
proc fcQGesture_hasHotSpot(self: pointer, ): bool {.importc: "QGesture_hasHotSpot".}
proc fcQGesture_unsetHotSpot(self: pointer, ): void {.importc: "QGesture_unsetHotSpot".}
proc fcQGesture_setGestureCancelPolicy(self: pointer, policy: cint): void {.importc: "QGesture_setGestureCancelPolicy".}
proc fcQGesture_gestureCancelPolicy(self: pointer, ): cint {.importc: "QGesture_gestureCancelPolicy".}
proc fcQGesture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGesture_tr2".}
proc fcQGesture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGesture_tr3".}
proc fcQGesture_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGesture_trUtf82".}
proc fcQGesture_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGesture_trUtf83".}
proc fQGesture_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QGesture_virtualbase_metaObject".}
proc fcQGesture_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QGesture_override_virtual_metaObject".}
proc fQGesture_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QGesture_virtualbase_metacast".}
proc fcQGesture_override_virtual_metacast(self: pointer, slot: int) {.importc: "QGesture_override_virtual_metacast".}
proc fQGesture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGesture_virtualbase_metacall".}
proc fcQGesture_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGesture_override_virtual_metacall".}
proc fQGesture_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGesture_virtualbase_event".}
proc fcQGesture_override_virtual_event(self: pointer, slot: int) {.importc: "QGesture_override_virtual_event".}
proc fQGesture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGesture_virtualbase_eventFilter".}
proc fcQGesture_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGesture_override_virtual_eventFilter".}
proc fQGesture_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGesture_virtualbase_timerEvent".}
proc fcQGesture_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGesture_override_virtual_timerEvent".}
proc fQGesture_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGesture_virtualbase_childEvent".}
proc fcQGesture_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGesture_override_virtual_childEvent".}
proc fQGesture_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGesture_virtualbase_customEvent".}
proc fcQGesture_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGesture_override_virtual_customEvent".}
proc fQGesture_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGesture_virtualbase_connectNotify".}
proc fcQGesture_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGesture_override_virtual_connectNotify".}
proc fQGesture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGesture_virtualbase_disconnectNotify".}
proc fcQGesture_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGesture_override_virtual_disconnectNotify".}
proc fcQGesture_staticMetaObject(): pointer {.importc: "QGesture_staticMetaObject".}
proc fcQGesture_delete(self: pointer) {.importc: "QGesture_delete".}
proc fcQPanGesture_new(): ptr cQPanGesture {.importc: "QPanGesture_new".}
proc fcQPanGesture_new2(parent: pointer): ptr cQPanGesture {.importc: "QPanGesture_new2".}
proc fcQPanGesture_metaObject(self: pointer, ): pointer {.importc: "QPanGesture_metaObject".}
proc fcQPanGesture_metacast(self: pointer, param1: cstring): pointer {.importc: "QPanGesture_metacast".}
proc fcQPanGesture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPanGesture_metacall".}
proc fcQPanGesture_tr(s: cstring): struct_miqt_string {.importc: "QPanGesture_tr".}
proc fcQPanGesture_trUtf8(s: cstring): struct_miqt_string {.importc: "QPanGesture_trUtf8".}
proc fcQPanGesture_lastOffset(self: pointer, ): pointer {.importc: "QPanGesture_lastOffset".}
proc fcQPanGesture_offset(self: pointer, ): pointer {.importc: "QPanGesture_offset".}
proc fcQPanGesture_delta(self: pointer, ): pointer {.importc: "QPanGesture_delta".}
proc fcQPanGesture_acceleration(self: pointer, ): float64 {.importc: "QPanGesture_acceleration".}
proc fcQPanGesture_setLastOffset(self: pointer, value: pointer): void {.importc: "QPanGesture_setLastOffset".}
proc fcQPanGesture_setOffset(self: pointer, value: pointer): void {.importc: "QPanGesture_setOffset".}
proc fcQPanGesture_setAcceleration(self: pointer, value: float64): void {.importc: "QPanGesture_setAcceleration".}
proc fcQPanGesture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPanGesture_tr2".}
proc fcQPanGesture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPanGesture_tr3".}
proc fcQPanGesture_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QPanGesture_trUtf82".}
proc fcQPanGesture_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPanGesture_trUtf83".}
proc fQPanGesture_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QPanGesture_virtualbase_metaObject".}
proc fcQPanGesture_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QPanGesture_override_virtual_metaObject".}
proc fQPanGesture_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QPanGesture_virtualbase_metacast".}
proc fcQPanGesture_override_virtual_metacast(self: pointer, slot: int) {.importc: "QPanGesture_override_virtual_metacast".}
proc fQPanGesture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QPanGesture_virtualbase_metacall".}
proc fcQPanGesture_override_virtual_metacall(self: pointer, slot: int) {.importc: "QPanGesture_override_virtual_metacall".}
proc fQPanGesture_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QPanGesture_virtualbase_event".}
proc fcQPanGesture_override_virtual_event(self: pointer, slot: int) {.importc: "QPanGesture_override_virtual_event".}
proc fQPanGesture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QPanGesture_virtualbase_eventFilter".}
proc fcQPanGesture_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QPanGesture_override_virtual_eventFilter".}
proc fQPanGesture_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QPanGesture_virtualbase_timerEvent".}
proc fcQPanGesture_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QPanGesture_override_virtual_timerEvent".}
proc fQPanGesture_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QPanGesture_virtualbase_childEvent".}
proc fcQPanGesture_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QPanGesture_override_virtual_childEvent".}
proc fQPanGesture_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QPanGesture_virtualbase_customEvent".}
proc fcQPanGesture_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QPanGesture_override_virtual_customEvent".}
proc fQPanGesture_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QPanGesture_virtualbase_connectNotify".}
proc fcQPanGesture_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QPanGesture_override_virtual_connectNotify".}
proc fQPanGesture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QPanGesture_virtualbase_disconnectNotify".}
proc fcQPanGesture_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QPanGesture_override_virtual_disconnectNotify".}
proc fcQPanGesture_staticMetaObject(): pointer {.importc: "QPanGesture_staticMetaObject".}
proc fcQPanGesture_delete(self: pointer) {.importc: "QPanGesture_delete".}
proc fcQPinchGesture_new(): ptr cQPinchGesture {.importc: "QPinchGesture_new".}
proc fcQPinchGesture_new2(parent: pointer): ptr cQPinchGesture {.importc: "QPinchGesture_new2".}
proc fcQPinchGesture_metaObject(self: pointer, ): pointer {.importc: "QPinchGesture_metaObject".}
proc fcQPinchGesture_metacast(self: pointer, param1: cstring): pointer {.importc: "QPinchGesture_metacast".}
proc fcQPinchGesture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPinchGesture_metacall".}
proc fcQPinchGesture_tr(s: cstring): struct_miqt_string {.importc: "QPinchGesture_tr".}
proc fcQPinchGesture_trUtf8(s: cstring): struct_miqt_string {.importc: "QPinchGesture_trUtf8".}
proc fcQPinchGesture_totalChangeFlags(self: pointer, ): cint {.importc: "QPinchGesture_totalChangeFlags".}
proc fcQPinchGesture_setTotalChangeFlags(self: pointer, value: cint): void {.importc: "QPinchGesture_setTotalChangeFlags".}
proc fcQPinchGesture_changeFlags(self: pointer, ): cint {.importc: "QPinchGesture_changeFlags".}
proc fcQPinchGesture_setChangeFlags(self: pointer, value: cint): void {.importc: "QPinchGesture_setChangeFlags".}
proc fcQPinchGesture_startCenterPoint(self: pointer, ): pointer {.importc: "QPinchGesture_startCenterPoint".}
proc fcQPinchGesture_lastCenterPoint(self: pointer, ): pointer {.importc: "QPinchGesture_lastCenterPoint".}
proc fcQPinchGesture_centerPoint(self: pointer, ): pointer {.importc: "QPinchGesture_centerPoint".}
proc fcQPinchGesture_setStartCenterPoint(self: pointer, value: pointer): void {.importc: "QPinchGesture_setStartCenterPoint".}
proc fcQPinchGesture_setLastCenterPoint(self: pointer, value: pointer): void {.importc: "QPinchGesture_setLastCenterPoint".}
proc fcQPinchGesture_setCenterPoint(self: pointer, value: pointer): void {.importc: "QPinchGesture_setCenterPoint".}
proc fcQPinchGesture_totalScaleFactor(self: pointer, ): float64 {.importc: "QPinchGesture_totalScaleFactor".}
proc fcQPinchGesture_lastScaleFactor(self: pointer, ): float64 {.importc: "QPinchGesture_lastScaleFactor".}
proc fcQPinchGesture_scaleFactor(self: pointer, ): float64 {.importc: "QPinchGesture_scaleFactor".}
proc fcQPinchGesture_setTotalScaleFactor(self: pointer, value: float64): void {.importc: "QPinchGesture_setTotalScaleFactor".}
proc fcQPinchGesture_setLastScaleFactor(self: pointer, value: float64): void {.importc: "QPinchGesture_setLastScaleFactor".}
proc fcQPinchGesture_setScaleFactor(self: pointer, value: float64): void {.importc: "QPinchGesture_setScaleFactor".}
proc fcQPinchGesture_totalRotationAngle(self: pointer, ): float64 {.importc: "QPinchGesture_totalRotationAngle".}
proc fcQPinchGesture_lastRotationAngle(self: pointer, ): float64 {.importc: "QPinchGesture_lastRotationAngle".}
proc fcQPinchGesture_rotationAngle(self: pointer, ): float64 {.importc: "QPinchGesture_rotationAngle".}
proc fcQPinchGesture_setTotalRotationAngle(self: pointer, value: float64): void {.importc: "QPinchGesture_setTotalRotationAngle".}
proc fcQPinchGesture_setLastRotationAngle(self: pointer, value: float64): void {.importc: "QPinchGesture_setLastRotationAngle".}
proc fcQPinchGesture_setRotationAngle(self: pointer, value: float64): void {.importc: "QPinchGesture_setRotationAngle".}
proc fcQPinchGesture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPinchGesture_tr2".}
proc fcQPinchGesture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPinchGesture_tr3".}
proc fcQPinchGesture_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QPinchGesture_trUtf82".}
proc fcQPinchGesture_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPinchGesture_trUtf83".}
proc fQPinchGesture_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QPinchGesture_virtualbase_metaObject".}
proc fcQPinchGesture_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QPinchGesture_override_virtual_metaObject".}
proc fQPinchGesture_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QPinchGesture_virtualbase_metacast".}
proc fcQPinchGesture_override_virtual_metacast(self: pointer, slot: int) {.importc: "QPinchGesture_override_virtual_metacast".}
proc fQPinchGesture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QPinchGesture_virtualbase_metacall".}
proc fcQPinchGesture_override_virtual_metacall(self: pointer, slot: int) {.importc: "QPinchGesture_override_virtual_metacall".}
proc fQPinchGesture_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QPinchGesture_virtualbase_event".}
proc fcQPinchGesture_override_virtual_event(self: pointer, slot: int) {.importc: "QPinchGesture_override_virtual_event".}
proc fQPinchGesture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QPinchGesture_virtualbase_eventFilter".}
proc fcQPinchGesture_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QPinchGesture_override_virtual_eventFilter".}
proc fQPinchGesture_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QPinchGesture_virtualbase_timerEvent".}
proc fcQPinchGesture_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QPinchGesture_override_virtual_timerEvent".}
proc fQPinchGesture_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QPinchGesture_virtualbase_childEvent".}
proc fcQPinchGesture_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QPinchGesture_override_virtual_childEvent".}
proc fQPinchGesture_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QPinchGesture_virtualbase_customEvent".}
proc fcQPinchGesture_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QPinchGesture_override_virtual_customEvent".}
proc fQPinchGesture_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QPinchGesture_virtualbase_connectNotify".}
proc fcQPinchGesture_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QPinchGesture_override_virtual_connectNotify".}
proc fQPinchGesture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QPinchGesture_virtualbase_disconnectNotify".}
proc fcQPinchGesture_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QPinchGesture_override_virtual_disconnectNotify".}
proc fcQPinchGesture_staticMetaObject(): pointer {.importc: "QPinchGesture_staticMetaObject".}
proc fcQPinchGesture_delete(self: pointer) {.importc: "QPinchGesture_delete".}
proc fcQSwipeGesture_new(): ptr cQSwipeGesture {.importc: "QSwipeGesture_new".}
proc fcQSwipeGesture_new2(parent: pointer): ptr cQSwipeGesture {.importc: "QSwipeGesture_new2".}
proc fcQSwipeGesture_metaObject(self: pointer, ): pointer {.importc: "QSwipeGesture_metaObject".}
proc fcQSwipeGesture_metacast(self: pointer, param1: cstring): pointer {.importc: "QSwipeGesture_metacast".}
proc fcQSwipeGesture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSwipeGesture_metacall".}
proc fcQSwipeGesture_tr(s: cstring): struct_miqt_string {.importc: "QSwipeGesture_tr".}
proc fcQSwipeGesture_trUtf8(s: cstring): struct_miqt_string {.importc: "QSwipeGesture_trUtf8".}
proc fcQSwipeGesture_horizontalDirection(self: pointer, ): cint {.importc: "QSwipeGesture_horizontalDirection".}
proc fcQSwipeGesture_verticalDirection(self: pointer, ): cint {.importc: "QSwipeGesture_verticalDirection".}
proc fcQSwipeGesture_swipeAngle(self: pointer, ): float64 {.importc: "QSwipeGesture_swipeAngle".}
proc fcQSwipeGesture_setSwipeAngle(self: pointer, value: float64): void {.importc: "QSwipeGesture_setSwipeAngle".}
proc fcQSwipeGesture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSwipeGesture_tr2".}
proc fcQSwipeGesture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSwipeGesture_tr3".}
proc fcQSwipeGesture_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSwipeGesture_trUtf82".}
proc fcQSwipeGesture_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSwipeGesture_trUtf83".}
proc fQSwipeGesture_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QSwipeGesture_virtualbase_metaObject".}
proc fcQSwipeGesture_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QSwipeGesture_override_virtual_metaObject".}
proc fQSwipeGesture_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QSwipeGesture_virtualbase_metacast".}
proc fcQSwipeGesture_override_virtual_metacast(self: pointer, slot: int) {.importc: "QSwipeGesture_override_virtual_metacast".}
proc fQSwipeGesture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSwipeGesture_virtualbase_metacall".}
proc fcQSwipeGesture_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSwipeGesture_override_virtual_metacall".}
proc fQSwipeGesture_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSwipeGesture_virtualbase_event".}
proc fcQSwipeGesture_override_virtual_event(self: pointer, slot: int) {.importc: "QSwipeGesture_override_virtual_event".}
proc fQSwipeGesture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSwipeGesture_virtualbase_eventFilter".}
proc fcQSwipeGesture_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSwipeGesture_override_virtual_eventFilter".}
proc fQSwipeGesture_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSwipeGesture_virtualbase_timerEvent".}
proc fcQSwipeGesture_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSwipeGesture_override_virtual_timerEvent".}
proc fQSwipeGesture_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSwipeGesture_virtualbase_childEvent".}
proc fcQSwipeGesture_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSwipeGesture_override_virtual_childEvent".}
proc fQSwipeGesture_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSwipeGesture_virtualbase_customEvent".}
proc fcQSwipeGesture_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSwipeGesture_override_virtual_customEvent".}
proc fQSwipeGesture_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSwipeGesture_virtualbase_connectNotify".}
proc fcQSwipeGesture_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSwipeGesture_override_virtual_connectNotify".}
proc fQSwipeGesture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSwipeGesture_virtualbase_disconnectNotify".}
proc fcQSwipeGesture_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSwipeGesture_override_virtual_disconnectNotify".}
proc fcQSwipeGesture_staticMetaObject(): pointer {.importc: "QSwipeGesture_staticMetaObject".}
proc fcQSwipeGesture_delete(self: pointer) {.importc: "QSwipeGesture_delete".}
proc fcQTapGesture_new(): ptr cQTapGesture {.importc: "QTapGesture_new".}
proc fcQTapGesture_new2(parent: pointer): ptr cQTapGesture {.importc: "QTapGesture_new2".}
proc fcQTapGesture_metaObject(self: pointer, ): pointer {.importc: "QTapGesture_metaObject".}
proc fcQTapGesture_metacast(self: pointer, param1: cstring): pointer {.importc: "QTapGesture_metacast".}
proc fcQTapGesture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTapGesture_metacall".}
proc fcQTapGesture_tr(s: cstring): struct_miqt_string {.importc: "QTapGesture_tr".}
proc fcQTapGesture_trUtf8(s: cstring): struct_miqt_string {.importc: "QTapGesture_trUtf8".}
proc fcQTapGesture_position(self: pointer, ): pointer {.importc: "QTapGesture_position".}
proc fcQTapGesture_setPosition(self: pointer, pos: pointer): void {.importc: "QTapGesture_setPosition".}
proc fcQTapGesture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTapGesture_tr2".}
proc fcQTapGesture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTapGesture_tr3".}
proc fcQTapGesture_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTapGesture_trUtf82".}
proc fcQTapGesture_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTapGesture_trUtf83".}
proc fQTapGesture_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QTapGesture_virtualbase_metaObject".}
proc fcQTapGesture_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QTapGesture_override_virtual_metaObject".}
proc fQTapGesture_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QTapGesture_virtualbase_metacast".}
proc fcQTapGesture_override_virtual_metacast(self: pointer, slot: int) {.importc: "QTapGesture_override_virtual_metacast".}
proc fQTapGesture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTapGesture_virtualbase_metacall".}
proc fcQTapGesture_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTapGesture_override_virtual_metacall".}
proc fQTapGesture_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTapGesture_virtualbase_event".}
proc fcQTapGesture_override_virtual_event(self: pointer, slot: int) {.importc: "QTapGesture_override_virtual_event".}
proc fQTapGesture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTapGesture_virtualbase_eventFilter".}
proc fcQTapGesture_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTapGesture_override_virtual_eventFilter".}
proc fQTapGesture_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTapGesture_virtualbase_timerEvent".}
proc fcQTapGesture_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTapGesture_override_virtual_timerEvent".}
proc fQTapGesture_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTapGesture_virtualbase_childEvent".}
proc fcQTapGesture_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTapGesture_override_virtual_childEvent".}
proc fQTapGesture_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTapGesture_virtualbase_customEvent".}
proc fcQTapGesture_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTapGesture_override_virtual_customEvent".}
proc fQTapGesture_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTapGesture_virtualbase_connectNotify".}
proc fcQTapGesture_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTapGesture_override_virtual_connectNotify".}
proc fQTapGesture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTapGesture_virtualbase_disconnectNotify".}
proc fcQTapGesture_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTapGesture_override_virtual_disconnectNotify".}
proc fcQTapGesture_staticMetaObject(): pointer {.importc: "QTapGesture_staticMetaObject".}
proc fcQTapGesture_delete(self: pointer) {.importc: "QTapGesture_delete".}
proc fcQTapAndHoldGesture_new(): ptr cQTapAndHoldGesture {.importc: "QTapAndHoldGesture_new".}
proc fcQTapAndHoldGesture_new2(parent: pointer): ptr cQTapAndHoldGesture {.importc: "QTapAndHoldGesture_new2".}
proc fcQTapAndHoldGesture_metaObject(self: pointer, ): pointer {.importc: "QTapAndHoldGesture_metaObject".}
proc fcQTapAndHoldGesture_metacast(self: pointer, param1: cstring): pointer {.importc: "QTapAndHoldGesture_metacast".}
proc fcQTapAndHoldGesture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTapAndHoldGesture_metacall".}
proc fcQTapAndHoldGesture_tr(s: cstring): struct_miqt_string {.importc: "QTapAndHoldGesture_tr".}
proc fcQTapAndHoldGesture_trUtf8(s: cstring): struct_miqt_string {.importc: "QTapAndHoldGesture_trUtf8".}
proc fcQTapAndHoldGesture_position(self: pointer, ): pointer {.importc: "QTapAndHoldGesture_position".}
proc fcQTapAndHoldGesture_setPosition(self: pointer, pos: pointer): void {.importc: "QTapAndHoldGesture_setPosition".}
proc fcQTapAndHoldGesture_setTimeout(msecs: cint): void {.importc: "QTapAndHoldGesture_setTimeout".}
proc fcQTapAndHoldGesture_timeout(): cint {.importc: "QTapAndHoldGesture_timeout".}
proc fcQTapAndHoldGesture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTapAndHoldGesture_tr2".}
proc fcQTapAndHoldGesture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTapAndHoldGesture_tr3".}
proc fcQTapAndHoldGesture_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTapAndHoldGesture_trUtf82".}
proc fcQTapAndHoldGesture_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTapAndHoldGesture_trUtf83".}
proc fQTapAndHoldGesture_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QTapAndHoldGesture_virtualbase_metaObject".}
proc fcQTapAndHoldGesture_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QTapAndHoldGesture_override_virtual_metaObject".}
proc fQTapAndHoldGesture_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QTapAndHoldGesture_virtualbase_metacast".}
proc fcQTapAndHoldGesture_override_virtual_metacast(self: pointer, slot: int) {.importc: "QTapAndHoldGesture_override_virtual_metacast".}
proc fQTapAndHoldGesture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTapAndHoldGesture_virtualbase_metacall".}
proc fcQTapAndHoldGesture_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTapAndHoldGesture_override_virtual_metacall".}
proc fQTapAndHoldGesture_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTapAndHoldGesture_virtualbase_event".}
proc fcQTapAndHoldGesture_override_virtual_event(self: pointer, slot: int) {.importc: "QTapAndHoldGesture_override_virtual_event".}
proc fQTapAndHoldGesture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTapAndHoldGesture_virtualbase_eventFilter".}
proc fcQTapAndHoldGesture_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTapAndHoldGesture_override_virtual_eventFilter".}
proc fQTapAndHoldGesture_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTapAndHoldGesture_virtualbase_timerEvent".}
proc fcQTapAndHoldGesture_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTapAndHoldGesture_override_virtual_timerEvent".}
proc fQTapAndHoldGesture_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTapAndHoldGesture_virtualbase_childEvent".}
proc fcQTapAndHoldGesture_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTapAndHoldGesture_override_virtual_childEvent".}
proc fQTapAndHoldGesture_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTapAndHoldGesture_virtualbase_customEvent".}
proc fcQTapAndHoldGesture_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTapAndHoldGesture_override_virtual_customEvent".}
proc fQTapAndHoldGesture_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTapAndHoldGesture_virtualbase_connectNotify".}
proc fcQTapAndHoldGesture_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTapAndHoldGesture_override_virtual_connectNotify".}
proc fQTapAndHoldGesture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTapAndHoldGesture_virtualbase_disconnectNotify".}
proc fcQTapAndHoldGesture_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTapAndHoldGesture_override_virtual_disconnectNotify".}
proc fcQTapAndHoldGesture_staticMetaObject(): pointer {.importc: "QTapAndHoldGesture_staticMetaObject".}
proc fcQTapAndHoldGesture_delete(self: pointer) {.importc: "QTapAndHoldGesture_delete".}
proc fcQGestureEvent_new(gestures: struct_miqt_array): ptr cQGestureEvent {.importc: "QGestureEvent_new".}
proc fcQGestureEvent_new2(param1: pointer): ptr cQGestureEvent {.importc: "QGestureEvent_new2".}
proc fcQGestureEvent_gestures(self: pointer, ): struct_miqt_array {.importc: "QGestureEvent_gestures".}
proc fcQGestureEvent_gesture(self: pointer, typeVal: cint): pointer {.importc: "QGestureEvent_gesture".}
proc fcQGestureEvent_activeGestures(self: pointer, ): struct_miqt_array {.importc: "QGestureEvent_activeGestures".}
proc fcQGestureEvent_canceledGestures(self: pointer, ): struct_miqt_array {.importc: "QGestureEvent_canceledGestures".}
proc fcQGestureEvent_setAccepted(self: pointer, param1: pointer, param2: bool): void {.importc: "QGestureEvent_setAccepted".}
proc fcQGestureEvent_accept(self: pointer, param1: pointer): void {.importc: "QGestureEvent_accept".}
proc fcQGestureEvent_ignore(self: pointer, param1: pointer): void {.importc: "QGestureEvent_ignore".}
proc fcQGestureEvent_isAccepted(self: pointer, param1: pointer): bool {.importc: "QGestureEvent_isAccepted".}
proc fcQGestureEvent_setAccepted2(self: pointer, param1: cint, param2: bool): void {.importc: "QGestureEvent_setAccepted2".}
proc fcQGestureEvent_acceptWithQtGestureType(self: pointer, param1: cint): void {.importc: "QGestureEvent_acceptWithQtGestureType".}
proc fcQGestureEvent_ignoreWithQtGestureType(self: pointer, param1: cint): void {.importc: "QGestureEvent_ignoreWithQtGestureType".}
proc fcQGestureEvent_isAcceptedWithQtGestureType(self: pointer, param1: cint): bool {.importc: "QGestureEvent_isAcceptedWithQtGestureType".}
proc fcQGestureEvent_setWidget(self: pointer, widget: pointer): void {.importc: "QGestureEvent_setWidget".}
proc fcQGestureEvent_widget(self: pointer, ): pointer {.importc: "QGestureEvent_widget".}
proc fcQGestureEvent_mapToGraphicsScene(self: pointer, gesturePoint: pointer): pointer {.importc: "QGestureEvent_mapToGraphicsScene".}
proc fcQGestureEvent_delete(self: pointer) {.importc: "QGestureEvent_delete".}


func init*(T: type QGesture, h: ptr cQGesture): QGesture =
  T(h: h)
proc create*(T: type QGesture, ): QGesture =

  QGesture.init(fcQGesture_new())
proc create*(T: type QGesture, parent: gen_qobject.QObject): QGesture =

  QGesture.init(fcQGesture_new2(parent.h))
proc metaObject*(self: QGesture, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQGesture_metaObject(self.h))

proc metacast*(self: QGesture, param1: cstring): pointer =

  fcQGesture_metacast(self.h, param1)

proc metacall*(self: QGesture, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQGesture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QGesture, s: cstring): string =

  let v_ms = fcQGesture_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QGesture, s: cstring): string =

  let v_ms = fcQGesture_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc gestureType*(self: QGesture, ): gen_qnamespace.GestureType =

  gen_qnamespace.GestureType(fcQGesture_gestureType(self.h))

proc state*(self: QGesture, ): gen_qnamespace.GestureState =

  gen_qnamespace.GestureState(fcQGesture_state(self.h))

proc hotSpot*(self: QGesture, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGesture_hotSpot(self.h))

proc setHotSpot*(self: QGesture, value: gen_qpoint.QPointF): void =

  fcQGesture_setHotSpot(self.h, value.h)

proc hasHotSpot*(self: QGesture, ): bool =

  fcQGesture_hasHotSpot(self.h)

proc unsetHotSpot*(self: QGesture, ): void =

  fcQGesture_unsetHotSpot(self.h)

proc setGestureCancelPolicy*(self: QGesture, policy: QGestureGestureCancelPolicy): void =

  fcQGesture_setGestureCancelPolicy(self.h, cint(policy))

proc gestureCancelPolicy*(self: QGesture, ): QGestureGestureCancelPolicy =

  QGestureGestureCancelPolicy(fcQGesture_gestureCancelPolicy(self.h))

proc tr2*(_: type QGesture, s: cstring, c: cstring): string =

  let v_ms = fcQGesture_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QGesture, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGesture_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QGesture, s: cstring, c: cstring): string =

  let v_ms = fcQGesture_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QGesture, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGesture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QGesture, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQGesture_virtualbase_metaObject(self.h))

type QGesturemetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QGesture, slot: proc(super: QGesturemetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QGesturemetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGesture_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGesture_metaObject(self: ptr cQGesture, slot: int): pointer {.exportc: "miqt_exec_callback_QGesture_metaObject ".} =
  type Cb = proc(super: QGesturemetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QGesture(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QGesture, param1: cstring): pointer =


  fQGesture_virtualbase_metacast(self.h, param1)

type QGesturemetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QGesture, slot: proc(super: QGesturemetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QGesturemetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGesture_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGesture_metacast(self: ptr cQGesture, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QGesture_metacast ".} =
  type Cb = proc(super: QGesturemetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QGesture(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QGesture, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQGesture_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGesturemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QGesture, slot: proc(super: QGesturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QGesturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGesture_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGesture_metacall(self: ptr cQGesture, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGesture_metacall ".} =
  type Cb = proc(super: QGesturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QGesture(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QGesture, event: gen_qcoreevent.QEvent): bool =


  fQGesture_virtualbase_event(self.h, event.h)

type QGestureeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QGesture, slot: proc(super: QGestureeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGestureeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGesture_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGesture_event(self: ptr cQGesture, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGesture_event ".} =
  type Cb = proc(super: QGestureeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QGesture(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QGesture, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQGesture_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGestureeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QGesture, slot: proc(super: QGestureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGestureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGesture_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGesture_eventFilter(self: ptr cQGesture, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGesture_eventFilter ".} =
  type Cb = proc(super: QGestureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QGesture(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QGesture, event: gen_qcoreevent.QTimerEvent): void =


  fQGesture_virtualbase_timerEvent(self.h, event.h)

type QGesturetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QGesture, slot: proc(super: QGesturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGesturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGesture_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGesture_timerEvent(self: ptr cQGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGesture_timerEvent ".} =
  type Cb = proc(super: QGesturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QGesture(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QGesture, event: gen_qcoreevent.QChildEvent): void =


  fQGesture_virtualbase_childEvent(self.h, event.h)

type QGesturechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QGesture, slot: proc(super: QGesturechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGesturechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGesture_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGesture_childEvent(self: ptr cQGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGesture_childEvent ".} =
  type Cb = proc(super: QGesturechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QGesture(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QGesture, event: gen_qcoreevent.QEvent): void =


  fQGesture_virtualbase_customEvent(self.h, event.h)

type QGesturecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QGesture, slot: proc(super: QGesturecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGesturecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGesture_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGesture_customEvent(self: ptr cQGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGesture_customEvent ".} =
  type Cb = proc(super: QGesturecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QGesture(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QGesture, signal: gen_qmetaobject.QMetaMethod): void =


  fQGesture_virtualbase_connectNotify(self.h, signal.h)

type QGestureconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QGesture, slot: proc(super: QGestureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGestureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGesture_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGesture_connectNotify(self: ptr cQGesture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGesture_connectNotify ".} =
  type Cb = proc(super: QGestureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QGesture(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QGesture, signal: gen_qmetaobject.QMetaMethod): void =


  fQGesture_virtualbase_disconnectNotify(self.h, signal.h)

type QGesturedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QGesture, slot: proc(super: QGesturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGesturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGesture_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGesture_disconnectNotify(self: ptr cQGesture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGesture_disconnectNotify ".} =
  type Cb = proc(super: QGesturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QGesture(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QGesture): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQGesture_staticMetaObject())
proc delete*(self: QGesture) =
  fcQGesture_delete(self.h)

func init*(T: type QPanGesture, h: ptr cQPanGesture): QPanGesture =
  T(h: h)
proc create*(T: type QPanGesture, ): QPanGesture =

  QPanGesture.init(fcQPanGesture_new())
proc create*(T: type QPanGesture, parent: gen_qobject.QObject): QPanGesture =

  QPanGesture.init(fcQPanGesture_new2(parent.h))
proc metaObject*(self: QPanGesture, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQPanGesture_metaObject(self.h))

proc metacast*(self: QPanGesture, param1: cstring): pointer =

  fcQPanGesture_metacast(self.h, param1)

proc metacall*(self: QPanGesture, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQPanGesture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QPanGesture, s: cstring): string =

  let v_ms = fcQPanGesture_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QPanGesture, s: cstring): string =

  let v_ms = fcQPanGesture_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc lastOffset*(self: QPanGesture, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQPanGesture_lastOffset(self.h))

proc offset*(self: QPanGesture, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQPanGesture_offset(self.h))

proc delta*(self: QPanGesture, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQPanGesture_delta(self.h))

proc acceleration*(self: QPanGesture, ): float64 =

  fcQPanGesture_acceleration(self.h)

proc setLastOffset*(self: QPanGesture, value: gen_qpoint.QPointF): void =

  fcQPanGesture_setLastOffset(self.h, value.h)

proc setOffset*(self: QPanGesture, value: gen_qpoint.QPointF): void =

  fcQPanGesture_setOffset(self.h, value.h)

proc setAcceleration*(self: QPanGesture, value: float64): void =

  fcQPanGesture_setAcceleration(self.h, value)

proc tr2*(_: type QPanGesture, s: cstring, c: cstring): string =

  let v_ms = fcQPanGesture_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QPanGesture, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQPanGesture_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QPanGesture, s: cstring, c: cstring): string =

  let v_ms = fcQPanGesture_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QPanGesture, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQPanGesture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QPanGesture, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQPanGesture_virtualbase_metaObject(self.h))

type QPanGesturemetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QPanGesture, slot: proc(super: QPanGesturemetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QPanGesturemetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPanGesture_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPanGesture_metaObject(self: ptr cQPanGesture, slot: int): pointer {.exportc: "miqt_exec_callback_QPanGesture_metaObject ".} =
  type Cb = proc(super: QPanGesturemetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QPanGesture(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QPanGesture, param1: cstring): pointer =


  fQPanGesture_virtualbase_metacast(self.h, param1)

type QPanGesturemetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QPanGesture, slot: proc(super: QPanGesturemetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QPanGesturemetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPanGesture_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPanGesture_metacast(self: ptr cQPanGesture, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QPanGesture_metacast ".} =
  type Cb = proc(super: QPanGesturemetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QPanGesture(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QPanGesture, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQPanGesture_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QPanGesturemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QPanGesture, slot: proc(super: QPanGesturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QPanGesturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPanGesture_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPanGesture_metacall(self: ptr cQPanGesture, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QPanGesture_metacall ".} =
  type Cb = proc(super: QPanGesturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QPanGesture(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QPanGesture, event: gen_qcoreevent.QEvent): bool =


  fQPanGesture_virtualbase_event(self.h, event.h)

type QPanGestureeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QPanGesture, slot: proc(super: QPanGestureeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QPanGestureeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPanGesture_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPanGesture_event(self: ptr cQPanGesture, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QPanGesture_event ".} =
  type Cb = proc(super: QPanGestureeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QPanGesture(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QPanGesture, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQPanGesture_virtualbase_eventFilter(self.h, watched.h, event.h)

type QPanGestureeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QPanGesture, slot: proc(super: QPanGestureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QPanGestureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPanGesture_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPanGesture_eventFilter(self: ptr cQPanGesture, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QPanGesture_eventFilter ".} =
  type Cb = proc(super: QPanGestureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QPanGesture(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QPanGesture, event: gen_qcoreevent.QTimerEvent): void =


  fQPanGesture_virtualbase_timerEvent(self.h, event.h)

type QPanGesturetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QPanGesture, slot: proc(super: QPanGesturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPanGesturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPanGesture_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPanGesture_timerEvent(self: ptr cQPanGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPanGesture_timerEvent ".} =
  type Cb = proc(super: QPanGesturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QPanGesture(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QPanGesture, event: gen_qcoreevent.QChildEvent): void =


  fQPanGesture_virtualbase_childEvent(self.h, event.h)

type QPanGesturechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QPanGesture, slot: proc(super: QPanGesturechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPanGesturechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPanGesture_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPanGesture_childEvent(self: ptr cQPanGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPanGesture_childEvent ".} =
  type Cb = proc(super: QPanGesturechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QPanGesture(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QPanGesture, event: gen_qcoreevent.QEvent): void =


  fQPanGesture_virtualbase_customEvent(self.h, event.h)

type QPanGesturecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QPanGesture, slot: proc(super: QPanGesturecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPanGesturecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPanGesture_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPanGesture_customEvent(self: ptr cQPanGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPanGesture_customEvent ".} =
  type Cb = proc(super: QPanGesturecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QPanGesture(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QPanGesture, signal: gen_qmetaobject.QMetaMethod): void =


  fQPanGesture_virtualbase_connectNotify(self.h, signal.h)

type QPanGestureconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QPanGesture, slot: proc(super: QPanGestureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QPanGestureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPanGesture_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPanGesture_connectNotify(self: ptr cQPanGesture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPanGesture_connectNotify ".} =
  type Cb = proc(super: QPanGestureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QPanGesture(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QPanGesture, signal: gen_qmetaobject.QMetaMethod): void =


  fQPanGesture_virtualbase_disconnectNotify(self.h, signal.h)

type QPanGesturedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QPanGesture, slot: proc(super: QPanGesturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QPanGesturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPanGesture_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPanGesture_disconnectNotify(self: ptr cQPanGesture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPanGesture_disconnectNotify ".} =
  type Cb = proc(super: QPanGesturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QPanGesture(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QPanGesture): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQPanGesture_staticMetaObject())
proc delete*(self: QPanGesture) =
  fcQPanGesture_delete(self.h)

func init*(T: type QPinchGesture, h: ptr cQPinchGesture): QPinchGesture =
  T(h: h)
proc create*(T: type QPinchGesture, ): QPinchGesture =

  QPinchGesture.init(fcQPinchGesture_new())
proc create*(T: type QPinchGesture, parent: gen_qobject.QObject): QPinchGesture =

  QPinchGesture.init(fcQPinchGesture_new2(parent.h))
proc metaObject*(self: QPinchGesture, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQPinchGesture_metaObject(self.h))

proc metacast*(self: QPinchGesture, param1: cstring): pointer =

  fcQPinchGesture_metacast(self.h, param1)

proc metacall*(self: QPinchGesture, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQPinchGesture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QPinchGesture, s: cstring): string =

  let v_ms = fcQPinchGesture_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QPinchGesture, s: cstring): string =

  let v_ms = fcQPinchGesture_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc totalChangeFlags*(self: QPinchGesture, ): QPinchGestureChangeFlag =

  QPinchGestureChangeFlag(fcQPinchGesture_totalChangeFlags(self.h))

proc setTotalChangeFlags*(self: QPinchGesture, value: QPinchGestureChangeFlag): void =

  fcQPinchGesture_setTotalChangeFlags(self.h, cint(value))

proc changeFlags*(self: QPinchGesture, ): QPinchGestureChangeFlag =

  QPinchGestureChangeFlag(fcQPinchGesture_changeFlags(self.h))

proc setChangeFlags*(self: QPinchGesture, value: QPinchGestureChangeFlag): void =

  fcQPinchGesture_setChangeFlags(self.h, cint(value))

proc startCenterPoint*(self: QPinchGesture, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQPinchGesture_startCenterPoint(self.h))

proc lastCenterPoint*(self: QPinchGesture, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQPinchGesture_lastCenterPoint(self.h))

proc centerPoint*(self: QPinchGesture, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQPinchGesture_centerPoint(self.h))

proc setStartCenterPoint*(self: QPinchGesture, value: gen_qpoint.QPointF): void =

  fcQPinchGesture_setStartCenterPoint(self.h, value.h)

proc setLastCenterPoint*(self: QPinchGesture, value: gen_qpoint.QPointF): void =

  fcQPinchGesture_setLastCenterPoint(self.h, value.h)

proc setCenterPoint*(self: QPinchGesture, value: gen_qpoint.QPointF): void =

  fcQPinchGesture_setCenterPoint(self.h, value.h)

proc totalScaleFactor*(self: QPinchGesture, ): float64 =

  fcQPinchGesture_totalScaleFactor(self.h)

proc lastScaleFactor*(self: QPinchGesture, ): float64 =

  fcQPinchGesture_lastScaleFactor(self.h)

proc scaleFactor*(self: QPinchGesture, ): float64 =

  fcQPinchGesture_scaleFactor(self.h)

proc setTotalScaleFactor*(self: QPinchGesture, value: float64): void =

  fcQPinchGesture_setTotalScaleFactor(self.h, value)

proc setLastScaleFactor*(self: QPinchGesture, value: float64): void =

  fcQPinchGesture_setLastScaleFactor(self.h, value)

proc setScaleFactor*(self: QPinchGesture, value: float64): void =

  fcQPinchGesture_setScaleFactor(self.h, value)

proc totalRotationAngle*(self: QPinchGesture, ): float64 =

  fcQPinchGesture_totalRotationAngle(self.h)

proc lastRotationAngle*(self: QPinchGesture, ): float64 =

  fcQPinchGesture_lastRotationAngle(self.h)

proc rotationAngle*(self: QPinchGesture, ): float64 =

  fcQPinchGesture_rotationAngle(self.h)

proc setTotalRotationAngle*(self: QPinchGesture, value: float64): void =

  fcQPinchGesture_setTotalRotationAngle(self.h, value)

proc setLastRotationAngle*(self: QPinchGesture, value: float64): void =

  fcQPinchGesture_setLastRotationAngle(self.h, value)

proc setRotationAngle*(self: QPinchGesture, value: float64): void =

  fcQPinchGesture_setRotationAngle(self.h, value)

proc tr2*(_: type QPinchGesture, s: cstring, c: cstring): string =

  let v_ms = fcQPinchGesture_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QPinchGesture, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQPinchGesture_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QPinchGesture, s: cstring, c: cstring): string =

  let v_ms = fcQPinchGesture_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QPinchGesture, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQPinchGesture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QPinchGesture, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQPinchGesture_virtualbase_metaObject(self.h))

type QPinchGesturemetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QPinchGesture, slot: proc(super: QPinchGesturemetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QPinchGesturemetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPinchGesture_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPinchGesture_metaObject(self: ptr cQPinchGesture, slot: int): pointer {.exportc: "miqt_exec_callback_QPinchGesture_metaObject ".} =
  type Cb = proc(super: QPinchGesturemetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QPinchGesture(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QPinchGesture, param1: cstring): pointer =


  fQPinchGesture_virtualbase_metacast(self.h, param1)

type QPinchGesturemetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QPinchGesture, slot: proc(super: QPinchGesturemetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QPinchGesturemetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPinchGesture_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPinchGesture_metacast(self: ptr cQPinchGesture, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QPinchGesture_metacast ".} =
  type Cb = proc(super: QPinchGesturemetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QPinchGesture(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QPinchGesture, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQPinchGesture_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QPinchGesturemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QPinchGesture, slot: proc(super: QPinchGesturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QPinchGesturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPinchGesture_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPinchGesture_metacall(self: ptr cQPinchGesture, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QPinchGesture_metacall ".} =
  type Cb = proc(super: QPinchGesturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QPinchGesture(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QPinchGesture, event: gen_qcoreevent.QEvent): bool =


  fQPinchGesture_virtualbase_event(self.h, event.h)

type QPinchGestureeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QPinchGesture, slot: proc(super: QPinchGestureeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QPinchGestureeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPinchGesture_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPinchGesture_event(self: ptr cQPinchGesture, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QPinchGesture_event ".} =
  type Cb = proc(super: QPinchGestureeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QPinchGesture(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QPinchGesture, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQPinchGesture_virtualbase_eventFilter(self.h, watched.h, event.h)

type QPinchGestureeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QPinchGesture, slot: proc(super: QPinchGestureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QPinchGestureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPinchGesture_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPinchGesture_eventFilter(self: ptr cQPinchGesture, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QPinchGesture_eventFilter ".} =
  type Cb = proc(super: QPinchGestureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QPinchGesture(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QPinchGesture, event: gen_qcoreevent.QTimerEvent): void =


  fQPinchGesture_virtualbase_timerEvent(self.h, event.h)

type QPinchGesturetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QPinchGesture, slot: proc(super: QPinchGesturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPinchGesturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPinchGesture_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPinchGesture_timerEvent(self: ptr cQPinchGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPinchGesture_timerEvent ".} =
  type Cb = proc(super: QPinchGesturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QPinchGesture(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QPinchGesture, event: gen_qcoreevent.QChildEvent): void =


  fQPinchGesture_virtualbase_childEvent(self.h, event.h)

type QPinchGesturechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QPinchGesture, slot: proc(super: QPinchGesturechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPinchGesturechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPinchGesture_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPinchGesture_childEvent(self: ptr cQPinchGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPinchGesture_childEvent ".} =
  type Cb = proc(super: QPinchGesturechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QPinchGesture(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QPinchGesture, event: gen_qcoreevent.QEvent): void =


  fQPinchGesture_virtualbase_customEvent(self.h, event.h)

type QPinchGesturecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QPinchGesture, slot: proc(super: QPinchGesturecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPinchGesturecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPinchGesture_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPinchGesture_customEvent(self: ptr cQPinchGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPinchGesture_customEvent ".} =
  type Cb = proc(super: QPinchGesturecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QPinchGesture(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QPinchGesture, signal: gen_qmetaobject.QMetaMethod): void =


  fQPinchGesture_virtualbase_connectNotify(self.h, signal.h)

type QPinchGestureconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QPinchGesture, slot: proc(super: QPinchGestureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QPinchGestureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPinchGesture_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPinchGesture_connectNotify(self: ptr cQPinchGesture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPinchGesture_connectNotify ".} =
  type Cb = proc(super: QPinchGestureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QPinchGesture(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QPinchGesture, signal: gen_qmetaobject.QMetaMethod): void =


  fQPinchGesture_virtualbase_disconnectNotify(self.h, signal.h)

type QPinchGesturedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QPinchGesture, slot: proc(super: QPinchGesturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QPinchGesturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPinchGesture_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPinchGesture_disconnectNotify(self: ptr cQPinchGesture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPinchGesture_disconnectNotify ".} =
  type Cb = proc(super: QPinchGesturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QPinchGesture(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QPinchGesture): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQPinchGesture_staticMetaObject())
proc delete*(self: QPinchGesture) =
  fcQPinchGesture_delete(self.h)

func init*(T: type QSwipeGesture, h: ptr cQSwipeGesture): QSwipeGesture =
  T(h: h)
proc create*(T: type QSwipeGesture, ): QSwipeGesture =

  QSwipeGesture.init(fcQSwipeGesture_new())
proc create*(T: type QSwipeGesture, parent: gen_qobject.QObject): QSwipeGesture =

  QSwipeGesture.init(fcQSwipeGesture_new2(parent.h))
proc metaObject*(self: QSwipeGesture, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSwipeGesture_metaObject(self.h))

proc metacast*(self: QSwipeGesture, param1: cstring): pointer =

  fcQSwipeGesture_metacast(self.h, param1)

proc metacall*(self: QSwipeGesture, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQSwipeGesture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QSwipeGesture, s: cstring): string =

  let v_ms = fcQSwipeGesture_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QSwipeGesture, s: cstring): string =

  let v_ms = fcQSwipeGesture_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc horizontalDirection*(self: QSwipeGesture, ): QSwipeGestureSwipeDirection =

  QSwipeGestureSwipeDirection(fcQSwipeGesture_horizontalDirection(self.h))

proc verticalDirection*(self: QSwipeGesture, ): QSwipeGestureSwipeDirection =

  QSwipeGestureSwipeDirection(fcQSwipeGesture_verticalDirection(self.h))

proc swipeAngle*(self: QSwipeGesture, ): float64 =

  fcQSwipeGesture_swipeAngle(self.h)

proc setSwipeAngle*(self: QSwipeGesture, value: float64): void =

  fcQSwipeGesture_setSwipeAngle(self.h, value)

proc tr2*(_: type QSwipeGesture, s: cstring, c: cstring): string =

  let v_ms = fcQSwipeGesture_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QSwipeGesture, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSwipeGesture_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QSwipeGesture, s: cstring, c: cstring): string =

  let v_ms = fcQSwipeGesture_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QSwipeGesture, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSwipeGesture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QSwipeGesture, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQSwipeGesture_virtualbase_metaObject(self.h))

type QSwipeGesturemetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QSwipeGesture, slot: proc(super: QSwipeGesturemetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QSwipeGesturemetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSwipeGesture_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSwipeGesture_metaObject(self: ptr cQSwipeGesture, slot: int): pointer {.exportc: "miqt_exec_callback_QSwipeGesture_metaObject ".} =
  type Cb = proc(super: QSwipeGesturemetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QSwipeGesture(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QSwipeGesture, param1: cstring): pointer =


  fQSwipeGesture_virtualbase_metacast(self.h, param1)

type QSwipeGesturemetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QSwipeGesture, slot: proc(super: QSwipeGesturemetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QSwipeGesturemetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSwipeGesture_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSwipeGesture_metacast(self: ptr cQSwipeGesture, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QSwipeGesture_metacast ".} =
  type Cb = proc(super: QSwipeGesturemetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QSwipeGesture(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QSwipeGesture, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQSwipeGesture_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSwipeGesturemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QSwipeGesture, slot: proc(super: QSwipeGesturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QSwipeGesturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSwipeGesture_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSwipeGesture_metacall(self: ptr cQSwipeGesture, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSwipeGesture_metacall ".} =
  type Cb = proc(super: QSwipeGesturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QSwipeGesture(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QSwipeGesture, event: gen_qcoreevent.QEvent): bool =


  fQSwipeGesture_virtualbase_event(self.h, event.h)

type QSwipeGestureeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QSwipeGesture, slot: proc(super: QSwipeGestureeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSwipeGestureeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSwipeGesture_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSwipeGesture_event(self: ptr cQSwipeGesture, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSwipeGesture_event ".} =
  type Cb = proc(super: QSwipeGestureeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QSwipeGesture(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QSwipeGesture, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQSwipeGesture_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSwipeGestureeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QSwipeGesture, slot: proc(super: QSwipeGestureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSwipeGestureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSwipeGesture_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSwipeGesture_eventFilter(self: ptr cQSwipeGesture, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSwipeGesture_eventFilter ".} =
  type Cb = proc(super: QSwipeGestureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QSwipeGesture(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QSwipeGesture, event: gen_qcoreevent.QTimerEvent): void =


  fQSwipeGesture_virtualbase_timerEvent(self.h, event.h)

type QSwipeGesturetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QSwipeGesture, slot: proc(super: QSwipeGesturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSwipeGesturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSwipeGesture_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSwipeGesture_timerEvent(self: ptr cQSwipeGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSwipeGesture_timerEvent ".} =
  type Cb = proc(super: QSwipeGesturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QSwipeGesture(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QSwipeGesture, event: gen_qcoreevent.QChildEvent): void =


  fQSwipeGesture_virtualbase_childEvent(self.h, event.h)

type QSwipeGesturechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QSwipeGesture, slot: proc(super: QSwipeGesturechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSwipeGesturechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSwipeGesture_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSwipeGesture_childEvent(self: ptr cQSwipeGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSwipeGesture_childEvent ".} =
  type Cb = proc(super: QSwipeGesturechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QSwipeGesture(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QSwipeGesture, event: gen_qcoreevent.QEvent): void =


  fQSwipeGesture_virtualbase_customEvent(self.h, event.h)

type QSwipeGesturecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QSwipeGesture, slot: proc(super: QSwipeGesturecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSwipeGesturecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSwipeGesture_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSwipeGesture_customEvent(self: ptr cQSwipeGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSwipeGesture_customEvent ".} =
  type Cb = proc(super: QSwipeGesturecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QSwipeGesture(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QSwipeGesture, signal: gen_qmetaobject.QMetaMethod): void =


  fQSwipeGesture_virtualbase_connectNotify(self.h, signal.h)

type QSwipeGestureconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QSwipeGesture, slot: proc(super: QSwipeGestureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSwipeGestureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSwipeGesture_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSwipeGesture_connectNotify(self: ptr cQSwipeGesture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSwipeGesture_connectNotify ".} =
  type Cb = proc(super: QSwipeGestureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QSwipeGesture(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QSwipeGesture, signal: gen_qmetaobject.QMetaMethod): void =


  fQSwipeGesture_virtualbase_disconnectNotify(self.h, signal.h)

type QSwipeGesturedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QSwipeGesture, slot: proc(super: QSwipeGesturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSwipeGesturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSwipeGesture_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSwipeGesture_disconnectNotify(self: ptr cQSwipeGesture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSwipeGesture_disconnectNotify ".} =
  type Cb = proc(super: QSwipeGesturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QSwipeGesture(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QSwipeGesture): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQSwipeGesture_staticMetaObject())
proc delete*(self: QSwipeGesture) =
  fcQSwipeGesture_delete(self.h)

func init*(T: type QTapGesture, h: ptr cQTapGesture): QTapGesture =
  T(h: h)
proc create*(T: type QTapGesture, ): QTapGesture =

  QTapGesture.init(fcQTapGesture_new())
proc create*(T: type QTapGesture, parent: gen_qobject.QObject): QTapGesture =

  QTapGesture.init(fcQTapGesture_new2(parent.h))
proc metaObject*(self: QTapGesture, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQTapGesture_metaObject(self.h))

proc metacast*(self: QTapGesture, param1: cstring): pointer =

  fcQTapGesture_metacast(self.h, param1)

proc metacall*(self: QTapGesture, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQTapGesture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QTapGesture, s: cstring): string =

  let v_ms = fcQTapGesture_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QTapGesture, s: cstring): string =

  let v_ms = fcQTapGesture_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc position*(self: QTapGesture, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQTapGesture_position(self.h))

proc setPosition*(self: QTapGesture, pos: gen_qpoint.QPointF): void =

  fcQTapGesture_setPosition(self.h, pos.h)

proc tr2*(_: type QTapGesture, s: cstring, c: cstring): string =

  let v_ms = fcQTapGesture_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QTapGesture, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTapGesture_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QTapGesture, s: cstring, c: cstring): string =

  let v_ms = fcQTapGesture_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QTapGesture, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTapGesture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QTapGesture, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQTapGesture_virtualbase_metaObject(self.h))

type QTapGesturemetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QTapGesture, slot: proc(super: QTapGesturemetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QTapGesturemetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTapGesture_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapGesture_metaObject(self: ptr cQTapGesture, slot: int): pointer {.exportc: "miqt_exec_callback_QTapGesture_metaObject ".} =
  type Cb = proc(super: QTapGesturemetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QTapGesture(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QTapGesture, param1: cstring): pointer =


  fQTapGesture_virtualbase_metacast(self.h, param1)

type QTapGesturemetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QTapGesture, slot: proc(super: QTapGesturemetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QTapGesturemetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTapGesture_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapGesture_metacast(self: ptr cQTapGesture, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QTapGesture_metacast ".} =
  type Cb = proc(super: QTapGesturemetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QTapGesture(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QTapGesture, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQTapGesture_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTapGesturemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QTapGesture, slot: proc(super: QTapGesturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QTapGesturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTapGesture_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapGesture_metacall(self: ptr cQTapGesture, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTapGesture_metacall ".} =
  type Cb = proc(super: QTapGesturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QTapGesture(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QTapGesture, event: gen_qcoreevent.QEvent): bool =


  fQTapGesture_virtualbase_event(self.h, event.h)

type QTapGestureeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QTapGesture, slot: proc(super: QTapGestureeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTapGestureeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTapGesture_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapGesture_event(self: ptr cQTapGesture, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTapGesture_event ".} =
  type Cb = proc(super: QTapGestureeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QTapGesture(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QTapGesture, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQTapGesture_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTapGestureeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QTapGesture, slot: proc(super: QTapGestureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTapGestureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTapGesture_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapGesture_eventFilter(self: ptr cQTapGesture, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTapGesture_eventFilter ".} =
  type Cb = proc(super: QTapGestureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QTapGesture(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QTapGesture, event: gen_qcoreevent.QTimerEvent): void =


  fQTapGesture_virtualbase_timerEvent(self.h, event.h)

type QTapGesturetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QTapGesture, slot: proc(super: QTapGesturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTapGesturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTapGesture_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapGesture_timerEvent(self: ptr cQTapGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTapGesture_timerEvent ".} =
  type Cb = proc(super: QTapGesturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QTapGesture(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QTapGesture, event: gen_qcoreevent.QChildEvent): void =


  fQTapGesture_virtualbase_childEvent(self.h, event.h)

type QTapGesturechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QTapGesture, slot: proc(super: QTapGesturechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTapGesturechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTapGesture_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapGesture_childEvent(self: ptr cQTapGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTapGesture_childEvent ".} =
  type Cb = proc(super: QTapGesturechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QTapGesture(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QTapGesture, event: gen_qcoreevent.QEvent): void =


  fQTapGesture_virtualbase_customEvent(self.h, event.h)

type QTapGesturecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QTapGesture, slot: proc(super: QTapGesturecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTapGesturecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTapGesture_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapGesture_customEvent(self: ptr cQTapGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTapGesture_customEvent ".} =
  type Cb = proc(super: QTapGesturecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QTapGesture(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QTapGesture, signal: gen_qmetaobject.QMetaMethod): void =


  fQTapGesture_virtualbase_connectNotify(self.h, signal.h)

type QTapGestureconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QTapGesture, slot: proc(super: QTapGestureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTapGestureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTapGesture_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapGesture_connectNotify(self: ptr cQTapGesture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTapGesture_connectNotify ".} =
  type Cb = proc(super: QTapGestureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QTapGesture(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QTapGesture, signal: gen_qmetaobject.QMetaMethod): void =


  fQTapGesture_virtualbase_disconnectNotify(self.h, signal.h)

type QTapGesturedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QTapGesture, slot: proc(super: QTapGesturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTapGesturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTapGesture_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapGesture_disconnectNotify(self: ptr cQTapGesture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTapGesture_disconnectNotify ".} =
  type Cb = proc(super: QTapGesturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QTapGesture(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QTapGesture): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQTapGesture_staticMetaObject())
proc delete*(self: QTapGesture) =
  fcQTapGesture_delete(self.h)

func init*(T: type QTapAndHoldGesture, h: ptr cQTapAndHoldGesture): QTapAndHoldGesture =
  T(h: h)
proc create*(T: type QTapAndHoldGesture, ): QTapAndHoldGesture =

  QTapAndHoldGesture.init(fcQTapAndHoldGesture_new())
proc create*(T: type QTapAndHoldGesture, parent: gen_qobject.QObject): QTapAndHoldGesture =

  QTapAndHoldGesture.init(fcQTapAndHoldGesture_new2(parent.h))
proc metaObject*(self: QTapAndHoldGesture, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQTapAndHoldGesture_metaObject(self.h))

proc metacast*(self: QTapAndHoldGesture, param1: cstring): pointer =

  fcQTapAndHoldGesture_metacast(self.h, param1)

proc metacall*(self: QTapAndHoldGesture, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQTapAndHoldGesture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QTapAndHoldGesture, s: cstring): string =

  let v_ms = fcQTapAndHoldGesture_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QTapAndHoldGesture, s: cstring): string =

  let v_ms = fcQTapAndHoldGesture_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc position*(self: QTapAndHoldGesture, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQTapAndHoldGesture_position(self.h))

proc setPosition*(self: QTapAndHoldGesture, pos: gen_qpoint.QPointF): void =

  fcQTapAndHoldGesture_setPosition(self.h, pos.h)

proc setTimeout*(_: type QTapAndHoldGesture, msecs: cint): void =

  fcQTapAndHoldGesture_setTimeout(msecs)

proc timeout*(_: type QTapAndHoldGesture, ): cint =

  fcQTapAndHoldGesture_timeout()

proc tr2*(_: type QTapAndHoldGesture, s: cstring, c: cstring): string =

  let v_ms = fcQTapAndHoldGesture_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QTapAndHoldGesture, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTapAndHoldGesture_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QTapAndHoldGesture, s: cstring, c: cstring): string =

  let v_ms = fcQTapAndHoldGesture_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QTapAndHoldGesture, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTapAndHoldGesture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QTapAndHoldGesture, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQTapAndHoldGesture_virtualbase_metaObject(self.h))

type QTapAndHoldGesturemetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QTapAndHoldGesture, slot: proc(super: QTapAndHoldGesturemetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QTapAndHoldGesturemetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTapAndHoldGesture_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapAndHoldGesture_metaObject(self: ptr cQTapAndHoldGesture, slot: int): pointer {.exportc: "miqt_exec_callback_QTapAndHoldGesture_metaObject ".} =
  type Cb = proc(super: QTapAndHoldGesturemetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QTapAndHoldGesture(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QTapAndHoldGesture, param1: cstring): pointer =


  fQTapAndHoldGesture_virtualbase_metacast(self.h, param1)

type QTapAndHoldGesturemetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QTapAndHoldGesture, slot: proc(super: QTapAndHoldGesturemetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QTapAndHoldGesturemetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTapAndHoldGesture_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapAndHoldGesture_metacast(self: ptr cQTapAndHoldGesture, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QTapAndHoldGesture_metacast ".} =
  type Cb = proc(super: QTapAndHoldGesturemetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QTapAndHoldGesture(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QTapAndHoldGesture, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQTapAndHoldGesture_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTapAndHoldGesturemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QTapAndHoldGesture, slot: proc(super: QTapAndHoldGesturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QTapAndHoldGesturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTapAndHoldGesture_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapAndHoldGesture_metacall(self: ptr cQTapAndHoldGesture, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTapAndHoldGesture_metacall ".} =
  type Cb = proc(super: QTapAndHoldGesturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QTapAndHoldGesture(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QTapAndHoldGesture, event: gen_qcoreevent.QEvent): bool =


  fQTapAndHoldGesture_virtualbase_event(self.h, event.h)

type QTapAndHoldGestureeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QTapAndHoldGesture, slot: proc(super: QTapAndHoldGestureeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTapAndHoldGestureeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTapAndHoldGesture_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapAndHoldGesture_event(self: ptr cQTapAndHoldGesture, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTapAndHoldGesture_event ".} =
  type Cb = proc(super: QTapAndHoldGestureeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QTapAndHoldGesture(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QTapAndHoldGesture, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQTapAndHoldGesture_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTapAndHoldGestureeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QTapAndHoldGesture, slot: proc(super: QTapAndHoldGestureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTapAndHoldGestureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTapAndHoldGesture_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapAndHoldGesture_eventFilter(self: ptr cQTapAndHoldGesture, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTapAndHoldGesture_eventFilter ".} =
  type Cb = proc(super: QTapAndHoldGestureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QTapAndHoldGesture(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QTapAndHoldGesture, event: gen_qcoreevent.QTimerEvent): void =


  fQTapAndHoldGesture_virtualbase_timerEvent(self.h, event.h)

type QTapAndHoldGesturetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QTapAndHoldGesture, slot: proc(super: QTapAndHoldGesturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTapAndHoldGesturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTapAndHoldGesture_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapAndHoldGesture_timerEvent(self: ptr cQTapAndHoldGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTapAndHoldGesture_timerEvent ".} =
  type Cb = proc(super: QTapAndHoldGesturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QTapAndHoldGesture(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QTapAndHoldGesture, event: gen_qcoreevent.QChildEvent): void =


  fQTapAndHoldGesture_virtualbase_childEvent(self.h, event.h)

type QTapAndHoldGesturechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QTapAndHoldGesture, slot: proc(super: QTapAndHoldGesturechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTapAndHoldGesturechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTapAndHoldGesture_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapAndHoldGesture_childEvent(self: ptr cQTapAndHoldGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTapAndHoldGesture_childEvent ".} =
  type Cb = proc(super: QTapAndHoldGesturechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QTapAndHoldGesture(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QTapAndHoldGesture, event: gen_qcoreevent.QEvent): void =


  fQTapAndHoldGesture_virtualbase_customEvent(self.h, event.h)

type QTapAndHoldGesturecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QTapAndHoldGesture, slot: proc(super: QTapAndHoldGesturecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTapAndHoldGesturecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTapAndHoldGesture_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapAndHoldGesture_customEvent(self: ptr cQTapAndHoldGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTapAndHoldGesture_customEvent ".} =
  type Cb = proc(super: QTapAndHoldGesturecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QTapAndHoldGesture(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QTapAndHoldGesture, signal: gen_qmetaobject.QMetaMethod): void =


  fQTapAndHoldGesture_virtualbase_connectNotify(self.h, signal.h)

type QTapAndHoldGestureconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QTapAndHoldGesture, slot: proc(super: QTapAndHoldGestureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTapAndHoldGestureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTapAndHoldGesture_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapAndHoldGesture_connectNotify(self: ptr cQTapAndHoldGesture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTapAndHoldGesture_connectNotify ".} =
  type Cb = proc(super: QTapAndHoldGestureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QTapAndHoldGesture(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QTapAndHoldGesture, signal: gen_qmetaobject.QMetaMethod): void =


  fQTapAndHoldGesture_virtualbase_disconnectNotify(self.h, signal.h)

type QTapAndHoldGesturedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QTapAndHoldGesture, slot: proc(super: QTapAndHoldGesturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTapAndHoldGesturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTapAndHoldGesture_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapAndHoldGesture_disconnectNotify(self: ptr cQTapAndHoldGesture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTapAndHoldGesture_disconnectNotify ".} =
  type Cb = proc(super: QTapAndHoldGesturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QTapAndHoldGesture(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QTapAndHoldGesture): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQTapAndHoldGesture_staticMetaObject())
proc delete*(self: QTapAndHoldGesture) =
  fcQTapAndHoldGesture_delete(self.h)

func init*(T: type QGestureEvent, h: ptr cQGestureEvent): QGestureEvent =
  T(h: h)
proc create*(T: type QGestureEvent, gestures: seq[QGesture]): QGestureEvent =

  var gestures_CArray = newSeq[pointer](len(gestures))
  for i in 0..<len(gestures):
    gestures_CArray[i] = gestures[i].h

  QGestureEvent.init(fcQGestureEvent_new(struct_miqt_array(len: csize_t(len(gestures)), data: if len(gestures) == 0: nil else: addr(gestures_CArray[0]))))
proc create*(T: type QGestureEvent, param1: QGestureEvent): QGestureEvent =

  QGestureEvent.init(fcQGestureEvent_new2(param1.h))
proc gestures*(self: QGestureEvent, ): seq[QGesture] =

  var v_ma = fcQGestureEvent_gestures(self.h)
  var vx_ret = newSeq[QGesture](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QGesture(h: v_outCast[i])
  vx_ret

proc gesture*(self: QGestureEvent, typeVal: gen_qnamespace.GestureType): QGesture =

  QGesture(h: fcQGestureEvent_gesture(self.h, cint(typeVal)))

proc activeGestures*(self: QGestureEvent, ): seq[QGesture] =

  var v_ma = fcQGestureEvent_activeGestures(self.h)
  var vx_ret = newSeq[QGesture](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QGesture(h: v_outCast[i])
  vx_ret

proc canceledGestures*(self: QGestureEvent, ): seq[QGesture] =

  var v_ma = fcQGestureEvent_canceledGestures(self.h)
  var vx_ret = newSeq[QGesture](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QGesture(h: v_outCast[i])
  vx_ret

proc setAccepted*(self: QGestureEvent, param1: QGesture, param2: bool): void =

  fcQGestureEvent_setAccepted(self.h, param1.h, param2)

proc accept*(self: QGestureEvent, param1: QGesture): void =

  fcQGestureEvent_accept(self.h, param1.h)

proc ignore*(self: QGestureEvent, param1: QGesture): void =

  fcQGestureEvent_ignore(self.h, param1.h)

proc isAccepted*(self: QGestureEvent, param1: QGesture): bool =

  fcQGestureEvent_isAccepted(self.h, param1.h)

proc setAccepted2*(self: QGestureEvent, param1: gen_qnamespace.GestureType, param2: bool): void =

  fcQGestureEvent_setAccepted2(self.h, cint(param1), param2)

proc acceptWithQtGestureType*(self: QGestureEvent, param1: gen_qnamespace.GestureType): void =

  fcQGestureEvent_acceptWithQtGestureType(self.h, cint(param1))

proc ignoreWithQtGestureType*(self: QGestureEvent, param1: gen_qnamespace.GestureType): void =

  fcQGestureEvent_ignoreWithQtGestureType(self.h, cint(param1))

proc isAcceptedWithQtGestureType*(self: QGestureEvent, param1: gen_qnamespace.GestureType): bool =

  fcQGestureEvent_isAcceptedWithQtGestureType(self.h, cint(param1))

proc setWidget*(self: QGestureEvent, widget: gen_qwidget.QWidget): void =

  fcQGestureEvent_setWidget(self.h, widget.h)

proc widget*(self: QGestureEvent, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQGestureEvent_widget(self.h))

proc mapToGraphicsScene*(self: QGestureEvent, gesturePoint: gen_qpoint.QPointF): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGestureEvent_mapToGraphicsScene(self.h, gesturePoint.h))

proc delete*(self: QGestureEvent) =
  fcQGestureEvent_delete(self.h)
