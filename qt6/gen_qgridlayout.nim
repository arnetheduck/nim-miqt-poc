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
{.compile("gen_qgridlayout.cpp", cflags).}


import gen_qgridlayout_types
export gen_qgridlayout_types

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

type cQGridLayout*{.exportc: "QGridLayout", incompleteStruct.} = object

proc fcQGridLayout_new(parent: pointer): ptr cQGridLayout {.importc: "QGridLayout_new".}
proc fcQGridLayout_new2(): ptr cQGridLayout {.importc: "QGridLayout_new2".}
proc fcQGridLayout_metaObject(self: pointer, ): pointer {.importc: "QGridLayout_metaObject".}
proc fcQGridLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QGridLayout_metacast".}
proc fcQGridLayout_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGridLayout_metacall".}
proc fcQGridLayout_tr(s: cstring): struct_miqt_string {.importc: "QGridLayout_tr".}
proc fcQGridLayout_sizeHint(self: pointer, ): pointer {.importc: "QGridLayout_sizeHint".}
proc fcQGridLayout_minimumSize(self: pointer, ): pointer {.importc: "QGridLayout_minimumSize".}
proc fcQGridLayout_maximumSize(self: pointer, ): pointer {.importc: "QGridLayout_maximumSize".}
proc fcQGridLayout_setHorizontalSpacing(self: pointer, spacing: cint): void {.importc: "QGridLayout_setHorizontalSpacing".}
proc fcQGridLayout_horizontalSpacing(self: pointer, ): cint {.importc: "QGridLayout_horizontalSpacing".}
proc fcQGridLayout_setVerticalSpacing(self: pointer, spacing: cint): void {.importc: "QGridLayout_setVerticalSpacing".}
proc fcQGridLayout_verticalSpacing(self: pointer, ): cint {.importc: "QGridLayout_verticalSpacing".}
proc fcQGridLayout_setSpacing(self: pointer, spacing: cint): void {.importc: "QGridLayout_setSpacing".}
proc fcQGridLayout_spacing(self: pointer, ): cint {.importc: "QGridLayout_spacing".}
proc fcQGridLayout_setRowStretch(self: pointer, row: cint, stretch: cint): void {.importc: "QGridLayout_setRowStretch".}
proc fcQGridLayout_setColumnStretch(self: pointer, column: cint, stretch: cint): void {.importc: "QGridLayout_setColumnStretch".}
proc fcQGridLayout_rowStretch(self: pointer, row: cint): cint {.importc: "QGridLayout_rowStretch".}
proc fcQGridLayout_columnStretch(self: pointer, column: cint): cint {.importc: "QGridLayout_columnStretch".}
proc fcQGridLayout_setRowMinimumHeight(self: pointer, row: cint, minSize: cint): void {.importc: "QGridLayout_setRowMinimumHeight".}
proc fcQGridLayout_setColumnMinimumWidth(self: pointer, column: cint, minSize: cint): void {.importc: "QGridLayout_setColumnMinimumWidth".}
proc fcQGridLayout_rowMinimumHeight(self: pointer, row: cint): cint {.importc: "QGridLayout_rowMinimumHeight".}
proc fcQGridLayout_columnMinimumWidth(self: pointer, column: cint): cint {.importc: "QGridLayout_columnMinimumWidth".}
proc fcQGridLayout_columnCount(self: pointer, ): cint {.importc: "QGridLayout_columnCount".}
proc fcQGridLayout_rowCount(self: pointer, ): cint {.importc: "QGridLayout_rowCount".}
proc fcQGridLayout_cellRect(self: pointer, row: cint, column: cint): pointer {.importc: "QGridLayout_cellRect".}
proc fcQGridLayout_hasHeightForWidth(self: pointer, ): bool {.importc: "QGridLayout_hasHeightForWidth".}
proc fcQGridLayout_heightForWidth(self: pointer, param1: cint): cint {.importc: "QGridLayout_heightForWidth".}
proc fcQGridLayout_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QGridLayout_minimumHeightForWidth".}
proc fcQGridLayout_expandingDirections(self: pointer, ): cint {.importc: "QGridLayout_expandingDirections".}
proc fcQGridLayout_invalidate(self: pointer, ): void {.importc: "QGridLayout_invalidate".}
proc fcQGridLayout_addWidget(self: pointer, w: pointer): void {.importc: "QGridLayout_addWidget".}
proc fcQGridLayout_addWidget2(self: pointer, param1: pointer, row: cint, column: cint): void {.importc: "QGridLayout_addWidget2".}
proc fcQGridLayout_addWidget3(self: pointer, param1: pointer, row: cint, column: cint, rowSpan: cint, columnSpan: cint): void {.importc: "QGridLayout_addWidget3".}
proc fcQGridLayout_addLayout(self: pointer, param1: pointer, row: cint, column: cint): void {.importc: "QGridLayout_addLayout".}
proc fcQGridLayout_addLayout2(self: pointer, param1: pointer, row: cint, column: cint, rowSpan: cint, columnSpan: cint): void {.importc: "QGridLayout_addLayout2".}
proc fcQGridLayout_setOriginCorner(self: pointer, originCorner: cint): void {.importc: "QGridLayout_setOriginCorner".}
proc fcQGridLayout_originCorner(self: pointer, ): cint {.importc: "QGridLayout_originCorner".}
proc fcQGridLayout_itemAt(self: pointer, index: cint): pointer {.importc: "QGridLayout_itemAt".}
proc fcQGridLayout_itemAtPosition(self: pointer, row: cint, column: cint): pointer {.importc: "QGridLayout_itemAtPosition".}
proc fcQGridLayout_takeAt(self: pointer, index: cint): pointer {.importc: "QGridLayout_takeAt".}
proc fcQGridLayout_count(self: pointer, ): cint {.importc: "QGridLayout_count".}
proc fcQGridLayout_setGeometry(self: pointer, geometry: pointer): void {.importc: "QGridLayout_setGeometry".}
proc fcQGridLayout_addItem(self: pointer, item: pointer, row: cint, column: cint): void {.importc: "QGridLayout_addItem".}
proc fcQGridLayout_setDefaultPositioning(self: pointer, n: cint, orient: cint): void {.importc: "QGridLayout_setDefaultPositioning".}
proc fcQGridLayout_getItemPosition(self: pointer, idx: cint, row: ptr cint, column: ptr cint, rowSpan: ptr cint, columnSpan: ptr cint): void {.importc: "QGridLayout_getItemPosition".}
proc fcQGridLayout_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGridLayout_tr2".}
proc fcQGridLayout_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGridLayout_tr3".}
proc fcQGridLayout_addWidget4(self: pointer, param1: pointer, row: cint, column: cint, param4: cint): void {.importc: "QGridLayout_addWidget4".}
proc fcQGridLayout_addWidget6(self: pointer, param1: pointer, row: cint, column: cint, rowSpan: cint, columnSpan: cint, param6: cint): void {.importc: "QGridLayout_addWidget6".}
proc fcQGridLayout_addLayout4(self: pointer, param1: pointer, row: cint, column: cint, param4: cint): void {.importc: "QGridLayout_addLayout4".}
proc fcQGridLayout_addLayout6(self: pointer, param1: pointer, row: cint, column: cint, rowSpan: cint, columnSpan: cint, param6: cint): void {.importc: "QGridLayout_addLayout6".}
proc fcQGridLayout_addItem4(self: pointer, item: pointer, row: cint, column: cint, rowSpan: cint): void {.importc: "QGridLayout_addItem4".}
proc fcQGridLayout_addItem5(self: pointer, item: pointer, row: cint, column: cint, rowSpan: cint, columnSpan: cint): void {.importc: "QGridLayout_addItem5".}
proc fcQGridLayout_addItem6(self: pointer, item: pointer, row: cint, column: cint, rowSpan: cint, columnSpan: cint, param6: cint): void {.importc: "QGridLayout_addItem6".}
proc fQGridLayout_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGridLayout_virtualbase_metacall".}
proc fcQGridLayout_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_metacall".}
proc fQGridLayout_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QGridLayout_virtualbase_sizeHint".}
proc fcQGridLayout_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_sizeHint".}
proc fQGridLayout_virtualbase_minimumSize(self: pointer, ): pointer{.importc: "QGridLayout_virtualbase_minimumSize".}
proc fcQGridLayout_override_virtual_minimumSize(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_minimumSize".}
proc fQGridLayout_virtualbase_maximumSize(self: pointer, ): pointer{.importc: "QGridLayout_virtualbase_maximumSize".}
proc fcQGridLayout_override_virtual_maximumSize(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_maximumSize".}
proc fQGridLayout_virtualbase_setSpacing(self: pointer, spacing: cint): void{.importc: "QGridLayout_virtualbase_setSpacing".}
proc fcQGridLayout_override_virtual_setSpacing(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_setSpacing".}
proc fQGridLayout_virtualbase_spacing(self: pointer, ): cint{.importc: "QGridLayout_virtualbase_spacing".}
proc fcQGridLayout_override_virtual_spacing(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_spacing".}
proc fQGridLayout_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QGridLayout_virtualbase_hasHeightForWidth".}
proc fcQGridLayout_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_hasHeightForWidth".}
proc fQGridLayout_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QGridLayout_virtualbase_heightForWidth".}
proc fcQGridLayout_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_heightForWidth".}
proc fQGridLayout_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint{.importc: "QGridLayout_virtualbase_minimumHeightForWidth".}
proc fcQGridLayout_override_virtual_minimumHeightForWidth(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_minimumHeightForWidth".}
proc fQGridLayout_virtualbase_expandingDirections(self: pointer, ): cint{.importc: "QGridLayout_virtualbase_expandingDirections".}
proc fcQGridLayout_override_virtual_expandingDirections(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_expandingDirections".}
proc fQGridLayout_virtualbase_invalidate(self: pointer, ): void{.importc: "QGridLayout_virtualbase_invalidate".}
proc fcQGridLayout_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_invalidate".}
proc fQGridLayout_virtualbase_itemAt(self: pointer, index: cint): pointer{.importc: "QGridLayout_virtualbase_itemAt".}
proc fcQGridLayout_override_virtual_itemAt(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_itemAt".}
proc fQGridLayout_virtualbase_takeAt(self: pointer, index: cint): pointer{.importc: "QGridLayout_virtualbase_takeAt".}
proc fcQGridLayout_override_virtual_takeAt(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_takeAt".}
proc fQGridLayout_virtualbase_count(self: pointer, ): cint{.importc: "QGridLayout_virtualbase_count".}
proc fcQGridLayout_override_virtual_count(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_count".}
proc fQGridLayout_virtualbase_setGeometry(self: pointer, geometry: pointer): void{.importc: "QGridLayout_virtualbase_setGeometry".}
proc fcQGridLayout_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_setGeometry".}
proc fQGridLayout_virtualbase_addItemWithQLayoutItem(self: pointer, param1: pointer): void{.importc: "QGridLayout_virtualbase_addItemWithQLayoutItem".}
proc fcQGridLayout_override_virtual_addItemWithQLayoutItem(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_addItemWithQLayoutItem".}
proc fQGridLayout_virtualbase_geometry(self: pointer, ): pointer{.importc: "QGridLayout_virtualbase_geometry".}
proc fcQGridLayout_override_virtual_geometry(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_geometry".}
proc fQGridLayout_virtualbase_indexOf(self: pointer, param1: pointer): cint{.importc: "QGridLayout_virtualbase_indexOf".}
proc fcQGridLayout_override_virtual_indexOf(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_indexOf".}
proc fQGridLayout_virtualbase_isEmpty(self: pointer, ): bool{.importc: "QGridLayout_virtualbase_isEmpty".}
proc fcQGridLayout_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_isEmpty".}
proc fQGridLayout_virtualbase_controlTypes(self: pointer, ): cint{.importc: "QGridLayout_virtualbase_controlTypes".}
proc fcQGridLayout_override_virtual_controlTypes(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_controlTypes".}
proc fQGridLayout_virtualbase_replaceWidget(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer{.importc: "QGridLayout_virtualbase_replaceWidget".}
proc fcQGridLayout_override_virtual_replaceWidget(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_replaceWidget".}
proc fQGridLayout_virtualbase_layout(self: pointer, ): pointer{.importc: "QGridLayout_virtualbase_layout".}
proc fcQGridLayout_override_virtual_layout(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_layout".}
proc fQGridLayout_virtualbase_childEvent(self: pointer, e: pointer): void{.importc: "QGridLayout_virtualbase_childEvent".}
proc fcQGridLayout_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_childEvent".}
proc fQGridLayout_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGridLayout_virtualbase_event".}
proc fcQGridLayout_override_virtual_event(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_event".}
proc fQGridLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGridLayout_virtualbase_eventFilter".}
proc fcQGridLayout_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_eventFilter".}
proc fQGridLayout_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGridLayout_virtualbase_timerEvent".}
proc fcQGridLayout_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_timerEvent".}
proc fQGridLayout_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGridLayout_virtualbase_customEvent".}
proc fcQGridLayout_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_customEvent".}
proc fQGridLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGridLayout_virtualbase_connectNotify".}
proc fcQGridLayout_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_connectNotify".}
proc fQGridLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGridLayout_virtualbase_disconnectNotify".}
proc fcQGridLayout_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_disconnectNotify".}
proc fQGridLayout_virtualbase_widget(self: pointer, ): pointer{.importc: "QGridLayout_virtualbase_widget".}
proc fcQGridLayout_override_virtual_widget(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_widget".}
proc fQGridLayout_virtualbase_spacerItem(self: pointer, ): pointer{.importc: "QGridLayout_virtualbase_spacerItem".}
proc fcQGridLayout_override_virtual_spacerItem(self: pointer, slot: int) {.importc: "QGridLayout_override_virtual_spacerItem".}
proc fcQGridLayout_delete(self: pointer) {.importc: "QGridLayout_delete".}


func init*(T: type QGridLayout, h: ptr cQGridLayout): QGridLayout =
  T(h: h)
proc create*(T: type QGridLayout, parent: gen_qwidget.QWidget): QGridLayout =

  QGridLayout.init(fcQGridLayout_new(parent.h))
proc create*(T: type QGridLayout, ): QGridLayout =

  QGridLayout.init(fcQGridLayout_new2())
proc metaObject*(self: QGridLayout, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQGridLayout_metaObject(self.h))

proc metacast*(self: QGridLayout, param1: cstring): pointer =

  fcQGridLayout_metacast(self.h, param1)

proc metacall*(self: QGridLayout, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQGridLayout_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QGridLayout, s: cstring): string =

  let v_ms = fcQGridLayout_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: QGridLayout, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQGridLayout_sizeHint(self.h))

proc minimumSize*(self: QGridLayout, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQGridLayout_minimumSize(self.h))

proc maximumSize*(self: QGridLayout, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQGridLayout_maximumSize(self.h))

proc setHorizontalSpacing*(self: QGridLayout, spacing: cint): void =

  fcQGridLayout_setHorizontalSpacing(self.h, spacing)

proc horizontalSpacing*(self: QGridLayout, ): cint =

  fcQGridLayout_horizontalSpacing(self.h)

proc setVerticalSpacing*(self: QGridLayout, spacing: cint): void =

  fcQGridLayout_setVerticalSpacing(self.h, spacing)

proc verticalSpacing*(self: QGridLayout, ): cint =

  fcQGridLayout_verticalSpacing(self.h)

proc setSpacing*(self: QGridLayout, spacing: cint): void =

  fcQGridLayout_setSpacing(self.h, spacing)

proc spacing*(self: QGridLayout, ): cint =

  fcQGridLayout_spacing(self.h)

proc setRowStretch*(self: QGridLayout, row: cint, stretch: cint): void =

  fcQGridLayout_setRowStretch(self.h, row, stretch)

proc setColumnStretch*(self: QGridLayout, column: cint, stretch: cint): void =

  fcQGridLayout_setColumnStretch(self.h, column, stretch)

proc rowStretch*(self: QGridLayout, row: cint): cint =

  fcQGridLayout_rowStretch(self.h, row)

proc columnStretch*(self: QGridLayout, column: cint): cint =

  fcQGridLayout_columnStretch(self.h, column)

proc setRowMinimumHeight*(self: QGridLayout, row: cint, minSize: cint): void =

  fcQGridLayout_setRowMinimumHeight(self.h, row, minSize)

proc setColumnMinimumWidth*(self: QGridLayout, column: cint, minSize: cint): void =

  fcQGridLayout_setColumnMinimumWidth(self.h, column, minSize)

proc rowMinimumHeight*(self: QGridLayout, row: cint): cint =

  fcQGridLayout_rowMinimumHeight(self.h, row)

proc columnMinimumWidth*(self: QGridLayout, column: cint): cint =

  fcQGridLayout_columnMinimumWidth(self.h, column)

proc columnCount*(self: QGridLayout, ): cint =

  fcQGridLayout_columnCount(self.h)

proc rowCount*(self: QGridLayout, ): cint =

  fcQGridLayout_rowCount(self.h)

proc cellRect*(self: QGridLayout, row: cint, column: cint): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQGridLayout_cellRect(self.h, row, column))

proc hasHeightForWidth*(self: QGridLayout, ): bool =

  fcQGridLayout_hasHeightForWidth(self.h)

proc heightForWidth*(self: QGridLayout, param1: cint): cint =

  fcQGridLayout_heightForWidth(self.h, param1)

proc minimumHeightForWidth*(self: QGridLayout, param1: cint): cint =

  fcQGridLayout_minimumHeightForWidth(self.h, param1)

proc expandingDirections*(self: QGridLayout, ): gen_qnamespace.Orientation =

  gen_qnamespace.Orientation(fcQGridLayout_expandingDirections(self.h))

proc invalidate*(self: QGridLayout, ): void =

  fcQGridLayout_invalidate(self.h)

proc addWidget*(self: QGridLayout, w: gen_qwidget.QWidget): void =

  fcQGridLayout_addWidget(self.h, w.h)

proc addWidget2*(self: QGridLayout, param1: gen_qwidget.QWidget, row: cint, column: cint): void =

  fcQGridLayout_addWidget2(self.h, param1.h, row, column)

proc addWidget3*(self: QGridLayout, param1: gen_qwidget.QWidget, row: cint, column: cint, rowSpan: cint, columnSpan: cint): void =

  fcQGridLayout_addWidget3(self.h, param1.h, row, column, rowSpan, columnSpan)

proc addLayout*(self: QGridLayout, param1: gen_qlayout.QLayout, row: cint, column: cint): void =

  fcQGridLayout_addLayout(self.h, param1.h, row, column)

proc addLayout2*(self: QGridLayout, param1: gen_qlayout.QLayout, row: cint, column: cint, rowSpan: cint, columnSpan: cint): void =

  fcQGridLayout_addLayout2(self.h, param1.h, row, column, rowSpan, columnSpan)

proc setOriginCorner*(self: QGridLayout, originCorner: gen_qnamespace.Corner): void =

  fcQGridLayout_setOriginCorner(self.h, cint(originCorner))

proc originCorner*(self: QGridLayout, ): gen_qnamespace.Corner =

  gen_qnamespace.Corner(fcQGridLayout_originCorner(self.h))

proc itemAt*(self: QGridLayout, index: cint): gen_qlayoutitem.QLayoutItem =

  gen_qlayoutitem.QLayoutItem(h: fcQGridLayout_itemAt(self.h, index))

proc itemAtPosition*(self: QGridLayout, row: cint, column: cint): gen_qlayoutitem.QLayoutItem =

  gen_qlayoutitem.QLayoutItem(h: fcQGridLayout_itemAtPosition(self.h, row, column))

proc takeAt*(self: QGridLayout, index: cint): gen_qlayoutitem.QLayoutItem =

  gen_qlayoutitem.QLayoutItem(h: fcQGridLayout_takeAt(self.h, index))

proc count*(self: QGridLayout, ): cint =

  fcQGridLayout_count(self.h)

proc setGeometry*(self: QGridLayout, geometry: gen_qrect.QRect): void =

  fcQGridLayout_setGeometry(self.h, geometry.h)

proc addItem*(self: QGridLayout, item: gen_qlayoutitem.QLayoutItem, row: cint, column: cint): void =

  fcQGridLayout_addItem(self.h, item.h, row, column)

proc setDefaultPositioning*(self: QGridLayout, n: cint, orient: gen_qnamespace.Orientation): void =

  fcQGridLayout_setDefaultPositioning(self.h, n, cint(orient))

proc getItemPosition*(self: QGridLayout, idx: cint, row: ptr cint, column: ptr cint, rowSpan: ptr cint, columnSpan: ptr cint): void =

  fcQGridLayout_getItemPosition(self.h, idx, row, column, rowSpan, columnSpan)

proc tr2*(_: type QGridLayout, s: cstring, c: cstring): string =

  let v_ms = fcQGridLayout_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QGridLayout, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGridLayout_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addWidget4*(self: QGridLayout, param1: gen_qwidget.QWidget, row: cint, column: cint, param4: gen_qnamespace.AlignmentFlag): void =

  fcQGridLayout_addWidget4(self.h, param1.h, row, column, cint(param4))

proc addWidget6*(self: QGridLayout, param1: gen_qwidget.QWidget, row: cint, column: cint, rowSpan: cint, columnSpan: cint, param6: gen_qnamespace.AlignmentFlag): void =

  fcQGridLayout_addWidget6(self.h, param1.h, row, column, rowSpan, columnSpan, cint(param6))

proc addLayout4*(self: QGridLayout, param1: gen_qlayout.QLayout, row: cint, column: cint, param4: gen_qnamespace.AlignmentFlag): void =

  fcQGridLayout_addLayout4(self.h, param1.h, row, column, cint(param4))

proc addLayout6*(self: QGridLayout, param1: gen_qlayout.QLayout, row: cint, column: cint, rowSpan: cint, columnSpan: cint, param6: gen_qnamespace.AlignmentFlag): void =

  fcQGridLayout_addLayout6(self.h, param1.h, row, column, rowSpan, columnSpan, cint(param6))

proc addItem4*(self: QGridLayout, item: gen_qlayoutitem.QLayoutItem, row: cint, column: cint, rowSpan: cint): void =

  fcQGridLayout_addItem4(self.h, item.h, row, column, rowSpan)

proc addItem5*(self: QGridLayout, item: gen_qlayoutitem.QLayoutItem, row: cint, column: cint, rowSpan: cint, columnSpan: cint): void =

  fcQGridLayout_addItem5(self.h, item.h, row, column, rowSpan, columnSpan)

proc addItem6*(self: QGridLayout, item: gen_qlayoutitem.QLayoutItem, row: cint, column: cint, rowSpan: cint, columnSpan: cint, param6: gen_qnamespace.AlignmentFlag): void =

  fcQGridLayout_addItem6(self.h, item.h, row, column, rowSpan, columnSpan, cint(param6))

proc callVirtualBase_metacall(self: QGridLayout, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQGridLayout_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGridLayoutmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QGridLayout, slot: proc(super: QGridLayoutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QGridLayoutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_metacall(self: ptr cQGridLayout, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGridLayout_metacall ".} =
  type Cb = proc(super: QGridLayoutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QGridLayout(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QGridLayout, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQGridLayout_virtualbase_sizeHint(self.h))

type QGridLayoutsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QGridLayout, slot: proc(super: QGridLayoutsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QGridLayoutsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_sizeHint(self: ptr cQGridLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QGridLayout_sizeHint ".} =
  type Cb = proc(super: QGridLayoutsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QGridLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSize(self: QGridLayout, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQGridLayout_virtualbase_minimumSize(self.h))

type QGridLayoutminimumSizeBase* = proc(): gen_qsize.QSize
proc onminimumSize*(self: QGridLayout, slot: proc(super: QGridLayoutminimumSizeBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QGridLayoutminimumSizeBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_minimumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_minimumSize(self: ptr cQGridLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QGridLayout_minimumSize ".} =
  type Cb = proc(super: QGridLayoutminimumSizeBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSize(QGridLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_maximumSize(self: QGridLayout, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQGridLayout_virtualbase_maximumSize(self.h))

type QGridLayoutmaximumSizeBase* = proc(): gen_qsize.QSize
proc onmaximumSize*(self: QGridLayout, slot: proc(super: QGridLayoutmaximumSizeBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QGridLayoutmaximumSizeBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_maximumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_maximumSize(self: ptr cQGridLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QGridLayout_maximumSize ".} =
  type Cb = proc(super: QGridLayoutmaximumSizeBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_maximumSize(QGridLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setSpacing(self: QGridLayout, spacing: cint): void =


  fQGridLayout_virtualbase_setSpacing(self.h, spacing)

type QGridLayoutsetSpacingBase* = proc(spacing: cint): void
proc onsetSpacing*(self: QGridLayout, slot: proc(super: QGridLayoutsetSpacingBase, spacing: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QGridLayoutsetSpacingBase, spacing: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_setSpacing(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_setSpacing(self: ptr cQGridLayout, slot: int, spacing: cint): void {.exportc: "miqt_exec_callback_QGridLayout_setSpacing ".} =
  type Cb = proc(super: QGridLayoutsetSpacingBase, spacing: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(spacing: cint): auto =
    callVirtualBase_setSpacing(QGridLayout(h: self), spacing)
  let slotval1 = spacing


  nimfunc[](superCall, slotval1)
proc callVirtualBase_spacing(self: QGridLayout, ): cint =


  fQGridLayout_virtualbase_spacing(self.h)

type QGridLayoutspacingBase* = proc(): cint
proc onspacing*(self: QGridLayout, slot: proc(super: QGridLayoutspacingBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QGridLayoutspacingBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_spacing(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_spacing(self: ptr cQGridLayout, slot: int): cint {.exportc: "miqt_exec_callback_QGridLayout_spacing ".} =
  type Cb = proc(super: QGridLayoutspacingBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_spacing(QGridLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QGridLayout, ): bool =


  fQGridLayout_virtualbase_hasHeightForWidth(self.h)

type QGridLayouthasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QGridLayout, slot: proc(super: QGridLayouthasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QGridLayouthasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_hasHeightForWidth(self: ptr cQGridLayout, slot: int): bool {.exportc: "miqt_exec_callback_QGridLayout_hasHeightForWidth ".} =
  type Cb = proc(super: QGridLayouthasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QGridLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_heightForWidth(self: QGridLayout, param1: cint): cint =


  fQGridLayout_virtualbase_heightForWidth(self.h, param1)

type QGridLayoutheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QGridLayout, slot: proc(super: QGridLayoutheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QGridLayoutheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_heightForWidth(self: ptr cQGridLayout, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QGridLayout_heightForWidth ".} =
  type Cb = proc(super: QGridLayoutheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QGridLayout(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_minimumHeightForWidth(self: QGridLayout, param1: cint): cint =


  fQGridLayout_virtualbase_minimumHeightForWidth(self.h, param1)

type QGridLayoutminimumHeightForWidthBase* = proc(param1: cint): cint
proc onminimumHeightForWidth*(self: QGridLayout, slot: proc(super: QGridLayoutminimumHeightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QGridLayoutminimumHeightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_minimumHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_minimumHeightForWidth(self: ptr cQGridLayout, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QGridLayout_minimumHeightForWidth ".} =
  type Cb = proc(super: QGridLayoutminimumHeightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_minimumHeightForWidth(QGridLayout(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_expandingDirections(self: QGridLayout, ): gen_qnamespace.Orientation =


  gen_qnamespace.Orientation(fQGridLayout_virtualbase_expandingDirections(self.h))

type QGridLayoutexpandingDirectionsBase* = proc(): gen_qnamespace.Orientation
proc onexpandingDirections*(self: QGridLayout, slot: proc(super: QGridLayoutexpandingDirectionsBase): gen_qnamespace.Orientation) =
  # TODO check subclass
  type Cb = proc(super: QGridLayoutexpandingDirectionsBase): gen_qnamespace.Orientation
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_expandingDirections(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_expandingDirections(self: ptr cQGridLayout, slot: int): cint {.exportc: "miqt_exec_callback_QGridLayout_expandingDirections ".} =
  type Cb = proc(super: QGridLayoutexpandingDirectionsBase): gen_qnamespace.Orientation
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_expandingDirections(QGridLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_invalidate(self: QGridLayout, ): void =


  fQGridLayout_virtualbase_invalidate(self.h)

type QGridLayoutinvalidateBase* = proc(): void
proc oninvalidate*(self: QGridLayout, slot: proc(super: QGridLayoutinvalidateBase): void) =
  # TODO check subclass
  type Cb = proc(super: QGridLayoutinvalidateBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_invalidate(self: ptr cQGridLayout, slot: int): void {.exportc: "miqt_exec_callback_QGridLayout_invalidate ".} =
  type Cb = proc(super: QGridLayoutinvalidateBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_invalidate(QGridLayout(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_itemAt(self: QGridLayout, index: cint): gen_qlayoutitem.QLayoutItem =


  gen_qlayoutitem.QLayoutItem(h: fQGridLayout_virtualbase_itemAt(self.h, index))

type QGridLayoutitemAtBase* = proc(index: cint): gen_qlayoutitem.QLayoutItem
proc onitemAt*(self: QGridLayout, slot: proc(super: QGridLayoutitemAtBase, index: cint): gen_qlayoutitem.QLayoutItem) =
  # TODO check subclass
  type Cb = proc(super: QGridLayoutitemAtBase, index: cint): gen_qlayoutitem.QLayoutItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_itemAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_itemAt(self: ptr cQGridLayout, slot: int, index: cint): pointer {.exportc: "miqt_exec_callback_QGridLayout_itemAt ".} =
  type Cb = proc(super: QGridLayoutitemAtBase, index: cint): gen_qlayoutitem.QLayoutItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: cint): auto =
    callVirtualBase_itemAt(QGridLayout(h: self), index)
  let slotval1 = index


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_takeAt(self: QGridLayout, index: cint): gen_qlayoutitem.QLayoutItem =


  gen_qlayoutitem.QLayoutItem(h: fQGridLayout_virtualbase_takeAt(self.h, index))

type QGridLayouttakeAtBase* = proc(index: cint): gen_qlayoutitem.QLayoutItem
proc ontakeAt*(self: QGridLayout, slot: proc(super: QGridLayouttakeAtBase, index: cint): gen_qlayoutitem.QLayoutItem) =
  # TODO check subclass
  type Cb = proc(super: QGridLayouttakeAtBase, index: cint): gen_qlayoutitem.QLayoutItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_takeAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_takeAt(self: ptr cQGridLayout, slot: int, index: cint): pointer {.exportc: "miqt_exec_callback_QGridLayout_takeAt ".} =
  type Cb = proc(super: QGridLayouttakeAtBase, index: cint): gen_qlayoutitem.QLayoutItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: cint): auto =
    callVirtualBase_takeAt(QGridLayout(h: self), index)
  let slotval1 = index


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_count(self: QGridLayout, ): cint =


  fQGridLayout_virtualbase_count(self.h)

type QGridLayoutcountBase* = proc(): cint
proc oncount*(self: QGridLayout, slot: proc(super: QGridLayoutcountBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QGridLayoutcountBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_count(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_count(self: ptr cQGridLayout, slot: int): cint {.exportc: "miqt_exec_callback_QGridLayout_count ".} =
  type Cb = proc(super: QGridLayoutcountBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_count(QGridLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setGeometry(self: QGridLayout, geometry: gen_qrect.QRect): void =


  fQGridLayout_virtualbase_setGeometry(self.h, geometry.h)

type QGridLayoutsetGeometryBase* = proc(geometry: gen_qrect.QRect): void
proc onsetGeometry*(self: QGridLayout, slot: proc(super: QGridLayoutsetGeometryBase, geometry: gen_qrect.QRect): void) =
  # TODO check subclass
  type Cb = proc(super: QGridLayoutsetGeometryBase, geometry: gen_qrect.QRect): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_setGeometry(self: ptr cQGridLayout, slot: int, geometry: pointer): void {.exportc: "miqt_exec_callback_QGridLayout_setGeometry ".} =
  type Cb = proc(super: QGridLayoutsetGeometryBase, geometry: gen_qrect.QRect): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(geometry: gen_qrect.QRect): auto =
    callVirtualBase_setGeometry(QGridLayout(h: self), geometry)
  let slotval1 = gen_qrect.QRect(h: geometry)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_addItemWithQLayoutItem(self: QGridLayout, param1: gen_qlayoutitem.QLayoutItem): void =


  fQGridLayout_virtualbase_addItemWithQLayoutItem(self.h, param1.h)

type QGridLayoutaddItemWithQLayoutItemBase* = proc(param1: gen_qlayoutitem.QLayoutItem): void
proc onaddItemWithQLayoutItem*(self: QGridLayout, slot: proc(super: QGridLayoutaddItemWithQLayoutItemBase, param1: gen_qlayoutitem.QLayoutItem): void) =
  # TODO check subclass
  type Cb = proc(super: QGridLayoutaddItemWithQLayoutItemBase, param1: gen_qlayoutitem.QLayoutItem): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_addItemWithQLayoutItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_addItemWithQLayoutItem(self: ptr cQGridLayout, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGridLayout_addItemWithQLayoutItem ".} =
  type Cb = proc(super: QGridLayoutaddItemWithQLayoutItemBase, param1: gen_qlayoutitem.QLayoutItem): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qlayoutitem.QLayoutItem): auto =
    callVirtualBase_addItemWithQLayoutItem(QGridLayout(h: self), param1)
  let slotval1 = gen_qlayoutitem.QLayoutItem(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_geometry(self: QGridLayout, ): gen_qrect.QRect =


  gen_qrect.QRect(h: fQGridLayout_virtualbase_geometry(self.h))

type QGridLayoutgeometryBase* = proc(): gen_qrect.QRect
proc ongeometry*(self: QGridLayout, slot: proc(super: QGridLayoutgeometryBase): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QGridLayoutgeometryBase): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_geometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_geometry(self: ptr cQGridLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QGridLayout_geometry ".} =
  type Cb = proc(super: QGridLayoutgeometryBase): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_geometry(QGridLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_indexOf(self: QGridLayout, param1: gen_qwidget.QWidget): cint =


  fQGridLayout_virtualbase_indexOf(self.h, param1.h)

type QGridLayoutindexOfBase* = proc(param1: gen_qwidget.QWidget): cint
proc onindexOf*(self: QGridLayout, slot: proc(super: QGridLayoutindexOfBase, param1: gen_qwidget.QWidget): cint) =
  # TODO check subclass
  type Cb = proc(super: QGridLayoutindexOfBase, param1: gen_qwidget.QWidget): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_indexOf(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_indexOf(self: ptr cQGridLayout, slot: int, param1: pointer): cint {.exportc: "miqt_exec_callback_QGridLayout_indexOf ".} =
  type Cb = proc(super: QGridLayoutindexOfBase, param1: gen_qwidget.QWidget): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qwidget.QWidget): auto =
    callVirtualBase_indexOf(QGridLayout(h: self), param1)
  let slotval1 = gen_qwidget.QWidget(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_isEmpty(self: QGridLayout, ): bool =


  fQGridLayout_virtualbase_isEmpty(self.h)

type QGridLayoutisEmptyBase* = proc(): bool
proc onisEmpty*(self: QGridLayout, slot: proc(super: QGridLayoutisEmptyBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QGridLayoutisEmptyBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_isEmpty(self: ptr cQGridLayout, slot: int): bool {.exportc: "miqt_exec_callback_QGridLayout_isEmpty ".} =
  type Cb = proc(super: QGridLayoutisEmptyBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isEmpty(QGridLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_controlTypes(self: QGridLayout, ): gen_qsizepolicy.QSizePolicyControlType =


  gen_qsizepolicy.QSizePolicyControlType(fQGridLayout_virtualbase_controlTypes(self.h))

type QGridLayoutcontrolTypesBase* = proc(): gen_qsizepolicy.QSizePolicyControlType
proc oncontrolTypes*(self: QGridLayout, slot: proc(super: QGridLayoutcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType) =
  # TODO check subclass
  type Cb = proc(super: QGridLayoutcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_controlTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_controlTypes(self: ptr cQGridLayout, slot: int): cint {.exportc: "miqt_exec_callback_QGridLayout_controlTypes ".} =
  type Cb = proc(super: QGridLayoutcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_controlTypes(QGridLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_replaceWidget(self: QGridLayout, fromVal: gen_qwidget.QWidget, to: gen_qwidget.QWidget, options: gen_qnamespace.FindChildOption): gen_qlayoutitem.QLayoutItem =


  gen_qlayoutitem.QLayoutItem(h: fQGridLayout_virtualbase_replaceWidget(self.h, fromVal.h, to.h, cint(options)))

type QGridLayoutreplaceWidgetBase* = proc(fromVal: gen_qwidget.QWidget, to: gen_qwidget.QWidget, options: gen_qnamespace.FindChildOption): gen_qlayoutitem.QLayoutItem
proc onreplaceWidget*(self: QGridLayout, slot: proc(super: QGridLayoutreplaceWidgetBase, fromVal: gen_qwidget.QWidget, to: gen_qwidget.QWidget, options: gen_qnamespace.FindChildOption): gen_qlayoutitem.QLayoutItem) =
  # TODO check subclass
  type Cb = proc(super: QGridLayoutreplaceWidgetBase, fromVal: gen_qwidget.QWidget, to: gen_qwidget.QWidget, options: gen_qnamespace.FindChildOption): gen_qlayoutitem.QLayoutItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_replaceWidget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_replaceWidget(self: ptr cQGridLayout, slot: int, fromVal: pointer, to: pointer, options: cint): pointer {.exportc: "miqt_exec_callback_QGridLayout_replaceWidget ".} =
  type Cb = proc(super: QGridLayoutreplaceWidgetBase, fromVal: gen_qwidget.QWidget, to: gen_qwidget.QWidget, options: gen_qnamespace.FindChildOption): gen_qlayoutitem.QLayoutItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fromVal: gen_qwidget.QWidget, to: gen_qwidget.QWidget, options: gen_qnamespace.FindChildOption): auto =
    callVirtualBase_replaceWidget(QGridLayout(h: self), fromVal, to, options)
  let slotval1 = gen_qwidget.QWidget(h: fromVal)

  let slotval2 = gen_qwidget.QWidget(h: to)

  let slotval3 = gen_qnamespace.FindChildOption(options)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_layout(self: QGridLayout, ): gen_qlayout.QLayout =


  gen_qlayout.QLayout(h: fQGridLayout_virtualbase_layout(self.h))

type QGridLayoutlayoutBase* = proc(): gen_qlayout.QLayout
proc onlayout*(self: QGridLayout, slot: proc(super: QGridLayoutlayoutBase): gen_qlayout.QLayout) =
  # TODO check subclass
  type Cb = proc(super: QGridLayoutlayoutBase): gen_qlayout.QLayout
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_layout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_layout(self: ptr cQGridLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QGridLayout_layout ".} =
  type Cb = proc(super: QGridLayoutlayoutBase): gen_qlayout.QLayout
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_layout(QGridLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_childEvent(self: QGridLayout, e: gen_qcoreevent.QChildEvent): void =


  fQGridLayout_virtualbase_childEvent(self.h, e.h)

type QGridLayoutchildEventBase* = proc(e: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QGridLayout, slot: proc(super: QGridLayoutchildEventBase, e: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGridLayoutchildEventBase, e: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_childEvent(self: ptr cQGridLayout, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QGridLayout_childEvent ".} =
  type Cb = proc(super: QGridLayoutchildEventBase, e: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QGridLayout(h: self), e)
  let slotval1 = gen_qcoreevent.QChildEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QGridLayout, event: gen_qcoreevent.QEvent): bool =


  fQGridLayout_virtualbase_event(self.h, event.h)

type QGridLayouteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QGridLayout, slot: proc(super: QGridLayouteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGridLayouteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_event(self: ptr cQGridLayout, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGridLayout_event ".} =
  type Cb = proc(super: QGridLayouteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QGridLayout(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QGridLayout, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQGridLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGridLayouteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QGridLayout, slot: proc(super: QGridLayouteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGridLayouteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_eventFilter(self: ptr cQGridLayout, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGridLayout_eventFilter ".} =
  type Cb = proc(super: QGridLayouteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QGridLayout(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QGridLayout, event: gen_qcoreevent.QTimerEvent): void =


  fQGridLayout_virtualbase_timerEvent(self.h, event.h)

type QGridLayouttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QGridLayout, slot: proc(super: QGridLayouttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGridLayouttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_timerEvent(self: ptr cQGridLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGridLayout_timerEvent ".} =
  type Cb = proc(super: QGridLayouttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QGridLayout(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QGridLayout, event: gen_qcoreevent.QEvent): void =


  fQGridLayout_virtualbase_customEvent(self.h, event.h)

type QGridLayoutcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QGridLayout, slot: proc(super: QGridLayoutcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGridLayoutcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_customEvent(self: ptr cQGridLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGridLayout_customEvent ".} =
  type Cb = proc(super: QGridLayoutcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QGridLayout(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QGridLayout, signal: gen_qmetaobject.QMetaMethod): void =


  fQGridLayout_virtualbase_connectNotify(self.h, signal.h)

type QGridLayoutconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QGridLayout, slot: proc(super: QGridLayoutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGridLayoutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_connectNotify(self: ptr cQGridLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGridLayout_connectNotify ".} =
  type Cb = proc(super: QGridLayoutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QGridLayout(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QGridLayout, signal: gen_qmetaobject.QMetaMethod): void =


  fQGridLayout_virtualbase_disconnectNotify(self.h, signal.h)

type QGridLayoutdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QGridLayout, slot: proc(super: QGridLayoutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGridLayoutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_disconnectNotify(self: ptr cQGridLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGridLayout_disconnectNotify ".} =
  type Cb = proc(super: QGridLayoutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QGridLayout(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_widget(self: QGridLayout, ): gen_qwidget.QWidget =


  gen_qwidget.QWidget(h: fQGridLayout_virtualbase_widget(self.h))

type QGridLayoutwidgetBase* = proc(): gen_qwidget.QWidget
proc onwidget*(self: QGridLayout, slot: proc(super: QGridLayoutwidgetBase): gen_qwidget.QWidget) =
  # TODO check subclass
  type Cb = proc(super: QGridLayoutwidgetBase): gen_qwidget.QWidget
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_widget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_widget(self: ptr cQGridLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QGridLayout_widget ".} =
  type Cb = proc(super: QGridLayoutwidgetBase): gen_qwidget.QWidget
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_widget(QGridLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_spacerItem(self: QGridLayout, ): gen_qlayoutitem.QSpacerItem =


  gen_qlayoutitem.QSpacerItem(h: fQGridLayout_virtualbase_spacerItem(self.h))

type QGridLayoutspacerItemBase* = proc(): gen_qlayoutitem.QSpacerItem
proc onspacerItem*(self: QGridLayout, slot: proc(super: QGridLayoutspacerItemBase): gen_qlayoutitem.QSpacerItem) =
  # TODO check subclass
  type Cb = proc(super: QGridLayoutspacerItemBase): gen_qlayoutitem.QSpacerItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGridLayout_override_virtual_spacerItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGridLayout_spacerItem(self: ptr cQGridLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QGridLayout_spacerItem ".} =
  type Cb = proc(super: QGridLayoutspacerItemBase): gen_qlayoutitem.QSpacerItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_spacerItem(QGridLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QGridLayout) =
  fcQGridLayout_delete(self.h)
