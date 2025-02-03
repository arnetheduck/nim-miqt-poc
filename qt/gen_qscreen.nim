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
{.compile("gen_qscreen.cpp", cflags).}


import gen_qscreen_types
export gen_qscreen_types

import
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpixmap,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qtransform
export
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpixmap,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qtransform

type cQScreen*{.exportc: "QScreen", incompleteStruct.} = object

proc fcQScreen_metaObject(self: pointer, ): pointer {.importc: "QScreen_metaObject".}
proc fcQScreen_metacast(self: pointer, param1: cstring): pointer {.importc: "QScreen_metacast".}
proc fcQScreen_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QScreen_metacall".}
proc fcQScreen_tr(s: cstring): struct_miqt_string {.importc: "QScreen_tr".}
proc fcQScreen_trUtf8(s: cstring): struct_miqt_string {.importc: "QScreen_trUtf8".}
proc fcQScreen_name(self: pointer, ): struct_miqt_string {.importc: "QScreen_name".}
proc fcQScreen_manufacturer(self: pointer, ): struct_miqt_string {.importc: "QScreen_manufacturer".}
proc fcQScreen_model(self: pointer, ): struct_miqt_string {.importc: "QScreen_model".}
proc fcQScreen_serialNumber(self: pointer, ): struct_miqt_string {.importc: "QScreen_serialNumber".}
proc fcQScreen_depth(self: pointer, ): cint {.importc: "QScreen_depth".}
proc fcQScreen_size(self: pointer, ): pointer {.importc: "QScreen_size".}
proc fcQScreen_geometry(self: pointer, ): pointer {.importc: "QScreen_geometry".}
proc fcQScreen_physicalSize(self: pointer, ): pointer {.importc: "QScreen_physicalSize".}
proc fcQScreen_physicalDotsPerInchX(self: pointer, ): float64 {.importc: "QScreen_physicalDotsPerInchX".}
proc fcQScreen_physicalDotsPerInchY(self: pointer, ): float64 {.importc: "QScreen_physicalDotsPerInchY".}
proc fcQScreen_physicalDotsPerInch(self: pointer, ): float64 {.importc: "QScreen_physicalDotsPerInch".}
proc fcQScreen_logicalDotsPerInchX(self: pointer, ): float64 {.importc: "QScreen_logicalDotsPerInchX".}
proc fcQScreen_logicalDotsPerInchY(self: pointer, ): float64 {.importc: "QScreen_logicalDotsPerInchY".}
proc fcQScreen_logicalDotsPerInch(self: pointer, ): float64 {.importc: "QScreen_logicalDotsPerInch".}
proc fcQScreen_devicePixelRatio(self: pointer, ): float64 {.importc: "QScreen_devicePixelRatio".}
proc fcQScreen_availableSize(self: pointer, ): pointer {.importc: "QScreen_availableSize".}
proc fcQScreen_availableGeometry(self: pointer, ): pointer {.importc: "QScreen_availableGeometry".}
proc fcQScreen_virtualSiblings(self: pointer, ): struct_miqt_array {.importc: "QScreen_virtualSiblings".}
proc fcQScreen_virtualSiblingAt(self: pointer, point: pointer): pointer {.importc: "QScreen_virtualSiblingAt".}
proc fcQScreen_virtualSize(self: pointer, ): pointer {.importc: "QScreen_virtualSize".}
proc fcQScreen_virtualGeometry(self: pointer, ): pointer {.importc: "QScreen_virtualGeometry".}
proc fcQScreen_availableVirtualSize(self: pointer, ): pointer {.importc: "QScreen_availableVirtualSize".}
proc fcQScreen_availableVirtualGeometry(self: pointer, ): pointer {.importc: "QScreen_availableVirtualGeometry".}
proc fcQScreen_primaryOrientation(self: pointer, ): cint {.importc: "QScreen_primaryOrientation".}
proc fcQScreen_orientation(self: pointer, ): cint {.importc: "QScreen_orientation".}
proc fcQScreen_nativeOrientation(self: pointer, ): cint {.importc: "QScreen_nativeOrientation".}
proc fcQScreen_orientationUpdateMask(self: pointer, ): cint {.importc: "QScreen_orientationUpdateMask".}
proc fcQScreen_setOrientationUpdateMask(self: pointer, mask: cint): void {.importc: "QScreen_setOrientationUpdateMask".}
proc fcQScreen_angleBetween(self: pointer, a: cint, b: cint): cint {.importc: "QScreen_angleBetween".}
proc fcQScreen_transformBetween(self: pointer, a: cint, b: cint, target: pointer): pointer {.importc: "QScreen_transformBetween".}
proc fcQScreen_mapBetween(self: pointer, a: cint, b: cint, rect: pointer): pointer {.importc: "QScreen_mapBetween".}
proc fcQScreen_isPortrait(self: pointer, orientation: cint): bool {.importc: "QScreen_isPortrait".}
proc fcQScreen_isLandscape(self: pointer, orientation: cint): bool {.importc: "QScreen_isLandscape".}
proc fcQScreen_grabWindow(self: pointer, window: uint): pointer {.importc: "QScreen_grabWindow".}
proc fcQScreen_refreshRate(self: pointer, ): float64 {.importc: "QScreen_refreshRate".}
proc fcQScreen_geometryChanged(self: pointer, geometry: pointer): void {.importc: "QScreen_geometryChanged".}
proc fQScreen_connect_geometryChanged(self: pointer, slot: int) {.importc: "QScreen_connect_geometryChanged".}
proc fcQScreen_availableGeometryChanged(self: pointer, geometry: pointer): void {.importc: "QScreen_availableGeometryChanged".}
proc fQScreen_connect_availableGeometryChanged(self: pointer, slot: int) {.importc: "QScreen_connect_availableGeometryChanged".}
proc fcQScreen_physicalSizeChanged(self: pointer, size: pointer): void {.importc: "QScreen_physicalSizeChanged".}
proc fQScreen_connect_physicalSizeChanged(self: pointer, slot: int) {.importc: "QScreen_connect_physicalSizeChanged".}
proc fcQScreen_physicalDotsPerInchChanged(self: pointer, dpi: float64): void {.importc: "QScreen_physicalDotsPerInchChanged".}
proc fQScreen_connect_physicalDotsPerInchChanged(self: pointer, slot: int) {.importc: "QScreen_connect_physicalDotsPerInchChanged".}
proc fcQScreen_logicalDotsPerInchChanged(self: pointer, dpi: float64): void {.importc: "QScreen_logicalDotsPerInchChanged".}
proc fQScreen_connect_logicalDotsPerInchChanged(self: pointer, slot: int) {.importc: "QScreen_connect_logicalDotsPerInchChanged".}
proc fcQScreen_virtualGeometryChanged(self: pointer, rect: pointer): void {.importc: "QScreen_virtualGeometryChanged".}
proc fQScreen_connect_virtualGeometryChanged(self: pointer, slot: int) {.importc: "QScreen_connect_virtualGeometryChanged".}
proc fcQScreen_primaryOrientationChanged(self: pointer, orientation: cint): void {.importc: "QScreen_primaryOrientationChanged".}
proc fQScreen_connect_primaryOrientationChanged(self: pointer, slot: int) {.importc: "QScreen_connect_primaryOrientationChanged".}
proc fcQScreen_orientationChanged(self: pointer, orientation: cint): void {.importc: "QScreen_orientationChanged".}
proc fQScreen_connect_orientationChanged(self: pointer, slot: int) {.importc: "QScreen_connect_orientationChanged".}
proc fcQScreen_refreshRateChanged(self: pointer, refreshRate: float64): void {.importc: "QScreen_refreshRateChanged".}
proc fQScreen_connect_refreshRateChanged(self: pointer, slot: int) {.importc: "QScreen_connect_refreshRateChanged".}
proc fcQScreen_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QScreen_tr2".}
proc fcQScreen_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QScreen_tr3".}
proc fcQScreen_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QScreen_trUtf82".}
proc fcQScreen_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QScreen_trUtf83".}
proc fcQScreen_grabWindow2(self: pointer, window: uint, x: cint): pointer {.importc: "QScreen_grabWindow2".}
proc fcQScreen_grabWindow3(self: pointer, window: uint, x: cint, y: cint): pointer {.importc: "QScreen_grabWindow3".}
proc fcQScreen_grabWindow4(self: pointer, window: uint, x: cint, y: cint, w: cint): pointer {.importc: "QScreen_grabWindow4".}
proc fcQScreen_grabWindow5(self: pointer, window: uint, x: cint, y: cint, w: cint, h: cint): pointer {.importc: "QScreen_grabWindow5".}
proc fcQScreen_delete(self: pointer) {.importc: "QScreen_delete".}


