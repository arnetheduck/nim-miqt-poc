import Qt6Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt6Widgets")
{.compile("gen_qfutureinterface.cpp", cflags).}


type QFutureInterfaceBaseState* = cint
const
  QFutureInterfaceBaseNoState* = 0
  QFutureInterfaceBaseRunning* = 1
  QFutureInterfaceBaseStarted* = 2
  QFutureInterfaceBaseFinished* = 4
  QFutureInterfaceBaseCanceled* = 8
  QFutureInterfaceBaseSuspending* = 16
  QFutureInterfaceBaseSuspended* = 32
  QFutureInterfaceBaseThrottled* = 64
  QFutureInterfaceBasePending* = 128



type QFutureInterfaceBaseCancelMode* = cint
const
  QFutureInterfaceBaseCancelOnly* = 0
  QFutureInterfaceBaseCancelAndFinish* = 1



import gen_qfutureinterface_types
export gen_qfutureinterface_types

import
  gen_qmutex,
  gen_qrunnable,
  gen_qthreadpool
export
  gen_qmutex,
  gen_qrunnable,
  gen_qthreadpool

type cQFutureInterfaceBase*{.exportc: "QFutureInterfaceBase", incompleteStruct.} = object

proc fcQFutureInterfaceBase_new(): ptr cQFutureInterfaceBase {.importc: "QFutureInterfaceBase_new".}
proc fcQFutureInterfaceBase_new2(other: pointer): ptr cQFutureInterfaceBase {.importc: "QFutureInterfaceBase_new2".}
proc fcQFutureInterfaceBase_new3(initialState: cint): ptr cQFutureInterfaceBase {.importc: "QFutureInterfaceBase_new3".}
proc fcQFutureInterfaceBase_operatorAssign(self: pointer, other: pointer): void {.importc: "QFutureInterfaceBase_operatorAssign".}
proc fcQFutureInterfaceBase_reportStarted(self: pointer, ): void {.importc: "QFutureInterfaceBase_reportStarted".}
proc fcQFutureInterfaceBase_reportFinished(self: pointer, ): void {.importc: "QFutureInterfaceBase_reportFinished".}
proc fcQFutureInterfaceBase_reportCanceled(self: pointer, ): void {.importc: "QFutureInterfaceBase_reportCanceled".}
proc fcQFutureInterfaceBase_reportResultsReady(self: pointer, beginIndex: cint, endIndex: cint): void {.importc: "QFutureInterfaceBase_reportResultsReady".}
proc fcQFutureInterfaceBase_setRunnable(self: pointer, runnable: pointer): void {.importc: "QFutureInterfaceBase_setRunnable".}
proc fcQFutureInterfaceBase_setThreadPool(self: pointer, pool: pointer): void {.importc: "QFutureInterfaceBase_setThreadPool".}
proc fcQFutureInterfaceBase_threadPool(self: pointer, ): pointer {.importc: "QFutureInterfaceBase_threadPool".}
proc fcQFutureInterfaceBase_setFilterMode(self: pointer, enable: bool): void {.importc: "QFutureInterfaceBase_setFilterMode".}
proc fcQFutureInterfaceBase_setProgressRange(self: pointer, minimum: cint, maximum: cint): void {.importc: "QFutureInterfaceBase_setProgressRange".}
proc fcQFutureInterfaceBase_progressMinimum(self: pointer, ): cint {.importc: "QFutureInterfaceBase_progressMinimum".}
proc fcQFutureInterfaceBase_progressMaximum(self: pointer, ): cint {.importc: "QFutureInterfaceBase_progressMaximum".}
proc fcQFutureInterfaceBase_isProgressUpdateNeeded(self: pointer, ): bool {.importc: "QFutureInterfaceBase_isProgressUpdateNeeded".}
proc fcQFutureInterfaceBase_setProgressValue(self: pointer, progressValue: cint): void {.importc: "QFutureInterfaceBase_setProgressValue".}
proc fcQFutureInterfaceBase_progressValue(self: pointer, ): cint {.importc: "QFutureInterfaceBase_progressValue".}
proc fcQFutureInterfaceBase_setProgressValueAndText(self: pointer, progressValue: cint, progressText: struct_miqt_string): void {.importc: "QFutureInterfaceBase_setProgressValueAndText".}
proc fcQFutureInterfaceBase_progressText(self: pointer, ): struct_miqt_string {.importc: "QFutureInterfaceBase_progressText".}
proc fcQFutureInterfaceBase_setExpectedResultCount(self: pointer, resultCount: cint): void {.importc: "QFutureInterfaceBase_setExpectedResultCount".}
proc fcQFutureInterfaceBase_expectedResultCount(self: pointer, ): cint {.importc: "QFutureInterfaceBase_expectedResultCount".}
proc fcQFutureInterfaceBase_resultCount(self: pointer, ): cint {.importc: "QFutureInterfaceBase_resultCount".}
proc fcQFutureInterfaceBase_queryState(self: pointer, state: cint): bool {.importc: "QFutureInterfaceBase_queryState".}
proc fcQFutureInterfaceBase_isRunning(self: pointer, ): bool {.importc: "QFutureInterfaceBase_isRunning".}
proc fcQFutureInterfaceBase_isStarted(self: pointer, ): bool {.importc: "QFutureInterfaceBase_isStarted".}
proc fcQFutureInterfaceBase_isCanceled(self: pointer, ): bool {.importc: "QFutureInterfaceBase_isCanceled".}
proc fcQFutureInterfaceBase_isFinished(self: pointer, ): bool {.importc: "QFutureInterfaceBase_isFinished".}
proc fcQFutureInterfaceBase_isPaused(self: pointer, ): bool {.importc: "QFutureInterfaceBase_isPaused".}
proc fcQFutureInterfaceBase_setPaused(self: pointer, paused: bool): void {.importc: "QFutureInterfaceBase_setPaused".}
proc fcQFutureInterfaceBase_togglePaused(self: pointer, ): void {.importc: "QFutureInterfaceBase_togglePaused".}
proc fcQFutureInterfaceBase_isSuspending(self: pointer, ): bool {.importc: "QFutureInterfaceBase_isSuspending".}
proc fcQFutureInterfaceBase_isSuspended(self: pointer, ): bool {.importc: "QFutureInterfaceBase_isSuspended".}
proc fcQFutureInterfaceBase_isThrottled(self: pointer, ): bool {.importc: "QFutureInterfaceBase_isThrottled".}
proc fcQFutureInterfaceBase_isResultReadyAt(self: pointer, index: cint): bool {.importc: "QFutureInterfaceBase_isResultReadyAt".}
proc fcQFutureInterfaceBase_isValid(self: pointer, ): bool {.importc: "QFutureInterfaceBase_isValid".}
proc fcQFutureInterfaceBase_loadState(self: pointer, ): cint {.importc: "QFutureInterfaceBase_loadState".}
proc fcQFutureInterfaceBase_cancel(self: pointer, ): void {.importc: "QFutureInterfaceBase_cancel".}
proc fcQFutureInterfaceBase_cancelAndFinish(self: pointer, ): void {.importc: "QFutureInterfaceBase_cancelAndFinish".}
proc fcQFutureInterfaceBase_setSuspended(self: pointer, suspend: bool): void {.importc: "QFutureInterfaceBase_setSuspended".}
proc fcQFutureInterfaceBase_toggleSuspended(self: pointer, ): void {.importc: "QFutureInterfaceBase_toggleSuspended".}
proc fcQFutureInterfaceBase_reportSuspended(self: pointer, ): void {.importc: "QFutureInterfaceBase_reportSuspended".}
proc fcQFutureInterfaceBase_setThrottled(self: pointer, enable: bool): void {.importc: "QFutureInterfaceBase_setThrottled".}
proc fcQFutureInterfaceBase_waitForFinished(self: pointer, ): void {.importc: "QFutureInterfaceBase_waitForFinished".}
proc fcQFutureInterfaceBase_waitForNextResult(self: pointer, ): bool {.importc: "QFutureInterfaceBase_waitForNextResult".}
proc fcQFutureInterfaceBase_waitForResult(self: pointer, resultIndex: cint): void {.importc: "QFutureInterfaceBase_waitForResult".}
proc fcQFutureInterfaceBase_waitForResume(self: pointer, ): void {.importc: "QFutureInterfaceBase_waitForResume".}
proc fcQFutureInterfaceBase_suspendIfRequested(self: pointer, ): void {.importc: "QFutureInterfaceBase_suspendIfRequested".}
proc fcQFutureInterfaceBase_mutex(self: pointer, ): pointer {.importc: "QFutureInterfaceBase_mutex".}
proc fcQFutureInterfaceBase_hasException(self: pointer, ): bool {.importc: "QFutureInterfaceBase_hasException".}
proc fcQFutureInterfaceBase_operatorEqual(self: pointer, other: pointer): bool {.importc: "QFutureInterfaceBase_operatorEqual".}
proc fcQFutureInterfaceBase_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QFutureInterfaceBase_operatorNotEqual".}
proc fcQFutureInterfaceBase_swap(self: pointer, other: pointer): void {.importc: "QFutureInterfaceBase_swap".}
proc fcQFutureInterfaceBase_isChainCanceled(self: pointer, ): bool {.importc: "QFutureInterfaceBase_isChainCanceled".}
proc fcQFutureInterfaceBase_delete(self: pointer) {.importc: "QFutureInterfaceBase_delete".}


