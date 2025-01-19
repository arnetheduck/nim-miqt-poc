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
{.compile("gen_qaction.cpp", cflags).}


type QActionMenuRole* = cint
const
  QActionNoRole* = 0
  QActionTextHeuristicRole* = 1
  QActionApplicationSpecificRole* = 2
  QActionAboutQtRole* = 3
  QActionAboutRole* = 4
  QActionPreferencesRole* = 5
  QActionQuitRole* = 6



type QActionPriority* = cint
const
  QActionLowPriority* = 0
  QActionNormalPriority* = 128
  QActionHighPriority* = 256



type QActionActionEvent* = cint
const
  QActionTrigger* = 0
  QActionHover* = 1



import gen_qaction_types
export gen_qaction_types

import
  gen_qactiongroup,
  gen_qcoreevent,
  gen_qfont,
  gen_qicon,
  gen_qkeysequence,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvariant
export
  gen_qactiongroup,
  gen_qcoreevent,
  gen_qfont,
  gen_qicon,
  gen_qkeysequence,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvariant

type cQAction*{.exportc: "QAction", incompleteStruct.} = object

proc fcQAction_new(): ptr cQAction {.importc: "QAction_new".}
proc fcQAction_new2(text: struct_miqt_string): ptr cQAction {.importc: "QAction_new2".}
proc fcQAction_new3(icon: pointer, text: struct_miqt_string): ptr cQAction {.importc: "QAction_new3".}
proc fcQAction_new4(parent: pointer): ptr cQAction {.importc: "QAction_new4".}
proc fcQAction_new5(text: struct_miqt_string, parent: pointer): ptr cQAction {.importc: "QAction_new5".}
proc fcQAction_new6(icon: pointer, text: struct_miqt_string, parent: pointer): ptr cQAction {.importc: "QAction_new6".}
proc fcQAction_metaObject(self: pointer, ): pointer {.importc: "QAction_metaObject".}
proc fcQAction_metacast(self: pointer, param1: cstring): pointer {.importc: "QAction_metacast".}
proc fcQAction_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAction_metacall".}
proc fcQAction_tr(s: cstring): struct_miqt_string {.importc: "QAction_tr".}
proc fcQAction_associatedObjects(self: pointer, ): struct_miqt_array {.importc: "QAction_associatedObjects".}
proc fcQAction_setActionGroup(self: pointer, group: pointer): void {.importc: "QAction_setActionGroup".}
proc fcQAction_actionGroup(self: pointer, ): pointer {.importc: "QAction_actionGroup".}
proc fcQAction_setIcon(self: pointer, icon: pointer): void {.importc: "QAction_setIcon".}
proc fcQAction_icon(self: pointer, ): pointer {.importc: "QAction_icon".}
proc fcQAction_setText(self: pointer, text: struct_miqt_string): void {.importc: "QAction_setText".}
proc fcQAction_text(self: pointer, ): struct_miqt_string {.importc: "QAction_text".}
proc fcQAction_setIconText(self: pointer, text: struct_miqt_string): void {.importc: "QAction_setIconText".}
proc fcQAction_iconText(self: pointer, ): struct_miqt_string {.importc: "QAction_iconText".}
proc fcQAction_setToolTip(self: pointer, tip: struct_miqt_string): void {.importc: "QAction_setToolTip".}
proc fcQAction_toolTip(self: pointer, ): struct_miqt_string {.importc: "QAction_toolTip".}
proc fcQAction_setStatusTip(self: pointer, statusTip: struct_miqt_string): void {.importc: "QAction_setStatusTip".}
proc fcQAction_statusTip(self: pointer, ): struct_miqt_string {.importc: "QAction_statusTip".}
proc fcQAction_setWhatsThis(self: pointer, what: struct_miqt_string): void {.importc: "QAction_setWhatsThis".}
proc fcQAction_whatsThis(self: pointer, ): struct_miqt_string {.importc: "QAction_whatsThis".}
proc fcQAction_setPriority(self: pointer, priority: cint): void {.importc: "QAction_setPriority".}
proc fcQAction_priority(self: pointer, ): cint {.importc: "QAction_priority".}
proc fcQAction_setSeparator(self: pointer, b: bool): void {.importc: "QAction_setSeparator".}
proc fcQAction_isSeparator(self: pointer, ): bool {.importc: "QAction_isSeparator".}
proc fcQAction_setShortcut(self: pointer, shortcut: pointer): void {.importc: "QAction_setShortcut".}
proc fcQAction_shortcut(self: pointer, ): pointer {.importc: "QAction_shortcut".}
proc fcQAction_setShortcuts(self: pointer, shortcuts: struct_miqt_array): void {.importc: "QAction_setShortcuts".}
proc fcQAction_setShortcutsWithShortcuts(self: pointer, shortcuts: cint): void {.importc: "QAction_setShortcutsWithShortcuts".}
proc fcQAction_shortcuts(self: pointer, ): struct_miqt_array {.importc: "QAction_shortcuts".}
proc fcQAction_setShortcutContext(self: pointer, context: cint): void {.importc: "QAction_setShortcutContext".}
proc fcQAction_shortcutContext(self: pointer, ): cint {.importc: "QAction_shortcutContext".}
proc fcQAction_setAutoRepeat(self: pointer, autoRepeat: bool): void {.importc: "QAction_setAutoRepeat".}
proc fcQAction_autoRepeat(self: pointer, ): bool {.importc: "QAction_autoRepeat".}
proc fcQAction_setFont(self: pointer, font: pointer): void {.importc: "QAction_setFont".}
proc fcQAction_font(self: pointer, ): pointer {.importc: "QAction_font".}
proc fcQAction_setCheckable(self: pointer, checkable: bool): void {.importc: "QAction_setCheckable".}
proc fcQAction_isCheckable(self: pointer, ): bool {.importc: "QAction_isCheckable".}
proc fcQAction_data(self: pointer, ): pointer {.importc: "QAction_data".}
proc fcQAction_setData(self: pointer, varVal: pointer): void {.importc: "QAction_setData".}
proc fcQAction_isChecked(self: pointer, ): bool {.importc: "QAction_isChecked".}
proc fcQAction_isEnabled(self: pointer, ): bool {.importc: "QAction_isEnabled".}
proc fcQAction_isVisible(self: pointer, ): bool {.importc: "QAction_isVisible".}
proc fcQAction_activate(self: pointer, event: cint): void {.importc: "QAction_activate".}
proc fcQAction_setMenuRole(self: pointer, menuRole: cint): void {.importc: "QAction_setMenuRole".}
proc fcQAction_menuRole(self: pointer, ): cint {.importc: "QAction_menuRole".}
proc fcQAction_setIconVisibleInMenu(self: pointer, visible: bool): void {.importc: "QAction_setIconVisibleInMenu".}
proc fcQAction_isIconVisibleInMenu(self: pointer, ): bool {.importc: "QAction_isIconVisibleInMenu".}
proc fcQAction_setShortcutVisibleInContextMenu(self: pointer, show: bool): void {.importc: "QAction_setShortcutVisibleInContextMenu".}
proc fcQAction_isShortcutVisibleInContextMenu(self: pointer, ): bool {.importc: "QAction_isShortcutVisibleInContextMenu".}
proc fcQAction_showStatusText(self: pointer, ): bool {.importc: "QAction_showStatusText".}
proc fcQAction_trigger(self: pointer, ): void {.importc: "QAction_trigger".}
proc fcQAction_hover(self: pointer, ): void {.importc: "QAction_hover".}
proc fcQAction_setChecked(self: pointer, checked: bool): void {.importc: "QAction_setChecked".}
proc fcQAction_toggle(self: pointer, ): void {.importc: "QAction_toggle".}
proc fcQAction_setEnabled(self: pointer, enabled: bool): void {.importc: "QAction_setEnabled".}
proc fcQAction_resetEnabled(self: pointer, ): void {.importc: "QAction_resetEnabled".}
proc fcQAction_setDisabled(self: pointer, b: bool): void {.importc: "QAction_setDisabled".}
proc fcQAction_setVisible(self: pointer, visible: bool): void {.importc: "QAction_setVisible".}
proc fcQAction_changed(self: pointer, ): void {.importc: "QAction_changed".}
proc fQAction_connect_changed(self: pointer, slot: int) {.importc: "QAction_connect_changed".}
proc fcQAction_enabledChanged(self: pointer, enabled: bool): void {.importc: "QAction_enabledChanged".}
proc fQAction_connect_enabledChanged(self: pointer, slot: int) {.importc: "QAction_connect_enabledChanged".}
proc fcQAction_checkableChanged(self: pointer, checkable: bool): void {.importc: "QAction_checkableChanged".}
proc fQAction_connect_checkableChanged(self: pointer, slot: int) {.importc: "QAction_connect_checkableChanged".}
proc fcQAction_visibleChanged(self: pointer, ): void {.importc: "QAction_visibleChanged".}
proc fQAction_connect_visibleChanged(self: pointer, slot: int) {.importc: "QAction_connect_visibleChanged".}
proc fcQAction_triggered(self: pointer, ): void {.importc: "QAction_triggered".}
proc fQAction_connect_triggered(self: pointer, slot: int) {.importc: "QAction_connect_triggered".}
proc fcQAction_hovered(self: pointer, ): void {.importc: "QAction_hovered".}
proc fQAction_connect_hovered(self: pointer, slot: int) {.importc: "QAction_connect_hovered".}
proc fcQAction_toggled(self: pointer, param1: bool): void {.importc: "QAction_toggled".}
proc fQAction_connect_toggled(self: pointer, slot: int) {.importc: "QAction_connect_toggled".}
proc fcQAction_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAction_tr2".}
proc fcQAction_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAction_tr3".}
proc fcQAction_showStatusText1(self: pointer, objectVal: pointer): bool {.importc: "QAction_showStatusText1".}
proc fcQAction_triggered1(self: pointer, checked: bool): void {.importc: "QAction_triggered1".}
proc fQAction_connect_triggered1(self: pointer, slot: int) {.importc: "QAction_connect_triggered1".}
proc fQAction_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAction_virtualbase_metacall".}
proc fcQAction_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAction_override_virtual_metacall".}
proc fQAction_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QAction_virtualbase_event".}
proc fcQAction_override_virtual_event(self: pointer, slot: int) {.importc: "QAction_override_virtual_event".}
proc fQAction_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAction_virtualbase_eventFilter".}
proc fcQAction_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAction_override_virtual_eventFilter".}
proc fQAction_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAction_virtualbase_timerEvent".}
proc fcQAction_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAction_override_virtual_timerEvent".}
proc fQAction_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAction_virtualbase_childEvent".}
proc fcQAction_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAction_override_virtual_childEvent".}
proc fQAction_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAction_virtualbase_customEvent".}
proc fcQAction_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAction_override_virtual_customEvent".}
proc fQAction_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAction_virtualbase_connectNotify".}
proc fcQAction_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAction_override_virtual_connectNotify".}
proc fQAction_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAction_virtualbase_disconnectNotify".}
proc fcQAction_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAction_override_virtual_disconnectNotify".}
proc fcQAction_staticMetaObject(): pointer {.importc: "QAction_staticMetaObject".}
proc fcQAction_delete(self: pointer) {.importc: "QAction_delete".}


