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
{.compile("gen_qgraphicsgridlayout.cpp", cflags).}


import gen_qgraphicsgridlayout_types
export gen_qgraphicsgridlayout_types

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

type cQGraphicsGridLayout*{.exportc: "QGraphicsGridLayout", incompleteStruct.} = object

proc fcQGraphicsGridLayout_new(): ptr cQGraphicsGridLayout {.importc: "QGraphicsGridLayout_new".}
proc fcQGraphicsGridLayout_new2(parent: pointer): ptr cQGraphicsGridLayout {.importc: "QGraphicsGridLayout_new2".}
proc fcQGraphicsGridLayout_addItem(self: pointer, item: pointer, row: cint, column: cint, rowSpan: cint, columnSpan: cint): void {.importc: "QGraphicsGridLayout_addItem".}
proc fcQGraphicsGridLayout_addItem2(self: pointer, item: pointer, row: cint, column: cint): void {.importc: "QGraphicsGridLayout_addItem2".}
proc fcQGraphicsGridLayout_setHorizontalSpacing(self: pointer, spacing: float64): void {.importc: "QGraphicsGridLayout_setHorizontalSpacing".}
proc fcQGraphicsGridLayout_horizontalSpacing(self: pointer, ): float64 {.importc: "QGraphicsGridLayout_horizontalSpacing".}
proc fcQGraphicsGridLayout_setVerticalSpacing(self: pointer, spacing: float64): void {.importc: "QGraphicsGridLayout_setVerticalSpacing".}
proc fcQGraphicsGridLayout_verticalSpacing(self: pointer, ): float64 {.importc: "QGraphicsGridLayout_verticalSpacing".}
proc fcQGraphicsGridLayout_setSpacing(self: pointer, spacing: float64): void {.importc: "QGraphicsGridLayout_setSpacing".}
proc fcQGraphicsGridLayout_setRowSpacing(self: pointer, row: cint, spacing: float64): void {.importc: "QGraphicsGridLayout_setRowSpacing".}
proc fcQGraphicsGridLayout_rowSpacing(self: pointer, row: cint): float64 {.importc: "QGraphicsGridLayout_rowSpacing".}
proc fcQGraphicsGridLayout_setColumnSpacing(self: pointer, column: cint, spacing: float64): void {.importc: "QGraphicsGridLayout_setColumnSpacing".}
proc fcQGraphicsGridLayout_columnSpacing(self: pointer, column: cint): float64 {.importc: "QGraphicsGridLayout_columnSpacing".}
proc fcQGraphicsGridLayout_setRowStretchFactor(self: pointer, row: cint, stretch: cint): void {.importc: "QGraphicsGridLayout_setRowStretchFactor".}
proc fcQGraphicsGridLayout_rowStretchFactor(self: pointer, row: cint): cint {.importc: "QGraphicsGridLayout_rowStretchFactor".}
proc fcQGraphicsGridLayout_setColumnStretchFactor(self: pointer, column: cint, stretch: cint): void {.importc: "QGraphicsGridLayout_setColumnStretchFactor".}
proc fcQGraphicsGridLayout_columnStretchFactor(self: pointer, column: cint): cint {.importc: "QGraphicsGridLayout_columnStretchFactor".}
proc fcQGraphicsGridLayout_setRowMinimumHeight(self: pointer, row: cint, height: float64): void {.importc: "QGraphicsGridLayout_setRowMinimumHeight".}
proc fcQGraphicsGridLayout_rowMinimumHeight(self: pointer, row: cint): float64 {.importc: "QGraphicsGridLayout_rowMinimumHeight".}
proc fcQGraphicsGridLayout_setRowPreferredHeight(self: pointer, row: cint, height: float64): void {.importc: "QGraphicsGridLayout_setRowPreferredHeight".}
proc fcQGraphicsGridLayout_rowPreferredHeight(self: pointer, row: cint): float64 {.importc: "QGraphicsGridLayout_rowPreferredHeight".}
proc fcQGraphicsGridLayout_setRowMaximumHeight(self: pointer, row: cint, height: float64): void {.importc: "QGraphicsGridLayout_setRowMaximumHeight".}
proc fcQGraphicsGridLayout_rowMaximumHeight(self: pointer, row: cint): float64 {.importc: "QGraphicsGridLayout_rowMaximumHeight".}
proc fcQGraphicsGridLayout_setRowFixedHeight(self: pointer, row: cint, height: float64): void {.importc: "QGraphicsGridLayout_setRowFixedHeight".}
proc fcQGraphicsGridLayout_setColumnMinimumWidth(self: pointer, column: cint, width: float64): void {.importc: "QGraphicsGridLayout_setColumnMinimumWidth".}
proc fcQGraphicsGridLayout_columnMinimumWidth(self: pointer, column: cint): float64 {.importc: "QGraphicsGridLayout_columnMinimumWidth".}
proc fcQGraphicsGridLayout_setColumnPreferredWidth(self: pointer, column: cint, width: float64): void {.importc: "QGraphicsGridLayout_setColumnPreferredWidth".}
proc fcQGraphicsGridLayout_columnPreferredWidth(self: pointer, column: cint): float64 {.importc: "QGraphicsGridLayout_columnPreferredWidth".}
proc fcQGraphicsGridLayout_setColumnMaximumWidth(self: pointer, column: cint, width: float64): void {.importc: "QGraphicsGridLayout_setColumnMaximumWidth".}
proc fcQGraphicsGridLayout_columnMaximumWidth(self: pointer, column: cint): float64 {.importc: "QGraphicsGridLayout_columnMaximumWidth".}
proc fcQGraphicsGridLayout_setColumnFixedWidth(self: pointer, column: cint, width: float64): void {.importc: "QGraphicsGridLayout_setColumnFixedWidth".}
proc fcQGraphicsGridLayout_setRowAlignment(self: pointer, row: cint, alignment: cint): void {.importc: "QGraphicsGridLayout_setRowAlignment".}
proc fcQGraphicsGridLayout_rowAlignment(self: pointer, row: cint): cint {.importc: "QGraphicsGridLayout_rowAlignment".}
proc fcQGraphicsGridLayout_setColumnAlignment(self: pointer, column: cint, alignment: cint): void {.importc: "QGraphicsGridLayout_setColumnAlignment".}
proc fcQGraphicsGridLayout_columnAlignment(self: pointer, column: cint): cint {.importc: "QGraphicsGridLayout_columnAlignment".}
proc fcQGraphicsGridLayout_setAlignment(self: pointer, item: pointer, alignment: cint): void {.importc: "QGraphicsGridLayout_setAlignment".}
proc fcQGraphicsGridLayout_alignment(self: pointer, item: pointer): cint {.importc: "QGraphicsGridLayout_alignment".}
proc fcQGraphicsGridLayout_rowCount(self: pointer, ): cint {.importc: "QGraphicsGridLayout_rowCount".}
proc fcQGraphicsGridLayout_columnCount(self: pointer, ): cint {.importc: "QGraphicsGridLayout_columnCount".}
proc fcQGraphicsGridLayout_itemAt(self: pointer, row: cint, column: cint): pointer {.importc: "QGraphicsGridLayout_itemAt".}
proc fcQGraphicsGridLayout_count(self: pointer, ): cint {.importc: "QGraphicsGridLayout_count".}
proc fcQGraphicsGridLayout_itemAtWithIndex(self: pointer, index: cint): pointer {.importc: "QGraphicsGridLayout_itemAtWithIndex".}
proc fcQGraphicsGridLayout_removeAt(self: pointer, index: cint): void {.importc: "QGraphicsGridLayout_removeAt".}
proc fcQGraphicsGridLayout_removeItem(self: pointer, item: pointer): void {.importc: "QGraphicsGridLayout_removeItem".}
proc fcQGraphicsGridLayout_invalidate(self: pointer, ): void {.importc: "QGraphicsGridLayout_invalidate".}
proc fcQGraphicsGridLayout_setGeometry(self: pointer, rect: pointer): void {.importc: "QGraphicsGridLayout_setGeometry".}
proc fcQGraphicsGridLayout_sizeHint(self: pointer, which: cint, constraint: pointer): pointer {.importc: "QGraphicsGridLayout_sizeHint".}
proc fcQGraphicsGridLayout_addItem6(self: pointer, item: pointer, row: cint, column: cint, rowSpan: cint, columnSpan: cint, alignment: cint): void {.importc: "QGraphicsGridLayout_addItem6".}
proc fcQGraphicsGridLayout_addItem4(self: pointer, item: pointer, row: cint, column: cint, alignment: cint): void {.importc: "QGraphicsGridLayout_addItem4".}
proc fQGraphicsGridLayout_virtualbase_count(self: pointer, ): cint{.importc: "QGraphicsGridLayout_virtualbase_count".}
proc fcQGraphicsGridLayout_override_virtual_count(self: pointer, slot: int) {.importc: "QGraphicsGridLayout_override_virtual_count".}
proc fQGraphicsGridLayout_virtualbase_itemAtWithIndex(self: pointer, index: cint): pointer{.importc: "QGraphicsGridLayout_virtualbase_itemAtWithIndex".}
proc fcQGraphicsGridLayout_override_virtual_itemAtWithIndex(self: pointer, slot: int) {.importc: "QGraphicsGridLayout_override_virtual_itemAtWithIndex".}
proc fQGraphicsGridLayout_virtualbase_removeAt(self: pointer, index: cint): void{.importc: "QGraphicsGridLayout_virtualbase_removeAt".}
proc fcQGraphicsGridLayout_override_virtual_removeAt(self: pointer, slot: int) {.importc: "QGraphicsGridLayout_override_virtual_removeAt".}
proc fQGraphicsGridLayout_virtualbase_invalidate(self: pointer, ): void{.importc: "QGraphicsGridLayout_virtualbase_invalidate".}
proc fcQGraphicsGridLayout_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QGraphicsGridLayout_override_virtual_invalidate".}
proc fQGraphicsGridLayout_virtualbase_setGeometry(self: pointer, rect: pointer): void{.importc: "QGraphicsGridLayout_virtualbase_setGeometry".}
proc fcQGraphicsGridLayout_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QGraphicsGridLayout_override_virtual_setGeometry".}
proc fQGraphicsGridLayout_virtualbase_sizeHint(self: pointer, which: cint, constraint: pointer): pointer{.importc: "QGraphicsGridLayout_virtualbase_sizeHint".}
proc fcQGraphicsGridLayout_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QGraphicsGridLayout_override_virtual_sizeHint".}
proc fQGraphicsGridLayout_virtualbase_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void{.importc: "QGraphicsGridLayout_virtualbase_getContentsMargins".}
proc fcQGraphicsGridLayout_override_virtual_getContentsMargins(self: pointer, slot: int) {.importc: "QGraphicsGridLayout_override_virtual_getContentsMargins".}
proc fQGraphicsGridLayout_virtualbase_updateGeometry(self: pointer, ): void{.importc: "QGraphicsGridLayout_virtualbase_updateGeometry".}
proc fcQGraphicsGridLayout_override_virtual_updateGeometry(self: pointer, slot: int) {.importc: "QGraphicsGridLayout_override_virtual_updateGeometry".}
proc fQGraphicsGridLayout_virtualbase_widgetEvent(self: pointer, e: pointer): void{.importc: "QGraphicsGridLayout_virtualbase_widgetEvent".}
proc fcQGraphicsGridLayout_override_virtual_widgetEvent(self: pointer, slot: int) {.importc: "QGraphicsGridLayout_override_virtual_widgetEvent".}
proc fQGraphicsGridLayout_virtualbase_isEmpty(self: pointer, ): bool{.importc: "QGraphicsGridLayout_virtualbase_isEmpty".}
proc fcQGraphicsGridLayout_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QGraphicsGridLayout_override_virtual_isEmpty".}
proc fcQGraphicsGridLayout_delete(self: pointer) {.importc: "QGraphicsGridLayout_delete".}


