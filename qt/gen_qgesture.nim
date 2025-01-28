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


type QGestureGestureCancelPolicyEnum* = distinct cint
template CancelNone*(_: type QGestureGestureCancelPolicyEnum): untyped = 0
template CancelAllInContext*(_: type QGestureGestureCancelPolicyEnum): untyped = 1


type QPinchGestureChangeFlagEnum* = distinct cint
template ScaleFactorChanged*(_: type QPinchGestureChangeFlagEnum): untyped = 1
template RotationAngleChanged*(_: type QPinchGestureChangeFlagEnum): untyped = 2
template CenterPointChanged*(_: type QPinchGestureChangeFlagEnum): untyped = 4


type QSwipeGestureSwipeDirectionEnum* = distinct cint
template NoDirection*(_: type QSwipeGestureSwipeDirectionEnum): untyped = 0
template Left*(_: type QSwipeGestureSwipeDirectionEnum): untyped = 1
template Right*(_: type QSwipeGestureSwipeDirectionEnum): untyped = 2
template Up*(_: type QSwipeGestureSwipeDirectionEnum): untyped = 3
template Down*(_: type QSwipeGestureSwipeDirectionEnum): untyped = 4

import gen_qgesture_types
export gen_qgesture_types

import
  gen_qcoreevent,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qwidget_types
export
  gen_qcoreevent,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qwidget_types

type cQGesture*{.exportc: "QGesture", incompleteStruct.} = object
type cQPanGesture*{.exportc: "QPanGesture", incompleteStruct.} = object
type cQPinchGesture*{.exportc: "QPinchGesture", incompleteStruct.} = object
type cQSwipeGesture*{.exportc: "QSwipeGesture", incompleteStruct.} = object
type cQTapGesture*{.exportc: "QTapGesture", incompleteStruct.} = object
type cQTapAndHoldGesture*{.exportc: "QTapAndHoldGesture", incompleteStruct.} = object
type cQGestureEvent*{.exportc: "QGestureEvent", incompleteStruct.} = object

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
type cQGestureVTable = object
  destructor*: proc(vtbl: ptr cQGestureVTable, self: ptr cQGesture) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGesture_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QGesture_virtualbase_metaObject".}
proc fcQGesture_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGesture_virtualbase_metacast".}
proc fcQGesture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGesture_virtualbase_metacall".}
proc fcQGesture_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QGesture_virtualbase_event".}
proc fcQGesture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGesture_virtualbase_eventFilter".}
proc fcQGesture_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGesture_virtualbase_timerEvent".}
proc fcQGesture_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGesture_virtualbase_childEvent".}
proc fcQGesture_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGesture_virtualbase_customEvent".}
proc fcQGesture_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGesture_virtualbase_connectNotify".}
proc fcQGesture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGesture_virtualbase_disconnectNotify".}
proc fcQGesture_new(vtbl: pointer, ): ptr cQGesture {.importc: "QGesture_new".}
proc fcQGesture_new2(vtbl: pointer, parent: pointer): ptr cQGesture {.importc: "QGesture_new2".}
proc fcQGesture_staticMetaObject(): pointer {.importc: "QGesture_staticMetaObject".}
proc fcQGesture_delete(self: pointer) {.importc: "QGesture_delete".}
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
type cQPanGestureVTable = object
  destructor*: proc(vtbl: ptr cQPanGestureVTable, self: ptr cQPanGesture) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQPanGesture_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QPanGesture_virtualbase_metaObject".}
proc fcQPanGesture_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPanGesture_virtualbase_metacast".}
proc fcQPanGesture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPanGesture_virtualbase_metacall".}
proc fcQPanGesture_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QPanGesture_virtualbase_event".}
proc fcQPanGesture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QPanGesture_virtualbase_eventFilter".}
proc fcQPanGesture_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPanGesture_virtualbase_timerEvent".}
proc fcQPanGesture_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPanGesture_virtualbase_childEvent".}
proc fcQPanGesture_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPanGesture_virtualbase_customEvent".}
proc fcQPanGesture_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPanGesture_virtualbase_connectNotify".}
proc fcQPanGesture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPanGesture_virtualbase_disconnectNotify".}
proc fcQPanGesture_new(vtbl: pointer, ): ptr cQPanGesture {.importc: "QPanGesture_new".}
proc fcQPanGesture_new2(vtbl: pointer, parent: pointer): ptr cQPanGesture {.importc: "QPanGesture_new2".}
proc fcQPanGesture_staticMetaObject(): pointer {.importc: "QPanGesture_staticMetaObject".}
proc fcQPanGesture_delete(self: pointer) {.importc: "QPanGesture_delete".}
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
type cQPinchGestureVTable = object
  destructor*: proc(vtbl: ptr cQPinchGestureVTable, self: ptr cQPinchGesture) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQPinchGesture_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QPinchGesture_virtualbase_metaObject".}
proc fcQPinchGesture_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPinchGesture_virtualbase_metacast".}
proc fcQPinchGesture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPinchGesture_virtualbase_metacall".}
proc fcQPinchGesture_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QPinchGesture_virtualbase_event".}
proc fcQPinchGesture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QPinchGesture_virtualbase_eventFilter".}
proc fcQPinchGesture_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPinchGesture_virtualbase_timerEvent".}
proc fcQPinchGesture_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPinchGesture_virtualbase_childEvent".}
proc fcQPinchGesture_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPinchGesture_virtualbase_customEvent".}
proc fcQPinchGesture_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPinchGesture_virtualbase_connectNotify".}
proc fcQPinchGesture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPinchGesture_virtualbase_disconnectNotify".}
proc fcQPinchGesture_new(vtbl: pointer, ): ptr cQPinchGesture {.importc: "QPinchGesture_new".}
proc fcQPinchGesture_new2(vtbl: pointer, parent: pointer): ptr cQPinchGesture {.importc: "QPinchGesture_new2".}
proc fcQPinchGesture_staticMetaObject(): pointer {.importc: "QPinchGesture_staticMetaObject".}
proc fcQPinchGesture_delete(self: pointer) {.importc: "QPinchGesture_delete".}
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
type cQSwipeGestureVTable = object
  destructor*: proc(vtbl: ptr cQSwipeGestureVTable, self: ptr cQSwipeGesture) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSwipeGesture_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QSwipeGesture_virtualbase_metaObject".}
proc fcQSwipeGesture_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSwipeGesture_virtualbase_metacast".}
proc fcQSwipeGesture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSwipeGesture_virtualbase_metacall".}
proc fcQSwipeGesture_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSwipeGesture_virtualbase_event".}
proc fcQSwipeGesture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSwipeGesture_virtualbase_eventFilter".}
proc fcQSwipeGesture_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSwipeGesture_virtualbase_timerEvent".}
proc fcQSwipeGesture_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSwipeGesture_virtualbase_childEvent".}
proc fcQSwipeGesture_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSwipeGesture_virtualbase_customEvent".}
proc fcQSwipeGesture_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSwipeGesture_virtualbase_connectNotify".}
proc fcQSwipeGesture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSwipeGesture_virtualbase_disconnectNotify".}
proc fcQSwipeGesture_new(vtbl: pointer, ): ptr cQSwipeGesture {.importc: "QSwipeGesture_new".}
proc fcQSwipeGesture_new2(vtbl: pointer, parent: pointer): ptr cQSwipeGesture {.importc: "QSwipeGesture_new2".}
proc fcQSwipeGesture_staticMetaObject(): pointer {.importc: "QSwipeGesture_staticMetaObject".}
proc fcQSwipeGesture_delete(self: pointer) {.importc: "QSwipeGesture_delete".}
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
type cQTapGestureVTable = object
  destructor*: proc(vtbl: ptr cQTapGestureVTable, self: ptr cQTapGesture) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQTapGesture_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QTapGesture_virtualbase_metaObject".}
