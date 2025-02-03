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
{.compile("gen_qgraphicsanchorlayout.cpp", cflags).}


import gen_qgraphicsanchorlayout_types
export gen_qgraphicsanchorlayout_types

import
  gen_qcoreevent,
  gen_qgraphicslayout,
  gen_qgraphicslayoutitem,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qrect,
  gen_qsize,
  gen_qsizepolicy
export
  gen_qcoreevent,
  gen_qgraphicslayout,
  gen_qgraphicslayoutitem,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qrect,
  gen_qsize,
  gen_qsizepolicy

type cQGraphicsAnchor*{.exportc: "QGraphicsAnchor", incompleteStruct.} = object
type cQGraphicsAnchorLayout*{.exportc: "QGraphicsAnchorLayout", incompleteStruct.} = object

proc fcQGraphicsAnchor_metaObject(self: pointer, ): pointer {.importc: "QGraphicsAnchor_metaObject".}
proc fcQGraphicsAnchor_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsAnchor_metacast".}
proc fcQGraphicsAnchor_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsAnchor_metacall".}
proc fcQGraphicsAnchor_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsAnchor_tr".}
proc fcQGraphicsAnchor_setSpacing(self: pointer, spacing: float64): void {.importc: "QGraphicsAnchor_setSpacing".}
proc fcQGraphicsAnchor_unsetSpacing(self: pointer, ): void {.importc: "QGraphicsAnchor_unsetSpacing".}
proc fcQGraphicsAnchor_spacing(self: pointer, ): float64 {.importc: "QGraphicsAnchor_spacing".}
proc fcQGraphicsAnchor_setSizePolicy(self: pointer, policy: cint): void {.importc: "QGraphicsAnchor_setSizePolicy".}
proc fcQGraphicsAnchor_sizePolicy(self: pointer, ): cint {.importc: "QGraphicsAnchor_sizePolicy".}
proc fcQGraphicsAnchor_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsAnchor_tr2".}
proc fcQGraphicsAnchor_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsAnchor_tr3".}
proc fcQGraphicsAnchor_delete(self: pointer) {.importc: "QGraphicsAnchor_delete".}
proc fcQGraphicsAnchorLayout_new(): ptr cQGraphicsAnchorLayout {.importc: "QGraphicsAnchorLayout_new".}
proc fcQGraphicsAnchorLayout_new2(parent: pointer): ptr cQGraphicsAnchorLayout {.importc: "QGraphicsAnchorLayout_new2".}
proc fcQGraphicsAnchorLayout_addAnchor(self: pointer, firstItem: pointer, firstEdge: cint, secondItem: pointer, secondEdge: cint): pointer {.importc: "QGraphicsAnchorLayout_addAnchor".}
proc fcQGraphicsAnchorLayout_anchor(self: pointer, firstItem: pointer, firstEdge: cint, secondItem: pointer, secondEdge: cint): pointer {.importc: "QGraphicsAnchorLayout_anchor".}
proc fcQGraphicsAnchorLayout_addCornerAnchors(self: pointer, firstItem: pointer, firstCorner: cint, secondItem: pointer, secondCorner: cint): void {.importc: "QGraphicsAnchorLayout_addCornerAnchors".}
proc fcQGraphicsAnchorLayout_addAnchors(self: pointer, firstItem: pointer, secondItem: pointer): void {.importc: "QGraphicsAnchorLayout_addAnchors".}
proc fcQGraphicsAnchorLayout_setHorizontalSpacing(self: pointer, spacing: float64): void {.importc: "QGraphicsAnchorLayout_setHorizontalSpacing".}
proc fcQGraphicsAnchorLayout_setVerticalSpacing(self: pointer, spacing: float64): void {.importc: "QGraphicsAnchorLayout_setVerticalSpacing".}
proc fcQGraphicsAnchorLayout_setSpacing(self: pointer, spacing: float64): void {.importc: "QGraphicsAnchorLayout_setSpacing".}
proc fcQGraphicsAnchorLayout_horizontalSpacing(self: pointer, ): float64 {.importc: "QGraphicsAnchorLayout_horizontalSpacing".}
proc fcQGraphicsAnchorLayout_verticalSpacing(self: pointer, ): float64 {.importc: "QGraphicsAnchorLayout_verticalSpacing".}
proc fcQGraphicsAnchorLayout_removeAt(self: pointer, index: cint): void {.importc: "QGraphicsAnchorLayout_removeAt".}
proc fcQGraphicsAnchorLayout_setGeometry(self: pointer, rect: pointer): void {.importc: "QGraphicsAnchorLayout_setGeometry".}
proc fcQGraphicsAnchorLayout_count(self: pointer, ): cint {.importc: "QGraphicsAnchorLayout_count".}
proc fcQGraphicsAnchorLayout_itemAt(self: pointer, index: cint): pointer {.importc: "QGraphicsAnchorLayout_itemAt".}
proc fcQGraphicsAnchorLayout_invalidate(self: pointer, ): void {.importc: "QGraphicsAnchorLayout_invalidate".}
proc fcQGraphicsAnchorLayout_addAnchors3(self: pointer, firstItem: pointer, secondItem: pointer, orientations: cint): void {.importc: "QGraphicsAnchorLayout_addAnchors3".}
proc fQGraphicsAnchorLayout_virtualbase_removeAt(self: pointer, index: cint): void{.importc: "QGraphicsAnchorLayout_virtualbase_removeAt".}
proc fcQGraphicsAnchorLayout_override_virtual_removeAt(self: pointer, slot: int) {.importc: "QGraphicsAnchorLayout_override_virtual_removeAt".}
proc fQGraphicsAnchorLayout_virtualbase_setGeometry(self: pointer, rect: pointer): void{.importc: "QGraphicsAnchorLayout_virtualbase_setGeometry".}
proc fcQGraphicsAnchorLayout_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QGraphicsAnchorLayout_override_virtual_setGeometry".}
proc fQGraphicsAnchorLayout_virtualbase_count(self: pointer, ): cint{.importc: "QGraphicsAnchorLayout_virtualbase_count".}
proc fcQGraphicsAnchorLayout_override_virtual_count(self: pointer, slot: int) {.importc: "QGraphicsAnchorLayout_override_virtual_count".}
proc fQGraphicsAnchorLayout_virtualbase_itemAt(self: pointer, index: cint): pointer{.importc: "QGraphicsAnchorLayout_virtualbase_itemAt".}
proc fcQGraphicsAnchorLayout_override_virtual_itemAt(self: pointer, slot: int) {.importc: "QGraphicsAnchorLayout_override_virtual_itemAt".}
proc fQGraphicsAnchorLayout_virtualbase_invalidate(self: pointer, ): void{.importc: "QGraphicsAnchorLayout_virtualbase_invalidate".}
proc fcQGraphicsAnchorLayout_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QGraphicsAnchorLayout_override_virtual_invalidate".}
proc fQGraphicsAnchorLayout_virtualbase_sizeHint(self: pointer, which: cint, constraint: pointer): pointer{.importc: "QGraphicsAnchorLayout_virtualbase_sizeHint".}
proc fcQGraphicsAnchorLayout_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QGraphicsAnchorLayout_override_virtual_sizeHint".}
proc fQGraphicsAnchorLayout_virtualbase_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void{.importc: "QGraphicsAnchorLayout_virtualbase_getContentsMargins".}
proc fcQGraphicsAnchorLayout_override_virtual_getContentsMargins(self: pointer, slot: int) {.importc: "QGraphicsAnchorLayout_override_virtual_getContentsMargins".}
proc fQGraphicsAnchorLayout_virtualbase_updateGeometry(self: pointer, ): void{.importc: "QGraphicsAnchorLayout_virtualbase_updateGeometry".}
proc fcQGraphicsAnchorLayout_override_virtual_updateGeometry(self: pointer, slot: int) {.importc: "QGraphicsAnchorLayout_override_virtual_updateGeometry".}
proc fQGraphicsAnchorLayout_virtualbase_widgetEvent(self: pointer, e: pointer): void{.importc: "QGraphicsAnchorLayout_virtualbase_widgetEvent".}
proc fcQGraphicsAnchorLayout_override_virtual_widgetEvent(self: pointer, slot: int) {.importc: "QGraphicsAnchorLayout_override_virtual_widgetEvent".}
proc fQGraphicsAnchorLayout_virtualbase_isEmpty(self: pointer, ): bool{.importc: "QGraphicsAnchorLayout_virtualbase_isEmpty".}
proc fcQGraphicsAnchorLayout_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QGraphicsAnchorLayout_override_virtual_isEmpty".}
proc fcQGraphicsAnchorLayout_delete(self: pointer) {.importc: "QGraphicsAnchorLayout_delete".}


