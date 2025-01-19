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
{.compile("gen_qrasterwindow.cpp", cflags).}


import gen_qrasterwindow_types
export gen_qrasterwindow_types

import
  gen_qaccessible,
  gen_qcoreevent,
  gen_qevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintdevicewindow,
  gen_qpainter,
  gen_qpoint,
  gen_qsize,
  gen_qsurface,
  gen_qsurfaceformat,
  gen_qwindow
export
  gen_qaccessible,
  gen_qcoreevent,
  gen_qevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintdevicewindow,
  gen_qpainter,
  gen_qpoint,
  gen_qsize,
  gen_qsurface,
  gen_qsurfaceformat,
  gen_qwindow

type cQRasterWindow*{.exportc: "QRasterWindow", incompleteStruct.} = object

proc fcQRasterWindow_new(): ptr cQRasterWindow {.importc: "QRasterWindow_new".}
proc fcQRasterWindow_new2(parent: pointer): ptr cQRasterWindow {.importc: "QRasterWindow_new2".}
proc fcQRasterWindow_metaObject(self: pointer, ): pointer {.importc: "QRasterWindow_metaObject".}
proc fcQRasterWindow_metacast(self: pointer, param1: cstring): pointer {.importc: "QRasterWindow_metacast".}
proc fcQRasterWindow_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRasterWindow_metacall".}
proc fcQRasterWindow_tr(s: cstring): struct_miqt_string {.importc: "QRasterWindow_tr".}
proc fcQRasterWindow_trUtf8(s: cstring): struct_miqt_string {.importc: "QRasterWindow_trUtf8".}
proc fcQRasterWindow_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QRasterWindow_tr2".}
proc fcQRasterWindow_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRasterWindow_tr3".}
proc fcQRasterWindow_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QRasterWindow_trUtf82".}
proc fcQRasterWindow_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRasterWindow_trUtf83".}
proc fQRasterWindow_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QRasterWindow_virtualbase_metacall".}
proc fcQRasterWindow_override_virtual_metacall(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_metacall".}
proc fQRasterWindow_virtualbase_metric(self: pointer, metric: cint): cint{.importc: "QRasterWindow_virtualbase_metric".}
proc fcQRasterWindow_override_virtual_metric(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_metric".}
proc fQRasterWindow_virtualbase_redirected(self: pointer, param1: pointer): pointer{.importc: "QRasterWindow_virtualbase_redirected".}
proc fcQRasterWindow_override_virtual_redirected(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_redirected".}
proc fQRasterWindow_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QRasterWindow_virtualbase_paintEvent".}
proc fcQRasterWindow_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_paintEvent".}
proc fQRasterWindow_virtualbase_exposeEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_exposeEvent".}
proc fcQRasterWindow_override_virtual_exposeEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_exposeEvent".}
proc fQRasterWindow_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QRasterWindow_virtualbase_event".}
proc fcQRasterWindow_override_virtual_event(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_event".}
proc fQRasterWindow_virtualbase_surfaceType(self: pointer, ): cint{.importc: "QRasterWindow_virtualbase_surfaceType".}
proc fcQRasterWindow_override_virtual_surfaceType(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_surfaceType".}
proc fQRasterWindow_virtualbase_format(self: pointer, ): pointer{.importc: "QRasterWindow_virtualbase_format".}
proc fcQRasterWindow_override_virtual_format(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_format".}
proc fQRasterWindow_virtualbase_size(self: pointer, ): pointer{.importc: "QRasterWindow_virtualbase_size".}
proc fcQRasterWindow_override_virtual_size(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_size".}
proc fQRasterWindow_virtualbase_accessibleRoot(self: pointer, ): pointer{.importc: "QRasterWindow_virtualbase_accessibleRoot".}
proc fcQRasterWindow_override_virtual_accessibleRoot(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_accessibleRoot".}
proc fQRasterWindow_virtualbase_focusObject(self: pointer, ): pointer{.importc: "QRasterWindow_virtualbase_focusObject".}
proc fcQRasterWindow_override_virtual_focusObject(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_focusObject".}
proc fQRasterWindow_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_resizeEvent".}
proc fcQRasterWindow_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_resizeEvent".}
proc fQRasterWindow_virtualbase_moveEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_moveEvent".}
proc fcQRasterWindow_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_moveEvent".}
proc fQRasterWindow_virtualbase_focusInEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_focusInEvent".}
proc fcQRasterWindow_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_focusInEvent".}
proc fQRasterWindow_virtualbase_focusOutEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_focusOutEvent".}
proc fcQRasterWindow_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_focusOutEvent".}
proc fQRasterWindow_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_showEvent".}
proc fcQRasterWindow_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_showEvent".}
proc fQRasterWindow_virtualbase_hideEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_hideEvent".}
proc fcQRasterWindow_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_hideEvent".}
proc fQRasterWindow_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_keyPressEvent".}
proc fcQRasterWindow_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_keyPressEvent".}
proc fQRasterWindow_virtualbase_keyReleaseEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_keyReleaseEvent".}
proc fcQRasterWindow_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_keyReleaseEvent".}
proc fQRasterWindow_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_mousePressEvent".}
proc fcQRasterWindow_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_mousePressEvent".}
proc fQRasterWindow_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_mouseReleaseEvent".}
proc fcQRasterWindow_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_mouseReleaseEvent".}
proc fQRasterWindow_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_mouseDoubleClickEvent".}
proc fcQRasterWindow_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_mouseDoubleClickEvent".}
proc fQRasterWindow_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_mouseMoveEvent".}
proc fcQRasterWindow_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_mouseMoveEvent".}
proc fQRasterWindow_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_wheelEvent".}
proc fcQRasterWindow_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_wheelEvent".}
proc fQRasterWindow_virtualbase_touchEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_touchEvent".}
proc fcQRasterWindow_override_virtual_touchEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_touchEvent".}
proc fQRasterWindow_virtualbase_tabletEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_tabletEvent".}
proc fcQRasterWindow_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_tabletEvent".}
proc fQRasterWindow_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QRasterWindow_virtualbase_nativeEvent".}
proc fcQRasterWindow_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_nativeEvent".}
proc fQRasterWindow_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QRasterWindow_virtualbase_eventFilter".}
proc fcQRasterWindow_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_eventFilter".}
proc fQRasterWindow_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QRasterWindow_virtualbase_timerEvent".}
proc fcQRasterWindow_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_timerEvent".}
proc fQRasterWindow_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QRasterWindow_virtualbase_childEvent".}
proc fcQRasterWindow_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_childEvent".}
proc fQRasterWindow_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QRasterWindow_virtualbase_customEvent".}
proc fcQRasterWindow_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_customEvent".}
proc fQRasterWindow_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QRasterWindow_virtualbase_connectNotify".}
proc fcQRasterWindow_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_connectNotify".}
proc fQRasterWindow_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QRasterWindow_virtualbase_disconnectNotify".}
proc fcQRasterWindow_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_disconnectNotify".}
proc fQRasterWindow_virtualbase_devType(self: pointer, ): cint{.importc: "QRasterWindow_virtualbase_devType".}
proc fcQRasterWindow_override_virtual_devType(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_devType".}
proc fQRasterWindow_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QRasterWindow_virtualbase_initPainter".}
proc fcQRasterWindow_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_initPainter".}
proc fQRasterWindow_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QRasterWindow_virtualbase_sharedPainter".}
proc fcQRasterWindow_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_sharedPainter".}
proc fcQRasterWindow_staticMetaObject(): pointer {.importc: "QRasterWindow_staticMetaObject".}
proc fcQRasterWindow_delete(self: pointer) {.importc: "QRasterWindow_delete".}


func init*(T: type QRasterWindow, h: ptr cQRasterWindow): QRasterWindow =
  T(h: h)
proc create*(T: type QRasterWindow, ): QRasterWindow =

  QRasterWindow.init(fcQRasterWindow_new())
proc create*(T: type QRasterWindow, parent: gen_qwindow.QWindow): QRasterWindow =

  QRasterWindow.init(fcQRasterWindow_new2(parent.h))
proc metaObject*(self: QRasterWindow, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQRasterWindow_metaObject(self.h))

proc metacast*(self: QRasterWindow, param1: cstring): pointer =

  fcQRasterWindow_metacast(self.h, param1)

proc metacall*(self: QRasterWindow, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQRasterWindow_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QRasterWindow, s: cstring): string =

  let v_ms = fcQRasterWindow_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QRasterWindow, s: cstring): string =

  let v_ms = fcQRasterWindow_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr2*(_: type QRasterWindow, s: cstring, c: cstring): string =

  let v_ms = fcQRasterWindow_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QRasterWindow, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQRasterWindow_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QRasterWindow, s: cstring, c: cstring): string =

  let v_ms = fcQRasterWindow_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QRasterWindow, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQRasterWindow_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QRasterWindow, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQRasterWindow_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QRasterWindowmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QRasterWindow, slot: proc(super: QRasterWindowmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_metacall(self: ptr cQRasterWindow, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QRasterWindow_metacall ".} =
  type Cb = proc(super: QRasterWindowmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QRasterWindow(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QRasterWindow, metric: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQRasterWindow_virtualbase_metric(self.h, cint(metric))

type QRasterWindowmetricBase* = proc(metric: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QRasterWindow, slot: proc(super: QRasterWindowmetricBase, metric: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowmetricBase, metric: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_metric(self: ptr cQRasterWindow, slot: int, metric: cint): cint {.exportc: "miqt_exec_callback_QRasterWindow_metric ".} =
  type Cb = proc(super: QRasterWindowmetricBase, metric: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(metric: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QRasterWindow(h: self), metric)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(metric)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_redirected(self: QRasterWindow, param1: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQRasterWindow_virtualbase_redirected(self.h, param1.h))

type QRasterWindowredirectedBase* = proc(param1: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QRasterWindow, slot: proc(super: QRasterWindowredirectedBase, param1: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowredirectedBase, param1: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_redirected(self: ptr cQRasterWindow, slot: int, param1: pointer): pointer {.exportc: "miqt_exec_callback_QRasterWindow_redirected ".} =
  type Cb = proc(super: QRasterWindowredirectedBase, param1: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QRasterWindow(h: self), param1)
  let slotval1 = gen_qpoint.QPoint(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_paintEvent(self: QRasterWindow, event: gen_qevent.QPaintEvent): void =


  fQRasterWindow_virtualbase_paintEvent(self.h, event.h)

type QRasterWindowpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QRasterWindow, slot: proc(super: QRasterWindowpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_paintEvent(self: ptr cQRasterWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_paintEvent ".} =
  type Cb = proc(super: QRasterWindowpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QRasterWindow(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_exposeEvent(self: QRasterWindow, param1: gen_qevent.QExposeEvent): void =


  fQRasterWindow_virtualbase_exposeEvent(self.h, param1.h)

type QRasterWindowexposeEventBase* = proc(param1: gen_qevent.QExposeEvent): void
proc onexposeEvent*(self: QRasterWindow, slot: proc(super: QRasterWindowexposeEventBase, param1: gen_qevent.QExposeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowexposeEventBase, param1: gen_qevent.QExposeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_exposeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_exposeEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_exposeEvent ".} =
  type Cb = proc(super: QRasterWindowexposeEventBase, param1: gen_qevent.QExposeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QExposeEvent): auto =
    callVirtualBase_exposeEvent(QRasterWindow(h: self), param1)
  let slotval1 = gen_qevent.QExposeEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QRasterWindow, event: gen_qcoreevent.QEvent): bool =


  fQRasterWindow_virtualbase_event(self.h, event.h)

type QRasterWindoweventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QRasterWindow, slot: proc(super: QRasterWindoweventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindoweventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_event(self: ptr cQRasterWindow, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QRasterWindow_event ".} =
  type Cb = proc(super: QRasterWindoweventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QRasterWindow(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_surfaceType(self: QRasterWindow, ): gen_qsurface.QSurfaceSurfaceType =


  gen_qsurface.QSurfaceSurfaceType(fQRasterWindow_virtualbase_surfaceType(self.h))

type QRasterWindowsurfaceTypeBase* = proc(): gen_qsurface.QSurfaceSurfaceType
proc onsurfaceType*(self: QRasterWindow, slot: proc(super: QRasterWindowsurfaceTypeBase): gen_qsurface.QSurfaceSurfaceType) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowsurfaceTypeBase): gen_qsurface.QSurfaceSurfaceType
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_surfaceType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_surfaceType(self: ptr cQRasterWindow, slot: int): cint {.exportc: "miqt_exec_callback_QRasterWindow_surfaceType ".} =
  type Cb = proc(super: QRasterWindowsurfaceTypeBase): gen_qsurface.QSurfaceSurfaceType
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_surfaceType(QRasterWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_format(self: QRasterWindow, ): gen_qsurfaceformat.QSurfaceFormat =


  gen_qsurfaceformat.QSurfaceFormat(h: fQRasterWindow_virtualbase_format(self.h))

type QRasterWindowformatBase* = proc(): gen_qsurfaceformat.QSurfaceFormat
proc onformat*(self: QRasterWindow, slot: proc(super: QRasterWindowformatBase): gen_qsurfaceformat.QSurfaceFormat) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowformatBase): gen_qsurfaceformat.QSurfaceFormat
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_format(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_format(self: ptr cQRasterWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QRasterWindow_format ".} =
  type Cb = proc(super: QRasterWindowformatBase): gen_qsurfaceformat.QSurfaceFormat
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_format(QRasterWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_size(self: QRasterWindow, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQRasterWindow_virtualbase_size(self.h))

type QRasterWindowsizeBase* = proc(): gen_qsize.QSize
proc onsize*(self: QRasterWindow, slot: proc(super: QRasterWindowsizeBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowsizeBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_size(self: ptr cQRasterWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QRasterWindow_size ".} =
  type Cb = proc(super: QRasterWindowsizeBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_size(QRasterWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_accessibleRoot(self: QRasterWindow, ): gen_qaccessible.QAccessibleInterface =


  gen_qaccessible.QAccessibleInterface(h: fQRasterWindow_virtualbase_accessibleRoot(self.h))

type QRasterWindowaccessibleRootBase* = proc(): gen_qaccessible.QAccessibleInterface
proc onaccessibleRoot*(self: QRasterWindow, slot: proc(super: QRasterWindowaccessibleRootBase): gen_qaccessible.QAccessibleInterface) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowaccessibleRootBase): gen_qaccessible.QAccessibleInterface
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_accessibleRoot(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_accessibleRoot(self: ptr cQRasterWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QRasterWindow_accessibleRoot ".} =
  type Cb = proc(super: QRasterWindowaccessibleRootBase): gen_qaccessible.QAccessibleInterface
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_accessibleRoot(QRasterWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_focusObject(self: QRasterWindow, ): gen_qobject.QObject =


  gen_qobject.QObject(h: fQRasterWindow_virtualbase_focusObject(self.h))

type QRasterWindowfocusObjectBase* = proc(): gen_qobject.QObject
proc onfocusObject*(self: QRasterWindow, slot: proc(super: QRasterWindowfocusObjectBase): gen_qobject.QObject) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowfocusObjectBase): gen_qobject.QObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_focusObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_focusObject(self: ptr cQRasterWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QRasterWindow_focusObject ".} =
  type Cb = proc(super: QRasterWindowfocusObjectBase): gen_qobject.QObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_focusObject(QRasterWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_resizeEvent(self: QRasterWindow, param1: gen_qevent.QResizeEvent): void =


  fQRasterWindow_virtualbase_resizeEvent(self.h, param1.h)

type QRasterWindowresizeEventBase* = proc(param1: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QRasterWindow, slot: proc(super: QRasterWindowresizeEventBase, param1: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_resizeEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_resizeEvent ".} =
  type Cb = proc(super: QRasterWindowresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QRasterWindow(h: self), param1)
  let slotval1 = gen_qevent.QResizeEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QRasterWindow, param1: gen_qevent.QMoveEvent): void =


  fQRasterWindow_virtualbase_moveEvent(self.h, param1.h)

type QRasterWindowmoveEventBase* = proc(param1: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QRasterWindow, slot: proc(super: QRasterWindowmoveEventBase, param1: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowmoveEventBase, param1: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_moveEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_moveEvent ".} =
  type Cb = proc(super: QRasterWindowmoveEventBase, param1: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QRasterWindow(h: self), param1)
  let slotval1 = gen_qevent.QMoveEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QRasterWindow, param1: gen_qevent.QFocusEvent): void =


  fQRasterWindow_virtualbase_focusInEvent(self.h, param1.h)

type QRasterWindowfocusInEventBase* = proc(param1: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QRasterWindow, slot: proc(super: QRasterWindowfocusInEventBase, param1: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowfocusInEventBase, param1: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_focusInEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_focusInEvent ".} =
  type Cb = proc(super: QRasterWindowfocusInEventBase, param1: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QRasterWindow(h: self), param1)
  let slotval1 = gen_qevent.QFocusEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QRasterWindow, param1: gen_qevent.QFocusEvent): void =


  fQRasterWindow_virtualbase_focusOutEvent(self.h, param1.h)

type QRasterWindowfocusOutEventBase* = proc(param1: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QRasterWindow, slot: proc(super: QRasterWindowfocusOutEventBase, param1: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowfocusOutEventBase, param1: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_focusOutEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_focusOutEvent ".} =
  type Cb = proc(super: QRasterWindowfocusOutEventBase, param1: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QRasterWindow(h: self), param1)
  let slotval1 = gen_qevent.QFocusEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QRasterWindow, param1: gen_qevent.QShowEvent): void =


  fQRasterWindow_virtualbase_showEvent(self.h, param1.h)

type QRasterWindowshowEventBase* = proc(param1: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QRasterWindow, slot: proc(super: QRasterWindowshowEventBase, param1: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowshowEventBase, param1: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_showEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_showEvent ".} =
  type Cb = proc(super: QRasterWindowshowEventBase, param1: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QRasterWindow(h: self), param1)
  let slotval1 = gen_qevent.QShowEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QRasterWindow, param1: gen_qevent.QHideEvent): void =


  fQRasterWindow_virtualbase_hideEvent(self.h, param1.h)

type QRasterWindowhideEventBase* = proc(param1: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QRasterWindow, slot: proc(super: QRasterWindowhideEventBase, param1: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowhideEventBase, param1: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_hideEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_hideEvent ".} =
  type Cb = proc(super: QRasterWindowhideEventBase, param1: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QRasterWindow(h: self), param1)
  let slotval1 = gen_qevent.QHideEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QRasterWindow, param1: gen_qevent.QKeyEvent): void =


  fQRasterWindow_virtualbase_keyPressEvent(self.h, param1.h)

type QRasterWindowkeyPressEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QRasterWindow, slot: proc(super: QRasterWindowkeyPressEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_keyPressEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_keyPressEvent ".} =
  type Cb = proc(super: QRasterWindowkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QRasterWindow(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QRasterWindow, param1: gen_qevent.QKeyEvent): void =


  fQRasterWindow_virtualbase_keyReleaseEvent(self.h, param1.h)

type QRasterWindowkeyReleaseEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QRasterWindow, slot: proc(super: QRasterWindowkeyReleaseEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowkeyReleaseEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_keyReleaseEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_keyReleaseEvent ".} =
  type Cb = proc(super: QRasterWindowkeyReleaseEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QRasterWindow(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QRasterWindow, param1: gen_qevent.QMouseEvent): void =


  fQRasterWindow_virtualbase_mousePressEvent(self.h, param1.h)

type QRasterWindowmousePressEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QRasterWindow, slot: proc(super: QRasterWindowmousePressEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowmousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_mousePressEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_mousePressEvent ".} =
  type Cb = proc(super: QRasterWindowmousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QRasterWindow(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QRasterWindow, param1: gen_qevent.QMouseEvent): void =


  fQRasterWindow_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QRasterWindowmouseReleaseEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QRasterWindow, slot: proc(super: QRasterWindowmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_mouseReleaseEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_mouseReleaseEvent ".} =
  type Cb = proc(super: QRasterWindowmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QRasterWindow(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QRasterWindow, param1: gen_qevent.QMouseEvent): void =


  fQRasterWindow_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

type QRasterWindowmouseDoubleClickEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QRasterWindow, slot: proc(super: QRasterWindowmouseDoubleClickEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowmouseDoubleClickEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_mouseDoubleClickEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QRasterWindowmouseDoubleClickEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QRasterWindow(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QRasterWindow, param1: gen_qevent.QMouseEvent): void =


  fQRasterWindow_virtualbase_mouseMoveEvent(self.h, param1.h)

type QRasterWindowmouseMoveEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QRasterWindow, slot: proc(super: QRasterWindowmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_mouseMoveEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_mouseMoveEvent ".} =
  type Cb = proc(super: QRasterWindowmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QRasterWindow(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QRasterWindow, param1: gen_qevent.QWheelEvent): void =


  fQRasterWindow_virtualbase_wheelEvent(self.h, param1.h)

type QRasterWindowwheelEventBase* = proc(param1: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QRasterWindow, slot: proc(super: QRasterWindowwheelEventBase, param1: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowwheelEventBase, param1: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_wheelEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_wheelEvent ".} =
  type Cb = proc(super: QRasterWindowwheelEventBase, param1: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QRasterWindow(h: self), param1)
  let slotval1 = gen_qevent.QWheelEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_touchEvent(self: QRasterWindow, param1: gen_qevent.QTouchEvent): void =


  fQRasterWindow_virtualbase_touchEvent(self.h, param1.h)

type QRasterWindowtouchEventBase* = proc(param1: gen_qevent.QTouchEvent): void
proc ontouchEvent*(self: QRasterWindow, slot: proc(super: QRasterWindowtouchEventBase, param1: gen_qevent.QTouchEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowtouchEventBase, param1: gen_qevent.QTouchEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_touchEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_touchEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_touchEvent ".} =
  type Cb = proc(super: QRasterWindowtouchEventBase, param1: gen_qevent.QTouchEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QTouchEvent): auto =
    callVirtualBase_touchEvent(QRasterWindow(h: self), param1)
  let slotval1 = gen_qevent.QTouchEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QRasterWindow, param1: gen_qevent.QTabletEvent): void =


  fQRasterWindow_virtualbase_tabletEvent(self.h, param1.h)

type QRasterWindowtabletEventBase* = proc(param1: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QRasterWindow, slot: proc(super: QRasterWindowtabletEventBase, param1: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowtabletEventBase, param1: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_tabletEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_tabletEvent ".} =
  type Cb = proc(super: QRasterWindowtabletEventBase, param1: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QRasterWindow(h: self), param1)
  let slotval1 = gen_qevent.QTabletEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QRasterWindow, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQRasterWindow_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QRasterWindownativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QRasterWindow, slot: proc(super: QRasterWindownativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindownativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_nativeEvent(self: ptr cQRasterWindow, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QRasterWindow_nativeEvent ".} =
  type Cb = proc(super: QRasterWindownativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QRasterWindow(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QRasterWindow, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQRasterWindow_virtualbase_eventFilter(self.h, watched.h, event.h)

type QRasterWindoweventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QRasterWindow, slot: proc(super: QRasterWindoweventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindoweventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_eventFilter(self: ptr cQRasterWindow, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QRasterWindow_eventFilter ".} =
  type Cb = proc(super: QRasterWindoweventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QRasterWindow(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QRasterWindow, event: gen_qcoreevent.QTimerEvent): void =


  fQRasterWindow_virtualbase_timerEvent(self.h, event.h)

type QRasterWindowtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QRasterWindow, slot: proc(super: QRasterWindowtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_timerEvent(self: ptr cQRasterWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_timerEvent ".} =
  type Cb = proc(super: QRasterWindowtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QRasterWindow(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QRasterWindow, event: gen_qcoreevent.QChildEvent): void =


  fQRasterWindow_virtualbase_childEvent(self.h, event.h)

type QRasterWindowchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QRasterWindow, slot: proc(super: QRasterWindowchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_childEvent(self: ptr cQRasterWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_childEvent ".} =
  type Cb = proc(super: QRasterWindowchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QRasterWindow(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QRasterWindow, event: gen_qcoreevent.QEvent): void =


  fQRasterWindow_virtualbase_customEvent(self.h, event.h)

type QRasterWindowcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QRasterWindow, slot: proc(super: QRasterWindowcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_customEvent(self: ptr cQRasterWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_customEvent ".} =
  type Cb = proc(super: QRasterWindowcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QRasterWindow(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QRasterWindow, signal: gen_qmetaobject.QMetaMethod): void =


  fQRasterWindow_virtualbase_connectNotify(self.h, signal.h)

type QRasterWindowconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QRasterWindow, slot: proc(super: QRasterWindowconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_connectNotify(self: ptr cQRasterWindow, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_connectNotify ".} =
  type Cb = proc(super: QRasterWindowconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QRasterWindow(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QRasterWindow, signal: gen_qmetaobject.QMetaMethod): void =


  fQRasterWindow_virtualbase_disconnectNotify(self.h, signal.h)

type QRasterWindowdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QRasterWindow, slot: proc(super: QRasterWindowdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_disconnectNotify(self: ptr cQRasterWindow, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_disconnectNotify ".} =
  type Cb = proc(super: QRasterWindowdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QRasterWindow(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QRasterWindow, ): cint =


  fQRasterWindow_virtualbase_devType(self.h)

type QRasterWindowdevTypeBase* = proc(): cint
proc ondevType*(self: QRasterWindow, slot: proc(super: QRasterWindowdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_devType(self: ptr cQRasterWindow, slot: int): cint {.exportc: "miqt_exec_callback_QRasterWindow_devType ".} =
  type Cb = proc(super: QRasterWindowdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QRasterWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_initPainter(self: QRasterWindow, painter: gen_qpainter.QPainter): void =


  fQRasterWindow_virtualbase_initPainter(self.h, painter.h)

type QRasterWindowinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QRasterWindow, slot: proc(super: QRasterWindowinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_initPainter(self: ptr cQRasterWindow, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_initPainter ".} =
  type Cb = proc(super: QRasterWindowinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QRasterWindow(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sharedPainter(self: QRasterWindow, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQRasterWindow_virtualbase_sharedPainter(self.h))

type QRasterWindowsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QRasterWindow, slot: proc(super: QRasterWindowsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QRasterWindowsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_sharedPainter(self: ptr cQRasterWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QRasterWindow_sharedPainter ".} =
  type Cb = proc(super: QRasterWindowsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QRasterWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc staticMetaObject*(_: type QRasterWindow): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQRasterWindow_staticMetaObject())
proc delete*(self: QRasterWindow) =
  fcQRasterWindow_delete(self.h)
