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
{.compile("gen_qsystemtrayicon.cpp", cflags).}


type QSystemTrayIconActivationReasonEnum* = distinct cint
template Unknown*(_: type QSystemTrayIconActivationReasonEnum): untyped = 0
template Context*(_: type QSystemTrayIconActivationReasonEnum): untyped = 1
template DoubleClick*(_: type QSystemTrayIconActivationReasonEnum): untyped = 2
template Trigger*(_: type QSystemTrayIconActivationReasonEnum): untyped = 3
template MiddleClick*(_: type QSystemTrayIconActivationReasonEnum): untyped = 4


type QSystemTrayIconMessageIconEnum* = distinct cint
template NoIcon*(_: type QSystemTrayIconMessageIconEnum): untyped = 0
template Information*(_: type QSystemTrayIconMessageIconEnum): untyped = 1
template Warning*(_: type QSystemTrayIconMessageIconEnum): untyped = 2
template Critical*(_: type QSystemTrayIconMessageIconEnum): untyped = 3


import gen_qsystemtrayicon_types
export gen_qsystemtrayicon_types

import
  gen_qcoreevent,
  gen_qicon,
  gen_qmenu,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qrect
export
  gen_qcoreevent,
  gen_qicon,
  gen_qmenu,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qrect

type cQSystemTrayIcon*{.exportc: "QSystemTrayIcon", incompleteStruct.} = object

