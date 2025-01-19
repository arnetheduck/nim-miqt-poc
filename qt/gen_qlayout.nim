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
{.compile("gen_qlayout.cpp", cflags).}


type QLayoutSizeConstraint* = cint
const
  QLayoutSetDefaultConstraint* = 0
  QLayoutSetNoConstraint* = 1
  QLayoutSetMinimumSize* = 2
  QLayoutSetFixedSize* = 3
  QLayoutSetMaximumSize* = 4
  QLayoutSetMinAndMaxSize* = 5



import gen_qlayout_types
export gen_qlayout_types

import
  gen_qcoreevent,
  gen_qlayoutitem,
  gen_qmargins,
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
  gen_qlayoutitem,
  gen_qmargins,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qrect,
  gen_qsize,
  gen_qsizepolicy,
  gen_qwidget

type cQLayout*{.exportc: "QLayout", incompleteStruct.} = object

proc fcQLayout_new(parent: pointer): ptr cQLayout {.importc: "QLayout_new".}
proc fcQLayout_new2(): ptr cQLayout {.importc: "QLayout_new2".}
proc fcQLayout_metaObject(self: pointer, ): pointer {.importc: "QLayout_metaObject".}
proc fcQLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QLayout_metacast".}
proc fcQLayout_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLayout_metacall".}
proc fcQLayout_tr(s: cstring): struct_miqt_string {.importc: "QLayout_tr".}
proc fcQLayout_trUtf8(s: cstring): struct_miqt_string {.importc: "QLayout_trUtf8".}
proc fcQLayout_margin(self: pointer, ): cint {.importc: "QLayout_margin".}
proc fcQLayout_setMargin(self: pointer, margin: cint): void {.importc: "QLayout_setMargin".}
proc fcQLayout_spacing(self: pointer, ): cint {.importc: "QLayout_spacing".}
proc fcQLayout_setSpacing(self: pointer, spacing: cint): void {.importc: "QLayout_setSpacing".}
proc fcQLayout_setContentsMargins(self: pointer, left: cint, top: cint, right: cint, bottom: cint): void {.importc: "QLayout_setContentsMargins".}
proc fcQLayout_setContentsMarginsWithMargins(self: pointer, margins: pointer): void {.importc: "QLayout_setContentsMarginsWithMargins".}
proc fcQLayout_getContentsMargins(self: pointer, left: ptr cint, top: ptr cint, right: ptr cint, bottom: ptr cint): void {.importc: "QLayout_getContentsMargins".}
proc fcQLayout_contentsMargins(self: pointer, ): pointer {.importc: "QLayout_contentsMargins".}
proc fcQLayout_contentsRect(self: pointer, ): pointer {.importc: "QLayout_contentsRect".}
proc fcQLayout_setAlignment(self: pointer, w: pointer, alignment: cint): bool {.importc: "QLayout_setAlignment".}
proc fcQLayout_setAlignment2(self: pointer, l: pointer, alignment: cint): bool {.importc: "QLayout_setAlignment2".}
proc fcQLayout_setSizeConstraint(self: pointer, sizeConstraint: cint): void {.importc: "QLayout_setSizeConstraint".}
proc fcQLayout_sizeConstraint(self: pointer, ): cint {.importc: "QLayout_sizeConstraint".}
proc fcQLayout_setMenuBar(self: pointer, w: pointer): void {.importc: "QLayout_setMenuBar".}
proc fcQLayout_menuBar(self: pointer, ): pointer {.importc: "QLayout_menuBar".}
proc fcQLayout_parentWidget(self: pointer, ): pointer {.importc: "QLayout_parentWidget".}
proc fcQLayout_invalidate(self: pointer, ): void {.importc: "QLayout_invalidate".}
proc fcQLayout_geometry(self: pointer, ): pointer {.importc: "QLayout_geometry".}
proc fcQLayout_activate(self: pointer, ): bool {.importc: "QLayout_activate".}
proc fcQLayout_update(self: pointer, ): void {.importc: "QLayout_update".}
proc fcQLayout_addWidget(self: pointer, w: pointer): void {.importc: "QLayout_addWidget".}
proc fcQLayout_addItem(self: pointer, param1: pointer): void {.importc: "QLayout_addItem".}
proc fcQLayout_removeWidget(self: pointer, w: pointer): void {.importc: "QLayout_removeWidget".}
proc fcQLayout_removeItem(self: pointer, param1: pointer): void {.importc: "QLayout_removeItem".}
proc fcQLayout_expandingDirections(self: pointer, ): cint {.importc: "QLayout_expandingDirections".}
proc fcQLayout_minimumSize(self: pointer, ): pointer {.importc: "QLayout_minimumSize".}
proc fcQLayout_maximumSize(self: pointer, ): pointer {.importc: "QLayout_maximumSize".}
proc fcQLayout_setGeometry(self: pointer, geometry: pointer): void {.importc: "QLayout_setGeometry".}
proc fcQLayout_itemAt(self: pointer, index: cint): pointer {.importc: "QLayout_itemAt".}
proc fcQLayout_takeAt(self: pointer, index: cint): pointer {.importc: "QLayout_takeAt".}
proc fcQLayout_indexOf(self: pointer, param1: pointer): cint {.importc: "QLayout_indexOf".}
proc fcQLayout_indexOfWithQLayoutItem(self: pointer, param1: pointer): cint {.importc: "QLayout_indexOfWithQLayoutItem".}
proc fcQLayout_count(self: pointer, ): cint {.importc: "QLayout_count".}
proc fcQLayout_isEmpty(self: pointer, ): bool {.importc: "QLayout_isEmpty".}
proc fcQLayout_controlTypes(self: pointer, ): cint {.importc: "QLayout_controlTypes".}
proc fcQLayout_replaceWidget(self: pointer, fromVal: pointer, to: pointer): pointer {.importc: "QLayout_replaceWidget".}
proc fcQLayout_totalHeightForWidth(self: pointer, w: cint): cint {.importc: "QLayout_totalHeightForWidth".}
proc fcQLayout_totalMinimumSize(self: pointer, ): pointer {.importc: "QLayout_totalMinimumSize".}
proc fcQLayout_totalMaximumSize(self: pointer, ): pointer {.importc: "QLayout_totalMaximumSize".}
proc fcQLayout_totalSizeHint(self: pointer, ): pointer {.importc: "QLayout_totalSizeHint".}
proc fcQLayout_layout(self: pointer, ): pointer {.importc: "QLayout_layout".}
proc fcQLayout_setEnabled(self: pointer, enabled: bool): void {.importc: "QLayout_setEnabled".}
proc fcQLayout_isEnabled(self: pointer, ): bool {.importc: "QLayout_isEnabled".}
proc fcQLayout_closestAcceptableSize(w: pointer, s: pointer): pointer {.importc: "QLayout_closestAcceptableSize".}
proc fcQLayout_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QLayout_tr2".}
proc fcQLayout_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QLayout_tr3".}
proc fcQLayout_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QLayout_trUtf82".}
proc fcQLayout_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QLayout_trUtf83".}
proc fcQLayout_replaceWidget3(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.importc: "QLayout_replaceWidget3".}
proc fQLayout_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QLayout_virtualbase_metacall".}
proc fcQLayout_override_virtual_metacall(self: pointer, slot: int) {.importc: "QLayout_override_virtual_metacall".}
proc fQLayout_virtualbase_invalidate(self: pointer, ): void{.importc: "QLayout_virtualbase_invalidate".}
proc fcQLayout_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QLayout_override_virtual_invalidate".}
proc fQLayout_virtualbase_geometry(self: pointer, ): pointer{.importc: "QLayout_virtualbase_geometry".}
proc fcQLayout_override_virtual_geometry(self: pointer, slot: int) {.importc: "QLayout_override_virtual_geometry".}
proc fcQLayout_override_virtual_addItem(self: pointer, slot: int) {.importc: "QLayout_override_virtual_addItem".}
proc fQLayout_virtualbase_expandingDirections(self: pointer, ): cint{.importc: "QLayout_virtualbase_expandingDirections".}
proc fcQLayout_override_virtual_expandingDirections(self: pointer, slot: int) {.importc: "QLayout_override_virtual_expandingDirections".}
proc fQLayout_virtualbase_minimumSize(self: pointer, ): pointer{.importc: "QLayout_virtualbase_minimumSize".}
proc fcQLayout_override_virtual_minimumSize(self: pointer, slot: int) {.importc: "QLayout_override_virtual_minimumSize".}
proc fQLayout_virtualbase_maximumSize(self: pointer, ): pointer{.importc: "QLayout_virtualbase_maximumSize".}
proc fcQLayout_override_virtual_maximumSize(self: pointer, slot: int) {.importc: "QLayout_override_virtual_maximumSize".}
proc fQLayout_virtualbase_setGeometry(self: pointer, geometry: pointer): void{.importc: "QLayout_virtualbase_setGeometry".}
proc fcQLayout_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QLayout_override_virtual_setGeometry".}
proc fcQLayout_override_virtual_itemAt(self: pointer, slot: int) {.importc: "QLayout_override_virtual_itemAt".}
proc fcQLayout_override_virtual_takeAt(self: pointer, slot: int) {.importc: "QLayout_override_virtual_takeAt".}
proc fQLayout_virtualbase_indexOf(self: pointer, param1: pointer): cint{.importc: "QLayout_virtualbase_indexOf".}
proc fcQLayout_override_virtual_indexOf(self: pointer, slot: int) {.importc: "QLayout_override_virtual_indexOf".}
proc fcQLayout_override_virtual_count(self: pointer, slot: int) {.importc: "QLayout_override_virtual_count".}
proc fQLayout_virtualbase_isEmpty(self: pointer, ): bool{.importc: "QLayout_virtualbase_isEmpty".}
proc fcQLayout_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QLayout_override_virtual_isEmpty".}
proc fQLayout_virtualbase_controlTypes(self: pointer, ): cint{.importc: "QLayout_virtualbase_controlTypes".}
proc fcQLayout_override_virtual_controlTypes(self: pointer, slot: int) {.importc: "QLayout_override_virtual_controlTypes".}
proc fQLayout_virtualbase_layout(self: pointer, ): pointer{.importc: "QLayout_virtualbase_layout".}
proc fcQLayout_override_virtual_layout(self: pointer, slot: int) {.importc: "QLayout_override_virtual_layout".}
proc fQLayout_virtualbase_childEvent(self: pointer, e: pointer): void{.importc: "QLayout_virtualbase_childEvent".}
proc fcQLayout_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QLayout_override_virtual_childEvent".}
proc fQLayout_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QLayout_virtualbase_event".}
proc fcQLayout_override_virtual_event(self: pointer, slot: int) {.importc: "QLayout_override_virtual_event".}
proc fQLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QLayout_virtualbase_eventFilter".}
proc fcQLayout_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QLayout_override_virtual_eventFilter".}
proc fQLayout_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QLayout_virtualbase_timerEvent".}
proc fcQLayout_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QLayout_override_virtual_timerEvent".}
proc fQLayout_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QLayout_virtualbase_customEvent".}
proc fcQLayout_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QLayout_override_virtual_customEvent".}
proc fQLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QLayout_virtualbase_connectNotify".}
proc fcQLayout_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QLayout_override_virtual_connectNotify".}
proc fQLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QLayout_virtualbase_disconnectNotify".}
proc fcQLayout_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QLayout_override_virtual_disconnectNotify".}
proc fcQLayout_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QLayout_override_virtual_sizeHint".}
proc fQLayout_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QLayout_virtualbase_hasHeightForWidth".}
proc fcQLayout_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QLayout_override_virtual_hasHeightForWidth".}
proc fQLayout_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QLayout_virtualbase_heightForWidth".}
proc fcQLayout_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QLayout_override_virtual_heightForWidth".}
proc fQLayout_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint{.importc: "QLayout_virtualbase_minimumHeightForWidth".}
proc fcQLayout_override_virtual_minimumHeightForWidth(self: pointer, slot: int) {.importc: "QLayout_override_virtual_minimumHeightForWidth".}
proc fQLayout_virtualbase_widget(self: pointer, ): pointer{.importc: "QLayout_virtualbase_widget".}
proc fcQLayout_override_virtual_widget(self: pointer, slot: int) {.importc: "QLayout_override_virtual_widget".}
proc fQLayout_virtualbase_spacerItem(self: pointer, ): pointer{.importc: "QLayout_virtualbase_spacerItem".}
proc fcQLayout_override_virtual_spacerItem(self: pointer, slot: int) {.importc: "QLayout_override_virtual_spacerItem".}
proc fcQLayout_staticMetaObject(): pointer {.importc: "QLayout_staticMetaObject".}
proc fcQLayout_delete(self: pointer) {.importc: "QLayout_delete".}


