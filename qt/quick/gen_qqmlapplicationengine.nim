import Qt5Quick_libs

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

const cflags = gorge("pkg-config -cflags Qt5Quick")
{.compile("gen_qqmlapplicationengine.cpp", cflags).}


import gen_qqmlapplicationengine_types
export gen_qqmlapplicationengine_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qqmlengine,
  gen_qurl,
  gen_qvariant,
  std/tables
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qqmlengine,
  gen_qurl,
  gen_qvariant

type cQQmlApplicationEngine*{.exportc: "QQmlApplicationEngine", incompleteStruct.} = object

proc fcQQmlApplicationEngine_new(): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new".}
proc fcQQmlApplicationEngine_new2(url: pointer): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new2".}
proc fcQQmlApplicationEngine_new3(filePath: struct_miqt_string): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new3".}
proc fcQQmlApplicationEngine_new4(parent: pointer): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new4".}
proc fcQQmlApplicationEngine_new5(url: pointer, parent: pointer): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new5".}
proc fcQQmlApplicationEngine_new6(filePath: struct_miqt_string, parent: pointer): ptr cQQmlApplicationEngine {.importc: "QQmlApplicationEngine_new6".}
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
proc fQQmlApplicationEngine_connect_objectCreated(self: pointer, slot: int) {.importc: "QQmlApplicationEngine_connect_objectCreated".}
proc fcQQmlApplicationEngine_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlApplicationEngine_tr2".}
proc fcQQmlApplicationEngine_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlApplicationEngine_tr3".}
proc fcQQmlApplicationEngine_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlApplicationEngine_trUtf82".}
proc fcQQmlApplicationEngine_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlApplicationEngine_trUtf83".}
proc fcQQmlApplicationEngine_loadData2(self: pointer, data: struct_miqt_string, url: pointer): void {.importc: "QQmlApplicationEngine_loadData2".}
proc fQQmlApplicationEngine_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QQmlApplicationEngine_virtualbase_metaObject".}
proc fcQQmlApplicationEngine_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QQmlApplicationEngine_override_virtual_metaObject".}
proc fQQmlApplicationEngine_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QQmlApplicationEngine_virtualbase_metacast".}
proc fcQQmlApplicationEngine_override_virtual_metacast(self: pointer, slot: int) {.importc: "QQmlApplicationEngine_override_virtual_metacast".}
proc fQQmlApplicationEngine_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQmlApplicationEngine_virtualbase_metacall".}
proc fcQQmlApplicationEngine_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQmlApplicationEngine_override_virtual_metacall".}
proc fQQmlApplicationEngine_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QQmlApplicationEngine_virtualbase_event".}
proc fcQQmlApplicationEngine_override_virtual_event(self: pointer, slot: int) {.importc: "QQmlApplicationEngine_override_virtual_event".}
proc fQQmlApplicationEngine_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQmlApplicationEngine_virtualbase_eventFilter".}
proc fcQQmlApplicationEngine_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQmlApplicationEngine_override_virtual_eventFilter".}
proc fQQmlApplicationEngine_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQmlApplicationEngine_virtualbase_timerEvent".}
proc fcQQmlApplicationEngine_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQmlApplicationEngine_override_virtual_timerEvent".}
proc fQQmlApplicationEngine_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQmlApplicationEngine_virtualbase_childEvent".}
proc fcQQmlApplicationEngine_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQmlApplicationEngine_override_virtual_childEvent".}
proc fQQmlApplicationEngine_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQmlApplicationEngine_virtualbase_customEvent".}
proc fcQQmlApplicationEngine_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQmlApplicationEngine_override_virtual_customEvent".}
proc fQQmlApplicationEngine_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQmlApplicationEngine_virtualbase_connectNotify".}
proc fcQQmlApplicationEngine_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQmlApplicationEngine_override_virtual_connectNotify".}
proc fQQmlApplicationEngine_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQmlApplicationEngine_virtualbase_disconnectNotify".}
proc fcQQmlApplicationEngine_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQmlApplicationEngine_override_virtual_disconnectNotify".}
proc fcQQmlApplicationEngine_staticMetaObject(): pointer {.importc: "QQmlApplicationEngine_staticMetaObject".}
proc fcQQmlApplicationEngine_delete(self: pointer) {.importc: "QQmlApplicationEngine_delete".}


