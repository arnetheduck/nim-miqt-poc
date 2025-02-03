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
{.compile("gen_qcameraimageprocessing.cpp", cflags).}


type QCameraImageProcessingWhiteBalanceMode* = cint
const
  QCameraImageProcessingWhiteBalanceAuto* = 0
  QCameraImageProcessingWhiteBalanceManual* = 1
  QCameraImageProcessingWhiteBalanceSunlight* = 2
  QCameraImageProcessingWhiteBalanceCloudy* = 3
  QCameraImageProcessingWhiteBalanceShade* = 4
  QCameraImageProcessingWhiteBalanceTungsten* = 5
  QCameraImageProcessingWhiteBalanceFluorescent* = 6
  QCameraImageProcessingWhiteBalanceFlash* = 7
  QCameraImageProcessingWhiteBalanceSunset* = 8
  QCameraImageProcessingWhiteBalanceVendor* = 1000



type QCameraImageProcessingColorFilter* = cint
const
  QCameraImageProcessingColorFilterNone* = 0
  QCameraImageProcessingColorFilterGrayscale* = 1
  QCameraImageProcessingColorFilterNegative* = 2
  QCameraImageProcessingColorFilterSolarize* = 3
  QCameraImageProcessingColorFilterSepia* = 4
  QCameraImageProcessingColorFilterPosterize* = 5
  QCameraImageProcessingColorFilterWhiteboard* = 6
  QCameraImageProcessingColorFilterBlackboard* = 7
  QCameraImageProcessingColorFilterAqua* = 8
  QCameraImageProcessingColorFilterVendor* = 1000



import gen_qcameraimageprocessing_types
export gen_qcameraimageprocessing_types

import
  gen_qobject,
  gen_qobjectdefs
export
  gen_qobject,
  gen_qobjectdefs

type cQCameraImageProcessing*{.exportc: "QCameraImageProcessing", incompleteStruct.} = object

proc fcQCameraImageProcessing_metaObject(self: pointer, ): pointer {.importc: "QCameraImageProcessing_metaObject".}
proc fcQCameraImageProcessing_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraImageProcessing_metacast".}
proc fcQCameraImageProcessing_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraImageProcessing_metacall".}
proc fcQCameraImageProcessing_tr(s: cstring): struct_miqt_string {.importc: "QCameraImageProcessing_tr".}
proc fcQCameraImageProcessing_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraImageProcessing_trUtf8".}
proc fcQCameraImageProcessing_isAvailable(self: pointer, ): bool {.importc: "QCameraImageProcessing_isAvailable".}
proc fcQCameraImageProcessing_whiteBalanceMode(self: pointer, ): cint {.importc: "QCameraImageProcessing_whiteBalanceMode".}
proc fcQCameraImageProcessing_setWhiteBalanceMode(self: pointer, mode: cint): void {.importc: "QCameraImageProcessing_setWhiteBalanceMode".}
proc fcQCameraImageProcessing_isWhiteBalanceModeSupported(self: pointer, mode: cint): bool {.importc: "QCameraImageProcessing_isWhiteBalanceModeSupported".}
proc fcQCameraImageProcessing_manualWhiteBalance(self: pointer, ): float64 {.importc: "QCameraImageProcessing_manualWhiteBalance".}
proc fcQCameraImageProcessing_setManualWhiteBalance(self: pointer, colorTemperature: float64): void {.importc: "QCameraImageProcessing_setManualWhiteBalance".}
proc fcQCameraImageProcessing_brightness(self: pointer, ): float64 {.importc: "QCameraImageProcessing_brightness".}
proc fcQCameraImageProcessing_setBrightness(self: pointer, value: float64): void {.importc: "QCameraImageProcessing_setBrightness".}
proc fcQCameraImageProcessing_contrast(self: pointer, ): float64 {.importc: "QCameraImageProcessing_contrast".}
proc fcQCameraImageProcessing_setContrast(self: pointer, value: float64): void {.importc: "QCameraImageProcessing_setContrast".}
proc fcQCameraImageProcessing_saturation(self: pointer, ): float64 {.importc: "QCameraImageProcessing_saturation".}
proc fcQCameraImageProcessing_setSaturation(self: pointer, value: float64): void {.importc: "QCameraImageProcessing_setSaturation".}
proc fcQCameraImageProcessing_sharpeningLevel(self: pointer, ): float64 {.importc: "QCameraImageProcessing_sharpeningLevel".}
proc fcQCameraImageProcessing_setSharpeningLevel(self: pointer, value: float64): void {.importc: "QCameraImageProcessing_setSharpeningLevel".}
proc fcQCameraImageProcessing_denoisingLevel(self: pointer, ): float64 {.importc: "QCameraImageProcessing_denoisingLevel".}
proc fcQCameraImageProcessing_setDenoisingLevel(self: pointer, value: float64): void {.importc: "QCameraImageProcessing_setDenoisingLevel".}
proc fcQCameraImageProcessing_colorFilter(self: pointer, ): cint {.importc: "QCameraImageProcessing_colorFilter".}
proc fcQCameraImageProcessing_setColorFilter(self: pointer, filter: cint): void {.importc: "QCameraImageProcessing_setColorFilter".}
proc fcQCameraImageProcessing_isColorFilterSupported(self: pointer, filter: cint): bool {.importc: "QCameraImageProcessing_isColorFilterSupported".}
proc fcQCameraImageProcessing_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraImageProcessing_tr2".}
proc fcQCameraImageProcessing_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraImageProcessing_tr3".}
proc fcQCameraImageProcessing_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraImageProcessing_trUtf82".}
proc fcQCameraImageProcessing_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraImageProcessing_trUtf83".}


