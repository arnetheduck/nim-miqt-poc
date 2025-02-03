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
{.compile("gen_qeventpoint.cpp", cflags).}


type QEventPointState* = uint8
const
  QEventPointUnknown* = 0
  QEventPointStationary* = 4
  QEventPointPressed* = 1
  QEventPointUpdated* = 2
  QEventPointReleased* = 8



import gen_qeventpoint_types
export gen_qeventpoint_types

import
  gen_qpoint,
  gen_qpointingdevice,
  gen_qsize,
  gen_qvectornd
export
  gen_qpoint,
  gen_qpointingdevice,
  gen_qsize,
  gen_qvectornd

type cQEventPoint*{.exportc: "QEventPoint", incompleteStruct.} = object

proc fcQEventPoint_new(): ptr cQEventPoint {.importc: "QEventPoint_new".}
proc fcQEventPoint_new2(pointId: cint, state: cint, scenePosition: pointer, globalPosition: pointer): ptr cQEventPoint {.importc: "QEventPoint_new2".}
proc fcQEventPoint_new3(other: pointer): ptr cQEventPoint {.importc: "QEventPoint_new3".}
proc fcQEventPoint_new4(id: cint): ptr cQEventPoint {.importc: "QEventPoint_new4".}
proc fcQEventPoint_new5(id: cint, device: pointer): ptr cQEventPoint {.importc: "QEventPoint_new5".}
proc fcQEventPoint_operatorAssign(self: pointer, other: pointer): void {.importc: "QEventPoint_operatorAssign".}
proc fcQEventPoint_operatorEqual(self: pointer, other: pointer): bool {.importc: "QEventPoint_operatorEqual".}
proc fcQEventPoint_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QEventPoint_operatorNotEqual".}
proc fcQEventPoint_swap(self: pointer, other: pointer): void {.importc: "QEventPoint_swap".}
proc fcQEventPoint_position(self: pointer, ): pointer {.importc: "QEventPoint_position".}
proc fcQEventPoint_pressPosition(self: pointer, ): pointer {.importc: "QEventPoint_pressPosition".}
proc fcQEventPoint_grabPosition(self: pointer, ): pointer {.importc: "QEventPoint_grabPosition".}
proc fcQEventPoint_lastPosition(self: pointer, ): pointer {.importc: "QEventPoint_lastPosition".}
proc fcQEventPoint_scenePosition(self: pointer, ): pointer {.importc: "QEventPoint_scenePosition".}
proc fcQEventPoint_scenePressPosition(self: pointer, ): pointer {.importc: "QEventPoint_scenePressPosition".}
proc fcQEventPoint_sceneGrabPosition(self: pointer, ): pointer {.importc: "QEventPoint_sceneGrabPosition".}
proc fcQEventPoint_sceneLastPosition(self: pointer, ): pointer {.importc: "QEventPoint_sceneLastPosition".}
proc fcQEventPoint_globalPosition(self: pointer, ): pointer {.importc: "QEventPoint_globalPosition".}
proc fcQEventPoint_globalPressPosition(self: pointer, ): pointer {.importc: "QEventPoint_globalPressPosition".}
proc fcQEventPoint_globalGrabPosition(self: pointer, ): pointer {.importc: "QEventPoint_globalGrabPosition".}
proc fcQEventPoint_globalLastPosition(self: pointer, ): pointer {.importc: "QEventPoint_globalLastPosition".}
proc fcQEventPoint_normalizedPosition(self: pointer, ): pointer {.importc: "QEventPoint_normalizedPosition".}
proc fcQEventPoint_pos(self: pointer, ): pointer {.importc: "QEventPoint_pos".}
proc fcQEventPoint_startPos(self: pointer, ): pointer {.importc: "QEventPoint_startPos".}
proc fcQEventPoint_scenePos(self: pointer, ): pointer {.importc: "QEventPoint_scenePos".}
proc fcQEventPoint_startScenePos(self: pointer, ): pointer {.importc: "QEventPoint_startScenePos".}
proc fcQEventPoint_screenPos(self: pointer, ): pointer {.importc: "QEventPoint_screenPos".}
proc fcQEventPoint_startScreenPos(self: pointer, ): pointer {.importc: "QEventPoint_startScreenPos".}
proc fcQEventPoint_startNormalizedPos(self: pointer, ): pointer {.importc: "QEventPoint_startNormalizedPos".}
proc fcQEventPoint_normalizedPos(self: pointer, ): pointer {.importc: "QEventPoint_normalizedPos".}
proc fcQEventPoint_lastPos(self: pointer, ): pointer {.importc: "QEventPoint_lastPos".}
proc fcQEventPoint_lastScenePos(self: pointer, ): pointer {.importc: "QEventPoint_lastScenePos".}
proc fcQEventPoint_lastScreenPos(self: pointer, ): pointer {.importc: "QEventPoint_lastScreenPos".}
proc fcQEventPoint_lastNormalizedPos(self: pointer, ): pointer {.importc: "QEventPoint_lastNormalizedPos".}
proc fcQEventPoint_velocity(self: pointer, ): pointer {.importc: "QEventPoint_velocity".}
proc fcQEventPoint_state(self: pointer, ): cint {.importc: "QEventPoint_state".}
proc fcQEventPoint_device(self: pointer, ): pointer {.importc: "QEventPoint_device".}
proc fcQEventPoint_id(self: pointer, ): cint {.importc: "QEventPoint_id".}
proc fcQEventPoint_uniqueId(self: pointer, ): pointer {.importc: "QEventPoint_uniqueId".}
proc fcQEventPoint_timestamp(self: pointer, ): culong {.importc: "QEventPoint_timestamp".}
proc fcQEventPoint_lastTimestamp(self: pointer, ): culong {.importc: "QEventPoint_lastTimestamp".}
proc fcQEventPoint_pressTimestamp(self: pointer, ): culong {.importc: "QEventPoint_pressTimestamp".}
proc fcQEventPoint_timeHeld(self: pointer, ): float64 {.importc: "QEventPoint_timeHeld".}
proc fcQEventPoint_pressure(self: pointer, ): float64 {.importc: "QEventPoint_pressure".}
proc fcQEventPoint_rotation(self: pointer, ): float64 {.importc: "QEventPoint_rotation".}
proc fcQEventPoint_ellipseDiameters(self: pointer, ): pointer {.importc: "QEventPoint_ellipseDiameters".}
proc fcQEventPoint_isAccepted(self: pointer, ): bool {.importc: "QEventPoint_isAccepted".}
proc fcQEventPoint_setAccepted(self: pointer, ): void {.importc: "QEventPoint_setAccepted".}
proc fcQEventPoint_setAccepted1(self: pointer, accepted: bool): void {.importc: "QEventPoint_setAccepted1".}
proc fcQEventPoint_delete(self: pointer) {.importc: "QEventPoint_delete".}


