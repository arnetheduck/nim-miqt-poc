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
{.compile("gen_qscrollerproperties.cpp", cflags).}


type QScrollerPropertiesOvershootPolicy* = cint
const
  QScrollerPropertiesOvershootWhenScrollable* = 0
  QScrollerPropertiesOvershootAlwaysOff* = 1
  QScrollerPropertiesOvershootAlwaysOn* = 2



type QScrollerPropertiesFrameRates* = cint
const
  QScrollerPropertiesStandard* = 0
  QScrollerPropertiesFps60* = 1
  QScrollerPropertiesFps30* = 2
  QScrollerPropertiesFps20* = 3



type QScrollerPropertiesScrollMetric* = cint
const
  QScrollerPropertiesMousePressEventDelay* = 0
  QScrollerPropertiesDragStartDistance* = 1
  QScrollerPropertiesDragVelocitySmoothingFactor* = 2
  QScrollerPropertiesAxisLockThreshold* = 3
  QScrollerPropertiesScrollingCurve* = 4
  QScrollerPropertiesDecelerationFactor* = 5
  QScrollerPropertiesMinimumVelocity* = 6
  QScrollerPropertiesMaximumVelocity* = 7
  QScrollerPropertiesMaximumClickThroughVelocity* = 8
  QScrollerPropertiesAcceleratingFlickMaximumTime* = 9
  QScrollerPropertiesAcceleratingFlickSpeedupFactor* = 10
  QScrollerPropertiesSnapPositionRatio* = 11
  QScrollerPropertiesSnapTime* = 12
  QScrollerPropertiesOvershootDragResistanceFactor* = 13
  QScrollerPropertiesOvershootDragDistanceFactor* = 14
  QScrollerPropertiesOvershootScrollDistanceFactor* = 15
  QScrollerPropertiesOvershootScrollTime* = 16
  QScrollerPropertiesHorizontalOvershootPolicy* = 17
  QScrollerPropertiesVerticalOvershootPolicy* = 18
  QScrollerPropertiesFrameRate* = 19
  QScrollerPropertiesScrollMetricCount* = 20



import gen_qscrollerproperties_types
export gen_qscrollerproperties_types

import
  gen_qvariant
export
  gen_qvariant

type cQScrollerProperties*{.exportc: "QScrollerProperties", incompleteStruct.} = object

proc fcQScrollerProperties_new(): ptr cQScrollerProperties {.importc: "QScrollerProperties_new".}
proc fcQScrollerProperties_new2(sp: pointer): ptr cQScrollerProperties {.importc: "QScrollerProperties_new2".}
proc fcQScrollerProperties_operatorAssign(self: pointer, sp: pointer): void {.importc: "QScrollerProperties_operatorAssign".}
proc fcQScrollerProperties_operatorEqual(self: pointer, sp: pointer): bool {.importc: "QScrollerProperties_operatorEqual".}
proc fcQScrollerProperties_operatorNotEqual(self: pointer, sp: pointer): bool {.importc: "QScrollerProperties_operatorNotEqual".}
proc fcQScrollerProperties_setDefaultScrollerProperties(sp: pointer): void {.importc: "QScrollerProperties_setDefaultScrollerProperties".}
proc fcQScrollerProperties_unsetDefaultScrollerProperties(): void {.importc: "QScrollerProperties_unsetDefaultScrollerProperties".}
proc fcQScrollerProperties_scrollMetric(self: pointer, metric: cint): pointer {.importc: "QScrollerProperties_scrollMetric".}
proc fcQScrollerProperties_setScrollMetric(self: pointer, metric: cint, value: pointer): void {.importc: "QScrollerProperties_setScrollMetric".}
proc fcQScrollerProperties_delete(self: pointer) {.importc: "QScrollerProperties_delete".}


func init*(T: type QScrollerProperties, h: ptr cQScrollerProperties): QScrollerProperties =
  T(h: h)
proc create*(T: type QScrollerProperties, ): QScrollerProperties =

  QScrollerProperties.init(fcQScrollerProperties_new())
proc create*(T: type QScrollerProperties, sp: QScrollerProperties): QScrollerProperties =

  QScrollerProperties.init(fcQScrollerProperties_new2(sp.h))
proc operatorAssign*(self: QScrollerProperties, sp: QScrollerProperties): void =

  fcQScrollerProperties_operatorAssign(self.h, sp.h)

proc operatorEqual*(self: QScrollerProperties, sp: QScrollerProperties): bool =

  fcQScrollerProperties_operatorEqual(self.h, sp.h)

proc operatorNotEqual*(self: QScrollerProperties, sp: QScrollerProperties): bool =

  fcQScrollerProperties_operatorNotEqual(self.h, sp.h)

proc setDefaultScrollerProperties*(_: type QScrollerProperties, sp: QScrollerProperties): void =

  fcQScrollerProperties_setDefaultScrollerProperties(sp.h)

proc unsetDefaultScrollerProperties*(_: type QScrollerProperties, ): void =

  fcQScrollerProperties_unsetDefaultScrollerProperties()

proc scrollMetric*(self: QScrollerProperties, metric: QScrollerPropertiesScrollMetric): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQScrollerProperties_scrollMetric(self.h, cint(metric)))

proc setScrollMetric*(self: QScrollerProperties, metric: QScrollerPropertiesScrollMetric, value: gen_qvariant.QVariant): void =

  fcQScrollerProperties_setScrollMetric(self.h, cint(metric), value.h)

proc delete*(self: QScrollerProperties) =
  fcQScrollerProperties_delete(self.h)
