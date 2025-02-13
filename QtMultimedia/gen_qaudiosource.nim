import Qt6Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt6Multimedia")
{.compile("gen_qaudiosource.cpp", cflags).}


import gen_qaudiosource_types
export gen_qaudiosource_types

import
  gen_qaudiodevice_types,
  gen_qaudioformat_types,
  gen_qcoreevent_types,
  gen_qiodevice_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types
export
  gen_qaudiodevice_types,
  gen_qaudioformat_types,
  gen_qcoreevent_types,
  gen_qiodevice_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQAudioSource*{.exportc: "QAudioSource", incompleteStruct.} = object

proc fcQAudioSource_metaObject(self: pointer, ): pointer {.importc: "QAudioSource_metaObject".}
proc fcQAudioSource_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioSource_metacast".}
proc fcQAudioSource_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioSource_metacall".}
proc fcQAudioSource_tr(s: cstring): struct_miqt_string {.importc: "QAudioSource_tr".}
proc fcQAudioSource_isNull(self: pointer, ): bool {.importc: "QAudioSource_isNull".}
proc fcQAudioSource_format(self: pointer, ): pointer {.importc: "QAudioSource_format".}
proc fcQAudioSource_start(self: pointer, device: pointer): void {.importc: "QAudioSource_start".}
proc fcQAudioSource_start2(self: pointer, ): pointer {.importc: "QAudioSource_start2".}
proc fcQAudioSource_stop(self: pointer, ): void {.importc: "QAudioSource_stop".}
proc fcQAudioSource_reset(self: pointer, ): void {.importc: "QAudioSource_reset".}
proc fcQAudioSource_suspend(self: pointer, ): void {.importc: "QAudioSource_suspend".}
proc fcQAudioSource_resume(self: pointer, ): void {.importc: "QAudioSource_resume".}
proc fcQAudioSource_setBufferSize(self: pointer, bytes: int64): void {.importc: "QAudioSource_setBufferSize".}
proc fcQAudioSource_bufferSize(self: pointer, ): int64 {.importc: "QAudioSource_bufferSize".}
proc fcQAudioSource_bytesAvailable(self: pointer, ): int64 {.importc: "QAudioSource_bytesAvailable".}
proc fcQAudioSource_setVolume(self: pointer, volume: float64): void {.importc: "QAudioSource_setVolume".}
proc fcQAudioSource_volume(self: pointer, ): float64 {.importc: "QAudioSource_volume".}
proc fcQAudioSource_processedUSecs(self: pointer, ): clonglong {.importc: "QAudioSource_processedUSecs".}
proc fcQAudioSource_elapsedUSecs(self: pointer, ): clonglong {.importc: "QAudioSource_elapsedUSecs".}
proc fcQAudioSource_error(self: pointer, ): cint {.importc: "QAudioSource_error".}
proc fcQAudioSource_state(self: pointer, ): cint {.importc: "QAudioSource_state".}
proc fcQAudioSource_stateChanged(self: pointer, state: cint): void {.importc: "QAudioSource_stateChanged".}
proc fcQAudioSource_connect_stateChanged(self: pointer, slot: int) {.importc: "QAudioSource_connect_stateChanged".}
proc fcQAudioSource_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioSource_tr2".}
proc fcQAudioSource_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioSource_tr3".}
type cQAudioSourceVTable = object
  destructor*: proc(vtbl: ptr cQAudioSourceVTable, self: ptr cQAudioSource) {.cdecl, raises:[], gcsafe.}
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
proc fcQAudioSource_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QAudioSource_virtualbase_metaObject".}
proc fcQAudioSource_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioSource_virtualbase_metacast".}
proc fcQAudioSource_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioSource_virtualbase_metacall".}
proc fcQAudioSource_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAudioSource_virtualbase_event".}
proc fcQAudioSource_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAudioSource_virtualbase_eventFilter".}
proc fcQAudioSource_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAudioSource_virtualbase_timerEvent".}
proc fcQAudioSource_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAudioSource_virtualbase_childEvent".}
proc fcQAudioSource_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAudioSource_virtualbase_customEvent".}
proc fcQAudioSource_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAudioSource_virtualbase_connectNotify".}
proc fcQAudioSource_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAudioSource_virtualbase_disconnectNotify".}
proc fcQAudioSource_protectedbase_sender(self: pointer, ): pointer {.importc: "QAudioSource_protectedbase_sender".}
proc fcQAudioSource_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QAudioSource_protectedbase_senderSignalIndex".}
proc fcQAudioSource_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAudioSource_protectedbase_receivers".}
proc fcQAudioSource_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAudioSource_protectedbase_isSignalConnected".}
proc fcQAudioSource_new(vtbl: pointer, ): ptr cQAudioSource {.importc: "QAudioSource_new".}
proc fcQAudioSource_new2(vtbl: pointer, audioDeviceInfo: pointer): ptr cQAudioSource {.importc: "QAudioSource_new2".}
proc fcQAudioSource_new3(vtbl: pointer, format: pointer): ptr cQAudioSource {.importc: "QAudioSource_new3".}
proc fcQAudioSource_new4(vtbl: pointer, format: pointer, parent: pointer): ptr cQAudioSource {.importc: "QAudioSource_new4".}
proc fcQAudioSource_new5(vtbl: pointer, audioDeviceInfo: pointer, format: pointer): ptr cQAudioSource {.importc: "QAudioSource_new5".}
proc fcQAudioSource_new6(vtbl: pointer, audioDeviceInfo: pointer, format: pointer, parent: pointer): ptr cQAudioSource {.importc: "QAudioSource_new6".}
proc fcQAudioSource_staticMetaObject(): pointer {.importc: "QAudioSource_staticMetaObject".}
proc fcQAudioSource_delete(self: pointer) {.importc: "QAudioSource_delete".}

