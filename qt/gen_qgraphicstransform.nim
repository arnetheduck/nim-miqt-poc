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
{.compile("gen_qgraphicstransform.cpp", cflags).}


import gen_qgraphicstransform_types
export gen_qgraphicstransform_types

import
  gen_qcoreevent,
  gen_qmatrix4x4,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvector3d
export
  gen_qcoreevent,
  gen_qmatrix4x4,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvector3d

type cQGraphicsTransform*{.exportc: "QGraphicsTransform", incompleteStruct.} = object
type cQGraphicsScale*{.exportc: "QGraphicsScale", incompleteStruct.} = object
type cQGraphicsRotation*{.exportc: "QGraphicsRotation", incompleteStruct.} = object

proc fcQGraphicsTransform_new(): ptr cQGraphicsTransform {.importc: "QGraphicsTransform_new".}
proc fcQGraphicsTransform_new2(parent: pointer): ptr cQGraphicsTransform {.importc: "QGraphicsTransform_new2".}
proc fcQGraphicsTransform_metaObject(self: pointer, ): pointer {.importc: "QGraphicsTransform_metaObject".}
proc fcQGraphicsTransform_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsTransform_metacast".}
proc fcQGraphicsTransform_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsTransform_metacall".}
proc fcQGraphicsTransform_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsTransform_tr".}
proc fcQGraphicsTransform_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsTransform_trUtf8".}
proc fcQGraphicsTransform_applyTo(self: pointer, matrix: pointer): void {.importc: "QGraphicsTransform_applyTo".}
proc fcQGraphicsTransform_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsTransform_tr2".}
proc fcQGraphicsTransform_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsTransform_tr3".}
proc fcQGraphicsTransform_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsTransform_trUtf82".}
proc fcQGraphicsTransform_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsTransform_trUtf83".}
proc fQGraphicsTransform_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGraphicsTransform_virtualbase_metacall".}
proc fcQGraphicsTransform_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGraphicsTransform_override_virtual_metacall".}
proc fcQGraphicsTransform_override_virtual_applyTo(self: pointer, slot: int) {.importc: "QGraphicsTransform_override_virtual_applyTo".}
proc fQGraphicsTransform_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGraphicsTransform_virtualbase_event".}
proc fcQGraphicsTransform_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsTransform_override_virtual_event".}
proc fQGraphicsTransform_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsTransform_virtualbase_eventFilter".}
proc fcQGraphicsTransform_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsTransform_override_virtual_eventFilter".}
proc fQGraphicsTransform_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTransform_virtualbase_timerEvent".}
proc fcQGraphicsTransform_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsTransform_override_virtual_timerEvent".}
proc fQGraphicsTransform_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTransform_virtualbase_childEvent".}
proc fcQGraphicsTransform_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsTransform_override_virtual_childEvent".}
proc fQGraphicsTransform_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTransform_virtualbase_customEvent".}
proc fcQGraphicsTransform_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsTransform_override_virtual_customEvent".}
proc fQGraphicsTransform_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsTransform_virtualbase_connectNotify".}
proc fcQGraphicsTransform_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsTransform_override_virtual_connectNotify".}
proc fQGraphicsTransform_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsTransform_virtualbase_disconnectNotify".}
proc fcQGraphicsTransform_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsTransform_override_virtual_disconnectNotify".}
proc fcQGraphicsTransform_staticMetaObject(): pointer {.importc: "QGraphicsTransform_staticMetaObject".}
proc fcQGraphicsTransform_delete(self: pointer) {.importc: "QGraphicsTransform_delete".}
proc fcQGraphicsScale_new(): ptr cQGraphicsScale {.importc: "QGraphicsScale_new".}
proc fcQGraphicsScale_new2(parent: pointer): ptr cQGraphicsScale {.importc: "QGraphicsScale_new2".}
proc fcQGraphicsScale_metaObject(self: pointer, ): pointer {.importc: "QGraphicsScale_metaObject".}
proc fcQGraphicsScale_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsScale_metacast".}
proc fcQGraphicsScale_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsScale_metacall".}
proc fcQGraphicsScale_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsScale_tr".}
proc fcQGraphicsScale_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsScale_trUtf8".}
proc fcQGraphicsScale_origin(self: pointer, ): pointer {.importc: "QGraphicsScale_origin".}
proc fcQGraphicsScale_setOrigin(self: pointer, point: pointer): void {.importc: "QGraphicsScale_setOrigin".}
proc fcQGraphicsScale_xScale(self: pointer, ): float64 {.importc: "QGraphicsScale_xScale".}
proc fcQGraphicsScale_setXScale(self: pointer, xScale: float64): void {.importc: "QGraphicsScale_setXScale".}
proc fcQGraphicsScale_yScale(self: pointer, ): float64 {.importc: "QGraphicsScale_yScale".}
proc fcQGraphicsScale_setYScale(self: pointer, yScale: float64): void {.importc: "QGraphicsScale_setYScale".}
proc fcQGraphicsScale_zScale(self: pointer, ): float64 {.importc: "QGraphicsScale_zScale".}
proc fcQGraphicsScale_setZScale(self: pointer, zScale: float64): void {.importc: "QGraphicsScale_setZScale".}
proc fcQGraphicsScale_applyTo(self: pointer, matrix: pointer): void {.importc: "QGraphicsScale_applyTo".}
proc fcQGraphicsScale_originChanged(self: pointer, ): void {.importc: "QGraphicsScale_originChanged".}
proc fQGraphicsScale_connect_originChanged(self: pointer, slot: int) {.importc: "QGraphicsScale_connect_originChanged".}
proc fcQGraphicsScale_xScaleChanged(self: pointer, ): void {.importc: "QGraphicsScale_xScaleChanged".}
proc fQGraphicsScale_connect_xScaleChanged(self: pointer, slot: int) {.importc: "QGraphicsScale_connect_xScaleChanged".}
proc fcQGraphicsScale_yScaleChanged(self: pointer, ): void {.importc: "QGraphicsScale_yScaleChanged".}
proc fQGraphicsScale_connect_yScaleChanged(self: pointer, slot: int) {.importc: "QGraphicsScale_connect_yScaleChanged".}
proc fcQGraphicsScale_zScaleChanged(self: pointer, ): void {.importc: "QGraphicsScale_zScaleChanged".}
proc fQGraphicsScale_connect_zScaleChanged(self: pointer, slot: int) {.importc: "QGraphicsScale_connect_zScaleChanged".}
proc fcQGraphicsScale_scaleChanged(self: pointer, ): void {.importc: "QGraphicsScale_scaleChanged".}
proc fQGraphicsScale_connect_scaleChanged(self: pointer, slot: int) {.importc: "QGraphicsScale_connect_scaleChanged".}
proc fcQGraphicsScale_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsScale_tr2".}
proc fcQGraphicsScale_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsScale_tr3".}
proc fcQGraphicsScale_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsScale_trUtf82".}
proc fcQGraphicsScale_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsScale_trUtf83".}
proc fQGraphicsScale_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGraphicsScale_virtualbase_metacall".}
proc fcQGraphicsScale_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGraphicsScale_override_virtual_metacall".}
proc fQGraphicsScale_virtualbase_applyTo(self: pointer, matrix: pointer): void{.importc: "QGraphicsScale_virtualbase_applyTo".}
proc fcQGraphicsScale_override_virtual_applyTo(self: pointer, slot: int) {.importc: "QGraphicsScale_override_virtual_applyTo".}
proc fQGraphicsScale_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGraphicsScale_virtualbase_event".}
proc fcQGraphicsScale_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsScale_override_virtual_event".}
proc fQGraphicsScale_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsScale_virtualbase_eventFilter".}
proc fcQGraphicsScale_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsScale_override_virtual_eventFilter".}
proc fQGraphicsScale_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsScale_virtualbase_timerEvent".}
proc fcQGraphicsScale_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsScale_override_virtual_timerEvent".}
proc fQGraphicsScale_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsScale_virtualbase_childEvent".}
proc fcQGraphicsScale_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsScale_override_virtual_childEvent".}
proc fQGraphicsScale_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsScale_virtualbase_customEvent".}
proc fcQGraphicsScale_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsScale_override_virtual_customEvent".}
proc fQGraphicsScale_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsScale_virtualbase_connectNotify".}
proc fcQGraphicsScale_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsScale_override_virtual_connectNotify".}
proc fQGraphicsScale_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsScale_virtualbase_disconnectNotify".}
proc fcQGraphicsScale_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsScale_override_virtual_disconnectNotify".}
proc fcQGraphicsScale_staticMetaObject(): pointer {.importc: "QGraphicsScale_staticMetaObject".}
proc fcQGraphicsScale_delete(self: pointer) {.importc: "QGraphicsScale_delete".}
proc fcQGraphicsRotation_new(): ptr cQGraphicsRotation {.importc: "QGraphicsRotation_new".}
proc fcQGraphicsRotation_new2(parent: pointer): ptr cQGraphicsRotation {.importc: "QGraphicsRotation_new2".}
proc fcQGraphicsRotation_metaObject(self: pointer, ): pointer {.importc: "QGraphicsRotation_metaObject".}
proc fcQGraphicsRotation_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsRotation_metacast".}
proc fcQGraphicsRotation_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsRotation_metacall".}
proc fcQGraphicsRotation_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsRotation_tr".}
proc fcQGraphicsRotation_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsRotation_trUtf8".}
proc fcQGraphicsRotation_origin(self: pointer, ): pointer {.importc: "QGraphicsRotation_origin".}
proc fcQGraphicsRotation_setOrigin(self: pointer, point: pointer): void {.importc: "QGraphicsRotation_setOrigin".}
proc fcQGraphicsRotation_angle(self: pointer, ): float64 {.importc: "QGraphicsRotation_angle".}
proc fcQGraphicsRotation_setAngle(self: pointer, angle: float64): void {.importc: "QGraphicsRotation_setAngle".}
proc fcQGraphicsRotation_axis(self: pointer, ): pointer {.importc: "QGraphicsRotation_axis".}
proc fcQGraphicsRotation_setAxis(self: pointer, axis: pointer): void {.importc: "QGraphicsRotation_setAxis".}
proc fcQGraphicsRotation_setAxisWithAxis(self: pointer, axis: cint): void {.importc: "QGraphicsRotation_setAxisWithAxis".}
proc fcQGraphicsRotation_applyTo(self: pointer, matrix: pointer): void {.importc: "QGraphicsRotation_applyTo".}
proc fcQGraphicsRotation_originChanged(self: pointer, ): void {.importc: "QGraphicsRotation_originChanged".}
proc fQGraphicsRotation_connect_originChanged(self: pointer, slot: int) {.importc: "QGraphicsRotation_connect_originChanged".}
proc fcQGraphicsRotation_angleChanged(self: pointer, ): void {.importc: "QGraphicsRotation_angleChanged".}
proc fQGraphicsRotation_connect_angleChanged(self: pointer, slot: int) {.importc: "QGraphicsRotation_connect_angleChanged".}
proc fcQGraphicsRotation_axisChanged(self: pointer, ): void {.importc: "QGraphicsRotation_axisChanged".}
proc fQGraphicsRotation_connect_axisChanged(self: pointer, slot: int) {.importc: "QGraphicsRotation_connect_axisChanged".}
proc fcQGraphicsRotation_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsRotation_tr2".}
proc fcQGraphicsRotation_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsRotation_tr3".}
proc fcQGraphicsRotation_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsRotation_trUtf82".}
proc fcQGraphicsRotation_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsRotation_trUtf83".}
proc fQGraphicsRotation_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGraphicsRotation_virtualbase_metacall".}
proc fcQGraphicsRotation_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGraphicsRotation_override_virtual_metacall".}
proc fQGraphicsRotation_virtualbase_applyTo(self: pointer, matrix: pointer): void{.importc: "QGraphicsRotation_virtualbase_applyTo".}
proc fcQGraphicsRotation_override_virtual_applyTo(self: pointer, slot: int) {.importc: "QGraphicsRotation_override_virtual_applyTo".}
proc fQGraphicsRotation_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGraphicsRotation_virtualbase_event".}
proc fcQGraphicsRotation_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsRotation_override_virtual_event".}
proc fQGraphicsRotation_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsRotation_virtualbase_eventFilter".}
proc fcQGraphicsRotation_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsRotation_override_virtual_eventFilter".}
proc fQGraphicsRotation_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRotation_virtualbase_timerEvent".}
proc fcQGraphicsRotation_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsRotation_override_virtual_timerEvent".}
proc fQGraphicsRotation_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRotation_virtualbase_childEvent".}
proc fcQGraphicsRotation_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsRotation_override_virtual_childEvent".}
proc fQGraphicsRotation_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRotation_virtualbase_customEvent".}
proc fcQGraphicsRotation_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsRotation_override_virtual_customEvent".}
proc fQGraphicsRotation_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsRotation_virtualbase_connectNotify".}
proc fcQGraphicsRotation_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsRotation_override_virtual_connectNotify".}
proc fQGraphicsRotation_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsRotation_virtualbase_disconnectNotify".}
proc fcQGraphicsRotation_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsRotation_override_virtual_disconnectNotify".}
proc fcQGraphicsRotation_staticMetaObject(): pointer {.importc: "QGraphicsRotation_staticMetaObject".}
proc fcQGraphicsRotation_delete(self: pointer) {.importc: "QGraphicsRotation_delete".}


