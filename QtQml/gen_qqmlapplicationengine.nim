import Qt5Qml_libs

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

const cflags = gorge("pkg-config --cflags Qt5Qml")
{.compile("gen_qqmlapplicationengine.cpp", cflags).}


import gen_qqmlapplicationengine_types
export gen_qqmlapplicationengine_types

import
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qqmlengine,
  gen_qurl_types,
  gen_qvariant_types,
  std/tables
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qqmlengine,
  gen_qurl_types,
  gen_qvariant_types

type cQQmlApplicationEngine*{.exportc: "QQmlApplicationEngine", incompleteStruct.} = object

proc fcQQmlApplicationEngine_metaObject(self: pointer, ): pointer {.importc: "QQmlApplicationEngine_metaObject".}
proc fcQQmlApplicationEngine_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlApplicationEngine_metacast".}
proc fcQQmlApplicationEngine_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlApplicationEngine_metacall".}
proc fcQQmlApplicationEngine_tr(s: cstring): struct_miqt_string {.importc: "QQmlApplicationEngine_tr".}
proc fcQQmlApplicationEngine_trUtf8(s: cstring): struct_miqt_string {.importc: "QQmlApplicationEngine_trUtf8".}
proc fcQQmlApplicationEngine_rootObjects(self: pointer, ): struct_miqt_array {.importc: "QQmlApplicationEngine_rootObjects".}
proc fcQQmlApplicationEngine_rootObjects2(self: pointer, ): struct_miqt_array {.importc: "QQmlApplicationEngine_rootObjects2".}
proc fcQQmlApplicationEngine_load(self: pointer, url: pointer): void {.importc: "QQmlApplicationEngine_load".}
proc fcQQmlApplicationEngine_loadWithFilePath(self: pointer, filePath: struct_miqt_string): void {.importc: "QQmlApplicationEngine_loadWithFilePath".}
proc fcQQmlApplicationEngine_setInitialProperties(self: pointer, initialProperties: struct_miqt_map): void {.importc: "QQmlApplicationEngine_setInitialProperties".}
proc fcQQmlApplicationEngine_loadData(self: pointer, data: struct_miqt_string): void {.importc: "QQmlApplicationEngine_loadData".}
proc fcQQmlApplicationEngine_objectCreated(self: pointer, objectVal: pointer, url: pointer): void {.importc: "QQmlApplicationEngine_objectCreated".}
proc fcQQmlApplicationEngine_connect_objectCreated(self: pointer, slot: int) {.importc: "QQmlApplicationEngine_connect_objectCreated".}
proc fcQQmlApplicationEngine_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlApplicationEngine_tr2".}
proc fcQQmlApplicationEngine_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlApplicationEngine_tr3".}
proc fcQQmlApplicationEngine_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlApplicationEngine_trUtf82".}
proc fcQQmlApplicationEngine_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlApplicationEngine_trUtf83".}
proc fcQQmlApplicationEngine_loadData2(self: pointer, data: struct_miqt_string, url: pointer): void {.importc: "QQmlApplicationEngine_loadData2".}
type cQQmlApplicationEngineVTable = object
  destructor*: proc(vtbl: ptr cQQmlApplicationEngineVTable, self: ptr cQQmlApplicationEngine) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQmlApplicationEngine_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QQmlApplicationEngine_virtualbase_metaObject".}
proc fcQQmlApplicationEngine_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlApplicationEngine_virtualbase_metacast".}
proc fcQQmlApplicationEngine_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlApplicationEngine_virtualbase_metacall".}
proc fcQQmlApplicationEngine_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QQmlApplicationEngine_virtualbase_event".}
proc fcQQmlApplicationEngine_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQmlApplicationEngine_virtualbase_eventFilter".}
proc fcQQmlApplicationEngine_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQmlApplicationEngine_virtualbase_timerEvent".}
proc fcQQmlApplicationEngine_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQmlApplicationEngine_virtualbase_childEvent".}
proc fcQQmlApplicationEngine_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQmlApplicationEngine_virtualbase_customEvent".}
proc fcQQmlApplicationEngine_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQmlApplicationEngine_virtualbase_connectNotify".}
proc fcQQmlApplicationEngine_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQmlApplicationEngine_virtualbase_disconnectNotify".}
proc fcQQmlApplicationEngine_new(vtbl: pointer, ): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new".}
proc fcQQmlApplicationEngine_new2(vtbl: pointer, url: pointer): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new2".}
proc fcQQmlApplicationEngine_new3(vtbl: pointer, filePath: struct_miqt_string): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new3".}
proc fcQQmlApplicationEngine_new4(vtbl: pointer, parent: pointer): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new4".}
proc fcQQmlApplicationEngine_new5(vtbl: pointer, url: pointer, parent: pointer): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new5".}
proc fcQQmlApplicationEngine_new6(vtbl: pointer, filePath: struct_miqt_string, parent: pointer): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new6".}
proc fcQQmlApplicationEngine_staticMetaObject(): pointer {.importc: "QQmlApplicationEngine_staticMetaObject".}
proc fcQQmlApplicationEngine_delete(self: pointer) {.importc: "QQmlApplicationEngine_delete".}

