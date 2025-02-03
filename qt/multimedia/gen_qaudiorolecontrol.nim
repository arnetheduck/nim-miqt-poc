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
{.compile("gen_qaudiorolecontrol.cpp", cflags).}


import gen_qaudiorolecontrol_types
export gen_qaudiorolecontrol_types

import
  gen_qaudio,
  gen_qmediacontrol,
  gen_qobjectdefs
export
  gen_qaudio,
  gen_qmediacontrol,
  gen_qobjectdefs

type cQAudioRoleControl*{.exportc: "QAudioRoleControl", incompleteStruct.} = object

proc fcQAudioRoleControl_metaObject(self: pointer, ): pointer {.importc: "QAudioRoleControl_metaObject".}
proc fcQAudioRoleControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioRoleControl_metacast".}
proc fcQAudioRoleControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioRoleControl_metacall".}
proc fcQAudioRoleControl_tr(s: cstring): struct_miqt_string {.importc: "QAudioRoleControl_tr".}
proc fcQAudioRoleControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QAudioRoleControl_trUtf8".}
proc fcQAudioRoleControl_audioRole(self: pointer, ): cint {.importc: "QAudioRoleControl_audioRole".}
proc fcQAudioRoleControl_setAudioRole(self: pointer, role: cint): void {.importc: "QAudioRoleControl_setAudioRole".}
proc fcQAudioRoleControl_supportedAudioRoles(self: pointer, ): struct_miqt_array {.importc: "QAudioRoleControl_supportedAudioRoles".}
proc fcQAudioRoleControl_audioRoleChanged(self: pointer, role: cint): void {.importc: "QAudioRoleControl_audioRoleChanged".}
proc fQAudioRoleControl_connect_audioRoleChanged(self: pointer, slot: int) {.importc: "QAudioRoleControl_connect_audioRoleChanged".}
proc fcQAudioRoleControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioRoleControl_tr2".}
proc fcQAudioRoleControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioRoleControl_tr3".}
proc fcQAudioRoleControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioRoleControl_trUtf82".}
proc fcQAudioRoleControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioRoleControl_trUtf83".}
proc fcQAudioRoleControl_delete(self: pointer) {.importc: "QAudioRoleControl_delete".}


func init*(T: type QAudioRoleControl, h: ptr cQAudioRoleControl): QAudioRoleControl =
  T(h: h)
proc metaObject*(self: QAudioRoleControl, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAudioRoleControl_metaObject(self.h))

proc metacast*(self: QAudioRoleControl, param1: cstring): pointer =

  fcQAudioRoleControl_metacast(self.h, param1)

proc metacall*(self: QAudioRoleControl, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAudioRoleControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAudioRoleControl, s: cstring): string =

  let v_ms = fcQAudioRoleControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QAudioRoleControl, s: cstring): string =

  let v_ms = fcQAudioRoleControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc audioRole*(self: QAudioRoleControl, ): gen_qaudio.QAudioRole =

  gen_qaudio.QAudioRole(fcQAudioRoleControl_audioRole(self.h))

proc setAudioRole*(self: QAudioRoleControl, role: gen_qaudio.QAudioRole): void =

  fcQAudioRoleControl_setAudioRole(self.h, cint(role))

proc supportedAudioRoles*(self: QAudioRoleControl, ): seq[gen_qaudio.QAudioRole] =

  var v_ma = fcQAudioRoleControl_supportedAudioRoles(self.h)
  var vx_ret = newSeq[gen_qaudio.QAudioRole](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qaudio.QAudioRole(v_outCast[i])
  vx_ret

proc audioRoleChanged*(self: QAudioRoleControl, role: gen_qaudio.QAudioRole): void =

  fcQAudioRoleControl_audioRoleChanged(self.h, cint(role))

proc miqt_exec_callback_QAudioRoleControl_audioRoleChanged(slot: int, role: cint) {.exportc.} =
  type Cb = proc(role: gen_qaudio.QAudioRole)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qaudio.QAudioRole(role)


  nimfunc[](slotval1)

proc onaudioRoleChanged*(self: QAudioRoleControl, slot: proc(role: gen_qaudio.QAudioRole)) =
  type Cb = proc(role: gen_qaudio.QAudioRole)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioRoleControl_connect_audioRoleChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QAudioRoleControl, s: cstring, c: cstring): string =

  let v_ms = fcQAudioRoleControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAudioRoleControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAudioRoleControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QAudioRoleControl, s: cstring, c: cstring): string =

  let v_ms = fcQAudioRoleControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QAudioRoleControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAudioRoleControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QAudioRoleControl) =
  fcQAudioRoleControl_delete(self.h)
