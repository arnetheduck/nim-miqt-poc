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
{.compile("gen_qnetworksession.cpp", cflags).}


type QNetworkSessionState* = cint
const
  QNetworkSessionInvalid* = 0
  QNetworkSessionNotAvailable* = 1
  QNetworkSessionConnecting* = 2
  QNetworkSessionConnected* = 3
  QNetworkSessionClosing* = 4
  QNetworkSessionDisconnected* = 5
  QNetworkSessionRoaming* = 6



type QNetworkSessionSessionError* = cint
const
  QNetworkSessionUnknownSessionError* = 0
  QNetworkSessionSessionAbortedError* = 1
  QNetworkSessionRoamingError* = 2
  QNetworkSessionOperationNotSupportedError* = 3
  QNetworkSessionInvalidConfigurationError* = 4



type QNetworkSessionUsagePolicy* = cint
const
  QNetworkSessionNoPolicy* = 0
  QNetworkSessionNoBackgroundTrafficPolicy* = 1



import gen_qnetworksession_types
export gen_qnetworksession_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qnetworkconfiguration,
  gen_qnetworkinterface,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvariant
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qnetworkconfiguration,
  gen_qnetworkinterface,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvariant

type cQNetworkSession*{.exportc: "QNetworkSession", incompleteStruct.} = object

