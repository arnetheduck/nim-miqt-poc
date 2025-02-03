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
{.compile("gen_qcameraviewfindersettingscontrol.cpp", cflags).}


type QCameraViewfinderSettingsControlViewfinderParameter* = cint
const
  QCameraViewfinderSettingsControlResolution* = 0
  QCameraViewfinderSettingsControlPixelAspectRatio* = 1
  QCameraViewfinderSettingsControlMinimumFrameRate* = 2
  QCameraViewfinderSettingsControlMaximumFrameRate* = 3
  QCameraViewfinderSettingsControlPixelFormat* = 4
  QCameraViewfinderSettingsControlUserParameter* = 1000



import gen_qcameraviewfindersettingscontrol_types
export gen_qcameraviewfindersettingscontrol_types

import
  gen_qcameraviewfindersettings,
  gen_qmediacontrol,
  gen_qobjectdefs,
  gen_qvariant
export
  gen_qcameraviewfindersettings,
  gen_qmediacontrol,
  gen_qobjectdefs,
  gen_qvariant

type cQCameraViewfinderSettingsControl*{.exportc: "QCameraViewfinderSettingsControl", incompleteStruct.} = object
type cQCameraViewfinderSettingsControl2*{.exportc: "QCameraViewfinderSettingsControl2", incompleteStruct.} = object

proc fcQCameraViewfinderSettingsControl_metaObject(self: pointer, ): pointer {.importc: "QCameraViewfinderSettingsControl_metaObject".}
proc fcQCameraViewfinderSettingsControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraViewfinderSettingsControl_metacast".}
proc fcQCameraViewfinderSettingsControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraViewfinderSettingsControl_metacall".}
proc fcQCameraViewfinderSettingsControl_tr(s: cstring): struct_miqt_string {.importc: "QCameraViewfinderSettingsControl_tr".}
proc fcQCameraViewfinderSettingsControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraViewfinderSettingsControl_trUtf8".}
proc fcQCameraViewfinderSettingsControl_isViewfinderParameterSupported(self: pointer, parameter: cint): bool {.importc: "QCameraViewfinderSettingsControl_isViewfinderParameterSupported".}
proc fcQCameraViewfinderSettingsControl_viewfinderParameter(self: pointer, parameter: cint): pointer {.importc: "QCameraViewfinderSettingsControl_viewfinderParameter".}
proc fcQCameraViewfinderSettingsControl_setViewfinderParameter(self: pointer, parameter: cint, value: pointer): void {.importc: "QCameraViewfinderSettingsControl_setViewfinderParameter".}
proc fcQCameraViewfinderSettingsControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraViewfinderSettingsControl_tr2".}
proc fcQCameraViewfinderSettingsControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraViewfinderSettingsControl_tr3".}
proc fcQCameraViewfinderSettingsControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraViewfinderSettingsControl_trUtf82".}
proc fcQCameraViewfinderSettingsControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraViewfinderSettingsControl_trUtf83".}
proc fcQCameraViewfinderSettingsControl_delete(self: pointer) {.importc: "QCameraViewfinderSettingsControl_delete".}
proc fcQCameraViewfinderSettingsControl2_metaObject(self: pointer, ): pointer {.importc: "QCameraViewfinderSettingsControl2_metaObject".}
proc fcQCameraViewfinderSettingsControl2_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraViewfinderSettingsControl2_metacast".}
proc fcQCameraViewfinderSettingsControl2_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraViewfinderSettingsControl2_metacall".}
proc fcQCameraViewfinderSettingsControl2_tr(s: cstring): struct_miqt_string {.importc: "QCameraViewfinderSettingsControl2_tr".}
proc fcQCameraViewfinderSettingsControl2_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraViewfinderSettingsControl2_trUtf8".}
proc fcQCameraViewfinderSettingsControl2_supportedViewfinderSettings(self: pointer, ): struct_miqt_array {.importc: "QCameraViewfinderSettingsControl2_supportedViewfinderSettings".}
proc fcQCameraViewfinderSettingsControl2_viewfinderSettings(self: pointer, ): pointer {.importc: "QCameraViewfinderSettingsControl2_viewfinderSettings".}
proc fcQCameraViewfinderSettingsControl2_setViewfinderSettings(self: pointer, settings: pointer): void {.importc: "QCameraViewfinderSettingsControl2_setViewfinderSettings".}
proc fcQCameraViewfinderSettingsControl2_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraViewfinderSettingsControl2_tr2".}
proc fcQCameraViewfinderSettingsControl2_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraViewfinderSettingsControl2_tr3".}
proc fcQCameraViewfinderSettingsControl2_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraViewfinderSettingsControl2_trUtf82".}
proc fcQCameraViewfinderSettingsControl2_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraViewfinderSettingsControl2_trUtf83".}
proc fcQCameraViewfinderSettingsControl2_delete(self: pointer) {.importc: "QCameraViewfinderSettingsControl2_delete".}


