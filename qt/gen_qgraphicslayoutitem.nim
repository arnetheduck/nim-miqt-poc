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
{.compile("gen_qgraphicslayoutitem.cpp", cflags).}


import gen_qgraphicslayoutitem_types
export gen_qgraphicslayoutitem_types

import
  gen_qgraphicsitem,
  gen_qnamespace,
  gen_qrect,
  gen_qsize,
  gen_qsizepolicy
export
  gen_qgraphicsitem,
  gen_qnamespace,
  gen_qrect,
  gen_qsize,
  gen_qsizepolicy

type cQGraphicsLayoutItem*{.exportc: "QGraphicsLayoutItem", incompleteStruct.} = object

proc fcQGraphicsLayoutItem_new(): ptr cQGraphicsLayoutItem {.importc: "QGraphicsLayoutItem_new".}
proc fcQGraphicsLayoutItem_new2(parent: pointer): ptr cQGraphicsLayoutItem {.importc: "QGraphicsLayoutItem_new2".}
proc fcQGraphicsLayoutItem_new3(parent: pointer, isLayout: bool): ptr cQGraphicsLayoutItem {.importc: "QGraphicsLayoutItem_new3".}
proc fcQGraphicsLayoutItem_setSizePolicy(self: pointer, policy: pointer): void {.importc: "QGraphicsLayoutItem_setSizePolicy".}
proc fcQGraphicsLayoutItem_setSizePolicy2(self: pointer, hPolicy: cint, vPolicy: cint): void {.importc: "QGraphicsLayoutItem_setSizePolicy2".}
proc fcQGraphicsLayoutItem_sizePolicy(self: pointer, ): pointer {.importc: "QGraphicsLayoutItem_sizePolicy".}
proc fcQGraphicsLayoutItem_setMinimumSize(self: pointer, size: pointer): void {.importc: "QGraphicsLayoutItem_setMinimumSize".}
proc fcQGraphicsLayoutItem_setMinimumSize2(self: pointer, w: float64, h: float64): void {.importc: "QGraphicsLayoutItem_setMinimumSize2".}
proc fcQGraphicsLayoutItem_minimumSize(self: pointer, ): pointer {.importc: "QGraphicsLayoutItem_minimumSize".}
proc fcQGraphicsLayoutItem_setMinimumWidth(self: pointer, width: float64): void {.importc: "QGraphicsLayoutItem_setMinimumWidth".}
proc fcQGraphicsLayoutItem_minimumWidth(self: pointer, ): float64 {.importc: "QGraphicsLayoutItem_minimumWidth".}
proc fcQGraphicsLayoutItem_setMinimumHeight(self: pointer, height: float64): void {.importc: "QGraphicsLayoutItem_setMinimumHeight".}
proc fcQGraphicsLayoutItem_minimumHeight(self: pointer, ): float64 {.importc: "QGraphicsLayoutItem_minimumHeight".}
proc fcQGraphicsLayoutItem_setPreferredSize(self: pointer, size: pointer): void {.importc: "QGraphicsLayoutItem_setPreferredSize".}
proc fcQGraphicsLayoutItem_setPreferredSize2(self: pointer, w: float64, h: float64): void {.importc: "QGraphicsLayoutItem_setPreferredSize2".}
proc fcQGraphicsLayoutItem_preferredSize(self: pointer, ): pointer {.importc: "QGraphicsLayoutItem_preferredSize".}
proc fcQGraphicsLayoutItem_setPreferredWidth(self: pointer, width: float64): void {.importc: "QGraphicsLayoutItem_setPreferredWidth".}
proc fcQGraphicsLayoutItem_preferredWidth(self: pointer, ): float64 {.importc: "QGraphicsLayoutItem_preferredWidth".}
proc fcQGraphicsLayoutItem_setPreferredHeight(self: pointer, height: float64): void {.importc: "QGraphicsLayoutItem_setPreferredHeight".}
proc fcQGraphicsLayoutItem_preferredHeight(self: pointer, ): float64 {.importc: "QGraphicsLayoutItem_preferredHeight".}
proc fcQGraphicsLayoutItem_setMaximumSize(self: pointer, size: pointer): void {.importc: "QGraphicsLayoutItem_setMaximumSize".}
proc fcQGraphicsLayoutItem_setMaximumSize2(self: pointer, w: float64, h: float64): void {.importc: "QGraphicsLayoutItem_setMaximumSize2".}
proc fcQGraphicsLayoutItem_maximumSize(self: pointer, ): pointer {.importc: "QGraphicsLayoutItem_maximumSize".}
proc fcQGraphicsLayoutItem_setMaximumWidth(self: pointer, width: float64): void {.importc: "QGraphicsLayoutItem_setMaximumWidth".}
proc fcQGraphicsLayoutItem_maximumWidth(self: pointer, ): float64 {.importc: "QGraphicsLayoutItem_maximumWidth".}
proc fcQGraphicsLayoutItem_setMaximumHeight(self: pointer, height: float64): void {.importc: "QGraphicsLayoutItem_setMaximumHeight".}
proc fcQGraphicsLayoutItem_maximumHeight(self: pointer, ): float64 {.importc: "QGraphicsLayoutItem_maximumHeight".}
proc fcQGraphicsLayoutItem_setGeometry(self: pointer, rect: pointer): void {.importc: "QGraphicsLayoutItem_setGeometry".}
proc fcQGraphicsLayoutItem_geometry(self: pointer, ): pointer {.importc: "QGraphicsLayoutItem_geometry".}
proc fcQGraphicsLayoutItem_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.importc: "QGraphicsLayoutItem_getContentsMargins".}
proc fcQGraphicsLayoutItem_contentsRect(self: pointer, ): pointer {.importc: "QGraphicsLayoutItem_contentsRect".}
proc fcQGraphicsLayoutItem_effectiveSizeHint(self: pointer, which: cint): pointer {.importc: "QGraphicsLayoutItem_effectiveSizeHint".}
proc fcQGraphicsLayoutItem_updateGeometry(self: pointer, ): void {.importc: "QGraphicsLayoutItem_updateGeometry".}
proc fcQGraphicsLayoutItem_parentLayoutItem(self: pointer, ): pointer {.importc: "QGraphicsLayoutItem_parentLayoutItem".}
proc fcQGraphicsLayoutItem_setParentLayoutItem(self: pointer, parent: pointer): void {.importc: "QGraphicsLayoutItem_setParentLayoutItem".}
proc fcQGraphicsLayoutItem_isLayout(self: pointer, ): bool {.importc: "QGraphicsLayoutItem_isLayout".}
proc fcQGraphicsLayoutItem_graphicsItem(self: pointer, ): pointer {.importc: "QGraphicsLayoutItem_graphicsItem".}
proc fcQGraphicsLayoutItem_ownedByLayout(self: pointer, ): bool {.importc: "QGraphicsLayoutItem_ownedByLayout".}
proc fcQGraphicsLayoutItem_setSizePolicy3(self: pointer, hPolicy: cint, vPolicy: cint, controlType: cint): void {.importc: "QGraphicsLayoutItem_setSizePolicy3".}
proc fcQGraphicsLayoutItem_effectiveSizeHint2(self: pointer, which: cint, constraint: pointer): pointer {.importc: "QGraphicsLayoutItem_effectiveSizeHint2".}
proc fQGraphicsLayoutItem_virtualbase_setGeometry(self: pointer, rect: pointer): void{.importc: "QGraphicsLayoutItem_virtualbase_setGeometry".}
proc fcQGraphicsLayoutItem_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QGraphicsLayoutItem_override_virtual_setGeometry".}
proc fQGraphicsLayoutItem_virtualbase_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void{.importc: "QGraphicsLayoutItem_virtualbase_getContentsMargins".}
proc fcQGraphicsLayoutItem_override_virtual_getContentsMargins(self: pointer, slot: int) {.importc: "QGraphicsLayoutItem_override_virtual_getContentsMargins".}
proc fQGraphicsLayoutItem_virtualbase_updateGeometry(self: pointer, ): void{.importc: "QGraphicsLayoutItem_virtualbase_updateGeometry".}
proc fcQGraphicsLayoutItem_override_virtual_updateGeometry(self: pointer, slot: int) {.importc: "QGraphicsLayoutItem_override_virtual_updateGeometry".}
proc fcQGraphicsLayoutItem_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QGraphicsLayoutItem_override_virtual_sizeHint".}
proc fcQGraphicsLayoutItem_delete(self: pointer) {.importc: "QGraphicsLayoutItem_delete".}


