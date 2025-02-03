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
{.compile("gen_qfuturewatcher.cpp", cflags).}


import gen_qfuturewatcher_types
export gen_qfuturewatcher_types

import
  gen_qcoreevent,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qcoreevent,
  gen_qobject,
  gen_qobjectdefs

type cQFutureWatcherBase*{.exportc: "QFutureWatcherBase", incompleteStruct.} = object

proc fcQFutureWatcherBase_metaObject(self: pointer, ): pointer {.importc: "QFutureWatcherBase_metaObject".}
proc fcQFutureWatcherBase_metacast(self: pointer, param1: cstring): pointer {.importc: "QFutureWatcherBase_metacast".}
proc fcQFutureWatcherBase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFutureWatcherBase_metacall".}
proc fcQFutureWatcherBase_tr(s: cstring): struct_miqt_string {.importc: "QFutureWatcherBase_tr".}
proc fcQFutureWatcherBase_trUtf8(s: cstring): struct_miqt_string {.importc: "QFutureWatcherBase_trUtf8".}
proc fcQFutureWatcherBase_progressValue(self: pointer, ): cint {.importc: "QFutureWatcherBase_progressValue".}
proc fcQFutureWatcherBase_progressMinimum(self: pointer, ): cint {.importc: "QFutureWatcherBase_progressMinimum".}
proc fcQFutureWatcherBase_progressMaximum(self: pointer, ): cint {.importc: "QFutureWatcherBase_progressMaximum".}
proc fcQFutureWatcherBase_progressText(self: pointer, ): struct_miqt_string {.importc: "QFutureWatcherBase_progressText".}
proc fcQFutureWatcherBase_isStarted(self: pointer, ): bool {.importc: "QFutureWatcherBase_isStarted".}
proc fcQFutureWatcherBase_isFinished(self: pointer, ): bool {.importc: "QFutureWatcherBase_isFinished".}
proc fcQFutureWatcherBase_isRunning(self: pointer, ): bool {.importc: "QFutureWatcherBase_isRunning".}
proc fcQFutureWatcherBase_isCanceled(self: pointer, ): bool {.importc: "QFutureWatcherBase_isCanceled".}
proc fcQFutureWatcherBase_isPaused(self: pointer, ): bool {.importc: "QFutureWatcherBase_isPaused".}
proc fcQFutureWatcherBase_waitForFinished(self: pointer, ): void {.importc: "QFutureWatcherBase_waitForFinished".}
proc fcQFutureWatcherBase_setPendingResultsLimit(self: pointer, limit: cint): void {.importc: "QFutureWatcherBase_setPendingResultsLimit".}
proc fcQFutureWatcherBase_event(self: pointer, event: pointer): bool {.importc: "QFutureWatcherBase_event".}
proc fcQFutureWatcherBase_started(self: pointer, ): void {.importc: "QFutureWatcherBase_started".}
proc fQFutureWatcherBase_connect_started(self: pointer, slot: int) {.importc: "QFutureWatcherBase_connect_started".}
proc fcQFutureWatcherBase_finished(self: pointer, ): void {.importc: "QFutureWatcherBase_finished".}
proc fQFutureWatcherBase_connect_finished(self: pointer, slot: int) {.importc: "QFutureWatcherBase_connect_finished".}
proc fcQFutureWatcherBase_canceled(self: pointer, ): void {.importc: "QFutureWatcherBase_canceled".}
proc fQFutureWatcherBase_connect_canceled(self: pointer, slot: int) {.importc: "QFutureWatcherBase_connect_canceled".}
proc fcQFutureWatcherBase_paused(self: pointer, ): void {.importc: "QFutureWatcherBase_paused".}
proc fQFutureWatcherBase_connect_paused(self: pointer, slot: int) {.importc: "QFutureWatcherBase_connect_paused".}
proc fcQFutureWatcherBase_resumed(self: pointer, ): void {.importc: "QFutureWatcherBase_resumed".}
proc fQFutureWatcherBase_connect_resumed(self: pointer, slot: int) {.importc: "QFutureWatcherBase_connect_resumed".}
proc fcQFutureWatcherBase_resultReadyAt(self: pointer, resultIndex: cint): void {.importc: "QFutureWatcherBase_resultReadyAt".}
proc fQFutureWatcherBase_connect_resultReadyAt(self: pointer, slot: int) {.importc: "QFutureWatcherBase_connect_resultReadyAt".}
proc fcQFutureWatcherBase_resultsReadyAt(self: pointer, beginIndex: cint, endIndex: cint): void {.importc: "QFutureWatcherBase_resultsReadyAt".}
proc fQFutureWatcherBase_connect_resultsReadyAt(self: pointer, slot: int) {.importc: "QFutureWatcherBase_connect_resultsReadyAt".}
proc fcQFutureWatcherBase_progressRangeChanged(self: pointer, minimum: cint, maximum: cint): void {.importc: "QFutureWatcherBase_progressRangeChanged".}
proc fQFutureWatcherBase_connect_progressRangeChanged(self: pointer, slot: int) {.importc: "QFutureWatcherBase_connect_progressRangeChanged".}
proc fcQFutureWatcherBase_progressValueChanged(self: pointer, progressValue: cint): void {.importc: "QFutureWatcherBase_progressValueChanged".}
proc fQFutureWatcherBase_connect_progressValueChanged(self: pointer, slot: int) {.importc: "QFutureWatcherBase_connect_progressValueChanged".}
proc fcQFutureWatcherBase_progressTextChanged(self: pointer, progressText: struct_miqt_string): void {.importc: "QFutureWatcherBase_progressTextChanged".}
proc fQFutureWatcherBase_connect_progressTextChanged(self: pointer, slot: int) {.importc: "QFutureWatcherBase_connect_progressTextChanged".}
proc fcQFutureWatcherBase_cancel(self: pointer, ): void {.importc: "QFutureWatcherBase_cancel".}
proc fcQFutureWatcherBase_setPaused(self: pointer, paused: bool): void {.importc: "QFutureWatcherBase_setPaused".}
proc fcQFutureWatcherBase_pause(self: pointer, ): void {.importc: "QFutureWatcherBase_pause".}
proc fcQFutureWatcherBase_resume(self: pointer, ): void {.importc: "QFutureWatcherBase_resume".}
proc fcQFutureWatcherBase_togglePaused(self: pointer, ): void {.importc: "QFutureWatcherBase_togglePaused".}
proc fcQFutureWatcherBase_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFutureWatcherBase_tr2".}
proc fcQFutureWatcherBase_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFutureWatcherBase_tr3".}
proc fcQFutureWatcherBase_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QFutureWatcherBase_trUtf82".}
proc fcQFutureWatcherBase_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFutureWatcherBase_trUtf83".}
proc fcQFutureWatcherBase_delete(self: pointer) {.importc: "QFutureWatcherBase_delete".}