func init*(T: type QFutureInterfaceBase, h: ptr cQFutureInterfaceBase): QFutureInterfaceBase =
  T(h: h)
proc create*(T: type QFutureInterfaceBase, ): QFutureInterfaceBase =

  QFutureInterfaceBase.init(fcQFutureInterfaceBase_new())
proc create*(T: type QFutureInterfaceBase, other: QFutureInterfaceBase): QFutureInterfaceBase =

  QFutureInterfaceBase.init(fcQFutureInterfaceBase_new2(other.h))
proc create*(T: type QFutureInterfaceBase, initialState: QFutureInterfaceBaseState): QFutureInterfaceBase =

  QFutureInterfaceBase.init(fcQFutureInterfaceBase_new3(cint(initialState)))
proc operatorAssign*(self: QFutureInterfaceBase, other: QFutureInterfaceBase): void =

  fcQFutureInterfaceBase_operatorAssign(self.h, other.h)

proc reportStarted*(self: QFutureInterfaceBase, ): void =

  fcQFutureInterfaceBase_reportStarted(self.h)

proc reportFinished*(self: QFutureInterfaceBase, ): void =

  fcQFutureInterfaceBase_reportFinished(self.h)

proc reportCanceled*(self: QFutureInterfaceBase, ): void =

  fcQFutureInterfaceBase_reportCanceled(self.h)