func init*(T: type QGraphicsAnchor, h: ptr cQGraphicsAnchor): QGraphicsAnchor =
  T(h: h)
proc metaObject*(self: QGraphicsAnchor, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQGraphicsAnchor_metaObject(self.h))

proc metacast*(self: QGraphicsAnchor, param1: cstring): pointer =

  fcQGraphicsAnchor_metacast(self.h, param1)

proc metacall*(self: QGraphicsAnchor, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQGraphicsAnchor_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QGraphicsAnchor, s: cstring): string =

  let v_ms = fcQGraphicsAnchor_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSpacing*(self: QGraphicsAnchor, spacing: float64): void =

  fcQGraphicsAnchor_setSpacing(self.h, spacing)

proc unsetSpacing*(self: QGraphicsAnchor, ): void =

  fcQGraphicsAnchor_unsetSpacing(self.h)

proc spacing*(self: QGraphicsAnchor, ): float64 =

  fcQGraphicsAnchor_spacing(self.h)

proc setSizePolicy*(self: QGraphicsAnchor, policy: gen_qsizepolicy.QSizePolicyPolicy): void =

  fcQGraphicsAnchor_setSizePolicy(self.h, cint(policy))

proc sizePolicy*(self: QGraphicsAnchor, ): gen_qsizepolicy.QSizePolicyPolicy =

  gen_qsizepolicy.QSizePolicyPolicy(fcQGraphicsAnchor_sizePolicy(self.h))

