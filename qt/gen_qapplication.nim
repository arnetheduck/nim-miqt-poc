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
{.compile("gen_qapplication.cpp", cflags).}


type QApplicationColorSpecEnum* = distinct cint
template NormalColor*(_: type QApplicationColorSpecEnum): untyped = 0
template CustomColor*(_: type QApplicationColorSpecEnum): untyped = 1
template ManyColor*(_: type QApplicationColorSpecEnum): untyped = 2


import gen_qapplication_types
export gen_qapplication_types

import
  gen_qcoreevent,
  gen_qdesktopwidget,
  gen_qfont,
  gen_qfontmetrics,
  gen_qguiapplication,
  gen_qicon,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpalette,
  gen_qpoint,
  gen_qsize,
  gen_qstyle,
  gen_qwidget,
  std/cmdline,
  std/os
export
  gen_qcoreevent,
  gen_qdesktopwidget,
  gen_qfont,
  gen_qfontmetrics,
  gen_qguiapplication,
  gen_qicon,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpalette,
  gen_qpoint,
  gen_qsize,
  gen_qstyle,
  gen_qwidget

type cQApplication*{.exportc: "QApplication", incompleteStruct.} = object

proc fcQApplication_new(argc: ptr cint, argv: cstringArray): ptr cQApplication {.importc: "QApplication_new".}
proc fcQApplication_new2(argc: ptr cint, argv: cstringArray, param3: cint): ptr cQApplication {.importc: "QApplication_new2".}
proc fcQApplication_metaObject(self: pointer, ): pointer {.importc: "QApplication_metaObject".}
proc fcQApplication_metacast(self: pointer, param1: cstring): pointer {.importc: "QApplication_metacast".}
proc fcQApplication_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QApplication_metacall".}
proc fcQApplication_tr(s: cstring): struct_miqt_string {.importc: "QApplication_tr".}
proc fcQApplication_trUtf8(s: cstring): struct_miqt_string {.importc: "QApplication_trUtf8".}
proc fcQApplication_style(): pointer {.importc: "QApplication_style".}
proc fcQApplication_setStyle(style: pointer): void {.importc: "QApplication_setStyle".}
proc fcQApplication_setStyleWithStyle(style: struct_miqt_string): pointer {.importc: "QApplication_setStyleWithStyle".}
proc fcQApplication_colorSpec(): cint {.importc: "QApplication_colorSpec".}
proc fcQApplication_setColorSpec(colorSpec: cint): void {.importc: "QApplication_setColorSpec".}
proc fcQApplication_palette(param1: pointer): pointer {.importc: "QApplication_palette".}
proc fcQApplication_paletteWithClassName(className: cstring): pointer {.importc: "QApplication_paletteWithClassName".}
proc fcQApplication_setPalette(param1: pointer): void {.importc: "QApplication_setPalette".}
proc fcQApplication_font(): pointer {.importc: "QApplication_font".}
proc fcQApplication_fontWithQWidget(param1: pointer): pointer {.importc: "QApplication_fontWithQWidget".}
proc fcQApplication_fontWithClassName(className: cstring): pointer {.importc: "QApplication_fontWithClassName".}
proc fcQApplication_setFont(param1: pointer): void {.importc: "QApplication_setFont".}
proc fcQApplication_fontMetrics(): pointer {.importc: "QApplication_fontMetrics".}
proc fcQApplication_setWindowIcon(icon: pointer): void {.importc: "QApplication_setWindowIcon".}
proc fcQApplication_windowIcon(): pointer {.importc: "QApplication_windowIcon".}
proc fcQApplication_allWidgets(): struct_miqt_array {.importc: "QApplication_allWidgets".}
proc fcQApplication_topLevelWidgets(): struct_miqt_array {.importc: "QApplication_topLevelWidgets".}
proc fcQApplication_desktop(): pointer {.importc: "QApplication_desktop".}
proc fcQApplication_activePopupWidget(): pointer {.importc: "QApplication_activePopupWidget".}
proc fcQApplication_activeModalWidget(): pointer {.importc: "QApplication_activeModalWidget".}
proc fcQApplication_focusWidget(): pointer {.importc: "QApplication_focusWidget".}
proc fcQApplication_activeWindow(): pointer {.importc: "QApplication_activeWindow".}
proc fcQApplication_setActiveWindow(act: pointer): void {.importc: "QApplication_setActiveWindow".}
proc fcQApplication_widgetAt(p: pointer): pointer {.importc: "QApplication_widgetAt".}
proc fcQApplication_widgetAt2(x: cint, y: cint): pointer {.importc: "QApplication_widgetAt2".}
proc fcQApplication_topLevelAt(p: pointer): pointer {.importc: "QApplication_topLevelAt".}
proc fcQApplication_topLevelAt2(x: cint, y: cint): pointer {.importc: "QApplication_topLevelAt2".}
proc fcQApplication_beep(): void {.importc: "QApplication_beep".}
proc fcQApplication_alert(widget: pointer): void {.importc: "QApplication_alert".}
proc fcQApplication_setCursorFlashTime(cursorFlashTime: cint): void {.importc: "QApplication_setCursorFlashTime".}
proc fcQApplication_cursorFlashTime(): cint {.importc: "QApplication_cursorFlashTime".}
proc fcQApplication_setDoubleClickInterval(doubleClickInterval: cint): void {.importc: "QApplication_setDoubleClickInterval".}
proc fcQApplication_doubleClickInterval(): cint {.importc: "QApplication_doubleClickInterval".}
proc fcQApplication_setKeyboardInputInterval(keyboardInputInterval: cint): void {.importc: "QApplication_setKeyboardInputInterval".}
proc fcQApplication_keyboardInputInterval(): cint {.importc: "QApplication_keyboardInputInterval".}
proc fcQApplication_setWheelScrollLines(wheelScrollLines: cint): void {.importc: "QApplication_setWheelScrollLines".}
proc fcQApplication_wheelScrollLines(): cint {.importc: "QApplication_wheelScrollLines".}
proc fcQApplication_setGlobalStrut(globalStrut: pointer): void {.importc: "QApplication_setGlobalStrut".}
proc fcQApplication_globalStrut(): pointer {.importc: "QApplication_globalStrut".}
proc fcQApplication_setStartDragTime(ms: cint): void {.importc: "QApplication_setStartDragTime".}
proc fcQApplication_startDragTime(): cint {.importc: "QApplication_startDragTime".}
proc fcQApplication_setStartDragDistance(l: cint): void {.importc: "QApplication_setStartDragDistance".}
proc fcQApplication_startDragDistance(): cint {.importc: "QApplication_startDragDistance".}
proc fcQApplication_isEffectEnabled(param1: cint): bool {.importc: "QApplication_isEffectEnabled".}
proc fcQApplication_setEffectEnabled(param1: cint): void {.importc: "QApplication_setEffectEnabled".}
proc fcQApplication_exec(): cint {.importc: "QApplication_exec".}
proc fcQApplication_notify(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QApplication_notify".}
proc fcQApplication_focusChanged(self: pointer, old: pointer, now: pointer): void {.importc: "QApplication_focusChanged".}
proc fQApplication_connect_focusChanged(self: pointer, slot: int) {.importc: "QApplication_connect_focusChanged".}
proc fcQApplication_styleSheet(self: pointer, ): struct_miqt_string {.importc: "QApplication_styleSheet".}
proc fcQApplication_setStyleSheet(self: pointer, sheet: struct_miqt_string): void {.importc: "QApplication_setStyleSheet".}
proc fcQApplication_setAutoSipEnabled(self: pointer, enabled: bool): void {.importc: "QApplication_setAutoSipEnabled".}
proc fcQApplication_autoSipEnabled(self: pointer, ): bool {.importc: "QApplication_autoSipEnabled".}
proc fcQApplication_closeAllWindows(): void {.importc: "QApplication_closeAllWindows".}
proc fcQApplication_aboutQt(): void {.importc: "QApplication_aboutQt".}
proc fcQApplication_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QApplication_tr2".}
proc fcQApplication_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QApplication_tr3".}
proc fcQApplication_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QApplication_trUtf82".}
proc fcQApplication_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QApplication_trUtf83".}
proc fcQApplication_setPalette2(param1: pointer, className: cstring): void {.importc: "QApplication_setPalette2".}
proc fcQApplication_setFont2(param1: pointer, className: cstring): void {.importc: "QApplication_setFont2".}
proc fcQApplication_alert2(widget: pointer, duration: cint): void {.importc: "QApplication_alert2".}
proc fcQApplication_setEffectEnabled2(param1: cint, enable: bool): void {.importc: "QApplication_setEffectEnabled2".}
proc fQApplication_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QApplication_virtualbase_metaObject".}
proc fcQApplication_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QApplication_override_virtual_metaObject".}
proc fQApplication_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QApplication_virtualbase_metacast".}
proc fcQApplication_override_virtual_metacast(self: pointer, slot: int) {.importc: "QApplication_override_virtual_metacast".}
proc fQApplication_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QApplication_virtualbase_metacall".}
proc fcQApplication_override_virtual_metacall(self: pointer, slot: int) {.importc: "QApplication_override_virtual_metacall".}
proc fQApplication_virtualbase_notify(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QApplication_virtualbase_notify".}
proc fcQApplication_override_virtual_notify(self: pointer, slot: int) {.importc: "QApplication_override_virtual_notify".}
proc fQApplication_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QApplication_virtualbase_event".}
proc fcQApplication_override_virtual_event(self: pointer, slot: int) {.importc: "QApplication_override_virtual_event".}
proc fQApplication_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QApplication_virtualbase_eventFilter".}
proc fcQApplication_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QApplication_override_virtual_eventFilter".}
proc fQApplication_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QApplication_virtualbase_timerEvent".}
proc fcQApplication_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QApplication_override_virtual_timerEvent".}
proc fQApplication_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QApplication_virtualbase_childEvent".}
proc fcQApplication_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QApplication_override_virtual_childEvent".}
proc fQApplication_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QApplication_virtualbase_customEvent".}
proc fcQApplication_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QApplication_override_virtual_customEvent".}
proc fQApplication_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QApplication_virtualbase_connectNotify".}
proc fcQApplication_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QApplication_override_virtual_connectNotify".}
proc fQApplication_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QApplication_virtualbase_disconnectNotify".}
proc fcQApplication_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QApplication_override_virtual_disconnectNotify".}
proc fcQApplication_staticMetaObject(): pointer {.importc: "QApplication_staticMetaObject".}
proc fcQApplication_delete(self: pointer) {.importc: "QApplication_delete".}


func init*(T: type gen_qapplication_types.QApplication, h: ptr cQApplication): gen_qapplication_types.QApplication =
  T(h: h)
proc create*(T: type gen_qapplication_types.QApplication, ): gen_qapplication_types.QApplication =

  # Convert []string to long-lived int& argc, char** argv, never call free()
  var args2 = @[getAppFilename()]
  args2.add commandLineParams()
  var argv: cStringArray = allocCstringArray(args2)
  var argc {.threadvar.}: cint
  argc = args2.len.cint
  gen_qapplication_types.QApplication.init(fcQApplication_new(addr argc, argv))
proc create*(T: type gen_qapplication_types.QApplication, param3: cint): gen_qapplication_types.QApplication =

  # Convert []string to long-lived int& argc, char** argv, never call free()
  var args2 = @[getAppFilename()]
  args2.add commandLineParams()
  var argv: cStringArray = allocCstringArray(args2)
  var argc {.threadvar.}: cint
  argc = args2.len.cint
  gen_qapplication_types.QApplication.init(fcQApplication_new2(addr argc, argv, param3))
proc metaObject*(self: gen_qapplication_types.QApplication, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQApplication_metaObject(self.h))

proc metacast*(self: gen_qapplication_types.QApplication, param1: cstring): pointer =

  fcQApplication_metacast(self.h, param1)

proc metacall*(self: gen_qapplication_types.QApplication, param1: cint, param2: cint, param3: pointer): cint =

  fcQApplication_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qapplication_types.QApplication, s: cstring): string =

  let v_ms = fcQApplication_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qapplication_types.QApplication, s: cstring): string =

  let v_ms = fcQApplication_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc style*(_: type gen_qapplication_types.QApplication, ): gen_qstyle.QStyle =

  gen_qstyle.QStyle(h: fcQApplication_style())

