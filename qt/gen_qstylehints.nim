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
{.compile("gen_qstylehints.cpp", cflags).}


import gen_qstylehints_types
export gen_qstylehints_types

import
  gen_qchar,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qchar,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs

type cQStyleHints*{.exportc: "QStyleHints", incompleteStruct.} = object

proc fcQStyleHints_metaObject(self: pointer, ): pointer {.importc: "QStyleHints_metaObject".}
proc fcQStyleHints_metacast(self: pointer, param1: cstring): pointer {.importc: "QStyleHints_metacast".}
proc fcQStyleHints_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStyleHints_metacall".}
proc fcQStyleHints_tr(s: cstring): struct_miqt_string {.importc: "QStyleHints_tr".}
proc fcQStyleHints_trUtf8(s: cstring): struct_miqt_string {.importc: "QStyleHints_trUtf8".}
proc fcQStyleHints_setMouseDoubleClickInterval(self: pointer, mouseDoubleClickInterval: cint): void {.importc: "QStyleHints_setMouseDoubleClickInterval".}
proc fcQStyleHints_mouseDoubleClickInterval(self: pointer, ): cint {.importc: "QStyleHints_mouseDoubleClickInterval".}
proc fcQStyleHints_mouseDoubleClickDistance(self: pointer, ): cint {.importc: "QStyleHints_mouseDoubleClickDistance".}
proc fcQStyleHints_touchDoubleTapDistance(self: pointer, ): cint {.importc: "QStyleHints_touchDoubleTapDistance".}
proc fcQStyleHints_setMousePressAndHoldInterval(self: pointer, mousePressAndHoldInterval: cint): void {.importc: "QStyleHints_setMousePressAndHoldInterval".}
proc fcQStyleHints_mousePressAndHoldInterval(self: pointer, ): cint {.importc: "QStyleHints_mousePressAndHoldInterval".}
proc fcQStyleHints_setStartDragDistance(self: pointer, startDragDistance: cint): void {.importc: "QStyleHints_setStartDragDistance".}
proc fcQStyleHints_startDragDistance(self: pointer, ): cint {.importc: "QStyleHints_startDragDistance".}
proc fcQStyleHints_setStartDragTime(self: pointer, startDragTime: cint): void {.importc: "QStyleHints_setStartDragTime".}
proc fcQStyleHints_startDragTime(self: pointer, ): cint {.importc: "QStyleHints_startDragTime".}
proc fcQStyleHints_startDragVelocity(self: pointer, ): cint {.importc: "QStyleHints_startDragVelocity".}
proc fcQStyleHints_setKeyboardInputInterval(self: pointer, keyboardInputInterval: cint): void {.importc: "QStyleHints_setKeyboardInputInterval".}
proc fcQStyleHints_keyboardInputInterval(self: pointer, ): cint {.importc: "QStyleHints_keyboardInputInterval".}
proc fcQStyleHints_keyboardAutoRepeatRate(self: pointer, ): cint {.importc: "QStyleHints_keyboardAutoRepeatRate".}
proc fcQStyleHints_setCursorFlashTime(self: pointer, cursorFlashTime: cint): void {.importc: "QStyleHints_setCursorFlashTime".}
proc fcQStyleHints_cursorFlashTime(self: pointer, ): cint {.importc: "QStyleHints_cursorFlashTime".}
proc fcQStyleHints_showIsFullScreen(self: pointer, ): bool {.importc: "QStyleHints_showIsFullScreen".}
proc fcQStyleHints_showIsMaximized(self: pointer, ): bool {.importc: "QStyleHints_showIsMaximized".}
proc fcQStyleHints_showShortcutsInContextMenus(self: pointer, ): bool {.importc: "QStyleHints_showShortcutsInContextMenus".}
proc fcQStyleHints_setShowShortcutsInContextMenus(self: pointer, showShortcutsInContextMenus: bool): void {.importc: "QStyleHints_setShowShortcutsInContextMenus".}
proc fcQStyleHints_passwordMaskDelay(self: pointer, ): cint {.importc: "QStyleHints_passwordMaskDelay".}
proc fcQStyleHints_passwordMaskCharacter(self: pointer, ): pointer {.importc: "QStyleHints_passwordMaskCharacter".}
proc fcQStyleHints_fontSmoothingGamma(self: pointer, ): float64 {.importc: "QStyleHints_fontSmoothingGamma".}
proc fcQStyleHints_useRtlExtensions(self: pointer, ): bool {.importc: "QStyleHints_useRtlExtensions".}
proc fcQStyleHints_setFocusOnTouchRelease(self: pointer, ): bool {.importc: "QStyleHints_setFocusOnTouchRelease".}
proc fcQStyleHints_tabFocusBehavior(self: pointer, ): cint {.importc: "QStyleHints_tabFocusBehavior".}
proc fcQStyleHints_setTabFocusBehavior(self: pointer, tabFocusBehavior: cint): void {.importc: "QStyleHints_setTabFocusBehavior".}
proc fcQStyleHints_singleClickActivation(self: pointer, ): bool {.importc: "QStyleHints_singleClickActivation".}
proc fcQStyleHints_useHoverEffects(self: pointer, ): bool {.importc: "QStyleHints_useHoverEffects".}
proc fcQStyleHints_setUseHoverEffects(self: pointer, useHoverEffects: bool): void {.importc: "QStyleHints_setUseHoverEffects".}
proc fcQStyleHints_wheelScrollLines(self: pointer, ): cint {.importc: "QStyleHints_wheelScrollLines".}
proc fcQStyleHints_setWheelScrollLines(self: pointer, scrollLines: cint): void {.importc: "QStyleHints_setWheelScrollLines".}
proc fcQStyleHints_setMouseQuickSelectionThreshold(self: pointer, threshold: cint): void {.importc: "QStyleHints_setMouseQuickSelectionThreshold".}
proc fcQStyleHints_mouseQuickSelectionThreshold(self: pointer, ): cint {.importc: "QStyleHints_mouseQuickSelectionThreshold".}
proc fcQStyleHints_cursorFlashTimeChanged(self: pointer, cursorFlashTime: cint): void {.importc: "QStyleHints_cursorFlashTimeChanged".}
proc fQStyleHints_connect_cursorFlashTimeChanged(self: pointer, slot: int) {.importc: "QStyleHints_connect_cursorFlashTimeChanged".}
proc fcQStyleHints_keyboardInputIntervalChanged(self: pointer, keyboardInputInterval: cint): void {.importc: "QStyleHints_keyboardInputIntervalChanged".}
proc fQStyleHints_connect_keyboardInputIntervalChanged(self: pointer, slot: int) {.importc: "QStyleHints_connect_keyboardInputIntervalChanged".}
proc fcQStyleHints_mouseDoubleClickIntervalChanged(self: pointer, mouseDoubleClickInterval: cint): void {.importc: "QStyleHints_mouseDoubleClickIntervalChanged".}
proc fQStyleHints_connect_mouseDoubleClickIntervalChanged(self: pointer, slot: int) {.importc: "QStyleHints_connect_mouseDoubleClickIntervalChanged".}
proc fcQStyleHints_mousePressAndHoldIntervalChanged(self: pointer, mousePressAndHoldInterval: cint): void {.importc: "QStyleHints_mousePressAndHoldIntervalChanged".}
proc fQStyleHints_connect_mousePressAndHoldIntervalChanged(self: pointer, slot: int) {.importc: "QStyleHints_connect_mousePressAndHoldIntervalChanged".}
proc fcQStyleHints_startDragDistanceChanged(self: pointer, startDragDistance: cint): void {.importc: "QStyleHints_startDragDistanceChanged".}
proc fQStyleHints_connect_startDragDistanceChanged(self: pointer, slot: int) {.importc: "QStyleHints_connect_startDragDistanceChanged".}
proc fcQStyleHints_startDragTimeChanged(self: pointer, startDragTime: cint): void {.importc: "QStyleHints_startDragTimeChanged".}
proc fQStyleHints_connect_startDragTimeChanged(self: pointer, slot: int) {.importc: "QStyleHints_connect_startDragTimeChanged".}
proc fcQStyleHints_tabFocusBehaviorChanged(self: pointer, tabFocusBehavior: cint): void {.importc: "QStyleHints_tabFocusBehaviorChanged".}
proc fQStyleHints_connect_tabFocusBehaviorChanged(self: pointer, slot: int) {.importc: "QStyleHints_connect_tabFocusBehaviorChanged".}
proc fcQStyleHints_useHoverEffectsChanged(self: pointer, useHoverEffects: bool): void {.importc: "QStyleHints_useHoverEffectsChanged".}
proc fQStyleHints_connect_useHoverEffectsChanged(self: pointer, slot: int) {.importc: "QStyleHints_connect_useHoverEffectsChanged".}
proc fcQStyleHints_showShortcutsInContextMenusChanged(self: pointer, param1: bool): void {.importc: "QStyleHints_showShortcutsInContextMenusChanged".}
proc fQStyleHints_connect_showShortcutsInContextMenusChanged(self: pointer, slot: int) {.importc: "QStyleHints_connect_showShortcutsInContextMenusChanged".}
proc fcQStyleHints_wheelScrollLinesChanged(self: pointer, scrollLines: cint): void {.importc: "QStyleHints_wheelScrollLinesChanged".}
proc fQStyleHints_connect_wheelScrollLinesChanged(self: pointer, slot: int) {.importc: "QStyleHints_connect_wheelScrollLinesChanged".}
proc fcQStyleHints_mouseQuickSelectionThresholdChanged(self: pointer, threshold: cint): void {.importc: "QStyleHints_mouseQuickSelectionThresholdChanged".}
proc fQStyleHints_connect_mouseQuickSelectionThresholdChanged(self: pointer, slot: int) {.importc: "QStyleHints_connect_mouseQuickSelectionThresholdChanged".}
proc fcQStyleHints_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStyleHints_tr2".}
proc fcQStyleHints_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStyleHints_tr3".}
proc fcQStyleHints_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QStyleHints_trUtf82".}
proc fcQStyleHints_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStyleHints_trUtf83".}
proc fcQStyleHints_delete(self: pointer) {.importc: "QStyleHints_delete".}