proc fcQNetworkSession_new(connConfig: pointer): ptr cQNetworkSession {.importc: "QNetworkSession_new".}
proc fcQNetworkSession_new2(connConfig: pointer, parent: pointer): ptr cQNetworkSession {.importc: "QNetworkSession_new2".}
proc fcQNetworkSession_metaObject(self: pointer, ): pointer {.importc: "QNetworkSession_metaObject".}
proc fcQNetworkSession_metacast(self: pointer, param1: cstring): pointer {.importc: "QNetworkSession_metacast".}
proc fcQNetworkSession_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QNetworkSession_metacall".}
proc fcQNetworkSession_tr(s: cstring): struct_miqt_string {.importc: "QNetworkSession_tr".}
proc fcQNetworkSession_trUtf8(s: cstring): struct_miqt_string {.importc: "QNetworkSession_trUtf8".}
proc fcQNetworkSession_isOpen(self: pointer, ): bool {.importc: "QNetworkSession_isOpen".}
proc fcQNetworkSession_configuration(self: pointer, ): pointer {.importc: "QNetworkSession_configuration".}
proc fcQNetworkSession_interfaceX(self: pointer, ): pointer {.importc: "QNetworkSession_interface".}
proc fcQNetworkSession_state(self: pointer, ): cint {.importc: "QNetworkSession_state".}
proc fcQNetworkSession_error(self: pointer, ): cint {.importc: "QNetworkSession_error".}
proc fcQNetworkSession_errorString(self: pointer, ): struct_miqt_string {.importc: "QNetworkSession_errorString".}
proc fcQNetworkSession_sessionProperty(self: pointer, key: struct_miqt_string): pointer {.importc: "QNetworkSession_sessionProperty".}
proc fcQNetworkSession_setSessionProperty(self: pointer, key: struct_miqt_string, value: pointer): void {.importc: "QNetworkSession_setSessionProperty".}
proc fcQNetworkSession_bytesWritten(self: pointer, ): culonglong {.importc: "QNetworkSession_bytesWritten".}
proc fcQNetworkSession_bytesReceived(self: pointer, ): culonglong {.importc: "QNetworkSession_bytesReceived".}
proc fcQNetworkSession_activeTime(self: pointer, ): culonglong {.importc: "QNetworkSession_activeTime".}
proc fcQNetworkSession_usagePolicies(self: pointer, ): cint {.importc: "QNetworkSession_usagePolicies".}
proc fcQNetworkSession_waitForOpened(self: pointer, ): bool {.importc: "QNetworkSession_waitForOpened".}
proc fcQNetworkSession_open(self: pointer, ): void {.importc: "QNetworkSession_open".}
proc fcQNetworkSession_close(self: pointer, ): void {.importc: "QNetworkSession_close".}
proc fcQNetworkSession_stop(self: pointer, ): void {.importc: "QNetworkSession_stop".}
proc fcQNetworkSession_migrate(self: pointer, ): void {.importc: "QNetworkSession_migrate".}
proc fcQNetworkSession_ignore(self: pointer, ): void {.importc: "QNetworkSession_ignore".}
proc fcQNetworkSession_accept(self: pointer, ): void {.importc: "QNetworkSession_accept".}
proc fcQNetworkSession_reject(self: pointer, ): void {.importc: "QNetworkSession_reject".}
proc fcQNetworkSession_stateChanged(self: pointer, param1: cint): void {.importc: "QNetworkSession_stateChanged".}
proc fQNetworkSession_connect_stateChanged(self: pointer, slot: int) {.importc: "QNetworkSession_connect_stateChanged".}
proc fcQNetworkSession_opened(self: pointer, ): void {.importc: "QNetworkSession_opened".}
proc fQNetworkSession_connect_opened(self: pointer, slot: int) {.importc: "QNetworkSession_connect_opened".}
proc fcQNetworkSession_closed(self: pointer, ): void {.importc: "QNetworkSession_closed".}
proc fQNetworkSession_connect_closed(self: pointer, slot: int) {.importc: "QNetworkSession_connect_closed".}
proc fcQNetworkSession_errorWithQNetworkSessionSessionError(self: pointer, param1: cint): void {.importc: "QNetworkSession_errorWithQNetworkSessionSessionError".}
proc fQNetworkSession_connect_errorWithQNetworkSessionSessionError(self: pointer, slot: int) {.importc: "QNetworkSession_connect_errorWithQNetworkSessionSessionError".}
proc fcQNetworkSession_preferredConfigurationChanged(self: pointer, config: pointer, isSeamless: bool): void {.importc: "QNetworkSession_preferredConfigurationChanged".}
proc fQNetworkSession_connect_preferredConfigurationChanged(self: pointer, slot: int) {.importc: "QNetworkSession_connect_preferredConfigurationChanged".}
proc fcQNetworkSession_newConfigurationActivated(self: pointer, ): void {.importc: "QNetworkSession_newConfigurationActivated".}
proc fQNetworkSession_connect_newConfigurationActivated(self: pointer, slot: int) {.importc: "QNetworkSession_connect_newConfigurationActivated".}
proc fcQNetworkSession_usagePoliciesChanged(self: pointer, usagePolicies: cint): void {.importc: "QNetworkSession_usagePoliciesChanged".}
proc fQNetworkSession_connect_usagePoliciesChanged(self: pointer, slot: int) {.importc: "QNetworkSession_connect_usagePoliciesChanged".}
proc fcQNetworkSession_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkSession_tr2".}
proc fcQNetworkSession_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkSession_tr3".}
proc fcQNetworkSession_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkSession_trUtf82".}
proc fcQNetworkSession_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkSession_trUtf83".}
proc fcQNetworkSession_waitForOpened1(self: pointer, msecs: cint): bool {.importc: "QNetworkSession_waitForOpened1".}
proc fQNetworkSession_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QNetworkSession_virtualbase_metaObject".}
proc fcQNetworkSession_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QNetworkSession_override_virtual_metaObject".}
proc fQNetworkSession_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QNetworkSession_virtualbase_metacast".}
proc fcQNetworkSession_override_virtual_metacast(self: pointer, slot: int) {.importc: "QNetworkSession_override_virtual_metacast".}
proc fQNetworkSession_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QNetworkSession_virtualbase_metacall".}
proc fcQNetworkSession_override_virtual_metacall(self: pointer, slot: int) {.importc: "QNetworkSession_override_virtual_metacall".}
proc fQNetworkSession_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QNetworkSession_virtualbase_connectNotify".}
proc fcQNetworkSession_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QNetworkSession_override_virtual_connectNotify".}
proc fQNetworkSession_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QNetworkSession_virtualbase_disconnectNotify".}
proc fcQNetworkSession_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QNetworkSession_override_virtual_disconnectNotify".}
proc fQNetworkSession_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QNetworkSession_virtualbase_event".}
proc fcQNetworkSession_override_virtual_event(self: pointer, slot: int) {.importc: "QNetworkSession_override_virtual_event".}
proc fQNetworkSession_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QNetworkSession_virtualbase_eventFilter".}
proc fcQNetworkSession_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QNetworkSession_override_virtual_eventFilter".}
proc fQNetworkSession_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QNetworkSession_virtualbase_timerEvent".}
proc fcQNetworkSession_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QNetworkSession_override_virtual_timerEvent".}
proc fQNetworkSession_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QNetworkSession_virtualbase_childEvent".}
proc fcQNetworkSession_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QNetworkSession_override_virtual_childEvent".}
proc fQNetworkSession_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QNetworkSession_virtualbase_customEvent".}
proc fcQNetworkSession_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QNetworkSession_override_virtual_customEvent".}
proc fcQNetworkSession_staticMetaObject(): pointer {.importc: "QNetworkSession_staticMetaObject".}
proc fcQNetworkSession_delete(self: pointer) {.importc: "QNetworkSession_delete".}


