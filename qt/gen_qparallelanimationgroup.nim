import Qt5Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5Widgets")
{.compile("gen_qparallelanimationgroup.cpp", cflags).}


import gen_qparallelanimationgroup_types
export gen_qparallelanimationgroup_types

import
  gen_qanimationgroup,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qanimationgroup,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQParallelAnimationGroup*{.exportc: "QParallelAnimationGroup", incompleteStruct.} = object

proc fcQParallelAnimationGroup_new(): ptr cQParallelAnimationGroup {.importc: "QParallelAnimationGroup_new".}
proc fcQParallelAnimationGroup_new2(parent: pointer): ptr cQParallelAnimationGroup {.importc: "QParallelAnimationGroup_new2".}
proc fcQParallelAnimationGroup_metaObject(self: pointer, ): pointer {.importc: "QParallelAnimationGroup_metaObject".}
proc fcQParallelAnimationGroup_metacast(self: pointer, param1: cstring): pointer {.importc: "QParallelAnimationGroup_metacast".}
proc fcQParallelAnimationGroup_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QParallelAnimationGroup_metacall".}
proc fcQParallelAnimationGroup_tr(s: cstring): struct_miqt_string {.importc: "QParallelAnimationGroup_tr".}
proc fcQParallelAnimationGroup_trUtf8(s: cstring): struct_miqt_string {.importc: "QParallelAnimationGroup_trUtf8".}
proc fcQParallelAnimationGroup_duration(self: pointer, ): cint {.importc: "QParallelAnimationGroup_duration".}
proc fcQParallelAnimationGroup_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QParallelAnimationGroup_tr2".}
proc fcQParallelAnimationGroup_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QParallelAnimationGroup_tr3".}
proc fcQParallelAnimationGroup_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QParallelAnimationGroup_trUtf82".}
proc fcQParallelAnimationGroup_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QParallelAnimationGroup_trUtf83".}
proc fQParallelAnimationGroup_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QParallelAnimationGroup_virtualbase_metaObject".}
proc fcQParallelAnimationGroup_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QParallelAnimationGroup_override_virtual_metaObject".}
proc fQParallelAnimationGroup_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QParallelAnimationGroup_virtualbase_metacast".}
proc fcQParallelAnimationGroup_override_virtual_metacast(self: pointer, slot: int) {.importc: "QParallelAnimationGroup_override_virtual_metacast".}
proc fQParallelAnimationGroup_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QParallelAnimationGroup_virtualbase_metacall".}
proc fcQParallelAnimationGroup_override_virtual_metacall(self: pointer, slot: int) {.importc: "QParallelAnimationGroup_override_virtual_metacall".}
proc fQParallelAnimationGroup_virtualbase_duration(self: pointer, ): cint{.importc: "QParallelAnimationGroup_virtualbase_duration".}
proc fcQParallelAnimationGroup_override_virtual_duration(self: pointer, slot: int) {.importc: "QParallelAnimationGroup_override_virtual_duration".}
proc fQParallelAnimationGroup_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QParallelAnimationGroup_virtualbase_event".}
proc fcQParallelAnimationGroup_override_virtual_event(self: pointer, slot: int) {.importc: "QParallelAnimationGroup_override_virtual_event".}
proc fQParallelAnimationGroup_virtualbase_updateCurrentTime(self: pointer, currentTime: cint): void{.importc: "QParallelAnimationGroup_virtualbase_updateCurrentTime".}
proc fcQParallelAnimationGroup_override_virtual_updateCurrentTime(self: pointer, slot: int) {.importc: "QParallelAnimationGroup_override_virtual_updateCurrentTime".}
proc fQParallelAnimationGroup_virtualbase_updateState(self: pointer, newState: cint, oldState: cint): void{.importc: "QParallelAnimationGroup_virtualbase_updateState".}
proc fcQParallelAnimationGroup_override_virtual_updateState(self: pointer, slot: int) {.importc: "QParallelAnimationGroup_override_virtual_updateState".}
proc fQParallelAnimationGroup_virtualbase_updateDirection(self: pointer, direction: cint): void{.importc: "QParallelAnimationGroup_virtualbase_updateDirection".}
proc fcQParallelAnimationGroup_override_virtual_updateDirection(self: pointer, slot: int) {.importc: "QParallelAnimationGroup_override_virtual_updateDirection".}
proc fQParallelAnimationGroup_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QParallelAnimationGroup_virtualbase_eventFilter".}
proc fcQParallelAnimationGroup_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QParallelAnimationGroup_override_virtual_eventFilter".}
proc fQParallelAnimationGroup_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QParallelAnimationGroup_virtualbase_timerEvent".}
proc fcQParallelAnimationGroup_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QParallelAnimationGroup_override_virtual_timerEvent".}
proc fQParallelAnimationGroup_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QParallelAnimationGroup_virtualbase_childEvent".}
proc fcQParallelAnimationGroup_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QParallelAnimationGroup_override_virtual_childEvent".}
proc fQParallelAnimationGroup_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QParallelAnimationGroup_virtualbase_customEvent".}
proc fcQParallelAnimationGroup_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QParallelAnimationGroup_override_virtual_customEvent".}
proc fQParallelAnimationGroup_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QParallelAnimationGroup_virtualbase_connectNotify".}
proc fcQParallelAnimationGroup_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QParallelAnimationGroup_override_virtual_connectNotify".}
proc fQParallelAnimationGroup_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QParallelAnimationGroup_virtualbase_disconnectNotify".}
proc fcQParallelAnimationGroup_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QParallelAnimationGroup_override_virtual_disconnectNotify".}
proc fcQParallelAnimationGroup_staticMetaObject(): pointer {.importc: "QParallelAnimationGroup_staticMetaObject".}
proc fcQParallelAnimationGroup_delete(self: pointer) {.importc: "QParallelAnimationGroup_delete".}