func init*(T: type QStyleHints, h: ptr cQStyleHints): QStyleHints =
  T(h: h)
proc metaObject*(self: QStyleHints, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQStyleHints_metaObject(self.h))

proc metacast*(self: QStyleHints, param1: cstring): pointer =

  fcQStyleHints_metacast(self.h, param1)

proc metacall*(self: QStyleHints, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQStyleHints_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QStyleHints, s: cstring): string =

  let v_ms = fcQStyleHints_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QStyleHints, s: cstring): string =

  let v_ms = fcQStyleHints_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setMouseDoubleClickInterval*(self: QStyleHints, mouseDoubleClickInterval: cint): void =

  fcQStyleHints_setMouseDoubleClickInterval(self.h, mouseDoubleClickInterval)

proc mouseDoubleClickInterval*(self: QStyleHints, ): cint =

  fcQStyleHints_mouseDoubleClickInterval(self.h)

proc mouseDoubleClickDistance*(self: QStyleHints, ): cint =

  fcQStyleHints_mouseDoubleClickDistance(self.h)

proc touchDoubleTapDistance*(self: QStyleHints, ): cint =

  fcQStyleHints_touchDoubleTapDistance(self.h)

proc setMousePressAndHoldInterval*(self: QStyleHints, mousePressAndHoldInterval: cint): void =

  fcQStyleHints_setMousePressAndHoldInterval(self.h, mousePressAndHoldInterval)