func init*(T: type QLayout, h: ptr cQLayout): QLayout =
  T(h: h)
proc create*(T: type QLayout, parent: gen_qwidget.QWidget): QLayout =

  QLayout.init(fcQLayout_new(parent.h))
proc create*(T: type QLayout, ): QLayout =

  QLayout.init(fcQLayout_new2())
proc metaObject*(self: QLayout, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQLayout_metaObject(self.h))

proc metacast*(self: QLayout, param1: cstring): pointer =

  fcQLayout_metacast(self.h, param1)

proc metacall*(self: QLayout, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQLayout_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QLayout, s: cstring): string =

  let v_ms = fcQLayout_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QLayout, s: cstring): string =

  let v_ms = fcQLayout_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc margin*(self: QLayout, ): cint =

  fcQLayout_margin(self.h)

proc setMargin*(self: QLayout, margin: cint): void =

  fcQLayout_setMargin(self.h, margin)

proc spacing*(self: QLayout, ): cint =

  fcQLayout_spacing(self.h)

proc setSpacing*(self: QLayout, spacing: cint): void =

  fcQLayout_setSpacing(self.h, spacing)

proc setContentsMargins*(self: QLayout, left: cint, top: cint, right: cint, bottom: cint): void =

  fcQLayout_setContentsMargins(self.h, left, top, right, bottom)