proc fcQSystemTrayIcon_new(): ptr cQSystemTrayIcon {.importc: "QSystemTrayIcon_new".}
proc fcQSystemTrayIcon_new2(icon: pointer): ptr cQSystemTrayIcon {.importc: "QSystemTrayIcon_new2".}
proc fcQSystemTrayIcon_new3(parent: pointer): ptr cQSystemTrayIcon {.importc: "QSystemTrayIcon_new3".}
proc fcQSystemTrayIcon_new4(icon: pointer, parent: pointer): ptr cQSystemTrayIcon {.importc: "QSystemTrayIcon_new4".}
proc fcQSystemTrayIcon_metaObject(self: pointer, ): pointer {.importc: "QSystemTrayIcon_metaObject".}
proc fcQSystemTrayIcon_metacast(self: pointer, param1: cstring): pointer {.importc: "QSystemTrayIcon_metacast".}
proc fcQSystemTrayIcon_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSystemTrayIcon_metacall".}
proc fcQSystemTrayIcon_tr(s: cstring): struct_miqt_string {.importc: "QSystemTrayIcon_tr".}
proc fcQSystemTrayIcon_trUtf8(s: cstring): struct_miqt_string {.importc: "QSystemTrayIcon_trUtf8".}
proc fcQSystemTrayIcon_setContextMenu(self: pointer, menu: pointer): void {.importc: "QSystemTrayIcon_setContextMenu".}
proc fcQSystemTrayIcon_contextMenu(self: pointer, ): pointer {.importc: "QSystemTrayIcon_contextMenu".}
proc fcQSystemTrayIcon_icon(self: pointer, ): pointer {.importc: "QSystemTrayIcon_icon".}
proc fcQSystemTrayIcon_setIcon(self: pointer, icon: pointer): void {.importc: "QSystemTrayIcon_setIcon".}
proc fcQSystemTrayIcon_toolTip(self: pointer, ): struct_miqt_string {.importc: "QSystemTrayIcon_toolTip".}
proc fcQSystemTrayIcon_setToolTip(self: pointer, tip: struct_miqt_string): void {.importc: "QSystemTrayIcon_setToolTip".}
proc fcQSystemTrayIcon_isSystemTrayAvailable(): bool {.importc: "QSystemTrayIcon_isSystemTrayAvailable".}
proc fcQSystemTrayIcon_supportsMessages(): bool {.importc: "QSystemTrayIcon_supportsMessages".}
proc fcQSystemTrayIcon_geometry(self: pointer, ): pointer {.importc: "QSystemTrayIcon_geometry".}
proc fcQSystemTrayIcon_isVisible(self: pointer, ): bool {.importc: "QSystemTrayIcon_isVisible".}
proc fcQSystemTrayIcon_setVisible(self: pointer, visible: bool): void {.importc: "QSystemTrayIcon_setVisible".}
proc fcQSystemTrayIcon_show(self: pointer, ): void {.importc: "QSystemTrayIcon_show".}
proc fcQSystemTrayIcon_hide(self: pointer, ): void {.importc: "QSystemTrayIcon_hide".}
proc fcQSystemTrayIcon_showMessage(self: pointer, title: struct_miqt_string, msg: struct_miqt_string, icon: pointer): void {.importc: "QSystemTrayIcon_showMessage".}
proc fcQSystemTrayIcon_showMessage2(self: pointer, title: struct_miqt_string, msg: struct_miqt_string): void {.importc: "QSystemTrayIcon_showMessage2".}
proc fcQSystemTrayIcon_activated(self: pointer, reason: cint): void {.importc: "QSystemTrayIcon_activated".}
proc fQSystemTrayIcon_connect_activated(self: pointer, slot: int) {.importc: "QSystemTrayIcon_connect_activated".}
proc fcQSystemTrayIcon_messageClicked(self: pointer, ): void {.importc: "QSystemTrayIcon_messageClicked".}
proc fQSystemTrayIcon_connect_messageClicked(self: pointer, slot: int) {.importc: "QSystemTrayIcon_connect_messageClicked".}
proc fcQSystemTrayIcon_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSystemTrayIcon_tr2".}
proc fcQSystemTrayIcon_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSystemTrayIcon_tr3".}
proc fcQSystemTrayIcon_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSystemTrayIcon_trUtf82".}
proc fcQSystemTrayIcon_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSystemTrayIcon_trUtf83".}
proc fcQSystemTrayIcon_showMessage4(self: pointer, title: struct_miqt_string, msg: struct_miqt_string, icon: pointer, msecs: cint): void {.importc: "QSystemTrayIcon_showMessage4".}
proc fcQSystemTrayIcon_showMessage3(self: pointer, title: struct_miqt_string, msg: struct_miqt_string, icon: cint): void {.importc: "QSystemTrayIcon_showMessage3".}
proc fcQSystemTrayIcon_showMessage42(self: pointer, title: struct_miqt_string, msg: struct_miqt_string, icon: cint, msecs: cint): void {.importc: "QSystemTrayIcon_showMessage42".}
proc fQSystemTrayIcon_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QSystemTrayIcon_virtualbase_metaObject".}
proc fcQSystemTrayIcon_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QSystemTrayIcon_override_virtual_metaObject".}
proc fQSystemTrayIcon_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QSystemTrayIcon_virtualbase_metacast".}
proc fcQSystemTrayIcon_override_virtual_metacast(self: pointer, slot: int) {.importc: "QSystemTrayIcon_override_virtual_metacast".}
proc fQSystemTrayIcon_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSystemTrayIcon_virtualbase_metacall".}
proc fcQSystemTrayIcon_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSystemTrayIcon_override_virtual_metacall".}
proc fQSystemTrayIcon_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSystemTrayIcon_virtualbase_event".}
proc fcQSystemTrayIcon_override_virtual_event(self: pointer, slot: int) {.importc: "QSystemTrayIcon_override_virtual_event".}
proc fQSystemTrayIcon_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSystemTrayIcon_virtualbase_eventFilter".}
proc fcQSystemTrayIcon_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSystemTrayIcon_override_virtual_eventFilter".}
proc fQSystemTrayIcon_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSystemTrayIcon_virtualbase_timerEvent".}
proc fcQSystemTrayIcon_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSystemTrayIcon_override_virtual_timerEvent".}
proc fQSystemTrayIcon_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSystemTrayIcon_virtualbase_childEvent".}
proc fcQSystemTrayIcon_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSystemTrayIcon_override_virtual_childEvent".}
proc fQSystemTrayIcon_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSystemTrayIcon_virtualbase_customEvent".}
proc fcQSystemTrayIcon_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSystemTrayIcon_override_virtual_customEvent".}
proc fQSystemTrayIcon_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSystemTrayIcon_virtualbase_connectNotify".}
proc fcQSystemTrayIcon_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSystemTrayIcon_override_virtual_connectNotify".}
proc fQSystemTrayIcon_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSystemTrayIcon_virtualbase_disconnectNotify".}
proc fcQSystemTrayIcon_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSystemTrayIcon_override_virtual_disconnectNotify".}
proc fcQSystemTrayIcon_staticMetaObject(): pointer {.importc: "QSystemTrayIcon_staticMetaObject".}
proc fcQSystemTrayIcon_delete(self: pointer) {.importc: "QSystemTrayIcon_delete".}