proc metaObject*(self: gen_qaudiosource_types.QAudioSource, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioSource_metaObject(self.h))

proc metacast*(self: gen_qaudiosource_types.QAudioSource, param1: cstring): pointer =
  fcQAudioSource_metacast(self.h, param1)

proc metacall*(self: gen_qaudiosource_types.QAudioSource, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioSource_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudiosource_types.QAudioSource, s: cstring): string =
  let v_ms = fcQAudioSource_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isNull*(self: gen_qaudiosource_types.QAudioSource, ): bool =
  fcQAudioSource_isNull(self.h)

proc format*(self: gen_qaudiosource_types.QAudioSource, ): gen_qaudioformat_types.QAudioFormat =
  gen_qaudioformat_types.QAudioFormat(h: fcQAudioSource_format(self.h))

proc start*(self: gen_qaudiosource_types.QAudioSource, device: gen_qiodevice_types.QIODevice): void =
  fcQAudioSource_start(self.h, device.h)

proc start*(self: gen_qaudiosource_types.QAudioSource, ): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQAudioSource_start2(self.h))

proc stop*(self: gen_qaudiosource_types.QAudioSource, ): void =
  fcQAudioSource_stop(self.h)

proc reset*(self: gen_qaudiosource_types.QAudioSource, ): void =
  fcQAudioSource_reset(self.h)

proc suspend*(self: gen_qaudiosource_types.QAudioSource, ): void =
  fcQAudioSource_suspend(self.h)

proc resume*(self: gen_qaudiosource_types.QAudioSource, ): void =
  fcQAudioSource_resume(self.h)

proc setBufferSize*(self: gen_qaudiosource_types.QAudioSource, bytes: int64): void =
  fcQAudioSource_setBufferSize(self.h, bytes)

proc bufferSize*(self: gen_qaudiosource_types.QAudioSource, ): int64 =
  fcQAudioSource_bufferSize(self.h)

proc bytesAvailable*(self: gen_qaudiosource_types.QAudioSource, ): int64 =
  fcQAudioSource_bytesAvailable(self.h)

proc setVolume*(self: gen_qaudiosource_types.QAudioSource, volume: float64): void =
  fcQAudioSource_setVolume(self.h, volume)

proc volume*(self: gen_qaudiosource_types.QAudioSource, ): float64 =
  fcQAudioSource_volume(self.h)

proc processedUSecs*(self: gen_qaudiosource_types.QAudioSource, ): clonglong =
  fcQAudioSource_processedUSecs(self.h)

proc elapsedUSecs*(self: gen_qaudiosource_types.QAudioSource, ): clonglong =
  fcQAudioSource_elapsedUSecs(self.h)

proc error*(self: gen_qaudiosource_types.QAudioSource, ): cint =
  cint(fcQAudioSource_error(self.h))

proc state*(self: gen_qaudiosource_types.QAudioSource, ): cint =
  cint(fcQAudioSource_state(self.h))

proc stateChanged*(self: gen_qaudiosource_types.QAudioSource, state: cint): void =
  fcQAudioSource_stateChanged(self.h, cint(state))

