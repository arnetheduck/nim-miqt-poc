import Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core")
{.compile("gen_qfileselector.cpp", cflags).}


import gen_qfileselector_types
export gen_qfileselector_types

import
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types

type cQFileSelector*{.exportc: "QFileSelector", incompleteStruct.} = object

proc fcQFileSelector_metaObject(self: pointer, ): pointer {.importc: "QFileSelector_metaObject".}
proc fcQFileSelector_metacast(self: pointer, param1: cstring): pointer {.importc: "QFileSelector_metacast".}
proc fcQFileSelector_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFileSelector_metacall".}
proc fcQFileSelector_tr(s: cstring): struct_miqt_string {.importc: "QFileSelector_tr".}
proc fcQFileSelector_select(self: pointer, filePath: struct_miqt_string): struct_miqt_string {.importc: "QFileSelector_select".}
proc fcQFileSelector_selectWithFilePath(self: pointer, filePath: pointer): pointer {.importc: "QFileSelector_selectWithFilePath".}
proc fcQFileSelector_extraSelectors(self: pointer, ): struct_miqt_array {.importc: "QFileSelector_extraSelectors".}
proc fcQFileSelector_setExtraSelectors(self: pointer, list: struct_miqt_array): void {.importc: "QFileSelector_setExtraSelectors".}
proc fcQFileSelector_allSelectors(self: pointer, ): struct_miqt_array {.importc: "QFileSelector_allSelectors".}
proc fcQFileSelector_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFileSelector_tr2".}
proc fcQFileSelector_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFileSelector_tr3".}
type cQFileSelectorVTable = object
  destructor*: proc(vtbl: ptr cQFileSelectorVTable, self: ptr cQFileSelector) {.cdecl, raises:[], gcsafe.}
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
proc fcQFileSelector_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QFileSelector_virtualbase_metaObject".}
proc fcQFileSelector_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QFileSelector_virtualbase_metacast".}
proc fcQFileSelector_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFileSelector_virtualbase_metacall".}
proc fcQFileSelector_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QFileSelector_virtualbase_event".}
proc fcQFileSelector_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QFileSelector_virtualbase_eventFilter".}
proc fcQFileSelector_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QFileSelector_virtualbase_timerEvent".}
proc fcQFileSelector_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QFileSelector_virtualbase_childEvent".}
proc fcQFileSelector_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QFileSelector_virtualbase_customEvent".}
proc fcQFileSelector_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QFileSelector_virtualbase_connectNotify".}
proc fcQFileSelector_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QFileSelector_virtualbase_disconnectNotify".}
proc fcQFileSelector_protectedbase_sender(self: pointer, ): pointer {.importc: "QFileSelector_protectedbase_sender".}
proc fcQFileSelector_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QFileSelector_protectedbase_senderSignalIndex".}
proc fcQFileSelector_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QFileSelector_protectedbase_receivers".}
proc fcQFileSelector_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QFileSelector_protectedbase_isSignalConnected".}
proc fcQFileSelector_new(vtbl: pointer, ): ptr cQFileSelector {.importc: "QFileSelector_new".}
proc fcQFileSelector_new2(vtbl: pointer, parent: pointer): ptr cQFileSelector {.importc: "QFileSelector_new2".}
proc fcQFileSelector_staticMetaObject(): pointer {.importc: "QFileSelector_staticMetaObject".}
proc fcQFileSelector_delete(self: pointer) {.importc: "QFileSelector_delete".}

proc metaObject*(self: gen_qfileselector_types.QFileSelector, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileSelector_metaObject(self.h))

proc metacast*(self: gen_qfileselector_types.QFileSelector, param1: cstring): pointer =
  fcQFileSelector_metacast(self.h, param1)