proc tr2*(_: type QGraphicsAnchor, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsAnchor_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QGraphicsAnchor, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsAnchor_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QGraphicsAnchor) =
  fcQGraphicsAnchor_delete(self.h)

func init*(T: type QGraphicsAnchorLayout, h: ptr cQGraphicsAnchorLayout): QGraphicsAnchorLayout =
  T(h: h)
proc create*(T: type QGraphicsAnchorLayout, ): QGraphicsAnchorLayout =

  QGraphicsAnchorLayout.init(fcQGraphicsAnchorLayout_new())
proc create*(T: type QGraphicsAnchorLayout, parent: gen_qgraphicslayoutitem.QGraphicsLayoutItem): QGraphicsAnchorLayout =

  QGraphicsAnchorLayout.init(fcQGraphicsAnchorLayout_new2(parent.h))
proc addAnchor*(self: QGraphicsAnchorLayout, firstItem: gen_qgraphicslayoutitem.QGraphicsLayoutItem, firstEdge: gen_qnamespace.AnchorPoint, secondItem: gen_qgraphicslayoutitem.QGraphicsLayoutItem, secondEdge: gen_qnamespace.AnchorPoint): QGraphicsAnchor =

  QGraphicsAnchor(h: fcQGraphicsAnchorLayout_addAnchor(self.h, firstItem.h, cint(firstEdge), secondItem.h, cint(secondEdge)))

proc anchor*(self: QGraphicsAnchorLayout, firstItem: gen_qgraphicslayoutitem.QGraphicsLayoutItem, firstEdge: gen_qnamespace.AnchorPoint, secondItem: gen_qgraphicslayoutitem.QGraphicsLayoutItem, secondEdge: gen_qnamespace.AnchorPoint): QGraphicsAnchor =

  QGraphicsAnchor(h: fcQGraphicsAnchorLayout_anchor(self.h, firstItem.h, cint(firstEdge), secondItem.h, cint(secondEdge)))

