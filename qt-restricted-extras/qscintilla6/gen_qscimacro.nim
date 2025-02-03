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
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsciscintilla
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsciscintilla

type cQsciMacro*{.exportc: "QsciMacro", incompleteStruct.} = object

proc fcQsciMacro_new(parent: pointer): ptr cQsciMacro {.importc: "QsciMacro_new".}
proc fcQsciMacro_new2(asc: struct_miqt_string, parent: pointer): ptr cQsciMacro {.importc: "QsciMacro_new2".}
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
proc fQsciMacro_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QsciMacro_virtualbase_metacall".}
proc fcQsciMacro_override_virtual_metacall(self: pointer, slot: int) {.importc: "QsciMacro_override_virtual_metacall".}
proc fQsciMacro_virtualbase_play(self: pointer, ): void{.importc: "QsciMacro_virtualbase_play".}
proc fcQsciMacro_override_virtual_play(self: pointer, slot: int) {.importc: "QsciMacro_override_virtual_play".}
proc fQsciMacro_virtualbase_startRecording(self: pointer, ): void{.importc: "QsciMacro_virtualbase_startRecording".}
proc fcQsciMacro_override_virtual_startRecording(self: pointer, slot: int) {.importc: "QsciMacro_override_virtual_startRecording".}
proc fQsciMacro_virtualbase_endRecording(self: pointer, ): void{.importc: "QsciMacro_virtualbase_endRecording".}
proc fcQsciMacro_override_virtual_endRecording(self: pointer, slot: int) {.importc: "QsciMacro_override_virtual_endRecording".}
proc fQsciMacro_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QsciMacro_virtualbase_event".}
proc fcQsciMacro_override_virtual_event(self: pointer, slot: int) {.importc: "QsciMacro_override_virtual_event".}
proc fQsciMacro_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QsciMacro_virtualbase_eventFilter".}
proc fcQsciMacro_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QsciMacro_override_virtual_eventFilter".}
proc fQsciMacro_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QsciMacro_virtualbase_timerEvent".}
proc fcQsciMacro_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QsciMacro_override_virtual_timerEvent".}
proc fQsciMacro_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QsciMacro_virtualbase_childEvent".}
proc fcQsciMacro_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QsciMacro_override_virtual_childEvent".}
proc fQsciMacro_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QsciMacro_virtualbase_customEvent".}
proc fcQsciMacro_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QsciMacro_override_virtual_customEvent".}
proc fQsciMacro_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QsciMacro_virtualbase_connectNotify".}
proc fcQsciMacro_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QsciMacro_override_virtual_connectNotify".}
proc fQsciMacro_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QsciMacro_virtualbase_disconnectNotify".}
proc fcQsciMacro_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QsciMacro_override_virtual_disconnectNotify".}
proc fcQsciMacro_delete(self: pointer) {.importc: "QsciMacro_delete".}


func init*(T: type QsciMacro, h: ptr cQsciMacro): QsciMacro =
  T(h: h)
proc create*(T: type QsciMacro, parent: gen_qsciscintilla.QsciScintilla): QsciMacro =

  QsciMacro.init(fcQsciMacro_new(parent.h))
proc create*(T: type QsciMacro, asc: string, parent: gen_qsciscintilla.QsciScintilla): QsciMacro =

  QsciMacro.init(fcQsciMacro_new2(struct_miqt_string(data: asc, len: csize_t(len(asc))), parent.h))
proc metaObject*(self: QsciMacro, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQsciMacro_metaObject(self.h))

proc metacast*(self: QsciMacro, param1: cstring): pointer =

  fcQsciMacro_metacast(self.h, param1)

proc metacall*(self: QsciMacro, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQsciMacro_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QsciMacro, s: cstring): string =

  let v_ms = fcQsciMacro_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc clear*(self: QsciMacro, ): void =

  fcQsciMacro_clear(self.h)

proc load*(self: QsciMacro, asc: string): bool =

  fcQsciMacro_load(self.h, struct_miqt_string(data: asc, len: csize_t(len(asc))))

