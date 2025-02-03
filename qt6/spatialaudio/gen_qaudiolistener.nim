import Qt6SpatialAudio_libs

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

const cflags = gorge("pkg-config -cflags Qt6SpatialAudio")
{.compile("gen_qaudiolistener.cpp", cflags).}


import gen_qaudiolistener_types
export gen_qaudiolistener_types

import
  gen_qaudioengine,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qquaternion,
  gen_qvectornd
export
  gen_qaudioengine,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qquaternion,
  gen_qvectornd

type cQAudioListener*{.exportc: "QAudioListener", incompleteStruct.} = object

proc fcQAudioListener_new(engine: pointer): ptr cQAudioListener {.importc: "QAudioListener_new".}
proc fcQAudioListener_setPosition(self: pointer, pos: pointer): void {.importc: "QAudioListener_setPosition".}
proc fcQAudioListener_position(self: pointer, ): pointer {.importc: "QAudioListener_position".}
proc fcQAudioListener_setRotation(self: pointer, q: pointer): void {.importc: "QAudioListener_setRotation".}
proc fcQAudioListener_rotation(self: pointer, ): pointer {.importc: "QAudioListener_rotation".}
proc fcQAudioListener_engine(self: pointer, ): pointer {.importc: "QAudioListener_engine".}
proc fQAudioListener_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAudioListener_virtualbase_metacall".}
proc fcQAudioListener_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAudioListener_override_virtual_metacall".}
proc fQAudioListener_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAudioListener_virtualbase_event".}
proc fcQAudioListener_override_virtual_event(self: pointer, slot: int) {.importc: "QAudioListener_override_virtual_event".}
proc fQAudioListener_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAudioListener_virtualbase_eventFilter".}
proc fcQAudioListener_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAudioListener_override_virtual_eventFilter".}
proc fQAudioListener_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAudioListener_virtualbase_timerEvent".}
proc fcQAudioListener_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAudioListener_override_virtual_timerEvent".}
proc fQAudioListener_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAudioListener_virtualbase_childEvent".}
proc fcQAudioListener_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAudioListener_override_virtual_childEvent".}
proc fQAudioListener_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAudioListener_virtualbase_customEvent".}
proc fcQAudioListener_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAudioListener_override_virtual_customEvent".}
proc fQAudioListener_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAudioListener_virtualbase_connectNotify".}
proc fcQAudioListener_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAudioListener_override_virtual_connectNotify".}
proc fQAudioListener_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAudioListener_virtualbase_disconnectNotify".}
proc fcQAudioListener_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAudioListener_override_virtual_disconnectNotify".}
proc fcQAudioListener_delete(self: pointer) {.importc: "QAudioListener_delete".}


func init*(T: type QAudioListener, h: ptr cQAudioListener): QAudioListener =
  T(h: h)
proc create*(T: type QAudioListener, engine: gen_qaudioengine.QAudioEngine): QAudioListener =

  QAudioListener.init(fcQAudioListener_new(engine.h))
proc setPosition*(self: QAudioListener, pos: gen_qvectornd.QVector3D): void =

  fcQAudioListener_setPosition(self.h, pos.h)

proc position*(self: QAudioListener, ): gen_qvectornd.QVector3D =

  gen_qvectornd.QVector3D(h: fcQAudioListener_position(self.h))

proc setRotation*(self: QAudioListener, q: gen_qquaternion.QQuaternion): void =

  fcQAudioListener_setRotation(self.h, q.h)

proc rotation*(self: QAudioListener, ): gen_qquaternion.QQuaternion =

  gen_qquaternion.QQuaternion(h: fcQAudioListener_rotation(self.h))

proc engine*(self: QAudioListener, ): gen_qaudioengine.QAudioEngine =

  gen_qaudioengine.QAudioEngine(h: fcQAudioListener_engine(self.h))

proc callVirtualBase_metacall(self: QAudioListener, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAudioListener_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAudioListenermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAudioListener, slot: proc(super: QAudioListenermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAudioListenermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioListener_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioListener_metacall(self: ptr cQAudioListener, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAudioListener_metacall ".} =
  type Cb = proc(super: QAudioListenermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAudioListener(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QAudioListener, event: gen_qcoreevent.QEvent): bool =


  fQAudioListener_virtualbase_event(self.h, event.h)

type QAudioListenereventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAudioListener, slot: proc(super: QAudioListenereventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAudioListenereventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioListener_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioListener_event(self: ptr cQAudioListener, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioListener_event ".} =
  type Cb = proc(super: QAudioListenereventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAudioListener(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QAudioListener, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAudioListener_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAudioListenereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAudioListener, slot: proc(super: QAudioListenereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAudioListenereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioListener_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioListener_eventFilter(self: ptr cQAudioListener, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioListener_eventFilter ".} =
  type Cb = proc(super: QAudioListenereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAudioListener(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAudioListener, event: gen_qcoreevent.QTimerEvent): void =


  fQAudioListener_virtualbase_timerEvent(self.h, event.h)

type QAudioListenertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAudioListener, slot: proc(super: QAudioListenertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioListenertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioListener_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioListener_timerEvent(self: ptr cQAudioListener, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioListener_timerEvent ".} =
  type Cb = proc(super: QAudioListenertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAudioListener(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAudioListener, event: gen_qcoreevent.QChildEvent): void =


  fQAudioListener_virtualbase_childEvent(self.h, event.h)

type QAudioListenerchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAudioListener, slot: proc(super: QAudioListenerchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioListenerchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioListener_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioListener_childEvent(self: ptr cQAudioListener, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioListener_childEvent ".} =
  type Cb = proc(super: QAudioListenerchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAudioListener(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAudioListener, event: gen_qcoreevent.QEvent): void =


  fQAudioListener_virtualbase_customEvent(self.h, event.h)

type QAudioListenercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAudioListener, slot: proc(super: QAudioListenercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioListenercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioListener_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioListener_customEvent(self: ptr cQAudioListener, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioListener_customEvent ".} =
  type Cb = proc(super: QAudioListenercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAudioListener(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAudioListener, signal: gen_qmetaobject.QMetaMethod): void =


  fQAudioListener_virtualbase_connectNotify(self.h, signal.h)

type QAudioListenerconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAudioListener, slot: proc(super: QAudioListenerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioListenerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioListener_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioListener_connectNotify(self: ptr cQAudioListener, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioListener_connectNotify ".} =
  type Cb = proc(super: QAudioListenerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAudioListener(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAudioListener, signal: gen_qmetaobject.QMetaMethod): void =


  fQAudioListener_virtualbase_disconnectNotify(self.h, signal.h)

type QAudioListenerdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAudioListener, slot: proc(super: QAudioListenerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioListenerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioListener_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioListener_disconnectNotify(self: ptr cQAudioListener, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioListener_disconnectNotify ".} =
  type Cb = proc(super: QAudioListenerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAudioListener(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QAudioListener) =
  fcQAudioListener_delete(self.h)