func init*(T: type QQmlApplicationEngine, h: ptr cQQmlApplicationEngine): QQmlApplicationEngine =
  T(h: h)
proc create*(T: type QQmlApplicationEngine, ): QQmlApplicationEngine =

  QQmlApplicationEngine.init(fcQQmlApplicationEngine_new())
proc create*(T: type QQmlApplicationEngine, url: gen_qurl.QUrl): QQmlApplicationEngine =

  QQmlApplicationEngine.init(fcQQmlApplicationEngine_new2(url.h))
proc create*(T: type QQmlApplicationEngine, filePath: string): QQmlApplicationEngine =

  QQmlApplicationEngine.init(fcQQmlApplicationEngine_new3(struct_miqt_string(data: filePath, len: csize_t(len(filePath)))))
proc create2*(T: type QQmlApplicationEngine, parent: gen_qobject.QObject): QQmlApplicationEngine =

  QQmlApplicationEngine.init(fcQQmlApplicationEngine_new4(parent.h))
proc create*(T: type QQmlApplicationEngine, url: gen_qurl.QUrl, parent: gen_qobject.QObject): QQmlApplicationEngine =

  QQmlApplicationEngine.init(fcQQmlApplicationEngine_new5(url.h, parent.h))
proc create*(T: type QQmlApplicationEngine, filePath: string, parent: gen_qobject.QObject): QQmlApplicationEngine =

  QQmlApplicationEngine.init(fcQQmlApplicationEngine_new6(struct_miqt_string(data: filePath, len: csize_t(len(filePath))), parent.h))
proc metaObject*(self: QQmlApplicationEngine, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQQmlApplicationEngine_metaObject(self.h))

proc metacast*(self: QQmlApplicationEngine, param1: cstring): pointer =

  fcQQmlApplicationEngine_metacast(self.h, param1)