func init*(T: type QGraphicsLayoutItem, h: ptr cQGraphicsLayoutItem): QGraphicsLayoutItem =
  T(h: h)
proc create*(T: type QGraphicsLayoutItem, ): QGraphicsLayoutItem =

  QGraphicsLayoutItem.init(fcQGraphicsLayoutItem_new())
proc create*(T: type QGraphicsLayoutItem, parent: QGraphicsLayoutItem): QGraphicsLayoutItem =

  QGraphicsLayoutItem.init(fcQGraphicsLayoutItem_new2(parent.h))
proc create*(T: type QGraphicsLayoutItem, parent: QGraphicsLayoutItem, isLayout: bool): QGraphicsLayoutItem =

  QGraphicsLayoutItem.init(fcQGraphicsLayoutItem_new3(parent.h, isLayout))
proc setSizePolicy*(self: QGraphicsLayoutItem, policy: gen_qsizepolicy.QSizePolicy): void =

  fcQGraphicsLayoutItem_setSizePolicy(self.h, policy.h)

proc setSizePolicy2*(self: QGraphicsLayoutItem, hPolicy: gen_qsizepolicy.QSizePolicyPolicy, vPolicy: gen_qsizepolicy.QSizePolicyPolicy): void =

  fcQGraphicsLayoutItem_setSizePolicy2(self.h, cint(hPolicy), cint(vPolicy))

