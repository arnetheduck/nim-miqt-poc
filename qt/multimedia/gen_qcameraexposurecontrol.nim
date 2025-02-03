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
{.compile("gen_qcameraexposurecontrol.cpp", cflags).}


type QCameraExposureControlExposureParameter* = cint
const
  QCameraExposureControlISO* = 0
  QCameraExposureControlAperture* = 1
  QCameraExposureControlShutterSpeed* = 2
  QCameraExposureControlExposureCompensation* = 3
  QCameraExposureControlFlashPower* = 4
  QCameraExposureControlFlashCompensation* = 5
  QCameraExposureControlTorchPower* = 6
  QCameraExposureControlSpotMeteringPoint* = 7
  QCameraExposureControlExposureMode* = 8
  QCameraExposureControlMeteringMode* = 9
  QCameraExposureControlExtendedExposureParameter* = 1000



import gen_qcameraexposurecontrol_types
export gen_qcameraexposurecontrol_types

import
  gen_qmediacontrol,
  gen_qobjectdefs,
  gen_qvariant
export
  gen_qmediacontrol,
  gen_qobjectdefs,
  gen_qvariant

type cQCameraExposureControl*{.exportc: "QCameraExposureControl", incompleteStruct.} = object

proc fcQCameraExposureControl_metaObject(self: pointer, ): pointer {.importc: "QCameraExposureControl_metaObject".}
proc fcQCameraExposureControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraExposureControl_metacast".}
proc fcQCameraExposureControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraExposureControl_metacall".}
proc fcQCameraExposureControl_tr(s: cstring): struct_miqt_string {.importc: "QCameraExposureControl_tr".}
proc fcQCameraExposureControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraExposureControl_trUtf8".}
proc fcQCameraExposureControl_isParameterSupported(self: pointer, parameter: cint): bool {.importc: "QCameraExposureControl_isParameterSupported".}
proc fcQCameraExposureControl_requestedValue(self: pointer, parameter: cint): pointer {.importc: "QCameraExposureControl_requestedValue".}
proc fcQCameraExposureControl_actualValue(self: pointer, parameter: cint): pointer {.importc: "QCameraExposureControl_actualValue".}
proc fcQCameraExposureControl_setValue(self: pointer, parameter: cint, value: pointer): bool {.importc: "QCameraExposureControl_setValue".}
proc fcQCameraExposureControl_requestedValueChanged(self: pointer, parameter: cint): void {.importc: "QCameraExposureControl_requestedValueChanged".}
proc fQCameraExposureControl_connect_requestedValueChanged(self: pointer, slot: int) {.importc: "QCameraExposureControl_connect_requestedValueChanged".}
proc fcQCameraExposureControl_actualValueChanged(self: pointer, parameter: cint): void {.importc: "QCameraExposureControl_actualValueChanged".}
proc fQCameraExposureControl_connect_actualValueChanged(self: pointer, slot: int) {.importc: "QCameraExposureControl_connect_actualValueChanged".}
proc fcQCameraExposureControl_parameterRangeChanged(self: pointer, parameter: cint): void {.importc: "QCameraExposureControl_parameterRangeChanged".}
proc fQCameraExposureControl_connect_parameterRangeChanged(self: pointer, slot: int) {.importc: "QCameraExposureControl_connect_parameterRangeChanged".}
proc fcQCameraExposureControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraExposureControl_tr2".}
proc fcQCameraExposureControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraExposureControl_tr3".}
proc fcQCameraExposureControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraExposureControl_trUtf82".}
proc fcQCameraExposureControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraExposureControl_trUtf83".}
proc fcQCameraExposureControl_delete(self: pointer) {.importc: "QCameraExposureControl_delete".}


func init*(T: type QCameraExposureControl, h: ptr cQCameraExposureControl): QCameraExposureControl =
  T(h: h)
proc metaObject*(self: QCameraExposureControl, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQCameraExposureControl_metaObject(self.h))

proc metacast*(self: QCameraExposureControl, param1: cstring): pointer =

  fcQCameraExposureControl_metacast(self.h, param1)

proc metacall*(self: QCameraExposureControl, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQCameraExposureControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QCameraExposureControl, s: cstring): string =

  let v_ms = fcQCameraExposureControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QCameraExposureControl, s: cstring): string =

  let v_ms = fcQCameraExposureControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isParameterSupported*(self: QCameraExposureControl, parameter: QCameraExposureControlExposureParameter): bool =

  fcQCameraExposureControl_isParameterSupported(self.h, cint(parameter))

proc requestedValue*(self: QCameraExposureControl, parameter: QCameraExposureControlExposureParameter): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQCameraExposureControl_requestedValue(self.h, cint(parameter)))

proc actualValue*(self: QCameraExposureControl, parameter: QCameraExposureControlExposureParameter): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQCameraExposureControl_actualValue(self.h, cint(parameter)))

proc setValue*(self: QCameraExposureControl, parameter: QCameraExposureControlExposureParameter, value: gen_qvariant.QVariant): bool =

  fcQCameraExposureControl_setValue(self.h, cint(parameter), value.h)

proc requestedValueChanged*(self: QCameraExposureControl, parameter: cint): void =

  fcQCameraExposureControl_requestedValueChanged(self.h, parameter)

proc miqt_exec_callback_QCameraExposureControl_requestedValueChanged(slot: int, parameter: cint) {.exportc.} =
  type Cb = proc(parameter: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = parameter


  nimfunc[](slotval1)

proc onrequestedValueChanged*(self: QCameraExposureControl, slot: proc(parameter: cint)) =
  type Cb = proc(parameter: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraExposureControl_connect_requestedValueChanged(self.h, cast[int](addr tmp[]))
proc actualValueChanged*(self: QCameraExposureControl, parameter: cint): void =

  fcQCameraExposureControl_actualValueChanged(self.h, parameter)

proc miqt_exec_callback_QCameraExposureControl_actualValueChanged(slot: int, parameter: cint) {.exportc.} =
  type Cb = proc(parameter: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = parameter


  nimfunc[](slotval1)

proc onactualValueChanged*(self: QCameraExposureControl, slot: proc(parameter: cint)) =
  type Cb = proc(parameter: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraExposureControl_connect_actualValueChanged(self.h, cast[int](addr tmp[]))
proc parameterRangeChanged*(self: QCameraExposureControl, parameter: cint): void =

  fcQCameraExposureControl_parameterRangeChanged(self.h, parameter)

proc miqt_exec_callback_QCameraExposureControl_parameterRangeChanged(slot: int, parameter: cint) {.exportc.} =
  type Cb = proc(parameter: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = parameter


  nimfunc[](slotval1)

proc onparameterRangeChanged*(self: QCameraExposureControl, slot: proc(parameter: cint)) =
  type Cb = proc(parameter: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraExposureControl_connect_parameterRangeChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QCameraExposureControl, s: cstring, c: cstring): string =

  let v_ms = fcQCameraExposureControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QCameraExposureControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCameraExposureControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QCameraExposureControl, s: cstring, c: cstring): string =

  let v_ms = fcQCameraExposureControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QCameraExposureControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCameraExposureControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QCameraExposureControl) =
  fcQCameraExposureControl_delete(self.h)
