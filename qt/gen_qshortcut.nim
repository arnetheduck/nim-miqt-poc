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
{.compile("gen_qshortcut.cpp", cflags).}


import gen_qshortcut_types
export gen_qshortcut_types

import
  gen_qcoreevent,
  gen_qkeysequence,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qwidget
export
  gen_qcoreevent,
  gen_qkeysequence,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qwidget

type cQShortcut*{.exportc: "QShortcut", incompleteStruct.} = object

proc fcQShortcut_new(parent: pointer): ptr cQShortcut {.importc: "QShortcut_new".}
proc fcQShortcut_new2(key: pointer, parent: pointer): ptr cQShortcut {.importc: "QShortcut_new2".}
proc fcQShortcut_new3(key: pointer, parent: pointer, member: cstring): ptr cQShortcut {.importc: "QShortcut_new3".}
proc fcQShortcut_new4(key: pointer, parent: pointer, member: cstring, ambiguousMember: cstring): ptr cQShortcut {.importc: "QShortcut_new4".}
proc fcQShortcut_new5(key: pointer, parent: pointer, member: cstring, ambiguousMember: cstring, shortcutContext: cint): ptr cQShortcut {.importc: "QShortcut_new5".}
proc fcQShortcut_metaObject(self: pointer, ): pointer {.importc: "QShortcut_metaObject".}
proc fcQShortcut_metacast(self: pointer, param1: cstring): pointer {.importc: "QShortcut_metacast".}
proc fcQShortcut_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QShortcut_metacall".}
proc fcQShortcut_tr(s: cstring): struct_miqt_string {.importc: "QShortcut_tr".}
proc fcQShortcut_trUtf8(s: cstring): struct_miqt_string {.importc: "QShortcut_trUtf8".}
proc fcQShortcut_setKey(self: pointer, key: pointer): void {.importc: "QShortcut_setKey".}
proc fcQShortcut_key(self: pointer, ): pointer {.importc: "QShortcut_key".}
proc fcQShortcut_setEnabled(self: pointer, enable: bool): void {.importc: "QShortcut_setEnabled".}
proc fcQShortcut_isEnabled(self: pointer, ): bool {.importc: "QShortcut_isEnabled".}
proc fcQShortcut_setContext(self: pointer, context: cint): void {.importc: "QShortcut_setContext".}
proc fcQShortcut_context(self: pointer, ): cint {.importc: "QShortcut_context".}
proc fcQShortcut_setWhatsThis(self: pointer, text: struct_miqt_string): void {.importc: "QShortcut_setWhatsThis".}
proc fcQShortcut_whatsThis(self: pointer, ): struct_miqt_string {.importc: "QShortcut_whatsThis".}
proc fcQShortcut_setAutoRepeat(self: pointer, on: bool): void {.importc: "QShortcut_setAutoRepeat".}
proc fcQShortcut_autoRepeat(self: pointer, ): bool {.importc: "QShortcut_autoRepeat".}
proc fcQShortcut_id(self: pointer, ): cint {.importc: "QShortcut_id".}
proc fcQShortcut_parentWidget(self: pointer, ): pointer {.importc: "QShortcut_parentWidget".}
proc fcQShortcut_activated(self: pointer, ): void {.importc: "QShortcut_activated".}
proc fQShortcut_connect_activated(self: pointer, slot: int) {.importc: "QShortcut_connect_activated".}
proc fcQShortcut_activatedAmbiguously(self: pointer, ): void {.importc: "QShortcut_activatedAmbiguously".}
proc fQShortcut_connect_activatedAmbiguously(self: pointer, slot: int) {.importc: "QShortcut_connect_activatedAmbiguously".}
proc fcQShortcut_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QShortcut_tr2".}
proc fcQShortcut_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QShortcut_tr3".}
proc fcQShortcut_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QShortcut_trUtf82".}
proc fcQShortcut_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QShortcut_trUtf83".}
proc fQShortcut_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QShortcut_virtualbase_metaObject".}
proc fcQShortcut_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QShortcut_override_virtual_metaObject".}
proc fQShortcut_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QShortcut_virtualbase_metacast".}
proc fcQShortcut_override_virtual_metacast(self: pointer, slot: int) {.importc: "QShortcut_override_virtual_metacast".}
proc fQShortcut_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QShortcut_virtualbase_metacall".}
proc fcQShortcut_override_virtual_metacall(self: pointer, slot: int) {.importc: "QShortcut_override_virtual_metacall".}
proc fQShortcut_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QShortcut_virtualbase_event".}
proc fcQShortcut_override_virtual_event(self: pointer, slot: int) {.importc: "QShortcut_override_virtual_event".}
proc fQShortcut_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QShortcut_virtualbase_eventFilter".}
proc fcQShortcut_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QShortcut_override_virtual_eventFilter".}
proc fQShortcut_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QShortcut_virtualbase_timerEvent".}
proc fcQShortcut_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QShortcut_override_virtual_timerEvent".}
proc fQShortcut_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QShortcut_virtualbase_childEvent".}
proc fcQShortcut_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QShortcut_override_virtual_childEvent".}
proc fQShortcut_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QShortcut_virtualbase_customEvent".}
proc fcQShortcut_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QShortcut_override_virtual_customEvent".}
proc fQShortcut_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QShortcut_virtualbase_connectNotify".}
proc fcQShortcut_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QShortcut_override_virtual_connectNotify".}
proc fQShortcut_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QShortcut_virtualbase_disconnectNotify".}
proc fcQShortcut_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QShortcut_override_virtual_disconnectNotify".}
proc fcQShortcut_staticMetaObject(): pointer {.importc: "QShortcut_staticMetaObject".}
proc fcQShortcut_delete(self: pointer) {.importc: "QShortcut_delete".}


