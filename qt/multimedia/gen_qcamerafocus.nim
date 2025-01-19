import Qt5MultimediaWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5MultimediaWidgets")
{.compile("gen_qcamerafocus.cpp", cflags).}


type QCameraFocusZoneFocusZoneStatus* = cint
const
  QCameraFocusZoneInvalid* = 0
  QCameraFocusZoneUnused* = 1
  QCameraFocusZoneSelected* = 2
  QCameraFocusZoneFocused* = 3



type QCameraFocusFocusMode* = cint
const
  QCameraFocusManualFocus* = 1
  QCameraFocusHyperfocalFocus* = 2
  QCameraFocusInfinityFocus* = 4
  QCameraFocusAutoFocus* = 8
  QCameraFocusContinuousFocus* = 16
  QCameraFocusMacroFocus* = 32



type QCameraFocusFocusPointMode* = cint
const
  QCameraFocusFocusPointAuto* = 0
  QCameraFocusFocusPointCenter* = 1
  QCameraFocusFocusPointFaceDetection* = 2
  QCameraFocusFocusPointCustom* = 3



import gen_qcamerafocus_types
export gen_qcamerafocus_types

import
  gen_qobject,
  gen_qobjectdefs,
  gen_qpoint,
  gen_qrect
export
  gen_qobject,
  gen_qobjectdefs,
  gen_qpoint,
  gen_qrect

type cQCameraFocusZone*{.exportc: "QCameraFocusZone", incompleteStruct.} = object
type cQCameraFocus*{.exportc: "QCameraFocus", incompleteStruct.} = object