func init*(T: type QScreen, h: ptr cQScreen): QScreen =
  T(h: h)
proc metaObject*(self: QScreen, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQScreen_metaObject(self.h))

proc metacast*(self: QScreen, param1: cstring): pointer =

  fcQScreen_metacast(self.h, param1)

proc metacall*(self: QScreen, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQScreen_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QScreen, s: cstring): string =

  let v_ms = fcQScreen_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QScreen, s: cstring): string =

  let v_ms = fcQScreen_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc name*(self: QScreen, ): string =

  let v_ms = fcQScreen_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc manufacturer*(self: QScreen, ): string =

  let v_ms = fcQScreen_manufacturer(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc model*(self: QScreen, ): string =

  let v_ms = fcQScreen_model(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc serialNumber*(self: QScreen, ): string =

  let v_ms = fcQScreen_serialNumber(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc depth*(self: QScreen, ): cint =

  fcQScreen_depth(self.h)

proc size*(self: QScreen, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQScreen_size(self.h))

proc geometry*(self: QScreen, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQScreen_geometry(self.h))

proc physicalSize*(self: QScreen, ): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQScreen_physicalSize(self.h))

proc physicalDotsPerInchX*(self: QScreen, ): float64 =

  fcQScreen_physicalDotsPerInchX(self.h)

proc physicalDotsPerInchY*(self: QScreen, ): float64 =

  fcQScreen_physicalDotsPerInchY(self.h)

proc physicalDotsPerInch*(self: QScreen, ): float64 =

  fcQScreen_physicalDotsPerInch(self.h)

proc logicalDotsPerInchX*(self: QScreen, ): float64 =

  fcQScreen_logicalDotsPerInchX(self.h)

proc logicalDotsPerInchY*(self: QScreen, ): float64 =

  fcQScreen_logicalDotsPerInchY(self.h)

proc logicalDotsPerInch*(self: QScreen, ): float64 =

  fcQScreen_logicalDotsPerInch(self.h)

proc devicePixelRatio*(self: QScreen, ): float64 =

  fcQScreen_devicePixelRatio(self.h)

proc availableSize*(self: QScreen, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQScreen_availableSize(self.h))

proc availableGeometry*(self: QScreen, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQScreen_availableGeometry(self.h))

proc virtualSiblings*(self: QScreen, ): seq[QScreen] =

  var v_ma = fcQScreen_virtualSiblings(self.h)
  var vx_ret = newSeq[QScreen](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QScreen(h: v_outCast[i])
  vx_ret

proc virtualSiblingAt*(self: QScreen, point: gen_qpoint.QPoint): QScreen =

  QScreen(h: fcQScreen_virtualSiblingAt(self.h, point.h))

proc virtualSize*(self: QScreen, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQScreen_virtualSize(self.h))

proc virtualGeometry*(self: QScreen, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQScreen_virtualGeometry(self.h))

proc availableVirtualSize*(self: QScreen, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQScreen_availableVirtualSize(self.h))

proc availableVirtualGeometry*(self: QScreen, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQScreen_availableVirtualGeometry(self.h))

proc primaryOrientation*(self: QScreen, ): gen_qnamespace.ScreenOrientation =

  gen_qnamespace.ScreenOrientation(fcQScreen_primaryOrientation(self.h))

proc orientation*(self: QScreen, ): gen_qnamespace.ScreenOrientation =

  gen_qnamespace.ScreenOrientation(fcQScreen_orientation(self.h))

proc nativeOrientation*(self: QScreen, ): gen_qnamespace.ScreenOrientation =

  gen_qnamespace.ScreenOrientation(fcQScreen_nativeOrientation(self.h))

proc orientationUpdateMask*(self: QScreen, ): gen_qnamespace.ScreenOrientation =

  gen_qnamespace.ScreenOrientation(fcQScreen_orientationUpdateMask(self.h))

proc setOrientationUpdateMask*(self: QScreen, mask: gen_qnamespace.ScreenOrientation): void =

  fcQScreen_setOrientationUpdateMask(self.h, cint(mask))

proc angleBetween*(self: QScreen, a: gen_qnamespace.ScreenOrientation, b: gen_qnamespace.ScreenOrientation): cint =

  fcQScreen_angleBetween(self.h, cint(a), cint(b))

proc transformBetween*(self: QScreen, a: gen_qnamespace.ScreenOrientation, b: gen_qnamespace.ScreenOrientation, target: gen_qrect.QRect): gen_qtransform.QTransform =

  gen_qtransform.QTransform(h: fcQScreen_transformBetween(self.h, cint(a), cint(b), target.h))

proc mapBetween*(self: QScreen, a: gen_qnamespace.ScreenOrientation, b: gen_qnamespace.ScreenOrientation, rect: gen_qrect.QRect): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQScreen_mapBetween(self.h, cint(a), cint(b), rect.h))

proc isPortrait*(self: QScreen, orientation: gen_qnamespace.ScreenOrientation): bool =

  fcQScreen_isPortrait(self.h, cint(orientation))

proc isLandscape*(self: QScreen, orientation: gen_qnamespace.ScreenOrientation): bool =

  fcQScreen_isLandscape(self.h, cint(orientation))

proc grabWindow*(self: QScreen, window: uint): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQScreen_grabWindow(self.h, window))

proc refreshRate*(self: QScreen, ): float64 =

  fcQScreen_refreshRate(self.h)

proc geometryChanged*(self: QScreen, geometry: gen_qrect.QRect): void =

  fcQScreen_geometryChanged(self.h, geometry.h)

proc miqt_exec_callback_QScreen_geometryChanged(slot: int, geometry: pointer) {.exportc.} =
  type Cb = proc(geometry: gen_qrect.QRect)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qrect.QRect(h: geometry)


  nimfunc[](slotval1)

proc ongeometryChanged*(self: QScreen, slot: proc(geometry: gen_qrect.QRect)) =
  type Cb = proc(geometry: gen_qrect.QRect)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQScreen_connect_geometryChanged(self.h, cast[int](addr tmp[]))
proc availableGeometryChanged*(self: QScreen, geometry: gen_qrect.QRect): void =

  fcQScreen_availableGeometryChanged(self.h, geometry.h)

proc miqt_exec_callback_QScreen_availableGeometryChanged(slot: int, geometry: pointer) {.exportc.} =
  type Cb = proc(geometry: gen_qrect.QRect)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qrect.QRect(h: geometry)


  nimfunc[](slotval1)

proc onavailableGeometryChanged*(self: QScreen, slot: proc(geometry: gen_qrect.QRect)) =
  type Cb = proc(geometry: gen_qrect.QRect)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQScreen_connect_availableGeometryChanged(self.h, cast[int](addr tmp[]))
proc physicalSizeChanged*(self: QScreen, size: gen_qsize.QSizeF): void =

  fcQScreen_physicalSizeChanged(self.h, size.h)

proc miqt_exec_callback_QScreen_physicalSizeChanged(slot: int, size: pointer) {.exportc.} =
  type Cb = proc(size: gen_qsize.QSizeF)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qsize.QSizeF(h: size)


  nimfunc[](slotval1)

proc onphysicalSizeChanged*(self: QScreen, slot: proc(size: gen_qsize.QSizeF)) =
  type Cb = proc(size: gen_qsize.QSizeF)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQScreen_connect_physicalSizeChanged(self.h, cast[int](addr tmp[]))
proc physicalDotsPerInchChanged*(self: QScreen, dpi: float64): void =

  fcQScreen_physicalDotsPerInchChanged(self.h, dpi)

proc miqt_exec_callback_QScreen_physicalDotsPerInchChanged(slot: int, dpi: float64) {.exportc.} =
  type Cb = proc(dpi: float64)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = dpi


  nimfunc[](slotval1)

proc onphysicalDotsPerInchChanged*(self: QScreen, slot: proc(dpi: float64)) =
  type Cb = proc(dpi: float64)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQScreen_connect_physicalDotsPerInchChanged(self.h, cast[int](addr tmp[]))
proc logicalDotsPerInchChanged*(self: QScreen, dpi: float64): void =

  fcQScreen_logicalDotsPerInchChanged(self.h, dpi)

proc miqt_exec_callback_QScreen_logicalDotsPerInchChanged(slot: int, dpi: float64) {.exportc.} =
  type Cb = proc(dpi: float64)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = dpi


  nimfunc[](slotval1)

proc onlogicalDotsPerInchChanged*(self: QScreen, slot: proc(dpi: float64)) =
  type Cb = proc(dpi: float64)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQScreen_connect_logicalDotsPerInchChanged(self.h, cast[int](addr tmp[]))
proc virtualGeometryChanged*(self: QScreen, rect: gen_qrect.QRect): void =

  fcQScreen_virtualGeometryChanged(self.h, rect.h)

proc miqt_exec_callback_QScreen_virtualGeometryChanged(slot: int, rect: pointer) {.exportc.} =
  type Cb = proc(rect: gen_qrect.QRect)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qrect.QRect(h: rect)


  nimfunc[](slotval1)

proc onvirtualGeometryChanged*(self: QScreen, slot: proc(rect: gen_qrect.QRect)) =
  type Cb = proc(rect: gen_qrect.QRect)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQScreen_connect_virtualGeometryChanged(self.h, cast[int](addr tmp[]))
proc primaryOrientationChanged*(self: QScreen, orientation: gen_qnamespace.ScreenOrientation): void =

  fcQScreen_primaryOrientationChanged(self.h, cint(orientation))

proc miqt_exec_callback_QScreen_primaryOrientationChanged(slot: int, orientation: cint) {.exportc.} =
  type Cb = proc(orientation: gen_qnamespace.ScreenOrientation)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnamespace.ScreenOrientation(orientation)


  nimfunc[](slotval1)

proc onprimaryOrientationChanged*(self: QScreen, slot: proc(orientation: gen_qnamespace.ScreenOrientation)) =
  type Cb = proc(orientation: gen_qnamespace.ScreenOrientation)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQScreen_connect_primaryOrientationChanged(self.h, cast[int](addr tmp[]))
proc orientationChanged*(self: QScreen, orientation: gen_qnamespace.ScreenOrientation): void =

  fcQScreen_orientationChanged(self.h, cint(orientation))

proc miqt_exec_callback_QScreen_orientationChanged(slot: int, orientation: cint) {.exportc.} =
  type Cb = proc(orientation: gen_qnamespace.ScreenOrientation)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnamespace.ScreenOrientation(orientation)


  nimfunc[](slotval1)

proc onorientationChanged*(self: QScreen, slot: proc(orientation: gen_qnamespace.ScreenOrientation)) =
  type Cb = proc(orientation: gen_qnamespace.ScreenOrientation)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQScreen_connect_orientationChanged(self.h, cast[int](addr tmp[]))
proc refreshRateChanged*(self: QScreen, refreshRate: float64): void =

  fcQScreen_refreshRateChanged(self.h, refreshRate)

proc miqt_exec_callback_QScreen_refreshRateChanged(slot: int, refreshRate: float64) {.exportc.} =
  type Cb = proc(refreshRate: float64)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = refreshRate


  nimfunc[](slotval1)

proc onrefreshRateChanged*(self: QScreen, slot: proc(refreshRate: float64)) =
  type Cb = proc(refreshRate: float64)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQScreen_connect_refreshRateChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QScreen, s: cstring, c: cstring): string =

  let v_ms = fcQScreen_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QScreen, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQScreen_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QScreen, s: cstring, c: cstring): string =

  let v_ms = fcQScreen_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QScreen, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQScreen_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc grabWindow2*(self: QScreen, window: uint, x: cint): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQScreen_grabWindow2(self.h, window, x))

proc grabWindow3*(self: QScreen, window: uint, x: cint, y: cint): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQScreen_grabWindow3(self.h, window, x, y))

proc grabWindow4*(self: QScreen, window: uint, x: cint, y: cint, w: cint): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQScreen_grabWindow4(self.h, window, x, y, w))

proc grabWindow5*(self: QScreen, window: uint, x: cint, y: cint, w: cint, h: cint): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQScreen_grabWindow5(self.h, window, x, y, w, h))

proc delete*(self: QScreen) =
  fcQScreen_delete(self.h)
