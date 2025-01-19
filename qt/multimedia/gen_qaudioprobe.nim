import Qt5MultimediaWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5MultimediaWidgets")
{.compile("gen_qaudioprobe.cpp", cflags).}


import gen_qaudioprobe_types
export gen_qaudioprobe_types

import
  gen_qaudiobuffer,
  gen_qcoreevent,
  gen_qmediaobject,
  gen_qmediarecorder,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qaudiobuffer,
  gen_qcoreevent,
  gen_qmediaobject,
  gen_qmediarecorder,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQAudioProbe*{.exportc: "QAudioProbe", incompleteStruct.} = object

proc fcQAudioProbe_new(): ptr cQAudioProbe {.importc: "QAudioProbe_new".}
proc fcQAudioProbe_new2(parent: pointer): ptr cQAudioProbe {.importc: "QAudioProbe_new2".}
proc fcQAudioProbe_metaObject(self: pointer, ): pointer {.importc: "QAudioProbe_metaObject".}
proc fcQAudioProbe_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioProbe_metacast".}
proc fcQAudioProbe_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioProbe_metacall".}
proc fcQAudioProbe_tr(s: cstring): struct_miqt_string {.importc: "QAudioProbe_tr".}
proc fcQAudioProbe_trUtf8(s: cstring): struct_miqt_string {.importc: "QAudioProbe_trUtf8".}
proc fcQAudioProbe_setSource(self: pointer, source: pointer): bool {.importc: "QAudioProbe_setSource".}
proc fcQAudioProbe_setSourceWithSource(self: pointer, source: pointer): bool {.importc: "QAudioProbe_setSourceWithSource".}
proc fcQAudioProbe_isActive(self: pointer, ): bool {.importc: "QAudioProbe_isActive".}
proc fcQAudioProbe_audioBufferProbed(self: pointer, buffer: pointer): void {.importc: "QAudioProbe_audioBufferProbed".}
proc fQAudioProbe_connect_audioBufferProbed(self: pointer, slot: int) {.importc: "QAudioProbe_connect_audioBufferProbed".}
proc fcQAudioProbe_flush(self: pointer, ): void {.importc: "QAudioProbe_flush".}
proc fQAudioProbe_connect_flush(self: pointer, slot: int) {.importc: "QAudioProbe_connect_flush".}
proc fcQAudioProbe_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioProbe_tr2".}
proc fcQAudioProbe_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioProbe_tr3".}
proc fcQAudioProbe_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioProbe_trUtf82".}
proc fcQAudioProbe_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioProbe_trUtf83".}
proc fQAudioProbe_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAudioProbe_virtualbase_metacall".}
proc fcQAudioProbe_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAudioProbe_override_virtual_metacall".}
proc fQAudioProbe_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAudioProbe_virtualbase_event".}
proc fcQAudioProbe_override_virtual_event(self: pointer, slot: int) {.importc: "QAudioProbe_override_virtual_event".}
proc fQAudioProbe_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAudioProbe_virtualbase_eventFilter".}
proc fcQAudioProbe_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAudioProbe_override_virtual_eventFilter".}
proc fQAudioProbe_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAudioProbe_virtualbase_timerEvent".}
proc fcQAudioProbe_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAudioProbe_override_virtual_timerEvent".}
proc fQAudioProbe_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAudioProbe_virtualbase_childEvent".}
proc fcQAudioProbe_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAudioProbe_override_virtual_childEvent".}
proc fQAudioProbe_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAudioProbe_virtualbase_customEvent".}
proc fcQAudioProbe_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAudioProbe_override_virtual_customEvent".}
proc fQAudioProbe_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAudioProbe_virtualbase_connectNotify".}
proc fcQAudioProbe_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAudioProbe_override_virtual_connectNotify".}
proc fQAudioProbe_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAudioProbe_virtualbase_disconnectNotify".}
proc fcQAudioProbe_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAudioProbe_override_virtual_disconnectNotify".}
proc fcQAudioProbe_staticMetaObject(): pointer {.importc: "QAudioProbe_staticMetaObject".}
proc fcQAudioProbe_delete(self: pointer) {.importc: "QAudioProbe_delete".}


func init*(T: type QAudioProbe, h: ptr cQAudioProbe): QAudioProbe =
  T(h: h)
proc create*(T: type QAudioProbe, ): QAudioProbe =

  QAudioProbe.init(fcQAudioProbe_new())
proc create*(T: type QAudioProbe, parent: gen_qobject.QObject): QAudioProbe =

  QAudioProbe.init(fcQAudioProbe_new2(parent.h))
proc metaObject*(self: QAudioProbe, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAudioProbe_metaObject(self.h))

proc metacast*(self: QAudioProbe, param1: cstring): pointer =

  fcQAudioProbe_metacast(self.h, param1)

proc metacall*(self: QAudioProbe, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAudioProbe_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAudioProbe, s: cstring): string =

  let v_ms = fcQAudioProbe_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QAudioProbe, s: cstring): string =

  let v_ms = fcQAudioProbe_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSource*(self: QAudioProbe, source: gen_qmediaobject.QMediaObject): bool =

  fcQAudioProbe_setSource(self.h, source.h)