proc metacall*(self: QQmlApplicationEngine, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQQmlApplicationEngine_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QQmlApplicationEngine, s: cstring): string =

  let v_ms = fcQQmlApplicationEngine_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QQmlApplicationEngine, s: cstring): string =

  let v_ms = fcQQmlApplicationEngine_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc rootObjects*(self: QQmlApplicationEngine, ): seq[gen_qobject.QObject] =

  var v_ma = fcQQmlApplicationEngine_rootObjects(self.h)
  var vx_ret = newSeq[gen_qobject.QObject](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qobject.QObject(h: v_outCast[i])
  vx_ret

proc rootObjects2*(self: QQmlApplicationEngine, ): seq[gen_qobject.QObject] =

  var v_ma = fcQQmlApplicationEngine_rootObjects2(self.h)
  var vx_ret = newSeq[gen_qobject.QObject](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qobject.QObject(h: v_outCast[i])
  vx_ret

proc load*(self: QQmlApplicationEngine, url: gen_qurl.QUrl): void =

  fcQQmlApplicationEngine_load(self.h, url.h)

proc loadWithFilePath*(self: QQmlApplicationEngine, filePath: string): void =

  fcQQmlApplicationEngine_loadWithFilePath(self.h, struct_miqt_string(data: filePath, len: csize_t(len(filePath))))

proc setInitialProperties*(self: QQmlApplicationEngine, initialProperties: Table[string,gen_qvariant.QVariant]): void =

  var initialProperties_Keys_CArray = newSeq[struct_miqt_string](len(initialProperties))
  var initialProperties_Values_CArray = newSeq[pointer](len(initialProperties))
  var initialProperties_ctr = 0
  for initialPropertiesk, initialPropertiesv in initialProperties:
    initialProperties_Keys_CArray[initialProperties_ctr] = struct_miqt_string(data: initialProperties_k, len: csize_t(len(initialProperties_k)))
    initialProperties_Values_CArray[initialProperties_ctr] = initialProperties_v.h
    initialProperties_ctr += 1

  fcQQmlApplicationEngine_setInitialProperties(self.h, struct_miqt_map(len: csize_t(len(initialProperties)),keys: if len(initialProperties) == 0: nil else: addr(initialProperties_Keys_CArray[0]), values: if len(initialProperties) == 0: nil else: addr(initialProperties_Values_CArray[0]),))

proc loadData*(self: QQmlApplicationEngine, data: seq[byte]): void =

  fcQQmlApplicationEngine_loadData(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc objectCreated*(self: QQmlApplicationEngine, objectVal: gen_qobject.QObject, url: gen_qurl.QUrl): void =

  fcQQmlApplicationEngine_objectCreated(self.h, objectVal.h, url.h)

proc miqt_exec_callback_QQmlApplicationEngine_objectCreated(slot: int, objectVal: pointer, url: pointer) {.exportc.} =
  type Cb = proc(objectVal: gen_qobject.QObject, url: gen_qurl.QUrl)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: objectVal)

  let slotval2 = gen_qurl.QUrl(h: url)


  nimfunc[](slotval1, slotval2)

proc onobjectCreated*(self: QQmlApplicationEngine, slot: proc(objectVal: gen_qobject.QObject, url: gen_qurl.QUrl)) =
  type Cb = proc(objectVal: gen_qobject.QObject, url: gen_qurl.QUrl)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQmlApplicationEngine_connect_objectCreated(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QQmlApplicationEngine, s: cstring, c: cstring): string =

  let v_ms = fcQQmlApplicationEngine_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QQmlApplicationEngine, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQmlApplicationEngine_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QQmlApplicationEngine, s: cstring, c: cstring): string =

  let v_ms = fcQQmlApplicationEngine_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QQmlApplicationEngine, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQmlApplicationEngine_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc loadData2*(self: QQmlApplicationEngine, data: seq[byte], url: gen_qurl.QUrl): void =

  fcQQmlApplicationEngine_loadData2(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), url.h)

proc callVirtualBase_metaObject(self: QQmlApplicationEngine, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQQmlApplicationEngine_virtualbase_metaObject(self.h))

type QQmlApplicationEnginemetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QQmlApplicationEngine, slot: proc(super: QQmlApplicationEnginemetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QQmlApplicationEnginemetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlApplicationEngine_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlApplicationEngine_metaObject(self: ptr cQQmlApplicationEngine, slot: int): pointer {.exportc: "miqt_exec_callback_QQmlApplicationEngine_metaObject ".} =
  type Cb = proc(super: QQmlApplicationEnginemetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QQmlApplicationEngine(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QQmlApplicationEngine, param1: cstring): pointer =


  fQQmlApplicationEngine_virtualbase_metacast(self.h, param1)

type QQmlApplicationEnginemetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QQmlApplicationEngine, slot: proc(super: QQmlApplicationEnginemetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QQmlApplicationEnginemetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlApplicationEngine_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlApplicationEngine_metacast(self: ptr cQQmlApplicationEngine, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QQmlApplicationEngine_metacast ".} =
  type Cb = proc(super: QQmlApplicationEnginemetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QQmlApplicationEngine(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QQmlApplicationEngine, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQQmlApplicationEngine_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQmlApplicationEnginemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QQmlApplicationEngine, slot: proc(super: QQmlApplicationEnginemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QQmlApplicationEnginemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlApplicationEngine_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlApplicationEngine_metacall(self: ptr cQQmlApplicationEngine, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQmlApplicationEngine_metacall ".} =
  type Cb = proc(super: QQmlApplicationEnginemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QQmlApplicationEngine(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QQmlApplicationEngine, param1: gen_qcoreevent.QEvent): bool =


  fQQmlApplicationEngine_virtualbase_event(self.h, param1.h)

type QQmlApplicationEngineeventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QQmlApplicationEngine, slot: proc(super: QQmlApplicationEngineeventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQmlApplicationEngineeventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlApplicationEngine_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlApplicationEngine_event(self: ptr cQQmlApplicationEngine, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QQmlApplicationEngine_event ".} =
  type Cb = proc(super: QQmlApplicationEngineeventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QQmlApplicationEngine(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QQmlApplicationEngine, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQQmlApplicationEngine_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQmlApplicationEngineeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QQmlApplicationEngine, slot: proc(super: QQmlApplicationEngineeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQmlApplicationEngineeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlApplicationEngine_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlApplicationEngine_eventFilter(self: ptr cQQmlApplicationEngine, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlApplicationEngine_eventFilter ".} =
  type Cb = proc(super: QQmlApplicationEngineeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QQmlApplicationEngine(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QQmlApplicationEngine, event: gen_qcoreevent.QTimerEvent): void =


  fQQmlApplicationEngine_virtualbase_timerEvent(self.h, event.h)

type QQmlApplicationEnginetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QQmlApplicationEngine, slot: proc(super: QQmlApplicationEnginetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlApplicationEnginetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlApplicationEngine_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlApplicationEngine_timerEvent(self: ptr cQQmlApplicationEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlApplicationEngine_timerEvent ".} =
  type Cb = proc(super: QQmlApplicationEnginetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QQmlApplicationEngine(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QQmlApplicationEngine, event: gen_qcoreevent.QChildEvent): void =


  fQQmlApplicationEngine_virtualbase_childEvent(self.h, event.h)

type QQmlApplicationEnginechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QQmlApplicationEngine, slot: proc(super: QQmlApplicationEnginechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlApplicationEnginechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlApplicationEngine_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlApplicationEngine_childEvent(self: ptr cQQmlApplicationEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlApplicationEngine_childEvent ".} =
  type Cb = proc(super: QQmlApplicationEnginechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QQmlApplicationEngine(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QQmlApplicationEngine, event: gen_qcoreevent.QEvent): void =


  fQQmlApplicationEngine_virtualbase_customEvent(self.h, event.h)

type QQmlApplicationEnginecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QQmlApplicationEngine, slot: proc(super: QQmlApplicationEnginecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlApplicationEnginecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlApplicationEngine_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlApplicationEngine_customEvent(self: ptr cQQmlApplicationEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlApplicationEngine_customEvent ".} =
  type Cb = proc(super: QQmlApplicationEnginecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QQmlApplicationEngine(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QQmlApplicationEngine, signal: gen_qmetaobject.QMetaMethod): void =


  fQQmlApplicationEngine_virtualbase_connectNotify(self.h, signal.h)

type QQmlApplicationEngineconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QQmlApplicationEngine, slot: proc(super: QQmlApplicationEngineconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlApplicationEngineconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlApplicationEngine_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlApplicationEngine_connectNotify(self: ptr cQQmlApplicationEngine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlApplicationEngine_connectNotify ".} =
  type Cb = proc(super: QQmlApplicationEngineconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QQmlApplicationEngine(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QQmlApplicationEngine, signal: gen_qmetaobject.QMetaMethod): void =


  fQQmlApplicationEngine_virtualbase_disconnectNotify(self.h, signal.h)

type QQmlApplicationEnginedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QQmlApplicationEngine, slot: proc(super: QQmlApplicationEnginedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlApplicationEnginedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlApplicationEngine_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlApplicationEngine_disconnectNotify(self: ptr cQQmlApplicationEngine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlApplicationEngine_disconnectNotify ".} =
  type Cb = proc(super: QQmlApplicationEnginedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QQmlApplicationEngine(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QQmlApplicationEngine): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQQmlApplicationEngine_staticMetaObject())
proc delete*(self: QQmlApplicationEngine) =
  fcQQmlApplicationEngine_delete(self.h)
