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
{.compile("gen_qmediaobject.cpp", cflags).}


import gen_qmediaobject_types
export gen_qmediaobject_types

import
  gen_qmediaservice,
  gen_qmultimedia,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvariant
export
  gen_qmediaservice,
  gen_qmultimedia,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvariant

type cQMediaObject*{.exportc: "QMediaObject", incompleteStruct.} = object

proc fcQMediaObject_metaObject(self: pointer, ): pointer {.importc: "QMediaObject_metaObject".}
proc fcQMediaObject_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaObject_metacast".}
proc fcQMediaObject_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaObject_metacall".}
proc fcQMediaObject_tr(s: cstring): struct_miqt_string {.importc: "QMediaObject_tr".}
proc fcQMediaObject_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaObject_trUtf8".}
proc fcQMediaObject_isAvailable(self: pointer, ): bool {.importc: "QMediaObject_isAvailable".}
proc fcQMediaObject_availability(self: pointer, ): cint {.importc: "QMediaObject_availability".}
proc fcQMediaObject_service(self: pointer, ): pointer {.importc: "QMediaObject_service".}
proc fcQMediaObject_notifyInterval(self: pointer, ): cint {.importc: "QMediaObject_notifyInterval".}
proc fcQMediaObject_setNotifyInterval(self: pointer, milliSeconds: cint): void {.importc: "QMediaObject_setNotifyInterval".}
proc fcQMediaObject_bindX(self: pointer, param1: pointer): bool {.importc: "QMediaObject_bind".}
proc fcQMediaObject_unbind(self: pointer, param1: pointer): void {.importc: "QMediaObject_unbind".}
proc fcQMediaObject_isMetaDataAvailable(self: pointer, ): bool {.importc: "QMediaObject_isMetaDataAvailable".}
proc fcQMediaObject_metaData(self: pointer, key: struct_miqt_string): pointer {.importc: "QMediaObject_metaData".}
proc fcQMediaObject_availableMetaData(self: pointer, ): struct_miqt_array {.importc: "QMediaObject_availableMetaData".}
proc fcQMediaObject_notifyIntervalChanged(self: pointer, milliSeconds: cint): void {.importc: "QMediaObject_notifyIntervalChanged".}
proc fQMediaObject_connect_notifyIntervalChanged(self: pointer, slot: int) {.importc: "QMediaObject_connect_notifyIntervalChanged".}
proc fcQMediaObject_metaDataAvailableChanged(self: pointer, available: bool): void {.importc: "QMediaObject_metaDataAvailableChanged".}
proc fQMediaObject_connect_metaDataAvailableChanged(self: pointer, slot: int) {.importc: "QMediaObject_connect_metaDataAvailableChanged".}
proc fcQMediaObject_metaDataChanged(self: pointer, ): void {.importc: "QMediaObject_metaDataChanged".}
proc fQMediaObject_connect_metaDataChanged(self: pointer, slot: int) {.importc: "QMediaObject_connect_metaDataChanged".}
proc fcQMediaObject_metaDataChanged2(self: pointer, key: struct_miqt_string, value: pointer): void {.importc: "QMediaObject_metaDataChanged2".}
proc fQMediaObject_connect_metaDataChanged2(self: pointer, slot: int) {.importc: "QMediaObject_connect_metaDataChanged2".}
proc fcQMediaObject_availabilityChanged(self: pointer, available: bool): void {.importc: "QMediaObject_availabilityChanged".}
proc fQMediaObject_connect_availabilityChanged(self: pointer, slot: int) {.importc: "QMediaObject_connect_availabilityChanged".}
proc fcQMediaObject_availabilityChangedWithAvailability(self: pointer, availability: cint): void {.importc: "QMediaObject_availabilityChangedWithAvailability".}
proc fQMediaObject_connect_availabilityChangedWithAvailability(self: pointer, slot: int) {.importc: "QMediaObject_connect_availabilityChangedWithAvailability".}
proc fcQMediaObject_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaObject_tr2".}
proc fcQMediaObject_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaObject_tr3".}
proc fcQMediaObject_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaObject_trUtf82".}
proc fcQMediaObject_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaObject_trUtf83".}
proc fcQMediaObject_staticMetaObject(): pointer {.importc: "QMediaObject_staticMetaObject".}
proc fcQMediaObject_delete(self: pointer) {.importc: "QMediaObject_delete".}


func init*(T: type QMediaObject, h: ptr cQMediaObject): QMediaObject =
  T(h: h)
proc metaObject*(self: QMediaObject, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMediaObject_metaObject(self.h))

proc metacast*(self: QMediaObject, param1: cstring): pointer =

  fcQMediaObject_metacast(self.h, param1)

proc metacall*(self: QMediaObject, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQMediaObject_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QMediaObject, s: cstring): string =

  let v_ms = fcQMediaObject_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QMediaObject, s: cstring): string =

  let v_ms = fcQMediaObject_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isAvailable*(self: QMediaObject, ): bool =

  fcQMediaObject_isAvailable(self.h)

proc availability*(self: QMediaObject, ): gen_qmultimedia.QMultimediaAvailabilityStatus =

  gen_qmultimedia.QMultimediaAvailabilityStatus(fcQMediaObject_availability(self.h))