proc setStyle*(_: type gen_qapplication_types.QApplication, style: gen_qstyle.QStyle): void =

  fcQApplication_setStyle(style.h)

proc setStyleWithStyle*(_: type gen_qapplication_types.QApplication, style: string): gen_qstyle.QStyle =

  gen_qstyle.QStyle(h: fcQApplication_setStyleWithStyle(struct_miqt_string(data: style, len: csize_t(len(style)))))

proc colorSpec*(_: type gen_qapplication_types.QApplication, ): cint =

  fcQApplication_colorSpec()

proc setColorSpec*(_: type gen_qapplication_types.QApplication, colorSpec: cint): void =

  fcQApplication_setColorSpec(colorSpec)

proc palette*(_: type gen_qapplication_types.QApplication, param1: gen_qwidget.QWidget): gen_qpalette.QPalette =

  gen_qpalette.QPalette(h: fcQApplication_palette(param1.h))

proc paletteWithClassName*(_: type gen_qapplication_types.QApplication, className: cstring): gen_qpalette.QPalette =

  gen_qpalette.QPalette(h: fcQApplication_paletteWithClassName(className))

proc setPalette*(_: type gen_qapplication_types.QApplication, param1: gen_qpalette.QPalette): void =

  fcQApplication_setPalette(param1.h)

