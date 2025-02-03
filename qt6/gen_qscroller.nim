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
{.compile("gen_qscroller.cpp", cflags).}


type QScrollerState* = cint
const
  QScrollerInactive* = 0
  QScrollerPressed* = 1
  QScrollerDragging* = 2
  QScrollerScrolling* = 3



type QScrollerScrollerGestureType* = cint
const
  QScrollerTouchGesture* = 0
  QScrollerLeftMouseButtonGesture* = 1
  QScrollerRightMouseButtonGesture* = 2
  QScrollerMiddleMouseButtonGesture* = 3



type QScrollerInput* = cint
const
  QScrollerInputPress* = 1
  QScrollerInputMove* = 2
  QScrollerInputRelease* = 3



import gen_qscroller_types
export gen_qscroller_types

import
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpoint,
  gen_qrect,
  gen_qscrollerproperties
export
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpoint,
  gen_qrect,
  gen_qscrollerproperties

type cQScroller*{.exportc: "QScroller", incompleteStruct.} = object

proc fcQScroller_metaObject(self: pointer, ): pointer {.importc: "QScroller_metaObject".}
proc fcQScroller_metacast(self: pointer, param1: cstring): pointer {.importc: "QScroller_metacast".}
proc fcQScroller_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QScroller_metacall".}
proc fcQScroller_tr(s: cstring): struct_miqt_string {.importc: "QScroller_tr".}
proc fcQScroller_hasScroller(target: pointer): bool {.importc: "QScroller_hasScroller".}
proc fcQScroller_scroller(target: pointer): pointer {.importc: "QScroller_scroller".}
proc fcQScroller_scrollerWithTarget(target: pointer): pointer {.importc: "QScroller_scrollerWithTarget".}
proc fcQScroller_grabGesture(target: pointer): cint {.importc: "QScroller_grabGesture".}
proc fcQScroller_grabbedGesture(target: pointer): cint {.importc: "QScroller_grabbedGesture".}
proc fcQScroller_ungrabGesture(target: pointer): void {.importc: "QScroller_ungrabGesture".}
proc fcQScroller_activeScrollers(): struct_miqt_array {.importc: "QScroller_activeScrollers".}
proc fcQScroller_target(self: pointer, ): pointer {.importc: "QScroller_target".}
proc fcQScroller_state(self: pointer, ): cint {.importc: "QScroller_state".}
proc fcQScroller_handleInput(self: pointer, input: cint, position: pointer): bool {.importc: "QScroller_handleInput".}
proc fcQScroller_stop(self: pointer, ): void {.importc: "QScroller_stop".}
proc fcQScroller_velocity(self: pointer, ): pointer {.importc: "QScroller_velocity".}
proc fcQScroller_finalPosition(self: pointer, ): pointer {.importc: "QScroller_finalPosition".}
proc fcQScroller_pixelPerMeter(self: pointer, ): pointer {.importc: "QScroller_pixelPerMeter".}
proc fcQScroller_scrollerProperties(self: pointer, ): pointer {.importc: "QScroller_scrollerProperties".}
proc fcQScroller_setSnapPositionsX(self: pointer, positions: struct_miqt_array): void {.importc: "QScroller_setSnapPositionsX".}
proc fcQScroller_setSnapPositionsX2(self: pointer, first: float64, interval: float64): void {.importc: "QScroller_setSnapPositionsX2".}
proc fcQScroller_setSnapPositionsY(self: pointer, positions: struct_miqt_array): void {.importc: "QScroller_setSnapPositionsY".}
proc fcQScroller_setSnapPositionsY2(self: pointer, first: float64, interval: float64): void {.importc: "QScroller_setSnapPositionsY2".}
proc fcQScroller_setScrollerProperties(self: pointer, prop: pointer): void {.importc: "QScroller_setScrollerProperties".}
proc fcQScroller_scrollTo(self: pointer, pos: pointer): void {.importc: "QScroller_scrollTo".}
proc fcQScroller_scrollTo2(self: pointer, pos: pointer, scrollTime: cint): void {.importc: "QScroller_scrollTo2".}
proc fcQScroller_ensureVisible(self: pointer, rect: pointer, xmargin: float64, ymargin: float64): void {.importc: "QScroller_ensureVisible".}
proc fcQScroller_ensureVisible2(self: pointer, rect: pointer, xmargin: float64, ymargin: float64, scrollTime: cint): void {.importc: "QScroller_ensureVisible2".}
proc fcQScroller_resendPrepareEvent(self: pointer, ): void {.importc: "QScroller_resendPrepareEvent".}
proc fcQScroller_stateChanged(self: pointer, newstate: cint): void {.importc: "QScroller_stateChanged".}
proc fQScroller_connect_stateChanged(self: pointer, slot: int) {.importc: "QScroller_connect_stateChanged".}
proc fcQScroller_scrollerPropertiesChanged(self: pointer, param1: pointer): void {.importc: "QScroller_scrollerPropertiesChanged".}
proc fQScroller_connect_scrollerPropertiesChanged(self: pointer, slot: int) {.importc: "QScroller_connect_scrollerPropertiesChanged".}
proc fcQScroller_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QScroller_tr2".}
proc fcQScroller_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QScroller_tr3".}
proc fcQScroller_grabGesture2(target: pointer, gestureType: cint): cint {.importc: "QScroller_grabGesture2".}
proc fcQScroller_handleInput3(self: pointer, input: cint, position: pointer, timestamp: clonglong): bool {.importc: "QScroller_handleInput3".}


