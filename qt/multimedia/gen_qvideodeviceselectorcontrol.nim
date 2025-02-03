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
{.compile("gen_qvideodeviceselectorcontrol.cpp", cflags).}


import gen_qvideodeviceselectorcontrol_types
export gen_qvideodeviceselectorcontrol_types

import
  gen_qmediacontrol,
  gen_qobjectdefs
export
  gen_qmediacontrol,
  gen_qobjectdefs

type cQVideoDeviceSelectorControl*{.exportc: "QVideoDeviceSelectorControl", incompleteStruct.} = object

proc fcQVideoDeviceSelectorControl_metaObject(self: pointer, ): pointer {.importc: "QVideoDeviceSelectorControl_metaObject".}
proc fcQVideoDeviceSelectorControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoDeviceSelectorControl_metacast".}
proc fcQVideoDeviceSelectorControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVideoDeviceSelectorControl_metacall".}
proc fcQVideoDeviceSelectorControl_tr(s: cstring): struct_miqt_string {.importc: "QVideoDeviceSelectorControl_tr".}
proc fcQVideoDeviceSelectorControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QVideoDeviceSelectorControl_trUtf8".}
proc fcQVideoDeviceSelectorControl_deviceCount(self: pointer, ): cint {.importc: "QVideoDeviceSelectorControl_deviceCount".}
proc fcQVideoDeviceSelectorControl_deviceName(self: pointer, index: cint): struct_miqt_string {.importc: "QVideoDeviceSelectorControl_deviceName".}
proc fcQVideoDeviceSelectorControl_deviceDescription(self: pointer, index: cint): struct_miqt_string {.importc: "QVideoDeviceSelectorControl_deviceDescription".}
proc fcQVideoDeviceSelectorControl_defaultDevice(self: pointer, ): cint {.importc: "QVideoDeviceSelectorControl_defaultDevice".}
proc fcQVideoDeviceSelectorControl_selectedDevice(self: pointer, ): cint {.importc: "QVideoDeviceSelectorControl_selectedDevice".}
proc fcQVideoDeviceSelectorControl_setSelectedDevice(self: pointer, index: cint): void {.importc: "QVideoDeviceSelectorControl_setSelectedDevice".}
proc fcQVideoDeviceSelectorControl_selectedDeviceChanged(self: pointer, index: cint): void {.importc: "QVideoDeviceSelectorControl_selectedDeviceChanged".}
proc fQVideoDeviceSelectorControl_connect_selectedDeviceChanged(self: pointer, slot: int) {.importc: "QVideoDeviceSelectorControl_connect_selectedDeviceChanged".}
proc fcQVideoDeviceSelectorControl_selectedDeviceChangedWithName(self: pointer, name: struct_miqt_string): void {.importc: "QVideoDeviceSelectorControl_selectedDeviceChangedWithName".}
proc fQVideoDeviceSelectorControl_connect_selectedDeviceChangedWithName(self: pointer, slot: int) {.importc: "QVideoDeviceSelectorControl_connect_selectedDeviceChangedWithName".}
proc fcQVideoDeviceSelectorControl_devicesChanged(self: pointer, ): void {.importc: "QVideoDeviceSelectorControl_devicesChanged".}
proc fQVideoDeviceSelectorControl_connect_devicesChanged(self: pointer, slot: int) {.importc: "QVideoDeviceSelectorControl_connect_devicesChanged".}
proc fcQVideoDeviceSelectorControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoDeviceSelectorControl_tr2".}
proc fcQVideoDeviceSelectorControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoDeviceSelectorControl_tr3".}
proc fcQVideoDeviceSelectorControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoDeviceSelectorControl_trUtf82".}
proc fcQVideoDeviceSelectorControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoDeviceSelectorControl_trUtf83".}
proc fcQVideoDeviceSelectorControl_delete(self: pointer) {.importc: "QVideoDeviceSelectorControl_delete".}


func init*(T: type QVideoDeviceSelectorControl, h: ptr cQVideoDeviceSelectorControl): QVideoDeviceSelectorControl =
  T(h: h)
