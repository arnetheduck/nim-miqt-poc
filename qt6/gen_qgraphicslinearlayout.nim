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
{.compile("gen_qgraphicslinearlayout.cpp", cflags).}


import gen_qgraphicslinearlayout_types
export gen_qgraphicslinearlayout_types

import
  gen_qcoreevent,
  gen_qgraphicslayout,
  gen_qgraphicslayoutitem,
  gen_qnamespace,
  gen_qrect,
  gen_qsize
export
  gen_qcoreevent,
  gen_qgraphicslayout,
  gen_qgraphicslayoutitem,
  gen_qnamespace,
  gen_qrect,
  gen_qsize

type cQGraphicsLinearLayout*{.exportc: "QGraphicsLinearLayout", incompleteStruct.} = object

proc fcQGraphicsLinearLayout_new(): ptr cQGraphicsLinearLayout {.importc: "QGraphicsLinearLayout_new".}
proc fcQGraphicsLinearLayout_new2(orientation: cint): ptr cQGraphicsLinearLayout {.importc: "QGraphicsLinearLayout_new2".}
proc fcQGraphicsLinearLayout_new3(parent: pointer): ptr cQGraphicsLinearLayout {.importc: "QGraphicsLinearLayout_new3".}
proc fcQGraphicsLinearLayout_new4(orientation: cint, parent: pointer): ptr cQGraphicsLinearLayout {.importc: "QGraphicsLinearLayout_new4".}
proc fcQGraphicsLinearLayout_setOrientation(self: pointer, orientation: cint): void {.importc: "QGraphicsLinearLayout_setOrientation".}
proc fcQGraphicsLinearLayout_orientation(self: pointer, ): cint {.importc: "QGraphicsLinearLayout_orientation".}
proc fcQGraphicsLinearLayout_addItem(self: pointer, item: pointer): void {.importc: "QGraphicsLinearLayout_addItem".}
proc fcQGraphicsLinearLayout_addStretch(self: pointer, ): void {.importc: "QGraphicsLinearLayout_addStretch".}
proc fcQGraphicsLinearLayout_insertItem(self: pointer, index: cint, item: pointer): void {.importc: "QGraphicsLinearLayout_insertItem".}
proc fcQGraphicsLinearLayout_insertStretch(self: pointer, index: cint): void {.importc: "QGraphicsLinearLayout_insertStretch".}
proc fcQGraphicsLinearLayout_removeItem(self: pointer, item: pointer): void {.importc: "QGraphicsLinearLayout_removeItem".}
proc fcQGraphicsLinearLayout_removeAt(self: pointer, index: cint): void {.importc: "QGraphicsLinearLayout_removeAt".}
proc fcQGraphicsLinearLayout_setSpacing(self: pointer, spacing: float64): void {.importc: "QGraphicsLinearLayout_setSpacing".}
proc fcQGraphicsLinearLayout_spacing(self: pointer, ): float64 {.importc: "QGraphicsLinearLayout_spacing".}
proc fcQGraphicsLinearLayout_setItemSpacing(self: pointer, index: cint, spacing: float64): void {.importc: "QGraphicsLinearLayout_setItemSpacing".}
proc fcQGraphicsLinearLayout_itemSpacing(self: pointer, index: cint): float64 {.importc: "QGraphicsLinearLayout_itemSpacing".}
proc fcQGraphicsLinearLayout_setStretchFactor(self: pointer, item: pointer, stretch: cint): void {.importc: "QGraphicsLinearLayout_setStretchFactor".}
proc fcQGraphicsLinearLayout_stretchFactor(self: pointer, item: pointer): cint {.importc: "QGraphicsLinearLayout_stretchFactor".}
proc fcQGraphicsLinearLayout_setAlignment(self: pointer, item: pointer, alignment: cint): void {.importc: "QGraphicsLinearLayout_setAlignment".}
proc fcQGraphicsLinearLayout_alignment(self: pointer, item: pointer): cint {.importc: "QGraphicsLinearLayout_alignment".}
proc fcQGraphicsLinearLayout_setGeometry(self: pointer, rect: pointer): void {.importc: "QGraphicsLinearLayout_setGeometry".}
proc fcQGraphicsLinearLayout_count(self: pointer, ): cint {.importc: "QGraphicsLinearLayout_count".}
proc fcQGraphicsLinearLayout_itemAt(self: pointer, index: cint): pointer {.importc: "QGraphicsLinearLayout_itemAt".}
proc fcQGraphicsLinearLayout_invalidate(self: pointer, ): void {.importc: "QGraphicsLinearLayout_invalidate".}
proc fcQGraphicsLinearLayout_sizeHint(self: pointer, which: cint, constraint: pointer): pointer {.importc: "QGraphicsLinearLayout_sizeHint".}
proc fcQGraphicsLinearLayout_dump(self: pointer, ): void {.importc: "QGraphicsLinearLayout_dump".}
proc fcQGraphicsLinearLayout_addStretch1(self: pointer, stretch: cint): void {.importc: "QGraphicsLinearLayout_addStretch1".}
proc fcQGraphicsLinearLayout_insertStretch2(self: pointer, index: cint, stretch: cint): void {.importc: "QGraphicsLinearLayout_insertStretch2".}
proc fcQGraphicsLinearLayout_dump1(self: pointer, indent: cint): void {.importc: "QGraphicsLinearLayout_dump1".}
proc fQGraphicsLinearLayout_virtualbase_removeAt(self: pointer, index: cint): void{.importc: "QGraphicsLinearLayout_virtualbase_removeAt".}
proc fcQGraphicsLinearLayout_override_virtual_removeAt(self: pointer, slot: int) {.importc: "QGraphicsLinearLayout_override_virtual_removeAt".}
proc fQGraphicsLinearLayout_virtualbase_setGeometry(self: pointer, rect: pointer): void{.importc: "QGraphicsLinearLayout_virtualbase_setGeometry".}
proc fcQGraphicsLinearLayout_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QGraphicsLinearLayout_override_virtual_setGeometry".}
proc fQGraphicsLinearLayout_virtualbase_count(self: pointer, ): cint{.importc: "QGraphicsLinearLayout_virtualbase_count".}
proc fcQGraphicsLinearLayout_override_virtual_count(self: pointer, slot: int) {.importc: "QGraphicsLinearLayout_override_virtual_count".}
proc fQGraphicsLinearLayout_virtualbase_itemAt(self: pointer, index: cint): pointer{.importc: "QGraphicsLinearLayout_virtualbase_itemAt".}
proc fcQGraphicsLinearLayout_override_virtual_itemAt(self: pointer, slot: int) {.importc: "QGraphicsLinearLayout_override_virtual_itemAt".}
proc fQGraphicsLinearLayout_virtualbase_invalidate(self: pointer, ): void{.importc: "QGraphicsLinearLayout_virtualbase_invalidate".}
proc fcQGraphicsLinearLayout_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QGraphicsLinearLayout_override_virtual_invalidate".}
proc fQGraphicsLinearLayout_virtualbase_sizeHint(self: pointer, which: cint, constraint: pointer): pointer{.importc: "QGraphicsLinearLayout_virtualbase_sizeHint".}
proc fcQGraphicsLinearLayout_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QGraphicsLinearLayout_override_virtual_sizeHint".}
proc fQGraphicsLinearLayout_virtualbase_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void{.importc: "QGraphicsLinearLayout_virtualbase_getContentsMargins".}
proc fcQGraphicsLinearLayout_override_virtual_getContentsMargins(self: pointer, slot: int) {.importc: "QGraphicsLinearLayout_override_virtual_getContentsMargins".}
proc fQGraphicsLinearLayout_virtualbase_updateGeometry(self: pointer, ): void{.importc: "QGraphicsLinearLayout_virtualbase_updateGeometry".}
proc fcQGraphicsLinearLayout_override_virtual_updateGeometry(self: pointer, slot: int) {.importc: "QGraphicsLinearLayout_override_virtual_updateGeometry".}
proc fQGraphicsLinearLayout_virtualbase_widgetEvent(self: pointer, e: pointer): void{.importc: "QGraphicsLinearLayout_virtualbase_widgetEvent".}
proc fcQGraphicsLinearLayout_override_virtual_widgetEvent(self: pointer, slot: int) {.importc: "QGraphicsLinearLayout_override_virtual_widgetEvent".}
proc fQGraphicsLinearLayout_virtualbase_isEmpty(self: pointer, ): bool{.importc: "QGraphicsLinearLayout_virtualbase_isEmpty".}
proc fcQGraphicsLinearLayout_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QGraphicsLinearLayout_override_virtual_isEmpty".}
proc fcQGraphicsLinearLayout_delete(self: pointer) {.importc: "QGraphicsLinearLayout_delete".}


