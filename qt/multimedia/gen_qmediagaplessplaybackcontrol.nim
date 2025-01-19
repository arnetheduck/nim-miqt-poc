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
{.compile("gen_qmediagaplessplaybackcontrol.cpp", cflags).}


import gen_qmediagaplessplaybackcontrol_types
export gen_qmediagaplessplaybackcontrol_types

import
  gen_qmediacontent,
  gen_qmediacontrol,
  gen_qobjectdefs
export
  gen_qmediacontent,
  gen_qmediacontrol,
  gen_qobjectdefs

type cQMediaGaplessPlaybackControl*{.exportc: "QMediaGaplessPlaybackControl", incompleteStruct.} = object

proc fcQMediaGaplessPlaybackControl_metaObject(self: pointer, ): pointer {.importc: "QMediaGaplessPlaybackControl_metaObject".}
proc fcQMediaGaplessPlaybackControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaGaplessPlaybackControl_metacast".}
proc fcQMediaGaplessPlaybackControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaGaplessPlaybackControl_metacall".}
proc fcQMediaGaplessPlaybackControl_tr(s: cstring): struct_miqt_string {.importc: "QMediaGaplessPlaybackControl_tr".}
proc fcQMediaGaplessPlaybackControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaGaplessPlaybackControl_trUtf8".}
proc fcQMediaGaplessPlaybackControl_nextMedia(self: pointer, ): pointer {.importc: "QMediaGaplessPlaybackControl_nextMedia".}
proc fcQMediaGaplessPlaybackControl_setNextMedia(self: pointer, media: pointer): void {.importc: "QMediaGaplessPlaybackControl_setNextMedia".}
proc fcQMediaGaplessPlaybackControl_isCrossfadeSupported(self: pointer, ): bool {.importc: "QMediaGaplessPlaybackControl_isCrossfadeSupported".}
proc fcQMediaGaplessPlaybackControl_crossfadeTime(self: pointer, ): float64 {.importc: "QMediaGaplessPlaybackControl_crossfadeTime".}
proc fcQMediaGaplessPlaybackControl_setCrossfadeTime(self: pointer, crossfadeTime: float64): void {.importc: "QMediaGaplessPlaybackControl_setCrossfadeTime".}
proc fcQMediaGaplessPlaybackControl_crossfadeTimeChanged(self: pointer, crossfadeTime: float64): void {.importc: "QMediaGaplessPlaybackControl_crossfadeTimeChanged".}
proc fQMediaGaplessPlaybackControl_connect_crossfadeTimeChanged(self: pointer, slot: int) {.importc: "QMediaGaplessPlaybackControl_connect_crossfadeTimeChanged".}
proc fcQMediaGaplessPlaybackControl_nextMediaChanged(self: pointer, media: pointer): void {.importc: "QMediaGaplessPlaybackControl_nextMediaChanged".}
proc fQMediaGaplessPlaybackControl_connect_nextMediaChanged(self: pointer, slot: int) {.importc: "QMediaGaplessPlaybackControl_connect_nextMediaChanged".}
proc fcQMediaGaplessPlaybackControl_advancedToNextMedia(self: pointer, ): void {.importc: "QMediaGaplessPlaybackControl_advancedToNextMedia".}
proc fQMediaGaplessPlaybackControl_connect_advancedToNextMedia(self: pointer, slot: int) {.importc: "QMediaGaplessPlaybackControl_connect_advancedToNextMedia".}
proc fcQMediaGaplessPlaybackControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaGaplessPlaybackControl_tr2".}
proc fcQMediaGaplessPlaybackControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaGaplessPlaybackControl_tr3".}
proc fcQMediaGaplessPlaybackControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaGaplessPlaybackControl_trUtf82".}
proc fcQMediaGaplessPlaybackControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaGaplessPlaybackControl_trUtf83".}
proc fcQMediaGaplessPlaybackControl_staticMetaObject(): pointer {.importc: "QMediaGaplessPlaybackControl_staticMetaObject".}
proc fcQMediaGaplessPlaybackControl_delete(self: pointer) {.importc: "QMediaGaplessPlaybackControl_delete".}


func init*(T: type QMediaGaplessPlaybackControl, h: ptr cQMediaGaplessPlaybackControl): QMediaGaplessPlaybackControl =
  T(h: h)
proc metaObject*(self: QMediaGaplessPlaybackControl, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMediaGaplessPlaybackControl_metaObject(self.h))

