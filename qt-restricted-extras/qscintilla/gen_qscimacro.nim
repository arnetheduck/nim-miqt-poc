import Qt5PrintSupport_libs

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

const cflags = gorge("pkg-config -cflags Qt5PrintSupport")
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
proc fcQsciMacro_trUtf8(s: cstring): struct_miqt_string {.importc: "QsciMacro_trUtf8".}
proc fcQsciMacro_clear(self: pointer, ): void {.importc: "QsciMacro_clear".}
proc fcQsciMacro_load(self: pointer, asc: struct_miqt_string): bool {.importc: "QsciMacro_load".}
proc fcQsciMacro_save(self: pointer, ): struct_miqt_string {.importc: "QsciMacro_save".}
proc fcQsciMacro_play(self: pointer, ): void {.importc: "QsciMacro_play".}
proc fcQsciMacro_startRecording(self: pointer, ): void {.importc: "QsciMacro_startRecording".}
proc fcQsciMacro_endRecording(self: pointer, ): void {.importc: "QsciMacro_endRecording".}
proc fcQsciMacro_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciMacro_tr2".}
proc fcQsciMacro_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciMacro_tr3".}
proc fcQsciMacro_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QsciMacro_trUtf82".}
proc fcQsciMacro_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QsciMacro_trUtf83".}
proc fQsciMacro_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QsciMacro_virtualbase_metaObject".}
proc fcQsciMacro_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QsciMacro_override_virtual_metaObject".}
proc fQsciMacro_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QsciMacro_virtualbase_metacast".}
proc fcQsciMacro_override_virtual_metacast(self: pointer, slot: int) {.importc: "QsciMacro_override_virtual_metacast".}
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
proc fcQsciMacro_staticMetaObject(): pointer {.importc: "QsciMacro_staticMetaObject".}
proc fcQsciMacro_delete(self: pointer) {.importc: "QsciMacro_delete".}


func init*(T: type gen_qscimacro_types.QsciMacro, h: ptr cQsciMacro): gen_qscimacro_types.QsciMacro =
  T(h: h)
proc create*(T: type gen_qscimacro_types.QsciMacro, parent: gen_qsciscintilla.QsciScintilla): gen_qscimacro_types.QsciMacro =
  gen_qscimacro_types.QsciMacro.init(fcQsciMacro_new(parent.h))

proc create*(T: type gen_qscimacro_types.QsciMacro, asc: string, parent: gen_qsciscintilla.QsciScintilla): gen_qscimacro_types.QsciMacro =
  gen_qscimacro_types.QsciMacro.init(fcQsciMacro_new2(struct_miqt_string(data: asc, len: csize_t(len(asc))), parent.h))

proc metaObject*(self: gen_qscimacro_types.QsciMacro, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciMacro_metaObject(self.h))

proc metacast*(self: gen_qscimacro_types.QsciMacro, param1: cstring): pointer =
  fcQsciMacro_metacast(self.h, param1)

proc metacall*(self: gen_qscimacro_types.QsciMacro, param1: cint, param2: cint, param3: pointer): cint =
  fcQsciMacro_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscimacro_types.QsciMacro, s: cstring): string =
  let v_ms = fcQsciMacro_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscimacro_types.QsciMacro, s: cstring): string =
  let v_ms = fcQsciMacro_trUtf8(s)
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

proc trUtf8*(_: type gen_qscimacro_types.QsciMacro, s: cstring, c: cstring): string =
  let v_ms = fcQsciMacro_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscimacro_types.QsciMacro, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQsciMacro_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QsciMacrometaObject*(self: gen_qscimacro_types.QsciMacro, ): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fQsciMacro_virtualbase_metaObject(self.h))

type QsciMacrometaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qscimacro_types.QsciMacro, slot: QsciMacrometaObjectProc) =
  # TODO check subclass
  var tmp = new QsciMacrometaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciMacro_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciMacro_metaObject(self: ptr cQsciMacro, slot: int): pointer {.exportc: "miqt_exec_callback_QsciMacro_metaObject ".} =
  var nimfunc = cast[ptr QsciMacrometaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QsciMacrometacast*(self: gen_qscimacro_types.QsciMacro, param1: cstring): pointer =
  fQsciMacro_virtualbase_metacast(self.h, param1)

type QsciMacrometacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscimacro_types.QsciMacro, slot: QsciMacrometacastProc) =
  # TODO check subclass
  var tmp = new QsciMacrometacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciMacro_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciMacro_metacast(self: ptr cQsciMacro, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QsciMacro_metacast ".} =
  var nimfunc = cast[ptr QsciMacrometacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciMacrometacall*(self: gen_qscimacro_types.QsciMacro, param1: cint, param2: cint, param3: pointer): cint =
  fQsciMacro_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QsciMacrometacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscimacro_types.QsciMacro, slot: QsciMacrometacallProc) =
  # TODO check subclass
  var tmp = new QsciMacrometacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciMacro_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciMacro_metacall(self: ptr cQsciMacro, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QsciMacro_metacall ".} =
  var nimfunc = cast[ptr QsciMacrometacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QsciMacroplay*(self: gen_qscimacro_types.QsciMacro, ): void =
  fQsciMacro_virtualbase_play(self.h)

type QsciMacroplayProc* = proc(): void
proc onplay*(self: gen_qscimacro_types.QsciMacro, slot: QsciMacroplayProc) =
  # TODO check subclass
  var tmp = new QsciMacroplayProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciMacro_override_virtual_play(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciMacro_play(self: ptr cQsciMacro, slot: int): void {.exportc: "miqt_exec_callback_QsciMacro_play ".} =
  var nimfunc = cast[ptr QsciMacroplayProc](cast[pointer](slot))

  nimfunc[]()
proc QsciMacrostartRecording*(self: gen_qscimacro_types.QsciMacro, ): void =
  fQsciMacro_virtualbase_startRecording(self.h)

type QsciMacrostartRecordingProc* = proc(): void
proc onstartRecording*(self: gen_qscimacro_types.QsciMacro, slot: QsciMacrostartRecordingProc) =
  # TODO check subclass
  var tmp = new QsciMacrostartRecordingProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciMacro_override_virtual_startRecording(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciMacro_startRecording(self: ptr cQsciMacro, slot: int): void {.exportc: "miqt_exec_callback_QsciMacro_startRecording ".} =
  var nimfunc = cast[ptr QsciMacrostartRecordingProc](cast[pointer](slot))

  nimfunc[]()
proc QsciMacroendRecording*(self: gen_qscimacro_types.QsciMacro, ): void =
  fQsciMacro_virtualbase_endRecording(self.h)

type QsciMacroendRecordingProc* = proc(): void
proc onendRecording*(self: gen_qscimacro_types.QsciMacro, slot: QsciMacroendRecordingProc) =
  # TODO check subclass
  var tmp = new QsciMacroendRecordingProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciMacro_override_virtual_endRecording(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciMacro_endRecording(self: ptr cQsciMacro, slot: int): void {.exportc: "miqt_exec_callback_QsciMacro_endRecording ".} =
  var nimfunc = cast[ptr QsciMacroendRecordingProc](cast[pointer](slot))

  nimfunc[]()
proc QsciMacroevent*(self: gen_qscimacro_types.QsciMacro, event: gen_qcoreevent.QEvent): bool =
  fQsciMacro_virtualbase_event(self.h, event.h)

type QsciMacroeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qscimacro_types.QsciMacro, slot: QsciMacroeventProc) =
  # TODO check subclass
  var tmp = new QsciMacroeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciMacro_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciMacro_event(self: ptr cQsciMacro, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QsciMacro_event ".} =
  var nimfunc = cast[ptr QsciMacroeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QsciMacroeventFilter*(self: gen_qscimacro_types.QsciMacro, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =
  fQsciMacro_virtualbase_eventFilter(self.h, watched.h, event.h)

type QsciMacroeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qscimacro_types.QsciMacro, slot: QsciMacroeventFilterProc) =
  # TODO check subclass
  var tmp = new QsciMacroeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciMacro_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciMacro_eventFilter(self: ptr cQsciMacro, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QsciMacro_eventFilter ".} =
  var nimfunc = cast[ptr QsciMacroeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QsciMacrotimerEvent*(self: gen_qscimacro_types.QsciMacro, event: gen_qcoreevent.QTimerEvent): void =
  fQsciMacro_virtualbase_timerEvent(self.h, event.h)

type QsciMacrotimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qscimacro_types.QsciMacro, slot: QsciMacrotimerEventProc) =
  # TODO check subclass
  var tmp = new QsciMacrotimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciMacro_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciMacro_timerEvent(self: ptr cQsciMacro, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciMacro_timerEvent ".} =
  var nimfunc = cast[ptr QsciMacrotimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QsciMacrochildEvent*(self: gen_qscimacro_types.QsciMacro, event: gen_qcoreevent.QChildEvent): void =
  fQsciMacro_virtualbase_childEvent(self.h, event.h)

type QsciMacrochildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qscimacro_types.QsciMacro, slot: QsciMacrochildEventProc) =
  # TODO check subclass
  var tmp = new QsciMacrochildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciMacro_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciMacro_childEvent(self: ptr cQsciMacro, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciMacro_childEvent ".} =
  var nimfunc = cast[ptr QsciMacrochildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QsciMacrocustomEvent*(self: gen_qscimacro_types.QsciMacro, event: gen_qcoreevent.QEvent): void =
  fQsciMacro_virtualbase_customEvent(self.h, event.h)

type QsciMacrocustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qscimacro_types.QsciMacro, slot: QsciMacrocustomEventProc) =
  # TODO check subclass
  var tmp = new QsciMacrocustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciMacro_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciMacro_customEvent(self: ptr cQsciMacro, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QsciMacro_customEvent ".} =
  var nimfunc = cast[ptr QsciMacrocustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QsciMacroconnectNotify*(self: gen_qscimacro_types.QsciMacro, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciMacro_virtualbase_connectNotify(self.h, signal.h)

type QsciMacroconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qscimacro_types.QsciMacro, slot: QsciMacroconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciMacroconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciMacro_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciMacro_connectNotify(self: ptr cQsciMacro, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciMacro_connectNotify ".} =
  var nimfunc = cast[ptr QsciMacroconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QsciMacrodisconnectNotify*(self: gen_qscimacro_types.QsciMacro, signal: gen_qmetaobject.QMetaMethod): void =
  fQsciMacro_virtualbase_disconnectNotify(self.h, signal.h)

type QsciMacrodisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscimacro_types.QsciMacro, slot: QsciMacrodisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QsciMacrodisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQsciMacro_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QsciMacro_disconnectNotify(self: ptr cQsciMacro, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QsciMacro_disconnectNotify ".} =
  var nimfunc = cast[ptr QsciMacrodisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscimacro_types.QsciMacro): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQsciMacro_staticMetaObject())
proc delete*(self: gen_qscimacro_types.QsciMacro) =
  fcQsciMacro_delete(self.h)
