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
{.compile("gen_qeasingcurve.cpp", cflags).}


type QEasingCurveType* = cint
const
  QEasingCurveLinear* = 0
  QEasingCurveInQuad* = 1
  QEasingCurveOutQuad* = 2
  QEasingCurveInOutQuad* = 3
  QEasingCurveOutInQuad* = 4
  QEasingCurveInCubic* = 5
  QEasingCurveOutCubic* = 6
  QEasingCurveInOutCubic* = 7
  QEasingCurveOutInCubic* = 8
  QEasingCurveInQuart* = 9
  QEasingCurveOutQuart* = 10
  QEasingCurveInOutQuart* = 11
  QEasingCurveOutInQuart* = 12
  QEasingCurveInQuint* = 13
  QEasingCurveOutQuint* = 14
  QEasingCurveInOutQuint* = 15
  QEasingCurveOutInQuint* = 16
  QEasingCurveInSine* = 17
  QEasingCurveOutSine* = 18
  QEasingCurveInOutSine* = 19
  QEasingCurveOutInSine* = 20
  QEasingCurveInExpo* = 21
  QEasingCurveOutExpo* = 22
  QEasingCurveInOutExpo* = 23
  QEasingCurveOutInExpo* = 24
  QEasingCurveInCirc* = 25
  QEasingCurveOutCirc* = 26
  QEasingCurveInOutCirc* = 27
  QEasingCurveOutInCirc* = 28
  QEasingCurveInElastic* = 29
  QEasingCurveOutElastic* = 30
  QEasingCurveInOutElastic* = 31
  QEasingCurveOutInElastic* = 32
  QEasingCurveInBack* = 33
  QEasingCurveOutBack* = 34
  QEasingCurveInOutBack* = 35
  QEasingCurveOutInBack* = 36
  QEasingCurveInBounce* = 37
  QEasingCurveOutBounce* = 38
  QEasingCurveInOutBounce* = 39
  QEasingCurveOutInBounce* = 40
  QEasingCurveInCurve* = 41
  QEasingCurveOutCurve* = 42
  QEasingCurveSineCurve* = 43
  QEasingCurveCosineCurve* = 44
  QEasingCurveBezierSpline* = 45
  QEasingCurveTCBSpline* = 46
  QEasingCurveCustom* = 47
  QEasingCurveNCurveTypes* = 48



import gen_qeasingcurve_types
export gen_qeasingcurve_types

import
  gen_qpoint
export
  gen_qpoint

type cQEasingCurve*{.exportc: "QEasingCurve", incompleteStruct.} = object

proc fcQEasingCurve_new(): ptr cQEasingCurve {.importc: "QEasingCurve_new".}
proc fcQEasingCurve_new2(other: pointer): ptr cQEasingCurve {.importc: "QEasingCurve_new2".}
proc fcQEasingCurve_new3(typeVal: cint): ptr cQEasingCurve {.importc: "QEasingCurve_new3".}
proc fcQEasingCurve_operatorAssign(self: pointer, other: pointer): void {.importc: "QEasingCurve_operatorAssign".}
proc fcQEasingCurve_swap(self: pointer, other: pointer): void {.importc: "QEasingCurve_swap".}
proc fcQEasingCurve_operatorEqual(self: pointer, other: pointer): bool {.importc: "QEasingCurve_operatorEqual".}
proc fcQEasingCurve_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QEasingCurve_operatorNotEqual".}
proc fcQEasingCurve_amplitude(self: pointer, ): float64 {.importc: "QEasingCurve_amplitude".}
proc fcQEasingCurve_setAmplitude(self: pointer, amplitude: float64): void {.importc: "QEasingCurve_setAmplitude".}
proc fcQEasingCurve_period(self: pointer, ): float64 {.importc: "QEasingCurve_period".}
proc fcQEasingCurve_setPeriod(self: pointer, period: float64): void {.importc: "QEasingCurve_setPeriod".}
proc fcQEasingCurve_overshoot(self: pointer, ): float64 {.importc: "QEasingCurve_overshoot".}
proc fcQEasingCurve_setOvershoot(self: pointer, overshoot: float64): void {.importc: "QEasingCurve_setOvershoot".}
proc fcQEasingCurve_addCubicBezierSegment(self: pointer, c1: pointer, c2: pointer, endPoint: pointer): void {.importc: "QEasingCurve_addCubicBezierSegment".}
proc fcQEasingCurve_addTCBSegment(self: pointer, nextPoint: pointer, t: float64, c: float64, b: float64): void {.importc: "QEasingCurve_addTCBSegment".}
proc fcQEasingCurve_toCubicSpline(self: pointer, ): struct_miqt_array {.importc: "QEasingCurve_toCubicSpline".}
proc fcQEasingCurve_typeX(self: pointer, ): cint {.importc: "QEasingCurve_type".}
proc fcQEasingCurve_setType(self: pointer, typeVal: cint): void {.importc: "QEasingCurve_setType".}
proc fcQEasingCurve_valueForProgress(self: pointer, progress: float64): float64 {.importc: "QEasingCurve_valueForProgress".}
proc fcQEasingCurve_delete(self: pointer) {.importc: "QEasingCurve_delete".}


