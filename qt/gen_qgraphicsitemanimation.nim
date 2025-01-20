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
{.compile("gen_qgraphicsitemanimation.cpp", cflags).}


import gen_qgraphicsitemanimation_types
export gen_qgraphicsitemanimation_types

import
  gen_qcoreevent,
  gen_qgraphicsitem,
  gen_qmatrix,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpoint,
  gen_qtimeline,
  gen_qtransform
export
  gen_qcoreevent,
  gen_qgraphicsitem,
  gen_qmatrix,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpoint,
  gen_qtimeline,
  gen_qtransform

type cQGraphicsItemAnimation*{.exportc: "QGraphicsItemAnimation", incompleteStruct.} = object

proc fcQGraphicsItemAnimation_new(): ptr cQGraphicsItemAnimation {.importc: "QGraphicsItemAnimation_new".}
proc fcQGraphicsItemAnimation_new2(parent: pointer): ptr cQGraphicsItemAnimation {.importc: "QGraphicsItemAnimation_new2".}
proc fcQGraphicsItemAnimation_metaObject(self: pointer, ): pointer {.importc: "QGraphicsItemAnimation_metaObject".}
proc fcQGraphicsItemAnimation_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsItemAnimation_metacast".}
proc fcQGraphicsItemAnimation_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsItemAnimation_metacall".}
proc fcQGraphicsItemAnimation_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsItemAnimation_tr".}
proc fcQGraphicsItemAnimation_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsItemAnimation_trUtf8".}
proc fcQGraphicsItemAnimation_item(self: pointer, ): pointer {.importc: "QGraphicsItemAnimation_item".}
proc fcQGraphicsItemAnimation_setItem(self: pointer, item: pointer): void {.importc: "QGraphicsItemAnimation_setItem".}
proc fcQGraphicsItemAnimation_timeLine(self: pointer, ): pointer {.importc: "QGraphicsItemAnimation_timeLine".}
proc fcQGraphicsItemAnimation_setTimeLine(self: pointer, timeLine: pointer): void {.importc: "QGraphicsItemAnimation_setTimeLine".}
proc fcQGraphicsItemAnimation_posAt(self: pointer, step: float64): pointer {.importc: "QGraphicsItemAnimation_posAt".}
proc fcQGraphicsItemAnimation_posList(self: pointer, ): struct_miqt_array {.importc: "QGraphicsItemAnimation_posList".}
proc fcQGraphicsItemAnimation_setPosAt(self: pointer, step: float64, pos: pointer): void {.importc: "QGraphicsItemAnimation_setPosAt".}
proc fcQGraphicsItemAnimation_matrixAt(self: pointer, step: float64): pointer {.importc: "QGraphicsItemAnimation_matrixAt".}
proc fcQGraphicsItemAnimation_transformAt(self: pointer, step: float64): pointer {.importc: "QGraphicsItemAnimation_transformAt".}
proc fcQGraphicsItemAnimation_rotationAt(self: pointer, step: float64): float64 {.importc: "QGraphicsItemAnimation_rotationAt".}
proc fcQGraphicsItemAnimation_rotationList(self: pointer, ): struct_miqt_array {.importc: "QGraphicsItemAnimation_rotationList".}
proc fcQGraphicsItemAnimation_setRotationAt(self: pointer, step: float64, angle: float64): void {.importc: "QGraphicsItemAnimation_setRotationAt".}
proc fcQGraphicsItemAnimation_xTranslationAt(self: pointer, step: float64): float64 {.importc: "QGraphicsItemAnimation_xTranslationAt".}
proc fcQGraphicsItemAnimation_yTranslationAt(self: pointer, step: float64): float64 {.importc: "QGraphicsItemAnimation_yTranslationAt".}
proc fcQGraphicsItemAnimation_translationList(self: pointer, ): struct_miqt_array {.importc: "QGraphicsItemAnimation_translationList".}
proc fcQGraphicsItemAnimation_setTranslationAt(self: pointer, step: float64, dx: float64, dy: float64): void {.importc: "QGraphicsItemAnimation_setTranslationAt".}
proc fcQGraphicsItemAnimation_verticalScaleAt(self: pointer, step: float64): float64 {.importc: "QGraphicsItemAnimation_verticalScaleAt".}
proc fcQGraphicsItemAnimation_horizontalScaleAt(self: pointer, step: float64): float64 {.importc: "QGraphicsItemAnimation_horizontalScaleAt".}
proc fcQGraphicsItemAnimation_scaleList(self: pointer, ): struct_miqt_array {.importc: "QGraphicsItemAnimation_scaleList".}
proc fcQGraphicsItemAnimation_setScaleAt(self: pointer, step: float64, sx: float64, sy: float64): void {.importc: "QGraphicsItemAnimation_setScaleAt".}
proc fcQGraphicsItemAnimation_verticalShearAt(self: pointer, step: float64): float64 {.importc: "QGraphicsItemAnimation_verticalShearAt".}
proc fcQGraphicsItemAnimation_horizontalShearAt(self: pointer, step: float64): float64 {.importc: "QGraphicsItemAnimation_horizontalShearAt".}
proc fcQGraphicsItemAnimation_shearList(self: pointer, ): struct_miqt_array {.importc: "QGraphicsItemAnimation_shearList".}
proc fcQGraphicsItemAnimation_setShearAt(self: pointer, step: float64, sh: float64, sv: float64): void {.importc: "QGraphicsItemAnimation_setShearAt".}
proc fcQGraphicsItemAnimation_clear(self: pointer, ): void {.importc: "QGraphicsItemAnimation_clear".}
proc fcQGraphicsItemAnimation_setStep(self: pointer, x: float64): void {.importc: "QGraphicsItemAnimation_setStep".}
proc fcQGraphicsItemAnimation_reset(self: pointer, ): void {.importc: "QGraphicsItemAnimation_reset".}
proc fcQGraphicsItemAnimation_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsItemAnimation_tr2".}
proc fcQGraphicsItemAnimation_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsItemAnimation_tr3".}
proc fcQGraphicsItemAnimation_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsItemAnimation_trUtf82".}
proc fcQGraphicsItemAnimation_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsItemAnimation_trUtf83".}
proc fQGraphicsItemAnimation_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QGraphicsItemAnimation_virtualbase_metaObject".}
proc fcQGraphicsItemAnimation_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QGraphicsItemAnimation_override_virtual_metaObject".}
proc fQGraphicsItemAnimation_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QGraphicsItemAnimation_virtualbase_metacast".}
proc fcQGraphicsItemAnimation_override_virtual_metacast(self: pointer, slot: int) {.importc: "QGraphicsItemAnimation_override_virtual_metacast".}
proc fQGraphicsItemAnimation_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGraphicsItemAnimation_virtualbase_metacall".}
proc fcQGraphicsItemAnimation_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGraphicsItemAnimation_override_virtual_metacall".}
proc fQGraphicsItemAnimation_virtualbase_beforeAnimationStep(self: pointer, step: float64): void{.importc: "QGraphicsItemAnimation_virtualbase_beforeAnimationStep".}
proc fcQGraphicsItemAnimation_override_virtual_beforeAnimationStep(self: pointer, slot: int) {.importc: "QGraphicsItemAnimation_override_virtual_beforeAnimationStep".}
proc fQGraphicsItemAnimation_virtualbase_afterAnimationStep(self: pointer, step: float64): void{.importc: "QGraphicsItemAnimation_virtualbase_afterAnimationStep".}
proc fcQGraphicsItemAnimation_override_virtual_afterAnimationStep(self: pointer, slot: int) {.importc: "QGraphicsItemAnimation_override_virtual_afterAnimationStep".}
proc fQGraphicsItemAnimation_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGraphicsItemAnimation_virtualbase_event".}
proc fcQGraphicsItemAnimation_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsItemAnimation_override_virtual_event".}
proc fQGraphicsItemAnimation_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsItemAnimation_virtualbase_eventFilter".}
proc fcQGraphicsItemAnimation_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsItemAnimation_override_virtual_eventFilter".}
proc fQGraphicsItemAnimation_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemAnimation_virtualbase_timerEvent".}
proc fcQGraphicsItemAnimation_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsItemAnimation_override_virtual_timerEvent".}
proc fQGraphicsItemAnimation_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemAnimation_virtualbase_childEvent".}
proc fcQGraphicsItemAnimation_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsItemAnimation_override_virtual_childEvent".}
proc fQGraphicsItemAnimation_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsItemAnimation_virtualbase_customEvent".}
proc fcQGraphicsItemAnimation_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsItemAnimation_override_virtual_customEvent".}
proc fQGraphicsItemAnimation_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsItemAnimation_virtualbase_connectNotify".}
proc fcQGraphicsItemAnimation_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsItemAnimation_override_virtual_connectNotify".}
proc fQGraphicsItemAnimation_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsItemAnimation_virtualbase_disconnectNotify".}
proc fcQGraphicsItemAnimation_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsItemAnimation_override_virtual_disconnectNotify".}
proc fcQGraphicsItemAnimation_staticMetaObject(): pointer {.importc: "QGraphicsItemAnimation_staticMetaObject".}
proc fcQGraphicsItemAnimation_delete(self: pointer) {.importc: "QGraphicsItemAnimation_delete".}