proc setSourceWithSource*(self: QAudioProbe, source: gen_qmediarecorder.QMediaRecorder): bool =

  fcQAudioProbe_setSourceWithSource(self.h, source.h)

proc isActive*(self: QAudioProbe, ): bool =

  fcQAudioProbe_isActive(self.h)

proc audioBufferProbed*(self: QAudioProbe, buffer: gen_qaudiobuffer.QAudioBuffer): void =

  fcQAudioProbe_audioBufferProbed(self.h, buffer.h)

proc miqt_exec_callback_QAudioProbe_audioBufferProbed(slot: int, buffer: pointer) {.exportc.} =
  type Cb = proc(buffer: gen_qaudiobuffer.QAudioBuffer)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qaudiobuffer.QAudioBuffer(h: buffer)


  nimfunc[](slotval1)

proc onaudioBufferProbed*(self: QAudioProbe, slot: proc(buffer: gen_qaudiobuffer.QAudioBuffer)) =
  type Cb = proc(buffer: gen_qaudiobuffer.QAudioBuffer)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioProbe_connect_audioBufferProbed(self.h, cast[int](addr tmp[]))
proc flush*(self: QAudioProbe, ): void =

  fcQAudioProbe_flush(self.h)

proc miqt_exec_callback_QAudioProbe_flush(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onflush*(self: QAudioProbe, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioProbe_connect_flush(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QAudioProbe, s: cstring, c: cstring): string =

  let v_ms = fcQAudioProbe_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAudioProbe, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAudioProbe_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QAudioProbe, s: cstring, c: cstring): string =

  let v_ms = fcQAudioProbe_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QAudioProbe, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAudioProbe_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QAudioProbe, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAudioProbe_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAudioProbemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAudioProbe, slot: proc(super: QAudioProbemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAudioProbemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioProbe_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioProbe_metacall(self: ptr cQAudioProbe, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAudioProbe_metacall ".} =
  type Cb = proc(super: QAudioProbemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAudioProbe(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QAudioProbe, event: gen_qcoreevent.QEvent): bool =


  fQAudioProbe_virtualbase_event(self.h, event.h)

type QAudioProbeeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAudioProbe, slot: proc(super: QAudioProbeeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAudioProbeeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioProbe_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioProbe_event(self: ptr cQAudioProbe, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioProbe_event ".} =
  type Cb = proc(super: QAudioProbeeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAudioProbe(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QAudioProbe, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAudioProbe_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAudioProbeeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAudioProbe, slot: proc(super: QAudioProbeeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAudioProbeeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioProbe_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioProbe_eventFilter(self: ptr cQAudioProbe, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioProbe_eventFilter ".} =
  type Cb = proc(super: QAudioProbeeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAudioProbe(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAudioProbe, event: gen_qcoreevent.QTimerEvent): void =


  fQAudioProbe_virtualbase_timerEvent(self.h, event.h)

type QAudioProbetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAudioProbe, slot: proc(super: QAudioProbetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioProbetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioProbe_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioProbe_timerEvent(self: ptr cQAudioProbe, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioProbe_timerEvent ".} =
  type Cb = proc(super: QAudioProbetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAudioProbe(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAudioProbe, event: gen_qcoreevent.QChildEvent): void =


  fQAudioProbe_virtualbase_childEvent(self.h, event.h)

type QAudioProbechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAudioProbe, slot: proc(super: QAudioProbechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioProbechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioProbe_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioProbe_childEvent(self: ptr cQAudioProbe, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioProbe_childEvent ".} =
  type Cb = proc(super: QAudioProbechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAudioProbe(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAudioProbe, event: gen_qcoreevent.QEvent): void =


  fQAudioProbe_virtualbase_customEvent(self.h, event.h)

type QAudioProbecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAudioProbe, slot: proc(super: QAudioProbecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioProbecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioProbe_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioProbe_customEvent(self: ptr cQAudioProbe, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioProbe_customEvent ".} =
  type Cb = proc(super: QAudioProbecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAudioProbe(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAudioProbe, signal: gen_qmetaobject.QMetaMethod): void =


  fQAudioProbe_virtualbase_connectNotify(self.h, signal.h)

type QAudioProbeconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAudioProbe, slot: proc(super: QAudioProbeconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioProbeconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioProbe_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioProbe_connectNotify(self: ptr cQAudioProbe, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioProbe_connectNotify ".} =
  type Cb = proc(super: QAudioProbeconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAudioProbe(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAudioProbe, signal: gen_qmetaobject.QMetaMethod): void =


  fQAudioProbe_virtualbase_disconnectNotify(self.h, signal.h)

type QAudioProbedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAudioProbe, slot: proc(super: QAudioProbedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioProbedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioProbe_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioProbe_disconnectNotify(self: ptr cQAudioProbe, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioProbe_disconnectNotify ".} =
  type Cb = proc(super: QAudioProbedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAudioProbe(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QAudioProbe): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQAudioProbe_staticMetaObject())
proc delete*(self: QAudioProbe) =
  fcQAudioProbe_delete(self.h)