proc fcQTapGesture_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTapGesture_virtualbase_metacast".}
proc fcQTapGesture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTapGesture_virtualbase_metacall".}
proc fcQTapGesture_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QTapGesture_virtualbase_event".}
proc fcQTapGesture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QTapGesture_virtualbase_eventFilter".}
proc fcQTapGesture_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QTapGesture_virtualbase_timerEvent".}
proc fcQTapGesture_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTapGesture_virtualbase_childEvent".}
proc fcQTapGesture_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTapGesture_virtualbase_customEvent".}
proc fcQTapGesture_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTapGesture_virtualbase_connectNotify".}
proc fcQTapGesture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTapGesture_virtualbase_disconnectNotify".}
proc fcQTapGesture_new(vtbl: pointer, ): ptr cQTapGesture {.importc: "QTapGesture_new".}
proc fcQTapGesture_new2(vtbl: pointer, parent: pointer): ptr cQTapGesture {.importc: "QTapGesture_new2".}
proc fcQTapGesture_staticMetaObject(): pointer {.importc: "QTapGesture_staticMetaObject".}
proc fcQTapGesture_delete(self: pointer) {.importc: "QTapGesture_delete".}
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
type cQTapAndHoldGestureVTable = object
  destructor*: proc(vtbl: ptr cQTapAndHoldGestureVTable, self: ptr cQTapAndHoldGesture) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQTapAndHoldGesture_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QTapAndHoldGesture_virtualbase_metaObject".}
proc fcQTapAndHoldGesture_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTapAndHoldGesture_virtualbase_metacast".}
proc fcQTapAndHoldGesture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTapAndHoldGesture_virtualbase_metacall".}
proc fcQTapAndHoldGesture_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QTapAndHoldGesture_virtualbase_event".}
proc fcQTapAndHoldGesture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QTapAndHoldGesture_virtualbase_eventFilter".}
proc fcQTapAndHoldGesture_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QTapAndHoldGesture_virtualbase_timerEvent".}
proc fcQTapAndHoldGesture_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTapAndHoldGesture_virtualbase_childEvent".}
proc fcQTapAndHoldGesture_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTapAndHoldGesture_virtualbase_customEvent".}
proc fcQTapAndHoldGesture_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTapAndHoldGesture_virtualbase_connectNotify".}
proc fcQTapAndHoldGesture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTapAndHoldGesture_virtualbase_disconnectNotify".}
proc fcQTapAndHoldGesture_new(vtbl: pointer, ): ptr cQTapAndHoldGesture {.importc: "QTapAndHoldGesture_new".}
proc fcQTapAndHoldGesture_new2(vtbl: pointer, parent: pointer): ptr cQTapAndHoldGesture {.importc: "QTapAndHoldGesture_new2".}
proc fcQTapAndHoldGesture_staticMetaObject(): pointer {.importc: "QTapAndHoldGesture_staticMetaObject".}
proc fcQTapAndHoldGesture_delete(self: pointer) {.importc: "QTapAndHoldGesture_delete".}
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
proc fcQGestureEvent_new(gestures: struct_miqt_array): ptr cQGestureEvent {.importc: "QGestureEvent_new".}
proc fcQGestureEvent_new2(param1: pointer): ptr cQGestureEvent {.importc: "QGestureEvent_new2".}
proc fcQGestureEvent_delete(self: pointer) {.importc: "QGestureEvent_delete".}

proc metaObject*(self: gen_qgesture_types.QGesture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGesture_metaObject(self.h))

proc metacast*(self: gen_qgesture_types.QGesture, param1: cstring): pointer =
  fcQGesture_metacast(self.h, param1)

proc metacall*(self: gen_qgesture_types.QGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQGesture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgesture_types.QGesture, s: cstring): string =
  let v_ms = fcQGesture_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QGesture, s: cstring): string =
  let v_ms = fcQGesture_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc gestureType*(self: gen_qgesture_types.QGesture, ): cint =
  cint(fcQGesture_gestureType(self.h))

proc state*(self: gen_qgesture_types.QGesture, ): cint =
  cint(fcQGesture_state(self.h))

proc hotSpot*(self: gen_qgesture_types.QGesture, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGesture_hotSpot(self.h))

proc setHotSpot*(self: gen_qgesture_types.QGesture, value: gen_qpoint_types.QPointF): void =
  fcQGesture_setHotSpot(self.h, value.h)

proc hasHotSpot*(self: gen_qgesture_types.QGesture, ): bool =
  fcQGesture_hasHotSpot(self.h)

proc unsetHotSpot*(self: gen_qgesture_types.QGesture, ): void =
  fcQGesture_unsetHotSpot(self.h)

proc setGestureCancelPolicy*(self: gen_qgesture_types.QGesture, policy: cint): void =
  fcQGesture_setGestureCancelPolicy(self.h, cint(policy))

proc gestureCancelPolicy*(self: gen_qgesture_types.QGesture, ): cint =
  cint(fcQGesture_gestureCancelPolicy(self.h))

proc tr*(_: type gen_qgesture_types.QGesture, s: cstring, c: cstring): string =
  let v_ms = fcQGesture_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgesture_types.QGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGesture_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QGesture, s: cstring, c: cstring): string =
  let v_ms = fcQGesture_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGesture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QGesturemetaObjectProc* = proc(self: QGesture): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QGesturemetacastProc* = proc(self: QGesture, param1: cstring): pointer {.raises: [], gcsafe.}