proc font*(_: type gen_qapplication_types.QApplication, ): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQApplication_font())

proc fontWithQWidget*(_: type gen_qapplication_types.QApplication, param1: gen_qwidget.QWidget): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQApplication_fontWithQWidget(param1.h))

proc fontWithClassName*(_: type gen_qapplication_types.QApplication, className: cstring): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQApplication_fontWithClassName(className))

proc setFont*(_: type gen_qapplication_types.QApplication, param1: gen_qfont.QFont): void =

  fcQApplication_setFont(param1.h)

proc fontMetrics*(_: type gen_qapplication_types.QApplication, ): gen_qfontmetrics.QFontMetrics =

  gen_qfontmetrics.QFontMetrics(h: fcQApplication_fontMetrics())

proc setWindowIcon*(_: type gen_qapplication_types.QApplication, icon: gen_qicon.QIcon): void =

  fcQApplication_setWindowIcon(icon.h)

proc windowIcon*(_: type gen_qapplication_types.QApplication, ): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQApplication_windowIcon())

proc allWidgets*(_: type gen_qapplication_types.QApplication, ): seq[gen_qwidget.QWidget] =

  var v_ma = fcQApplication_allWidgets()
  var vx_ret = newSeq[gen_qwidget.QWidget](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwidget.QWidget(h: v_outCast[i])
  vx_ret

proc topLevelWidgets*(_: type gen_qapplication_types.QApplication, ): seq[gen_qwidget.QWidget] =

  var v_ma = fcQApplication_topLevelWidgets()
  var vx_ret = newSeq[gen_qwidget.QWidget](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwidget.QWidget(h: v_outCast[i])
  vx_ret

proc desktop*(_: type gen_qapplication_types.QApplication, ): gen_qdesktopwidget.QDesktopWidget =

  gen_qdesktopwidget.QDesktopWidget(h: fcQApplication_desktop())

proc activePopupWidget*(_: type gen_qapplication_types.QApplication, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQApplication_activePopupWidget())

proc activeModalWidget*(_: type gen_qapplication_types.QApplication, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQApplication_activeModalWidget())

proc focusWidget*(_: type gen_qapplication_types.QApplication, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQApplication_focusWidget())

proc activeWindow*(_: type gen_qapplication_types.QApplication, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQApplication_activeWindow())

proc setActiveWindow*(_: type gen_qapplication_types.QApplication, act: gen_qwidget.QWidget): void =

  fcQApplication_setActiveWindow(act.h)

proc widgetAt*(_: type gen_qapplication_types.QApplication, p: gen_qpoint.QPoint): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQApplication_widgetAt(p.h))

proc widgetAt2*(_: type gen_qapplication_types.QApplication, x: cint, y: cint): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQApplication_widgetAt2(x, y))