proc sizePolicy*(self: QGraphicsLayoutItem, ): gen_qsizepolicy.QSizePolicy =

  gen_qsizepolicy.QSizePolicy(h: fcQGraphicsLayoutItem_sizePolicy(self.h))

proc setMinimumSize*(self: QGraphicsLayoutItem, size: gen_qsize.QSizeF): void =

  fcQGraphicsLayoutItem_setMinimumSize(self.h, size.h)

proc setMinimumSize2*(self: QGraphicsLayoutItem, w: float64, h: float64): void =

  fcQGraphicsLayoutItem_setMinimumSize2(self.h, w, h)

proc minimumSize*(self: QGraphicsLayoutItem, ): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQGraphicsLayoutItem_minimumSize(self.h))

proc setMinimumWidth*(self: QGraphicsLayoutItem, width: float64): void =

  fcQGraphicsLayoutItem_setMinimumWidth(self.h, width)

proc minimumWidth*(self: QGraphicsLayoutItem, ): float64 =

  fcQGraphicsLayoutItem_minimumWidth(self.h)

proc setMinimumHeight*(self: QGraphicsLayoutItem, height: float64): void =

  fcQGraphicsLayoutItem_setMinimumHeight(self.h, height)

proc minimumHeight*(self: QGraphicsLayoutItem, ): float64 =

  fcQGraphicsLayoutItem_minimumHeight(self.h)

proc setPreferredSize*(self: QGraphicsLayoutItem, size: gen_qsize.QSizeF): void =

  fcQGraphicsLayoutItem_setPreferredSize(self.h, size.h)

proc setPreferredSize2*(self: QGraphicsLayoutItem, w: float64, h: float64): void =

  fcQGraphicsLayoutItem_setPreferredSize2(self.h, w, h)