proc metaObject*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlApplicationEngine_metaObject(self.h))

proc metacast*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, param1: cstring): pointer =
  fcQQmlApplicationEngine_metacast(self.h, param1)

proc metacall*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlApplicationEngine_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qqmlapplicationengine_types.QQmlApplicationEngine, s: cstring): string =
  let v_ms = fcQQmlApplicationEngine_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlapplicationengine_types.QQmlApplicationEngine, s: cstring): string =
  let v_ms = fcQQmlApplicationEngine_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc rootObjects*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, ): seq[gen_qobject_types.QObject] =
  var v_ma = fcQQmlApplicationEngine_rootObjects(self.h)
  var vx_ret = newSeq[gen_qobject_types.QObject](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qobject_types.QObject(h: v_outCast[i])
  vx_ret

proc rootObjects2*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, ): seq[gen_qobject_types.QObject] =
  var v_ma = fcQQmlApplicationEngine_rootObjects2(self.h)
  var vx_ret = newSeq[gen_qobject_types.QObject](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qobject_types.QObject(h: v_outCast[i])
  vx_ret

proc load*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, url: gen_qurl_types.QUrl): void =
  fcQQmlApplicationEngine_load(self.h, url.h)

proc load*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, filePath: string): void =
  fcQQmlApplicationEngine_loadWithFilePath(self.h, struct_miqt_string(data: filePath, len: csize_t(len(filePath))))

proc setInitialProperties*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, initialProperties: Table[string,gen_qvariant_types.QVariant]): void =
  var initialProperties_Keys_CArray = newSeq[struct_miqt_string](len(initialProperties))
  var initialProperties_Values_CArray = newSeq[pointer](len(initialProperties))
  var initialProperties_ctr = 0
  for initialPropertiesk, initialPropertiesv in initialProperties:
    initialProperties_Keys_CArray[initialProperties_ctr] = struct_miqt_string(data: initialProperties_k, len: csize_t(len(initialProperties_k)))
    initialProperties_Values_CArray[initialProperties_ctr] = initialProperties_v.h
    initialProperties_ctr += 1

  fcQQmlApplicationEngine_setInitialProperties(self.h, struct_miqt_map(len: csize_t(len(initialProperties)),keys: if len(initialProperties) == 0: nil else: addr(initialProperties_Keys_CArray[0]), values: if len(initialProperties) == 0: nil else: addr(initialProperties_Values_CArray[0]),))

proc loadData*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, data: seq[byte]): void =
  fcQQmlApplicationEngine_loadData(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc objectCreated*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, objectVal: gen_qobject_types.QObject, url: gen_qurl_types.QUrl): void =
  fcQQmlApplicationEngine_objectCreated(self.h, objectVal.h, url.h)

type QQmlApplicationEngineobjectCreatedSlot* = proc(objectVal: gen_qobject_types.QObject, url: gen_qurl_types.QUrl)
proc miqt_exec_callback_cQQmlApplicationEngine_objectCreated(slot: int, objectVal: pointer, url: pointer) {.exportc: "miqt_exec_callback_QQmlApplicationEngine_objectCreated".} =
  let nimfunc = cast[ptr QQmlApplicationEngineobjectCreatedSlot](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: objectVal)

  let slotval2 = gen_qurl_types.QUrl(h: url)

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQQmlApplicationEngine_objectCreated_release(slot: int) {.exportc: "miqt_exec_callback_QQmlApplicationEngine_objectCreated_release".} =
  let nimfunc = cast[ref QQmlApplicationEngineobjectCreatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onobjectCreated*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, slot: QQmlApplicationEngineobjectCreatedSlot) =
  var tmp = new QQmlApplicationEngineobjectCreatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlApplicationEngine_connect_objectCreated(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qqmlapplicationengine_types.QQmlApplicationEngine, s: cstring, c: cstring): string =
  let v_ms = fcQQmlApplicationEngine_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qqmlapplicationengine_types.QQmlApplicationEngine, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlApplicationEngine_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlapplicationengine_types.QQmlApplicationEngine, s: cstring, c: cstring): string =
  let v_ms = fcQQmlApplicationEngine_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlapplicationengine_types.QQmlApplicationEngine, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlApplicationEngine_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc loadData*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, data: seq[byte], url: gen_qurl_types.QUrl): void =
  fcQQmlApplicationEngine_loadData2(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), url.h)

