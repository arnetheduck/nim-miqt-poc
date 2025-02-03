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
{.compile("gen_qpaintdevice.cpp", cflags).}


type QPaintDevicePaintDeviceMetric* = cint
const
  QPaintDevicePdmWidth* = 1
  QPaintDevicePdmHeight* = 2
  QPaintDevicePdmWidthMM* = 3
  QPaintDevicePdmHeightMM* = 4
  QPaintDevicePdmNumColors* = 5
  QPaintDevicePdmDepth* = 6
  QPaintDevicePdmDpiX* = 7
  QPaintDevicePdmDpiY* = 8
  QPaintDevicePdmPhysicalDpiX* = 9
  QPaintDevicePdmPhysicalDpiY* = 10
  QPaintDevicePdmDevicePixelRatio* = 11
  QPaintDevicePdmDevicePixelRatioScaled* = 12



import gen_qpaintdevice_types
export gen_qpaintdevice_types

import
  gen_qpaintengine
export
  gen_qpaintengine

type cQPaintDevice*{.exportc: "QPaintDevice", incompleteStruct.} = object

proc fcQPaintDevice_devType(self: pointer, ): cint {.importc: "QPaintDevice_devType".}
proc fcQPaintDevice_paintingActive(self: pointer, ): bool {.importc: "QPaintDevice_paintingActive".}
proc fcQPaintDevice_paintEngine(self: pointer, ): pointer {.importc: "QPaintDevice_paintEngine".}
proc fcQPaintDevice_width(self: pointer, ): cint {.importc: "QPaintDevice_width".}
proc fcQPaintDevice_height(self: pointer, ): cint {.importc: "QPaintDevice_height".}
proc fcQPaintDevice_widthMM(self: pointer, ): cint {.importc: "QPaintDevice_widthMM".}
proc fcQPaintDevice_heightMM(self: pointer, ): cint {.importc: "QPaintDevice_heightMM".}
proc fcQPaintDevice_logicalDpiX(self: pointer, ): cint {.importc: "QPaintDevice_logicalDpiX".}
proc fcQPaintDevice_logicalDpiY(self: pointer, ): cint {.importc: "QPaintDevice_logicalDpiY".}
proc fcQPaintDevice_physicalDpiX(self: pointer, ): cint {.importc: "QPaintDevice_physicalDpiX".}
proc fcQPaintDevice_physicalDpiY(self: pointer, ): cint {.importc: "QPaintDevice_physicalDpiY".}
proc fcQPaintDevice_devicePixelRatio(self: pointer, ): float64 {.importc: "QPaintDevice_devicePixelRatio".}
proc fcQPaintDevice_devicePixelRatioF(self: pointer, ): float64 {.importc: "QPaintDevice_devicePixelRatioF".}
proc fcQPaintDevice_colorCount(self: pointer, ): cint {.importc: "QPaintDevice_colorCount".}
proc fcQPaintDevice_depth(self: pointer, ): cint {.importc: "QPaintDevice_depth".}
proc fcQPaintDevice_devicePixelRatioFScale(): float64 {.importc: "QPaintDevice_devicePixelRatioFScale".}
proc fcQPaintDevice_delete(self: pointer) {.importc: "QPaintDevice_delete".}


func init*(T: type QPaintDevice, h: ptr cQPaintDevice): QPaintDevice =
  T(h: h)
proc devType*(self: QPaintDevice, ): cint =

  fcQPaintDevice_devType(self.h)

proc paintingActive*(self: QPaintDevice, ): bool =

  fcQPaintDevice_paintingActive(self.h)

proc paintEngine*(self: QPaintDevice, ): gen_qpaintengine.QPaintEngine =

  gen_qpaintengine.QPaintEngine(h: fcQPaintDevice_paintEngine(self.h))

proc width*(self: QPaintDevice, ): cint =

  fcQPaintDevice_width(self.h)

proc height*(self: QPaintDevice, ): cint =

  fcQPaintDevice_height(self.h)

proc widthMM*(self: QPaintDevice, ): cint =

  fcQPaintDevice_widthMM(self.h)

proc heightMM*(self: QPaintDevice, ): cint =

  fcQPaintDevice_heightMM(self.h)

proc logicalDpiX*(self: QPaintDevice, ): cint =

  fcQPaintDevice_logicalDpiX(self.h)

proc logicalDpiY*(self: QPaintDevice, ): cint =

  fcQPaintDevice_logicalDpiY(self.h)

proc physicalDpiX*(self: QPaintDevice, ): cint =

  fcQPaintDevice_physicalDpiX(self.h)

proc physicalDpiY*(self: QPaintDevice, ): cint =

  fcQPaintDevice_physicalDpiY(self.h)

proc devicePixelRatio*(self: QPaintDevice, ): float64 =

  fcQPaintDevice_devicePixelRatio(self.h)

proc devicePixelRatioF*(self: QPaintDevice, ): float64 =

  fcQPaintDevice_devicePixelRatioF(self.h)

proc colorCount*(self: QPaintDevice, ): cint =

  fcQPaintDevice_colorCount(self.h)

proc depth*(self: QPaintDevice, ): cint =

  fcQPaintDevice_depth(self.h)

proc devicePixelRatioFScale*(_: type QPaintDevice, ): float64 =

  fcQPaintDevice_devicePixelRatioFScale()

proc delete*(self: QPaintDevice) =
  fcQPaintDevice_delete(self.h)