proc mousePressAndHoldInterval*(self: QStyleHints, ): cint =

  fcQStyleHints_mousePressAndHoldInterval(self.h)

proc setStartDragDistance*(self: QStyleHints, startDragDistance: cint): void =

  fcQStyleHints_setStartDragDistance(self.h, startDragDistance)

proc startDragDistance*(self: QStyleHints, ): cint =

  fcQStyleHints_startDragDistance(self.h)

proc setStartDragTime*(self: QStyleHints, startDragTime: cint): void =

  fcQStyleHints_setStartDragTime(self.h, startDragTime)

proc startDragTime*(self: QStyleHints, ): cint =

  fcQStyleHints_startDragTime(self.h)

proc startDragVelocity*(self: QStyleHints, ): cint =

  fcQStyleHints_startDragVelocity(self.h)

proc setKeyboardInputInterval*(self: QStyleHints, keyboardInputInterval: cint): void =

  fcQStyleHints_setKeyboardInputInterval(self.h, keyboardInputInterval)

proc keyboardInputInterval*(self: QStyleHints, ): cint =

  fcQStyleHints_keyboardInputInterval(self.h)

proc keyboardAutoRepeatRate*(self: QStyleHints, ): cint =

  fcQStyleHints_keyboardAutoRepeatRate(self.h)