func init*(T: type QNetworkSession, h: ptr cQNetworkSession): QNetworkSession =
  T(h: h)
proc create*(T: type QNetworkSession, connConfig: gen_qnetworkconfiguration.QNetworkConfiguration): QNetworkSession =

  QNetworkSession.init(fcQNetworkSession_new(connConfig.h))
proc create*(T: type QNetworkSession, connConfig: gen_qnetworkconfiguration.QNetworkConfiguration, parent: gen_qobject.QObject): QNetworkSession =

  QNetworkSession.init(fcQNetworkSession_new2(connConfig.h, parent.h))
proc metaObject*(self: QNetworkSession, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQNetworkSession_metaObject(self.h))

proc metacast*(self: QNetworkSession, param1: cstring): pointer =

  fcQNetworkSession_metacast(self.h, param1)

proc metacall*(self: QNetworkSession, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQNetworkSession_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QNetworkSession, s: cstring): string =

  let v_ms = fcQNetworkSession_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QNetworkSession, s: cstring): string =

  let v_ms = fcQNetworkSession_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isOpen*(self: QNetworkSession, ): bool =

  fcQNetworkSession_isOpen(self.h)

proc configuration*(self: QNetworkSession, ): gen_qnetworkconfiguration.QNetworkConfiguration =

  gen_qnetworkconfiguration.QNetworkConfiguration(h: fcQNetworkSession_configuration(self.h))

proc interfaceX*(self: QNetworkSession, ): gen_qnetworkinterface.QNetworkInterface =

  gen_qnetworkinterface.QNetworkInterface(h: fcQNetworkSession_interfaceX(self.h))

proc state*(self: QNetworkSession, ): QNetworkSessionState =

  QNetworkSessionState(fcQNetworkSession_state(self.h))

proc error*(self: QNetworkSession, ): QNetworkSessionSessionError =

  QNetworkSessionSessionError(fcQNetworkSession_error(self.h))

proc errorString*(self: QNetworkSession, ): string =

  let v_ms = fcQNetworkSession_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sessionProperty*(self: QNetworkSession, key: string): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQNetworkSession_sessionProperty(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc setSessionProperty*(self: QNetworkSession, key: string, value: gen_qvariant.QVariant): void =

  fcQNetworkSession_setSessionProperty(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), value.h)

proc bytesWritten*(self: QNetworkSession, ): culonglong =

  fcQNetworkSession_bytesWritten(self.h)

proc bytesReceived*(self: QNetworkSession, ): culonglong =

  fcQNetworkSession_bytesReceived(self.h)

proc activeTime*(self: QNetworkSession, ): culonglong =

  fcQNetworkSession_activeTime(self.h)

proc usagePolicies*(self: QNetworkSession, ): QNetworkSessionUsagePolicy =

  QNetworkSessionUsagePolicy(fcQNetworkSession_usagePolicies(self.h))

proc waitForOpened*(self: QNetworkSession, ): bool =

  fcQNetworkSession_waitForOpened(self.h)

proc open*(self: QNetworkSession, ): void =

  fcQNetworkSession_open(self.h)

proc close*(self: QNetworkSession, ): void =

  fcQNetworkSession_close(self.h)

proc stop*(self: QNetworkSession, ): void =

  fcQNetworkSession_stop(self.h)

proc migrate*(self: QNetworkSession, ): void =

  fcQNetworkSession_migrate(self.h)

proc ignore*(self: QNetworkSession, ): void =

  fcQNetworkSession_ignore(self.h)

proc accept*(self: QNetworkSession, ): void =

  fcQNetworkSession_accept(self.h)

proc reject*(self: QNetworkSession, ): void =

  fcQNetworkSession_reject(self.h)

proc stateChanged*(self: QNetworkSession, param1: QNetworkSessionState): void =

  fcQNetworkSession_stateChanged(self.h, cint(param1))

proc miqt_exec_callback_QNetworkSession_stateChanged(slot: int, param1: cint) {.exportc.} =
  type Cb = proc(param1: QNetworkSessionState)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QNetworkSessionState(param1)


  nimfunc[](slotval1)

