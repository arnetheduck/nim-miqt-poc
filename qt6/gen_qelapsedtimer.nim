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
{.compile("gen_qelapsedtimer.cpp", cflags).}


type QElapsedTimerClockType* = cint
const
  QElapsedTimerSystemTime* = 0
  QElapsedTimerMonotonicClock* = 1
  QElapsedTimerMachAbsoluteTime* = 2
  QElapsedTimerPerformanceCounter* = 3



import gen_qelapsedtimer_types
export gen_qelapsedtimer_types


type cQElapsedTimer*{.exportc: "QElapsedTimer", incompleteStruct.} = object

proc fcQElapsedTimer_new(): ptr cQElapsedTimer {.importc: "QElapsedTimer_new".}
proc fcQElapsedTimer_clockType(): cint {.importc: "QElapsedTimer_clockType".}
proc fcQElapsedTimer_isMonotonic(): bool {.importc: "QElapsedTimer_isMonotonic".}
proc fcQElapsedTimer_start(self: pointer, ): void {.importc: "QElapsedTimer_start".}
proc fcQElapsedTimer_restart(self: pointer, ): clonglong {.importc: "QElapsedTimer_restart".}
proc fcQElapsedTimer_invalidate(self: pointer, ): void {.importc: "QElapsedTimer_invalidate".}
proc fcQElapsedTimer_isValid(self: pointer, ): bool {.importc: "QElapsedTimer_isValid".}
proc fcQElapsedTimer_nsecsElapsed(self: pointer, ): clonglong {.importc: "QElapsedTimer_nsecsElapsed".}
proc fcQElapsedTimer_elapsed(self: pointer, ): clonglong {.importc: "QElapsedTimer_elapsed".}
proc fcQElapsedTimer_hasExpired(self: pointer, timeout: clonglong): bool {.importc: "QElapsedTimer_hasExpired".}
proc fcQElapsedTimer_msecsSinceReference(self: pointer, ): clonglong {.importc: "QElapsedTimer_msecsSinceReference".}
proc fcQElapsedTimer_msecsTo(self: pointer, other: pointer): clonglong {.importc: "QElapsedTimer_msecsTo".}
proc fcQElapsedTimer_secsTo(self: pointer, other: pointer): clonglong {.importc: "QElapsedTimer_secsTo".}
proc fcQElapsedTimer_delete(self: pointer) {.importc: "QElapsedTimer_delete".}


func init*(T: type QElapsedTimer, h: ptr cQElapsedTimer): QElapsedTimer =
  T(h: h)
proc create*(T: type QElapsedTimer, ): QElapsedTimer =

  QElapsedTimer.init(fcQElapsedTimer_new())
proc clockType*(_: type QElapsedTimer, ): QElapsedTimerClockType =

  QElapsedTimerClockType(fcQElapsedTimer_clockType())

proc isMonotonic*(_: type QElapsedTimer, ): bool =

  fcQElapsedTimer_isMonotonic()

proc start*(self: QElapsedTimer, ): void =

  fcQElapsedTimer_start(self.h)

proc restart*(self: QElapsedTimer, ): clonglong =

  fcQElapsedTimer_restart(self.h)

proc invalidate*(self: QElapsedTimer, ): void =

  fcQElapsedTimer_invalidate(self.h)

proc isValid*(self: QElapsedTimer, ): bool =

  fcQElapsedTimer_isValid(self.h)

proc nsecsElapsed*(self: QElapsedTimer, ): clonglong =

  fcQElapsedTimer_nsecsElapsed(self.h)

proc elapsed*(self: QElapsedTimer, ): clonglong =

  fcQElapsedTimer_elapsed(self.h)

proc hasExpired*(self: QElapsedTimer, timeout: clonglong): bool =

  fcQElapsedTimer_hasExpired(self.h, timeout)

proc msecsSinceReference*(self: QElapsedTimer, ): clonglong =

  fcQElapsedTimer_msecsSinceReference(self.h)

proc msecsTo*(self: QElapsedTimer, other: QElapsedTimer): clonglong =

  fcQElapsedTimer_msecsTo(self.h, other.h)

proc secsTo*(self: QElapsedTimer, other: QElapsedTimer): clonglong =

  fcQElapsedTimer_secsTo(self.h, other.h)

proc delete*(self: QElapsedTimer) =
  fcQElapsedTimer_delete(self.h)
