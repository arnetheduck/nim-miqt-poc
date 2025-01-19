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
{.compile("gen_qcameraimageprocessingcontrol.cpp", cflags).}


type QCameraImageProcessingControlProcessingParameter* = cint
const
  QCameraImageProcessingControlWhiteBalancePreset* = 0
  QCameraImageProcessingControlColorTemperature* = 1
  QCameraImageProcessingControlContrast* = 2
  QCameraImageProcessingControlSaturation* = 3
  QCameraImageProcessingControlBrightness* = 4
  QCameraImageProcessingControlSharpening* = 5
  QCameraImageProcessingControlDenoising* = 6
  QCameraImageProcessingControlContrastAdjustment* = 7
  QCameraImageProcessingControlSaturationAdjustment* = 8
  QCameraImageProcessingControlBrightnessAdjustment* = 9
  QCameraImageProcessingControlSharpeningAdjustment* = 10
  QCameraImageProcessingControlDenoisingAdjustment* = 11
  QCameraImageProcessingControlColorFilter* = 12
  QCameraImageProcessingControlExtendedParameter* = 1000



import gen_qcameraimageprocessingcontrol_types
export gen_qcameraimageprocessingcontrol_types

import
  gen_qmediacontrol,
  gen_qobjectdefs,
  gen_qvariant
export
  gen_qmediacontrol,
  gen_qobjectdefs,
  gen_qvariant

type cQCameraImageProcessingControl*{.exportc: "QCameraImageProcessingControl", incompleteStruct.} = object

proc fcQCameraImageProcessingControl_metaObject(self: pointer, ): pointer {.importc: "QCameraImageProcessingControl_metaObject".}
proc fcQCameraImageProcessingControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraImageProcessingControl_metacast".}
proc fcQCameraImageProcessingControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraImageProcessingControl_metacall".}
proc fcQCameraImageProcessingControl_tr(s: cstring): struct_miqt_string {.importc: "QCameraImageProcessingControl_tr".}
proc fcQCameraImageProcessingControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraImageProcessingControl_trUtf8".}
proc fcQCameraImageProcessingControl_isParameterSupported(self: pointer, param1: cint): bool {.importc: "QCameraImageProcessingControl_isParameterSupported".}
proc fcQCameraImageProcessingControl_isParameterValueSupported(self: pointer, parameter: cint, value: pointer): bool {.importc: "QCameraImageProcessingControl_isParameterValueSupported".}
proc fcQCameraImageProcessingControl_parameter(self: pointer, parameter: cint): pointer {.importc: "QCameraImageProcessingControl_parameter".}
proc fcQCameraImageProcessingControl_setParameter(self: pointer, parameter: cint, value: pointer): void {.importc: "QCameraImageProcessingControl_setParameter".}
proc fcQCameraImageProcessingControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraImageProcessingControl_tr2".}
proc fcQCameraImageProcessingControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraImageProcessingControl_tr3".}
proc fcQCameraImageProcessingControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraImageProcessingControl_trUtf82".}
proc fcQCameraImageProcessingControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraImageProcessingControl_trUtf83".}
proc fcQCameraImageProcessingControl_staticMetaObject(): pointer {.importc: "QCameraImageProcessingControl_staticMetaObject".}
proc fcQCameraImageProcessingControl_delete(self: pointer) {.importc: "QCameraImageProcessingControl_delete".}


func init*(T: type QCameraImageProcessingControl, h: ptr cQCameraImageProcessingControl): QCameraImageProcessingControl =
  T(h: h)
proc metaObject*(self: QCameraImageProcessingControl, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQCameraImageProcessingControl_metaObject(self.h))

proc metacast*(self: QCameraImageProcessingControl, param1: cstring): pointer =

  fcQCameraImageProcessingControl_metacast(self.h, param1)

proc metacall*(self: QCameraImageProcessingControl, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQCameraImageProcessingControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QCameraImageProcessingControl, s: cstring): string =

  let v_ms = fcQCameraImageProcessingControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QCameraImageProcessingControl, s: cstring): string =

  let v_ms = fcQCameraImageProcessingControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isParameterSupported*(self: QCameraImageProcessingControl, param1: QCameraImageProcessingControlProcessingParameter): bool =

  fcQCameraImageProcessingControl_isParameterSupported(self.h, cint(param1))

proc isParameterValueSupported*(self: QCameraImageProcessingControl, parameter: QCameraImageProcessingControlProcessingParameter, value: gen_qvariant.QVariant): bool =

  fcQCameraImageProcessingControl_isParameterValueSupported(self.h, cint(parameter), value.h)

proc parameter*(self: QCameraImageProcessingControl, parameter: QCameraImageProcessingControlProcessingParameter): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQCameraImageProcessingControl_parameter(self.h, cint(parameter)))

proc setParameter*(self: QCameraImageProcessingControl, parameter: QCameraImageProcessingControlProcessingParameter, value: gen_qvariant.QVariant): void =

  fcQCameraImageProcessingControl_setParameter(self.h, cint(parameter), value.h)

proc tr2*(_: type QCameraImageProcessingControl, s: cstring, c: cstring): string =

  let v_ms = fcQCameraImageProcessingControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QCameraImageProcessingControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCameraImageProcessingControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QCameraImageProcessingControl, s: cstring, c: cstring): string =

  let v_ms = fcQCameraImageProcessingControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QCameraImageProcessingControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCameraImageProcessingControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type QCameraImageProcessingControl): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQCameraImageProcessingControl_staticMetaObject())
proc delete*(self: QCameraImageProcessingControl) =
  fcQCameraImageProcessingControl_delete(self.h)