func init*(T: type QScroller, h: ptr cQScroller): QScroller =
  T(h: h)
proc metaObject*(self: QScroller, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQScroller_metaObject(self.h))

proc metacast*(self: QScroller, param1: cstring): pointer =

  fcQScroller_metacast(self.h, param1)

proc metacall*(self: QScroller, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQScroller_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QScroller, s: cstring): string =

  let v_ms = fcQScroller_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc hasScroller*(_: type QScroller, target: gen_qobject.QObject): bool =

  fcQScroller_hasScroller(target.h)

proc scroller*(_: type QScroller, target: gen_qobject.QObject): QScroller =

  QScroller(h: fcQScroller_scroller(target.h))

proc scrollerWithTarget*(_: type QScroller, target: gen_qobject.QObject): QScroller =

  QScroller(h: fcQScroller_scrollerWithTarget(target.h))

proc grabGesture*(_: type QScroller, target: gen_qobject.QObject): gen_qnamespace.GestureType =

  gen_qnamespace.GestureType(fcQScroller_grabGesture(target.h))

proc grabbedGesture*(_: type QScroller, target: gen_qobject.QObject): gen_qnamespace.GestureType =

  gen_qnamespace.GestureType(fcQScroller_grabbedGesture(target.h))

proc ungrabGesture*(_: type QScroller, target: gen_qobject.QObject): void =

  fcQScroller_ungrabGesture(target.h)

