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
{.compile("gen_qcombobox.cpp", cflags).}


type QComboBoxInsertPolicy* = cint
const
  QComboBoxNoInsert* = 0
  QComboBoxInsertAtTop* = 1
  QComboBoxInsertAtCurrent* = 2
  QComboBoxInsertAtBottom* = 3
  QComboBoxInsertAfterCurrent* = 4
  QComboBoxInsertBeforeCurrent* = 5
  QComboBoxInsertAlphabetically* = 6



type QComboBoxSizeAdjustPolicy* = cint
const
  QComboBoxAdjustToContents* = 0
  QComboBoxAdjustToContentsOnFirstShow* = 1
  QComboBoxAdjustToMinimumContentsLength* = 2
  QComboBoxAdjustToMinimumContentsLengthWithIcon* = 3



import gen_qcombobox_types
export gen_qcombobox_types

import
  gen_qabstractitemdelegate,
  gen_qabstractitemmodel,
  gen_qabstractitemview,
  gen_qcompleter,
  gen_qcoreevent,
  gen_qevent,
  gen_qicon,
  gen_qlineedit,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qsize,
  gen_qvalidator,
  gen_qvariant,
  gen_qwidget
export
  gen_qabstractitemdelegate,
  gen_qabstractitemmodel,
  gen_qabstractitemview,
  gen_qcompleter,
  gen_qcoreevent,
  gen_qevent,
  gen_qicon,
  gen_qlineedit,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qsize,
  gen_qvalidator,
  gen_qvariant,
  gen_qwidget

type cQComboBox*{.exportc: "QComboBox", incompleteStruct.} = object

