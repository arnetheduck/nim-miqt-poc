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


type QMediaStreamsControlStreamType* = cint
const
  QMediaStreamsControlUnknownStream* = 0
  QMediaStreamsControlVideoStream* = 1
  QMediaStreamsControlAudioStream* = 2
  QMediaStreamsControlSubPictureStream* = 3
  QMediaStreamsControlDataStream* = 4



import gen_qmediastreamscontrol_types
export gen_qmediastreamscontrol_types

import
  gen_qmediacontrol,
  gen_qobjectdefs,
  gen_qvariant
export
  gen_qmediacontrol,
  gen_qobjectdefs,
  gen_qvariant

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
proc fQMediaStreamsControl_connect_streamsChanged(self: pointer, slot: int) {.importc: "QMediaStreamsControl_connect_streamsChanged".}
proc fcQMediaStreamsControl_activeStreamsChanged(self: pointer, ): void {.importc: "QMediaStreamsControl_activeStreamsChanged".}
proc fQMediaStreamsControl_connect_activeStreamsChanged(self: pointer, slot: int) {.importc: "QMediaStreamsControl_connect_activeStreamsChanged".}
proc fcQMediaStreamsControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaStreamsControl_tr2".}
proc fcQMediaStreamsControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaStreamsControl_tr3".}
proc fcQMediaStreamsControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaStreamsControl_trUtf82".}
proc fcQMediaStreamsControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaStreamsControl_trUtf83".}
proc fcQMediaStreamsControl_delete(self: pointer) {.importc: "QMediaStreamsControl_delete".}


func init*(T: type QMediaStreamsControl, h: ptr cQMediaStreamsControl): QMediaStreamsControl =
  T(h: h)
proc metaObject*(self: QMediaStreamsControl, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMediaStreamsControl_metaObject(self.h))

proc metacast*(self: QMediaStreamsControl, param1: cstring): pointer =

  fcQMediaStreamsControl_metacast(self.h, param1)

proc metacall*(self: QMediaStreamsControl, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQMediaStreamsControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QMediaStreamsControl, s: cstring): string =

  let v_ms = fcQMediaStreamsControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QMediaStreamsControl, s: cstring): string =

  let v_ms = fcQMediaStreamsControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc streamCount*(self: QMediaStreamsControl, ): cint =

  fcQMediaStreamsControl_streamCount(self.h)

proc streamType*(self: QMediaStreamsControl, streamNumber: cint): QMediaStreamsControlStreamType =

  QMediaStreamsControlStreamType(fcQMediaStreamsControl_streamType(self.h, streamNumber))

proc metaData*(self: QMediaStreamsControl, streamNumber: cint, key: string): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQMediaStreamsControl_metaData(self.h, streamNumber, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc isActive*(self: QMediaStreamsControl, streamNumber: cint): bool =

  fcQMediaStreamsControl_isActive(self.h, streamNumber)

proc setActive*(self: QMediaStreamsControl, streamNumber: cint, state: bool): void =

  fcQMediaStreamsControl_setActive(self.h, streamNumber, state)

proc streamsChanged*(self: QMediaStreamsControl, ): void =

  fcQMediaStreamsControl_streamsChanged(self.h)

proc miqt_exec_callback_QMediaStreamsControl_streamsChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onstreamsChanged*(self: QMediaStreamsControl, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaStreamsControl_connect_streamsChanged(self.h, cast[int](addr tmp[]))
proc activeStreamsChanged*(self: QMediaStreamsControl, ): void =

  fcQMediaStreamsControl_activeStreamsChanged(self.h)

proc miqt_exec_callback_QMediaStreamsControl_activeStreamsChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onactiveStreamsChanged*(self: QMediaStreamsControl, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaStreamsControl_connect_activeStreamsChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QMediaStreamsControl, s: cstring, c: cstring): string =

  let v_ms = fcQMediaStreamsControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QMediaStreamsControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMediaStreamsControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QMediaStreamsControl, s: cstring, c: cstring): string =

  let v_ms = fcQMediaStreamsControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QMediaStreamsControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMediaStreamsControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QMediaStreamsControl) =
  fcQMediaStreamsControl_delete(self.h)
