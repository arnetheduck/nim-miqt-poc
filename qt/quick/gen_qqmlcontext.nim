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
{.compile("gen_qqmlcontext.cpp", cflags).}


import gen_qqmlcontext_types
export gen_qqmlcontext_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qqmlengine,
  gen_qurl,
  gen_qvariant
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qqmlengine,
  gen_qurl,
  gen_qvariant

type cQQmlContext*{.exportc: "QQmlContext", incompleteStruct.} = object
type cQQmlContextPropertyPair*{.exportc: "QQmlContext__PropertyPair", incompleteStruct.} = object

proc fcQQmlContext_new(parent: pointer): ptr cQQmlContext {.importc: "QQmlContext_new".}
proc fcQQmlContext_new2(parent: pointer): ptr cQQmlContext {.importc: "QQmlContext_new2".}
proc fcQQmlContext_new3(parent: pointer, objParent: pointer): ptr cQQmlContext {.importc: "QQmlContext_new3".}
proc fcQQmlContext_new4(parent: pointer, objParent: pointer): ptr cQQmlContext {.importc: "QQmlContext_new4".}
proc fcQQmlContext_metaObject(self: pointer, ): pointer {.importc: "QQmlContext_metaObject".}
proc fcQQmlContext_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlContext_metacast".}
proc fcQQmlContext_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlContext_metacall".}
proc fcQQmlContext_tr(s: cstring): struct_miqt_string {.importc: "QQmlContext_tr".}
proc fcQQmlContext_trUtf8(s: cstring): struct_miqt_string {.importc: "QQmlContext_trUtf8".}
proc fcQQmlContext_isValid(self: pointer, ): bool {.importc: "QQmlContext_isValid".}
proc fcQQmlContext_engine(self: pointer, ): pointer {.importc: "QQmlContext_engine".}
proc fcQQmlContext_parentContext(self: pointer, ): pointer {.importc: "QQmlContext_parentContext".}
proc fcQQmlContext_contextObject(self: pointer, ): pointer {.importc: "QQmlContext_contextObject".}
proc fcQQmlContext_setContextObject(self: pointer, contextObject: pointer): void {.importc: "QQmlContext_setContextObject".}
proc fcQQmlContext_contextProperty(self: pointer, param1: struct_miqt_string): pointer {.importc: "QQmlContext_contextProperty".}
proc fcQQmlContext_setContextProperty(self: pointer, param1: struct_miqt_string, param2: pointer): void {.importc: "QQmlContext_setContextProperty".}
proc fcQQmlContext_setContextProperty2(self: pointer, param1: struct_miqt_string, param2: pointer): void {.importc: "QQmlContext_setContextProperty2".}
proc fcQQmlContext_setContextProperties(self: pointer, properties: struct_miqt_array): void {.importc: "QQmlContext_setContextProperties".}
proc fcQQmlContext_nameForObject(self: pointer, param1: pointer): struct_miqt_string {.importc: "QQmlContext_nameForObject".}
proc fcQQmlContext_resolvedUrl(self: pointer, param1: pointer): pointer {.importc: "QQmlContext_resolvedUrl".}
proc fcQQmlContext_setBaseUrl(self: pointer, baseUrl: pointer): void {.importc: "QQmlContext_setBaseUrl".}
proc fcQQmlContext_baseUrl(self: pointer, ): pointer {.importc: "QQmlContext_baseUrl".}
proc fcQQmlContext_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlContext_tr2".}
proc fcQQmlContext_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlContext_tr3".}
proc fcQQmlContext_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlContext_trUtf82".}
proc fcQQmlContext_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlContext_trUtf83".}
proc fQQmlContext_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QQmlContext_virtualbase_metaObject".}
proc fcQQmlContext_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QQmlContext_override_virtual_metaObject".}
proc fQQmlContext_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QQmlContext_virtualbase_metacast".}
proc fcQQmlContext_override_virtual_metacast(self: pointer, slot: int) {.importc: "QQmlContext_override_virtual_metacast".}
proc fQQmlContext_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQmlContext_virtualbase_metacall".}
proc fcQQmlContext_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQmlContext_override_virtual_metacall".}
proc fQQmlContext_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QQmlContext_virtualbase_event".}
proc fcQQmlContext_override_virtual_event(self: pointer, slot: int) {.importc: "QQmlContext_override_virtual_event".}
proc fQQmlContext_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQmlContext_virtualbase_eventFilter".}
proc fcQQmlContext_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQmlContext_override_virtual_eventFilter".}
proc fQQmlContext_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQmlContext_virtualbase_timerEvent".}
proc fcQQmlContext_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQmlContext_override_virtual_timerEvent".}
proc fQQmlContext_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQmlContext_virtualbase_childEvent".}
proc fcQQmlContext_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQmlContext_override_virtual_childEvent".}
proc fQQmlContext_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQmlContext_virtualbase_customEvent".}
proc fcQQmlContext_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQmlContext_override_virtual_customEvent".}
proc fQQmlContext_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQmlContext_virtualbase_connectNotify".}
proc fcQQmlContext_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQmlContext_override_virtual_connectNotify".}
proc fQQmlContext_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQmlContext_virtualbase_disconnectNotify".}
proc fcQQmlContext_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQmlContext_override_virtual_disconnectNotify".}
proc fcQQmlContext_staticMetaObject(): pointer {.importc: "QQmlContext_staticMetaObject".}
proc fcQQmlContext_delete(self: pointer) {.importc: "QQmlContext_delete".}
proc fcQQmlContextPropertyPair_new(param1: pointer): ptr cQQmlContextPropertyPair {.importc: "QQmlContext__PropertyPair_new".}
proc fcQQmlContextPropertyPair_operatorAssign(self: pointer, param1: pointer): void {.importc: "QQmlContext__PropertyPair_operatorAssign".}
proc fcQQmlContextPropertyPair_delete(self: pointer) {.importc: "QQmlContext__PropertyPair_delete".}