func init*(T: type QShortcut, h: ptr cQShortcut): QShortcut =
  T(h: h)
proc create*(T: type QShortcut, parent: gen_qwidget.QWidget): QShortcut =

  QShortcut.init(fcQShortcut_new(parent.h))
proc create*(T: type QShortcut, key: gen_qkeysequence.QKeySequence, parent: gen_qwidget.QWidget): QShortcut =

  QShortcut.init(fcQShortcut_new2(key.h, parent.h))
proc create*(T: type QShortcut, key: gen_qkeysequence.QKeySequence, parent: gen_qwidget.QWidget, member: cstring): QShortcut =

  QShortcut.init(fcQShortcut_new3(key.h, parent.h, member))
proc create*(T: type QShortcut, key: gen_qkeysequence.QKeySequence, parent: gen_qwidget.QWidget, member: cstring, ambiguousMember: cstring): QShortcut =

  QShortcut.init(fcQShortcut_new4(key.h, parent.h, member, ambiguousMember))
proc create*(T: type QShortcut, key: gen_qkeysequence.QKeySequence, parent: gen_qwidget.QWidget, member: cstring, ambiguousMember: cstring, shortcutContext: gen_qnamespace.ShortcutContext): QShortcut =

  QShortcut.init(fcQShortcut_new5(key.h, parent.h, member, ambiguousMember, cint(shortcutContext)))
proc metaObject*(self: QShortcut, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQShortcut_metaObject(self.h))

proc metacast*(self: QShortcut, param1: cstring): pointer =

  fcQShortcut_metacast(self.h, param1)

proc metacall*(self: QShortcut, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQShortcut_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QShortcut, s: cstring): string =

  let v_ms = fcQShortcut_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QShortcut, s: cstring): string =

  let v_ms = fcQShortcut_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setKey*(self: QShortcut, key: gen_qkeysequence.QKeySequence): void =

  fcQShortcut_setKey(self.h, key.h)

proc key*(self: QShortcut, ): gen_qkeysequence.QKeySequence =

  gen_qkeysequence.QKeySequence(h: fcQShortcut_key(self.h))

proc setEnabled*(self: QShortcut, enable: bool): void =

  fcQShortcut_setEnabled(self.h, enable)

proc isEnabled*(self: QShortcut, ): bool =

  fcQShortcut_isEnabled(self.h)

proc setContext*(self: QShortcut, context: gen_qnamespace.ShortcutContext): void =

  fcQShortcut_setContext(self.h, cint(context))

proc context*(self: QShortcut, ): gen_qnamespace.ShortcutContext =

  gen_qnamespace.ShortcutContext(fcQShortcut_context(self.h))