func init*(T: type QEasingCurve, h: ptr cQEasingCurve): QEasingCurve =
  T(h: h)
proc create*(T: type QEasingCurve, ): QEasingCurve =

  QEasingCurve.init(fcQEasingCurve_new())
proc create*(T: type QEasingCurve, other: QEasingCurve): QEasingCurve =

  QEasingCurve.init(fcQEasingCurve_new2(other.h))
proc create*(T: type QEasingCurve, typeVal: QEasingCurveType): QEasingCurve =

  QEasingCurve.init(fcQEasingCurve_new3(cint(typeVal)))
proc operatorAssign*(self: QEasingCurve, other: QEasingCurve): void =

  fcQEasingCurve_operatorAssign(self.h, other.h)

proc swap*(self: QEasingCurve, other: QEasingCurve): void =

  fcQEasingCurve_swap(self.h, other.h)

proc operatorEqual*(self: QEasingCurve, other: QEasingCurve): bool =

  fcQEasingCurve_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QEasingCurve, other: QEasingCurve): bool =

  fcQEasingCurve_operatorNotEqual(self.h, other.h)

proc amplitude*(self: QEasingCurve, ): float64 =

  fcQEasingCurve_amplitude(self.h)

proc setAmplitude*(self: QEasingCurve, amplitude: float64): void =

  fcQEasingCurve_setAmplitude(self.h, amplitude)

proc period*(self: QEasingCurve, ): float64 =

  fcQEasingCurve_period(self.h)

proc setPeriod*(self: QEasingCurve, period: float64): void =

  fcQEasingCurve_setPeriod(self.h, period)

proc overshoot*(self: QEasingCurve, ): float64 =

  fcQEasingCurve_overshoot(self.h)

proc setOvershoot*(self: QEasingCurve, overshoot: float64): void =

  fcQEasingCurve_setOvershoot(self.h, overshoot)

proc addCubicBezierSegment*(self: QEasingCurve, c1: gen_qpoint.QPointF, c2: gen_qpoint.QPointF, endPoint: gen_qpoint.QPointF): void =

  fcQEasingCurve_addCubicBezierSegment(self.h, c1.h, c2.h, endPoint.h)

proc addTCBSegment*(self: QEasingCurve, nextPoint: gen_qpoint.QPointF, t: float64, c: float64, b: float64): void =

  fcQEasingCurve_addTCBSegment(self.h, nextPoint.h, t, c, b)

proc toCubicSpline*(self: QEasingCurve, ): seq[gen_qpoint.QPointF] =

  var v_ma = fcQEasingCurve_toCubicSpline(self.h)
  var vx_ret = newSeq[gen_qpoint.QPointF](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qpoint.QPointF(h: v_outCast[i])
  vx_ret

proc typeX*(self: QEasingCurve, ): QEasingCurveType =

  QEasingCurveType(fcQEasingCurve_typeX(self.h))

proc setType*(self: QEasingCurve, typeVal: QEasingCurveType): void =

  fcQEasingCurve_setType(self.h, cint(typeVal))

proc valueForProgress*(self: QEasingCurve, progress: float64): float64 =

  fcQEasingCurve_valueForProgress(self.h, progress)

proc delete*(self: QEasingCurve) =
  fcQEasingCurve_delete(self.h)
