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
{.compile("gen_qstackedlayout.cpp", cflags).}


type QStackedLayoutStackingMode* = cint
const
  QStackedLayoutStackOne* = 0
  QStackedLayoutStackAll* = 1



import gen_qstackedlayout_types
export gen_qstackedlayout_types

import
  gen_qcoreevent,
  gen_qlayout,
  gen_qlayoutitem,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qrect,
  gen_qsize,
  gen_qsizepolicy,
  gen_qwidget
export
  gen_qcoreevent,
  gen_qlayout,
  gen_qlayoutitem,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qrect,
  gen_qsize,
  gen_qsizepolicy,
  gen_qwidget

type cQStackedLayout*{.exportc: "QStackedLayout", incompleteStruct.} = object

proc fcQStackedLayout_new(parent: pointer): ptr cQStackedLayout {.importc: "QStackedLayout_new".}
proc fcQStackedLayout_new2(): ptr cQStackedLayout {.importc: "QStackedLayout_new2".}
proc fcQStackedLayout_new3(parentLayout: pointer): ptr cQStackedLayout {.importc: "QStackedLayout_new3".}
proc fcQStackedLayout_metaObject(self: pointer, ): pointer {.importc: "QStackedLayout_metaObject".}
proc fcQStackedLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QStackedLayout_metacast".}
proc fcQStackedLayout_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStackedLayout_metacall".}
proc fcQStackedLayout_tr(s: cstring): struct_miqt_string {.importc: "QStackedLayout_tr".}
proc fcQStackedLayout_addWidget(self: pointer, w: pointer): cint {.importc: "QStackedLayout_addWidget".}
proc fcQStackedLayout_insertWidget(self: pointer, index: cint, w: pointer): cint {.importc: "QStackedLayout_insertWidget".}
proc fcQStackedLayout_currentWidget(self: pointer, ): pointer {.importc: "QStackedLayout_currentWidget".}
proc fcQStackedLayout_currentIndex(self: pointer, ): cint {.importc: "QStackedLayout_currentIndex".}
proc fcQStackedLayout_widget(self: pointer, param1: cint): pointer {.importc: "QStackedLayout_widget".}
proc fcQStackedLayout_count(self: pointer, ): cint {.importc: "QStackedLayout_count".}
proc fcQStackedLayout_stackingMode(self: pointer, ): cint {.importc: "QStackedLayout_stackingMode".}
proc fcQStackedLayout_setStackingMode(self: pointer, stackingMode: cint): void {.importc: "QStackedLayout_setStackingMode".}
proc fcQStackedLayout_addItem(self: pointer, item: pointer): void {.importc: "QStackedLayout_addItem".}
proc fcQStackedLayout_sizeHint(self: pointer, ): pointer {.importc: "QStackedLayout_sizeHint".}
proc fcQStackedLayout_minimumSize(self: pointer, ): pointer {.importc: "QStackedLayout_minimumSize".}
proc fcQStackedLayout_itemAt(self: pointer, param1: cint): pointer {.importc: "QStackedLayout_itemAt".}
proc fcQStackedLayout_takeAt(self: pointer, param1: cint): pointer {.importc: "QStackedLayout_takeAt".}
proc fcQStackedLayout_setGeometry(self: pointer, rect: pointer): void {.importc: "QStackedLayout_setGeometry".}
proc fcQStackedLayout_hasHeightForWidth(self: pointer, ): bool {.importc: "QStackedLayout_hasHeightForWidth".}
proc fcQStackedLayout_heightForWidth(self: pointer, width: cint): cint {.importc: "QStackedLayout_heightForWidth".}
proc fcQStackedLayout_widgetRemoved(self: pointer, index: cint): void {.importc: "QStackedLayout_widgetRemoved".}
proc fQStackedLayout_connect_widgetRemoved(self: pointer, slot: int) {.importc: "QStackedLayout_connect_widgetRemoved".}
proc fcQStackedLayout_currentChanged(self: pointer, index: cint): void {.importc: "QStackedLayout_currentChanged".}
proc fQStackedLayout_connect_currentChanged(self: pointer, slot: int) {.importc: "QStackedLayout_connect_currentChanged".}
proc fcQStackedLayout_setCurrentIndex(self: pointer, index: cint): void {.importc: "QStackedLayout_setCurrentIndex".}
proc fcQStackedLayout_setCurrentWidget(self: pointer, w: pointer): void {.importc: "QStackedLayout_setCurrentWidget".}
proc fcQStackedLayout_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStackedLayout_tr2".}
proc fcQStackedLayout_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStackedLayout_tr3".}
proc fQStackedLayout_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QStackedLayout_virtualbase_metacall".}
proc fcQStackedLayout_override_virtual_metacall(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_metacall".}
proc fQStackedLayout_virtualbase_count(self: pointer, ): cint{.importc: "QStackedLayout_virtualbase_count".}
proc fcQStackedLayout_override_virtual_count(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_count".}
proc fQStackedLayout_virtualbase_addItem(self: pointer, item: pointer): void{.importc: "QStackedLayout_virtualbase_addItem".}
proc fcQStackedLayout_override_virtual_addItem(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_addItem".}
proc fQStackedLayout_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QStackedLayout_virtualbase_sizeHint".}
proc fcQStackedLayout_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_sizeHint".}
proc fQStackedLayout_virtualbase_minimumSize(self: pointer, ): pointer{.importc: "QStackedLayout_virtualbase_minimumSize".}
proc fcQStackedLayout_override_virtual_minimumSize(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_minimumSize".}
proc fQStackedLayout_virtualbase_itemAt(self: pointer, param1: cint): pointer{.importc: "QStackedLayout_virtualbase_itemAt".}
proc fcQStackedLayout_override_virtual_itemAt(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_itemAt".}
proc fQStackedLayout_virtualbase_takeAt(self: pointer, param1: cint): pointer{.importc: "QStackedLayout_virtualbase_takeAt".}
proc fcQStackedLayout_override_virtual_takeAt(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_takeAt".}
proc fQStackedLayout_virtualbase_setGeometry(self: pointer, rect: pointer): void{.importc: "QStackedLayout_virtualbase_setGeometry".}
proc fcQStackedLayout_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_setGeometry".}
proc fQStackedLayout_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QStackedLayout_virtualbase_hasHeightForWidth".}
proc fcQStackedLayout_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_hasHeightForWidth".}
proc fQStackedLayout_virtualbase_heightForWidth(self: pointer, width: cint): cint{.importc: "QStackedLayout_virtualbase_heightForWidth".}
proc fcQStackedLayout_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_heightForWidth".}
proc fQStackedLayout_virtualbase_spacing(self: pointer, ): cint{.importc: "QStackedLayout_virtualbase_spacing".}
proc fcQStackedLayout_override_virtual_spacing(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_spacing".}
proc fQStackedLayout_virtualbase_setSpacing(self: pointer, spacing: cint): void{.importc: "QStackedLayout_virtualbase_setSpacing".}
proc fcQStackedLayout_override_virtual_setSpacing(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_setSpacing".}
proc fQStackedLayout_virtualbase_invalidate(self: pointer, ): void{.importc: "QStackedLayout_virtualbase_invalidate".}
proc fcQStackedLayout_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_invalidate".}
proc fQStackedLayout_virtualbase_geometry(self: pointer, ): pointer{.importc: "QStackedLayout_virtualbase_geometry".}
proc fcQStackedLayout_override_virtual_geometry(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_geometry".}
proc fQStackedLayout_virtualbase_expandingDirections(self: pointer, ): cint{.importc: "QStackedLayout_virtualbase_expandingDirections".}
proc fcQStackedLayout_override_virtual_expandingDirections(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_expandingDirections".}
proc fQStackedLayout_virtualbase_maximumSize(self: pointer, ): pointer{.importc: "QStackedLayout_virtualbase_maximumSize".}
proc fcQStackedLayout_override_virtual_maximumSize(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_maximumSize".}
proc fQStackedLayout_virtualbase_indexOf(self: pointer, param1: pointer): cint{.importc: "QStackedLayout_virtualbase_indexOf".}
proc fcQStackedLayout_override_virtual_indexOf(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_indexOf".}
proc fQStackedLayout_virtualbase_isEmpty(self: pointer, ): bool{.importc: "QStackedLayout_virtualbase_isEmpty".}
proc fcQStackedLayout_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_isEmpty".}
proc fQStackedLayout_virtualbase_controlTypes(self: pointer, ): cint{.importc: "QStackedLayout_virtualbase_controlTypes".}
proc fcQStackedLayout_override_virtual_controlTypes(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_controlTypes".}
proc fQStackedLayout_virtualbase_replaceWidget(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer{.importc: "QStackedLayout_virtualbase_replaceWidget".}
proc fcQStackedLayout_override_virtual_replaceWidget(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_replaceWidget".}
proc fQStackedLayout_virtualbase_layout(self: pointer, ): pointer{.importc: "QStackedLayout_virtualbase_layout".}
proc fcQStackedLayout_override_virtual_layout(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_layout".}
proc fQStackedLayout_virtualbase_childEvent(self: pointer, e: pointer): void{.importc: "QStackedLayout_virtualbase_childEvent".}
proc fcQStackedLayout_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_childEvent".}
proc fQStackedLayout_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QStackedLayout_virtualbase_event".}
proc fcQStackedLayout_override_virtual_event(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_event".}
proc fQStackedLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QStackedLayout_virtualbase_eventFilter".}
proc fcQStackedLayout_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_eventFilter".}
proc fQStackedLayout_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QStackedLayout_virtualbase_timerEvent".}
proc fcQStackedLayout_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_timerEvent".}
proc fQStackedLayout_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QStackedLayout_virtualbase_customEvent".}
proc fcQStackedLayout_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_customEvent".}
proc fQStackedLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QStackedLayout_virtualbase_connectNotify".}
proc fcQStackedLayout_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_connectNotify".}
proc fQStackedLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QStackedLayout_virtualbase_disconnectNotify".}
proc fcQStackedLayout_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_disconnectNotify".}
proc fQStackedLayout_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint{.importc: "QStackedLayout_virtualbase_minimumHeightForWidth".}
proc fcQStackedLayout_override_virtual_minimumHeightForWidth(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_minimumHeightForWidth".}
proc fQStackedLayout_virtualbase_widget(self: pointer, ): pointer{.importc: "QStackedLayout_virtualbase_widget".}
proc fcQStackedLayout_override_virtual_widget(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_widget".}
proc fQStackedLayout_virtualbase_spacerItem(self: pointer, ): pointer{.importc: "QStackedLayout_virtualbase_spacerItem".}
proc fcQStackedLayout_override_virtual_spacerItem(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_spacerItem".}
proc fcQStackedLayout_delete(self: pointer) {.importc: "QStackedLayout_delete".}


func init*(T: type QStackedLayout, h: ptr cQStackedLayout): QStackedLayout =
  T(h: h)
proc create*(T: type QStackedLayout, parent: gen_qwidget.QWidget): QStackedLayout =

  QStackedLayout.init(fcQStackedLayout_new(parent.h))
proc create*(T: type QStackedLayout, ): QStackedLayout =

  QStackedLayout.init(fcQStackedLayout_new2())
proc create2*(T: type QStackedLayout, parentLayout: gen_qlayout.QLayout): QStackedLayout =

  QStackedLayout.init(fcQStackedLayout_new3(parentLayout.h))
proc metaObject*(self: QStackedLayout, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQStackedLayout_metaObject(self.h))

proc metacast*(self: QStackedLayout, param1: cstring): pointer =

  fcQStackedLayout_metacast(self.h, param1)

proc metacall*(self: QStackedLayout, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQStackedLayout_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QStackedLayout, s: cstring): string =

  let v_ms = fcQStackedLayout_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addWidget*(self: QStackedLayout, w: gen_qwidget.QWidget): cint =

  fcQStackedLayout_addWidget(self.h, w.h)

proc insertWidget*(self: QStackedLayout, index: cint, w: gen_qwidget.QWidget): cint =

  fcQStackedLayout_insertWidget(self.h, index, w.h)

proc currentWidget*(self: QStackedLayout, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQStackedLayout_currentWidget(self.h))

proc currentIndex*(self: QStackedLayout, ): cint =

  fcQStackedLayout_currentIndex(self.h)

proc widget*(self: QStackedLayout, param1: cint): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQStackedLayout_widget(self.h, param1))

proc count*(self: QStackedLayout, ): cint =

  fcQStackedLayout_count(self.h)

proc stackingMode*(self: QStackedLayout, ): QStackedLayoutStackingMode =

  QStackedLayoutStackingMode(fcQStackedLayout_stackingMode(self.h))

proc setStackingMode*(self: QStackedLayout, stackingMode: QStackedLayoutStackingMode): void =

  fcQStackedLayout_setStackingMode(self.h, cint(stackingMode))

proc addItem*(self: QStackedLayout, item: gen_qlayoutitem.QLayoutItem): void =

  fcQStackedLayout_addItem(self.h, item.h)

proc sizeHint*(self: QStackedLayout, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQStackedLayout_sizeHint(self.h))

proc minimumSize*(self: QStackedLayout, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQStackedLayout_minimumSize(self.h))

proc itemAt*(self: QStackedLayout, param1: cint): gen_qlayoutitem.QLayoutItem =

  gen_qlayoutitem.QLayoutItem(h: fcQStackedLayout_itemAt(self.h, param1))

proc takeAt*(self: QStackedLayout, param1: cint): gen_qlayoutitem.QLayoutItem =

  gen_qlayoutitem.QLayoutItem(h: fcQStackedLayout_takeAt(self.h, param1))

proc setGeometry*(self: QStackedLayout, rect: gen_qrect.QRect): void =

  fcQStackedLayout_setGeometry(self.h, rect.h)

proc hasHeightForWidth*(self: QStackedLayout, ): bool =

  fcQStackedLayout_hasHeightForWidth(self.h)

proc heightForWidth*(self: QStackedLayout, width: cint): cint =

  fcQStackedLayout_heightForWidth(self.h, width)

proc widgetRemoved*(self: QStackedLayout, index: cint): void =

  fcQStackedLayout_widgetRemoved(self.h, index)

proc miqt_exec_callback_QStackedLayout_widgetRemoved(slot: int, index: cint) {.exportc.} =
  type Cb = proc(index: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)

proc onwidgetRemoved*(self: QStackedLayout, slot: proc(index: cint)) =
  type Cb = proc(index: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQStackedLayout_connect_widgetRemoved(self.h, cast[int](addr tmp[]))
proc currentChanged*(self: QStackedLayout, index: cint): void =

  fcQStackedLayout_currentChanged(self.h, index)

proc miqt_exec_callback_QStackedLayout_currentChanged(slot: int, index: cint) {.exportc.} =
  type Cb = proc(index: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)

proc oncurrentChanged*(self: QStackedLayout, slot: proc(index: cint)) =
  type Cb = proc(index: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQStackedLayout_connect_currentChanged(self.h, cast[int](addr tmp[]))
proc setCurrentIndex*(self: QStackedLayout, index: cint): void =

  fcQStackedLayout_setCurrentIndex(self.h, index)

proc setCurrentWidget*(self: QStackedLayout, w: gen_qwidget.QWidget): void =

  fcQStackedLayout_setCurrentWidget(self.h, w.h)

proc tr2*(_: type QStackedLayout, s: cstring, c: cstring): string =

  let v_ms = fcQStackedLayout_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QStackedLayout, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQStackedLayout_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QStackedLayout, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQStackedLayout_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QStackedLayoutmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QStackedLayout, slot: proc(super: QStackedLayoutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayoutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_metacall(self: ptr cQStackedLayout, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QStackedLayout_metacall ".} =
  type Cb = proc(super: QStackedLayoutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QStackedLayout(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_count(self: QStackedLayout, ): cint =


  fQStackedLayout_virtualbase_count(self.h)

type QStackedLayoutcountBase* = proc(): cint
proc oncount*(self: QStackedLayout, slot: proc(super: QStackedLayoutcountBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayoutcountBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_count(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_count(self: ptr cQStackedLayout, slot: int): cint {.exportc: "miqt_exec_callback_QStackedLayout_count ".} =
  type Cb = proc(super: QStackedLayoutcountBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_count(QStackedLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_addItem(self: QStackedLayout, item: gen_qlayoutitem.QLayoutItem): void =


  fQStackedLayout_virtualbase_addItem(self.h, item.h)

type QStackedLayoutaddItemBase* = proc(item: gen_qlayoutitem.QLayoutItem): void
proc onaddItem*(self: QStackedLayout, slot: proc(super: QStackedLayoutaddItemBase, item: gen_qlayoutitem.QLayoutItem): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayoutaddItemBase, item: gen_qlayoutitem.QLayoutItem): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_addItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_addItem(self: ptr cQStackedLayout, slot: int, item: pointer): void {.exportc: "miqt_exec_callback_QStackedLayout_addItem ".} =
  type Cb = proc(super: QStackedLayoutaddItemBase, item: gen_qlayoutitem.QLayoutItem): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(item: gen_qlayoutitem.QLayoutItem): auto =
    callVirtualBase_addItem(QStackedLayout(h: self), item)
  let slotval1 = gen_qlayoutitem.QLayoutItem(h: item)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QStackedLayout, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQStackedLayout_virtualbase_sizeHint(self.h))

type QStackedLayoutsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QStackedLayout, slot: proc(super: QStackedLayoutsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayoutsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_sizeHint(self: ptr cQStackedLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QStackedLayout_sizeHint ".} =
  type Cb = proc(super: QStackedLayoutsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QStackedLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSize(self: QStackedLayout, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQStackedLayout_virtualbase_minimumSize(self.h))

type QStackedLayoutminimumSizeBase* = proc(): gen_qsize.QSize
proc onminimumSize*(self: QStackedLayout, slot: proc(super: QStackedLayoutminimumSizeBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayoutminimumSizeBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_minimumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_minimumSize(self: ptr cQStackedLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QStackedLayout_minimumSize ".} =
  type Cb = proc(super: QStackedLayoutminimumSizeBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSize(QStackedLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_itemAt(self: QStackedLayout, param1: cint): gen_qlayoutitem.QLayoutItem =


  gen_qlayoutitem.QLayoutItem(h: fQStackedLayout_virtualbase_itemAt(self.h, param1))

type QStackedLayoutitemAtBase* = proc(param1: cint): gen_qlayoutitem.QLayoutItem
proc onitemAt*(self: QStackedLayout, slot: proc(super: QStackedLayoutitemAtBase, param1: cint): gen_qlayoutitem.QLayoutItem) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayoutitemAtBase, param1: cint): gen_qlayoutitem.QLayoutItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_itemAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_itemAt(self: ptr cQStackedLayout, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QStackedLayout_itemAt ".} =
  type Cb = proc(super: QStackedLayoutitemAtBase, param1: cint): gen_qlayoutitem.QLayoutItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_itemAt(QStackedLayout(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_takeAt(self: QStackedLayout, param1: cint): gen_qlayoutitem.QLayoutItem =


  gen_qlayoutitem.QLayoutItem(h: fQStackedLayout_virtualbase_takeAt(self.h, param1))

type QStackedLayouttakeAtBase* = proc(param1: cint): gen_qlayoutitem.QLayoutItem
proc ontakeAt*(self: QStackedLayout, slot: proc(super: QStackedLayouttakeAtBase, param1: cint): gen_qlayoutitem.QLayoutItem) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayouttakeAtBase, param1: cint): gen_qlayoutitem.QLayoutItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_takeAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_takeAt(self: ptr cQStackedLayout, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QStackedLayout_takeAt ".} =
  type Cb = proc(super: QStackedLayouttakeAtBase, param1: cint): gen_qlayoutitem.QLayoutItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_takeAt(QStackedLayout(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setGeometry(self: QStackedLayout, rect: gen_qrect.QRect): void =


  fQStackedLayout_virtualbase_setGeometry(self.h, rect.h)

type QStackedLayoutsetGeometryBase* = proc(rect: gen_qrect.QRect): void
proc onsetGeometry*(self: QStackedLayout, slot: proc(super: QStackedLayoutsetGeometryBase, rect: gen_qrect.QRect): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayoutsetGeometryBase, rect: gen_qrect.QRect): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_setGeometry(self: ptr cQStackedLayout, slot: int, rect: pointer): void {.exportc: "miqt_exec_callback_QStackedLayout_setGeometry ".} =
  type Cb = proc(super: QStackedLayoutsetGeometryBase, rect: gen_qrect.QRect): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(rect: gen_qrect.QRect): auto =
    callVirtualBase_setGeometry(QStackedLayout(h: self), rect)
  let slotval1 = gen_qrect.QRect(h: rect)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hasHeightForWidth(self: QStackedLayout, ): bool =


  fQStackedLayout_virtualbase_hasHeightForWidth(self.h)

type QStackedLayouthasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QStackedLayout, slot: proc(super: QStackedLayouthasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayouthasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_hasHeightForWidth(self: ptr cQStackedLayout, slot: int): bool {.exportc: "miqt_exec_callback_QStackedLayout_hasHeightForWidth ".} =
  type Cb = proc(super: QStackedLayouthasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QStackedLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_heightForWidth(self: QStackedLayout, width: cint): cint =


  fQStackedLayout_virtualbase_heightForWidth(self.h, width)

type QStackedLayoutheightForWidthBase* = proc(width: cint): cint
proc onheightForWidth*(self: QStackedLayout, slot: proc(super: QStackedLayoutheightForWidthBase, width: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayoutheightForWidthBase, width: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_heightForWidth(self: ptr cQStackedLayout, slot: int, width: cint): cint {.exportc: "miqt_exec_callback_QStackedLayout_heightForWidth ".} =
  type Cb = proc(super: QStackedLayoutheightForWidthBase, width: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(width: cint): auto =
    callVirtualBase_heightForWidth(QStackedLayout(h: self), width)
  let slotval1 = width


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_spacing(self: QStackedLayout, ): cint =


  fQStackedLayout_virtualbase_spacing(self.h)

type QStackedLayoutspacingBase* = proc(): cint
proc onspacing*(self: QStackedLayout, slot: proc(super: QStackedLayoutspacingBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayoutspacingBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_spacing(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_spacing(self: ptr cQStackedLayout, slot: int): cint {.exportc: "miqt_exec_callback_QStackedLayout_spacing ".} =
  type Cb = proc(super: QStackedLayoutspacingBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_spacing(QStackedLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setSpacing(self: QStackedLayout, spacing: cint): void =


  fQStackedLayout_virtualbase_setSpacing(self.h, spacing)

type QStackedLayoutsetSpacingBase* = proc(spacing: cint): void
proc onsetSpacing*(self: QStackedLayout, slot: proc(super: QStackedLayoutsetSpacingBase, spacing: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayoutsetSpacingBase, spacing: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_setSpacing(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_setSpacing(self: ptr cQStackedLayout, slot: int, spacing: cint): void {.exportc: "miqt_exec_callback_QStackedLayout_setSpacing ".} =
  type Cb = proc(super: QStackedLayoutsetSpacingBase, spacing: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(spacing: cint): auto =
    callVirtualBase_setSpacing(QStackedLayout(h: self), spacing)
  let slotval1 = spacing


  nimfunc[](superCall, slotval1)
proc callVirtualBase_invalidate(self: QStackedLayout, ): void =


  fQStackedLayout_virtualbase_invalidate(self.h)

type QStackedLayoutinvalidateBase* = proc(): void
proc oninvalidate*(self: QStackedLayout, slot: proc(super: QStackedLayoutinvalidateBase): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayoutinvalidateBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_invalidate(self: ptr cQStackedLayout, slot: int): void {.exportc: "miqt_exec_callback_QStackedLayout_invalidate ".} =
  type Cb = proc(super: QStackedLayoutinvalidateBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_invalidate(QStackedLayout(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_geometry(self: QStackedLayout, ): gen_qrect.QRect =


  gen_qrect.QRect(h: fQStackedLayout_virtualbase_geometry(self.h))

type QStackedLayoutgeometryBase* = proc(): gen_qrect.QRect
proc ongeometry*(self: QStackedLayout, slot: proc(super: QStackedLayoutgeometryBase): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayoutgeometryBase): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_geometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_geometry(self: ptr cQStackedLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QStackedLayout_geometry ".} =
  type Cb = proc(super: QStackedLayoutgeometryBase): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_geometry(QStackedLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_expandingDirections(self: QStackedLayout, ): gen_qnamespace.Orientation =


  gen_qnamespace.Orientation(fQStackedLayout_virtualbase_expandingDirections(self.h))

type QStackedLayoutexpandingDirectionsBase* = proc(): gen_qnamespace.Orientation
proc onexpandingDirections*(self: QStackedLayout, slot: proc(super: QStackedLayoutexpandingDirectionsBase): gen_qnamespace.Orientation) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayoutexpandingDirectionsBase): gen_qnamespace.Orientation
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_expandingDirections(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_expandingDirections(self: ptr cQStackedLayout, slot: int): cint {.exportc: "miqt_exec_callback_QStackedLayout_expandingDirections ".} =
  type Cb = proc(super: QStackedLayoutexpandingDirectionsBase): gen_qnamespace.Orientation
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_expandingDirections(QStackedLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_maximumSize(self: QStackedLayout, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQStackedLayout_virtualbase_maximumSize(self.h))

type QStackedLayoutmaximumSizeBase* = proc(): gen_qsize.QSize
proc onmaximumSize*(self: QStackedLayout, slot: proc(super: QStackedLayoutmaximumSizeBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayoutmaximumSizeBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_maximumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_maximumSize(self: ptr cQStackedLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QStackedLayout_maximumSize ".} =
  type Cb = proc(super: QStackedLayoutmaximumSizeBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_maximumSize(QStackedLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_indexOf(self: QStackedLayout, param1: gen_qwidget.QWidget): cint =


  fQStackedLayout_virtualbase_indexOf(self.h, param1.h)

type QStackedLayoutindexOfBase* = proc(param1: gen_qwidget.QWidget): cint
proc onindexOf*(self: QStackedLayout, slot: proc(super: QStackedLayoutindexOfBase, param1: gen_qwidget.QWidget): cint) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayoutindexOfBase, param1: gen_qwidget.QWidget): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_indexOf(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_indexOf(self: ptr cQStackedLayout, slot: int, param1: pointer): cint {.exportc: "miqt_exec_callback_QStackedLayout_indexOf ".} =
  type Cb = proc(super: QStackedLayoutindexOfBase, param1: gen_qwidget.QWidget): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qwidget.QWidget): auto =
    callVirtualBase_indexOf(QStackedLayout(h: self), param1)
  let slotval1 = gen_qwidget.QWidget(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_isEmpty(self: QStackedLayout, ): bool =


  fQStackedLayout_virtualbase_isEmpty(self.h)

type QStackedLayoutisEmptyBase* = proc(): bool
proc onisEmpty*(self: QStackedLayout, slot: proc(super: QStackedLayoutisEmptyBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayoutisEmptyBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_isEmpty(self: ptr cQStackedLayout, slot: int): bool {.exportc: "miqt_exec_callback_QStackedLayout_isEmpty ".} =
  type Cb = proc(super: QStackedLayoutisEmptyBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isEmpty(QStackedLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_controlTypes(self: QStackedLayout, ): gen_qsizepolicy.QSizePolicyControlType =


  gen_qsizepolicy.QSizePolicyControlType(fQStackedLayout_virtualbase_controlTypes(self.h))

type QStackedLayoutcontrolTypesBase* = proc(): gen_qsizepolicy.QSizePolicyControlType
proc oncontrolTypes*(self: QStackedLayout, slot: proc(super: QStackedLayoutcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayoutcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_controlTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_controlTypes(self: ptr cQStackedLayout, slot: int): cint {.exportc: "miqt_exec_callback_QStackedLayout_controlTypes ".} =
  type Cb = proc(super: QStackedLayoutcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_controlTypes(QStackedLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_replaceWidget(self: QStackedLayout, fromVal: gen_qwidget.QWidget, to: gen_qwidget.QWidget, options: gen_qnamespace.FindChildOption): gen_qlayoutitem.QLayoutItem =


  gen_qlayoutitem.QLayoutItem(h: fQStackedLayout_virtualbase_replaceWidget(self.h, fromVal.h, to.h, cint(options)))

type QStackedLayoutreplaceWidgetBase* = proc(fromVal: gen_qwidget.QWidget, to: gen_qwidget.QWidget, options: gen_qnamespace.FindChildOption): gen_qlayoutitem.QLayoutItem
proc onreplaceWidget*(self: QStackedLayout, slot: proc(super: QStackedLayoutreplaceWidgetBase, fromVal: gen_qwidget.QWidget, to: gen_qwidget.QWidget, options: gen_qnamespace.FindChildOption): gen_qlayoutitem.QLayoutItem) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayoutreplaceWidgetBase, fromVal: gen_qwidget.QWidget, to: gen_qwidget.QWidget, options: gen_qnamespace.FindChildOption): gen_qlayoutitem.QLayoutItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_replaceWidget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_replaceWidget(self: ptr cQStackedLayout, slot: int, fromVal: pointer, to: pointer, options: cint): pointer {.exportc: "miqt_exec_callback_QStackedLayout_replaceWidget ".} =
  type Cb = proc(super: QStackedLayoutreplaceWidgetBase, fromVal: gen_qwidget.QWidget, to: gen_qwidget.QWidget, options: gen_qnamespace.FindChildOption): gen_qlayoutitem.QLayoutItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fromVal: gen_qwidget.QWidget, to: gen_qwidget.QWidget, options: gen_qnamespace.FindChildOption): auto =
    callVirtualBase_replaceWidget(QStackedLayout(h: self), fromVal, to, options)
  let slotval1 = gen_qwidget.QWidget(h: fromVal)

  let slotval2 = gen_qwidget.QWidget(h: to)

  let slotval3 = gen_qnamespace.FindChildOption(options)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_layout(self: QStackedLayout, ): gen_qlayout.QLayout =


  gen_qlayout.QLayout(h: fQStackedLayout_virtualbase_layout(self.h))

type QStackedLayoutlayoutBase* = proc(): gen_qlayout.QLayout
proc onlayout*(self: QStackedLayout, slot: proc(super: QStackedLayoutlayoutBase): gen_qlayout.QLayout) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayoutlayoutBase): gen_qlayout.QLayout
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_layout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_layout(self: ptr cQStackedLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QStackedLayout_layout ".} =
  type Cb = proc(super: QStackedLayoutlayoutBase): gen_qlayout.QLayout
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_layout(QStackedLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_childEvent(self: QStackedLayout, e: gen_qcoreevent.QChildEvent): void =


  fQStackedLayout_virtualbase_childEvent(self.h, e.h)

type QStackedLayoutchildEventBase* = proc(e: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QStackedLayout, slot: proc(super: QStackedLayoutchildEventBase, e: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayoutchildEventBase, e: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_childEvent(self: ptr cQStackedLayout, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QStackedLayout_childEvent ".} =
  type Cb = proc(super: QStackedLayoutchildEventBase, e: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QStackedLayout(h: self), e)
  let slotval1 = gen_qcoreevent.QChildEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QStackedLayout, event: gen_qcoreevent.QEvent): bool =


  fQStackedLayout_virtualbase_event(self.h, event.h)

type QStackedLayouteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QStackedLayout, slot: proc(super: QStackedLayouteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayouteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_event(self: ptr cQStackedLayout, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QStackedLayout_event ".} =
  type Cb = proc(super: QStackedLayouteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QStackedLayout(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QStackedLayout, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQStackedLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

type QStackedLayouteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QStackedLayout, slot: proc(super: QStackedLayouteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayouteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_eventFilter(self: ptr cQStackedLayout, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QStackedLayout_eventFilter ".} =
  type Cb = proc(super: QStackedLayouteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QStackedLayout(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QStackedLayout, event: gen_qcoreevent.QTimerEvent): void =


  fQStackedLayout_virtualbase_timerEvent(self.h, event.h)

type QStackedLayouttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QStackedLayout, slot: proc(super: QStackedLayouttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayouttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_timerEvent(self: ptr cQStackedLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedLayout_timerEvent ".} =
  type Cb = proc(super: QStackedLayouttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QStackedLayout(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QStackedLayout, event: gen_qcoreevent.QEvent): void =


  fQStackedLayout_virtualbase_customEvent(self.h, event.h)

type QStackedLayoutcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QStackedLayout, slot: proc(super: QStackedLayoutcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayoutcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_customEvent(self: ptr cQStackedLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedLayout_customEvent ".} =
  type Cb = proc(super: QStackedLayoutcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QStackedLayout(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QStackedLayout, signal: gen_qmetaobject.QMetaMethod): void =


  fQStackedLayout_virtualbase_connectNotify(self.h, signal.h)

type QStackedLayoutconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QStackedLayout, slot: proc(super: QStackedLayoutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayoutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_connectNotify(self: ptr cQStackedLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStackedLayout_connectNotify ".} =
  type Cb = proc(super: QStackedLayoutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QStackedLayout(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QStackedLayout, signal: gen_qmetaobject.QMetaMethod): void =


  fQStackedLayout_virtualbase_disconnectNotify(self.h, signal.h)

type QStackedLayoutdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QStackedLayout, slot: proc(super: QStackedLayoutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayoutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_disconnectNotify(self: ptr cQStackedLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStackedLayout_disconnectNotify ".} =
  type Cb = proc(super: QStackedLayoutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QStackedLayout(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_minimumHeightForWidth(self: QStackedLayout, param1: cint): cint =


  fQStackedLayout_virtualbase_minimumHeightForWidth(self.h, param1)

type QStackedLayoutminimumHeightForWidthBase* = proc(param1: cint): cint
proc onminimumHeightForWidth*(self: QStackedLayout, slot: proc(super: QStackedLayoutminimumHeightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayoutminimumHeightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_minimumHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_minimumHeightForWidth(self: ptr cQStackedLayout, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QStackedLayout_minimumHeightForWidth ".} =
  type Cb = proc(super: QStackedLayoutminimumHeightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_minimumHeightForWidth(QStackedLayout(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_widget(self: QStackedLayout, ): gen_qwidget.QWidget =


  gen_qwidget.QWidget(h: fQStackedLayout_virtualbase_widget(self.h))

type QStackedLayoutwidgetBase* = proc(): gen_qwidget.QWidget
proc onwidget*(self: QStackedLayout, slot: proc(super: QStackedLayoutwidgetBase): gen_qwidget.QWidget) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayoutwidgetBase): gen_qwidget.QWidget
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_widget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_widget(self: ptr cQStackedLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QStackedLayout_widget ".} =
  type Cb = proc(super: QStackedLayoutwidgetBase): gen_qwidget.QWidget
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_widget(QStackedLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_spacerItem(self: QStackedLayout, ): gen_qlayoutitem.QSpacerItem =


  gen_qlayoutitem.QSpacerItem(h: fQStackedLayout_virtualbase_spacerItem(self.h))

type QStackedLayoutspacerItemBase* = proc(): gen_qlayoutitem.QSpacerItem
proc onspacerItem*(self: QStackedLayout, slot: proc(super: QStackedLayoutspacerItemBase): gen_qlayoutitem.QSpacerItem) =
  # TODO check subclass
  type Cb = proc(super: QStackedLayoutspacerItemBase): gen_qlayoutitem.QSpacerItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_spacerItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_spacerItem(self: ptr cQStackedLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QStackedLayout_spacerItem ".} =
  type Cb = proc(super: QStackedLayoutspacerItemBase): gen_qlayoutitem.QSpacerItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_spacerItem(QStackedLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QStackedLayout) =
  fcQStackedLayout_delete(self.h)