proc topLevelAt*(_: type gen_qapplication_types.QApplication, p: gen_qpoint.QPoint): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQApplication_topLevelAt(p.h))

proc topLevelAt2*(_: type gen_qapplication_types.QApplication, x: cint, y: cint): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQApplication_topLevelAt2(x, y))

proc beep*(_: type gen_qapplication_types.QApplication, ): void =

  fcQApplication_beep()

proc alert*(_: type gen_qapplication_types.QApplication, widget: gen_qwidget.QWidget): void =

  fcQApplication_alert(widget.h)

proc setCursorFlashTime*(_: type gen_qapplication_types.QApplication, cursorFlashTime: cint): void =

  fcQApplication_setCursorFlashTime(cursorFlashTime)

proc cursorFlashTime*(_: type gen_qapplication_types.QApplication, ): cint =

  fcQApplication_cursorFlashTime()

proc setDoubleClickInterval*(_: type gen_qapplication_types.QApplication, doubleClickInterval: cint): void =

  fcQApplication_setDoubleClickInterval(doubleClickInterval)

proc doubleClickInterval*(_: type gen_qapplication_types.QApplication, ): cint =

  fcQApplication_doubleClickInterval()

proc setKeyboardInputInterval*(_: type gen_qapplication_types.QApplication, keyboardInputInterval: cint): void =

  fcQApplication_setKeyboardInputInterval(keyboardInputInterval)

