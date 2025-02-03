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
{.compile("gen_qgraphicslayout.cpp", cflags).}


import gen_qgraphicslayout_types
export gen_qgraphicslayout_types

import
  gen_qcoreevent,
  gen_qgraphicslayoutitem,
  gen_qnamespace,
  gen_qrect,
  gen_qsize
export
  gen_qcoreevent,
  gen_qgraphicslayoutitem,
  gen_qnamespace,
  gen_qrect,
  gen_qsize

type cQGraphicsLayout*{.exportc: "QGraphicsLayout", incompleteStruct.} = object

proc fcQGraphicsLayout_new(): ptr cQGraphicsLayout {.importc: "QGraphicsLayout_new".}
proc fcQGraphicsLayout_new2(parent: pointer): ptr cQGraphicsLayout {.importc: "QGraphicsLayout_new2".}
proc fcQGraphicsLayout_setContentsMargins(self: pointer, left: float64, top: float64, right: float64, bottom: float64): void {.importc: "QGraphicsLayout_setContentsMargins".}
proc fcQGraphicsLayout_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.importc: "QGraphicsLayout_getContentsMargins".}
proc fcQGraphicsLayout_activate(self: pointer, ): void {.importc: "QGraphicsLayout_activate".}
proc fcQGraphicsLayout_isActivated(self: pointer, ): bool {.importc: "QGraphicsLayout_isActivated".}
proc fcQGraphicsLayout_invalidate(self: pointer, ): void {.importc: "QGraphicsLayout_invalidate".}
proc fcQGraphicsLayout_updateGeometry(self: pointer, ): void {.importc: "QGraphicsLayout_updateGeometry".}
proc fcQGraphicsLayout_widgetEvent(self: pointer, e: pointer): void {.importc: "QGraphicsLayout_widgetEvent".}
proc fcQGraphicsLayout_count(self: pointer, ): cint {.importc: "QGraphicsLayout_count".}
proc fcQGraphicsLayout_itemAt(self: pointer, i: cint): pointer {.importc: "QGraphicsLayout_itemAt".}
proc fcQGraphicsLayout_removeAt(self: pointer, index: cint): void {.importc: "QGraphicsLayout_removeAt".}
proc fcQGraphicsLayout_setInstantInvalidatePropagation(enable: bool): void {.importc: "QGraphicsLayout_setInstantInvalidatePropagation".}
proc fcQGraphicsLayout_instantInvalidatePropagation(): bool {.importc: "QGraphicsLayout_instantInvalidatePropagation".}
proc fQGraphicsLayout_virtualbase_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void{.importc: "QGraphicsLayout_virtualbase_getContentsMargins".}
proc fcQGraphicsLayout_override_virtual_getContentsMargins(self: pointer, slot: int) {.importc: "QGraphicsLayout_override_virtual_getContentsMargins".}
proc fQGraphicsLayout_virtualbase_invalidate(self: pointer, ): void{.importc: "QGraphicsLayout_virtualbase_invalidate".}
proc fcQGraphicsLayout_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QGraphicsLayout_override_virtual_invalidate".}
proc fQGraphicsLayout_virtualbase_updateGeometry(self: pointer, ): void{.importc: "QGraphicsLayout_virtualbase_updateGeometry".}
proc fcQGraphicsLayout_override_virtual_updateGeometry(self: pointer, slot: int) {.importc: "QGraphicsLayout_override_virtual_updateGeometry".}
proc fQGraphicsLayout_virtualbase_widgetEvent(self: pointer, e: pointer): void{.importc: "QGraphicsLayout_virtualbase_widgetEvent".}
proc fcQGraphicsLayout_override_virtual_widgetEvent(self: pointer, slot: int) {.importc: "QGraphicsLayout_override_virtual_widgetEvent".}
proc fcQGraphicsLayout_override_virtual_count(self: pointer, slot: int) {.importc: "QGraphicsLayout_override_virtual_count".}
proc fcQGraphicsLayout_override_virtual_itemAt(self: pointer, slot: int) {.importc: "QGraphicsLayout_override_virtual_itemAt".}
proc fcQGraphicsLayout_override_virtual_removeAt(self: pointer, slot: int) {.importc: "QGraphicsLayout_override_virtual_removeAt".}
proc fQGraphicsLayout_virtualbase_setGeometry(self: pointer, rect: pointer): void{.importc: "QGraphicsLayout_virtualbase_setGeometry".}
proc fcQGraphicsLayout_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QGraphicsLayout_override_virtual_setGeometry".}
proc fQGraphicsLayout_virtualbase_isEmpty(self: pointer, ): bool{.importc: "QGraphicsLayout_virtualbase_isEmpty".}
proc fcQGraphicsLayout_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QGraphicsLayout_override_virtual_isEmpty".}
proc fcQGraphicsLayout_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QGraphicsLayout_override_virtual_sizeHint".}
proc fcQGraphicsLayout_delete(self: pointer) {.importc: "QGraphicsLayout_delete".}