func init*(T: type QEventPoint, h: ptr cQEventPoint): QEventPoint =
  T(h: h)
proc create*(T: type QEventPoint, ): QEventPoint =

  QEventPoint.init(fcQEventPoint_new())
proc create*(T: type QEventPoint, pointId: cint, state: QEventPointState, scenePosition: gen_qpoint.QPointF, globalPosition: gen_qpoint.QPointF): QEventPoint =

  QEventPoint.init(fcQEventPoint_new2(pointId, cint(state), scenePosition.h, globalPosition.h))
proc create*(T: type QEventPoint, other: QEventPoint): QEventPoint =

  QEventPoint.init(fcQEventPoint_new3(other.h))
proc create*(T: type QEventPoint, id: cint): QEventPoint =

  QEventPoint.init(fcQEventPoint_new4(id))
proc create*(T: type QEventPoint, id: cint, device: gen_qpointingdevice.QPointingDevice): QEventPoint =

  QEventPoint.init(fcQEventPoint_new5(id, device.h))
proc operatorAssign*(self: QEventPoint, other: QEventPoint): void =

  fcQEventPoint_operatorAssign(self.h, other.h)

proc operatorEqual*(self: QEventPoint, other: QEventPoint): bool =

  fcQEventPoint_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QEventPoint, other: QEventPoint): bool =

  fcQEventPoint_operatorNotEqual(self.h, other.h)

proc swap*(self: QEventPoint, other: QEventPoint): void =

  fcQEventPoint_swap(self.h, other.h)

proc position*(self: QEventPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQEventPoint_position(self.h))