proc fcQCameraFocusZone_new(): ptr cQCameraFocusZone {.importc: "QCameraFocusZone_new".}
proc fcQCameraFocusZone_new2(area: pointer): ptr cQCameraFocusZone {.importc: "QCameraFocusZone_new2".}
proc fcQCameraFocusZone_new3(other: pointer): ptr cQCameraFocusZone {.importc: "QCameraFocusZone_new3".}
proc fcQCameraFocusZone_new4(area: pointer, status: cint): ptr cQCameraFocusZone {.importc: "QCameraFocusZone_new4".}
proc fcQCameraFocusZone_operatorAssign(self: pointer, other: pointer): void {.importc: "QCameraFocusZone_operatorAssign".}
proc fcQCameraFocusZone_operatorEqual(self: pointer, other: pointer): bool {.importc: "QCameraFocusZone_operatorEqual".}
proc fcQCameraFocusZone_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QCameraFocusZone_operatorNotEqual".}
proc fcQCameraFocusZone_isValid(self: pointer, ): bool {.importc: "QCameraFocusZone_isValid".}
proc fcQCameraFocusZone_area(self: pointer, ): pointer {.importc: "QCameraFocusZone_area".}
proc fcQCameraFocusZone_status(self: pointer, ): cint {.importc: "QCameraFocusZone_status".}
proc fcQCameraFocusZone_setStatus(self: pointer, status: cint): void {.importc: "QCameraFocusZone_setStatus".}
proc fcQCameraFocusZone_delete(self: pointer) {.importc: "QCameraFocusZone_delete".}
proc fcQCameraFocus_metaObject(self: pointer, ): pointer {.importc: "QCameraFocus_metaObject".}
proc fcQCameraFocus_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraFocus_metacast".}
proc fcQCameraFocus_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraFocus_metacall".}
proc fcQCameraFocus_tr(s: cstring): struct_miqt_string {.importc: "QCameraFocus_tr".}
proc fcQCameraFocus_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraFocus_trUtf8".}
proc fcQCameraFocus_isAvailable(self: pointer, ): bool {.importc: "QCameraFocus_isAvailable".}
proc fcQCameraFocus_focusMode(self: pointer, ): cint {.importc: "QCameraFocus_focusMode".}
proc fcQCameraFocus_setFocusMode(self: pointer, mode: cint): void {.importc: "QCameraFocus_setFocusMode".}
proc fcQCameraFocus_isFocusModeSupported(self: pointer, mode: cint): bool {.importc: "QCameraFocus_isFocusModeSupported".}
proc fcQCameraFocus_focusPointMode(self: pointer, ): cint {.importc: "QCameraFocus_focusPointMode".}
proc fcQCameraFocus_setFocusPointMode(self: pointer, mode: cint): void {.importc: "QCameraFocus_setFocusPointMode".}
proc fcQCameraFocus_isFocusPointModeSupported(self: pointer, param1: cint): bool {.importc: "QCameraFocus_isFocusPointModeSupported".}
proc fcQCameraFocus_customFocusPoint(self: pointer, ): pointer {.importc: "QCameraFocus_customFocusPoint".}
proc fcQCameraFocus_setCustomFocusPoint(self: pointer, point: pointer): void {.importc: "QCameraFocus_setCustomFocusPoint".}
proc fcQCameraFocus_focusZones(self: pointer, ): struct_miqt_array {.importc: "QCameraFocus_focusZones".}
proc fcQCameraFocus_maximumOpticalZoom(self: pointer, ): float64 {.importc: "QCameraFocus_maximumOpticalZoom".}
proc fcQCameraFocus_maximumDigitalZoom(self: pointer, ): float64 {.importc: "QCameraFocus_maximumDigitalZoom".}
proc fcQCameraFocus_opticalZoom(self: pointer, ): float64 {.importc: "QCameraFocus_opticalZoom".}
proc fcQCameraFocus_digitalZoom(self: pointer, ): float64 {.importc: "QCameraFocus_digitalZoom".}
proc fcQCameraFocus_zoomTo(self: pointer, opticalZoom: float64, digitalZoom: float64): void {.importc: "QCameraFocus_zoomTo".}
proc fcQCameraFocus_opticalZoomChanged(self: pointer, param1: float64): void {.importc: "QCameraFocus_opticalZoomChanged".}
proc fQCameraFocus_connect_opticalZoomChanged(self: pointer, slot: int) {.importc: "QCameraFocus_connect_opticalZoomChanged".}
proc fcQCameraFocus_digitalZoomChanged(self: pointer, param1: float64): void {.importc: "QCameraFocus_digitalZoomChanged".}
proc fQCameraFocus_connect_digitalZoomChanged(self: pointer, slot: int) {.importc: "QCameraFocus_connect_digitalZoomChanged".}
proc fcQCameraFocus_focusZonesChanged(self: pointer, ): void {.importc: "QCameraFocus_focusZonesChanged".}
proc fQCameraFocus_connect_focusZonesChanged(self: pointer, slot: int) {.importc: "QCameraFocus_connect_focusZonesChanged".}
proc fcQCameraFocus_maximumOpticalZoomChanged(self: pointer, param1: float64): void {.importc: "QCameraFocus_maximumOpticalZoomChanged".}
proc fQCameraFocus_connect_maximumOpticalZoomChanged(self: pointer, slot: int) {.importc: "QCameraFocus_connect_maximumOpticalZoomChanged".}
proc fcQCameraFocus_maximumDigitalZoomChanged(self: pointer, param1: float64): void {.importc: "QCameraFocus_maximumDigitalZoomChanged".}
proc fQCameraFocus_connect_maximumDigitalZoomChanged(self: pointer, slot: int) {.importc: "QCameraFocus_connect_maximumDigitalZoomChanged".}
proc fcQCameraFocus_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraFocus_tr2".}
proc fcQCameraFocus_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraFocus_tr3".}
proc fcQCameraFocus_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraFocus_trUtf82".}
proc fcQCameraFocus_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraFocus_trUtf83".}
proc fcQCameraFocus_staticMetaObject(): pointer {.importc: "QCameraFocus_staticMetaObject".}


func init*(T: type QCameraFocusZone, h: ptr cQCameraFocusZone): QCameraFocusZone =
  T(h: h)