proc metacall*(self: gen_qfileselector_types.QFileSelector, param1: cint, param2: cint, param3: pointer): cint =
  fcQFileSelector_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qfileselector_types.QFileSelector, s: cstring): string =
  let v_ms = fcQFileSelector_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc select*(self: gen_qfileselector_types.QFileSelector, filePath: string): string =
  let v_ms = fcQFileSelector_select(self.h, struct_miqt_string(data: filePath, len: csize_t(len(filePath))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc select*(self: gen_qfileselector_types.QFileSelector, filePath: gen_qurl_types.QUrl): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileSelector_selectWithFilePath(self.h, filePath.h))

proc extraSelectors*(self: gen_qfileselector_types.QFileSelector, ): seq[string] =
  var v_ma = fcQFileSelector_extraSelectors(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setExtraSelectors*(self: gen_qfileselector_types.QFileSelector, list: seq[string]): void =
  var list_CArray = newSeq[struct_miqt_string](len(list))
  for i in 0..<len(list):
    list_CArray[i] = struct_miqt_string(data: list[i], len: csize_t(len(list[i])))

  fcQFileSelector_setExtraSelectors(self.h, struct_miqt_array(len: csize_t(len(list)), data: if len(list) == 0: nil else: addr(list_CArray[0])))

proc allSelectors*(self: gen_qfileselector_types.QFileSelector, ): seq[string] =
  var v_ma = fcQFileSelector_allSelectors(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc tr*(_: type gen_qfileselector_types.QFileSelector, s: cstring, c: cstring): string =
  let v_ms = fcQFileSelector_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qfileselector_types.QFileSelector, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFileSelector_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QFileSelectormetaObjectProc* = proc(self: QFileSelector): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QFileSelectormetacastProc* = proc(self: QFileSelector, param1: cstring): pointer {.raises: [], gcsafe.}
type QFileSelectormetacallProc* = proc(self: QFileSelector, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QFileSelectoreventProc* = proc(self: QFileSelector, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFileSelectoreventFilterProc* = proc(self: QFileSelector, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFileSelectortimerEventProc* = proc(self: QFileSelector, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QFileSelectorchildEventProc* = proc(self: QFileSelector, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QFileSelectorcustomEventProc* = proc(self: QFileSelector, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFileSelectorconnectNotifyProc* = proc(self: QFileSelector, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QFileSelectordisconnectNotifyProc* = proc(self: QFileSelector, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QFileSelectorVTable* = object
  vtbl: cQFileSelectorVTable
  metaObject*: QFileSelectormetaObjectProc
  metacast*: QFileSelectormetacastProc
  metacall*: QFileSelectormetacallProc
  event*: QFileSelectoreventProc
  eventFilter*: QFileSelectoreventFilterProc
  timerEvent*: QFileSelectortimerEventProc
  childEvent*: QFileSelectorchildEventProc
  customEvent*: QFileSelectorcustomEventProc
  connectNotify*: QFileSelectorconnectNotifyProc
  disconnectNotify*: QFileSelectordisconnectNotifyProc
proc QFileSelectormetaObject*(self: gen_qfileselector_types.QFileSelector, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileSelector_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQFileSelector_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileSelectorVTable](vtbl)
  let self = QFileSelector(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QFileSelectormetacast*(self: gen_qfileselector_types.QFileSelector, param1: cstring): pointer =
  fcQFileSelector_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQFileSelector_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileSelectorVTable](vtbl)
  let self = QFileSelector(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QFileSelectormetacall*(self: gen_qfileselector_types.QFileSelector, param1: cint, param2: cint, param3: pointer): cint =
  fcQFileSelector_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQFileSelector_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFileSelectorVTable](vtbl)
  let self = QFileSelector(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFileSelectorevent*(self: gen_qfileselector_types.QFileSelector, event: gen_qcoreevent_types.QEvent): bool =
  fcQFileSelector_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQFileSelector_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSelectorVTable](vtbl)
  let self = QFileSelector(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QFileSelectoreventFilter*(self: gen_qfileselector_types.QFileSelector, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQFileSelector_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQFileSelector_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSelectorVTable](vtbl)
  let self = QFileSelector(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QFileSelectortimerEvent*(self: gen_qfileselector_types.QFileSelector, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQFileSelector_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQFileSelector_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSelectorVTable](vtbl)
  let self = QFileSelector(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QFileSelectorchildEvent*(self: gen_qfileselector_types.QFileSelector, event: gen_qcoreevent_types.QChildEvent): void =
  fcQFileSelector_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQFileSelector_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSelectorVTable](vtbl)
  let self = QFileSelector(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QFileSelectorcustomEvent*(self: gen_qfileselector_types.QFileSelector, event: gen_qcoreevent_types.QEvent): void =
  fcQFileSelector_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQFileSelector_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSelectorVTable](vtbl)
  let self = QFileSelector(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QFileSelectorconnectNotify*(self: gen_qfileselector_types.QFileSelector, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFileSelector_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQFileSelector_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSelectorVTable](vtbl)
  let self = QFileSelector(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QFileSelectordisconnectNotify*(self: gen_qfileselector_types.QFileSelector, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFileSelector_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQFileSelector_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSelectorVTable](vtbl)
  let self = QFileSelector(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qfileselector_types.QFileSelector, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQFileSelector_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qfileselector_types.QFileSelector, ): cint =
  fcQFileSelector_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qfileselector_types.QFileSelector, signal: cstring): cint =
  fcQFileSelector_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qfileselector_types.QFileSelector, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQFileSelector_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qfileselector_types.QFileSelector,
    vtbl: ref QFileSelectorVTable = nil): gen_qfileselector_types.QFileSelector =
  let vtbl = if vtbl == nil: new QFileSelectorVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFileSelectorVTable, _: ptr cQFileSelector) {.cdecl.} =
    let vtbl = cast[ref QFileSelectorVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFileSelector_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFileSelector_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFileSelector_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFileSelector_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFileSelector_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFileSelector_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFileSelector_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFileSelector_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFileSelector_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFileSelector_disconnectNotify
  gen_qfileselector_types.QFileSelector(h: fcQFileSelector_new(addr(vtbl[]), ))

proc create*(T: type gen_qfileselector_types.QFileSelector,
    parent: gen_qobject_types.QObject,
    vtbl: ref QFileSelectorVTable = nil): gen_qfileselector_types.QFileSelector =
  let vtbl = if vtbl == nil: new QFileSelectorVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFileSelectorVTable, _: ptr cQFileSelector) {.cdecl.} =
    let vtbl = cast[ref QFileSelectorVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFileSelector_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFileSelector_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFileSelector_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFileSelector_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFileSelector_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFileSelector_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFileSelector_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFileSelector_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFileSelector_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFileSelector_disconnectNotify
  gen_qfileselector_types.QFileSelector(h: fcQFileSelector_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qfileselector_types.QFileSelector): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileSelector_staticMetaObject())
proc delete*(self: gen_qfileselector_types.QFileSelector) =
  fcQFileSelector_delete(self.h)