proc pressPosition*(self: QEventPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQEventPoint_pressPosition(self.h))

proc grabPosition*(self: QEventPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQEventPoint_grabPosition(self.h))

proc lastPosition*(self: QEventPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQEventPoint_lastPosition(self.h))

proc scenePosition*(self: QEventPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQEventPoint_scenePosition(self.h))

proc scenePressPosition*(self: QEventPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQEventPoint_scenePressPosition(self.h))

proc sceneGrabPosition*(self: QEventPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQEventPoint_sceneGrabPosition(self.h))

proc sceneLastPosition*(self: QEventPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQEventPoint_sceneLastPosition(self.h))

proc globalPosition*(self: QEventPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQEventPoint_globalPosition(self.h))

proc globalPressPosition*(self: QEventPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQEventPoint_globalPressPosition(self.h))

proc globalGrabPosition*(self: QEventPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQEventPoint_globalGrabPosition(self.h))

proc globalLastPosition*(self: QEventPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQEventPoint_globalLastPosition(self.h))

proc normalizedPosition*(self: QEventPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQEventPoint_normalizedPosition(self.h))

proc pos*(self: QEventPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQEventPoint_pos(self.h))

proc startPos*(self: QEventPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQEventPoint_startPos(self.h))

proc scenePos*(self: QEventPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQEventPoint_scenePos(self.h))

proc startScenePos*(self: QEventPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQEventPoint_startScenePos(self.h))

proc screenPos*(self: QEventPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQEventPoint_screenPos(self.h))

proc startScreenPos*(self: QEventPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQEventPoint_startScreenPos(self.h))

proc startNormalizedPos*(self: QEventPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQEventPoint_startNormalizedPos(self.h))

proc normalizedPos*(self: QEventPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQEventPoint_normalizedPos(self.h))

proc lastPos*(self: QEventPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQEventPoint_lastPos(self.h))

proc lastScenePos*(self: QEventPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQEventPoint_lastScenePos(self.h))

proc lastScreenPos*(self: QEventPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQEventPoint_lastScreenPos(self.h))

proc lastNormalizedPos*(self: QEventPoint, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQEventPoint_lastNormalizedPos(self.h))

proc velocity*(self: QEventPoint, ): gen_qvectornd.QVector2D =

  gen_qvectornd.QVector2D(h: fcQEventPoint_velocity(self.h))

proc state*(self: QEventPoint, ): QEventPointState =

  QEventPointState(fcQEventPoint_state(self.h))

proc device*(self: QEventPoint, ): gen_qpointingdevice.QPointingDevice =

  gen_qpointingdevice.QPointingDevice(h: fcQEventPoint_device(self.h))

proc id*(self: QEventPoint, ): cint =

  fcQEventPoint_id(self.h)

proc uniqueId*(self: QEventPoint, ): gen_qpointingdevice.QPointingDeviceUniqueId =

  gen_qpointingdevice.QPointingDeviceUniqueId(h: fcQEventPoint_uniqueId(self.h))

proc timestamp*(self: QEventPoint, ): culong =

  fcQEventPoint_timestamp(self.h)

proc lastTimestamp*(self: QEventPoint, ): culong =

  fcQEventPoint_lastTimestamp(self.h)

proc pressTimestamp*(self: QEventPoint, ): culong =

  fcQEventPoint_pressTimestamp(self.h)

proc timeHeld*(self: QEventPoint, ): float64 =

  fcQEventPoint_timeHeld(self.h)

proc pressure*(self: QEventPoint, ): float64 =

  fcQEventPoint_pressure(self.h)

proc rotation*(self: QEventPoint, ): float64 =

  fcQEventPoint_rotation(self.h)

proc ellipseDiameters*(self: QEventPoint, ): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQEventPoint_ellipseDiameters(self.h))

proc isAccepted*(self: QEventPoint, ): bool =

  fcQEventPoint_isAccepted(self.h)

proc setAccepted*(self: QEventPoint, ): void =

  fcQEventPoint_setAccepted(self.h)

proc setAccepted1*(self: QEventPoint, accepted: bool): void =

  fcQEventPoint_setAccepted1(self.h, accepted)

proc delete*(self: QEventPoint) =
  fcQEventPoint_delete(self.h)
