import Qt6Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt6Gui")
{.compile("gen_qactiongroup.cpp", cflags).}


type QActionGroupExclusionPolicyEnum* = distinct cint
template None*(_: type QActionGroupExclusionPolicyEnum): untyped = 0
template Exclusive*(_: type QActionGroupExclusionPolicyEnum): untyped = 1
template ExclusiveOptional*(_: type QActionGroupExclusionPolicyEnum): untyped = 2


import gen_qactiongroup_types
export gen_qactiongroup_types

import
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQActionGroup*{.exportc: "QActionGroup", incompleteStruct.} = object

proc fcQActionGroup_metaObject(self: pointer, ): pointer {.importc: "QActionGroup_metaObject".}
proc fcQActionGroup_metacast(self: pointer, param1: cstring): pointer {.importc: "QActionGroup_metacast".}
proc fcQActionGroup_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QActionGroup_metacall".}
proc fcQActionGroup_tr(s: cstring): struct_miqt_string {.importc: "QActionGroup_tr".}
proc fcQActionGroup_isExclusive(self: pointer, ): bool {.importc: "QActionGroup_isExclusive".}
proc fcQActionGroup_isEnabled(self: pointer, ): bool {.importc: "QActionGroup_isEnabled".}
proc fcQActionGroup_isVisible(self: pointer, ): bool {.importc: "QActionGroup_isVisible".}
proc fcQActionGroup_exclusionPolicy(self: pointer, ): cint {.importc: "QActionGroup_exclusionPolicy".}
proc fcQActionGroup_setEnabled(self: pointer, enabled: bool): void {.importc: "QActionGroup_setEnabled".}
proc fcQActionGroup_setDisabled(self: pointer, b: bool): void {.importc: "QActionGroup_setDisabled".}
proc fcQActionGroup_setVisible(self: pointer, visible: bool): void {.importc: "QActionGroup_setVisible".}
proc fcQActionGroup_setExclusive(self: pointer, exclusive: bool): void {.importc: "QActionGroup_setExclusive".}
proc fcQActionGroup_setExclusionPolicy(self: pointer, policy: cint): void {.importc: "QActionGroup_setExclusionPolicy".}
proc fcQActionGroup_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QActionGroup_tr2".}
proc fcQActionGroup_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QActionGroup_tr3".}
type cQActionGroupVTable = object
  destructor*: proc(vtbl: ptr cQActionGroupVTable, self: ptr cQActionGroup) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQActionGroup_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QActionGroup_virtualbase_metaObject".}
proc fcQActionGroup_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QActionGroup_virtualbase_metacast".}
proc fcQActionGroup_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QActionGroup_virtualbase_metacall".}
proc fcQActionGroup_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QActionGroup_virtualbase_event".}
proc fcQActionGroup_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QActionGroup_virtualbase_eventFilter".}
proc fcQActionGroup_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QActionGroup_virtualbase_timerEvent".}
proc fcQActionGroup_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QActionGroup_virtualbase_childEvent".}
proc fcQActionGroup_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QActionGroup_virtualbase_customEvent".}
proc fcQActionGroup_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QActionGroup_virtualbase_connectNotify".}
proc fcQActionGroup_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QActionGroup_virtualbase_disconnectNotify".}
proc fcQActionGroup_new(vtbl: pointer, parent: pointer): ptr cQActionGroup {.importc: "QActionGroup_new".}
proc fcQActionGroup_staticMetaObject(): pointer {.importc: "QActionGroup_staticMetaObject".}
proc fcQActionGroup_delete(self: pointer) {.importc: "QActionGroup_delete".}

proc metaObject*(self: gen_qactiongroup_types.QActionGroup, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQActionGroup_metaObject(self.h))

proc metacast*(self: gen_qactiongroup_types.QActionGroup, param1: cstring): pointer =
  fcQActionGroup_metacast(self.h, param1)

proc metacall*(self: gen_qactiongroup_types.QActionGroup, param1: cint, param2: cint, param3: pointer): cint =
  fcQActionGroup_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qactiongroup_types.QActionGroup, s: cstring): string =
  let v_ms = fcQActionGroup_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isExclusive*(self: gen_qactiongroup_types.QActionGroup, ): bool =
  fcQActionGroup_isExclusive(self.h)

proc isEnabled*(self: gen_qactiongroup_types.QActionGroup, ): bool =
  fcQActionGroup_isEnabled(self.h)

proc isVisible*(self: gen_qactiongroup_types.QActionGroup, ): bool =
  fcQActionGroup_isVisible(self.h)

proc exclusionPolicy*(self: gen_qactiongroup_types.QActionGroup, ): cint =
  cint(fcQActionGroup_exclusionPolicy(self.h))

proc setEnabled*(self: gen_qactiongroup_types.QActionGroup, enabled: bool): void =
  fcQActionGroup_setEnabled(self.h, enabled)

proc setDisabled*(self: gen_qactiongroup_types.QActionGroup, b: bool): void =
  fcQActionGroup_setDisabled(self.h, b)

proc setVisible*(self: gen_qactiongroup_types.QActionGroup, visible: bool): void =
  fcQActionGroup_setVisible(self.h, visible)

