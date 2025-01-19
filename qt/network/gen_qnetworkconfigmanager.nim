import Qt5Network_libs

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

const cflags = gorge("pkg-config -cflags Qt5Network")
{.compile("gen_qnetworkconfigmanager.cpp", cflags).}


type QNetworkConfigurationManagerCapability* = cint
const
  QNetworkConfigurationManagerCanStartAndStopInterfaces* = 1
  QNetworkConfigurationManagerDirectConnectionRouting* = 2
  QNetworkConfigurationManagerSystemSessionSupport* = 4
  QNetworkConfigurationManagerApplicationLevelRoaming* = 8
  QNetworkConfigurationManagerForcedRoaming* = 16
  QNetworkConfigurationManagerDataStatistics* = 32
  QNetworkConfigurationManagerNetworkSessionRequired* = 64



import gen_qnetworkconfigmanager_types
export gen_qnetworkconfigmanager_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qnetworkconfiguration,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qnetworkconfiguration,
  gen_qobject,
  gen_qobjectdefs

type cQNetworkConfigurationManager*{.exportc: "QNetworkConfigurationManager", incompleteStruct.} = object

proc fcQNetworkConfigurationManager_new(): ptr cQNetworkConfigurationManager {.importc: "QNetworkConfigurationManager_new".}
proc fcQNetworkConfigurationManager_new2(parent: pointer): ptr cQNetworkConfigurationManager {.importc: "QNetworkConfigurationManager_new2".}
proc fcQNetworkConfigurationManager_metaObject(self: pointer, ): pointer {.importc: "QNetworkConfigurationManager_metaObject".}
proc fcQNetworkConfigurationManager_metacast(self: pointer, param1: cstring): pointer {.importc: "QNetworkConfigurationManager_metacast".}
proc fcQNetworkConfigurationManager_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QNetworkConfigurationManager_metacall".}
proc fcQNetworkConfigurationManager_tr(s: cstring): struct_miqt_string {.importc: "QNetworkConfigurationManager_tr".}
proc fcQNetworkConfigurationManager_trUtf8(s: cstring): struct_miqt_string {.importc: "QNetworkConfigurationManager_trUtf8".}
proc fcQNetworkConfigurationManager_capabilities(self: pointer, ): cint {.importc: "QNetworkConfigurationManager_capabilities".}
proc fcQNetworkConfigurationManager_defaultConfiguration(self: pointer, ): pointer {.importc: "QNetworkConfigurationManager_defaultConfiguration".}
proc fcQNetworkConfigurationManager_allConfigurations(self: pointer, ): struct_miqt_array {.importc: "QNetworkConfigurationManager_allConfigurations".}
proc fcQNetworkConfigurationManager_configurationFromIdentifier(self: pointer, identifier: struct_miqt_string): pointer {.importc: "QNetworkConfigurationManager_configurationFromIdentifier".}
proc fcQNetworkConfigurationManager_isOnline(self: pointer, ): bool {.importc: "QNetworkConfigurationManager_isOnline".}
proc fcQNetworkConfigurationManager_updateConfigurations(self: pointer, ): void {.importc: "QNetworkConfigurationManager_updateConfigurations".}
proc fcQNetworkConfigurationManager_configurationAdded(self: pointer, config: pointer): void {.importc: "QNetworkConfigurationManager_configurationAdded".}
proc fQNetworkConfigurationManager_connect_configurationAdded(self: pointer, slot: int) {.importc: "QNetworkConfigurationManager_connect_configurationAdded".}
proc fcQNetworkConfigurationManager_configurationRemoved(self: pointer, config: pointer): void {.importc: "QNetworkConfigurationManager_configurationRemoved".}
proc fQNetworkConfigurationManager_connect_configurationRemoved(self: pointer, slot: int) {.importc: "QNetworkConfigurationManager_connect_configurationRemoved".}
proc fcQNetworkConfigurationManager_configurationChanged(self: pointer, config: pointer): void {.importc: "QNetworkConfigurationManager_configurationChanged".}
proc fQNetworkConfigurationManager_connect_configurationChanged(self: pointer, slot: int) {.importc: "QNetworkConfigurationManager_connect_configurationChanged".}
proc fcQNetworkConfigurationManager_onlineStateChanged(self: pointer, isOnline: bool): void {.importc: "QNetworkConfigurationManager_onlineStateChanged".}
proc fQNetworkConfigurationManager_connect_onlineStateChanged(self: pointer, slot: int) {.importc: "QNetworkConfigurationManager_connect_onlineStateChanged".}
proc fcQNetworkConfigurationManager_updateCompleted(self: pointer, ): void {.importc: "QNetworkConfigurationManager_updateCompleted".}
proc fQNetworkConfigurationManager_connect_updateCompleted(self: pointer, slot: int) {.importc: "QNetworkConfigurationManager_connect_updateCompleted".}
proc fcQNetworkConfigurationManager_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkConfigurationManager_tr2".}
proc fcQNetworkConfigurationManager_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkConfigurationManager_tr3".}
proc fcQNetworkConfigurationManager_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkConfigurationManager_trUtf82".}
proc fcQNetworkConfigurationManager_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkConfigurationManager_trUtf83".}
proc fcQNetworkConfigurationManager_allConfigurations1(self: pointer, flags: cint): struct_miqt_array {.importc: "QNetworkConfigurationManager_allConfigurations1".}
proc fQNetworkConfigurationManager_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QNetworkConfigurationManager_virtualbase_metacall".}
proc fcQNetworkConfigurationManager_override_virtual_metacall(self: pointer, slot: int) {.importc: "QNetworkConfigurationManager_override_virtual_metacall".}
proc fQNetworkConfigurationManager_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QNetworkConfigurationManager_virtualbase_event".}
proc fcQNetworkConfigurationManager_override_virtual_event(self: pointer, slot: int) {.importc: "QNetworkConfigurationManager_override_virtual_event".}
proc fQNetworkConfigurationManager_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QNetworkConfigurationManager_virtualbase_eventFilter".}
proc fcQNetworkConfigurationManager_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QNetworkConfigurationManager_override_virtual_eventFilter".}
proc fQNetworkConfigurationManager_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QNetworkConfigurationManager_virtualbase_timerEvent".}
proc fcQNetworkConfigurationManager_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QNetworkConfigurationManager_override_virtual_timerEvent".}
proc fQNetworkConfigurationManager_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QNetworkConfigurationManager_virtualbase_childEvent".}
proc fcQNetworkConfigurationManager_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QNetworkConfigurationManager_override_virtual_childEvent".}
proc fQNetworkConfigurationManager_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QNetworkConfigurationManager_virtualbase_customEvent".}
proc fcQNetworkConfigurationManager_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QNetworkConfigurationManager_override_virtual_customEvent".}
proc fQNetworkConfigurationManager_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QNetworkConfigurationManager_virtualbase_connectNotify".}
proc fcQNetworkConfigurationManager_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QNetworkConfigurationManager_override_virtual_connectNotify".}
proc fQNetworkConfigurationManager_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QNetworkConfigurationManager_virtualbase_disconnectNotify".}
proc fcQNetworkConfigurationManager_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QNetworkConfigurationManager_override_virtual_disconnectNotify".}
proc fcQNetworkConfigurationManager_staticMetaObject(): pointer {.importc: "QNetworkConfigurationManager_staticMetaObject".}
proc fcQNetworkConfigurationManager_delete(self: pointer) {.importc: "QNetworkConfigurationManager_delete".}


