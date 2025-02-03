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
{.compile("gen_qguiapplication.cpp", cflags).}


import gen_qguiapplication_types
export gen_qguiapplication_types

import
  gen_qclipboard,
  gen_qcoreapplication,
  gen_qcoreevent,
  gen_qcursor,
  gen_qfont,
  gen_qicon,
  gen_qinputmethod,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpalette,
  gen_qpoint,
  gen_qscreen,
  gen_qsessionmanager,
  gen_qstylehints,
  gen_qwindow,
  std/cmdline,
  std/os
export
  gen_qclipboard,
  gen_qcoreapplication,
  gen_qcoreevent,
  gen_qcursor,
  gen_qfont,
  gen_qicon,
  gen_qinputmethod,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpalette,
  gen_qpoint,
  gen_qscreen,
  gen_qsessionmanager,
  gen_qstylehints,
  gen_qwindow

type cQGuiApplication*{.exportc: "QGuiApplication", incompleteStruct.} = object

proc fcQGuiApplication_new(argc: ptr cint, argv: cstringArray): ptr cQGuiApplication {.importc: "QGuiApplication_new".}
proc fcQGuiApplication_new2(argc: ptr cint, argv: cstringArray, param3: cint): ptr cQGuiApplication {.importc: "QGuiApplication_new2".}
proc fcQGuiApplication_metaObject(self: pointer, ): pointer {.importc: "QGuiApplication_metaObject".}
proc fcQGuiApplication_metacast(self: pointer, param1: cstring): pointer {.importc: "QGuiApplication_metacast".}
proc fcQGuiApplication_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGuiApplication_metacall".}
proc fcQGuiApplication_tr(s: cstring): struct_miqt_string {.importc: "QGuiApplication_tr".}
proc fcQGuiApplication_setApplicationDisplayName(name: struct_miqt_string): void {.importc: "QGuiApplication_setApplicationDisplayName".}
proc fcQGuiApplication_applicationDisplayName(): struct_miqt_string {.importc: "QGuiApplication_applicationDisplayName".}
proc fcQGuiApplication_setDesktopFileName(name: struct_miqt_string): void {.importc: "QGuiApplication_setDesktopFileName".}
proc fcQGuiApplication_desktopFileName(): struct_miqt_string {.importc: "QGuiApplication_desktopFileName".}
proc fcQGuiApplication_allWindows(): struct_miqt_array {.importc: "QGuiApplication_allWindows".}
proc fcQGuiApplication_topLevelWindows(): struct_miqt_array {.importc: "QGuiApplication_topLevelWindows".}
proc fcQGuiApplication_topLevelAt(pos: pointer): pointer {.importc: "QGuiApplication_topLevelAt".}
proc fcQGuiApplication_setWindowIcon(icon: pointer): void {.importc: "QGuiApplication_setWindowIcon".}
proc fcQGuiApplication_windowIcon(): pointer {.importc: "QGuiApplication_windowIcon".}
proc fcQGuiApplication_platformName(): struct_miqt_string {.importc: "QGuiApplication_platformName".}
proc fcQGuiApplication_modalWindow(): pointer {.importc: "QGuiApplication_modalWindow".}
proc fcQGuiApplication_focusWindow(): pointer {.importc: "QGuiApplication_focusWindow".}
proc fcQGuiApplication_focusObject(): pointer {.importc: "QGuiApplication_focusObject".}
proc fcQGuiApplication_primaryScreen(): pointer {.importc: "QGuiApplication_primaryScreen".}
proc fcQGuiApplication_screens(): struct_miqt_array {.importc: "QGuiApplication_screens".}
proc fcQGuiApplication_screenAt(point: pointer): pointer {.importc: "QGuiApplication_screenAt".}
proc fcQGuiApplication_devicePixelRatio(self: pointer, ): float64 {.importc: "QGuiApplication_devicePixelRatio".}
proc fcQGuiApplication_overrideCursor(): pointer {.importc: "QGuiApplication_overrideCursor".}
proc fcQGuiApplication_setOverrideCursor(overrideCursor: pointer): void {.importc: "QGuiApplication_setOverrideCursor".}
proc fcQGuiApplication_changeOverrideCursor(param1: pointer): void {.importc: "QGuiApplication_changeOverrideCursor".}
proc fcQGuiApplication_restoreOverrideCursor(): void {.importc: "QGuiApplication_restoreOverrideCursor".}
proc fcQGuiApplication_font(): pointer {.importc: "QGuiApplication_font".}
proc fcQGuiApplication_setFont(font: pointer): void {.importc: "QGuiApplication_setFont".}
proc fcQGuiApplication_clipboard(): pointer {.importc: "QGuiApplication_clipboard".}
proc fcQGuiApplication_palette(): pointer {.importc: "QGuiApplication_palette".}
proc fcQGuiApplication_setPalette(pal: pointer): void {.importc: "QGuiApplication_setPalette".}
proc fcQGuiApplication_keyboardModifiers(): cint {.importc: "QGuiApplication_keyboardModifiers".}
proc fcQGuiApplication_queryKeyboardModifiers(): cint {.importc: "QGuiApplication_queryKeyboardModifiers".}
proc fcQGuiApplication_mouseButtons(): cint {.importc: "QGuiApplication_mouseButtons".}
proc fcQGuiApplication_setLayoutDirection(direction: cint): void {.importc: "QGuiApplication_setLayoutDirection".}
proc fcQGuiApplication_layoutDirection(): cint {.importc: "QGuiApplication_layoutDirection".}
proc fcQGuiApplication_isRightToLeft(): bool {.importc: "QGuiApplication_isRightToLeft".}
proc fcQGuiApplication_isLeftToRight(): bool {.importc: "QGuiApplication_isLeftToRight".}
proc fcQGuiApplication_styleHints(): pointer {.importc: "QGuiApplication_styleHints".}
proc fcQGuiApplication_setDesktopSettingsAware(on: bool): void {.importc: "QGuiApplication_setDesktopSettingsAware".}
proc fcQGuiApplication_desktopSettingsAware(): bool {.importc: "QGuiApplication_desktopSettingsAware".}
proc fcQGuiApplication_inputMethod(): pointer {.importc: "QGuiApplication_inputMethod".}
proc fcQGuiApplication_setQuitOnLastWindowClosed(quit: bool): void {.importc: "QGuiApplication_setQuitOnLastWindowClosed".}
proc fcQGuiApplication_quitOnLastWindowClosed(): bool {.importc: "QGuiApplication_quitOnLastWindowClosed".}
proc fcQGuiApplication_applicationState(): cint {.importc: "QGuiApplication_applicationState".}
proc fcQGuiApplication_setHighDpiScaleFactorRoundingPolicy(policy: cint): void {.importc: "QGuiApplication_setHighDpiScaleFactorRoundingPolicy".}
proc fcQGuiApplication_highDpiScaleFactorRoundingPolicy(): cint {.importc: "QGuiApplication_highDpiScaleFactorRoundingPolicy".}
proc fcQGuiApplication_exec(): cint {.importc: "QGuiApplication_exec".}
proc fcQGuiApplication_notify(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QGuiApplication_notify".}
proc fcQGuiApplication_isSessionRestored(self: pointer, ): bool {.importc: "QGuiApplication_isSessionRestored".}
proc fcQGuiApplication_sessionId(self: pointer, ): struct_miqt_string {.importc: "QGuiApplication_sessionId".}
proc fcQGuiApplication_sessionKey(self: pointer, ): struct_miqt_string {.importc: "QGuiApplication_sessionKey".}
proc fcQGuiApplication_isSavingSession(self: pointer, ): bool {.importc: "QGuiApplication_isSavingSession".}
proc fcQGuiApplication_sync(): void {.importc: "QGuiApplication_sync".}
proc fcQGuiApplication_fontDatabaseChanged(self: pointer, ): void {.importc: "QGuiApplication_fontDatabaseChanged".}
proc fQGuiApplication_connect_fontDatabaseChanged(self: pointer, slot: int) {.importc: "QGuiApplication_connect_fontDatabaseChanged".}
proc fcQGuiApplication_screenAdded(self: pointer, screen: pointer): void {.importc: "QGuiApplication_screenAdded".}
proc fQGuiApplication_connect_screenAdded(self: pointer, slot: int) {.importc: "QGuiApplication_connect_screenAdded".}
proc fcQGuiApplication_screenRemoved(self: pointer, screen: pointer): void {.importc: "QGuiApplication_screenRemoved".}
proc fQGuiApplication_connect_screenRemoved(self: pointer, slot: int) {.importc: "QGuiApplication_connect_screenRemoved".}
proc fcQGuiApplication_primaryScreenChanged(self: pointer, screen: pointer): void {.importc: "QGuiApplication_primaryScreenChanged".}
proc fQGuiApplication_connect_primaryScreenChanged(self: pointer, slot: int) {.importc: "QGuiApplication_connect_primaryScreenChanged".}
proc fcQGuiApplication_lastWindowClosed(self: pointer, ): void {.importc: "QGuiApplication_lastWindowClosed".}
proc fQGuiApplication_connect_lastWindowClosed(self: pointer, slot: int) {.importc: "QGuiApplication_connect_lastWindowClosed".}
proc fcQGuiApplication_focusObjectChanged(self: pointer, focusObject: pointer): void {.importc: "QGuiApplication_focusObjectChanged".}
proc fQGuiApplication_connect_focusObjectChanged(self: pointer, slot: int) {.importc: "QGuiApplication_connect_focusObjectChanged".}
proc fcQGuiApplication_focusWindowChanged(self: pointer, focusWindow: pointer): void {.importc: "QGuiApplication_focusWindowChanged".}
proc fQGuiApplication_connect_focusWindowChanged(self: pointer, slot: int) {.importc: "QGuiApplication_connect_focusWindowChanged".}
proc fcQGuiApplication_applicationStateChanged(self: pointer, state: cint): void {.importc: "QGuiApplication_applicationStateChanged".}
proc fQGuiApplication_connect_applicationStateChanged(self: pointer, slot: int) {.importc: "QGuiApplication_connect_applicationStateChanged".}
proc fcQGuiApplication_layoutDirectionChanged(self: pointer, direction: cint): void {.importc: "QGuiApplication_layoutDirectionChanged".}
proc fQGuiApplication_connect_layoutDirectionChanged(self: pointer, slot: int) {.importc: "QGuiApplication_connect_layoutDirectionChanged".}
proc fcQGuiApplication_commitDataRequest(self: pointer, sessionManager: pointer): void {.importc: "QGuiApplication_commitDataRequest".}
proc fQGuiApplication_connect_commitDataRequest(self: pointer, slot: int) {.importc: "QGuiApplication_connect_commitDataRequest".}
proc fcQGuiApplication_saveStateRequest(self: pointer, sessionManager: pointer): void {.importc: "QGuiApplication_saveStateRequest".}
proc fQGuiApplication_connect_saveStateRequest(self: pointer, slot: int) {.importc: "QGuiApplication_connect_saveStateRequest".}
proc fcQGuiApplication_applicationDisplayNameChanged(self: pointer, ): void {.importc: "QGuiApplication_applicationDisplayNameChanged".}
proc fQGuiApplication_connect_applicationDisplayNameChanged(self: pointer, slot: int) {.importc: "QGuiApplication_connect_applicationDisplayNameChanged".}
proc fcQGuiApplication_paletteChanged(self: pointer, pal: pointer): void {.importc: "QGuiApplication_paletteChanged".}
proc fQGuiApplication_connect_paletteChanged(self: pointer, slot: int) {.importc: "QGuiApplication_connect_paletteChanged".}
proc fcQGuiApplication_fontChanged(self: pointer, font: pointer): void {.importc: "QGuiApplication_fontChanged".}
proc fQGuiApplication_connect_fontChanged(self: pointer, slot: int) {.importc: "QGuiApplication_connect_fontChanged".}
proc fcQGuiApplication_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGuiApplication_tr2".}
proc fcQGuiApplication_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGuiApplication_tr3".}
proc fQGuiApplication_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGuiApplication_virtualbase_metacall".}
proc fcQGuiApplication_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGuiApplication_override_virtual_metacall".}
proc fQGuiApplication_virtualbase_notify(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QGuiApplication_virtualbase_notify".}
proc fcQGuiApplication_override_virtual_notify(self: pointer, slot: int) {.importc: "QGuiApplication_override_virtual_notify".}
proc fQGuiApplication_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QGuiApplication_virtualbase_event".}
proc fcQGuiApplication_override_virtual_event(self: pointer, slot: int) {.importc: "QGuiApplication_override_virtual_event".}
proc fQGuiApplication_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGuiApplication_virtualbase_eventFilter".}
proc fcQGuiApplication_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGuiApplication_override_virtual_eventFilter".}
proc fQGuiApplication_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGuiApplication_virtualbase_timerEvent".}
proc fcQGuiApplication_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGuiApplication_override_virtual_timerEvent".}
proc fQGuiApplication_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGuiApplication_virtualbase_childEvent".}
proc fcQGuiApplication_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGuiApplication_override_virtual_childEvent".}
proc fQGuiApplication_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGuiApplication_virtualbase_customEvent".}
proc fcQGuiApplication_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGuiApplication_override_virtual_customEvent".}
proc fQGuiApplication_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGuiApplication_virtualbase_connectNotify".}
proc fcQGuiApplication_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGuiApplication_override_virtual_connectNotify".}
proc fQGuiApplication_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGuiApplication_virtualbase_disconnectNotify".}
proc fcQGuiApplication_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGuiApplication_override_virtual_disconnectNotify".}
proc fcQGuiApplication_delete(self: pointer) {.importc: "QGuiApplication_delete".}


func init*(T: type QGuiApplication, h: ptr cQGuiApplication): QGuiApplication =
  T(h: h)
proc create*(T: type QGuiApplication, ): QGuiApplication =

  # Convert []string to long-lived int& argc, char** argv, never call free()
  var args2 = @[getAppFilename()]
  args2.add commandLineParams()
  var argv: cStringArray = allocCstringArray(args2)
  var argc {.threadvar.}: cint
  argc = args2.len.cint
  QGuiApplication.init(fcQGuiApplication_new(addr argc, argv))
proc create*(T: type QGuiApplication, param3: cint): QGuiApplication =

  # Convert []string to long-lived int& argc, char** argv, never call free()
  var args2 = @[getAppFilename()]
  args2.add commandLineParams()
  var argv: cStringArray = allocCstringArray(args2)
  var argc {.threadvar.}: cint
  argc = args2.len.cint
  QGuiApplication.init(fcQGuiApplication_new2(addr argc, argv, param3))
proc metaObject*(self: QGuiApplication, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQGuiApplication_metaObject(self.h))

proc metacast*(self: QGuiApplication, param1: cstring): pointer =

  fcQGuiApplication_metacast(self.h, param1)

proc metacall*(self: QGuiApplication, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQGuiApplication_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QGuiApplication, s: cstring): string =

  let v_ms = fcQGuiApplication_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setApplicationDisplayName*(_: type QGuiApplication, name: string): void =

  fcQGuiApplication_setApplicationDisplayName(struct_miqt_string(data: name, len: csize_t(len(name))))

proc applicationDisplayName*(_: type QGuiApplication, ): string =

  let v_ms = fcQGuiApplication_applicationDisplayName()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDesktopFileName*(_: type QGuiApplication, name: string): void =

  fcQGuiApplication_setDesktopFileName(struct_miqt_string(data: name, len: csize_t(len(name))))

proc desktopFileName*(_: type QGuiApplication, ): string =

  let v_ms = fcQGuiApplication_desktopFileName()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc allWindows*(_: type QGuiApplication, ): seq[gen_qwindow.QWindow] =

  var v_ma = fcQGuiApplication_allWindows()
  var vx_ret = newSeq[gen_qwindow.QWindow](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwindow.QWindow(h: v_outCast[i])
  vx_ret

proc topLevelWindows*(_: type QGuiApplication, ): seq[gen_qwindow.QWindow] =

  var v_ma = fcQGuiApplication_topLevelWindows()
  var vx_ret = newSeq[gen_qwindow.QWindow](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwindow.QWindow(h: v_outCast[i])
  vx_ret

proc topLevelAt*(_: type QGuiApplication, pos: gen_qpoint.QPoint): gen_qwindow.QWindow =

  gen_qwindow.QWindow(h: fcQGuiApplication_topLevelAt(pos.h))

proc setWindowIcon*(_: type QGuiApplication, icon: gen_qicon.QIcon): void =

  fcQGuiApplication_setWindowIcon(icon.h)

proc windowIcon*(_: type QGuiApplication, ): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQGuiApplication_windowIcon())

proc platformName*(_: type QGuiApplication, ): string =

  let v_ms = fcQGuiApplication_platformName()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc modalWindow*(_: type QGuiApplication, ): gen_qwindow.QWindow =

  gen_qwindow.QWindow(h: fcQGuiApplication_modalWindow())

proc focusWindow*(_: type QGuiApplication, ): gen_qwindow.QWindow =

  gen_qwindow.QWindow(h: fcQGuiApplication_focusWindow())

proc focusObject*(_: type QGuiApplication, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQGuiApplication_focusObject())

proc primaryScreen*(_: type QGuiApplication, ): gen_qscreen.QScreen =

  gen_qscreen.QScreen(h: fcQGuiApplication_primaryScreen())

proc screens*(_: type QGuiApplication, ): seq[gen_qscreen.QScreen] =

  var v_ma = fcQGuiApplication_screens()
  var vx_ret = newSeq[gen_qscreen.QScreen](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qscreen.QScreen(h: v_outCast[i])
  vx_ret

proc screenAt*(_: type QGuiApplication, point: gen_qpoint.QPoint): gen_qscreen.QScreen =

  gen_qscreen.QScreen(h: fcQGuiApplication_screenAt(point.h))

proc devicePixelRatio*(self: QGuiApplication, ): float64 =

  fcQGuiApplication_devicePixelRatio(self.h)

proc overrideCursor*(_: type QGuiApplication, ): gen_qcursor.QCursor =

  gen_qcursor.QCursor(h: fcQGuiApplication_overrideCursor())

proc setOverrideCursor*(_: type QGuiApplication, overrideCursor: gen_qcursor.QCursor): void =

  fcQGuiApplication_setOverrideCursor(overrideCursor.h)

proc changeOverrideCursor*(_: type QGuiApplication, param1: gen_qcursor.QCursor): void =

  fcQGuiApplication_changeOverrideCursor(param1.h)

proc restoreOverrideCursor*(_: type QGuiApplication, ): void =

  fcQGuiApplication_restoreOverrideCursor()

proc font*(_: type QGuiApplication, ): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQGuiApplication_font())

proc setFont*(_: type QGuiApplication, font: gen_qfont.QFont): void =

  fcQGuiApplication_setFont(font.h)

proc clipboard*(_: type QGuiApplication, ): gen_qclipboard.QClipboard =

  gen_qclipboard.QClipboard(h: fcQGuiApplication_clipboard())

proc palette*(_: type QGuiApplication, ): gen_qpalette.QPalette =

  gen_qpalette.QPalette(h: fcQGuiApplication_palette())

proc setPalette*(_: type QGuiApplication, pal: gen_qpalette.QPalette): void =

  fcQGuiApplication_setPalette(pal.h)

proc keyboardModifiers*(_: type QGuiApplication, ): gen_qnamespace.KeyboardModifier =

  gen_qnamespace.KeyboardModifier(fcQGuiApplication_keyboardModifiers())

proc queryKeyboardModifiers*(_: type QGuiApplication, ): gen_qnamespace.KeyboardModifier =

  gen_qnamespace.KeyboardModifier(fcQGuiApplication_queryKeyboardModifiers())

proc mouseButtons*(_: type QGuiApplication, ): gen_qnamespace.MouseButton =

  gen_qnamespace.MouseButton(fcQGuiApplication_mouseButtons())

proc setLayoutDirection*(_: type QGuiApplication, direction: gen_qnamespace.LayoutDirection): void =

  fcQGuiApplication_setLayoutDirection(cint(direction))

proc layoutDirection*(_: type QGuiApplication, ): gen_qnamespace.LayoutDirection =

  gen_qnamespace.LayoutDirection(fcQGuiApplication_layoutDirection())

proc isRightToLeft*(_: type QGuiApplication, ): bool =

  fcQGuiApplication_isRightToLeft()

proc isLeftToRight*(_: type QGuiApplication, ): bool =

  fcQGuiApplication_isLeftToRight()

proc styleHints*(_: type QGuiApplication, ): gen_qstylehints.QStyleHints =

  gen_qstylehints.QStyleHints(h: fcQGuiApplication_styleHints())

proc setDesktopSettingsAware*(_: type QGuiApplication, on: bool): void =

  fcQGuiApplication_setDesktopSettingsAware(on)

proc desktopSettingsAware*(_: type QGuiApplication, ): bool =

  fcQGuiApplication_desktopSettingsAware()

proc inputMethod*(_: type QGuiApplication, ): gen_qinputmethod.QInputMethod =

  gen_qinputmethod.QInputMethod(h: fcQGuiApplication_inputMethod())

proc setQuitOnLastWindowClosed*(_: type QGuiApplication, quit: bool): void =

  fcQGuiApplication_setQuitOnLastWindowClosed(quit)

proc quitOnLastWindowClosed*(_: type QGuiApplication, ): bool =

  fcQGuiApplication_quitOnLastWindowClosed()

proc applicationState*(_: type QGuiApplication, ): gen_qnamespace.ApplicationState =

  gen_qnamespace.ApplicationState(fcQGuiApplication_applicationState())

proc setHighDpiScaleFactorRoundingPolicy*(_: type QGuiApplication, policy: gen_qnamespace.HighDpiScaleFactorRoundingPolicy): void =

  fcQGuiApplication_setHighDpiScaleFactorRoundingPolicy(cint(policy))

proc highDpiScaleFactorRoundingPolicy*(_: type QGuiApplication, ): gen_qnamespace.HighDpiScaleFactorRoundingPolicy =

  gen_qnamespace.HighDpiScaleFactorRoundingPolicy(fcQGuiApplication_highDpiScaleFactorRoundingPolicy())

proc exec*(_: type QGuiApplication, ): cint =

  fcQGuiApplication_exec()

proc notify*(self: QGuiApplication, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =

  fcQGuiApplication_notify(self.h, param1.h, param2.h)

proc isSessionRestored*(self: QGuiApplication, ): bool =

  fcQGuiApplication_isSessionRestored(self.h)

proc sessionId*(self: QGuiApplication, ): string =

  let v_ms = fcQGuiApplication_sessionId(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sessionKey*(self: QGuiApplication, ): string =

  let v_ms = fcQGuiApplication_sessionKey(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isSavingSession*(self: QGuiApplication, ): bool =

  fcQGuiApplication_isSavingSession(self.h)

proc sync*(_: type QGuiApplication, ): void =

  fcQGuiApplication_sync()

proc fontDatabaseChanged*(self: QGuiApplication, ): void =

  fcQGuiApplication_fontDatabaseChanged(self.h)

proc miqt_exec_callback_QGuiApplication_fontDatabaseChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onfontDatabaseChanged*(self: QGuiApplication, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGuiApplication_connect_fontDatabaseChanged(self.h, cast[int](addr tmp[]))
proc screenAdded*(self: QGuiApplication, screen: gen_qscreen.QScreen): void =

  fcQGuiApplication_screenAdded(self.h, screen.h)

proc miqt_exec_callback_QGuiApplication_screenAdded(slot: int, screen: pointer) {.exportc.} =
  type Cb = proc(screen: gen_qscreen.QScreen)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qscreen.QScreen(h: screen)


  nimfunc[](slotval1)

proc onscreenAdded*(self: QGuiApplication, slot: proc(screen: gen_qscreen.QScreen)) =
  type Cb = proc(screen: gen_qscreen.QScreen)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGuiApplication_connect_screenAdded(self.h, cast[int](addr tmp[]))
proc screenRemoved*(self: QGuiApplication, screen: gen_qscreen.QScreen): void =

  fcQGuiApplication_screenRemoved(self.h, screen.h)

proc miqt_exec_callback_QGuiApplication_screenRemoved(slot: int, screen: pointer) {.exportc.} =
  type Cb = proc(screen: gen_qscreen.QScreen)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qscreen.QScreen(h: screen)


  nimfunc[](slotval1)

proc onscreenRemoved*(self: QGuiApplication, slot: proc(screen: gen_qscreen.QScreen)) =
  type Cb = proc(screen: gen_qscreen.QScreen)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGuiApplication_connect_screenRemoved(self.h, cast[int](addr tmp[]))
proc primaryScreenChanged*(self: QGuiApplication, screen: gen_qscreen.QScreen): void =

  fcQGuiApplication_primaryScreenChanged(self.h, screen.h)

proc miqt_exec_callback_QGuiApplication_primaryScreenChanged(slot: int, screen: pointer) {.exportc.} =
  type Cb = proc(screen: gen_qscreen.QScreen)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qscreen.QScreen(h: screen)


  nimfunc[](slotval1)

proc onprimaryScreenChanged*(self: QGuiApplication, slot: proc(screen: gen_qscreen.QScreen)) =
  type Cb = proc(screen: gen_qscreen.QScreen)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGuiApplication_connect_primaryScreenChanged(self.h, cast[int](addr tmp[]))
proc lastWindowClosed*(self: QGuiApplication, ): void =

  fcQGuiApplication_lastWindowClosed(self.h)

proc miqt_exec_callback_QGuiApplication_lastWindowClosed(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onlastWindowClosed*(self: QGuiApplication, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGuiApplication_connect_lastWindowClosed(self.h, cast[int](addr tmp[]))
proc focusObjectChanged*(self: QGuiApplication, focusObject: gen_qobject.QObject): void =

  fcQGuiApplication_focusObjectChanged(self.h, focusObject.h)

proc miqt_exec_callback_QGuiApplication_focusObjectChanged(slot: int, focusObject: pointer) {.exportc.} =
  type Cb = proc(focusObject: gen_qobject.QObject)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: focusObject)


  nimfunc[](slotval1)

proc onfocusObjectChanged*(self: QGuiApplication, slot: proc(focusObject: gen_qobject.QObject)) =
  type Cb = proc(focusObject: gen_qobject.QObject)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGuiApplication_connect_focusObjectChanged(self.h, cast[int](addr tmp[]))
proc focusWindowChanged*(self: QGuiApplication, focusWindow: gen_qwindow.QWindow): void =

  fcQGuiApplication_focusWindowChanged(self.h, focusWindow.h)

proc miqt_exec_callback_QGuiApplication_focusWindowChanged(slot: int, focusWindow: pointer) {.exportc.} =
  type Cb = proc(focusWindow: gen_qwindow.QWindow)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qwindow.QWindow(h: focusWindow)


  nimfunc[](slotval1)

proc onfocusWindowChanged*(self: QGuiApplication, slot: proc(focusWindow: gen_qwindow.QWindow)) =
  type Cb = proc(focusWindow: gen_qwindow.QWindow)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGuiApplication_connect_focusWindowChanged(self.h, cast[int](addr tmp[]))
proc applicationStateChanged*(self: QGuiApplication, state: gen_qnamespace.ApplicationState): void =

  fcQGuiApplication_applicationStateChanged(self.h, cint(state))

proc miqt_exec_callback_QGuiApplication_applicationStateChanged(slot: int, state: cint) {.exportc.} =
  type Cb = proc(state: gen_qnamespace.ApplicationState)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnamespace.ApplicationState(state)


  nimfunc[](slotval1)

proc onapplicationStateChanged*(self: QGuiApplication, slot: proc(state: gen_qnamespace.ApplicationState)) =
  type Cb = proc(state: gen_qnamespace.ApplicationState)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGuiApplication_connect_applicationStateChanged(self.h, cast[int](addr tmp[]))
proc layoutDirectionChanged*(self: QGuiApplication, direction: gen_qnamespace.LayoutDirection): void =

  fcQGuiApplication_layoutDirectionChanged(self.h, cint(direction))

proc miqt_exec_callback_QGuiApplication_layoutDirectionChanged(slot: int, direction: cint) {.exportc.} =
  type Cb = proc(direction: gen_qnamespace.LayoutDirection)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnamespace.LayoutDirection(direction)


  nimfunc[](slotval1)

proc onlayoutDirectionChanged*(self: QGuiApplication, slot: proc(direction: gen_qnamespace.LayoutDirection)) =
  type Cb = proc(direction: gen_qnamespace.LayoutDirection)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGuiApplication_connect_layoutDirectionChanged(self.h, cast[int](addr tmp[]))
proc commitDataRequest*(self: QGuiApplication, sessionManager: gen_qsessionmanager.QSessionManager): void =

  fcQGuiApplication_commitDataRequest(self.h, sessionManager.h)

proc miqt_exec_callback_QGuiApplication_commitDataRequest(slot: int, sessionManager: pointer) {.exportc.} =
  type Cb = proc(sessionManager: gen_qsessionmanager.QSessionManager)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qsessionmanager.QSessionManager(h: sessionManager)


  nimfunc[](slotval1)

proc oncommitDataRequest*(self: QGuiApplication, slot: proc(sessionManager: gen_qsessionmanager.QSessionManager)) =
  type Cb = proc(sessionManager: gen_qsessionmanager.QSessionManager)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGuiApplication_connect_commitDataRequest(self.h, cast[int](addr tmp[]))
proc saveStateRequest*(self: QGuiApplication, sessionManager: gen_qsessionmanager.QSessionManager): void =

  fcQGuiApplication_saveStateRequest(self.h, sessionManager.h)

proc miqt_exec_callback_QGuiApplication_saveStateRequest(slot: int, sessionManager: pointer) {.exportc.} =
  type Cb = proc(sessionManager: gen_qsessionmanager.QSessionManager)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qsessionmanager.QSessionManager(h: sessionManager)


  nimfunc[](slotval1)

proc onsaveStateRequest*(self: QGuiApplication, slot: proc(sessionManager: gen_qsessionmanager.QSessionManager)) =
  type Cb = proc(sessionManager: gen_qsessionmanager.QSessionManager)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGuiApplication_connect_saveStateRequest(self.h, cast[int](addr tmp[]))
proc applicationDisplayNameChanged*(self: QGuiApplication, ): void =

  fcQGuiApplication_applicationDisplayNameChanged(self.h)

proc miqt_exec_callback_QGuiApplication_applicationDisplayNameChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onapplicationDisplayNameChanged*(self: QGuiApplication, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGuiApplication_connect_applicationDisplayNameChanged(self.h, cast[int](addr tmp[]))
proc paletteChanged*(self: QGuiApplication, pal: gen_qpalette.QPalette): void =

  fcQGuiApplication_paletteChanged(self.h, pal.h)

proc miqt_exec_callback_QGuiApplication_paletteChanged(slot: int, pal: pointer) {.exportc.} =
  type Cb = proc(pal: gen_qpalette.QPalette)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qpalette.QPalette(h: pal)


  nimfunc[](slotval1)

proc onpaletteChanged*(self: QGuiApplication, slot: proc(pal: gen_qpalette.QPalette)) =
  type Cb = proc(pal: gen_qpalette.QPalette)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGuiApplication_connect_paletteChanged(self.h, cast[int](addr tmp[]))
proc fontChanged*(self: QGuiApplication, font: gen_qfont.QFont): void =

  fcQGuiApplication_fontChanged(self.h, font.h)

proc miqt_exec_callback_QGuiApplication_fontChanged(slot: int, font: pointer) {.exportc.} =
  type Cb = proc(font: gen_qfont.QFont)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: font)


  nimfunc[](slotval1)

proc onfontChanged*(self: QGuiApplication, slot: proc(font: gen_qfont.QFont)) =
  type Cb = proc(font: gen_qfont.QFont)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGuiApplication_connect_fontChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QGuiApplication, s: cstring, c: cstring): string =

  let v_ms = fcQGuiApplication_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QGuiApplication, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGuiApplication_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QGuiApplication, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQGuiApplication_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGuiApplicationmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QGuiApplication, slot: proc(super: QGuiApplicationmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QGuiApplicationmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGuiApplication_metacall(self: ptr cQGuiApplication, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGuiApplication_metacall ".} =
  type Cb = proc(super: QGuiApplicationmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QGuiApplication(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_notify(self: QGuiApplication, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =


  fQGuiApplication_virtualbase_notify(self.h, param1.h, param2.h)

type QGuiApplicationnotifyBase* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc onnotify*(self: QGuiApplication, slot: proc(super: QGuiApplicationnotifyBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGuiApplicationnotifyBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_override_virtual_notify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGuiApplication_notify(self: ptr cQGuiApplication, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QGuiApplication_notify ".} =
  type Cb = proc(super: QGuiApplicationnotifyBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_notify(QGuiApplication(h: self), param1, param2)
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QGuiApplication, param1: gen_qcoreevent.QEvent): bool =


  fQGuiApplication_virtualbase_event(self.h, param1.h)

type QGuiApplicationeventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QGuiApplication, slot: proc(super: QGuiApplicationeventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGuiApplicationeventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGuiApplication_event(self: ptr cQGuiApplication, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QGuiApplication_event ".} =
  type Cb = proc(super: QGuiApplicationeventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QGuiApplication(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QGuiApplication, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQGuiApplication_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGuiApplicationeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QGuiApplication, slot: proc(super: QGuiApplicationeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGuiApplicationeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGuiApplication_eventFilter(self: ptr cQGuiApplication, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGuiApplication_eventFilter ".} =
  type Cb = proc(super: QGuiApplicationeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QGuiApplication(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QGuiApplication, event: gen_qcoreevent.QTimerEvent): void =


  fQGuiApplication_virtualbase_timerEvent(self.h, event.h)

type QGuiApplicationtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QGuiApplication, slot: proc(super: QGuiApplicationtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGuiApplicationtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGuiApplication_timerEvent(self: ptr cQGuiApplication, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGuiApplication_timerEvent ".} =
  type Cb = proc(super: QGuiApplicationtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QGuiApplication(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QGuiApplication, event: gen_qcoreevent.QChildEvent): void =


  fQGuiApplication_virtualbase_childEvent(self.h, event.h)

type QGuiApplicationchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QGuiApplication, slot: proc(super: QGuiApplicationchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGuiApplicationchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGuiApplication_childEvent(self: ptr cQGuiApplication, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGuiApplication_childEvent ".} =
  type Cb = proc(super: QGuiApplicationchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QGuiApplication(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QGuiApplication, event: gen_qcoreevent.QEvent): void =


  fQGuiApplication_virtualbase_customEvent(self.h, event.h)

type QGuiApplicationcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QGuiApplication, slot: proc(super: QGuiApplicationcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGuiApplicationcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGuiApplication_customEvent(self: ptr cQGuiApplication, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGuiApplication_customEvent ".} =
  type Cb = proc(super: QGuiApplicationcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QGuiApplication(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QGuiApplication, signal: gen_qmetaobject.QMetaMethod): void =


  fQGuiApplication_virtualbase_connectNotify(self.h, signal.h)

type QGuiApplicationconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QGuiApplication, slot: proc(super: QGuiApplicationconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGuiApplicationconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGuiApplication_connectNotify(self: ptr cQGuiApplication, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGuiApplication_connectNotify ".} =
  type Cb = proc(super: QGuiApplicationconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QGuiApplication(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QGuiApplication, signal: gen_qmetaobject.QMetaMethod): void =


  fQGuiApplication_virtualbase_disconnectNotify(self.h, signal.h)

type QGuiApplicationdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QGuiApplication, slot: proc(super: QGuiApplicationdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGuiApplicationdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGuiApplication_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGuiApplication_disconnectNotify(self: ptr cQGuiApplication, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGuiApplication_disconnectNotify ".} =
  type Cb = proc(super: QGuiApplicationdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QGuiApplication(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QGuiApplication) =
  fcQGuiApplication_delete(self.h)
