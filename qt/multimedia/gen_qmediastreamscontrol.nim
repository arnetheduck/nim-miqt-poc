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
{.compile("gen_qmediastreamscontrol.cpp", cflags).}


type QMediaStreamsControlStreamTypeEnum* = distinct cint
template UnknownStream*(_: type QMediaStreamsControlStreamTypeEnum): untyped = 0
template VideoStream*(_: type QMediaStreamsControlStreamTypeEnum): untyped = 1
template AudioStream*(_: type QMediaStreamsControlStreamTypeEnum): untyped = 2
template SubPictureStream*(_: type QMediaStreamsControlStreamTypeEnum): untyped = 3
template DataStream*(_: type QMediaStreamsControlStreamTypeEnum): untyped = 4

import gen_qmediastreamscontrol_types
export gen_qmediastreamscontrol_types

import
  gen_qmediacontrol,
  gen_qobjectdefs_types,
  gen_qvariant_types
export
  gen_qmediacontrol,
  gen_qobjectdefs_types,
  gen_qvariant_types

type cQMediaStreamsControl*{.exportc: "QMediaStreamsControl", incompleteStruct.} = object

proc fcQMediaStreamsControl_metaObject(self: pointer, ): pointer {.importc: "QMediaStreamsControl_metaObject".}
proc fcQMediaStreamsControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaStreamsControl_metacast".}
proc fcQMediaStreamsControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaStreamsControl_metacall".}
proc fcQMediaStreamsControl_tr(s: cstring): struct_miqt_string {.importc: "QMediaStreamsControl_tr".}
proc fcQMediaStreamsControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaStreamsControl_trUtf8".}
proc fcQMediaStreamsControl_streamCount(self: pointer, ): cint {.importc: "QMediaStreamsControl_streamCount".}
proc fcQMediaStreamsControl_streamType(self: pointer, streamNumber: cint): cint {.importc: "QMediaStreamsControl_streamType".}
proc fcQMediaStreamsControl_metaData(self: pointer, streamNumber: cint, key: struct_miqt_string): pointer {.importc: "QMediaStreamsControl_metaData".}
proc fcQMediaStreamsControl_isActive(self: pointer, streamNumber: cint): bool {.importc: "QMediaStreamsControl_isActive".}
proc fcQMediaStreamsControl_setActive(self: pointer, streamNumber: cint, state: bool): void {.importc: "QMediaStreamsControl_setActive".}
proc fcQMediaStreamsControl_streamsChanged(self: pointer, ): void {.importc: "QMediaStreamsControl_streamsChanged".}
proc fcQMediaStreamsControl_connect_streamsChanged(self: pointer, slot: int) {.importc: "QMediaStreamsControl_connect_streamsChanged".}
proc fcQMediaStreamsControl_activeStreamsChanged(self: pointer, ): void {.importc: "QMediaStreamsControl_activeStreamsChanged".}
proc fcQMediaStreamsControl_connect_activeStreamsChanged(self: pointer, slot: int) {.importc: "QMediaStreamsControl_connect_activeStreamsChanged".}
proc fcQMediaStreamsControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaStreamsControl_tr2".}
proc fcQMediaStreamsControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaStreamsControl_tr3".}
proc fcQMediaStreamsControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaStreamsControl_trUtf82".}
proc fcQMediaStreamsControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaStreamsControl_trUtf83".}
proc fcQMediaStreamsControl_staticMetaObject(): pointer {.importc: "QMediaStreamsControl_staticMetaObject".}
proc fcQMediaStreamsControl_delete(self: pointer) {.importc: "QMediaStreamsControl_delete".}

proc metaObject*(self: gen_qmediastreamscontrol_types.QMediaStreamsControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaStreamsControl_metaObject(self.h))

proc metacast*(self: gen_qmediastreamscontrol_types.QMediaStreamsControl, param1: cstring): pointer =
  fcQMediaStreamsControl_metacast(self.h, param1)

