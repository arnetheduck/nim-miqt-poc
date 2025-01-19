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
{.compile("gen_qformlayout.cpp", cflags).}


type QFormLayoutFieldGrowthPolicy* = cint
const
  QFormLayoutFieldsStayAtSizeHint* = 0
  QFormLayoutExpandingFieldsGrow* = 1
  QFormLayoutAllNonFixedFieldsGrow* = 2



type QFormLayoutRowWrapPolicy* = cint
const
  QFormLayoutDontWrapRows* = 0
  QFormLayoutWrapLongRows* = 1
  QFormLayoutWrapAllRows* = 2



type QFormLayoutItemRole* = cint
const
  QFormLayoutLabelRole* = 0
  QFormLayoutFieldRole* = 1
  QFormLayoutSpanningRole* = 2



import gen_qformlayout_types
export gen_qformlayout_types

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

type cQFormLayout*{.exportc: "QFormLayout", incompleteStruct.} = object
type cQFormLayoutTakeRowResult*{.exportc: "QFormLayout__TakeRowResult", incompleteStruct.} = object

proc fcQFormLayout_new(parent: pointer): ptr cQFormLayout {.importc: "QFormLayout_new".}
proc fcQFormLayout_new2(): ptr cQFormLayout {.importc: "QFormLayout_new2".}
proc fcQFormLayout_metaObject(self: pointer, ): pointer {.importc: "QFormLayout_metaObject".}
proc fcQFormLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QFormLayout_metacast".}
proc fcQFormLayout_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFormLayout_metacall".}
proc fcQFormLayout_tr(s: cstring): struct_miqt_string {.importc: "QFormLayout_tr".}
proc fcQFormLayout_trUtf8(s: cstring): struct_miqt_string {.importc: "QFormLayout_trUtf8".}
proc fcQFormLayout_setFieldGrowthPolicy(self: pointer, policy: cint): void {.importc: "QFormLayout_setFieldGrowthPolicy".}
proc fcQFormLayout_fieldGrowthPolicy(self: pointer, ): cint {.importc: "QFormLayout_fieldGrowthPolicy".}
proc fcQFormLayout_setRowWrapPolicy(self: pointer, policy: cint): void {.importc: "QFormLayout_setRowWrapPolicy".}
proc fcQFormLayout_rowWrapPolicy(self: pointer, ): cint {.importc: "QFormLayout_rowWrapPolicy".}
proc fcQFormLayout_setLabelAlignment(self: pointer, alignment: cint): void {.importc: "QFormLayout_setLabelAlignment".}
proc fcQFormLayout_labelAlignment(self: pointer, ): cint {.importc: "QFormLayout_labelAlignment".}
proc fcQFormLayout_setFormAlignment(self: pointer, alignment: cint): void {.importc: "QFormLayout_setFormAlignment".}
proc fcQFormLayout_formAlignment(self: pointer, ): cint {.importc: "QFormLayout_formAlignment".}
proc fcQFormLayout_setHorizontalSpacing(self: pointer, spacing: cint): void {.importc: "QFormLayout_setHorizontalSpacing".}
proc fcQFormLayout_horizontalSpacing(self: pointer, ): cint {.importc: "QFormLayout_horizontalSpacing".}
proc fcQFormLayout_setVerticalSpacing(self: pointer, spacing: cint): void {.importc: "QFormLayout_setVerticalSpacing".}
proc fcQFormLayout_verticalSpacing(self: pointer, ): cint {.importc: "QFormLayout_verticalSpacing".}
proc fcQFormLayout_spacing(self: pointer, ): cint {.importc: "QFormLayout_spacing".}
proc fcQFormLayout_setSpacing(self: pointer, spacing: cint): void {.importc: "QFormLayout_setSpacing".}
proc fcQFormLayout_addRow(self: pointer, label: pointer, field: pointer): void {.importc: "QFormLayout_addRow".}
proc fcQFormLayout_addRow2(self: pointer, label: pointer, field: pointer): void {.importc: "QFormLayout_addRow2".}
proc fcQFormLayout_addRow3(self: pointer, labelText: struct_miqt_string, field: pointer): void {.importc: "QFormLayout_addRow3".}
proc fcQFormLayout_addRow4(self: pointer, labelText: struct_miqt_string, field: pointer): void {.importc: "QFormLayout_addRow4".}
proc fcQFormLayout_addRowWithWidget(self: pointer, widget: pointer): void {.importc: "QFormLayout_addRowWithWidget".}
proc fcQFormLayout_addRowWithLayout(self: pointer, layout: pointer): void {.importc: "QFormLayout_addRowWithLayout".}
proc fcQFormLayout_insertRow(self: pointer, row: cint, label: pointer, field: pointer): void {.importc: "QFormLayout_insertRow".}
proc fcQFormLayout_insertRow2(self: pointer, row: cint, label: pointer, field: pointer): void {.importc: "QFormLayout_insertRow2".}
proc fcQFormLayout_insertRow3(self: pointer, row: cint, labelText: struct_miqt_string, field: pointer): void {.importc: "QFormLayout_insertRow3".}
proc fcQFormLayout_insertRow4(self: pointer, row: cint, labelText: struct_miqt_string, field: pointer): void {.importc: "QFormLayout_insertRow4".}
proc fcQFormLayout_insertRow5(self: pointer, row: cint, widget: pointer): void {.importc: "QFormLayout_insertRow5".}
proc fcQFormLayout_insertRow6(self: pointer, row: cint, layout: pointer): void {.importc: "QFormLayout_insertRow6".}
proc fcQFormLayout_removeRow(self: pointer, row: cint): void {.importc: "QFormLayout_removeRow".}
proc fcQFormLayout_removeRowWithWidget(self: pointer, widget: pointer): void {.importc: "QFormLayout_removeRowWithWidget".}
proc fcQFormLayout_removeRowWithLayout(self: pointer, layout: pointer): void {.importc: "QFormLayout_removeRowWithLayout".}
proc fcQFormLayout_takeRow(self: pointer, row: cint): pointer {.importc: "QFormLayout_takeRow".}
proc fcQFormLayout_takeRowWithWidget(self: pointer, widget: pointer): pointer {.importc: "QFormLayout_takeRowWithWidget".}
proc fcQFormLayout_takeRowWithLayout(self: pointer, layout: pointer): pointer {.importc: "QFormLayout_takeRowWithLayout".}
proc fcQFormLayout_setItem(self: pointer, row: cint, role: cint, item: pointer): void {.importc: "QFormLayout_setItem".}
proc fcQFormLayout_setWidget(self: pointer, row: cint, role: cint, widget: pointer): void {.importc: "QFormLayout_setWidget".}
proc fcQFormLayout_setLayout(self: pointer, row: cint, role: cint, layout: pointer): void {.importc: "QFormLayout_setLayout".}
proc fcQFormLayout_itemAt(self: pointer, row: cint, role: cint): pointer {.importc: "QFormLayout_itemAt".}
proc fcQFormLayout_labelForField(self: pointer, field: pointer): pointer {.importc: "QFormLayout_labelForField".}
proc fcQFormLayout_labelForFieldWithField(self: pointer, field: pointer): pointer {.importc: "QFormLayout_labelForFieldWithField".}
proc fcQFormLayout_addItem(self: pointer, item: pointer): void {.importc: "QFormLayout_addItem".}
proc fcQFormLayout_itemAtWithIndex(self: pointer, index: cint): pointer {.importc: "QFormLayout_itemAtWithIndex".}
proc fcQFormLayout_takeAt(self: pointer, index: cint): pointer {.importc: "QFormLayout_takeAt".}
proc fcQFormLayout_setGeometry(self: pointer, rect: pointer): void {.importc: "QFormLayout_setGeometry".}
proc fcQFormLayout_minimumSize(self: pointer, ): pointer {.importc: "QFormLayout_minimumSize".}
proc fcQFormLayout_sizeHint(self: pointer, ): pointer {.importc: "QFormLayout_sizeHint".}
proc fcQFormLayout_invalidate(self: pointer, ): void {.importc: "QFormLayout_invalidate".}
proc fcQFormLayout_hasHeightForWidth(self: pointer, ): bool {.importc: "QFormLayout_hasHeightForWidth".}
proc fcQFormLayout_heightForWidth(self: pointer, width: cint): cint {.importc: "QFormLayout_heightForWidth".}
proc fcQFormLayout_expandingDirections(self: pointer, ): cint {.importc: "QFormLayout_expandingDirections".}
proc fcQFormLayout_count(self: pointer, ): cint {.importc: "QFormLayout_count".}
proc fcQFormLayout_rowCount(self: pointer, ): cint {.importc: "QFormLayout_rowCount".}
proc fcQFormLayout_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFormLayout_tr2".}
proc fcQFormLayout_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFormLayout_tr3".}
proc fcQFormLayout_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QFormLayout_trUtf82".}
proc fcQFormLayout_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFormLayout_trUtf83".}
proc fQFormLayout_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QFormLayout_virtualbase_metacall".}
proc fcQFormLayout_override_virtual_metacall(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_metacall".}
proc fQFormLayout_virtualbase_addItem(self: pointer, item: pointer): void{.importc: "QFormLayout_virtualbase_addItem".}
proc fcQFormLayout_override_virtual_addItem(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_addItem".}
proc fQFormLayout_virtualbase_itemAtWithIndex(self: pointer, index: cint): pointer{.importc: "QFormLayout_virtualbase_itemAtWithIndex".}
proc fcQFormLayout_override_virtual_itemAtWithIndex(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_itemAtWithIndex".}
proc fQFormLayout_virtualbase_takeAt(self: pointer, index: cint): pointer{.importc: "QFormLayout_virtualbase_takeAt".}
proc fcQFormLayout_override_virtual_takeAt(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_takeAt".}
proc fQFormLayout_virtualbase_setGeometry(self: pointer, rect: pointer): void{.importc: "QFormLayout_virtualbase_setGeometry".}
proc fcQFormLayout_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_setGeometry".}
proc fQFormLayout_virtualbase_minimumSize(self: pointer, ): pointer{.importc: "QFormLayout_virtualbase_minimumSize".}
proc fcQFormLayout_override_virtual_minimumSize(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_minimumSize".}
proc fQFormLayout_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QFormLayout_virtualbase_sizeHint".}
proc fcQFormLayout_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_sizeHint".}
proc fQFormLayout_virtualbase_invalidate(self: pointer, ): void{.importc: "QFormLayout_virtualbase_invalidate".}
proc fcQFormLayout_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_invalidate".}
proc fQFormLayout_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QFormLayout_virtualbase_hasHeightForWidth".}
proc fcQFormLayout_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_hasHeightForWidth".}
proc fQFormLayout_virtualbase_heightForWidth(self: pointer, width: cint): cint{.importc: "QFormLayout_virtualbase_heightForWidth".}
proc fcQFormLayout_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_heightForWidth".}
proc fQFormLayout_virtualbase_expandingDirections(self: pointer, ): cint{.importc: "QFormLayout_virtualbase_expandingDirections".}
proc fcQFormLayout_override_virtual_expandingDirections(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_expandingDirections".}
proc fQFormLayout_virtualbase_count(self: pointer, ): cint{.importc: "QFormLayout_virtualbase_count".}
proc fcQFormLayout_override_virtual_count(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_count".}
proc fQFormLayout_virtualbase_geometry(self: pointer, ): pointer{.importc: "QFormLayout_virtualbase_geometry".}
proc fcQFormLayout_override_virtual_geometry(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_geometry".}
proc fQFormLayout_virtualbase_maximumSize(self: pointer, ): pointer{.importc: "QFormLayout_virtualbase_maximumSize".}
proc fcQFormLayout_override_virtual_maximumSize(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_maximumSize".}
proc fQFormLayout_virtualbase_indexOf(self: pointer, param1: pointer): cint{.importc: "QFormLayout_virtualbase_indexOf".}
proc fcQFormLayout_override_virtual_indexOf(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_indexOf".}
proc fQFormLayout_virtualbase_isEmpty(self: pointer, ): bool{.importc: "QFormLayout_virtualbase_isEmpty".}
proc fcQFormLayout_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_isEmpty".}
proc fQFormLayout_virtualbase_controlTypes(self: pointer, ): cint{.importc: "QFormLayout_virtualbase_controlTypes".}
proc fcQFormLayout_override_virtual_controlTypes(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_controlTypes".}
proc fQFormLayout_virtualbase_layout(self: pointer, ): pointer{.importc: "QFormLayout_virtualbase_layout".}
proc fcQFormLayout_override_virtual_layout(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_layout".}
proc fQFormLayout_virtualbase_childEvent(self: pointer, e: pointer): void{.importc: "QFormLayout_virtualbase_childEvent".}
proc fcQFormLayout_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_childEvent".}
proc fQFormLayout_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QFormLayout_virtualbase_event".}
proc fcQFormLayout_override_virtual_event(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_event".}
proc fQFormLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QFormLayout_virtualbase_eventFilter".}
proc fcQFormLayout_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_eventFilter".}
proc fQFormLayout_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QFormLayout_virtualbase_timerEvent".}
proc fcQFormLayout_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_timerEvent".}
proc fQFormLayout_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QFormLayout_virtualbase_customEvent".}
proc fcQFormLayout_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_customEvent".}
proc fQFormLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QFormLayout_virtualbase_connectNotify".}
proc fcQFormLayout_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_connectNotify".}
proc fQFormLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QFormLayout_virtualbase_disconnectNotify".}
proc fcQFormLayout_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_disconnectNotify".}
proc fQFormLayout_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint{.importc: "QFormLayout_virtualbase_minimumHeightForWidth".}
proc fcQFormLayout_override_virtual_minimumHeightForWidth(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_minimumHeightForWidth".}
proc fQFormLayout_virtualbase_widget(self: pointer, ): pointer{.importc: "QFormLayout_virtualbase_widget".}
proc fcQFormLayout_override_virtual_widget(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_widget".}
proc fQFormLayout_virtualbase_spacerItem(self: pointer, ): pointer{.importc: "QFormLayout_virtualbase_spacerItem".}
proc fcQFormLayout_override_virtual_spacerItem(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_spacerItem".}
proc fcQFormLayout_staticMetaObject(): pointer {.importc: "QFormLayout_staticMetaObject".}
proc fcQFormLayout_delete(self: pointer) {.importc: "QFormLayout_delete".}
proc fcQFormLayoutTakeRowResult_delete(self: pointer) {.importc: "QFormLayout__TakeRowResult_delete".}


func init*(T: type QFormLayout, h: ptr cQFormLayout): QFormLayout =
  T(h: h)
proc create*(T: type QFormLayout, parent: gen_qwidget.QWidget): QFormLayout =

  QFormLayout.init(fcQFormLayout_new(parent.h))
proc create*(T: type QFormLayout, ): QFormLayout =

  QFormLayout.init(fcQFormLayout_new2())
proc metaObject*(self: QFormLayout, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQFormLayout_metaObject(self.h))

proc metacast*(self: QFormLayout, param1: cstring): pointer =

  fcQFormLayout_metacast(self.h, param1)

proc metacall*(self: QFormLayout, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQFormLayout_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QFormLayout, s: cstring): string =

  let v_ms = fcQFormLayout_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QFormLayout, s: cstring): string =

  let v_ms = fcQFormLayout_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFieldGrowthPolicy*(self: QFormLayout, policy: QFormLayoutFieldGrowthPolicy): void =

  fcQFormLayout_setFieldGrowthPolicy(self.h, cint(policy))

proc fieldGrowthPolicy*(self: QFormLayout, ): QFormLayoutFieldGrowthPolicy =

  QFormLayoutFieldGrowthPolicy(fcQFormLayout_fieldGrowthPolicy(self.h))

proc setRowWrapPolicy*(self: QFormLayout, policy: QFormLayoutRowWrapPolicy): void =

  fcQFormLayout_setRowWrapPolicy(self.h, cint(policy))

proc rowWrapPolicy*(self: QFormLayout, ): QFormLayoutRowWrapPolicy =

  QFormLayoutRowWrapPolicy(fcQFormLayout_rowWrapPolicy(self.h))

proc setLabelAlignment*(self: QFormLayout, alignment: gen_qnamespace.AlignmentFlag): void =

  fcQFormLayout_setLabelAlignment(self.h, cint(alignment))

proc labelAlignment*(self: QFormLayout, ): gen_qnamespace.AlignmentFlag =

  gen_qnamespace.AlignmentFlag(fcQFormLayout_labelAlignment(self.h))

proc setFormAlignment*(self: QFormLayout, alignment: gen_qnamespace.AlignmentFlag): void =

  fcQFormLayout_setFormAlignment(self.h, cint(alignment))

proc formAlignment*(self: QFormLayout, ): gen_qnamespace.AlignmentFlag =

  gen_qnamespace.AlignmentFlag(fcQFormLayout_formAlignment(self.h))

proc setHorizontalSpacing*(self: QFormLayout, spacing: cint): void =

  fcQFormLayout_setHorizontalSpacing(self.h, spacing)

proc horizontalSpacing*(self: QFormLayout, ): cint =

  fcQFormLayout_horizontalSpacing(self.h)

proc setVerticalSpacing*(self: QFormLayout, spacing: cint): void =

  fcQFormLayout_setVerticalSpacing(self.h, spacing)

proc verticalSpacing*(self: QFormLayout, ): cint =

  fcQFormLayout_verticalSpacing(self.h)

proc spacing*(self: QFormLayout, ): cint =

  fcQFormLayout_spacing(self.h)

proc setSpacing*(self: QFormLayout, spacing: cint): void =

  fcQFormLayout_setSpacing(self.h, spacing)

proc addRow*(self: QFormLayout, label: gen_qwidget.QWidget, field: gen_qwidget.QWidget): void =

  fcQFormLayout_addRow(self.h, label.h, field.h)

proc addRow2*(self: QFormLayout, label: gen_qwidget.QWidget, field: gen_qlayout.QLayout): void =

  fcQFormLayout_addRow2(self.h, label.h, field.h)

proc addRow3*(self: QFormLayout, labelText: string, field: gen_qwidget.QWidget): void =

  fcQFormLayout_addRow3(self.h, struct_miqt_string(data: labelText, len: csize_t(len(labelText))), field.h)

proc addRow4*(self: QFormLayout, labelText: string, field: gen_qlayout.QLayout): void =

  fcQFormLayout_addRow4(self.h, struct_miqt_string(data: labelText, len: csize_t(len(labelText))), field.h)

proc addRowWithWidget*(self: QFormLayout, widget: gen_qwidget.QWidget): void =

  fcQFormLayout_addRowWithWidget(self.h, widget.h)

proc addRowWithLayout*(self: QFormLayout, layout: gen_qlayout.QLayout): void =

  fcQFormLayout_addRowWithLayout(self.h, layout.h)

proc insertRow*(self: QFormLayout, row: cint, label: gen_qwidget.QWidget, field: gen_qwidget.QWidget): void =

  fcQFormLayout_insertRow(self.h, row, label.h, field.h)

proc insertRow2*(self: QFormLayout, row: cint, label: gen_qwidget.QWidget, field: gen_qlayout.QLayout): void =

  fcQFormLayout_insertRow2(self.h, row, label.h, field.h)

proc insertRow3*(self: QFormLayout, row: cint, labelText: string, field: gen_qwidget.QWidget): void =

  fcQFormLayout_insertRow3(self.h, row, struct_miqt_string(data: labelText, len: csize_t(len(labelText))), field.h)

proc insertRow4*(self: QFormLayout, row: cint, labelText: string, field: gen_qlayout.QLayout): void =

  fcQFormLayout_insertRow4(self.h, row, struct_miqt_string(data: labelText, len: csize_t(len(labelText))), field.h)

proc insertRow5*(self: QFormLayout, row: cint, widget: gen_qwidget.QWidget): void =

  fcQFormLayout_insertRow5(self.h, row, widget.h)

proc insertRow6*(self: QFormLayout, row: cint, layout: gen_qlayout.QLayout): void =

  fcQFormLayout_insertRow6(self.h, row, layout.h)

proc removeRow*(self: QFormLayout, row: cint): void =

  fcQFormLayout_removeRow(self.h, row)

proc removeRowWithWidget*(self: QFormLayout, widget: gen_qwidget.QWidget): void =

  fcQFormLayout_removeRowWithWidget(self.h, widget.h)

proc removeRowWithLayout*(self: QFormLayout, layout: gen_qlayout.QLayout): void =

  fcQFormLayout_removeRowWithLayout(self.h, layout.h)

proc takeRow*(self: QFormLayout, row: cint): QFormLayoutTakeRowResult =

  QFormLayoutTakeRowResult(h: fcQFormLayout_takeRow(self.h, row))

proc takeRowWithWidget*(self: QFormLayout, widget: gen_qwidget.QWidget): QFormLayoutTakeRowResult =

  QFormLayoutTakeRowResult(h: fcQFormLayout_takeRowWithWidget(self.h, widget.h))

proc takeRowWithLayout*(self: QFormLayout, layout: gen_qlayout.QLayout): QFormLayoutTakeRowResult =

  QFormLayoutTakeRowResult(h: fcQFormLayout_takeRowWithLayout(self.h, layout.h))

proc setItem*(self: QFormLayout, row: cint, role: QFormLayoutItemRole, item: gen_qlayoutitem.QLayoutItem): void =

  fcQFormLayout_setItem(self.h, row, cint(role), item.h)

proc setWidget*(self: QFormLayout, row: cint, role: QFormLayoutItemRole, widget: gen_qwidget.QWidget): void =

  fcQFormLayout_setWidget(self.h, row, cint(role), widget.h)

proc setLayout*(self: QFormLayout, row: cint, role: QFormLayoutItemRole, layout: gen_qlayout.QLayout): void =

  fcQFormLayout_setLayout(self.h, row, cint(role), layout.h)

proc itemAt*(self: QFormLayout, row: cint, role: QFormLayoutItemRole): gen_qlayoutitem.QLayoutItem =

  gen_qlayoutitem.QLayoutItem(h: fcQFormLayout_itemAt(self.h, row, cint(role)))

proc labelForField*(self: QFormLayout, field: gen_qwidget.QWidget): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQFormLayout_labelForField(self.h, field.h))

proc labelForFieldWithField*(self: QFormLayout, field: gen_qlayout.QLayout): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQFormLayout_labelForFieldWithField(self.h, field.h))

proc addItem*(self: QFormLayout, item: gen_qlayoutitem.QLayoutItem): void =

  fcQFormLayout_addItem(self.h, item.h)

proc itemAtWithIndex*(self: QFormLayout, index: cint): gen_qlayoutitem.QLayoutItem =

  gen_qlayoutitem.QLayoutItem(h: fcQFormLayout_itemAtWithIndex(self.h, index))

proc takeAt*(self: QFormLayout, index: cint): gen_qlayoutitem.QLayoutItem =

  gen_qlayoutitem.QLayoutItem(h: fcQFormLayout_takeAt(self.h, index))

proc setGeometry*(self: QFormLayout, rect: gen_qrect.QRect): void =

  fcQFormLayout_setGeometry(self.h, rect.h)

proc minimumSize*(self: QFormLayout, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQFormLayout_minimumSize(self.h))

proc sizeHint*(self: QFormLayout, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQFormLayout_sizeHint(self.h))

proc invalidate*(self: QFormLayout, ): void =

  fcQFormLayout_invalidate(self.h)

proc hasHeightForWidth*(self: QFormLayout, ): bool =

  fcQFormLayout_hasHeightForWidth(self.h)

proc heightForWidth*(self: QFormLayout, width: cint): cint =

  fcQFormLayout_heightForWidth(self.h, width)

proc expandingDirections*(self: QFormLayout, ): gen_qnamespace.Orientation =

  gen_qnamespace.Orientation(fcQFormLayout_expandingDirections(self.h))

proc count*(self: QFormLayout, ): cint =

  fcQFormLayout_count(self.h)

proc rowCount*(self: QFormLayout, ): cint =

  fcQFormLayout_rowCount(self.h)

proc tr2*(_: type QFormLayout, s: cstring, c: cstring): string =

  let v_ms = fcQFormLayout_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QFormLayout, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQFormLayout_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QFormLayout, s: cstring, c: cstring): string =

  let v_ms = fcQFormLayout_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QFormLayout, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQFormLayout_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QFormLayout, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQFormLayout_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QFormLayoutmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QFormLayout, slot: proc(super: QFormLayoutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QFormLayoutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_metacall(self: ptr cQFormLayout, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QFormLayout_metacall ".} =
  type Cb = proc(super: QFormLayoutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QFormLayout(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_addItem(self: QFormLayout, item: gen_qlayoutitem.QLayoutItem): void =


  fQFormLayout_virtualbase_addItem(self.h, item.h)

type QFormLayoutaddItemBase* = proc(item: gen_qlayoutitem.QLayoutItem): void
proc onaddItem*(self: QFormLayout, slot: proc(super: QFormLayoutaddItemBase, item: gen_qlayoutitem.QLayoutItem): void) =
  # TODO check subclass
  type Cb = proc(super: QFormLayoutaddItemBase, item: gen_qlayoutitem.QLayoutItem): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_addItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_addItem(self: ptr cQFormLayout, slot: int, item: pointer): void {.exportc: "miqt_exec_callback_QFormLayout_addItem ".} =
  type Cb = proc(super: QFormLayoutaddItemBase, item: gen_qlayoutitem.QLayoutItem): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(item: gen_qlayoutitem.QLayoutItem): auto =
    callVirtualBase_addItem(QFormLayout(h: self), item)
  let slotval1 = gen_qlayoutitem.QLayoutItem(h: item)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_itemAtWithIndex(self: QFormLayout, index: cint): gen_qlayoutitem.QLayoutItem =


  gen_qlayoutitem.QLayoutItem(h: fQFormLayout_virtualbase_itemAtWithIndex(self.h, index))

type QFormLayoutitemAtWithIndexBase* = proc(index: cint): gen_qlayoutitem.QLayoutItem
proc onitemAtWithIndex*(self: QFormLayout, slot: proc(super: QFormLayoutitemAtWithIndexBase, index: cint): gen_qlayoutitem.QLayoutItem) =
  # TODO check subclass
  type Cb = proc(super: QFormLayoutitemAtWithIndexBase, index: cint): gen_qlayoutitem.QLayoutItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_itemAtWithIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_itemAtWithIndex(self: ptr cQFormLayout, slot: int, index: cint): pointer {.exportc: "miqt_exec_callback_QFormLayout_itemAtWithIndex ".} =
  type Cb = proc(super: QFormLayoutitemAtWithIndexBase, index: cint): gen_qlayoutitem.QLayoutItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: cint): auto =
    callVirtualBase_itemAtWithIndex(QFormLayout(h: self), index)
  let slotval1 = index


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_takeAt(self: QFormLayout, index: cint): gen_qlayoutitem.QLayoutItem =


  gen_qlayoutitem.QLayoutItem(h: fQFormLayout_virtualbase_takeAt(self.h, index))

type QFormLayouttakeAtBase* = proc(index: cint): gen_qlayoutitem.QLayoutItem
proc ontakeAt*(self: QFormLayout, slot: proc(super: QFormLayouttakeAtBase, index: cint): gen_qlayoutitem.QLayoutItem) =
  # TODO check subclass
  type Cb = proc(super: QFormLayouttakeAtBase, index: cint): gen_qlayoutitem.QLayoutItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_takeAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_takeAt(self: ptr cQFormLayout, slot: int, index: cint): pointer {.exportc: "miqt_exec_callback_QFormLayout_takeAt ".} =
  type Cb = proc(super: QFormLayouttakeAtBase, index: cint): gen_qlayoutitem.QLayoutItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: cint): auto =
    callVirtualBase_takeAt(QFormLayout(h: self), index)
  let slotval1 = index


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setGeometry(self: QFormLayout, rect: gen_qrect.QRect): void =


  fQFormLayout_virtualbase_setGeometry(self.h, rect.h)

type QFormLayoutsetGeometryBase* = proc(rect: gen_qrect.QRect): void
proc onsetGeometry*(self: QFormLayout, slot: proc(super: QFormLayoutsetGeometryBase, rect: gen_qrect.QRect): void) =
  # TODO check subclass
  type Cb = proc(super: QFormLayoutsetGeometryBase, rect: gen_qrect.QRect): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_setGeometry(self: ptr cQFormLayout, slot: int, rect: pointer): void {.exportc: "miqt_exec_callback_QFormLayout_setGeometry ".} =
  type Cb = proc(super: QFormLayoutsetGeometryBase, rect: gen_qrect.QRect): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(rect: gen_qrect.QRect): auto =
    callVirtualBase_setGeometry(QFormLayout(h: self), rect)
  let slotval1 = gen_qrect.QRect(h: rect)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_minimumSize(self: QFormLayout, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQFormLayout_virtualbase_minimumSize(self.h))

type QFormLayoutminimumSizeBase* = proc(): gen_qsize.QSize
proc onminimumSize*(self: QFormLayout, slot: proc(super: QFormLayoutminimumSizeBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QFormLayoutminimumSizeBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_minimumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_minimumSize(self: ptr cQFormLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QFormLayout_minimumSize ".} =
  type Cb = proc(super: QFormLayoutminimumSizeBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSize(QFormLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_sizeHint(self: QFormLayout, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQFormLayout_virtualbase_sizeHint(self.h))

type QFormLayoutsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QFormLayout, slot: proc(super: QFormLayoutsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QFormLayoutsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_sizeHint(self: ptr cQFormLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QFormLayout_sizeHint ".} =
  type Cb = proc(super: QFormLayoutsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QFormLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_invalidate(self: QFormLayout, ): void =


  fQFormLayout_virtualbase_invalidate(self.h)

type QFormLayoutinvalidateBase* = proc(): void
proc oninvalidate*(self: QFormLayout, slot: proc(super: QFormLayoutinvalidateBase): void) =
  # TODO check subclass
  type Cb = proc(super: QFormLayoutinvalidateBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_invalidate(self: ptr cQFormLayout, slot: int): void {.exportc: "miqt_exec_callback_QFormLayout_invalidate ".} =
  type Cb = proc(super: QFormLayoutinvalidateBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_invalidate(QFormLayout(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_hasHeightForWidth(self: QFormLayout, ): bool =


  fQFormLayout_virtualbase_hasHeightForWidth(self.h)

type QFormLayouthasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QFormLayout, slot: proc(super: QFormLayouthasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QFormLayouthasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_hasHeightForWidth(self: ptr cQFormLayout, slot: int): bool {.exportc: "miqt_exec_callback_QFormLayout_hasHeightForWidth ".} =
  type Cb = proc(super: QFormLayouthasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QFormLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_heightForWidth(self: QFormLayout, width: cint): cint =


  fQFormLayout_virtualbase_heightForWidth(self.h, width)

type QFormLayoutheightForWidthBase* = proc(width: cint): cint
proc onheightForWidth*(self: QFormLayout, slot: proc(super: QFormLayoutheightForWidthBase, width: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QFormLayoutheightForWidthBase, width: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_heightForWidth(self: ptr cQFormLayout, slot: int, width: cint): cint {.exportc: "miqt_exec_callback_QFormLayout_heightForWidth ".} =
  type Cb = proc(super: QFormLayoutheightForWidthBase, width: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(width: cint): auto =
    callVirtualBase_heightForWidth(QFormLayout(h: self), width)
  let slotval1 = width


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_expandingDirections(self: QFormLayout, ): gen_qnamespace.Orientation =


  gen_qnamespace.Orientation(fQFormLayout_virtualbase_expandingDirections(self.h))

type QFormLayoutexpandingDirectionsBase* = proc(): gen_qnamespace.Orientation
proc onexpandingDirections*(self: QFormLayout, slot: proc(super: QFormLayoutexpandingDirectionsBase): gen_qnamespace.Orientation) =
  # TODO check subclass
  type Cb = proc(super: QFormLayoutexpandingDirectionsBase): gen_qnamespace.Orientation
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_expandingDirections(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_expandingDirections(self: ptr cQFormLayout, slot: int): cint {.exportc: "miqt_exec_callback_QFormLayout_expandingDirections ".} =
  type Cb = proc(super: QFormLayoutexpandingDirectionsBase): gen_qnamespace.Orientation
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_expandingDirections(QFormLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_count(self: QFormLayout, ): cint =


  fQFormLayout_virtualbase_count(self.h)

type QFormLayoutcountBase* = proc(): cint
proc oncount*(self: QFormLayout, slot: proc(super: QFormLayoutcountBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QFormLayoutcountBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_count(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_count(self: ptr cQFormLayout, slot: int): cint {.exportc: "miqt_exec_callback_QFormLayout_count ".} =
  type Cb = proc(super: QFormLayoutcountBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_count(QFormLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_geometry(self: QFormLayout, ): gen_qrect.QRect =


  gen_qrect.QRect(h: fQFormLayout_virtualbase_geometry(self.h))

type QFormLayoutgeometryBase* = proc(): gen_qrect.QRect
proc ongeometry*(self: QFormLayout, slot: proc(super: QFormLayoutgeometryBase): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QFormLayoutgeometryBase): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_geometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_geometry(self: ptr cQFormLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QFormLayout_geometry ".} =
  type Cb = proc(super: QFormLayoutgeometryBase): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_geometry(QFormLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_maximumSize(self: QFormLayout, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQFormLayout_virtualbase_maximumSize(self.h))

type QFormLayoutmaximumSizeBase* = proc(): gen_qsize.QSize
proc onmaximumSize*(self: QFormLayout, slot: proc(super: QFormLayoutmaximumSizeBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QFormLayoutmaximumSizeBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_maximumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_maximumSize(self: ptr cQFormLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QFormLayout_maximumSize ".} =
  type Cb = proc(super: QFormLayoutmaximumSizeBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_maximumSize(QFormLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_indexOf(self: QFormLayout, param1: gen_qwidget.QWidget): cint =


  fQFormLayout_virtualbase_indexOf(self.h, param1.h)

type QFormLayoutindexOfBase* = proc(param1: gen_qwidget.QWidget): cint
proc onindexOf*(self: QFormLayout, slot: proc(super: QFormLayoutindexOfBase, param1: gen_qwidget.QWidget): cint) =
  # TODO check subclass
  type Cb = proc(super: QFormLayoutindexOfBase, param1: gen_qwidget.QWidget): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_indexOf(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_indexOf(self: ptr cQFormLayout, slot: int, param1: pointer): cint {.exportc: "miqt_exec_callback_QFormLayout_indexOf ".} =
  type Cb = proc(super: QFormLayoutindexOfBase, param1: gen_qwidget.QWidget): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qwidget.QWidget): auto =
    callVirtualBase_indexOf(QFormLayout(h: self), param1)
  let slotval1 = gen_qwidget.QWidget(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_isEmpty(self: QFormLayout, ): bool =


  fQFormLayout_virtualbase_isEmpty(self.h)

type QFormLayoutisEmptyBase* = proc(): bool
proc onisEmpty*(self: QFormLayout, slot: proc(super: QFormLayoutisEmptyBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QFormLayoutisEmptyBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_isEmpty(self: ptr cQFormLayout, slot: int): bool {.exportc: "miqt_exec_callback_QFormLayout_isEmpty ".} =
  type Cb = proc(super: QFormLayoutisEmptyBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isEmpty(QFormLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_controlTypes(self: QFormLayout, ): gen_qsizepolicy.QSizePolicyControlType =


  gen_qsizepolicy.QSizePolicyControlType(fQFormLayout_virtualbase_controlTypes(self.h))

type QFormLayoutcontrolTypesBase* = proc(): gen_qsizepolicy.QSizePolicyControlType
proc oncontrolTypes*(self: QFormLayout, slot: proc(super: QFormLayoutcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType) =
  # TODO check subclass
  type Cb = proc(super: QFormLayoutcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_controlTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_controlTypes(self: ptr cQFormLayout, slot: int): cint {.exportc: "miqt_exec_callback_QFormLayout_controlTypes ".} =
  type Cb = proc(super: QFormLayoutcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_controlTypes(QFormLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_layout(self: QFormLayout, ): gen_qlayout.QLayout =


  gen_qlayout.QLayout(h: fQFormLayout_virtualbase_layout(self.h))

type QFormLayoutlayoutBase* = proc(): gen_qlayout.QLayout
proc onlayout*(self: QFormLayout, slot: proc(super: QFormLayoutlayoutBase): gen_qlayout.QLayout) =
  # TODO check subclass
  type Cb = proc(super: QFormLayoutlayoutBase): gen_qlayout.QLayout
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_layout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_layout(self: ptr cQFormLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QFormLayout_layout ".} =
  type Cb = proc(super: QFormLayoutlayoutBase): gen_qlayout.QLayout
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_layout(QFormLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_childEvent(self: QFormLayout, e: gen_qcoreevent.QChildEvent): void =


  fQFormLayout_virtualbase_childEvent(self.h, e.h)

type QFormLayoutchildEventBase* = proc(e: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QFormLayout, slot: proc(super: QFormLayoutchildEventBase, e: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFormLayoutchildEventBase, e: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_childEvent(self: ptr cQFormLayout, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFormLayout_childEvent ".} =
  type Cb = proc(super: QFormLayoutchildEventBase, e: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QFormLayout(h: self), e)
  let slotval1 = gen_qcoreevent.QChildEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QFormLayout, event: gen_qcoreevent.QEvent): bool =


  fQFormLayout_virtualbase_event(self.h, event.h)

type QFormLayouteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QFormLayout, slot: proc(super: QFormLayouteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QFormLayouteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_event(self: ptr cQFormLayout, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QFormLayout_event ".} =
  type Cb = proc(super: QFormLayouteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QFormLayout(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QFormLayout, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQFormLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

type QFormLayouteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QFormLayout, slot: proc(super: QFormLayouteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QFormLayouteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_eventFilter(self: ptr cQFormLayout, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QFormLayout_eventFilter ".} =
  type Cb = proc(super: QFormLayouteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QFormLayout(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QFormLayout, event: gen_qcoreevent.QTimerEvent): void =


  fQFormLayout_virtualbase_timerEvent(self.h, event.h)

type QFormLayouttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QFormLayout, slot: proc(super: QFormLayouttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFormLayouttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_timerEvent(self: ptr cQFormLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFormLayout_timerEvent ".} =
  type Cb = proc(super: QFormLayouttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QFormLayout(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QFormLayout, event: gen_qcoreevent.QEvent): void =


  fQFormLayout_virtualbase_customEvent(self.h, event.h)

type QFormLayoutcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QFormLayout, slot: proc(super: QFormLayoutcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFormLayoutcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_customEvent(self: ptr cQFormLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFormLayout_customEvent ".} =
  type Cb = proc(super: QFormLayoutcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QFormLayout(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QFormLayout, signal: gen_qmetaobject.QMetaMethod): void =


  fQFormLayout_virtualbase_connectNotify(self.h, signal.h)

type QFormLayoutconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QFormLayout, slot: proc(super: QFormLayoutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QFormLayoutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_connectNotify(self: ptr cQFormLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFormLayout_connectNotify ".} =
  type Cb = proc(super: QFormLayoutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QFormLayout(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QFormLayout, signal: gen_qmetaobject.QMetaMethod): void =


  fQFormLayout_virtualbase_disconnectNotify(self.h, signal.h)

type QFormLayoutdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QFormLayout, slot: proc(super: QFormLayoutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QFormLayoutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_disconnectNotify(self: ptr cQFormLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFormLayout_disconnectNotify ".} =
  type Cb = proc(super: QFormLayoutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QFormLayout(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_minimumHeightForWidth(self: QFormLayout, param1: cint): cint =


  fQFormLayout_virtualbase_minimumHeightForWidth(self.h, param1)

type QFormLayoutminimumHeightForWidthBase* = proc(param1: cint): cint
proc onminimumHeightForWidth*(self: QFormLayout, slot: proc(super: QFormLayoutminimumHeightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QFormLayoutminimumHeightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_minimumHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_minimumHeightForWidth(self: ptr cQFormLayout, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QFormLayout_minimumHeightForWidth ".} =
  type Cb = proc(super: QFormLayoutminimumHeightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_minimumHeightForWidth(QFormLayout(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_widget(self: QFormLayout, ): gen_qwidget.QWidget =


  gen_qwidget.QWidget(h: fQFormLayout_virtualbase_widget(self.h))

type QFormLayoutwidgetBase* = proc(): gen_qwidget.QWidget
proc onwidget*(self: QFormLayout, slot: proc(super: QFormLayoutwidgetBase): gen_qwidget.QWidget) =
  # TODO check subclass
  type Cb = proc(super: QFormLayoutwidgetBase): gen_qwidget.QWidget
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_widget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_widget(self: ptr cQFormLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QFormLayout_widget ".} =
  type Cb = proc(super: QFormLayoutwidgetBase): gen_qwidget.QWidget
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_widget(QFormLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_spacerItem(self: QFormLayout, ): gen_qlayoutitem.QSpacerItem =


  gen_qlayoutitem.QSpacerItem(h: fQFormLayout_virtualbase_spacerItem(self.h))

type QFormLayoutspacerItemBase* = proc(): gen_qlayoutitem.QSpacerItem
proc onspacerItem*(self: QFormLayout, slot: proc(super: QFormLayoutspacerItemBase): gen_qlayoutitem.QSpacerItem) =
  # TODO check subclass
  type Cb = proc(super: QFormLayoutspacerItemBase): gen_qlayoutitem.QSpacerItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_spacerItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_spacerItem(self: ptr cQFormLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QFormLayout_spacerItem ".} =
  type Cb = proc(super: QFormLayoutspacerItemBase): gen_qlayoutitem.QSpacerItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_spacerItem(QFormLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc staticMetaObject*(_: type QFormLayout): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQFormLayout_staticMetaObject())
proc delete*(self: QFormLayout) =
  fcQFormLayout_delete(self.h)

func init*(T: type QFormLayoutTakeRowResult, h: ptr cQFormLayoutTakeRowResult): QFormLayoutTakeRowResult =
  T(h: h)
proc delete*(self: QFormLayoutTakeRowResult) =
  fcQFormLayoutTakeRowResult_delete(self.h)