func init*(T: type QGraphicsItemAnimation, h: ptr cQGraphicsItemAnimation): QGraphicsItemAnimation =
  T(h: h)
proc create*(T: type QGraphicsItemAnimation, ): QGraphicsItemAnimation =

  QGraphicsItemAnimation.init(fcQGraphicsItemAnimation_new())
proc create*(T: type QGraphicsItemAnimation, parent: gen_qobject.QObject): QGraphicsItemAnimation =

  QGraphicsItemAnimation.init(fcQGraphicsItemAnimation_new2(parent.h))
proc metaObject*(self: QGraphicsItemAnimation, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQGraphicsItemAnimation_metaObject(self.h))

proc metacast*(self: QGraphicsItemAnimation, param1: cstring): pointer =

  fcQGraphicsItemAnimation_metacast(self.h, param1)

proc metacall*(self: QGraphicsItemAnimation, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQGraphicsItemAnimation_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QGraphicsItemAnimation, s: cstring): string =

  let v_ms = fcQGraphicsItemAnimation_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QGraphicsItemAnimation, s: cstring): string =

  let v_ms = fcQGraphicsItemAnimation_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc item*(self: QGraphicsItemAnimation, ): gen_qgraphicsitem.QGraphicsItem =

  gen_qgraphicsitem.QGraphicsItem(h: fcQGraphicsItemAnimation_item(self.h))