proc preferredSize*(self: QGraphicsLayoutItem, ): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQGraphicsLayoutItem_preferredSize(self.h))

proc setPreferredWidth*(self: QGraphicsLayoutItem, width: float64): void =

  fcQGraphicsLayoutItem_setPreferredWidth(self.h, width)

proc preferredWidth*(self: QGraphicsLayoutItem, ): float64 =

  fcQGraphicsLayoutItem_preferredWidth(self.h)

proc setPreferredHeight*(self: QGraphicsLayoutItem, height: float64): void =

  fcQGraphicsLayoutItem_setPreferredHeight(self.h, height)

proc preferredHeight*(self: QGraphicsLayoutItem, ): float64 =

  fcQGraphicsLayoutItem_preferredHeight(self.h)

proc setMaximumSize*(self: QGraphicsLayoutItem, size: gen_qsize.QSizeF): void =

  fcQGraphicsLayoutItem_setMaximumSize(self.h, size.h)

proc setMaximumSize2*(self: QGraphicsLayoutItem, w: float64, h: float64): void =

  fcQGraphicsLayoutItem_setMaximumSize2(self.h, w, h)

proc maximumSize*(self: QGraphicsLayoutItem, ): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQGraphicsLayoutItem_maximumSize(self.h))

proc setMaximumWidth*(self: QGraphicsLayoutItem, width: float64): void =

  fcQGraphicsLayoutItem_setMaximumWidth(self.h, width)

proc maximumWidth*(self: QGraphicsLayoutItem, ): float64 =

  fcQGraphicsLayoutItem_maximumWidth(self.h)

proc setMaximumHeight*(self: QGraphicsLayoutItem, height: float64): void =

  fcQGraphicsLayoutItem_setMaximumHeight(self.h, height)

proc maximumHeight*(self: QGraphicsLayoutItem, ): float64 =

  fcQGraphicsLayoutItem_maximumHeight(self.h)

proc setGeometry*(self: QGraphicsLayoutItem, rect: gen_qrect.QRectF): void =

  fcQGraphicsLayoutItem_setGeometry(self.h, rect.h)

proc geometry*(self: QGraphicsLayoutItem, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsLayoutItem_geometry(self.h))

proc getContentsMargins*(self: QGraphicsLayoutItem, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =

  fcQGraphicsLayoutItem_getContentsMargins(self.h, left, top, right, bottom)

proc contentsRect*(self: QGraphicsLayoutItem, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsLayoutItem_contentsRect(self.h))

proc effectiveSizeHint*(self: QGraphicsLayoutItem, which: gen_qnamespace.SizeHint): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQGraphicsLayoutItem_effectiveSizeHint(self.h, cint(which)))

proc updateGeometry*(self: QGraphicsLayoutItem, ): void =

  fcQGraphicsLayoutItem_updateGeometry(self.h)

proc parentLayoutItem*(self: QGraphicsLayoutItem, ): QGraphicsLayoutItem =

  QGraphicsLayoutItem(h: fcQGraphicsLayoutItem_parentLayoutItem(self.h))

proc setParentLayoutItem*(self: QGraphicsLayoutItem, parent: QGraphicsLayoutItem): void =

  fcQGraphicsLayoutItem_setParentLayoutItem(self.h, parent.h)

proc isLayout*(self: QGraphicsLayoutItem, ): bool =

  fcQGraphicsLayoutItem_isLayout(self.h)

proc graphicsItem*(self: QGraphicsLayoutItem, ): gen_qgraphicsitem.QGraphicsItem =

  gen_qgraphicsitem.QGraphicsItem(h: fcQGraphicsLayoutItem_graphicsItem(self.h))

proc ownedByLayout*(self: QGraphicsLayoutItem, ): bool =

  fcQGraphicsLayoutItem_ownedByLayout(self.h)

