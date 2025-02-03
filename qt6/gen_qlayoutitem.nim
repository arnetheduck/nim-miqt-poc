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
{.compile("gen_qlayoutitem.cpp", cflags).}


import gen_qlayoutitem_types
export gen_qlayoutitem_types

import
  gen_qlayout,
  gen_qnamespace,
  gen_qrect,
  gen_qsize,
  gen_qsizepolicy,
  gen_qwidget
export
  gen_qlayout,
  gen_qnamespace,
  gen_qrect,
  gen_qsize,
  gen_qsizepolicy,
  gen_qwidget

type cQLayoutItem*{.exportc: "QLayoutItem", incompleteStruct.} = object
type cQSpacerItem*{.exportc: "QSpacerItem", incompleteStruct.} = object
type cQWidgetItem*{.exportc: "QWidgetItem", incompleteStruct.} = object
type cQWidgetItemV2*{.exportc: "QWidgetItemV2", incompleteStruct.} = object

proc fcQLayoutItem_new(): ptr cQLayoutItem {.importc: "QLayoutItem_new".}
proc fcQLayoutItem_new2(param1: pointer): ptr cQLayoutItem {.importc: "QLayoutItem_new2".}
proc fcQLayoutItem_new3(alignment: cint): ptr cQLayoutItem {.importc: "QLayoutItem_new3".}
proc fcQLayoutItem_sizeHint(self: pointer, ): pointer {.importc: "QLayoutItem_sizeHint".}
proc fcQLayoutItem_minimumSize(self: pointer, ): pointer {.importc: "QLayoutItem_minimumSize".}
proc fcQLayoutItem_maximumSize(self: pointer, ): pointer {.importc: "QLayoutItem_maximumSize".}
proc fcQLayoutItem_expandingDirections(self: pointer, ): cint {.importc: "QLayoutItem_expandingDirections".}
proc fcQLayoutItem_setGeometry(self: pointer, geometry: pointer): void {.importc: "QLayoutItem_setGeometry".}
proc fcQLayoutItem_geometry(self: pointer, ): pointer {.importc: "QLayoutItem_geometry".}
proc fcQLayoutItem_isEmpty(self: pointer, ): bool {.importc: "QLayoutItem_isEmpty".}
proc fcQLayoutItem_hasHeightForWidth(self: pointer, ): bool {.importc: "QLayoutItem_hasHeightForWidth".}
proc fcQLayoutItem_heightForWidth(self: pointer, param1: cint): cint {.importc: "QLayoutItem_heightForWidth".}
proc fcQLayoutItem_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QLayoutItem_minimumHeightForWidth".}
proc fcQLayoutItem_invalidate(self: pointer, ): void {.importc: "QLayoutItem_invalidate".}
proc fcQLayoutItem_widget(self: pointer, ): pointer {.importc: "QLayoutItem_widget".}
proc fcQLayoutItem_layout(self: pointer, ): pointer {.importc: "QLayoutItem_layout".}
proc fcQLayoutItem_spacerItem(self: pointer, ): pointer {.importc: "QLayoutItem_spacerItem".}
proc fcQLayoutItem_alignment(self: pointer, ): cint {.importc: "QLayoutItem_alignment".}
proc fcQLayoutItem_setAlignment(self: pointer, a: cint): void {.importc: "QLayoutItem_setAlignment".}
proc fcQLayoutItem_controlTypes(self: pointer, ): cint {.importc: "QLayoutItem_controlTypes".}
proc fcQLayoutItem_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_sizeHint".}
proc fcQLayoutItem_override_virtual_minimumSize(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_minimumSize".}
proc fcQLayoutItem_override_virtual_maximumSize(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_maximumSize".}
proc fcQLayoutItem_override_virtual_expandingDirections(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_expandingDirections".}
proc fcQLayoutItem_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_setGeometry".}
proc fcQLayoutItem_override_virtual_geometry(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_geometry".}
proc fcQLayoutItem_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_isEmpty".}
proc fQLayoutItem_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QLayoutItem_virtualbase_hasHeightForWidth".}
proc fcQLayoutItem_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_hasHeightForWidth".}
proc fQLayoutItem_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QLayoutItem_virtualbase_heightForWidth".}
proc fcQLayoutItem_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_heightForWidth".}
proc fQLayoutItem_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint{.importc: "QLayoutItem_virtualbase_minimumHeightForWidth".}
proc fcQLayoutItem_override_virtual_minimumHeightForWidth(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_minimumHeightForWidth".}
proc fQLayoutItem_virtualbase_invalidate(self: pointer, ): void{.importc: "QLayoutItem_virtualbase_invalidate".}
proc fcQLayoutItem_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_invalidate".}
proc fQLayoutItem_virtualbase_widget(self: pointer, ): pointer{.importc: "QLayoutItem_virtualbase_widget".}
proc fcQLayoutItem_override_virtual_widget(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_widget".}
proc fQLayoutItem_virtualbase_layout(self: pointer, ): pointer{.importc: "QLayoutItem_virtualbase_layout".}
proc fcQLayoutItem_override_virtual_layout(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_layout".}
proc fQLayoutItem_virtualbase_spacerItem(self: pointer, ): pointer{.importc: "QLayoutItem_virtualbase_spacerItem".}
proc fcQLayoutItem_override_virtual_spacerItem(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_spacerItem".}
proc fQLayoutItem_virtualbase_controlTypes(self: pointer, ): cint{.importc: "QLayoutItem_virtualbase_controlTypes".}
proc fcQLayoutItem_override_virtual_controlTypes(self: pointer, slot: int) {.importc: "QLayoutItem_override_virtual_controlTypes".}
proc fcQLayoutItem_delete(self: pointer) {.importc: "QLayoutItem_delete".}
proc fcQSpacerItem_new(w: cint, h: cint): ptr cQSpacerItem {.importc: "QSpacerItem_new".}
proc fcQSpacerItem_new2(param1: pointer): ptr cQSpacerItem {.importc: "QSpacerItem_new2".}
proc fcQSpacerItem_new3(w: cint, h: cint, hData: cint): ptr cQSpacerItem {.importc: "QSpacerItem_new3".}
proc fcQSpacerItem_new4(w: cint, h: cint, hData: cint, vData: cint): ptr cQSpacerItem {.importc: "QSpacerItem_new4".}
proc fcQSpacerItem_changeSize(self: pointer, w: cint, h: cint): void {.importc: "QSpacerItem_changeSize".}
proc fcQSpacerItem_sizeHint(self: pointer, ): pointer {.importc: "QSpacerItem_sizeHint".}
proc fcQSpacerItem_minimumSize(self: pointer, ): pointer {.importc: "QSpacerItem_minimumSize".}
proc fcQSpacerItem_maximumSize(self: pointer, ): pointer {.importc: "QSpacerItem_maximumSize".}
proc fcQSpacerItem_expandingDirections(self: pointer, ): cint {.importc: "QSpacerItem_expandingDirections".}
proc fcQSpacerItem_isEmpty(self: pointer, ): bool {.importc: "QSpacerItem_isEmpty".}
proc fcQSpacerItem_setGeometry(self: pointer, geometry: pointer): void {.importc: "QSpacerItem_setGeometry".}
proc fcQSpacerItem_geometry(self: pointer, ): pointer {.importc: "QSpacerItem_geometry".}
proc fcQSpacerItem_spacerItem(self: pointer, ): pointer {.importc: "QSpacerItem_spacerItem".}
proc fcQSpacerItem_sizePolicy(self: pointer, ): pointer {.importc: "QSpacerItem_sizePolicy".}
proc fcQSpacerItem_changeSize3(self: pointer, w: cint, h: cint, hData: cint): void {.importc: "QSpacerItem_changeSize3".}
proc fcQSpacerItem_changeSize4(self: pointer, w: cint, h: cint, hData: cint, vData: cint): void {.importc: "QSpacerItem_changeSize4".}
proc fQSpacerItem_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QSpacerItem_virtualbase_sizeHint".}
proc fcQSpacerItem_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_sizeHint".}
proc fQSpacerItem_virtualbase_minimumSize(self: pointer, ): pointer{.importc: "QSpacerItem_virtualbase_minimumSize".}
proc fcQSpacerItem_override_virtual_minimumSize(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_minimumSize".}
proc fQSpacerItem_virtualbase_maximumSize(self: pointer, ): pointer{.importc: "QSpacerItem_virtualbase_maximumSize".}
proc fcQSpacerItem_override_virtual_maximumSize(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_maximumSize".}
proc fQSpacerItem_virtualbase_expandingDirections(self: pointer, ): cint{.importc: "QSpacerItem_virtualbase_expandingDirections".}
proc fcQSpacerItem_override_virtual_expandingDirections(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_expandingDirections".}
proc fQSpacerItem_virtualbase_isEmpty(self: pointer, ): bool{.importc: "QSpacerItem_virtualbase_isEmpty".}
proc fcQSpacerItem_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_isEmpty".}
proc fQSpacerItem_virtualbase_setGeometry(self: pointer, geometry: pointer): void{.importc: "QSpacerItem_virtualbase_setGeometry".}
proc fcQSpacerItem_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_setGeometry".}
proc fQSpacerItem_virtualbase_geometry(self: pointer, ): pointer{.importc: "QSpacerItem_virtualbase_geometry".}
proc fcQSpacerItem_override_virtual_geometry(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_geometry".}
proc fQSpacerItem_virtualbase_spacerItem(self: pointer, ): pointer{.importc: "QSpacerItem_virtualbase_spacerItem".}
proc fcQSpacerItem_override_virtual_spacerItem(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_spacerItem".}
proc fQSpacerItem_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QSpacerItem_virtualbase_hasHeightForWidth".}
proc fcQSpacerItem_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_hasHeightForWidth".}
proc fQSpacerItem_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QSpacerItem_virtualbase_heightForWidth".}
proc fcQSpacerItem_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_heightForWidth".}
proc fQSpacerItem_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint{.importc: "QSpacerItem_virtualbase_minimumHeightForWidth".}
proc fcQSpacerItem_override_virtual_minimumHeightForWidth(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_minimumHeightForWidth".}
proc fQSpacerItem_virtualbase_invalidate(self: pointer, ): void{.importc: "QSpacerItem_virtualbase_invalidate".}
proc fcQSpacerItem_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_invalidate".}
proc fQSpacerItem_virtualbase_widget(self: pointer, ): pointer{.importc: "QSpacerItem_virtualbase_widget".}
proc fcQSpacerItem_override_virtual_widget(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_widget".}
proc fQSpacerItem_virtualbase_layout(self: pointer, ): pointer{.importc: "QSpacerItem_virtualbase_layout".}
proc fcQSpacerItem_override_virtual_layout(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_layout".}
proc fQSpacerItem_virtualbase_controlTypes(self: pointer, ): cint{.importc: "QSpacerItem_virtualbase_controlTypes".}
proc fcQSpacerItem_override_virtual_controlTypes(self: pointer, slot: int) {.importc: "QSpacerItem_override_virtual_controlTypes".}
proc fcQSpacerItem_delete(self: pointer) {.importc: "QSpacerItem_delete".}
proc fcQWidgetItem_new(w: pointer): ptr cQWidgetItem {.importc: "QWidgetItem_new".}
proc fcQWidgetItem_sizeHint(self: pointer, ): pointer {.importc: "QWidgetItem_sizeHint".}
proc fcQWidgetItem_minimumSize(self: pointer, ): pointer {.importc: "QWidgetItem_minimumSize".}
proc fcQWidgetItem_maximumSize(self: pointer, ): pointer {.importc: "QWidgetItem_maximumSize".}
proc fcQWidgetItem_expandingDirections(self: pointer, ): cint {.importc: "QWidgetItem_expandingDirections".}
proc fcQWidgetItem_isEmpty(self: pointer, ): bool {.importc: "QWidgetItem_isEmpty".}
proc fcQWidgetItem_setGeometry(self: pointer, geometry: pointer): void {.importc: "QWidgetItem_setGeometry".}
proc fcQWidgetItem_geometry(self: pointer, ): pointer {.importc: "QWidgetItem_geometry".}
proc fcQWidgetItem_widget(self: pointer, ): pointer {.importc: "QWidgetItem_widget".}
proc fcQWidgetItem_hasHeightForWidth(self: pointer, ): bool {.importc: "QWidgetItem_hasHeightForWidth".}
proc fcQWidgetItem_heightForWidth(self: pointer, param1: cint): cint {.importc: "QWidgetItem_heightForWidth".}
proc fcQWidgetItem_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QWidgetItem_minimumHeightForWidth".}
proc fcQWidgetItem_controlTypes(self: pointer, ): cint {.importc: "QWidgetItem_controlTypes".}
proc fQWidgetItem_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QWidgetItem_virtualbase_sizeHint".}
proc fcQWidgetItem_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_sizeHint".}
proc fQWidgetItem_virtualbase_minimumSize(self: pointer, ): pointer{.importc: "QWidgetItem_virtualbase_minimumSize".}
proc fcQWidgetItem_override_virtual_minimumSize(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_minimumSize".}
proc fQWidgetItem_virtualbase_maximumSize(self: pointer, ): pointer{.importc: "QWidgetItem_virtualbase_maximumSize".}
proc fcQWidgetItem_override_virtual_maximumSize(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_maximumSize".}
proc fQWidgetItem_virtualbase_expandingDirections(self: pointer, ): cint{.importc: "QWidgetItem_virtualbase_expandingDirections".}
proc fcQWidgetItem_override_virtual_expandingDirections(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_expandingDirections".}
proc fQWidgetItem_virtualbase_isEmpty(self: pointer, ): bool{.importc: "QWidgetItem_virtualbase_isEmpty".}
proc fcQWidgetItem_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_isEmpty".}
proc fQWidgetItem_virtualbase_setGeometry(self: pointer, geometry: pointer): void{.importc: "QWidgetItem_virtualbase_setGeometry".}
proc fcQWidgetItem_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_setGeometry".}
proc fQWidgetItem_virtualbase_geometry(self: pointer, ): pointer{.importc: "QWidgetItem_virtualbase_geometry".}
proc fcQWidgetItem_override_virtual_geometry(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_geometry".}
proc fQWidgetItem_virtualbase_widget(self: pointer, ): pointer{.importc: "QWidgetItem_virtualbase_widget".}
proc fcQWidgetItem_override_virtual_widget(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_widget".}
proc fQWidgetItem_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QWidgetItem_virtualbase_hasHeightForWidth".}
proc fcQWidgetItem_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_hasHeightForWidth".}
proc fQWidgetItem_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QWidgetItem_virtualbase_heightForWidth".}
proc fcQWidgetItem_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_heightForWidth".}
proc fQWidgetItem_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint{.importc: "QWidgetItem_virtualbase_minimumHeightForWidth".}
proc fcQWidgetItem_override_virtual_minimumHeightForWidth(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_minimumHeightForWidth".}
proc fQWidgetItem_virtualbase_controlTypes(self: pointer, ): cint{.importc: "QWidgetItem_virtualbase_controlTypes".}
proc fcQWidgetItem_override_virtual_controlTypes(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_controlTypes".}
proc fQWidgetItem_virtualbase_invalidate(self: pointer, ): void{.importc: "QWidgetItem_virtualbase_invalidate".}
proc fcQWidgetItem_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_invalidate".}
proc fQWidgetItem_virtualbase_layout(self: pointer, ): pointer{.importc: "QWidgetItem_virtualbase_layout".}
proc fcQWidgetItem_override_virtual_layout(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_layout".}
proc fQWidgetItem_virtualbase_spacerItem(self: pointer, ): pointer{.importc: "QWidgetItem_virtualbase_spacerItem".}
proc fcQWidgetItem_override_virtual_spacerItem(self: pointer, slot: int) {.importc: "QWidgetItem_override_virtual_spacerItem".}
proc fcQWidgetItem_delete(self: pointer) {.importc: "QWidgetItem_delete".}
proc fcQWidgetItemV2_new(widget: pointer): ptr cQWidgetItemV2 {.importc: "QWidgetItemV2_new".}
proc fcQWidgetItemV2_sizeHint(self: pointer, ): pointer {.importc: "QWidgetItemV2_sizeHint".}
proc fcQWidgetItemV2_minimumSize(self: pointer, ): pointer {.importc: "QWidgetItemV2_minimumSize".}
proc fcQWidgetItemV2_maximumSize(self: pointer, ): pointer {.importc: "QWidgetItemV2_maximumSize".}
proc fcQWidgetItemV2_heightForWidth(self: pointer, width: cint): cint {.importc: "QWidgetItemV2_heightForWidth".}
proc fQWidgetItemV2_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QWidgetItemV2_virtualbase_sizeHint".}
proc fcQWidgetItemV2_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_sizeHint".}
proc fQWidgetItemV2_virtualbase_minimumSize(self: pointer, ): pointer{.importc: "QWidgetItemV2_virtualbase_minimumSize".}
proc fcQWidgetItemV2_override_virtual_minimumSize(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_minimumSize".}
proc fQWidgetItemV2_virtualbase_maximumSize(self: pointer, ): pointer{.importc: "QWidgetItemV2_virtualbase_maximumSize".}
proc fcQWidgetItemV2_override_virtual_maximumSize(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_maximumSize".}
proc fQWidgetItemV2_virtualbase_heightForWidth(self: pointer, width: cint): cint{.importc: "QWidgetItemV2_virtualbase_heightForWidth".}
proc fcQWidgetItemV2_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_heightForWidth".}
proc fQWidgetItemV2_virtualbase_expandingDirections(self: pointer, ): cint{.importc: "QWidgetItemV2_virtualbase_expandingDirections".}
proc fcQWidgetItemV2_override_virtual_expandingDirections(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_expandingDirections".}
proc fQWidgetItemV2_virtualbase_isEmpty(self: pointer, ): bool{.importc: "QWidgetItemV2_virtualbase_isEmpty".}
proc fcQWidgetItemV2_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_isEmpty".}
proc fQWidgetItemV2_virtualbase_setGeometry(self: pointer, geometry: pointer): void{.importc: "QWidgetItemV2_virtualbase_setGeometry".}
proc fcQWidgetItemV2_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_setGeometry".}
proc fQWidgetItemV2_virtualbase_geometry(self: pointer, ): pointer{.importc: "QWidgetItemV2_virtualbase_geometry".}
proc fcQWidgetItemV2_override_virtual_geometry(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_geometry".}
proc fQWidgetItemV2_virtualbase_widget(self: pointer, ): pointer{.importc: "QWidgetItemV2_virtualbase_widget".}
proc fcQWidgetItemV2_override_virtual_widget(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_widget".}
proc fQWidgetItemV2_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QWidgetItemV2_virtualbase_hasHeightForWidth".}
proc fcQWidgetItemV2_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_hasHeightForWidth".}
proc fQWidgetItemV2_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint{.importc: "QWidgetItemV2_virtualbase_minimumHeightForWidth".}
proc fcQWidgetItemV2_override_virtual_minimumHeightForWidth(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_minimumHeightForWidth".}
proc fQWidgetItemV2_virtualbase_controlTypes(self: pointer, ): cint{.importc: "QWidgetItemV2_virtualbase_controlTypes".}
proc fcQWidgetItemV2_override_virtual_controlTypes(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_controlTypes".}
proc fQWidgetItemV2_virtualbase_invalidate(self: pointer, ): void{.importc: "QWidgetItemV2_virtualbase_invalidate".}
proc fcQWidgetItemV2_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_invalidate".}
proc fQWidgetItemV2_virtualbase_layout(self: pointer, ): pointer{.importc: "QWidgetItemV2_virtualbase_layout".}
proc fcQWidgetItemV2_override_virtual_layout(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_layout".}
proc fQWidgetItemV2_virtualbase_spacerItem(self: pointer, ): pointer{.importc: "QWidgetItemV2_virtualbase_spacerItem".}
proc fcQWidgetItemV2_override_virtual_spacerItem(self: pointer, slot: int) {.importc: "QWidgetItemV2_override_virtual_spacerItem".}
proc fcQWidgetItemV2_delete(self: pointer) {.importc: "QWidgetItemV2_delete".}


func init*(T: type QLayoutItem, h: ptr cQLayoutItem): QLayoutItem =
  T(h: h)
proc create*(T: type QLayoutItem, ): QLayoutItem =

  QLayoutItem.init(fcQLayoutItem_new())
proc create*(T: type QLayoutItem, param1: QLayoutItem): QLayoutItem =

  QLayoutItem.init(fcQLayoutItem_new2(param1.h))
proc create*(T: type QLayoutItem, alignment: gen_qnamespace.AlignmentFlag): QLayoutItem =

  QLayoutItem.init(fcQLayoutItem_new3(cint(alignment)))
proc sizeHint*(self: QLayoutItem, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQLayoutItem_sizeHint(self.h))

proc minimumSize*(self: QLayoutItem, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQLayoutItem_minimumSize(self.h))

proc maximumSize*(self: QLayoutItem, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQLayoutItem_maximumSize(self.h))

proc expandingDirections*(self: QLayoutItem, ): gen_qnamespace.Orientation =

  gen_qnamespace.Orientation(fcQLayoutItem_expandingDirections(self.h))

proc setGeometry*(self: QLayoutItem, geometry: gen_qrect.QRect): void =

  fcQLayoutItem_setGeometry(self.h, geometry.h)

proc geometry*(self: QLayoutItem, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQLayoutItem_geometry(self.h))

proc isEmpty*(self: QLayoutItem, ): bool =

  fcQLayoutItem_isEmpty(self.h)

proc hasHeightForWidth*(self: QLayoutItem, ): bool =

  fcQLayoutItem_hasHeightForWidth(self.h)

proc heightForWidth*(self: QLayoutItem, param1: cint): cint =

  fcQLayoutItem_heightForWidth(self.h, param1)

proc minimumHeightForWidth*(self: QLayoutItem, param1: cint): cint =

  fcQLayoutItem_minimumHeightForWidth(self.h, param1)

proc invalidate*(self: QLayoutItem, ): void =

  fcQLayoutItem_invalidate(self.h)

proc widget*(self: QLayoutItem, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQLayoutItem_widget(self.h))

proc layout*(self: QLayoutItem, ): gen_qlayout.QLayout =

  gen_qlayout.QLayout(h: fcQLayoutItem_layout(self.h))

proc spacerItem*(self: QLayoutItem, ): QSpacerItem =

  QSpacerItem(h: fcQLayoutItem_spacerItem(self.h))

proc alignment*(self: QLayoutItem, ): gen_qnamespace.AlignmentFlag =

  gen_qnamespace.AlignmentFlag(fcQLayoutItem_alignment(self.h))

proc setAlignment*(self: QLayoutItem, a: gen_qnamespace.AlignmentFlag): void =

  fcQLayoutItem_setAlignment(self.h, cint(a))

proc controlTypes*(self: QLayoutItem, ): gen_qsizepolicy.QSizePolicyControlType =

  gen_qsizepolicy.QSizePolicyControlType(fcQLayoutItem_controlTypes(self.h))

type QLayoutItemsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QLayoutItem, slot: proc(): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_sizeHint(self: ptr cQLayoutItem, slot: int): pointer {.exportc: "miqt_exec_callback_QLayoutItem_sizeHint ".} =
  type Cb = proc(): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
type QLayoutItemminimumSizeBase* = proc(): gen_qsize.QSize
proc onminimumSize*(self: QLayoutItem, slot: proc(): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_minimumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_minimumSize(self: ptr cQLayoutItem, slot: int): pointer {.exportc: "miqt_exec_callback_QLayoutItem_minimumSize ".} =
  type Cb = proc(): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
type QLayoutItemmaximumSizeBase* = proc(): gen_qsize.QSize
proc onmaximumSize*(self: QLayoutItem, slot: proc(): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_maximumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_maximumSize(self: ptr cQLayoutItem, slot: int): pointer {.exportc: "miqt_exec_callback_QLayoutItem_maximumSize ".} =
  type Cb = proc(): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
type QLayoutItemexpandingDirectionsBase* = proc(): gen_qnamespace.Orientation
proc onexpandingDirections*(self: QLayoutItem, slot: proc(): gen_qnamespace.Orientation) =
  # TODO check subclass
  type Cb = proc(): gen_qnamespace.Orientation
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_expandingDirections(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_expandingDirections(self: ptr cQLayoutItem, slot: int): cint {.exportc: "miqt_exec_callback_QLayoutItem_expandingDirections ".} =
  type Cb = proc(): gen_qnamespace.Orientation
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
type QLayoutItemsetGeometryBase* = proc(geometry: gen_qrect.QRect): void
proc onsetGeometry*(self: QLayoutItem, slot: proc(geometry: gen_qrect.QRect): void) =
  # TODO check subclass
  type Cb = proc(geometry: gen_qrect.QRect): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_setGeometry(self: ptr cQLayoutItem, slot: int, geometry: pointer): void {.exportc: "miqt_exec_callback_QLayoutItem_setGeometry ".} =
  type Cb = proc(geometry: gen_qrect.QRect): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qrect.QRect(h: geometry)


  nimfunc[](slotval1)
type QLayoutItemgeometryBase* = proc(): gen_qrect.QRect
proc ongeometry*(self: QLayoutItem, slot: proc(): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_geometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_geometry(self: ptr cQLayoutItem, slot: int): pointer {.exportc: "miqt_exec_callback_QLayoutItem_geometry ".} =
  type Cb = proc(): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
type QLayoutItemisEmptyBase* = proc(): bool
proc onisEmpty*(self: QLayoutItem, slot: proc(): bool) =
  # TODO check subclass
  type Cb = proc(): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_isEmpty(self: ptr cQLayoutItem, slot: int): bool {.exportc: "miqt_exec_callback_QLayoutItem_isEmpty ".} =
  type Cb = proc(): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QLayoutItem, ): bool =


  fQLayoutItem_virtualbase_hasHeightForWidth(self.h)

type QLayoutItemhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QLayoutItem, slot: proc(super: QLayoutItemhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QLayoutItemhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_hasHeightForWidth(self: ptr cQLayoutItem, slot: int): bool {.exportc: "miqt_exec_callback_QLayoutItem_hasHeightForWidth ".} =
  type Cb = proc(super: QLayoutItemhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QLayoutItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_heightForWidth(self: QLayoutItem, param1: cint): cint =


  fQLayoutItem_virtualbase_heightForWidth(self.h, param1)

type QLayoutItemheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QLayoutItem, slot: proc(super: QLayoutItemheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QLayoutItemheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_heightForWidth(self: ptr cQLayoutItem, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QLayoutItem_heightForWidth ".} =
  type Cb = proc(super: QLayoutItemheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QLayoutItem(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_minimumHeightForWidth(self: QLayoutItem, param1: cint): cint =


  fQLayoutItem_virtualbase_minimumHeightForWidth(self.h, param1)

type QLayoutItemminimumHeightForWidthBase* = proc(param1: cint): cint
proc onminimumHeightForWidth*(self: QLayoutItem, slot: proc(super: QLayoutItemminimumHeightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QLayoutItemminimumHeightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_minimumHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_minimumHeightForWidth(self: ptr cQLayoutItem, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QLayoutItem_minimumHeightForWidth ".} =
  type Cb = proc(super: QLayoutItemminimumHeightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_minimumHeightForWidth(QLayoutItem(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_invalidate(self: QLayoutItem, ): void =


  fQLayoutItem_virtualbase_invalidate(self.h)

type QLayoutIteminvalidateBase* = proc(): void
proc oninvalidate*(self: QLayoutItem, slot: proc(super: QLayoutIteminvalidateBase): void) =
  # TODO check subclass
  type Cb = proc(super: QLayoutIteminvalidateBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_invalidate(self: ptr cQLayoutItem, slot: int): void {.exportc: "miqt_exec_callback_QLayoutItem_invalidate ".} =
  type Cb = proc(super: QLayoutIteminvalidateBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_invalidate(QLayoutItem(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_widget(self: QLayoutItem, ): gen_qwidget.QWidget =


  gen_qwidget.QWidget(h: fQLayoutItem_virtualbase_widget(self.h))

type QLayoutItemwidgetBase* = proc(): gen_qwidget.QWidget
proc onwidget*(self: QLayoutItem, slot: proc(super: QLayoutItemwidgetBase): gen_qwidget.QWidget) =
  # TODO check subclass
  type Cb = proc(super: QLayoutItemwidgetBase): gen_qwidget.QWidget
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_widget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_widget(self: ptr cQLayoutItem, slot: int): pointer {.exportc: "miqt_exec_callback_QLayoutItem_widget ".} =
  type Cb = proc(super: QLayoutItemwidgetBase): gen_qwidget.QWidget
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_widget(QLayoutItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_layout(self: QLayoutItem, ): gen_qlayout.QLayout =


  gen_qlayout.QLayout(h: fQLayoutItem_virtualbase_layout(self.h))

type QLayoutItemlayoutBase* = proc(): gen_qlayout.QLayout
proc onlayout*(self: QLayoutItem, slot: proc(super: QLayoutItemlayoutBase): gen_qlayout.QLayout) =
  # TODO check subclass
  type Cb = proc(super: QLayoutItemlayoutBase): gen_qlayout.QLayout
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_layout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_layout(self: ptr cQLayoutItem, slot: int): pointer {.exportc: "miqt_exec_callback_QLayoutItem_layout ".} =
  type Cb = proc(super: QLayoutItemlayoutBase): gen_qlayout.QLayout
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_layout(QLayoutItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_spacerItem(self: QLayoutItem, ): QSpacerItem =


  QSpacerItem(h: fQLayoutItem_virtualbase_spacerItem(self.h))

type QLayoutItemspacerItemBase* = proc(): QSpacerItem
proc onspacerItem*(self: QLayoutItem, slot: proc(super: QLayoutItemspacerItemBase): QSpacerItem) =
  # TODO check subclass
  type Cb = proc(super: QLayoutItemspacerItemBase): QSpacerItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_spacerItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_spacerItem(self: ptr cQLayoutItem, slot: int): pointer {.exportc: "miqt_exec_callback_QLayoutItem_spacerItem ".} =
  type Cb = proc(super: QLayoutItemspacerItemBase): QSpacerItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_spacerItem(QLayoutItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_controlTypes(self: QLayoutItem, ): gen_qsizepolicy.QSizePolicyControlType =


  gen_qsizepolicy.QSizePolicyControlType(fQLayoutItem_virtualbase_controlTypes(self.h))

type QLayoutItemcontrolTypesBase* = proc(): gen_qsizepolicy.QSizePolicyControlType
proc oncontrolTypes*(self: QLayoutItem, slot: proc(super: QLayoutItemcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType) =
  # TODO check subclass
  type Cb = proc(super: QLayoutItemcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLayoutItem_override_virtual_controlTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLayoutItem_controlTypes(self: ptr cQLayoutItem, slot: int): cint {.exportc: "miqt_exec_callback_QLayoutItem_controlTypes ".} =
  type Cb = proc(super: QLayoutItemcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_controlTypes(QLayoutItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc delete*(self: QLayoutItem) =
  fcQLayoutItem_delete(self.h)

func init*(T: type QSpacerItem, h: ptr cQSpacerItem): QSpacerItem =
  T(h: h)
proc create*(T: type QSpacerItem, w: cint, h: cint): QSpacerItem =

  QSpacerItem.init(fcQSpacerItem_new(w, h))
proc create*(T: type QSpacerItem, param1: QSpacerItem): QSpacerItem =

  QSpacerItem.init(fcQSpacerItem_new2(param1.h))
proc create*(T: type QSpacerItem, w: cint, h: cint, hData: gen_qsizepolicy.QSizePolicyPolicy): QSpacerItem =

  QSpacerItem.init(fcQSpacerItem_new3(w, h, cint(hData)))
proc create*(T: type QSpacerItem, w: cint, h: cint, hData: gen_qsizepolicy.QSizePolicyPolicy, vData: gen_qsizepolicy.QSizePolicyPolicy): QSpacerItem =

  QSpacerItem.init(fcQSpacerItem_new4(w, h, cint(hData), cint(vData)))
proc changeSize*(self: QSpacerItem, w: cint, h: cint): void =

  fcQSpacerItem_changeSize(self.h, w, h)

proc sizeHint*(self: QSpacerItem, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQSpacerItem_sizeHint(self.h))

proc minimumSize*(self: QSpacerItem, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQSpacerItem_minimumSize(self.h))

proc maximumSize*(self: QSpacerItem, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQSpacerItem_maximumSize(self.h))

proc expandingDirections*(self: QSpacerItem, ): gen_qnamespace.Orientation =

  gen_qnamespace.Orientation(fcQSpacerItem_expandingDirections(self.h))

proc isEmpty*(self: QSpacerItem, ): bool =

  fcQSpacerItem_isEmpty(self.h)

proc setGeometry*(self: QSpacerItem, geometry: gen_qrect.QRect): void =

  fcQSpacerItem_setGeometry(self.h, geometry.h)

proc geometry*(self: QSpacerItem, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQSpacerItem_geometry(self.h))

proc spacerItem*(self: QSpacerItem, ): QSpacerItem =

  QSpacerItem(h: fcQSpacerItem_spacerItem(self.h))

proc sizePolicy*(self: QSpacerItem, ): gen_qsizepolicy.QSizePolicy =

  gen_qsizepolicy.QSizePolicy(h: fcQSpacerItem_sizePolicy(self.h))

proc changeSize3*(self: QSpacerItem, w: cint, h: cint, hData: gen_qsizepolicy.QSizePolicyPolicy): void =

  fcQSpacerItem_changeSize3(self.h, w, h, cint(hData))

proc changeSize4*(self: QSpacerItem, w: cint, h: cint, hData: gen_qsizepolicy.QSizePolicyPolicy, vData: gen_qsizepolicy.QSizePolicyPolicy): void =

  fcQSpacerItem_changeSize4(self.h, w, h, cint(hData), cint(vData))

proc callVirtualBase_sizeHint(self: QSpacerItem, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQSpacerItem_virtualbase_sizeHint(self.h))

type QSpacerItemsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QSpacerItem, slot: proc(super: QSpacerItemsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QSpacerItemsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_sizeHint(self: ptr cQSpacerItem, slot: int): pointer {.exportc: "miqt_exec_callback_QSpacerItem_sizeHint ".} =
  type Cb = proc(super: QSpacerItemsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QSpacerItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSize(self: QSpacerItem, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQSpacerItem_virtualbase_minimumSize(self.h))

type QSpacerItemminimumSizeBase* = proc(): gen_qsize.QSize
proc onminimumSize*(self: QSpacerItem, slot: proc(super: QSpacerItemminimumSizeBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QSpacerItemminimumSizeBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_minimumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_minimumSize(self: ptr cQSpacerItem, slot: int): pointer {.exportc: "miqt_exec_callback_QSpacerItem_minimumSize ".} =
  type Cb = proc(super: QSpacerItemminimumSizeBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSize(QSpacerItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_maximumSize(self: QSpacerItem, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQSpacerItem_virtualbase_maximumSize(self.h))

type QSpacerItemmaximumSizeBase* = proc(): gen_qsize.QSize
proc onmaximumSize*(self: QSpacerItem, slot: proc(super: QSpacerItemmaximumSizeBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QSpacerItemmaximumSizeBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_maximumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_maximumSize(self: ptr cQSpacerItem, slot: int): pointer {.exportc: "miqt_exec_callback_QSpacerItem_maximumSize ".} =
  type Cb = proc(super: QSpacerItemmaximumSizeBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_maximumSize(QSpacerItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_expandingDirections(self: QSpacerItem, ): gen_qnamespace.Orientation =


  gen_qnamespace.Orientation(fQSpacerItem_virtualbase_expandingDirections(self.h))

type QSpacerItemexpandingDirectionsBase* = proc(): gen_qnamespace.Orientation
proc onexpandingDirections*(self: QSpacerItem, slot: proc(super: QSpacerItemexpandingDirectionsBase): gen_qnamespace.Orientation) =
  # TODO check subclass
  type Cb = proc(super: QSpacerItemexpandingDirectionsBase): gen_qnamespace.Orientation
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_expandingDirections(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_expandingDirections(self: ptr cQSpacerItem, slot: int): cint {.exportc: "miqt_exec_callback_QSpacerItem_expandingDirections ".} =
  type Cb = proc(super: QSpacerItemexpandingDirectionsBase): gen_qnamespace.Orientation
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_expandingDirections(QSpacerItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_isEmpty(self: QSpacerItem, ): bool =


  fQSpacerItem_virtualbase_isEmpty(self.h)

type QSpacerItemisEmptyBase* = proc(): bool
proc onisEmpty*(self: QSpacerItem, slot: proc(super: QSpacerItemisEmptyBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSpacerItemisEmptyBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_isEmpty(self: ptr cQSpacerItem, slot: int): bool {.exportc: "miqt_exec_callback_QSpacerItem_isEmpty ".} =
  type Cb = proc(super: QSpacerItemisEmptyBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isEmpty(QSpacerItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setGeometry(self: QSpacerItem, geometry: gen_qrect.QRect): void =


  fQSpacerItem_virtualbase_setGeometry(self.h, geometry.h)

type QSpacerItemsetGeometryBase* = proc(geometry: gen_qrect.QRect): void
proc onsetGeometry*(self: QSpacerItem, slot: proc(super: QSpacerItemsetGeometryBase, geometry: gen_qrect.QRect): void) =
  # TODO check subclass
  type Cb = proc(super: QSpacerItemsetGeometryBase, geometry: gen_qrect.QRect): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_setGeometry(self: ptr cQSpacerItem, slot: int, geometry: pointer): void {.exportc: "miqt_exec_callback_QSpacerItem_setGeometry ".} =
  type Cb = proc(super: QSpacerItemsetGeometryBase, geometry: gen_qrect.QRect): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(geometry: gen_qrect.QRect): auto =
    callVirtualBase_setGeometry(QSpacerItem(h: self), geometry)
  let slotval1 = gen_qrect.QRect(h: geometry)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_geometry(self: QSpacerItem, ): gen_qrect.QRect =


  gen_qrect.QRect(h: fQSpacerItem_virtualbase_geometry(self.h))

type QSpacerItemgeometryBase* = proc(): gen_qrect.QRect
proc ongeometry*(self: QSpacerItem, slot: proc(super: QSpacerItemgeometryBase): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QSpacerItemgeometryBase): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_geometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_geometry(self: ptr cQSpacerItem, slot: int): pointer {.exportc: "miqt_exec_callback_QSpacerItem_geometry ".} =
  type Cb = proc(super: QSpacerItemgeometryBase): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_geometry(QSpacerItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_spacerItem(self: QSpacerItem, ): QSpacerItem =


  QSpacerItem(h: fQSpacerItem_virtualbase_spacerItem(self.h))

type QSpacerItemspacerItemBase* = proc(): QSpacerItem
proc onspacerItem*(self: QSpacerItem, slot: proc(super: QSpacerItemspacerItemBase): QSpacerItem) =
  # TODO check subclass
  type Cb = proc(super: QSpacerItemspacerItemBase): QSpacerItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_spacerItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_spacerItem(self: ptr cQSpacerItem, slot: int): pointer {.exportc: "miqt_exec_callback_QSpacerItem_spacerItem ".} =
  type Cb = proc(super: QSpacerItemspacerItemBase): QSpacerItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_spacerItem(QSpacerItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_hasHeightForWidth(self: QSpacerItem, ): bool =


  fQSpacerItem_virtualbase_hasHeightForWidth(self.h)

type QSpacerItemhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QSpacerItem, slot: proc(super: QSpacerItemhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSpacerItemhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_hasHeightForWidth(self: ptr cQSpacerItem, slot: int): bool {.exportc: "miqt_exec_callback_QSpacerItem_hasHeightForWidth ".} =
  type Cb = proc(super: QSpacerItemhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QSpacerItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_heightForWidth(self: QSpacerItem, param1: cint): cint =


  fQSpacerItem_virtualbase_heightForWidth(self.h, param1)

type QSpacerItemheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QSpacerItem, slot: proc(super: QSpacerItemheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QSpacerItemheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_heightForWidth(self: ptr cQSpacerItem, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSpacerItem_heightForWidth ".} =
  type Cb = proc(super: QSpacerItemheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QSpacerItem(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_minimumHeightForWidth(self: QSpacerItem, param1: cint): cint =


  fQSpacerItem_virtualbase_minimumHeightForWidth(self.h, param1)

type QSpacerItemminimumHeightForWidthBase* = proc(param1: cint): cint
proc onminimumHeightForWidth*(self: QSpacerItem, slot: proc(super: QSpacerItemminimumHeightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QSpacerItemminimumHeightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_minimumHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_minimumHeightForWidth(self: ptr cQSpacerItem, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSpacerItem_minimumHeightForWidth ".} =
  type Cb = proc(super: QSpacerItemminimumHeightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_minimumHeightForWidth(QSpacerItem(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_invalidate(self: QSpacerItem, ): void =


  fQSpacerItem_virtualbase_invalidate(self.h)

type QSpacerIteminvalidateBase* = proc(): void
proc oninvalidate*(self: QSpacerItem, slot: proc(super: QSpacerIteminvalidateBase): void) =
  # TODO check subclass
  type Cb = proc(super: QSpacerIteminvalidateBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_invalidate(self: ptr cQSpacerItem, slot: int): void {.exportc: "miqt_exec_callback_QSpacerItem_invalidate ".} =
  type Cb = proc(super: QSpacerIteminvalidateBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_invalidate(QSpacerItem(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_widget(self: QSpacerItem, ): gen_qwidget.QWidget =


  gen_qwidget.QWidget(h: fQSpacerItem_virtualbase_widget(self.h))

type QSpacerItemwidgetBase* = proc(): gen_qwidget.QWidget
proc onwidget*(self: QSpacerItem, slot: proc(super: QSpacerItemwidgetBase): gen_qwidget.QWidget) =
  # TODO check subclass
  type Cb = proc(super: QSpacerItemwidgetBase): gen_qwidget.QWidget
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_widget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_widget(self: ptr cQSpacerItem, slot: int): pointer {.exportc: "miqt_exec_callback_QSpacerItem_widget ".} =
  type Cb = proc(super: QSpacerItemwidgetBase): gen_qwidget.QWidget
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_widget(QSpacerItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_layout(self: QSpacerItem, ): gen_qlayout.QLayout =


  gen_qlayout.QLayout(h: fQSpacerItem_virtualbase_layout(self.h))

type QSpacerItemlayoutBase* = proc(): gen_qlayout.QLayout
proc onlayout*(self: QSpacerItem, slot: proc(super: QSpacerItemlayoutBase): gen_qlayout.QLayout) =
  # TODO check subclass
  type Cb = proc(super: QSpacerItemlayoutBase): gen_qlayout.QLayout
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_layout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_layout(self: ptr cQSpacerItem, slot: int): pointer {.exportc: "miqt_exec_callback_QSpacerItem_layout ".} =
  type Cb = proc(super: QSpacerItemlayoutBase): gen_qlayout.QLayout
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_layout(QSpacerItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_controlTypes(self: QSpacerItem, ): gen_qsizepolicy.QSizePolicyControlType =


  gen_qsizepolicy.QSizePolicyControlType(fQSpacerItem_virtualbase_controlTypes(self.h))

type QSpacerItemcontrolTypesBase* = proc(): gen_qsizepolicy.QSizePolicyControlType
proc oncontrolTypes*(self: QSpacerItem, slot: proc(super: QSpacerItemcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType) =
  # TODO check subclass
  type Cb = proc(super: QSpacerItemcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSpacerItem_override_virtual_controlTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSpacerItem_controlTypes(self: ptr cQSpacerItem, slot: int): cint {.exportc: "miqt_exec_callback_QSpacerItem_controlTypes ".} =
  type Cb = proc(super: QSpacerItemcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_controlTypes(QSpacerItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc delete*(self: QSpacerItem) =
  fcQSpacerItem_delete(self.h)

func init*(T: type QWidgetItem, h: ptr cQWidgetItem): QWidgetItem =
  T(h: h)
proc create*(T: type QWidgetItem, w: gen_qwidget.QWidget): QWidgetItem =

  QWidgetItem.init(fcQWidgetItem_new(w.h))
proc sizeHint*(self: QWidgetItem, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQWidgetItem_sizeHint(self.h))

proc minimumSize*(self: QWidgetItem, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQWidgetItem_minimumSize(self.h))

proc maximumSize*(self: QWidgetItem, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQWidgetItem_maximumSize(self.h))

proc expandingDirections*(self: QWidgetItem, ): gen_qnamespace.Orientation =

  gen_qnamespace.Orientation(fcQWidgetItem_expandingDirections(self.h))

proc isEmpty*(self: QWidgetItem, ): bool =

  fcQWidgetItem_isEmpty(self.h)

proc setGeometry*(self: QWidgetItem, geometry: gen_qrect.QRect): void =

  fcQWidgetItem_setGeometry(self.h, geometry.h)

proc geometry*(self: QWidgetItem, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQWidgetItem_geometry(self.h))

proc widget*(self: QWidgetItem, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQWidgetItem_widget(self.h))

proc hasHeightForWidth*(self: QWidgetItem, ): bool =

  fcQWidgetItem_hasHeightForWidth(self.h)

proc heightForWidth*(self: QWidgetItem, param1: cint): cint =

  fcQWidgetItem_heightForWidth(self.h, param1)

proc minimumHeightForWidth*(self: QWidgetItem, param1: cint): cint =

  fcQWidgetItem_minimumHeightForWidth(self.h, param1)

proc controlTypes*(self: QWidgetItem, ): gen_qsizepolicy.QSizePolicyControlType =

  gen_qsizepolicy.QSizePolicyControlType(fcQWidgetItem_controlTypes(self.h))

proc callVirtualBase_sizeHint(self: QWidgetItem, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQWidgetItem_virtualbase_sizeHint(self.h))

type QWidgetItemsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QWidgetItem, slot: proc(super: QWidgetItemsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QWidgetItemsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_sizeHint(self: ptr cQWidgetItem, slot: int): pointer {.exportc: "miqt_exec_callback_QWidgetItem_sizeHint ".} =
  type Cb = proc(super: QWidgetItemsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QWidgetItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSize(self: QWidgetItem, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQWidgetItem_virtualbase_minimumSize(self.h))

type QWidgetItemminimumSizeBase* = proc(): gen_qsize.QSize
proc onminimumSize*(self: QWidgetItem, slot: proc(super: QWidgetItemminimumSizeBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QWidgetItemminimumSizeBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_minimumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_minimumSize(self: ptr cQWidgetItem, slot: int): pointer {.exportc: "miqt_exec_callback_QWidgetItem_minimumSize ".} =
  type Cb = proc(super: QWidgetItemminimumSizeBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSize(QWidgetItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_maximumSize(self: QWidgetItem, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQWidgetItem_virtualbase_maximumSize(self.h))

type QWidgetItemmaximumSizeBase* = proc(): gen_qsize.QSize
proc onmaximumSize*(self: QWidgetItem, slot: proc(super: QWidgetItemmaximumSizeBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QWidgetItemmaximumSizeBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_maximumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_maximumSize(self: ptr cQWidgetItem, slot: int): pointer {.exportc: "miqt_exec_callback_QWidgetItem_maximumSize ".} =
  type Cb = proc(super: QWidgetItemmaximumSizeBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_maximumSize(QWidgetItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_expandingDirections(self: QWidgetItem, ): gen_qnamespace.Orientation =


  gen_qnamespace.Orientation(fQWidgetItem_virtualbase_expandingDirections(self.h))

type QWidgetItemexpandingDirectionsBase* = proc(): gen_qnamespace.Orientation
proc onexpandingDirections*(self: QWidgetItem, slot: proc(super: QWidgetItemexpandingDirectionsBase): gen_qnamespace.Orientation) =
  # TODO check subclass
  type Cb = proc(super: QWidgetItemexpandingDirectionsBase): gen_qnamespace.Orientation
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_expandingDirections(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_expandingDirections(self: ptr cQWidgetItem, slot: int): cint {.exportc: "miqt_exec_callback_QWidgetItem_expandingDirections ".} =
  type Cb = proc(super: QWidgetItemexpandingDirectionsBase): gen_qnamespace.Orientation
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_expandingDirections(QWidgetItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_isEmpty(self: QWidgetItem, ): bool =


  fQWidgetItem_virtualbase_isEmpty(self.h)

type QWidgetItemisEmptyBase* = proc(): bool
proc onisEmpty*(self: QWidgetItem, slot: proc(super: QWidgetItemisEmptyBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QWidgetItemisEmptyBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_isEmpty(self: ptr cQWidgetItem, slot: int): bool {.exportc: "miqt_exec_callback_QWidgetItem_isEmpty ".} =
  type Cb = proc(super: QWidgetItemisEmptyBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isEmpty(QWidgetItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setGeometry(self: QWidgetItem, geometry: gen_qrect.QRect): void =


  fQWidgetItem_virtualbase_setGeometry(self.h, geometry.h)

type QWidgetItemsetGeometryBase* = proc(geometry: gen_qrect.QRect): void
proc onsetGeometry*(self: QWidgetItem, slot: proc(super: QWidgetItemsetGeometryBase, geometry: gen_qrect.QRect): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetItemsetGeometryBase, geometry: gen_qrect.QRect): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_setGeometry(self: ptr cQWidgetItem, slot: int, geometry: pointer): void {.exportc: "miqt_exec_callback_QWidgetItem_setGeometry ".} =
  type Cb = proc(super: QWidgetItemsetGeometryBase, geometry: gen_qrect.QRect): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(geometry: gen_qrect.QRect): auto =
    callVirtualBase_setGeometry(QWidgetItem(h: self), geometry)
  let slotval1 = gen_qrect.QRect(h: geometry)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_geometry(self: QWidgetItem, ): gen_qrect.QRect =


  gen_qrect.QRect(h: fQWidgetItem_virtualbase_geometry(self.h))

type QWidgetItemgeometryBase* = proc(): gen_qrect.QRect
proc ongeometry*(self: QWidgetItem, slot: proc(super: QWidgetItemgeometryBase): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QWidgetItemgeometryBase): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_geometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_geometry(self: ptr cQWidgetItem, slot: int): pointer {.exportc: "miqt_exec_callback_QWidgetItem_geometry ".} =
  type Cb = proc(super: QWidgetItemgeometryBase): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_geometry(QWidgetItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_widget(self: QWidgetItem, ): gen_qwidget.QWidget =


  gen_qwidget.QWidget(h: fQWidgetItem_virtualbase_widget(self.h))

type QWidgetItemwidgetBase* = proc(): gen_qwidget.QWidget
proc onwidget*(self: QWidgetItem, slot: proc(super: QWidgetItemwidgetBase): gen_qwidget.QWidget) =
  # TODO check subclass
  type Cb = proc(super: QWidgetItemwidgetBase): gen_qwidget.QWidget
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_widget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_widget(self: ptr cQWidgetItem, slot: int): pointer {.exportc: "miqt_exec_callback_QWidgetItem_widget ".} =
  type Cb = proc(super: QWidgetItemwidgetBase): gen_qwidget.QWidget
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_widget(QWidgetItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_hasHeightForWidth(self: QWidgetItem, ): bool =


  fQWidgetItem_virtualbase_hasHeightForWidth(self.h)

type QWidgetItemhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QWidgetItem, slot: proc(super: QWidgetItemhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QWidgetItemhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_hasHeightForWidth(self: ptr cQWidgetItem, slot: int): bool {.exportc: "miqt_exec_callback_QWidgetItem_hasHeightForWidth ".} =
  type Cb = proc(super: QWidgetItemhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QWidgetItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_heightForWidth(self: QWidgetItem, param1: cint): cint =


  fQWidgetItem_virtualbase_heightForWidth(self.h, param1)

type QWidgetItemheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QWidgetItem, slot: proc(super: QWidgetItemheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QWidgetItemheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_heightForWidth(self: ptr cQWidgetItem, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWidgetItem_heightForWidth ".} =
  type Cb = proc(super: QWidgetItemheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QWidgetItem(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_minimumHeightForWidth(self: QWidgetItem, param1: cint): cint =


  fQWidgetItem_virtualbase_minimumHeightForWidth(self.h, param1)

type QWidgetItemminimumHeightForWidthBase* = proc(param1: cint): cint
proc onminimumHeightForWidth*(self: QWidgetItem, slot: proc(super: QWidgetItemminimumHeightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QWidgetItemminimumHeightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_minimumHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_minimumHeightForWidth(self: ptr cQWidgetItem, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWidgetItem_minimumHeightForWidth ".} =
  type Cb = proc(super: QWidgetItemminimumHeightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_minimumHeightForWidth(QWidgetItem(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_controlTypes(self: QWidgetItem, ): gen_qsizepolicy.QSizePolicyControlType =


  gen_qsizepolicy.QSizePolicyControlType(fQWidgetItem_virtualbase_controlTypes(self.h))

type QWidgetItemcontrolTypesBase* = proc(): gen_qsizepolicy.QSizePolicyControlType
proc oncontrolTypes*(self: QWidgetItem, slot: proc(super: QWidgetItemcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType) =
  # TODO check subclass
  type Cb = proc(super: QWidgetItemcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_controlTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_controlTypes(self: ptr cQWidgetItem, slot: int): cint {.exportc: "miqt_exec_callback_QWidgetItem_controlTypes ".} =
  type Cb = proc(super: QWidgetItemcontrolTypesBase): gen_qsizepolicy.QSizePolicyControlType
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_controlTypes(QWidgetItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_invalidate(self: QWidgetItem, ): void =


  fQWidgetItem_virtualbase_invalidate(self.h)

type QWidgetIteminvalidateBase* = proc(): void
proc oninvalidate*(self: QWidgetItem, slot: proc(super: QWidgetIteminvalidateBase): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetIteminvalidateBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_invalidate(self: ptr cQWidgetItem, slot: int): void {.exportc: "miqt_exec_callback_QWidgetItem_invalidate ".} =
  type Cb = proc(super: QWidgetIteminvalidateBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_invalidate(QWidgetItem(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_layout(self: QWidgetItem, ): gen_qlayout.QLayout =


  gen_qlayout.QLayout(h: fQWidgetItem_virtualbase_layout(self.h))

type QWidgetItemlayoutBase* = proc(): gen_qlayout.QLayout
proc onlayout*(self: QWidgetItem, slot: proc(super: QWidgetItemlayoutBase): gen_qlayout.QLayout) =
  # TODO check subclass
  type Cb = proc(super: QWidgetItemlayoutBase): gen_qlayout.QLayout
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_layout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_layout(self: ptr cQWidgetItem, slot: int): pointer {.exportc: "miqt_exec_callback_QWidgetItem_layout ".} =
  type Cb = proc(super: QWidgetItemlayoutBase): gen_qlayout.QLayout
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_layout(QWidgetItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_spacerItem(self: QWidgetItem, ): QSpacerItem =


  QSpacerItem(h: fQWidgetItem_virtualbase_spacerItem(self.h))

type QWidgetItemspacerItemBase* = proc(): QSpacerItem
proc onspacerItem*(self: QWidgetItem, slot: proc(super: QWidgetItemspacerItemBase): QSpacerItem) =
  # TODO check subclass
  type Cb = proc(super: QWidgetItemspacerItemBase): QSpacerItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItem_override_virtual_spacerItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItem_spacerItem(self: ptr cQWidgetItem, slot: int): pointer {.exportc: "miqt_exec_callback_QWidgetItem_spacerItem ".} =
  type Cb = proc(super: QWidgetItemspacerItemBase): QSpacerItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_spacerItem(QWidgetItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QWidgetItem) =
  fcQWidgetItem_delete(self.h)

func init*(T: type QWidgetItemV2, h: ptr cQWidgetItemV2): QWidgetItemV2 =
  T(h: h)
proc create*(T: type QWidgetItemV2, widget: gen_qwidget.QWidget): QWidgetItemV2 =

  QWidgetItemV2.init(fcQWidgetItemV2_new(widget.h))
proc sizeHint*(self: QWidgetItemV2, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQWidgetItemV2_sizeHint(self.h))

proc minimumSize*(self: QWidgetItemV2, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQWidgetItemV2_minimumSize(self.h))

proc maximumSize*(self: QWidgetItemV2, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQWidgetItemV2_maximumSize(self.h))

proc heightForWidth*(self: QWidgetItemV2, width: cint): cint =

  fcQWidgetItemV2_heightForWidth(self.h, width)

proc callVirtualBase_sizeHint(self: QWidgetItemV2, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQWidgetItemV2_virtualbase_sizeHint(self.h))

type QWidgetItemV2sizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QWidgetItemV2, slot: proc(super: QWidgetItemV2sizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QWidgetItemV2sizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_sizeHint(self: ptr cQWidgetItemV2, slot: int): pointer {.exportc: "miqt_exec_callback_QWidgetItemV2_sizeHint ".} =
  type Cb = proc(super: QWidgetItemV2sizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QWidgetItemV2(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSize(self: QWidgetItemV2, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQWidgetItemV2_virtualbase_minimumSize(self.h))

type QWidgetItemV2minimumSizeBase* = proc(): gen_qsize.QSize
proc onminimumSize*(self: QWidgetItemV2, slot: proc(super: QWidgetItemV2minimumSizeBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QWidgetItemV2minimumSizeBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_minimumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_minimumSize(self: ptr cQWidgetItemV2, slot: int): pointer {.exportc: "miqt_exec_callback_QWidgetItemV2_minimumSize ".} =
  type Cb = proc(super: QWidgetItemV2minimumSizeBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSize(QWidgetItemV2(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_maximumSize(self: QWidgetItemV2, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQWidgetItemV2_virtualbase_maximumSize(self.h))

type QWidgetItemV2maximumSizeBase* = proc(): gen_qsize.QSize
proc onmaximumSize*(self: QWidgetItemV2, slot: proc(super: QWidgetItemV2maximumSizeBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QWidgetItemV2maximumSizeBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_maximumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_maximumSize(self: ptr cQWidgetItemV2, slot: int): pointer {.exportc: "miqt_exec_callback_QWidgetItemV2_maximumSize ".} =
  type Cb = proc(super: QWidgetItemV2maximumSizeBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_maximumSize(QWidgetItemV2(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QWidgetItemV2, width: cint): cint =


  fQWidgetItemV2_virtualbase_heightForWidth(self.h, width)

type QWidgetItemV2heightForWidthBase* = proc(width: cint): cint
proc onheightForWidth*(self: QWidgetItemV2, slot: proc(super: QWidgetItemV2heightForWidthBase, width: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QWidgetItemV2heightForWidthBase, width: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_heightForWidth(self: ptr cQWidgetItemV2, slot: int, width: cint): cint {.exportc: "miqt_exec_callback_QWidgetItemV2_heightForWidth ".} =
  type Cb = proc(super: QWidgetItemV2heightForWidthBase, width: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(width: cint): auto =
    callVirtualBase_heightForWidth(QWidgetItemV2(h: self), width)
  let slotval1 = width


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_expandingDirections(self: QWidgetItemV2, ): gen_qnamespace.Orientation =


  gen_qnamespace.Orientation(fQWidgetItemV2_virtualbase_expandingDirections(self.h))

type QWidgetItemV2expandingDirectionsBase* = proc(): gen_qnamespace.Orientation
proc onexpandingDirections*(self: QWidgetItemV2, slot: proc(super: QWidgetItemV2expandingDirectionsBase): gen_qnamespace.Orientation) =
  # TODO check subclass
  type Cb = proc(super: QWidgetItemV2expandingDirectionsBase): gen_qnamespace.Orientation
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_expandingDirections(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_expandingDirections(self: ptr cQWidgetItemV2, slot: int): cint {.exportc: "miqt_exec_callback_QWidgetItemV2_expandingDirections ".} =
  type Cb = proc(super: QWidgetItemV2expandingDirectionsBase): gen_qnamespace.Orientation
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_expandingDirections(QWidgetItemV2(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_isEmpty(self: QWidgetItemV2, ): bool =


  fQWidgetItemV2_virtualbase_isEmpty(self.h)

type QWidgetItemV2isEmptyBase* = proc(): bool
proc onisEmpty*(self: QWidgetItemV2, slot: proc(super: QWidgetItemV2isEmptyBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QWidgetItemV2isEmptyBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_isEmpty(self: ptr cQWidgetItemV2, slot: int): bool {.exportc: "miqt_exec_callback_QWidgetItemV2_isEmpty ".} =
  type Cb = proc(super: QWidgetItemV2isEmptyBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isEmpty(QWidgetItemV2(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setGeometry(self: QWidgetItemV2, geometry: gen_qrect.QRect): void =


  fQWidgetItemV2_virtualbase_setGeometry(self.h, geometry.h)

type QWidgetItemV2setGeometryBase* = proc(geometry: gen_qrect.QRect): void
proc onsetGeometry*(self: QWidgetItemV2, slot: proc(super: QWidgetItemV2setGeometryBase, geometry: gen_qrect.QRect): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetItemV2setGeometryBase, geometry: gen_qrect.QRect): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_setGeometry(self: ptr cQWidgetItemV2, slot: int, geometry: pointer): void {.exportc: "miqt_exec_callback_QWidgetItemV2_setGeometry ".} =
  type Cb = proc(super: QWidgetItemV2setGeometryBase, geometry: gen_qrect.QRect): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(geometry: gen_qrect.QRect): auto =
    callVirtualBase_setGeometry(QWidgetItemV2(h: self), geometry)
  let slotval1 = gen_qrect.QRect(h: geometry)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_geometry(self: QWidgetItemV2, ): gen_qrect.QRect =


  gen_qrect.QRect(h: fQWidgetItemV2_virtualbase_geometry(self.h))

type QWidgetItemV2geometryBase* = proc(): gen_qrect.QRect
proc ongeometry*(self: QWidgetItemV2, slot: proc(super: QWidgetItemV2geometryBase): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QWidgetItemV2geometryBase): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_geometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_geometry(self: ptr cQWidgetItemV2, slot: int): pointer {.exportc: "miqt_exec_callback_QWidgetItemV2_geometry ".} =
  type Cb = proc(super: QWidgetItemV2geometryBase): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_geometry(QWidgetItemV2(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_widget(self: QWidgetItemV2, ): gen_qwidget.QWidget =


  gen_qwidget.QWidget(h: fQWidgetItemV2_virtualbase_widget(self.h))

type QWidgetItemV2widgetBase* = proc(): gen_qwidget.QWidget
proc onwidget*(self: QWidgetItemV2, slot: proc(super: QWidgetItemV2widgetBase): gen_qwidget.QWidget) =
  # TODO check subclass
  type Cb = proc(super: QWidgetItemV2widgetBase): gen_qwidget.QWidget
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_widget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_widget(self: ptr cQWidgetItemV2, slot: int): pointer {.exportc: "miqt_exec_callback_QWidgetItemV2_widget ".} =
  type Cb = proc(super: QWidgetItemV2widgetBase): gen_qwidget.QWidget
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_widget(QWidgetItemV2(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_hasHeightForWidth(self: QWidgetItemV2, ): bool =


  fQWidgetItemV2_virtualbase_hasHeightForWidth(self.h)

type QWidgetItemV2hasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QWidgetItemV2, slot: proc(super: QWidgetItemV2hasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QWidgetItemV2hasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_hasHeightForWidth(self: ptr cQWidgetItemV2, slot: int): bool {.exportc: "miqt_exec_callback_QWidgetItemV2_hasHeightForWidth ".} =
  type Cb = proc(super: QWidgetItemV2hasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QWidgetItemV2(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_minimumHeightForWidth(self: QWidgetItemV2, param1: cint): cint =


  fQWidgetItemV2_virtualbase_minimumHeightForWidth(self.h, param1)

type QWidgetItemV2minimumHeightForWidthBase* = proc(param1: cint): cint
proc onminimumHeightForWidth*(self: QWidgetItemV2, slot: proc(super: QWidgetItemV2minimumHeightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QWidgetItemV2minimumHeightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_minimumHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_minimumHeightForWidth(self: ptr cQWidgetItemV2, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWidgetItemV2_minimumHeightForWidth ".} =
  type Cb = proc(super: QWidgetItemV2minimumHeightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_minimumHeightForWidth(QWidgetItemV2(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_controlTypes(self: QWidgetItemV2, ): gen_qsizepolicy.QSizePolicyControlType =


  gen_qsizepolicy.QSizePolicyControlType(fQWidgetItemV2_virtualbase_controlTypes(self.h))

type QWidgetItemV2controlTypesBase* = proc(): gen_qsizepolicy.QSizePolicyControlType
proc oncontrolTypes*(self: QWidgetItemV2, slot: proc(super: QWidgetItemV2controlTypesBase): gen_qsizepolicy.QSizePolicyControlType) =
  # TODO check subclass
  type Cb = proc(super: QWidgetItemV2controlTypesBase): gen_qsizepolicy.QSizePolicyControlType
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_controlTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_controlTypes(self: ptr cQWidgetItemV2, slot: int): cint {.exportc: "miqt_exec_callback_QWidgetItemV2_controlTypes ".} =
  type Cb = proc(super: QWidgetItemV2controlTypesBase): gen_qsizepolicy.QSizePolicyControlType
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_controlTypes(QWidgetItemV2(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_invalidate(self: QWidgetItemV2, ): void =


  fQWidgetItemV2_virtualbase_invalidate(self.h)

type QWidgetItemV2invalidateBase* = proc(): void
proc oninvalidate*(self: QWidgetItemV2, slot: proc(super: QWidgetItemV2invalidateBase): void) =
  # TODO check subclass
  type Cb = proc(super: QWidgetItemV2invalidateBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_invalidate(self: ptr cQWidgetItemV2, slot: int): void {.exportc: "miqt_exec_callback_QWidgetItemV2_invalidate ".} =
  type Cb = proc(super: QWidgetItemV2invalidateBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_invalidate(QWidgetItemV2(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_layout(self: QWidgetItemV2, ): gen_qlayout.QLayout =


  gen_qlayout.QLayout(h: fQWidgetItemV2_virtualbase_layout(self.h))

type QWidgetItemV2layoutBase* = proc(): gen_qlayout.QLayout
proc onlayout*(self: QWidgetItemV2, slot: proc(super: QWidgetItemV2layoutBase): gen_qlayout.QLayout) =
  # TODO check subclass
  type Cb = proc(super: QWidgetItemV2layoutBase): gen_qlayout.QLayout
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_layout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_layout(self: ptr cQWidgetItemV2, slot: int): pointer {.exportc: "miqt_exec_callback_QWidgetItemV2_layout ".} =
  type Cb = proc(super: QWidgetItemV2layoutBase): gen_qlayout.QLayout
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_layout(QWidgetItemV2(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_spacerItem(self: QWidgetItemV2, ): QSpacerItem =


  QSpacerItem(h: fQWidgetItemV2_virtualbase_spacerItem(self.h))

type QWidgetItemV2spacerItemBase* = proc(): QSpacerItem
proc onspacerItem*(self: QWidgetItemV2, slot: proc(super: QWidgetItemV2spacerItemBase): QSpacerItem) =
  # TODO check subclass
  type Cb = proc(super: QWidgetItemV2spacerItemBase): QSpacerItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetItemV2_override_virtual_spacerItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetItemV2_spacerItem(self: ptr cQWidgetItemV2, slot: int): pointer {.exportc: "miqt_exec_callback_QWidgetItemV2_spacerItem ".} =
  type Cb = proc(super: QWidgetItemV2spacerItemBase): QSpacerItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_spacerItem(QWidgetItemV2(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QWidgetItemV2) =
  fcQWidgetItemV2_delete(self.h)
