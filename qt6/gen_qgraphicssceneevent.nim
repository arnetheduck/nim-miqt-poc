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
{.compile("gen_qgraphicssceneevent.cpp", cflags).}


type QGraphicsSceneContextMenuEventReason* = cint
const
  QGraphicsSceneContextMenuEventMouse* = 0
  QGraphicsSceneContextMenuEventKeyboard* = 1
  QGraphicsSceneContextMenuEventOther* = 2



import gen_qgraphicssceneevent_types
export gen_qgraphicssceneevent_types

import
  gen_qcoreevent,
  gen_qmimedata,
  gen_qnamespace,
  gen_qpoint,
  gen_qsize,
  gen_qwidget
export
  gen_qcoreevent,
  gen_qmimedata,
  gen_qnamespace,
  gen_qpoint,
  gen_qsize,
  gen_qwidget

type cQGraphicsSceneEvent*{.exportc: "QGraphicsSceneEvent", incompleteStruct.} = object
type cQGraphicsSceneMouseEvent*{.exportc: "QGraphicsSceneMouseEvent", incompleteStruct.} = object
type cQGraphicsSceneWheelEvent*{.exportc: "QGraphicsSceneWheelEvent", incompleteStruct.} = object
type cQGraphicsSceneContextMenuEvent*{.exportc: "QGraphicsSceneContextMenuEvent", incompleteStruct.} = object
type cQGraphicsSceneHoverEvent*{.exportc: "QGraphicsSceneHoverEvent", incompleteStruct.} = object
type cQGraphicsSceneHelpEvent*{.exportc: "QGraphicsSceneHelpEvent", incompleteStruct.} = object
type cQGraphicsSceneDragDropEvent*{.exportc: "QGraphicsSceneDragDropEvent", incompleteStruct.} = object
type cQGraphicsSceneResizeEvent*{.exportc: "QGraphicsSceneResizeEvent", incompleteStruct.} = object
type cQGraphicsSceneMoveEvent*{.exportc: "QGraphicsSceneMoveEvent", incompleteStruct.} = object