func init*(T: type QGraphicsLayout, h: ptr cQGraphicsLayout): QGraphicsLayout =
  T(h: h)
proc create*(T: type QGraphicsLayout, ): QGraphicsLayout =

  QGraphicsLayout.init(fcQGraphicsLayout_new())
proc create*(T: type QGraphicsLayout, parent: gen_qgraphicslayoutitem.QGraphicsLayoutItem): QGraphicsLayout =

  QGraphicsLayout.init(fcQGraphicsLayout_new2(parent.h))
proc setContentsMargins*(self: QGraphicsLayout, left: float64, top: float64, right: float64, bottom: float64): void =

  fcQGraphicsLayout_setContentsMargins(self.h, left, top, right, bottom)

proc getContentsMargins*(self: QGraphicsLayout, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =

  fcQGraphicsLayout_getContentsMargins(self.h, left, top, right, bottom)

proc activate*(self: QGraphicsLayout, ): void =

  fcQGraphicsLayout_activate(self.h)

proc isActivated*(self: QGraphicsLayout, ): bool =

  fcQGraphicsLayout_isActivated(self.h)

proc invalidate*(self: QGraphicsLayout, ): void =

  fcQGraphicsLayout_invalidate(self.h)

proc updateGeometry*(self: QGraphicsLayout, ): void =

  fcQGraphicsLayout_updateGeometry(self.h)

proc widgetEvent*(self: QGraphicsLayout, e: gen_qcoreevent.QEvent): void =

  fcQGraphicsLayout_widgetEvent(self.h, e.h)

proc count*(self: QGraphicsLayout, ): cint =

  fcQGraphicsLayout_count(self.h)

proc itemAt*(self: QGraphicsLayout, i: cint): gen_qgraphicslayoutitem.QGraphicsLayoutItem =

  gen_qgraphicslayoutitem.QGraphicsLayoutItem(h: fcQGraphicsLayout_itemAt(self.h, i))

proc removeAt*(self: QGraphicsLayout, index: cint): void =

  fcQGraphicsLayout_removeAt(self.h, index)

proc setInstantInvalidatePropagation*(_: type QGraphicsLayout, enable: bool): void =

  fcQGraphicsLayout_setInstantInvalidatePropagation(enable)

proc instantInvalidatePropagation*(_: type QGraphicsLayout, ): bool =

  fcQGraphicsLayout_instantInvalidatePropagation()

proc callVirtualBase_getContentsMargins(self: QGraphicsLayout, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =


  fQGraphicsLayout_virtualbase_getContentsMargins(self.h, left, top, right, bottom)

type QGraphicsLayoutgetContentsMarginsBase* = proc(left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
proc ongetContentsMargins*(self: QGraphicsLayout, slot: proc(super: QGraphicsLayoutgetContentsMarginsBase, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLayoutgetContentsMarginsBase, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLayout_override_virtual_getContentsMargins(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLayout_getContentsMargins(self: ptr cQGraphicsLayout, slot: int, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.exportc: "miqt_exec_callback_QGraphicsLayout_getContentsMargins ".} =
  type Cb = proc(super: QGraphicsLayoutgetContentsMarginsBase, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): auto =
    callVirtualBase_getContentsMargins(QGraphicsLayout(h: self), left, top, right, bottom)
  let slotval1 = left

  let slotval2 = top

  let slotval3 = right

  let slotval4 = bottom


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_invalidate(self: QGraphicsLayout, ): void =


  fQGraphicsLayout_virtualbase_invalidate(self.h)

type QGraphicsLayoutinvalidateBase* = proc(): void
proc oninvalidate*(self: QGraphicsLayout, slot: proc(super: QGraphicsLayoutinvalidateBase): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLayoutinvalidateBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLayout_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLayout_invalidate(self: ptr cQGraphicsLayout, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsLayout_invalidate ".} =
  type Cb = proc(super: QGraphicsLayoutinvalidateBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_invalidate(QGraphicsLayout(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_updateGeometry(self: QGraphicsLayout, ): void =


  fQGraphicsLayout_virtualbase_updateGeometry(self.h)

type QGraphicsLayoutupdateGeometryBase* = proc(): void
proc onupdateGeometry*(self: QGraphicsLayout, slot: proc(super: QGraphicsLayoutupdateGeometryBase): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLayoutupdateGeometryBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLayout_override_virtual_updateGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLayout_updateGeometry(self: ptr cQGraphicsLayout, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsLayout_updateGeometry ".} =
  type Cb = proc(super: QGraphicsLayoutupdateGeometryBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateGeometry(QGraphicsLayout(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_widgetEvent(self: QGraphicsLayout, e: gen_qcoreevent.QEvent): void =


  fQGraphicsLayout_virtualbase_widgetEvent(self.h, e.h)

type QGraphicsLayoutwidgetEventBase* = proc(e: gen_qcoreevent.QEvent): void
proc onwidgetEvent*(self: QGraphicsLayout, slot: proc(super: QGraphicsLayoutwidgetEventBase, e: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLayoutwidgetEventBase, e: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLayout_override_virtual_widgetEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLayout_widgetEvent(self: ptr cQGraphicsLayout, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLayout_widgetEvent ".} =
  type Cb = proc(super: QGraphicsLayoutwidgetEventBase, e: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_widgetEvent(QGraphicsLayout(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  nimfunc[](superCall, slotval1)
type QGraphicsLayoutcountBase* = proc(): cint
proc oncount*(self: QGraphicsLayout, slot: proc(): cint) =
  # TODO check subclass
  type Cb = proc(): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLayout_override_virtual_count(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLayout_count(self: ptr cQGraphicsLayout, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsLayout_count ".} =
  type Cb = proc(): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QGraphicsLayoutitemAtBase* = proc(i: cint): gen_qgraphicslayoutitem.QGraphicsLayoutItem
proc onitemAt*(self: QGraphicsLayout, slot: proc(i: cint): gen_qgraphicslayoutitem.QGraphicsLayoutItem) =
  # TODO check subclass
  type Cb = proc(i: cint): gen_qgraphicslayoutitem.QGraphicsLayoutItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLayout_override_virtual_itemAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLayout_itemAt(self: ptr cQGraphicsLayout, slot: int, i: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsLayout_itemAt ".} =
  type Cb = proc(i: cint): gen_qgraphicslayoutitem.QGraphicsLayoutItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = i


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
type QGraphicsLayoutremoveAtBase* = proc(index: cint): void
proc onremoveAt*(self: QGraphicsLayout, slot: proc(index: cint): void) =
  # TODO check subclass
  type Cb = proc(index: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLayout_override_virtual_removeAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLayout_removeAt(self: ptr cQGraphicsLayout, slot: int, index: cint): void {.exportc: "miqt_exec_callback_QGraphicsLayout_removeAt ".} =
  type Cb = proc(index: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)
proc callVirtualBase_setGeometry(self: QGraphicsLayout, rect: gen_qrect.QRectF): void =


  fQGraphicsLayout_virtualbase_setGeometry(self.h, rect.h)

type QGraphicsLayoutsetGeometryBase* = proc(rect: gen_qrect.QRectF): void
proc onsetGeometry*(self: QGraphicsLayout, slot: proc(super: QGraphicsLayoutsetGeometryBase, rect: gen_qrect.QRectF): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLayoutsetGeometryBase, rect: gen_qrect.QRectF): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLayout_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLayout_setGeometry(self: ptr cQGraphicsLayout, slot: int, rect: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLayout_setGeometry ".} =
  type Cb = proc(super: QGraphicsLayoutsetGeometryBase, rect: gen_qrect.QRectF): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(rect: gen_qrect.QRectF): auto =
    callVirtualBase_setGeometry(QGraphicsLayout(h: self), rect)
  let slotval1 = gen_qrect.QRectF(h: rect)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_isEmpty(self: QGraphicsLayout, ): bool =


  fQGraphicsLayout_virtualbase_isEmpty(self.h)

type QGraphicsLayoutisEmptyBase* = proc(): bool
proc onisEmpty*(self: QGraphicsLayout, slot: proc(super: QGraphicsLayoutisEmptyBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsLayoutisEmptyBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLayout_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLayout_isEmpty(self: ptr cQGraphicsLayout, slot: int): bool {.exportc: "miqt_exec_callback_QGraphicsLayout_isEmpty ".} =
  type Cb = proc(super: QGraphicsLayoutisEmptyBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isEmpty(QGraphicsLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QGraphicsLayoutsizeHintBase* = proc(which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF
proc onsizeHint*(self: QGraphicsLayout, slot: proc(which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF) =
  # TODO check subclass
  type Cb = proc(which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLayout_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLayout_sizeHint(self: ptr cQGraphicsLayout, slot: int, which: cint, constraint: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsLayout_sizeHint ".} =
  type Cb = proc(which: gen_qnamespace.SizeHint, constraint: gen_qsize.QSizeF): gen_qsize.QSizeF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnamespace.SizeHint(which)

  let slotval2 = gen_qsize.QSizeF(h: constraint)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc delete*(self: QGraphicsLayout) =
  fcQGraphicsLayout_delete(self.h)
