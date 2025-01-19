import Qt6Network_libs

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

const cflags = gorge("pkg-config -cflags Qt6Network")
{.compile("gen_qnetworkinformation.cpp", cflags).}


type QNetworkInformationReachability* = cint
const
  QNetworkInformationReachabilityUnknown* = 0
  QNetworkInformationReachabilityDisconnected* = 1
  QNetworkInformationReachabilityLocal* = 2
  QNetworkInformationReachabilitySite* = 3
  QNetworkInformationReachabilityOnline* = 4



type QNetworkInformationTransportMedium* = cint
const
  QNetworkInformationTransportMediumUnknown* = 0
  QNetworkInformationTransportMediumEthernet* = 1
  QNetworkInformationTransportMediumCellular* = 2
  QNetworkInformationTransportMediumWiFi* = 3
  QNetworkInformationTransportMediumBluetooth* = 4



type QNetworkInformationFeature* = cint
const
  QNetworkInformationFeatureReachability* = 1
  QNetworkInformationFeatureCaptivePortal* = 2
  QNetworkInformationFeatureTransportMedium* = 4
  QNetworkInformationFeatureMetered* = 8



import gen_qnetworkinformation_types
export gen_qnetworkinformation_types

import
  gen_qobject,
  gen_qobjectdefs
export
  gen_qobject,
  gen_qobjectdefs

type cQNetworkInformation*{.exportc: "QNetworkInformation", incompleteStruct.} = object

proc fcQNetworkInformation_metaObject(self: pointer, ): pointer {.importc: "QNetworkInformation_metaObject".}
proc fcQNetworkInformation_metacast(self: pointer, param1: cstring): pointer {.importc: "QNetworkInformation_metacast".}
proc fcQNetworkInformation_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QNetworkInformation_metacall".}
proc fcQNetworkInformation_tr(s: cstring): struct_miqt_string {.importc: "QNetworkInformation_tr".}
proc fcQNetworkInformation_reachability(self: pointer, ): cint {.importc: "QNetworkInformation_reachability".}
proc fcQNetworkInformation_isBehindCaptivePortal(self: pointer, ): bool {.importc: "QNetworkInformation_isBehindCaptivePortal".}
proc fcQNetworkInformation_transportMedium(self: pointer, ): cint {.importc: "QNetworkInformation_transportMedium".}
proc fcQNetworkInformation_isMetered(self: pointer, ): bool {.importc: "QNetworkInformation_isMetered".}
proc fcQNetworkInformation_backendName(self: pointer, ): struct_miqt_string {.importc: "QNetworkInformation_backendName".}
proc fcQNetworkInformation_supports(self: pointer, features: cint): bool {.importc: "QNetworkInformation_supports".}
proc fcQNetworkInformation_supportedFeatures(self: pointer, ): cint {.importc: "QNetworkInformation_supportedFeatures".}
proc fcQNetworkInformation_loadDefaultBackend(): bool {.importc: "QNetworkInformation_loadDefaultBackend".}
proc fcQNetworkInformation_loadBackendByFeatures(features: cint): bool {.importc: "QNetworkInformation_loadBackendByFeatures".}
proc fcQNetworkInformation_loadWithFeatures(features: cint): bool {.importc: "QNetworkInformation_loadWithFeatures".}
proc fcQNetworkInformation_availableBackends(): struct_miqt_array {.importc: "QNetworkInformation_availableBackends".}
proc fcQNetworkInformation_instance(): pointer {.importc: "QNetworkInformation_instance".}
proc fcQNetworkInformation_reachabilityChanged(self: pointer, newReachability: cint): void {.importc: "QNetworkInformation_reachabilityChanged".}
proc fQNetworkInformation_connect_reachabilityChanged(self: pointer, slot: int) {.importc: "QNetworkInformation_connect_reachabilityChanged".}
proc fcQNetworkInformation_isBehindCaptivePortalChanged(self: pointer, state: bool): void {.importc: "QNetworkInformation_isBehindCaptivePortalChanged".}
proc fQNetworkInformation_connect_isBehindCaptivePortalChanged(self: pointer, slot: int) {.importc: "QNetworkInformation_connect_isBehindCaptivePortalChanged".}
proc fcQNetworkInformation_transportMediumChanged(self: pointer, current: cint): void {.importc: "QNetworkInformation_transportMediumChanged".}
proc fQNetworkInformation_connect_transportMediumChanged(self: pointer, slot: int) {.importc: "QNetworkInformation_connect_transportMediumChanged".}
proc fcQNetworkInformation_isMeteredChanged(self: pointer, isMetered: bool): void {.importc: "QNetworkInformation_isMeteredChanged".}
proc fQNetworkInformation_connect_isMeteredChanged(self: pointer, slot: int) {.importc: "QNetworkInformation_connect_isMeteredChanged".}
proc fcQNetworkInformation_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkInformation_tr2".}
proc fcQNetworkInformation_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkInformation_tr3".}
proc fcQNetworkInformation_staticMetaObject(): pointer {.importc: "QNetworkInformation_staticMetaObject".}


func init*(T: type QNetworkInformation, h: ptr cQNetworkInformation): QNetworkInformation =
  T(h: h)