func init*(T: type QCameraImageProcessing, h: ptr cQCameraImageProcessing): QCameraImageProcessing =
  T(h: h)
proc metaObject*(self: QCameraImageProcessing, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQCameraImageProcessing_metaObject(self.h))

proc metacast*(self: QCameraImageProcessing, param1: cstring): pointer =

  fcQCameraImageProcessing_metacast(self.h, param1)

proc metacall*(self: QCameraImageProcessing, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQCameraImageProcessing_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QCameraImageProcessing, s: cstring): string =

  let v_ms = fcQCameraImageProcessing_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QCameraImageProcessing, s: cstring): string =

  let v_ms = fcQCameraImageProcessing_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isAvailable*(self: QCameraImageProcessing, ): bool =

  fcQCameraImageProcessing_isAvailable(self.h)

proc whiteBalanceMode*(self: QCameraImageProcessing, ): QCameraImageProcessingWhiteBalanceMode =

  QCameraImageProcessingWhiteBalanceMode(fcQCameraImageProcessing_whiteBalanceMode(self.h))

proc setWhiteBalanceMode*(self: QCameraImageProcessing, mode: QCameraImageProcessingWhiteBalanceMode): void =

  fcQCameraImageProcessing_setWhiteBalanceMode(self.h, cint(mode))

proc isWhiteBalanceModeSupported*(self: QCameraImageProcessing, mode: QCameraImageProcessingWhiteBalanceMode): bool =

  fcQCameraImageProcessing_isWhiteBalanceModeSupported(self.h, cint(mode))

proc manualWhiteBalance*(self: QCameraImageProcessing, ): float64 =

  fcQCameraImageProcessing_manualWhiteBalance(self.h)

proc setManualWhiteBalance*(self: QCameraImageProcessing, colorTemperature: float64): void =

  fcQCameraImageProcessing_setManualWhiteBalance(self.h, colorTemperature)

proc brightness*(self: QCameraImageProcessing, ): float64 =

  fcQCameraImageProcessing_brightness(self.h)

proc setBrightness*(self: QCameraImageProcessing, value: float64): void =

  fcQCameraImageProcessing_setBrightness(self.h, value)

proc contrast*(self: QCameraImageProcessing, ): float64 =

  fcQCameraImageProcessing_contrast(self.h)

proc setContrast*(self: QCameraImageProcessing, value: float64): void =

  fcQCameraImageProcessing_setContrast(self.h, value)

proc saturation*(self: QCameraImageProcessing, ): float64 =

  fcQCameraImageProcessing_saturation(self.h)

proc setSaturation*(self: QCameraImageProcessing, value: float64): void =

  fcQCameraImageProcessing_setSaturation(self.h, value)

proc sharpeningLevel*(self: QCameraImageProcessing, ): float64 =

  fcQCameraImageProcessing_sharpeningLevel(self.h)

proc setSharpeningLevel*(self: QCameraImageProcessing, value: float64): void =

  fcQCameraImageProcessing_setSharpeningLevel(self.h, value)

proc denoisingLevel*(self: QCameraImageProcessing, ): float64 =

  fcQCameraImageProcessing_denoisingLevel(self.h)

proc setDenoisingLevel*(self: QCameraImageProcessing, value: float64): void =

  fcQCameraImageProcessing_setDenoisingLevel(self.h, value)

proc colorFilter*(self: QCameraImageProcessing, ): QCameraImageProcessingColorFilter =

  QCameraImageProcessingColorFilter(fcQCameraImageProcessing_colorFilter(self.h))

proc setColorFilter*(self: QCameraImageProcessing, filter: QCameraImageProcessingColorFilter): void =

  fcQCameraImageProcessing_setColorFilter(self.h, cint(filter))

proc isColorFilterSupported*(self: QCameraImageProcessing, filter: QCameraImageProcessingColorFilter): bool =

  fcQCameraImageProcessing_isColorFilterSupported(self.h, cint(filter))

proc tr2*(_: type QCameraImageProcessing, s: cstring, c: cstring): string =

  let v_ms = fcQCameraImageProcessing_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QCameraImageProcessing, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCameraImageProcessing_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QCameraImageProcessing, s: cstring, c: cstring): string =

  let v_ms = fcQCameraImageProcessing_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QCameraImageProcessing, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCameraImageProcessing_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