type QQmlApplicationEnginemetaObjectProc* = proc(self: QQmlApplicationEngine): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQmlApplicationEnginemetacastProc* = proc(self: QQmlApplicationEngine, param1: cstring): pointer {.raises: [], gcsafe.}
type QQmlApplicationEnginemetacallProc* = proc(self: QQmlApplicationEngine, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQmlApplicationEngineeventProc* = proc(self: QQmlApplicationEngine, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQmlApplicationEngineeventFilterProc* = proc(self: QQmlApplicationEngine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQmlApplicationEnginetimerEventProc* = proc(self: QQmlApplicationEngine, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQmlApplicationEnginechildEventProc* = proc(self: QQmlApplicationEngine, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQmlApplicationEnginecustomEventProc* = proc(self: QQmlApplicationEngine, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQmlApplicationEngineconnectNotifyProc* = proc(self: QQmlApplicationEngine, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQmlApplicationEnginedisconnectNotifyProc* = proc(self: QQmlApplicationEngine, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQmlApplicationEngineVTable* = object
  vtbl: cQQmlApplicationEngineVTable
  metaObject*: QQmlApplicationEnginemetaObjectProc
  metacast*: QQmlApplicationEnginemetacastProc
  metacall*: QQmlApplicationEnginemetacallProc
  event*: QQmlApplicationEngineeventProc
  eventFilter*: QQmlApplicationEngineeventFilterProc
  timerEvent*: QQmlApplicationEnginetimerEventProc
  childEvent*: QQmlApplicationEnginechildEventProc
  customEvent*: QQmlApplicationEnginecustomEventProc
  connectNotify*: QQmlApplicationEngineconnectNotifyProc
  disconnectNotify*: QQmlApplicationEnginedisconnectNotifyProc
proc QQmlApplicationEnginemetaObject*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlApplicationEngine_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQQmlApplicationEngine_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](vtbl)
  let self = QQmlApplicationEngine(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QQmlApplicationEnginemetacast*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, param1: cstring): pointer =
  fcQQmlApplicationEngine_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQQmlApplicationEngine_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](vtbl)
  let self = QQmlApplicationEngine(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQmlApplicationEnginemetacall*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlApplicationEngine_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQQmlApplicationEngine_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](vtbl)
  let self = QQmlApplicationEngine(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QQmlApplicationEngineevent*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, param1: gen_qcoreevent_types.QEvent): bool =
  fcQQmlApplicationEngine_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQQmlApplicationEngine_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](vtbl)
  let self = QQmlApplicationEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQmlApplicationEngineeventFilter*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlApplicationEngine_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQQmlApplicationEngine_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](vtbl)
  let self = QQmlApplicationEngine(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQmlApplicationEnginetimerEvent*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQmlApplicationEngine_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQQmlApplicationEngine_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](vtbl)
  let self = QQmlApplicationEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QQmlApplicationEnginechildEvent*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQmlApplicationEngine_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQQmlApplicationEngine_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](vtbl)
  let self = QQmlApplicationEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QQmlApplicationEnginecustomEvent*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, event: gen_qcoreevent_types.QEvent): void =
  fcQQmlApplicationEngine_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQQmlApplicationEngine_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](vtbl)
  let self = QQmlApplicationEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QQmlApplicationEngineconnectNotify*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlApplicationEngine_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQmlApplicationEngine_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](vtbl)
  let self = QQmlApplicationEngine(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QQmlApplicationEnginedisconnectNotify*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlApplicationEngine_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQmlApplicationEngine_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlApplicationEngineVTable](vtbl)
  let self = QQmlApplicationEngine(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    vtbl: ref QQmlApplicationEngineVTable = nil): gen_qqmlapplicationengine_types.QQmlApplicationEngine =
  let vtbl = if vtbl == nil: new QQmlApplicationEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlApplicationEngineVTable, _: ptr cQQmlApplicationEngine) {.cdecl.} =
    let vtbl = cast[ref QQmlApplicationEngineVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlApplicationEngine_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlApplicationEngine_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlApplicationEngine_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlApplicationEngine_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlApplicationEngine_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlApplicationEngine_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlApplicationEngine_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlApplicationEngine_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlApplicationEngine_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlApplicationEngine_disconnectNotify
  gen_qqmlapplicationengine_types.QQmlApplicationEngine(h: fcQQmlApplicationEngine_new(addr(vtbl[]), ))

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    url: gen_qurl_types.QUrl,
    vtbl: ref QQmlApplicationEngineVTable = nil): gen_qqmlapplicationengine_types.QQmlApplicationEngine =
  let vtbl = if vtbl == nil: new QQmlApplicationEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlApplicationEngineVTable, _: ptr cQQmlApplicationEngine) {.cdecl.} =
    let vtbl = cast[ref QQmlApplicationEngineVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlApplicationEngine_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlApplicationEngine_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlApplicationEngine_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlApplicationEngine_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlApplicationEngine_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlApplicationEngine_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlApplicationEngine_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlApplicationEngine_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlApplicationEngine_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlApplicationEngine_disconnectNotify
  gen_qqmlapplicationengine_types.QQmlApplicationEngine(h: fcQQmlApplicationEngine_new2(addr(vtbl[]), url.h))

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    filePath: string,
    vtbl: ref QQmlApplicationEngineVTable = nil): gen_qqmlapplicationengine_types.QQmlApplicationEngine =
  let vtbl = if vtbl == nil: new QQmlApplicationEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlApplicationEngineVTable, _: ptr cQQmlApplicationEngine) {.cdecl.} =
    let vtbl = cast[ref QQmlApplicationEngineVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlApplicationEngine_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlApplicationEngine_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlApplicationEngine_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlApplicationEngine_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlApplicationEngine_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlApplicationEngine_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlApplicationEngine_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlApplicationEngine_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlApplicationEngine_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlApplicationEngine_disconnectNotify
  gen_qqmlapplicationengine_types.QQmlApplicationEngine(h: fcQQmlApplicationEngine_new3(addr(vtbl[]), struct_miqt_string(data: filePath, len: csize_t(len(filePath)))))

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    parent: gen_qobject_types.QObject,
    vtbl: ref QQmlApplicationEngineVTable = nil): gen_qqmlapplicationengine_types.QQmlApplicationEngine =
  let vtbl = if vtbl == nil: new QQmlApplicationEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlApplicationEngineVTable, _: ptr cQQmlApplicationEngine) {.cdecl.} =
    let vtbl = cast[ref QQmlApplicationEngineVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlApplicationEngine_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlApplicationEngine_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlApplicationEngine_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlApplicationEngine_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlApplicationEngine_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlApplicationEngine_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlApplicationEngine_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlApplicationEngine_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlApplicationEngine_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlApplicationEngine_disconnectNotify
  gen_qqmlapplicationengine_types.QQmlApplicationEngine(h: fcQQmlApplicationEngine_new4(addr(vtbl[]), parent.h))

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    url: gen_qurl_types.QUrl, parent: gen_qobject_types.QObject,
    vtbl: ref QQmlApplicationEngineVTable = nil): gen_qqmlapplicationengine_types.QQmlApplicationEngine =
  let vtbl = if vtbl == nil: new QQmlApplicationEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlApplicationEngineVTable, _: ptr cQQmlApplicationEngine) {.cdecl.} =
    let vtbl = cast[ref QQmlApplicationEngineVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlApplicationEngine_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlApplicationEngine_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlApplicationEngine_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlApplicationEngine_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlApplicationEngine_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlApplicationEngine_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlApplicationEngine_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlApplicationEngine_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlApplicationEngine_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlApplicationEngine_disconnectNotify
  gen_qqmlapplicationengine_types.QQmlApplicationEngine(h: fcQQmlApplicationEngine_new5(addr(vtbl[]), url.h, parent.h))

proc create*(T: type gen_qqmlapplicationengine_types.QQmlApplicationEngine,
    filePath: string, parent: gen_qobject_types.QObject,
    vtbl: ref QQmlApplicationEngineVTable = nil): gen_qqmlapplicationengine_types.QQmlApplicationEngine =
  let vtbl = if vtbl == nil: new QQmlApplicationEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlApplicationEngineVTable, _: ptr cQQmlApplicationEngine) {.cdecl.} =
    let vtbl = cast[ref QQmlApplicationEngineVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlApplicationEngine_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlApplicationEngine_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlApplicationEngine_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlApplicationEngine_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlApplicationEngine_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlApplicationEngine_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlApplicationEngine_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlApplicationEngine_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlApplicationEngine_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlApplicationEngine_disconnectNotify
  gen_qqmlapplicationengine_types.QQmlApplicationEngine(h: fcQQmlApplicationEngine_new6(addr(vtbl[]), struct_miqt_string(data: filePath, len: csize_t(len(filePath))), parent.h))

proc staticMetaObject*(_: type gen_qqmlapplicationengine_types.QQmlApplicationEngine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlApplicationEngine_staticMetaObject())
proc delete*(self: gen_qqmlapplicationengine_types.QQmlApplicationEngine) =
  fcQQmlApplicationEngine_delete(self.h)
