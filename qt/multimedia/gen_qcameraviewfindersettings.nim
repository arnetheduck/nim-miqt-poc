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
{.compile("gen_qcameraviewfindersettings.cpp", cflags).}


import gen_qcameraviewfindersettings_types
export gen_qcameraviewfindersettings_types

import
  gen_qsize,
  gen_qvideoframe
export
  gen_qsize,
  gen_qvideoframe

type cQCameraViewfinderSettings*{.exportc: "QCameraViewfinderSettings", incompleteStruct.} = object

proc fcQCameraViewfinderSettings_new(): ptr cQCameraViewfinderSettings {.importc: "QCameraViewfinderSettings_new".}
proc fcQCameraViewfinderSettings_new2(other: pointer): ptr cQCameraViewfinderSettings {.importc: "QCameraViewfinderSettings_new2".}
proc fcQCameraViewfinderSettings_operatorAssign(self: pointer, other: pointer): void {.importc: "QCameraViewfinderSettings_operatorAssign".}
proc fcQCameraViewfinderSettings_swap(self: pointer, other: pointer): void {.importc: "QCameraViewfinderSettings_swap".}
proc fcQCameraViewfinderSettings_isNull(self: pointer, ): bool {.importc: "QCameraViewfinderSettings_isNull".}
proc fcQCameraViewfinderSettings_resolution(self: pointer, ): pointer {.importc: "QCameraViewfinderSettings_resolution".}
proc fcQCameraViewfinderSettings_setResolution(self: pointer, resolution: pointer): void {.importc: "QCameraViewfinderSettings_setResolution".}
proc fcQCameraViewfinderSettings_setResolution2(self: pointer, width: cint, height: cint): void {.importc: "QCameraViewfinderSettings_setResolution2".}
proc fcQCameraViewfinderSettings_minimumFrameRate(self: pointer, ): float64 {.importc: "QCameraViewfinderSettings_minimumFrameRate".}
proc fcQCameraViewfinderSettings_setMinimumFrameRate(self: pointer, rate: float64): void {.importc: "QCameraViewfinderSettings_setMinimumFrameRate".}
proc fcQCameraViewfinderSettings_maximumFrameRate(self: pointer, ): float64 {.importc: "QCameraViewfinderSettings_maximumFrameRate".}
proc fcQCameraViewfinderSettings_setMaximumFrameRate(self: pointer, rate: float64): void {.importc: "QCameraViewfinderSettings_setMaximumFrameRate".}
proc fcQCameraViewfinderSettings_pixelFormat(self: pointer, ): cint {.importc: "QCameraViewfinderSettings_pixelFormat".}
proc fcQCameraViewfinderSettings_setPixelFormat(self: pointer, format: cint): void {.importc: "QCameraViewfinderSettings_setPixelFormat".}
proc fcQCameraViewfinderSettings_pixelAspectRatio(self: pointer, ): pointer {.importc: "QCameraViewfinderSettings_pixelAspectRatio".}
proc fcQCameraViewfinderSettings_setPixelAspectRatio(self: pointer, ratio: pointer): void {.importc: "QCameraViewfinderSettings_setPixelAspectRatio".}
proc fcQCameraViewfinderSettings_setPixelAspectRatio2(self: pointer, horizontal: cint, vertical: cint): void {.importc: "QCameraViewfinderSettings_setPixelAspectRatio2".}
proc fcQCameraViewfinderSettings_delete(self: pointer) {.importc: "QCameraViewfinderSettings_delete".}


func init*(T: type QCameraViewfinderSettings, h: ptr cQCameraViewfinderSettings): QCameraViewfinderSettings =
  T(h: h)
proc create*(T: type QCameraViewfinderSettings, ): QCameraViewfinderSettings =

  QCameraViewfinderSettings.init(fcQCameraViewfinderSettings_new())
proc create*(T: type QCameraViewfinderSettings, other: QCameraViewfinderSettings): QCameraViewfinderSettings =

  QCameraViewfinderSettings.init(fcQCameraViewfinderSettings_new2(other.h))
proc operatorAssign*(self: QCameraViewfinderSettings, other: QCameraViewfinderSettings): void =

  fcQCameraViewfinderSettings_operatorAssign(self.h, other.h)

proc swap*(self: QCameraViewfinderSettings, other: QCameraViewfinderSettings): void =

  fcQCameraViewfinderSettings_swap(self.h, other.h)

proc isNull*(self: QCameraViewfinderSettings, ): bool =

  fcQCameraViewfinderSettings_isNull(self.h)

proc resolution*(self: QCameraViewfinderSettings, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQCameraViewfinderSettings_resolution(self.h))

proc setResolution*(self: QCameraViewfinderSettings, resolution: gen_qsize.QSize): void =

  fcQCameraViewfinderSettings_setResolution(self.h, resolution.h)

proc setResolution2*(self: QCameraViewfinderSettings, width: cint, height: cint): void =

  fcQCameraViewfinderSettings_setResolution2(self.h, width, height)

proc minimumFrameRate*(self: QCameraViewfinderSettings, ): float64 =

  fcQCameraViewfinderSettings_minimumFrameRate(self.h)

proc setMinimumFrameRate*(self: QCameraViewfinderSettings, rate: float64): void =

  fcQCameraViewfinderSettings_setMinimumFrameRate(self.h, rate)

proc maximumFrameRate*(self: QCameraViewfinderSettings, ): float64 =

  fcQCameraViewfinderSettings_maximumFrameRate(self.h)

proc setMaximumFrameRate*(self: QCameraViewfinderSettings, rate: float64): void =

  fcQCameraViewfinderSettings_setMaximumFrameRate(self.h, rate)

proc pixelFormat*(self: QCameraViewfinderSettings, ): gen_qvideoframe.QVideoFramePixelFormat =

  gen_qvideoframe.QVideoFramePixelFormat(fcQCameraViewfinderSettings_pixelFormat(self.h))

proc setPixelFormat*(self: QCameraViewfinderSettings, format: gen_qvideoframe.QVideoFramePixelFormat): void =

  fcQCameraViewfinderSettings_setPixelFormat(self.h, cint(format))

proc pixelAspectRatio*(self: QCameraViewfinderSettings, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQCameraViewfinderSettings_pixelAspectRatio(self.h))

proc setPixelAspectRatio*(self: QCameraViewfinderSettings, ratio: gen_qsize.QSize): void =

  fcQCameraViewfinderSettings_setPixelAspectRatio(self.h, ratio.h)

proc setPixelAspectRatio2*(self: QCameraViewfinderSettings, horizontal: cint, vertical: cint): void =

  fcQCameraViewfinderSettings_setPixelAspectRatio2(self.h, horizontal, vertical)

proc delete*(self: QCameraViewfinderSettings) =
  fcQCameraViewfinderSettings_delete(self.h)
