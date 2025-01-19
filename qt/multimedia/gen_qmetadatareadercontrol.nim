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
{.compile("gen_qmetadatareadercontrol.cpp", cflags).}


import gen_qmetadatareadercontrol_types
export gen_qmetadatareadercontrol_types

import
  gen_qmediacontrol,
  gen_qobjectdefs,
  gen_qvariant
export
  gen_qmediacontrol,
  gen_qobjectdefs,
  gen_qvariant

type cQMetaDataReaderControl*{.exportc: "QMetaDataReaderControl", incompleteStruct.} = object

proc fcQMetaDataReaderControl_metaObject(self: pointer, ): pointer {.importc: "QMetaDataReaderControl_metaObject".}
proc fcQMetaDataReaderControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QMetaDataReaderControl_metacast".}
proc fcQMetaDataReaderControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMetaDataReaderControl_metacall".}
proc fcQMetaDataReaderControl_tr(s: cstring): struct_miqt_string {.importc: "QMetaDataReaderControl_tr".}
proc fcQMetaDataReaderControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QMetaDataReaderControl_trUtf8".}
proc fcQMetaDataReaderControl_isMetaDataAvailable(self: pointer, ): bool {.importc: "QMetaDataReaderControl_isMetaDataAvailable".}
proc fcQMetaDataReaderControl_metaData(self: pointer, key: struct_miqt_string): pointer {.importc: "QMetaDataReaderControl_metaData".}
proc fcQMetaDataReaderControl_availableMetaData(self: pointer, ): struct_miqt_array {.importc: "QMetaDataReaderControl_availableMetaData".}
proc fcQMetaDataReaderControl_metaDataChanged(self: pointer, ): void {.importc: "QMetaDataReaderControl_metaDataChanged".}
proc fQMetaDataReaderControl_connect_metaDataChanged(self: pointer, slot: int) {.importc: "QMetaDataReaderControl_connect_metaDataChanged".}
proc fcQMetaDataReaderControl_metaDataChanged2(self: pointer, key: struct_miqt_string, value: pointer): void {.importc: "QMetaDataReaderControl_metaDataChanged2".}
proc fQMetaDataReaderControl_connect_metaDataChanged2(self: pointer, slot: int) {.importc: "QMetaDataReaderControl_connect_metaDataChanged2".}
proc fcQMetaDataReaderControl_metaDataAvailableChanged(self: pointer, available: bool): void {.importc: "QMetaDataReaderControl_metaDataAvailableChanged".}
proc fQMetaDataReaderControl_connect_metaDataAvailableChanged(self: pointer, slot: int) {.importc: "QMetaDataReaderControl_connect_metaDataAvailableChanged".}
proc fcQMetaDataReaderControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMetaDataReaderControl_tr2".}
proc fcQMetaDataReaderControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMetaDataReaderControl_tr3".}
proc fcQMetaDataReaderControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMetaDataReaderControl_trUtf82".}
proc fcQMetaDataReaderControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMetaDataReaderControl_trUtf83".}
proc fcQMetaDataReaderControl_staticMetaObject(): pointer {.importc: "QMetaDataReaderControl_staticMetaObject".}
proc fcQMetaDataReaderControl_delete(self: pointer) {.importc: "QMetaDataReaderControl_delete".}


func init*(T: type QMetaDataReaderControl, h: ptr cQMetaDataReaderControl): QMetaDataReaderControl =
  T(h: h)
proc metaObject*(self: QMetaDataReaderControl, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMetaDataReaderControl_metaObject(self.h))

proc metacast*(self: QMetaDataReaderControl, param1: cstring): pointer =

  fcQMetaDataReaderControl_metacast(self.h, param1)

proc metacall*(self: QMetaDataReaderControl, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQMetaDataReaderControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QMetaDataReaderControl, s: cstring): string =

  let v_ms = fcQMetaDataReaderControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QMetaDataReaderControl, s: cstring): string =

  let v_ms = fcQMetaDataReaderControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isMetaDataAvailable*(self: QMetaDataReaderControl, ): bool =

  fcQMetaDataReaderControl_isMetaDataAvailable(self.h)

proc metaData*(self: QMetaDataReaderControl, key: string): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQMetaDataReaderControl_metaData(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc availableMetaData*(self: QMetaDataReaderControl, ): seq[string] =

  var v_ma = fcQMetaDataReaderControl_availableMetaData(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc metaDataChanged*(self: QMetaDataReaderControl, ): void =

  fcQMetaDataReaderControl_metaDataChanged(self.h)

proc miqt_exec_callback_QMetaDataReaderControl_metaDataChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onmetaDataChanged*(self: QMetaDataReaderControl, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMetaDataReaderControl_connect_metaDataChanged(self.h, cast[int](addr tmp[]))
proc metaDataChanged2*(self: QMetaDataReaderControl, key: string, value: gen_qvariant.QVariant): void =

  fcQMetaDataReaderControl_metaDataChanged2(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), value.h)

proc miqt_exec_callback_QMetaDataReaderControl_metaDataChanged2(slot: int, key: struct_miqt_string, value: pointer) {.exportc.} =
  type Cb = proc(key: string, value: gen_qvariant.QVariant)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(toOpenArrayByte(vkey_ms.data, 0, int(vkey_ms.len)-1))
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret

  let slotval2 = gen_qvariant.QVariant(h: value)


  nimfunc[](slotval1, slotval2)

proc onmetaDataChanged2*(self: QMetaDataReaderControl, slot: proc(key: string, value: gen_qvariant.QVariant)) =
  type Cb = proc(key: string, value: gen_qvariant.QVariant)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMetaDataReaderControl_connect_metaDataChanged2(self.h, cast[int](addr tmp[]))
proc metaDataAvailableChanged*(self: QMetaDataReaderControl, available: bool): void =

  fcQMetaDataReaderControl_metaDataAvailableChanged(self.h, available)

proc miqt_exec_callback_QMetaDataReaderControl_metaDataAvailableChanged(slot: int, available: bool) {.exportc.} =
  type Cb = proc(available: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = available


  nimfunc[](slotval1)

proc onmetaDataAvailableChanged*(self: QMetaDataReaderControl, slot: proc(available: bool)) =
  type Cb = proc(available: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMetaDataReaderControl_connect_metaDataAvailableChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QMetaDataReaderControl, s: cstring, c: cstring): string =

  let v_ms = fcQMetaDataReaderControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QMetaDataReaderControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMetaDataReaderControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QMetaDataReaderControl, s: cstring, c: cstring): string =

  let v_ms = fcQMetaDataReaderControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QMetaDataReaderControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMetaDataReaderControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type QMetaDataReaderControl): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQMetaDataReaderControl_staticMetaObject())
proc delete*(self: QMetaDataReaderControl) =
  fcQMetaDataReaderControl_delete(self.h)
