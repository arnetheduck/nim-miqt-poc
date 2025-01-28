import Qt6PrintSupport_libs

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

const cflags = gorge("pkg-config -cflags Qt6PrintSupport")
{.compile("gen_qscimacro.cpp", cflags).}

import gen_qscimacro_types
export gen_qscimacro_types

import
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qsciscintilla_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qsciscintilla_types

type cQsciMacro*{.exportc: "QsciMacro", incompleteStruct.} = object

proc fcQsciMacro_metaObject(self: pointer, ): pointer {.importc: "QsciMacro_metaObject".}
proc fcQsciMacro_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciMacro_metacast".}
proc fcQsciMacro_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciMacro_metacall".}
proc fcQsciMacro_tr(s: cstring): struct_miqt_string {.importc: "QsciMacro_tr".}
proc fcQsciMacro_clear(self: pointer, ): void {.importc: "QsciMacro_clear".}
proc fcQsciMacro_load(self: pointer, asc: struct_miqt_string): bool {.importc: "QsciMacro_load".}
proc fcQsciMacro_save(self: pointer, ): struct_miqt_string {.importc: "QsciMacro_save".}
proc fcQsciMacro_play(self: pointer, ): void {.importc: "QsciMacro_play".}
proc fcQsciMacro_startRecording(self: pointer, ): void {.importc: "QsciMacro_startRecording".}
proc fcQsciMacro_endRecording(self: pointer, ): void {.importc: "QsciMacro_endRecording".}
proc fcQsciMacro_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciMacro_tr2".}
proc fcQsciMacro_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciMacro_tr3".}
type cQsciMacroVTable = object
  destructor*: proc(vtbl: ptr cQsciMacroVTable, self: ptr cQsciMacro) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  play*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  startRecording*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  endRecording*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQsciMacro_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QsciMacro_virtualbase_metaObject".}
proc fcQsciMacro_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QsciMacro_virtualbase_metacast".}
proc fcQsciMacro_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QsciMacro_virtualbase_metacall".}
proc fcQsciMacro_virtualbase_play(self: pointer, ): void {.importc: "QsciMacro_virtualbase_play".}
proc fcQsciMacro_virtualbase_startRecording(self: pointer, ): void {.importc: "QsciMacro_virtualbase_startRecording".}
proc fcQsciMacro_virtualbase_endRecording(self: pointer, ): void {.importc: "QsciMacro_virtualbase_endRecording".}
proc fcQsciMacro_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QsciMacro_virtualbase_event".}
proc fcQsciMacro_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QsciMacro_virtualbase_eventFilter".}
proc fcQsciMacro_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QsciMacro_virtualbase_timerEvent".}
proc fcQsciMacro_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QsciMacro_virtualbase_childEvent".}
proc fcQsciMacro_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QsciMacro_virtualbase_customEvent".}
proc fcQsciMacro_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QsciMacro_virtualbase_connectNotify".}
proc fcQsciMacro_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QsciMacro_virtualbase_disconnectNotify".}
proc fcQsciMacro_new(vtbl: pointer, parent: pointer): ptr cQsciMacro {.importc: "QsciMacro_new".}
proc fcQsciMacro_new2(vtbl: pointer, asc: struct_miqt_string, parent: pointer): ptr cQsciMacro {.importc: "QsciMacro_new2".}
proc fcQsciMacro_staticMetaObject(): pointer {.importc: "QsciMacro_staticMetaObject".}
proc fcQsciMacro_delete(self: pointer) {.importc: "QsciMacro_delete".}

proc metaObject*(self: gen_qscimacro_types.QsciMacro, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciMacro_metaObject(self.h))

proc metacast*(self: gen_qscimacro_types.QsciMacro, param1: cstring): pointer =
  fcQsciMacro_metacast(self.h, param1)

proc metacall*(self: gen_qscimacro_types.QsciMacro, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciMacro_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscimacro_types.QsciMacro, s: cstring): string =
  let v_ms = fcQsciMacro_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc clear*(self: gen_qscimacro_types.QsciMacro, ): void =
  fcQsciMacro_clear(self.h)

