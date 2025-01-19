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
{.compile("gen_qmedianetworkaccesscontrol.cpp", cflags).}


import gen_qmedianetworkaccesscontrol_types
export gen_qmedianetworkaccesscontrol_types

import
  gen_qmediacontrol,
  gen_qnetworkconfiguration,
  gen_qobjectdefs
export
  gen_qmediacontrol,
  gen_qnetworkconfiguration,
  gen_qobjectdefs

type cQMediaNetworkAccessControl*{.exportc: "QMediaNetworkAccessControl", incompleteStruct.} = object

proc fcQMediaNetworkAccessControl_metaObject(self: pointer, ): pointer {.importc: "QMediaNetworkAccessControl_metaObject".}
proc fcQMediaNetworkAccessControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaNetworkAccessControl_metacast".}
proc fcQMediaNetworkAccessControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaNetworkAccessControl_metacall".}
proc fcQMediaNetworkAccessControl_tr(s: cstring): struct_miqt_string {.importc: "QMediaNetworkAccessControl_tr".}
proc fcQMediaNetworkAccessControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaNetworkAccessControl_trUtf8".}
proc fcQMediaNetworkAccessControl_setConfigurations(self: pointer, configuration: struct_miqt_array): void {.importc: "QMediaNetworkAccessControl_setConfigurations".}
proc fcQMediaNetworkAccessControl_currentConfiguration(self: pointer, ): pointer {.importc: "QMediaNetworkAccessControl_currentConfiguration".}
proc fcQMediaNetworkAccessControl_configurationChanged(self: pointer, configuration: pointer): void {.importc: "QMediaNetworkAccessControl_configurationChanged".}
proc fQMediaNetworkAccessControl_connect_configurationChanged(self: pointer, slot: int) {.importc: "QMediaNetworkAccessControl_connect_configurationChanged".}
proc fcQMediaNetworkAccessControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaNetworkAccessControl_tr2".}
proc fcQMediaNetworkAccessControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaNetworkAccessControl_tr3".}
proc fcQMediaNetworkAccessControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaNetworkAccessControl_trUtf82".}
proc fcQMediaNetworkAccessControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaNetworkAccessControl_trUtf83".}
proc fcQMediaNetworkAccessControl_staticMetaObject(): pointer {.importc: "QMediaNetworkAccessControl_staticMetaObject".}
proc fcQMediaNetworkAccessControl_delete(self: pointer) {.importc: "QMediaNetworkAccessControl_delete".}


func init*(T: type QMediaNetworkAccessControl, h: ptr cQMediaNetworkAccessControl): QMediaNetworkAccessControl =
  T(h: h)
proc metaObject*(self: QMediaNetworkAccessControl, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMediaNetworkAccessControl_metaObject(self.h))

proc metacast*(self: QMediaNetworkAccessControl, param1: cstring): pointer =

  fcQMediaNetworkAccessControl_metacast(self.h, param1)

proc metacall*(self: QMediaNetworkAccessControl, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQMediaNetworkAccessControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QMediaNetworkAccessControl, s: cstring): string =

  let v_ms = fcQMediaNetworkAccessControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QMediaNetworkAccessControl, s: cstring): string =

  let v_ms = fcQMediaNetworkAccessControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setConfigurations*(self: QMediaNetworkAccessControl, configuration: seq[gen_qnetworkconfiguration.QNetworkConfiguration]): void =

  var configuration_CArray = newSeq[pointer](len(configuration))
  for i in 0..<len(configuration):
    configuration_CArray[i] = configuration[i].h

  fcQMediaNetworkAccessControl_setConfigurations(self.h, struct_miqt_array(len: csize_t(len(configuration)), data: if len(configuration) == 0: nil else: addr(configuration_CArray[0])))

proc currentConfiguration*(self: QMediaNetworkAccessControl, ): gen_qnetworkconfiguration.QNetworkConfiguration =

  gen_qnetworkconfiguration.QNetworkConfiguration(h: fcQMediaNetworkAccessControl_currentConfiguration(self.h))

proc configurationChanged*(self: QMediaNetworkAccessControl, configuration: gen_qnetworkconfiguration.QNetworkConfiguration): void =

  fcQMediaNetworkAccessControl_configurationChanged(self.h, configuration.h)

proc miqt_exec_callback_QMediaNetworkAccessControl_configurationChanged(slot: int, configuration: pointer) {.exportc.} =
  type Cb = proc(configuration: gen_qnetworkconfiguration.QNetworkConfiguration)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnetworkconfiguration.QNetworkConfiguration(h: configuration)


  nimfunc[](slotval1)

proc onconfigurationChanged*(self: QMediaNetworkAccessControl, slot: proc(configuration: gen_qnetworkconfiguration.QNetworkConfiguration)) =
  type Cb = proc(configuration: gen_qnetworkconfiguration.QNetworkConfiguration)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaNetworkAccessControl_connect_configurationChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QMediaNetworkAccessControl, s: cstring, c: cstring): string =

  let v_ms = fcQMediaNetworkAccessControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QMediaNetworkAccessControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMediaNetworkAccessControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QMediaNetworkAccessControl, s: cstring, c: cstring): string =

  let v_ms = fcQMediaNetworkAccessControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QMediaNetworkAccessControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMediaNetworkAccessControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type QMediaNetworkAccessControl): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQMediaNetworkAccessControl_staticMetaObject())
proc delete*(self: QMediaNetworkAccessControl) =
  fcQMediaNetworkAccessControl_delete(self.h)
