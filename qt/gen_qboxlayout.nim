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
{.compile("gen_qboxlayout.cpp", cflags).}


type QBoxLayoutDirection* = cint
const
  QBoxLayoutLeftToRight* = 0
  QBoxLayoutRightToLeft* = 1
  QBoxLayoutTopToBottom* = 2
  QBoxLayoutBottomToTop* = 3
  QBoxLayoutDown* = 2
  QBoxLayoutUp* = 3



import gen_qboxlayout_types
export gen_qboxlayout_types

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

type cQBoxLayout*{.exportc: "QBoxLayout", incompleteStruct.} = object
type cQHBoxLayout*{.exportc: "QHBoxLayout", incompleteStruct.} = object
type cQVBoxLayout*{.exportc: "QVBoxLayout", incompleteStruct.} = object

proc fcQBoxLayout_new(param1: cint): ptr cQBoxLayout {.importc: "QBoxLayout_new".}
proc fcQBoxLayout_new2(param1: cint, parent: pointer): ptr cQBoxLayout {.importc: "QBoxLayout_new2".}
proc fcQBoxLayout_metaObject(self: pointer, ): pointer {.importc: "QBoxLayout_metaObject".}
proc fcQBoxLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QBoxLayout_metacast".}
proc fcQBoxLayout_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QBoxLayout_metacall".}
proc fcQBoxLayout_tr(s: cstring): struct_miqt_string {.importc: "QBoxLayout_tr".}
proc fcQBoxLayout_trUtf8(s: cstring): struct_miqt_string {.importc: "QBoxLayout_trUtf8".}
proc fcQBoxLayout_direction(self: pointer, ): cint {.importc: "QBoxLayout_direction".}
proc fcQBoxLayout_setDirection(self: pointer, direction: cint): void {.importc: "QBoxLayout_setDirection".}
proc fcQBoxLayout_addSpacing(self: pointer, size: cint): void {.importc: "QBoxLayout_addSpacing".}
proc fcQBoxLayout_addStretch(self: pointer, ): void {.importc: "QBoxLayout_addStretch".}
proc fcQBoxLayout_addSpacerItem(self: pointer, spacerItem: pointer): void {.importc: "QBoxLayout_addSpacerItem".}
proc fcQBoxLayout_addWidget(self: pointer, param1: pointer): void {.importc: "QBoxLayout_addWidget".}
proc fcQBoxLayout_addLayout(self: pointer, layout: pointer): void {.importc: "QBoxLayout_addLayout".}
proc fcQBoxLayout_addStrut(self: pointer, param1: cint): void {.importc: "QBoxLayout_addStrut".}
proc fcQBoxLayout_addItem(self: pointer, param1: pointer): void {.importc: "QBoxLayout_addItem".}
proc fcQBoxLayout_insertSpacing(self: pointer, index: cint, size: cint): void {.importc: "QBoxLayout_insertSpacing".}
proc fcQBoxLayout_insertStretch(self: pointer, index: cint): void {.importc: "QBoxLayout_insertStretch".}
proc fcQBoxLayout_insertSpacerItem(self: pointer, index: cint, spacerItem: pointer): void {.importc: "QBoxLayout_insertSpacerItem".}
proc fcQBoxLayout_insertWidget(self: pointer, index: cint, widget: pointer): void {.importc: "QBoxLayout_insertWidget".}
proc fcQBoxLayout_insertLayout(self: pointer, index: cint, layout: pointer): void {.importc: "QBoxLayout_insertLayout".}
proc fcQBoxLayout_insertItem(self: pointer, index: cint, param2: pointer): void {.importc: "QBoxLayout_insertItem".}
proc fcQBoxLayout_spacing(self: pointer, ): cint {.importc: "QBoxLayout_spacing".}
proc fcQBoxLayout_setSpacing(self: pointer, spacing: cint): void {.importc: "QBoxLayout_setSpacing".}
proc fcQBoxLayout_setStretchFactor(self: pointer, w: pointer, stretch: cint): bool {.importc: "QBoxLayout_setStretchFactor".}
proc fcQBoxLayout_setStretchFactor2(self: pointer, l: pointer, stretch: cint): bool {.importc: "QBoxLayout_setStretchFactor2".}
proc fcQBoxLayout_setStretch(self: pointer, index: cint, stretch: cint): void {.importc: "QBoxLayout_setStretch".}
proc fcQBoxLayout_stretch(self: pointer, index: cint): cint {.importc: "QBoxLayout_stretch".}
proc fcQBoxLayout_sizeHint(self: pointer, ): pointer {.importc: "QBoxLayout_sizeHint".}
proc fcQBoxLayout_minimumSize(self: pointer, ): pointer {.importc: "QBoxLayout_minimumSize".}
proc fcQBoxLayout_maximumSize(self: pointer, ): pointer {.importc: "QBoxLayout_maximumSize".}
proc fcQBoxLayout_hasHeightForWidth(self: pointer, ): bool {.importc: "QBoxLayout_hasHeightForWidth".}
proc fcQBoxLayout_heightForWidth(self: pointer, param1: cint): cint {.importc: "QBoxLayout_heightForWidth".}
proc fcQBoxLayout_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QBoxLayout_minimumHeightForWidth".}
proc fcQBoxLayout_expandingDirections(self: pointer, ): cint {.importc: "QBoxLayout_expandingDirections".}
proc fcQBoxLayout_invalidate(self: pointer, ): void {.importc: "QBoxLayout_invalidate".}
proc fcQBoxLayout_itemAt(self: pointer, param1: cint): pointer {.importc: "QBoxLayout_itemAt".}
proc fcQBoxLayout_takeAt(self: pointer, param1: cint): pointer {.importc: "QBoxLayout_takeAt".}
proc fcQBoxLayout_count(self: pointer, ): cint {.importc: "QBoxLayout_count".}
proc fcQBoxLayout_setGeometry(self: pointer, geometry: pointer): void {.importc: "QBoxLayout_setGeometry".}
proc fcQBoxLayout_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QBoxLayout_tr2".}
proc fcQBoxLayout_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QBoxLayout_tr3".}
proc fcQBoxLayout_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QBoxLayout_trUtf82".}
proc fcQBoxLayout_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QBoxLayout_trUtf83".}
proc fcQBoxLayout_addStretch1(self: pointer, stretch: cint): void {.importc: "QBoxLayout_addStretch1".}
proc fcQBoxLayout_addWidget2(self: pointer, param1: pointer, stretch: cint): void {.importc: "QBoxLayout_addWidget2".}
proc fcQBoxLayout_addWidget3(self: pointer, param1: pointer, stretch: cint, alignment: cint): void {.importc: "QBoxLayout_addWidget3".}
proc fcQBoxLayout_addLayout2(self: pointer, layout: pointer, stretch: cint): void {.importc: "QBoxLayout_addLayout2".}
proc fcQBoxLayout_insertStretch2(self: pointer, index: cint, stretch: cint): void {.importc: "QBoxLayout_insertStretch2".}
proc fcQBoxLayout_insertWidget3(self: pointer, index: cint, widget: pointer, stretch: cint): void {.importc: "QBoxLayout_insertWidget3".}
proc fcQBoxLayout_insertWidget4(self: pointer, index: cint, widget: pointer, stretch: cint, alignment: cint): void {.importc: "QBoxLayout_insertWidget4".}
proc fcQBoxLayout_insertLayout3(self: pointer, index: cint, layout: pointer, stretch: cint): void {.importc: "QBoxLayout_insertLayout3".}
proc fQBoxLayout_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QBoxLayout_virtualbase_metacall".}
proc fcQBoxLayout_override_virtual_metacall(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_metacall".}
proc fQBoxLayout_virtualbase_addItem(self: pointer, param1: pointer): void{.importc: "QBoxLayout_virtualbase_addItem".}
proc fcQBoxLayout_override_virtual_addItem(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_addItem".}
proc fQBoxLayout_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QBoxLayout_virtualbase_sizeHint".}
proc fcQBoxLayout_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_sizeHint".}
proc fQBoxLayout_virtualbase_minimumSize(self: pointer, ): pointer{.importc: "QBoxLayout_virtualbase_minimumSize".}
proc fcQBoxLayout_override_virtual_minimumSize(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_minimumSize".}
proc fQBoxLayout_virtualbase_maximumSize(self: pointer, ): pointer{.importc: "QBoxLayout_virtualbase_maximumSize".}
proc fcQBoxLayout_override_virtual_maximumSize(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_maximumSize".}
proc fQBoxLayout_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QBoxLayout_virtualbase_hasHeightForWidth".}
proc fcQBoxLayout_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_hasHeightForWidth".}
proc fQBoxLayout_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QBoxLayout_virtualbase_heightForWidth".}
proc fcQBoxLayout_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_heightForWidth".}
proc fQBoxLayout_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint{.importc: "QBoxLayout_virtualbase_minimumHeightForWidth".}
proc fcQBoxLayout_override_virtual_minimumHeightForWidth(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_minimumHeightForWidth".}
proc fQBoxLayout_virtualbase_expandingDirections(self: pointer, ): cint{.importc: "QBoxLayout_virtualbase_expandingDirections".}
proc fcQBoxLayout_override_virtual_expandingDirections(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_expandingDirections".}
proc fQBoxLayout_virtualbase_invalidate(self: pointer, ): void{.importc: "QBoxLayout_virtualbase_invalidate".}
proc fcQBoxLayout_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_invalidate".}
proc fQBoxLayout_virtualbase_itemAt(self: pointer, param1: cint): pointer{.importc: "QBoxLayout_virtualbase_itemAt".}
proc fcQBoxLayout_override_virtual_itemAt(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_itemAt".}
proc fQBoxLayout_virtualbase_takeAt(self: pointer, param1: cint): pointer{.importc: "QBoxLayout_virtualbase_takeAt".}
proc fcQBoxLayout_override_virtual_takeAt(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_takeAt".}
proc fQBoxLayout_virtualbase_count(self: pointer, ): cint{.importc: "QBoxLayout_virtualbase_count".}
proc fcQBoxLayout_override_virtual_count(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_count".}
proc fQBoxLayout_virtualbase_setGeometry(self: pointer, geometry: pointer): void{.importc: "QBoxLayout_virtualbase_setGeometry".}
proc fcQBoxLayout_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_setGeometry".}
proc fQBoxLayout_virtualbase_geometry(self: pointer, ): pointer{.importc: "QBoxLayout_virtualbase_geometry".}
proc fcQBoxLayout_override_virtual_geometry(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_geometry".}
proc fQBoxLayout_virtualbase_indexOf(self: pointer, param1: pointer): cint{.importc: "QBoxLayout_virtualbase_indexOf".}
proc fcQBoxLayout_override_virtual_indexOf(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_indexOf".}
proc fQBoxLayout_virtualbase_isEmpty(self: pointer, ): bool{.importc: "QBoxLayout_virtualbase_isEmpty".}
proc fcQBoxLayout_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_isEmpty".}
proc fQBoxLayout_virtualbase_controlTypes(self: pointer, ): cint{.importc: "QBoxLayout_virtualbase_controlTypes".}
proc fcQBoxLayout_override_virtual_controlTypes(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_controlTypes".}
proc fQBoxLayout_virtualbase_layout(self: pointer, ): pointer{.importc: "QBoxLayout_virtualbase_layout".}
proc fcQBoxLayout_override_virtual_layout(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_layout".}
proc fQBoxLayout_virtualbase_childEvent(self: pointer, e: pointer): void{.importc: "QBoxLayout_virtualbase_childEvent".}
proc fcQBoxLayout_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_childEvent".}
proc fQBoxLayout_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QBoxLayout_virtualbase_event".}
proc fcQBoxLayout_override_virtual_event(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_event".}
proc fQBoxLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QBoxLayout_virtualbase_eventFilter".}
proc fcQBoxLayout_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_eventFilter".}
proc fQBoxLayout_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QBoxLayout_virtualbase_timerEvent".}
proc fcQBoxLayout_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_timerEvent".}
proc fQBoxLayout_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QBoxLayout_virtualbase_customEvent".}
proc fcQBoxLayout_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_customEvent".}
proc fQBoxLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QBoxLayout_virtualbase_connectNotify".}
proc fcQBoxLayout_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_connectNotify".}
proc fQBoxLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QBoxLayout_virtualbase_disconnectNotify".}
proc fcQBoxLayout_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_disconnectNotify".}
proc fQBoxLayout_virtualbase_widget(self: pointer, ): pointer{.importc: "QBoxLayout_virtualbase_widget".}
proc fcQBoxLayout_override_virtual_widget(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_widget".}
proc fQBoxLayout_virtualbase_spacerItem(self: pointer, ): pointer{.importc: "QBoxLayout_virtualbase_spacerItem".}
proc fcQBoxLayout_override_virtual_spacerItem(self: pointer, slot: int) {.importc: "QBoxLayout_override_virtual_spacerItem".}
proc fcQBoxLayout_delete(self: pointer) {.importc: "QBoxLayout_delete".}
proc fcQHBoxLayout_new(parent: pointer): ptr cQHBoxLayout {.importc: "QHBoxLayout_new".}
proc fcQHBoxLayout_new2(): ptr cQHBoxLayout {.importc: "QHBoxLayout_new2".}
proc fcQHBoxLayout_metaObject(self: pointer, ): pointer {.importc: "QHBoxLayout_metaObject".}
proc fcQHBoxLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QHBoxLayout_metacast".}
proc fcQHBoxLayout_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QHBoxLayout_metacall".}
proc fcQHBoxLayout_tr(s: cstring): struct_miqt_string {.importc: "QHBoxLayout_tr".}
proc fcQHBoxLayout_trUtf8(s: cstring): struct_miqt_string {.importc: "QHBoxLayout_trUtf8".}
proc fcQHBoxLayout_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QHBoxLayout_tr2".}
proc fcQHBoxLayout_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QHBoxLayout_tr3".}
proc fcQHBoxLayout_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QHBoxLayout_trUtf82".}
proc fcQHBoxLayout_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QHBoxLayout_trUtf83".}
proc fQHBoxLayout_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QHBoxLayout_virtualbase_metacall".}
proc fcQHBoxLayout_override_virtual_metacall(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_metacall".}
proc fQHBoxLayout_virtualbase_addItem(self: pointer, param1: pointer): void{.importc: "QHBoxLayout_virtualbase_addItem".}
proc fcQHBoxLayout_override_virtual_addItem(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_addItem".}
proc fQHBoxLayout_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QHBoxLayout_virtualbase_sizeHint".}
proc fcQHBoxLayout_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_sizeHint".}
proc fQHBoxLayout_virtualbase_minimumSize(self: pointer, ): pointer{.importc: "QHBoxLayout_virtualbase_minimumSize".}
proc fcQHBoxLayout_override_virtual_minimumSize(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_minimumSize".}
proc fQHBoxLayout_virtualbase_maximumSize(self: pointer, ): pointer{.importc: "QHBoxLayout_virtualbase_maximumSize".}
proc fcQHBoxLayout_override_virtual_maximumSize(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_maximumSize".}
proc fQHBoxLayout_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QHBoxLayout_virtualbase_hasHeightForWidth".}
proc fcQHBoxLayout_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_hasHeightForWidth".}
proc fQHBoxLayout_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QHBoxLayout_virtualbase_heightForWidth".}
proc fcQHBoxLayout_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_heightForWidth".}
proc fQHBoxLayout_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint{.importc: "QHBoxLayout_virtualbase_minimumHeightForWidth".}
proc fcQHBoxLayout_override_virtual_minimumHeightForWidth(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_minimumHeightForWidth".}
proc fQHBoxLayout_virtualbase_expandingDirections(self: pointer, ): cint{.importc: "QHBoxLayout_virtualbase_expandingDirections".}
proc fcQHBoxLayout_override_virtual_expandingDirections(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_expandingDirections".}
proc fQHBoxLayout_virtualbase_invalidate(self: pointer, ): void{.importc: "QHBoxLayout_virtualbase_invalidate".}
proc fcQHBoxLayout_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_invalidate".}
proc fQHBoxLayout_virtualbase_itemAt(self: pointer, param1: cint): pointer{.importc: "QHBoxLayout_virtualbase_itemAt".}
proc fcQHBoxLayout_override_virtual_itemAt(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_itemAt".}
proc fQHBoxLayout_virtualbase_takeAt(self: pointer, param1: cint): pointer{.importc: "QHBoxLayout_virtualbase_takeAt".}
proc fcQHBoxLayout_override_virtual_takeAt(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_takeAt".}
proc fQHBoxLayout_virtualbase_count(self: pointer, ): cint{.importc: "QHBoxLayout_virtualbase_count".}
proc fcQHBoxLayout_override_virtual_count(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_count".}
proc fQHBoxLayout_virtualbase_setGeometry(self: pointer, geometry: pointer): void{.importc: "QHBoxLayout_virtualbase_setGeometry".}
proc fcQHBoxLayout_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_setGeometry".}
proc fQHBoxLayout_virtualbase_geometry(self: pointer, ): pointer{.importc: "QHBoxLayout_virtualbase_geometry".}
proc fcQHBoxLayout_override_virtual_geometry(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_geometry".}
proc fQHBoxLayout_virtualbase_indexOf(self: pointer, param1: pointer): cint{.importc: "QHBoxLayout_virtualbase_indexOf".}
proc fcQHBoxLayout_override_virtual_indexOf(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_indexOf".}
proc fQHBoxLayout_virtualbase_isEmpty(self: pointer, ): bool{.importc: "QHBoxLayout_virtualbase_isEmpty".}
proc fcQHBoxLayout_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_isEmpty".}
proc fQHBoxLayout_virtualbase_controlTypes(self: pointer, ): cint{.importc: "QHBoxLayout_virtualbase_controlTypes".}
proc fcQHBoxLayout_override_virtual_controlTypes(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_controlTypes".}
proc fQHBoxLayout_virtualbase_layout(self: pointer, ): pointer{.importc: "QHBoxLayout_virtualbase_layout".}
proc fcQHBoxLayout_override_virtual_layout(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_layout".}
proc fQHBoxLayout_virtualbase_childEvent(self: pointer, e: pointer): void{.importc: "QHBoxLayout_virtualbase_childEvent".}
proc fcQHBoxLayout_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_childEvent".}
proc fQHBoxLayout_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QHBoxLayout_virtualbase_event".}
proc fcQHBoxLayout_override_virtual_event(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_event".}
proc fQHBoxLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QHBoxLayout_virtualbase_eventFilter".}
proc fcQHBoxLayout_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_eventFilter".}
proc fQHBoxLayout_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QHBoxLayout_virtualbase_timerEvent".}
proc fcQHBoxLayout_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_timerEvent".}
proc fQHBoxLayout_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QHBoxLayout_virtualbase_customEvent".}
proc fcQHBoxLayout_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_customEvent".}
proc fQHBoxLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QHBoxLayout_virtualbase_connectNotify".}
proc fcQHBoxLayout_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_connectNotify".}
proc fQHBoxLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QHBoxLayout_virtualbase_disconnectNotify".}
proc fcQHBoxLayout_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_disconnectNotify".}
proc fQHBoxLayout_virtualbase_widget(self: pointer, ): pointer{.importc: "QHBoxLayout_virtualbase_widget".}
proc fcQHBoxLayout_override_virtual_widget(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_widget".}
proc fQHBoxLayout_virtualbase_spacerItem(self: pointer, ): pointer{.importc: "QHBoxLayout_virtualbase_spacerItem".}
proc fcQHBoxLayout_override_virtual_spacerItem(self: pointer, slot: int) {.importc: "QHBoxLayout_override_virtual_spacerItem".}
proc fcQHBoxLayout_delete(self: pointer) {.importc: "QHBoxLayout_delete".}
proc fcQVBoxLayout_new(parent: pointer): ptr cQVBoxLayout {.importc: "QVBoxLayout_new".}
proc fcQVBoxLayout_new2(): ptr cQVBoxLayout {.importc: "QVBoxLayout_new2".}
proc fcQVBoxLayout_metaObject(self: pointer, ): pointer {.importc: "QVBoxLayout_metaObject".}
proc fcQVBoxLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QVBoxLayout_metacast".}
proc fcQVBoxLayout_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVBoxLayout_metacall".}
proc fcQVBoxLayout_tr(s: cstring): struct_miqt_string {.importc: "QVBoxLayout_tr".}
proc fcQVBoxLayout_trUtf8(s: cstring): struct_miqt_string {.importc: "QVBoxLayout_trUtf8".}
proc fcQVBoxLayout_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QVBoxLayout_tr2".}
proc fcQVBoxLayout_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVBoxLayout_tr3".}
proc fcQVBoxLayout_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QVBoxLayout_trUtf82".}
proc fcQVBoxLayout_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVBoxLayout_trUtf83".}
proc fQVBoxLayout_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QVBoxLayout_virtualbase_metacall".}
proc fcQVBoxLayout_override_virtual_metacall(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_metacall".}
proc fQVBoxLayout_virtualbase_addItem(self: pointer, param1: pointer): void{.importc: "QVBoxLayout_virtualbase_addItem".}
proc fcQVBoxLayout_override_virtual_addItem(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_addItem".}
proc fQVBoxLayout_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QVBoxLayout_virtualbase_sizeHint".}
proc fcQVBoxLayout_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_sizeHint".}
proc fQVBoxLayout_virtualbase_minimumSize(self: pointer, ): pointer{.importc: "QVBoxLayout_virtualbase_minimumSize".}
proc fcQVBoxLayout_override_virtual_minimumSize(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_minimumSize".}
proc fQVBoxLayout_virtualbase_maximumSize(self: pointer, ): pointer{.importc: "QVBoxLayout_virtualbase_maximumSize".}
proc fcQVBoxLayout_override_virtual_maximumSize(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_maximumSize".}
proc fQVBoxLayout_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QVBoxLayout_virtualbase_hasHeightForWidth".}
proc fcQVBoxLayout_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_hasHeightForWidth".}
proc fQVBoxLayout_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QVBoxLayout_virtualbase_heightForWidth".}
proc fcQVBoxLayout_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_heightForWidth".}
proc fQVBoxLayout_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint{.importc: "QVBoxLayout_virtualbase_minimumHeightForWidth".}
proc fcQVBoxLayout_override_virtual_minimumHeightForWidth(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_minimumHeightForWidth".}
proc fQVBoxLayout_virtualbase_expandingDirections(self: pointer, ): cint{.importc: "QVBoxLayout_virtualbase_expandingDirections".}
proc fcQVBoxLayout_override_virtual_expandingDirections(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_expandingDirections".}
proc fQVBoxLayout_virtualbase_invalidate(self: pointer, ): void{.importc: "QVBoxLayout_virtualbase_invalidate".}
proc fcQVBoxLayout_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_invalidate".}
proc fQVBoxLayout_virtualbase_itemAt(self: pointer, param1: cint): pointer{.importc: "QVBoxLayout_virtualbase_itemAt".}
proc fcQVBoxLayout_override_virtual_itemAt(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_itemAt".}
proc fQVBoxLayout_virtualbase_takeAt(self: pointer, param1: cint): pointer{.importc: "QVBoxLayout_virtualbase_takeAt".}
proc fcQVBoxLayout_override_virtual_takeAt(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_takeAt".}
proc fQVBoxLayout_virtualbase_count(self: pointer, ): cint{.importc: "QVBoxLayout_virtualbase_count".}
proc fcQVBoxLayout_override_virtual_count(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_count".}
proc fQVBoxLayout_virtualbase_setGeometry(self: pointer, geometry: pointer): void{.importc: "QVBoxLayout_virtualbase_setGeometry".}
proc fcQVBoxLayout_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_setGeometry".}
proc fQVBoxLayout_virtualbase_geometry(self: pointer, ): pointer{.importc: "QVBoxLayout_virtualbase_geometry".}
proc fcQVBoxLayout_override_virtual_geometry(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_geometry".}
proc fQVBoxLayout_virtualbase_indexOf(self: pointer, param1: pointer): cint{.importc: "QVBoxLayout_virtualbase_indexOf".}
proc fcQVBoxLayout_override_virtual_indexOf(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_indexOf".}
proc fQVBoxLayout_virtualbase_isEmpty(self: pointer, ): bool{.importc: "QVBoxLayout_virtualbase_isEmpty".}
proc fcQVBoxLayout_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_isEmpty".}
proc fQVBoxLayout_virtualbase_controlTypes(self: pointer, ): cint{.importc: "QVBoxLayout_virtualbase_controlTypes".}
proc fcQVBoxLayout_override_virtual_controlTypes(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_controlTypes".}
proc fQVBoxLayout_virtualbase_layout(self: pointer, ): pointer{.importc: "QVBoxLayout_virtualbase_layout".}
proc fcQVBoxLayout_override_virtual_layout(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_layout".}
proc fQVBoxLayout_virtualbase_childEvent(self: pointer, e: pointer): void{.importc: "QVBoxLayout_virtualbase_childEvent".}
proc fcQVBoxLayout_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_childEvent".}
proc fQVBoxLayout_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QVBoxLayout_virtualbase_event".}
proc fcQVBoxLayout_override_virtual_event(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_event".}
proc fQVBoxLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QVBoxLayout_virtualbase_eventFilter".}
proc fcQVBoxLayout_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_eventFilter".}
proc fQVBoxLayout_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QVBoxLayout_virtualbase_timerEvent".}
proc fcQVBoxLayout_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_timerEvent".}
proc fQVBoxLayout_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QVBoxLayout_virtualbase_customEvent".}
proc fcQVBoxLayout_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_customEvent".}
proc fQVBoxLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QVBoxLayout_virtualbase_connectNotify".}
proc fcQVBoxLayout_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_connectNotify".}
proc fQVBoxLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QVBoxLayout_virtualbase_disconnectNotify".}
proc fcQVBoxLayout_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_disconnectNotify".}
proc fQVBoxLayout_virtualbase_widget(self: pointer, ): pointer{.importc: "QVBoxLayout_virtualbase_widget".}
proc fcQVBoxLayout_override_virtual_widget(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_widget".}
proc fQVBoxLayout_virtualbase_spacerItem(self: pointer, ): pointer{.importc: "QVBoxLayout_virtualbase_spacerItem".}
proc fcQVBoxLayout_override_virtual_spacerItem(self: pointer, slot: int) {.importc: "QVBoxLayout_override_virtual_spacerItem".}
proc fcQVBoxLayout_delete(self: pointer) {.importc: "QVBoxLayout_delete".}


func init*(T: type QBoxLayout, h: ptr cQBoxLayout): QBoxLayout =
  T(h: h)
proc create*(T: type QBoxLayout, param1: QBoxLayoutDirection): QBoxLayout =

  QBoxLayout.init(fcQBoxLayout_new(cint(param1)))
proc create*(T: type QBoxLayout, param1: QBoxLayoutDirection, parent: gen_qwidget.QWidget): QBoxLayout =

  QBoxLayout.init(fcQBoxLayout_new2(cint(param1), parent.h))
proc metaObject*(self: QBoxLayout, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQBoxLayout_metaObject(self.h))

proc metacast*(self: QBoxLayout, param1: cstring): pointer =

  fcQBoxLayout_metacast(self.h, param1)

proc metacall*(self: QBoxLayout, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQBoxLayout_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QBoxLayout, s: cstring): string =

  let v_ms = fcQBoxLayout_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QBoxLayout, s: cstring): string =

  let v_ms = fcQBoxLayout_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc direction*(self: QBoxLayout, ): QBoxLayoutDirection =

  QBoxLayoutDirection(fcQBoxLayout_direction(self.h))

proc setDirection*(self: QBoxLayout, direction: QBoxLayoutDirection): void =

  fcQBoxLayout_setDirection(self.h, cint(direction))

proc addSpacing*(self: QBoxLayout, size: cint): void =

  fcQBoxLayout_addSpacing(self.h, size)

proc addStretch*(self: QBoxLayout, ): void =

  fcQBoxLayout_addStretch(self.h)

proc addSpacerItem*(self: QBoxLayout, spacerItem: gen_qlayoutitem.QSpacerItem): void =

  fcQBoxLayout_addSpacerItem(self.h, spacerItem.h)

proc addWidget*(self: QBoxLayout, param1: gen_qwidget.QWidget): void =

  fcQBoxLayout_addWidget(self.h, param1.h)

proc addLayout*(self: QBoxLayout, layout: gen_qlayout.QLayout): void =

  fcQBoxLayout_addLayout(self.h, layout.h)

proc addStrut*(self: QBoxLayout, param1: cint): void =

  fcQBoxLayout_addStrut(self.h, param1)

proc addItem*(self: QBoxLayout, param1: gen_qlayoutitem.QLayoutItem): void =

  fcQBoxLayout_addItem(self.h, param1.h)

proc insertSpacing*(self: QBoxLayout, index: cint, size: cint): void =

  fcQBoxLayout_insertSpacing(self.h, index, size)

proc insertStretch*(self: QBoxLayout, index: cint): void =

  fcQBoxLayout_insertStretch(self.h, index)

proc insertSpacerItem*(self: QBoxLayout, index: cint, spacerItem: gen_qlayoutitem.QSpacerItem): void =

  fcQBoxLayout_insertSpacerItem(self.h, index, spacerItem.h)

proc insertWidget*(self: QBoxLayout, index: cint, widget: gen_qwidget.QWidget): void =

  fcQBoxLayout_insertWidget(self.h, index, widget.h)

proc insertLayout*(self: QBoxLayout, index: cint, layout: gen_qlayout.QLayout): void =

  fcQBoxLayout_insertLayout(self.h, index, layout.h)

proc insertItem*(self: QBoxLayout, index: cint, param2: gen_qlayoutitem.QLayoutItem): void =

  fcQBoxLayout_insertItem(self.h, index, param2.h)

proc spacing*(self: QBoxLayout, ): cint =

  fcQBoxLayout_spacing(self.h)

proc setSpacing*(self: QBoxLayout, spacing: cint): void =

  fcQBoxLayout_setSpacing(self.h, spacing)

proc setStretchFactor*(self: QBoxLayout, w: gen_qwidget.QWidget, stretch: cint): bool =

  fcQBoxLayout_setStretchFactor(self.h, w.h, stretch)

proc setStretchFactor2*(self: QBoxLayout, l: gen_qlayout.QLayout, stretch: cint): bool =

  fcQBoxLayout_setStretchFactor2(self.h, l.h, stretch)

proc setStretch*(self: QBoxLayout, index: cint, stretch: cint): void =

  fcQBoxLayout_setStretch(self.h, index, stretch)

proc stretch*(self: QBoxLayout, index: cint): cint =

  fcQBoxLayout_stretch(self.h, index)

proc sizeHint*(self: QBoxLayout, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQBoxLayout_sizeHint(self.h))

proc minimumSize*(self: QBoxLayout, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQBoxLayout_minimumSize(self.h))

proc maximumSize*(self: QBoxLayout, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQBoxLayout_maximumSize(self.h))

proc hasHeightForWidth*(self: QBoxLayout, ): bool =

  fcQBoxLayout_hasHeightForWidth(self.h)

proc heightForWidth*(self: QBoxLayout, param1: cint): cint =

  fcQBoxLayout_heightForWidth(self.h, param1)

proc minimumHeightForWidth*(self: QBoxLayout, param1: cint): cint =

  fcQBoxLayout_minimumHeightForWidth(self.h, param1)

proc expandingDirections*(self: QBoxLayout, ): gen_qnamespace.Orientation =

  gen_qnamespace.Orientation(fcQBoxLayout_expandingDirections(self.h))

proc invalidate*(self: QBoxLayout, ): void =

  fcQBoxLayout_invalidate(self.h)

proc itemAt*(self: QBoxLayout, param1: cint): gen_qlayoutitem.QLayoutItem =

  gen_qlayoutitem.QLayoutItem(h: fcQBoxLayout_itemAt(self.h, param1))

proc takeAt*(self: QBoxLayout, param1: cint): gen_qlayoutitem.QLayoutItem =

  gen_qlayoutitem.QLayoutItem(h: fcQBoxLayout_takeAt(self.h, param1))

proc count*(self: QBoxLayout, ): cint =

  fcQBoxLayout_count(self.h)

proc setGeometry*(self: QBoxLayout, geometry: gen_qrect.QRect): void =

  fcQBoxLayout_setGeometry(self.h, geometry.h)

proc tr2*(_: type QBoxLayout, s: cstring, c: cstring): string =

  let v_ms = fcQBoxLayout_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QBoxLayout, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQBoxLayout_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QBoxLayout, s: cstring, c: cstring): string =

  let v_ms = fcQBoxLayout_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QBoxLayout, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQBoxLayout_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addStretch1*(self: QBoxLayout, stretch: cint): void =

  fcQBoxLayout_addStretch1(self.h, stretch)

proc addWidget2*(self: QBoxLayout, param1: gen_qwidget.QWidget, stretch: cint): void =

  fcQBoxLayout_addWidget2(self.h, param1.h, stretch)

proc addWidget3*(self: QBoxLayout, param1: gen_qwidget.QWidget, stretch: cint, alignment: gen_qnamespace.AlignmentFlag): void =

  fcQBoxLayout_addWidget3(self.h, param1.h, stretch, cint(alignment))

proc addLayout2*(self: QBoxLayout, layout: gen_qlayout.QLayout, stretch: cint): void =

  fcQBoxLayout_addLayout2(self.h, layout.h, stretch)

proc insertStretch2*(self: QBoxLayout, index: cint, stretch: cint): void =

  fcQBoxLayout_insertStretch2(self.h, index, stretch)

proc insertWidget3*(self: QBoxLayout, index: cint, widget: gen_qwidget.QWidget, stretch: cint): void =

  fcQBoxLayout_insertWidget3(self.h, index, widget.h, stretch)

proc insertWidget4*(self: QBoxLayout, index: cint, widget: gen_qwidget.QWidget, stretch: cint, alignment: gen_qnamespace.AlignmentFlag): void =

  fcQBoxLayout_insertWidget4(self.h, index, widget.h, stretch, cint(alignment))

proc insertLayout3*(self: QBoxLayout, index: cint, layout: gen_qlayout.QLayout, stretch: cint): void =

  fcQBoxLayout_insertLayout3(self.h, index, layout.h, stretch)

proc callVirtualBase_metacall(self: QBoxLayout, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQBoxLayout_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QBoxLayoutmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QBoxLayout, slot: proc(super: QBoxLayoutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QBoxLayoutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_metacall(self: ptr cQBoxLayout, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QBoxLayout_metacall ".} =
  type Cb = proc(super: QBoxLayoutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QBoxLayout(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_addItem(self: QBoxLayout, param1: gen_qlayoutitem.QLayoutItem): void =


  fQBoxLayout_virtualbase_addItem(self.h, param1.h)

type QBoxLayoutaddItemBase* = proc(param1: gen_qlayoutitem.QLayoutItem): void
proc onaddItem*(self: QBoxLayout, slot: proc(super: QBoxLayoutaddItemBase, param1: gen_qlayoutitem.QLayoutItem): void) =
  # TODO check subclass
  type Cb = proc(super: QBoxLayoutaddItemBase, param1: gen_qlayoutitem.QLayoutItem): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_addItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_addItem(self: ptr cQBoxLayout, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QBoxLayout_addItem ".} =
  type Cb = proc(super: QBoxLayoutaddItemBase, param1: gen_qlayoutitem.QLayoutItem): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qlayoutitem.QLayoutItem): auto =
    callVirtualBase_addItem(QBoxLayout(h: self), param1)
  let slotval1 = gen_qlayoutitem.QLayoutItem(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QBoxLayout, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQBoxLayout_virtualbase_sizeHint(self.h))

type QBoxLayoutsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QBoxLayout, slot: proc(super: QBoxLayoutsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QBoxLayoutsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_sizeHint(self: ptr cQBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QBoxLayout_sizeHint ".} =
  type Cb = proc(super: QBoxLayoutsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSize(self: QBoxLayout, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQBoxLayout_virtualbase_minimumSize(self.h))

type QBoxLayoutminimumSizeBase* = proc(): gen_qsize.QSize
proc onminimumSize*(self: QBoxLayout, slot: proc(super: QBoxLayoutminimumSizeBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QBoxLayoutminimumSizeBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_minimumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_minimumSize(self: ptr cQBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QBoxLayout_minimumSize ".} =
  type Cb = proc(super: QBoxLayoutminimumSizeBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSize(QBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_maximumSize(self: QBoxLayout, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQBoxLayout_virtualbase_maximumSize(self.h))

type QBoxLayoutmaximumSizeBase* = proc(): gen_qsize.QSize
proc onmaximumSize*(self: QBoxLayout, slot: proc(super: QBoxLayoutmaximumSizeBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QBoxLayoutmaximumSizeBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_maximumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_maximumSize(self: ptr cQBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QBoxLayout_maximumSize ".} =
  type Cb = proc(super: QBoxLayoutmaximumSizeBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_maximumSize(QBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_hasHeightForWidth(self: QBoxLayout, ): bool =


  fQBoxLayout_virtualbase_hasHeightForWidth(self.h)

type QBoxLayouthasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QBoxLayout, slot: proc(super: QBoxLayouthasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QBoxLayouthasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_hasHeightForWidth(self: ptr cQBoxLayout, slot: int): bool {.exportc: "miqt_exec_callback_QBoxLayout_hasHeightForWidth ".} =
  type Cb = proc(super: QBoxLayouthasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_heightForWidth(self: QBoxLayout, param1: cint): cint =


  fQBoxLayout_virtualbase_heightForWidth(self.h, param1)

type QBoxLayoutheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QBoxLayout, slot: proc(super: QBoxLayoutheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QBoxLayoutheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_heightForWidth(self: ptr cQBoxLayout, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QBoxLayout_heightForWidth ".} =
  type Cb = proc(super: QBoxLayoutheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QBoxLayout(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_minimumHeightForWidth(self: QBoxLayout, param1: cint): cint =


  fQBoxLayout_virtualbase_minimumHeightForWidth(self.h, param1)

type QBoxLayoutminimumHeightForWidthBase* = proc(param1: cint): cint
proc onminimumHeightForWidth*(self: QBoxLayout, slot: proc(super: QBoxLayoutminimumHeightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QBoxLayoutminimumHeightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_minimumHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_minimumHeightForWidth(self: ptr cQBoxLayout, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QBoxLayout_minimumHeightForWidth ".} =
  type Cb = proc(super: QBoxLayoutminimumHeightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_minimumHeightForWidth(QBoxLayout(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_expandingDirections(self: QBoxLayout, ): gen_qnamespace.Orientation =


  gen_qnamespace.Orientation(fQBoxLayout_virtualbase_expandingDirections(self.h))

type QBoxLayoutexpandingDirectionsBase* = proc(): gen_qnamespace.Orientation
proc onexpandingDirections*(self: QBoxLayout, slot: proc(super: QBoxLayoutexpandingDirectionsBase): gen_qnamespace.Orientation) =
  # TODO check subclass
  type Cb = proc(super: QBoxLayoutexpandingDirectionsBase): gen_qnamespace.Orientation
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_expandingDirections(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_expandingDirections(self: ptr cQBoxLayout, slot: int): cint {.exportc: "miqt_exec_callback_QBoxLayout_expandingDirections ".} =
  type Cb = proc(super: QBoxLayoutexpandingDirectionsBase): gen_qnamespace.Orientation
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_expandingDirections(QBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_invalidate(self: QBoxLayout, ): void =


  fQBoxLayout_virtualbase_invalidate(self.h)

type QBoxLayoutinvalidateBase* = proc(): void
proc oninvalidate*(self: QBoxLayout, slot: proc(super: QBoxLayoutinvalidateBase): void) =
  # TODO check subclass
  type Cb = proc(super: QBoxLayoutinvalidateBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_invalidate(self: ptr cQBoxLayout, slot: int): void {.exportc: "miqt_exec_callback_QBoxLayout_invalidate ".} =
  type Cb = proc(super: QBoxLayoutinvalidateBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_invalidate(QBoxLayout(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_itemAt(self: QBoxLayout, param1: cint): gen_qlayoutitem.QLayoutItem =


  gen_qlayoutitem.QLayoutItem(h: fQBoxLayout_virtualbase_itemAt(self.h, param1))

type QBoxLayoutitemAtBase* = proc(param1: cint): gen_qlayoutitem.QLayoutItem
proc onitemAt*(self: QBoxLayout, slot: proc(super: QBoxLayoutitemAtBase, param1: cint): gen_qlayoutitem.QLayoutItem) =
  # TODO check subclass
  type Cb = proc(super: QBoxLayoutitemAtBase, param1: cint): gen_qlayoutitem.QLayoutItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_itemAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_itemAt(self: ptr cQBoxLayout, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QBoxLayout_itemAt ".} =
  type Cb = proc(super: QBoxLayoutitemAtBase, param1: cint): gen_qlayoutitem.QLayoutItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_itemAt(QBoxLayout(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_takeAt(self: QBoxLayout, param1: cint): gen_qlayoutitem.QLayoutItem =


  gen_qlayoutitem.QLayoutItem(h: fQBoxLayout_virtualbase_takeAt(self.h, param1))

type QBoxLayouttakeAtBase* = proc(param1: cint): gen_qlayoutitem.QLayoutItem
proc ontakeAt*(self: QBoxLayout, slot: proc(super: QBoxLayouttakeAtBase, param1: cint): gen_qlayoutitem.QLayoutItem) =
  # TODO check subclass
  type Cb = proc(super: QBoxLayouttakeAtBase, param1: cint): gen_qlayoutitem.QLayoutItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_takeAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_takeAt(self: ptr cQBoxLayout, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QBoxLayout_takeAt ".} =
  type Cb = proc(super: QBoxLayouttakeAtBase, param1: cint): gen_qlayoutitem.QLayoutItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_takeAt(QBoxLayout(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_count(self: QBoxLayout, ): cint =


  fQBoxLayout_virtualbase_count(self.h)

type QBoxLayoutcountBase* = proc(): cint
proc oncount*(self: QBoxLayout, slot: proc(super: QBoxLayoutcountBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QBoxLayoutcountBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_count(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_count(self: ptr cQBoxLayout, slot: int): cint {.exportc: "miqt_exec_callback_QBoxLayout_count ".} =
  type Cb = proc(super: QBoxLayoutcountBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_count(QBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setGeometry(self: QBoxLayout, geometry: gen_qrect.QRect): void =


  fQBoxLayout_virtualbase_setGeometry(self.h, geometry.h)

type QBoxLayoutsetGeometryBase* = proc(geometry: gen_qrect.QRect): void
proc onsetGeometry*(self: QBoxLayout, slot: proc(super: QBoxLayoutsetGeometryBase, geometry: gen_qrect.QRect): void) =
  # TODO check subclass
  type Cb = proc(super: QBoxLayoutsetGeometryBase, geometry: gen_qrect.QRect): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_setGeometry(self: ptr cQBoxLayout, slot: int, geometry: pointer): void {.exportc: "miqt_exec_callback_QBoxLayout_setGeometry ".} =
  type Cb = proc(super: QBoxLayoutsetGeometryBase, geometry: gen_qrect.QRect): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(geometry: gen_qrect.QRect): auto =
    callVirtualBase_setGeometry(QBoxLayout(h: self), geometry)
  let slotval1 = gen_qrect.QRect(h: geometry)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_geometry(self: QBoxLayout, ): gen_qrect.QRect =


  gen_qrect.QRect(h: fQBoxLayout_virtualbase_geometry(self.h))

type QBoxLayoutgeometryBase* = proc(): gen_qrect.QRect
proc ongeometry*(self: QBoxLayout, slot: proc(super: QBoxLayoutgeometryBase): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QBoxLayoutgeometryBase): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_geometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_geometry(self: ptr cQBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QBoxLayout_geometry ".} =
  type Cb = proc(super: QBoxLayoutgeometryBase): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_geometry(QBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_indexOf(self: QBoxLayout, param1: gen_qwidget.QWidget): cint =


  fQBoxLayout_virtualbase_indexOf(self.h, param1.h)

type QBoxLayoutindexOfBase* = proc(param1: gen_qwidget.QWidget): cint
proc onindexOf*(self: QBoxLayout, slot: proc(super: QBoxLayoutindexOfBase, param1: gen_qwidget.QWidget): cint) =
  # TODO check subclass
  type Cb = proc(super: QBoxLayoutindexOfBase, param1: gen_qwidget.QWidget): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_indexOf(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_indexOf(self: ptr cQBoxLayout, slot: int, param1: pointer): cint {.exportc: "miqt_exec_callback_QBoxLayout_indexOf ".} =
  type Cb = proc(super: QBoxLayoutindexOfBase, param1: gen_qwidget.QWidget): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qwidget.QWidget): auto =
    callVirtualBase_indexOf(QBoxLayout(h: self), param1)
  let slotval1 = gen_qwidget.QWidget(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_isEmpty(self: QBoxLayout, ): bool =


  fQBoxLayout_virtualbase_isEmpty(self.h)

type QBoxLayoutisEmptyBase* = proc(): bool
proc onisEmpty*(self: QBoxLayout, slot: proc(super: QBoxLayoutisEmptyBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QBoxLayoutisEmptyBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_isEmpty(self: ptr cQBoxLayout, slot: int): bool {.exportc: "miqt_exec_callback_QBoxLayout_isEmpty ".} =
  type Cb = proc(super: QBoxLayoutisEmptyBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isEmpty(QBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_controlTypes(self: QBoxLayout, ): gen_qsizepolicy.QSizePolicyControlType =


  gen_qsizepolicy.QSizePolicyControlType(fQBoxLayout_virtualbase_controlTypes(self.h))

type QBoxLayoutcontrolTypesBase* = proc(): gen_qsizepolicy.QSizePolicyControlType
proc oncontrolTypes*(self: QBoxLayout, slot: proc(super: QBoxLayoutcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType) =
  # TODO check subclass
  type Cb = proc(super: QBoxLayoutcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_controlTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_controlTypes(self: ptr cQBoxLayout, slot: int): cint {.exportc: "miqt_exec_callback_QBoxLayout_controlTypes ".} =
  type Cb = proc(super: QBoxLayoutcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_controlTypes(QBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_layout(self: QBoxLayout, ): gen_qlayout.QLayout =


  gen_qlayout.QLayout(h: fQBoxLayout_virtualbase_layout(self.h))

type QBoxLayoutlayoutBase* = proc(): gen_qlayout.QLayout
proc onlayout*(self: QBoxLayout, slot: proc(super: QBoxLayoutlayoutBase): gen_qlayout.QLayout) =
  # TODO check subclass
  type Cb = proc(super: QBoxLayoutlayoutBase): gen_qlayout.QLayout
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_layout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_layout(self: ptr cQBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QBoxLayout_layout ".} =
  type Cb = proc(super: QBoxLayoutlayoutBase): gen_qlayout.QLayout
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_layout(QBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_childEvent(self: QBoxLayout, e: gen_qcoreevent.QChildEvent): void =


  fQBoxLayout_virtualbase_childEvent(self.h, e.h)

type QBoxLayoutchildEventBase* = proc(e: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QBoxLayout, slot: proc(super: QBoxLayoutchildEventBase, e: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QBoxLayoutchildEventBase, e: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_childEvent(self: ptr cQBoxLayout, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QBoxLayout_childEvent ".} =
  type Cb = proc(super: QBoxLayoutchildEventBase, e: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QBoxLayout(h: self), e)
  let slotval1 = gen_qcoreevent.QChildEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QBoxLayout, event: gen_qcoreevent.QEvent): bool =


  fQBoxLayout_virtualbase_event(self.h, event.h)

type QBoxLayouteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QBoxLayout, slot: proc(super: QBoxLayouteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QBoxLayouteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_event(self: ptr cQBoxLayout, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QBoxLayout_event ".} =
  type Cb = proc(super: QBoxLayouteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QBoxLayout(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QBoxLayout, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQBoxLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

type QBoxLayouteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QBoxLayout, slot: proc(super: QBoxLayouteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QBoxLayouteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_eventFilter(self: ptr cQBoxLayout, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QBoxLayout_eventFilter ".} =
  type Cb = proc(super: QBoxLayouteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QBoxLayout(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QBoxLayout, event: gen_qcoreevent.QTimerEvent): void =


  fQBoxLayout_virtualbase_timerEvent(self.h, event.h)

type QBoxLayouttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QBoxLayout, slot: proc(super: QBoxLayouttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QBoxLayouttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_timerEvent(self: ptr cQBoxLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QBoxLayout_timerEvent ".} =
  type Cb = proc(super: QBoxLayouttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QBoxLayout(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QBoxLayout, event: gen_qcoreevent.QEvent): void =


  fQBoxLayout_virtualbase_customEvent(self.h, event.h)

type QBoxLayoutcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QBoxLayout, slot: proc(super: QBoxLayoutcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QBoxLayoutcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_customEvent(self: ptr cQBoxLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QBoxLayout_customEvent ".} =
  type Cb = proc(super: QBoxLayoutcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QBoxLayout(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QBoxLayout, signal: gen_qmetaobject.QMetaMethod): void =


  fQBoxLayout_virtualbase_connectNotify(self.h, signal.h)

type QBoxLayoutconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QBoxLayout, slot: proc(super: QBoxLayoutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QBoxLayoutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_connectNotify(self: ptr cQBoxLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QBoxLayout_connectNotify ".} =
  type Cb = proc(super: QBoxLayoutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QBoxLayout(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QBoxLayout, signal: gen_qmetaobject.QMetaMethod): void =


  fQBoxLayout_virtualbase_disconnectNotify(self.h, signal.h)

type QBoxLayoutdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QBoxLayout, slot: proc(super: QBoxLayoutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QBoxLayoutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_disconnectNotify(self: ptr cQBoxLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QBoxLayout_disconnectNotify ".} =
  type Cb = proc(super: QBoxLayoutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QBoxLayout(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_widget(self: QBoxLayout, ): gen_qwidget.QWidget =


  gen_qwidget.QWidget(h: fQBoxLayout_virtualbase_widget(self.h))

type QBoxLayoutwidgetBase* = proc(): gen_qwidget.QWidget
proc onwidget*(self: QBoxLayout, slot: proc(super: QBoxLayoutwidgetBase): gen_qwidget.QWidget) =
  # TODO check subclass
  type Cb = proc(super: QBoxLayoutwidgetBase): gen_qwidget.QWidget
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_widget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_widget(self: ptr cQBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QBoxLayout_widget ".} =
  type Cb = proc(super: QBoxLayoutwidgetBase): gen_qwidget.QWidget
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_widget(QBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_spacerItem(self: QBoxLayout, ): gen_qlayoutitem.QSpacerItem =


  gen_qlayoutitem.QSpacerItem(h: fQBoxLayout_virtualbase_spacerItem(self.h))

type QBoxLayoutspacerItemBase* = proc(): gen_qlayoutitem.QSpacerItem
proc onspacerItem*(self: QBoxLayout, slot: proc(super: QBoxLayoutspacerItemBase): gen_qlayoutitem.QSpacerItem) =
  # TODO check subclass
  type Cb = proc(super: QBoxLayoutspacerItemBase): gen_qlayoutitem.QSpacerItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQBoxLayout_override_virtual_spacerItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBoxLayout_spacerItem(self: ptr cQBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QBoxLayout_spacerItem ".} =
  type Cb = proc(super: QBoxLayoutspacerItemBase): gen_qlayoutitem.QSpacerItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_spacerItem(QBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QBoxLayout) =
  fcQBoxLayout_delete(self.h)

func init*(T: type QHBoxLayout, h: ptr cQHBoxLayout): QHBoxLayout =
  T(h: h)
proc create*(T: type QHBoxLayout, parent: gen_qwidget.QWidget): QHBoxLayout =

  QHBoxLayout.init(fcQHBoxLayout_new(parent.h))
proc create*(T: type QHBoxLayout, ): QHBoxLayout =

  QHBoxLayout.init(fcQHBoxLayout_new2())
proc metaObject*(self: QHBoxLayout, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQHBoxLayout_metaObject(self.h))

proc metacast*(self: QHBoxLayout, param1: cstring): pointer =

  fcQHBoxLayout_metacast(self.h, param1)

proc metacall*(self: QHBoxLayout, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQHBoxLayout_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QHBoxLayout, s: cstring): string =

  let v_ms = fcQHBoxLayout_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QHBoxLayout, s: cstring): string =

  let v_ms = fcQHBoxLayout_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr2*(_: type QHBoxLayout, s: cstring, c: cstring): string =

  let v_ms = fcQHBoxLayout_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QHBoxLayout, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQHBoxLayout_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QHBoxLayout, s: cstring, c: cstring): string =

  let v_ms = fcQHBoxLayout_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QHBoxLayout, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQHBoxLayout_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QHBoxLayout, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQHBoxLayout_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QHBoxLayoutmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QHBoxLayout, slot: proc(super: QHBoxLayoutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QHBoxLayoutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_metacall(self: ptr cQHBoxLayout, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QHBoxLayout_metacall ".} =
  type Cb = proc(super: QHBoxLayoutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QHBoxLayout(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_addItem(self: QHBoxLayout, param1: gen_qlayoutitem.QLayoutItem): void =


  fQHBoxLayout_virtualbase_addItem(self.h, param1.h)

type QHBoxLayoutaddItemBase* = proc(param1: gen_qlayoutitem.QLayoutItem): void
proc onaddItem*(self: QHBoxLayout, slot: proc(super: QHBoxLayoutaddItemBase, param1: gen_qlayoutitem.QLayoutItem): void) =
  # TODO check subclass
  type Cb = proc(super: QHBoxLayoutaddItemBase, param1: gen_qlayoutitem.QLayoutItem): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_addItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_addItem(self: ptr cQHBoxLayout, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QHBoxLayout_addItem ".} =
  type Cb = proc(super: QHBoxLayoutaddItemBase, param1: gen_qlayoutitem.QLayoutItem): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qlayoutitem.QLayoutItem): auto =
    callVirtualBase_addItem(QHBoxLayout(h: self), param1)
  let slotval1 = gen_qlayoutitem.QLayoutItem(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QHBoxLayout, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQHBoxLayout_virtualbase_sizeHint(self.h))

type QHBoxLayoutsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QHBoxLayout, slot: proc(super: QHBoxLayoutsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QHBoxLayoutsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_sizeHint(self: ptr cQHBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QHBoxLayout_sizeHint ".} =
  type Cb = proc(super: QHBoxLayoutsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QHBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSize(self: QHBoxLayout, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQHBoxLayout_virtualbase_minimumSize(self.h))

type QHBoxLayoutminimumSizeBase* = proc(): gen_qsize.QSize
proc onminimumSize*(self: QHBoxLayout, slot: proc(super: QHBoxLayoutminimumSizeBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QHBoxLayoutminimumSizeBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_minimumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_minimumSize(self: ptr cQHBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QHBoxLayout_minimumSize ".} =
  type Cb = proc(super: QHBoxLayoutminimumSizeBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSize(QHBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_maximumSize(self: QHBoxLayout, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQHBoxLayout_virtualbase_maximumSize(self.h))

type QHBoxLayoutmaximumSizeBase* = proc(): gen_qsize.QSize
proc onmaximumSize*(self: QHBoxLayout, slot: proc(super: QHBoxLayoutmaximumSizeBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QHBoxLayoutmaximumSizeBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_maximumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_maximumSize(self: ptr cQHBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QHBoxLayout_maximumSize ".} =
  type Cb = proc(super: QHBoxLayoutmaximumSizeBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_maximumSize(QHBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_hasHeightForWidth(self: QHBoxLayout, ): bool =


  fQHBoxLayout_virtualbase_hasHeightForWidth(self.h)

type QHBoxLayouthasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QHBoxLayout, slot: proc(super: QHBoxLayouthasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QHBoxLayouthasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_hasHeightForWidth(self: ptr cQHBoxLayout, slot: int): bool {.exportc: "miqt_exec_callback_QHBoxLayout_hasHeightForWidth ".} =
  type Cb = proc(super: QHBoxLayouthasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QHBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_heightForWidth(self: QHBoxLayout, param1: cint): cint =


  fQHBoxLayout_virtualbase_heightForWidth(self.h, param1)

type QHBoxLayoutheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QHBoxLayout, slot: proc(super: QHBoxLayoutheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QHBoxLayoutheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_heightForWidth(self: ptr cQHBoxLayout, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QHBoxLayout_heightForWidth ".} =
  type Cb = proc(super: QHBoxLayoutheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QHBoxLayout(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_minimumHeightForWidth(self: QHBoxLayout, param1: cint): cint =


  fQHBoxLayout_virtualbase_minimumHeightForWidth(self.h, param1)

type QHBoxLayoutminimumHeightForWidthBase* = proc(param1: cint): cint
proc onminimumHeightForWidth*(self: QHBoxLayout, slot: proc(super: QHBoxLayoutminimumHeightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QHBoxLayoutminimumHeightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_minimumHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_minimumHeightForWidth(self: ptr cQHBoxLayout, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QHBoxLayout_minimumHeightForWidth ".} =
  type Cb = proc(super: QHBoxLayoutminimumHeightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_minimumHeightForWidth(QHBoxLayout(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_expandingDirections(self: QHBoxLayout, ): gen_qnamespace.Orientation =


  gen_qnamespace.Orientation(fQHBoxLayout_virtualbase_expandingDirections(self.h))

type QHBoxLayoutexpandingDirectionsBase* = proc(): gen_qnamespace.Orientation
proc onexpandingDirections*(self: QHBoxLayout, slot: proc(super: QHBoxLayoutexpandingDirectionsBase): gen_qnamespace.Orientation) =
  # TODO check subclass
  type Cb = proc(super: QHBoxLayoutexpandingDirectionsBase): gen_qnamespace.Orientation
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_expandingDirections(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_expandingDirections(self: ptr cQHBoxLayout, slot: int): cint {.exportc: "miqt_exec_callback_QHBoxLayout_expandingDirections ".} =
  type Cb = proc(super: QHBoxLayoutexpandingDirectionsBase): gen_qnamespace.Orientation
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_expandingDirections(QHBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_invalidate(self: QHBoxLayout, ): void =


  fQHBoxLayout_virtualbase_invalidate(self.h)

type QHBoxLayoutinvalidateBase* = proc(): void
proc oninvalidate*(self: QHBoxLayout, slot: proc(super: QHBoxLayoutinvalidateBase): void) =
  # TODO check subclass
  type Cb = proc(super: QHBoxLayoutinvalidateBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_invalidate(self: ptr cQHBoxLayout, slot: int): void {.exportc: "miqt_exec_callback_QHBoxLayout_invalidate ".} =
  type Cb = proc(super: QHBoxLayoutinvalidateBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_invalidate(QHBoxLayout(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_itemAt(self: QHBoxLayout, param1: cint): gen_qlayoutitem.QLayoutItem =


  gen_qlayoutitem.QLayoutItem(h: fQHBoxLayout_virtualbase_itemAt(self.h, param1))

type QHBoxLayoutitemAtBase* = proc(param1: cint): gen_qlayoutitem.QLayoutItem
proc onitemAt*(self: QHBoxLayout, slot: proc(super: QHBoxLayoutitemAtBase, param1: cint): gen_qlayoutitem.QLayoutItem) =
  # TODO check subclass
  type Cb = proc(super: QHBoxLayoutitemAtBase, param1: cint): gen_qlayoutitem.QLayoutItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_itemAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_itemAt(self: ptr cQHBoxLayout, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QHBoxLayout_itemAt ".} =
  type Cb = proc(super: QHBoxLayoutitemAtBase, param1: cint): gen_qlayoutitem.QLayoutItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_itemAt(QHBoxLayout(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_takeAt(self: QHBoxLayout, param1: cint): gen_qlayoutitem.QLayoutItem =


  gen_qlayoutitem.QLayoutItem(h: fQHBoxLayout_virtualbase_takeAt(self.h, param1))

type QHBoxLayouttakeAtBase* = proc(param1: cint): gen_qlayoutitem.QLayoutItem
proc ontakeAt*(self: QHBoxLayout, slot: proc(super: QHBoxLayouttakeAtBase, param1: cint): gen_qlayoutitem.QLayoutItem) =
  # TODO check subclass
  type Cb = proc(super: QHBoxLayouttakeAtBase, param1: cint): gen_qlayoutitem.QLayoutItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_takeAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_takeAt(self: ptr cQHBoxLayout, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QHBoxLayout_takeAt ".} =
  type Cb = proc(super: QHBoxLayouttakeAtBase, param1: cint): gen_qlayoutitem.QLayoutItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_takeAt(QHBoxLayout(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_count(self: QHBoxLayout, ): cint =


  fQHBoxLayout_virtualbase_count(self.h)

type QHBoxLayoutcountBase* = proc(): cint
proc oncount*(self: QHBoxLayout, slot: proc(super: QHBoxLayoutcountBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QHBoxLayoutcountBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_count(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_count(self: ptr cQHBoxLayout, slot: int): cint {.exportc: "miqt_exec_callback_QHBoxLayout_count ".} =
  type Cb = proc(super: QHBoxLayoutcountBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_count(QHBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setGeometry(self: QHBoxLayout, geometry: gen_qrect.QRect): void =


  fQHBoxLayout_virtualbase_setGeometry(self.h, geometry.h)

type QHBoxLayoutsetGeometryBase* = proc(geometry: gen_qrect.QRect): void
proc onsetGeometry*(self: QHBoxLayout, slot: proc(super: QHBoxLayoutsetGeometryBase, geometry: gen_qrect.QRect): void) =
  # TODO check subclass
  type Cb = proc(super: QHBoxLayoutsetGeometryBase, geometry: gen_qrect.QRect): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_setGeometry(self: ptr cQHBoxLayout, slot: int, geometry: pointer): void {.exportc: "miqt_exec_callback_QHBoxLayout_setGeometry ".} =
  type Cb = proc(super: QHBoxLayoutsetGeometryBase, geometry: gen_qrect.QRect): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(geometry: gen_qrect.QRect): auto =
    callVirtualBase_setGeometry(QHBoxLayout(h: self), geometry)
  let slotval1 = gen_qrect.QRect(h: geometry)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_geometry(self: QHBoxLayout, ): gen_qrect.QRect =


  gen_qrect.QRect(h: fQHBoxLayout_virtualbase_geometry(self.h))

type QHBoxLayoutgeometryBase* = proc(): gen_qrect.QRect
proc ongeometry*(self: QHBoxLayout, slot: proc(super: QHBoxLayoutgeometryBase): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QHBoxLayoutgeometryBase): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_geometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_geometry(self: ptr cQHBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QHBoxLayout_geometry ".} =
  type Cb = proc(super: QHBoxLayoutgeometryBase): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_geometry(QHBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_indexOf(self: QHBoxLayout, param1: gen_qwidget.QWidget): cint =


  fQHBoxLayout_virtualbase_indexOf(self.h, param1.h)

type QHBoxLayoutindexOfBase* = proc(param1: gen_qwidget.QWidget): cint
proc onindexOf*(self: QHBoxLayout, slot: proc(super: QHBoxLayoutindexOfBase, param1: gen_qwidget.QWidget): cint) =
  # TODO check subclass
  type Cb = proc(super: QHBoxLayoutindexOfBase, param1: gen_qwidget.QWidget): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_indexOf(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_indexOf(self: ptr cQHBoxLayout, slot: int, param1: pointer): cint {.exportc: "miqt_exec_callback_QHBoxLayout_indexOf ".} =
  type Cb = proc(super: QHBoxLayoutindexOfBase, param1: gen_qwidget.QWidget): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qwidget.QWidget): auto =
    callVirtualBase_indexOf(QHBoxLayout(h: self), param1)
  let slotval1 = gen_qwidget.QWidget(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_isEmpty(self: QHBoxLayout, ): bool =


  fQHBoxLayout_virtualbase_isEmpty(self.h)

type QHBoxLayoutisEmptyBase* = proc(): bool
proc onisEmpty*(self: QHBoxLayout, slot: proc(super: QHBoxLayoutisEmptyBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QHBoxLayoutisEmptyBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_isEmpty(self: ptr cQHBoxLayout, slot: int): bool {.exportc: "miqt_exec_callback_QHBoxLayout_isEmpty ".} =
  type Cb = proc(super: QHBoxLayoutisEmptyBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isEmpty(QHBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_controlTypes(self: QHBoxLayout, ): gen_qsizepolicy.QSizePolicyControlType =


  gen_qsizepolicy.QSizePolicyControlType(fQHBoxLayout_virtualbase_controlTypes(self.h))

type QHBoxLayoutcontrolTypesBase* = proc(): gen_qsizepolicy.QSizePolicyControlType
proc oncontrolTypes*(self: QHBoxLayout, slot: proc(super: QHBoxLayoutcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType) =
  # TODO check subclass
  type Cb = proc(super: QHBoxLayoutcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_controlTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_controlTypes(self: ptr cQHBoxLayout, slot: int): cint {.exportc: "miqt_exec_callback_QHBoxLayout_controlTypes ".} =
  type Cb = proc(super: QHBoxLayoutcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_controlTypes(QHBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_layout(self: QHBoxLayout, ): gen_qlayout.QLayout =


  gen_qlayout.QLayout(h: fQHBoxLayout_virtualbase_layout(self.h))

type QHBoxLayoutlayoutBase* = proc(): gen_qlayout.QLayout
proc onlayout*(self: QHBoxLayout, slot: proc(super: QHBoxLayoutlayoutBase): gen_qlayout.QLayout) =
  # TODO check subclass
  type Cb = proc(super: QHBoxLayoutlayoutBase): gen_qlayout.QLayout
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_layout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_layout(self: ptr cQHBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QHBoxLayout_layout ".} =
  type Cb = proc(super: QHBoxLayoutlayoutBase): gen_qlayout.QLayout
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_layout(QHBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_childEvent(self: QHBoxLayout, e: gen_qcoreevent.QChildEvent): void =


  fQHBoxLayout_virtualbase_childEvent(self.h, e.h)

type QHBoxLayoutchildEventBase* = proc(e: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QHBoxLayout, slot: proc(super: QHBoxLayoutchildEventBase, e: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHBoxLayoutchildEventBase, e: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_childEvent(self: ptr cQHBoxLayout, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QHBoxLayout_childEvent ".} =
  type Cb = proc(super: QHBoxLayoutchildEventBase, e: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QHBoxLayout(h: self), e)
  let slotval1 = gen_qcoreevent.QChildEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QHBoxLayout, event: gen_qcoreevent.QEvent): bool =


  fQHBoxLayout_virtualbase_event(self.h, event.h)

type QHBoxLayouteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QHBoxLayout, slot: proc(super: QHBoxLayouteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QHBoxLayouteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_event(self: ptr cQHBoxLayout, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QHBoxLayout_event ".} =
  type Cb = proc(super: QHBoxLayouteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QHBoxLayout(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QHBoxLayout, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQHBoxLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

type QHBoxLayouteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QHBoxLayout, slot: proc(super: QHBoxLayouteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QHBoxLayouteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_eventFilter(self: ptr cQHBoxLayout, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QHBoxLayout_eventFilter ".} =
  type Cb = proc(super: QHBoxLayouteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QHBoxLayout(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QHBoxLayout, event: gen_qcoreevent.QTimerEvent): void =


  fQHBoxLayout_virtualbase_timerEvent(self.h, event.h)

type QHBoxLayouttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QHBoxLayout, slot: proc(super: QHBoxLayouttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHBoxLayouttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_timerEvent(self: ptr cQHBoxLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHBoxLayout_timerEvent ".} =
  type Cb = proc(super: QHBoxLayouttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QHBoxLayout(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QHBoxLayout, event: gen_qcoreevent.QEvent): void =


  fQHBoxLayout_virtualbase_customEvent(self.h, event.h)

type QHBoxLayoutcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QHBoxLayout, slot: proc(super: QHBoxLayoutcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHBoxLayoutcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_customEvent(self: ptr cQHBoxLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHBoxLayout_customEvent ".} =
  type Cb = proc(super: QHBoxLayoutcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QHBoxLayout(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QHBoxLayout, signal: gen_qmetaobject.QMetaMethod): void =


  fQHBoxLayout_virtualbase_connectNotify(self.h, signal.h)

type QHBoxLayoutconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QHBoxLayout, slot: proc(super: QHBoxLayoutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QHBoxLayoutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_connectNotify(self: ptr cQHBoxLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QHBoxLayout_connectNotify ".} =
  type Cb = proc(super: QHBoxLayoutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QHBoxLayout(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QHBoxLayout, signal: gen_qmetaobject.QMetaMethod): void =


  fQHBoxLayout_virtualbase_disconnectNotify(self.h, signal.h)

type QHBoxLayoutdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QHBoxLayout, slot: proc(super: QHBoxLayoutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QHBoxLayoutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_disconnectNotify(self: ptr cQHBoxLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QHBoxLayout_disconnectNotify ".} =
  type Cb = proc(super: QHBoxLayoutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QHBoxLayout(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_widget(self: QHBoxLayout, ): gen_qwidget.QWidget =


  gen_qwidget.QWidget(h: fQHBoxLayout_virtualbase_widget(self.h))

type QHBoxLayoutwidgetBase* = proc(): gen_qwidget.QWidget
proc onwidget*(self: QHBoxLayout, slot: proc(super: QHBoxLayoutwidgetBase): gen_qwidget.QWidget) =
  # TODO check subclass
  type Cb = proc(super: QHBoxLayoutwidgetBase): gen_qwidget.QWidget
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_widget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_widget(self: ptr cQHBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QHBoxLayout_widget ".} =
  type Cb = proc(super: QHBoxLayoutwidgetBase): gen_qwidget.QWidget
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_widget(QHBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_spacerItem(self: QHBoxLayout, ): gen_qlayoutitem.QSpacerItem =


  gen_qlayoutitem.QSpacerItem(h: fQHBoxLayout_virtualbase_spacerItem(self.h))

type QHBoxLayoutspacerItemBase* = proc(): gen_qlayoutitem.QSpacerItem
proc onspacerItem*(self: QHBoxLayout, slot: proc(super: QHBoxLayoutspacerItemBase): gen_qlayoutitem.QSpacerItem) =
  # TODO check subclass
  type Cb = proc(super: QHBoxLayoutspacerItemBase): gen_qlayoutitem.QSpacerItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHBoxLayout_override_virtual_spacerItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHBoxLayout_spacerItem(self: ptr cQHBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QHBoxLayout_spacerItem ".} =
  type Cb = proc(super: QHBoxLayoutspacerItemBase): gen_qlayoutitem.QSpacerItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_spacerItem(QHBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QHBoxLayout) =
  fcQHBoxLayout_delete(self.h)

func init*(T: type QVBoxLayout, h: ptr cQVBoxLayout): QVBoxLayout =
  T(h: h)
proc create*(T: type QVBoxLayout, parent: gen_qwidget.QWidget): QVBoxLayout =

  QVBoxLayout.init(fcQVBoxLayout_new(parent.h))
proc create*(T: type QVBoxLayout, ): QVBoxLayout =

  QVBoxLayout.init(fcQVBoxLayout_new2())
proc metaObject*(self: QVBoxLayout, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQVBoxLayout_metaObject(self.h))

proc metacast*(self: QVBoxLayout, param1: cstring): pointer =

  fcQVBoxLayout_metacast(self.h, param1)

proc metacall*(self: QVBoxLayout, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQVBoxLayout_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QVBoxLayout, s: cstring): string =

  let v_ms = fcQVBoxLayout_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QVBoxLayout, s: cstring): string =

  let v_ms = fcQVBoxLayout_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr2*(_: type QVBoxLayout, s: cstring, c: cstring): string =

  let v_ms = fcQVBoxLayout_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QVBoxLayout, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQVBoxLayout_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QVBoxLayout, s: cstring, c: cstring): string =

  let v_ms = fcQVBoxLayout_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QVBoxLayout, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQVBoxLayout_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QVBoxLayout, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQVBoxLayout_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QVBoxLayoutmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QVBoxLayout, slot: proc(super: QVBoxLayoutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QVBoxLayoutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_metacall(self: ptr cQVBoxLayout, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QVBoxLayout_metacall ".} =
  type Cb = proc(super: QVBoxLayoutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QVBoxLayout(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_addItem(self: QVBoxLayout, param1: gen_qlayoutitem.QLayoutItem): void =


  fQVBoxLayout_virtualbase_addItem(self.h, param1.h)

type QVBoxLayoutaddItemBase* = proc(param1: gen_qlayoutitem.QLayoutItem): void
proc onaddItem*(self: QVBoxLayout, slot: proc(super: QVBoxLayoutaddItemBase, param1: gen_qlayoutitem.QLayoutItem): void) =
  # TODO check subclass
  type Cb = proc(super: QVBoxLayoutaddItemBase, param1: gen_qlayoutitem.QLayoutItem): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_addItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_addItem(self: ptr cQVBoxLayout, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QVBoxLayout_addItem ".} =
  type Cb = proc(super: QVBoxLayoutaddItemBase, param1: gen_qlayoutitem.QLayoutItem): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qlayoutitem.QLayoutItem): auto =
    callVirtualBase_addItem(QVBoxLayout(h: self), param1)
  let slotval1 = gen_qlayoutitem.QLayoutItem(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QVBoxLayout, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQVBoxLayout_virtualbase_sizeHint(self.h))

type QVBoxLayoutsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QVBoxLayout, slot: proc(super: QVBoxLayoutsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QVBoxLayoutsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_sizeHint(self: ptr cQVBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QVBoxLayout_sizeHint ".} =
  type Cb = proc(super: QVBoxLayoutsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QVBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSize(self: QVBoxLayout, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQVBoxLayout_virtualbase_minimumSize(self.h))

type QVBoxLayoutminimumSizeBase* = proc(): gen_qsize.QSize
proc onminimumSize*(self: QVBoxLayout, slot: proc(super: QVBoxLayoutminimumSizeBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QVBoxLayoutminimumSizeBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_minimumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_minimumSize(self: ptr cQVBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QVBoxLayout_minimumSize ".} =
  type Cb = proc(super: QVBoxLayoutminimumSizeBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSize(QVBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_maximumSize(self: QVBoxLayout, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQVBoxLayout_virtualbase_maximumSize(self.h))

type QVBoxLayoutmaximumSizeBase* = proc(): gen_qsize.QSize
proc onmaximumSize*(self: QVBoxLayout, slot: proc(super: QVBoxLayoutmaximumSizeBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QVBoxLayoutmaximumSizeBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_maximumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_maximumSize(self: ptr cQVBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QVBoxLayout_maximumSize ".} =
  type Cb = proc(super: QVBoxLayoutmaximumSizeBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_maximumSize(QVBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_hasHeightForWidth(self: QVBoxLayout, ): bool =


  fQVBoxLayout_virtualbase_hasHeightForWidth(self.h)

type QVBoxLayouthasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QVBoxLayout, slot: proc(super: QVBoxLayouthasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QVBoxLayouthasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_hasHeightForWidth(self: ptr cQVBoxLayout, slot: int): bool {.exportc: "miqt_exec_callback_QVBoxLayout_hasHeightForWidth ".} =
  type Cb = proc(super: QVBoxLayouthasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QVBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_heightForWidth(self: QVBoxLayout, param1: cint): cint =


  fQVBoxLayout_virtualbase_heightForWidth(self.h, param1)

type QVBoxLayoutheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QVBoxLayout, slot: proc(super: QVBoxLayoutheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QVBoxLayoutheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_heightForWidth(self: ptr cQVBoxLayout, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QVBoxLayout_heightForWidth ".} =
  type Cb = proc(super: QVBoxLayoutheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QVBoxLayout(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_minimumHeightForWidth(self: QVBoxLayout, param1: cint): cint =


  fQVBoxLayout_virtualbase_minimumHeightForWidth(self.h, param1)

type QVBoxLayoutminimumHeightForWidthBase* = proc(param1: cint): cint
proc onminimumHeightForWidth*(self: QVBoxLayout, slot: proc(super: QVBoxLayoutminimumHeightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QVBoxLayoutminimumHeightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_minimumHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_minimumHeightForWidth(self: ptr cQVBoxLayout, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QVBoxLayout_minimumHeightForWidth ".} =
  type Cb = proc(super: QVBoxLayoutminimumHeightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_minimumHeightForWidth(QVBoxLayout(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_expandingDirections(self: QVBoxLayout, ): gen_qnamespace.Orientation =


  gen_qnamespace.Orientation(fQVBoxLayout_virtualbase_expandingDirections(self.h))

type QVBoxLayoutexpandingDirectionsBase* = proc(): gen_qnamespace.Orientation
proc onexpandingDirections*(self: QVBoxLayout, slot: proc(super: QVBoxLayoutexpandingDirectionsBase): gen_qnamespace.Orientation) =
  # TODO check subclass
  type Cb = proc(super: QVBoxLayoutexpandingDirectionsBase): gen_qnamespace.Orientation
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_expandingDirections(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_expandingDirections(self: ptr cQVBoxLayout, slot: int): cint {.exportc: "miqt_exec_callback_QVBoxLayout_expandingDirections ".} =
  type Cb = proc(super: QVBoxLayoutexpandingDirectionsBase): gen_qnamespace.Orientation
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_expandingDirections(QVBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_invalidate(self: QVBoxLayout, ): void =


  fQVBoxLayout_virtualbase_invalidate(self.h)

type QVBoxLayoutinvalidateBase* = proc(): void
proc oninvalidate*(self: QVBoxLayout, slot: proc(super: QVBoxLayoutinvalidateBase): void) =
  # TODO check subclass
  type Cb = proc(super: QVBoxLayoutinvalidateBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_invalidate(self: ptr cQVBoxLayout, slot: int): void {.exportc: "miqt_exec_callback_QVBoxLayout_invalidate ".} =
  type Cb = proc(super: QVBoxLayoutinvalidateBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_invalidate(QVBoxLayout(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_itemAt(self: QVBoxLayout, param1: cint): gen_qlayoutitem.QLayoutItem =


  gen_qlayoutitem.QLayoutItem(h: fQVBoxLayout_virtualbase_itemAt(self.h, param1))

type QVBoxLayoutitemAtBase* = proc(param1: cint): gen_qlayoutitem.QLayoutItem
proc onitemAt*(self: QVBoxLayout, slot: proc(super: QVBoxLayoutitemAtBase, param1: cint): gen_qlayoutitem.QLayoutItem) =
  # TODO check subclass
  type Cb = proc(super: QVBoxLayoutitemAtBase, param1: cint): gen_qlayoutitem.QLayoutItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_itemAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_itemAt(self: ptr cQVBoxLayout, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QVBoxLayout_itemAt ".} =
  type Cb = proc(super: QVBoxLayoutitemAtBase, param1: cint): gen_qlayoutitem.QLayoutItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_itemAt(QVBoxLayout(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_takeAt(self: QVBoxLayout, param1: cint): gen_qlayoutitem.QLayoutItem =


  gen_qlayoutitem.QLayoutItem(h: fQVBoxLayout_virtualbase_takeAt(self.h, param1))

type QVBoxLayouttakeAtBase* = proc(param1: cint): gen_qlayoutitem.QLayoutItem
proc ontakeAt*(self: QVBoxLayout, slot: proc(super: QVBoxLayouttakeAtBase, param1: cint): gen_qlayoutitem.QLayoutItem) =
  # TODO check subclass
  type Cb = proc(super: QVBoxLayouttakeAtBase, param1: cint): gen_qlayoutitem.QLayoutItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_takeAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_takeAt(self: ptr cQVBoxLayout, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QVBoxLayout_takeAt ".} =
  type Cb = proc(super: QVBoxLayouttakeAtBase, param1: cint): gen_qlayoutitem.QLayoutItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_takeAt(QVBoxLayout(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_count(self: QVBoxLayout, ): cint =


  fQVBoxLayout_virtualbase_count(self.h)

type QVBoxLayoutcountBase* = proc(): cint
proc oncount*(self: QVBoxLayout, slot: proc(super: QVBoxLayoutcountBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QVBoxLayoutcountBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_count(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_count(self: ptr cQVBoxLayout, slot: int): cint {.exportc: "miqt_exec_callback_QVBoxLayout_count ".} =
  type Cb = proc(super: QVBoxLayoutcountBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_count(QVBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setGeometry(self: QVBoxLayout, geometry: gen_qrect.QRect): void =


  fQVBoxLayout_virtualbase_setGeometry(self.h, geometry.h)

type QVBoxLayoutsetGeometryBase* = proc(geometry: gen_qrect.QRect): void
proc onsetGeometry*(self: QVBoxLayout, slot: proc(super: QVBoxLayoutsetGeometryBase, geometry: gen_qrect.QRect): void) =
  # TODO check subclass
  type Cb = proc(super: QVBoxLayoutsetGeometryBase, geometry: gen_qrect.QRect): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_setGeometry(self: ptr cQVBoxLayout, slot: int, geometry: pointer): void {.exportc: "miqt_exec_callback_QVBoxLayout_setGeometry ".} =
  type Cb = proc(super: QVBoxLayoutsetGeometryBase, geometry: gen_qrect.QRect): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(geometry: gen_qrect.QRect): auto =
    callVirtualBase_setGeometry(QVBoxLayout(h: self), geometry)
  let slotval1 = gen_qrect.QRect(h: geometry)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_geometry(self: QVBoxLayout, ): gen_qrect.QRect =


  gen_qrect.QRect(h: fQVBoxLayout_virtualbase_geometry(self.h))

type QVBoxLayoutgeometryBase* = proc(): gen_qrect.QRect
proc ongeometry*(self: QVBoxLayout, slot: proc(super: QVBoxLayoutgeometryBase): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QVBoxLayoutgeometryBase): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_geometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_geometry(self: ptr cQVBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QVBoxLayout_geometry ".} =
  type Cb = proc(super: QVBoxLayoutgeometryBase): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_geometry(QVBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_indexOf(self: QVBoxLayout, param1: gen_qwidget.QWidget): cint =


  fQVBoxLayout_virtualbase_indexOf(self.h, param1.h)

type QVBoxLayoutindexOfBase* = proc(param1: gen_qwidget.QWidget): cint
proc onindexOf*(self: QVBoxLayout, slot: proc(super: QVBoxLayoutindexOfBase, param1: gen_qwidget.QWidget): cint) =
  # TODO check subclass
  type Cb = proc(super: QVBoxLayoutindexOfBase, param1: gen_qwidget.QWidget): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_indexOf(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_indexOf(self: ptr cQVBoxLayout, slot: int, param1: pointer): cint {.exportc: "miqt_exec_callback_QVBoxLayout_indexOf ".} =
  type Cb = proc(super: QVBoxLayoutindexOfBase, param1: gen_qwidget.QWidget): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qwidget.QWidget): auto =
    callVirtualBase_indexOf(QVBoxLayout(h: self), param1)
  let slotval1 = gen_qwidget.QWidget(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_isEmpty(self: QVBoxLayout, ): bool =


  fQVBoxLayout_virtualbase_isEmpty(self.h)

type QVBoxLayoutisEmptyBase* = proc(): bool
proc onisEmpty*(self: QVBoxLayout, slot: proc(super: QVBoxLayoutisEmptyBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QVBoxLayoutisEmptyBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_isEmpty(self: ptr cQVBoxLayout, slot: int): bool {.exportc: "miqt_exec_callback_QVBoxLayout_isEmpty ".} =
  type Cb = proc(super: QVBoxLayoutisEmptyBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isEmpty(QVBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_controlTypes(self: QVBoxLayout, ): gen_qsizepolicy.QSizePolicyControlType =


  gen_qsizepolicy.QSizePolicyControlType(fQVBoxLayout_virtualbase_controlTypes(self.h))

type QVBoxLayoutcontrolTypesBase* = proc(): gen_qsizepolicy.QSizePolicyControlType
proc oncontrolTypes*(self: QVBoxLayout, slot: proc(super: QVBoxLayoutcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType) =
  # TODO check subclass
  type Cb = proc(super: QVBoxLayoutcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_controlTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_controlTypes(self: ptr cQVBoxLayout, slot: int): cint {.exportc: "miqt_exec_callback_QVBoxLayout_controlTypes ".} =
  type Cb = proc(super: QVBoxLayoutcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_controlTypes(QVBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_layout(self: QVBoxLayout, ): gen_qlayout.QLayout =


  gen_qlayout.QLayout(h: fQVBoxLayout_virtualbase_layout(self.h))

type QVBoxLayoutlayoutBase* = proc(): gen_qlayout.QLayout
proc onlayout*(self: QVBoxLayout, slot: proc(super: QVBoxLayoutlayoutBase): gen_qlayout.QLayout) =
  # TODO check subclass
  type Cb = proc(super: QVBoxLayoutlayoutBase): gen_qlayout.QLayout
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_layout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_layout(self: ptr cQVBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QVBoxLayout_layout ".} =
  type Cb = proc(super: QVBoxLayoutlayoutBase): gen_qlayout.QLayout
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_layout(QVBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_childEvent(self: QVBoxLayout, e: gen_qcoreevent.QChildEvent): void =


  fQVBoxLayout_virtualbase_childEvent(self.h, e.h)

type QVBoxLayoutchildEventBase* = proc(e: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QVBoxLayout, slot: proc(super: QVBoxLayoutchildEventBase, e: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVBoxLayoutchildEventBase, e: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_childEvent(self: ptr cQVBoxLayout, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QVBoxLayout_childEvent ".} =
  type Cb = proc(super: QVBoxLayoutchildEventBase, e: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QVBoxLayout(h: self), e)
  let slotval1 = gen_qcoreevent.QChildEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QVBoxLayout, event: gen_qcoreevent.QEvent): bool =


  fQVBoxLayout_virtualbase_event(self.h, event.h)

type QVBoxLayouteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QVBoxLayout, slot: proc(super: QVBoxLayouteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QVBoxLayouteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_event(self: ptr cQVBoxLayout, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QVBoxLayout_event ".} =
  type Cb = proc(super: QVBoxLayouteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QVBoxLayout(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QVBoxLayout, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQVBoxLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

type QVBoxLayouteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QVBoxLayout, slot: proc(super: QVBoxLayouteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QVBoxLayouteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_eventFilter(self: ptr cQVBoxLayout, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QVBoxLayout_eventFilter ".} =
  type Cb = proc(super: QVBoxLayouteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QVBoxLayout(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QVBoxLayout, event: gen_qcoreevent.QTimerEvent): void =


  fQVBoxLayout_virtualbase_timerEvent(self.h, event.h)

type QVBoxLayouttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QVBoxLayout, slot: proc(super: QVBoxLayouttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVBoxLayouttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_timerEvent(self: ptr cQVBoxLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVBoxLayout_timerEvent ".} =
  type Cb = proc(super: QVBoxLayouttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QVBoxLayout(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QVBoxLayout, event: gen_qcoreevent.QEvent): void =


  fQVBoxLayout_virtualbase_customEvent(self.h, event.h)

type QVBoxLayoutcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QVBoxLayout, slot: proc(super: QVBoxLayoutcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVBoxLayoutcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_customEvent(self: ptr cQVBoxLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVBoxLayout_customEvent ".} =
  type Cb = proc(super: QVBoxLayoutcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QVBoxLayout(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QVBoxLayout, signal: gen_qmetaobject.QMetaMethod): void =


  fQVBoxLayout_virtualbase_connectNotify(self.h, signal.h)

type QVBoxLayoutconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QVBoxLayout, slot: proc(super: QVBoxLayoutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QVBoxLayoutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_connectNotify(self: ptr cQVBoxLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QVBoxLayout_connectNotify ".} =
  type Cb = proc(super: QVBoxLayoutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QVBoxLayout(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QVBoxLayout, signal: gen_qmetaobject.QMetaMethod): void =


  fQVBoxLayout_virtualbase_disconnectNotify(self.h, signal.h)

type QVBoxLayoutdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QVBoxLayout, slot: proc(super: QVBoxLayoutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QVBoxLayoutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_disconnectNotify(self: ptr cQVBoxLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QVBoxLayout_disconnectNotify ".} =
  type Cb = proc(super: QVBoxLayoutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QVBoxLayout(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_widget(self: QVBoxLayout, ): gen_qwidget.QWidget =


  gen_qwidget.QWidget(h: fQVBoxLayout_virtualbase_widget(self.h))

type QVBoxLayoutwidgetBase* = proc(): gen_qwidget.QWidget
proc onwidget*(self: QVBoxLayout, slot: proc(super: QVBoxLayoutwidgetBase): gen_qwidget.QWidget) =
  # TODO check subclass
  type Cb = proc(super: QVBoxLayoutwidgetBase): gen_qwidget.QWidget
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_widget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_widget(self: ptr cQVBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QVBoxLayout_widget ".} =
  type Cb = proc(super: QVBoxLayoutwidgetBase): gen_qwidget.QWidget
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_widget(QVBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_spacerItem(self: QVBoxLayout, ): gen_qlayoutitem.QSpacerItem =


  gen_qlayoutitem.QSpacerItem(h: fQVBoxLayout_virtualbase_spacerItem(self.h))

type QVBoxLayoutspacerItemBase* = proc(): gen_qlayoutitem.QSpacerItem
proc onspacerItem*(self: QVBoxLayout, slot: proc(super: QVBoxLayoutspacerItemBase): gen_qlayoutitem.QSpacerItem) =
  # TODO check subclass
  type Cb = proc(super: QVBoxLayoutspacerItemBase): gen_qlayoutitem.QSpacerItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVBoxLayout_override_virtual_spacerItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVBoxLayout_spacerItem(self: ptr cQVBoxLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QVBoxLayout_spacerItem ".} =
  type Cb = proc(super: QVBoxLayoutspacerItemBase): gen_qlayoutitem.QSpacerItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_spacerItem(QVBoxLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QVBoxLayout) =
  fcQVBoxLayout_delete(self.h)