proc setItem*(self: QGraphicsItemAnimation, item: gen_qgraphicsitem.QGraphicsItem): void =

  fcQGraphicsItemAnimation_setItem(self.h, item.h)

proc timeLine*(self: QGraphicsItemAnimation, ): gen_qtimeline.QTimeLine =

  gen_qtimeline.QTimeLine(h: fcQGraphicsItemAnimation_timeLine(self.h))

proc setTimeLine*(self: QGraphicsItemAnimation, timeLine: gen_qtimeline.QTimeLine): void =

  fcQGraphicsItemAnimation_setTimeLine(self.h, timeLine.h)

proc posAt*(self: QGraphicsItemAnimation, step: float64): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsItemAnimation_posAt(self.h, step))

proc posList*(self: QGraphicsItemAnimation, ): seq[tuple[first: float64, second: gen_qpoint.QPointF]] =

  var v_ma = fcQGraphicsItemAnimation_posList(self.h)
  var vx_ret = newSeq[tuple[first: float64, second: gen_qpoint.QPointF]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_map]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_mm = v_outCast[i]
    var vx_lv_First_CArray = cast[ptr UncheckedArray[float64]](vx_lv_mm.keys)
    var vx_lv_Second_CArray = cast[ptr UncheckedArray[pointer]](vx_lv_mm.values)
    var vx_lv_entry_First = vx_lv_First_CArray[0]

    var vx_lv_entry_Second = gen_qpoint.QPointF(h: vx_lv_Second_CArray[0])

    vx_ret[i] = (first: vx_lv_entry_First , second: vx_lv_entry_Second )
  vx_ret

proc setPosAt*(self: QGraphicsItemAnimation, step: float64, pos: gen_qpoint.QPointF): void =

  fcQGraphicsItemAnimation_setPosAt(self.h, step, pos.h)

proc matrixAt*(self: QGraphicsItemAnimation, step: float64): gen_qmatrix.QMatrix =

  gen_qmatrix.QMatrix(h: fcQGraphicsItemAnimation_matrixAt(self.h, step))

proc transformAt*(self: QGraphicsItemAnimation, step: float64): gen_qtransform.QTransform =

  gen_qtransform.QTransform(h: fcQGraphicsItemAnimation_transformAt(self.h, step))

proc rotationAt*(self: QGraphicsItemAnimation, step: float64): float64 =

  fcQGraphicsItemAnimation_rotationAt(self.h, step)