func init*(T: type QGraphicsLinearLayout, h: ptr cQGraphicsLinearLayout): QGraphicsLinearLayout =
  T(h: h)
proc create*(T: type QGraphicsLinearLayout, ): QGraphicsLinearLayout =

  QGraphicsLinearLayout.init(fcQGraphicsLinearLayout_new())
proc create*(T: type QGraphicsLinearLayout, orientation: gen_qnamespace.Orientation): QGraphicsLinearLayout =

  QGraphicsLinearLayout.init(fcQGraphicsLinearLayout_new2(cint(orientation)))
proc create*(T: type QGraphicsLinearLayout, parent: gen_qgraphicslayoutitem.QGraphicsLayoutItem): QGraphicsLinearLayout =

  QGraphicsLinearLayout.init(fcQGraphicsLinearLayout_new3(parent.h))
proc create*(T: type QGraphicsLinearLayout, orientation: gen_qnamespace.Orientation, parent: gen_qgraphicslayoutitem.QGraphicsLayoutItem): QGraphicsLinearLayout =

  QGraphicsLinearLayout.init(fcQGraphicsLinearLayout_new4(cint(orientation), parent.h))
proc setOrientation*(self: QGraphicsLinearLayout, orientation: gen_qnamespace.Orientation): void =

  fcQGraphicsLinearLayout_setOrientation(self.h, cint(orientation))