type QAudioSourcestateChangedSlot* = proc(state: cint)
proc miqt_exec_callback_cQAudioSource_stateChanged(slot: int, state: cint) {.exportc: "miqt_exec_callback_QAudioSource_stateChanged".} =
  let nimfunc = cast[ptr QAudioSourcestateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQAudioSource_stateChanged_release(slot: int) {.exportc: "miqt_exec_callback_QAudioSource_stateChanged_release".} =
  let nimfunc = cast[ref QAudioSourcestateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstateChanged*(self: gen_qaudiosource_types.QAudioSource, slot: QAudioSourcestateChangedSlot) =
  var tmp = new QAudioSourcestateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSource_connect_stateChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qaudiosource_types.QAudioSource, s: cstring, c: cstring): string =
  let v_ms = fcQAudioSource_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudiosource_types.QAudioSource, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioSource_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QAudioSourcemetaObjectProc* = proc(self: QAudioSource): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAudioSourcemetacastProc* = proc(self: QAudioSource, param1: cstring): pointer {.raises: [], gcsafe.}
type QAudioSourcemetacallProc* = proc(self: QAudioSource, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAudioSourceeventProc* = proc(self: QAudioSource, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioSourceeventFilterProc* = proc(self: QAudioSource, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioSourcetimerEventProc* = proc(self: QAudioSource, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAudioSourcechildEventProc* = proc(self: QAudioSource, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAudioSourcecustomEventProc* = proc(self: QAudioSource, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAudioSourceconnectNotifyProc* = proc(self: QAudioSource, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAudioSourcedisconnectNotifyProc* = proc(self: QAudioSource, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAudioSourceVTable* = object
  vtbl: cQAudioSourceVTable
  metaObject*: QAudioSourcemetaObjectProc
  metacast*: QAudioSourcemetacastProc
  metacall*: QAudioSourcemetacallProc
  event*: QAudioSourceeventProc
  eventFilter*: QAudioSourceeventFilterProc
  timerEvent*: QAudioSourcetimerEventProc
  childEvent*: QAudioSourcechildEventProc
  customEvent*: QAudioSourcecustomEventProc
  connectNotify*: QAudioSourceconnectNotifyProc
  disconnectNotify*: QAudioSourcedisconnectNotifyProc
proc QAudioSourcemetaObject*(self: gen_qaudiosource_types.QAudioSource, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioSource_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQAudioSource_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioSourceVTable](vtbl)
  let self = QAudioSource(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QAudioSourcemetacast*(self: gen_qaudiosource_types.QAudioSource, param1: cstring): pointer =
  fcQAudioSource_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQAudioSource_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioSourceVTable](vtbl)
  let self = QAudioSource(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAudioSourcemetacall*(self: gen_qaudiosource_types.QAudioSource, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioSource_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQAudioSource_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAudioSourceVTable](vtbl)
  let self = QAudioSource(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAudioSourceevent*(self: gen_qaudiosource_types.QAudioSource, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioSource_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQAudioSource_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioSourceVTable](vtbl)
  let self = QAudioSource(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAudioSourceeventFilter*(self: gen_qaudiosource_types.QAudioSource, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioSource_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQAudioSource_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioSourceVTable](vtbl)
  let self = QAudioSource(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAudioSourcetimerEvent*(self: gen_qaudiosource_types.QAudioSource, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAudioSource_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioSource_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioSourceVTable](vtbl)
  let self = QAudioSource(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QAudioSourcechildEvent*(self: gen_qaudiosource_types.QAudioSource, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAudioSource_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioSource_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioSourceVTable](vtbl)
  let self = QAudioSource(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QAudioSourcecustomEvent*(self: gen_qaudiosource_types.QAudioSource, event: gen_qcoreevent_types.QEvent): void =
  fcQAudioSource_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioSource_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioSourceVTable](vtbl)
  let self = QAudioSource(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QAudioSourceconnectNotify*(self: gen_qaudiosource_types.QAudioSource, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioSource_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAudioSource_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioSourceVTable](vtbl)
  let self = QAudioSource(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QAudioSourcedisconnectNotify*(self: gen_qaudiosource_types.QAudioSource, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioSource_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAudioSource_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioSourceVTable](vtbl)
  let self = QAudioSource(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qaudiosource_types.QAudioSource, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAudioSource_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qaudiosource_types.QAudioSource, ): cint =
  fcQAudioSource_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qaudiosource_types.QAudioSource, signal: cstring): cint =
  fcQAudioSource_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qaudiosource_types.QAudioSource, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAudioSource_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qaudiosource_types.QAudioSource,
    vtbl: ref QAudioSourceVTable = nil): gen_qaudiosource_types.QAudioSource =
  let vtbl = if vtbl == nil: new QAudioSourceVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioSourceVTable, _: ptr cQAudioSource) {.cdecl.} =
    let vtbl = cast[ref QAudioSourceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioSource_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioSource_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioSource_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioSource_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioSource_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioSource_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioSource_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioSource_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioSource_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioSource_disconnectNotify
  gen_qaudiosource_types.QAudioSource(h: fcQAudioSource_new(addr(vtbl[]), ))

proc create*(T: type gen_qaudiosource_types.QAudioSource,
    audioDeviceInfo: gen_qaudiodevice_types.QAudioDevice,
    vtbl: ref QAudioSourceVTable = nil): gen_qaudiosource_types.QAudioSource =
  let vtbl = if vtbl == nil: new QAudioSourceVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioSourceVTable, _: ptr cQAudioSource) {.cdecl.} =
    let vtbl = cast[ref QAudioSourceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioSource_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioSource_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioSource_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioSource_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioSource_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioSource_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioSource_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioSource_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioSource_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioSource_disconnectNotify
  gen_qaudiosource_types.QAudioSource(h: fcQAudioSource_new2(addr(vtbl[]), audioDeviceInfo.h))

proc create*(T: type gen_qaudiosource_types.QAudioSource,
    format: gen_qaudioformat_types.QAudioFormat,
    vtbl: ref QAudioSourceVTable = nil): gen_qaudiosource_types.QAudioSource =
  let vtbl = if vtbl == nil: new QAudioSourceVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioSourceVTable, _: ptr cQAudioSource) {.cdecl.} =
    let vtbl = cast[ref QAudioSourceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioSource_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioSource_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioSource_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioSource_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioSource_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioSource_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioSource_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioSource_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioSource_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioSource_disconnectNotify
  gen_qaudiosource_types.QAudioSource(h: fcQAudioSource_new3(addr(vtbl[]), format.h))

proc create*(T: type gen_qaudiosource_types.QAudioSource,
    format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject,
    vtbl: ref QAudioSourceVTable = nil): gen_qaudiosource_types.QAudioSource =
  let vtbl = if vtbl == nil: new QAudioSourceVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioSourceVTable, _: ptr cQAudioSource) {.cdecl.} =
    let vtbl = cast[ref QAudioSourceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioSource_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioSource_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioSource_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioSource_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioSource_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioSource_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioSource_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioSource_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioSource_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioSource_disconnectNotify
  gen_qaudiosource_types.QAudioSource(h: fcQAudioSource_new4(addr(vtbl[]), format.h, parent.h))

proc create*(T: type gen_qaudiosource_types.QAudioSource,
    audioDeviceInfo: gen_qaudiodevice_types.QAudioDevice, format: gen_qaudioformat_types.QAudioFormat,
    vtbl: ref QAudioSourceVTable = nil): gen_qaudiosource_types.QAudioSource =
  let vtbl = if vtbl == nil: new QAudioSourceVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioSourceVTable, _: ptr cQAudioSource) {.cdecl.} =
    let vtbl = cast[ref QAudioSourceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioSource_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioSource_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioSource_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioSource_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioSource_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioSource_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioSource_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioSource_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioSource_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioSource_disconnectNotify
  gen_qaudiosource_types.QAudioSource(h: fcQAudioSource_new5(addr(vtbl[]), audioDeviceInfo.h, format.h))

proc create*(T: type gen_qaudiosource_types.QAudioSource,
    audioDeviceInfo: gen_qaudiodevice_types.QAudioDevice, format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject,
    vtbl: ref QAudioSourceVTable = nil): gen_qaudiosource_types.QAudioSource =
  let vtbl = if vtbl == nil: new QAudioSourceVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioSourceVTable, _: ptr cQAudioSource) {.cdecl.} =
    let vtbl = cast[ref QAudioSourceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioSource_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioSource_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioSource_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioSource_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioSource_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioSource_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioSource_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioSource_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioSource_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioSource_disconnectNotify
  gen_qaudiosource_types.QAudioSource(h: fcQAudioSource_new6(addr(vtbl[]), audioDeviceInfo.h, format.h, parent.h))

proc staticMetaObject*(_: type gen_qaudiosource_types.QAudioSource): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioSource_staticMetaObject())
proc delete*(self: gen_qaudiosource_types.QAudioSource) =
  fcQAudioSource_delete(self.h)