proc rotationList*(self: QGraphicsItemAnimation, ): seq[tuple[first: float64, second: float64]] =

  var v_ma = fcQGraphicsItemAnimation_rotationList(self.h)
  var vx_ret = newSeq[tuple[first: float64, second: float64]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_map]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_mm = v_outCast[i]
    var vx_lv_First_CArray = cast[ptr UncheckedArray[float64]](vx_lv_mm.keys)
    var vx_lv_Second_CArray = cast[ptr UncheckedArray[float64]](vx_lv_mm.values)
    var vx_lv_entry_First = vx_lv_First_CArray[0]

    var vx_lv_entry_Second = vx_lv_Second_CArray[0]

    vx_ret[i] = (first: vx_lv_entry_First , second: vx_lv_entry_Second )
  vx_ret

proc setRotationAt*(self: QGraphicsItemAnimation, step: float64, angle: float64): void =

  fcQGraphicsItemAnimation_setRotationAt(self.h, step, angle)

proc xTranslationAt*(self: QGraphicsItemAnimation, step: float64): float64 =

  fcQGraphicsItemAnimation_xTranslationAt(self.h, step)

proc yTranslationAt*(self: QGraphicsItemAnimation, step: float64): float64 =

  fcQGraphicsItemAnimation_yTranslationAt(self.h, step)

proc translationList*(self: QGraphicsItemAnimation, ): seq[tuple[first: float64, second: gen_qpoint.QPointF]] =

  var v_ma = fcQGraphicsItemAnimation_translationList(self.h)
  var vx_ret = newSeq[tuple[first: float64, second: gen_qpoint.QPointF]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_map]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_mm = v_outCast[i]
    var vx_lv_First_CArray = cast[ptr UncheckedArray[float64]](vx_lv_mm.keys)
    var vx_lv_Second_CArray = cast[ptr UncheckedArray[pointer]](vx_lv_mm.values)
    var vx_lv_entry_First = vx_lv_First_CArray[0]

    var vx_lv_entry_Second = gen_qpoint.QPointF(h: vx_lv_Second_CArray[0])

    vx_ret[i] = (first: vx_lv_entry_First , second: vx_lv_entry_Second )
  vx_ret

proc setTranslationAt*(self: QGraphicsItemAnimation, step: float64, dx: float64, dy: float64): void =

  fcQGraphicsItemAnimation_setTranslationAt(self.h, step, dx, dy)

proc verticalScaleAt*(self: QGraphicsItemAnimation, step: float64): float64 =

  fcQGraphicsItemAnimation_verticalScaleAt(self.h, step)

proc horizontalScaleAt*(self: QGraphicsItemAnimation, step: float64): float64 =

  fcQGraphicsItemAnimation_horizontalScaleAt(self.h, step)

proc scaleList*(self: QGraphicsItemAnimation, ): seq[tuple[first: float64, second: gen_qpoint.QPointF]] =

  var v_ma = fcQGraphicsItemAnimation_scaleList(self.h)
  var vx_ret = newSeq[tuple[first: float64, second: gen_qpoint.QPointF]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_map]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_mm = v_outCast[i]
    var vx_lv_First_CArray = cast[ptr UncheckedArray[float64]](vx_lv_mm.keys)
    var vx_lv_Second_CArray = cast[ptr UncheckedArray[pointer]](vx_lv_mm.values)
    var vx_lv_entry_First = vx_lv_First_CArray[0]

    var vx_lv_entry_Second = gen_qpoint.QPointF(h: vx_lv_Second_CArray[0])

    vx_ret[i] = (first: vx_lv_entry_First , second: vx_lv_entry_Second )
  vx_ret

proc setScaleAt*(self: QGraphicsItemAnimation, step: float64, sx: float64, sy: float64): void =

  fcQGraphicsItemAnimation_setScaleAt(self.h, step, sx, sy)

proc verticalShearAt*(self: QGraphicsItemAnimation, step: float64): float64 =

  fcQGraphicsItemAnimation_verticalShearAt(self.h, step)

proc horizontalShearAt*(self: QGraphicsItemAnimation, step: float64): float64 =

  fcQGraphicsItemAnimation_horizontalShearAt(self.h, step)

