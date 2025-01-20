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
{.compile("gen_qmediatimerange.cpp", cflags).}


import gen_qmediatimerange_types
export gen_qmediatimerange_types


type cQMediaTimeInterval*{.exportc: "QMediaTimeInterval", incompleteStruct.} = object
type cQMediaTimeRange*{.exportc: "QMediaTimeRange", incompleteStruct.} = object

proc fcQMediaTimeInterval_new(): ptr cQMediaTimeInterval {.importc: "QMediaTimeInterval_new".}
proc fcQMediaTimeInterval_new2(start: clonglong, endVal: clonglong): ptr cQMediaTimeInterval {.importc: "QMediaTimeInterval_new2".}
proc fcQMediaTimeInterval_new3(param1: pointer): ptr cQMediaTimeInterval {.importc: "QMediaTimeInterval_new3".}
proc fcQMediaTimeInterval_operatorAssign(self: pointer, param1: pointer): void {.importc: "QMediaTimeInterval_operatorAssign".}
proc fcQMediaTimeInterval_start(self: pointer, ): clonglong {.importc: "QMediaTimeInterval_start".}
proc fcQMediaTimeInterval_endX(self: pointer, ): clonglong {.importc: "QMediaTimeInterval_end".}
proc fcQMediaTimeInterval_contains(self: pointer, time: clonglong): bool {.importc: "QMediaTimeInterval_contains".}
proc fcQMediaTimeInterval_isNormal(self: pointer, ): bool {.importc: "QMediaTimeInterval_isNormal".}
proc fcQMediaTimeInterval_normalized(self: pointer, ): pointer {.importc: "QMediaTimeInterval_normalized".}
proc fcQMediaTimeInterval_translated(self: pointer, offset: clonglong): pointer {.importc: "QMediaTimeInterval_translated".}
proc fcQMediaTimeInterval_delete(self: pointer) {.importc: "QMediaTimeInterval_delete".}
proc fcQMediaTimeRange_new(): ptr cQMediaTimeRange {.importc: "QMediaTimeRange_new".}
proc fcQMediaTimeRange_new2(start: clonglong, endVal: clonglong): ptr cQMediaTimeRange {.importc: "QMediaTimeRange_new2".}
proc fcQMediaTimeRange_new3(param1: pointer): ptr cQMediaTimeRange {.importc: "QMediaTimeRange_new3".}
proc fcQMediaTimeRange_new4(range: pointer): ptr cQMediaTimeRange {.importc: "QMediaTimeRange_new4".}
proc fcQMediaTimeRange_operatorAssign(self: pointer, param1: pointer): void {.importc: "QMediaTimeRange_operatorAssign".}
proc fcQMediaTimeRange_operatorAssignWithQMediaTimeInterval(self: pointer, param1: pointer): void {.importc: "QMediaTimeRange_operatorAssignWithQMediaTimeInterval".}
proc fcQMediaTimeRange_earliestTime(self: pointer, ): clonglong {.importc: "QMediaTimeRange_earliestTime".}
proc fcQMediaTimeRange_latestTime(self: pointer, ): clonglong {.importc: "QMediaTimeRange_latestTime".}
proc fcQMediaTimeRange_intervals(self: pointer, ): struct_miqt_array {.importc: "QMediaTimeRange_intervals".}
proc fcQMediaTimeRange_isEmpty(self: pointer, ): bool {.importc: "QMediaTimeRange_isEmpty".}
proc fcQMediaTimeRange_isContinuous(self: pointer, ): bool {.importc: "QMediaTimeRange_isContinuous".}
proc fcQMediaTimeRange_contains(self: pointer, time: clonglong): bool {.importc: "QMediaTimeRange_contains".}
proc fcQMediaTimeRange_addInterval(self: pointer, start: clonglong, endVal: clonglong): void {.importc: "QMediaTimeRange_addInterval".}
proc fcQMediaTimeRange_addIntervalWithInterval(self: pointer, interval: pointer): void {.importc: "QMediaTimeRange_addIntervalWithInterval".}
proc fcQMediaTimeRange_addTimeRange(self: pointer, param1: pointer): void {.importc: "QMediaTimeRange_addTimeRange".}
proc fcQMediaTimeRange_removeInterval(self: pointer, start: clonglong, endVal: clonglong): void {.importc: "QMediaTimeRange_removeInterval".}
proc fcQMediaTimeRange_removeIntervalWithInterval(self: pointer, interval: pointer): void {.importc: "QMediaTimeRange_removeIntervalWithInterval".}
proc fcQMediaTimeRange_removeTimeRange(self: pointer, param1: pointer): void {.importc: "QMediaTimeRange_removeTimeRange".}
proc fcQMediaTimeRange_operatorPlusAssign(self: pointer, param1: pointer): pointer {.importc: "QMediaTimeRange_operatorPlusAssign".}
proc fcQMediaTimeRange_operatorPlusAssignWithQMediaTimeInterval(self: pointer, param1: pointer): pointer {.importc: "QMediaTimeRange_operatorPlusAssignWithQMediaTimeInterval".}
proc fcQMediaTimeRange_operatorMinusAssign(self: pointer, param1: pointer): pointer {.importc: "QMediaTimeRange_operatorMinusAssign".}
proc fcQMediaTimeRange_operatorMinusAssignWithQMediaTimeInterval(self: pointer, param1: pointer): pointer {.importc: "QMediaTimeRange_operatorMinusAssignWithQMediaTimeInterval".}
proc fcQMediaTimeRange_clear(self: pointer, ): void {.importc: "QMediaTimeRange_clear".}
proc fcQMediaTimeRange_delete(self: pointer) {.importc: "QMediaTimeRange_delete".}