func init*(T: type QGraphicsGridLayout, h: ptr cQGraphicsGridLayout): QGraphicsGridLayout =
  T(h: h)
proc create*(T: type QGraphicsGridLayout, ): QGraphicsGridLayout =

  QGraphicsGridLayout.init(fcQGraphicsGridLayout_new())
proc create*(T: type QGraphicsGridLayout, parent: gen_qgraphicslayoutitem.QGraphicsLayoutItem): QGraphicsGridLayout =

  QGraphicsGridLayout.init(fcQGraphicsGridLayout_new2(parent.h))
proc addItem*(self: QGraphicsGridLayout, item: gen_qgraphicslayoutitem.QGraphicsLayoutItem, row: cint, column: cint, rowSpan: cint, columnSpan: cint): void =

  fcQGraphicsGridLayout_addItem(self.h, item.h, row, column, rowSpan, columnSpan)

proc addItem2*(self: QGraphicsGridLayout, item: gen_qgraphicslayoutitem.QGraphicsLayoutItem, row: cint, column: cint): void =

  fcQGraphicsGridLayout_addItem2(self.h, item.h, row, column)

proc setHorizontalSpacing*(self: QGraphicsGridLayout, spacing: float64): void =

  fcQGraphicsGridLayout_setHorizontalSpacing(self.h, spacing)