proc activeScrollers*(_: type QScroller, ): seq[QScroller] =

  var v_ma = fcQScroller_activeScrollers()
  var vx_ret = newSeq[QScroller](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QScroller(h: v_outCast[i])
  vx_ret

proc target*(self: QScroller, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQScroller_target(self.h))

proc state*(self: QScroller, ): QScrollerState =

  QScrollerState(fcQScroller_state(self.h))

proc handleInput*(self: QScroller, input: QScrollerInput, position: gen_qpoint.QPointF): bool =

  fcQScroller_handleInput(self.h, cint(input), position.h)

proc stop*(self: QScroller, ): void =

  fcQScroller_stop(self.h)

proc velocity*(self: QScroller, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQScroller_velocity(self.h))

proc finalPosition*(self: QScroller, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQScroller_finalPosition(self.h))

proc pixelPerMeter*(self: QScroller, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQScroller_pixelPerMeter(self.h))

proc scrollerProperties*(self: QScroller, ): gen_qscrollerproperties.QScrollerProperties =

  gen_qscrollerproperties.QScrollerProperties(h: fcQScroller_scrollerProperties(self.h))

proc setSnapPositionsX*(self: QScroller, positions: seq[float64]): void =

  var positions_CArray = newSeq[float64](len(positions))
  for i in 0..<len(positions):
    positions_CArray[i] = positions[i]

  fcQScroller_setSnapPositionsX(self.h, struct_miqt_array(len: csize_t(len(positions)), data: if len(positions) == 0: nil else: addr(positions_CArray[0])))

proc setSnapPositionsX2*(self: QScroller, first: float64, interval: float64): void =

  fcQScroller_setSnapPositionsX2(self.h, first, interval)

proc setSnapPositionsY*(self: QScroller, positions: seq[float64]): void =

  var positions_CArray = newSeq[float64](len(positions))
  for i in 0..<len(positions):
    positions_CArray[i] = positions[i]

  fcQScroller_setSnapPositionsY(self.h, struct_miqt_array(len: csize_t(len(positions)), data: if len(positions) == 0: nil else: addr(positions_CArray[0])))

proc setSnapPositionsY2*(self: QScroller, first: float64, interval: float64): void =

  fcQScroller_setSnapPositionsY2(self.h, first, interval)

proc setScrollerProperties*(self: QScroller, prop: gen_qscrollerproperties.QScrollerProperties): void =

  fcQScroller_setScrollerProperties(self.h, prop.h)

proc scrollTo*(self: QScroller, pos: gen_qpoint.QPointF): void =

  fcQScroller_scrollTo(self.h, pos.h)

proc scrollTo2*(self: QScroller, pos: gen_qpoint.QPointF, scrollTime: cint): void =

  fcQScroller_scrollTo2(self.h, pos.h, scrollTime)

proc ensureVisible*(self: QScroller, rect: gen_qrect.QRectF, xmargin: float64, ymargin: float64): void =

  fcQScroller_ensureVisible(self.h, rect.h, xmargin, ymargin)

proc ensureVisible2*(self: QScroller, rect: gen_qrect.QRectF, xmargin: float64, ymargin: float64, scrollTime: cint): void =

  fcQScroller_ensureVisible2(self.h, rect.h, xmargin, ymargin, scrollTime)

proc resendPrepareEvent*(self: QScroller, ): void =

  fcQScroller_resendPrepareEvent(self.h)

proc stateChanged*(self: QScroller, newstate: QScrollerState): void =

  fcQScroller_stateChanged(self.h, cint(newstate))

proc miqt_exec_callback_QScroller_stateChanged(slot: int, newstate: cint) {.exportc.} =
  type Cb = proc(newstate: QScrollerState)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QScrollerState(newstate)


  nimfunc[](slotval1)

proc onstateChanged*(self: QScroller, slot: proc(newstate: QScrollerState)) =
  type Cb = proc(newstate: QScrollerState)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQScroller_connect_stateChanged(self.h, cast[int](addr tmp[]))
proc scrollerPropertiesChanged*(self: QScroller, param1: gen_qscrollerproperties.QScrollerProperties): void =

  fcQScroller_scrollerPropertiesChanged(self.h, param1.h)

proc miqt_exec_callback_QScroller_scrollerPropertiesChanged(slot: int, param1: pointer) {.exportc.} =
  type Cb = proc(param1: gen_qscrollerproperties.QScrollerProperties)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qscrollerproperties.QScrollerProperties(h: param1)


  nimfunc[](slotval1)

proc onscrollerPropertiesChanged*(self: QScroller, slot: proc(param1: gen_qscrollerproperties.QScrollerProperties)) =
  type Cb = proc(param1: gen_qscrollerproperties.QScrollerProperties)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQScroller_connect_scrollerPropertiesChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QScroller, s: cstring, c: cstring): string =

  let v_ms = fcQScroller_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QScroller, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQScroller_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc grabGesture2*(_: type QScroller, target: gen_qobject.QObject, gestureType: QScrollerScrollerGestureType): gen_qnamespace.GestureType =

  gen_qnamespace.GestureType(fcQScroller_grabGesture2(target.h, cint(gestureType)))

proc handleInput3*(self: QScroller, input: QScrollerInput, position: gen_qpoint.QPointF, timestamp: clonglong): bool =

  fcQScroller_handleInput3(self.h, cint(input), position.h, timestamp)