proc service*(self: QMediaObject, ): gen_qmediaservice.QMediaService =

  gen_qmediaservice.QMediaService(h: fcQMediaObject_service(self.h))

proc notifyInterval*(self: QMediaObject, ): cint =

  fcQMediaObject_notifyInterval(self.h)

proc setNotifyInterval*(self: QMediaObject, milliSeconds: cint): void =

  fcQMediaObject_setNotifyInterval(self.h, milliSeconds)

proc bindX*(self: QMediaObject, param1: gen_qobject.QObject): bool =

  fcQMediaObject_bindX(self.h, param1.h)

proc unbind*(self: QMediaObject, param1: gen_qobject.QObject): void =

  fcQMediaObject_unbind(self.h, param1.h)

proc isMetaDataAvailable*(self: QMediaObject, ): bool =

  fcQMediaObject_isMetaDataAvailable(self.h)

proc metaData*(self: QMediaObject, key: string): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQMediaObject_metaData(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc availableMetaData*(self: QMediaObject, ): seq[string] =

  var v_ma = fcQMediaObject_availableMetaData(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc notifyIntervalChanged*(self: QMediaObject, milliSeconds: cint): void =

  fcQMediaObject_notifyIntervalChanged(self.h, milliSeconds)

proc miqt_exec_callback_QMediaObject_notifyIntervalChanged(slot: int, milliSeconds: cint) {.exportc.} =
  type Cb = proc(milliSeconds: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = milliSeconds


  nimfunc[](slotval1)

proc onnotifyIntervalChanged*(self: QMediaObject, slot: proc(milliSeconds: cint)) =
  type Cb = proc(milliSeconds: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaObject_connect_notifyIntervalChanged(self.h, cast[int](addr tmp[]))
proc metaDataAvailableChanged*(self: QMediaObject, available: bool): void =

  fcQMediaObject_metaDataAvailableChanged(self.h, available)

proc miqt_exec_callback_QMediaObject_metaDataAvailableChanged(slot: int, available: bool) {.exportc.} =
  type Cb = proc(available: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = available


  nimfunc[](slotval1)

proc onmetaDataAvailableChanged*(self: QMediaObject, slot: proc(available: bool)) =
  type Cb = proc(available: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaObject_connect_metaDataAvailableChanged(self.h, cast[int](addr tmp[]))
proc metaDataChanged*(self: QMediaObject, ): void =

  fcQMediaObject_metaDataChanged(self.h)

proc miqt_exec_callback_QMediaObject_metaDataChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onmetaDataChanged*(self: QMediaObject, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaObject_connect_metaDataChanged(self.h, cast[int](addr tmp[]))
proc metaDataChanged2*(self: QMediaObject, key: string, value: gen_qvariant.QVariant): void =

  fcQMediaObject_metaDataChanged2(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), value.h)

proc miqt_exec_callback_QMediaObject_metaDataChanged2(slot: int, key: struct_miqt_string, value: pointer) {.exportc.} =
  type Cb = proc(key: string, value: gen_qvariant.QVariant)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(toOpenArrayByte(vkey_ms.data, 0, int(vkey_ms.len)-1))
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret

  let slotval2 = gen_qvariant.QVariant(h: value)


  nimfunc[](slotval1, slotval2)

proc onmetaDataChanged2*(self: QMediaObject, slot: proc(key: string, value: gen_qvariant.QVariant)) =
  type Cb = proc(key: string, value: gen_qvariant.QVariant)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaObject_connect_metaDataChanged2(self.h, cast[int](addr tmp[]))
proc availabilityChanged*(self: QMediaObject, available: bool): void =

  fcQMediaObject_availabilityChanged(self.h, available)

proc miqt_exec_callback_QMediaObject_availabilityChanged(slot: int, available: bool) {.exportc.} =
  type Cb = proc(available: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = available


  nimfunc[](slotval1)

proc onavailabilityChanged*(self: QMediaObject, slot: proc(available: bool)) =
  type Cb = proc(available: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaObject_connect_availabilityChanged(self.h, cast[int](addr tmp[]))
proc availabilityChangedWithAvailability*(self: QMediaObject, availability: gen_qmultimedia.QMultimediaAvailabilityStatus): void =

  fcQMediaObject_availabilityChangedWithAvailability(self.h, cint(availability))

proc miqt_exec_callback_QMediaObject_availabilityChangedWithAvailability(slot: int, availability: cint) {.exportc.} =
  type Cb = proc(availability: gen_qmultimedia.QMultimediaAvailabilityStatus)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qmultimedia.QMultimediaAvailabilityStatus(availability)


  nimfunc[](slotval1)

proc onavailabilityChangedWithAvailability*(self: QMediaObject, slot: proc(availability: gen_qmultimedia.QMultimediaAvailabilityStatus)) =
  type Cb = proc(availability: gen_qmultimedia.QMultimediaAvailabilityStatus)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaObject_connect_availabilityChangedWithAvailability(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QMediaObject, s: cstring, c: cstring): string =

  let v_ms = fcQMediaObject_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QMediaObject, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMediaObject_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QMediaObject, s: cstring, c: cstring): string =

  let v_ms = fcQMediaObject_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QMediaObject, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMediaObject_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type QMediaObject): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQMediaObject_staticMetaObject())
proc delete*(self: QMediaObject) =
  fcQMediaObject_delete(self.h)