proc metacall*(self: gen_qmediastreamscontrol_types.QMediaStreamsControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaStreamsControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmediastreamscontrol_types.QMediaStreamsControl, s: cstring): string =
  let v_ms = fcQMediaStreamsControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediastreamscontrol_types.QMediaStreamsControl, s: cstring): string =
  let v_ms = fcQMediaStreamsControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc streamCount*(self: gen_qmediastreamscontrol_types.QMediaStreamsControl, ): cint =
  fcQMediaStreamsControl_streamCount(self.h)

proc streamType*(self: gen_qmediastreamscontrol_types.QMediaStreamsControl, streamNumber: cint): cint =
  cint(fcQMediaStreamsControl_streamType(self.h, streamNumber))

proc metaData*(self: gen_qmediastreamscontrol_types.QMediaStreamsControl, streamNumber: cint, key: string): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQMediaStreamsControl_metaData(self.h, streamNumber, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc isActive*(self: gen_qmediastreamscontrol_types.QMediaStreamsControl, streamNumber: cint): bool =
  fcQMediaStreamsControl_isActive(self.h, streamNumber)

proc setActive*(self: gen_qmediastreamscontrol_types.QMediaStreamsControl, streamNumber: cint, state: bool): void =
  fcQMediaStreamsControl_setActive(self.h, streamNumber, state)

proc streamsChanged*(self: gen_qmediastreamscontrol_types.QMediaStreamsControl, ): void =
  fcQMediaStreamsControl_streamsChanged(self.h)

type QMediaStreamsControlstreamsChangedSlot* = proc()
proc miqt_exec_callback_cQMediaStreamsControl_streamsChanged(slot: int) {.exportc: "miqt_exec_callback_QMediaStreamsControl_streamsChanged".} =
  let nimfunc = cast[ptr QMediaStreamsControlstreamsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQMediaStreamsControl_streamsChanged_release(slot: int) {.exportc: "miqt_exec_callback_QMediaStreamsControl_streamsChanged_release".} =
  let nimfunc = cast[ref QMediaStreamsControlstreamsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstreamsChanged*(self: gen_qmediastreamscontrol_types.QMediaStreamsControl, slot: QMediaStreamsControlstreamsChangedSlot) =
  var tmp = new QMediaStreamsControlstreamsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaStreamsControl_connect_streamsChanged(self.h, cast[int](addr tmp[]))

proc activeStreamsChanged*(self: gen_qmediastreamscontrol_types.QMediaStreamsControl, ): void =
  fcQMediaStreamsControl_activeStreamsChanged(self.h)

type QMediaStreamsControlactiveStreamsChangedSlot* = proc()
proc miqt_exec_callback_cQMediaStreamsControl_activeStreamsChanged(slot: int) {.exportc: "miqt_exec_callback_QMediaStreamsControl_activeStreamsChanged".} =
  let nimfunc = cast[ptr QMediaStreamsControlactiveStreamsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQMediaStreamsControl_activeStreamsChanged_release(slot: int) {.exportc: "miqt_exec_callback_QMediaStreamsControl_activeStreamsChanged_release".} =
  let nimfunc = cast[ref QMediaStreamsControlactiveStreamsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onactiveStreamsChanged*(self: gen_qmediastreamscontrol_types.QMediaStreamsControl, slot: QMediaStreamsControlactiveStreamsChangedSlot) =
  var tmp = new QMediaStreamsControlactiveStreamsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaStreamsControl_connect_activeStreamsChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qmediastreamscontrol_types.QMediaStreamsControl, s: cstring, c: cstring): string =
  let v_ms = fcQMediaStreamsControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmediastreamscontrol_types.QMediaStreamsControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaStreamsControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediastreamscontrol_types.QMediaStreamsControl, s: cstring, c: cstring): string =
  let v_ms = fcQMediaStreamsControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediastreamscontrol_types.QMediaStreamsControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaStreamsControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qmediastreamscontrol_types.QMediaStreamsControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaStreamsControl_staticMetaObject())
proc delete*(self: gen_qmediastreamscontrol_types.QMediaStreamsControl) =
  fcQMediaStreamsControl_delete(self.h)
