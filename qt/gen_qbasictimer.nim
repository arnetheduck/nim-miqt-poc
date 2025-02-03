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
{.compile("gen_qbasictimer.cpp", cflags).}


import gen_qbasictimer_types
export gen_qbasictimer_types

import
  gen_qnamespace,
  gen_qobject
export
  gen_qnamespace,
  gen_qobject

type cQBasicTimer*{.exportc: "QBasicTimer", incompleteStruct.} = object

proc fcQBasicTimer_new(param1: pointer): ptr cQBasicTimer {.importc: "QBasicTimer_new".}
proc fcQBasicTimer_new2(): ptr cQBasicTimer {.importc: "QBasicTimer_new2".}
proc fcQBasicTimer_operatorAssign(self: pointer, param1: pointer): void {.importc: "QBasicTimer_operatorAssign".}
proc fcQBasicTimer_swap(self: pointer, other: pointer): void {.importc: "QBasicTimer_swap".}
proc fcQBasicTimer_isActive(self: pointer, ): bool {.importc: "QBasicTimer_isActive".}
proc fcQBasicTimer_timerId(self: pointer, ): cint {.importc: "QBasicTimer_timerId".}
proc fcQBasicTimer_start(self: pointer, msec: cint, obj: pointer): void {.importc: "QBasicTimer_start".}
proc fcQBasicTimer_start2(self: pointer, msec: cint, timerType: cint, obj: pointer): void {.importc: "QBasicTimer_start2".}
proc fcQBasicTimer_stop(self: pointer, ): void {.importc: "QBasicTimer_stop".}
proc fcQBasicTimer_delete(self: pointer) {.importc: "QBasicTimer_delete".}


func init*(T: type QBasicTimer, h: ptr cQBasicTimer): QBasicTimer =
  T(h: h)
proc create*(T: type QBasicTimer, param1: QBasicTimer): QBasicTimer =

  QBasicTimer.init(fcQBasicTimer_new(param1.h))
proc create*(T: type QBasicTimer, ): QBasicTimer =

  QBasicTimer.init(fcQBasicTimer_new2())
proc operatorAssign*(self: QBasicTimer, param1: QBasicTimer): void =

  fcQBasicTimer_operatorAssign(self.h, param1.h)

proc swap*(self: QBasicTimer, other: QBasicTimer): void =

  fcQBasicTimer_swap(self.h, other.h)

proc isActive*(self: QBasicTimer, ): bool =

  fcQBasicTimer_isActive(self.h)

proc timerId*(self: QBasicTimer, ): cint =

  fcQBasicTimer_timerId(self.h)

proc start*(self: QBasicTimer, msec: cint, obj: gen_qobject.QObject): void =

  fcQBasicTimer_start(self.h, msec, obj.h)

proc start2*(self: QBasicTimer, msec: cint, timerType: gen_qnamespace.TimerType, obj: gen_qobject.QObject): void =

  fcQBasicTimer_start2(self.h, msec, cint(timerType), obj.h)

proc stop*(self: QBasicTimer, ): void =

  fcQBasicTimer_stop(self.h)

proc delete*(self: QBasicTimer) =
  fcQBasicTimer_delete(self.h)
