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
{.compile("gen_qtreewidget.cpp", cflags).}


type QTreeWidgetItemItemType* = cint
const
  QTreeWidgetItemType* = 0
  QTreeWidgetItemUserType* = 1000



type QTreeWidgetItemChildIndicatorPolicy* = cint
const
  QTreeWidgetItemShowIndicator* = 0
  QTreeWidgetItemDontShowIndicator* = 1
  QTreeWidgetItemDontShowIndicatorWhenChildless* = 2



import gen_qtreewidget_types
export gen_qtreewidget_types

import
  gen_qabstractitemdelegate,
  gen_qabstractitemmodel,
  gen_qabstractitemview,
  gen_qbrush,
  gen_qcolor,
  gen_qcoreevent,
  gen_qdatastream,
  gen_qevent,
  gen_qfont,
  gen_qicon,
  gen_qitemselectionmodel,
  gen_qmetaobject,
  gen_qmimedata,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qrect,
  gen_qregion,
  gen_qsize,
  gen_qstyleoption,
  gen_qtreeview,
  gen_qvariant,
  gen_qwidget
export
  gen_qabstractitemdelegate,
  gen_qabstractitemmodel,
  gen_qabstractitemview,
  gen_qbrush,
  gen_qcolor,
  gen_qcoreevent,
  gen_qdatastream,
  gen_qevent,
  gen_qfont,
  gen_qicon,
  gen_qitemselectionmodel,
  gen_qmetaobject,
  gen_qmimedata,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qrect,
  gen_qregion,
  gen_qsize,
  gen_qstyleoption,
  gen_qtreeview,
  gen_qvariant,
  gen_qwidget

type cQTreeWidgetItem*{.exportc: "QTreeWidgetItem", incompleteStruct.} = object
type cQTreeWidget*{.exportc: "QTreeWidget", incompleteStruct.} = object