proc setContentsMarginsWithMargins*(self: QLayout, margins: gen_qmargins.QMargins): void =

  fcQLayout_setContentsMarginsWithMargins(self.h, margins.h)

proc getContentsMargins*(self: QLayout, left: ptr cint, top: ptr cint, right: ptr cint, bottom: ptr cint): void =

  fcQLayout_getContentsMargins(self.h, left, top, right, bottom)

proc contentsMargins*(self: QLayout, ): gen_qmargins.QMargins =

  gen_qmargins.QMargins(h: fcQLayout_contentsMargins(self.h))

proc contentsRect*(self: QLayout, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQLayout_contentsRect(self.h))

proc setAlignment*(self: QLayout, w: gen_qwidget.QWidget, alignment: gen_qnamespace.AlignmentFlag): bool =

  fcQLayout_setAlignment(self.h, w.h, cint(alignment))

proc setAlignment2*(self: QLayout, l: QLayout, alignment: gen_qnamespace.AlignmentFlag): bool =

  fcQLayout_setAlignment2(self.h, l.h, cint(alignment))

proc setSizeConstraint*(self: QLayout, sizeConstraint: QLayoutSizeConstraint): void =

  fcQLayout_setSizeConstraint(self.h, cint(sizeConstraint))

proc sizeConstraint*(self: QLayout, ): QLayoutSizeConstraint =

  QLayoutSizeConstraint(fcQLayout_sizeConstraint(self.h))