proc fcQGraphicsSceneEvent_new(typeVal: cint): ptr cQGraphicsSceneEvent {.importc: "QGraphicsSceneEvent_new".}
proc fcQGraphicsSceneEvent_widget(self: pointer, ): pointer {.importc: "QGraphicsSceneEvent_widget".}
proc fcQGraphicsSceneEvent_setWidget(self: pointer, widget: pointer): void {.importc: "QGraphicsSceneEvent_setWidget".}
proc fcQGraphicsSceneEvent_timestamp(self: pointer, ): culonglong {.importc: "QGraphicsSceneEvent_timestamp".}
proc fcQGraphicsSceneEvent_setTimestamp(self: pointer, ts: culonglong): void {.importc: "QGraphicsSceneEvent_setTimestamp".}
proc fQGraphicsSceneEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QGraphicsSceneEvent_virtualbase_setAccepted".}
proc fcQGraphicsSceneEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QGraphicsSceneEvent_override_virtual_setAccepted".}
proc fQGraphicsSceneEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QGraphicsSceneEvent_virtualbase_clone".}
proc fcQGraphicsSceneEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QGraphicsSceneEvent_override_virtual_clone".}
proc fcQGraphicsSceneEvent_delete(self: pointer) {.importc: "QGraphicsSceneEvent_delete".}
proc fcQGraphicsSceneMouseEvent_new(): ptr cQGraphicsSceneMouseEvent {.importc: "QGraphicsSceneMouseEvent_new".}
proc fcQGraphicsSceneMouseEvent_new2(typeVal: cint): ptr cQGraphicsSceneMouseEvent {.importc: "QGraphicsSceneMouseEvent_new2".}
proc fcQGraphicsSceneMouseEvent_pos(self: pointer, ): pointer {.importc: "QGraphicsSceneMouseEvent_pos".}
proc fcQGraphicsSceneMouseEvent_setPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneMouseEvent_setPos".}
proc fcQGraphicsSceneMouseEvent_scenePos(self: pointer, ): pointer {.importc: "QGraphicsSceneMouseEvent_scenePos".}
proc fcQGraphicsSceneMouseEvent_setScenePos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneMouseEvent_setScenePos".}
proc fcQGraphicsSceneMouseEvent_screenPos(self: pointer, ): pointer {.importc: "QGraphicsSceneMouseEvent_screenPos".}
proc fcQGraphicsSceneMouseEvent_setScreenPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneMouseEvent_setScreenPos".}
proc fcQGraphicsSceneMouseEvent_buttonDownPos(self: pointer, button: cint): pointer {.importc: "QGraphicsSceneMouseEvent_buttonDownPos".}
proc fcQGraphicsSceneMouseEvent_setButtonDownPos(self: pointer, button: cint, pos: pointer): void {.importc: "QGraphicsSceneMouseEvent_setButtonDownPos".}
proc fcQGraphicsSceneMouseEvent_buttonDownScenePos(self: pointer, button: cint): pointer {.importc: "QGraphicsSceneMouseEvent_buttonDownScenePos".}
proc fcQGraphicsSceneMouseEvent_setButtonDownScenePos(self: pointer, button: cint, pos: pointer): void {.importc: "QGraphicsSceneMouseEvent_setButtonDownScenePos".}
proc fcQGraphicsSceneMouseEvent_buttonDownScreenPos(self: pointer, button: cint): pointer {.importc: "QGraphicsSceneMouseEvent_buttonDownScreenPos".}
proc fcQGraphicsSceneMouseEvent_setButtonDownScreenPos(self: pointer, button: cint, pos: pointer): void {.importc: "QGraphicsSceneMouseEvent_setButtonDownScreenPos".}
proc fcQGraphicsSceneMouseEvent_lastPos(self: pointer, ): pointer {.importc: "QGraphicsSceneMouseEvent_lastPos".}
proc fcQGraphicsSceneMouseEvent_setLastPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneMouseEvent_setLastPos".}
proc fcQGraphicsSceneMouseEvent_lastScenePos(self: pointer, ): pointer {.importc: "QGraphicsSceneMouseEvent_lastScenePos".}
proc fcQGraphicsSceneMouseEvent_setLastScenePos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneMouseEvent_setLastScenePos".}
proc fcQGraphicsSceneMouseEvent_lastScreenPos(self: pointer, ): pointer {.importc: "QGraphicsSceneMouseEvent_lastScreenPos".}
proc fcQGraphicsSceneMouseEvent_setLastScreenPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneMouseEvent_setLastScreenPos".}
proc fcQGraphicsSceneMouseEvent_buttons(self: pointer, ): cint {.importc: "QGraphicsSceneMouseEvent_buttons".}
proc fcQGraphicsSceneMouseEvent_setButtons(self: pointer, buttons: cint): void {.importc: "QGraphicsSceneMouseEvent_setButtons".}
proc fcQGraphicsSceneMouseEvent_button(self: pointer, ): cint {.importc: "QGraphicsSceneMouseEvent_button".}
proc fcQGraphicsSceneMouseEvent_setButton(self: pointer, button: cint): void {.importc: "QGraphicsSceneMouseEvent_setButton".}
proc fcQGraphicsSceneMouseEvent_modifiers(self: pointer, ): cint {.importc: "QGraphicsSceneMouseEvent_modifiers".}
proc fcQGraphicsSceneMouseEvent_setModifiers(self: pointer, modifiers: cint): void {.importc: "QGraphicsSceneMouseEvent_setModifiers".}
proc fcQGraphicsSceneMouseEvent_source(self: pointer, ): cint {.importc: "QGraphicsSceneMouseEvent_source".}
proc fcQGraphicsSceneMouseEvent_setSource(self: pointer, source: cint): void {.importc: "QGraphicsSceneMouseEvent_setSource".}
proc fcQGraphicsSceneMouseEvent_flags(self: pointer, ): cint {.importc: "QGraphicsSceneMouseEvent_flags".}
proc fcQGraphicsSceneMouseEvent_setFlags(self: pointer, flags: cint): void {.importc: "QGraphicsSceneMouseEvent_setFlags".}
proc fQGraphicsSceneMouseEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QGraphicsSceneMouseEvent_virtualbase_setAccepted".}
proc fcQGraphicsSceneMouseEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QGraphicsSceneMouseEvent_override_virtual_setAccepted".}
proc fQGraphicsSceneMouseEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QGraphicsSceneMouseEvent_virtualbase_clone".}
proc fcQGraphicsSceneMouseEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QGraphicsSceneMouseEvent_override_virtual_clone".}
proc fcQGraphicsSceneMouseEvent_delete(self: pointer) {.importc: "QGraphicsSceneMouseEvent_delete".}
proc fcQGraphicsSceneWheelEvent_new(): ptr cQGraphicsSceneWheelEvent {.importc: "QGraphicsSceneWheelEvent_new".}
proc fcQGraphicsSceneWheelEvent_new2(typeVal: cint): ptr cQGraphicsSceneWheelEvent {.importc: "QGraphicsSceneWheelEvent_new2".}
proc fcQGraphicsSceneWheelEvent_pos(self: pointer, ): pointer {.importc: "QGraphicsSceneWheelEvent_pos".}
proc fcQGraphicsSceneWheelEvent_setPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneWheelEvent_setPos".}
proc fcQGraphicsSceneWheelEvent_scenePos(self: pointer, ): pointer {.importc: "QGraphicsSceneWheelEvent_scenePos".}
proc fcQGraphicsSceneWheelEvent_setScenePos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneWheelEvent_setScenePos".}
proc fcQGraphicsSceneWheelEvent_screenPos(self: pointer, ): pointer {.importc: "QGraphicsSceneWheelEvent_screenPos".}
proc fcQGraphicsSceneWheelEvent_setScreenPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneWheelEvent_setScreenPos".}
proc fcQGraphicsSceneWheelEvent_buttons(self: pointer, ): cint {.importc: "QGraphicsSceneWheelEvent_buttons".}
proc fcQGraphicsSceneWheelEvent_setButtons(self: pointer, buttons: cint): void {.importc: "QGraphicsSceneWheelEvent_setButtons".}
proc fcQGraphicsSceneWheelEvent_modifiers(self: pointer, ): cint {.importc: "QGraphicsSceneWheelEvent_modifiers".}
proc fcQGraphicsSceneWheelEvent_setModifiers(self: pointer, modifiers: cint): void {.importc: "QGraphicsSceneWheelEvent_setModifiers".}
proc fcQGraphicsSceneWheelEvent_delta(self: pointer, ): cint {.importc: "QGraphicsSceneWheelEvent_delta".}
proc fcQGraphicsSceneWheelEvent_setDelta(self: pointer, delta: cint): void {.importc: "QGraphicsSceneWheelEvent_setDelta".}
proc fcQGraphicsSceneWheelEvent_orientation(self: pointer, ): cint {.importc: "QGraphicsSceneWheelEvent_orientation".}
proc fcQGraphicsSceneWheelEvent_setOrientation(self: pointer, orientation: cint): void {.importc: "QGraphicsSceneWheelEvent_setOrientation".}
proc fcQGraphicsSceneWheelEvent_phase(self: pointer, ): cint {.importc: "QGraphicsSceneWheelEvent_phase".}
proc fcQGraphicsSceneWheelEvent_setPhase(self: pointer, scrollPhase: cint): void {.importc: "QGraphicsSceneWheelEvent_setPhase".}
proc fcQGraphicsSceneWheelEvent_pixelDelta(self: pointer, ): pointer {.importc: "QGraphicsSceneWheelEvent_pixelDelta".}
proc fcQGraphicsSceneWheelEvent_setPixelDelta(self: pointer, delta: pointer): void {.importc: "QGraphicsSceneWheelEvent_setPixelDelta".}
proc fcQGraphicsSceneWheelEvent_isInverted(self: pointer, ): bool {.importc: "QGraphicsSceneWheelEvent_isInverted".}
proc fcQGraphicsSceneWheelEvent_setInverted(self: pointer, inverted: bool): void {.importc: "QGraphicsSceneWheelEvent_setInverted".}
proc fQGraphicsSceneWheelEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QGraphicsSceneWheelEvent_virtualbase_setAccepted".}
proc fcQGraphicsSceneWheelEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QGraphicsSceneWheelEvent_override_virtual_setAccepted".}
proc fQGraphicsSceneWheelEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QGraphicsSceneWheelEvent_virtualbase_clone".}
proc fcQGraphicsSceneWheelEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QGraphicsSceneWheelEvent_override_virtual_clone".}
proc fcQGraphicsSceneWheelEvent_delete(self: pointer) {.importc: "QGraphicsSceneWheelEvent_delete".}
proc fcQGraphicsSceneContextMenuEvent_new(): ptr cQGraphicsSceneContextMenuEvent {.importc: "QGraphicsSceneContextMenuEvent_new".}
proc fcQGraphicsSceneContextMenuEvent_new2(typeVal: cint): ptr cQGraphicsSceneContextMenuEvent {.importc: "QGraphicsSceneContextMenuEvent_new2".}
proc fcQGraphicsSceneContextMenuEvent_pos(self: pointer, ): pointer {.importc: "QGraphicsSceneContextMenuEvent_pos".}
proc fcQGraphicsSceneContextMenuEvent_setPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneContextMenuEvent_setPos".}
proc fcQGraphicsSceneContextMenuEvent_scenePos(self: pointer, ): pointer {.importc: "QGraphicsSceneContextMenuEvent_scenePos".}
proc fcQGraphicsSceneContextMenuEvent_setScenePos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneContextMenuEvent_setScenePos".}
proc fcQGraphicsSceneContextMenuEvent_screenPos(self: pointer, ): pointer {.importc: "QGraphicsSceneContextMenuEvent_screenPos".}
proc fcQGraphicsSceneContextMenuEvent_setScreenPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneContextMenuEvent_setScreenPos".}
proc fcQGraphicsSceneContextMenuEvent_modifiers(self: pointer, ): cint {.importc: "QGraphicsSceneContextMenuEvent_modifiers".}
proc fcQGraphicsSceneContextMenuEvent_setModifiers(self: pointer, modifiers: cint): void {.importc: "QGraphicsSceneContextMenuEvent_setModifiers".}
proc fcQGraphicsSceneContextMenuEvent_reason(self: pointer, ): cint {.importc: "QGraphicsSceneContextMenuEvent_reason".}
proc fcQGraphicsSceneContextMenuEvent_setReason(self: pointer, reason: cint): void {.importc: "QGraphicsSceneContextMenuEvent_setReason".}
proc fQGraphicsSceneContextMenuEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QGraphicsSceneContextMenuEvent_virtualbase_setAccepted".}
proc fcQGraphicsSceneContextMenuEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QGraphicsSceneContextMenuEvent_override_virtual_setAccepted".}
proc fQGraphicsSceneContextMenuEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QGraphicsSceneContextMenuEvent_virtualbase_clone".}
proc fcQGraphicsSceneContextMenuEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QGraphicsSceneContextMenuEvent_override_virtual_clone".}
proc fcQGraphicsSceneContextMenuEvent_delete(self: pointer) {.importc: "QGraphicsSceneContextMenuEvent_delete".}
proc fcQGraphicsSceneHoverEvent_new(): ptr cQGraphicsSceneHoverEvent {.importc: "QGraphicsSceneHoverEvent_new".}
proc fcQGraphicsSceneHoverEvent_new2(typeVal: cint): ptr cQGraphicsSceneHoverEvent {.importc: "QGraphicsSceneHoverEvent_new2".}
proc fcQGraphicsSceneHoverEvent_pos(self: pointer, ): pointer {.importc: "QGraphicsSceneHoverEvent_pos".}
proc fcQGraphicsSceneHoverEvent_setPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneHoverEvent_setPos".}
proc fcQGraphicsSceneHoverEvent_scenePos(self: pointer, ): pointer {.importc: "QGraphicsSceneHoverEvent_scenePos".}
proc fcQGraphicsSceneHoverEvent_setScenePos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneHoverEvent_setScenePos".}
proc fcQGraphicsSceneHoverEvent_screenPos(self: pointer, ): pointer {.importc: "QGraphicsSceneHoverEvent_screenPos".}
proc fcQGraphicsSceneHoverEvent_setScreenPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneHoverEvent_setScreenPos".}
proc fcQGraphicsSceneHoverEvent_lastPos(self: pointer, ): pointer {.importc: "QGraphicsSceneHoverEvent_lastPos".}
proc fcQGraphicsSceneHoverEvent_setLastPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneHoverEvent_setLastPos".}
proc fcQGraphicsSceneHoverEvent_lastScenePos(self: pointer, ): pointer {.importc: "QGraphicsSceneHoverEvent_lastScenePos".}
proc fcQGraphicsSceneHoverEvent_setLastScenePos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneHoverEvent_setLastScenePos".}
proc fcQGraphicsSceneHoverEvent_lastScreenPos(self: pointer, ): pointer {.importc: "QGraphicsSceneHoverEvent_lastScreenPos".}
proc fcQGraphicsSceneHoverEvent_setLastScreenPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneHoverEvent_setLastScreenPos".}
proc fcQGraphicsSceneHoverEvent_modifiers(self: pointer, ): cint {.importc: "QGraphicsSceneHoverEvent_modifiers".}
proc fcQGraphicsSceneHoverEvent_setModifiers(self: pointer, modifiers: cint): void {.importc: "QGraphicsSceneHoverEvent_setModifiers".}
proc fQGraphicsSceneHoverEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QGraphicsSceneHoverEvent_virtualbase_setAccepted".}
proc fcQGraphicsSceneHoverEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QGraphicsSceneHoverEvent_override_virtual_setAccepted".}
proc fQGraphicsSceneHoverEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QGraphicsSceneHoverEvent_virtualbase_clone".}
proc fcQGraphicsSceneHoverEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QGraphicsSceneHoverEvent_override_virtual_clone".}
proc fcQGraphicsSceneHoverEvent_delete(self: pointer) {.importc: "QGraphicsSceneHoverEvent_delete".}
proc fcQGraphicsSceneHelpEvent_new(): ptr cQGraphicsSceneHelpEvent {.importc: "QGraphicsSceneHelpEvent_new".}
proc fcQGraphicsSceneHelpEvent_new2(typeVal: cint): ptr cQGraphicsSceneHelpEvent {.importc: "QGraphicsSceneHelpEvent_new2".}
proc fcQGraphicsSceneHelpEvent_scenePos(self: pointer, ): pointer {.importc: "QGraphicsSceneHelpEvent_scenePos".}
proc fcQGraphicsSceneHelpEvent_setScenePos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneHelpEvent_setScenePos".}
proc fcQGraphicsSceneHelpEvent_screenPos(self: pointer, ): pointer {.importc: "QGraphicsSceneHelpEvent_screenPos".}
proc fcQGraphicsSceneHelpEvent_setScreenPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneHelpEvent_setScreenPos".}
proc fQGraphicsSceneHelpEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QGraphicsSceneHelpEvent_virtualbase_setAccepted".}
proc fcQGraphicsSceneHelpEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QGraphicsSceneHelpEvent_override_virtual_setAccepted".}
proc fQGraphicsSceneHelpEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QGraphicsSceneHelpEvent_virtualbase_clone".}
proc fcQGraphicsSceneHelpEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QGraphicsSceneHelpEvent_override_virtual_clone".}
proc fcQGraphicsSceneHelpEvent_delete(self: pointer) {.importc: "QGraphicsSceneHelpEvent_delete".}
proc fcQGraphicsSceneDragDropEvent_new(): ptr cQGraphicsSceneDragDropEvent {.importc: "QGraphicsSceneDragDropEvent_new".}
proc fcQGraphicsSceneDragDropEvent_new2(typeVal: cint): ptr cQGraphicsSceneDragDropEvent {.importc: "QGraphicsSceneDragDropEvent_new2".}
proc fcQGraphicsSceneDragDropEvent_pos(self: pointer, ): pointer {.importc: "QGraphicsSceneDragDropEvent_pos".}
proc fcQGraphicsSceneDragDropEvent_setPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneDragDropEvent_setPos".}
proc fcQGraphicsSceneDragDropEvent_scenePos(self: pointer, ): pointer {.importc: "QGraphicsSceneDragDropEvent_scenePos".}
proc fcQGraphicsSceneDragDropEvent_setScenePos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneDragDropEvent_setScenePos".}
proc fcQGraphicsSceneDragDropEvent_screenPos(self: pointer, ): pointer {.importc: "QGraphicsSceneDragDropEvent_screenPos".}
proc fcQGraphicsSceneDragDropEvent_setScreenPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneDragDropEvent_setScreenPos".}
proc fcQGraphicsSceneDragDropEvent_buttons(self: pointer, ): cint {.importc: "QGraphicsSceneDragDropEvent_buttons".}
proc fcQGraphicsSceneDragDropEvent_setButtons(self: pointer, buttons: cint): void {.importc: "QGraphicsSceneDragDropEvent_setButtons".}
proc fcQGraphicsSceneDragDropEvent_modifiers(self: pointer, ): cint {.importc: "QGraphicsSceneDragDropEvent_modifiers".}
proc fcQGraphicsSceneDragDropEvent_setModifiers(self: pointer, modifiers: cint): void {.importc: "QGraphicsSceneDragDropEvent_setModifiers".}
proc fcQGraphicsSceneDragDropEvent_possibleActions(self: pointer, ): cint {.importc: "QGraphicsSceneDragDropEvent_possibleActions".}
proc fcQGraphicsSceneDragDropEvent_setPossibleActions(self: pointer, actions: cint): void {.importc: "QGraphicsSceneDragDropEvent_setPossibleActions".}
proc fcQGraphicsSceneDragDropEvent_proposedAction(self: pointer, ): cint {.importc: "QGraphicsSceneDragDropEvent_proposedAction".}
proc fcQGraphicsSceneDragDropEvent_setProposedAction(self: pointer, action: cint): void {.importc: "QGraphicsSceneDragDropEvent_setProposedAction".}
proc fcQGraphicsSceneDragDropEvent_acceptProposedAction(self: pointer, ): void {.importc: "QGraphicsSceneDragDropEvent_acceptProposedAction".}
proc fcQGraphicsSceneDragDropEvent_dropAction(self: pointer, ): cint {.importc: "QGraphicsSceneDragDropEvent_dropAction".}
proc fcQGraphicsSceneDragDropEvent_setDropAction(self: pointer, action: cint): void {.importc: "QGraphicsSceneDragDropEvent_setDropAction".}
proc fcQGraphicsSceneDragDropEvent_source(self: pointer, ): pointer {.importc: "QGraphicsSceneDragDropEvent_source".}
proc fcQGraphicsSceneDragDropEvent_setSource(self: pointer, source: pointer): void {.importc: "QGraphicsSceneDragDropEvent_setSource".}
proc fcQGraphicsSceneDragDropEvent_mimeData(self: pointer, ): pointer {.importc: "QGraphicsSceneDragDropEvent_mimeData".}
proc fcQGraphicsSceneDragDropEvent_setMimeData(self: pointer, data: pointer): void {.importc: "QGraphicsSceneDragDropEvent_setMimeData".}
proc fQGraphicsSceneDragDropEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QGraphicsSceneDragDropEvent_virtualbase_setAccepted".}
proc fcQGraphicsSceneDragDropEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QGraphicsSceneDragDropEvent_override_virtual_setAccepted".}
proc fQGraphicsSceneDragDropEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QGraphicsSceneDragDropEvent_virtualbase_clone".}
proc fcQGraphicsSceneDragDropEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QGraphicsSceneDragDropEvent_override_virtual_clone".}
proc fcQGraphicsSceneDragDropEvent_delete(self: pointer) {.importc: "QGraphicsSceneDragDropEvent_delete".}
proc fcQGraphicsSceneResizeEvent_new(): ptr cQGraphicsSceneResizeEvent {.importc: "QGraphicsSceneResizeEvent_new".}
proc fcQGraphicsSceneResizeEvent_oldSize(self: pointer, ): pointer {.importc: "QGraphicsSceneResizeEvent_oldSize".}
proc fcQGraphicsSceneResizeEvent_setOldSize(self: pointer, size: pointer): void {.importc: "QGraphicsSceneResizeEvent_setOldSize".}
proc fcQGraphicsSceneResizeEvent_newSize(self: pointer, ): pointer {.importc: "QGraphicsSceneResizeEvent_newSize".}
proc fcQGraphicsSceneResizeEvent_setNewSize(self: pointer, size: pointer): void {.importc: "QGraphicsSceneResizeEvent_setNewSize".}
proc fQGraphicsSceneResizeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QGraphicsSceneResizeEvent_virtualbase_setAccepted".}
proc fcQGraphicsSceneResizeEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QGraphicsSceneResizeEvent_override_virtual_setAccepted".}
proc fQGraphicsSceneResizeEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QGraphicsSceneResizeEvent_virtualbase_clone".}
proc fcQGraphicsSceneResizeEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QGraphicsSceneResizeEvent_override_virtual_clone".}
proc fcQGraphicsSceneResizeEvent_delete(self: pointer) {.importc: "QGraphicsSceneResizeEvent_delete".}
proc fcQGraphicsSceneMoveEvent_new(): ptr cQGraphicsSceneMoveEvent {.importc: "QGraphicsSceneMoveEvent_new".}
proc fcQGraphicsSceneMoveEvent_oldPos(self: pointer, ): pointer {.importc: "QGraphicsSceneMoveEvent_oldPos".}
proc fcQGraphicsSceneMoveEvent_setOldPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneMoveEvent_setOldPos".}
proc fcQGraphicsSceneMoveEvent_newPos(self: pointer, ): pointer {.importc: "QGraphicsSceneMoveEvent_newPos".}
proc fcQGraphicsSceneMoveEvent_setNewPos(self: pointer, pos: pointer): void {.importc: "QGraphicsSceneMoveEvent_setNewPos".}
proc fQGraphicsSceneMoveEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QGraphicsSceneMoveEvent_virtualbase_setAccepted".}
proc fcQGraphicsSceneMoveEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QGraphicsSceneMoveEvent_override_virtual_setAccepted".}
proc fQGraphicsSceneMoveEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QGraphicsSceneMoveEvent_virtualbase_clone".}
proc fcQGraphicsSceneMoveEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QGraphicsSceneMoveEvent_override_virtual_clone".}
proc fcQGraphicsSceneMoveEvent_delete(self: pointer) {.importc: "QGraphicsSceneMoveEvent_delete".}