proc horizontalSpacing*(self: QGraphicsGridLayout, ): float64 =

  fcQGraphicsGridLayout_horizontalSpacing(self.h)

proc setVerticalSpacing*(self: QGraphicsGridLayout, spacing: float64): void =

  fcQGraphicsGridLayout_setVerticalSpacing(self.h, spacing)

proc verticalSpacing*(self: QGraphicsGridLayout, ): float64 =

  fcQGraphicsGridLayout_verticalSpacing(self.h)

proc setSpacing*(self: QGraphicsGridLayout, spacing: float64): void =

  fcQGraphicsGridLayout_setSpacing(self.h, spacing)

proc setRowSpacing*(self: QGraphicsGridLayout, row: cint, spacing: float64): void =

  fcQGraphicsGridLayout_setRowSpacing(self.h, row, spacing)

proc rowSpacing*(self: QGraphicsGridLayout, row: cint): float64 =

  fcQGraphicsGridLayout_rowSpacing(self.h, row)

proc setColumnSpacing*(self: QGraphicsGridLayout, column: cint, spacing: float64): void =

  fcQGraphicsGridLayout_setColumnSpacing(self.h, column, spacing)

proc columnSpacing*(self: QGraphicsGridLayout, column: cint): float64 =

  fcQGraphicsGridLayout_columnSpacing(self.h, column)