func init*(T: type gen_qparallelanimationgroup_types.QParallelAnimationGroup, h: ptr cQParallelAnimationGroup): gen_qparallelanimationgroup_types.QParallelAnimationGroup =
  T(h: h)
proc create*(T: type gen_qparallelanimationgroup_types.QParallelAnimationGroup, ): gen_qparallelanimationgroup_types.QParallelAnimationGroup =

  gen_qparallelanimationgroup_types.QParallelAnimationGroup.init(fcQParallelAnimationGroup_new())
proc create*(T: type gen_qparallelanimationgroup_types.QParallelAnimationGroup, parent: gen_qobject.QObject): gen_qparallelanimationgroup_types.QParallelAnimationGroup =

  gen_qparallelanimationgroup_types.QParallelAnimationGroup.init(fcQParallelAnimationGroup_new2(parent.h))
proc metaObject*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQParallelAnimationGroup_metaObject(self.h))

proc metacast*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, param1: cstring): pointer =

  fcQParallelAnimationGroup_metacast(self.h, param1)

proc metacall*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, param1: cint, param2: cint, param3: pointer): cint =

  fcQParallelAnimationGroup_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qparallelanimationgroup_types.QParallelAnimationGroup, s: cstring): string =

  let v_ms = fcQParallelAnimationGroup_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qparallelanimationgroup_types.QParallelAnimationGroup, s: cstring): string =

  let v_ms = fcQParallelAnimationGroup_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc duration*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, ): cint =

  fcQParallelAnimationGroup_duration(self.h)

proc tr2*(_: type gen_qparallelanimationgroup_types.QParallelAnimationGroup, s: cstring, c: cstring): string =

  let v_ms = fcQParallelAnimationGroup_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qparallelanimationgroup_types.QParallelAnimationGroup, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQParallelAnimationGroup_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type gen_qparallelanimationgroup_types.QParallelAnimationGroup, s: cstring, c: cstring): string =

  let v_ms = fcQParallelAnimationGroup_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type gen_qparallelanimationgroup_types.QParallelAnimationGroup, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQParallelAnimationGroup_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QParallelAnimationGroupmetaObject*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQParallelAnimationGroup_virtualbase_metaObject(self.h))

type QParallelAnimationGroupmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, slot: QParallelAnimationGroupmetaObjectProc) =
  # TODO check subclass
  var tmp = new QParallelAnimationGroupmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQParallelAnimationGroup_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QParallelAnimationGroup_metaObject(self: ptr cQParallelAnimationGroup, slot: int): pointer {.exportc: "miqt_exec_callback_QParallelAnimationGroup_metaObject ".} =
  var nimfunc = cast[ptr QParallelAnimationGroupmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QParallelAnimationGroupmetacast*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, param1: cstring): pointer =

  fQParallelAnimationGroup_virtualbase_metacast(self.h, param1)

type QParallelAnimationGroupmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, slot: QParallelAnimationGroupmetacastProc) =
  # TODO check subclass
  var tmp = new QParallelAnimationGroupmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQParallelAnimationGroup_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QParallelAnimationGroup_metacast(self: ptr cQParallelAnimationGroup, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QParallelAnimationGroup_metacast ".} =
  var nimfunc = cast[ptr QParallelAnimationGroupmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QParallelAnimationGroupmetacall*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, param1: cint, param2: cint, param3: pointer): cint =

  fQParallelAnimationGroup_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QParallelAnimationGroupmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, slot: QParallelAnimationGroupmetacallProc) =
  # TODO check subclass
  var tmp = new QParallelAnimationGroupmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQParallelAnimationGroup_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QParallelAnimationGroup_metacall(self: ptr cQParallelAnimationGroup, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QParallelAnimationGroup_metacall ".} =
  var nimfunc = cast[ptr QParallelAnimationGroupmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QParallelAnimationGroupduration*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, ): cint =

  fQParallelAnimationGroup_virtualbase_duration(self.h)

type QParallelAnimationGroupdurationProc* = proc(): cint
proc onduration*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, slot: QParallelAnimationGroupdurationProc) =
  # TODO check subclass
  var tmp = new QParallelAnimationGroupdurationProc
  tmp[] = slot
  GC_ref(tmp)
  fcQParallelAnimationGroup_override_virtual_duration(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QParallelAnimationGroup_duration(self: ptr cQParallelAnimationGroup, slot: int): cint {.exportc: "miqt_exec_callback_QParallelAnimationGroup_duration ".} =
  var nimfunc = cast[ptr QParallelAnimationGroupdurationProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QParallelAnimationGroupevent*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, event: gen_qcoreevent.QEvent): bool =

  fQParallelAnimationGroup_virtualbase_event(self.h, event.h)

type QParallelAnimationGroupeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, slot: QParallelAnimationGroupeventProc) =
  # TODO check subclass
  var tmp = new QParallelAnimationGroupeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQParallelAnimationGroup_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QParallelAnimationGroup_event(self: ptr cQParallelAnimationGroup, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QParallelAnimationGroup_event ".} =
  var nimfunc = cast[ptr QParallelAnimationGroupeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QParallelAnimationGroupupdateCurrentTime*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, currentTime: cint): void =

  fQParallelAnimationGroup_virtualbase_updateCurrentTime(self.h, currentTime)

type QParallelAnimationGroupupdateCurrentTimeProc* = proc(currentTime: cint): void
proc onupdateCurrentTime*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, slot: QParallelAnimationGroupupdateCurrentTimeProc) =
  # TODO check subclass
  var tmp = new QParallelAnimationGroupupdateCurrentTimeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQParallelAnimationGroup_override_virtual_updateCurrentTime(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QParallelAnimationGroup_updateCurrentTime(self: ptr cQParallelAnimationGroup, slot: int, currentTime: cint): void {.exportc: "miqt_exec_callback_QParallelAnimationGroup_updateCurrentTime ".} =
  var nimfunc = cast[ptr QParallelAnimationGroupupdateCurrentTimeProc](cast[pointer](slot))
  let slotval1 = currentTime


  nimfunc[](slotval1)
proc QParallelAnimationGroupupdateState*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, newState: cint, oldState: cint): void =

  fQParallelAnimationGroup_virtualbase_updateState(self.h, cint(newState), cint(oldState))

type QParallelAnimationGroupupdateStateProc* = proc(newState: cint, oldState: cint): void
proc onupdateState*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, slot: QParallelAnimationGroupupdateStateProc) =
  # TODO check subclass
  var tmp = new QParallelAnimationGroupupdateStateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQParallelAnimationGroup_override_virtual_updateState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QParallelAnimationGroup_updateState(self: ptr cQParallelAnimationGroup, slot: int, newState: cint, oldState: cint): void {.exportc: "miqt_exec_callback_QParallelAnimationGroup_updateState ".} =
  var nimfunc = cast[ptr QParallelAnimationGroupupdateStateProc](cast[pointer](slot))
  let slotval1 = cint(newState)

  let slotval2 = cint(oldState)


  nimfunc[](slotval1, slotval2)
proc QParallelAnimationGroupupdateDirection*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, direction: cint): void =

  fQParallelAnimationGroup_virtualbase_updateDirection(self.h, cint(direction))