func init*(T: type gen_qsystemtrayicon_types.QSystemTrayIcon, h: ptr cQSystemTrayIcon): gen_qsystemtrayicon_types.QSystemTrayIcon =
  T(h: h)
proc create*(T: type gen_qsystemtrayicon_types.QSystemTrayIcon, ): gen_qsystemtrayicon_types.QSystemTrayIcon =

  gen_qsystemtrayicon_types.QSystemTrayIcon.init(fcQSystemTrayIcon_new())
proc create*(T: type gen_qsystemtrayicon_types.QSystemTrayIcon, icon: gen_qicon.QIcon): gen_qsystemtrayicon_types.QSystemTrayIcon =

  gen_qsystemtrayicon_types.QSystemTrayIcon.init(fcQSystemTrayIcon_new2(icon.h))
proc create2*(T: type gen_qsystemtrayicon_types.QSystemTrayIcon, parent: gen_qobject.QObject): gen_qsystemtrayicon_types.QSystemTrayIcon =

  gen_qsystemtrayicon_types.QSystemTrayIcon.init(fcQSystemTrayIcon_new3(parent.h))
proc create*(T: type gen_qsystemtrayicon_types.QSystemTrayIcon, icon: gen_qicon.QIcon, parent: gen_qobject.QObject): gen_qsystemtrayicon_types.QSystemTrayIcon =

  gen_qsystemtrayicon_types.QSystemTrayIcon.init(fcQSystemTrayIcon_new4(icon.h, parent.h))
proc metaObject*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSystemTrayIcon_metaObject(self.h))

proc metacast*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, param1: cstring): pointer =

  fcQSystemTrayIcon_metacast(self.h, param1)

proc metacall*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, param1: cint, param2: cint, param3: pointer): cint =

  fcQSystemTrayIcon_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsystemtrayicon_types.QSystemTrayIcon, s: cstring): string =

  let v_ms = fcQSystemTrayIcon_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsystemtrayicon_types.QSystemTrayIcon, s: cstring): string =

  let v_ms = fcQSystemTrayIcon_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setContextMenu*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, menu: gen_qmenu.QMenu): void =

  fcQSystemTrayIcon_setContextMenu(self.h, menu.h)

proc contextMenu*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, ): gen_qmenu.QMenu =

  gen_qmenu.QMenu(h: fcQSystemTrayIcon_contextMenu(self.h))

proc icon*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, ): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQSystemTrayIcon_icon(self.h))

proc setIcon*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, icon: gen_qicon.QIcon): void =

  fcQSystemTrayIcon_setIcon(self.h, icon.h)

proc toolTip*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, ): string =

  let v_ms = fcQSystemTrayIcon_toolTip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setToolTip*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, tip: string): void =

  fcQSystemTrayIcon_setToolTip(self.h, struct_miqt_string(data: tip, len: csize_t(len(tip))))

proc isSystemTrayAvailable*(_: type gen_qsystemtrayicon_types.QSystemTrayIcon, ): bool =

  fcQSystemTrayIcon_isSystemTrayAvailable()

proc supportsMessages*(_: type gen_qsystemtrayicon_types.QSystemTrayIcon, ): bool =

  fcQSystemTrayIcon_supportsMessages()

proc geometry*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQSystemTrayIcon_geometry(self.h))

proc isVisible*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, ): bool =

  fcQSystemTrayIcon_isVisible(self.h)

proc setVisible*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, visible: bool): void =

  fcQSystemTrayIcon_setVisible(self.h, visible)