proc setRowStretchFactor*(self: QGraphicsGridLayout, row: cint, stretch: cint): void =

  fcQGraphicsGridLayout_setRowStretchFactor(self.h, row, stretch)

proc rowStretchFactor*(self: QGraphicsGridLayout, row: cint): cint =

  fcQGraphicsGridLayout_rowStretchFactor(self.h, row)

proc setColumnStretchFactor*(self: QGraphicsGridLayout, column: cint, stretch: cint): void =

  fcQGraphicsGridLayout_setColumnStretchFactor(self.h, column, stretch)

proc columnStretchFactor*(self: QGraphicsGridLayout, column: cint): cint =

  fcQGraphicsGridLayout_columnStretchFactor(self.h, column)

proc setRowMinimumHeight*(self: QGraphicsGridLayout, row: cint, height: float64): void =

  fcQGraphicsGridLayout_setRowMinimumHeight(self.h, row, height)

proc rowMinimumHeight*(self: QGraphicsGridLayout, row: cint): float64 =

  fcQGraphicsGridLayout_rowMinimumHeight(self.h, row)

proc setRowPreferredHeight*(self: QGraphicsGridLayout, row: cint, height: float64): void =

  fcQGraphicsGridLayout_setRowPreferredHeight(self.h, row, height)

proc rowPreferredHeight*(self: QGraphicsGridLayout, row: cint): float64 =

  fcQGraphicsGridLayout_rowPreferredHeight(self.h, row)