proc setMenuBar*(self: QLayout, w: gen_qwidget.QWidget): void =

  fcQLayout_setMenuBar(self.h, w.h)

proc menuBar*(self: QLayout, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQLayout_menuBar(self.h))

proc parentWidget*(self: QLayout, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQLayout_parentWidget(self.h))

proc invalidate*(self: QLayout, ): void =

  fcQLayout_invalidate(self.h)

proc geometry*(self: QLayout, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQLayout_geometry(self.h))

proc activate*(self: QLayout, ): bool =

  fcQLayout_activate(self.h)

proc update*(self: QLayout, ): void =

  fcQLayout_update(self.h)

proc addWidget*(self: QLayout, w: gen_qwidget.QWidget): void =

  fcQLayout_addWidget(self.h, w.h)

proc addItem*(self: QLayout, param1: gen_qlayoutitem.QLayoutItem): void =

  fcQLayout_addItem(self.h, param1.h)

proc removeWidget*(self: QLayout, w: gen_qwidget.QWidget): void =

  fcQLayout_removeWidget(self.h, w.h)

proc removeItem*(self: QLayout, param1: gen_qlayoutitem.QLayoutItem): void =

  fcQLayout_removeItem(self.h, param1.h)

proc expandingDirections*(self: QLayout, ): gen_qnamespace.Orientation =

  gen_qnamespace.Orientation(fcQLayout_expandingDirections(self.h))

proc minimumSize*(self: QLayout, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQLayout_minimumSize(self.h))

proc maximumSize*(self: QLayout, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQLayout_maximumSize(self.h))

proc setGeometry*(self: QLayout, geometry: gen_qrect.QRect): void =

  fcQLayout_setGeometry(self.h, geometry.h)

proc itemAt*(self: QLayout, index: cint): gen_qlayoutitem.QLayoutItem =

  gen_qlayoutitem.QLayoutItem(h: fcQLayout_itemAt(self.h, index))