func init*(T: type QGraphicsTransform, h: ptr cQGraphicsTransform): QGraphicsTransform =
  T(h: h)
proc create*(T: type QGraphicsTransform, ): QGraphicsTransform =

  QGraphicsTransform.init(fcQGraphicsTransform_new())
proc create*(T: type QGraphicsTransform, parent: gen_qobject.QObject): QGraphicsTransform =

  QGraphicsTransform.init(fcQGraphicsTransform_new2(parent.h))
proc metaObject*(self: QGraphicsTransform, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQGraphicsTransform_metaObject(self.h))

proc metacast*(self: QGraphicsTransform, param1: cstring): pointer =

  fcQGraphicsTransform_metacast(self.h, param1)

proc metacall*(self: QGraphicsTransform, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQGraphicsTransform_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QGraphicsTransform, s: cstring): string =

  let v_ms = fcQGraphicsTransform_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QGraphicsTransform, s: cstring): string =

  let v_ms = fcQGraphicsTransform_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc applyTo*(self: QGraphicsTransform, matrix: gen_qmatrix4x4.QMatrix4x4): void =

  fcQGraphicsTransform_applyTo(self.h, matrix.h)

proc tr2*(_: type QGraphicsTransform, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsTransform_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QGraphicsTransform, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsTransform_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QGraphicsTransform, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsTransform_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QGraphicsTransform, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsTransform_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QGraphicsTransform, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQGraphicsTransform_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGraphicsTransformmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QGraphicsTransform, slot: proc(super: QGraphicsTransformmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTransformmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTransform_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTransform_metacall(self: ptr cQGraphicsTransform, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsTransform_metacall ".} =
  type Cb = proc(super: QGraphicsTransformmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QGraphicsTransform(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QGraphicsTransformapplyToBase* = proc(matrix: gen_qmatrix4x4.QMatrix4x4): void
proc onapplyTo*(self: QGraphicsTransform, slot: proc(matrix: gen_qmatrix4x4.QMatrix4x4): void) =
  # TODO check subclass
  type Cb = proc(matrix: gen_qmatrix4x4.QMatrix4x4): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTransform_override_virtual_applyTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTransform_applyTo(self: ptr cQGraphicsTransform, slot: int, matrix: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTransform_applyTo ".} =
  type Cb = proc(matrix: gen_qmatrix4x4.QMatrix4x4): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qmatrix4x4.QMatrix4x4(h: matrix)


  nimfunc[](slotval1)
proc callVirtualBase_event(self: QGraphicsTransform, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsTransform_virtualbase_event(self.h, event.h)

type QGraphicsTransformeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QGraphicsTransform, slot: proc(super: QGraphicsTransformeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTransformeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTransform_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTransform_event(self: ptr cQGraphicsTransform, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsTransform_event ".} =
  type Cb = proc(super: QGraphicsTransformeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QGraphicsTransform(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QGraphicsTransform, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsTransform_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsTransformeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QGraphicsTransform, slot: proc(super: QGraphicsTransformeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTransformeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTransform_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTransform_eventFilter(self: ptr cQGraphicsTransform, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsTransform_eventFilter ".} =
  type Cb = proc(super: QGraphicsTransformeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QGraphicsTransform(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QGraphicsTransform, event: gen_qcoreevent.QTimerEvent): void =


  fQGraphicsTransform_virtualbase_timerEvent(self.h, event.h)

type QGraphicsTransformtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QGraphicsTransform, slot: proc(super: QGraphicsTransformtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTransformtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTransform_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTransform_timerEvent(self: ptr cQGraphicsTransform, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTransform_timerEvent ".} =
  type Cb = proc(super: QGraphicsTransformtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QGraphicsTransform(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QGraphicsTransform, event: gen_qcoreevent.QChildEvent): void =


  fQGraphicsTransform_virtualbase_childEvent(self.h, event.h)

type QGraphicsTransformchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QGraphicsTransform, slot: proc(super: QGraphicsTransformchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTransformchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTransform_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTransform_childEvent(self: ptr cQGraphicsTransform, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTransform_childEvent ".} =
  type Cb = proc(super: QGraphicsTransformchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QGraphicsTransform(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QGraphicsTransform, event: gen_qcoreevent.QEvent): void =


  fQGraphicsTransform_virtualbase_customEvent(self.h, event.h)

type QGraphicsTransformcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QGraphicsTransform, slot: proc(super: QGraphicsTransformcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTransformcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTransform_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTransform_customEvent(self: ptr cQGraphicsTransform, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTransform_customEvent ".} =
  type Cb = proc(super: QGraphicsTransformcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QGraphicsTransform(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QGraphicsTransform, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsTransform_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsTransformconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QGraphicsTransform, slot: proc(super: QGraphicsTransformconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTransformconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTransform_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTransform_connectNotify(self: ptr cQGraphicsTransform, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTransform_connectNotify ".} =
  type Cb = proc(super: QGraphicsTransformconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QGraphicsTransform(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QGraphicsTransform, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsTransform_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsTransformdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QGraphicsTransform, slot: proc(super: QGraphicsTransformdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsTransformdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTransform_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTransform_disconnectNotify(self: ptr cQGraphicsTransform, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTransform_disconnectNotify ".} =
  type Cb = proc(super: QGraphicsTransformdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QGraphicsTransform(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QGraphicsTransform): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQGraphicsTransform_staticMetaObject())
proc delete*(self: QGraphicsTransform) =
  fcQGraphicsTransform_delete(self.h)

func init*(T: type QGraphicsScale, h: ptr cQGraphicsScale): QGraphicsScale =
  T(h: h)
proc create*(T: type QGraphicsScale, ): QGraphicsScale =

  QGraphicsScale.init(fcQGraphicsScale_new())
proc create*(T: type QGraphicsScale, parent: gen_qobject.QObject): QGraphicsScale =

  QGraphicsScale.init(fcQGraphicsScale_new2(parent.h))
proc metaObject*(self: QGraphicsScale, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQGraphicsScale_metaObject(self.h))

proc metacast*(self: QGraphicsScale, param1: cstring): pointer =

  fcQGraphicsScale_metacast(self.h, param1)

proc metacall*(self: QGraphicsScale, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQGraphicsScale_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QGraphicsScale, s: cstring): string =

  let v_ms = fcQGraphicsScale_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QGraphicsScale, s: cstring): string =

  let v_ms = fcQGraphicsScale_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc origin*(self: QGraphicsScale, ): gen_qvector3d.QVector3D =

  gen_qvector3d.QVector3D(h: fcQGraphicsScale_origin(self.h))

proc setOrigin*(self: QGraphicsScale, point: gen_qvector3d.QVector3D): void =

  fcQGraphicsScale_setOrigin(self.h, point.h)

proc xScale*(self: QGraphicsScale, ): float64 =

  fcQGraphicsScale_xScale(self.h)

proc setXScale*(self: QGraphicsScale, xScale: float64): void =

  fcQGraphicsScale_setXScale(self.h, xScale)

proc yScale*(self: QGraphicsScale, ): float64 =

  fcQGraphicsScale_yScale(self.h)

proc setYScale*(self: QGraphicsScale, yScale: float64): void =

  fcQGraphicsScale_setYScale(self.h, yScale)

proc zScale*(self: QGraphicsScale, ): float64 =

  fcQGraphicsScale_zScale(self.h)

proc setZScale*(self: QGraphicsScale, zScale: float64): void =

  fcQGraphicsScale_setZScale(self.h, zScale)

proc applyTo*(self: QGraphicsScale, matrix: gen_qmatrix4x4.QMatrix4x4): void =

  fcQGraphicsScale_applyTo(self.h, matrix.h)

proc originChanged*(self: QGraphicsScale, ): void =

  fcQGraphicsScale_originChanged(self.h)

proc miqt_exec_callback_QGraphicsScale_originChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onoriginChanged*(self: QGraphicsScale, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsScale_connect_originChanged(self.h, cast[int](addr tmp[]))
proc xScaleChanged*(self: QGraphicsScale, ): void =

  fcQGraphicsScale_xScaleChanged(self.h)

proc miqt_exec_callback_QGraphicsScale_xScaleChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onxScaleChanged*(self: QGraphicsScale, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsScale_connect_xScaleChanged(self.h, cast[int](addr tmp[]))
proc yScaleChanged*(self: QGraphicsScale, ): void =

  fcQGraphicsScale_yScaleChanged(self.h)

proc miqt_exec_callback_QGraphicsScale_yScaleChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onyScaleChanged*(self: QGraphicsScale, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsScale_connect_yScaleChanged(self.h, cast[int](addr tmp[]))
proc zScaleChanged*(self: QGraphicsScale, ): void =

  fcQGraphicsScale_zScaleChanged(self.h)

proc miqt_exec_callback_QGraphicsScale_zScaleChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onzScaleChanged*(self: QGraphicsScale, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsScale_connect_zScaleChanged(self.h, cast[int](addr tmp[]))
proc scaleChanged*(self: QGraphicsScale, ): void =

  fcQGraphicsScale_scaleChanged(self.h)

proc miqt_exec_callback_QGraphicsScale_scaleChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onscaleChanged*(self: QGraphicsScale, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsScale_connect_scaleChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QGraphicsScale, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsScale_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QGraphicsScale, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsScale_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QGraphicsScale, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsScale_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QGraphicsScale, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsScale_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QGraphicsScale, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQGraphicsScale_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGraphicsScalemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QGraphicsScale, slot: proc(super: QGraphicsScalemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScalemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScale_metacall(self: ptr cQGraphicsScale, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsScale_metacall ".} =
  type Cb = proc(super: QGraphicsScalemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QGraphicsScale(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_applyTo(self: QGraphicsScale, matrix: gen_qmatrix4x4.QMatrix4x4): void =


  fQGraphicsScale_virtualbase_applyTo(self.h, matrix.h)

type QGraphicsScaleapplyToBase* = proc(matrix: gen_qmatrix4x4.QMatrix4x4): void
proc onapplyTo*(self: QGraphicsScale, slot: proc(super: QGraphicsScaleapplyToBase, matrix: gen_qmatrix4x4.QMatrix4x4): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScaleapplyToBase, matrix: gen_qmatrix4x4.QMatrix4x4): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_override_virtual_applyTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScale_applyTo(self: ptr cQGraphicsScale, slot: int, matrix: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScale_applyTo ".} =
  type Cb = proc(super: QGraphicsScaleapplyToBase, matrix: gen_qmatrix4x4.QMatrix4x4): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(matrix: gen_qmatrix4x4.QMatrix4x4): auto =
    callVirtualBase_applyTo(QGraphicsScale(h: self), matrix)
  let slotval1 = gen_qmatrix4x4.QMatrix4x4(h: matrix)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QGraphicsScale, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsScale_virtualbase_event(self.h, event.h)

type QGraphicsScaleeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QGraphicsScale, slot: proc(super: QGraphicsScaleeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScaleeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScale_event(self: ptr cQGraphicsScale, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsScale_event ".} =
  type Cb = proc(super: QGraphicsScaleeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QGraphicsScale(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QGraphicsScale, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsScale_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsScaleeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QGraphicsScale, slot: proc(super: QGraphicsScaleeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScaleeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScale_eventFilter(self: ptr cQGraphicsScale, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsScale_eventFilter ".} =
  type Cb = proc(super: QGraphicsScaleeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QGraphicsScale(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QGraphicsScale, event: gen_qcoreevent.QTimerEvent): void =


  fQGraphicsScale_virtualbase_timerEvent(self.h, event.h)

type QGraphicsScaletimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QGraphicsScale, slot: proc(super: QGraphicsScaletimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScaletimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScale_timerEvent(self: ptr cQGraphicsScale, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScale_timerEvent ".} =
  type Cb = proc(super: QGraphicsScaletimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QGraphicsScale(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QGraphicsScale, event: gen_qcoreevent.QChildEvent): void =


  fQGraphicsScale_virtualbase_childEvent(self.h, event.h)

type QGraphicsScalechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QGraphicsScale, slot: proc(super: QGraphicsScalechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScalechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScale_childEvent(self: ptr cQGraphicsScale, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScale_childEvent ".} =
  type Cb = proc(super: QGraphicsScalechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QGraphicsScale(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QGraphicsScale, event: gen_qcoreevent.QEvent): void =


  fQGraphicsScale_virtualbase_customEvent(self.h, event.h)

type QGraphicsScalecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QGraphicsScale, slot: proc(super: QGraphicsScalecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScalecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScale_customEvent(self: ptr cQGraphicsScale, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScale_customEvent ".} =
  type Cb = proc(super: QGraphicsScalecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QGraphicsScale(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QGraphicsScale, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsScale_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsScaleconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QGraphicsScale, slot: proc(super: QGraphicsScaleconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScaleconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScale_connectNotify(self: ptr cQGraphicsScale, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScale_connectNotify ".} =
  type Cb = proc(super: QGraphicsScaleconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QGraphicsScale(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QGraphicsScale, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsScale_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsScaledisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QGraphicsScale, slot: proc(super: QGraphicsScaledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsScaledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScale_disconnectNotify(self: ptr cQGraphicsScale, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScale_disconnectNotify ".} =
  type Cb = proc(super: QGraphicsScaledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QGraphicsScale(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QGraphicsScale): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQGraphicsScale_staticMetaObject())
proc delete*(self: QGraphicsScale) =
  fcQGraphicsScale_delete(self.h)

func init*(T: type QGraphicsRotation, h: ptr cQGraphicsRotation): QGraphicsRotation =
  T(h: h)
proc create*(T: type QGraphicsRotation, ): QGraphicsRotation =

  QGraphicsRotation.init(fcQGraphicsRotation_new())
proc create*(T: type QGraphicsRotation, parent: gen_qobject.QObject): QGraphicsRotation =

  QGraphicsRotation.init(fcQGraphicsRotation_new2(parent.h))
proc metaObject*(self: QGraphicsRotation, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQGraphicsRotation_metaObject(self.h))

proc metacast*(self: QGraphicsRotation, param1: cstring): pointer =

  fcQGraphicsRotation_metacast(self.h, param1)

proc metacall*(self: QGraphicsRotation, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQGraphicsRotation_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QGraphicsRotation, s: cstring): string =

  let v_ms = fcQGraphicsRotation_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QGraphicsRotation, s: cstring): string =

  let v_ms = fcQGraphicsRotation_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc origin*(self: QGraphicsRotation, ): gen_qvector3d.QVector3D =

  gen_qvector3d.QVector3D(h: fcQGraphicsRotation_origin(self.h))

proc setOrigin*(self: QGraphicsRotation, point: gen_qvector3d.QVector3D): void =

  fcQGraphicsRotation_setOrigin(self.h, point.h)

proc angle*(self: QGraphicsRotation, ): float64 =

  fcQGraphicsRotation_angle(self.h)

proc setAngle*(self: QGraphicsRotation, angle: float64): void =

  fcQGraphicsRotation_setAngle(self.h, angle)

proc axis*(self: QGraphicsRotation, ): gen_qvector3d.QVector3D =

  gen_qvector3d.QVector3D(h: fcQGraphicsRotation_axis(self.h))

proc setAxis*(self: QGraphicsRotation, axis: gen_qvector3d.QVector3D): void =

  fcQGraphicsRotation_setAxis(self.h, axis.h)

proc setAxisWithAxis*(self: QGraphicsRotation, axis: gen_qnamespace.Axis): void =

  fcQGraphicsRotation_setAxisWithAxis(self.h, cint(axis))

proc applyTo*(self: QGraphicsRotation, matrix: gen_qmatrix4x4.QMatrix4x4): void =

  fcQGraphicsRotation_applyTo(self.h, matrix.h)

proc originChanged*(self: QGraphicsRotation, ): void =

  fcQGraphicsRotation_originChanged(self.h)

proc miqt_exec_callback_QGraphicsRotation_originChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onoriginChanged*(self: QGraphicsRotation, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsRotation_connect_originChanged(self.h, cast[int](addr tmp[]))
proc angleChanged*(self: QGraphicsRotation, ): void =

  fcQGraphicsRotation_angleChanged(self.h)

proc miqt_exec_callback_QGraphicsRotation_angleChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onangleChanged*(self: QGraphicsRotation, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsRotation_connect_angleChanged(self.h, cast[int](addr tmp[]))
proc axisChanged*(self: QGraphicsRotation, ): void =

  fcQGraphicsRotation_axisChanged(self.h)

proc miqt_exec_callback_QGraphicsRotation_axisChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onaxisChanged*(self: QGraphicsRotation, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsRotation_connect_axisChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QGraphicsRotation, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsRotation_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QGraphicsRotation, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsRotation_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QGraphicsRotation, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsRotation_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QGraphicsRotation, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsRotation_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QGraphicsRotation, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQGraphicsRotation_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGraphicsRotationmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QGraphicsRotation, slot: proc(super: QGraphicsRotationmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRotationmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRotation_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRotation_metacall(self: ptr cQGraphicsRotation, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsRotation_metacall ".} =
  type Cb = proc(super: QGraphicsRotationmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QGraphicsRotation(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_applyTo(self: QGraphicsRotation, matrix: gen_qmatrix4x4.QMatrix4x4): void =


  fQGraphicsRotation_virtualbase_applyTo(self.h, matrix.h)

type QGraphicsRotationapplyToBase* = proc(matrix: gen_qmatrix4x4.QMatrix4x4): void
proc onapplyTo*(self: QGraphicsRotation, slot: proc(super: QGraphicsRotationapplyToBase, matrix: gen_qmatrix4x4.QMatrix4x4): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRotationapplyToBase, matrix: gen_qmatrix4x4.QMatrix4x4): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRotation_override_virtual_applyTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRotation_applyTo(self: ptr cQGraphicsRotation, slot: int, matrix: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRotation_applyTo ".} =
  type Cb = proc(super: QGraphicsRotationapplyToBase, matrix: gen_qmatrix4x4.QMatrix4x4): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(matrix: gen_qmatrix4x4.QMatrix4x4): auto =
    callVirtualBase_applyTo(QGraphicsRotation(h: self), matrix)
  let slotval1 = gen_qmatrix4x4.QMatrix4x4(h: matrix)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QGraphicsRotation, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsRotation_virtualbase_event(self.h, event.h)

type QGraphicsRotationeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QGraphicsRotation, slot: proc(super: QGraphicsRotationeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRotationeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRotation_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRotation_event(self: ptr cQGraphicsRotation, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsRotation_event ".} =
  type Cb = proc(super: QGraphicsRotationeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QGraphicsRotation(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QGraphicsRotation, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsRotation_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsRotationeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QGraphicsRotation, slot: proc(super: QGraphicsRotationeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRotationeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRotation_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRotation_eventFilter(self: ptr cQGraphicsRotation, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsRotation_eventFilter ".} =
  type Cb = proc(super: QGraphicsRotationeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QGraphicsRotation(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QGraphicsRotation, event: gen_qcoreevent.QTimerEvent): void =


  fQGraphicsRotation_virtualbase_timerEvent(self.h, event.h)

type QGraphicsRotationtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QGraphicsRotation, slot: proc(super: QGraphicsRotationtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRotationtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRotation_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRotation_timerEvent(self: ptr cQGraphicsRotation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRotation_timerEvent ".} =
  type Cb = proc(super: QGraphicsRotationtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QGraphicsRotation(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QGraphicsRotation, event: gen_qcoreevent.QChildEvent): void =


  fQGraphicsRotation_virtualbase_childEvent(self.h, event.h)

type QGraphicsRotationchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QGraphicsRotation, slot: proc(super: QGraphicsRotationchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRotationchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRotation_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRotation_childEvent(self: ptr cQGraphicsRotation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRotation_childEvent ".} =
  type Cb = proc(super: QGraphicsRotationchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QGraphicsRotation(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QGraphicsRotation, event: gen_qcoreevent.QEvent): void =


  fQGraphicsRotation_virtualbase_customEvent(self.h, event.h)

type QGraphicsRotationcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QGraphicsRotation, slot: proc(super: QGraphicsRotationcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRotationcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRotation_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRotation_customEvent(self: ptr cQGraphicsRotation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRotation_customEvent ".} =
  type Cb = proc(super: QGraphicsRotationcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QGraphicsRotation(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QGraphicsRotation, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsRotation_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsRotationconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QGraphicsRotation, slot: proc(super: QGraphicsRotationconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRotationconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRotation_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRotation_connectNotify(self: ptr cQGraphicsRotation, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRotation_connectNotify ".} =
  type Cb = proc(super: QGraphicsRotationconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QGraphicsRotation(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QGraphicsRotation, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsRotation_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsRotationdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QGraphicsRotation, slot: proc(super: QGraphicsRotationdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsRotationdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRotation_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRotation_disconnectNotify(self: ptr cQGraphicsRotation, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRotation_disconnectNotify ".} =
  type Cb = proc(super: QGraphicsRotationdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QGraphicsRotation(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QGraphicsRotation): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQGraphicsRotation_staticMetaObject())
proc delete*(self: QGraphicsRotation) =
  fcQGraphicsRotation_delete(self.h)
