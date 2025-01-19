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
{.compile("gen_qcameraflashcontrol.cpp", cflags).}


import gen_qcameraflashcontrol_types
export gen_qcameraflashcontrol_types

import
  gen_qcameraexposure,
  gen_qmediacontrol,
  gen_qobjectdefs
export
  gen_qcameraexposure,
  gen_qmediacontrol,
  gen_qobjectdefs

type cQCameraFlashControl*{.exportc: "QCameraFlashControl", incompleteStruct.} = object

proc fcQCameraFlashControl_metaObject(self: pointer, ): pointer {.importc: "QCameraFlashControl_metaObject".}
proc fcQCameraFlashControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraFlashControl_metacast".}
proc fcQCameraFlashControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraFlashControl_metacall".}
proc fcQCameraFlashControl_tr(s: cstring): struct_miqt_string {.importc: "QCameraFlashControl_tr".}
proc fcQCameraFlashControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraFlashControl_trUtf8".}
proc fcQCameraFlashControl_flashMode(self: pointer, ): cint {.importc: "QCameraFlashControl_flashMode".}
proc fcQCameraFlashControl_setFlashMode(self: pointer, mode: cint): void {.importc: "QCameraFlashControl_setFlashMode".}
proc fcQCameraFlashControl_isFlashModeSupported(self: pointer, mode: cint): bool {.importc: "QCameraFlashControl_isFlashModeSupported".}
proc fcQCameraFlashControl_isFlashReady(self: pointer, ): bool {.importc: "QCameraFlashControl_isFlashReady".}
proc fcQCameraFlashControl_flashReady(self: pointer, param1: bool): void {.importc: "QCameraFlashControl_flashReady".}
proc fQCameraFlashControl_connect_flashReady(self: pointer, slot: int) {.importc: "QCameraFlashControl_connect_flashReady".}
proc fcQCameraFlashControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraFlashControl_tr2".}
proc fcQCameraFlashControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraFlashControl_tr3".}
proc fcQCameraFlashControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraFlashControl_trUtf82".}
proc fcQCameraFlashControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraFlashControl_trUtf83".}
proc fcQCameraFlashControl_staticMetaObject(): pointer {.importc: "QCameraFlashControl_staticMetaObject".}
proc fcQCameraFlashControl_delete(self: pointer) {.importc: "QCameraFlashControl_delete".}


func init*(T: type QCameraFlashControl, h: ptr cQCameraFlashControl): QCameraFlashControl =
  T(h: h)
proc metaObject*(self: QCameraFlashControl, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQCameraFlashControl_metaObject(self.h))

proc metacast*(self: QCameraFlashControl, param1: cstring): pointer =

  fcQCameraFlashControl_metacast(self.h, param1)

proc metacall*(self: QCameraFlashControl, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQCameraFlashControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QCameraFlashControl, s: cstring): string =

  let v_ms = fcQCameraFlashControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QCameraFlashControl, s: cstring): string =

  let v_ms = fcQCameraFlashControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc flashMode*(self: QCameraFlashControl, ): gen_qcameraexposure.QCameraExposureFlashMode =

  gen_qcameraexposure.QCameraExposureFlashMode(fcQCameraFlashControl_flashMode(self.h))

proc setFlashMode*(self: QCameraFlashControl, mode: gen_qcameraexposure.QCameraExposureFlashMode): void =

  fcQCameraFlashControl_setFlashMode(self.h, cint(mode))

proc isFlashModeSupported*(self: QCameraFlashControl, mode: gen_qcameraexposure.QCameraExposureFlashMode): bool =

  fcQCameraFlashControl_isFlashModeSupported(self.h, cint(mode))

proc isFlashReady*(self: QCameraFlashControl, ): bool =

  fcQCameraFlashControl_isFlashReady(self.h)

proc flashReady*(self: QCameraFlashControl, param1: bool): void =

  fcQCameraFlashControl_flashReady(self.h, param1)

proc miqt_exec_callback_QCameraFlashControl_flashReady(slot: int, param1: bool) {.exportc.} =
  type Cb = proc(param1: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onflashReady*(self: QCameraFlashControl, slot: proc(param1: bool)) =
  type Cb = proc(param1: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraFlashControl_connect_flashReady(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QCameraFlashControl, s: cstring, c: cstring): string =

  let v_ms = fcQCameraFlashControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QCameraFlashControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCameraFlashControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QCameraFlashControl, s: cstring, c: cstring): string =

  let v_ms = fcQCameraFlashControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QCameraFlashControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCameraFlashControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type QCameraFlashControl): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQCameraFlashControl_staticMetaObject())
proc delete*(self: QCameraFlashControl) =
  fcQCameraFlashControl_delete(self.h)