func init*(T: type QQmlContext, h: ptr cQQmlContext): QQmlContext =
  T(h: h)
proc create*(T: type QQmlContext, parent: gen_qqmlengine.QQmlEngine): QQmlContext =

  QQmlContext.init(fcQQmlContext_new(parent.h))
proc create2*(T: type QQmlContext, parent: QQmlContext): QQmlContext =

  QQmlContext.init(fcQQmlContext_new2(parent.h))
proc create*(T: type QQmlContext, parent: gen_qqmlengine.QQmlEngine, objParent: gen_qobject.QObject): QQmlContext =

  QQmlContext.init(fcQQmlContext_new3(parent.h, objParent.h))
proc create2*(T: type QQmlContext, parent: QQmlContext, objParent: gen_qobject.QObject): QQmlContext =

  QQmlContext.init(fcQQmlContext_new4(parent.h, objParent.h))
proc metaObject*(self: QQmlContext, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQQmlContext_metaObject(self.h))

proc metacast*(self: QQmlContext, param1: cstring): pointer =

  fcQQmlContext_metacast(self.h, param1)

proc metacall*(self: QQmlContext, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQQmlContext_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QQmlContext, s: cstring): string =

  let v_ms = fcQQmlContext_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QQmlContext, s: cstring): string =

  let v_ms = fcQQmlContext_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isValid*(self: QQmlContext, ): bool =

  fcQQmlContext_isValid(self.h)

proc engine*(self: QQmlContext, ): gen_qqmlengine.QQmlEngine =

  gen_qqmlengine.QQmlEngine(h: fcQQmlContext_engine(self.h))

proc parentContext*(self: QQmlContext, ): QQmlContext =

  QQmlContext(h: fcQQmlContext_parentContext(self.h))

proc contextObject*(self: QQmlContext, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQQmlContext_contextObject(self.h))

proc setContextObject*(self: QQmlContext, contextObject: gen_qobject.QObject): void =

  fcQQmlContext_setContextObject(self.h, contextObject.h)

proc contextProperty*(self: QQmlContext, param1: string): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQQmlContext_contextProperty(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1)))))

proc setContextProperty*(self: QQmlContext, param1: string, param2: gen_qobject.QObject): void =

  fcQQmlContext_setContextProperty(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))), param2.h)

proc setContextProperty2*(self: QQmlContext, param1: string, param2: gen_qvariant.QVariant): void =

  fcQQmlContext_setContextProperty2(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))), param2.h)

proc setContextProperties*(self: QQmlContext, properties: seq[QQmlContextPropertyPair]): void =

  var properties_CArray = newSeq[pointer](len(properties))
  for i in 0..<len(properties):
    properties_CArray[i] = properties[i].h

  fcQQmlContext_setContextProperties(self.h, struct_miqt_array(len: csize_t(len(properties)), data: if len(properties) == 0: nil else: addr(properties_CArray[0])))

proc nameForObject*(self: QQmlContext, param1: gen_qobject.QObject): string =

  let v_ms = fcQQmlContext_nameForObject(self.h, param1.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc resolvedUrl*(self: QQmlContext, param1: gen_qurl.QUrl): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQQmlContext_resolvedUrl(self.h, param1.h))

proc setBaseUrl*(self: QQmlContext, baseUrl: gen_qurl.QUrl): void =

  fcQQmlContext_setBaseUrl(self.h, baseUrl.h)

proc baseUrl*(self: QQmlContext, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQQmlContext_baseUrl(self.h))

proc tr2*(_: type QQmlContext, s: cstring, c: cstring): string =

  let v_ms = fcQQmlContext_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QQmlContext, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQmlContext_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QQmlContext, s: cstring, c: cstring): string =

  let v_ms = fcQQmlContext_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QQmlContext, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQmlContext_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QQmlContext, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQQmlContext_virtualbase_metaObject(self.h))

type QQmlContextmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QQmlContext, slot: proc(super: QQmlContextmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QQmlContextmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlContext_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlContext_metaObject(self: ptr cQQmlContext, slot: int): pointer {.exportc: "miqt_exec_callback_QQmlContext_metaObject ".} =
  type Cb = proc(super: QQmlContextmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QQmlContext(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QQmlContext, param1: cstring): pointer =


  fQQmlContext_virtualbase_metacast(self.h, param1)

type QQmlContextmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QQmlContext, slot: proc(super: QQmlContextmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QQmlContextmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlContext_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlContext_metacast(self: ptr cQQmlContext, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QQmlContext_metacast ".} =
  type Cb = proc(super: QQmlContextmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QQmlContext(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QQmlContext, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQQmlContext_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQmlContextmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QQmlContext, slot: proc(super: QQmlContextmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QQmlContextmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlContext_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlContext_metacall(self: ptr cQQmlContext, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQmlContext_metacall ".} =
  type Cb = proc(super: QQmlContextmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QQmlContext(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QQmlContext, event: gen_qcoreevent.QEvent): bool =


  fQQmlContext_virtualbase_event(self.h, event.h)

type QQmlContexteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QQmlContext, slot: proc(super: QQmlContexteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQmlContexteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlContext_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlContext_event(self: ptr cQQmlContext, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlContext_event ".} =
  type Cb = proc(super: QQmlContexteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QQmlContext(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QQmlContext, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQQmlContext_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQmlContexteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QQmlContext, slot: proc(super: QQmlContexteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQmlContexteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlContext_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlContext_eventFilter(self: ptr cQQmlContext, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlContext_eventFilter ".} =
  type Cb = proc(super: QQmlContexteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QQmlContext(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QQmlContext, event: gen_qcoreevent.QTimerEvent): void =


  fQQmlContext_virtualbase_timerEvent(self.h, event.h)

type QQmlContexttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QQmlContext, slot: proc(super: QQmlContexttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlContexttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlContext_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlContext_timerEvent(self: ptr cQQmlContext, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlContext_timerEvent ".} =
  type Cb = proc(super: QQmlContexttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QQmlContext(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QQmlContext, event: gen_qcoreevent.QChildEvent): void =


  fQQmlContext_virtualbase_childEvent(self.h, event.h)

type QQmlContextchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QQmlContext, slot: proc(super: QQmlContextchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlContextchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlContext_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlContext_childEvent(self: ptr cQQmlContext, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlContext_childEvent ".} =
  type Cb = proc(super: QQmlContextchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QQmlContext(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QQmlContext, event: gen_qcoreevent.QEvent): void =


  fQQmlContext_virtualbase_customEvent(self.h, event.h)

type QQmlContextcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QQmlContext, slot: proc(super: QQmlContextcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlContextcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlContext_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlContext_customEvent(self: ptr cQQmlContext, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlContext_customEvent ".} =
  type Cb = proc(super: QQmlContextcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QQmlContext(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QQmlContext, signal: gen_qmetaobject.QMetaMethod): void =


  fQQmlContext_virtualbase_connectNotify(self.h, signal.h)

type QQmlContextconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QQmlContext, slot: proc(super: QQmlContextconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlContextconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlContext_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlContext_connectNotify(self: ptr cQQmlContext, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlContext_connectNotify ".} =
  type Cb = proc(super: QQmlContextconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QQmlContext(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QQmlContext, signal: gen_qmetaobject.QMetaMethod): void =


  fQQmlContext_virtualbase_disconnectNotify(self.h, signal.h)

type QQmlContextdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QQmlContext, slot: proc(super: QQmlContextdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlContextdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlContext_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlContext_disconnectNotify(self: ptr cQQmlContext, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlContext_disconnectNotify ".} =
  type Cb = proc(super: QQmlContextdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QQmlContext(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QQmlContext): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQQmlContext_staticMetaObject())
proc delete*(self: QQmlContext) =
  fcQQmlContext_delete(self.h)

func init*(T: type QQmlContextPropertyPair, h: ptr cQQmlContextPropertyPair): QQmlContextPropertyPair =
  T(h: h)
proc create*(T: type QQmlContextPropertyPair, param1: QQmlContextPropertyPair): QQmlContextPropertyPair =

  QQmlContextPropertyPair.init(fcQQmlContextPropertyPair_new(param1.h))
proc operatorAssign*(self: QQmlContextPropertyPair, param1: QQmlContextPropertyPair): void =

  fcQQmlContextPropertyPair_operatorAssign(self.h, param1.h)

proc delete*(self: QQmlContextPropertyPair) =
  fcQQmlContextPropertyPair_delete(self.h)