proc setRowMaximumHeight*(self: QGraphicsGridLayout, row: cint, height: float64): void =

  fcQGraphicsGridLayout_setRowMaximumHeight(self.h, row, height)

proc rowMaximumHeight*(self: QGraphicsGridLayout, row: cint): float64 =

  fcQGraphicsGridLayout_rowMaximumHeight(self.h, row)

proc setRowFixedHeight*(self: QGraphicsGridLayout, row: cint, height: float64): void =

  fcQGraphicsGridLayout_setRowFixedHeight(self.h, row, height)

proc setColumnMinimumWidth*(self: QGraphicsGridLayout, column: cint, width: float64): void =

  fcQGraphicsGridLayout_setColumnMinimumWidth(self.h, column, width)

proc columnMinimumWidth*(self: QGraphicsGridLayout, column: cint): float64 =

  fcQGraphicsGridLayout_columnMinimumWidth(self.h, column)

proc setColumnPreferredWidth*(self: QGraphicsGridLayout, column: cint, width: float64): void =

  fcQGraphicsGridLayout_setColumnPreferredWidth(self.h, column, width)

proc columnPreferredWidth*(self: QGraphicsGridLayout, column: cint): float64 =

  fcQGraphicsGridLayout_columnPreferredWidth(self.h, column)

proc setColumnMaximumWidth*(self: QGraphicsGridLayout, column: cint, width: float64): void =

  fcQGraphicsGridLayout_setColumnMaximumWidth(self.h, column, width)

proc columnMaximumWidth*(self: QGraphicsGridLayout, column: cint): float64 =

  fcQGraphicsGridLayout_columnMaximumWidth(self.h, column)

proc setColumnFixedWidth*(self: QGraphicsGridLayout, column: cint, width: float64): void =

  fcQGraphicsGridLayout_setColumnFixedWidth(self.h, column, width)

proc setRowAlignment*(self: QGraphicsGridLayout, row: cint, alignment: gen_qnamespace.AlignmentFlag): void =

  fcQGraphicsGridLayout_setRowAlignment(self.h, row, cint(alignment))

proc rowAlignment*(self: QGraphicsGridLayout, row: cint): gen_qnamespace.AlignmentFlag =

  gen_qnamespace.AlignmentFlag(fcQGraphicsGridLayout_rowAlignment(self.h, row))

proc setColumnAlignment*(self: QGraphicsGridLayout, column: cint, alignment: gen_qnamespace.AlignmentFlag): void =

  fcQGraphicsGridLayout_setColumnAlignment(self.h, column, cint(alignment))

proc columnAlignment*(self: QGraphicsGridLayout, column: cint): gen_qnamespace.AlignmentFlag =

  gen_qnamespace.AlignmentFlag(fcQGraphicsGridLayout_columnAlignment(self.h, column))

proc setAlignment*(self: QGraphicsGridLayout, item: gen_qgraphicslayoutitem.QGraphicsLayoutItem, alignment: gen_qnamespace.AlignmentFlag): void =

  fcQGraphicsGridLayout_setAlignment(self.h, item.h, cint(alignment))

