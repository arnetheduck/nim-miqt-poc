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
{.compile("gen_qmediaaudioprobecontrol.cpp", cflags).}


import gen_qmediaaudioprobecontrol_types
export gen_qmediaaudioprobecontrol_types

import
  gen_qaudiobuffer,
  gen_qmediacontrol,
  gen_qobjectdefs
export
  gen_qaudiobuffer,
  gen_qmediacontrol,
  gen_qobjectdefs

type cQMediaAudioProbeControl*{.exportc: "QMediaAudioProbeControl", incompleteStruct.} = object

proc fcQMediaAudioProbeControl_metaObject(self: pointer, ): pointer {.importc: "QMediaAudioProbeControl_metaObject".}
proc fcQMediaAudioProbeControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaAudioProbeControl_metacast".}
proc fcQMediaAudioProbeControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaAudioProbeControl_metacall".}
proc fcQMediaAudioProbeControl_tr(s: cstring): struct_miqt_string {.importc: "QMediaAudioProbeControl_tr".}
proc fcQMediaAudioProbeControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaAudioProbeControl_trUtf8".}
proc fcQMediaAudioProbeControl_audioBufferProbed(self: pointer, buffer: pointer): void {.importc: "QMediaAudioProbeControl_audioBufferProbed".}
proc fQMediaAudioProbeControl_connect_audioBufferProbed(self: pointer, slot: int) {.importc: "QMediaAudioProbeControl_connect_audioBufferProbed".}
proc fcQMediaAudioProbeControl_flush(self: pointer, ): void {.importc: "QMediaAudioProbeControl_flush".}
proc fQMediaAudioProbeControl_connect_flush(self: pointer, slot: int) {.importc: "QMediaAudioProbeControl_connect_flush".}
proc fcQMediaAudioProbeControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaAudioProbeControl_tr2".}
proc fcQMediaAudioProbeControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaAudioProbeControl_tr3".}
proc fcQMediaAudioProbeControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaAudioProbeControl_trUtf82".}
proc fcQMediaAudioProbeControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaAudioProbeControl_trUtf83".}
proc fcQMediaAudioProbeControl_staticMetaObject(): pointer {.importc: "QMediaAudioProbeControl_staticMetaObject".}
proc fcQMediaAudioProbeControl_delete(self: pointer) {.importc: "QMediaAudioProbeControl_delete".}


func init*(T: type QMediaAudioProbeControl, h: ptr cQMediaAudioProbeControl): QMediaAudioProbeControl =
  T(h: h)
proc metaObject*(self: QMediaAudioProbeControl, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMediaAudioProbeControl_metaObject(self.h))

proc metacast*(self: QMediaAudioProbeControl, param1: cstring): pointer =

  fcQMediaAudioProbeControl_metacast(self.h, param1)

proc metacall*(self: QMediaAudioProbeControl, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQMediaAudioProbeControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QMediaAudioProbeControl, s: cstring): string =

  let v_ms = fcQMediaAudioProbeControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QMediaAudioProbeControl, s: cstring): string =

  let v_ms = fcQMediaAudioProbeControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc audioBufferProbed*(self: QMediaAudioProbeControl, buffer: gen_qaudiobuffer.QAudioBuffer): void =

  fcQMediaAudioProbeControl_audioBufferProbed(self.h, buffer.h)

proc miqt_exec_callback_QMediaAudioProbeControl_audioBufferProbed(slot: int, buffer: pointer) {.exportc.} =
  type Cb = proc(buffer: gen_qaudiobuffer.QAudioBuffer)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qaudiobuffer.QAudioBuffer(h: buffer)


  nimfunc[](slotval1)

proc onaudioBufferProbed*(self: QMediaAudioProbeControl, slot: proc(buffer: gen_qaudiobuffer.QAudioBuffer)) =
  type Cb = proc(buffer: gen_qaudiobuffer.QAudioBuffer)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaAudioProbeControl_connect_audioBufferProbed(self.h, cast[int](addr tmp[]))
proc flush*(self: QMediaAudioProbeControl, ): void =

  fcQMediaAudioProbeControl_flush(self.h)

proc miqt_exec_callback_QMediaAudioProbeControl_flush(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onflush*(self: QMediaAudioProbeControl, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaAudioProbeControl_connect_flush(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QMediaAudioProbeControl, s: cstring, c: cstring): string =

  let v_ms = fcQMediaAudioProbeControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QMediaAudioProbeControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMediaAudioProbeControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QMediaAudioProbeControl, s: cstring, c: cstring): string =

  let v_ms = fcQMediaAudioProbeControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QMediaAudioProbeControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMediaAudioProbeControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type QMediaAudioProbeControl): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQMediaAudioProbeControl_staticMetaObject())
proc delete*(self: QMediaAudioProbeControl) =
  fcQMediaAudioProbeControl_delete(self.h)