proc orientation*(self: QGraphicsLinearLayout, ): gen_qnamespace.Orientation =

  gen_qnamespace.Orientation(fcQGraphicsLinearLayout_orientation(self.h))

proc addItem*(self: QGraphicsLinearLayout, item: gen_qgraphicslayoutitem.QGraphicsLayoutItem): void =

  fcQGraphicsLinearLayout_addItem(self.h, item.h)

proc addStretch*(self: QGraphicsLinearLayout, ): void =

  fcQGraphicsLinearLayout_addStretch(self.h)

proc insertItem*(self: QGraphicsLinearLayout, index: cint, item: gen_qgraphicslayoutitem.QGraphicsLayoutItem): void =

  fcQGraphicsLinearLayout_insertItem(self.h, index, item.h)

proc insertStretch*(self: QGraphicsLinearLayout, index: cint): void =

  fcQGraphicsLinearLayout_insertStretch(self.h, index)

proc removeItem*(self: QGraphicsLinearLayout, item: gen_qgraphicslayoutitem.QGraphicsLayoutItem): void =

  fcQGraphicsLinearLayout_removeItem(self.h, item.h)

proc removeAt*(self: QGraphicsLinearLayout, index: cint): void =

  fcQGraphicsLinearLayout_removeAt(self.h, index)

proc setSpacing*(self: QGraphicsLinearLayout, spacing: float64): void =

  fcQGraphicsLinearLayout_setSpacing(self.h, spacing)

proc spacing*(self: QGraphicsLinearLayout, ): float64 =

  fcQGraphicsLinearLayout_spacing(self.h)