proc setWhatsThis*(self: QShortcut, text: string): void =

  fcQShortcut_setWhatsThis(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc whatsThis*(self: QShortcut, ): string =

  let v_ms = fcQShortcut_whatsThis(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAutoRepeat*(self: QShortcut, on: bool): void =

  fcQShortcut_setAutoRepeat(self.h, on)

proc autoRepeat*(self: QShortcut, ): bool =

  fcQShortcut_autoRepeat(self.h)

proc id*(self: QShortcut, ): cint =

  fcQShortcut_id(self.h)

proc parentWidget*(self: QShortcut, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQShortcut_parentWidget(self.h))

proc activated*(self: QShortcut, ): void =

  fcQShortcut_activated(self.h)

proc miqt_exec_callback_QShortcut_activated(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onactivated*(self: QShortcut, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQShortcut_connect_activated(self.h, cast[int](addr tmp[]))
proc activatedAmbiguously*(self: QShortcut, ): void =

  fcQShortcut_activatedAmbiguously(self.h)

proc miqt_exec_callback_QShortcut_activatedAmbiguously(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onactivatedAmbiguously*(self: QShortcut, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQShortcut_connect_activatedAmbiguously(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QShortcut, s: cstring, c: cstring): string =

  let v_ms = fcQShortcut_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QShortcut, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQShortcut_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QShortcut, s: cstring, c: cstring): string =

  let v_ms = fcQShortcut_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QShortcut, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQShortcut_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QShortcut, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQShortcut_virtualbase_metaObject(self.h))

type QShortcutmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QShortcut, slot: proc(super: QShortcutmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QShortcutmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcut_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QShortcut_metaObject(self: ptr cQShortcut, slot: int): pointer {.exportc: "miqt_exec_callback_QShortcut_metaObject ".} =
  type Cb = proc(super: QShortcutmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QShortcut(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QShortcut, param1: cstring): pointer =


  fQShortcut_virtualbase_metacast(self.h, param1)

type QShortcutmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QShortcut, slot: proc(super: QShortcutmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QShortcutmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcut_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QShortcut_metacast(self: ptr cQShortcut, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QShortcut_metacast ".} =
  type Cb = proc(super: QShortcutmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QShortcut(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QShortcut, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQShortcut_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QShortcutmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QShortcut, slot: proc(super: QShortcutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QShortcutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcut_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QShortcut_metacall(self: ptr cQShortcut, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QShortcut_metacall ".} =
  type Cb = proc(super: QShortcutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QShortcut(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QShortcut, e: gen_qcoreevent.QEvent): bool =


  fQShortcut_virtualbase_event(self.h, e.h)

type QShortcuteventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QShortcut, slot: proc(super: QShortcuteventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QShortcuteventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcut_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QShortcut_event(self: ptr cQShortcut, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QShortcut_event ".} =
  type Cb = proc(super: QShortcuteventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QShortcut(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QShortcut, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQShortcut_virtualbase_eventFilter(self.h, watched.h, event.h)

type QShortcuteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QShortcut, slot: proc(super: QShortcuteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QShortcuteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcut_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QShortcut_eventFilter(self: ptr cQShortcut, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QShortcut_eventFilter ".} =
  type Cb = proc(super: QShortcuteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QShortcut(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QShortcut, event: gen_qcoreevent.QTimerEvent): void =


  fQShortcut_virtualbase_timerEvent(self.h, event.h)

type QShortcuttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QShortcut, slot: proc(super: QShortcuttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QShortcuttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcut_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QShortcut_timerEvent(self: ptr cQShortcut, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QShortcut_timerEvent ".} =
  type Cb = proc(super: QShortcuttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QShortcut(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QShortcut, event: gen_qcoreevent.QChildEvent): void =


  fQShortcut_virtualbase_childEvent(self.h, event.h)

type QShortcutchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QShortcut, slot: proc(super: QShortcutchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QShortcutchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcut_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QShortcut_childEvent(self: ptr cQShortcut, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QShortcut_childEvent ".} =
  type Cb = proc(super: QShortcutchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QShortcut(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QShortcut, event: gen_qcoreevent.QEvent): void =


  fQShortcut_virtualbase_customEvent(self.h, event.h)

type QShortcutcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QShortcut, slot: proc(super: QShortcutcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QShortcutcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcut_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QShortcut_customEvent(self: ptr cQShortcut, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QShortcut_customEvent ".} =
  type Cb = proc(super: QShortcutcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QShortcut(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QShortcut, signal: gen_qmetaobject.QMetaMethod): void =


  fQShortcut_virtualbase_connectNotify(self.h, signal.h)

type QShortcutconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QShortcut, slot: proc(super: QShortcutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QShortcutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcut_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QShortcut_connectNotify(self: ptr cQShortcut, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QShortcut_connectNotify ".} =
  type Cb = proc(super: QShortcutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QShortcut(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QShortcut, signal: gen_qmetaobject.QMetaMethod): void =


  fQShortcut_virtualbase_disconnectNotify(self.h, signal.h)

type QShortcutdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QShortcut, slot: proc(super: QShortcutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QShortcutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcut_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QShortcut_disconnectNotify(self: ptr cQShortcut, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QShortcut_disconnectNotify ".} =
  type Cb = proc(super: QShortcutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QShortcut(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QShortcut): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQShortcut_staticMetaObject())
proc delete*(self: QShortcut) =
  fcQShortcut_delete(self.h)