proc metacast*(self: QMediaGaplessPlaybackControl, param1: cstring): pointer =

  fcQMediaGaplessPlaybackControl_metacast(self.h, param1)

proc metacall*(self: QMediaGaplessPlaybackControl, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQMediaGaplessPlaybackControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QMediaGaplessPlaybackControl, s: cstring): string =

  let v_ms = fcQMediaGaplessPlaybackControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QMediaGaplessPlaybackControl, s: cstring): string =

  let v_ms = fcQMediaGaplessPlaybackControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc nextMedia*(self: QMediaGaplessPlaybackControl, ): gen_qmediacontent.QMediaContent =

  gen_qmediacontent.QMediaContent(h: fcQMediaGaplessPlaybackControl_nextMedia(self.h))

proc setNextMedia*(self: QMediaGaplessPlaybackControl, media: gen_qmediacontent.QMediaContent): void =

  fcQMediaGaplessPlaybackControl_setNextMedia(self.h, media.h)

proc isCrossfadeSupported*(self: QMediaGaplessPlaybackControl, ): bool =

  fcQMediaGaplessPlaybackControl_isCrossfadeSupported(self.h)

proc crossfadeTime*(self: QMediaGaplessPlaybackControl, ): float64 =

  fcQMediaGaplessPlaybackControl_crossfadeTime(self.h)

proc setCrossfadeTime*(self: QMediaGaplessPlaybackControl, crossfadeTime: float64): void =

  fcQMediaGaplessPlaybackControl_setCrossfadeTime(self.h, crossfadeTime)

proc crossfadeTimeChanged*(self: QMediaGaplessPlaybackControl, crossfadeTime: float64): void =

  fcQMediaGaplessPlaybackControl_crossfadeTimeChanged(self.h, crossfadeTime)

proc miqt_exec_callback_QMediaGaplessPlaybackControl_crossfadeTimeChanged(slot: int, crossfadeTime: float64) {.exportc.} =
  type Cb = proc(crossfadeTime: float64)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = crossfadeTime


  nimfunc[](slotval1)

proc oncrossfadeTimeChanged*(self: QMediaGaplessPlaybackControl, slot: proc(crossfadeTime: float64)) =
  type Cb = proc(crossfadeTime: float64)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaGaplessPlaybackControl_connect_crossfadeTimeChanged(self.h, cast[int](addr tmp[]))
proc nextMediaChanged*(self: QMediaGaplessPlaybackControl, media: gen_qmediacontent.QMediaContent): void =

  fcQMediaGaplessPlaybackControl_nextMediaChanged(self.h, media.h)

proc miqt_exec_callback_QMediaGaplessPlaybackControl_nextMediaChanged(slot: int, media: pointer) {.exportc.} =
  type Cb = proc(media: gen_qmediacontent.QMediaContent)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qmediacontent.QMediaContent(h: media)


  nimfunc[](slotval1)

proc onnextMediaChanged*(self: QMediaGaplessPlaybackControl, slot: proc(media: gen_qmediacontent.QMediaContent)) =
  type Cb = proc(media: gen_qmediacontent.QMediaContent)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaGaplessPlaybackControl_connect_nextMediaChanged(self.h, cast[int](addr tmp[]))
proc advancedToNextMedia*(self: QMediaGaplessPlaybackControl, ): void =

  fcQMediaGaplessPlaybackControl_advancedToNextMedia(self.h)

proc miqt_exec_callback_QMediaGaplessPlaybackControl_advancedToNextMedia(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onadvancedToNextMedia*(self: QMediaGaplessPlaybackControl, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaGaplessPlaybackControl_connect_advancedToNextMedia(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QMediaGaplessPlaybackControl, s: cstring, c: cstring): string =

  let v_ms = fcQMediaGaplessPlaybackControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QMediaGaplessPlaybackControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMediaGaplessPlaybackControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QMediaGaplessPlaybackControl, s: cstring, c: cstring): string =

  let v_ms = fcQMediaGaplessPlaybackControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QMediaGaplessPlaybackControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMediaGaplessPlaybackControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type QMediaGaplessPlaybackControl): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQMediaGaplessPlaybackControl_staticMetaObject())
proc delete*(self: QMediaGaplessPlaybackControl) =
  fcQMediaGaplessPlaybackControl_delete(self.h)