proc setCursorFlashTime*(self: QStyleHints, cursorFlashTime: cint): void =

  fcQStyleHints_setCursorFlashTime(self.h, cursorFlashTime)

proc cursorFlashTime*(self: QStyleHints, ): cint =

  fcQStyleHints_cursorFlashTime(self.h)

proc showIsFullScreen*(self: QStyleHints, ): bool =

  fcQStyleHints_showIsFullScreen(self.h)

proc showIsMaximized*(self: QStyleHints, ): bool =

  fcQStyleHints_showIsMaximized(self.h)

proc showShortcutsInContextMenus*(self: QStyleHints, ): bool =

  fcQStyleHints_showShortcutsInContextMenus(self.h)

proc setShowShortcutsInContextMenus*(self: QStyleHints, showShortcutsInContextMenus: bool): void =

  fcQStyleHints_setShowShortcutsInContextMenus(self.h, showShortcutsInContextMenus)

proc passwordMaskDelay*(self: QStyleHints, ): cint =

  fcQStyleHints_passwordMaskDelay(self.h)

proc passwordMaskCharacter*(self: QStyleHints, ): gen_qchar.QChar =

  gen_qchar.QChar(h: fcQStyleHints_passwordMaskCharacter(self.h))

proc fontSmoothingGamma*(self: QStyleHints, ): float64 =

  fcQStyleHints_fontSmoothingGamma(self.h)

proc useRtlExtensions*(self: QStyleHints, ): bool =

  fcQStyleHints_useRtlExtensions(self.h)

proc setFocusOnTouchRelease*(self: QStyleHints, ): bool =

  fcQStyleHints_setFocusOnTouchRelease(self.h)

proc tabFocusBehavior*(self: QStyleHints, ): gen_qnamespace.TabFocusBehavior =

  gen_qnamespace.TabFocusBehavior(fcQStyleHints_tabFocusBehavior(self.h))

proc setTabFocusBehavior*(self: QStyleHints, tabFocusBehavior: gen_qnamespace.TabFocusBehavior): void =

  fcQStyleHints_setTabFocusBehavior(self.h, cint(tabFocusBehavior))

proc singleClickActivation*(self: QStyleHints, ): bool =

  fcQStyleHints_singleClickActivation(self.h)

proc useHoverEffects*(self: QStyleHints, ): bool =

  fcQStyleHints_useHoverEffects(self.h)

proc setUseHoverEffects*(self: QStyleHints, useHoverEffects: bool): void =

  fcQStyleHints_setUseHoverEffects(self.h, useHoverEffects)

proc wheelScrollLines*(self: QStyleHints, ): cint =

  fcQStyleHints_wheelScrollLines(self.h)

proc setWheelScrollLines*(self: QStyleHints, scrollLines: cint): void =

  fcQStyleHints_setWheelScrollLines(self.h, scrollLines)

proc setMouseQuickSelectionThreshold*(self: QStyleHints, threshold: cint): void =

  fcQStyleHints_setMouseQuickSelectionThreshold(self.h, threshold)

proc mouseQuickSelectionThreshold*(self: QStyleHints, ): cint =

  fcQStyleHints_mouseQuickSelectionThreshold(self.h)

proc cursorFlashTimeChanged*(self: QStyleHints, cursorFlashTime: cint): void =

  fcQStyleHints_cursorFlashTimeChanged(self.h, cursorFlashTime)