proc save*(self: QsciMacro, ): string =

  let v_ms = fcQsciMacro_save(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc play*(self: QsciMacro, ): void =

  fcQsciMacro_play(self.h)

proc startRecording*(self: QsciMacro, ): void =

  fcQsciMacro_startRecording(self.h)

proc endRecording*(self: QsciMacro, ): void =

  fcQsciMacro_endRecording(self.h)

proc tr2*(_: type QsciMacro, s: cstring, c: cstring): string =

  let v_ms = fcQsciMacro_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QsciMacro, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQsciMacro_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QsciMacro, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQsciMacro_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciMacrometacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QsciMacro, slot: proc(super: QsciMacrometacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QsciMacrometacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciMacro_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciMacro_metacall(self: ptr cQsciMacro, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciMacro_metacall ".} =
  type Cb = proc(super: QsciMacrometacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QsciMacro(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_play(self: QsciMacro, ): void =


  fQsciMacro_virtualbase_play(self.h)

type QsciMacroplayBase* = proc(): void
proc onplay*(self: QsciMacro, slot: proc(super: QsciMacroplayBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciMacroplayBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciMacro_override_virtual_play(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciMacro_play(self: ptr cQsciMacro, slot: int): void {.exportc: "miqt_exec_callback_QsciMacro_play ".} =
  type Cb = proc(super: QsciMacroplayBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_play(QsciMacro(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_startRecording(self: QsciMacro, ): void =


  fQsciMacro_virtualbase_startRecording(self.h)

type QsciMacrostartRecordingBase* = proc(): void
proc onstartRecording*(self: QsciMacro, slot: proc(super: QsciMacrostartRecordingBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciMacrostartRecordingBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciMacro_override_virtual_startRecording(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciMacro_startRecording(self: ptr cQsciMacro, slot: int): void {.exportc: "miqt_exec_callback_QsciMacro_startRecording ".} =
  type Cb = proc(super: QsciMacrostartRecordingBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_startRecording(QsciMacro(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_endRecording(self: QsciMacro, ): void =


  fQsciMacro_virtualbase_endRecording(self.h)

type QsciMacroendRecordingBase* = proc(): void
proc onendRecording*(self: QsciMacro, slot: proc(super: QsciMacroendRecordingBase): void) =
  # TODO check subclass
  type Cb = proc(super: QsciMacroendRecordingBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciMacro_override_virtual_endRecording(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciMacro_endRecording(self: ptr cQsciMacro, slot: int): void {.exportc: "miqt_exec_callback_QsciMacro_endRecording ".} =
  type Cb = proc(super: QsciMacroendRecordingBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_endRecording(QsciMacro(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_event(self: QsciMacro, event: gen_qcoreevent.QEvent): bool =


  fQsciMacro_virtualbase_event(self.h, event.h)

type QsciMacroeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QsciMacro, slot: proc(super: QsciMacroeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciMacroeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciMacro_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciMacro_event(self: ptr cQsciMacro, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciMacro_event ".} =
  type Cb = proc(super: QsciMacroeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QsciMacro(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QsciMacro, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQsciMacro_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciMacroeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QsciMacro, slot: proc(super: QsciMacroeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QsciMacroeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciMacro_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciMacro_eventFilter(self: ptr cQsciMacro, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciMacro_eventFilter ".} =
  type Cb = proc(super: QsciMacroeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QsciMacro(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QsciMacro, event: gen_qcoreevent.QTimerEvent): void =


  fQsciMacro_virtualbase_timerEvent(self.h, event.h)

type QsciMacrotimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QsciMacro, slot: proc(super: QsciMacrotimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciMacrotimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciMacro_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciMacro_timerEvent(self: ptr cQsciMacro, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciMacro_timerEvent ".} =
  type Cb = proc(super: QsciMacrotimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QsciMacro(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QsciMacro, event: gen_qcoreevent.QChildEvent): void =


  fQsciMacro_virtualbase_childEvent(self.h, event.h)

type QsciMacrochildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QsciMacro, slot: proc(super: QsciMacrochildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciMacrochildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciMacro_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciMacro_childEvent(self: ptr cQsciMacro, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciMacro_childEvent ".} =
  type Cb = proc(super: QsciMacrochildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QsciMacro(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QsciMacro, event: gen_qcoreevent.QEvent): void =


  fQsciMacro_virtualbase_customEvent(self.h, event.h)

type QsciMacrocustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QsciMacro, slot: proc(super: QsciMacrocustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QsciMacrocustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciMacro_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciMacro_customEvent(self: ptr cQsciMacro, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciMacro_customEvent ".} =
  type Cb = proc(super: QsciMacrocustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QsciMacro(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QsciMacro, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciMacro_virtualbase_connectNotify(self.h, signal.h)

type QsciMacroconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QsciMacro, slot: proc(super: QsciMacroconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciMacroconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciMacro_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciMacro_connectNotify(self: ptr cQsciMacro, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciMacro_connectNotify ".} =
  type Cb = proc(super: QsciMacroconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QsciMacro(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QsciMacro, signal: gen_qmetaobject.QMetaMethod): void =


  fQsciMacro_virtualbase_disconnectNotify(self.h, signal.h)

type QsciMacrodisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QsciMacro, slot: proc(super: QsciMacrodisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QsciMacrodisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQsciMacro_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciMacro_disconnectNotify(self: ptr cQsciMacro, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciMacro_disconnectNotify ".} =
  type Cb = proc(super: QsciMacrodisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QsciMacro(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QsciMacro) =
  fcQsciMacro_delete(self.h)
