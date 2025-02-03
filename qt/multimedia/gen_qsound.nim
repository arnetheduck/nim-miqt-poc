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
{.compile("gen_qsound.cpp", cflags).}


type QSoundLoop* = cint
const
  QSoundInfinite* = -1



import gen_qsound_types
export gen_qsound_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQSound*{.exportc: "QSound", incompleteStruct.} = object

proc fcQSound_new(filename: struct_miqt_string): ptr cQSound {.importc: "QSound_new".}
proc fcQSound_new2(filename: struct_miqt_string, parent: pointer): ptr cQSound {.importc: "QSound_new2".}
proc fcQSound_metaObject(self: pointer, ): pointer {.importc: "QSound_metaObject".}
proc fcQSound_metacast(self: pointer, param1: cstring): pointer {.importc: "QSound_metacast".}
proc fcQSound_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSound_metacall".}
proc fcQSound_tr(s: cstring): struct_miqt_string {.importc: "QSound_tr".}
proc fcQSound_trUtf8(s: cstring): struct_miqt_string {.importc: "QSound_trUtf8".}
proc fcQSound_play(filename: struct_miqt_string): void {.importc: "QSound_play".}
proc fcQSound_loops(self: pointer, ): cint {.importc: "QSound_loops".}
proc fcQSound_loopsRemaining(self: pointer, ): cint {.importc: "QSound_loopsRemaining".}
proc fcQSound_setLoops(self: pointer, loops: cint): void {.importc: "QSound_setLoops".}
proc fcQSound_fileName(self: pointer, ): struct_miqt_string {.importc: "QSound_fileName".}
proc fcQSound_isFinished(self: pointer, ): bool {.importc: "QSound_isFinished".}
proc fcQSound_play2(self: pointer, ): void {.importc: "QSound_play2".}
proc fcQSound_stop(self: pointer, ): void {.importc: "QSound_stop".}
proc fcQSound_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSound_tr2".}
proc fcQSound_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSound_tr3".}
proc fcQSound_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSound_trUtf82".}
proc fcQSound_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSound_trUtf83".}
proc fQSound_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSound_virtualbase_metacall".}
proc fcQSound_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSound_override_virtual_metacall".}
proc fQSound_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSound_virtualbase_event".}
proc fcQSound_override_virtual_event(self: pointer, slot: int) {.importc: "QSound_override_virtual_event".}
proc fQSound_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSound_virtualbase_eventFilter".}
proc fcQSound_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSound_override_virtual_eventFilter".}
proc fQSound_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSound_virtualbase_timerEvent".}
proc fcQSound_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSound_override_virtual_timerEvent".}
proc fQSound_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSound_virtualbase_childEvent".}
proc fcQSound_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSound_override_virtual_childEvent".}
proc fQSound_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSound_virtualbase_customEvent".}
proc fcQSound_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSound_override_virtual_customEvent".}
proc fQSound_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSound_virtualbase_connectNotify".}
proc fcQSound_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSound_override_virtual_connectNotify".}
proc fQSound_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSound_virtualbase_disconnectNotify".}
proc fcQSound_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSound_override_virtual_disconnectNotify".}
proc fcQSound_delete(self: pointer) {.importc: "QSound_delete".}


func init*(T: type QSound, h: ptr cQSound): QSound =
  T(h: h)
proc create*(T: type QSound, filename: string): QSound =

  QSound.init(fcQSound_new(struct_miqt_string(data: filename, len: csize_t(len(filename)))))
proc create*(T: type QSound, filename: string, parent: gen_qobject.QObject): QSound =

  QSound.init(fcQSound_new2(struct_miqt_string(data: filename, len: csize_t(len(filename))), parent.h))
proc metaObject*(self: QSound, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSound_metaObject(self.h))

proc metacast*(self: QSound, param1: cstring): pointer =

  fcQSound_metacast(self.h, param1)

proc metacall*(self: QSound, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQSound_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QSound, s: cstring): string =

  let v_ms = fcQSound_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QSound, s: cstring): string =

  let v_ms = fcQSound_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc play*(_: type QSound, filename: string): void =

  fcQSound_play(struct_miqt_string(data: filename, len: csize_t(len(filename))))

proc loops*(self: QSound, ): cint =

  fcQSound_loops(self.h)

proc loopsRemaining*(self: QSound, ): cint =

  fcQSound_loopsRemaining(self.h)

proc setLoops*(self: QSound, loops: cint): void =

  fcQSound_setLoops(self.h, loops)

proc fileName*(self: QSound, ): string =

  let v_ms = fcQSound_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isFinished*(self: QSound, ): bool =

  fcQSound_isFinished(self.h)

proc play2*(self: QSound, ): void =

  fcQSound_play2(self.h)

proc stop*(self: QSound, ): void =

  fcQSound_stop(self.h)

proc tr2*(_: type QSound, s: cstring, c: cstring): string =

  let v_ms = fcQSound_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QSound, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSound_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QSound, s: cstring, c: cstring): string =

  let v_ms = fcQSound_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QSound, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSound_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QSound, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQSound_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSoundmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QSound, slot: proc(super: QSoundmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QSoundmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSound_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSound_metacall(self: ptr cQSound, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSound_metacall ".} =
  type Cb = proc(super: QSoundmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QSound(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QSound, event: gen_qcoreevent.QEvent): bool =


  fQSound_virtualbase_event(self.h, event.h)

type QSoundeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QSound, slot: proc(super: QSoundeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSoundeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSound_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSound_event(self: ptr cQSound, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSound_event ".} =
  type Cb = proc(super: QSoundeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QSound(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QSound, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQSound_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSoundeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QSound, slot: proc(super: QSoundeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSoundeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSound_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSound_eventFilter(self: ptr cQSound, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSound_eventFilter ".} =
  type Cb = proc(super: QSoundeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QSound(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QSound, event: gen_qcoreevent.QTimerEvent): void =


  fQSound_virtualbase_timerEvent(self.h, event.h)

type QSoundtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QSound, slot: proc(super: QSoundtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSoundtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSound_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSound_timerEvent(self: ptr cQSound, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSound_timerEvent ".} =
  type Cb = proc(super: QSoundtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QSound(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QSound, event: gen_qcoreevent.QChildEvent): void =


  fQSound_virtualbase_childEvent(self.h, event.h)

type QSoundchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QSound, slot: proc(super: QSoundchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSoundchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSound_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSound_childEvent(self: ptr cQSound, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSound_childEvent ".} =
  type Cb = proc(super: QSoundchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QSound(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QSound, event: gen_qcoreevent.QEvent): void =


  fQSound_virtualbase_customEvent(self.h, event.h)

type QSoundcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QSound, slot: proc(super: QSoundcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSoundcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSound_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSound_customEvent(self: ptr cQSound, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSound_customEvent ".} =
  type Cb = proc(super: QSoundcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QSound(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QSound, signal: gen_qmetaobject.QMetaMethod): void =


  fQSound_virtualbase_connectNotify(self.h, signal.h)

type QSoundconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QSound, slot: proc(super: QSoundconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSoundconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSound_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSound_connectNotify(self: ptr cQSound, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSound_connectNotify ".} =
  type Cb = proc(super: QSoundconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QSound(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QSound, signal: gen_qmetaobject.QMetaMethod): void =


  fQSound_virtualbase_disconnectNotify(self.h, signal.h)

type QSounddisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QSound, slot: proc(super: QSounddisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSounddisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSound_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSound_disconnectNotify(self: ptr cQSound, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSound_disconnectNotify ".} =
  type Cb = proc(super: QSounddisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QSound(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QSound) =
  fcQSound_delete(self.h)