proc fcQTreeWidgetItem_new(): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new".}
proc fcQTreeWidgetItem_new2(strings: struct_miqt_array): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new2".}
proc fcQTreeWidgetItem_new3(treeview: pointer): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new3".}
proc fcQTreeWidgetItem_new4(treeview: pointer, strings: struct_miqt_array): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new4".}
proc fcQTreeWidgetItem_new5(treeview: pointer, after: pointer): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new5".}
proc fcQTreeWidgetItem_new6(parent: pointer): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new6".}
proc fcQTreeWidgetItem_new7(parent: pointer, strings: struct_miqt_array): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new7".}
proc fcQTreeWidgetItem_new8(parent: pointer, after: pointer): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new8".}
proc fcQTreeWidgetItem_new9(other: pointer): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new9".}
proc fcQTreeWidgetItem_new10(typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new10".}
proc fcQTreeWidgetItem_new11(strings: struct_miqt_array, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new11".}
proc fcQTreeWidgetItem_new12(treeview: pointer, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new12".}
proc fcQTreeWidgetItem_new13(treeview: pointer, strings: struct_miqt_array, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new13".}
proc fcQTreeWidgetItem_new14(treeview: pointer, after: pointer, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new14".}
proc fcQTreeWidgetItem_new15(parent: pointer, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new15".}
proc fcQTreeWidgetItem_new16(parent: pointer, strings: struct_miqt_array, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new16".}
proc fcQTreeWidgetItem_new17(parent: pointer, after: pointer, typeVal: cint): ptr cQTreeWidgetItem {.importc: "QTreeWidgetItem_new17".}
proc fcQTreeWidgetItem_clone(self: pointer, ): pointer {.importc: "QTreeWidgetItem_clone".}
proc fcQTreeWidgetItem_treeWidget(self: pointer, ): pointer {.importc: "QTreeWidgetItem_treeWidget".}
proc fcQTreeWidgetItem_setSelected(self: pointer, select: bool): void {.importc: "QTreeWidgetItem_setSelected".}
proc fcQTreeWidgetItem_isSelected(self: pointer, ): bool {.importc: "QTreeWidgetItem_isSelected".}
proc fcQTreeWidgetItem_setHidden(self: pointer, hide: bool): void {.importc: "QTreeWidgetItem_setHidden".}
proc fcQTreeWidgetItem_isHidden(self: pointer, ): bool {.importc: "QTreeWidgetItem_isHidden".}
proc fcQTreeWidgetItem_setExpanded(self: pointer, expand: bool): void {.importc: "QTreeWidgetItem_setExpanded".}
proc fcQTreeWidgetItem_isExpanded(self: pointer, ): bool {.importc: "QTreeWidgetItem_isExpanded".}
proc fcQTreeWidgetItem_setFirstColumnSpanned(self: pointer, span: bool): void {.importc: "QTreeWidgetItem_setFirstColumnSpanned".}
proc fcQTreeWidgetItem_isFirstColumnSpanned(self: pointer, ): bool {.importc: "QTreeWidgetItem_isFirstColumnSpanned".}
proc fcQTreeWidgetItem_setDisabled(self: pointer, disabled: bool): void {.importc: "QTreeWidgetItem_setDisabled".}
proc fcQTreeWidgetItem_isDisabled(self: pointer, ): bool {.importc: "QTreeWidgetItem_isDisabled".}
proc fcQTreeWidgetItem_setChildIndicatorPolicy(self: pointer, policy: cint): void {.importc: "QTreeWidgetItem_setChildIndicatorPolicy".}
proc fcQTreeWidgetItem_childIndicatorPolicy(self: pointer, ): cint {.importc: "QTreeWidgetItem_childIndicatorPolicy".}
proc fcQTreeWidgetItem_flags(self: pointer, ): cint {.importc: "QTreeWidgetItem_flags".}
proc fcQTreeWidgetItem_setFlags(self: pointer, flags: cint): void {.importc: "QTreeWidgetItem_setFlags".}
proc fcQTreeWidgetItem_text(self: pointer, column: cint): struct_miqt_string {.importc: "QTreeWidgetItem_text".}
proc fcQTreeWidgetItem_setText(self: pointer, column: cint, text: struct_miqt_string): void {.importc: "QTreeWidgetItem_setText".}
proc fcQTreeWidgetItem_icon(self: pointer, column: cint): pointer {.importc: "QTreeWidgetItem_icon".}
proc fcQTreeWidgetItem_setIcon(self: pointer, column: cint, icon: pointer): void {.importc: "QTreeWidgetItem_setIcon".}
proc fcQTreeWidgetItem_statusTip(self: pointer, column: cint): struct_miqt_string {.importc: "QTreeWidgetItem_statusTip".}
proc fcQTreeWidgetItem_setStatusTip(self: pointer, column: cint, statusTip: struct_miqt_string): void {.importc: "QTreeWidgetItem_setStatusTip".}
proc fcQTreeWidgetItem_toolTip(self: pointer, column: cint): struct_miqt_string {.importc: "QTreeWidgetItem_toolTip".}
proc fcQTreeWidgetItem_setToolTip(self: pointer, column: cint, toolTip: struct_miqt_string): void {.importc: "QTreeWidgetItem_setToolTip".}
proc fcQTreeWidgetItem_whatsThis(self: pointer, column: cint): struct_miqt_string {.importc: "QTreeWidgetItem_whatsThis".}
proc fcQTreeWidgetItem_setWhatsThis(self: pointer, column: cint, whatsThis: struct_miqt_string): void {.importc: "QTreeWidgetItem_setWhatsThis".}
proc fcQTreeWidgetItem_font(self: pointer, column: cint): pointer {.importc: "QTreeWidgetItem_font".}
proc fcQTreeWidgetItem_setFont(self: pointer, column: cint, font: pointer): void {.importc: "QTreeWidgetItem_setFont".}
proc fcQTreeWidgetItem_textAlignment(self: pointer, column: cint): cint {.importc: "QTreeWidgetItem_textAlignment".}
proc fcQTreeWidgetItem_setTextAlignment(self: pointer, column: cint, alignment: cint): void {.importc: "QTreeWidgetItem_setTextAlignment".}
proc fcQTreeWidgetItem_backgroundColor(self: pointer, column: cint): pointer {.importc: "QTreeWidgetItem_backgroundColor".}
proc fcQTreeWidgetItem_setBackgroundColor(self: pointer, column: cint, color: pointer): void {.importc: "QTreeWidgetItem_setBackgroundColor".}
proc fcQTreeWidgetItem_background(self: pointer, column: cint): pointer {.importc: "QTreeWidgetItem_background".}
proc fcQTreeWidgetItem_setBackground(self: pointer, column: cint, brush: pointer): void {.importc: "QTreeWidgetItem_setBackground".}
proc fcQTreeWidgetItem_textColor(self: pointer, column: cint): pointer {.importc: "QTreeWidgetItem_textColor".}
proc fcQTreeWidgetItem_setTextColor(self: pointer, column: cint, color: pointer): void {.importc: "QTreeWidgetItem_setTextColor".}
proc fcQTreeWidgetItem_foreground(self: pointer, column: cint): pointer {.importc: "QTreeWidgetItem_foreground".}
proc fcQTreeWidgetItem_setForeground(self: pointer, column: cint, brush: pointer): void {.importc: "QTreeWidgetItem_setForeground".}
proc fcQTreeWidgetItem_checkState(self: pointer, column: cint): cint {.importc: "QTreeWidgetItem_checkState".}
proc fcQTreeWidgetItem_setCheckState(self: pointer, column: cint, state: cint): void {.importc: "QTreeWidgetItem_setCheckState".}
proc fcQTreeWidgetItem_sizeHint(self: pointer, column: cint): pointer {.importc: "QTreeWidgetItem_sizeHint".}
proc fcQTreeWidgetItem_setSizeHint(self: pointer, column: cint, size: pointer): void {.importc: "QTreeWidgetItem_setSizeHint".}
proc fcQTreeWidgetItem_data(self: pointer, column: cint, role: cint): pointer {.importc: "QTreeWidgetItem_data".}
proc fcQTreeWidgetItem_setData(self: pointer, column: cint, role: cint, value: pointer): void {.importc: "QTreeWidgetItem_setData".}
proc fcQTreeWidgetItem_operatorLesser(self: pointer, other: pointer): bool {.importc: "QTreeWidgetItem_operatorLesser".}
proc fcQTreeWidgetItem_read(self: pointer, inVal: pointer): void {.importc: "QTreeWidgetItem_read".}
proc fcQTreeWidgetItem_write(self: pointer, outVal: pointer): void {.importc: "QTreeWidgetItem_write".}
proc fcQTreeWidgetItem_operatorAssign(self: pointer, other: pointer): void {.importc: "QTreeWidgetItem_operatorAssign".}
proc fcQTreeWidgetItem_parent(self: pointer, ): pointer {.importc: "QTreeWidgetItem_parent".}
proc fcQTreeWidgetItem_child(self: pointer, index: cint): pointer {.importc: "QTreeWidgetItem_child".}
proc fcQTreeWidgetItem_childCount(self: pointer, ): cint {.importc: "QTreeWidgetItem_childCount".}
proc fcQTreeWidgetItem_columnCount(self: pointer, ): cint {.importc: "QTreeWidgetItem_columnCount".}
proc fcQTreeWidgetItem_indexOfChild(self: pointer, child: pointer): cint {.importc: "QTreeWidgetItem_indexOfChild".}
proc fcQTreeWidgetItem_addChild(self: pointer, child: pointer): void {.importc: "QTreeWidgetItem_addChild".}
proc fcQTreeWidgetItem_insertChild(self: pointer, index: cint, child: pointer): void {.importc: "QTreeWidgetItem_insertChild".}
proc fcQTreeWidgetItem_removeChild(self: pointer, child: pointer): void {.importc: "QTreeWidgetItem_removeChild".}
proc fcQTreeWidgetItem_takeChild(self: pointer, index: cint): pointer {.importc: "QTreeWidgetItem_takeChild".}
proc fcQTreeWidgetItem_addChildren(self: pointer, children: struct_miqt_array): void {.importc: "QTreeWidgetItem_addChildren".}
proc fcQTreeWidgetItem_insertChildren(self: pointer, index: cint, children: struct_miqt_array): void {.importc: "QTreeWidgetItem_insertChildren".}
proc fcQTreeWidgetItem_takeChildren(self: pointer, ): struct_miqt_array {.importc: "QTreeWidgetItem_takeChildren".}
proc fcQTreeWidgetItem_typeX(self: pointer, ): cint {.importc: "QTreeWidgetItem_type".}
proc fcQTreeWidgetItem_sortChildren(self: pointer, column: cint, order: cint): void {.importc: "QTreeWidgetItem_sortChildren".}
proc fQTreeWidgetItem_virtualbase_clone(self: pointer, ): pointer{.importc: "QTreeWidgetItem_virtualbase_clone".}
proc fcQTreeWidgetItem_override_virtual_clone(self: pointer, slot: int) {.importc: "QTreeWidgetItem_override_virtual_clone".}
proc fQTreeWidgetItem_virtualbase_data(self: pointer, column: cint, role: cint): pointer{.importc: "QTreeWidgetItem_virtualbase_data".}
proc fcQTreeWidgetItem_override_virtual_data(self: pointer, slot: int) {.importc: "QTreeWidgetItem_override_virtual_data".}
proc fQTreeWidgetItem_virtualbase_setData(self: pointer, column: cint, role: cint, value: pointer): void{.importc: "QTreeWidgetItem_virtualbase_setData".}
proc fcQTreeWidgetItem_override_virtual_setData(self: pointer, slot: int) {.importc: "QTreeWidgetItem_override_virtual_setData".}
proc fQTreeWidgetItem_virtualbase_operatorLesser(self: pointer, other: pointer): bool{.importc: "QTreeWidgetItem_virtualbase_operatorLesser".}
proc fcQTreeWidgetItem_override_virtual_operatorLesser(self: pointer, slot: int) {.importc: "QTreeWidgetItem_override_virtual_operatorLesser".}
proc fQTreeWidgetItem_virtualbase_read(self: pointer, inVal: pointer): void{.importc: "QTreeWidgetItem_virtualbase_read".}
proc fcQTreeWidgetItem_override_virtual_read(self: pointer, slot: int) {.importc: "QTreeWidgetItem_override_virtual_read".}
proc fQTreeWidgetItem_virtualbase_write(self: pointer, outVal: pointer): void{.importc: "QTreeWidgetItem_virtualbase_write".}
proc fcQTreeWidgetItem_override_virtual_write(self: pointer, slot: int) {.importc: "QTreeWidgetItem_override_virtual_write".}
proc fcQTreeWidgetItem_delete(self: pointer) {.importc: "QTreeWidgetItem_delete".}
proc fcQTreeWidget_new(parent: pointer): ptr cQTreeWidget {.importc: "QTreeWidget_new".}
proc fcQTreeWidget_new2(): ptr cQTreeWidget {.importc: "QTreeWidget_new2".}
proc fcQTreeWidget_metaObject(self: pointer, ): pointer {.importc: "QTreeWidget_metaObject".}
proc fcQTreeWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QTreeWidget_metacast".}
proc fcQTreeWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTreeWidget_metacall".}
proc fcQTreeWidget_tr(s: cstring): struct_miqt_string {.importc: "QTreeWidget_tr".}
proc fcQTreeWidget_trUtf8(s: cstring): struct_miqt_string {.importc: "QTreeWidget_trUtf8".}
proc fcQTreeWidget_columnCount(self: pointer, ): cint {.importc: "QTreeWidget_columnCount".}
proc fcQTreeWidget_setColumnCount(self: pointer, columns: cint): void {.importc: "QTreeWidget_setColumnCount".}
proc fcQTreeWidget_invisibleRootItem(self: pointer, ): pointer {.importc: "QTreeWidget_invisibleRootItem".}
proc fcQTreeWidget_topLevelItem(self: pointer, index: cint): pointer {.importc: "QTreeWidget_topLevelItem".}
proc fcQTreeWidget_topLevelItemCount(self: pointer, ): cint {.importc: "QTreeWidget_topLevelItemCount".}
proc fcQTreeWidget_insertTopLevelItem(self: pointer, index: cint, item: pointer): void {.importc: "QTreeWidget_insertTopLevelItem".}
proc fcQTreeWidget_addTopLevelItem(self: pointer, item: pointer): void {.importc: "QTreeWidget_addTopLevelItem".}
proc fcQTreeWidget_takeTopLevelItem(self: pointer, index: cint): pointer {.importc: "QTreeWidget_takeTopLevelItem".}
proc fcQTreeWidget_indexOfTopLevelItem(self: pointer, item: pointer): cint {.importc: "QTreeWidget_indexOfTopLevelItem".}
proc fcQTreeWidget_insertTopLevelItems(self: pointer, index: cint, items: struct_miqt_array): void {.importc: "QTreeWidget_insertTopLevelItems".}
proc fcQTreeWidget_addTopLevelItems(self: pointer, items: struct_miqt_array): void {.importc: "QTreeWidget_addTopLevelItems".}
proc fcQTreeWidget_headerItem(self: pointer, ): pointer {.importc: "QTreeWidget_headerItem".}
proc fcQTreeWidget_setHeaderItem(self: pointer, item: pointer): void {.importc: "QTreeWidget_setHeaderItem".}
proc fcQTreeWidget_setHeaderLabels(self: pointer, labels: struct_miqt_array): void {.importc: "QTreeWidget_setHeaderLabels".}
proc fcQTreeWidget_setHeaderLabel(self: pointer, label: struct_miqt_string): void {.importc: "QTreeWidget_setHeaderLabel".}
proc fcQTreeWidget_currentItem(self: pointer, ): pointer {.importc: "QTreeWidget_currentItem".}
proc fcQTreeWidget_currentColumn(self: pointer, ): cint {.importc: "QTreeWidget_currentColumn".}
proc fcQTreeWidget_setCurrentItem(self: pointer, item: pointer): void {.importc: "QTreeWidget_setCurrentItem".}
proc fcQTreeWidget_setCurrentItem2(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_setCurrentItem2".}
proc fcQTreeWidget_setCurrentItem3(self: pointer, item: pointer, column: cint, command: cint): void {.importc: "QTreeWidget_setCurrentItem3".}
proc fcQTreeWidget_itemAt(self: pointer, p: pointer): pointer {.importc: "QTreeWidget_itemAt".}
proc fcQTreeWidget_itemAt2(self: pointer, x: cint, y: cint): pointer {.importc: "QTreeWidget_itemAt2".}
proc fcQTreeWidget_visualItemRect(self: pointer, item: pointer): pointer {.importc: "QTreeWidget_visualItemRect".}
proc fcQTreeWidget_sortColumn(self: pointer, ): cint {.importc: "QTreeWidget_sortColumn".}
proc fcQTreeWidget_sortItems(self: pointer, column: cint, order: cint): void {.importc: "QTreeWidget_sortItems".}
proc fcQTreeWidget_editItem(self: pointer, item: pointer): void {.importc: "QTreeWidget_editItem".}
proc fcQTreeWidget_openPersistentEditor(self: pointer, item: pointer): void {.importc: "QTreeWidget_openPersistentEditor".}
proc fcQTreeWidget_closePersistentEditor(self: pointer, item: pointer): void {.importc: "QTreeWidget_closePersistentEditor".}
proc fcQTreeWidget_isPersistentEditorOpen(self: pointer, item: pointer): bool {.importc: "QTreeWidget_isPersistentEditorOpen".}
proc fcQTreeWidget_itemWidget(self: pointer, item: pointer, column: cint): pointer {.importc: "QTreeWidget_itemWidget".}
proc fcQTreeWidget_setItemWidget(self: pointer, item: pointer, column: cint, widget: pointer): void {.importc: "QTreeWidget_setItemWidget".}
proc fcQTreeWidget_removeItemWidget(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_removeItemWidget".}
proc fcQTreeWidget_isItemSelected(self: pointer, item: pointer): bool {.importc: "QTreeWidget_isItemSelected".}
proc fcQTreeWidget_setItemSelected(self: pointer, item: pointer, select: bool): void {.importc: "QTreeWidget_setItemSelected".}
proc fcQTreeWidget_selectedItems(self: pointer, ): struct_miqt_array {.importc: "QTreeWidget_selectedItems".}
proc fcQTreeWidget_findItems(self: pointer, text: struct_miqt_string, flags: cint): struct_miqt_array {.importc: "QTreeWidget_findItems".}
proc fcQTreeWidget_isItemHidden(self: pointer, item: pointer): bool {.importc: "QTreeWidget_isItemHidden".}
proc fcQTreeWidget_setItemHidden(self: pointer, item: pointer, hide: bool): void {.importc: "QTreeWidget_setItemHidden".}
proc fcQTreeWidget_isItemExpanded(self: pointer, item: pointer): bool {.importc: "QTreeWidget_isItemExpanded".}
proc fcQTreeWidget_setItemExpanded(self: pointer, item: pointer, expand: bool): void {.importc: "QTreeWidget_setItemExpanded".}
proc fcQTreeWidget_isFirstItemColumnSpanned(self: pointer, item: pointer): bool {.importc: "QTreeWidget_isFirstItemColumnSpanned".}
proc fcQTreeWidget_setFirstItemColumnSpanned(self: pointer, item: pointer, span: bool): void {.importc: "QTreeWidget_setFirstItemColumnSpanned".}
proc fcQTreeWidget_itemAbove(self: pointer, item: pointer): pointer {.importc: "QTreeWidget_itemAbove".}
proc fcQTreeWidget_itemBelow(self: pointer, item: pointer): pointer {.importc: "QTreeWidget_itemBelow".}
proc fcQTreeWidget_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QTreeWidget_setSelectionModel".}
proc fcQTreeWidget_scrollToItem(self: pointer, item: pointer): void {.importc: "QTreeWidget_scrollToItem".}
proc fcQTreeWidget_expandItem(self: pointer, item: pointer): void {.importc: "QTreeWidget_expandItem".}
proc fcQTreeWidget_collapseItem(self: pointer, item: pointer): void {.importc: "QTreeWidget_collapseItem".}
proc fcQTreeWidget_clear(self: pointer, ): void {.importc: "QTreeWidget_clear".}
proc fcQTreeWidget_itemPressed(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_itemPressed".}
proc fQTreeWidget_connect_itemPressed(self: pointer, slot: int) {.importc: "QTreeWidget_connect_itemPressed".}
proc fcQTreeWidget_itemClicked(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_itemClicked".}
proc fQTreeWidget_connect_itemClicked(self: pointer, slot: int) {.importc: "QTreeWidget_connect_itemClicked".}
proc fcQTreeWidget_itemDoubleClicked(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_itemDoubleClicked".}
proc fQTreeWidget_connect_itemDoubleClicked(self: pointer, slot: int) {.importc: "QTreeWidget_connect_itemDoubleClicked".}
proc fcQTreeWidget_itemActivated(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_itemActivated".}
proc fQTreeWidget_connect_itemActivated(self: pointer, slot: int) {.importc: "QTreeWidget_connect_itemActivated".}
proc fcQTreeWidget_itemEntered(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_itemEntered".}
proc fQTreeWidget_connect_itemEntered(self: pointer, slot: int) {.importc: "QTreeWidget_connect_itemEntered".}
proc fcQTreeWidget_itemChanged(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_itemChanged".}
proc fQTreeWidget_connect_itemChanged(self: pointer, slot: int) {.importc: "QTreeWidget_connect_itemChanged".}
proc fcQTreeWidget_itemExpanded(self: pointer, item: pointer): void {.importc: "QTreeWidget_itemExpanded".}
proc fQTreeWidget_connect_itemExpanded(self: pointer, slot: int) {.importc: "QTreeWidget_connect_itemExpanded".}
proc fcQTreeWidget_itemCollapsed(self: pointer, item: pointer): void {.importc: "QTreeWidget_itemCollapsed".}
proc fQTreeWidget_connect_itemCollapsed(self: pointer, slot: int) {.importc: "QTreeWidget_connect_itemCollapsed".}
proc fcQTreeWidget_currentItemChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QTreeWidget_currentItemChanged".}
proc fQTreeWidget_connect_currentItemChanged(self: pointer, slot: int) {.importc: "QTreeWidget_connect_currentItemChanged".}
proc fcQTreeWidget_itemSelectionChanged(self: pointer, ): void {.importc: "QTreeWidget_itemSelectionChanged".}
proc fQTreeWidget_connect_itemSelectionChanged(self: pointer, slot: int) {.importc: "QTreeWidget_connect_itemSelectionChanged".}
proc fcQTreeWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTreeWidget_tr2".}
proc fcQTreeWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTreeWidget_tr3".}
proc fcQTreeWidget_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTreeWidget_trUtf82".}
proc fcQTreeWidget_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTreeWidget_trUtf83".}
proc fcQTreeWidget_editItem2(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_editItem2".}
proc fcQTreeWidget_openPersistentEditor2(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_openPersistentEditor2".}
proc fcQTreeWidget_closePersistentEditor2(self: pointer, item: pointer, column: cint): void {.importc: "QTreeWidget_closePersistentEditor2".}
proc fcQTreeWidget_isPersistentEditorOpen2(self: pointer, item: pointer, column: cint): bool {.importc: "QTreeWidget_isPersistentEditorOpen2".}
proc fcQTreeWidget_findItems3(self: pointer, text: struct_miqt_string, flags: cint, column: cint): struct_miqt_array {.importc: "QTreeWidget_findItems3".}
proc fcQTreeWidget_scrollToItem2(self: pointer, item: pointer, hint: cint): void {.importc: "QTreeWidget_scrollToItem2".}
proc fQTreeWidget_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QTreeWidget_virtualbase_metaObject".}
proc fcQTreeWidget_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_metaObject".}
proc fQTreeWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QTreeWidget_virtualbase_metacast".}
proc fcQTreeWidget_override_virtual_metacast(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_metacast".}
proc fQTreeWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTreeWidget_virtualbase_metacall".}
proc fcQTreeWidget_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_metacall".}
proc fQTreeWidget_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void{.importc: "QTreeWidget_virtualbase_setSelectionModel".}
proc fcQTreeWidget_override_virtual_setSelectionModel(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_setSelectionModel".}
proc fQTreeWidget_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QTreeWidget_virtualbase_event".}
proc fcQTreeWidget_override_virtual_event(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_event".}
proc fQTreeWidget_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QTreeWidget_virtualbase_mimeTypes".}
proc fcQTreeWidget_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_mimeTypes".}
proc fQTreeWidget_virtualbase_mimeData(self: pointer, items: struct_miqt_array): pointer{.importc: "QTreeWidget_virtualbase_mimeData".}
proc fcQTreeWidget_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_mimeData".}
proc fQTreeWidget_virtualbase_dropMimeData(self: pointer, parent: pointer, index: cint, data: pointer, action: cint): bool{.importc: "QTreeWidget_virtualbase_dropMimeData".}
proc fcQTreeWidget_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_dropMimeData".}
proc fQTreeWidget_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QTreeWidget_virtualbase_supportedDropActions".}
proc fcQTreeWidget_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_supportedDropActions".}
proc fQTreeWidget_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_dropEvent".}
proc fcQTreeWidget_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_dropEvent".}
proc fQTreeWidget_virtualbase_setRootIndex(self: pointer, index: pointer): void{.importc: "QTreeWidget_virtualbase_setRootIndex".}
proc fcQTreeWidget_override_virtual_setRootIndex(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_setRootIndex".}
proc fQTreeWidget_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void{.importc: "QTreeWidget_virtualbase_keyboardSearch".}
proc fcQTreeWidget_override_virtual_keyboardSearch(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_keyboardSearch".}
proc fQTreeWidget_virtualbase_visualRect(self: pointer, index: pointer): pointer{.importc: "QTreeWidget_virtualbase_visualRect".}
proc fcQTreeWidget_override_virtual_visualRect(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_visualRect".}
proc fQTreeWidget_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void{.importc: "QTreeWidget_virtualbase_scrollTo".}
proc fcQTreeWidget_override_virtual_scrollTo(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_scrollTo".}
proc fQTreeWidget_virtualbase_indexAt(self: pointer, p: pointer): pointer{.importc: "QTreeWidget_virtualbase_indexAt".}
proc fcQTreeWidget_override_virtual_indexAt(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_indexAt".}
proc fQTreeWidget_virtualbase_doItemsLayout(self: pointer, ): void{.importc: "QTreeWidget_virtualbase_doItemsLayout".}
proc fcQTreeWidget_override_virtual_doItemsLayout(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_doItemsLayout".}
proc fQTreeWidget_virtualbase_reset(self: pointer, ): void{.importc: "QTreeWidget_virtualbase_reset".}
proc fcQTreeWidget_override_virtual_reset(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_reset".}
proc fQTreeWidget_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void{.importc: "QTreeWidget_virtualbase_dataChanged".}
proc fcQTreeWidget_override_virtual_dataChanged(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_dataChanged".}
proc fQTreeWidget_virtualbase_selectAll(self: pointer, ): void{.importc: "QTreeWidget_virtualbase_selectAll".}
proc fcQTreeWidget_override_virtual_selectAll(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_selectAll".}
proc fQTreeWidget_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QTreeWidget_virtualbase_verticalScrollbarValueChanged".}
proc fcQTreeWidget_override_virtual_verticalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_verticalScrollbarValueChanged".}
proc fQTreeWidget_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QTreeWidget_virtualbase_scrollContentsBy".}
proc fcQTreeWidget_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_scrollContentsBy".}
proc fQTreeWidget_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QTreeWidget_virtualbase_rowsInserted".}
proc fcQTreeWidget_override_virtual_rowsInserted(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_rowsInserted".}
proc fQTreeWidget_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QTreeWidget_virtualbase_rowsAboutToBeRemoved".}
proc fcQTreeWidget_override_virtual_rowsAboutToBeRemoved(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_rowsAboutToBeRemoved".}
proc fQTreeWidget_virtualbase_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer{.importc: "QTreeWidget_virtualbase_moveCursor".}
proc fcQTreeWidget_override_virtual_moveCursor(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_moveCursor".}
proc fQTreeWidget_virtualbase_horizontalOffset(self: pointer, ): cint{.importc: "QTreeWidget_virtualbase_horizontalOffset".}
proc fcQTreeWidget_override_virtual_horizontalOffset(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_horizontalOffset".}
proc fQTreeWidget_virtualbase_verticalOffset(self: pointer, ): cint{.importc: "QTreeWidget_virtualbase_verticalOffset".}
proc fcQTreeWidget_override_virtual_verticalOffset(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_verticalOffset".}
proc fQTreeWidget_virtualbase_setSelection(self: pointer, rect: pointer, command: cint): void{.importc: "QTreeWidget_virtualbase_setSelection".}
proc fcQTreeWidget_override_virtual_setSelection(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_setSelection".}
proc fQTreeWidget_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer{.importc: "QTreeWidget_virtualbase_visualRegionForSelection".}
proc fcQTreeWidget_override_virtual_visualRegionForSelection(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_visualRegionForSelection".}
proc fQTreeWidget_virtualbase_selectedIndexes(self: pointer, ): struct_miqt_array{.importc: "QTreeWidget_virtualbase_selectedIndexes".}
proc fcQTreeWidget_override_virtual_selectedIndexes(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_selectedIndexes".}
proc fQTreeWidget_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_timerEvent".}
proc fcQTreeWidget_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_timerEvent".}
proc fQTreeWidget_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_paintEvent".}
proc fcQTreeWidget_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_paintEvent".}
proc fQTreeWidget_virtualbase_drawRow(self: pointer, painter: pointer, options: pointer, index: pointer): void{.importc: "QTreeWidget_virtualbase_drawRow".}
proc fcQTreeWidget_override_virtual_drawRow(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_drawRow".}
proc fQTreeWidget_virtualbase_drawBranches(self: pointer, painter: pointer, rect: pointer, index: pointer): void{.importc: "QTreeWidget_virtualbase_drawBranches".}
proc fcQTreeWidget_override_virtual_drawBranches(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_drawBranches".}
proc fQTreeWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_mousePressEvent".}
proc fcQTreeWidget_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_mousePressEvent".}
proc fQTreeWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_mouseReleaseEvent".}
proc fcQTreeWidget_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_mouseReleaseEvent".}
proc fQTreeWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQTreeWidget_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_mouseDoubleClickEvent".}
proc fQTreeWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_mouseMoveEvent".}
proc fcQTreeWidget_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_mouseMoveEvent".}
proc fQTreeWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_keyPressEvent".}
proc fcQTreeWidget_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_keyPressEvent".}
proc fQTreeWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_dragMoveEvent".}
proc fcQTreeWidget_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_dragMoveEvent".}
proc fQTreeWidget_virtualbase_viewportEvent(self: pointer, event: pointer): bool{.importc: "QTreeWidget_virtualbase_viewportEvent".}
proc fcQTreeWidget_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_viewportEvent".}
proc fQTreeWidget_virtualbase_updateGeometries(self: pointer, ): void{.importc: "QTreeWidget_virtualbase_updateGeometries".}
proc fcQTreeWidget_override_virtual_updateGeometries(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_updateGeometries".}
proc fQTreeWidget_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QTreeWidget_virtualbase_viewportSizeHint".}
proc fcQTreeWidget_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_viewportSizeHint".}
proc fQTreeWidget_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint{.importc: "QTreeWidget_virtualbase_sizeHintForColumn".}
proc fcQTreeWidget_override_virtual_sizeHintForColumn(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_sizeHintForColumn".}
proc fQTreeWidget_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void{.importc: "QTreeWidget_virtualbase_horizontalScrollbarAction".}
proc fcQTreeWidget_override_virtual_horizontalScrollbarAction(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_horizontalScrollbarAction".}
proc fQTreeWidget_virtualbase_isIndexHidden(self: pointer, index: pointer): bool{.importc: "QTreeWidget_virtualbase_isIndexHidden".}
proc fcQTreeWidget_override_virtual_isIndexHidden(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_isIndexHidden".}
proc fQTreeWidget_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void{.importc: "QTreeWidget_virtualbase_selectionChanged".}
proc fcQTreeWidget_override_virtual_selectionChanged(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_selectionChanged".}
proc fQTreeWidget_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void{.importc: "QTreeWidget_virtualbase_currentChanged".}
proc fcQTreeWidget_override_virtual_currentChanged(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_currentChanged".}
proc fQTreeWidget_virtualbase_sizeHintForRow(self: pointer, row: cint): cint{.importc: "QTreeWidget_virtualbase_sizeHintForRow".}
proc fcQTreeWidget_override_virtual_sizeHintForRow(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_sizeHintForRow".}
proc fQTreeWidget_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QTreeWidget_virtualbase_inputMethodQuery".}
proc fcQTreeWidget_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_inputMethodQuery".}
proc fQTreeWidget_virtualbase_updateEditorData(self: pointer, ): void{.importc: "QTreeWidget_virtualbase_updateEditorData".}
proc fcQTreeWidget_override_virtual_updateEditorData(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_updateEditorData".}
proc fQTreeWidget_virtualbase_updateEditorGeometries(self: pointer, ): void{.importc: "QTreeWidget_virtualbase_updateEditorGeometries".}
proc fcQTreeWidget_override_virtual_updateEditorGeometries(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_updateEditorGeometries".}
proc fQTreeWidget_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void{.importc: "QTreeWidget_virtualbase_verticalScrollbarAction".}
proc fcQTreeWidget_override_virtual_verticalScrollbarAction(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_verticalScrollbarAction".}
proc fQTreeWidget_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QTreeWidget_virtualbase_horizontalScrollbarValueChanged".}
proc fcQTreeWidget_override_virtual_horizontalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_horizontalScrollbarValueChanged".}
proc fQTreeWidget_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void{.importc: "QTreeWidget_virtualbase_closeEditor".}
proc fcQTreeWidget_override_virtual_closeEditor(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_closeEditor".}
proc fQTreeWidget_virtualbase_commitData(self: pointer, editor: pointer): void{.importc: "QTreeWidget_virtualbase_commitData".}
proc fcQTreeWidget_override_virtual_commitData(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_commitData".}
proc fQTreeWidget_virtualbase_editorDestroyed(self: pointer, editor: pointer): void{.importc: "QTreeWidget_virtualbase_editorDestroyed".}
proc fcQTreeWidget_override_virtual_editorDestroyed(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_editorDestroyed".}
proc fQTreeWidget_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool{.importc: "QTreeWidget_virtualbase_edit2".}
proc fcQTreeWidget_override_virtual_edit2(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_edit2".}
proc fQTreeWidget_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint{.importc: "QTreeWidget_virtualbase_selectionCommand".}
proc fcQTreeWidget_override_virtual_selectionCommand(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_selectionCommand".}
proc fQTreeWidget_virtualbase_startDrag(self: pointer, supportedActions: cint): void{.importc: "QTreeWidget_virtualbase_startDrag".}
proc fcQTreeWidget_override_virtual_startDrag(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_startDrag".}
proc fQTreeWidget_virtualbase_viewOptions(self: pointer, ): pointer{.importc: "QTreeWidget_virtualbase_viewOptions".}
proc fcQTreeWidget_override_virtual_viewOptions(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_viewOptions".}
proc fQTreeWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QTreeWidget_virtualbase_focusNextPrevChild".}
proc fcQTreeWidget_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_focusNextPrevChild".}
proc fQTreeWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_dragEnterEvent".}
proc fcQTreeWidget_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_dragEnterEvent".}
proc fQTreeWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_dragLeaveEvent".}
proc fcQTreeWidget_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_dragLeaveEvent".}
proc fQTreeWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_focusInEvent".}
proc fcQTreeWidget_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_focusInEvent".}
proc fQTreeWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_focusOutEvent".}
proc fcQTreeWidget_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_focusOutEvent".}
proc fQTreeWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_resizeEvent".}
proc fcQTreeWidget_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_resizeEvent".}
proc fQTreeWidget_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_inputMethodEvent".}
proc fcQTreeWidget_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_inputMethodEvent".}
proc fQTreeWidget_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QTreeWidget_virtualbase_eventFilter".}
proc fcQTreeWidget_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_eventFilter".}
proc fQTreeWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QTreeWidget_virtualbase_minimumSizeHint".}
proc fcQTreeWidget_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_minimumSizeHint".}
proc fQTreeWidget_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QTreeWidget_virtualbase_sizeHint".}
proc fcQTreeWidget_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_sizeHint".}
proc fQTreeWidget_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QTreeWidget_virtualbase_setupViewport".}
proc fcQTreeWidget_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_setupViewport".}
proc fQTreeWidget_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QTreeWidget_virtualbase_wheelEvent".}
proc fcQTreeWidget_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_wheelEvent".}
proc fQTreeWidget_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QTreeWidget_virtualbase_contextMenuEvent".}
proc fcQTreeWidget_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_contextMenuEvent".}
proc fQTreeWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QTreeWidget_virtualbase_changeEvent".}
proc fcQTreeWidget_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_changeEvent".}
proc fQTreeWidget_virtualbase_devType(self: pointer, ): cint{.importc: "QTreeWidget_virtualbase_devType".}
proc fcQTreeWidget_override_virtual_devType(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_devType".}
proc fQTreeWidget_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QTreeWidget_virtualbase_setVisible".}
proc fcQTreeWidget_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_setVisible".}
proc fQTreeWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QTreeWidget_virtualbase_heightForWidth".}
proc fcQTreeWidget_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_heightForWidth".}
proc fQTreeWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QTreeWidget_virtualbase_hasHeightForWidth".}
proc fcQTreeWidget_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_hasHeightForWidth".}
proc fQTreeWidget_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QTreeWidget_virtualbase_paintEngine".}
proc fcQTreeWidget_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_paintEngine".}
proc fQTreeWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_keyReleaseEvent".}
proc fcQTreeWidget_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_keyReleaseEvent".}
proc fQTreeWidget_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_enterEvent".}
proc fcQTreeWidget_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_enterEvent".}
proc fQTreeWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_leaveEvent".}
proc fcQTreeWidget_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_leaveEvent".}
proc fQTreeWidget_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_moveEvent".}
proc fcQTreeWidget_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_moveEvent".}
proc fQTreeWidget_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_closeEvent".}
proc fcQTreeWidget_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_closeEvent".}
proc fQTreeWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_tabletEvent".}
proc fcQTreeWidget_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_tabletEvent".}
proc fQTreeWidget_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_actionEvent".}
proc fcQTreeWidget_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_actionEvent".}
proc fQTreeWidget_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_showEvent".}
proc fcQTreeWidget_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_showEvent".}
proc fQTreeWidget_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_hideEvent".}
proc fcQTreeWidget_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_hideEvent".}
proc fQTreeWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QTreeWidget_virtualbase_nativeEvent".}
proc fcQTreeWidget_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_nativeEvent".}
proc fQTreeWidget_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QTreeWidget_virtualbase_metric".}
proc fcQTreeWidget_override_virtual_metric(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_metric".}
proc fQTreeWidget_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QTreeWidget_virtualbase_initPainter".}
proc fcQTreeWidget_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_initPainter".}
proc fQTreeWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QTreeWidget_virtualbase_redirected".}
proc fcQTreeWidget_override_virtual_redirected(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_redirected".}
proc fQTreeWidget_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QTreeWidget_virtualbase_sharedPainter".}
proc fcQTreeWidget_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_sharedPainter".}
proc fQTreeWidget_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_childEvent".}
proc fcQTreeWidget_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_childEvent".}
proc fQTreeWidget_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTreeWidget_virtualbase_customEvent".}
proc fcQTreeWidget_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_customEvent".}
proc fQTreeWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTreeWidget_virtualbase_connectNotify".}
proc fcQTreeWidget_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_connectNotify".}
proc fQTreeWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTreeWidget_virtualbase_disconnectNotify".}
proc fcQTreeWidget_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTreeWidget_override_virtual_disconnectNotify".}
proc fcQTreeWidget_staticMetaObject(): pointer {.importc: "QTreeWidget_staticMetaObject".}
proc fcQTreeWidget_delete(self: pointer) {.importc: "QTreeWidget_delete".}


func init*(T: type QTreeWidgetItem, h: ptr cQTreeWidgetItem): QTreeWidgetItem =
  T(h: h)
proc create*(T: type QTreeWidgetItem, ): QTreeWidgetItem =

  QTreeWidgetItem.init(fcQTreeWidgetItem_new())
proc create*(T: type QTreeWidgetItem, strings: seq[string]): QTreeWidgetItem =

  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  QTreeWidgetItem.init(fcQTreeWidgetItem_new2(struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0]))))
proc create*(T: type QTreeWidgetItem, treeview: QTreeWidget): QTreeWidgetItem =

  QTreeWidgetItem.init(fcQTreeWidgetItem_new3(treeview.h))
proc create*(T: type QTreeWidgetItem, treeview: QTreeWidget, strings: seq[string]): QTreeWidgetItem =

  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  QTreeWidgetItem.init(fcQTreeWidgetItem_new4(treeview.h, struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0]))))
proc create*(T: type QTreeWidgetItem, treeview: QTreeWidget, after: QTreeWidgetItem): QTreeWidgetItem =

  QTreeWidgetItem.init(fcQTreeWidgetItem_new5(treeview.h, after.h))
proc create2*(T: type QTreeWidgetItem, parent: QTreeWidgetItem): QTreeWidgetItem =

  QTreeWidgetItem.init(fcQTreeWidgetItem_new6(parent.h))
proc create2*(T: type QTreeWidgetItem, parent: QTreeWidgetItem, strings: seq[string]): QTreeWidgetItem =

  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  QTreeWidgetItem.init(fcQTreeWidgetItem_new7(parent.h, struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0]))))
proc create2*(T: type QTreeWidgetItem, parent: QTreeWidgetItem, after: QTreeWidgetItem): QTreeWidgetItem =

  QTreeWidgetItem.init(fcQTreeWidgetItem_new8(parent.h, after.h))
proc create2*(T: type QTreeWidgetItem, other: QTreeWidgetItem): QTreeWidgetItem =

  QTreeWidgetItem.init(fcQTreeWidgetItem_new9(other.h))
proc create*(T: type QTreeWidgetItem, typeVal: cint): QTreeWidgetItem =

  QTreeWidgetItem.init(fcQTreeWidgetItem_new10(typeVal))
proc create*(T: type QTreeWidgetItem, strings: seq[string], typeVal: cint): QTreeWidgetItem =

  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  QTreeWidgetItem.init(fcQTreeWidgetItem_new11(struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])), typeVal))
proc create*(T: type QTreeWidgetItem, treeview: QTreeWidget, typeVal: cint): QTreeWidgetItem =

  QTreeWidgetItem.init(fcQTreeWidgetItem_new12(treeview.h, typeVal))
proc create*(T: type QTreeWidgetItem, treeview: QTreeWidget, strings: seq[string], typeVal: cint): QTreeWidgetItem =

  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  QTreeWidgetItem.init(fcQTreeWidgetItem_new13(treeview.h, struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])), typeVal))
proc create*(T: type QTreeWidgetItem, treeview: QTreeWidget, after: QTreeWidgetItem, typeVal: cint): QTreeWidgetItem =

  QTreeWidgetItem.init(fcQTreeWidgetItem_new14(treeview.h, after.h, typeVal))
proc create2*(T: type QTreeWidgetItem, parent: QTreeWidgetItem, typeVal: cint): QTreeWidgetItem =

  QTreeWidgetItem.init(fcQTreeWidgetItem_new15(parent.h, typeVal))
proc create2*(T: type QTreeWidgetItem, parent: QTreeWidgetItem, strings: seq[string], typeVal: cint): QTreeWidgetItem =

  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  QTreeWidgetItem.init(fcQTreeWidgetItem_new16(parent.h, struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])), typeVal))
proc create2*(T: type QTreeWidgetItem, parent: QTreeWidgetItem, after: QTreeWidgetItem, typeVal: cint): QTreeWidgetItem =

  QTreeWidgetItem.init(fcQTreeWidgetItem_new17(parent.h, after.h, typeVal))
proc clone*(self: QTreeWidgetItem, ): QTreeWidgetItem =

  QTreeWidgetItem(h: fcQTreeWidgetItem_clone(self.h))

proc treeWidget*(self: QTreeWidgetItem, ): QTreeWidget =

  QTreeWidget(h: fcQTreeWidgetItem_treeWidget(self.h))

proc setSelected*(self: QTreeWidgetItem, select: bool): void =

  fcQTreeWidgetItem_setSelected(self.h, select)

proc isSelected*(self: QTreeWidgetItem, ): bool =

  fcQTreeWidgetItem_isSelected(self.h)

proc setHidden*(self: QTreeWidgetItem, hide: bool): void =

  fcQTreeWidgetItem_setHidden(self.h, hide)

proc isHidden*(self: QTreeWidgetItem, ): bool =

  fcQTreeWidgetItem_isHidden(self.h)

proc setExpanded*(self: QTreeWidgetItem, expand: bool): void =

  fcQTreeWidgetItem_setExpanded(self.h, expand)

proc isExpanded*(self: QTreeWidgetItem, ): bool =

  fcQTreeWidgetItem_isExpanded(self.h)

proc setFirstColumnSpanned*(self: QTreeWidgetItem, span: bool): void =

  fcQTreeWidgetItem_setFirstColumnSpanned(self.h, span)

proc isFirstColumnSpanned*(self: QTreeWidgetItem, ): bool =

  fcQTreeWidgetItem_isFirstColumnSpanned(self.h)

proc setDisabled*(self: QTreeWidgetItem, disabled: bool): void =

  fcQTreeWidgetItem_setDisabled(self.h, disabled)

proc isDisabled*(self: QTreeWidgetItem, ): bool =

  fcQTreeWidgetItem_isDisabled(self.h)

proc setChildIndicatorPolicy*(self: QTreeWidgetItem, policy: QTreeWidgetItemChildIndicatorPolicy): void =

  fcQTreeWidgetItem_setChildIndicatorPolicy(self.h, cint(policy))

proc childIndicatorPolicy*(self: QTreeWidgetItem, ): QTreeWidgetItemChildIndicatorPolicy =

  QTreeWidgetItemChildIndicatorPolicy(fcQTreeWidgetItem_childIndicatorPolicy(self.h))

proc flags*(self: QTreeWidgetItem, ): gen_qnamespace.ItemFlag =

  gen_qnamespace.ItemFlag(fcQTreeWidgetItem_flags(self.h))

proc setFlags*(self: QTreeWidgetItem, flags: gen_qnamespace.ItemFlag): void =

  fcQTreeWidgetItem_setFlags(self.h, cint(flags))

proc text*(self: QTreeWidgetItem, column: cint): string =

  let v_ms = fcQTreeWidgetItem_text(self.h, column)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setText*(self: QTreeWidgetItem, column: cint, text: string): void =

  fcQTreeWidgetItem_setText(self.h, column, struct_miqt_string(data: text, len: csize_t(len(text))))

proc icon*(self: QTreeWidgetItem, column: cint): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQTreeWidgetItem_icon(self.h, column))

proc setIcon*(self: QTreeWidgetItem, column: cint, icon: gen_qicon.QIcon): void =

  fcQTreeWidgetItem_setIcon(self.h, column, icon.h)

proc statusTip*(self: QTreeWidgetItem, column: cint): string =

  let v_ms = fcQTreeWidgetItem_statusTip(self.h, column)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setStatusTip*(self: QTreeWidgetItem, column: cint, statusTip: string): void =

  fcQTreeWidgetItem_setStatusTip(self.h, column, struct_miqt_string(data: statusTip, len: csize_t(len(statusTip))))

proc toolTip*(self: QTreeWidgetItem, column: cint): string =

  let v_ms = fcQTreeWidgetItem_toolTip(self.h, column)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setToolTip*(self: QTreeWidgetItem, column: cint, toolTip: string): void =

  fcQTreeWidgetItem_setToolTip(self.h, column, struct_miqt_string(data: toolTip, len: csize_t(len(toolTip))))

proc whatsThis*(self: QTreeWidgetItem, column: cint): string =

  let v_ms = fcQTreeWidgetItem_whatsThis(self.h, column)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWhatsThis*(self: QTreeWidgetItem, column: cint, whatsThis: string): void =

  fcQTreeWidgetItem_setWhatsThis(self.h, column, struct_miqt_string(data: whatsThis, len: csize_t(len(whatsThis))))

proc font*(self: QTreeWidgetItem, column: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQTreeWidgetItem_font(self.h, column))

proc setFont*(self: QTreeWidgetItem, column: cint, font: gen_qfont.QFont): void =

  fcQTreeWidgetItem_setFont(self.h, column, font.h)

proc textAlignment*(self: QTreeWidgetItem, column: cint): cint =

  fcQTreeWidgetItem_textAlignment(self.h, column)

proc setTextAlignment*(self: QTreeWidgetItem, column: cint, alignment: cint): void =

  fcQTreeWidgetItem_setTextAlignment(self.h, column, alignment)

proc backgroundColor*(self: QTreeWidgetItem, column: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQTreeWidgetItem_backgroundColor(self.h, column))

proc setBackgroundColor*(self: QTreeWidgetItem, column: cint, color: gen_qcolor.QColor): void =

  fcQTreeWidgetItem_setBackgroundColor(self.h, column, color.h)

proc background*(self: QTreeWidgetItem, column: cint): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQTreeWidgetItem_background(self.h, column))

proc setBackground*(self: QTreeWidgetItem, column: cint, brush: gen_qbrush.QBrush): void =

  fcQTreeWidgetItem_setBackground(self.h, column, brush.h)

proc textColor*(self: QTreeWidgetItem, column: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQTreeWidgetItem_textColor(self.h, column))

proc setTextColor*(self: QTreeWidgetItem, column: cint, color: gen_qcolor.QColor): void =

  fcQTreeWidgetItem_setTextColor(self.h, column, color.h)

proc foreground*(self: QTreeWidgetItem, column: cint): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQTreeWidgetItem_foreground(self.h, column))

proc setForeground*(self: QTreeWidgetItem, column: cint, brush: gen_qbrush.QBrush): void =

  fcQTreeWidgetItem_setForeground(self.h, column, brush.h)

proc checkState*(self: QTreeWidgetItem, column: cint): gen_qnamespace.CheckState =

  gen_qnamespace.CheckState(fcQTreeWidgetItem_checkState(self.h, column))

proc setCheckState*(self: QTreeWidgetItem, column: cint, state: gen_qnamespace.CheckState): void =

  fcQTreeWidgetItem_setCheckState(self.h, column, cint(state))

proc sizeHint*(self: QTreeWidgetItem, column: cint): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQTreeWidgetItem_sizeHint(self.h, column))

proc setSizeHint*(self: QTreeWidgetItem, column: cint, size: gen_qsize.QSize): void =

  fcQTreeWidgetItem_setSizeHint(self.h, column, size.h)

proc data*(self: QTreeWidgetItem, column: cint, role: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQTreeWidgetItem_data(self.h, column, role))

proc setData*(self: QTreeWidgetItem, column: cint, role: cint, value: gen_qvariant.QVariant): void =

  fcQTreeWidgetItem_setData(self.h, column, role, value.h)

proc operatorLesser*(self: QTreeWidgetItem, other: QTreeWidgetItem): bool =

  fcQTreeWidgetItem_operatorLesser(self.h, other.h)

proc read*(self: QTreeWidgetItem, inVal: gen_qdatastream.QDataStream): void =

  fcQTreeWidgetItem_read(self.h, inVal.h)

proc write*(self: QTreeWidgetItem, outVal: gen_qdatastream.QDataStream): void =

  fcQTreeWidgetItem_write(self.h, outVal.h)

proc operatorAssign*(self: QTreeWidgetItem, other: QTreeWidgetItem): void =

  fcQTreeWidgetItem_operatorAssign(self.h, other.h)

proc parent*(self: QTreeWidgetItem, ): QTreeWidgetItem =

  QTreeWidgetItem(h: fcQTreeWidgetItem_parent(self.h))

proc child*(self: QTreeWidgetItem, index: cint): QTreeWidgetItem =

  QTreeWidgetItem(h: fcQTreeWidgetItem_child(self.h, index))

proc childCount*(self: QTreeWidgetItem, ): cint =

  fcQTreeWidgetItem_childCount(self.h)

proc columnCount*(self: QTreeWidgetItem, ): cint =

  fcQTreeWidgetItem_columnCount(self.h)

proc indexOfChild*(self: QTreeWidgetItem, child: QTreeWidgetItem): cint =

  fcQTreeWidgetItem_indexOfChild(self.h, child.h)

proc addChild*(self: QTreeWidgetItem, child: QTreeWidgetItem): void =

  fcQTreeWidgetItem_addChild(self.h, child.h)

proc insertChild*(self: QTreeWidgetItem, index: cint, child: QTreeWidgetItem): void =

  fcQTreeWidgetItem_insertChild(self.h, index, child.h)

proc removeChild*(self: QTreeWidgetItem, child: QTreeWidgetItem): void =

  fcQTreeWidgetItem_removeChild(self.h, child.h)

proc takeChild*(self: QTreeWidgetItem, index: cint): QTreeWidgetItem =

  QTreeWidgetItem(h: fcQTreeWidgetItem_takeChild(self.h, index))

proc addChildren*(self: QTreeWidgetItem, children: seq[QTreeWidgetItem]): void =

  var children_CArray = newSeq[pointer](len(children))
  for i in 0..<len(children):
    children_CArray[i] = children[i].h

  fcQTreeWidgetItem_addChildren(self.h, struct_miqt_array(len: csize_t(len(children)), data: if len(children) == 0: nil else: addr(children_CArray[0])))

proc insertChildren*(self: QTreeWidgetItem, index: cint, children: seq[QTreeWidgetItem]): void =

  var children_CArray = newSeq[pointer](len(children))
  for i in 0..<len(children):
    children_CArray[i] = children[i].h

  fcQTreeWidgetItem_insertChildren(self.h, index, struct_miqt_array(len: csize_t(len(children)), data: if len(children) == 0: nil else: addr(children_CArray[0])))

proc takeChildren*(self: QTreeWidgetItem, ): seq[QTreeWidgetItem] =

  var v_ma = fcQTreeWidgetItem_takeChildren(self.h)
  var vx_ret = newSeq[QTreeWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QTreeWidgetItem(h: v_outCast[i])
  vx_ret

proc typeX*(self: QTreeWidgetItem, ): cint =

  fcQTreeWidgetItem_typeX(self.h)

proc sortChildren*(self: QTreeWidgetItem, column: cint, order: gen_qnamespace.SortOrder): void =

  fcQTreeWidgetItem_sortChildren(self.h, column, cint(order))

proc callVirtualBase_clone(self: QTreeWidgetItem, ): QTreeWidgetItem =


  QTreeWidgetItem(h: fQTreeWidgetItem_virtualbase_clone(self.h))

type QTreeWidgetItemcloneBase* = proc(): QTreeWidgetItem
proc onclone*(self: QTreeWidgetItem, slot: proc(super: QTreeWidgetItemcloneBase): QTreeWidgetItem) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetItemcloneBase): QTreeWidgetItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidgetItem_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidgetItem_clone(self: ptr cQTreeWidgetItem, slot: int): pointer {.exportc: "miqt_exec_callback_QTreeWidgetItem_clone ".} =
  type Cb = proc(super: QTreeWidgetItemcloneBase): QTreeWidgetItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QTreeWidgetItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_data(self: QTreeWidgetItem, column: cint, role: cint): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQTreeWidgetItem_virtualbase_data(self.h, column, role))

type QTreeWidgetItemdataBase* = proc(column: cint, role: cint): gen_qvariant.QVariant
proc ondata*(self: QTreeWidgetItem, slot: proc(super: QTreeWidgetItemdataBase, column: cint, role: cint): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetItemdataBase, column: cint, role: cint): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidgetItem_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidgetItem_data(self: ptr cQTreeWidgetItem, slot: int, column: cint, role: cint): pointer {.exportc: "miqt_exec_callback_QTreeWidgetItem_data ".} =
  type Cb = proc(super: QTreeWidgetItemdataBase, column: cint, role: cint): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, role: cint): auto =
    callVirtualBase_data(QTreeWidgetItem(h: self), column, role)
  let slotval1 = column

  let slotval2 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_setData(self: QTreeWidgetItem, column: cint, role: cint, value: gen_qvariant.QVariant): void =


  fQTreeWidgetItem_virtualbase_setData(self.h, column, role, value.h)

type QTreeWidgetItemsetDataBase* = proc(column: cint, role: cint, value: gen_qvariant.QVariant): void
proc onsetData*(self: QTreeWidgetItem, slot: proc(super: QTreeWidgetItemsetDataBase, column: cint, role: cint, value: gen_qvariant.QVariant): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetItemsetDataBase, column: cint, role: cint, value: gen_qvariant.QVariant): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidgetItem_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidgetItem_setData(self: ptr cQTreeWidgetItem, slot: int, column: cint, role: cint, value: pointer): void {.exportc: "miqt_exec_callback_QTreeWidgetItem_setData ".} =
  type Cb = proc(super: QTreeWidgetItemsetDataBase, column: cint, role: cint, value: gen_qvariant.QVariant): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, role: cint, value: gen_qvariant.QVariant): auto =
    callVirtualBase_setData(QTreeWidgetItem(h: self), column, role, value)
  let slotval1 = column

  let slotval2 = role

  let slotval3 = gen_qvariant.QVariant(h: value)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_operatorLesser(self: QTreeWidgetItem, other: QTreeWidgetItem): bool =


  fQTreeWidgetItem_virtualbase_operatorLesser(self.h, other.h)

type QTreeWidgetItemoperatorLesserBase* = proc(other: QTreeWidgetItem): bool
proc onoperatorLesser*(self: QTreeWidgetItem, slot: proc(super: QTreeWidgetItemoperatorLesserBase, other: QTreeWidgetItem): bool) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetItemoperatorLesserBase, other: QTreeWidgetItem): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidgetItem_override_virtual_operatorLesser(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidgetItem_operatorLesser(self: ptr cQTreeWidgetItem, slot: int, other: pointer): bool {.exportc: "miqt_exec_callback_QTreeWidgetItem_operatorLesser ".} =
  type Cb = proc(super: QTreeWidgetItemoperatorLesserBase, other: QTreeWidgetItem): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(other: QTreeWidgetItem): auto =
    callVirtualBase_operatorLesser(QTreeWidgetItem(h: self), other)
  let slotval1 = QTreeWidgetItem(h: other)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_read(self: QTreeWidgetItem, inVal: gen_qdatastream.QDataStream): void =


  fQTreeWidgetItem_virtualbase_read(self.h, inVal.h)

type QTreeWidgetItemreadBase* = proc(inVal: gen_qdatastream.QDataStream): void
proc onread*(self: QTreeWidgetItem, slot: proc(super: QTreeWidgetItemreadBase, inVal: gen_qdatastream.QDataStream): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetItemreadBase, inVal: gen_qdatastream.QDataStream): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidgetItem_override_virtual_read(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidgetItem_read(self: ptr cQTreeWidgetItem, slot: int, inVal: pointer): void {.exportc: "miqt_exec_callback_QTreeWidgetItem_read ".} =
  type Cb = proc(super: QTreeWidgetItemreadBase, inVal: gen_qdatastream.QDataStream): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(inVal: gen_qdatastream.QDataStream): auto =
    callVirtualBase_read(QTreeWidgetItem(h: self), inVal)
  let slotval1 = gen_qdatastream.QDataStream(h: inVal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_write(self: QTreeWidgetItem, outVal: gen_qdatastream.QDataStream): void =


  fQTreeWidgetItem_virtualbase_write(self.h, outVal.h)

type QTreeWidgetItemwriteBase* = proc(outVal: gen_qdatastream.QDataStream): void
proc onwrite*(self: QTreeWidgetItem, slot: proc(super: QTreeWidgetItemwriteBase, outVal: gen_qdatastream.QDataStream): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetItemwriteBase, outVal: gen_qdatastream.QDataStream): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidgetItem_override_virtual_write(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidgetItem_write(self: ptr cQTreeWidgetItem, slot: int, outVal: pointer): void {.exportc: "miqt_exec_callback_QTreeWidgetItem_write ".} =
  type Cb = proc(super: QTreeWidgetItemwriteBase, outVal: gen_qdatastream.QDataStream): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(outVal: gen_qdatastream.QDataStream): auto =
    callVirtualBase_write(QTreeWidgetItem(h: self), outVal)
  let slotval1 = gen_qdatastream.QDataStream(h: outVal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QTreeWidgetItem) =
  fcQTreeWidgetItem_delete(self.h)

func init*(T: type QTreeWidget, h: ptr cQTreeWidget): QTreeWidget =
  T(h: h)
proc create*(T: type QTreeWidget, parent: gen_qwidget.QWidget): QTreeWidget =

  QTreeWidget.init(fcQTreeWidget_new(parent.h))
proc create*(T: type QTreeWidget, ): QTreeWidget =

  QTreeWidget.init(fcQTreeWidget_new2())
proc metaObject*(self: QTreeWidget, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQTreeWidget_metaObject(self.h))

proc metacast*(self: QTreeWidget, param1: cstring): pointer =

  fcQTreeWidget_metacast(self.h, param1)

proc metacall*(self: QTreeWidget, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQTreeWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QTreeWidget, s: cstring): string =

  let v_ms = fcQTreeWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QTreeWidget, s: cstring): string =

  let v_ms = fcQTreeWidget_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc columnCount*(self: QTreeWidget, ): cint =

  fcQTreeWidget_columnCount(self.h)

proc setColumnCount*(self: QTreeWidget, columns: cint): void =

  fcQTreeWidget_setColumnCount(self.h, columns)

proc invisibleRootItem*(self: QTreeWidget, ): QTreeWidgetItem =

  QTreeWidgetItem(h: fcQTreeWidget_invisibleRootItem(self.h))

proc topLevelItem*(self: QTreeWidget, index: cint): QTreeWidgetItem =

  QTreeWidgetItem(h: fcQTreeWidget_topLevelItem(self.h, index))

proc topLevelItemCount*(self: QTreeWidget, ): cint =

  fcQTreeWidget_topLevelItemCount(self.h)

proc insertTopLevelItem*(self: QTreeWidget, index: cint, item: QTreeWidgetItem): void =

  fcQTreeWidget_insertTopLevelItem(self.h, index, item.h)

proc addTopLevelItem*(self: QTreeWidget, item: QTreeWidgetItem): void =

  fcQTreeWidget_addTopLevelItem(self.h, item.h)

proc takeTopLevelItem*(self: QTreeWidget, index: cint): QTreeWidgetItem =

  QTreeWidgetItem(h: fcQTreeWidget_takeTopLevelItem(self.h, index))

proc indexOfTopLevelItem*(self: QTreeWidget, item: QTreeWidgetItem): cint =

  fcQTreeWidget_indexOfTopLevelItem(self.h, item.h)

proc insertTopLevelItems*(self: QTreeWidget, index: cint, items: seq[QTreeWidgetItem]): void =

  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQTreeWidget_insertTopLevelItems(self.h, index, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc addTopLevelItems*(self: QTreeWidget, items: seq[QTreeWidgetItem]): void =

  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQTreeWidget_addTopLevelItems(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc headerItem*(self: QTreeWidget, ): QTreeWidgetItem =

  QTreeWidgetItem(h: fcQTreeWidget_headerItem(self.h))

proc setHeaderItem*(self: QTreeWidget, item: QTreeWidgetItem): void =

  fcQTreeWidget_setHeaderItem(self.h, item.h)

proc setHeaderLabels*(self: QTreeWidget, labels: seq[string]): void =

  var labels_CArray = newSeq[struct_miqt_string](len(labels))
  for i in 0..<len(labels):
    labels_CArray[i] = struct_miqt_string(data: labels[i], len: csize_t(len(labels[i])))

  fcQTreeWidget_setHeaderLabels(self.h, struct_miqt_array(len: csize_t(len(labels)), data: if len(labels) == 0: nil else: addr(labels_CArray[0])))

proc setHeaderLabel*(self: QTreeWidget, label: string): void =

  fcQTreeWidget_setHeaderLabel(self.h, struct_miqt_string(data: label, len: csize_t(len(label))))

proc currentItem*(self: QTreeWidget, ): QTreeWidgetItem =

  QTreeWidgetItem(h: fcQTreeWidget_currentItem(self.h))

proc currentColumn*(self: QTreeWidget, ): cint =

  fcQTreeWidget_currentColumn(self.h)

proc setCurrentItem*(self: QTreeWidget, item: QTreeWidgetItem): void =

  fcQTreeWidget_setCurrentItem(self.h, item.h)

proc setCurrentItem2*(self: QTreeWidget, item: QTreeWidgetItem, column: cint): void =

  fcQTreeWidget_setCurrentItem2(self.h, item.h, column)

proc setCurrentItem3*(self: QTreeWidget, item: QTreeWidgetItem, column: cint, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void =

  fcQTreeWidget_setCurrentItem3(self.h, item.h, column, cint(command))

proc itemAt*(self: QTreeWidget, p: gen_qpoint.QPoint): QTreeWidgetItem =

  QTreeWidgetItem(h: fcQTreeWidget_itemAt(self.h, p.h))

proc itemAt2*(self: QTreeWidget, x: cint, y: cint): QTreeWidgetItem =

  QTreeWidgetItem(h: fcQTreeWidget_itemAt2(self.h, x, y))

proc visualItemRect*(self: QTreeWidget, item: QTreeWidgetItem): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQTreeWidget_visualItemRect(self.h, item.h))

proc sortColumn*(self: QTreeWidget, ): cint =

  fcQTreeWidget_sortColumn(self.h)

proc sortItems*(self: QTreeWidget, column: cint, order: gen_qnamespace.SortOrder): void =

  fcQTreeWidget_sortItems(self.h, column, cint(order))

proc editItem*(self: QTreeWidget, item: QTreeWidgetItem): void =

  fcQTreeWidget_editItem(self.h, item.h)

proc openPersistentEditor*(self: QTreeWidget, item: QTreeWidgetItem): void =

  fcQTreeWidget_openPersistentEditor(self.h, item.h)

proc closePersistentEditor*(self: QTreeWidget, item: QTreeWidgetItem): void =

  fcQTreeWidget_closePersistentEditor(self.h, item.h)

proc isPersistentEditorOpen*(self: QTreeWidget, item: QTreeWidgetItem): bool =

  fcQTreeWidget_isPersistentEditorOpen(self.h, item.h)

proc itemWidget*(self: QTreeWidget, item: QTreeWidgetItem, column: cint): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQTreeWidget_itemWidget(self.h, item.h, column))

proc setItemWidget*(self: QTreeWidget, item: QTreeWidgetItem, column: cint, widget: gen_qwidget.QWidget): void =

  fcQTreeWidget_setItemWidget(self.h, item.h, column, widget.h)

proc removeItemWidget*(self: QTreeWidget, item: QTreeWidgetItem, column: cint): void =

  fcQTreeWidget_removeItemWidget(self.h, item.h, column)

proc isItemSelected*(self: QTreeWidget, item: QTreeWidgetItem): bool =

  fcQTreeWidget_isItemSelected(self.h, item.h)

proc setItemSelected*(self: QTreeWidget, item: QTreeWidgetItem, select: bool): void =

  fcQTreeWidget_setItemSelected(self.h, item.h, select)

proc selectedItems*(self: QTreeWidget, ): seq[QTreeWidgetItem] =

  var v_ma = fcQTreeWidget_selectedItems(self.h)
  var vx_ret = newSeq[QTreeWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QTreeWidgetItem(h: v_outCast[i])
  vx_ret

proc findItems*(self: QTreeWidget, text: string, flags: gen_qnamespace.MatchFlag): seq[QTreeWidgetItem] =

  var v_ma = fcQTreeWidget_findItems(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), cint(flags))
  var vx_ret = newSeq[QTreeWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QTreeWidgetItem(h: v_outCast[i])
  vx_ret

proc isItemHidden*(self: QTreeWidget, item: QTreeWidgetItem): bool =

  fcQTreeWidget_isItemHidden(self.h, item.h)

proc setItemHidden*(self: QTreeWidget, item: QTreeWidgetItem, hide: bool): void =

  fcQTreeWidget_setItemHidden(self.h, item.h, hide)

proc isItemExpanded*(self: QTreeWidget, item: QTreeWidgetItem): bool =

  fcQTreeWidget_isItemExpanded(self.h, item.h)

proc setItemExpanded*(self: QTreeWidget, item: QTreeWidgetItem, expand: bool): void =

  fcQTreeWidget_setItemExpanded(self.h, item.h, expand)

proc isFirstItemColumnSpanned*(self: QTreeWidget, item: QTreeWidgetItem): bool =

  fcQTreeWidget_isFirstItemColumnSpanned(self.h, item.h)

proc setFirstItemColumnSpanned*(self: QTreeWidget, item: QTreeWidgetItem, span: bool): void =

  fcQTreeWidget_setFirstItemColumnSpanned(self.h, item.h, span)

proc itemAbove*(self: QTreeWidget, item: QTreeWidgetItem): QTreeWidgetItem =

  QTreeWidgetItem(h: fcQTreeWidget_itemAbove(self.h, item.h))

proc itemBelow*(self: QTreeWidget, item: QTreeWidgetItem): QTreeWidgetItem =

  QTreeWidgetItem(h: fcQTreeWidget_itemBelow(self.h, item.h))

proc setSelectionModel*(self: QTreeWidget, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void =

  fcQTreeWidget_setSelectionModel(self.h, selectionModel.h)

proc scrollToItem*(self: QTreeWidget, item: QTreeWidgetItem): void =

  fcQTreeWidget_scrollToItem(self.h, item.h)

proc expandItem*(self: QTreeWidget, item: QTreeWidgetItem): void =

  fcQTreeWidget_expandItem(self.h, item.h)

proc collapseItem*(self: QTreeWidget, item: QTreeWidgetItem): void =

  fcQTreeWidget_collapseItem(self.h, item.h)

proc clear*(self: QTreeWidget, ): void =

  fcQTreeWidget_clear(self.h)

proc itemPressed*(self: QTreeWidget, item: QTreeWidgetItem, column: cint): void =

  fcQTreeWidget_itemPressed(self.h, item.h, column)

proc miqt_exec_callback_QTreeWidget_itemPressed(slot: int, item: pointer, column: cint) {.exportc.} =
  type Cb = proc(item: QTreeWidgetItem, column: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QTreeWidgetItem(h: item)

  let slotval2 = column


  nimfunc[](slotval1, slotval2)

proc onitemPressed*(self: QTreeWidget, slot: proc(item: QTreeWidgetItem, column: cint)) =
  type Cb = proc(item: QTreeWidgetItem, column: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTreeWidget_connect_itemPressed(self.h, cast[int](addr tmp[]))
proc itemClicked*(self: QTreeWidget, item: QTreeWidgetItem, column: cint): void =

  fcQTreeWidget_itemClicked(self.h, item.h, column)

proc miqt_exec_callback_QTreeWidget_itemClicked(slot: int, item: pointer, column: cint) {.exportc.} =
  type Cb = proc(item: QTreeWidgetItem, column: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QTreeWidgetItem(h: item)

  let slotval2 = column


  nimfunc[](slotval1, slotval2)

proc onitemClicked*(self: QTreeWidget, slot: proc(item: QTreeWidgetItem, column: cint)) =
  type Cb = proc(item: QTreeWidgetItem, column: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTreeWidget_connect_itemClicked(self.h, cast[int](addr tmp[]))
proc itemDoubleClicked*(self: QTreeWidget, item: QTreeWidgetItem, column: cint): void =

  fcQTreeWidget_itemDoubleClicked(self.h, item.h, column)

proc miqt_exec_callback_QTreeWidget_itemDoubleClicked(slot: int, item: pointer, column: cint) {.exportc.} =
  type Cb = proc(item: QTreeWidgetItem, column: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QTreeWidgetItem(h: item)

  let slotval2 = column


  nimfunc[](slotval1, slotval2)

proc onitemDoubleClicked*(self: QTreeWidget, slot: proc(item: QTreeWidgetItem, column: cint)) =
  type Cb = proc(item: QTreeWidgetItem, column: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTreeWidget_connect_itemDoubleClicked(self.h, cast[int](addr tmp[]))
proc itemActivated*(self: QTreeWidget, item: QTreeWidgetItem, column: cint): void =

  fcQTreeWidget_itemActivated(self.h, item.h, column)

proc miqt_exec_callback_QTreeWidget_itemActivated(slot: int, item: pointer, column: cint) {.exportc.} =
  type Cb = proc(item: QTreeWidgetItem, column: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QTreeWidgetItem(h: item)

  let slotval2 = column


  nimfunc[](slotval1, slotval2)

proc onitemActivated*(self: QTreeWidget, slot: proc(item: QTreeWidgetItem, column: cint)) =
  type Cb = proc(item: QTreeWidgetItem, column: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTreeWidget_connect_itemActivated(self.h, cast[int](addr tmp[]))
proc itemEntered*(self: QTreeWidget, item: QTreeWidgetItem, column: cint): void =

  fcQTreeWidget_itemEntered(self.h, item.h, column)

proc miqt_exec_callback_QTreeWidget_itemEntered(slot: int, item: pointer, column: cint) {.exportc.} =
  type Cb = proc(item: QTreeWidgetItem, column: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QTreeWidgetItem(h: item)

  let slotval2 = column


  nimfunc[](slotval1, slotval2)

proc onitemEntered*(self: QTreeWidget, slot: proc(item: QTreeWidgetItem, column: cint)) =
  type Cb = proc(item: QTreeWidgetItem, column: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTreeWidget_connect_itemEntered(self.h, cast[int](addr tmp[]))
proc itemChanged*(self: QTreeWidget, item: QTreeWidgetItem, column: cint): void =

  fcQTreeWidget_itemChanged(self.h, item.h, column)

proc miqt_exec_callback_QTreeWidget_itemChanged(slot: int, item: pointer, column: cint) {.exportc.} =
  type Cb = proc(item: QTreeWidgetItem, column: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QTreeWidgetItem(h: item)

  let slotval2 = column


  nimfunc[](slotval1, slotval2)

proc onitemChanged*(self: QTreeWidget, slot: proc(item: QTreeWidgetItem, column: cint)) =
  type Cb = proc(item: QTreeWidgetItem, column: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTreeWidget_connect_itemChanged(self.h, cast[int](addr tmp[]))
proc itemExpanded*(self: QTreeWidget, item: QTreeWidgetItem): void =

  fcQTreeWidget_itemExpanded(self.h, item.h)

proc miqt_exec_callback_QTreeWidget_itemExpanded(slot: int, item: pointer) {.exportc.} =
  type Cb = proc(item: QTreeWidgetItem)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QTreeWidgetItem(h: item)


  nimfunc[](slotval1)

proc onitemExpanded*(self: QTreeWidget, slot: proc(item: QTreeWidgetItem)) =
  type Cb = proc(item: QTreeWidgetItem)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTreeWidget_connect_itemExpanded(self.h, cast[int](addr tmp[]))
proc itemCollapsed*(self: QTreeWidget, item: QTreeWidgetItem): void =

  fcQTreeWidget_itemCollapsed(self.h, item.h)

proc miqt_exec_callback_QTreeWidget_itemCollapsed(slot: int, item: pointer) {.exportc.} =
  type Cb = proc(item: QTreeWidgetItem)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QTreeWidgetItem(h: item)


  nimfunc[](slotval1)

proc onitemCollapsed*(self: QTreeWidget, slot: proc(item: QTreeWidgetItem)) =
  type Cb = proc(item: QTreeWidgetItem)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTreeWidget_connect_itemCollapsed(self.h, cast[int](addr tmp[]))
proc currentItemChanged*(self: QTreeWidget, current: QTreeWidgetItem, previous: QTreeWidgetItem): void =

  fcQTreeWidget_currentItemChanged(self.h, current.h, previous.h)

proc miqt_exec_callback_QTreeWidget_currentItemChanged(slot: int, current: pointer, previous: pointer) {.exportc.} =
  type Cb = proc(current: QTreeWidgetItem, previous: QTreeWidgetItem)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QTreeWidgetItem(h: current)

  let slotval2 = QTreeWidgetItem(h: previous)


  nimfunc[](slotval1, slotval2)

proc oncurrentItemChanged*(self: QTreeWidget, slot: proc(current: QTreeWidgetItem, previous: QTreeWidgetItem)) =
  type Cb = proc(current: QTreeWidgetItem, previous: QTreeWidgetItem)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTreeWidget_connect_currentItemChanged(self.h, cast[int](addr tmp[]))
proc itemSelectionChanged*(self: QTreeWidget, ): void =

  fcQTreeWidget_itemSelectionChanged(self.h)

proc miqt_exec_callback_QTreeWidget_itemSelectionChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onitemSelectionChanged*(self: QTreeWidget, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTreeWidget_connect_itemSelectionChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QTreeWidget, s: cstring, c: cstring): string =

  let v_ms = fcQTreeWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QTreeWidget, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTreeWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QTreeWidget, s: cstring, c: cstring): string =

  let v_ms = fcQTreeWidget_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QTreeWidget, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTreeWidget_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc editItem2*(self: QTreeWidget, item: QTreeWidgetItem, column: cint): void =

  fcQTreeWidget_editItem2(self.h, item.h, column)

proc openPersistentEditor2*(self: QTreeWidget, item: QTreeWidgetItem, column: cint): void =

  fcQTreeWidget_openPersistentEditor2(self.h, item.h, column)

proc closePersistentEditor2*(self: QTreeWidget, item: QTreeWidgetItem, column: cint): void =

  fcQTreeWidget_closePersistentEditor2(self.h, item.h, column)

proc isPersistentEditorOpen2*(self: QTreeWidget, item: QTreeWidgetItem, column: cint): bool =

  fcQTreeWidget_isPersistentEditorOpen2(self.h, item.h, column)

proc findItems3*(self: QTreeWidget, text: string, flags: gen_qnamespace.MatchFlag, column: cint): seq[QTreeWidgetItem] =

  var v_ma = fcQTreeWidget_findItems3(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), cint(flags), column)
  var vx_ret = newSeq[QTreeWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QTreeWidgetItem(h: v_outCast[i])
  vx_ret

proc scrollToItem2*(self: QTreeWidget, item: QTreeWidgetItem, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void =

  fcQTreeWidget_scrollToItem2(self.h, item.h, cint(hint))

proc callVirtualBase_metaObject(self: QTreeWidget, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQTreeWidget_virtualbase_metaObject(self.h))

type QTreeWidgetmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QTreeWidget, slot: proc(super: QTreeWidgetmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_metaObject(self: ptr cQTreeWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTreeWidget_metaObject ".} =
  type Cb = proc(super: QTreeWidgetmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QTreeWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QTreeWidget, param1: cstring): pointer =


  fQTreeWidget_virtualbase_metacast(self.h, param1)

type QTreeWidgetmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QTreeWidget, slot: proc(super: QTreeWidgetmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_metacast(self: ptr cQTreeWidget, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QTreeWidget_metacast ".} =
  type Cb = proc(super: QTreeWidgetmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QTreeWidget(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QTreeWidget, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQTreeWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTreeWidgetmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QTreeWidget, slot: proc(super: QTreeWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_metacall(self: ptr cQTreeWidget, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTreeWidget_metacall ".} =
  type Cb = proc(super: QTreeWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QTreeWidget(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setSelectionModel(self: QTreeWidget, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void =


  fQTreeWidget_virtualbase_setSelectionModel(self.h, selectionModel.h)

type QTreeWidgetsetSelectionModelBase* = proc(selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
proc onsetSelectionModel*(self: QTreeWidget, slot: proc(super: QTreeWidgetsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_setSelectionModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_setSelectionModel(self: ptr cQTreeWidget, slot: int, selectionModel: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_setSelectionModel ".} =
  type Cb = proc(super: QTreeWidgetsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selectionModel: gen_qitemselectionmodel.QItemSelectionModel): auto =
    callVirtualBase_setSelectionModel(QTreeWidget(h: self), selectionModel)
  let slotval1 = gen_qitemselectionmodel.QItemSelectionModel(h: selectionModel)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QTreeWidget, e: gen_qcoreevent.QEvent): bool =


  fQTreeWidget_virtualbase_event(self.h, e.h)

type QTreeWidgeteventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QTreeWidget, slot: proc(super: QTreeWidgeteventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgeteventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_event(self: ptr cQTreeWidget, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QTreeWidget_event ".} =
  type Cb = proc(super: QTreeWidgeteventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QTreeWidget(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mimeTypes(self: QTreeWidget, ): seq[string] =


  var v_ma = fQTreeWidget_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QTreeWidgetmimeTypesBase* = proc(): seq[string]
proc onmimeTypes*(self: QTreeWidget, slot: proc(super: QTreeWidgetmimeTypesBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetmimeTypesBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_mimeTypes(self: ptr cQTreeWidget, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QTreeWidget_mimeTypes ".} =
  type Cb = proc(super: QTreeWidgetmimeTypesBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_mimeTypes(QTreeWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_mimeData(self: QTreeWidget, items: seq[QTreeWidgetItem]): gen_qmimedata.QMimeData =

  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h


  gen_qmimedata.QMimeData(h: fQTreeWidget_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0]))))

type QTreeWidgetmimeDataBase* = proc(items: seq[QTreeWidgetItem]): gen_qmimedata.QMimeData
proc onmimeData*(self: QTreeWidget, slot: proc(super: QTreeWidgetmimeDataBase, items: seq[QTreeWidgetItem]): gen_qmimedata.QMimeData) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetmimeDataBase, items: seq[QTreeWidgetItem]): gen_qmimedata.QMimeData
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_mimeData(self: ptr cQTreeWidget, slot: int, items: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QTreeWidget_mimeData ".} =
  type Cb = proc(super: QTreeWidgetmimeDataBase, items: seq[QTreeWidgetItem]): gen_qmimedata.QMimeData
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(items: seq[QTreeWidgetItem]): auto =
    callVirtualBase_mimeData(QTreeWidget(h: self), items)
  var vitems_ma = items
  var vitemsx_ret = newSeq[QTreeWidgetItem](int(vitems_ma.len))
  let vitems_outCast = cast[ptr UncheckedArray[pointer]](vitems_ma.data)
  for i in 0 ..< vitems_ma.len:
    vitemsx_ret[i] = QTreeWidgetItem(h: vitems_outCast[i])
  let slotval1 = vitemsx_ret


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_dropMimeData(self: QTreeWidget, parent: QTreeWidgetItem, index: cint, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction): bool =


  fQTreeWidget_virtualbase_dropMimeData(self.h, parent.h, index, data.h, cint(action))

type QTreeWidgetdropMimeDataBase* = proc(parent: QTreeWidgetItem, index: cint, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction): bool
proc ondropMimeData*(self: QTreeWidget, slot: proc(super: QTreeWidgetdropMimeDataBase, parent: QTreeWidgetItem, index: cint, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction): bool) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetdropMimeDataBase, parent: QTreeWidgetItem, index: cint, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_dropMimeData(self: ptr cQTreeWidget, slot: int, parent: pointer, index: cint, data: pointer, action: cint): bool {.exportc: "miqt_exec_callback_QTreeWidget_dropMimeData ".} =
  type Cb = proc(super: QTreeWidgetdropMimeDataBase, parent: QTreeWidgetItem, index: cint, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: QTreeWidgetItem, index: cint, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction): auto =
    callVirtualBase_dropMimeData(QTreeWidget(h: self), parent, index, data, action)
  let slotval1 = QTreeWidgetItem(h: parent)

  let slotval2 = index

  let slotval3 = gen_qmimedata.QMimeData(h: data)

  let slotval4 = gen_qnamespace.DropAction(action)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc callVirtualBase_supportedDropActions(self: QTreeWidget, ): gen_qnamespace.DropAction =


  gen_qnamespace.DropAction(fQTreeWidget_virtualbase_supportedDropActions(self.h))

type QTreeWidgetsupportedDropActionsBase* = proc(): gen_qnamespace.DropAction
proc onsupportedDropActions*(self: QTreeWidget, slot: proc(super: QTreeWidgetsupportedDropActionsBase): gen_qnamespace.DropAction) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetsupportedDropActionsBase): gen_qnamespace.DropAction
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_supportedDropActions(self: ptr cQTreeWidget, slot: int): cint {.exportc: "miqt_exec_callback_QTreeWidget_supportedDropActions ".} =
  type Cb = proc(super: QTreeWidgetsupportedDropActionsBase): gen_qnamespace.DropAction
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_supportedDropActions(QTreeWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_dropEvent(self: QTreeWidget, event: gen_qevent.QDropEvent): void =


  fQTreeWidget_virtualbase_dropEvent(self.h, event.h)

type QTreeWidgetdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgetdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_dropEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_dropEvent ".} =
  type Cb = proc(super: QTreeWidgetdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QTreeWidget(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setRootIndex(self: QTreeWidget, index: gen_qabstractitemmodel.QModelIndex): void =


  fQTreeWidget_virtualbase_setRootIndex(self.h, index.h)

type QTreeWidgetsetRootIndexBase* = proc(index: gen_qabstractitemmodel.QModelIndex): void
proc onsetRootIndex*(self: QTreeWidget, slot: proc(super: QTreeWidgetsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_setRootIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_setRootIndex(self: ptr cQTreeWidget, slot: int, index: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_setRootIndex ".} =
  type Cb = proc(super: QTreeWidgetsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_setRootIndex(QTreeWidget(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyboardSearch(self: QTreeWidget, search: string): void =


  fQTreeWidget_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

type QTreeWidgetkeyboardSearchBase* = proc(search: string): void
proc onkeyboardSearch*(self: QTreeWidget, slot: proc(super: QTreeWidgetkeyboardSearchBase, search: string): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetkeyboardSearchBase, search: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_keyboardSearch(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_keyboardSearch(self: ptr cQTreeWidget, slot: int, search: struct_miqt_string): void {.exportc: "miqt_exec_callback_QTreeWidget_keyboardSearch ".} =
  type Cb = proc(super: QTreeWidgetkeyboardSearchBase, search: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(search: string): auto =
    callVirtualBase_keyboardSearch(QTreeWidget(h: self), search)
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret


  nimfunc[](superCall, slotval1)
proc callVirtualBase_visualRect(self: QTreeWidget, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect =


  gen_qrect.QRect(h: fQTreeWidget_virtualbase_visualRect(self.h, index.h))

type QTreeWidgetvisualRectBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
proc onvisualRect*(self: QTreeWidget, slot: proc(super: QTreeWidgetvisualRectBase, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetvisualRectBase, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_visualRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_visualRect(self: ptr cQTreeWidget, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QTreeWidget_visualRect ".} =
  type Cb = proc(super: QTreeWidgetvisualRectBase, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_visualRect(QTreeWidget(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_scrollTo(self: QTreeWidget, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void =


  fQTreeWidget_virtualbase_scrollTo(self.h, index.h, cint(hint))

type QTreeWidgetscrollToBase* = proc(index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void
proc onscrollTo*(self: QTreeWidget, slot: proc(super: QTreeWidgetscrollToBase, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetscrollToBase, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_scrollTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_scrollTo(self: ptr cQTreeWidget, slot: int, index: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QTreeWidget_scrollTo ".} =
  type Cb = proc(super: QTreeWidgetscrollToBase, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): auto =
    callVirtualBase_scrollTo(QTreeWidget(h: self), index, hint)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemview.QAbstractItemViewScrollHint(hint)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_indexAt(self: QTreeWidget, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQTreeWidget_virtualbase_indexAt(self.h, p.h))

type QTreeWidgetindexAtBase* = proc(p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
proc onindexAt*(self: QTreeWidget, slot: proc(super: QTreeWidgetindexAtBase, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetindexAtBase, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_indexAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_indexAt(self: ptr cQTreeWidget, slot: int, p: pointer): pointer {.exportc: "miqt_exec_callback_QTreeWidget_indexAt ".} =
  type Cb = proc(super: QTreeWidgetindexAtBase, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(p: gen_qpoint.QPoint): auto =
    callVirtualBase_indexAt(QTreeWidget(h: self), p)
  let slotval1 = gen_qpoint.QPoint(h: p)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_doItemsLayout(self: QTreeWidget, ): void =


  fQTreeWidget_virtualbase_doItemsLayout(self.h)

type QTreeWidgetdoItemsLayoutBase* = proc(): void
proc ondoItemsLayout*(self: QTreeWidget, slot: proc(super: QTreeWidgetdoItemsLayoutBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetdoItemsLayoutBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_doItemsLayout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_doItemsLayout(self: ptr cQTreeWidget, slot: int): void {.exportc: "miqt_exec_callback_QTreeWidget_doItemsLayout ".} =
  type Cb = proc(super: QTreeWidgetdoItemsLayoutBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_doItemsLayout(QTreeWidget(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_reset(self: QTreeWidget, ): void =


  fQTreeWidget_virtualbase_reset(self.h)

type QTreeWidgetresetBase* = proc(): void
proc onreset*(self: QTreeWidget, slot: proc(super: QTreeWidgetresetBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetresetBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_reset(self: ptr cQTreeWidget, slot: int): void {.exportc: "miqt_exec_callback_QTreeWidget_reset ".} =
  type Cb = proc(super: QTreeWidgetresetBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reset(QTreeWidget(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_dataChanged(self: QTreeWidget, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void =

  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]


  fQTreeWidget_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

type QTreeWidgetdataChangedBase* = proc(topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
proc ondataChanged*(self: QTreeWidget, slot: proc(super: QTreeWidgetdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_dataChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_dataChanged(self: ptr cQTreeWidget, slot: int, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.exportc: "miqt_exec_callback_QTreeWidget_dataChanged ".} =
  type Cb = proc(super: QTreeWidgetdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): auto =
    callVirtualBase_dataChanged(QTreeWidget(h: self), topLeft, bottomRight, roles)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: topLeft)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: bottomRight)

  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  let slotval3 = vrolesx_ret


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_selectAll(self: QTreeWidget, ): void =


  fQTreeWidget_virtualbase_selectAll(self.h)

type QTreeWidgetselectAllBase* = proc(): void
proc onselectAll*(self: QTreeWidget, slot: proc(super: QTreeWidgetselectAllBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetselectAllBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_selectAll(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_selectAll(self: ptr cQTreeWidget, slot: int): void {.exportc: "miqt_exec_callback_QTreeWidget_selectAll ".} =
  type Cb = proc(super: QTreeWidgetselectAllBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_selectAll(QTreeWidget(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_verticalScrollbarValueChanged(self: QTreeWidget, value: cint): void =


  fQTreeWidget_virtualbase_verticalScrollbarValueChanged(self.h, value)

type QTreeWidgetverticalScrollbarValueChangedBase* = proc(value: cint): void
proc onverticalScrollbarValueChanged*(self: QTreeWidget, slot: proc(super: QTreeWidgetverticalScrollbarValueChangedBase, value: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetverticalScrollbarValueChangedBase, value: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_verticalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_verticalScrollbarValueChanged(self: ptr cQTreeWidget, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QTreeWidget_verticalScrollbarValueChanged ".} =
  type Cb = proc(super: QTreeWidgetverticalScrollbarValueChangedBase, value: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(value: cint): auto =
    callVirtualBase_verticalScrollbarValueChanged(QTreeWidget(h: self), value)
  let slotval1 = value


  nimfunc[](superCall, slotval1)
proc callVirtualBase_scrollContentsBy(self: QTreeWidget, dx: cint, dy: cint): void =


  fQTreeWidget_virtualbase_scrollContentsBy(self.h, dx, dy)

type QTreeWidgetscrollContentsByBase* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: QTreeWidget, slot: proc(super: QTreeWidgetscrollContentsByBase, dx: cint, dy: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetscrollContentsByBase, dx: cint, dy: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_scrollContentsBy(self: ptr cQTreeWidget, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QTreeWidget_scrollContentsBy ".} =
  type Cb = proc(super: QTreeWidgetscrollContentsByBase, dx: cint, dy: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(dx: cint, dy: cint): auto =
    callVirtualBase_scrollContentsBy(QTreeWidget(h: self), dx, dy)
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_rowsInserted(self: QTreeWidget, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void =


  fQTreeWidget_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

type QTreeWidgetrowsInsertedBase* = proc(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
proc onrowsInserted*(self: QTreeWidget, slot: proc(super: QTreeWidgetrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_rowsInserted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_rowsInserted(self: ptr cQTreeWidget, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QTreeWidget_rowsInserted ".} =
  type Cb = proc(super: QTreeWidgetrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): auto =
    callVirtualBase_rowsInserted(QTreeWidget(h: self), parent, start, endVal)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_rowsAboutToBeRemoved(self: QTreeWidget, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void =


  fQTreeWidget_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

type QTreeWidgetrowsAboutToBeRemovedBase* = proc(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
proc onrowsAboutToBeRemoved*(self: QTreeWidget, slot: proc(super: QTreeWidgetrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_rowsAboutToBeRemoved(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_rowsAboutToBeRemoved(self: ptr cQTreeWidget, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QTreeWidget_rowsAboutToBeRemoved ".} =
  type Cb = proc(super: QTreeWidgetrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): auto =
    callVirtualBase_rowsAboutToBeRemoved(QTreeWidget(h: self), parent, start, endVal)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_moveCursor(self: QTreeWidget, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQTreeWidget_virtualbase_moveCursor(self.h, cint(cursorAction), cint(modifiers)))

type QTreeWidgetmoveCursorBase* = proc(cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
proc onmoveCursor*(self: QTreeWidget, slot: proc(super: QTreeWidgetmoveCursorBase, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetmoveCursorBase, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_moveCursor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_moveCursor(self: ptr cQTreeWidget, slot: int, cursorAction: cint, modifiers: cint): pointer {.exportc: "miqt_exec_callback_QTreeWidget_moveCursor ".} =
  type Cb = proc(super: QTreeWidgetmoveCursorBase, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): auto =
    callVirtualBase_moveCursor(QTreeWidget(h: self), cursorAction, modifiers)
  let slotval1 = gen_qabstractitemview.QAbstractItemViewCursorAction(cursorAction)

  let slotval2 = gen_qnamespace.KeyboardModifier(modifiers)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_horizontalOffset(self: QTreeWidget, ): cint =


  fQTreeWidget_virtualbase_horizontalOffset(self.h)

type QTreeWidgethorizontalOffsetBase* = proc(): cint
proc onhorizontalOffset*(self: QTreeWidget, slot: proc(super: QTreeWidgethorizontalOffsetBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgethorizontalOffsetBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_horizontalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_horizontalOffset(self: ptr cQTreeWidget, slot: int): cint {.exportc: "miqt_exec_callback_QTreeWidget_horizontalOffset ".} =
  type Cb = proc(super: QTreeWidgethorizontalOffsetBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_horizontalOffset(QTreeWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_verticalOffset(self: QTreeWidget, ): cint =


  fQTreeWidget_virtualbase_verticalOffset(self.h)

type QTreeWidgetverticalOffsetBase* = proc(): cint
proc onverticalOffset*(self: QTreeWidget, slot: proc(super: QTreeWidgetverticalOffsetBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetverticalOffsetBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_verticalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_verticalOffset(self: ptr cQTreeWidget, slot: int): cint {.exportc: "miqt_exec_callback_QTreeWidget_verticalOffset ".} =
  type Cb = proc(super: QTreeWidgetverticalOffsetBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_verticalOffset(QTreeWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setSelection(self: QTreeWidget, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void =


  fQTreeWidget_virtualbase_setSelection(self.h, rect.h, cint(command))

type QTreeWidgetsetSelectionBase* = proc(rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
proc onsetSelection*(self: QTreeWidget, slot: proc(super: QTreeWidgetsetSelectionBase, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetsetSelectionBase, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_setSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_setSelection(self: ptr cQTreeWidget, slot: int, rect: pointer, command: cint): void {.exportc: "miqt_exec_callback_QTreeWidget_setSelection ".} =
  type Cb = proc(super: QTreeWidgetsetSelectionBase, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): auto =
    callVirtualBase_setSelection(QTreeWidget(h: self), rect, command)
  let slotval1 = gen_qrect.QRect(h: rect)

  let slotval2 = gen_qitemselectionmodel.QItemSelectionModelSelectionFlag(command)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_visualRegionForSelection(self: QTreeWidget, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion =


  gen_qregion.QRegion(h: fQTreeWidget_virtualbase_visualRegionForSelection(self.h, selection.h))

type QTreeWidgetvisualRegionForSelectionBase* = proc(selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
proc onvisualRegionForSelection*(self: QTreeWidget, slot: proc(super: QTreeWidgetvisualRegionForSelectionBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetvisualRegionForSelectionBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_visualRegionForSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_visualRegionForSelection(self: ptr cQTreeWidget, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QTreeWidget_visualRegionForSelection ".} =
  type Cb = proc(super: QTreeWidgetvisualRegionForSelectionBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selection: gen_qitemselectionmodel.QItemSelection): auto =
    callVirtualBase_visualRegionForSelection(QTreeWidget(h: self), selection)
  let slotval1 = gen_qitemselectionmodel.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_selectedIndexes(self: QTreeWidget, ): seq[gen_qabstractitemmodel.QModelIndex] =


  var v_ma = fQTreeWidget_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: v_outCast[i])
  vx_ret

type QTreeWidgetselectedIndexesBase* = proc(): seq[gen_qabstractitemmodel.QModelIndex]
proc onselectedIndexes*(self: QTreeWidget, slot: proc(super: QTreeWidgetselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_selectedIndexes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_selectedIndexes(self: ptr cQTreeWidget, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QTreeWidget_selectedIndexes ".} =
  type Cb = proc(super: QTreeWidgetselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_selectedIndexes(QTreeWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_timerEvent(self: QTreeWidget, event: gen_qcoreevent.QTimerEvent): void =


  fQTreeWidget_virtualbase_timerEvent(self.h, event.h)

type QTreeWidgettimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_timerEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_timerEvent ".} =
  type Cb = proc(super: QTreeWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QTreeWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QTreeWidget, event: gen_qevent.QPaintEvent): void =


  fQTreeWidget_virtualbase_paintEvent(self.h, event.h)

type QTreeWidgetpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgetpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_paintEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_paintEvent ".} =
  type Cb = proc(super: QTreeWidgetpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QTreeWidget(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_drawRow(self: QTreeWidget, painter: gen_qpainter.QPainter, options: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void =


  fQTreeWidget_virtualbase_drawRow(self.h, painter.h, options.h, index.h)

type QTreeWidgetdrawRowBase* = proc(painter: gen_qpainter.QPainter, options: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void
proc ondrawRow*(self: QTreeWidget, slot: proc(super: QTreeWidgetdrawRowBase, painter: gen_qpainter.QPainter, options: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetdrawRowBase, painter: gen_qpainter.QPainter, options: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_drawRow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_drawRow(self: ptr cQTreeWidget, slot: int, painter: pointer, options: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_drawRow ".} =
  type Cb = proc(super: QTreeWidgetdrawRowBase, painter: gen_qpainter.QPainter, options: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, options: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_drawRow(QTreeWidget(h: self), painter, options, index)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qstyleoption.QStyleOptionViewItem(h: options)

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_drawBranches(self: QTreeWidget, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, index: gen_qabstractitemmodel.QModelIndex): void =


  fQTreeWidget_virtualbase_drawBranches(self.h, painter.h, rect.h, index.h)

type QTreeWidgetdrawBranchesBase* = proc(painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, index: gen_qabstractitemmodel.QModelIndex): void
proc ondrawBranches*(self: QTreeWidget, slot: proc(super: QTreeWidgetdrawBranchesBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetdrawBranchesBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_drawBranches(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_drawBranches(self: ptr cQTreeWidget, slot: int, painter: pointer, rect: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_drawBranches ".} =
  type Cb = proc(super: QTreeWidgetdrawBranchesBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_drawBranches(QTreeWidget(h: self), painter, rect, index)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qrect.QRect(h: rect)

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_mousePressEvent(self: QTreeWidget, event: gen_qevent.QMouseEvent): void =


  fQTreeWidget_virtualbase_mousePressEvent(self.h, event.h)

type QTreeWidgetmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_mousePressEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_mousePressEvent ".} =
  type Cb = proc(super: QTreeWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QTreeWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QTreeWidget, event: gen_qevent.QMouseEvent): void =


  fQTreeWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

type QTreeWidgetmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_mouseReleaseEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_mouseReleaseEvent ".} =
  type Cb = proc(super: QTreeWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QTreeWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QTreeWidget, event: gen_qevent.QMouseEvent): void =


  fQTreeWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QTreeWidgetmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_mouseDoubleClickEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QTreeWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QTreeWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QTreeWidget, event: gen_qevent.QMouseEvent): void =


  fQTreeWidget_virtualbase_mouseMoveEvent(self.h, event.h)

type QTreeWidgetmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_mouseMoveEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_mouseMoveEvent ".} =
  type Cb = proc(super: QTreeWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QTreeWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QTreeWidget, event: gen_qevent.QKeyEvent): void =


  fQTreeWidget_virtualbase_keyPressEvent(self.h, event.h)

type QTreeWidgetkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_keyPressEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_keyPressEvent ".} =
  type Cb = proc(super: QTreeWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QTreeWidget(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QTreeWidget, event: gen_qevent.QDragMoveEvent): void =


  fQTreeWidget_virtualbase_dragMoveEvent(self.h, event.h)

type QTreeWidgetdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_dragMoveEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_dragMoveEvent ".} =
  type Cb = proc(super: QTreeWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QTreeWidget(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_viewportEvent(self: QTreeWidget, event: gen_qcoreevent.QEvent): bool =


  fQTreeWidget_virtualbase_viewportEvent(self.h, event.h)

type QTreeWidgetviewportEventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onviewportEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgetviewportEventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetviewportEventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_viewportEvent(self: ptr cQTreeWidget, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTreeWidget_viewportEvent ".} =
  type Cb = proc(super: QTreeWidgetviewportEventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_viewportEvent(QTreeWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_updateGeometries(self: QTreeWidget, ): void =


  fQTreeWidget_virtualbase_updateGeometries(self.h)

type QTreeWidgetupdateGeometriesBase* = proc(): void
proc onupdateGeometries*(self: QTreeWidget, slot: proc(super: QTreeWidgetupdateGeometriesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetupdateGeometriesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_updateGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_updateGeometries(self: ptr cQTreeWidget, slot: int): void {.exportc: "miqt_exec_callback_QTreeWidget_updateGeometries ".} =
  type Cb = proc(super: QTreeWidgetupdateGeometriesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateGeometries(QTreeWidget(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_viewportSizeHint(self: QTreeWidget, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQTreeWidget_virtualbase_viewportSizeHint(self.h))

type QTreeWidgetviewportSizeHintBase* = proc(): gen_qsize.QSize
proc onviewportSizeHint*(self: QTreeWidget, slot: proc(super: QTreeWidgetviewportSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetviewportSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_viewportSizeHint(self: ptr cQTreeWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTreeWidget_viewportSizeHint ".} =
  type Cb = proc(super: QTreeWidgetviewportSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_viewportSizeHint(QTreeWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_sizeHintForColumn(self: QTreeWidget, column: cint): cint =


  fQTreeWidget_virtualbase_sizeHintForColumn(self.h, column)

type QTreeWidgetsizeHintForColumnBase* = proc(column: cint): cint
proc onsizeHintForColumn*(self: QTreeWidget, slot: proc(super: QTreeWidgetsizeHintForColumnBase, column: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetsizeHintForColumnBase, column: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_sizeHintForColumn(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_sizeHintForColumn(self: ptr cQTreeWidget, slot: int, column: cint): cint {.exportc: "miqt_exec_callback_QTreeWidget_sizeHintForColumn ".} =
  type Cb = proc(super: QTreeWidgetsizeHintForColumnBase, column: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint): auto =
    callVirtualBase_sizeHintForColumn(QTreeWidget(h: self), column)
  let slotval1 = column


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_horizontalScrollbarAction(self: QTreeWidget, action: cint): void =


  fQTreeWidget_virtualbase_horizontalScrollbarAction(self.h, action)

type QTreeWidgethorizontalScrollbarActionBase* = proc(action: cint): void
proc onhorizontalScrollbarAction*(self: QTreeWidget, slot: proc(super: QTreeWidgethorizontalScrollbarActionBase, action: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgethorizontalScrollbarActionBase, action: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_horizontalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_horizontalScrollbarAction(self: ptr cQTreeWidget, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QTreeWidget_horizontalScrollbarAction ".} =
  type Cb = proc(super: QTreeWidgethorizontalScrollbarActionBase, action: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(action: cint): auto =
    callVirtualBase_horizontalScrollbarAction(QTreeWidget(h: self), action)
  let slotval1 = action


  nimfunc[](superCall, slotval1)
proc callVirtualBase_isIndexHidden(self: QTreeWidget, index: gen_qabstractitemmodel.QModelIndex): bool =


  fQTreeWidget_virtualbase_isIndexHidden(self.h, index.h)

type QTreeWidgetisIndexHiddenBase* = proc(index: gen_qabstractitemmodel.QModelIndex): bool
proc onisIndexHidden*(self: QTreeWidget, slot: proc(super: QTreeWidgetisIndexHiddenBase, index: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetisIndexHiddenBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_isIndexHidden(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_isIndexHidden(self: ptr cQTreeWidget, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QTreeWidget_isIndexHidden ".} =
  type Cb = proc(super: QTreeWidgetisIndexHiddenBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_isIndexHidden(QTreeWidget(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_selectionChanged(self: QTreeWidget, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void =


  fQTreeWidget_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

type QTreeWidgetselectionChangedBase* = proc(selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
proc onselectionChanged*(self: QTreeWidget, slot: proc(super: QTreeWidgetselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_selectionChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_selectionChanged(self: ptr cQTreeWidget, slot: int, selected: pointer, deselected: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_selectionChanged ".} =
  type Cb = proc(super: QTreeWidgetselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): auto =
    callVirtualBase_selectionChanged(QTreeWidget(h: self), selected, deselected)
  let slotval1 = gen_qitemselectionmodel.QItemSelection(h: selected)

  let slotval2 = gen_qitemselectionmodel.QItemSelection(h: deselected)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_currentChanged(self: QTreeWidget, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void =


  fQTreeWidget_virtualbase_currentChanged(self.h, current.h, previous.h)

type QTreeWidgetcurrentChangedBase* = proc(current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void
proc oncurrentChanged*(self: QTreeWidget, slot: proc(super: QTreeWidgetcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_currentChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_currentChanged(self: ptr cQTreeWidget, slot: int, current: pointer, previous: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_currentChanged ".} =
  type Cb = proc(super: QTreeWidgetcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_currentChanged(QTreeWidget(h: self), current, previous)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: current)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: previous)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_sizeHintForRow(self: QTreeWidget, row: cint): cint =


  fQTreeWidget_virtualbase_sizeHintForRow(self.h, row)

type QTreeWidgetsizeHintForRowBase* = proc(row: cint): cint
proc onsizeHintForRow*(self: QTreeWidget, slot: proc(super: QTreeWidgetsizeHintForRowBase, row: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetsizeHintForRowBase, row: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_sizeHintForRow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_sizeHintForRow(self: ptr cQTreeWidget, slot: int, row: cint): cint {.exportc: "miqt_exec_callback_QTreeWidget_sizeHintForRow ".} =
  type Cb = proc(super: QTreeWidgetsizeHintForRowBase, row: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint): auto =
    callVirtualBase_sizeHintForRow(QTreeWidget(h: self), row)
  let slotval1 = row


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_inputMethodQuery(self: QTreeWidget, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQTreeWidget_virtualbase_inputMethodQuery(self.h, cint(query)))

type QTreeWidgetinputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QTreeWidget, slot: proc(super: QTreeWidgetinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_inputMethodQuery(self: ptr cQTreeWidget, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QTreeWidget_inputMethodQuery ".} =
  type Cb = proc(super: QTreeWidgetinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QTreeWidget(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_updateEditorData(self: QTreeWidget, ): void =


  fQTreeWidget_virtualbase_updateEditorData(self.h)

type QTreeWidgetupdateEditorDataBase* = proc(): void
proc onupdateEditorData*(self: QTreeWidget, slot: proc(super: QTreeWidgetupdateEditorDataBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetupdateEditorDataBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_updateEditorData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_updateEditorData(self: ptr cQTreeWidget, slot: int): void {.exportc: "miqt_exec_callback_QTreeWidget_updateEditorData ".} =
  type Cb = proc(super: QTreeWidgetupdateEditorDataBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateEditorData(QTreeWidget(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_updateEditorGeometries(self: QTreeWidget, ): void =


  fQTreeWidget_virtualbase_updateEditorGeometries(self.h)

type QTreeWidgetupdateEditorGeometriesBase* = proc(): void
proc onupdateEditorGeometries*(self: QTreeWidget, slot: proc(super: QTreeWidgetupdateEditorGeometriesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetupdateEditorGeometriesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_updateEditorGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_updateEditorGeometries(self: ptr cQTreeWidget, slot: int): void {.exportc: "miqt_exec_callback_QTreeWidget_updateEditorGeometries ".} =
  type Cb = proc(super: QTreeWidgetupdateEditorGeometriesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateEditorGeometries(QTreeWidget(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_verticalScrollbarAction(self: QTreeWidget, action: cint): void =


  fQTreeWidget_virtualbase_verticalScrollbarAction(self.h, action)

type QTreeWidgetverticalScrollbarActionBase* = proc(action: cint): void
proc onverticalScrollbarAction*(self: QTreeWidget, slot: proc(super: QTreeWidgetverticalScrollbarActionBase, action: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetverticalScrollbarActionBase, action: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_verticalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_verticalScrollbarAction(self: ptr cQTreeWidget, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QTreeWidget_verticalScrollbarAction ".} =
  type Cb = proc(super: QTreeWidgetverticalScrollbarActionBase, action: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(action: cint): auto =
    callVirtualBase_verticalScrollbarAction(QTreeWidget(h: self), action)
  let slotval1 = action


  nimfunc[](superCall, slotval1)
proc callVirtualBase_horizontalScrollbarValueChanged(self: QTreeWidget, value: cint): void =


  fQTreeWidget_virtualbase_horizontalScrollbarValueChanged(self.h, value)

type QTreeWidgethorizontalScrollbarValueChangedBase* = proc(value: cint): void
proc onhorizontalScrollbarValueChanged*(self: QTreeWidget, slot: proc(super: QTreeWidgethorizontalScrollbarValueChangedBase, value: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgethorizontalScrollbarValueChangedBase, value: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_horizontalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_horizontalScrollbarValueChanged(self: ptr cQTreeWidget, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QTreeWidget_horizontalScrollbarValueChanged ".} =
  type Cb = proc(super: QTreeWidgethorizontalScrollbarValueChangedBase, value: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(value: cint): auto =
    callVirtualBase_horizontalScrollbarValueChanged(QTreeWidget(h: self), value)
  let slotval1 = value


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEditor(self: QTreeWidget, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void =


  fQTreeWidget_virtualbase_closeEditor(self.h, editor.h, cint(hint))

type QTreeWidgetcloseEditorBase* = proc(editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
proc oncloseEditor*(self: QTreeWidget, slot: proc(super: QTreeWidgetcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_closeEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_closeEditor(self: ptr cQTreeWidget, slot: int, editor: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QTreeWidget_closeEditor ".} =
  type Cb = proc(super: QTreeWidgetcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): auto =
    callVirtualBase_closeEditor(QTreeWidget(h: self), editor, hint)
  let slotval1 = gen_qwidget.QWidget(h: editor)

  let slotval2 = gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint(hint)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_commitData(self: QTreeWidget, editor: gen_qwidget.QWidget): void =


  fQTreeWidget_virtualbase_commitData(self.h, editor.h)

type QTreeWidgetcommitDataBase* = proc(editor: gen_qwidget.QWidget): void
proc oncommitData*(self: QTreeWidget, slot: proc(super: QTreeWidgetcommitDataBase, editor: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetcommitDataBase, editor: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_commitData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_commitData(self: ptr cQTreeWidget, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_commitData ".} =
  type Cb = proc(super: QTreeWidgetcommitDataBase, editor: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget): auto =
    callVirtualBase_commitData(QTreeWidget(h: self), editor)
  let slotval1 = gen_qwidget.QWidget(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_editorDestroyed(self: QTreeWidget, editor: gen_qobject.QObject): void =


  fQTreeWidget_virtualbase_editorDestroyed(self.h, editor.h)

type QTreeWidgeteditorDestroyedBase* = proc(editor: gen_qobject.QObject): void
proc oneditorDestroyed*(self: QTreeWidget, slot: proc(super: QTreeWidgeteditorDestroyedBase, editor: gen_qobject.QObject): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgeteditorDestroyedBase, editor: gen_qobject.QObject): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_editorDestroyed(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_editorDestroyed(self: ptr cQTreeWidget, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_editorDestroyed ".} =
  type Cb = proc(super: QTreeWidgeteditorDestroyedBase, editor: gen_qobject.QObject): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qobject.QObject): auto =
    callVirtualBase_editorDestroyed(QTreeWidget(h: self), editor)
  let slotval1 = gen_qobject.QObject(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_edit2(self: QTreeWidget, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool =


  fQTreeWidget_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

type QTreeWidgetedit2Base* = proc(index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
proc onedit2*(self: QTreeWidget, slot: proc(super: QTreeWidgetedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_edit2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_edit2(self: ptr cQTreeWidget, slot: int, index: pointer, trigger: cint, event: pointer): bool {.exportc: "miqt_exec_callback_QTreeWidget_edit2 ".} =
  type Cb = proc(super: QTreeWidgetedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_edit2(QTreeWidget(h: self), index, trigger, event)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemview.QAbstractItemViewEditTrigger(trigger)

  let slotval3 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_selectionCommand(self: QTreeWidget, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag =


  gen_qitemselectionmodel.QItemSelectionModelSelectionFlag(fQTreeWidget_virtualbase_selectionCommand(self.h, index.h, event.h))

type QTreeWidgetselectionCommandBase* = proc(index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
proc onselectionCommand*(self: QTreeWidget, slot: proc(super: QTreeWidgetselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_selectionCommand(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_selectionCommand(self: ptr cQTreeWidget, slot: int, index: pointer, event: pointer): cint {.exportc: "miqt_exec_callback_QTreeWidget_selectionCommand ".} =
  type Cb = proc(super: QTreeWidgetselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_selectionCommand(QTreeWidget(h: self), index, event)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  cint(virtualReturn)
proc callVirtualBase_startDrag(self: QTreeWidget, supportedActions: gen_qnamespace.DropAction): void =


  fQTreeWidget_virtualbase_startDrag(self.h, cint(supportedActions))

type QTreeWidgetstartDragBase* = proc(supportedActions: gen_qnamespace.DropAction): void
proc onstartDrag*(self: QTreeWidget, slot: proc(super: QTreeWidgetstartDragBase, supportedActions: gen_qnamespace.DropAction): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetstartDragBase, supportedActions: gen_qnamespace.DropAction): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_startDrag(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_startDrag(self: ptr cQTreeWidget, slot: int, supportedActions: cint): void {.exportc: "miqt_exec_callback_QTreeWidget_startDrag ".} =
  type Cb = proc(super: QTreeWidgetstartDragBase, supportedActions: gen_qnamespace.DropAction): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(supportedActions: gen_qnamespace.DropAction): auto =
    callVirtualBase_startDrag(QTreeWidget(h: self), supportedActions)
  let slotval1 = gen_qnamespace.DropAction(supportedActions)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_viewOptions(self: QTreeWidget, ): gen_qstyleoption.QStyleOptionViewItem =


  gen_qstyleoption.QStyleOptionViewItem(h: fQTreeWidget_virtualbase_viewOptions(self.h))

type QTreeWidgetviewOptionsBase* = proc(): gen_qstyleoption.QStyleOptionViewItem
proc onviewOptions*(self: QTreeWidget, slot: proc(super: QTreeWidgetviewOptionsBase): gen_qstyleoption.QStyleOptionViewItem) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetviewOptionsBase): gen_qstyleoption.QStyleOptionViewItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_viewOptions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_viewOptions(self: ptr cQTreeWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTreeWidget_viewOptions ".} =
  type Cb = proc(super: QTreeWidgetviewOptionsBase): gen_qstyleoption.QStyleOptionViewItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_viewOptions(QTreeWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QTreeWidget, next: bool): bool =


  fQTreeWidget_virtualbase_focusNextPrevChild(self.h, next)

type QTreeWidgetfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QTreeWidget, slot: proc(super: QTreeWidgetfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_focusNextPrevChild(self: ptr cQTreeWidget, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QTreeWidget_focusNextPrevChild ".} =
  type Cb = proc(super: QTreeWidgetfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QTreeWidget(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_dragEnterEvent(self: QTreeWidget, event: gen_qevent.QDragEnterEvent): void =


  fQTreeWidget_virtualbase_dragEnterEvent(self.h, event.h)

type QTreeWidgetdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_dragEnterEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_dragEnterEvent ".} =
  type Cb = proc(super: QTreeWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QTreeWidget(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QTreeWidget, event: gen_qevent.QDragLeaveEvent): void =


  fQTreeWidget_virtualbase_dragLeaveEvent(self.h, event.h)

type QTreeWidgetdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_dragLeaveEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_dragLeaveEvent ".} =
  type Cb = proc(super: QTreeWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QTreeWidget(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QTreeWidget, event: gen_qevent.QFocusEvent): void =


  fQTreeWidget_virtualbase_focusInEvent(self.h, event.h)

type QTreeWidgetfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_focusInEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_focusInEvent ".} =
  type Cb = proc(super: QTreeWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QTreeWidget(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QTreeWidget, event: gen_qevent.QFocusEvent): void =


  fQTreeWidget_virtualbase_focusOutEvent(self.h, event.h)

type QTreeWidgetfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_focusOutEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_focusOutEvent ".} =
  type Cb = proc(super: QTreeWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QTreeWidget(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QTreeWidget, event: gen_qevent.QResizeEvent): void =


  fQTreeWidget_virtualbase_resizeEvent(self.h, event.h)

type QTreeWidgetresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgetresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_resizeEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_resizeEvent ".} =
  type Cb = proc(super: QTreeWidgetresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QTreeWidget(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QTreeWidget, event: gen_qevent.QInputMethodEvent): void =


  fQTreeWidget_virtualbase_inputMethodEvent(self.h, event.h)

type QTreeWidgetinputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgetinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_inputMethodEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_inputMethodEvent ".} =
  type Cb = proc(super: QTreeWidgetinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QTreeWidget(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QTreeWidget, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQTreeWidget_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QTreeWidgeteventFilterBase* = proc(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QTreeWidget, slot: proc(super: QTreeWidgeteventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgeteventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_eventFilter(self: ptr cQTreeWidget, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTreeWidget_eventFilter ".} =
  type Cb = proc(super: QTreeWidgeteventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QTreeWidget(h: self), objectVal, event)
  let slotval1 = gen_qobject.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_minimumSizeHint(self: QTreeWidget, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQTreeWidget_virtualbase_minimumSizeHint(self.h))

type QTreeWidgetminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QTreeWidget, slot: proc(super: QTreeWidgetminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_minimumSizeHint(self: ptr cQTreeWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTreeWidget_minimumSizeHint ".} =
  type Cb = proc(super: QTreeWidgetminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QTreeWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_sizeHint(self: QTreeWidget, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQTreeWidget_virtualbase_sizeHint(self.h))

type QTreeWidgetsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QTreeWidget, slot: proc(super: QTreeWidgetsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_sizeHint(self: ptr cQTreeWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTreeWidget_sizeHint ".} =
  type Cb = proc(super: QTreeWidgetsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QTreeWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setupViewport(self: QTreeWidget, viewport: gen_qwidget.QWidget): void =


  fQTreeWidget_virtualbase_setupViewport(self.h, viewport.h)

type QTreeWidgetsetupViewportBase* = proc(viewport: gen_qwidget.QWidget): void
proc onsetupViewport*(self: QTreeWidget, slot: proc(super: QTreeWidgetsetupViewportBase, viewport: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetsetupViewportBase, viewport: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_setupViewport(self: ptr cQTreeWidget, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_setupViewport ".} =
  type Cb = proc(super: QTreeWidgetsetupViewportBase, viewport: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(viewport: gen_qwidget.QWidget): auto =
    callVirtualBase_setupViewport(QTreeWidget(h: self), viewport)
  let slotval1 = gen_qwidget.QWidget(h: viewport)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QTreeWidget, param1: gen_qevent.QWheelEvent): void =


  fQTreeWidget_virtualbase_wheelEvent(self.h, param1.h)

type QTreeWidgetwheelEventBase* = proc(param1: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgetwheelEventBase, param1: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetwheelEventBase, param1: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_wheelEvent(self: ptr cQTreeWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_wheelEvent ".} =
  type Cb = proc(super: QTreeWidgetwheelEventBase, param1: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QTreeWidget(h: self), param1)
  let slotval1 = gen_qevent.QWheelEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QTreeWidget, param1: gen_qevent.QContextMenuEvent): void =


  fQTreeWidget_virtualbase_contextMenuEvent(self.h, param1.h)

type QTreeWidgetcontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgetcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_contextMenuEvent(self: ptr cQTreeWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_contextMenuEvent ".} =
  type Cb = proc(super: QTreeWidgetcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QTreeWidget(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QTreeWidget, param1: gen_qcoreevent.QEvent): void =


  fQTreeWidget_virtualbase_changeEvent(self.h, param1.h)

type QTreeWidgetchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_changeEvent(self: ptr cQTreeWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_changeEvent ".} =
  type Cb = proc(super: QTreeWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QTreeWidget(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QTreeWidget, ): cint =


  fQTreeWidget_virtualbase_devType(self.h)

type QTreeWidgetdevTypeBase* = proc(): cint
proc ondevType*(self: QTreeWidget, slot: proc(super: QTreeWidgetdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_devType(self: ptr cQTreeWidget, slot: int): cint {.exportc: "miqt_exec_callback_QTreeWidget_devType ".} =
  type Cb = proc(super: QTreeWidgetdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QTreeWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QTreeWidget, visible: bool): void =


  fQTreeWidget_virtualbase_setVisible(self.h, visible)

type QTreeWidgetsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QTreeWidget, slot: proc(super: QTreeWidgetsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_setVisible(self: ptr cQTreeWidget, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QTreeWidget_setVisible ".} =
  type Cb = proc(super: QTreeWidgetsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QTreeWidget(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QTreeWidget, param1: cint): cint =


  fQTreeWidget_virtualbase_heightForWidth(self.h, param1)

type QTreeWidgetheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QTreeWidget, slot: proc(super: QTreeWidgetheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_heightForWidth(self: ptr cQTreeWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTreeWidget_heightForWidth ".} =
  type Cb = proc(super: QTreeWidgetheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QTreeWidget(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QTreeWidget, ): bool =


  fQTreeWidget_virtualbase_hasHeightForWidth(self.h)

type QTreeWidgethasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QTreeWidget, slot: proc(super: QTreeWidgethasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgethasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_hasHeightForWidth(self: ptr cQTreeWidget, slot: int): bool {.exportc: "miqt_exec_callback_QTreeWidget_hasHeightForWidth ".} =
  type Cb = proc(super: QTreeWidgethasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QTreeWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QTreeWidget, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQTreeWidget_virtualbase_paintEngine(self.h))

type QTreeWidgetpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QTreeWidget, slot: proc(super: QTreeWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_paintEngine(self: ptr cQTreeWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTreeWidget_paintEngine ".} =
  type Cb = proc(super: QTreeWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QTreeWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_keyReleaseEvent(self: QTreeWidget, event: gen_qevent.QKeyEvent): void =


  fQTreeWidget_virtualbase_keyReleaseEvent(self.h, event.h)

type QTreeWidgetkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_keyReleaseEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_keyReleaseEvent ".} =
  type Cb = proc(super: QTreeWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QTreeWidget(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QTreeWidget, event: gen_qcoreevent.QEvent): void =


  fQTreeWidget_virtualbase_enterEvent(self.h, event.h)

type QTreeWidgetenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgetenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_enterEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_enterEvent ".} =
  type Cb = proc(super: QTreeWidgetenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QTreeWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QTreeWidget, event: gen_qcoreevent.QEvent): void =


  fQTreeWidget_virtualbase_leaveEvent(self.h, event.h)

type QTreeWidgetleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_leaveEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_leaveEvent ".} =
  type Cb = proc(super: QTreeWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QTreeWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QTreeWidget, event: gen_qevent.QMoveEvent): void =


  fQTreeWidget_virtualbase_moveEvent(self.h, event.h)

type QTreeWidgetmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_moveEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_moveEvent ".} =
  type Cb = proc(super: QTreeWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QTreeWidget(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QTreeWidget, event: gen_qevent.QCloseEvent): void =


  fQTreeWidget_virtualbase_closeEvent(self.h, event.h)

type QTreeWidgetcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_closeEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_closeEvent ".} =
  type Cb = proc(super: QTreeWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QTreeWidget(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QTreeWidget, event: gen_qevent.QTabletEvent): void =


  fQTreeWidget_virtualbase_tabletEvent(self.h, event.h)

type QTreeWidgettabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgettabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgettabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_tabletEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_tabletEvent ".} =
  type Cb = proc(super: QTreeWidgettabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QTreeWidget(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QTreeWidget, event: gen_qevent.QActionEvent): void =


  fQTreeWidget_virtualbase_actionEvent(self.h, event.h)

type QTreeWidgetactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgetactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_actionEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_actionEvent ".} =
  type Cb = proc(super: QTreeWidgetactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QTreeWidget(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QTreeWidget, event: gen_qevent.QShowEvent): void =


  fQTreeWidget_virtualbase_showEvent(self.h, event.h)

type QTreeWidgetshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgetshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_showEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_showEvent ".} =
  type Cb = proc(super: QTreeWidgetshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QTreeWidget(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QTreeWidget, event: gen_qevent.QHideEvent): void =


  fQTreeWidget_virtualbase_hideEvent(self.h, event.h)

type QTreeWidgethideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgethideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgethideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_hideEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_hideEvent ".} =
  type Cb = proc(super: QTreeWidgethideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QTreeWidget(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QTreeWidget, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQTreeWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QTreeWidgetnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_nativeEvent(self: ptr cQTreeWidget, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QTreeWidget_nativeEvent ".} =
  type Cb = proc(super: QTreeWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QTreeWidget(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QTreeWidget, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQTreeWidget_virtualbase_metric(self.h, cint(param1))

type QTreeWidgetmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QTreeWidget, slot: proc(super: QTreeWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_metric(self: ptr cQTreeWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTreeWidget_metric ".} =
  type Cb = proc(super: QTreeWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QTreeWidget(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QTreeWidget, painter: gen_qpainter.QPainter): void =


  fQTreeWidget_virtualbase_initPainter(self.h, painter.h)

type QTreeWidgetinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QTreeWidget, slot: proc(super: QTreeWidgetinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_initPainter(self: ptr cQTreeWidget, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_initPainter ".} =
  type Cb = proc(super: QTreeWidgetinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QTreeWidget(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QTreeWidget, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQTreeWidget_virtualbase_redirected(self.h, offset.h))

type QTreeWidgetredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QTreeWidget, slot: proc(super: QTreeWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_redirected(self: ptr cQTreeWidget, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QTreeWidget_redirected ".} =
  type Cb = proc(super: QTreeWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QTreeWidget(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QTreeWidget, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQTreeWidget_virtualbase_sharedPainter(self.h))

type QTreeWidgetsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QTreeWidget, slot: proc(super: QTreeWidgetsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_sharedPainter(self: ptr cQTreeWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTreeWidget_sharedPainter ".} =
  type Cb = proc(super: QTreeWidgetsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QTreeWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_childEvent(self: QTreeWidget, event: gen_qcoreevent.QChildEvent): void =


  fQTreeWidget_virtualbase_childEvent(self.h, event.h)

type QTreeWidgetchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_childEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_childEvent ".} =
  type Cb = proc(super: QTreeWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QTreeWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QTreeWidget, event: gen_qcoreevent.QEvent): void =


  fQTreeWidget_virtualbase_customEvent(self.h, event.h)

type QTreeWidgetcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QTreeWidget, slot: proc(super: QTreeWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_customEvent(self: ptr cQTreeWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_customEvent ".} =
  type Cb = proc(super: QTreeWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QTreeWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QTreeWidget, signal: gen_qmetaobject.QMetaMethod): void =


  fQTreeWidget_virtualbase_connectNotify(self.h, signal.h)

type QTreeWidgetconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QTreeWidget, slot: proc(super: QTreeWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_connectNotify(self: ptr cQTreeWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_connectNotify ".} =
  type Cb = proc(super: QTreeWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QTreeWidget(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QTreeWidget, signal: gen_qmetaobject.QMetaMethod): void =


  fQTreeWidget_virtualbase_disconnectNotify(self.h, signal.h)

type QTreeWidgetdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QTreeWidget, slot: proc(super: QTreeWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeWidget_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeWidget_disconnectNotify(self: ptr cQTreeWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTreeWidget_disconnectNotify ".} =
  type Cb = proc(super: QTreeWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QTreeWidget(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QTreeWidget): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQTreeWidget_staticMetaObject())
proc delete*(self: QTreeWidget) =
  fcQTreeWidget_delete(self.h)