proc setItemSpacing*(self: QGraphicsLinearLayout, index: cint, spacing: float64): void =

  fcQGraphicsLinearLayout_setItemSpacing(self.h, index, spacing)

proc itemSpacing*(self: QGraphicsLinearLayout, index: cint): float64 =

  fcQGraphicsLinearLayout_itemSpacing(self.h, index)

proc setStretchFactor*(self: QGraphicsLinearLayout, item: gen_qgraphicslayoutitem.QGraphicsLayoutItem, stretch: cint): void =

  fcQGraphicsLinearLayout_setStretchFactor(self.h, item.h, stretch)

proc stretchFactor*(self: QGraphicsLinearLayout, item: gen_qgraphicslayoutitem.QGraphicsLayoutItem): cint =

  fcQGraphicsLinearLayout_stretchFactor(self.h, item.h)

proc setAlignment*(self: QGraphicsLinearLayout, item: gen_qgraphicslayoutitem.QGraphicsLayoutItem, alignment: gen_qnamespace.AlignmentFlag): void =

  fcQGraphicsLinearLayout_setAlignment(self.h, item.h, cint(alignment))

proc alignment*(self: QGraphicsLinearLayout, item: gen_qgraphicslayoutitem.QGraphicsLayoutItem): gen_qnamespace.AlignmentFlag =

  gen_qnamespace.AlignmentFlag(fcQGraphicsLinearLayout_alignment(self.h, item.h))

proc setGeometry*(self: QGraphicsLinearLayout, rect: gen_qrect.QRectF): void =

  fcQGraphicsLinearLayout_setGeometry(self.h, rect.h)

proc count*(self: QGraphicsLinearLayout, ): cint =

  fcQGraphicsLinearLayout_count(self.h)

proc itemAt*(self: QGraphicsLinearLayout, index: cint): gen_qgraphicslayoutitem.QGraphicsLayoutItem =

  gen_qgraphicslayoutitem.QGraphicsLayoutItem(h: fcQGraphicsLinearLayout_itemAt(self.h, index))

proc invalidate*(self: QGraphicsLinearLayout, ): void =

  fcQGraphicsLinearLayout_invalidate(self.h)

proc sizeHint*(self: QGraphicsLinearLayout, which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQGraphicsLinearLayout_sizeHint(self.h, cint(which), constraint.h))

proc dump*(self: QGraphicsLinearLayout, ): void =

  fcQGraphicsLinearLayout_dump(self.h)

proc addStretch1*(self: QGraphicsLinearLayout, stretch: cint): void =

  fcQGraphicsLinearLayout_addStretch1(self.h, stretch)

proc insertStretch2*(self: QGraphicsLinearLayout, index: cint, stretch: cint): void =

  fcQGraphicsLinearLayout_insertStretch2(self.h, index, stretch)

proc dump1*(self: QGraphicsLinearLayout, indent: cint): void =

  fcQGraphicsLinearLayout_dump1(self.h, indent)

proc callVirtualBase_removeAt(self: QGraphicsLinearLayout, index: cint): void =


  fQGraphicsLinearLayout_virtualbase_removeAt(self.h, index)