func init*(T: type QNetworkConfigurationManager, h: ptr cQNetworkConfigurationManager): QNetworkConfigurationManager =
  T(h: h)
proc create*(T: type QNetworkConfigurationManager, ): QNetworkConfigurationManager =

  QNetworkConfigurationManager.init(fcQNetworkConfigurationManager_new())
proc create*(T: type QNetworkConfigurationManager, parent: gen_qobject.QObject): QNetworkConfigurationManager =

  QNetworkConfigurationManager.init(fcQNetworkConfigurationManager_new2(parent.h))
proc metaObject*(self: QNetworkConfigurationManager, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQNetworkConfigurationManager_metaObject(self.h))

proc metacast*(self: QNetworkConfigurationManager, param1: cstring): pointer =

  fcQNetworkConfigurationManager_metacast(self.h, param1)

proc metacall*(self: QNetworkConfigurationManager, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQNetworkConfigurationManager_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QNetworkConfigurationManager, s: cstring): string =

  let v_ms = fcQNetworkConfigurationManager_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QNetworkConfigurationManager, s: cstring): string =

  let v_ms = fcQNetworkConfigurationManager_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc capabilities*(self: QNetworkConfigurationManager, ): QNetworkConfigurationManagerCapability =

  QNetworkConfigurationManagerCapability(fcQNetworkConfigurationManager_capabilities(self.h))

