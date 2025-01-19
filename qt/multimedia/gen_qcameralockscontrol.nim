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
{.compile("gen_qcameralockscontrol.cpp", cflags).}


import gen_qcameralockscontrol_types
export gen_qcameralockscontrol_types

import
  gen_qcamera,
  gen_qmediacontrol,
  gen_qobjectdefs
export
  gen_qcamera,
  gen_qmediacontrol,
  gen_qobjectdefs

type cQCameraLocksControl*{.exportc: "QCameraLocksControl", incompleteStruct.} = object

proc fcQCameraLocksControl_metaObject(self: pointer, ): pointer {.importc: "QCameraLocksControl_metaObject".}
proc fcQCameraLocksControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraLocksControl_metacast".}
proc fcQCameraLocksControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraLocksControl_metacall".}
proc fcQCameraLocksControl_tr(s: cstring): struct_miqt_string {.importc: "QCameraLocksControl_tr".}
proc fcQCameraLocksControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraLocksControl_trUtf8".}
proc fcQCameraLocksControl_supportedLocks(self: pointer, ): cint {.importc: "QCameraLocksControl_supportedLocks".}
proc fcQCameraLocksControl_lockStatus(self: pointer, lock: cint): cint {.importc: "QCameraLocksControl_lockStatus".}
proc fcQCameraLocksControl_searchAndLock(self: pointer, locks: cint): void {.importc: "QCameraLocksControl_searchAndLock".}
proc fcQCameraLocksControl_unlock(self: pointer, locks: cint): void {.importc: "QCameraLocksControl_unlock".}
proc fcQCameraLocksControl_lockStatusChanged(self: pointer, typeVal: cint, status: cint, reason: cint): void {.importc: "QCameraLocksControl_lockStatusChanged".}
proc fQCameraLocksControl_connect_lockStatusChanged(self: pointer, slot: int) {.importc: "QCameraLocksControl_connect_lockStatusChanged".}
proc fcQCameraLocksControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraLocksControl_tr2".}
proc fcQCameraLocksControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraLocksControl_tr3".}
proc fcQCameraLocksControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraLocksControl_trUtf82".}
proc fcQCameraLocksControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraLocksControl_trUtf83".}
proc fcQCameraLocksControl_staticMetaObject(): pointer {.importc: "QCameraLocksControl_staticMetaObject".}
proc fcQCameraLocksControl_delete(self: pointer) {.importc: "QCameraLocksControl_delete".}


func init*(T: type QCameraLocksControl, h: ptr cQCameraLocksControl): QCameraLocksControl =
  T(h: h)
proc metaObject*(self: QCameraLocksControl, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQCameraLocksControl_metaObject(self.h))

proc metacast*(self: QCameraLocksControl, param1: cstring): pointer =

  fcQCameraLocksControl_metacast(self.h, param1)

proc metacall*(self: QCameraLocksControl, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQCameraLocksControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QCameraLocksControl, s: cstring): string =

  let v_ms = fcQCameraLocksControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QCameraLocksControl, s: cstring): string =

  let v_ms = fcQCameraLocksControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedLocks*(self: QCameraLocksControl, ): gen_qcamera.QCameraLockType =

  gen_qcamera.QCameraLockType(fcQCameraLocksControl_supportedLocks(self.h))

proc lockStatus*(self: QCameraLocksControl, lock: gen_qcamera.QCameraLockType): gen_qcamera.QCameraLockStatus =

  gen_qcamera.QCameraLockStatus(fcQCameraLocksControl_lockStatus(self.h, cint(lock)))

proc searchAndLock*(self: QCameraLocksControl, locks: gen_qcamera.QCameraLockType): void =

  fcQCameraLocksControl_searchAndLock(self.h, cint(locks))

proc unlock*(self: QCameraLocksControl, locks: gen_qcamera.QCameraLockType): void =

  fcQCameraLocksControl_unlock(self.h, cint(locks))

proc lockStatusChanged*(self: QCameraLocksControl, typeVal: gen_qcamera.QCameraLockType, status: gen_qcamera.QCameraLockStatus, reason: gen_qcamera.QCameraLockChangeReason): void =

  fcQCameraLocksControl_lockStatusChanged(self.h, cint(typeVal), cint(status), cint(reason))

proc miqt_exec_callback_QCameraLocksControl_lockStatusChanged(slot: int, typeVal: cint, status: cint, reason: cint) {.exportc.} =
  type Cb = proc(typeVal: gen_qcamera.QCameraLockType, status: gen_qcamera.QCameraLockStatus, reason: gen_qcamera.QCameraLockChangeReason)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qcamera.QCameraLockType(typeVal)

  let slotval2 = gen_qcamera.QCameraLockStatus(status)

  let slotval3 = gen_qcamera.QCameraLockChangeReason(reason)


  nimfunc[](slotval1, slotval2, slotval3)

proc onlockStatusChanged*(self: QCameraLocksControl, slot: proc(typeVal: gen_qcamera.QCameraLockType, status: gen_qcamera.QCameraLockStatus, reason: gen_qcamera.QCameraLockChangeReason)) =
  type Cb = proc(typeVal: gen_qcamera.QCameraLockType, status: gen_qcamera.QCameraLockStatus, reason: gen_qcamera.QCameraLockChangeReason)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraLocksControl_connect_lockStatusChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QCameraLocksControl, s: cstring, c: cstring): string =

  let v_ms = fcQCameraLocksControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QCameraLocksControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCameraLocksControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QCameraLocksControl, s: cstring, c: cstring): string =

  let v_ms = fcQCameraLocksControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QCameraLocksControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCameraLocksControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type QCameraLocksControl): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQCameraLocksControl_staticMetaObject())
proc delete*(self: QCameraLocksControl) =
  fcQCameraLocksControl_delete(self.h)