func init*(T: type QGraphicsSceneEvent, h: ptr cQGraphicsSceneEvent): QGraphicsSceneEvent =
  T(h: h)
proc create*(T: type QGraphicsSceneEvent, typeVal: gen_qcoreevent.QEventType): QGraphicsSceneEvent =

  QGraphicsSceneEvent.init(fcQGraphicsSceneEvent_new(cint(typeVal)))
proc widget*(self: QGraphicsSceneEvent, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQGraphicsSceneEvent_widget(self.h))

proc setWidget*(self: QGraphicsSceneEvent, widget: gen_qwidget.QWidget): void =

  fcQGraphicsSceneEvent_setWidget(self.h, widget.h)

proc timestamp*(self: QGraphicsSceneEvent, ): culonglong =

  fcQGraphicsSceneEvent_timestamp(self.h)

proc setTimestamp*(self: QGraphicsSceneEvent, ts: culonglong): void =

  fcQGraphicsSceneEvent_setTimestamp(self.h, ts)

proc callVirtualBase_setAccepted(self: QGraphicsSceneEvent, accepted: bool): void =


  fQGraphicsSceneEvent_virtualbase_setAccepted(self.h, accepted)

type QGraphicsSceneEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QGraphicsSceneEvent, slot: proc(super: QGraphicsSceneEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSceneEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneEvent_setAccepted(self: ptr cQGraphicsSceneEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QGraphicsSceneEvent_setAccepted ".} =
  type Cb = proc(super: QGraphicsSceneEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QGraphicsSceneEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc callVirtualBase_clone(self: QGraphicsSceneEvent, ): gen_qcoreevent.QEvent =


  gen_qcoreevent.QEvent(h: fQGraphicsSceneEvent_virtualbase_clone(self.h))

type QGraphicsSceneEventcloneBase* = proc(): gen_qcoreevent.QEvent
proc onclone*(self: QGraphicsSceneEvent, slot: proc(super: QGraphicsSceneEventcloneBase): gen_qcoreevent.QEvent) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSceneEventcloneBase): gen_qcoreevent.QEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneEvent_clone(self: ptr cQGraphicsSceneEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSceneEvent_clone ".} =
  type Cb = proc(super: QGraphicsSceneEventcloneBase): gen_qcoreevent.QEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QGraphicsSceneEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QGraphicsSceneEvent) =
  fcQGraphicsSceneEvent_delete(self.h)

func init*(T: type QGraphicsSceneMouseEvent, h: ptr cQGraphicsSceneMouseEvent): QGraphicsSceneMouseEvent =
  T(h: h)
proc create*(T: type QGraphicsSceneMouseEvent, ): QGraphicsSceneMouseEvent =

  QGraphicsSceneMouseEvent.init(fcQGraphicsSceneMouseEvent_new())
proc create*(T: type QGraphicsSceneMouseEvent, typeVal: gen_qcoreevent.QEventType): QGraphicsSceneMouseEvent =

  QGraphicsSceneMouseEvent.init(fcQGraphicsSceneMouseEvent_new2(cint(typeVal)))
proc pos*(self: QGraphicsSceneMouseEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsSceneMouseEvent_pos(self.h))

proc setPos*(self: QGraphicsSceneMouseEvent, pos: gen_qpoint.QPointF): void =

  fcQGraphicsSceneMouseEvent_setPos(self.h, pos.h)

proc scenePos*(self: QGraphicsSceneMouseEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsSceneMouseEvent_scenePos(self.h))

proc setScenePos*(self: QGraphicsSceneMouseEvent, pos: gen_qpoint.QPointF): void =

  fcQGraphicsSceneMouseEvent_setScenePos(self.h, pos.h)

proc screenPos*(self: QGraphicsSceneMouseEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQGraphicsSceneMouseEvent_screenPos(self.h))

proc setScreenPos*(self: QGraphicsSceneMouseEvent, pos: gen_qpoint.QPoint): void =

  fcQGraphicsSceneMouseEvent_setScreenPos(self.h, pos.h)

proc buttonDownPos*(self: QGraphicsSceneMouseEvent, button: gen_qnamespace.MouseButton): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsSceneMouseEvent_buttonDownPos(self.h, cint(button)))

proc setButtonDownPos*(self: QGraphicsSceneMouseEvent, button: gen_qnamespace.MouseButton, pos: gen_qpoint.QPointF): void =

  fcQGraphicsSceneMouseEvent_setButtonDownPos(self.h, cint(button), pos.h)

proc buttonDownScenePos*(self: QGraphicsSceneMouseEvent, button: gen_qnamespace.MouseButton): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsSceneMouseEvent_buttonDownScenePos(self.h, cint(button)))