type QGesturemetacallProc* = proc(self: QGesture, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QGestureeventProc* = proc(self: QGesture, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGestureeventFilterProc* = proc(self: QGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGesturetimerEventProc* = proc(self: QGesture, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGesturechildEventProc* = proc(self: QGesture, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QGesturecustomEventProc* = proc(self: QGesture, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGestureconnectNotifyProc* = proc(self: QGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGesturedisconnectNotifyProc* = proc(self: QGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGestureVTable* = object
  vtbl: cQGestureVTable
  metaObject*: QGesturemetaObjectProc
  metacast*: QGesturemetacastProc
  metacall*: QGesturemetacallProc
  event*: QGestureeventProc
  eventFilter*: QGestureeventFilterProc
  timerEvent*: QGesturetimerEventProc
  childEvent*: QGesturechildEventProc
  customEvent*: QGesturecustomEventProc
  connectNotify*: QGestureconnectNotifyProc
  disconnectNotify*: QGesturedisconnectNotifyProc
proc QGesturemetaObject*(self: gen_qgesture_types.QGesture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGesture_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQGesture_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGestureVTable](vtbl)
  let self = QGesture(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QGesturemetacast*(self: gen_qgesture_types.QGesture, param1: cstring): pointer =
  fcQGesture_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQGesture_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGestureVTable](vtbl)
  let self = QGesture(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGesturemetacall*(self: gen_qgesture_types.QGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQGesture_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQGesture_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGestureVTable](vtbl)
  let self = QGesture(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGestureevent*(self: gen_qgesture_types.QGesture, event: gen_qcoreevent_types.QEvent): bool =
  fcQGesture_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQGesture_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGestureVTable](vtbl)
  let self = QGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGestureeventFilter*(self: gen_qgesture_types.QGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGesture_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGesture_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGestureVTable](vtbl)
  let self = QGesture(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGesturetimerEvent*(self: gen_qgesture_types.QGesture, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGesture_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQGesture_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGestureVTable](vtbl)
  let self = QGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QGesturechildEvent*(self: gen_qgesture_types.QGesture, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGesture_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQGesture_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGestureVTable](vtbl)
  let self = QGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QGesturecustomEvent*(self: gen_qgesture_types.QGesture, event: gen_qcoreevent_types.QEvent): void =
  fcQGesture_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQGesture_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGestureVTable](vtbl)
  let self = QGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QGestureconnectNotify*(self: gen_qgesture_types.QGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGesture_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGesture_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGestureVTable](vtbl)
  let self = QGesture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QGesturedisconnectNotify*(self: gen_qgesture_types.QGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGesture_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGesture_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGestureVTable](vtbl)
  let self = QGesture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qgesture_types.QGesture,
    vtbl: ref QGestureVTable = nil): gen_qgesture_types.QGesture =
  let vtbl = if vtbl == nil: new QGestureVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGestureVTable, _: ptr cQGesture) {.cdecl.} =
    let vtbl = cast[ref QGestureVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGesture_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGesture_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGesture_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGesture_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGesture_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGesture_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGesture_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGesture_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGesture_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGesture_disconnectNotify
  gen_qgesture_types.QGesture(h: fcQGesture_new(addr(vtbl[]), ))

proc create*(T: type gen_qgesture_types.QGesture,
    parent: gen_qobject_types.QObject,
    vtbl: ref QGestureVTable = nil): gen_qgesture_types.QGesture =
  let vtbl = if vtbl == nil: new QGestureVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGestureVTable, _: ptr cQGesture) {.cdecl.} =
    let vtbl = cast[ref QGestureVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGesture_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGesture_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGesture_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGesture_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGesture_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGesture_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGesture_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGesture_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGesture_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGesture_disconnectNotify
  gen_qgesture_types.QGesture(h: fcQGesture_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qgesture_types.QGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGesture_staticMetaObject())
proc delete*(self: gen_qgesture_types.QGesture) =
  fcQGesture_delete(self.h)
proc metaObject*(self: gen_qgesture_types.QPanGesture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPanGesture_metaObject(self.h))

proc metacast*(self: gen_qgesture_types.QPanGesture, param1: cstring): pointer =
  fcQPanGesture_metacast(self.h, param1)

proc metacall*(self: gen_qgesture_types.QPanGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQPanGesture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgesture_types.QPanGesture, s: cstring): string =
  let v_ms = fcQPanGesture_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QPanGesture, s: cstring): string =
  let v_ms = fcQPanGesture_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc lastOffset*(self: gen_qgesture_types.QPanGesture, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPanGesture_lastOffset(self.h))

proc offset*(self: gen_qgesture_types.QPanGesture, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPanGesture_offset(self.h))

proc delta*(self: gen_qgesture_types.QPanGesture, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPanGesture_delta(self.h))

proc acceleration*(self: gen_qgesture_types.QPanGesture, ): float64 =
  fcQPanGesture_acceleration(self.h)

proc setLastOffset*(self: gen_qgesture_types.QPanGesture, value: gen_qpoint_types.QPointF): void =
  fcQPanGesture_setLastOffset(self.h, value.h)

proc setOffset*(self: gen_qgesture_types.QPanGesture, value: gen_qpoint_types.QPointF): void =
  fcQPanGesture_setOffset(self.h, value.h)

proc setAcceleration*(self: gen_qgesture_types.QPanGesture, value: float64): void =
  fcQPanGesture_setAcceleration(self.h, value)

proc tr*(_: type gen_qgesture_types.QPanGesture, s: cstring, c: cstring): string =
  let v_ms = fcQPanGesture_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgesture_types.QPanGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPanGesture_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QPanGesture, s: cstring, c: cstring): string =
  let v_ms = fcQPanGesture_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QPanGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPanGesture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QPanGesturemetaObjectProc* = proc(self: QPanGesture): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QPanGesturemetacastProc* = proc(self: QPanGesture, param1: cstring): pointer {.raises: [], gcsafe.}
type QPanGesturemetacallProc* = proc(self: QPanGesture, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QPanGestureeventProc* = proc(self: QPanGesture, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPanGestureeventFilterProc* = proc(self: QPanGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPanGesturetimerEventProc* = proc(self: QPanGesture, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QPanGesturechildEventProc* = proc(self: QPanGesture, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QPanGesturecustomEventProc* = proc(self: QPanGesture, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPanGestureconnectNotifyProc* = proc(self: QPanGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPanGesturedisconnectNotifyProc* = proc(self: QPanGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPanGestureVTable* = object
  vtbl: cQPanGestureVTable
  metaObject*: QPanGesturemetaObjectProc
  metacast*: QPanGesturemetacastProc
  metacall*: QPanGesturemetacallProc
  event*: QPanGestureeventProc
  eventFilter*: QPanGestureeventFilterProc
  timerEvent*: QPanGesturetimerEventProc
  childEvent*: QPanGesturechildEventProc
  customEvent*: QPanGesturecustomEventProc
  connectNotify*: QPanGestureconnectNotifyProc
  disconnectNotify*: QPanGesturedisconnectNotifyProc
proc QPanGesturemetaObject*(self: gen_qgesture_types.QPanGesture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPanGesture_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQPanGesture_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPanGestureVTable](vtbl)
  let self = QPanGesture(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QPanGesturemetacast*(self: gen_qgesture_types.QPanGesture, param1: cstring): pointer =
  fcQPanGesture_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQPanGesture_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPanGestureVTable](vtbl)
  let self = QPanGesture(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QPanGesturemetacall*(self: gen_qgesture_types.QPanGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQPanGesture_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQPanGesture_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPanGestureVTable](vtbl)
  let self = QPanGesture(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QPanGestureevent*(self: gen_qgesture_types.QPanGesture, event: gen_qcoreevent_types.QEvent): bool =
  fcQPanGesture_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQPanGesture_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPanGestureVTable](vtbl)
  let self = QPanGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QPanGestureeventFilter*(self: gen_qgesture_types.QPanGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQPanGesture_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQPanGesture_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPanGestureVTable](vtbl)
  let self = QPanGesture(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QPanGesturetimerEvent*(self: gen_qgesture_types.QPanGesture, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPanGesture_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQPanGesture_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPanGestureVTable](vtbl)
  let self = QPanGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QPanGesturechildEvent*(self: gen_qgesture_types.QPanGesture, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPanGesture_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQPanGesture_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPanGestureVTable](vtbl)
  let self = QPanGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QPanGesturecustomEvent*(self: gen_qgesture_types.QPanGesture, event: gen_qcoreevent_types.QEvent): void =
  fcQPanGesture_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQPanGesture_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPanGestureVTable](vtbl)
  let self = QPanGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QPanGestureconnectNotify*(self: gen_qgesture_types.QPanGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPanGesture_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQPanGesture_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPanGestureVTable](vtbl)
  let self = QPanGesture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QPanGesturedisconnectNotify*(self: gen_qgesture_types.QPanGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPanGesture_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQPanGesture_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPanGestureVTable](vtbl)
  let self = QPanGesture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qgesture_types.QPanGesture,
    vtbl: ref QPanGestureVTable = nil): gen_qgesture_types.QPanGesture =
  let vtbl = if vtbl == nil: new QPanGestureVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPanGestureVTable, _: ptr cQPanGesture) {.cdecl.} =
    let vtbl = cast[ref QPanGestureVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPanGesture_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPanGesture_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPanGesture_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPanGesture_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPanGesture_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPanGesture_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPanGesture_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPanGesture_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPanGesture_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPanGesture_disconnectNotify
  gen_qgesture_types.QPanGesture(h: fcQPanGesture_new(addr(vtbl[]), ))

proc create*(T: type gen_qgesture_types.QPanGesture,
    parent: gen_qobject_types.QObject,
    vtbl: ref QPanGestureVTable = nil): gen_qgesture_types.QPanGesture =
  let vtbl = if vtbl == nil: new QPanGestureVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPanGestureVTable, _: ptr cQPanGesture) {.cdecl.} =
    let vtbl = cast[ref QPanGestureVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPanGesture_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPanGesture_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPanGesture_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPanGesture_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPanGesture_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPanGesture_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPanGesture_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPanGesture_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPanGesture_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPanGesture_disconnectNotify
  gen_qgesture_types.QPanGesture(h: fcQPanGesture_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qgesture_types.QPanGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPanGesture_staticMetaObject())
proc delete*(self: gen_qgesture_types.QPanGesture) =
  fcQPanGesture_delete(self.h)
proc metaObject*(self: gen_qgesture_types.QPinchGesture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPinchGesture_metaObject(self.h))

proc metacast*(self: gen_qgesture_types.QPinchGesture, param1: cstring): pointer =
  fcQPinchGesture_metacast(self.h, param1)

proc metacall*(self: gen_qgesture_types.QPinchGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQPinchGesture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgesture_types.QPinchGesture, s: cstring): string =
  let v_ms = fcQPinchGesture_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QPinchGesture, s: cstring): string =
  let v_ms = fcQPinchGesture_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc totalChangeFlags*(self: gen_qgesture_types.QPinchGesture, ): cint =
  cint(fcQPinchGesture_totalChangeFlags(self.h))

proc setTotalChangeFlags*(self: gen_qgesture_types.QPinchGesture, value: cint): void =
  fcQPinchGesture_setTotalChangeFlags(self.h, cint(value))

proc changeFlags*(self: gen_qgesture_types.QPinchGesture, ): cint =
  cint(fcQPinchGesture_changeFlags(self.h))

proc setChangeFlags*(self: gen_qgesture_types.QPinchGesture, value: cint): void =
  fcQPinchGesture_setChangeFlags(self.h, cint(value))

proc startCenterPoint*(self: gen_qgesture_types.QPinchGesture, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPinchGesture_startCenterPoint(self.h))

proc lastCenterPoint*(self: gen_qgesture_types.QPinchGesture, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPinchGesture_lastCenterPoint(self.h))

proc centerPoint*(self: gen_qgesture_types.QPinchGesture, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPinchGesture_centerPoint(self.h))

proc setStartCenterPoint*(self: gen_qgesture_types.QPinchGesture, value: gen_qpoint_types.QPointF): void =
  fcQPinchGesture_setStartCenterPoint(self.h, value.h)

proc setLastCenterPoint*(self: gen_qgesture_types.QPinchGesture, value: gen_qpoint_types.QPointF): void =
  fcQPinchGesture_setLastCenterPoint(self.h, value.h)

proc setCenterPoint*(self: gen_qgesture_types.QPinchGesture, value: gen_qpoint_types.QPointF): void =
  fcQPinchGesture_setCenterPoint(self.h, value.h)

proc totalScaleFactor*(self: gen_qgesture_types.QPinchGesture, ): float64 =
  fcQPinchGesture_totalScaleFactor(self.h)

proc lastScaleFactor*(self: gen_qgesture_types.QPinchGesture, ): float64 =
  fcQPinchGesture_lastScaleFactor(self.h)

proc scaleFactor*(self: gen_qgesture_types.QPinchGesture, ): float64 =
  fcQPinchGesture_scaleFactor(self.h)

proc setTotalScaleFactor*(self: gen_qgesture_types.QPinchGesture, value: float64): void =
  fcQPinchGesture_setTotalScaleFactor(self.h, value)

proc setLastScaleFactor*(self: gen_qgesture_types.QPinchGesture, value: float64): void =
  fcQPinchGesture_setLastScaleFactor(self.h, value)

proc setScaleFactor*(self: gen_qgesture_types.QPinchGesture, value: float64): void =
  fcQPinchGesture_setScaleFactor(self.h, value)

proc totalRotationAngle*(self: gen_qgesture_types.QPinchGesture, ): float64 =
  fcQPinchGesture_totalRotationAngle(self.h)

proc lastRotationAngle*(self: gen_qgesture_types.QPinchGesture, ): float64 =
  fcQPinchGesture_lastRotationAngle(self.h)

proc rotationAngle*(self: gen_qgesture_types.QPinchGesture, ): float64 =
  fcQPinchGesture_rotationAngle(self.h)

proc setTotalRotationAngle*(self: gen_qgesture_types.QPinchGesture, value: float64): void =
  fcQPinchGesture_setTotalRotationAngle(self.h, value)

proc setLastRotationAngle*(self: gen_qgesture_types.QPinchGesture, value: float64): void =
  fcQPinchGesture_setLastRotationAngle(self.h, value)

proc setRotationAngle*(self: gen_qgesture_types.QPinchGesture, value: float64): void =
  fcQPinchGesture_setRotationAngle(self.h, value)

proc tr*(_: type gen_qgesture_types.QPinchGesture, s: cstring, c: cstring): string =
  let v_ms = fcQPinchGesture_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgesture_types.QPinchGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPinchGesture_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QPinchGesture, s: cstring, c: cstring): string =
  let v_ms = fcQPinchGesture_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QPinchGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPinchGesture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QPinchGesturemetaObjectProc* = proc(self: QPinchGesture): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QPinchGesturemetacastProc* = proc(self: QPinchGesture, param1: cstring): pointer {.raises: [], gcsafe.}
type QPinchGesturemetacallProc* = proc(self: QPinchGesture, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QPinchGestureeventProc* = proc(self: QPinchGesture, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPinchGestureeventFilterProc* = proc(self: QPinchGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPinchGesturetimerEventProc* = proc(self: QPinchGesture, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QPinchGesturechildEventProc* = proc(self: QPinchGesture, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QPinchGesturecustomEventProc* = proc(self: QPinchGesture, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPinchGestureconnectNotifyProc* = proc(self: QPinchGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPinchGesturedisconnectNotifyProc* = proc(self: QPinchGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPinchGestureVTable* = object
  vtbl: cQPinchGestureVTable
  metaObject*: QPinchGesturemetaObjectProc
  metacast*: QPinchGesturemetacastProc
  metacall*: QPinchGesturemetacallProc
  event*: QPinchGestureeventProc
  eventFilter*: QPinchGestureeventFilterProc
  timerEvent*: QPinchGesturetimerEventProc
  childEvent*: QPinchGesturechildEventProc
  customEvent*: QPinchGesturecustomEventProc
  connectNotify*: QPinchGestureconnectNotifyProc
  disconnectNotify*: QPinchGesturedisconnectNotifyProc
proc QPinchGesturemetaObject*(self: gen_qgesture_types.QPinchGesture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPinchGesture_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQPinchGesture_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPinchGestureVTable](vtbl)
  let self = QPinchGesture(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QPinchGesturemetacast*(self: gen_qgesture_types.QPinchGesture, param1: cstring): pointer =
  fcQPinchGesture_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQPinchGesture_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPinchGestureVTable](vtbl)
  let self = QPinchGesture(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QPinchGesturemetacall*(self: gen_qgesture_types.QPinchGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQPinchGesture_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQPinchGesture_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPinchGestureVTable](vtbl)
  let self = QPinchGesture(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QPinchGestureevent*(self: gen_qgesture_types.QPinchGesture, event: gen_qcoreevent_types.QEvent): bool =
  fcQPinchGesture_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQPinchGesture_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPinchGestureVTable](vtbl)
  let self = QPinchGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QPinchGestureeventFilter*(self: gen_qgesture_types.QPinchGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQPinchGesture_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQPinchGesture_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPinchGestureVTable](vtbl)
  let self = QPinchGesture(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QPinchGesturetimerEvent*(self: gen_qgesture_types.QPinchGesture, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPinchGesture_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQPinchGesture_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPinchGestureVTable](vtbl)
  let self = QPinchGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QPinchGesturechildEvent*(self: gen_qgesture_types.QPinchGesture, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPinchGesture_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQPinchGesture_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPinchGestureVTable](vtbl)
  let self = QPinchGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QPinchGesturecustomEvent*(self: gen_qgesture_types.QPinchGesture, event: gen_qcoreevent_types.QEvent): void =
  fcQPinchGesture_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQPinchGesture_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPinchGestureVTable](vtbl)
  let self = QPinchGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QPinchGestureconnectNotify*(self: gen_qgesture_types.QPinchGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPinchGesture_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQPinchGesture_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPinchGestureVTable](vtbl)
  let self = QPinchGesture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QPinchGesturedisconnectNotify*(self: gen_qgesture_types.QPinchGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPinchGesture_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQPinchGesture_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPinchGestureVTable](vtbl)
  let self = QPinchGesture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qgesture_types.QPinchGesture,
    vtbl: ref QPinchGestureVTable = nil): gen_qgesture_types.QPinchGesture =
  let vtbl = if vtbl == nil: new QPinchGestureVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPinchGestureVTable, _: ptr cQPinchGesture) {.cdecl.} =
    let vtbl = cast[ref QPinchGestureVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPinchGesture_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPinchGesture_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPinchGesture_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPinchGesture_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPinchGesture_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPinchGesture_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPinchGesture_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPinchGesture_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPinchGesture_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPinchGesture_disconnectNotify
  gen_qgesture_types.QPinchGesture(h: fcQPinchGesture_new(addr(vtbl[]), ))

proc create*(T: type gen_qgesture_types.QPinchGesture,
    parent: gen_qobject_types.QObject,
    vtbl: ref QPinchGestureVTable = nil): gen_qgesture_types.QPinchGesture =
  let vtbl = if vtbl == nil: new QPinchGestureVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPinchGestureVTable, _: ptr cQPinchGesture) {.cdecl.} =
    let vtbl = cast[ref QPinchGestureVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPinchGesture_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPinchGesture_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPinchGesture_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPinchGesture_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPinchGesture_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPinchGesture_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPinchGesture_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPinchGesture_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPinchGesture_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPinchGesture_disconnectNotify
  gen_qgesture_types.QPinchGesture(h: fcQPinchGesture_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qgesture_types.QPinchGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPinchGesture_staticMetaObject())
proc delete*(self: gen_qgesture_types.QPinchGesture) =
  fcQPinchGesture_delete(self.h)
proc metaObject*(self: gen_qgesture_types.QSwipeGesture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSwipeGesture_metaObject(self.h))

proc metacast*(self: gen_qgesture_types.QSwipeGesture, param1: cstring): pointer =
  fcQSwipeGesture_metacast(self.h, param1)

proc metacall*(self: gen_qgesture_types.QSwipeGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQSwipeGesture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgesture_types.QSwipeGesture, s: cstring): string =
  let v_ms = fcQSwipeGesture_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QSwipeGesture, s: cstring): string =
  let v_ms = fcQSwipeGesture_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc horizontalDirection*(self: gen_qgesture_types.QSwipeGesture, ): cint =
  cint(fcQSwipeGesture_horizontalDirection(self.h))

proc verticalDirection*(self: gen_qgesture_types.QSwipeGesture, ): cint =
  cint(fcQSwipeGesture_verticalDirection(self.h))

proc swipeAngle*(self: gen_qgesture_types.QSwipeGesture, ): float64 =
  fcQSwipeGesture_swipeAngle(self.h)

proc setSwipeAngle*(self: gen_qgesture_types.QSwipeGesture, value: float64): void =
  fcQSwipeGesture_setSwipeAngle(self.h, value)

proc tr*(_: type gen_qgesture_types.QSwipeGesture, s: cstring, c: cstring): string =
  let v_ms = fcQSwipeGesture_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgesture_types.QSwipeGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSwipeGesture_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QSwipeGesture, s: cstring, c: cstring): string =
  let v_ms = fcQSwipeGesture_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QSwipeGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSwipeGesture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QSwipeGesturemetaObjectProc* = proc(self: QSwipeGesture): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSwipeGesturemetacastProc* = proc(self: QSwipeGesture, param1: cstring): pointer {.raises: [], gcsafe.}
type QSwipeGesturemetacallProc* = proc(self: QSwipeGesture, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSwipeGestureeventProc* = proc(self: QSwipeGesture, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSwipeGestureeventFilterProc* = proc(self: QSwipeGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSwipeGesturetimerEventProc* = proc(self: QSwipeGesture, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSwipeGesturechildEventProc* = proc(self: QSwipeGesture, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSwipeGesturecustomEventProc* = proc(self: QSwipeGesture, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSwipeGestureconnectNotifyProc* = proc(self: QSwipeGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSwipeGesturedisconnectNotifyProc* = proc(self: QSwipeGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSwipeGestureVTable* = object
  vtbl: cQSwipeGestureVTable
  metaObject*: QSwipeGesturemetaObjectProc
  metacast*: QSwipeGesturemetacastProc
  metacall*: QSwipeGesturemetacallProc
  event*: QSwipeGestureeventProc
  eventFilter*: QSwipeGestureeventFilterProc
  timerEvent*: QSwipeGesturetimerEventProc
  childEvent*: QSwipeGesturechildEventProc
  customEvent*: QSwipeGesturecustomEventProc
  connectNotify*: QSwipeGestureconnectNotifyProc
  disconnectNotify*: QSwipeGesturedisconnectNotifyProc
proc QSwipeGesturemetaObject*(self: gen_qgesture_types.QSwipeGesture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSwipeGesture_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQSwipeGesture_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSwipeGestureVTable](vtbl)
  let self = QSwipeGesture(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QSwipeGesturemetacast*(self: gen_qgesture_types.QSwipeGesture, param1: cstring): pointer =
  fcQSwipeGesture_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQSwipeGesture_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSwipeGestureVTable](vtbl)
  let self = QSwipeGesture(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSwipeGesturemetacall*(self: gen_qgesture_types.QSwipeGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQSwipeGesture_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQSwipeGesture_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSwipeGestureVTable](vtbl)
  let self = QSwipeGesture(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSwipeGestureevent*(self: gen_qgesture_types.QSwipeGesture, event: gen_qcoreevent_types.QEvent): bool =
  fcQSwipeGesture_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQSwipeGesture_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSwipeGestureVTable](vtbl)
  let self = QSwipeGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSwipeGestureeventFilter*(self: gen_qgesture_types.QSwipeGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSwipeGesture_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQSwipeGesture_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSwipeGestureVTable](vtbl)
  let self = QSwipeGesture(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSwipeGesturetimerEvent*(self: gen_qgesture_types.QSwipeGesture, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSwipeGesture_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQSwipeGesture_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSwipeGestureVTable](vtbl)
  let self = QSwipeGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QSwipeGesturechildEvent*(self: gen_qgesture_types.QSwipeGesture, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSwipeGesture_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQSwipeGesture_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSwipeGestureVTable](vtbl)
  let self = QSwipeGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QSwipeGesturecustomEvent*(self: gen_qgesture_types.QSwipeGesture, event: gen_qcoreevent_types.QEvent): void =
  fcQSwipeGesture_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQSwipeGesture_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSwipeGestureVTable](vtbl)
  let self = QSwipeGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QSwipeGestureconnectNotify*(self: gen_qgesture_types.QSwipeGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSwipeGesture_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSwipeGesture_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSwipeGestureVTable](vtbl)
  let self = QSwipeGesture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QSwipeGesturedisconnectNotify*(self: gen_qgesture_types.QSwipeGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSwipeGesture_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSwipeGesture_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSwipeGestureVTable](vtbl)
  let self = QSwipeGesture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qgesture_types.QSwipeGesture,
    vtbl: ref QSwipeGestureVTable = nil): gen_qgesture_types.QSwipeGesture =
  let vtbl = if vtbl == nil: new QSwipeGestureVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSwipeGestureVTable, _: ptr cQSwipeGesture) {.cdecl.} =
    let vtbl = cast[ref QSwipeGestureVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSwipeGesture_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSwipeGesture_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSwipeGesture_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSwipeGesture_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSwipeGesture_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSwipeGesture_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSwipeGesture_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSwipeGesture_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSwipeGesture_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSwipeGesture_disconnectNotify
  gen_qgesture_types.QSwipeGesture(h: fcQSwipeGesture_new(addr(vtbl[]), ))

proc create*(T: type gen_qgesture_types.QSwipeGesture,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSwipeGestureVTable = nil): gen_qgesture_types.QSwipeGesture =
  let vtbl = if vtbl == nil: new QSwipeGestureVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSwipeGestureVTable, _: ptr cQSwipeGesture) {.cdecl.} =
    let vtbl = cast[ref QSwipeGestureVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSwipeGesture_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSwipeGesture_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSwipeGesture_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSwipeGesture_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSwipeGesture_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSwipeGesture_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSwipeGesture_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSwipeGesture_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSwipeGesture_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSwipeGesture_disconnectNotify
  gen_qgesture_types.QSwipeGesture(h: fcQSwipeGesture_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qgesture_types.QSwipeGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSwipeGesture_staticMetaObject())
proc delete*(self: gen_qgesture_types.QSwipeGesture) =
  fcQSwipeGesture_delete(self.h)
proc metaObject*(self: gen_qgesture_types.QTapGesture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTapGesture_metaObject(self.h))

proc metacast*(self: gen_qgesture_types.QTapGesture, param1: cstring): pointer =
  fcQTapGesture_metacast(self.h, param1)

proc metacall*(self: gen_qgesture_types.QTapGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQTapGesture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgesture_types.QTapGesture, s: cstring): string =
  let v_ms = fcQTapGesture_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QTapGesture, s: cstring): string =
  let v_ms = fcQTapGesture_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc position*(self: gen_qgesture_types.QTapGesture, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQTapGesture_position(self.h))

proc setPosition*(self: gen_qgesture_types.QTapGesture, pos: gen_qpoint_types.QPointF): void =
  fcQTapGesture_setPosition(self.h, pos.h)

proc tr*(_: type gen_qgesture_types.QTapGesture, s: cstring, c: cstring): string =
  let v_ms = fcQTapGesture_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgesture_types.QTapGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTapGesture_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QTapGesture, s: cstring, c: cstring): string =
  let v_ms = fcQTapGesture_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QTapGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTapGesture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QTapGesturemetaObjectProc* = proc(self: QTapGesture): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QTapGesturemetacastProc* = proc(self: QTapGesture, param1: cstring): pointer {.raises: [], gcsafe.}
type QTapGesturemetacallProc* = proc(self: QTapGesture, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QTapGestureeventProc* = proc(self: QTapGesture, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTapGestureeventFilterProc* = proc(self: QTapGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTapGesturetimerEventProc* = proc(self: QTapGesture, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QTapGesturechildEventProc* = proc(self: QTapGesture, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QTapGesturecustomEventProc* = proc(self: QTapGesture, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTapGestureconnectNotifyProc* = proc(self: QTapGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTapGesturedisconnectNotifyProc* = proc(self: QTapGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTapGestureVTable* = object
  vtbl: cQTapGestureVTable
  metaObject*: QTapGesturemetaObjectProc
  metacast*: QTapGesturemetacastProc
  metacall*: QTapGesturemetacallProc
  event*: QTapGestureeventProc
  eventFilter*: QTapGestureeventFilterProc
  timerEvent*: QTapGesturetimerEventProc
  childEvent*: QTapGesturechildEventProc
  customEvent*: QTapGesturecustomEventProc
  connectNotify*: QTapGestureconnectNotifyProc
  disconnectNotify*: QTapGesturedisconnectNotifyProc
proc QTapGesturemetaObject*(self: gen_qgesture_types.QTapGesture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTapGesture_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQTapGesture_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTapGestureVTable](vtbl)
  let self = QTapGesture(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QTapGesturemetacast*(self: gen_qgesture_types.QTapGesture, param1: cstring): pointer =
  fcQTapGesture_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQTapGesture_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTapGestureVTable](vtbl)
  let self = QTapGesture(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QTapGesturemetacall*(self: gen_qgesture_types.QTapGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQTapGesture_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQTapGesture_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTapGestureVTable](vtbl)
  let self = QTapGesture(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTapGestureevent*(self: gen_qgesture_types.QTapGesture, event: gen_qcoreevent_types.QEvent): bool =
  fcQTapGesture_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQTapGesture_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTapGestureVTable](vtbl)
  let self = QTapGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QTapGestureeventFilter*(self: gen_qgesture_types.QTapGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTapGesture_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQTapGesture_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTapGestureVTable](vtbl)
  let self = QTapGesture(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QTapGesturetimerEvent*(self: gen_qgesture_types.QTapGesture, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTapGesture_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQTapGesture_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTapGestureVTable](vtbl)
  let self = QTapGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QTapGesturechildEvent*(self: gen_qgesture_types.QTapGesture, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTapGesture_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQTapGesture_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTapGestureVTable](vtbl)
  let self = QTapGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QTapGesturecustomEvent*(self: gen_qgesture_types.QTapGesture, event: gen_qcoreevent_types.QEvent): void =
  fcQTapGesture_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQTapGesture_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTapGestureVTable](vtbl)
  let self = QTapGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QTapGestureconnectNotify*(self: gen_qgesture_types.QTapGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTapGesture_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTapGesture_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTapGestureVTable](vtbl)
  let self = QTapGesture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QTapGesturedisconnectNotify*(self: gen_qgesture_types.QTapGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTapGesture_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTapGesture_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTapGestureVTable](vtbl)
  let self = QTapGesture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qgesture_types.QTapGesture,
    vtbl: ref QTapGestureVTable = nil): gen_qgesture_types.QTapGesture =
  let vtbl = if vtbl == nil: new QTapGestureVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTapGestureVTable, _: ptr cQTapGesture) {.cdecl.} =
    let vtbl = cast[ref QTapGestureVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTapGesture_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTapGesture_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTapGesture_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTapGesture_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTapGesture_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTapGesture_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTapGesture_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTapGesture_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTapGesture_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTapGesture_disconnectNotify
  gen_qgesture_types.QTapGesture(h: fcQTapGesture_new(addr(vtbl[]), ))

proc create*(T: type gen_qgesture_types.QTapGesture,
    parent: gen_qobject_types.QObject,
    vtbl: ref QTapGestureVTable = nil): gen_qgesture_types.QTapGesture =
  let vtbl = if vtbl == nil: new QTapGestureVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTapGestureVTable, _: ptr cQTapGesture) {.cdecl.} =
    let vtbl = cast[ref QTapGestureVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTapGesture_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTapGesture_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTapGesture_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTapGesture_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTapGesture_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTapGesture_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTapGesture_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTapGesture_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTapGesture_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTapGesture_disconnectNotify
  gen_qgesture_types.QTapGesture(h: fcQTapGesture_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qgesture_types.QTapGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTapGesture_staticMetaObject())
proc delete*(self: gen_qgesture_types.QTapGesture) =
  fcQTapGesture_delete(self.h)
proc metaObject*(self: gen_qgesture_types.QTapAndHoldGesture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTapAndHoldGesture_metaObject(self.h))

proc metacast*(self: gen_qgesture_types.QTapAndHoldGesture, param1: cstring): pointer =
  fcQTapAndHoldGesture_metacast(self.h, param1)

proc metacall*(self: gen_qgesture_types.QTapAndHoldGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQTapAndHoldGesture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgesture_types.QTapAndHoldGesture, s: cstring): string =
  let v_ms = fcQTapAndHoldGesture_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QTapAndHoldGesture, s: cstring): string =
  let v_ms = fcQTapAndHoldGesture_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc position*(self: gen_qgesture_types.QTapAndHoldGesture, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQTapAndHoldGesture_position(self.h))

proc setPosition*(self: gen_qgesture_types.QTapAndHoldGesture, pos: gen_qpoint_types.QPointF): void =
  fcQTapAndHoldGesture_setPosition(self.h, pos.h)

proc setTimeout*(_: type gen_qgesture_types.QTapAndHoldGesture, msecs: cint): void =
  fcQTapAndHoldGesture_setTimeout(msecs)

proc timeout*(_: type gen_qgesture_types.QTapAndHoldGesture, ): cint =
  fcQTapAndHoldGesture_timeout()

proc tr*(_: type gen_qgesture_types.QTapAndHoldGesture, s: cstring, c: cstring): string =
  let v_ms = fcQTapAndHoldGesture_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgesture_types.QTapAndHoldGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTapAndHoldGesture_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QTapAndHoldGesture, s: cstring, c: cstring): string =
  let v_ms = fcQTapAndHoldGesture_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QTapAndHoldGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTapAndHoldGesture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QTapAndHoldGesturemetaObjectProc* = proc(self: QTapAndHoldGesture): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QTapAndHoldGesturemetacastProc* = proc(self: QTapAndHoldGesture, param1: cstring): pointer {.raises: [], gcsafe.}
type QTapAndHoldGesturemetacallProc* = proc(self: QTapAndHoldGesture, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QTapAndHoldGestureeventProc* = proc(self: QTapAndHoldGesture, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTapAndHoldGestureeventFilterProc* = proc(self: QTapAndHoldGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTapAndHoldGesturetimerEventProc* = proc(self: QTapAndHoldGesture, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QTapAndHoldGesturechildEventProc* = proc(self: QTapAndHoldGesture, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QTapAndHoldGesturecustomEventProc* = proc(self: QTapAndHoldGesture, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTapAndHoldGestureconnectNotifyProc* = proc(self: QTapAndHoldGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTapAndHoldGesturedisconnectNotifyProc* = proc(self: QTapAndHoldGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTapAndHoldGestureVTable* = object
  vtbl: cQTapAndHoldGestureVTable
  metaObject*: QTapAndHoldGesturemetaObjectProc
  metacast*: QTapAndHoldGesturemetacastProc
  metacall*: QTapAndHoldGesturemetacallProc
  event*: QTapAndHoldGestureeventProc
  eventFilter*: QTapAndHoldGestureeventFilterProc
  timerEvent*: QTapAndHoldGesturetimerEventProc
  childEvent*: QTapAndHoldGesturechildEventProc
  customEvent*: QTapAndHoldGesturecustomEventProc
  connectNotify*: QTapAndHoldGestureconnectNotifyProc
  disconnectNotify*: QTapAndHoldGesturedisconnectNotifyProc
proc QTapAndHoldGesturemetaObject*(self: gen_qgesture_types.QTapAndHoldGesture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTapAndHoldGesture_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQTapAndHoldGesture_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTapAndHoldGestureVTable](vtbl)
  let self = QTapAndHoldGesture(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QTapAndHoldGesturemetacast*(self: gen_qgesture_types.QTapAndHoldGesture, param1: cstring): pointer =
  fcQTapAndHoldGesture_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQTapAndHoldGesture_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTapAndHoldGestureVTable](vtbl)
  let self = QTapAndHoldGesture(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QTapAndHoldGesturemetacall*(self: gen_qgesture_types.QTapAndHoldGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQTapAndHoldGesture_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQTapAndHoldGesture_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTapAndHoldGestureVTable](vtbl)
  let self = QTapAndHoldGesture(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTapAndHoldGestureevent*(self: gen_qgesture_types.QTapAndHoldGesture, event: gen_qcoreevent_types.QEvent): bool =
  fcQTapAndHoldGesture_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQTapAndHoldGesture_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTapAndHoldGestureVTable](vtbl)
  let self = QTapAndHoldGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QTapAndHoldGestureeventFilter*(self: gen_qgesture_types.QTapAndHoldGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTapAndHoldGesture_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQTapAndHoldGesture_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTapAndHoldGestureVTable](vtbl)
  let self = QTapAndHoldGesture(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QTapAndHoldGesturetimerEvent*(self: gen_qgesture_types.QTapAndHoldGesture, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTapAndHoldGesture_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQTapAndHoldGesture_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTapAndHoldGestureVTable](vtbl)
  let self = QTapAndHoldGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QTapAndHoldGesturechildEvent*(self: gen_qgesture_types.QTapAndHoldGesture, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTapAndHoldGesture_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQTapAndHoldGesture_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTapAndHoldGestureVTable](vtbl)
  let self = QTapAndHoldGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QTapAndHoldGesturecustomEvent*(self: gen_qgesture_types.QTapAndHoldGesture, event: gen_qcoreevent_types.QEvent): void =
  fcQTapAndHoldGesture_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQTapAndHoldGesture_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTapAndHoldGestureVTable](vtbl)
  let self = QTapAndHoldGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QTapAndHoldGestureconnectNotify*(self: gen_qgesture_types.QTapAndHoldGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTapAndHoldGesture_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTapAndHoldGesture_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTapAndHoldGestureVTable](vtbl)
  let self = QTapAndHoldGesture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QTapAndHoldGesturedisconnectNotify*(self: gen_qgesture_types.QTapAndHoldGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTapAndHoldGesture_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTapAndHoldGesture_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTapAndHoldGestureVTable](vtbl)
  let self = QTapAndHoldGesture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qgesture_types.QTapAndHoldGesture,
    vtbl: ref QTapAndHoldGestureVTable = nil): gen_qgesture_types.QTapAndHoldGesture =
  let vtbl = if vtbl == nil: new QTapAndHoldGestureVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTapAndHoldGestureVTable, _: ptr cQTapAndHoldGesture) {.cdecl.} =
    let vtbl = cast[ref QTapAndHoldGestureVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTapAndHoldGesture_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTapAndHoldGesture_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTapAndHoldGesture_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTapAndHoldGesture_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTapAndHoldGesture_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTapAndHoldGesture_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTapAndHoldGesture_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTapAndHoldGesture_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTapAndHoldGesture_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTapAndHoldGesture_disconnectNotify
  gen_qgesture_types.QTapAndHoldGesture(h: fcQTapAndHoldGesture_new(addr(vtbl[]), ))

proc create*(T: type gen_qgesture_types.QTapAndHoldGesture,
    parent: gen_qobject_types.QObject,
    vtbl: ref QTapAndHoldGestureVTable = nil): gen_qgesture_types.QTapAndHoldGesture =
  let vtbl = if vtbl == nil: new QTapAndHoldGestureVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTapAndHoldGestureVTable, _: ptr cQTapAndHoldGesture) {.cdecl.} =
    let vtbl = cast[ref QTapAndHoldGestureVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTapAndHoldGesture_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTapAndHoldGesture_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTapAndHoldGesture_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTapAndHoldGesture_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTapAndHoldGesture_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTapAndHoldGesture_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTapAndHoldGesture_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTapAndHoldGesture_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTapAndHoldGesture_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTapAndHoldGesture_disconnectNotify
  gen_qgesture_types.QTapAndHoldGesture(h: fcQTapAndHoldGesture_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qgesture_types.QTapAndHoldGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTapAndHoldGesture_staticMetaObject())
proc delete*(self: gen_qgesture_types.QTapAndHoldGesture) =
  fcQTapAndHoldGesture_delete(self.h)
proc gestures*(self: gen_qgesture_types.QGestureEvent, ): seq[gen_qgesture_types.QGesture] =
  var v_ma = fcQGestureEvent_gestures(self.h)
  var vx_ret = newSeq[gen_qgesture_types.QGesture](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgesture_types.QGesture(h: v_outCast[i])
  vx_ret

proc gesture*(self: gen_qgesture_types.QGestureEvent, typeVal: cint): gen_qgesture_types.QGesture =
  gen_qgesture_types.QGesture(h: fcQGestureEvent_gesture(self.h, cint(typeVal)))

proc activeGestures*(self: gen_qgesture_types.QGestureEvent, ): seq[gen_qgesture_types.QGesture] =
  var v_ma = fcQGestureEvent_activeGestures(self.h)
  var vx_ret = newSeq[gen_qgesture_types.QGesture](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgesture_types.QGesture(h: v_outCast[i])
  vx_ret

proc canceledGestures*(self: gen_qgesture_types.QGestureEvent, ): seq[gen_qgesture_types.QGesture] =
  var v_ma = fcQGestureEvent_canceledGestures(self.h)
  var vx_ret = newSeq[gen_qgesture_types.QGesture](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgesture_types.QGesture(h: v_outCast[i])
  vx_ret

proc setAccepted*(self: gen_qgesture_types.QGestureEvent, param1: gen_qgesture_types.QGesture, param2: bool): void =
  fcQGestureEvent_setAccepted(self.h, param1.h, param2)

proc accept*(self: gen_qgesture_types.QGestureEvent, param1: gen_qgesture_types.QGesture): void =
  fcQGestureEvent_accept(self.h, param1.h)

proc ignore*(self: gen_qgesture_types.QGestureEvent, param1: gen_qgesture_types.QGesture): void =
  fcQGestureEvent_ignore(self.h, param1.h)

proc isAccepted*(self: gen_qgesture_types.QGestureEvent, param1: gen_qgesture_types.QGesture): bool =
  fcQGestureEvent_isAccepted(self.h, param1.h)

proc setAccepted*(self: gen_qgesture_types.QGestureEvent, param1: cint, param2: bool): void =
  fcQGestureEvent_setAccepted2(self.h, cint(param1), param2)

proc accept*(self: gen_qgesture_types.QGestureEvent, param1: cint): void =
  fcQGestureEvent_acceptWithQtGestureType(self.h, cint(param1))

proc ignore*(self: gen_qgesture_types.QGestureEvent, param1: cint): void =
  fcQGestureEvent_ignoreWithQtGestureType(self.h, cint(param1))

proc isAccepted*(self: gen_qgesture_types.QGestureEvent, param1: cint): bool =
  fcQGestureEvent_isAcceptedWithQtGestureType(self.h, cint(param1))

proc setWidget*(self: gen_qgesture_types.QGestureEvent, widget: gen_qwidget_types.QWidget): void =
  fcQGestureEvent_setWidget(self.h, widget.h)

proc widget*(self: gen_qgesture_types.QGestureEvent, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQGestureEvent_widget(self.h))

proc mapToGraphicsScene*(self: gen_qgesture_types.QGestureEvent, gesturePoint: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGestureEvent_mapToGraphicsScene(self.h, gesturePoint.h))

proc create*(T: type gen_qgesture_types.QGestureEvent,
    gestures: seq[gen_qgesture_types.QGesture]): gen_qgesture_types.QGestureEvent =
  var gestures_CArray = newSeq[pointer](len(gestures))
  for i in 0..<len(gestures):
    gestures_CArray[i] = gestures[i].h

  gen_qgesture_types.QGestureEvent(h: fcQGestureEvent_new(struct_miqt_array(len: csize_t(len(gestures)), data: if len(gestures) == 0: nil else: addr(gestures_CArray[0]))))

proc create*(T: type gen_qgesture_types.QGestureEvent,
    param1: gen_qgesture_types.QGestureEvent): gen_qgesture_types.QGestureEvent =
  gen_qgesture_types.QGestureEvent(h: fcQGestureEvent_new2(param1.h))

proc delete*(self: gen_qgesture_types.QGestureEvent) =
  fcQGestureEvent_delete(self.h)