proc metaObject*(self: QNetworkInformation, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQNetworkInformation_metaObject(self.h))

proc metacast*(self: QNetworkInformation, param1: cstring): pointer =

  fcQNetworkInformation_metacast(self.h, param1)

proc metacall*(self: QNetworkInformation, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQNetworkInformation_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QNetworkInformation, s: cstring): string =

  let v_ms = fcQNetworkInformation_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc reachability*(self: QNetworkInformation, ): QNetworkInformationReachability =

  QNetworkInformationReachability(fcQNetworkInformation_reachability(self.h))

proc isBehindCaptivePortal*(self: QNetworkInformation, ): bool =

  fcQNetworkInformation_isBehindCaptivePortal(self.h)

proc transportMedium*(self: QNetworkInformation, ): QNetworkInformationTransportMedium =

  QNetworkInformationTransportMedium(fcQNetworkInformation_transportMedium(self.h))

proc isMetered*(self: QNetworkInformation, ): bool =

  fcQNetworkInformation_isMetered(self.h)

proc backendName*(self: QNetworkInformation, ): string =

  let v_ms = fcQNetworkInformation_backendName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supports*(self: QNetworkInformation, features: QNetworkInformationFeature): bool =

  fcQNetworkInformation_supports(self.h, cint(features))

proc supportedFeatures*(self: QNetworkInformation, ): QNetworkInformationFeature =

  QNetworkInformationFeature(fcQNetworkInformation_supportedFeatures(self.h))

proc loadDefaultBackend*(_: type QNetworkInformation, ): bool =

  fcQNetworkInformation_loadDefaultBackend()

proc loadBackendByFeatures*(_: type QNetworkInformation, features: QNetworkInformationFeature): bool =

  fcQNetworkInformation_loadBackendByFeatures(cint(features))

proc loadWithFeatures*(_: type QNetworkInformation, features: QNetworkInformationFeature): bool =

  fcQNetworkInformation_loadWithFeatures(cint(features))

proc availableBackends*(_: type QNetworkInformation, ): seq[string] =

  var v_ma = fcQNetworkInformation_availableBackends()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc instance*(_: type QNetworkInformation, ): QNetworkInformation =

  QNetworkInformation(h: fcQNetworkInformation_instance())

proc reachabilityChanged*(self: QNetworkInformation, newReachability: QNetworkInformationReachability): void =

  fcQNetworkInformation_reachabilityChanged(self.h, cint(newReachability))

proc miqt_exec_callback_QNetworkInformation_reachabilityChanged(slot: int, newReachability: cint) {.exportc.} =
  type Cb = proc(newReachability: QNetworkInformationReachability)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QNetworkInformationReachability(newReachability)


  nimfunc[](slotval1)

proc onreachabilityChanged*(self: QNetworkInformation, slot: proc(newReachability: QNetworkInformationReachability)) =
  type Cb = proc(newReachability: QNetworkInformationReachability)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkInformation_connect_reachabilityChanged(self.h, cast[int](addr tmp[]))
proc isBehindCaptivePortalChanged*(self: QNetworkInformation, state: bool): void =

  fcQNetworkInformation_isBehindCaptivePortalChanged(self.h, state)

proc miqt_exec_callback_QNetworkInformation_isBehindCaptivePortalChanged(slot: int, state: bool) {.exportc.} =
  type Cb = proc(state: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = state


  nimfunc[](slotval1)

proc onisBehindCaptivePortalChanged*(self: QNetworkInformation, slot: proc(state: bool)) =
  type Cb = proc(state: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkInformation_connect_isBehindCaptivePortalChanged(self.h, cast[int](addr tmp[]))
proc transportMediumChanged*(self: QNetworkInformation, current: QNetworkInformationTransportMedium): void =

  fcQNetworkInformation_transportMediumChanged(self.h, cint(current))

proc miqt_exec_callback_QNetworkInformation_transportMediumChanged(slot: int, current: cint) {.exportc.} =
  type Cb = proc(current: QNetworkInformationTransportMedium)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QNetworkInformationTransportMedium(current)


  nimfunc[](slotval1)

proc ontransportMediumChanged*(self: QNetworkInformation, slot: proc(current: QNetworkInformationTransportMedium)) =
  type Cb = proc(current: QNetworkInformationTransportMedium)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkInformation_connect_transportMediumChanged(self.h, cast[int](addr tmp[]))
proc isMeteredChanged*(self: QNetworkInformation, isMetered: bool): void =

  fcQNetworkInformation_isMeteredChanged(self.h, isMetered)

proc miqt_exec_callback_QNetworkInformation_isMeteredChanged(slot: int, isMetered: bool) {.exportc.} =
  type Cb = proc(isMetered: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = isMetered


  nimfunc[](slotval1)

proc onisMeteredChanged*(self: QNetworkInformation, slot: proc(isMetered: bool)) =
  type Cb = proc(isMetered: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkInformation_connect_isMeteredChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QNetworkInformation, s: cstring, c: cstring): string =

  let v_ms = fcQNetworkInformation_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QNetworkInformation, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQNetworkInformation_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type QNetworkInformation): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQNetworkInformation_staticMetaObject())