proc onstateChanged*(self: QNetworkSession, slot: proc(param1: QNetworkSessionState)) =
  type Cb = proc(param1: QNetworkSessionState)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkSession_connect_stateChanged(self.h, cast[int](addr tmp[]))
proc opened*(self: QNetworkSession, ): void =

  fcQNetworkSession_opened(self.h)

proc miqt_exec_callback_QNetworkSession_opened(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onopened*(self: QNetworkSession, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkSession_connect_opened(self.h, cast[int](addr tmp[]))
proc closed*(self: QNetworkSession, ): void =

  fcQNetworkSession_closed(self.h)

proc miqt_exec_callback_QNetworkSession_closed(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onclosed*(self: QNetworkSession, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkSession_connect_closed(self.h, cast[int](addr tmp[]))
proc errorWithQNetworkSessionSessionError*(self: QNetworkSession, param1: QNetworkSessionSessionError): void =

  fcQNetworkSession_errorWithQNetworkSessionSessionError(self.h, cint(param1))

proc miqt_exec_callback_QNetworkSession_errorWithQNetworkSessionSessionError(slot: int, param1: cint) {.exportc.} =
  type Cb = proc(param1: QNetworkSessionSessionError)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QNetworkSessionSessionError(param1)


  nimfunc[](slotval1)

proc onerrorWithQNetworkSessionSessionError*(self: QNetworkSession, slot: proc(param1: QNetworkSessionSessionError)) =
  type Cb = proc(param1: QNetworkSessionSessionError)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkSession_connect_errorWithQNetworkSessionSessionError(self.h, cast[int](addr tmp[]))
proc preferredConfigurationChanged*(self: QNetworkSession, config: gen_qnetworkconfiguration.QNetworkConfiguration, isSeamless: bool): void =

  fcQNetworkSession_preferredConfigurationChanged(self.h, config.h, isSeamless)

proc miqt_exec_callback_QNetworkSession_preferredConfigurationChanged(slot: int, config: pointer, isSeamless: bool) {.exportc.} =
  type Cb = proc(config: gen_qnetworkconfiguration.QNetworkConfiguration, isSeamless: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnetworkconfiguration.QNetworkConfiguration(h: config)

  let slotval2 = isSeamless


  nimfunc[](slotval1, slotval2)

proc onpreferredConfigurationChanged*(self: QNetworkSession, slot: proc(config: gen_qnetworkconfiguration.QNetworkConfiguration, isSeamless: bool)) =
  type Cb = proc(config: gen_qnetworkconfiguration.QNetworkConfiguration, isSeamless: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkSession_connect_preferredConfigurationChanged(self.h, cast[int](addr tmp[]))
proc newConfigurationActivated*(self: QNetworkSession, ): void =

  fcQNetworkSession_newConfigurationActivated(self.h)

proc miqt_exec_callback_QNetworkSession_newConfigurationActivated(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onnewConfigurationActivated*(self: QNetworkSession, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkSession_connect_newConfigurationActivated(self.h, cast[int](addr tmp[]))
proc usagePoliciesChanged*(self: QNetworkSession, usagePolicies: QNetworkSessionUsagePolicy): void =

  fcQNetworkSession_usagePoliciesChanged(self.h, cint(usagePolicies))

proc miqt_exec_callback_QNetworkSession_usagePoliciesChanged(slot: int, usagePolicies: cint) {.exportc.} =
  type Cb = proc(usagePolicies: QNetworkSessionUsagePolicy)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QNetworkSessionUsagePolicy(usagePolicies)


  nimfunc[](slotval1)

proc onusagePoliciesChanged*(self: QNetworkSession, slot: proc(usagePolicies: QNetworkSessionUsagePolicy)) =
  type Cb = proc(usagePolicies: QNetworkSessionUsagePolicy)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkSession_connect_usagePoliciesChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QNetworkSession, s: cstring, c: cstring): string =

  let v_ms = fcQNetworkSession_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QNetworkSession, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQNetworkSession_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QNetworkSession, s: cstring, c: cstring): string =

  let v_ms = fcQNetworkSession_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QNetworkSession, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQNetworkSession_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc waitForOpened1*(self: QNetworkSession, msecs: cint): bool =

  fcQNetworkSession_waitForOpened1(self.h, msecs)

proc callVirtualBase_metaObject(self: QNetworkSession, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQNetworkSession_virtualbase_metaObject(self.h))

type QNetworkSessionmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QNetworkSession, slot: proc(super: QNetworkSessionmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QNetworkSessionmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkSession_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkSession_metaObject(self: ptr cQNetworkSession, slot: int): pointer {.exportc: "miqt_exec_callback_QNetworkSession_metaObject ".} =
  type Cb = proc(super: QNetworkSessionmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QNetworkSession(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QNetworkSession, param1: cstring): pointer =


  fQNetworkSession_virtualbase_metacast(self.h, param1)

type QNetworkSessionmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QNetworkSession, slot: proc(super: QNetworkSessionmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QNetworkSessionmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkSession_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkSession_metacast(self: ptr cQNetworkSession, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QNetworkSession_metacast ".} =
  type Cb = proc(super: QNetworkSessionmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QNetworkSession(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QNetworkSession, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQNetworkSession_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QNetworkSessionmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QNetworkSession, slot: proc(super: QNetworkSessionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QNetworkSessionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkSession_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkSession_metacall(self: ptr cQNetworkSession, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QNetworkSession_metacall ".} =
  type Cb = proc(super: QNetworkSessionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QNetworkSession(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_connectNotify(self: QNetworkSession, signal: gen_qmetaobject.QMetaMethod): void =


  fQNetworkSession_virtualbase_connectNotify(self.h, signal.h)

type QNetworkSessionconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QNetworkSession, slot: proc(super: QNetworkSessionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QNetworkSessionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkSession_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkSession_connectNotify(self: ptr cQNetworkSession, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QNetworkSession_connectNotify ".} =
  type Cb = proc(super: QNetworkSessionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QNetworkSession(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QNetworkSession, signal: gen_qmetaobject.QMetaMethod): void =


  fQNetworkSession_virtualbase_disconnectNotify(self.h, signal.h)

type QNetworkSessiondisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QNetworkSession, slot: proc(super: QNetworkSessiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QNetworkSessiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkSession_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkSession_disconnectNotify(self: ptr cQNetworkSession, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QNetworkSession_disconnectNotify ".} =
  type Cb = proc(super: QNetworkSessiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QNetworkSession(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QNetworkSession, event: gen_qcoreevent.QEvent): bool =


  fQNetworkSession_virtualbase_event(self.h, event.h)

type QNetworkSessioneventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QNetworkSession, slot: proc(super: QNetworkSessioneventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QNetworkSessioneventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkSession_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkSession_event(self: ptr cQNetworkSession, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QNetworkSession_event ".} =
  type Cb = proc(super: QNetworkSessioneventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QNetworkSession(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QNetworkSession, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQNetworkSession_virtualbase_eventFilter(self.h, watched.h, event.h)

type QNetworkSessioneventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QNetworkSession, slot: proc(super: QNetworkSessioneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QNetworkSessioneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkSession_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkSession_eventFilter(self: ptr cQNetworkSession, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QNetworkSession_eventFilter ".} =
  type Cb = proc(super: QNetworkSessioneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QNetworkSession(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QNetworkSession, event: gen_qcoreevent.QTimerEvent): void =


  fQNetworkSession_virtualbase_timerEvent(self.h, event.h)

type QNetworkSessiontimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QNetworkSession, slot: proc(super: QNetworkSessiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QNetworkSessiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkSession_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkSession_timerEvent(self: ptr cQNetworkSession, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QNetworkSession_timerEvent ".} =
  type Cb = proc(super: QNetworkSessiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QNetworkSession(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QNetworkSession, event: gen_qcoreevent.QChildEvent): void =


  fQNetworkSession_virtualbase_childEvent(self.h, event.h)

type QNetworkSessionchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QNetworkSession, slot: proc(super: QNetworkSessionchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QNetworkSessionchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkSession_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkSession_childEvent(self: ptr cQNetworkSession, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QNetworkSession_childEvent ".} =
  type Cb = proc(super: QNetworkSessionchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QNetworkSession(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QNetworkSession, event: gen_qcoreevent.QEvent): void =


  fQNetworkSession_virtualbase_customEvent(self.h, event.h)

type QNetworkSessioncustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QNetworkSession, slot: proc(super: QNetworkSessioncustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QNetworkSessioncustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkSession_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkSession_customEvent(self: ptr cQNetworkSession, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QNetworkSession_customEvent ".} =
  type Cb = proc(super: QNetworkSessioncustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QNetworkSession(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QNetworkSession): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQNetworkSession_staticMetaObject())
proc delete*(self: QNetworkSession) =
  fcQNetworkSession_delete(self.h)