func init*(T: type QFutureWatcherBase, h: ptr cQFutureWatcherBase): QFutureWatcherBase =
  T(h: h)
proc metaObject*(self: QFutureWatcherBase, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQFutureWatcherBase_metaObject(self.h))

proc metacast*(self: QFutureWatcherBase, param1: cstring): pointer =

  fcQFutureWatcherBase_metacast(self.h, param1)

proc metacall*(self: QFutureWatcherBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQFutureWatcherBase_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QFutureWatcherBase, s: cstring): string =

  let v_ms = fcQFutureWatcherBase_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QFutureWatcherBase, s: cstring): string =

  let v_ms = fcQFutureWatcherBase_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc progressValue*(self: QFutureWatcherBase, ): cint =

  fcQFutureWatcherBase_progressValue(self.h)

proc progressMinimum*(self: QFutureWatcherBase, ): cint =

  fcQFutureWatcherBase_progressMinimum(self.h)

proc progressMaximum*(self: QFutureWatcherBase, ): cint =

  fcQFutureWatcherBase_progressMaximum(self.h)

proc progressText*(self: QFutureWatcherBase, ): string =

  let v_ms = fcQFutureWatcherBase_progressText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isStarted*(self: QFutureWatcherBase, ): bool =

  fcQFutureWatcherBase_isStarted(self.h)