type QParallelAnimationGroupupdateDirectionProc* = proc(direction: cint): void
proc onupdateDirection*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, slot: QParallelAnimationGroupupdateDirectionProc) =
  # TODO check subclass
  var tmp = new QParallelAnimationGroupupdateDirectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQParallelAnimationGroup_override_virtual_updateDirection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QParallelAnimationGroup_updateDirection(self: ptr cQParallelAnimationGroup, slot: int, direction: cint): void {.exportc: "miqt_exec_callback_QParallelAnimationGroup_updateDirection ".} =
  var nimfunc = cast[ptr QParallelAnimationGroupupdateDirectionProc](cast[pointer](slot))
  let slotval1 = cint(direction)


  nimfunc[](slotval1)
proc QParallelAnimationGroupeventFilter*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQParallelAnimationGroup_virtualbase_eventFilter(self.h, watched.h, event.h)

type QParallelAnimationGroupeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, slot: QParallelAnimationGroupeventFilterProc) =
  # TODO check subclass
  var tmp = new QParallelAnimationGroupeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQParallelAnimationGroup_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QParallelAnimationGroup_eventFilter(self: ptr cQParallelAnimationGroup, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QParallelAnimationGroup_eventFilter ".} =
  var nimfunc = cast[ptr QParallelAnimationGroupeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QParallelAnimationGrouptimerEvent*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, event: gen_qcoreevent.QTimerEvent): void =

  fQParallelAnimationGroup_virtualbase_timerEvent(self.h, event.h)

type QParallelAnimationGrouptimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, slot: QParallelAnimationGrouptimerEventProc) =
  # TODO check subclass
  var tmp = new QParallelAnimationGrouptimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQParallelAnimationGroup_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QParallelAnimationGroup_timerEvent(self: ptr cQParallelAnimationGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QParallelAnimationGroup_timerEvent ".} =
  var nimfunc = cast[ptr QParallelAnimationGrouptimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QParallelAnimationGroupchildEvent*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, event: gen_qcoreevent.QChildEvent): void =

  fQParallelAnimationGroup_virtualbase_childEvent(self.h, event.h)

type QParallelAnimationGroupchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, slot: QParallelAnimationGroupchildEventProc) =
  # TODO check subclass
  var tmp = new QParallelAnimationGroupchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQParallelAnimationGroup_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QParallelAnimationGroup_childEvent(self: ptr cQParallelAnimationGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QParallelAnimationGroup_childEvent ".} =
  var nimfunc = cast[ptr QParallelAnimationGroupchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QParallelAnimationGroupcustomEvent*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, event: gen_qcoreevent.QEvent): void =

  fQParallelAnimationGroup_virtualbase_customEvent(self.h, event.h)

type QParallelAnimationGroupcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, slot: QParallelAnimationGroupcustomEventProc) =
  # TODO check subclass
  var tmp = new QParallelAnimationGroupcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQParallelAnimationGroup_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QParallelAnimationGroup_customEvent(self: ptr cQParallelAnimationGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QParallelAnimationGroup_customEvent ".} =
  var nimfunc = cast[ptr QParallelAnimationGroupcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QParallelAnimationGroupconnectNotify*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, signal: gen_qmetaobject.QMetaMethod): void =

  fQParallelAnimationGroup_virtualbase_connectNotify(self.h, signal.h)

type QParallelAnimationGroupconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, slot: QParallelAnimationGroupconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QParallelAnimationGroupconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQParallelAnimationGroup_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QParallelAnimationGroup_connectNotify(self: ptr cQParallelAnimationGroup, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QParallelAnimationGroup_connectNotify ".} =
  var nimfunc = cast[ptr QParallelAnimationGroupconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QParallelAnimationGroupdisconnectNotify*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, signal: gen_qmetaobject.QMetaMethod): void =

  fQParallelAnimationGroup_virtualbase_disconnectNotify(self.h, signal.h)

type QParallelAnimationGroupdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup, slot: QParallelAnimationGroupdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QParallelAnimationGroupdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQParallelAnimationGroup_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QParallelAnimationGroup_disconnectNotify(self: ptr cQParallelAnimationGroup, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QParallelAnimationGroup_disconnectNotify ".} =
  var nimfunc = cast[ptr QParallelAnimationGroupdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qparallelanimationgroup_types.QParallelAnimationGroup): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQParallelAnimationGroup_staticMetaObject())
proc delete*(self: gen_qparallelanimationgroup_types.QParallelAnimationGroup) =
  fcQParallelAnimationGroup_delete(self.h)