proc setButtonDownScenePos*(self: QGraphicsSceneMouseEvent, button: gen_qnamespace.MouseButton, pos: gen_qpoint.QPointF): void =

  fcQGraphicsSceneMouseEvent_setButtonDownScenePos(self.h, cint(button), pos.h)

proc buttonDownScreenPos*(self: QGraphicsSceneMouseEvent, button: gen_qnamespace.MouseButton): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQGraphicsSceneMouseEvent_buttonDownScreenPos(self.h, cint(button)))

proc setButtonDownScreenPos*(self: QGraphicsSceneMouseEvent, button: gen_qnamespace.MouseButton, pos: gen_qpoint.QPoint): void =

  fcQGraphicsSceneMouseEvent_setButtonDownScreenPos(self.h, cint(button), pos.h)

proc lastPos*(self: QGraphicsSceneMouseEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsSceneMouseEvent_lastPos(self.h))

proc setLastPos*(self: QGraphicsSceneMouseEvent, pos: gen_qpoint.QPointF): void =

  fcQGraphicsSceneMouseEvent_setLastPos(self.h, pos.h)

proc lastScenePos*(self: QGraphicsSceneMouseEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsSceneMouseEvent_lastScenePos(self.h))

proc setLastScenePos*(self: QGraphicsSceneMouseEvent, pos: gen_qpoint.QPointF): void =

  fcQGraphicsSceneMouseEvent_setLastScenePos(self.h, pos.h)

proc lastScreenPos*(self: QGraphicsSceneMouseEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQGraphicsSceneMouseEvent_lastScreenPos(self.h))

proc setLastScreenPos*(self: QGraphicsSceneMouseEvent, pos: gen_qpoint.QPoint): void =

  fcQGraphicsSceneMouseEvent_setLastScreenPos(self.h, pos.h)