proc reportResultsReady*(self: QFutureInterfaceBase, beginIndex: cint, endIndex: cint): void =

  fcQFutureInterfaceBase_reportResultsReady(self.h, beginIndex, endIndex)

proc setRunnable*(self: QFutureInterfaceBase, runnable: gen_qrunnable.QRunnable): void =

  fcQFutureInterfaceBase_setRunnable(self.h, runnable.h)

proc setThreadPool*(self: QFutureInterfaceBase, pool: gen_qthreadpool.QThreadPool): void =

  fcQFutureInterfaceBase_setThreadPool(self.h, pool.h)

proc threadPool*(self: QFutureInterfaceBase, ): gen_qthreadpool.QThreadPool =

  gen_qthreadpool.QThreadPool(h: fcQFutureInterfaceBase_threadPool(self.h))

proc setFilterMode*(self: QFutureInterfaceBase, enable: bool): void =

  fcQFutureInterfaceBase_setFilterMode(self.h, enable)

proc setProgressRange*(self: QFutureInterfaceBase, minimum: cint, maximum: cint): void =

  fcQFutureInterfaceBase_setProgressRange(self.h, minimum, maximum)

proc progressMinimum*(self: QFutureInterfaceBase, ): cint =

  fcQFutureInterfaceBase_progressMinimum(self.h)

proc progressMaximum*(self: QFutureInterfaceBase, ): cint =

  fcQFutureInterfaceBase_progressMaximum(self.h)

proc isProgressUpdateNeeded*(self: QFutureInterfaceBase, ): bool =

  fcQFutureInterfaceBase_isProgressUpdateNeeded(self.h)

proc setProgressValue*(self: QFutureInterfaceBase, progressValue: cint): void =

  fcQFutureInterfaceBase_setProgressValue(self.h, progressValue)

proc progressValue*(self: QFutureInterfaceBase, ): cint =

  fcQFutureInterfaceBase_progressValue(self.h)

proc setProgressValueAndText*(self: QFutureInterfaceBase, progressValue: cint, progressText: string): void =

  fcQFutureInterfaceBase_setProgressValueAndText(self.h, progressValue, struct_miqt_string(data: progressText, len: csize_t(len(progressText))))

proc progressText*(self: QFutureInterfaceBase, ): string =

  let v_ms = fcQFutureInterfaceBase_progressText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setExpectedResultCount*(self: QFutureInterfaceBase, resultCount: cint): void =

  fcQFutureInterfaceBase_setExpectedResultCount(self.h, resultCount)

proc expectedResultCount*(self: QFutureInterfaceBase, ): cint =

  fcQFutureInterfaceBase_expectedResultCount(self.h)

proc resultCount*(self: QFutureInterfaceBase, ): cint =

  fcQFutureInterfaceBase_resultCount(self.h)