proc shearList*(self: QGraphicsItemAnimation, ): seq[tuple[first: float64, second: gen_qpoint.QPointF]] =

  var v_ma = fcQGraphicsItemAnimation_shearList(self.h)
  var vx_ret = newSeq[tuple[first: float64, second: gen_qpoint.QPointF]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_map]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_mm = v_outCast[i]
    var vx_lv_First_CArray = cast[ptr UncheckedArray[float64]](vx_lv_mm.keys)
    var vx_lv_Second_CArray = cast[ptr UncheckedArray[pointer]](vx_lv_mm.values)
    var vx_lv_entry_First = vx_lv_First_CArray[0]

    var vx_lv_entry_Second = gen_qpoint.QPointF(h: vx_lv_Second_CArray[0])

    vx_ret[i] = (first: vx_lv_entry_First , second: vx_lv_entry_Second )
  vx_ret

proc setShearAt*(self: QGraphicsItemAnimation, step: float64, sh: float64, sv: float64): void =

  fcQGraphicsItemAnimation_setShearAt(self.h, step, sh, sv)

proc clear*(self: QGraphicsItemAnimation, ): void =

  fcQGraphicsItemAnimation_clear(self.h)

proc setStep*(self: QGraphicsItemAnimation, x: float64): void =

  fcQGraphicsItemAnimation_setStep(self.h, x)

proc reset*(self: QGraphicsItemAnimation, ): void =

  fcQGraphicsItemAnimation_reset(self.h)

proc tr2*(_: type QGraphicsItemAnimation, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsItemAnimation_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QGraphicsItemAnimation, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsItemAnimation_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QGraphicsItemAnimation, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsItemAnimation_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QGraphicsItemAnimation, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsItemAnimation_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QGraphicsItemAnimation, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQGraphicsItemAnimation_virtualbase_metaObject(self.h))

type QGraphicsItemAnimationmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QGraphicsItemAnimation, slot: proc(super: QGraphicsItemAnimationmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemAnimationmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemAnimation_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemAnimation_metaObject(self: ptr cQGraphicsItemAnimation, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsItemAnimation_metaObject ".} =
  type Cb = proc(super: QGraphicsItemAnimationmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QGraphicsItemAnimation(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QGraphicsItemAnimation, param1: cstring): pointer =


  fQGraphicsItemAnimation_virtualbase_metacast(self.h, param1)

type QGraphicsItemAnimationmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QGraphicsItemAnimation, slot: proc(super: QGraphicsItemAnimationmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemAnimationmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemAnimation_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemAnimation_metacast(self: ptr cQGraphicsItemAnimation, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QGraphicsItemAnimation_metacast ".} =
  type Cb = proc(super: QGraphicsItemAnimationmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QGraphicsItemAnimation(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QGraphicsItemAnimation, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQGraphicsItemAnimation_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGraphicsItemAnimationmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QGraphicsItemAnimation, slot: proc(super: QGraphicsItemAnimationmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemAnimationmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemAnimation_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemAnimation_metacall(self: ptr cQGraphicsItemAnimation, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsItemAnimation_metacall ".} =
  type Cb = proc(super: QGraphicsItemAnimationmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QGraphicsItemAnimation(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_beforeAnimationStep(self: QGraphicsItemAnimation, step: float64): void =


  fQGraphicsItemAnimation_virtualbase_beforeAnimationStep(self.h, step)

type QGraphicsItemAnimationbeforeAnimationStepBase* = proc(step: float64): void
proc onbeforeAnimationStep*(self: QGraphicsItemAnimation, slot: proc(super: QGraphicsItemAnimationbeforeAnimationStepBase, step: float64): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemAnimationbeforeAnimationStepBase, step: float64): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemAnimation_override_virtual_beforeAnimationStep(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemAnimation_beforeAnimationStep(self: ptr cQGraphicsItemAnimation, slot: int, step: float64): void {.exportc: "miqt_exec_callback_QGraphicsItemAnimation_beforeAnimationStep ".} =
  type Cb = proc(super: QGraphicsItemAnimationbeforeAnimationStepBase, step: float64): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(step: float64): auto =
    callVirtualBase_beforeAnimationStep(QGraphicsItemAnimation(h: self), step)
  let slotval1 = step


  nimfunc[](superCall, slotval1)
proc callVirtualBase_afterAnimationStep(self: QGraphicsItemAnimation, step: float64): void =


  fQGraphicsItemAnimation_virtualbase_afterAnimationStep(self.h, step)

type QGraphicsItemAnimationafterAnimationStepBase* = proc(step: float64): void
proc onafterAnimationStep*(self: QGraphicsItemAnimation, slot: proc(super: QGraphicsItemAnimationafterAnimationStepBase, step: float64): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemAnimationafterAnimationStepBase, step: float64): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemAnimation_override_virtual_afterAnimationStep(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemAnimation_afterAnimationStep(self: ptr cQGraphicsItemAnimation, slot: int, step: float64): void {.exportc: "miqt_exec_callback_QGraphicsItemAnimation_afterAnimationStep ".} =
  type Cb = proc(super: QGraphicsItemAnimationafterAnimationStepBase, step: float64): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(step: float64): auto =
    callVirtualBase_afterAnimationStep(QGraphicsItemAnimation(h: self), step)
  let slotval1 = step


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QGraphicsItemAnimation, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsItemAnimation_virtualbase_event(self.h, event.h)

type QGraphicsItemAnimationeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QGraphicsItemAnimation, slot: proc(super: QGraphicsItemAnimationeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemAnimationeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemAnimation_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemAnimation_event(self: ptr cQGraphicsItemAnimation, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsItemAnimation_event ".} =
  type Cb = proc(super: QGraphicsItemAnimationeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QGraphicsItemAnimation(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QGraphicsItemAnimation, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsItemAnimation_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsItemAnimationeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QGraphicsItemAnimation, slot: proc(super: QGraphicsItemAnimationeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemAnimationeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemAnimation_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemAnimation_eventFilter(self: ptr cQGraphicsItemAnimation, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsItemAnimation_eventFilter ".} =
  type Cb = proc(super: QGraphicsItemAnimationeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QGraphicsItemAnimation(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QGraphicsItemAnimation, event: gen_qcoreevent.QTimerEvent): void =


  fQGraphicsItemAnimation_virtualbase_timerEvent(self.h, event.h)

type QGraphicsItemAnimationtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QGraphicsItemAnimation, slot: proc(super: QGraphicsItemAnimationtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemAnimationtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemAnimation_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemAnimation_timerEvent(self: ptr cQGraphicsItemAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemAnimation_timerEvent ".} =
  type Cb = proc(super: QGraphicsItemAnimationtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QGraphicsItemAnimation(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QGraphicsItemAnimation, event: gen_qcoreevent.QChildEvent): void =


  fQGraphicsItemAnimation_virtualbase_childEvent(self.h, event.h)

type QGraphicsItemAnimationchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QGraphicsItemAnimation, slot: proc(super: QGraphicsItemAnimationchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemAnimationchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemAnimation_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemAnimation_childEvent(self: ptr cQGraphicsItemAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemAnimation_childEvent ".} =
  type Cb = proc(super: QGraphicsItemAnimationchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QGraphicsItemAnimation(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QGraphicsItemAnimation, event: gen_qcoreevent.QEvent): void =


  fQGraphicsItemAnimation_virtualbase_customEvent(self.h, event.h)

type QGraphicsItemAnimationcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QGraphicsItemAnimation, slot: proc(super: QGraphicsItemAnimationcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemAnimationcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemAnimation_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemAnimation_customEvent(self: ptr cQGraphicsItemAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemAnimation_customEvent ".} =
  type Cb = proc(super: QGraphicsItemAnimationcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QGraphicsItemAnimation(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QGraphicsItemAnimation, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsItemAnimation_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsItemAnimationconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QGraphicsItemAnimation, slot: proc(super: QGraphicsItemAnimationconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemAnimationconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemAnimation_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemAnimation_connectNotify(self: ptr cQGraphicsItemAnimation, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemAnimation_connectNotify ".} =
  type Cb = proc(super: QGraphicsItemAnimationconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QGraphicsItemAnimation(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QGraphicsItemAnimation, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsItemAnimation_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsItemAnimationdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QGraphicsItemAnimation, slot: proc(super: QGraphicsItemAnimationdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsItemAnimationdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsItemAnimation_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsItemAnimation_disconnectNotify(self: ptr cQGraphicsItemAnimation, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsItemAnimation_disconnectNotify ".} =
  type Cb = proc(super: QGraphicsItemAnimationdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QGraphicsItemAnimation(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QGraphicsItemAnimation): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQGraphicsItemAnimation_staticMetaObject())
proc delete*(self: QGraphicsItemAnimation) =
  fcQGraphicsItemAnimation_delete(self.h)