proc miqt_exec_callback_QStyleHints_cursorFlashTimeChanged(slot: int, cursorFlashTime: cint) {.exportc.} =
  type Cb = proc(cursorFlashTime: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = cursorFlashTime


  nimfunc[](slotval1)

proc oncursorFlashTimeChanged*(self: QStyleHints, slot: proc(cursorFlashTime: cint)) =
  type Cb = proc(cursorFlashTime: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQStyleHints_connect_cursorFlashTimeChanged(self.h, cast[int](addr tmp[]))
proc keyboardInputIntervalChanged*(self: QStyleHints, keyboardInputInterval: cint): void =

  fcQStyleHints_keyboardInputIntervalChanged(self.h, keyboardInputInterval)

proc miqt_exec_callback_QStyleHints_keyboardInputIntervalChanged(slot: int, keyboardInputInterval: cint) {.exportc.} =
  type Cb = proc(keyboardInputInterval: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = keyboardInputInterval


  nimfunc[](slotval1)

proc onkeyboardInputIntervalChanged*(self: QStyleHints, slot: proc(keyboardInputInterval: cint)) =
  type Cb = proc(keyboardInputInterval: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQStyleHints_connect_keyboardInputIntervalChanged(self.h, cast[int](addr tmp[]))
proc mouseDoubleClickIntervalChanged*(self: QStyleHints, mouseDoubleClickInterval: cint): void =

  fcQStyleHints_mouseDoubleClickIntervalChanged(self.h, mouseDoubleClickInterval)

proc miqt_exec_callback_QStyleHints_mouseDoubleClickIntervalChanged(slot: int, mouseDoubleClickInterval: cint) {.exportc.} =
  type Cb = proc(mouseDoubleClickInterval: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = mouseDoubleClickInterval


  nimfunc[](slotval1)

proc onmouseDoubleClickIntervalChanged*(self: QStyleHints, slot: proc(mouseDoubleClickInterval: cint)) =
  type Cb = proc(mouseDoubleClickInterval: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQStyleHints_connect_mouseDoubleClickIntervalChanged(self.h, cast[int](addr tmp[]))
proc mousePressAndHoldIntervalChanged*(self: QStyleHints, mousePressAndHoldInterval: cint): void =

  fcQStyleHints_mousePressAndHoldIntervalChanged(self.h, mousePressAndHoldInterval)

proc miqt_exec_callback_QStyleHints_mousePressAndHoldIntervalChanged(slot: int, mousePressAndHoldInterval: cint) {.exportc.} =
  type Cb = proc(mousePressAndHoldInterval: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = mousePressAndHoldInterval


  nimfunc[](slotval1)

proc onmousePressAndHoldIntervalChanged*(self: QStyleHints, slot: proc(mousePressAndHoldInterval: cint)) =
  type Cb = proc(mousePressAndHoldInterval: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQStyleHints_connect_mousePressAndHoldIntervalChanged(self.h, cast[int](addr tmp[]))
proc startDragDistanceChanged*(self: QStyleHints, startDragDistance: cint): void =

  fcQStyleHints_startDragDistanceChanged(self.h, startDragDistance)

proc miqt_exec_callback_QStyleHints_startDragDistanceChanged(slot: int, startDragDistance: cint) {.exportc.} =
  type Cb = proc(startDragDistance: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = startDragDistance


  nimfunc[](slotval1)

proc onstartDragDistanceChanged*(self: QStyleHints, slot: proc(startDragDistance: cint)) =
  type Cb = proc(startDragDistance: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQStyleHints_connect_startDragDistanceChanged(self.h, cast[int](addr tmp[]))
proc startDragTimeChanged*(self: QStyleHints, startDragTime: cint): void =

  fcQStyleHints_startDragTimeChanged(self.h, startDragTime)

proc miqt_exec_callback_QStyleHints_startDragTimeChanged(slot: int, startDragTime: cint) {.exportc.} =
  type Cb = proc(startDragTime: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = startDragTime


  nimfunc[](slotval1)

proc onstartDragTimeChanged*(self: QStyleHints, slot: proc(startDragTime: cint)) =
  type Cb = proc(startDragTime: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQStyleHints_connect_startDragTimeChanged(self.h, cast[int](addr tmp[]))
proc tabFocusBehaviorChanged*(self: QStyleHints, tabFocusBehavior: gen_qnamespace.TabFocusBehavior): void =

  fcQStyleHints_tabFocusBehaviorChanged(self.h, cint(tabFocusBehavior))

proc miqt_exec_callback_QStyleHints_tabFocusBehaviorChanged(slot: int, tabFocusBehavior: cint) {.exportc.} =
  type Cb = proc(tabFocusBehavior: gen_qnamespace.TabFocusBehavior)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnamespace.TabFocusBehavior(tabFocusBehavior)


  nimfunc[](slotval1)

proc ontabFocusBehaviorChanged*(self: QStyleHints, slot: proc(tabFocusBehavior: gen_qnamespace.TabFocusBehavior)) =
  type Cb = proc(tabFocusBehavior: gen_qnamespace.TabFocusBehavior)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQStyleHints_connect_tabFocusBehaviorChanged(self.h, cast[int](addr tmp[]))
proc useHoverEffectsChanged*(self: QStyleHints, useHoverEffects: bool): void =

  fcQStyleHints_useHoverEffectsChanged(self.h, useHoverEffects)

proc miqt_exec_callback_QStyleHints_useHoverEffectsChanged(slot: int, useHoverEffects: bool) {.exportc.} =
  type Cb = proc(useHoverEffects: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = useHoverEffects


  nimfunc[](slotval1)

proc onuseHoverEffectsChanged*(self: QStyleHints, slot: proc(useHoverEffects: bool)) =
  type Cb = proc(useHoverEffects: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQStyleHints_connect_useHoverEffectsChanged(self.h, cast[int](addr tmp[]))
proc showShortcutsInContextMenusChanged*(self: QStyleHints, param1: bool): void =

  fcQStyleHints_showShortcutsInContextMenusChanged(self.h, param1)

proc miqt_exec_callback_QStyleHints_showShortcutsInContextMenusChanged(slot: int, param1: bool) {.exportc.} =
  type Cb = proc(param1: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onshowShortcutsInContextMenusChanged*(self: QStyleHints, slot: proc(param1: bool)) =
  type Cb = proc(param1: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQStyleHints_connect_showShortcutsInContextMenusChanged(self.h, cast[int](addr tmp[]))
proc wheelScrollLinesChanged*(self: QStyleHints, scrollLines: cint): void =

  fcQStyleHints_wheelScrollLinesChanged(self.h, scrollLines)

proc miqt_exec_callback_QStyleHints_wheelScrollLinesChanged(slot: int, scrollLines: cint) {.exportc.} =
  type Cb = proc(scrollLines: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = scrollLines


  nimfunc[](slotval1)

proc onwheelScrollLinesChanged*(self: QStyleHints, slot: proc(scrollLines: cint)) =
  type Cb = proc(scrollLines: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQStyleHints_connect_wheelScrollLinesChanged(self.h, cast[int](addr tmp[]))
proc mouseQuickSelectionThresholdChanged*(self: QStyleHints, threshold: cint): void =

  fcQStyleHints_mouseQuickSelectionThresholdChanged(self.h, threshold)

proc miqt_exec_callback_QStyleHints_mouseQuickSelectionThresholdChanged(slot: int, threshold: cint) {.exportc.} =
  type Cb = proc(threshold: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = threshold


  nimfunc[](slotval1)

proc onmouseQuickSelectionThresholdChanged*(self: QStyleHints, slot: proc(threshold: cint)) =
  type Cb = proc(threshold: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQStyleHints_connect_mouseQuickSelectionThresholdChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QStyleHints, s: cstring, c: cstring): string =

  let v_ms = fcQStyleHints_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QStyleHints, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQStyleHints_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QStyleHints, s: cstring, c: cstring): string =

  let v_ms = fcQStyleHints_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QStyleHints, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQStyleHints_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QStyleHints) =
  fcQStyleHints_delete(self.h)