proc create*(T: type QCameraFocusZone, ): QCameraFocusZone =

  QCameraFocusZone.init(fcQCameraFocusZone_new())
proc create*(T: type QCameraFocusZone, area: gen_qrect.QRectF): QCameraFocusZone =

  QCameraFocusZone.init(fcQCameraFocusZone_new2(area.h))
proc create2*(T: type QCameraFocusZone, other: QCameraFocusZone): QCameraFocusZone =

  QCameraFocusZone.init(fcQCameraFocusZone_new3(other.h))
proc create*(T: type QCameraFocusZone, area: gen_qrect.QRectF, status: QCameraFocusZoneFocusZoneStatus): QCameraFocusZone =

  QCameraFocusZone.init(fcQCameraFocusZone_new4(area.h, cint(status)))
proc operatorAssign*(self: QCameraFocusZone, other: QCameraFocusZone): void =

  fcQCameraFocusZone_operatorAssign(self.h, other.h)

proc operatorEqual*(self: QCameraFocusZone, other: QCameraFocusZone): bool =

  fcQCameraFocusZone_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QCameraFocusZone, other: QCameraFocusZone): bool =

  fcQCameraFocusZone_operatorNotEqual(self.h, other.h)

proc isValid*(self: QCameraFocusZone, ): bool =

  fcQCameraFocusZone_isValid(self.h)

proc area*(self: QCameraFocusZone, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQCameraFocusZone_area(self.h))

proc status*(self: QCameraFocusZone, ): QCameraFocusZoneFocusZoneStatus =

  QCameraFocusZoneFocusZoneStatus(fcQCameraFocusZone_status(self.h))

proc setStatus*(self: QCameraFocusZone, status: QCameraFocusZoneFocusZoneStatus): void =

  fcQCameraFocusZone_setStatus(self.h, cint(status))

proc delete*(self: QCameraFocusZone) =
  fcQCameraFocusZone_delete(self.h)

func init*(T: type QCameraFocus, h: ptr cQCameraFocus): QCameraFocus =
  T(h: h)
proc metaObject*(self: QCameraFocus, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQCameraFocus_metaObject(self.h))

proc metacast*(self: QCameraFocus, param1: cstring): pointer =

  fcQCameraFocus_metacast(self.h, param1)

proc metacall*(self: QCameraFocus, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQCameraFocus_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QCameraFocus, s: cstring): string =

  let v_ms = fcQCameraFocus_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QCameraFocus, s: cstring): string =

  let v_ms = fcQCameraFocus_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isAvailable*(self: QCameraFocus, ): bool =

  fcQCameraFocus_isAvailable(self.h)

proc focusMode*(self: QCameraFocus, ): QCameraFocusFocusMode =

  QCameraFocusFocusMode(fcQCameraFocus_focusMode(self.h))

proc setFocusMode*(self: QCameraFocus, mode: QCameraFocusFocusMode): void =

  fcQCameraFocus_setFocusMode(self.h, cint(mode))

proc isFocusModeSupported*(self: QCameraFocus, mode: QCameraFocusFocusMode): bool =

  fcQCameraFocus_isFocusModeSupported(self.h, cint(mode))

proc focusPointMode*(self: QCameraFocus, ): QCameraFocusFocusPointMode =

  QCameraFocusFocusPointMode(fcQCameraFocus_focusPointMode(self.h))

proc setFocusPointMode*(self: QCameraFocus, mode: QCameraFocusFocusPointMode): void =

  fcQCameraFocus_setFocusPointMode(self.h, cint(mode))

proc isFocusPointModeSupported*(self: QCameraFocus, param1: QCameraFocusFocusPointMode): bool =

  fcQCameraFocus_isFocusPointModeSupported(self.h, cint(param1))

proc customFocusPoint*(self: QCameraFocus, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQCameraFocus_customFocusPoint(self.h))

proc setCustomFocusPoint*(self: QCameraFocus, point: gen_qpoint.QPointF): void =

  fcQCameraFocus_setCustomFocusPoint(self.h, point.h)