proc keyboardInputInterval*(_: type gen_qapplication_types.QApplication, ): cint =

  fcQApplication_keyboardInputInterval()

proc setWheelScrollLines*(_: type gen_qapplication_types.QApplication, wheelScrollLines: cint): void =

  fcQApplication_setWheelScrollLines(wheelScrollLines)

proc wheelScrollLines*(_: type gen_qapplication_types.QApplication, ): cint =

  fcQApplication_wheelScrollLines()

proc setGlobalStrut*(_: type gen_qapplication_types.QApplication, globalStrut: gen_qsize.QSize): void =

  fcQApplication_setGlobalStrut(globalStrut.h)

proc globalStrut*(_: type gen_qapplication_types.QApplication, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQApplication_globalStrut())

proc setStartDragTime*(_: type gen_qapplication_types.QApplication, ms: cint): void =

  fcQApplication_setStartDragTime(ms)

proc startDragTime*(_: type gen_qapplication_types.QApplication, ): cint =

  fcQApplication_startDragTime()

proc setStartDragDistance*(_: type gen_qapplication_types.QApplication, l: cint): void =

  fcQApplication_setStartDragDistance(l)

proc startDragDistance*(_: type gen_qapplication_types.QApplication, ): cint =

  fcQApplication_startDragDistance()

proc isEffectEnabled*(_: type gen_qapplication_types.QApplication, param1: cint): bool =

  fcQApplication_isEffectEnabled(cint(param1))

proc setEffectEnabled*(_: type gen_qapplication_types.QApplication, param1: cint): void =

  fcQApplication_setEffectEnabled(cint(param1))

proc exec*(_: type gen_qapplication_types.QApplication, ): cint =

  fcQApplication_exec()