proc addCornerAnchors*(self: QGraphicsAnchorLayout, firstItem: gen_qgraphicslayoutitem.QGraphicsLayoutItem, firstCorner: gen_qnamespace.Corner, secondItem: gen_qgraphicslayoutitem.QGraphicsLayoutItem, secondCorner: gen_qnamespace.Corner): void =

  fcQGraphicsAnchorLayout_addCornerAnchors(self.h, firstItem.h, cint(firstCorner), secondItem.h, cint(secondCorner))

proc addAnchors*(self: QGraphicsAnchorLayout, firstItem: gen_qgraphicslayoutitem.QGraphicsLayoutItem, secondItem: gen_qgraphicslayoutitem.QGraphicsLayoutItem): void =

  fcQGraphicsAnchorLayout_addAnchors(self.h, firstItem.h, secondItem.h)

proc setHorizontalSpacing*(self: QGraphicsAnchorLayout, spacing: float64): void =

  fcQGraphicsAnchorLayout_setHorizontalSpacing(self.h, spacing)

proc setVerticalSpacing*(self: QGraphicsAnchorLayout, spacing: float64): void =

  fcQGraphicsAnchorLayout_setVerticalSpacing(self.h, spacing)

proc setSpacing*(self: QGraphicsAnchorLayout, spacing: float64): void =

  fcQGraphicsAnchorLayout_setSpacing(self.h, spacing)

proc horizontalSpacing*(self: QGraphicsAnchorLayout, ): float64 =

  fcQGraphicsAnchorLayout_horizontalSpacing(self.h)

proc verticalSpacing*(self: QGraphicsAnchorLayout, ): float64 =

  fcQGraphicsAnchorLayout_verticalSpacing(self.h)

proc removeAt*(self: QGraphicsAnchorLayout, index: cint): void =

  fcQGraphicsAnchorLayout_removeAt(self.h, index)

proc setGeometry*(self: QGraphicsAnchorLayout, rect: gen_qrect.QRectF): void =

  fcQGraphicsAnchorLayout_setGeometry(self.h, rect.h)

proc count*(self: QGraphicsAnchorLayout, ): cint =

  fcQGraphicsAnchorLayout_count(self.h)

proc itemAt*(self: QGraphicsAnchorLayout, index: cint): gen_qgraphicslayoutitem.QGraphicsLayoutItem =

  gen_qgraphicslayoutitem.QGraphicsLayoutItem(h: fcQGraphicsAnchorLayout_itemAt(self.h, index))

proc invalidate*(self: QGraphicsAnchorLayout, ): void =

  fcQGraphicsAnchorLayout_invalidate(self.h)

proc addAnchors3*(self: QGraphicsAnchorLayout, firstItem: gen_qgraphicslayoutitem.QGraphicsLayoutItem, secondItem: gen_qgraphicslayoutitem.QGraphicsLayoutItem, orientations: gen_qnamespace.Orientation): void =

  fcQGraphicsAnchorLayout_addAnchors3(self.h, firstItem.h, secondItem.h, cint(orientations))

proc callVirtualBase_removeAt(self: QGraphicsAnchorLayout, index: cint): void =


  fQGraphicsAnchorLayout_virtualbase_removeAt(self.h, index)