proc takeAt*(self: QLayout, index: cint): gen_qlayoutitem.QLayoutItem =

  gen_qlayoutitem.QLayoutItem(h: fcQLayout_takeAt(self.h, index))

proc indexOf*(self: QLayout, param1: gen_qwidget.QWidget): cint =

  fcQLayout_indexOf(self.h, param1.h)

proc indexOfWithQLayoutItem*(self: QLayout, param1: gen_qlayoutitem.QLayoutItem): cint =

  fcQLayout_indexOfWithQLayoutItem(self.h, param1.h)

proc count*(self: QLayout, ): cint =

  fcQLayout_count(self.h)

proc isEmpty*(self: QLayout, ): bool =

  fcQLayout_isEmpty(self.h)

proc controlTypes*(self: QLayout, ): gen_qsizepolicy.QSizePolicyControlType =

  gen_qsizepolicy.QSizePolicyControlType(fcQLayout_controlTypes(self.h))

proc replaceWidget*(self: QLayout, fromVal: gen_qwidget.QWidget, to: gen_qwidget.QWidget): gen_qlayoutitem.QLayoutItem =

  gen_qlayoutitem.QLayoutItem(h: fcQLayout_replaceWidget(self.h, fromVal.h, to.h))

proc totalHeightForWidth*(self: QLayout, w: cint): cint =

  fcQLayout_totalHeightForWidth(self.h, w)

proc totalMinimumSize*(self: QLayout, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQLayout_totalMinimumSize(self.h))

proc totalMaximumSize*(self: QLayout, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQLayout_totalMaximumSize(self.h))

proc totalSizeHint*(self: QLayout, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQLayout_totalSizeHint(self.h))

proc layout*(self: QLayout, ): QLayout =

  QLayout(h: fcQLayout_layout(self.h))

proc setEnabled*(self: QLayout, enabled: bool): void =

  fcQLayout_setEnabled(self.h, enabled)

proc isEnabled*(self: QLayout, ): bool =

  fcQLayout_isEnabled(self.h)

proc closestAcceptableSize*(_: type QLayout, w: gen_qwidget.QWidget, s: gen_qsize.QSize): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQLayout_closestAcceptableSize(w.h, s.h))

proc tr2*(_: type QLayout, s: cstring, c: cstring): string =

  let v_ms = fcQLayout_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QLayout, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQLayout_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QLayout, s: cstring, c: cstring): string =

  let v_ms = fcQLayout_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QLayout, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQLayout_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc replaceWidget3*(self: QLayout, fromVal: gen_qwidget.QWidget, to: gen_qwidget.QWidget, options: gen_qnamespace.FindChildOption): gen_qlayoutitem.QLayoutItem =

  gen_qlayoutitem.QLayoutItem(h: fcQLayout_replaceWidget3(self.h, fromVal.h, to.h, cint(options)))