proc focusZones*(self: QCameraFocus, ): seq[QCameraFocusZone] =

  var v_ma = fcQCameraFocus_focusZones(self.h)
  var vx_ret = newSeq[QCameraFocusZone](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QCameraFocusZone(h: v_outCast[i])
  vx_ret

proc maximumOpticalZoom*(self: QCameraFocus, ): float64 =

  fcQCameraFocus_maximumOpticalZoom(self.h)

proc maximumDigitalZoom*(self: QCameraFocus, ): float64 =

  fcQCameraFocus_maximumDigitalZoom(self.h)

proc opticalZoom*(self: QCameraFocus, ): float64 =

  fcQCameraFocus_opticalZoom(self.h)

proc digitalZoom*(self: QCameraFocus, ): float64 =

  fcQCameraFocus_digitalZoom(self.h)

proc zoomTo*(self: QCameraFocus, opticalZoom: float64, digitalZoom: float64): void =

  fcQCameraFocus_zoomTo(self.h, opticalZoom, digitalZoom)

proc opticalZoomChanged*(self: QCameraFocus, param1: float64): void =

  fcQCameraFocus_opticalZoomChanged(self.h, param1)

proc miqt_exec_callback_QCameraFocus_opticalZoomChanged(slot: int, param1: float64) {.exportc.} =
  type Cb = proc(param1: float64)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onopticalZoomChanged*(self: QCameraFocus, slot: proc(param1: float64)) =
  type Cb = proc(param1: float64)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraFocus_connect_opticalZoomChanged(self.h, cast[int](addr tmp[]))
proc digitalZoomChanged*(self: QCameraFocus, param1: float64): void =

  fcQCameraFocus_digitalZoomChanged(self.h, param1)

proc miqt_exec_callback_QCameraFocus_digitalZoomChanged(slot: int, param1: float64) {.exportc.} =
  type Cb = proc(param1: float64)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc ondigitalZoomChanged*(self: QCameraFocus, slot: proc(param1: float64)) =
  type Cb = proc(param1: float64)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraFocus_connect_digitalZoomChanged(self.h, cast[int](addr tmp[]))
proc focusZonesChanged*(self: QCameraFocus, ): void =

  fcQCameraFocus_focusZonesChanged(self.h)

proc miqt_exec_callback_QCameraFocus_focusZonesChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onfocusZonesChanged*(self: QCameraFocus, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraFocus_connect_focusZonesChanged(self.h, cast[int](addr tmp[]))
proc maximumOpticalZoomChanged*(self: QCameraFocus, param1: float64): void =

  fcQCameraFocus_maximumOpticalZoomChanged(self.h, param1)

proc miqt_exec_callback_QCameraFocus_maximumOpticalZoomChanged(slot: int, param1: float64) {.exportc.} =
  type Cb = proc(param1: float64)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onmaximumOpticalZoomChanged*(self: QCameraFocus, slot: proc(param1: float64)) =
  type Cb = proc(param1: float64)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraFocus_connect_maximumOpticalZoomChanged(self.h, cast[int](addr tmp[]))
proc maximumDigitalZoomChanged*(self: QCameraFocus, param1: float64): void =

  fcQCameraFocus_maximumDigitalZoomChanged(self.h, param1)

proc miqt_exec_callback_QCameraFocus_maximumDigitalZoomChanged(slot: int, param1: float64) {.exportc.} =
  type Cb = proc(param1: float64)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onmaximumDigitalZoomChanged*(self: QCameraFocus, slot: proc(param1: float64)) =
  type Cb = proc(param1: float64)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraFocus_connect_maximumDigitalZoomChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QCameraFocus, s: cstring, c: cstring): string =

  let v_ms = fcQCameraFocus_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QCameraFocus, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCameraFocus_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QCameraFocus, s: cstring, c: cstring): string =

  let v_ms = fcQCameraFocus_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QCameraFocus, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCameraFocus_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type QCameraFocus): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQCameraFocus_staticMetaObject())