proc isFinished*(self: QFutureWatcherBase, ): bool =

  fcQFutureWatcherBase_isFinished(self.h)

proc isRunning*(self: QFutureWatcherBase, ): bool =

  fcQFutureWatcherBase_isRunning(self.h)

proc isCanceled*(self: QFutureWatcherBase, ): bool =

  fcQFutureWatcherBase_isCanceled(self.h)

proc isPaused*(self: QFutureWatcherBase, ): bool =

  fcQFutureWatcherBase_isPaused(self.h)

proc waitForFinished*(self: QFutureWatcherBase, ): void =

  fcQFutureWatcherBase_waitForFinished(self.h)

proc setPendingResultsLimit*(self: QFutureWatcherBase, limit: cint): void =

  fcQFutureWatcherBase_setPendingResultsLimit(self.h, limit)

proc event*(self: QFutureWatcherBase, event: gen_qcoreevent.QEvent): bool =

  fcQFutureWatcherBase_event(self.h, event.h)

proc started*(self: QFutureWatcherBase, ): void =

  fcQFutureWatcherBase_started(self.h)

proc miqt_exec_callback_QFutureWatcherBase_started(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onstarted*(self: QFutureWatcherBase, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQFutureWatcherBase_connect_started(self.h, cast[int](addr tmp[]))
proc finished*(self: QFutureWatcherBase, ): void =

  fcQFutureWatcherBase_finished(self.h)

proc miqt_exec_callback_QFutureWatcherBase_finished(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onfinished*(self: QFutureWatcherBase, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQFutureWatcherBase_connect_finished(self.h, cast[int](addr tmp[]))
proc canceled*(self: QFutureWatcherBase, ): void =

  fcQFutureWatcherBase_canceled(self.h)

proc miqt_exec_callback_QFutureWatcherBase_canceled(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc oncanceled*(self: QFutureWatcherBase, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQFutureWatcherBase_connect_canceled(self.h, cast[int](addr tmp[]))
proc paused*(self: QFutureWatcherBase, ): void =

  fcQFutureWatcherBase_paused(self.h)

proc miqt_exec_callback_QFutureWatcherBase_paused(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onpaused*(self: QFutureWatcherBase, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQFutureWatcherBase_connect_paused(self.h, cast[int](addr tmp[]))
proc resumed*(self: QFutureWatcherBase, ): void =

  fcQFutureWatcherBase_resumed(self.h)

proc miqt_exec_callback_QFutureWatcherBase_resumed(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onresumed*(self: QFutureWatcherBase, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQFutureWatcherBase_connect_resumed(self.h, cast[int](addr tmp[]))
proc resultReadyAt*(self: QFutureWatcherBase, resultIndex: cint): void =

  fcQFutureWatcherBase_resultReadyAt(self.h, resultIndex)

proc miqt_exec_callback_QFutureWatcherBase_resultReadyAt(slot: int, resultIndex: cint) {.exportc.} =
  type Cb = proc(resultIndex: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = resultIndex


  nimfunc[](slotval1)

proc onresultReadyAt*(self: QFutureWatcherBase, slot: proc(resultIndex: cint)) =
  type Cb = proc(resultIndex: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQFutureWatcherBase_connect_resultReadyAt(self.h, cast[int](addr tmp[]))
proc resultsReadyAt*(self: QFutureWatcherBase, beginIndex: cint, endIndex: cint): void =

  fcQFutureWatcherBase_resultsReadyAt(self.h, beginIndex, endIndex)

proc miqt_exec_callback_QFutureWatcherBase_resultsReadyAt(slot: int, beginIndex: cint, endIndex: cint) {.exportc.} =
  type Cb = proc(beginIndex: cint, endIndex: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = beginIndex

  let slotval2 = endIndex


  nimfunc[](slotval1, slotval2)

proc onresultsReadyAt*(self: QFutureWatcherBase, slot: proc(beginIndex: cint, endIndex: cint)) =
  type Cb = proc(beginIndex: cint, endIndex: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQFutureWatcherBase_connect_resultsReadyAt(self.h, cast[int](addr tmp[]))
proc progressRangeChanged*(self: QFutureWatcherBase, minimum: cint, maximum: cint): void =

  fcQFutureWatcherBase_progressRangeChanged(self.h, minimum, maximum)

proc miqt_exec_callback_QFutureWatcherBase_progressRangeChanged(slot: int, minimum: cint, maximum: cint) {.exportc.} =
  type Cb = proc(minimum: cint, maximum: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = minimum

  let slotval2 = maximum


  nimfunc[](slotval1, slotval2)

proc onprogressRangeChanged*(self: QFutureWatcherBase, slot: proc(minimum: cint, maximum: cint)) =
  type Cb = proc(minimum: cint, maximum: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQFutureWatcherBase_connect_progressRangeChanged(self.h, cast[int](addr tmp[]))
proc progressValueChanged*(self: QFutureWatcherBase, progressValue: cint): void =

  fcQFutureWatcherBase_progressValueChanged(self.h, progressValue)

proc miqt_exec_callback_QFutureWatcherBase_progressValueChanged(slot: int, progressValue: cint) {.exportc.} =
  type Cb = proc(progressValue: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = progressValue


  nimfunc[](slotval1)

proc onprogressValueChanged*(self: QFutureWatcherBase, slot: proc(progressValue: cint)) =
  type Cb = proc(progressValue: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQFutureWatcherBase_connect_progressValueChanged(self.h, cast[int](addr tmp[]))
proc progressTextChanged*(self: QFutureWatcherBase, progressText: string): void =

  fcQFutureWatcherBase_progressTextChanged(self.h, struct_miqt_string(data: progressText, len: csize_t(len(progressText))))

proc miqt_exec_callback_QFutureWatcherBase_progressTextChanged(slot: int, progressText: struct_miqt_string) {.exportc.} =
  type Cb = proc(progressText: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vprogressText_ms = progressText
  let vprogressTextx_ret = string.fromBytes(toOpenArrayByte(vprogressText_ms.data, 0, int(vprogressText_ms.len)-1))
  c_free(vprogressText_ms.data)
  let slotval1 = vprogressTextx_ret


  nimfunc[](slotval1)

proc onprogressTextChanged*(self: QFutureWatcherBase, slot: proc(progressText: string)) =
  type Cb = proc(progressText: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQFutureWatcherBase_connect_progressTextChanged(self.h, cast[int](addr tmp[]))
proc cancel*(self: QFutureWatcherBase, ): void =

  fcQFutureWatcherBase_cancel(self.h)

proc setPaused*(self: QFutureWatcherBase, paused: bool): void =

  fcQFutureWatcherBase_setPaused(self.h, paused)

proc pause*(self: QFutureWatcherBase, ): void =

  fcQFutureWatcherBase_pause(self.h)

proc resume*(self: QFutureWatcherBase, ): void =

  fcQFutureWatcherBase_resume(self.h)

proc togglePaused*(self: QFutureWatcherBase, ): void =

  fcQFutureWatcherBase_togglePaused(self.h)

proc tr2*(_: type QFutureWatcherBase, s: cstring, c: cstring): string =

  let v_ms = fcQFutureWatcherBase_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QFutureWatcherBase, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQFutureWatcherBase_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QFutureWatcherBase, s: cstring, c: cstring): string =

  let v_ms = fcQFutureWatcherBase_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QFutureWatcherBase, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQFutureWatcherBase_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QFutureWatcherBase) =
  fcQFutureWatcherBase_delete(self.h)
