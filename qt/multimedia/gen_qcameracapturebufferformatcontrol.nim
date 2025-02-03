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
{.compile("gen_qcameracapturebufferformatcontrol.cpp", cflags).}


import gen_qcameracapturebufferformatcontrol_types
export gen_qcameracapturebufferformatcontrol_types

import
  gen_qmediacontrol,
  gen_qobjectdefs,
  gen_qvideoframe
export
  gen_qmediacontrol,
  gen_qobjectdefs,
  gen_qvideoframe

type cQCameraCaptureBufferFormatControl*{.exportc: "QCameraCaptureBufferFormatControl", incompleteStruct.} = object

proc fcQCameraCaptureBufferFormatControl_metaObject(self: pointer, ): pointer {.importc: "QCameraCaptureBufferFormatControl_metaObject".}
proc fcQCameraCaptureBufferFormatControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraCaptureBufferFormatControl_metacast".}
proc fcQCameraCaptureBufferFormatControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraCaptureBufferFormatControl_metacall".}
proc fcQCameraCaptureBufferFormatControl_tr(s: cstring): struct_miqt_string {.importc: "QCameraCaptureBufferFormatControl_tr".}
proc fcQCameraCaptureBufferFormatControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraCaptureBufferFormatControl_trUtf8".}
proc fcQCameraCaptureBufferFormatControl_supportedBufferFormats(self: pointer, ): struct_miqt_array {.importc: "QCameraCaptureBufferFormatControl_supportedBufferFormats".}
proc fcQCameraCaptureBufferFormatControl_bufferFormat(self: pointer, ): cint {.importc: "QCameraCaptureBufferFormatControl_bufferFormat".}
proc fcQCameraCaptureBufferFormatControl_setBufferFormat(self: pointer, format: cint): void {.importc: "QCameraCaptureBufferFormatControl_setBufferFormat".}
proc fcQCameraCaptureBufferFormatControl_bufferFormatChanged(self: pointer, format: cint): void {.importc: "QCameraCaptureBufferFormatControl_bufferFormatChanged".}
proc fQCameraCaptureBufferFormatControl_connect_bufferFormatChanged(self: pointer, slot: int) {.importc: "QCameraCaptureBufferFormatControl_connect_bufferFormatChanged".}
proc fcQCameraCaptureBufferFormatControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraCaptureBufferFormatControl_tr2".}
proc fcQCameraCaptureBufferFormatControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraCaptureBufferFormatControl_tr3".}
proc fcQCameraCaptureBufferFormatControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraCaptureBufferFormatControl_trUtf82".}
proc fcQCameraCaptureBufferFormatControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraCaptureBufferFormatControl_trUtf83".}
proc fcQCameraCaptureBufferFormatControl_delete(self: pointer) {.importc: "QCameraCaptureBufferFormatControl_delete".}


func init*(T: type QCameraCaptureBufferFormatControl, h: ptr cQCameraCaptureBufferFormatControl): QCameraCaptureBufferFormatControl =
  T(h: h)
proc metaObject*(self: QCameraCaptureBufferFormatControl, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQCameraCaptureBufferFormatControl_metaObject(self.h))

proc metacast*(self: QCameraCaptureBufferFormatControl, param1: cstring): pointer =

  fcQCameraCaptureBufferFormatControl_metacast(self.h, param1)

proc metacall*(self: QCameraCaptureBufferFormatControl, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQCameraCaptureBufferFormatControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QCameraCaptureBufferFormatControl, s: cstring): string =

  let v_ms = fcQCameraCaptureBufferFormatControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QCameraCaptureBufferFormatControl, s: cstring): string =

  let v_ms = fcQCameraCaptureBufferFormatControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedBufferFormats*(self: QCameraCaptureBufferFormatControl, ): seq[gen_qvideoframe.QVideoFramePixelFormat] =

  var v_ma = fcQCameraCaptureBufferFormatControl_supportedBufferFormats(self.h)
  var vx_ret = newSeq[gen_qvideoframe.QVideoFramePixelFormat](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qvideoframe.QVideoFramePixelFormat(v_outCast[i])
  vx_ret

proc bufferFormat*(self: QCameraCaptureBufferFormatControl, ): gen_qvideoframe.QVideoFramePixelFormat =

  gen_qvideoframe.QVideoFramePixelFormat(fcQCameraCaptureBufferFormatControl_bufferFormat(self.h))

proc setBufferFormat*(self: QCameraCaptureBufferFormatControl, format: gen_qvideoframe.QVideoFramePixelFormat): void =

  fcQCameraCaptureBufferFormatControl_setBufferFormat(self.h, cint(format))

proc bufferFormatChanged*(self: QCameraCaptureBufferFormatControl, format: gen_qvideoframe.QVideoFramePixelFormat): void =

  fcQCameraCaptureBufferFormatControl_bufferFormatChanged(self.h, cint(format))

proc miqt_exec_callback_QCameraCaptureBufferFormatControl_bufferFormatChanged(slot: int, format: cint) {.exportc.} =
  type Cb = proc(format: gen_qvideoframe.QVideoFramePixelFormat)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qvideoframe.QVideoFramePixelFormat(format)


  nimfunc[](slotval1)

proc onbufferFormatChanged*(self: QCameraCaptureBufferFormatControl, slot: proc(format: gen_qvideoframe.QVideoFramePixelFormat)) =
  type Cb = proc(format: gen_qvideoframe.QVideoFramePixelFormat)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraCaptureBufferFormatControl_connect_bufferFormatChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QCameraCaptureBufferFormatControl, s: cstring, c: cstring): string =

  let v_ms = fcQCameraCaptureBufferFormatControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QCameraCaptureBufferFormatControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCameraCaptureBufferFormatControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QCameraCaptureBufferFormatControl, s: cstring, c: cstring): string =

  let v_ms = fcQCameraCaptureBufferFormatControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QCameraCaptureBufferFormatControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCameraCaptureBufferFormatControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QCameraCaptureBufferFormatControl) =
  fcQCameraCaptureBufferFormatControl_delete(self.h)