func init*(T: type gen_qmediatimerange_types.QMediaTimeInterval, h: ptr cQMediaTimeInterval): gen_qmediatimerange_types.QMediaTimeInterval =
  T(h: h)
proc create*(T: type gen_qmediatimerange_types.QMediaTimeInterval, ): gen_qmediatimerange_types.QMediaTimeInterval =

  gen_qmediatimerange_types.QMediaTimeInterval.init(fcQMediaTimeInterval_new())
proc create*(T: type gen_qmediatimerange_types.QMediaTimeInterval, start: clonglong, endVal: clonglong): gen_qmediatimerange_types.QMediaTimeInterval =

  gen_qmediatimerange_types.QMediaTimeInterval.init(fcQMediaTimeInterval_new2(start, endVal))
proc create*(T: type gen_qmediatimerange_types.QMediaTimeInterval, param1: gen_qmediatimerange_types.QMediaTimeInterval): gen_qmediatimerange_types.QMediaTimeInterval =

  gen_qmediatimerange_types.QMediaTimeInterval.init(fcQMediaTimeInterval_new3(param1.h))
proc operatorAssign*(self: gen_qmediatimerange_types.QMediaTimeInterval, param1: gen_qmediatimerange_types.QMediaTimeInterval): void =

  fcQMediaTimeInterval_operatorAssign(self.h, param1.h)

proc start*(self: gen_qmediatimerange_types.QMediaTimeInterval, ): clonglong =

  fcQMediaTimeInterval_start(self.h)

proc endX*(self: gen_qmediatimerange_types.QMediaTimeInterval, ): clonglong =

  fcQMediaTimeInterval_endX(self.h)

proc contains*(self: gen_qmediatimerange_types.QMediaTimeInterval, time: clonglong): bool =

  fcQMediaTimeInterval_contains(self.h, time)

proc isNormal*(self: gen_qmediatimerange_types.QMediaTimeInterval, ): bool =

  fcQMediaTimeInterval_isNormal(self.h)

proc normalized*(self: gen_qmediatimerange_types.QMediaTimeInterval, ): gen_qmediatimerange_types.QMediaTimeInterval =

  gen_qmediatimerange_types.QMediaTimeInterval(h: fcQMediaTimeInterval_normalized(self.h))

proc translated*(self: gen_qmediatimerange_types.QMediaTimeInterval, offset: clonglong): gen_qmediatimerange_types.QMediaTimeInterval =

  gen_qmediatimerange_types.QMediaTimeInterval(h: fcQMediaTimeInterval_translated(self.h, offset))

proc delete*(self: gen_qmediatimerange_types.QMediaTimeInterval) =
  fcQMediaTimeInterval_delete(self.h)

func init*(T: type gen_qmediatimerange_types.QMediaTimeRange, h: ptr cQMediaTimeRange): gen_qmediatimerange_types.QMediaTimeRange =
  T(h: h)
proc create*(T: type gen_qmediatimerange_types.QMediaTimeRange, ): gen_qmediatimerange_types.QMediaTimeRange =

  gen_qmediatimerange_types.QMediaTimeRange.init(fcQMediaTimeRange_new())
proc create*(T: type gen_qmediatimerange_types.QMediaTimeRange, start: clonglong, endVal: clonglong): gen_qmediatimerange_types.QMediaTimeRange =

  gen_qmediatimerange_types.QMediaTimeRange.init(fcQMediaTimeRange_new2(start, endVal))
proc create*(T: type gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeInterval): gen_qmediatimerange_types.QMediaTimeRange =

  gen_qmediatimerange_types.QMediaTimeRange.init(fcQMediaTimeRange_new3(param1.h))