proc notify*(self: gen_qapplication_types.QApplication, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =

  fcQApplication_notify(self.h, param1.h, param2.h)

proc focusChanged*(self: gen_qapplication_types.QApplication, old: gen_qwidget.QWidget, now: gen_qwidget.QWidget): void =

  fcQApplication_focusChanged(self.h, old.h, now.h)

proc miqt_exec_callback_QApplication_focusChanged(slot: int, old: pointer, now: pointer) {.exportc.} =
  type Cb = proc(old: gen_qwidget.QWidget, now: gen_qwidget.QWidget)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qwidget.QWidget(h: old)

  let slotval2 = gen_qwidget.QWidget(h: now)


  nimfunc[](slotval1, slotval2)

proc onfocusChanged*(self: gen_qapplication_types.QApplication, slot: proc(old: gen_qwidget.QWidget, now: gen_qwidget.QWidget)) =
  type Cb = proc(old: gen_qwidget.QWidget, now: gen_qwidget.QWidget)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQApplication_connect_focusChanged(self.h, cast[int](addr tmp[]))
proc styleSheet*(self: gen_qapplication_types.QApplication, ): string =

  let v_ms = fcQApplication_styleSheet(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setStyleSheet*(self: gen_qapplication_types.QApplication, sheet: string): void =

  fcQApplication_setStyleSheet(self.h, struct_miqt_string(data: sheet, len: csize_t(len(sheet))))

proc setAutoSipEnabled*(self: gen_qapplication_types.QApplication, enabled: bool): void =

  fcQApplication_setAutoSipEnabled(self.h, enabled)

proc autoSipEnabled*(self: gen_qapplication_types.QApplication, ): bool =

  fcQApplication_autoSipEnabled(self.h)

proc closeAllWindows*(_: type gen_qapplication_types.QApplication, ): void =

  fcQApplication_closeAllWindows()

proc aboutQt*(_: type gen_qapplication_types.QApplication, ): void =

  fcQApplication_aboutQt()

proc tr2*(_: type gen_qapplication_types.QApplication, s: cstring, c: cstring): string =

  let v_ms = fcQApplication_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qapplication_types.QApplication, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQApplication_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type gen_qapplication_types.QApplication, s: cstring, c: cstring): string =

  let v_ms = fcQApplication_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type gen_qapplication_types.QApplication, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQApplication_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPalette2*(_: type gen_qapplication_types.QApplication, param1: gen_qpalette.QPalette, className: cstring): void =

  fcQApplication_setPalette2(param1.h, className)

proc setFont2*(_: type gen_qapplication_types.QApplication, param1: gen_qfont.QFont, className: cstring): void =

  fcQApplication_setFont2(param1.h, className)

proc alert2*(_: type gen_qapplication_types.QApplication, widget: gen_qwidget.QWidget, duration: cint): void =

  fcQApplication_alert2(widget.h, duration)

proc setEffectEnabled2*(_: type gen_qapplication_types.QApplication, param1: cint, enable: bool): void =

  fcQApplication_setEffectEnabled2(cint(param1), enable)

proc QApplicationmetaObject*(self: gen_qapplication_types.QApplication, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQApplication_virtualbase_metaObject(self.h))

type QApplicationmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qapplication_types.QApplication, slot: QApplicationmetaObjectProc) =
  # TODO check subclass
  var tmp = new QApplicationmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQApplication_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QApplication_metaObject(self: ptr cQApplication, slot: int): pointer {.exportc: "miqt_exec_callback_QApplication_metaObject ".} =
  var nimfunc = cast[ptr QApplicationmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QApplicationmetacast*(self: gen_qapplication_types.QApplication, param1: cstring): pointer =

  fQApplication_virtualbase_metacast(self.h, param1)

type QApplicationmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qapplication_types.QApplication, slot: QApplicationmetacastProc) =
  # TODO check subclass
  var tmp = new QApplicationmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQApplication_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QApplication_metacast(self: ptr cQApplication, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QApplication_metacast ".} =
  var nimfunc = cast[ptr QApplicationmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QApplicationmetacall*(self: gen_qapplication_types.QApplication, param1: cint, param2: cint, param3: pointer): cint =

  fQApplication_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QApplicationmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qapplication_types.QApplication, slot: QApplicationmetacallProc) =
  # TODO check subclass
  var tmp = new QApplicationmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQApplication_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QApplication_metacall(self: ptr cQApplication, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QApplication_metacall ".} =
  var nimfunc = cast[ptr QApplicationmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QApplicationnotify*(self: gen_qapplication_types.QApplication, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =

  fQApplication_virtualbase_notify(self.h, param1.h, param2.h)

type QApplicationnotifyProc* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc onnotify*(self: gen_qapplication_types.QApplication, slot: QApplicationnotifyProc) =
  # TODO check subclass
  var tmp = new QApplicationnotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQApplication_override_virtual_notify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QApplication_notify(self: ptr cQApplication, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QApplication_notify ".} =
  var nimfunc = cast[ptr QApplicationnotifyProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QApplicationevent*(self: gen_qapplication_types.QApplication, param1: gen_qcoreevent.QEvent): bool =

  fQApplication_virtualbase_event(self.h, param1.h)

type QApplicationeventProc* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qapplication_types.QApplication, slot: QApplicationeventProc) =
  # TODO check subclass
  var tmp = new QApplicationeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQApplication_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QApplication_event(self: ptr cQApplication, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QApplication_event ".} =
  var nimfunc = cast[ptr QApplicationeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QApplicationeventFilter*(self: gen_qapplication_types.QApplication, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQApplication_virtualbase_eventFilter(self.h, watched.h, event.h)

type QApplicationeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qapplication_types.QApplication, slot: QApplicationeventFilterProc) =
  # TODO check subclass
  var tmp = new QApplicationeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQApplication_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QApplication_eventFilter(self: ptr cQApplication, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QApplication_eventFilter ".} =
  var nimfunc = cast[ptr QApplicationeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QApplicationtimerEvent*(self: gen_qapplication_types.QApplication, event: gen_qcoreevent.QTimerEvent): void =

  fQApplication_virtualbase_timerEvent(self.h, event.h)

type QApplicationtimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qapplication_types.QApplication, slot: QApplicationtimerEventProc) =
  # TODO check subclass
  var tmp = new QApplicationtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQApplication_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QApplication_timerEvent(self: ptr cQApplication, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QApplication_timerEvent ".} =
  var nimfunc = cast[ptr QApplicationtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QApplicationchildEvent*(self: gen_qapplication_types.QApplication, event: gen_qcoreevent.QChildEvent): void =

  fQApplication_virtualbase_childEvent(self.h, event.h)

type QApplicationchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qapplication_types.QApplication, slot: QApplicationchildEventProc) =
  # TODO check subclass
  var tmp = new QApplicationchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQApplication_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QApplication_childEvent(self: ptr cQApplication, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QApplication_childEvent ".} =
  var nimfunc = cast[ptr QApplicationchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QApplicationcustomEvent*(self: gen_qapplication_types.QApplication, event: gen_qcoreevent.QEvent): void =

  fQApplication_virtualbase_customEvent(self.h, event.h)

type QApplicationcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qapplication_types.QApplication, slot: QApplicationcustomEventProc) =
  # TODO check subclass
  var tmp = new QApplicationcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQApplication_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QApplication_customEvent(self: ptr cQApplication, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QApplication_customEvent ".} =
  var nimfunc = cast[ptr QApplicationcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QApplicationconnectNotify*(self: gen_qapplication_types.QApplication, signal: gen_qmetaobject.QMetaMethod): void =

  fQApplication_virtualbase_connectNotify(self.h, signal.h)

type QApplicationconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qapplication_types.QApplication, slot: QApplicationconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QApplicationconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQApplication_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QApplication_connectNotify(self: ptr cQApplication, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QApplication_connectNotify ".} =
  var nimfunc = cast[ptr QApplicationconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QApplicationdisconnectNotify*(self: gen_qapplication_types.QApplication, signal: gen_qmetaobject.QMetaMethod): void =

  fQApplication_virtualbase_disconnectNotify(self.h, signal.h)

type QApplicationdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qapplication_types.QApplication, slot: QApplicationdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QApplicationdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQApplication_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QApplication_disconnectNotify(self: ptr cQApplication, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QApplication_disconnectNotify ".} =
  var nimfunc = cast[ptr QApplicationdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qapplication_types.QApplication): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQApplication_staticMetaObject())
proc delete*(self: gen_qapplication_types.QApplication) =
  fcQApplication_delete(self.h)