proc alignment*(self: QGraphicsGridLayout, item: gen_qgraphicslayoutitem.QGraphicsLayoutItem): gen_qnamespace.AlignmentFlag =

  gen_qnamespace.AlignmentFlag(fcQGraphicsGridLayout_alignment(self.h, item.h))

proc rowCount*(self: QGraphicsGridLayout, ): cint =

  fcQGraphicsGridLayout_rowCount(self.h)

proc columnCount*(self: QGraphicsGridLayout, ): cint =

  fcQGraphicsGridLayout_columnCount(self.h)

proc itemAt*(self: QGraphicsGridLayout, row: cint, column: cint): gen_qgraphicslayoutitem.QGraphicsLayoutItem =

  gen_qgraphicslayoutitem.QGraphicsLayoutItem(h: fcQGraphicsGridLayout_itemAt(self.h, row, column))

proc count*(self: QGraphicsGridLayout, ): cint =

  fcQGraphicsGridLayout_count(self.h)

proc itemAtWithIndex*(self: QGraphicsGridLayout, index: cint): gen_qgraphicslayoutitem.QGraphicsLayoutItem =

  gen_qgraphicslayoutitem.QGraphicsLayoutItem(h: fcQGraphicsGridLayout_itemAtWithIndex(self.h, index))

proc removeAt*(self: QGraphicsGridLayout, index: cint): void =

  fcQGraphicsGridLayout_removeAt(self.h, index)

proc removeItem*(self: QGraphicsGridLayout, item: gen_qgraphicslayoutitem.QGraphicsLayoutItem): void =

  fcQGraphicsGridLayout_removeItem(self.h, item.h)

proc invalidate*(self: QGraphicsGridLayout, ): void =

  fcQGraphicsGridLayout_invalidate(self.h)

proc setGeometry*(self: QGraphicsGridLayout, rect: gen_qrect.QRectF): void =

  fcQGraphicsGridLayout_setGeometry(self.h, rect.h)

proc sizeHint*(self: QGraphicsGridLayout, which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQGraphicsGridLayout_sizeHint(self.h, cint(which), constraint.h))

proc addItem6*(self: QGraphicsGridLayout, item: gen_qgraphicslayoutitem.QGraphicsLayoutItem, row: cint, column: cint, rowSpan: cint, columnSpan: cint, alignment: gen_qnamespace.AlignmentFlag): void =

  fcQGraphicsGridLayout_addItem6(self.h, item.h, row, column, rowSpan, columnSpan, cint(alignment))

proc addItem4*(self: QGraphicsGridLayout, item: gen_qgraphicslayoutitem.QGraphicsLayoutItem, row: cint, column: cint, alignment: gen_qnamespace.AlignmentFlag): void =

  fcQGraphicsGridLayout_addItem4(self.h, item.h, row, column, cint(alignment))

proc callVirtualBase_count(self: QGraphicsGridLayout, ): cint =


  fQGraphicsGridLayout_virtualbase_count(self.h)