proc defaultConfiguration*(self: QNetworkConfigurationManager, ): gen_qnetworkconfiguration.QNetworkConfiguration =

  gen_qnetworkconfiguration.QNetworkConfiguration(h: fcQNetworkConfigurationManager_defaultConfiguration(self.h))

proc allConfigurations*(self: QNetworkConfigurationManager, ): seq[gen_qnetworkconfiguration.QNetworkConfiguration] =

  var v_ma = fcQNetworkConfigurationManager_allConfigurations(self.h)
  var vx_ret = newSeq[gen_qnetworkconfiguration.QNetworkConfiguration](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qnetworkconfiguration.QNetworkConfiguration(h: v_outCast[i])
  vx_ret

proc configurationFromIdentifier*(self: QNetworkConfigurationManager, identifier: string): gen_qnetworkconfiguration.QNetworkConfiguration =

  gen_qnetworkconfiguration.QNetworkConfiguration(h: fcQNetworkConfigurationManager_configurationFromIdentifier(self.h, struct_miqt_string(data: identifier, len: csize_t(len(identifier)))))

proc isOnline*(self: QNetworkConfigurationManager, ): bool =

  fcQNetworkConfigurationManager_isOnline(self.h)

proc updateConfigurations*(self: QNetworkConfigurationManager, ): void =

  fcQNetworkConfigurationManager_updateConfigurations(self.h)

proc configurationAdded*(self: QNetworkConfigurationManager, config: gen_qnetworkconfiguration.QNetworkConfiguration): void =

  fcQNetworkConfigurationManager_configurationAdded(self.h, config.h)

proc miqt_exec_callback_QNetworkConfigurationManager_configurationAdded(slot: int, config: pointer) {.exportc.} =
  type Cb = proc(config: gen_qnetworkconfiguration.QNetworkConfiguration)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnetworkconfiguration.QNetworkConfiguration(h: config)


  nimfunc[](slotval1)

proc onconfigurationAdded*(self: QNetworkConfigurationManager, slot: proc(config: gen_qnetworkconfiguration.QNetworkConfiguration)) =
  type Cb = proc(config: gen_qnetworkconfiguration.QNetworkConfiguration)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkConfigurationManager_connect_configurationAdded(self.h, cast[int](addr tmp[]))
proc configurationRemoved*(self: QNetworkConfigurationManager, config: gen_qnetworkconfiguration.QNetworkConfiguration): void =

  fcQNetworkConfigurationManager_configurationRemoved(self.h, config.h)

proc miqt_exec_callback_QNetworkConfigurationManager_configurationRemoved(slot: int, config: pointer) {.exportc.} =
  type Cb = proc(config: gen_qnetworkconfiguration.QNetworkConfiguration)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnetworkconfiguration.QNetworkConfiguration(h: config)


  nimfunc[](slotval1)

proc onconfigurationRemoved*(self: QNetworkConfigurationManager, slot: proc(config: gen_qnetworkconfiguration.QNetworkConfiguration)) =
  type Cb = proc(config: gen_qnetworkconfiguration.QNetworkConfiguration)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkConfigurationManager_connect_configurationRemoved(self.h, cast[int](addr tmp[]))
proc configurationChanged*(self: QNetworkConfigurationManager, config: gen_qnetworkconfiguration.QNetworkConfiguration): void =

  fcQNetworkConfigurationManager_configurationChanged(self.h, config.h)

proc miqt_exec_callback_QNetworkConfigurationManager_configurationChanged(slot: int, config: pointer) {.exportc.} =
  type Cb = proc(config: gen_qnetworkconfiguration.QNetworkConfiguration)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnetworkconfiguration.QNetworkConfiguration(h: config)


  nimfunc[](slotval1)

proc onconfigurationChanged*(self: QNetworkConfigurationManager, slot: proc(config: gen_qnetworkconfiguration.QNetworkConfiguration)) =
  type Cb = proc(config: gen_qnetworkconfiguration.QNetworkConfiguration)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkConfigurationManager_connect_configurationChanged(self.h, cast[int](addr tmp[]))
proc onlineStateChanged*(self: QNetworkConfigurationManager, isOnline: bool): void =

  fcQNetworkConfigurationManager_onlineStateChanged(self.h, isOnline)

proc miqt_exec_callback_QNetworkConfigurationManager_onlineStateChanged(slot: int, isOnline: bool) {.exportc.} =
  type Cb = proc(isOnline: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = isOnline


  nimfunc[](slotval1)

proc ononlineStateChanged*(self: QNetworkConfigurationManager, slot: proc(isOnline: bool)) =
  type Cb = proc(isOnline: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkConfigurationManager_connect_onlineStateChanged(self.h, cast[int](addr tmp[]))
proc updateCompleted*(self: QNetworkConfigurationManager, ): void =

  fcQNetworkConfigurationManager_updateCompleted(self.h)

proc miqt_exec_callback_QNetworkConfigurationManager_updateCompleted(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onupdateCompleted*(self: QNetworkConfigurationManager, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkConfigurationManager_connect_updateCompleted(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QNetworkConfigurationManager, s: cstring, c: cstring): string =

  let v_ms = fcQNetworkConfigurationManager_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QNetworkConfigurationManager, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQNetworkConfigurationManager_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QNetworkConfigurationManager, s: cstring, c: cstring): string =

  let v_ms = fcQNetworkConfigurationManager_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QNetworkConfigurationManager, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQNetworkConfigurationManager_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc allConfigurations1*(self: QNetworkConfigurationManager, flags: gen_qnetworkconfiguration.QNetworkConfigurationStateFlag): seq[gen_qnetworkconfiguration.QNetworkConfiguration] =

  var v_ma = fcQNetworkConfigurationManager_allConfigurations1(self.h, cint(flags))
  var vx_ret = newSeq[gen_qnetworkconfiguration.QNetworkConfiguration](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qnetworkconfiguration.QNetworkConfiguration(h: v_outCast[i])
  vx_ret

proc callVirtualBase_metacall(self: QNetworkConfigurationManager, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQNetworkConfigurationManager_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QNetworkConfigurationManagermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QNetworkConfigurationManager, slot: proc(super: QNetworkConfigurationManagermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QNetworkConfigurationManagermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkConfigurationManager_metacall(self: ptr cQNetworkConfigurationManager, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QNetworkConfigurationManager_metacall ".} =
  type Cb = proc(super: QNetworkConfigurationManagermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QNetworkConfigurationManager(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QNetworkConfigurationManager, event: gen_qcoreevent.QEvent): bool =


  fQNetworkConfigurationManager_virtualbase_event(self.h, event.h)

type QNetworkConfigurationManagereventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QNetworkConfigurationManager, slot: proc(super: QNetworkConfigurationManagereventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QNetworkConfigurationManagereventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkConfigurationManager_event(self: ptr cQNetworkConfigurationManager, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QNetworkConfigurationManager_event ".} =
  type Cb = proc(super: QNetworkConfigurationManagereventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QNetworkConfigurationManager(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QNetworkConfigurationManager, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQNetworkConfigurationManager_virtualbase_eventFilter(self.h, watched.h, event.h)

type QNetworkConfigurationManagereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QNetworkConfigurationManager, slot: proc(super: QNetworkConfigurationManagereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QNetworkConfigurationManagereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkConfigurationManager_eventFilter(self: ptr cQNetworkConfigurationManager, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QNetworkConfigurationManager_eventFilter ".} =
  type Cb = proc(super: QNetworkConfigurationManagereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QNetworkConfigurationManager(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QNetworkConfigurationManager, event: gen_qcoreevent.QTimerEvent): void =


  fQNetworkConfigurationManager_virtualbase_timerEvent(self.h, event.h)

type QNetworkConfigurationManagertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QNetworkConfigurationManager, slot: proc(super: QNetworkConfigurationManagertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QNetworkConfigurationManagertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkConfigurationManager_timerEvent(self: ptr cQNetworkConfigurationManager, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QNetworkConfigurationManager_timerEvent ".} =
  type Cb = proc(super: QNetworkConfigurationManagertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QNetworkConfigurationManager(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QNetworkConfigurationManager, event: gen_qcoreevent.QChildEvent): void =


  fQNetworkConfigurationManager_virtualbase_childEvent(self.h, event.h)

type QNetworkConfigurationManagerchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QNetworkConfigurationManager, slot: proc(super: QNetworkConfigurationManagerchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QNetworkConfigurationManagerchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkConfigurationManager_childEvent(self: ptr cQNetworkConfigurationManager, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QNetworkConfigurationManager_childEvent ".} =
  type Cb = proc(super: QNetworkConfigurationManagerchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QNetworkConfigurationManager(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QNetworkConfigurationManager, event: gen_qcoreevent.QEvent): void =


  fQNetworkConfigurationManager_virtualbase_customEvent(self.h, event.h)

type QNetworkConfigurationManagercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QNetworkConfigurationManager, slot: proc(super: QNetworkConfigurationManagercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QNetworkConfigurationManagercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkConfigurationManager_customEvent(self: ptr cQNetworkConfigurationManager, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QNetworkConfigurationManager_customEvent ".} =
  type Cb = proc(super: QNetworkConfigurationManagercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QNetworkConfigurationManager(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QNetworkConfigurationManager, signal: gen_qmetaobject.QMetaMethod): void =


  fQNetworkConfigurationManager_virtualbase_connectNotify(self.h, signal.h)

type QNetworkConfigurationManagerconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QNetworkConfigurationManager, slot: proc(super: QNetworkConfigurationManagerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QNetworkConfigurationManagerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkConfigurationManager_connectNotify(self: ptr cQNetworkConfigurationManager, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QNetworkConfigurationManager_connectNotify ".} =
  type Cb = proc(super: QNetworkConfigurationManagerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QNetworkConfigurationManager(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QNetworkConfigurationManager, signal: gen_qmetaobject.QMetaMethod): void =


  fQNetworkConfigurationManager_virtualbase_disconnectNotify(self.h, signal.h)

type QNetworkConfigurationManagerdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QNetworkConfigurationManager, slot: proc(super: QNetworkConfigurationManagerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QNetworkConfigurationManagerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkConfigurationManager_disconnectNotify(self: ptr cQNetworkConfigurationManager, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QNetworkConfigurationManager_disconnectNotify ".} =
  type Cb = proc(super: QNetworkConfigurationManagerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QNetworkConfigurationManager(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QNetworkConfigurationManager): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQNetworkConfigurationManager_staticMetaObject())
proc delete*(self: QNetworkConfigurationManager) =
  fcQNetworkConfigurationManager_delete(self.h)