proc setExclusive*(self: gen_qactiongroup_types.QActionGroup, exclusive: bool): void =
  fcQActionGroup_setExclusive(self.h, exclusive)

proc setExclusionPolicy*(self: gen_qactiongroup_types.QActionGroup, policy: cint): void =
  fcQActionGroup_setExclusionPolicy(self.h, cint(policy))

proc tr*(_: type gen_qactiongroup_types.QActionGroup, s: cstring, c: cstring): string =
  let v_ms = fcQActionGroup_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qactiongroup_types.QActionGroup, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQActionGroup_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QActionGroupmetaObjectProc* = proc(self: QActionGroup): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QActionGroupmetacastProc* = proc(self: QActionGroup, param1: cstring): pointer {.raises: [], gcsafe.}
type QActionGroupmetacallProc* = proc(self: QActionGroup, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QActionGroupeventProc* = proc(self: QActionGroup, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QActionGroupeventFilterProc* = proc(self: QActionGroup, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QActionGrouptimerEventProc* = proc(self: QActionGroup, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QActionGroupchildEventProc* = proc(self: QActionGroup, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QActionGroupcustomEventProc* = proc(self: QActionGroup, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QActionGroupconnectNotifyProc* = proc(self: QActionGroup, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QActionGroupdisconnectNotifyProc* = proc(self: QActionGroup, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QActionGroupVTable* = object
  vtbl: cQActionGroupVTable
  metaObject*: QActionGroupmetaObjectProc
  metacast*: QActionGroupmetacastProc
  metacall*: QActionGroupmetacallProc
  event*: QActionGroupeventProc
  eventFilter*: QActionGroupeventFilterProc
  timerEvent*: QActionGrouptimerEventProc
  childEvent*: QActionGroupchildEventProc
  customEvent*: QActionGroupcustomEventProc
  connectNotify*: QActionGroupconnectNotifyProc
  disconnectNotify*: QActionGroupdisconnectNotifyProc
proc QActionGroupmetaObject*(self: gen_qactiongroup_types.QActionGroup, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQActionGroup_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQActionGroup_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QActionGroupVTable](vtbl)
  let self = QActionGroup(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QActionGroupmetacast*(self: gen_qactiongroup_types.QActionGroup, param1: cstring): pointer =
  fcQActionGroup_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQActionGroup_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QActionGroupVTable](vtbl)
  let self = QActionGroup(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QActionGroupmetacall*(self: gen_qactiongroup_types.QActionGroup, param1: cint, param2: cint, param3: pointer): cint =
  fcQActionGroup_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQActionGroup_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QActionGroupVTable](vtbl)
  let self = QActionGroup(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QActionGroupevent*(self: gen_qactiongroup_types.QActionGroup, event: gen_qcoreevent_types.QEvent): bool =
  fcQActionGroup_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQActionGroup_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QActionGroupVTable](vtbl)
  let self = QActionGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QActionGroupeventFilter*(self: gen_qactiongroup_types.QActionGroup, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQActionGroup_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQActionGroup_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QActionGroupVTable](vtbl)
  let self = QActionGroup(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QActionGrouptimerEvent*(self: gen_qactiongroup_types.QActionGroup, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQActionGroup_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQActionGroup_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QActionGroupVTable](vtbl)
  let self = QActionGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QActionGroupchildEvent*(self: gen_qactiongroup_types.QActionGroup, event: gen_qcoreevent_types.QChildEvent): void =
  fcQActionGroup_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQActionGroup_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QActionGroupVTable](vtbl)
  let self = QActionGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QActionGroupcustomEvent*(self: gen_qactiongroup_types.QActionGroup, event: gen_qcoreevent_types.QEvent): void =
  fcQActionGroup_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQActionGroup_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QActionGroupVTable](vtbl)
  let self = QActionGroup(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QActionGroupconnectNotify*(self: gen_qactiongroup_types.QActionGroup, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQActionGroup_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQActionGroup_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QActionGroupVTable](vtbl)
  let self = QActionGroup(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QActionGroupdisconnectNotify*(self: gen_qactiongroup_types.QActionGroup, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQActionGroup_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQActionGroup_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QActionGroupVTable](vtbl)
  let self = QActionGroup(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qactiongroup_types.QActionGroup,
    parent: gen_qobject_types.QObject,
    vtbl: ref QActionGroupVTable = nil): gen_qactiongroup_types.QActionGroup =
  let vtbl = if vtbl == nil: new QActionGroupVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQActionGroupVTable, _: ptr cQActionGroup) {.cdecl.} =
    let vtbl = cast[ref QActionGroupVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQActionGroup_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQActionGroup_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQActionGroup_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQActionGroup_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQActionGroup_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQActionGroup_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQActionGroup_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQActionGroup_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQActionGroup_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQActionGroup_disconnectNotify
  gen_qactiongroup_types.QActionGroup(h: fcQActionGroup_new(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qactiongroup_types.QActionGroup): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQActionGroup_staticMetaObject())
proc delete*(self: gen_qactiongroup_types.QActionGroup) =
  fcQActionGroup_delete(self.h)