proc buttons*(self: QGraphicsSceneMouseEvent, ): gen_qnamespace.MouseButton =

  gen_qnamespace.MouseButton(fcQGraphicsSceneMouseEvent_buttons(self.h))

proc setButtons*(self: QGraphicsSceneMouseEvent, buttons: gen_qnamespace.MouseButton): void =

  fcQGraphicsSceneMouseEvent_setButtons(self.h, cint(buttons))

proc button*(self: QGraphicsSceneMouseEvent, ): gen_qnamespace.MouseButton =

  gen_qnamespace.MouseButton(fcQGraphicsSceneMouseEvent_button(self.h))

proc setButton*(self: QGraphicsSceneMouseEvent, button: gen_qnamespace.MouseButton): void =

  fcQGraphicsSceneMouseEvent_setButton(self.h, cint(button))

proc modifiers*(self: QGraphicsSceneMouseEvent, ): gen_qnamespace.KeyboardModifier =

  gen_qnamespace.KeyboardModifier(fcQGraphicsSceneMouseEvent_modifiers(self.h))

proc setModifiers*(self: QGraphicsSceneMouseEvent, modifiers: gen_qnamespace.KeyboardModifier): void =

  fcQGraphicsSceneMouseEvent_setModifiers(self.h, cint(modifiers))

proc source*(self: QGraphicsSceneMouseEvent, ): gen_qnamespace.MouseEventSource =

  gen_qnamespace.MouseEventSource(fcQGraphicsSceneMouseEvent_source(self.h))

proc setSource*(self: QGraphicsSceneMouseEvent, source: gen_qnamespace.MouseEventSource): void =

  fcQGraphicsSceneMouseEvent_setSource(self.h, cint(source))

proc flags*(self: QGraphicsSceneMouseEvent, ): gen_qnamespace.MouseEventFlag =

  gen_qnamespace.MouseEventFlag(fcQGraphicsSceneMouseEvent_flags(self.h))

proc setFlags*(self: QGraphicsSceneMouseEvent, flags: gen_qnamespace.MouseEventFlag): void =

  fcQGraphicsSceneMouseEvent_setFlags(self.h, cint(flags))

proc callVirtualBase_setAccepted(self: QGraphicsSceneMouseEvent, accepted: bool): void =


  fQGraphicsSceneMouseEvent_virtualbase_setAccepted(self.h, accepted)

type QGraphicsSceneMouseEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QGraphicsSceneMouseEvent, slot: proc(super: QGraphicsSceneMouseEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSceneMouseEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneMouseEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneMouseEvent_setAccepted(self: ptr cQGraphicsSceneMouseEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QGraphicsSceneMouseEvent_setAccepted ".} =
  type Cb = proc(super: QGraphicsSceneMouseEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QGraphicsSceneMouseEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc callVirtualBase_clone(self: QGraphicsSceneMouseEvent, ): gen_qcoreevent.QEvent =


  gen_qcoreevent.QEvent(h: fQGraphicsSceneMouseEvent_virtualbase_clone(self.h))

type QGraphicsSceneMouseEventcloneBase* = proc(): gen_qcoreevent.QEvent
proc onclone*(self: QGraphicsSceneMouseEvent, slot: proc(super: QGraphicsSceneMouseEventcloneBase): gen_qcoreevent.QEvent) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSceneMouseEventcloneBase): gen_qcoreevent.QEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneMouseEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneMouseEvent_clone(self: ptr cQGraphicsSceneMouseEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSceneMouseEvent_clone ".} =
  type Cb = proc(super: QGraphicsSceneMouseEventcloneBase): gen_qcoreevent.QEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QGraphicsSceneMouseEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QGraphicsSceneMouseEvent) =
  fcQGraphicsSceneMouseEvent_delete(self.h)

func init*(T: type QGraphicsSceneWheelEvent, h: ptr cQGraphicsSceneWheelEvent): QGraphicsSceneWheelEvent =
  T(h: h)
proc create*(T: type QGraphicsSceneWheelEvent, ): QGraphicsSceneWheelEvent =

  QGraphicsSceneWheelEvent.init(fcQGraphicsSceneWheelEvent_new())
proc create*(T: type QGraphicsSceneWheelEvent, typeVal: gen_qcoreevent.QEventType): QGraphicsSceneWheelEvent =

  QGraphicsSceneWheelEvent.init(fcQGraphicsSceneWheelEvent_new2(cint(typeVal)))
proc pos*(self: QGraphicsSceneWheelEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsSceneWheelEvent_pos(self.h))

proc setPos*(self: QGraphicsSceneWheelEvent, pos: gen_qpoint.QPointF): void =

  fcQGraphicsSceneWheelEvent_setPos(self.h, pos.h)

proc scenePos*(self: QGraphicsSceneWheelEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsSceneWheelEvent_scenePos(self.h))

proc setScenePos*(self: QGraphicsSceneWheelEvent, pos: gen_qpoint.QPointF): void =

  fcQGraphicsSceneWheelEvent_setScenePos(self.h, pos.h)

proc screenPos*(self: QGraphicsSceneWheelEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQGraphicsSceneWheelEvent_screenPos(self.h))

proc setScreenPos*(self: QGraphicsSceneWheelEvent, pos: gen_qpoint.QPoint): void =

  fcQGraphicsSceneWheelEvent_setScreenPos(self.h, pos.h)

proc buttons*(self: QGraphicsSceneWheelEvent, ): gen_qnamespace.MouseButton =

  gen_qnamespace.MouseButton(fcQGraphicsSceneWheelEvent_buttons(self.h))

proc setButtons*(self: QGraphicsSceneWheelEvent, buttons: gen_qnamespace.MouseButton): void =

  fcQGraphicsSceneWheelEvent_setButtons(self.h, cint(buttons))

proc modifiers*(self: QGraphicsSceneWheelEvent, ): gen_qnamespace.KeyboardModifier =

  gen_qnamespace.KeyboardModifier(fcQGraphicsSceneWheelEvent_modifiers(self.h))

proc setModifiers*(self: QGraphicsSceneWheelEvent, modifiers: gen_qnamespace.KeyboardModifier): void =

  fcQGraphicsSceneWheelEvent_setModifiers(self.h, cint(modifiers))

proc delta*(self: QGraphicsSceneWheelEvent, ): cint =

  fcQGraphicsSceneWheelEvent_delta(self.h)

proc setDelta*(self: QGraphicsSceneWheelEvent, delta: cint): void =

  fcQGraphicsSceneWheelEvent_setDelta(self.h, delta)

proc orientation*(self: QGraphicsSceneWheelEvent, ): gen_qnamespace.Orientation =

  gen_qnamespace.Orientation(fcQGraphicsSceneWheelEvent_orientation(self.h))

proc setOrientation*(self: QGraphicsSceneWheelEvent, orientation: gen_qnamespace.Orientation): void =

  fcQGraphicsSceneWheelEvent_setOrientation(self.h, cint(orientation))

proc phase*(self: QGraphicsSceneWheelEvent, ): gen_qnamespace.ScrollPhase =

  gen_qnamespace.ScrollPhase(fcQGraphicsSceneWheelEvent_phase(self.h))

proc setPhase*(self: QGraphicsSceneWheelEvent, scrollPhase: gen_qnamespace.ScrollPhase): void =

  fcQGraphicsSceneWheelEvent_setPhase(self.h, cint(scrollPhase))

proc pixelDelta*(self: QGraphicsSceneWheelEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQGraphicsSceneWheelEvent_pixelDelta(self.h))

proc setPixelDelta*(self: QGraphicsSceneWheelEvent, delta: gen_qpoint.QPoint): void =

  fcQGraphicsSceneWheelEvent_setPixelDelta(self.h, delta.h)

proc isInverted*(self: QGraphicsSceneWheelEvent, ): bool =

  fcQGraphicsSceneWheelEvent_isInverted(self.h)

proc setInverted*(self: QGraphicsSceneWheelEvent, inverted: bool): void =

  fcQGraphicsSceneWheelEvent_setInverted(self.h, inverted)

proc callVirtualBase_setAccepted(self: QGraphicsSceneWheelEvent, accepted: bool): void =


  fQGraphicsSceneWheelEvent_virtualbase_setAccepted(self.h, accepted)

type QGraphicsSceneWheelEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QGraphicsSceneWheelEvent, slot: proc(super: QGraphicsSceneWheelEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSceneWheelEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneWheelEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneWheelEvent_setAccepted(self: ptr cQGraphicsSceneWheelEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QGraphicsSceneWheelEvent_setAccepted ".} =
  type Cb = proc(super: QGraphicsSceneWheelEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QGraphicsSceneWheelEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc callVirtualBase_clone(self: QGraphicsSceneWheelEvent, ): gen_qcoreevent.QEvent =


  gen_qcoreevent.QEvent(h: fQGraphicsSceneWheelEvent_virtualbase_clone(self.h))

type QGraphicsSceneWheelEventcloneBase* = proc(): gen_qcoreevent.QEvent
proc onclone*(self: QGraphicsSceneWheelEvent, slot: proc(super: QGraphicsSceneWheelEventcloneBase): gen_qcoreevent.QEvent) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSceneWheelEventcloneBase): gen_qcoreevent.QEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneWheelEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneWheelEvent_clone(self: ptr cQGraphicsSceneWheelEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSceneWheelEvent_clone ".} =
  type Cb = proc(super: QGraphicsSceneWheelEventcloneBase): gen_qcoreevent.QEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QGraphicsSceneWheelEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QGraphicsSceneWheelEvent) =
  fcQGraphicsSceneWheelEvent_delete(self.h)

func init*(T: type QGraphicsSceneContextMenuEvent, h: ptr cQGraphicsSceneContextMenuEvent): QGraphicsSceneContextMenuEvent =
  T(h: h)
proc create*(T: type QGraphicsSceneContextMenuEvent, ): QGraphicsSceneContextMenuEvent =

  QGraphicsSceneContextMenuEvent.init(fcQGraphicsSceneContextMenuEvent_new())
proc create*(T: type QGraphicsSceneContextMenuEvent, typeVal: gen_qcoreevent.QEventType): QGraphicsSceneContextMenuEvent =

  QGraphicsSceneContextMenuEvent.init(fcQGraphicsSceneContextMenuEvent_new2(cint(typeVal)))
proc pos*(self: QGraphicsSceneContextMenuEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsSceneContextMenuEvent_pos(self.h))

proc setPos*(self: QGraphicsSceneContextMenuEvent, pos: gen_qpoint.QPointF): void =

  fcQGraphicsSceneContextMenuEvent_setPos(self.h, pos.h)

proc scenePos*(self: QGraphicsSceneContextMenuEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsSceneContextMenuEvent_scenePos(self.h))

proc setScenePos*(self: QGraphicsSceneContextMenuEvent, pos: gen_qpoint.QPointF): void =

  fcQGraphicsSceneContextMenuEvent_setScenePos(self.h, pos.h)

proc screenPos*(self: QGraphicsSceneContextMenuEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQGraphicsSceneContextMenuEvent_screenPos(self.h))

proc setScreenPos*(self: QGraphicsSceneContextMenuEvent, pos: gen_qpoint.QPoint): void =

  fcQGraphicsSceneContextMenuEvent_setScreenPos(self.h, pos.h)

proc modifiers*(self: QGraphicsSceneContextMenuEvent, ): gen_qnamespace.KeyboardModifier =

  gen_qnamespace.KeyboardModifier(fcQGraphicsSceneContextMenuEvent_modifiers(self.h))

proc setModifiers*(self: QGraphicsSceneContextMenuEvent, modifiers: gen_qnamespace.KeyboardModifier): void =

  fcQGraphicsSceneContextMenuEvent_setModifiers(self.h, cint(modifiers))

proc reason*(self: QGraphicsSceneContextMenuEvent, ): QGraphicsSceneContextMenuEventReason =

  QGraphicsSceneContextMenuEventReason(fcQGraphicsSceneContextMenuEvent_reason(self.h))

proc setReason*(self: QGraphicsSceneContextMenuEvent, reason: QGraphicsSceneContextMenuEventReason): void =

  fcQGraphicsSceneContextMenuEvent_setReason(self.h, cint(reason))

proc callVirtualBase_setAccepted(self: QGraphicsSceneContextMenuEvent, accepted: bool): void =


  fQGraphicsSceneContextMenuEvent_virtualbase_setAccepted(self.h, accepted)

type QGraphicsSceneContextMenuEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QGraphicsSceneContextMenuEvent, slot: proc(super: QGraphicsSceneContextMenuEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSceneContextMenuEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneContextMenuEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneContextMenuEvent_setAccepted(self: ptr cQGraphicsSceneContextMenuEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QGraphicsSceneContextMenuEvent_setAccepted ".} =
  type Cb = proc(super: QGraphicsSceneContextMenuEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QGraphicsSceneContextMenuEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc callVirtualBase_clone(self: QGraphicsSceneContextMenuEvent, ): gen_qcoreevent.QEvent =


  gen_qcoreevent.QEvent(h: fQGraphicsSceneContextMenuEvent_virtualbase_clone(self.h))

type QGraphicsSceneContextMenuEventcloneBase* = proc(): gen_qcoreevent.QEvent
proc onclone*(self: QGraphicsSceneContextMenuEvent, slot: proc(super: QGraphicsSceneContextMenuEventcloneBase): gen_qcoreevent.QEvent) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSceneContextMenuEventcloneBase): gen_qcoreevent.QEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneContextMenuEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneContextMenuEvent_clone(self: ptr cQGraphicsSceneContextMenuEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSceneContextMenuEvent_clone ".} =
  type Cb = proc(super: QGraphicsSceneContextMenuEventcloneBase): gen_qcoreevent.QEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QGraphicsSceneContextMenuEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QGraphicsSceneContextMenuEvent) =
  fcQGraphicsSceneContextMenuEvent_delete(self.h)

func init*(T: type QGraphicsSceneHoverEvent, h: ptr cQGraphicsSceneHoverEvent): QGraphicsSceneHoverEvent =
  T(h: h)
proc create*(T: type QGraphicsSceneHoverEvent, ): QGraphicsSceneHoverEvent =

  QGraphicsSceneHoverEvent.init(fcQGraphicsSceneHoverEvent_new())
proc create*(T: type QGraphicsSceneHoverEvent, typeVal: gen_qcoreevent.QEventType): QGraphicsSceneHoverEvent =

  QGraphicsSceneHoverEvent.init(fcQGraphicsSceneHoverEvent_new2(cint(typeVal)))
proc pos*(self: QGraphicsSceneHoverEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsSceneHoverEvent_pos(self.h))

proc setPos*(self: QGraphicsSceneHoverEvent, pos: gen_qpoint.QPointF): void =

  fcQGraphicsSceneHoverEvent_setPos(self.h, pos.h)

proc scenePos*(self: QGraphicsSceneHoverEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsSceneHoverEvent_scenePos(self.h))

proc setScenePos*(self: QGraphicsSceneHoverEvent, pos: gen_qpoint.QPointF): void =

  fcQGraphicsSceneHoverEvent_setScenePos(self.h, pos.h)

proc screenPos*(self: QGraphicsSceneHoverEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQGraphicsSceneHoverEvent_screenPos(self.h))

proc setScreenPos*(self: QGraphicsSceneHoverEvent, pos: gen_qpoint.QPoint): void =

  fcQGraphicsSceneHoverEvent_setScreenPos(self.h, pos.h)

proc lastPos*(self: QGraphicsSceneHoverEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsSceneHoverEvent_lastPos(self.h))

proc setLastPos*(self: QGraphicsSceneHoverEvent, pos: gen_qpoint.QPointF): void =

  fcQGraphicsSceneHoverEvent_setLastPos(self.h, pos.h)

proc lastScenePos*(self: QGraphicsSceneHoverEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsSceneHoverEvent_lastScenePos(self.h))

proc setLastScenePos*(self: QGraphicsSceneHoverEvent, pos: gen_qpoint.QPointF): void =

  fcQGraphicsSceneHoverEvent_setLastScenePos(self.h, pos.h)

proc lastScreenPos*(self: QGraphicsSceneHoverEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQGraphicsSceneHoverEvent_lastScreenPos(self.h))

proc setLastScreenPos*(self: QGraphicsSceneHoverEvent, pos: gen_qpoint.QPoint): void =

  fcQGraphicsSceneHoverEvent_setLastScreenPos(self.h, pos.h)

proc modifiers*(self: QGraphicsSceneHoverEvent, ): gen_qnamespace.KeyboardModifier =

  gen_qnamespace.KeyboardModifier(fcQGraphicsSceneHoverEvent_modifiers(self.h))

proc setModifiers*(self: QGraphicsSceneHoverEvent, modifiers: gen_qnamespace.KeyboardModifier): void =

  fcQGraphicsSceneHoverEvent_setModifiers(self.h, cint(modifiers))

proc callVirtualBase_setAccepted(self: QGraphicsSceneHoverEvent, accepted: bool): void =


  fQGraphicsSceneHoverEvent_virtualbase_setAccepted(self.h, accepted)

type QGraphicsSceneHoverEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QGraphicsSceneHoverEvent, slot: proc(super: QGraphicsSceneHoverEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSceneHoverEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneHoverEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneHoverEvent_setAccepted(self: ptr cQGraphicsSceneHoverEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QGraphicsSceneHoverEvent_setAccepted ".} =
  type Cb = proc(super: QGraphicsSceneHoverEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QGraphicsSceneHoverEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc callVirtualBase_clone(self: QGraphicsSceneHoverEvent, ): gen_qcoreevent.QEvent =


  gen_qcoreevent.QEvent(h: fQGraphicsSceneHoverEvent_virtualbase_clone(self.h))

type QGraphicsSceneHoverEventcloneBase* = proc(): gen_qcoreevent.QEvent
proc onclone*(self: QGraphicsSceneHoverEvent, slot: proc(super: QGraphicsSceneHoverEventcloneBase): gen_qcoreevent.QEvent) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSceneHoverEventcloneBase): gen_qcoreevent.QEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneHoverEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneHoverEvent_clone(self: ptr cQGraphicsSceneHoverEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSceneHoverEvent_clone ".} =
  type Cb = proc(super: QGraphicsSceneHoverEventcloneBase): gen_qcoreevent.QEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QGraphicsSceneHoverEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QGraphicsSceneHoverEvent) =
  fcQGraphicsSceneHoverEvent_delete(self.h)

func init*(T: type QGraphicsSceneHelpEvent, h: ptr cQGraphicsSceneHelpEvent): QGraphicsSceneHelpEvent =
  T(h: h)
proc create*(T: type QGraphicsSceneHelpEvent, ): QGraphicsSceneHelpEvent =

  QGraphicsSceneHelpEvent.init(fcQGraphicsSceneHelpEvent_new())
proc create*(T: type QGraphicsSceneHelpEvent, typeVal: gen_qcoreevent.QEventType): QGraphicsSceneHelpEvent =

  QGraphicsSceneHelpEvent.init(fcQGraphicsSceneHelpEvent_new2(cint(typeVal)))
proc scenePos*(self: QGraphicsSceneHelpEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsSceneHelpEvent_scenePos(self.h))

proc setScenePos*(self: QGraphicsSceneHelpEvent, pos: gen_qpoint.QPointF): void =

  fcQGraphicsSceneHelpEvent_setScenePos(self.h, pos.h)

proc screenPos*(self: QGraphicsSceneHelpEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQGraphicsSceneHelpEvent_screenPos(self.h))

proc setScreenPos*(self: QGraphicsSceneHelpEvent, pos: gen_qpoint.QPoint): void =

  fcQGraphicsSceneHelpEvent_setScreenPos(self.h, pos.h)

proc callVirtualBase_setAccepted(self: QGraphicsSceneHelpEvent, accepted: bool): void =


  fQGraphicsSceneHelpEvent_virtualbase_setAccepted(self.h, accepted)

type QGraphicsSceneHelpEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QGraphicsSceneHelpEvent, slot: proc(super: QGraphicsSceneHelpEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSceneHelpEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneHelpEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneHelpEvent_setAccepted(self: ptr cQGraphicsSceneHelpEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QGraphicsSceneHelpEvent_setAccepted ".} =
  type Cb = proc(super: QGraphicsSceneHelpEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QGraphicsSceneHelpEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc callVirtualBase_clone(self: QGraphicsSceneHelpEvent, ): gen_qcoreevent.QEvent =


  gen_qcoreevent.QEvent(h: fQGraphicsSceneHelpEvent_virtualbase_clone(self.h))

type QGraphicsSceneHelpEventcloneBase* = proc(): gen_qcoreevent.QEvent
proc onclone*(self: QGraphicsSceneHelpEvent, slot: proc(super: QGraphicsSceneHelpEventcloneBase): gen_qcoreevent.QEvent) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSceneHelpEventcloneBase): gen_qcoreevent.QEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneHelpEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneHelpEvent_clone(self: ptr cQGraphicsSceneHelpEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSceneHelpEvent_clone ".} =
  type Cb = proc(super: QGraphicsSceneHelpEventcloneBase): gen_qcoreevent.QEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QGraphicsSceneHelpEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QGraphicsSceneHelpEvent) =
  fcQGraphicsSceneHelpEvent_delete(self.h)

func init*(T: type QGraphicsSceneDragDropEvent, h: ptr cQGraphicsSceneDragDropEvent): QGraphicsSceneDragDropEvent =
  T(h: h)
proc create*(T: type QGraphicsSceneDragDropEvent, ): QGraphicsSceneDragDropEvent =

  QGraphicsSceneDragDropEvent.init(fcQGraphicsSceneDragDropEvent_new())
proc create*(T: type QGraphicsSceneDragDropEvent, typeVal: gen_qcoreevent.QEventType): QGraphicsSceneDragDropEvent =

  QGraphicsSceneDragDropEvent.init(fcQGraphicsSceneDragDropEvent_new2(cint(typeVal)))
proc pos*(self: QGraphicsSceneDragDropEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsSceneDragDropEvent_pos(self.h))

proc setPos*(self: QGraphicsSceneDragDropEvent, pos: gen_qpoint.QPointF): void =

  fcQGraphicsSceneDragDropEvent_setPos(self.h, pos.h)

proc scenePos*(self: QGraphicsSceneDragDropEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsSceneDragDropEvent_scenePos(self.h))

proc setScenePos*(self: QGraphicsSceneDragDropEvent, pos: gen_qpoint.QPointF): void =

  fcQGraphicsSceneDragDropEvent_setScenePos(self.h, pos.h)

proc screenPos*(self: QGraphicsSceneDragDropEvent, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQGraphicsSceneDragDropEvent_screenPos(self.h))

proc setScreenPos*(self: QGraphicsSceneDragDropEvent, pos: gen_qpoint.QPoint): void =

  fcQGraphicsSceneDragDropEvent_setScreenPos(self.h, pos.h)

proc buttons*(self: QGraphicsSceneDragDropEvent, ): gen_qnamespace.MouseButton =

  gen_qnamespace.MouseButton(fcQGraphicsSceneDragDropEvent_buttons(self.h))

proc setButtons*(self: QGraphicsSceneDragDropEvent, buttons: gen_qnamespace.MouseButton): void =

  fcQGraphicsSceneDragDropEvent_setButtons(self.h, cint(buttons))

proc modifiers*(self: QGraphicsSceneDragDropEvent, ): gen_qnamespace.KeyboardModifier =

  gen_qnamespace.KeyboardModifier(fcQGraphicsSceneDragDropEvent_modifiers(self.h))

proc setModifiers*(self: QGraphicsSceneDragDropEvent, modifiers: gen_qnamespace.KeyboardModifier): void =

  fcQGraphicsSceneDragDropEvent_setModifiers(self.h, cint(modifiers))

proc possibleActions*(self: QGraphicsSceneDragDropEvent, ): gen_qnamespace.DropAction =

  gen_qnamespace.DropAction(fcQGraphicsSceneDragDropEvent_possibleActions(self.h))

proc setPossibleActions*(self: QGraphicsSceneDragDropEvent, actions: gen_qnamespace.DropAction): void =

  fcQGraphicsSceneDragDropEvent_setPossibleActions(self.h, cint(actions))

proc proposedAction*(self: QGraphicsSceneDragDropEvent, ): gen_qnamespace.DropAction =

  gen_qnamespace.DropAction(fcQGraphicsSceneDragDropEvent_proposedAction(self.h))

proc setProposedAction*(self: QGraphicsSceneDragDropEvent, action: gen_qnamespace.DropAction): void =

  fcQGraphicsSceneDragDropEvent_setProposedAction(self.h, cint(action))

proc acceptProposedAction*(self: QGraphicsSceneDragDropEvent, ): void =

  fcQGraphicsSceneDragDropEvent_acceptProposedAction(self.h)

proc dropAction*(self: QGraphicsSceneDragDropEvent, ): gen_qnamespace.DropAction =

  gen_qnamespace.DropAction(fcQGraphicsSceneDragDropEvent_dropAction(self.h))

proc setDropAction*(self: QGraphicsSceneDragDropEvent, action: gen_qnamespace.DropAction): void =

  fcQGraphicsSceneDragDropEvent_setDropAction(self.h, cint(action))

proc source*(self: QGraphicsSceneDragDropEvent, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQGraphicsSceneDragDropEvent_source(self.h))

proc setSource*(self: QGraphicsSceneDragDropEvent, source: gen_qwidget.QWidget): void =

  fcQGraphicsSceneDragDropEvent_setSource(self.h, source.h)

proc mimeData*(self: QGraphicsSceneDragDropEvent, ): gen_qmimedata.QMimeData =

  gen_qmimedata.QMimeData(h: fcQGraphicsSceneDragDropEvent_mimeData(self.h))

proc setMimeData*(self: QGraphicsSceneDragDropEvent, data: gen_qmimedata.QMimeData): void =

  fcQGraphicsSceneDragDropEvent_setMimeData(self.h, data.h)

proc callVirtualBase_setAccepted(self: QGraphicsSceneDragDropEvent, accepted: bool): void =


  fQGraphicsSceneDragDropEvent_virtualbase_setAccepted(self.h, accepted)

type QGraphicsSceneDragDropEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QGraphicsSceneDragDropEvent, slot: proc(super: QGraphicsSceneDragDropEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSceneDragDropEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneDragDropEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneDragDropEvent_setAccepted(self: ptr cQGraphicsSceneDragDropEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QGraphicsSceneDragDropEvent_setAccepted ".} =
  type Cb = proc(super: QGraphicsSceneDragDropEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QGraphicsSceneDragDropEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc callVirtualBase_clone(self: QGraphicsSceneDragDropEvent, ): gen_qcoreevent.QEvent =


  gen_qcoreevent.QEvent(h: fQGraphicsSceneDragDropEvent_virtualbase_clone(self.h))

type QGraphicsSceneDragDropEventcloneBase* = proc(): gen_qcoreevent.QEvent
proc onclone*(self: QGraphicsSceneDragDropEvent, slot: proc(super: QGraphicsSceneDragDropEventcloneBase): gen_qcoreevent.QEvent) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSceneDragDropEventcloneBase): gen_qcoreevent.QEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneDragDropEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneDragDropEvent_clone(self: ptr cQGraphicsSceneDragDropEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSceneDragDropEvent_clone ".} =
  type Cb = proc(super: QGraphicsSceneDragDropEventcloneBase): gen_qcoreevent.QEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QGraphicsSceneDragDropEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QGraphicsSceneDragDropEvent) =
  fcQGraphicsSceneDragDropEvent_delete(self.h)

func init*(T: type QGraphicsSceneResizeEvent, h: ptr cQGraphicsSceneResizeEvent): QGraphicsSceneResizeEvent =
  T(h: h)
proc create*(T: type QGraphicsSceneResizeEvent, ): QGraphicsSceneResizeEvent =

  QGraphicsSceneResizeEvent.init(fcQGraphicsSceneResizeEvent_new())
proc oldSize*(self: QGraphicsSceneResizeEvent, ): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQGraphicsSceneResizeEvent_oldSize(self.h))

proc setOldSize*(self: QGraphicsSceneResizeEvent, size: gen_qsize.QSizeF): void =

  fcQGraphicsSceneResizeEvent_setOldSize(self.h, size.h)

proc newSize*(self: QGraphicsSceneResizeEvent, ): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQGraphicsSceneResizeEvent_newSize(self.h))

proc setNewSize*(self: QGraphicsSceneResizeEvent, size: gen_qsize.QSizeF): void =

  fcQGraphicsSceneResizeEvent_setNewSize(self.h, size.h)

proc callVirtualBase_setAccepted(self: QGraphicsSceneResizeEvent, accepted: bool): void =


  fQGraphicsSceneResizeEvent_virtualbase_setAccepted(self.h, accepted)

type QGraphicsSceneResizeEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QGraphicsSceneResizeEvent, slot: proc(super: QGraphicsSceneResizeEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSceneResizeEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneResizeEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneResizeEvent_setAccepted(self: ptr cQGraphicsSceneResizeEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QGraphicsSceneResizeEvent_setAccepted ".} =
  type Cb = proc(super: QGraphicsSceneResizeEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QGraphicsSceneResizeEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc callVirtualBase_clone(self: QGraphicsSceneResizeEvent, ): gen_qcoreevent.QEvent =


  gen_qcoreevent.QEvent(h: fQGraphicsSceneResizeEvent_virtualbase_clone(self.h))

type QGraphicsSceneResizeEventcloneBase* = proc(): gen_qcoreevent.QEvent
proc onclone*(self: QGraphicsSceneResizeEvent, slot: proc(super: QGraphicsSceneResizeEventcloneBase): gen_qcoreevent.QEvent) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSceneResizeEventcloneBase): gen_qcoreevent.QEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneResizeEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneResizeEvent_clone(self: ptr cQGraphicsSceneResizeEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSceneResizeEvent_clone ".} =
  type Cb = proc(super: QGraphicsSceneResizeEventcloneBase): gen_qcoreevent.QEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QGraphicsSceneResizeEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QGraphicsSceneResizeEvent) =
  fcQGraphicsSceneResizeEvent_delete(self.h)

func init*(T: type QGraphicsSceneMoveEvent, h: ptr cQGraphicsSceneMoveEvent): QGraphicsSceneMoveEvent =
  T(h: h)
proc create*(T: type QGraphicsSceneMoveEvent, ): QGraphicsSceneMoveEvent =

  QGraphicsSceneMoveEvent.init(fcQGraphicsSceneMoveEvent_new())
proc oldPos*(self: QGraphicsSceneMoveEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsSceneMoveEvent_oldPos(self.h))

proc setOldPos*(self: QGraphicsSceneMoveEvent, pos: gen_qpoint.QPointF): void =

  fcQGraphicsSceneMoveEvent_setOldPos(self.h, pos.h)

proc newPos*(self: QGraphicsSceneMoveEvent, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsSceneMoveEvent_newPos(self.h))

proc setNewPos*(self: QGraphicsSceneMoveEvent, pos: gen_qpoint.QPointF): void =

  fcQGraphicsSceneMoveEvent_setNewPos(self.h, pos.h)

proc callVirtualBase_setAccepted(self: QGraphicsSceneMoveEvent, accepted: bool): void =


  fQGraphicsSceneMoveEvent_virtualbase_setAccepted(self.h, accepted)

type QGraphicsSceneMoveEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QGraphicsSceneMoveEvent, slot: proc(super: QGraphicsSceneMoveEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSceneMoveEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneMoveEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneMoveEvent_setAccepted(self: ptr cQGraphicsSceneMoveEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QGraphicsSceneMoveEvent_setAccepted ".} =
  type Cb = proc(super: QGraphicsSceneMoveEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QGraphicsSceneMoveEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc callVirtualBase_clone(self: QGraphicsSceneMoveEvent, ): gen_qcoreevent.QEvent =


  gen_qcoreevent.QEvent(h: fQGraphicsSceneMoveEvent_virtualbase_clone(self.h))

type QGraphicsSceneMoveEventcloneBase* = proc(): gen_qcoreevent.QEvent
proc onclone*(self: QGraphicsSceneMoveEvent, slot: proc(super: QGraphicsSceneMoveEventcloneBase): gen_qcoreevent.QEvent) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSceneMoveEventcloneBase): gen_qcoreevent.QEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSceneMoveEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSceneMoveEvent_clone(self: ptr cQGraphicsSceneMoveEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSceneMoveEvent_clone ".} =
  type Cb = proc(super: QGraphicsSceneMoveEventcloneBase): gen_qcoreevent.QEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QGraphicsSceneMoveEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QGraphicsSceneMoveEvent) =
  fcQGraphicsSceneMoveEvent_delete(self.h)
