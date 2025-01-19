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
{.compile("gen_qmediaavailabilitycontrol.cpp", cflags).}


import gen_qmediaavailabilitycontrol_types
export gen_qmediaavailabilitycontrol_types

import
  gen_qmediacontrol,
  gen_qmultimedia,
  gen_qobjectdefs
export
  gen_qmediacontrol,
  gen_qmultimedia,
  gen_qobjectdefs

type cQMediaAvailabilityControl*{.exportc: "QMediaAvailabilityControl", incompleteStruct.} = object

proc fcQMediaAvailabilityControl_metaObject(self: pointer, ): pointer {.importc: "QMediaAvailabilityControl_metaObject".}
proc fcQMediaAvailabilityControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaAvailabilityControl_metacast".}
proc fcQMediaAvailabilityControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaAvailabilityControl_metacall".}
proc fcQMediaAvailabilityControl_tr(s: cstring): struct_miqt_string {.importc: "QMediaAvailabilityControl_tr".}
proc fcQMediaAvailabilityControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaAvailabilityControl_trUtf8".}
proc fcQMediaAvailabilityControl_availability(self: pointer, ): cint {.importc: "QMediaAvailabilityControl_availability".}
proc fcQMediaAvailabilityControl_availabilityChanged(self: pointer, availability: cint): void {.importc: "QMediaAvailabilityControl_availabilityChanged".}
proc fQMediaAvailabilityControl_connect_availabilityChanged(self: pointer, slot: int) {.importc: "QMediaAvailabilityControl_connect_availabilityChanged".}
proc fcQMediaAvailabilityControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaAvailabilityControl_tr2".}
proc fcQMediaAvailabilityControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaAvailabilityControl_tr3".}
proc fcQMediaAvailabilityControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaAvailabilityControl_trUtf82".}
proc fcQMediaAvailabilityControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaAvailabilityControl_trUtf83".}
proc fcQMediaAvailabilityControl_staticMetaObject(): pointer {.importc: "QMediaAvailabilityControl_staticMetaObject".}
proc fcQMediaAvailabilityControl_delete(self: pointer) {.importc: "QMediaAvailabilityControl_delete".}


func init*(T: type QMediaAvailabilityControl, h: ptr cQMediaAvailabilityControl): QMediaAvailabilityControl =
  T(h: h)
proc metaObject*(self: QMediaAvailabilityControl, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMediaAvailabilityControl_metaObject(self.h))

proc metacast*(self: QMediaAvailabilityControl, param1: cstring): pointer =

  fcQMediaAvailabilityControl_metacast(self.h, param1)

proc metacall*(self: QMediaAvailabilityControl, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQMediaAvailabilityControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QMediaAvailabilityControl, s: cstring): string =

  let v_ms = fcQMediaAvailabilityControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QMediaAvailabilityControl, s: cstring): string =

  let v_ms = fcQMediaAvailabilityControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc availability*(self: QMediaAvailabilityControl, ): gen_qmultimedia.QMultimediaAvailabilityStatus =

  gen_qmultimedia.QMultimediaAvailabilityStatus(fcQMediaAvailabilityControl_availability(self.h))

proc availabilityChanged*(self: QMediaAvailabilityControl, availability: gen_qmultimedia.QMultimediaAvailabilityStatus): void =

  fcQMediaAvailabilityControl_availabilityChanged(self.h, cint(availability))

proc miqt_exec_callback_QMediaAvailabilityControl_availabilityChanged(slot: int, availability: cint) {.exportc.} =
  type Cb = proc(availability: gen_qmultimedia.QMultimediaAvailabilityStatus)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qmultimedia.QMultimediaAvailabilityStatus(availability)


  nimfunc[](slotval1)

proc onavailabilityChanged*(self: QMediaAvailabilityControl, slot: proc(availability: gen_qmultimedia.QMultimediaAvailabilityStatus)) =
  type Cb = proc(availability: gen_qmultimedia.QMultimediaAvailabilityStatus)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaAvailabilityControl_connect_availabilityChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QMediaAvailabilityControl, s: cstring, c: cstring): string =

  let v_ms = fcQMediaAvailabilityControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QMediaAvailabilityControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMediaAvailabilityControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QMediaAvailabilityControl, s: cstring, c: cstring): string =

  let v_ms = fcQMediaAvailabilityControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QMediaAvailabilityControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMediaAvailabilityControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type QMediaAvailabilityControl): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQMediaAvailabilityControl_staticMetaObject())
proc delete*(self: QMediaAvailabilityControl) =
  fcQMediaAvailabilityControl_delete(self.h)