proc queryState*(self: QFutureInterfaceBase, state: QFutureInterfaceBaseState): bool =

  fcQFutureInterfaceBase_queryState(self.h, cint(state))

proc isRunning*(self: QFutureInterfaceBase, ): bool =

  fcQFutureInterfaceBase_isRunning(self.h)

proc isStarted*(self: QFutureInterfaceBase, ): bool =

  fcQFutureInterfaceBase_isStarted(self.h)

proc isCanceled*(self: QFutureInterfaceBase, ): bool =

  fcQFutureInterfaceBase_isCanceled(self.h)

proc isFinished*(self: QFutureInterfaceBase, ): bool =

  fcQFutureInterfaceBase_isFinished(self.h)

proc isPaused*(self: QFutureInterfaceBase, ): bool =

  fcQFutureInterfaceBase_isPaused(self.h)

proc setPaused*(self: QFutureInterfaceBase, paused: bool): void =

  fcQFutureInterfaceBase_setPaused(self.h, paused)

proc togglePaused*(self: QFutureInterfaceBase, ): void =

  fcQFutureInterfaceBase_togglePaused(self.h)

proc isSuspending*(self: QFutureInterfaceBase, ): bool =

  fcQFutureInterfaceBase_isSuspending(self.h)

proc isSuspended*(self: QFutureInterfaceBase, ): bool =

  fcQFutureInterfaceBase_isSuspended(self.h)

proc isThrottled*(self: QFutureInterfaceBase, ): bool =

  fcQFutureInterfaceBase_isThrottled(self.h)

proc isResultReadyAt*(self: QFutureInterfaceBase, index: cint): bool =

  fcQFutureInterfaceBase_isResultReadyAt(self.h, index)

proc isValid*(self: QFutureInterfaceBase, ): bool =

  fcQFutureInterfaceBase_isValid(self.h)

proc loadState*(self: QFutureInterfaceBase, ): cint =

  fcQFutureInterfaceBase_loadState(self.h)

proc cancel*(self: QFutureInterfaceBase, ): void =

  fcQFutureInterfaceBase_cancel(self.h)

proc cancelAndFinish*(self: QFutureInterfaceBase, ): void =

  fcQFutureInterfaceBase_cancelAndFinish(self.h)

proc setSuspended*(self: QFutureInterfaceBase, suspend: bool): void =

  fcQFutureInterfaceBase_setSuspended(self.h, suspend)

proc toggleSuspended*(self: QFutureInterfaceBase, ): void =

  fcQFutureInterfaceBase_toggleSuspended(self.h)

proc reportSuspended*(self: QFutureInterfaceBase, ): void =

  fcQFutureInterfaceBase_reportSuspended(self.h)

proc setThrottled*(self: QFutureInterfaceBase, enable: bool): void =

  fcQFutureInterfaceBase_setThrottled(self.h, enable)

proc waitForFinished*(self: QFutureInterfaceBase, ): void =

  fcQFutureInterfaceBase_waitForFinished(self.h)

proc waitForNextResult*(self: QFutureInterfaceBase, ): bool =

  fcQFutureInterfaceBase_waitForNextResult(self.h)

proc waitForResult*(self: QFutureInterfaceBase, resultIndex: cint): void =

  fcQFutureInterfaceBase_waitForResult(self.h, resultIndex)

proc waitForResume*(self: QFutureInterfaceBase, ): void =

  fcQFutureInterfaceBase_waitForResume(self.h)

proc suspendIfRequested*(self: QFutureInterfaceBase, ): void =

  fcQFutureInterfaceBase_suspendIfRequested(self.h)

proc mutex*(self: QFutureInterfaceBase, ): gen_qmutex.QMutex =

  gen_qmutex.QMutex(h: fcQFutureInterfaceBase_mutex(self.h))

proc hasException*(self: QFutureInterfaceBase, ): bool =

  fcQFutureInterfaceBase_hasException(self.h)

proc operatorEqual*(self: QFutureInterfaceBase, other: QFutureInterfaceBase): bool =

  fcQFutureInterfaceBase_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QFutureInterfaceBase, other: QFutureInterfaceBase): bool =

  fcQFutureInterfaceBase_operatorNotEqual(self.h, other.h)

proc swap*(self: QFutureInterfaceBase, other: QFutureInterfaceBase): void =

  fcQFutureInterfaceBase_swap(self.h, other.h)

proc isChainCanceled*(self: QFutureInterfaceBase, ): bool =

  fcQFutureInterfaceBase_isChainCanceled(self.h)

proc delete*(self: QFutureInterfaceBase) =
  fcQFutureInterfaceBase_delete(self.h)