proc load*(self: gen_qscimacro_types.QsciMacro, asc: string): bool =
  fcQsciMacro_load(self.h, struct_miqt_string(data: asc, len: csize_t(len(asc))))

proc save*(self: gen_qscimacro_types.QsciMacro, ): string =
  let v_ms = fcQsciMacro_save(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc play*(self: gen_qscimacro_types.QsciMacro, ): void =
  fcQsciMacro_play(self.h)

proc startRecording*(self: gen_qscimacro_types.QsciMacro, ): void =
  fcQsciMacro_startRecording(self.h)

proc endRecording*(self: gen_qscimacro_types.QsciMacro, ): void =
  fcQsciMacro_endRecording(self.h)

proc tr*(_: type gen_qscimacro_types.QsciMacro, s: cstring, c: cstring): string =
  let v_ms = fcQsciMacro_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscimacro_types.QsciMacro, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciMacro_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QsciMacrometaObjectProc* = proc(self: QsciMacro): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QsciMacrometacastProc* = proc(self: QsciMacro, param1: cstring): pointer {.raises: [], gcsafe.}
type QsciMacrometacallProc* = proc(self: QsciMacro, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QsciMacroplayProc* = proc(self: QsciMacro): void {.raises: [], gcsafe.}
type QsciMacrostartRecordingProc* = proc(self: QsciMacro): void {.raises: [], gcsafe.}
type QsciMacroendRecordingProc* = proc(self: QsciMacro): void {.raises: [], gcsafe.}
type QsciMacroeventProc* = proc(self: QsciMacro, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciMacroeventFilterProc* = proc(self: QsciMacro, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QsciMacrotimerEventProc* = proc(self: QsciMacro, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QsciMacrochildEventProc* = proc(self: QsciMacro, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QsciMacrocustomEventProc* = proc(self: QsciMacro, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QsciMacroconnectNotifyProc* = proc(self: QsciMacro, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciMacrodisconnectNotifyProc* = proc(self: QsciMacro, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QsciMacroVTable* = object
  vtbl: cQsciMacroVTable
  metaObject*: QsciMacrometaObjectProc
  metacast*: QsciMacrometacastProc
  metacall*: QsciMacrometacallProc
  play*: QsciMacroplayProc
  startRecording*: QsciMacrostartRecordingProc
  endRecording*: QsciMacroendRecordingProc
  event*: QsciMacroeventProc
  eventFilter*: QsciMacroeventFilterProc
  timerEvent*: QsciMacrotimerEventProc
  childEvent*: QsciMacrochildEventProc
  customEvent*: QsciMacrocustomEventProc
  connectNotify*: QsciMacroconnectNotifyProc
  disconnectNotify*: QsciMacrodisconnectNotifyProc
proc QsciMacrometaObject*(self: gen_qscimacro_types.QsciMacro, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciMacro_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQsciMacro_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciMacroVTable](vtbl)
  let self = QsciMacro(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QsciMacrometacast*(self: gen_qscimacro_types.QsciMacro, param1: cstring): pointer =
  fcQsciMacro_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQsciMacro_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QsciMacroVTable](vtbl)
  let self = QsciMacro(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QsciMacrometacall*(self: gen_qscimacro_types.QsciMacro, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciMacro_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQsciMacro_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QsciMacroVTable](vtbl)
  let self = QsciMacro(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QsciMacroplay*(self: gen_qscimacro_types.QsciMacro, ): void =
  fcQsciMacro_virtualbase_play(self.h)

proc miqt_exec_callback_cQsciMacro_play(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciMacroVTable](vtbl)
  let self = QsciMacro(h: self)
  vtbl[].play(self)

proc QsciMacrostartRecording*(self: gen_qscimacro_types.QsciMacro, ): void =
  fcQsciMacro_virtualbase_startRecording(self.h)

proc miqt_exec_callback_cQsciMacro_startRecording(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciMacroVTable](vtbl)
  let self = QsciMacro(h: self)
  vtbl[].startRecording(self)

proc QsciMacroendRecording*(self: gen_qscimacro_types.QsciMacro, ): void =
  fcQsciMacro_virtualbase_endRecording(self.h)

proc miqt_exec_callback_cQsciMacro_endRecording(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciMacroVTable](vtbl)
  let self = QsciMacro(h: self)
  vtbl[].endRecording(self)

proc QsciMacroevent*(self: gen_qscimacro_types.QsciMacro, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciMacro_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQsciMacro_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciMacroVTable](vtbl)
  let self = QsciMacro(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QsciMacroeventFilter*(self: gen_qscimacro_types.QsciMacro, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQsciMacro_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQsciMacro_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QsciMacroVTable](vtbl)
  let self = QsciMacro(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QsciMacrotimerEvent*(self: gen_qscimacro_types.QsciMacro, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQsciMacro_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQsciMacro_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciMacroVTable](vtbl)
  let self = QsciMacro(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QsciMacrochildEvent*(self: gen_qscimacro_types.QsciMacro, event: gen_qcoreevent_types.QChildEvent): void =
  fcQsciMacro_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQsciMacro_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciMacroVTable](vtbl)
  let self = QsciMacro(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QsciMacrocustomEvent*(self: gen_qscimacro_types.QsciMacro, event: gen_qcoreevent_types.QEvent): void =
  fcQsciMacro_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQsciMacro_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciMacroVTable](vtbl)
  let self = QsciMacro(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QsciMacroconnectNotify*(self: gen_qscimacro_types.QsciMacro, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciMacro_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciMacro_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciMacroVTable](vtbl)
  let self = QsciMacro(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QsciMacrodisconnectNotify*(self: gen_qscimacro_types.QsciMacro, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQsciMacro_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQsciMacro_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QsciMacroVTable](vtbl)
  let self = QsciMacro(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qscimacro_types.QsciMacro,
    parent: gen_qsciscintilla_types.QsciScintilla,
    vtbl: ref QsciMacroVTable = nil): gen_qscimacro_types.QsciMacro =
  let vtbl = if vtbl == nil: new QsciMacroVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciMacroVTable, _: ptr cQsciMacro) {.cdecl.} =
    let vtbl = cast[ref QsciMacroVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciMacro_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciMacro_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciMacro_metacall
  if not isNil(vtbl.play):
    vtbl[].vtbl.play = miqt_exec_callback_cQsciMacro_play
  if not isNil(vtbl.startRecording):
    vtbl[].vtbl.startRecording = miqt_exec_callback_cQsciMacro_startRecording
  if not isNil(vtbl.endRecording):
    vtbl[].vtbl.endRecording = miqt_exec_callback_cQsciMacro_endRecording
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciMacro_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciMacro_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciMacro_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciMacro_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciMacro_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciMacro_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciMacro_disconnectNotify
  gen_qscimacro_types.QsciMacro(h: fcQsciMacro_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qscimacro_types.QsciMacro,
    asc: string, parent: gen_qsciscintilla_types.QsciScintilla,
    vtbl: ref QsciMacroVTable = nil): gen_qscimacro_types.QsciMacro =
  let vtbl = if vtbl == nil: new QsciMacroVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQsciMacroVTable, _: ptr cQsciMacro) {.cdecl.} =
    let vtbl = cast[ref QsciMacroVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQsciMacro_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQsciMacro_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQsciMacro_metacall
  if not isNil(vtbl.play):
    vtbl[].vtbl.play = miqt_exec_callback_cQsciMacro_play
  if not isNil(vtbl.startRecording):
    vtbl[].vtbl.startRecording = miqt_exec_callback_cQsciMacro_startRecording
  if not isNil(vtbl.endRecording):
    vtbl[].vtbl.endRecording = miqt_exec_callback_cQsciMacro_endRecording
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQsciMacro_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQsciMacro_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQsciMacro_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQsciMacro_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQsciMacro_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQsciMacro_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQsciMacro_disconnectNotify
  gen_qscimacro_types.QsciMacro(h: fcQsciMacro_new2(addr(vtbl[]), struct_miqt_string(data: asc, len: csize_t(len(asc))), parent.h))

proc staticMetaObject*(_: type gen_qscimacro_types.QsciMacro): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQsciMacro_staticMetaObject())
proc delete*(self: gen_qscimacro_types.QsciMacro) =
  fcQsciMacro_delete(self.h)