proc create2*(T: type gen_qmediatimerange_types.QMediaTimeRange, range: gen_qmediatimerange_types.QMediaTimeRange): gen_qmediatimerange_types.QMediaTimeRange =

  gen_qmediatimerange_types.QMediaTimeRange.init(fcQMediaTimeRange_new4(range.h))
proc operatorAssign*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeRange): void =

  fcQMediaTimeRange_operatorAssign(self.h, param1.h)

proc operatorAssignWithQMediaTimeInterval*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeInterval): void =

  fcQMediaTimeRange_operatorAssignWithQMediaTimeInterval(self.h, param1.h)

proc earliestTime*(self: gen_qmediatimerange_types.QMediaTimeRange, ): clonglong =

  fcQMediaTimeRange_earliestTime(self.h)

proc latestTime*(self: gen_qmediatimerange_types.QMediaTimeRange, ): clonglong =

  fcQMediaTimeRange_latestTime(self.h)

proc intervals*(self: gen_qmediatimerange_types.QMediaTimeRange, ): seq[gen_qmediatimerange_types.QMediaTimeInterval] =

  var v_ma = fcQMediaTimeRange_intervals(self.h)
  var vx_ret = newSeq[gen_qmediatimerange_types.QMediaTimeInterval](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qmediatimerange_types.QMediaTimeInterval(h: v_outCast[i])
  vx_ret

proc isEmpty*(self: gen_qmediatimerange_types.QMediaTimeRange, ): bool =

  fcQMediaTimeRange_isEmpty(self.h)

proc isContinuous*(self: gen_qmediatimerange_types.QMediaTimeRange, ): bool =

  fcQMediaTimeRange_isContinuous(self.h)

proc contains*(self: gen_qmediatimerange_types.QMediaTimeRange, time: clonglong): bool =

  fcQMediaTimeRange_contains(self.h, time)

proc addInterval*(self: gen_qmediatimerange_types.QMediaTimeRange, start: clonglong, endVal: clonglong): void =

  fcQMediaTimeRange_addInterval(self.h, start, endVal)

proc addIntervalWithInterval*(self: gen_qmediatimerange_types.QMediaTimeRange, interval: gen_qmediatimerange_types.QMediaTimeInterval): void =

  fcQMediaTimeRange_addIntervalWithInterval(self.h, interval.h)

proc addTimeRange*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeRange): void =

  fcQMediaTimeRange_addTimeRange(self.h, param1.h)

proc removeInterval*(self: gen_qmediatimerange_types.QMediaTimeRange, start: clonglong, endVal: clonglong): void =

  fcQMediaTimeRange_removeInterval(self.h, start, endVal)

proc removeIntervalWithInterval*(self: gen_qmediatimerange_types.QMediaTimeRange, interval: gen_qmediatimerange_types.QMediaTimeInterval): void =

  fcQMediaTimeRange_removeIntervalWithInterval(self.h, interval.h)

proc removeTimeRange*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeRange): void =

  fcQMediaTimeRange_removeTimeRange(self.h, param1.h)

proc operatorPlusAssign*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeRange): gen_qmediatimerange_types.QMediaTimeRange =

  gen_qmediatimerange_types.QMediaTimeRange(h: fcQMediaTimeRange_operatorPlusAssign(self.h, param1.h))

proc operatorPlusAssignWithQMediaTimeInterval*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeInterval): gen_qmediatimerange_types.QMediaTimeRange =

  gen_qmediatimerange_types.QMediaTimeRange(h: fcQMediaTimeRange_operatorPlusAssignWithQMediaTimeInterval(self.h, param1.h))

proc operatorMinusAssign*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeRange): gen_qmediatimerange_types.QMediaTimeRange =

  gen_qmediatimerange_types.QMediaTimeRange(h: fcQMediaTimeRange_operatorMinusAssign(self.h, param1.h))

proc operatorMinusAssignWithQMediaTimeInterval*(self: gen_qmediatimerange_types.QMediaTimeRange, param1: gen_qmediatimerange_types.QMediaTimeInterval): gen_qmediatimerange_types.QMediaTimeRange =

  gen_qmediatimerange_types.QMediaTimeRange(h: fcQMediaTimeRange_operatorMinusAssignWithQMediaTimeInterval(self.h, param1.h))

proc clear*(self: gen_qmediatimerange_types.QMediaTimeRange, ): void =

  fcQMediaTimeRange_clear(self.h)

proc delete*(self: gen_qmediatimerange_types.QMediaTimeRange) =
  fcQMediaTimeRange_delete(self.h)