proc callVirtualBase_metacall(self: QLayout, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQLayout_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QLayoutmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QLayout, slot: proc(super: QLayoutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QLayoutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_metacall(self: ptr cQLayout, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QLayout_metacall ".} =
  type Cb = proc(super: QLayoutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QLayout(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_invalidate(self: QLayout, ): void =


  fQLayout_virtualbase_invalidate(self.h)

type QLayoutinvalidateBase* = proc(): void
proc oninvalidate*(self: QLayout, slot: proc(super: QLayoutinvalidateBase): void) =
  # TODO check subclass
  type Cb = proc(super: QLayoutinvalidateBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_invalidate(self: ptr cQLayout, slot: int): void {.exportc: "miqt_exec_callback_QLayout_invalidate ".} =
  type Cb = proc(super: QLayoutinvalidateBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_invalidate(QLayout(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_geometry(self: QLayout, ): gen_qrect.QRect =


  gen_qrect.QRect(h: fQLayout_virtualbase_geometry(self.h))

type QLayoutgeometryBase* = proc(): gen_qrect.QRect
proc ongeometry*(self: QLayout, slot: proc(super: QLayoutgeometryBase): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QLayoutgeometryBase): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_geometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_geometry(self: ptr cQLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QLayout_geometry ".} =
  type Cb = proc(super: QLayoutgeometryBase): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_geometry(QLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
type QLayoutaddItemBase* = proc(param1: gen_qlayoutitem.QLayoutItem): void
proc onaddItem*(self: QLayout, slot: proc(param1: gen_qlayoutitem.QLayoutItem): void) =
  # TODO check subclass
  type Cb = proc(param1: gen_qlayoutitem.QLayoutItem): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_addItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_addItem(self: ptr cQLayout, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLayout_addItem ".} =
  type Cb = proc(param1: gen_qlayoutitem.QLayoutItem): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qlayoutitem.QLayoutItem(h: param1)


  nimfunc[](slotval1)
proc callVirtualBase_expandingDirections(self: QLayout, ): gen_qnamespace.Orientation =


  gen_qnamespace.Orientation(fQLayout_virtualbase_expandingDirections(self.h))

type QLayoutexpandingDirectionsBase* = proc(): gen_qnamespace.Orientation
proc onexpandingDirections*(self: QLayout, slot: proc(super: QLayoutexpandingDirectionsBase): gen_qnamespace.Orientation) =
  # TODO check subclass
  type Cb = proc(super: QLayoutexpandingDirectionsBase): gen_qnamespace.Orientation
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_expandingDirections(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_expandingDirections(self: ptr cQLayout, slot: int): cint {.exportc: "miqt_exec_callback_QLayout_expandingDirections ".} =
  type Cb = proc(super: QLayoutexpandingDirectionsBase): gen_qnamespace.Orientation
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_expandingDirections(QLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_minimumSize(self: QLayout, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQLayout_virtualbase_minimumSize(self.h))

type QLayoutminimumSizeBase* = proc(): gen_qsize.QSize
proc onminimumSize*(self: QLayout, slot: proc(super: QLayoutminimumSizeBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QLayoutminimumSizeBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_minimumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_minimumSize(self: ptr cQLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QLayout_minimumSize ".} =
  type Cb = proc(super: QLayoutminimumSizeBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSize(QLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_maximumSize(self: QLayout, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQLayout_virtualbase_maximumSize(self.h))

type QLayoutmaximumSizeBase* = proc(): gen_qsize.QSize
proc onmaximumSize*(self: QLayout, slot: proc(super: QLayoutmaximumSizeBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QLayoutmaximumSizeBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_maximumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_maximumSize(self: ptr cQLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QLayout_maximumSize ".} =
  type Cb = proc(super: QLayoutmaximumSizeBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_maximumSize(QLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setGeometry(self: QLayout, geometry: gen_qrect.QRect): void =


  fQLayout_virtualbase_setGeometry(self.h, geometry.h)

type QLayoutsetGeometryBase* = proc(geometry: gen_qrect.QRect): void
proc onsetGeometry*(self: QLayout, slot: proc(super: QLayoutsetGeometryBase, geometry: gen_qrect.QRect): void) =
  # TODO check subclass
  type Cb = proc(super: QLayoutsetGeometryBase, geometry: gen_qrect.QRect): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_setGeometry(self: ptr cQLayout, slot: int, geometry: pointer): void {.exportc: "miqt_exec_callback_QLayout_setGeometry ".} =
  type Cb = proc(super: QLayoutsetGeometryBase, geometry: gen_qrect.QRect): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(geometry: gen_qrect.QRect): auto =
    callVirtualBase_setGeometry(QLayout(h: self), geometry)
  let slotval1 = gen_qrect.QRect(h: geometry)


  nimfunc[](superCall, slotval1)
type QLayoutitemAtBase* = proc(index: cint): gen_qlayoutitem.QLayoutItem
proc onitemAt*(self: QLayout, slot: proc(index: cint): gen_qlayoutitem.QLayoutItem) =
  # TODO check subclass
  type Cb = proc(index: cint): gen_qlayoutitem.QLayoutItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_itemAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_itemAt(self: ptr cQLayout, slot: int, index: cint): pointer {.exportc: "miqt_exec_callback_QLayout_itemAt ".} =
  type Cb = proc(index: cint): gen_qlayoutitem.QLayoutItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = index


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
type QLayouttakeAtBase* = proc(index: cint): gen_qlayoutitem.QLayoutItem
proc ontakeAt*(self: QLayout, slot: proc(index: cint): gen_qlayoutitem.QLayoutItem) =
  # TODO check subclass
  type Cb = proc(index: cint): gen_qlayoutitem.QLayoutItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_takeAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_takeAt(self: ptr cQLayout, slot: int, index: cint): pointer {.exportc: "miqt_exec_callback_QLayout_takeAt ".} =
  type Cb = proc(index: cint): gen_qlayoutitem.QLayoutItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = index


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc callVirtualBase_indexOf(self: QLayout, param1: gen_qwidget.QWidget): cint =


  fQLayout_virtualbase_indexOf(self.h, param1.h)

type QLayoutindexOfBase* = proc(param1: gen_qwidget.QWidget): cint
proc onindexOf*(self: QLayout, slot: proc(super: QLayoutindexOfBase, param1: gen_qwidget.QWidget): cint) =
  # TODO check subclass
  type Cb = proc(super: QLayoutindexOfBase, param1: gen_qwidget.QWidget): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_indexOf(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_indexOf(self: ptr cQLayout, slot: int, param1: pointer): cint {.exportc: "miqt_exec_callback_QLayout_indexOf ".} =
  type Cb = proc(super: QLayoutindexOfBase, param1: gen_qwidget.QWidget): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qwidget.QWidget): auto =
    callVirtualBase_indexOf(QLayout(h: self), param1)
  let slotval1 = gen_qwidget.QWidget(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
type QLayoutcountBase* = proc(): cint
proc oncount*(self: QLayout, slot: proc(): cint) =
  # TODO check subclass
  type Cb = proc(): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_count(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_count(self: ptr cQLayout, slot: int): cint {.exportc: "miqt_exec_callback_QLayout_count ".} =
  type Cb = proc(): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_isEmpty(self: QLayout, ): bool =


  fQLayout_virtualbase_isEmpty(self.h)

type QLayoutisEmptyBase* = proc(): bool
proc onisEmpty*(self: QLayout, slot: proc(super: QLayoutisEmptyBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QLayoutisEmptyBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_isEmpty(self: ptr cQLayout, slot: int): bool {.exportc: "miqt_exec_callback_QLayout_isEmpty ".} =
  type Cb = proc(super: QLayoutisEmptyBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isEmpty(QLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_controlTypes(self: QLayout, ): gen_qsizepolicy.QSizePolicyControlType =


  gen_qsizepolicy.QSizePolicyControlType(fQLayout_virtualbase_controlTypes(self.h))

type QLayoutcontrolTypesBase* = proc(): gen_qsizepolicy.QSizePolicyControlType
proc oncontrolTypes*(self: QLayout, slot: proc(super: QLayoutcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType) =
  # TODO check subclass
  type Cb = proc(super: QLayoutcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_controlTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_controlTypes(self: ptr cQLayout, slot: int): cint {.exportc: "miqt_exec_callback_QLayout_controlTypes ".} =
  type Cb = proc(super: QLayoutcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_controlTypes(QLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_layout(self: QLayout, ): QLayout =


  QLayout(h: fQLayout_virtualbase_layout(self.h))

type QLayoutlayoutBase* = proc(): QLayout
proc onlayout*(self: QLayout, slot: proc(super: QLayoutlayoutBase): QLayout) =
  # TODO check subclass
  type Cb = proc(super: QLayoutlayoutBase): QLayout
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_layout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_layout(self: ptr cQLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QLayout_layout ".} =
  type Cb = proc(super: QLayoutlayoutBase): QLayout
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_layout(QLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_childEvent(self: QLayout, e: gen_qcoreevent.QChildEvent): void =


  fQLayout_virtualbase_childEvent(self.h, e.h)

type QLayoutchildEventBase* = proc(e: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QLayout, slot: proc(super: QLayoutchildEventBase, e: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLayoutchildEventBase, e: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_childEvent(self: ptr cQLayout, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QLayout_childEvent ".} =
  type Cb = proc(super: QLayoutchildEventBase, e: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QLayout(h: self), e)
  let slotval1 = gen_qcoreevent.QChildEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QLayout, event: gen_qcoreevent.QEvent): bool =


  fQLayout_virtualbase_event(self.h, event.h)

type QLayouteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QLayout, slot: proc(super: QLayouteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QLayouteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_event(self: ptr cQLayout, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QLayout_event ".} =
  type Cb = proc(super: QLayouteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QLayout(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QLayout, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

type QLayouteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QLayout, slot: proc(super: QLayouteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QLayouteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_eventFilter(self: ptr cQLayout, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QLayout_eventFilter ".} =
  type Cb = proc(super: QLayouteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QLayout(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QLayout, event: gen_qcoreevent.QTimerEvent): void =


  fQLayout_virtualbase_timerEvent(self.h, event.h)

type QLayouttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QLayout, slot: proc(super: QLayouttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLayouttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_timerEvent(self: ptr cQLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLayout_timerEvent ".} =
  type Cb = proc(super: QLayouttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QLayout(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QLayout, event: gen_qcoreevent.QEvent): void =


  fQLayout_virtualbase_customEvent(self.h, event.h)

type QLayoutcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QLayout, slot: proc(super: QLayoutcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLayoutcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_customEvent(self: ptr cQLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLayout_customEvent ".} =
  type Cb = proc(super: QLayoutcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QLayout(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QLayout, signal: gen_qmetaobject.QMetaMethod): void =


  fQLayout_virtualbase_connectNotify(self.h, signal.h)

type QLayoutconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QLayout, slot: proc(super: QLayoutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QLayoutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_connectNotify(self: ptr cQLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QLayout_connectNotify ".} =
  type Cb = proc(super: QLayoutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QLayout(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QLayout, signal: gen_qmetaobject.QMetaMethod): void =


  fQLayout_virtualbase_disconnectNotify(self.h, signal.h)

type QLayoutdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QLayout, slot: proc(super: QLayoutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QLayoutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_disconnectNotify(self: ptr cQLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QLayout_disconnectNotify ".} =
  type Cb = proc(super: QLayoutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QLayout(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
type QLayoutsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QLayout, slot: proc(): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_sizeHint(self: ptr cQLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QLayout_sizeHint ".} =
  type Cb = proc(): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc callVirtualBase_hasHeightForWidth(self: QLayout, ): bool =


  fQLayout_virtualbase_hasHeightForWidth(self.h)

type QLayouthasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QLayout, slot: proc(super: QLayouthasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QLayouthasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_hasHeightForWidth(self: ptr cQLayout, slot: int): bool {.exportc: "miqt_exec_callback_QLayout_hasHeightForWidth ".} =
  type Cb = proc(super: QLayouthasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_heightForWidth(self: QLayout, param1: cint): cint =


  fQLayout_virtualbase_heightForWidth(self.h, param1)

type QLayoutheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QLayout, slot: proc(super: QLayoutheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QLayoutheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_heightForWidth(self: ptr cQLayout, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QLayout_heightForWidth ".} =
  type Cb = proc(super: QLayoutheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QLayout(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_minimumHeightForWidth(self: QLayout, param1: cint): cint =


  fQLayout_virtualbase_minimumHeightForWidth(self.h, param1)

type QLayoutminimumHeightForWidthBase* = proc(param1: cint): cint
proc onminimumHeightForWidth*(self: QLayout, slot: proc(super: QLayoutminimumHeightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QLayoutminimumHeightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_minimumHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_minimumHeightForWidth(self: ptr cQLayout, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QLayout_minimumHeightForWidth ".} =
  type Cb = proc(super: QLayoutminimumHeightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_minimumHeightForWidth(QLayout(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_widget(self: QLayout, ): gen_qwidget.QWidget =


  gen_qwidget.QWidget(h: fQLayout_virtualbase_widget(self.h))

type QLayoutwidgetBase* = proc(): gen_qwidget.QWidget
proc onwidget*(self: QLayout, slot: proc(super: QLayoutwidgetBase): gen_qwidget.QWidget) =
  # TODO check subclass
  type Cb = proc(super: QLayoutwidgetBase): gen_qwidget.QWidget
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_widget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_widget(self: ptr cQLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QLayout_widget ".} =
  type Cb = proc(super: QLayoutwidgetBase): gen_qwidget.QWidget
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_widget(QLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_spacerItem(self: QLayout, ): gen_qlayoutitem.QSpacerItem =


  gen_qlayoutitem.QSpacerItem(h: fQLayout_virtualbase_spacerItem(self.h))

type QLayoutspacerItemBase* = proc(): gen_qlayoutitem.QSpacerItem
proc onspacerItem*(self: QLayout, slot: proc(super: QLayoutspacerItemBase): gen_qlayoutitem.QSpacerItem) =
  # TODO check subclass
  type Cb = proc(super: QLayoutspacerItemBase): gen_qlayoutitem.QSpacerItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayout_override_virtual_spacerItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayout_spacerItem(self: ptr cQLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QLayout_spacerItem ".} =
  type Cb = proc(super: QLayoutspacerItemBase): gen_qlayoutitem.QSpacerItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_spacerItem(QLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc staticMetaObject*(_: type QLayout): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQLayout_staticMetaObject())
proc delete*(self: QLayout) =
  fcQLayout_delete(self.h)