proc setSizePolicy3*(self: QGraphicsLayoutItem, hPolicy: gen_qsizepolicy.QSizePolicyPolicy, vPolicy: gen_qsizepolicy.QSizePolicyPolicy, controlType: gen_qsizepolicy.QSizePolicyControlType): void =

  fcQGraphicsLayoutItem_setSizePolicy3(self.h, cint(hPolicy), cint(vPolicy), cint(controlType))

proc effectiveSizeHint2*(self: QGraphicsLayoutItem, which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQGraphicsLayoutItem_effectiveSizeHint2(self.h, cint(which), constraint.h))

proc callVirtualBase_setGeometry(self: QGraphicsLayoutItem, rect: gen_qrect.QRectF): void =


  fQGraphicsLayoutItem_virtualbase_setGeometry(self.h, rect.h)

type QGraphicsLayoutItemsetGeometryBase* = proc(rect: gen_qrect.QRectF): void
proc onsetGeometry*(self: QGraphicsLayoutItem, slot: proc(super: QGraphicsLayoutItemsetGeometryBase, rect: gen_qrect.QRectF): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLayoutItemsetGeometryBase, rect: gen_qrect.QRectF): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLayoutItem_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLayoutItem_setGeometry(self: ptr cQGraphicsLayoutItem, slot: int, rect: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLayoutItem_setGeometry ".} =
  type Cb = proc(super: QGraphicsLayoutItemsetGeometryBase, rect: gen_qrect.QRectF): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(rect: gen_qrect.QRectF): auto =
    callVirtualBase_setGeometry(QGraphicsLayoutItem(h: self), rect)
  let slotval1 = gen_qrect.QRectF(h: rect)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_getContentsMargins(self: QGraphicsLayoutItem, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =


  fQGraphicsLayoutItem_virtualbase_getContentsMargins(self.h, left, top, right, bottom)

type QGraphicsLayoutItemgetContentsMarginsBase* = proc(left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
proc ongetContentsMargins*(self: QGraphicsLayoutItem, slot: proc(super: QGraphicsLayoutItemgetContentsMarginsBase, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLayoutItemgetContentsMarginsBase, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLayoutItem_override_virtual_getContentsMargins(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLayoutItem_getContentsMargins(self: ptr cQGraphicsLayoutItem, slot: int, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.exportc: "miqt_exec_callback_QGraphicsLayoutItem_getContentsMargins ".} =
  type Cb = proc(super: QGraphicsLayoutItemgetContentsMarginsBase, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): auto =
    callVirtualBase_getContentsMargins(QGraphicsLayoutItem(h: self), left, top, right, bottom)
  let slotval1 = left

  let slotval2 = top

  let slotval3 = right

  let slotval4 = bottom


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_updateGeometry(self: QGraphicsLayoutItem, ): void =


  fQGraphicsLayoutItem_virtualbase_updateGeometry(self.h)

type QGraphicsLayoutItemupdateGeometryBase* = proc(): void
proc onupdateGeometry*(self: QGraphicsLayoutItem, slot: proc(super: QGraphicsLayoutItemupdateGeometryBase): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLayoutItemupdateGeometryBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLayoutItem_override_virtual_updateGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLayoutItem_updateGeometry(self: ptr cQGraphicsLayoutItem, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsLayoutItem_updateGeometry ".} =
  type Cb = proc(super: QGraphicsLayoutItemupdateGeometryBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateGeometry(QGraphicsLayoutItem(h: self), )

  nimfunc[](superCall)
type QGraphicsLayoutItemsizeHintBase* = proc(which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF
proc onsizeHint*(self: QGraphicsLayoutItem, slot: proc(which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF) =
  # TODO check subclass
  type Cb = proc(which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLayoutItem_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLayoutItem_sizeHint(self: ptr cQGraphicsLayoutItem, slot: int, which: cint, constraint: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsLayoutItem_sizeHint ".} =
  type Cb = proc(which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnamespace.SizeHint(which)

  let slotval2 = gen_qsize.QSizeF(h: constraint)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc delete*(self: QGraphicsLayoutItem) =
  fcQGraphicsLayoutItem_delete(self.h)