proc fcQComboBox_new(parent: pointer): ptr cQComboBox {.importc: "QComboBox_new".}
proc fcQComboBox_new2(): ptr cQComboBox {.importc: "QComboBox_new2".}
proc fcQComboBox_metaObject(self: pointer, ): pointer {.importc: "QComboBox_metaObject".}
proc fcQComboBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QComboBox_metacast".}
proc fcQComboBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QComboBox_metacall".}
proc fcQComboBox_tr(s: cstring): struct_miqt_string {.importc: "QComboBox_tr".}
proc fcQComboBox_trUtf8(s: cstring): struct_miqt_string {.importc: "QComboBox_trUtf8".}
proc fcQComboBox_maxVisibleItems(self: pointer, ): cint {.importc: "QComboBox_maxVisibleItems".}
proc fcQComboBox_setMaxVisibleItems(self: pointer, maxItems: cint): void {.importc: "QComboBox_setMaxVisibleItems".}
proc fcQComboBox_count(self: pointer, ): cint {.importc: "QComboBox_count".}
proc fcQComboBox_setMaxCount(self: pointer, max: cint): void {.importc: "QComboBox_setMaxCount".}
proc fcQComboBox_maxCount(self: pointer, ): cint {.importc: "QComboBox_maxCount".}
proc fcQComboBox_autoCompletion(self: pointer, ): bool {.importc: "QComboBox_autoCompletion".}
proc fcQComboBox_setAutoCompletion(self: pointer, enable: bool): void {.importc: "QComboBox_setAutoCompletion".}
proc fcQComboBox_autoCompletionCaseSensitivity(self: pointer, ): cint {.importc: "QComboBox_autoCompletionCaseSensitivity".}
proc fcQComboBox_setAutoCompletionCaseSensitivity(self: pointer, sensitivity: cint): void {.importc: "QComboBox_setAutoCompletionCaseSensitivity".}
proc fcQComboBox_duplicatesEnabled(self: pointer, ): bool {.importc: "QComboBox_duplicatesEnabled".}
proc fcQComboBox_setDuplicatesEnabled(self: pointer, enable: bool): void {.importc: "QComboBox_setDuplicatesEnabled".}
proc fcQComboBox_setFrame(self: pointer, frame: bool): void {.importc: "QComboBox_setFrame".}
proc fcQComboBox_hasFrame(self: pointer, ): bool {.importc: "QComboBox_hasFrame".}
proc fcQComboBox_findText(self: pointer, text: struct_miqt_string): cint {.importc: "QComboBox_findText".}
proc fcQComboBox_findData(self: pointer, data: pointer): cint {.importc: "QComboBox_findData".}
proc fcQComboBox_insertPolicy(self: pointer, ): cint {.importc: "QComboBox_insertPolicy".}
proc fcQComboBox_setInsertPolicy(self: pointer, policy: cint): void {.importc: "QComboBox_setInsertPolicy".}
proc fcQComboBox_sizeAdjustPolicy(self: pointer, ): cint {.importc: "QComboBox_sizeAdjustPolicy".}
proc fcQComboBox_setSizeAdjustPolicy(self: pointer, policy: cint): void {.importc: "QComboBox_setSizeAdjustPolicy".}
proc fcQComboBox_minimumContentsLength(self: pointer, ): cint {.importc: "QComboBox_minimumContentsLength".}
proc fcQComboBox_setMinimumContentsLength(self: pointer, characters: cint): void {.importc: "QComboBox_setMinimumContentsLength".}
proc fcQComboBox_iconSize(self: pointer, ): pointer {.importc: "QComboBox_iconSize".}
proc fcQComboBox_setIconSize(self: pointer, size: pointer): void {.importc: "QComboBox_setIconSize".}
proc fcQComboBox_setPlaceholderText(self: pointer, placeholderText: struct_miqt_string): void {.importc: "QComboBox_setPlaceholderText".}
proc fcQComboBox_placeholderText(self: pointer, ): struct_miqt_string {.importc: "QComboBox_placeholderText".}
proc fcQComboBox_isEditable(self: pointer, ): bool {.importc: "QComboBox_isEditable".}
proc fcQComboBox_setEditable(self: pointer, editable: bool): void {.importc: "QComboBox_setEditable".}
proc fcQComboBox_setLineEdit(self: pointer, edit: pointer): void {.importc: "QComboBox_setLineEdit".}
proc fcQComboBox_lineEdit(self: pointer, ): pointer {.importc: "QComboBox_lineEdit".}
proc fcQComboBox_setValidator(self: pointer, v: pointer): void {.importc: "QComboBox_setValidator".}
proc fcQComboBox_validator(self: pointer, ): pointer {.importc: "QComboBox_validator".}
proc fcQComboBox_setCompleter(self: pointer, c: pointer): void {.importc: "QComboBox_setCompleter".}
proc fcQComboBox_completer(self: pointer, ): pointer {.importc: "QComboBox_completer".}
proc fcQComboBox_itemDelegate(self: pointer, ): pointer {.importc: "QComboBox_itemDelegate".}
proc fcQComboBox_setItemDelegate(self: pointer, delegate: pointer): void {.importc: "QComboBox_setItemDelegate".}
proc fcQComboBox_model(self: pointer, ): pointer {.importc: "QComboBox_model".}
proc fcQComboBox_setModel(self: pointer, model: pointer): void {.importc: "QComboBox_setModel".}
proc fcQComboBox_rootModelIndex(self: pointer, ): pointer {.importc: "QComboBox_rootModelIndex".}
proc fcQComboBox_setRootModelIndex(self: pointer, index: pointer): void {.importc: "QComboBox_setRootModelIndex".}
proc fcQComboBox_modelColumn(self: pointer, ): cint {.importc: "QComboBox_modelColumn".}
proc fcQComboBox_setModelColumn(self: pointer, visibleColumn: cint): void {.importc: "QComboBox_setModelColumn".}
proc fcQComboBox_currentIndex(self: pointer, ): cint {.importc: "QComboBox_currentIndex".}
proc fcQComboBox_currentText(self: pointer, ): struct_miqt_string {.importc: "QComboBox_currentText".}
proc fcQComboBox_currentData(self: pointer, ): pointer {.importc: "QComboBox_currentData".}
proc fcQComboBox_itemText(self: pointer, index: cint): struct_miqt_string {.importc: "QComboBox_itemText".}
proc fcQComboBox_itemIcon(self: pointer, index: cint): pointer {.importc: "QComboBox_itemIcon".}
proc fcQComboBox_itemData(self: pointer, index: cint): pointer {.importc: "QComboBox_itemData".}
proc fcQComboBox_addItem(self: pointer, text: struct_miqt_string): void {.importc: "QComboBox_addItem".}
proc fcQComboBox_addItem2(self: pointer, icon: pointer, text: struct_miqt_string): void {.importc: "QComboBox_addItem2".}
proc fcQComboBox_addItems(self: pointer, texts: struct_miqt_array): void {.importc: "QComboBox_addItems".}
proc fcQComboBox_insertItem(self: pointer, index: cint, text: struct_miqt_string): void {.importc: "QComboBox_insertItem".}
proc fcQComboBox_insertItem2(self: pointer, index: cint, icon: pointer, text: struct_miqt_string): void {.importc: "QComboBox_insertItem2".}
proc fcQComboBox_insertItems(self: pointer, index: cint, texts: struct_miqt_array): void {.importc: "QComboBox_insertItems".}
proc fcQComboBox_insertSeparator(self: pointer, index: cint): void {.importc: "QComboBox_insertSeparator".}
proc fcQComboBox_removeItem(self: pointer, index: cint): void {.importc: "QComboBox_removeItem".}
proc fcQComboBox_setItemText(self: pointer, index: cint, text: struct_miqt_string): void {.importc: "QComboBox_setItemText".}
proc fcQComboBox_setItemIcon(self: pointer, index: cint, icon: pointer): void {.importc: "QComboBox_setItemIcon".}
proc fcQComboBox_setItemData(self: pointer, index: cint, value: pointer): void {.importc: "QComboBox_setItemData".}
proc fcQComboBox_view(self: pointer, ): pointer {.importc: "QComboBox_view".}
proc fcQComboBox_setView(self: pointer, itemView: pointer): void {.importc: "QComboBox_setView".}
proc fcQComboBox_sizeHint(self: pointer, ): pointer {.importc: "QComboBox_sizeHint".}
proc fcQComboBox_minimumSizeHint(self: pointer, ): pointer {.importc: "QComboBox_minimumSizeHint".}
proc fcQComboBox_showPopup(self: pointer, ): void {.importc: "QComboBox_showPopup".}
proc fcQComboBox_hidePopup(self: pointer, ): void {.importc: "QComboBox_hidePopup".}
proc fcQComboBox_event(self: pointer, event: pointer): bool {.importc: "QComboBox_event".}
proc fcQComboBox_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QComboBox_inputMethodQuery".}
proc fcQComboBox_inputMethodQuery2(self: pointer, query: cint, argument: pointer): pointer {.importc: "QComboBox_inputMethodQuery2".}
proc fcQComboBox_clear(self: pointer, ): void {.importc: "QComboBox_clear".}
proc fcQComboBox_clearEditText(self: pointer, ): void {.importc: "QComboBox_clearEditText".}
proc fcQComboBox_setEditText(self: pointer, text: struct_miqt_string): void {.importc: "QComboBox_setEditText".}
proc fcQComboBox_setCurrentIndex(self: pointer, index: cint): void {.importc: "QComboBox_setCurrentIndex".}
proc fcQComboBox_setCurrentText(self: pointer, text: struct_miqt_string): void {.importc: "QComboBox_setCurrentText".}
proc fcQComboBox_editTextChanged(self: pointer, param1: struct_miqt_string): void {.importc: "QComboBox_editTextChanged".}
proc fQComboBox_connect_editTextChanged(self: pointer, slot: int) {.importc: "QComboBox_connect_editTextChanged".}
proc fcQComboBox_activated(self: pointer, index: cint): void {.importc: "QComboBox_activated".}
proc fQComboBox_connect_activated(self: pointer, slot: int) {.importc: "QComboBox_connect_activated".}
proc fcQComboBox_textActivated(self: pointer, param1: struct_miqt_string): void {.importc: "QComboBox_textActivated".}
proc fQComboBox_connect_textActivated(self: pointer, slot: int) {.importc: "QComboBox_connect_textActivated".}
proc fcQComboBox_highlighted(self: pointer, index: cint): void {.importc: "QComboBox_highlighted".}
proc fQComboBox_connect_highlighted(self: pointer, slot: int) {.importc: "QComboBox_connect_highlighted".}
proc fcQComboBox_textHighlighted(self: pointer, param1: struct_miqt_string): void {.importc: "QComboBox_textHighlighted".}
proc fQComboBox_connect_textHighlighted(self: pointer, slot: int) {.importc: "QComboBox_connect_textHighlighted".}
proc fcQComboBox_currentIndexChanged(self: pointer, index: cint): void {.importc: "QComboBox_currentIndexChanged".}
proc fQComboBox_connect_currentIndexChanged(self: pointer, slot: int) {.importc: "QComboBox_connect_currentIndexChanged".}
proc fcQComboBox_currentIndexChangedWithQString(self: pointer, param1: struct_miqt_string): void {.importc: "QComboBox_currentIndexChangedWithQString".}
proc fQComboBox_connect_currentIndexChangedWithQString(self: pointer, slot: int) {.importc: "QComboBox_connect_currentIndexChangedWithQString".}
proc fcQComboBox_currentTextChanged(self: pointer, param1: struct_miqt_string): void {.importc: "QComboBox_currentTextChanged".}
proc fQComboBox_connect_currentTextChanged(self: pointer, slot: int) {.importc: "QComboBox_connect_currentTextChanged".}
proc fcQComboBox_activatedWithQString(self: pointer, param1: struct_miqt_string): void {.importc: "QComboBox_activatedWithQString".}
proc fQComboBox_connect_activatedWithQString(self: pointer, slot: int) {.importc: "QComboBox_connect_activatedWithQString".}
proc fcQComboBox_highlightedWithQString(self: pointer, param1: struct_miqt_string): void {.importc: "QComboBox_highlightedWithQString".}
proc fQComboBox_connect_highlightedWithQString(self: pointer, slot: int) {.importc: "QComboBox_connect_highlightedWithQString".}
proc fcQComboBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QComboBox_tr2".}
proc fcQComboBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QComboBox_tr3".}
proc fcQComboBox_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QComboBox_trUtf82".}
proc fcQComboBox_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QComboBox_trUtf83".}
proc fcQComboBox_findText2(self: pointer, text: struct_miqt_string, flags: cint): cint {.importc: "QComboBox_findText2".}
proc fcQComboBox_findData2(self: pointer, data: pointer, role: cint): cint {.importc: "QComboBox_findData2".}
proc fcQComboBox_findData3(self: pointer, data: pointer, role: cint, flags: cint): cint {.importc: "QComboBox_findData3".}
proc fcQComboBox_currentData1(self: pointer, role: cint): pointer {.importc: "QComboBox_currentData1".}
proc fcQComboBox_itemData2(self: pointer, index: cint, role: cint): pointer {.importc: "QComboBox_itemData2".}
proc fcQComboBox_addItem22(self: pointer, text: struct_miqt_string, userData: pointer): void {.importc: "QComboBox_addItem22".}
proc fcQComboBox_addItem3(self: pointer, icon: pointer, text: struct_miqt_string, userData: pointer): void {.importc: "QComboBox_addItem3".}
proc fcQComboBox_insertItem3(self: pointer, index: cint, text: struct_miqt_string, userData: pointer): void {.importc: "QComboBox_insertItem3".}
proc fcQComboBox_insertItem4(self: pointer, index: cint, icon: pointer, text: struct_miqt_string, userData: pointer): void {.importc: "QComboBox_insertItem4".}
proc fcQComboBox_setItemData3(self: pointer, index: cint, value: pointer, role: cint): void {.importc: "QComboBox_setItemData3".}
proc fQComboBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QComboBox_virtualbase_metacall".}
proc fcQComboBox_override_virtual_metacall(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_metacall".}
proc fQComboBox_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QComboBox_virtualbase_sizeHint".}
proc fcQComboBox_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_sizeHint".}
proc fQComboBox_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QComboBox_virtualbase_minimumSizeHint".}
proc fcQComboBox_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_minimumSizeHint".}
proc fQComboBox_virtualbase_showPopup(self: pointer, ): void{.importc: "QComboBox_virtualbase_showPopup".}
proc fcQComboBox_override_virtual_showPopup(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_showPopup".}
proc fQComboBox_virtualbase_hidePopup(self: pointer, ): void{.importc: "QComboBox_virtualbase_hidePopup".}
proc fcQComboBox_override_virtual_hidePopup(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_hidePopup".}
proc fQComboBox_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QComboBox_virtualbase_event".}
proc fcQComboBox_override_virtual_event(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_event".}
proc fQComboBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QComboBox_virtualbase_inputMethodQuery".}
proc fcQComboBox_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_inputMethodQuery".}
proc fQComboBox_virtualbase_focusInEvent(self: pointer, e: pointer): void{.importc: "QComboBox_virtualbase_focusInEvent".}
proc fcQComboBox_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_focusInEvent".}
proc fQComboBox_virtualbase_focusOutEvent(self: pointer, e: pointer): void{.importc: "QComboBox_virtualbase_focusOutEvent".}
proc fcQComboBox_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_focusOutEvent".}
proc fQComboBox_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QComboBox_virtualbase_changeEvent".}
proc fcQComboBox_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_changeEvent".}
proc fQComboBox_virtualbase_resizeEvent(self: pointer, e: pointer): void{.importc: "QComboBox_virtualbase_resizeEvent".}
proc fcQComboBox_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_resizeEvent".}
proc fQComboBox_virtualbase_paintEvent(self: pointer, e: pointer): void{.importc: "QComboBox_virtualbase_paintEvent".}
proc fcQComboBox_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_paintEvent".}
proc fQComboBox_virtualbase_showEvent(self: pointer, e: pointer): void{.importc: "QComboBox_virtualbase_showEvent".}
proc fcQComboBox_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_showEvent".}
proc fQComboBox_virtualbase_hideEvent(self: pointer, e: pointer): void{.importc: "QComboBox_virtualbase_hideEvent".}
proc fcQComboBox_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_hideEvent".}
proc fQComboBox_virtualbase_mousePressEvent(self: pointer, e: pointer): void{.importc: "QComboBox_virtualbase_mousePressEvent".}
proc fcQComboBox_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_mousePressEvent".}
proc fQComboBox_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void{.importc: "QComboBox_virtualbase_mouseReleaseEvent".}
proc fcQComboBox_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_mouseReleaseEvent".}
proc fQComboBox_virtualbase_keyPressEvent(self: pointer, e: pointer): void{.importc: "QComboBox_virtualbase_keyPressEvent".}
proc fcQComboBox_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_keyPressEvent".}
proc fQComboBox_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void{.importc: "QComboBox_virtualbase_keyReleaseEvent".}
proc fcQComboBox_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_keyReleaseEvent".}
proc fQComboBox_virtualbase_wheelEvent(self: pointer, e: pointer): void{.importc: "QComboBox_virtualbase_wheelEvent".}
proc fcQComboBox_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_wheelEvent".}
proc fQComboBox_virtualbase_contextMenuEvent(self: pointer, e: pointer): void{.importc: "QComboBox_virtualbase_contextMenuEvent".}
proc fcQComboBox_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_contextMenuEvent".}
proc fQComboBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QComboBox_virtualbase_inputMethodEvent".}
proc fcQComboBox_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_inputMethodEvent".}
proc fQComboBox_virtualbase_devType(self: pointer, ): cint{.importc: "QComboBox_virtualbase_devType".}
proc fcQComboBox_override_virtual_devType(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_devType".}
proc fQComboBox_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QComboBox_virtualbase_setVisible".}
proc fcQComboBox_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_setVisible".}
proc fQComboBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QComboBox_virtualbase_heightForWidth".}
proc fcQComboBox_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_heightForWidth".}
proc fQComboBox_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QComboBox_virtualbase_hasHeightForWidth".}
proc fcQComboBox_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_hasHeightForWidth".}
proc fQComboBox_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QComboBox_virtualbase_paintEngine".}
proc fcQComboBox_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_paintEngine".}
proc fQComboBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_mouseDoubleClickEvent".}
proc fcQComboBox_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_mouseDoubleClickEvent".}
proc fQComboBox_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_mouseMoveEvent".}
proc fcQComboBox_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_mouseMoveEvent".}
proc fQComboBox_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_enterEvent".}
proc fcQComboBox_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_enterEvent".}
proc fQComboBox_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_leaveEvent".}
proc fcQComboBox_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_leaveEvent".}
proc fQComboBox_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_moveEvent".}
proc fcQComboBox_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_moveEvent".}
proc fQComboBox_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_closeEvent".}
proc fcQComboBox_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_closeEvent".}
proc fQComboBox_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_tabletEvent".}
proc fcQComboBox_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_tabletEvent".}
proc fQComboBox_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_actionEvent".}
proc fcQComboBox_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_actionEvent".}
proc fQComboBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_dragEnterEvent".}
proc fcQComboBox_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_dragEnterEvent".}
proc fQComboBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_dragMoveEvent".}
proc fcQComboBox_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_dragMoveEvent".}
proc fQComboBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_dragLeaveEvent".}
proc fcQComboBox_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_dragLeaveEvent".}
proc fQComboBox_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_dropEvent".}
proc fcQComboBox_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_dropEvent".}
proc fQComboBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QComboBox_virtualbase_nativeEvent".}
proc fcQComboBox_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_nativeEvent".}
proc fQComboBox_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QComboBox_virtualbase_metric".}
proc fcQComboBox_override_virtual_metric(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_metric".}
proc fQComboBox_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QComboBox_virtualbase_initPainter".}
proc fcQComboBox_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_initPainter".}
proc fQComboBox_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QComboBox_virtualbase_redirected".}
proc fcQComboBox_override_virtual_redirected(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_redirected".}
proc fQComboBox_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QComboBox_virtualbase_sharedPainter".}
proc fcQComboBox_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_sharedPainter".}
proc fQComboBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QComboBox_virtualbase_focusNextPrevChild".}
proc fcQComboBox_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_focusNextPrevChild".}
proc fQComboBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QComboBox_virtualbase_eventFilter".}
proc fcQComboBox_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_eventFilter".}
proc fQComboBox_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_timerEvent".}
proc fcQComboBox_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_timerEvent".}
proc fQComboBox_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_childEvent".}
proc fcQComboBox_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_childEvent".}
proc fQComboBox_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QComboBox_virtualbase_customEvent".}
proc fcQComboBox_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_customEvent".}
proc fQComboBox_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QComboBox_virtualbase_connectNotify".}
proc fcQComboBox_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_connectNotify".}
proc fQComboBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QComboBox_virtualbase_disconnectNotify".}
proc fcQComboBox_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QComboBox_override_virtual_disconnectNotify".}
proc fcQComboBox_staticMetaObject(): pointer {.importc: "QComboBox_staticMetaObject".}
proc fcQComboBox_delete(self: pointer) {.importc: "QComboBox_delete".}


func init*(T: type QComboBox, h: ptr cQComboBox): QComboBox =
  T(h: h)
proc create*(T: type QComboBox, parent: gen_qwidget.QWidget): QComboBox =

  QComboBox.init(fcQComboBox_new(parent.h))
proc create*(T: type QComboBox, ): QComboBox =

  QComboBox.init(fcQComboBox_new2())
proc metaObject*(self: QComboBox, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQComboBox_metaObject(self.h))

proc metacast*(self: QComboBox, param1: cstring): pointer =

  fcQComboBox_metacast(self.h, param1)

proc metacall*(self: QComboBox, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQComboBox_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QComboBox, s: cstring): string =

  let v_ms = fcQComboBox_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QComboBox, s: cstring): string =

  let v_ms = fcQComboBox_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc maxVisibleItems*(self: QComboBox, ): cint =

  fcQComboBox_maxVisibleItems(self.h)

proc setMaxVisibleItems*(self: QComboBox, maxItems: cint): void =

  fcQComboBox_setMaxVisibleItems(self.h, maxItems)

proc count*(self: QComboBox, ): cint =

  fcQComboBox_count(self.h)

proc setMaxCount*(self: QComboBox, max: cint): void =

  fcQComboBox_setMaxCount(self.h, max)

proc maxCount*(self: QComboBox, ): cint =

  fcQComboBox_maxCount(self.h)

proc autoCompletion*(self: QComboBox, ): bool =

  fcQComboBox_autoCompletion(self.h)

proc setAutoCompletion*(self: QComboBox, enable: bool): void =

  fcQComboBox_setAutoCompletion(self.h, enable)

proc autoCompletionCaseSensitivity*(self: QComboBox, ): gen_qnamespace.CaseSensitivity =

  gen_qnamespace.CaseSensitivity(fcQComboBox_autoCompletionCaseSensitivity(self.h))

proc setAutoCompletionCaseSensitivity*(self: QComboBox, sensitivity: gen_qnamespace.CaseSensitivity): void =

  fcQComboBox_setAutoCompletionCaseSensitivity(self.h, cint(sensitivity))

proc duplicatesEnabled*(self: QComboBox, ): bool =

  fcQComboBox_duplicatesEnabled(self.h)

proc setDuplicatesEnabled*(self: QComboBox, enable: bool): void =

  fcQComboBox_setDuplicatesEnabled(self.h, enable)

proc setFrame*(self: QComboBox, frame: bool): void =

  fcQComboBox_setFrame(self.h, frame)

proc hasFrame*(self: QComboBox, ): bool =

  fcQComboBox_hasFrame(self.h)

proc findText*(self: QComboBox, text: string): cint =

  fcQComboBox_findText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc findData*(self: QComboBox, data: gen_qvariant.QVariant): cint =

  fcQComboBox_findData(self.h, data.h)

proc insertPolicy*(self: QComboBox, ): QComboBoxInsertPolicy =

  QComboBoxInsertPolicy(fcQComboBox_insertPolicy(self.h))

proc setInsertPolicy*(self: QComboBox, policy: QComboBoxInsertPolicy): void =

  fcQComboBox_setInsertPolicy(self.h, cint(policy))

proc sizeAdjustPolicy*(self: QComboBox, ): QComboBoxSizeAdjustPolicy =

  QComboBoxSizeAdjustPolicy(fcQComboBox_sizeAdjustPolicy(self.h))

proc setSizeAdjustPolicy*(self: QComboBox, policy: QComboBoxSizeAdjustPolicy): void =

  fcQComboBox_setSizeAdjustPolicy(self.h, cint(policy))

proc minimumContentsLength*(self: QComboBox, ): cint =

  fcQComboBox_minimumContentsLength(self.h)

proc setMinimumContentsLength*(self: QComboBox, characters: cint): void =

  fcQComboBox_setMinimumContentsLength(self.h, characters)

proc iconSize*(self: QComboBox, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQComboBox_iconSize(self.h))

proc setIconSize*(self: QComboBox, size: gen_qsize.QSize): void =

  fcQComboBox_setIconSize(self.h, size.h)

proc setPlaceholderText*(self: QComboBox, placeholderText: string): void =

  fcQComboBox_setPlaceholderText(self.h, struct_miqt_string(data: placeholderText, len: csize_t(len(placeholderText))))

proc placeholderText*(self: QComboBox, ): string =

  let v_ms = fcQComboBox_placeholderText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isEditable*(self: QComboBox, ): bool =

  fcQComboBox_isEditable(self.h)

proc setEditable*(self: QComboBox, editable: bool): void =

  fcQComboBox_setEditable(self.h, editable)

proc setLineEdit*(self: QComboBox, edit: gen_qlineedit.QLineEdit): void =

  fcQComboBox_setLineEdit(self.h, edit.h)

proc lineEdit*(self: QComboBox, ): gen_qlineedit.QLineEdit =

  gen_qlineedit.QLineEdit(h: fcQComboBox_lineEdit(self.h))

proc setValidator*(self: QComboBox, v: gen_qvalidator.QValidator): void =

  fcQComboBox_setValidator(self.h, v.h)

proc validator*(self: QComboBox, ): gen_qvalidator.QValidator =

  gen_qvalidator.QValidator(h: fcQComboBox_validator(self.h))

proc setCompleter*(self: QComboBox, c: gen_qcompleter.QCompleter): void =

  fcQComboBox_setCompleter(self.h, c.h)

proc completer*(self: QComboBox, ): gen_qcompleter.QCompleter =

  gen_qcompleter.QCompleter(h: fcQComboBox_completer(self.h))

proc itemDelegate*(self: QComboBox, ): gen_qabstractitemdelegate.QAbstractItemDelegate =

  gen_qabstractitemdelegate.QAbstractItemDelegate(h: fcQComboBox_itemDelegate(self.h))

proc setItemDelegate*(self: QComboBox, delegate: gen_qabstractitemdelegate.QAbstractItemDelegate): void =

  fcQComboBox_setItemDelegate(self.h, delegate.h)

proc model*(self: QComboBox, ): gen_qabstractitemmodel.QAbstractItemModel =

  gen_qabstractitemmodel.QAbstractItemModel(h: fcQComboBox_model(self.h))

proc setModel*(self: QComboBox, model: gen_qabstractitemmodel.QAbstractItemModel): void =

  fcQComboBox_setModel(self.h, model.h)

proc rootModelIndex*(self: QComboBox, ): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQComboBox_rootModelIndex(self.h))

proc setRootModelIndex*(self: QComboBox, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQComboBox_setRootModelIndex(self.h, index.h)

proc modelColumn*(self: QComboBox, ): cint =

  fcQComboBox_modelColumn(self.h)

proc setModelColumn*(self: QComboBox, visibleColumn: cint): void =

  fcQComboBox_setModelColumn(self.h, visibleColumn)

proc currentIndex*(self: QComboBox, ): cint =

  fcQComboBox_currentIndex(self.h)

proc currentText*(self: QComboBox, ): string =

  let v_ms = fcQComboBox_currentText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc currentData*(self: QComboBox, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQComboBox_currentData(self.h))

proc itemText*(self: QComboBox, index: cint): string =

  let v_ms = fcQComboBox_itemText(self.h, index)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc itemIcon*(self: QComboBox, index: cint): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQComboBox_itemIcon(self.h, index))

proc itemData*(self: QComboBox, index: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQComboBox_itemData(self.h, index))

proc addItem*(self: QComboBox, text: string): void =

  fcQComboBox_addItem(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc addItem2*(self: QComboBox, icon: gen_qicon.QIcon, text: string): void =

  fcQComboBox_addItem2(self.h, icon.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc addItems*(self: QComboBox, texts: seq[string]): void =

  var texts_CArray = newSeq[struct_miqt_string](len(texts))
  for i in 0..<len(texts):
    texts_CArray[i] = struct_miqt_string(data: texts[i], len: csize_t(len(texts[i])))

  fcQComboBox_addItems(self.h, struct_miqt_array(len: csize_t(len(texts)), data: if len(texts) == 0: nil else: addr(texts_CArray[0])))

proc insertItem*(self: QComboBox, index: cint, text: string): void =

  fcQComboBox_insertItem(self.h, index, struct_miqt_string(data: text, len: csize_t(len(text))))

proc insertItem2*(self: QComboBox, index: cint, icon: gen_qicon.QIcon, text: string): void =

  fcQComboBox_insertItem2(self.h, index, icon.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc insertItems*(self: QComboBox, index: cint, texts: seq[string]): void =

  var texts_CArray = newSeq[struct_miqt_string](len(texts))
  for i in 0..<len(texts):
    texts_CArray[i] = struct_miqt_string(data: texts[i], len: csize_t(len(texts[i])))

  fcQComboBox_insertItems(self.h, index, struct_miqt_array(len: csize_t(len(texts)), data: if len(texts) == 0: nil else: addr(texts_CArray[0])))

proc insertSeparator*(self: QComboBox, index: cint): void =

  fcQComboBox_insertSeparator(self.h, index)

proc removeItem*(self: QComboBox, index: cint): void =

  fcQComboBox_removeItem(self.h, index)

proc setItemText*(self: QComboBox, index: cint, text: string): void =

  fcQComboBox_setItemText(self.h, index, struct_miqt_string(data: text, len: csize_t(len(text))))

proc setItemIcon*(self: QComboBox, index: cint, icon: gen_qicon.QIcon): void =

  fcQComboBox_setItemIcon(self.h, index, icon.h)

proc setItemData*(self: QComboBox, index: cint, value: gen_qvariant.QVariant): void =

  fcQComboBox_setItemData(self.h, index, value.h)

proc view*(self: QComboBox, ): gen_qabstractitemview.QAbstractItemView =

  gen_qabstractitemview.QAbstractItemView(h: fcQComboBox_view(self.h))

proc setView*(self: QComboBox, itemView: gen_qabstractitemview.QAbstractItemView): void =

  fcQComboBox_setView(self.h, itemView.h)

proc sizeHint*(self: QComboBox, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQComboBox_sizeHint(self.h))

proc minimumSizeHint*(self: QComboBox, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQComboBox_minimumSizeHint(self.h))

proc showPopup*(self: QComboBox, ): void =

  fcQComboBox_showPopup(self.h)

proc hidePopup*(self: QComboBox, ): void =

  fcQComboBox_hidePopup(self.h)

proc event*(self: QComboBox, event: gen_qcoreevent.QEvent): bool =

  fcQComboBox_event(self.h, event.h)

proc inputMethodQuery*(self: QComboBox, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQComboBox_inputMethodQuery(self.h, cint(param1)))

proc inputMethodQuery2*(self: QComboBox, query: gen_qnamespace.InputMethodQuery, argument: gen_qvariant.QVariant): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQComboBox_inputMethodQuery2(self.h, cint(query), argument.h))

proc clear*(self: QComboBox, ): void =

  fcQComboBox_clear(self.h)

proc clearEditText*(self: QComboBox, ): void =

  fcQComboBox_clearEditText(self.h)

proc setEditText*(self: QComboBox, text: string): void =

  fcQComboBox_setEditText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc setCurrentIndex*(self: QComboBox, index: cint): void =

  fcQComboBox_setCurrentIndex(self.h, index)

proc setCurrentText*(self: QComboBox, text: string): void =

  fcQComboBox_setCurrentText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc editTextChanged*(self: QComboBox, param1: string): void =

  fcQComboBox_editTextChanged(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc miqt_exec_callback_QComboBox_editTextChanged(slot: int, param1: struct_miqt_string) {.exportc.} =
  type Cb = proc(param1: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret


  nimfunc[](slotval1)

proc oneditTextChanged*(self: QComboBox, slot: proc(param1: string)) =
  type Cb = proc(param1: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQComboBox_connect_editTextChanged(self.h, cast[int](addr tmp[]))
proc activated*(self: QComboBox, index: cint): void =

  fcQComboBox_activated(self.h, index)

proc miqt_exec_callback_QComboBox_activated(slot: int, index: cint) {.exportc.} =
  type Cb = proc(index: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)

proc onactivated*(self: QComboBox, slot: proc(index: cint)) =
  type Cb = proc(index: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQComboBox_connect_activated(self.h, cast[int](addr tmp[]))
proc textActivated*(self: QComboBox, param1: string): void =

  fcQComboBox_textActivated(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc miqt_exec_callback_QComboBox_textActivated(slot: int, param1: struct_miqt_string) {.exportc.} =
  type Cb = proc(param1: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret


  nimfunc[](slotval1)

proc ontextActivated*(self: QComboBox, slot: proc(param1: string)) =
  type Cb = proc(param1: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQComboBox_connect_textActivated(self.h, cast[int](addr tmp[]))
proc highlighted*(self: QComboBox, index: cint): void =

  fcQComboBox_highlighted(self.h, index)

proc miqt_exec_callback_QComboBox_highlighted(slot: int, index: cint) {.exportc.} =
  type Cb = proc(index: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)

proc onhighlighted*(self: QComboBox, slot: proc(index: cint)) =
  type Cb = proc(index: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQComboBox_connect_highlighted(self.h, cast[int](addr tmp[]))
proc textHighlighted*(self: QComboBox, param1: string): void =

  fcQComboBox_textHighlighted(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc miqt_exec_callback_QComboBox_textHighlighted(slot: int, param1: struct_miqt_string) {.exportc.} =
  type Cb = proc(param1: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret


  nimfunc[](slotval1)

proc ontextHighlighted*(self: QComboBox, slot: proc(param1: string)) =
  type Cb = proc(param1: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQComboBox_connect_textHighlighted(self.h, cast[int](addr tmp[]))
proc currentIndexChanged*(self: QComboBox, index: cint): void =

  fcQComboBox_currentIndexChanged(self.h, index)

proc miqt_exec_callback_QComboBox_currentIndexChanged(slot: int, index: cint) {.exportc.} =
  type Cb = proc(index: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)

proc oncurrentIndexChanged*(self: QComboBox, slot: proc(index: cint)) =
  type Cb = proc(index: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQComboBox_connect_currentIndexChanged(self.h, cast[int](addr tmp[]))
proc currentIndexChangedWithQString*(self: QComboBox, param1: string): void =

  fcQComboBox_currentIndexChangedWithQString(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc miqt_exec_callback_QComboBox_currentIndexChangedWithQString(slot: int, param1: struct_miqt_string) {.exportc.} =
  type Cb = proc(param1: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret


  nimfunc[](slotval1)

proc oncurrentIndexChangedWithQString*(self: QComboBox, slot: proc(param1: string)) =
  type Cb = proc(param1: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQComboBox_connect_currentIndexChangedWithQString(self.h, cast[int](addr tmp[]))
proc currentTextChanged*(self: QComboBox, param1: string): void =

  fcQComboBox_currentTextChanged(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc miqt_exec_callback_QComboBox_currentTextChanged(slot: int, param1: struct_miqt_string) {.exportc.} =
  type Cb = proc(param1: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret


  nimfunc[](slotval1)

proc oncurrentTextChanged*(self: QComboBox, slot: proc(param1: string)) =
  type Cb = proc(param1: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQComboBox_connect_currentTextChanged(self.h, cast[int](addr tmp[]))
proc activatedWithQString*(self: QComboBox, param1: string): void =

  fcQComboBox_activatedWithQString(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc miqt_exec_callback_QComboBox_activatedWithQString(slot: int, param1: struct_miqt_string) {.exportc.} =
  type Cb = proc(param1: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret


  nimfunc[](slotval1)

proc onactivatedWithQString*(self: QComboBox, slot: proc(param1: string)) =
  type Cb = proc(param1: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQComboBox_connect_activatedWithQString(self.h, cast[int](addr tmp[]))
proc highlightedWithQString*(self: QComboBox, param1: string): void =

  fcQComboBox_highlightedWithQString(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc miqt_exec_callback_QComboBox_highlightedWithQString(slot: int, param1: struct_miqt_string) {.exportc.} =
  type Cb = proc(param1: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret


  nimfunc[](slotval1)

proc onhighlightedWithQString*(self: QComboBox, slot: proc(param1: string)) =
  type Cb = proc(param1: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQComboBox_connect_highlightedWithQString(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QComboBox, s: cstring, c: cstring): string =

  let v_ms = fcQComboBox_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QComboBox, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQComboBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QComboBox, s: cstring, c: cstring): string =

  let v_ms = fcQComboBox_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QComboBox, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQComboBox_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc findText2*(self: QComboBox, text: string, flags: gen_qnamespace.MatchFlag): cint =

  fcQComboBox_findText2(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), cint(flags))

proc findData2*(self: QComboBox, data: gen_qvariant.QVariant, role: cint): cint =

  fcQComboBox_findData2(self.h, data.h, role)

proc findData3*(self: QComboBox, data: gen_qvariant.QVariant, role: cint, flags: gen_qnamespace.MatchFlag): cint =

  fcQComboBox_findData3(self.h, data.h, role, cint(flags))

proc currentData1*(self: QComboBox, role: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQComboBox_currentData1(self.h, role))

proc itemData2*(self: QComboBox, index: cint, role: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQComboBox_itemData2(self.h, index, role))

proc addItem22*(self: QComboBox, text: string, userData: gen_qvariant.QVariant): void =

  fcQComboBox_addItem22(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), userData.h)

proc addItem3*(self: QComboBox, icon: gen_qicon.QIcon, text: string, userData: gen_qvariant.QVariant): void =

  fcQComboBox_addItem3(self.h, icon.h, struct_miqt_string(data: text, len: csize_t(len(text))), userData.h)

proc insertItem3*(self: QComboBox, index: cint, text: string, userData: gen_qvariant.QVariant): void =

  fcQComboBox_insertItem3(self.h, index, struct_miqt_string(data: text, len: csize_t(len(text))), userData.h)

proc insertItem4*(self: QComboBox, index: cint, icon: gen_qicon.QIcon, text: string, userData: gen_qvariant.QVariant): void =

  fcQComboBox_insertItem4(self.h, index, icon.h, struct_miqt_string(data: text, len: csize_t(len(text))), userData.h)

proc setItemData3*(self: QComboBox, index: cint, value: gen_qvariant.QVariant, role: cint): void =

  fcQComboBox_setItemData3(self.h, index, value.h, role)

proc callVirtualBase_metacall(self: QComboBox, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQComboBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QComboBoxmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QComboBox, slot: proc(super: QComboBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_metacall(self: ptr cQComboBox, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QComboBox_metacall ".} =
  type Cb = proc(super: QComboBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QComboBox(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QComboBox, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQComboBox_virtualbase_sizeHint(self.h))

type QComboBoxsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QComboBox, slot: proc(super: QComboBoxsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_sizeHint(self: ptr cQComboBox, slot: int): pointer {.exportc: "miqt_exec_callback_QComboBox_sizeHint ".} =
  type Cb = proc(super: QComboBoxsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QComboBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QComboBox, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQComboBox_virtualbase_minimumSizeHint(self.h))

type QComboBoxminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QComboBox, slot: proc(super: QComboBoxminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_minimumSizeHint(self: ptr cQComboBox, slot: int): pointer {.exportc: "miqt_exec_callback_QComboBox_minimumSizeHint ".} =
  type Cb = proc(super: QComboBoxminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QComboBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_showPopup(self: QComboBox, ): void =


  fQComboBox_virtualbase_showPopup(self.h)

type QComboBoxshowPopupBase* = proc(): void
proc onshowPopup*(self: QComboBox, slot: proc(super: QComboBoxshowPopupBase): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxshowPopupBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_showPopup(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_showPopup(self: ptr cQComboBox, slot: int): void {.exportc: "miqt_exec_callback_QComboBox_showPopup ".} =
  type Cb = proc(super: QComboBoxshowPopupBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_showPopup(QComboBox(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_hidePopup(self: QComboBox, ): void =


  fQComboBox_virtualbase_hidePopup(self.h)

type QComboBoxhidePopupBase* = proc(): void
proc onhidePopup*(self: QComboBox, slot: proc(super: QComboBoxhidePopupBase): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxhidePopupBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_hidePopup(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_hidePopup(self: ptr cQComboBox, slot: int): void {.exportc: "miqt_exec_callback_QComboBox_hidePopup ".} =
  type Cb = proc(super: QComboBoxhidePopupBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hidePopup(QComboBox(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_event(self: QComboBox, event: gen_qcoreevent.QEvent): bool =


  fQComboBox_virtualbase_event(self.h, event.h)

type QComboBoxeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QComboBox, slot: proc(super: QComboBoxeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_event(self: ptr cQComboBox, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QComboBox_event ".} =
  type Cb = proc(super: QComboBoxeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QComboBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_inputMethodQuery(self: QComboBox, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQComboBox_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QComboBoxinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QComboBox, slot: proc(super: QComboBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_inputMethodQuery(self: ptr cQComboBox, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QComboBox_inputMethodQuery ".} =
  type Cb = proc(super: QComboBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QComboBox(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusInEvent(self: QComboBox, e: gen_qevent.QFocusEvent): void =


  fQComboBox_virtualbase_focusInEvent(self.h, e.h)

type QComboBoxfocusInEventBase* = proc(e: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QComboBox, slot: proc(super: QComboBoxfocusInEventBase, e: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxfocusInEventBase, e: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_focusInEvent(self: ptr cQComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QComboBox_focusInEvent ".} =
  type Cb = proc(super: QComboBoxfocusInEventBase, e: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QComboBox(h: self), e)
  let slotval1 = gen_qevent.QFocusEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QComboBox, e: gen_qevent.QFocusEvent): void =


  fQComboBox_virtualbase_focusOutEvent(self.h, e.h)

type QComboBoxfocusOutEventBase* = proc(e: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QComboBox, slot: proc(super: QComboBoxfocusOutEventBase, e: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxfocusOutEventBase, e: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_focusOutEvent(self: ptr cQComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QComboBox_focusOutEvent ".} =
  type Cb = proc(super: QComboBoxfocusOutEventBase, e: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QComboBox(h: self), e)
  let slotval1 = gen_qevent.QFocusEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QComboBox, e: gen_qcoreevent.QEvent): void =


  fQComboBox_virtualbase_changeEvent(self.h, e.h)

type QComboBoxchangeEventBase* = proc(e: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QComboBox, slot: proc(super: QComboBoxchangeEventBase, e: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxchangeEventBase, e: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_changeEvent(self: ptr cQComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QComboBox_changeEvent ".} =
  type Cb = proc(super: QComboBoxchangeEventBase, e: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QComboBox(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QComboBox, e: gen_qevent.QResizeEvent): void =


  fQComboBox_virtualbase_resizeEvent(self.h, e.h)

type QComboBoxresizeEventBase* = proc(e: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QComboBox, slot: proc(super: QComboBoxresizeEventBase, e: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxresizeEventBase, e: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_resizeEvent(self: ptr cQComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QComboBox_resizeEvent ".} =
  type Cb = proc(super: QComboBoxresizeEventBase, e: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QComboBox(h: self), e)
  let slotval1 = gen_qevent.QResizeEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QComboBox, e: gen_qevent.QPaintEvent): void =


  fQComboBox_virtualbase_paintEvent(self.h, e.h)

type QComboBoxpaintEventBase* = proc(e: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QComboBox, slot: proc(super: QComboBoxpaintEventBase, e: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxpaintEventBase, e: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_paintEvent(self: ptr cQComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QComboBox_paintEvent ".} =
  type Cb = proc(super: QComboBoxpaintEventBase, e: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QComboBox(h: self), e)
  let slotval1 = gen_qevent.QPaintEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QComboBox, e: gen_qevent.QShowEvent): void =


  fQComboBox_virtualbase_showEvent(self.h, e.h)

type QComboBoxshowEventBase* = proc(e: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QComboBox, slot: proc(super: QComboBoxshowEventBase, e: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxshowEventBase, e: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_showEvent(self: ptr cQComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QComboBox_showEvent ".} =
  type Cb = proc(super: QComboBoxshowEventBase, e: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QComboBox(h: self), e)
  let slotval1 = gen_qevent.QShowEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QComboBox, e: gen_qevent.QHideEvent): void =


  fQComboBox_virtualbase_hideEvent(self.h, e.h)

type QComboBoxhideEventBase* = proc(e: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QComboBox, slot: proc(super: QComboBoxhideEventBase, e: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxhideEventBase, e: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_hideEvent(self: ptr cQComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QComboBox_hideEvent ".} =
  type Cb = proc(super: QComboBoxhideEventBase, e: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QComboBox(h: self), e)
  let slotval1 = gen_qevent.QHideEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QComboBox, e: gen_qevent.QMouseEvent): void =


  fQComboBox_virtualbase_mousePressEvent(self.h, e.h)

type QComboBoxmousePressEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QComboBox, slot: proc(super: QComboBoxmousePressEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxmousePressEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_mousePressEvent(self: ptr cQComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QComboBox_mousePressEvent ".} =
  type Cb = proc(super: QComboBoxmousePressEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QComboBox(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QComboBox, e: gen_qevent.QMouseEvent): void =


  fQComboBox_virtualbase_mouseReleaseEvent(self.h, e.h)

type QComboBoxmouseReleaseEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QComboBox, slot: proc(super: QComboBoxmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_mouseReleaseEvent(self: ptr cQComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QComboBox_mouseReleaseEvent ".} =
  type Cb = proc(super: QComboBoxmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QComboBox(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QComboBox, e: gen_qevent.QKeyEvent): void =


  fQComboBox_virtualbase_keyPressEvent(self.h, e.h)

type QComboBoxkeyPressEventBase* = proc(e: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QComboBox, slot: proc(super: QComboBoxkeyPressEventBase, e: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxkeyPressEventBase, e: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_keyPressEvent(self: ptr cQComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QComboBox_keyPressEvent ".} =
  type Cb = proc(super: QComboBoxkeyPressEventBase, e: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QComboBox(h: self), e)
  let slotval1 = gen_qevent.QKeyEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QComboBox, e: gen_qevent.QKeyEvent): void =


  fQComboBox_virtualbase_keyReleaseEvent(self.h, e.h)

type QComboBoxkeyReleaseEventBase* = proc(e: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QComboBox, slot: proc(super: QComboBoxkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_keyReleaseEvent(self: ptr cQComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QComboBox_keyReleaseEvent ".} =
  type Cb = proc(super: QComboBoxkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QComboBox(h: self), e)
  let slotval1 = gen_qevent.QKeyEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QComboBox, e: gen_qevent.QWheelEvent): void =


  fQComboBox_virtualbase_wheelEvent(self.h, e.h)

type QComboBoxwheelEventBase* = proc(e: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QComboBox, slot: proc(super: QComboBoxwheelEventBase, e: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxwheelEventBase, e: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_wheelEvent(self: ptr cQComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QComboBox_wheelEvent ".} =
  type Cb = proc(super: QComboBoxwheelEventBase, e: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QComboBox(h: self), e)
  let slotval1 = gen_qevent.QWheelEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QComboBox, e: gen_qevent.QContextMenuEvent): void =


  fQComboBox_virtualbase_contextMenuEvent(self.h, e.h)

type QComboBoxcontextMenuEventBase* = proc(e: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QComboBox, slot: proc(super: QComboBoxcontextMenuEventBase, e: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxcontextMenuEventBase, e: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_contextMenuEvent(self: ptr cQComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QComboBox_contextMenuEvent ".} =
  type Cb = proc(super: QComboBoxcontextMenuEventBase, e: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QComboBox(h: self), e)
  let slotval1 = gen_qevent.QContextMenuEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QComboBox, param1: gen_qevent.QInputMethodEvent): void =


  fQComboBox_virtualbase_inputMethodEvent(self.h, param1.h)

type QComboBoxinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QComboBox, slot: proc(super: QComboBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_inputMethodEvent(self: ptr cQComboBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QComboBox_inputMethodEvent ".} =
  type Cb = proc(super: QComboBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QComboBox(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QComboBox, ): cint =


  fQComboBox_virtualbase_devType(self.h)

type QComboBoxdevTypeBase* = proc(): cint
proc ondevType*(self: QComboBox, slot: proc(super: QComboBoxdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_devType(self: ptr cQComboBox, slot: int): cint {.exportc: "miqt_exec_callback_QComboBox_devType ".} =
  type Cb = proc(super: QComboBoxdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QComboBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QComboBox, visible: bool): void =


  fQComboBox_virtualbase_setVisible(self.h, visible)

type QComboBoxsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QComboBox, slot: proc(super: QComboBoxsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_setVisible(self: ptr cQComboBox, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QComboBox_setVisible ".} =
  type Cb = proc(super: QComboBoxsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QComboBox(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QComboBox, param1: cint): cint =


  fQComboBox_virtualbase_heightForWidth(self.h, param1)

type QComboBoxheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QComboBox, slot: proc(super: QComboBoxheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_heightForWidth(self: ptr cQComboBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QComboBox_heightForWidth ".} =
  type Cb = proc(super: QComboBoxheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QComboBox(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QComboBox, ): bool =


  fQComboBox_virtualbase_hasHeightForWidth(self.h)

type QComboBoxhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QComboBox, slot: proc(super: QComboBoxhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_hasHeightForWidth(self: ptr cQComboBox, slot: int): bool {.exportc: "miqt_exec_callback_QComboBox_hasHeightForWidth ".} =
  type Cb = proc(super: QComboBoxhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QComboBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QComboBox, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQComboBox_virtualbase_paintEngine(self.h))

type QComboBoxpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QComboBox, slot: proc(super: QComboBoxpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_paintEngine(self: ptr cQComboBox, slot: int): pointer {.exportc: "miqt_exec_callback_QComboBox_paintEngine ".} =
  type Cb = proc(super: QComboBoxpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QComboBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mouseDoubleClickEvent(self: QComboBox, event: gen_qevent.QMouseEvent): void =


  fQComboBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QComboBoxmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QComboBox, slot: proc(super: QComboBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_mouseDoubleClickEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QComboBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QComboBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QComboBox, event: gen_qevent.QMouseEvent): void =


  fQComboBox_virtualbase_mouseMoveEvent(self.h, event.h)

type QComboBoxmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QComboBox, slot: proc(super: QComboBoxmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_mouseMoveEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_mouseMoveEvent ".} =
  type Cb = proc(super: QComboBoxmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QComboBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QComboBox, event: gen_qcoreevent.QEvent): void =


  fQComboBox_virtualbase_enterEvent(self.h, event.h)

type QComboBoxenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QComboBox, slot: proc(super: QComboBoxenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_enterEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_enterEvent ".} =
  type Cb = proc(super: QComboBoxenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QComboBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QComboBox, event: gen_qcoreevent.QEvent): void =


  fQComboBox_virtualbase_leaveEvent(self.h, event.h)

type QComboBoxleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QComboBox, slot: proc(super: QComboBoxleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_leaveEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_leaveEvent ".} =
  type Cb = proc(super: QComboBoxleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QComboBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QComboBox, event: gen_qevent.QMoveEvent): void =


  fQComboBox_virtualbase_moveEvent(self.h, event.h)

type QComboBoxmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QComboBox, slot: proc(super: QComboBoxmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_moveEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_moveEvent ".} =
  type Cb = proc(super: QComboBoxmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QComboBox(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QComboBox, event: gen_qevent.QCloseEvent): void =


  fQComboBox_virtualbase_closeEvent(self.h, event.h)

type QComboBoxcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QComboBox, slot: proc(super: QComboBoxcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_closeEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_closeEvent ".} =
  type Cb = proc(super: QComboBoxcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QComboBox(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QComboBox, event: gen_qevent.QTabletEvent): void =


  fQComboBox_virtualbase_tabletEvent(self.h, event.h)

type QComboBoxtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QComboBox, slot: proc(super: QComboBoxtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_tabletEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_tabletEvent ".} =
  type Cb = proc(super: QComboBoxtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QComboBox(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QComboBox, event: gen_qevent.QActionEvent): void =


  fQComboBox_virtualbase_actionEvent(self.h, event.h)

type QComboBoxactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QComboBox, slot: proc(super: QComboBoxactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_actionEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_actionEvent ".} =
  type Cb = proc(super: QComboBoxactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QComboBox(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QComboBox, event: gen_qevent.QDragEnterEvent): void =


  fQComboBox_virtualbase_dragEnterEvent(self.h, event.h)

type QComboBoxdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QComboBox, slot: proc(super: QComboBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_dragEnterEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_dragEnterEvent ".} =
  type Cb = proc(super: QComboBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QComboBox(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QComboBox, event: gen_qevent.QDragMoveEvent): void =


  fQComboBox_virtualbase_dragMoveEvent(self.h, event.h)

type QComboBoxdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QComboBox, slot: proc(super: QComboBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_dragMoveEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_dragMoveEvent ".} =
  type Cb = proc(super: QComboBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QComboBox(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QComboBox, event: gen_qevent.QDragLeaveEvent): void =


  fQComboBox_virtualbase_dragLeaveEvent(self.h, event.h)

type QComboBoxdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QComboBox, slot: proc(super: QComboBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_dragLeaveEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_dragLeaveEvent ".} =
  type Cb = proc(super: QComboBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QComboBox(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QComboBox, event: gen_qevent.QDropEvent): void =


  fQComboBox_virtualbase_dropEvent(self.h, event.h)

type QComboBoxdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QComboBox, slot: proc(super: QComboBoxdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_dropEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_dropEvent ".} =
  type Cb = proc(super: QComboBoxdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QComboBox(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QComboBox, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQComboBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QComboBoxnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QComboBox, slot: proc(super: QComboBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_nativeEvent(self: ptr cQComboBox, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QComboBox_nativeEvent ".} =
  type Cb = proc(super: QComboBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QComboBox(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QComboBox, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQComboBox_virtualbase_metric(self.h, cint(param1))

type QComboBoxmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QComboBox, slot: proc(super: QComboBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_metric(self: ptr cQComboBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QComboBox_metric ".} =
  type Cb = proc(super: QComboBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QComboBox(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QComboBox, painter: gen_qpainter.QPainter): void =


  fQComboBox_virtualbase_initPainter(self.h, painter.h)

type QComboBoxinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QComboBox, slot: proc(super: QComboBoxinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_initPainter(self: ptr cQComboBox, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QComboBox_initPainter ".} =
  type Cb = proc(super: QComboBoxinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QComboBox(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QComboBox, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQComboBox_virtualbase_redirected(self.h, offset.h))

type QComboBoxredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QComboBox, slot: proc(super: QComboBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_redirected(self: ptr cQComboBox, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QComboBox_redirected ".} =
  type Cb = proc(super: QComboBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QComboBox(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QComboBox, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQComboBox_virtualbase_sharedPainter(self.h))

type QComboBoxsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QComboBox, slot: proc(super: QComboBoxsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_sharedPainter(self: ptr cQComboBox, slot: int): pointer {.exportc: "miqt_exec_callback_QComboBox_sharedPainter ".} =
  type Cb = proc(super: QComboBoxsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QComboBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QComboBox, next: bool): bool =


  fQComboBox_virtualbase_focusNextPrevChild(self.h, next)

type QComboBoxfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QComboBox, slot: proc(super: QComboBoxfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_focusNextPrevChild(self: ptr cQComboBox, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QComboBox_focusNextPrevChild ".} =
  type Cb = proc(super: QComboBoxfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QComboBox(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QComboBox, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQComboBox_virtualbase_eventFilter(self.h, watched.h, event.h)

type QComboBoxeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QComboBox, slot: proc(super: QComboBoxeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_eventFilter(self: ptr cQComboBox, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QComboBox_eventFilter ".} =
  type Cb = proc(super: QComboBoxeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QComboBox(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QComboBox, event: gen_qcoreevent.QTimerEvent): void =


  fQComboBox_virtualbase_timerEvent(self.h, event.h)

type QComboBoxtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QComboBox, slot: proc(super: QComboBoxtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_timerEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_timerEvent ".} =
  type Cb = proc(super: QComboBoxtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QComboBox(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QComboBox, event: gen_qcoreevent.QChildEvent): void =


  fQComboBox_virtualbase_childEvent(self.h, event.h)

type QComboBoxchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QComboBox, slot: proc(super: QComboBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_childEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_childEvent ".} =
  type Cb = proc(super: QComboBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QComboBox(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QComboBox, event: gen_qcoreevent.QEvent): void =


  fQComboBox_virtualbase_customEvent(self.h, event.h)

type QComboBoxcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QComboBox, slot: proc(super: QComboBoxcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_customEvent(self: ptr cQComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QComboBox_customEvent ".} =
  type Cb = proc(super: QComboBoxcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QComboBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QComboBox, signal: gen_qmetaobject.QMetaMethod): void =


  fQComboBox_virtualbase_connectNotify(self.h, signal.h)

type QComboBoxconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QComboBox, slot: proc(super: QComboBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_connectNotify(self: ptr cQComboBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QComboBox_connectNotify ".} =
  type Cb = proc(super: QComboBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QComboBox(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QComboBox, signal: gen_qmetaobject.QMetaMethod): void =


  fQComboBox_virtualbase_disconnectNotify(self.h, signal.h)

type QComboBoxdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QComboBox, slot: proc(super: QComboBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QComboBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQComboBox_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QComboBox_disconnectNotify(self: ptr cQComboBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QComboBox_disconnectNotify ".} =
  type Cb = proc(super: QComboBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QComboBox(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QComboBox): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQComboBox_staticMetaObject())
proc delete*(self: QComboBox) =
  fcQComboBox_delete(self.h)