proc show*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, ): void =

  fcQSystemTrayIcon_show(self.h)

proc hide*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, ): void =

  fcQSystemTrayIcon_hide(self.h)

proc showMessage*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, title: string, msg: string, icon: gen_qicon.QIcon): void =

  fcQSystemTrayIcon_showMessage(self.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: msg, len: csize_t(len(msg))), icon.h)

proc showMessage2*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, title: string, msg: string): void =

  fcQSystemTrayIcon_showMessage2(self.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: msg, len: csize_t(len(msg))))

proc activated*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, reason: cint): void =

  fcQSystemTrayIcon_activated(self.h, cint(reason))

proc miqt_exec_callback_QSystemTrayIcon_activated(slot: int, reason: cint) {.exportc.} =
  type Cb = proc(reason: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = cint(reason)


  nimfunc[](slotval1)

proc onactivated*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, slot: proc(reason: cint)) =
  type Cb = proc(reason: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSystemTrayIcon_connect_activated(self.h, cast[int](addr tmp[]))
proc messageClicked*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, ): void =

  fcQSystemTrayIcon_messageClicked(self.h)

proc miqt_exec_callback_QSystemTrayIcon_messageClicked(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onmessageClicked*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSystemTrayIcon_connect_messageClicked(self.h, cast[int](addr tmp[]))
proc tr2*(_: type gen_qsystemtrayicon_types.QSystemTrayIcon, s: cstring, c: cstring): string =

  let v_ms = fcQSystemTrayIcon_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qsystemtrayicon_types.QSystemTrayIcon, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSystemTrayIcon_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type gen_qsystemtrayicon_types.QSystemTrayIcon, s: cstring, c: cstring): string =

  let v_ms = fcQSystemTrayIcon_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type gen_qsystemtrayicon_types.QSystemTrayIcon, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSystemTrayIcon_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc showMessage4*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, title: string, msg: string, icon: gen_qicon.QIcon, msecs: cint): void =

  fcQSystemTrayIcon_showMessage4(self.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: msg, len: csize_t(len(msg))), icon.h, msecs)

proc showMessage3*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, title: string, msg: string, icon: cint): void =

  fcQSystemTrayIcon_showMessage3(self.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: msg, len: csize_t(len(msg))), cint(icon))

proc showMessage42*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, title: string, msg: string, icon: cint, msecs: cint): void =

  fcQSystemTrayIcon_showMessage42(self.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: msg, len: csize_t(len(msg))), cint(icon), msecs)

proc QSystemTrayIconmetaObject*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQSystemTrayIcon_virtualbase_metaObject(self.h))

type QSystemTrayIconmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, slot: QSystemTrayIconmetaObjectProc) =
  # TODO check subclass
  var tmp = new QSystemTrayIconmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSystemTrayIcon_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSystemTrayIcon_metaObject(self: ptr cQSystemTrayIcon, slot: int): pointer {.exportc: "miqt_exec_callback_QSystemTrayIcon_metaObject ".} =
  var nimfunc = cast[ptr QSystemTrayIconmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSystemTrayIconmetacast*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, param1: cstring): pointer =

  fQSystemTrayIcon_virtualbase_metacast(self.h, param1)

type QSystemTrayIconmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, slot: QSystemTrayIconmetacastProc) =
  # TODO check subclass
  var tmp = new QSystemTrayIconmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSystemTrayIcon_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSystemTrayIcon_metacast(self: ptr cQSystemTrayIcon, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QSystemTrayIcon_metacast ".} =
  var nimfunc = cast[ptr QSystemTrayIconmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSystemTrayIconmetacall*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, param1: cint, param2: cint, param3: pointer): cint =

  fQSystemTrayIcon_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSystemTrayIconmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, slot: QSystemTrayIconmetacallProc) =
  # TODO check subclass
  var tmp = new QSystemTrayIconmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSystemTrayIcon_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSystemTrayIcon_metacall(self: ptr cQSystemTrayIcon, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSystemTrayIcon_metacall ".} =
  var nimfunc = cast[ptr QSystemTrayIconmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSystemTrayIconevent*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, event: gen_qcoreevent.QEvent): bool =

  fQSystemTrayIcon_virtualbase_event(self.h, event.h)

type QSystemTrayIconeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, slot: QSystemTrayIconeventProc) =
  # TODO check subclass
  var tmp = new QSystemTrayIconeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSystemTrayIcon_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSystemTrayIcon_event(self: ptr cQSystemTrayIcon, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSystemTrayIcon_event ".} =
  var nimfunc = cast[ptr QSystemTrayIconeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSystemTrayIconeventFilter*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQSystemTrayIcon_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSystemTrayIconeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, slot: QSystemTrayIconeventFilterProc) =
  # TODO check subclass
  var tmp = new QSystemTrayIconeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSystemTrayIcon_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSystemTrayIcon_eventFilter(self: ptr cQSystemTrayIcon, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSystemTrayIcon_eventFilter ".} =
  var nimfunc = cast[ptr QSystemTrayIconeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSystemTrayIcontimerEvent*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, event: gen_qcoreevent.QTimerEvent): void =

  fQSystemTrayIcon_virtualbase_timerEvent(self.h, event.h)

type QSystemTrayIcontimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, slot: QSystemTrayIcontimerEventProc) =
  # TODO check subclass
  var tmp = new QSystemTrayIcontimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSystemTrayIcon_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSystemTrayIcon_timerEvent(self: ptr cQSystemTrayIcon, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSystemTrayIcon_timerEvent ".} =
  var nimfunc = cast[ptr QSystemTrayIcontimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QSystemTrayIconchildEvent*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, event: gen_qcoreevent.QChildEvent): void =

  fQSystemTrayIcon_virtualbase_childEvent(self.h, event.h)

type QSystemTrayIconchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, slot: QSystemTrayIconchildEventProc) =
  # TODO check subclass
  var tmp = new QSystemTrayIconchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSystemTrayIcon_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSystemTrayIcon_childEvent(self: ptr cQSystemTrayIcon, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSystemTrayIcon_childEvent ".} =
  var nimfunc = cast[ptr QSystemTrayIconchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QSystemTrayIconcustomEvent*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, event: gen_qcoreevent.QEvent): void =

  fQSystemTrayIcon_virtualbase_customEvent(self.h, event.h)

type QSystemTrayIconcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, slot: QSystemTrayIconcustomEventProc) =
  # TODO check subclass
  var tmp = new QSystemTrayIconcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSystemTrayIcon_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSystemTrayIcon_customEvent(self: ptr cQSystemTrayIcon, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSystemTrayIcon_customEvent ".} =
  var nimfunc = cast[ptr QSystemTrayIconcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QSystemTrayIconconnectNotify*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, signal: gen_qmetaobject.QMetaMethod): void =

  fQSystemTrayIcon_virtualbase_connectNotify(self.h, signal.h)

type QSystemTrayIconconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, slot: QSystemTrayIconconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSystemTrayIconconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSystemTrayIcon_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSystemTrayIcon_connectNotify(self: ptr cQSystemTrayIcon, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSystemTrayIcon_connectNotify ".} =
  var nimfunc = cast[ptr QSystemTrayIconconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QSystemTrayIcondisconnectNotify*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, signal: gen_qmetaobject.QMetaMethod): void =

  fQSystemTrayIcon_virtualbase_disconnectNotify(self.h, signal.h)

type QSystemTrayIcondisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsystemtrayicon_types.QSystemTrayIcon, slot: QSystemTrayIcondisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSystemTrayIcondisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSystemTrayIcon_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSystemTrayIcon_disconnectNotify(self: ptr cQSystemTrayIcon, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSystemTrayIcon_disconnectNotify ".} =
  var nimfunc = cast[ptr QSystemTrayIcondisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qsystemtrayicon_types.QSystemTrayIcon): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQSystemTrayIcon_staticMetaObject())
proc delete*(self: gen_qsystemtrayicon_types.QSystemTrayIcon) =
  fcQSystemTrayIcon_delete(self.h)