func init*(T: type QCameraViewfinderSettingsControl, h: ptr cQCameraViewfinderSettingsControl): QCameraViewfinderSettingsControl =
  T(h: h)
proc metaObject*(self: QCameraViewfinderSettingsControl, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQCameraViewfinderSettingsControl_metaObject(self.h))

proc metacast*(self: QCameraViewfinderSettingsControl, param1: cstring): pointer =

  fcQCameraViewfinderSettingsControl_metacast(self.h, param1)

proc metacall*(self: QCameraViewfinderSettingsControl, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQCameraViewfinderSettingsControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QCameraViewfinderSettingsControl, s: cstring): string =

  let v_ms = fcQCameraViewfinderSettingsControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QCameraViewfinderSettingsControl, s: cstring): string =

  let v_ms = fcQCameraViewfinderSettingsControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isViewfinderParameterSupported*(self: QCameraViewfinderSettingsControl, parameter: QCameraViewfinderSettingsControlViewfinderParameter): bool =

  fcQCameraViewfinderSettingsControl_isViewfinderParameterSupported(self.h, cint(parameter))

proc viewfinderParameter*(self: QCameraViewfinderSettingsControl, parameter: QCameraViewfinderSettingsControlViewfinderParameter): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQCameraViewfinderSettingsControl_viewfinderParameter(self.h, cint(parameter)))

proc setViewfinderParameter*(self: QCameraViewfinderSettingsControl, parameter: QCameraViewfinderSettingsControlViewfinderParameter, value: gen_qvariant.QVariant): void =

  fcQCameraViewfinderSettingsControl_setViewfinderParameter(self.h, cint(parameter), value.h)

proc tr2*(_: type QCameraViewfinderSettingsControl, s: cstring, c: cstring): string =

  let v_ms = fcQCameraViewfinderSettingsControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QCameraViewfinderSettingsControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCameraViewfinderSettingsControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QCameraViewfinderSettingsControl, s: cstring, c: cstring): string =

  let v_ms = fcQCameraViewfinderSettingsControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QCameraViewfinderSettingsControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCameraViewfinderSettingsControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QCameraViewfinderSettingsControl) =
  fcQCameraViewfinderSettingsControl_delete(self.h)

func init*(T: type QCameraViewfinderSettingsControl2, h: ptr cQCameraViewfinderSettingsControl2): QCameraViewfinderSettingsControl2 =
  T(h: h)
proc metaObject*(self: QCameraViewfinderSettingsControl2, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQCameraViewfinderSettingsControl2_metaObject(self.h))

proc metacast*(self: QCameraViewfinderSettingsControl2, param1: cstring): pointer =

  fcQCameraViewfinderSettingsControl2_metacast(self.h, param1)

proc metacall*(self: QCameraViewfinderSettingsControl2, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQCameraViewfinderSettingsControl2_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QCameraViewfinderSettingsControl2, s: cstring): string =

  let v_ms = fcQCameraViewfinderSettingsControl2_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QCameraViewfinderSettingsControl2, s: cstring): string =

  let v_ms = fcQCameraViewfinderSettingsControl2_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedViewfinderSettings*(self: QCameraViewfinderSettingsControl2, ): seq[gen_qcameraviewfindersettings.QCameraViewfinderSettings] =

  var v_ma = fcQCameraViewfinderSettingsControl2_supportedViewfinderSettings(self.h)
  var vx_ret = newSeq[gen_qcameraviewfindersettings.QCameraViewfinderSettings](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qcameraviewfindersettings.QCameraViewfinderSettings(h: v_outCast[i])
  vx_ret

proc viewfinderSettings*(self: QCameraViewfinderSettingsControl2, ): gen_qcameraviewfindersettings.QCameraViewfinderSettings =

  gen_qcameraviewfindersettings.QCameraViewfinderSettings(h: fcQCameraViewfinderSettingsControl2_viewfinderSettings(self.h))

proc setViewfinderSettings*(self: QCameraViewfinderSettingsControl2, settings: gen_qcameraviewfindersettings.QCameraViewfinderSettings): void =

  fcQCameraViewfinderSettingsControl2_setViewfinderSettings(self.h, settings.h)

proc tr2*(_: type QCameraViewfinderSettingsControl2, s: cstring, c: cstring): string =

  let v_ms = fcQCameraViewfinderSettingsControl2_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QCameraViewfinderSettingsControl2, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCameraViewfinderSettingsControl2_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QCameraViewfinderSettingsControl2, s: cstring, c: cstring): string =

  let v_ms = fcQCameraViewfinderSettingsControl2_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QCameraViewfinderSettingsControl2, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCameraViewfinderSettingsControl2_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QCameraViewfinderSettingsControl2) =
  fcQCameraViewfinderSettingsControl2_delete(self.h)