type QGraphicsGridLayoutcountBase* = proc(): cint
proc oncount*(self: QGraphicsGridLayout, slot: proc(super: QGraphicsGridLayoutcountBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsGridLayoutcountBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsGridLayout_override_virtual_count(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsGridLayout_count(self: ptr cQGraphicsGridLayout, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsGridLayout_count ".} =
  type Cb = proc(super: QGraphicsGridLayoutcountBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_count(QGraphicsGridLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_itemAtWithIndex(self: QGraphicsGridLayout, index: cint): gen_qgraphicslayoutitem.QGraphicsLayoutItem =


  gen_qgraphicslayoutitem.QGraphicsLayoutItem(h: fQGraphicsGridLayout_virtualbase_itemAtWithIndex(self.h, index))

type QGraphicsGridLayoutitemAtWithIndexBase* = proc(index: cint): gen_qgraphicslayoutitem.QGraphicsLayoutItem
proc onitemAtWithIndex*(self: QGraphicsGridLayout, slot: proc(super: QGraphicsGridLayoutitemAtWithIndexBase, index: cint): gen_qgraphicslayoutitem.QGraphicsLayoutItem) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsGridLayoutitemAtWithIndexBase, index: cint): gen_qgraphicslayoutitem.QGraphicsLayoutItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsGridLayout_override_virtual_itemAtWithIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsGridLayout_itemAtWithIndex(self: ptr cQGraphicsGridLayout, slot: int, index: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsGridLayout_itemAtWithIndex ".} =
  type Cb = proc(super: QGraphicsGridLayoutitemAtWithIndexBase, index: cint): gen_qgraphicslayoutitem.QGraphicsLayoutItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: cint): auto =
    callVirtualBase_itemAtWithIndex(QGraphicsGridLayout(h: self), index)
  let slotval1 = index


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_removeAt(self: QGraphicsGridLayout, index: cint): void =


  fQGraphicsGridLayout_virtualbase_removeAt(self.h, index)

type QGraphicsGridLayoutremoveAtBase* = proc(index: cint): void
proc onremoveAt*(self: QGraphicsGridLayout, slot: proc(super: QGraphicsGridLayoutremoveAtBase, index: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsGridLayoutremoveAtBase, index: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsGridLayout_override_virtual_removeAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsGridLayout_removeAt(self: ptr cQGraphicsGridLayout, slot: int, index: cint): void {.exportc: "miqt_exec_callback_QGraphicsGridLayout_removeAt ".} =
  type Cb = proc(super: QGraphicsGridLayoutremoveAtBase, index: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: cint): auto =
    callVirtualBase_removeAt(QGraphicsGridLayout(h: self), index)
  let slotval1 = index


  nimfunc[](superCall, slotval1)
proc callVirtualBase_invalidate(self: QGraphicsGridLayout, ): void =


  fQGraphicsGridLayout_virtualbase_invalidate(self.h)

type QGraphicsGridLayoutinvalidateBase* = proc(): void
proc oninvalidate*(self: QGraphicsGridLayout, slot: proc(super: QGraphicsGridLayoutinvalidateBase): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsGridLayoutinvalidateBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsGridLayout_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsGridLayout_invalidate(self: ptr cQGraphicsGridLayout, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsGridLayout_invalidate ".} =
  type Cb = proc(super: QGraphicsGridLayoutinvalidateBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_invalidate(QGraphicsGridLayout(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_setGeometry(self: QGraphicsGridLayout, rect: gen_qrect.QRectF): void =


  fQGraphicsGridLayout_virtualbase_setGeometry(self.h, rect.h)

type QGraphicsGridLayoutsetGeometryBase* = proc(rect: gen_qrect.QRectF): void
proc onsetGeometry*(self: QGraphicsGridLayout, slot: proc(super: QGraphicsGridLayoutsetGeometryBase, rect: gen_qrect.QRectF): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsGridLayoutsetGeometryBase, rect: gen_qrect.QRectF): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsGridLayout_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsGridLayout_setGeometry(self: ptr cQGraphicsGridLayout, slot: int, rect: pointer): void {.exportc: "miqt_exec_callback_QGraphicsGridLayout_setGeometry ".} =
  type Cb = proc(super: QGraphicsGridLayoutsetGeometryBase, rect: gen_qrect.QRectF): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(rect: gen_qrect.QRectF): auto =
    callVirtualBase_setGeometry(QGraphicsGridLayout(h: self), rect)
  let slotval1 = gen_qrect.QRectF(h: rect)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QGraphicsGridLayout, which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF =


  gen_qsize.QSizeF(h: fQGraphicsGridLayout_virtualbase_sizeHint(self.h, cint(which), constraint.h))

type QGraphicsGridLayoutsizeHintBase* = proc(which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF
proc onsizeHint*(self: QGraphicsGridLayout, slot: proc(super: QGraphicsGridLayoutsizeHintBase, which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsGridLayoutsizeHintBase, which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsGridLayout_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsGridLayout_sizeHint(self: ptr cQGraphicsGridLayout, slot: int, which: cint, constraint: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsGridLayout_sizeHint ".} =
  type Cb = proc(super: QGraphicsGridLayoutsizeHintBase, which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): auto =
    callVirtualBase_sizeHint(QGraphicsGridLayout(h: self), which, constraint)
  let slotval1 = gen_qnamespace.SizeHint(which)

  let slotval2 = gen_qsize.QSizeF(h: constraint)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_getContentsMargins(self: QGraphicsGridLayout, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =


  fQGraphicsGridLayout_virtualbase_getContentsMargins(self.h, left, top, right, bottom)

type QGraphicsGridLayoutgetContentsMarginsBase* = proc(left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
proc ongetContentsMargins*(self: QGraphicsGridLayout, slot: proc(super: QGraphicsGridLayoutgetContentsMarginsBase, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsGridLayoutgetContentsMarginsBase, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsGridLayout_override_virtual_getContentsMargins(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsGridLayout_getContentsMargins(self: ptr cQGraphicsGridLayout, slot: int, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.exportc: "miqt_exec_callback_QGraphicsGridLayout_getContentsMargins ".} =
  type Cb = proc(super: QGraphicsGridLayoutgetContentsMarginsBase, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): auto =
    callVirtualBase_getContentsMargins(QGraphicsGridLayout(h: self), left, top, right, bottom)
  let slotval1 = left

  let slotval2 = top

  let slotval3 = right

  let slotval4 = bottom


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_updateGeometry(self: QGraphicsGridLayout, ): void =


  fQGraphicsGridLayout_virtualbase_updateGeometry(self.h)

type QGraphicsGridLayoutupdateGeometryBase* = proc(): void
proc onupdateGeometry*(self: QGraphicsGridLayout, slot: proc(super: QGraphicsGridLayoutupdateGeometryBase): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsGridLayoutupdateGeometryBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsGridLayout_override_virtual_updateGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsGridLayout_updateGeometry(self: ptr cQGraphicsGridLayout, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsGridLayout_updateGeometry ".} =
  type Cb = proc(super: QGraphicsGridLayoutupdateGeometryBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateGeometry(QGraphicsGridLayout(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_widgetEvent(self: QGraphicsGridLayout, e: gen_qcoreevent.QEvent): void =


  fQGraphicsGridLayout_virtualbase_widgetEvent(self.h, e.h)

type QGraphicsGridLayoutwidgetEventBase* = proc(e: gen_qcoreevent.QEvent): void
proc onwidgetEvent*(self: QGraphicsGridLayout, slot: proc(super: QGraphicsGridLayoutwidgetEventBase, e: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsGridLayoutwidgetEventBase, e: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsGridLayout_override_virtual_widgetEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsGridLayout_widgetEvent(self: ptr cQGraphicsGridLayout, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QGraphicsGridLayout_widgetEvent ".} =
  type Cb = proc(super: QGraphicsGridLayoutwidgetEventBase, e: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_widgetEvent(QGraphicsGridLayout(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_isEmpty(self: QGraphicsGridLayout, ): bool =


  fQGraphicsGridLayout_virtualbase_isEmpty(self.h)

type QGraphicsGridLayoutisEmptyBase* = proc(): bool
proc onisEmpty*(self: QGraphicsGridLayout, slot: proc(super: QGraphicsGridLayoutisEmptyBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsGridLayoutisEmptyBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsGridLayout_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsGridLayout_isEmpty(self: ptr cQGraphicsGridLayout, slot: int): bool {.exportc: "miqt_exec_callback_QGraphicsGridLayout_isEmpty ".} =
  type Cb = proc(super: QGraphicsGridLayoutisEmptyBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isEmpty(QGraphicsGridLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc delete*(self: QGraphicsGridLayout) =
  fcQGraphicsGridLayout_delete(self.h)