proc metaObject*(self: QVideoDeviceSelectorControl, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQVideoDeviceSelectorControl_metaObject(self.h))

proc metacast*(self: QVideoDeviceSelectorControl, param1: cstring): pointer =

  fcQVideoDeviceSelectorControl_metacast(self.h, param1)

proc metacall*(self: QVideoDeviceSelectorControl, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQVideoDeviceSelectorControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QVideoDeviceSelectorControl, s: cstring): string =

  let v_ms = fcQVideoDeviceSelectorControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QVideoDeviceSelectorControl, s: cstring): string =

  let v_ms = fcQVideoDeviceSelectorControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc deviceCount*(self: QVideoDeviceSelectorControl, ): cint =

  fcQVideoDeviceSelectorControl_deviceCount(self.h)

proc deviceName*(self: QVideoDeviceSelectorControl, index: cint): string =

  let v_ms = fcQVideoDeviceSelectorControl_deviceName(self.h, index)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc deviceDescription*(self: QVideoDeviceSelectorControl, index: cint): string =

  let v_ms = fcQVideoDeviceSelectorControl_deviceDescription(self.h, index)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc defaultDevice*(self: QVideoDeviceSelectorControl, ): cint =

  fcQVideoDeviceSelectorControl_defaultDevice(self.h)

proc selectedDevice*(self: QVideoDeviceSelectorControl, ): cint =

  fcQVideoDeviceSelectorControl_selectedDevice(self.h)

proc setSelectedDevice*(self: QVideoDeviceSelectorControl, index: cint): void =

  fcQVideoDeviceSelectorControl_setSelectedDevice(self.h, index)

proc selectedDeviceChanged*(self: QVideoDeviceSelectorControl, index: cint): void =

  fcQVideoDeviceSelectorControl_selectedDeviceChanged(self.h, index)

proc miqt_exec_callback_QVideoDeviceSelectorControl_selectedDeviceChanged(slot: int, index: cint) {.exportc.} =
  type Cb = proc(index: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)

proc onselectedDeviceChanged*(self: QVideoDeviceSelectorControl, slot: proc(index: cint)) =
  type Cb = proc(index: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQVideoDeviceSelectorControl_connect_selectedDeviceChanged(self.h, cast[int](addr tmp[]))
proc selectedDeviceChangedWithName*(self: QVideoDeviceSelectorControl, name: string): void =

  fcQVideoDeviceSelectorControl_selectedDeviceChangedWithName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc miqt_exec_callback_QVideoDeviceSelectorControl_selectedDeviceChangedWithName(slot: int, name: struct_miqt_string) {.exportc.} =
  type Cb = proc(name: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vname_ms = name
  let vnamex_ret = string.fromBytes(toOpenArrayByte(vname_ms.data, 0, int(vname_ms.len)-1))
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret


  nimfunc[](slotval1)

proc onselectedDeviceChangedWithName*(self: QVideoDeviceSelectorControl, slot: proc(name: string)) =
  type Cb = proc(name: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQVideoDeviceSelectorControl_connect_selectedDeviceChangedWithName(self.h, cast[int](addr tmp[]))
proc devicesChanged*(self: QVideoDeviceSelectorControl, ): void =

  fcQVideoDeviceSelectorControl_devicesChanged(self.h)

proc miqt_exec_callback_QVideoDeviceSelectorControl_devicesChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc ondevicesChanged*(self: QVideoDeviceSelectorControl, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQVideoDeviceSelectorControl_connect_devicesChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QVideoDeviceSelectorControl, s: cstring, c: cstring): string =

  let v_ms = fcQVideoDeviceSelectorControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QVideoDeviceSelectorControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQVideoDeviceSelectorControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QVideoDeviceSelectorControl, s: cstring, c: cstring): string =

  let v_ms = fcQVideoDeviceSelectorControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QVideoDeviceSelectorControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQVideoDeviceSelectorControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QVideoDeviceSelectorControl) =
  fcQVideoDeviceSelectorControl_delete(self.h)