type QGraphicsAnchorLayoutremoveAtBase* = proc(index: cint): void
proc onremoveAt*(self: QGraphicsAnchorLayout, slot: proc(super: QGraphicsAnchorLayoutremoveAtBase, index: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsAnchorLayoutremoveAtBase, index: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsAnchorLayout_override_virtual_removeAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsAnchorLayout_removeAt(self: ptr cQGraphicsAnchorLayout, slot: int, index: cint): void {.exportc: "miqt_exec_callback_QGraphicsAnchorLayout_removeAt ".} =
  type Cb = proc(super: QGraphicsAnchorLayoutremoveAtBase, index: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: cint): auto =
    callVirtualBase_removeAt(QGraphicsAnchorLayout(h: self), index)
  let slotval1 = index


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setGeometry(self: QGraphicsAnchorLayout, rect: gen_qrect.QRectF): void =


  fQGraphicsAnchorLayout_virtualbase_setGeometry(self.h, rect.h)

type QGraphicsAnchorLayoutsetGeometryBase* = proc(rect: gen_qrect.QRectF): void
proc onsetGeometry*(self: QGraphicsAnchorLayout, slot: proc(super: QGraphicsAnchorLayoutsetGeometryBase, rect: gen_qrect.QRectF): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsAnchorLayoutsetGeometryBase, rect: gen_qrect.QRectF): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsAnchorLayout_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsAnchorLayout_setGeometry(self: ptr cQGraphicsAnchorLayout, slot: int, rect: pointer): void {.exportc: "miqt_exec_callback_QGraphicsAnchorLayout_setGeometry ".} =
  type Cb = proc(super: QGraphicsAnchorLayoutsetGeometryBase, rect: gen_qrect.QRectF): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(rect: gen_qrect.QRectF): auto =
    callVirtualBase_setGeometry(QGraphicsAnchorLayout(h: self), rect)
  let slotval1 = gen_qrect.QRectF(h: rect)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_count(self: QGraphicsAnchorLayout, ): cint =


  fQGraphicsAnchorLayout_virtualbase_count(self.h)

type QGraphicsAnchorLayoutcountBase* = proc(): cint
proc oncount*(self: QGraphicsAnchorLayout, slot: proc(super: QGraphicsAnchorLayoutcountBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsAnchorLayoutcountBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsAnchorLayout_override_virtual_count(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsAnchorLayout_count(self: ptr cQGraphicsAnchorLayout, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsAnchorLayout_count ".} =
  type Cb = proc(super: QGraphicsAnchorLayoutcountBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_count(QGraphicsAnchorLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_itemAt(self: QGraphicsAnchorLayout, index: cint): gen_qgraphicslayoutitem.QGraphicsLayoutItem =


  gen_qgraphicslayoutitem.QGraphicsLayoutItem(h: fQGraphicsAnchorLayout_virtualbase_itemAt(self.h, index))

type QGraphicsAnchorLayoutitemAtBase* = proc(index: cint): gen_qgraphicslayoutitem.QGraphicsLayoutItem
proc onitemAt*(self: QGraphicsAnchorLayout, slot: proc(super: QGraphicsAnchorLayoutitemAtBase, index: cint): gen_qgraphicslayoutitem.QGraphicsLayoutItem) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsAnchorLayoutitemAtBase, index: cint): gen_qgraphicslayoutitem.QGraphicsLayoutItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsAnchorLayout_override_virtual_itemAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsAnchorLayout_itemAt(self: ptr cQGraphicsAnchorLayout, slot: int, index: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsAnchorLayout_itemAt ".} =
  type Cb = proc(super: QGraphicsAnchorLayoutitemAtBase, index: cint): gen_qgraphicslayoutitem.QGraphicsLayoutItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: cint): auto =
    callVirtualBase_itemAt(QGraphicsAnchorLayout(h: self), index)
  let slotval1 = index


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_invalidate(self: QGraphicsAnchorLayout, ): void =


  fQGraphicsAnchorLayout_virtualbase_invalidate(self.h)

type QGraphicsAnchorLayoutinvalidateBase* = proc(): void
proc oninvalidate*(self: QGraphicsAnchorLayout, slot: proc(super: QGraphicsAnchorLayoutinvalidateBase): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsAnchorLayoutinvalidateBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsAnchorLayout_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsAnchorLayout_invalidate(self: ptr cQGraphicsAnchorLayout, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsAnchorLayout_invalidate ".} =
  type Cb = proc(super: QGraphicsAnchorLayoutinvalidateBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_invalidate(QGraphicsAnchorLayout(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_sizeHint(self: QGraphicsAnchorLayout, which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF =


  gen_qsize.QSizeF(h: fQGraphicsAnchorLayout_virtualbase_sizeHint(self.h, cint(which), constraint.h))

type QGraphicsAnchorLayoutsizeHintBase* = proc(which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF
proc onsizeHint*(self: QGraphicsAnchorLayout, slot: proc(super: QGraphicsAnchorLayoutsizeHintBase, which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsAnchorLayoutsizeHintBase, which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsAnchorLayout_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsAnchorLayout_sizeHint(self: ptr cQGraphicsAnchorLayout, slot: int, which: cint, constraint: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsAnchorLayout_sizeHint ".} =
  type Cb = proc(super: QGraphicsAnchorLayoutsizeHintBase, which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): auto =
    callVirtualBase_sizeHint(QGraphicsAnchorLayout(h: self), which, constraint)
  let slotval1 = gen_qnamespace.SizeHint(which)

  let slotval2 = gen_qsize.QSizeF(h: constraint)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_getContentsMargins(self: QGraphicsAnchorLayout, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =


  fQGraphicsAnchorLayout_virtualbase_getContentsMargins(self.h, left, top, right, bottom)

type QGraphicsAnchorLayoutgetContentsMarginsBase* = proc(left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
proc ongetContentsMargins*(self: QGraphicsAnchorLayout, slot: proc(super: QGraphicsAnchorLayoutgetContentsMarginsBase, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsAnchorLayoutgetContentsMarginsBase, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsAnchorLayout_override_virtual_getContentsMargins(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsAnchorLayout_getContentsMargins(self: ptr cQGraphicsAnchorLayout, slot: int, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.exportc: "miqt_exec_callback_QGraphicsAnchorLayout_getContentsMargins ".} =
  type Cb = proc(super: QGraphicsAnchorLayoutgetContentsMarginsBase, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): auto =
    callVirtualBase_getContentsMargins(QGraphicsAnchorLayout(h: self), left, top, right, bottom)
  let slotval1 = left

  let slotval2 = top

  let slotval3 = right

  let slotval4 = bottom


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_updateGeometry(self: QGraphicsAnchorLayout, ): void =


  fQGraphicsAnchorLayout_virtualbase_updateGeometry(self.h)

type QGraphicsAnchorLayoutupdateGeometryBase* = proc(): void
proc onupdateGeometry*(self: QGraphicsAnchorLayout, slot: proc(super: QGraphicsAnchorLayoutupdateGeometryBase): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsAnchorLayoutupdateGeometryBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsAnchorLayout_override_virtual_updateGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsAnchorLayout_updateGeometry(self: ptr cQGraphicsAnchorLayout, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsAnchorLayout_updateGeometry ".} =
  type Cb = proc(super: QGraphicsAnchorLayoutupdateGeometryBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateGeometry(QGraphicsAnchorLayout(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_widgetEvent(self: QGraphicsAnchorLayout, e: gen_qcoreevent.QEvent): void =


  fQGraphicsAnchorLayout_virtualbase_widgetEvent(self.h, e.h)

type QGraphicsAnchorLayoutwidgetEventBase* = proc(e: gen_qcoreevent.QEvent): void
proc onwidgetEvent*(self: QGraphicsAnchorLayout, slot: proc(super: QGraphicsAnchorLayoutwidgetEventBase, e: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsAnchorLayoutwidgetEventBase, e: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsAnchorLayout_override_virtual_widgetEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsAnchorLayout_widgetEvent(self: ptr cQGraphicsAnchorLayout, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QGraphicsAnchorLayout_widgetEvent ".} =
  type Cb = proc(super: QGraphicsAnchorLayoutwidgetEventBase, e: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_widgetEvent(QGraphicsAnchorLayout(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_isEmpty(self: QGraphicsAnchorLayout, ): bool =


  fQGraphicsAnchorLayout_virtualbase_isEmpty(self.h)

type QGraphicsAnchorLayoutisEmptyBase* = proc(): bool
proc onisEmpty*(self: QGraphicsAnchorLayout, slot: proc(super: QGraphicsAnchorLayoutisEmptyBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsAnchorLayoutisEmptyBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsAnchorLayout_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsAnchorLayout_isEmpty(self: ptr cQGraphicsAnchorLayout, slot: int): bool {.exportc: "miqt_exec_callback_QGraphicsAnchorLayout_isEmpty ".} =
  type Cb = proc(super: QGraphicsAnchorLayoutisEmptyBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isEmpty(QGraphicsAnchorLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc delete*(self: QGraphicsAnchorLayout) =
  fcQGraphicsAnchorLayout_delete(self.h)