type QGraphicsLinearLayoutremoveAtBase* = proc(index: cint): void
proc onremoveAt*(self: QGraphicsLinearLayout, slot: proc(super: QGraphicsLinearLayoutremoveAtBase, index: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLinearLayoutremoveAtBase, index: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLinearLayout_override_virtual_removeAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLinearLayout_removeAt(self: ptr cQGraphicsLinearLayout, slot: int, index: cint): void {.exportc: "miqt_exec_callback_QGraphicsLinearLayout_removeAt ".} =
  type Cb = proc(super: QGraphicsLinearLayoutremoveAtBase, index: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: cint): auto =
    callVirtualBase_removeAt(QGraphicsLinearLayout(h: self), index)
  let slotval1 = index


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setGeometry(self: QGraphicsLinearLayout, rect: gen_qrect.QRectF): void =


  fQGraphicsLinearLayout_virtualbase_setGeometry(self.h, rect.h)

type QGraphicsLinearLayoutsetGeometryBase* = proc(rect: gen_qrect.QRectF): void
proc onsetGeometry*(self: QGraphicsLinearLayout, slot: proc(super: QGraphicsLinearLayoutsetGeometryBase, rect: gen_qrect.QRectF): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLinearLayoutsetGeometryBase, rect: gen_qrect.QRectF): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLinearLayout_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLinearLayout_setGeometry(self: ptr cQGraphicsLinearLayout, slot: int, rect: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLinearLayout_setGeometry ".} =
  type Cb = proc(super: QGraphicsLinearLayoutsetGeometryBase, rect: gen_qrect.QRectF): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(rect: gen_qrect.QRectF): auto =
    callVirtualBase_setGeometry(QGraphicsLinearLayout(h: self), rect)
  let slotval1 = gen_qrect.QRectF(h: rect)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_count(self: QGraphicsLinearLayout, ): cint =


  fQGraphicsLinearLayout_virtualbase_count(self.h)

type QGraphicsLinearLayoutcountBase* = proc(): cint
proc oncount*(self: QGraphicsLinearLayout, slot: proc(super: QGraphicsLinearLayoutcountBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLinearLayoutcountBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLinearLayout_override_virtual_count(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLinearLayout_count(self: ptr cQGraphicsLinearLayout, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsLinearLayout_count ".} =
  type Cb = proc(super: QGraphicsLinearLayoutcountBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_count(QGraphicsLinearLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_itemAt(self: QGraphicsLinearLayout, index: cint): gen_qgraphicslayoutitem.QGraphicsLayoutItem =


  gen_qgraphicslayoutitem.QGraphicsLayoutItem(h: fQGraphicsLinearLayout_virtualbase_itemAt(self.h, index))

type QGraphicsLinearLayoutitemAtBase* = proc(index: cint): gen_qgraphicslayoutitem.QGraphicsLayoutItem
proc onitemAt*(self: QGraphicsLinearLayout, slot: proc(super: QGraphicsLinearLayoutitemAtBase, index: cint): gen_qgraphicslayoutitem.QGraphicsLayoutItem) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLinearLayoutitemAtBase, index: cint): gen_qgraphicslayoutitem.QGraphicsLayoutItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLinearLayout_override_virtual_itemAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLinearLayout_itemAt(self: ptr cQGraphicsLinearLayout, slot: int, index: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsLinearLayout_itemAt ".} =
  type Cb = proc(super: QGraphicsLinearLayoutitemAtBase, index: cint): gen_qgraphicslayoutitem.QGraphicsLayoutItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: cint): auto =
    callVirtualBase_itemAt(QGraphicsLinearLayout(h: self), index)
  let slotval1 = index


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_invalidate(self: QGraphicsLinearLayout, ): void =


  fQGraphicsLinearLayout_virtualbase_invalidate(self.h)

type QGraphicsLinearLayoutinvalidateBase* = proc(): void
proc oninvalidate*(self: QGraphicsLinearLayout, slot: proc(super: QGraphicsLinearLayoutinvalidateBase): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLinearLayoutinvalidateBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLinearLayout_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLinearLayout_invalidate(self: ptr cQGraphicsLinearLayout, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsLinearLayout_invalidate ".} =
  type Cb = proc(super: QGraphicsLinearLayoutinvalidateBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_invalidate(QGraphicsLinearLayout(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_sizeHint(self: QGraphicsLinearLayout, which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF =


  gen_qsize.QSizeF(h: fQGraphicsLinearLayout_virtualbase_sizeHint(self.h, cint(which), constraint.h))

type QGraphicsLinearLayoutsizeHintBase* = proc(which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF
proc onsizeHint*(self: QGraphicsLinearLayout, slot: proc(super: QGraphicsLinearLayoutsizeHintBase, which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLinearLayoutsizeHintBase, which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLinearLayout_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLinearLayout_sizeHint(self: ptr cQGraphicsLinearLayout, slot: int, which: cint, constraint: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsLinearLayout_sizeHint ".} =
  type Cb = proc(super: QGraphicsLinearLayoutsizeHintBase, which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): auto =
    callVirtualBase_sizeHint(QGraphicsLinearLayout(h: self), which, constraint)
  let slotval1 = gen_qnamespace.SizeHint(which)

  let slotval2 = gen_qsize.QSizeF(h: constraint)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_getContentsMargins(self: QGraphicsLinearLayout, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =


  fQGraphicsLinearLayout_virtualbase_getContentsMargins(self.h, left, top, right, bottom)

type QGraphicsLinearLayoutgetContentsMarginsBase* = proc(left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
proc ongetContentsMargins*(self: QGraphicsLinearLayout, slot: proc(super: QGraphicsLinearLayoutgetContentsMarginsBase, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLinearLayoutgetContentsMarginsBase, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLinearLayout_override_virtual_getContentsMargins(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLinearLayout_getContentsMargins(self: ptr cQGraphicsLinearLayout, slot: int, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.exportc: "miqt_exec_callback_QGraphicsLinearLayout_getContentsMargins ".} =
  type Cb = proc(super: QGraphicsLinearLayoutgetContentsMarginsBase, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): auto =
    callVirtualBase_getContentsMargins(QGraphicsLinearLayout(h: self), left, top, right, bottom)
  let slotval1 = left

  let slotval2 = top

  let slotval3 = right

  let slotval4 = bottom


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_updateGeometry(self: QGraphicsLinearLayout, ): void =


  fQGraphicsLinearLayout_virtualbase_updateGeometry(self.h)

type QGraphicsLinearLayoutupdateGeometryBase* = proc(): void
proc onupdateGeometry*(self: QGraphicsLinearLayout, slot: proc(super: QGraphicsLinearLayoutupdateGeometryBase): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLinearLayoutupdateGeometryBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLinearLayout_override_virtual_updateGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLinearLayout_updateGeometry(self: ptr cQGraphicsLinearLayout, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsLinearLayout_updateGeometry ".} =
  type Cb = proc(super: QGraphicsLinearLayoutupdateGeometryBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateGeometry(QGraphicsLinearLayout(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_widgetEvent(self: QGraphicsLinearLayout, e: gen_qcoreevent.QEvent): void =


  fQGraphicsLinearLayout_virtualbase_widgetEvent(self.h, e.h)

type QGraphicsLinearLayoutwidgetEventBase* = proc(e: gen_qcoreevent.QEvent): void
proc onwidgetEvent*(self: QGraphicsLinearLayout, slot: proc(super: QGraphicsLinearLayoutwidgetEventBase, e: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLinearLayoutwidgetEventBase, e: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLinearLayout_override_virtual_widgetEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLinearLayout_widgetEvent(self: ptr cQGraphicsLinearLayout, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLinearLayout_widgetEvent ".} =
  type Cb = proc(super: QGraphicsLinearLayoutwidgetEventBase, e: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_widgetEvent(QGraphicsLinearLayout(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_isEmpty(self: QGraphicsLinearLayout, ): bool =


  fQGraphicsLinearLayout_virtualbase_isEmpty(self.h)

type QGraphicsLinearLayoutisEmptyBase* = proc(): bool
proc onisEmpty*(self: QGraphicsLinearLayout, slot: proc(super: QGraphicsLinearLayoutisEmptyBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLinearLayoutisEmptyBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLinearLayout_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLinearLayout_isEmpty(self: ptr cQGraphicsLinearLayout, slot: int): bool {.exportc: "miqt_exec_callback_QGraphicsLinearLayout_isEmpty ".} =
  type Cb = proc(super: QGraphicsLinearLayoutisEmptyBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isEmpty(QGraphicsLinearLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc delete*(self: QGraphicsLinearLayout) =
  fcQGraphicsLinearLayout_delete(self.h)