func init*(T: type QAction, h: ptr cQAction): QAction =
  T(h: h)
proc create*(T: type QAction, ): QAction =

  QAction.init(fcQAction_new())
proc create*(T: type QAction, text: string): QAction =

  QAction.init(fcQAction_new2(struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create*(T: type QAction, icon: gen_qicon.QIcon, text: string): QAction =

  QAction.init(fcQAction_new3(icon.h, struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create*(T: type QAction, parent: gen_qobject.QObject): QAction =

  QAction.init(fcQAction_new4(parent.h))
proc create*(T: type QAction, text: string, parent: gen_qobject.QObject): QAction =

  QAction.init(fcQAction_new5(struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))
proc create*(T: type QAction, icon: gen_qicon.QIcon, text: string, parent: gen_qobject.QObject): QAction =

  QAction.init(fcQAction_new6(icon.h, struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))
proc metaObject*(self: QAction, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAction_metaObject(self.h))

proc metacast*(self: QAction, param1: cstring): pointer =

  fcQAction_metacast(self.h, param1)

proc metacall*(self: QAction, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAction_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAction, s: cstring): string =

  let v_ms = fcQAction_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc associatedObjects*(self: QAction, ): seq[gen_qobject.QObject] =

  var v_ma = fcQAction_associatedObjects(self.h)
  var vx_ret = newSeq[gen_qobject.QObject](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qobject.QObject(h: v_outCast[i])
  vx_ret

proc setActionGroup*(self: QAction, group: gen_qactiongroup.QActionGroup): void =

  fcQAction_setActionGroup(self.h, group.h)

proc actionGroup*(self: QAction, ): gen_qactiongroup.QActionGroup =

  gen_qactiongroup.QActionGroup(h: fcQAction_actionGroup(self.h))

proc setIcon*(self: QAction, icon: gen_qicon.QIcon): void =

  fcQAction_setIcon(self.h, icon.h)

proc icon*(self: QAction, ): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQAction_icon(self.h))

proc setText*(self: QAction, text: string): void =

  fcQAction_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc text*(self: QAction, ): string =

  let v_ms = fcQAction_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setIconText*(self: QAction, text: string): void =

  fcQAction_setIconText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc iconText*(self: QAction, ): string =

  let v_ms = fcQAction_iconText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setToolTip*(self: QAction, tip: string): void =

  fcQAction_setToolTip(self.h, struct_miqt_string(data: tip, len: csize_t(len(tip))))

proc toolTip*(self: QAction, ): string =

  let v_ms = fcQAction_toolTip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setStatusTip*(self: QAction, statusTip: string): void =

  fcQAction_setStatusTip(self.h, struct_miqt_string(data: statusTip, len: csize_t(len(statusTip))))

proc statusTip*(self: QAction, ): string =

  let v_ms = fcQAction_statusTip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWhatsThis*(self: QAction, what: string): void =

  fcQAction_setWhatsThis(self.h, struct_miqt_string(data: what, len: csize_t(len(what))))

proc whatsThis*(self: QAction, ): string =

  let v_ms = fcQAction_whatsThis(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPriority*(self: QAction, priority: QActionPriority): void =

  fcQAction_setPriority(self.h, cint(priority))

proc priority*(self: QAction, ): QActionPriority =

  QActionPriority(fcQAction_priority(self.h))

proc setSeparator*(self: QAction, b: bool): void =

  fcQAction_setSeparator(self.h, b)

proc isSeparator*(self: QAction, ): bool =

  fcQAction_isSeparator(self.h)

proc setShortcut*(self: QAction, shortcut: gen_qkeysequence.QKeySequence): void =

  fcQAction_setShortcut(self.h, shortcut.h)

proc shortcut*(self: QAction, ): gen_qkeysequence.QKeySequence =

  gen_qkeysequence.QKeySequence(h: fcQAction_shortcut(self.h))

proc setShortcuts*(self: QAction, shortcuts: seq[gen_qkeysequence.QKeySequence]): void =

  var shortcuts_CArray = newSeq[pointer](len(shortcuts))
  for i in 0..<len(shortcuts):
    shortcuts_CArray[i] = shortcuts[i].h

  fcQAction_setShortcuts(self.h, struct_miqt_array(len: csize_t(len(shortcuts)), data: if len(shortcuts) == 0: nil else: addr(shortcuts_CArray[0])))

proc setShortcutsWithShortcuts*(self: QAction, shortcuts: gen_qkeysequence.QKeySequenceStandardKey): void =

  fcQAction_setShortcutsWithShortcuts(self.h, cint(shortcuts))

proc shortcuts*(self: QAction, ): seq[gen_qkeysequence.QKeySequence] =

  var v_ma = fcQAction_shortcuts(self.h)
  var vx_ret = newSeq[gen_qkeysequence.QKeySequence](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qkeysequence.QKeySequence(h: v_outCast[i])
  vx_ret

proc setShortcutContext*(self: QAction, context: gen_qnamespace.ShortcutContext): void =

  fcQAction_setShortcutContext(self.h, cint(context))

proc shortcutContext*(self: QAction, ): gen_qnamespace.ShortcutContext =

  gen_qnamespace.ShortcutContext(fcQAction_shortcutContext(self.h))

proc setAutoRepeat*(self: QAction, autoRepeat: bool): void =

  fcQAction_setAutoRepeat(self.h, autoRepeat)

proc autoRepeat*(self: QAction, ): bool =

  fcQAction_autoRepeat(self.h)

proc setFont*(self: QAction, font: gen_qfont.QFont): void =

  fcQAction_setFont(self.h, font.h)

proc font*(self: QAction, ): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQAction_font(self.h))

proc setCheckable*(self: QAction, checkable: bool): void =

  fcQAction_setCheckable(self.h, checkable)

proc isCheckable*(self: QAction, ): bool =

  fcQAction_isCheckable(self.h)

proc data*(self: QAction, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQAction_data(self.h))

proc setData*(self: QAction, varVal: gen_qvariant.QVariant): void =

  fcQAction_setData(self.h, varVal.h)

proc isChecked*(self: QAction, ): bool =

  fcQAction_isChecked(self.h)

proc isEnabled*(self: QAction, ): bool =

  fcQAction_isEnabled(self.h)

proc isVisible*(self: QAction, ): bool =

  fcQAction_isVisible(self.h)

proc activate*(self: QAction, event: QActionActionEvent): void =

  fcQAction_activate(self.h, cint(event))

proc setMenuRole*(self: QAction, menuRole: QActionMenuRole): void =

  fcQAction_setMenuRole(self.h, cint(menuRole))

proc menuRole*(self: QAction, ): QActionMenuRole =

  QActionMenuRole(fcQAction_menuRole(self.h))

proc setIconVisibleInMenu*(self: QAction, visible: bool): void =

  fcQAction_setIconVisibleInMenu(self.h, visible)

proc isIconVisibleInMenu*(self: QAction, ): bool =

  fcQAction_isIconVisibleInMenu(self.h)

proc setShortcutVisibleInContextMenu*(self: QAction, show: bool): void =

  fcQAction_setShortcutVisibleInContextMenu(self.h, show)

proc isShortcutVisibleInContextMenu*(self: QAction, ): bool =

  fcQAction_isShortcutVisibleInContextMenu(self.h)

proc showStatusText*(self: QAction, ): bool =

  fcQAction_showStatusText(self.h)

proc trigger*(self: QAction, ): void =

  fcQAction_trigger(self.h)

proc hover*(self: QAction, ): void =

  fcQAction_hover(self.h)

proc setChecked*(self: QAction, checked: bool): void =

  fcQAction_setChecked(self.h, checked)

proc toggle*(self: QAction, ): void =

  fcQAction_toggle(self.h)

proc setEnabled*(self: QAction, enabled: bool): void =

  fcQAction_setEnabled(self.h, enabled)

proc resetEnabled*(self: QAction, ): void =

  fcQAction_resetEnabled(self.h)

proc setDisabled*(self: QAction, b: bool): void =

  fcQAction_setDisabled(self.h, b)

proc setVisible*(self: QAction, visible: bool): void =

  fcQAction_setVisible(self.h, visible)

proc changed*(self: QAction, ): void =

  fcQAction_changed(self.h)

proc miqt_exec_callback_QAction_changed(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onchanged*(self: QAction, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAction_connect_changed(self.h, cast[int](addr tmp[]))
proc enabledChanged*(self: QAction, enabled: bool): void =

  fcQAction_enabledChanged(self.h, enabled)

proc miqt_exec_callback_QAction_enabledChanged(slot: int, enabled: bool) {.exportc.} =
  type Cb = proc(enabled: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = enabled


  nimfunc[](slotval1)

proc onenabledChanged*(self: QAction, slot: proc(enabled: bool)) =
  type Cb = proc(enabled: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAction_connect_enabledChanged(self.h, cast[int](addr tmp[]))
proc checkableChanged*(self: QAction, checkable: bool): void =

  fcQAction_checkableChanged(self.h, checkable)

proc miqt_exec_callback_QAction_checkableChanged(slot: int, checkable: bool) {.exportc.} =
  type Cb = proc(checkable: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = checkable


  nimfunc[](slotval1)

proc oncheckableChanged*(self: QAction, slot: proc(checkable: bool)) =
  type Cb = proc(checkable: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAction_connect_checkableChanged(self.h, cast[int](addr tmp[]))
proc visibleChanged*(self: QAction, ): void =

  fcQAction_visibleChanged(self.h)

proc miqt_exec_callback_QAction_visibleChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onvisibleChanged*(self: QAction, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAction_connect_visibleChanged(self.h, cast[int](addr tmp[]))
proc triggered*(self: QAction, ): void =

  fcQAction_triggered(self.h)

proc miqt_exec_callback_QAction_triggered(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc ontriggered*(self: QAction, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAction_connect_triggered(self.h, cast[int](addr tmp[]))
proc hovered*(self: QAction, ): void =

  fcQAction_hovered(self.h)

proc miqt_exec_callback_QAction_hovered(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onhovered*(self: QAction, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAction_connect_hovered(self.h, cast[int](addr tmp[]))
proc toggled*(self: QAction, param1: bool): void =

  fcQAction_toggled(self.h, param1)

proc miqt_exec_callback_QAction_toggled(slot: int, param1: bool) {.exportc.} =
  type Cb = proc(param1: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc ontoggled*(self: QAction, slot: proc(param1: bool)) =
  type Cb = proc(param1: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAction_connect_toggled(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QAction, s: cstring, c: cstring): string =

  let v_ms = fcQAction_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAction, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAction_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc showStatusText1*(self: QAction, objectVal: gen_qobject.QObject): bool =

  fcQAction_showStatusText1(self.h, objectVal.h)

proc triggered1*(self: QAction, checked: bool): void =

  fcQAction_triggered1(self.h, checked)

proc miqt_exec_callback_QAction_triggered1(slot: int, checked: bool) {.exportc.} =
  type Cb = proc(checked: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = checked


  nimfunc[](slotval1)

proc ontriggered1*(self: QAction, slot: proc(checked: bool)) =
  type Cb = proc(checked: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAction_connect_triggered1(self.h, cast[int](addr tmp[]))
proc callVirtualBase_metacall(self: QAction, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAction_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QActionmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAction, slot: proc(super: QActionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QActionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAction_metacall(self: ptr cQAction, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAction_metacall ".} =
  type Cb = proc(super: QActionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAction(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QAction, param1: gen_qcoreevent.QEvent): bool =


  fQAction_virtualbase_event(self.h, param1.h)

type QActioneventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAction, slot: proc(super: QActioneventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QActioneventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAction_event(self: ptr cQAction, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QAction_event ".} =
  type Cb = proc(super: QActioneventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAction(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QAction, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAction_virtualbase_eventFilter(self.h, watched.h, event.h)

type QActioneventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAction, slot: proc(super: QActioneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QActioneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAction_eventFilter(self: ptr cQAction, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAction_eventFilter ".} =
  type Cb = proc(super: QActioneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAction(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAction, event: gen_qcoreevent.QTimerEvent): void =


  fQAction_virtualbase_timerEvent(self.h, event.h)

type QActiontimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAction, slot: proc(super: QActiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QActiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAction_timerEvent(self: ptr cQAction, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAction_timerEvent ".} =
  type Cb = proc(super: QActiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAction(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAction, event: gen_qcoreevent.QChildEvent): void =


  fQAction_virtualbase_childEvent(self.h, event.h)

type QActionchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAction, slot: proc(super: QActionchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QActionchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAction_childEvent(self: ptr cQAction, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAction_childEvent ".} =
  type Cb = proc(super: QActionchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAction(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAction, event: gen_qcoreevent.QEvent): void =


  fQAction_virtualbase_customEvent(self.h, event.h)

type QActioncustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAction, slot: proc(super: QActioncustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QActioncustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAction_customEvent(self: ptr cQAction, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAction_customEvent ".} =
  type Cb = proc(super: QActioncustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAction(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAction, signal: gen_qmetaobject.QMetaMethod): void =


  fQAction_virtualbase_connectNotify(self.h, signal.h)

type QActionconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAction, slot: proc(super: QActionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QActionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAction_connectNotify(self: ptr cQAction, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAction_connectNotify ".} =
  type Cb = proc(super: QActionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAction(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAction, signal: gen_qmetaobject.QMetaMethod): void =


  fQAction_virtualbase_disconnectNotify(self.h, signal.h)

type QActiondisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAction, slot: proc(super: QActiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QActiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAction_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAction_disconnectNotify(self: ptr cQAction, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAction_disconnectNotify ".} =
  type Cb = proc(super: QActiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAction(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QAction): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQAction_staticMetaObject())
proc delete*(self: QAction) =
  fcQAction_delete(self.h)
