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

const cflags = gorge("pkg-config --cflags Qt5Network")
{.compile("gen_qnetworkaccessmanager.cpp", cflags).}


type QNetworkAccessManagerOperationEnum* = distinct cint
template HeadOperation*(_: type QNetworkAccessManagerOperationEnum): untyped = 1
template GetOperation*(_: type QNetworkAccessManagerOperationEnum): untyped = 2
template PutOperation*(_: type QNetworkAccessManagerOperationEnum): untyped = 3
template PostOperation*(_: type QNetworkAccessManagerOperationEnum): untyped = 4
template DeleteOperation*(_: type QNetworkAccessManagerOperationEnum): untyped = 5
template CustomOperation*(_: type QNetworkAccessManagerOperationEnum): untyped = 6
template UnknownOperation*(_: type QNetworkAccessManagerOperationEnum): untyped = 0


type QNetworkAccessManagerNetworkAccessibilityEnum* = distinct cint
template UnknownAccessibility*(_: type QNetworkAccessManagerNetworkAccessibilityEnum): untyped = -1
template NotAccessible*(_: type QNetworkAccessManagerNetworkAccessibilityEnum): untyped = 0
template Accessible*(_: type QNetworkAccessManagerNetworkAccessibilityEnum): untyped = 1


import gen_qnetworkaccessmanager_types
export gen_qnetworkaccessmanager_types

import
  gen_qabstractnetworkcache_types,
  gen_qauthenticator_types,
  gen_qcoreevent_types,
  gen_qhstspolicy_types,
  gen_qhttpmultipart_types,
  gen_qiodevice_types,
  gen_qmetaobject_types,
  gen_qnetworkconfiguration_types,
  gen_qnetworkcookiejar_types,
  gen_qnetworkproxy_types,
  gen_qnetworkreply_types,
  gen_qnetworkrequest_types,
  gen_qobject,
  gen_qobjectdefs,
  gen_qobjectdefs_types,
  gen_qsslconfiguration_types,
  gen_qsslerror_types,
  gen_qsslpresharedkeyauthenticator_types
export
  gen_qabstractnetworkcache_types,
  gen_qauthenticator_types,
  gen_qcoreevent_types,
  gen_qhstspolicy_types,
  gen_qhttpmultipart_types,
  gen_qiodevice_types,
  gen_qmetaobject_types,
  gen_qnetworkconfiguration_types,
  gen_qnetworkcookiejar_types,
  gen_qnetworkproxy_types,
  gen_qnetworkreply_types,
  gen_qnetworkrequest_types,
  gen_qobject,
  gen_qobjectdefs,
  gen_qobjectdefs_types,
  gen_qsslconfiguration_types,
  gen_qsslerror_types,
  gen_qsslpresharedkeyauthenticator_types

type cQNetworkAccessManager*{.exportc: "QNetworkAccessManager", incompleteStruct.} = object

proc fcQNetworkAccessManager_new(): ptr cQNetworkAccessManager {.importc: "QNetworkAccessManager_new".}
proc fcQNetworkAccessManager_new2(parent: pointer): ptr cQNetworkAccessManager {.importc: "QNetworkAccessManager_new2".}
proc fcQNetworkAccessManager_metaObject(self: pointer, ): pointer {.importc: "QNetworkAccessManager_metaObject".}
proc fcQNetworkAccessManager_metacast(self: pointer, param1: cstring): pointer {.importc: "QNetworkAccessManager_metacast".}
proc fcQNetworkAccessManager_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QNetworkAccessManager_metacall".}
proc fcQNetworkAccessManager_tr(s: cstring): struct_miqt_string {.importc: "QNetworkAccessManager_tr".}
proc fcQNetworkAccessManager_trUtf8(s: cstring): struct_miqt_string {.importc: "QNetworkAccessManager_trUtf8".}
proc fcQNetworkAccessManager_supportedSchemes(self: pointer, ): struct_miqt_array {.importc: "QNetworkAccessManager_supportedSchemes".}
proc fcQNetworkAccessManager_clearAccessCache(self: pointer, ): void {.importc: "QNetworkAccessManager_clearAccessCache".}
proc fcQNetworkAccessManager_clearConnectionCache(self: pointer, ): void {.importc: "QNetworkAccessManager_clearConnectionCache".}
proc fcQNetworkAccessManager_proxy(self: pointer, ): pointer {.importc: "QNetworkAccessManager_proxy".}
proc fcQNetworkAccessManager_setProxy(self: pointer, proxy: pointer): void {.importc: "QNetworkAccessManager_setProxy".}
proc fcQNetworkAccessManager_proxyFactory(self: pointer, ): pointer {.importc: "QNetworkAccessManager_proxyFactory".}
proc fcQNetworkAccessManager_setProxyFactory(self: pointer, factory: pointer): void {.importc: "QNetworkAccessManager_setProxyFactory".}
proc fcQNetworkAccessManager_cache(self: pointer, ): pointer {.importc: "QNetworkAccessManager_cache".}
proc fcQNetworkAccessManager_setCache(self: pointer, cache: pointer): void {.importc: "QNetworkAccessManager_setCache".}
proc fcQNetworkAccessManager_cookieJar(self: pointer, ): pointer {.importc: "QNetworkAccessManager_cookieJar".}
proc fcQNetworkAccessManager_setCookieJar(self: pointer, cookieJar: pointer): void {.importc: "QNetworkAccessManager_setCookieJar".}
proc fcQNetworkAccessManager_setStrictTransportSecurityEnabled(self: pointer, enabled: bool): void {.importc: "QNetworkAccessManager_setStrictTransportSecurityEnabled".}
proc fcQNetworkAccessManager_isStrictTransportSecurityEnabled(self: pointer, ): bool {.importc: "QNetworkAccessManager_isStrictTransportSecurityEnabled".}
proc fcQNetworkAccessManager_enableStrictTransportSecurityStore(self: pointer, enabled: bool): void {.importc: "QNetworkAccessManager_enableStrictTransportSecurityStore".}
proc fcQNetworkAccessManager_isStrictTransportSecurityStoreEnabled(self: pointer, ): bool {.importc: "QNetworkAccessManager_isStrictTransportSecurityStoreEnabled".}
proc fcQNetworkAccessManager_addStrictTransportSecurityHosts(self: pointer, knownHosts: struct_miqt_array): void {.importc: "QNetworkAccessManager_addStrictTransportSecurityHosts".}
proc fcQNetworkAccessManager_strictTransportSecurityHosts(self: pointer, ): struct_miqt_array {.importc: "QNetworkAccessManager_strictTransportSecurityHosts".}
proc fcQNetworkAccessManager_head(self: pointer, request: pointer): pointer {.importc: "QNetworkAccessManager_head".}
proc fcQNetworkAccessManager_get(self: pointer, request: pointer): pointer {.importc: "QNetworkAccessManager_get".}
proc fcQNetworkAccessManager_post(self: pointer, request: pointer, data: pointer): pointer {.importc: "QNetworkAccessManager_post".}
proc fcQNetworkAccessManager_post2(self: pointer, request: pointer, data: struct_miqt_string): pointer {.importc: "QNetworkAccessManager_post2".}
proc fcQNetworkAccessManager_put(self: pointer, request: pointer, data: pointer): pointer {.importc: "QNetworkAccessManager_put".}
proc fcQNetworkAccessManager_put2(self: pointer, request: pointer, data: struct_miqt_string): pointer {.importc: "QNetworkAccessManager_put2".}
proc fcQNetworkAccessManager_deleteResource(self: pointer, request: pointer): pointer {.importc: "QNetworkAccessManager_deleteResource".}
proc fcQNetworkAccessManager_sendCustomRequest(self: pointer, request: pointer, verb: struct_miqt_string): pointer {.importc: "QNetworkAccessManager_sendCustomRequest".}
proc fcQNetworkAccessManager_sendCustomRequest2(self: pointer, request: pointer, verb: struct_miqt_string, data: struct_miqt_string): pointer {.importc: "QNetworkAccessManager_sendCustomRequest2".}
proc fcQNetworkAccessManager_post3(self: pointer, request: pointer, multiPart: pointer): pointer {.importc: "QNetworkAccessManager_post3".}
proc fcQNetworkAccessManager_put3(self: pointer, request: pointer, multiPart: pointer): pointer {.importc: "QNetworkAccessManager_put3".}
proc fcQNetworkAccessManager_sendCustomRequest3(self: pointer, request: pointer, verb: struct_miqt_string, multiPart: pointer): pointer {.importc: "QNetworkAccessManager_sendCustomRequest3".}
proc fcQNetworkAccessManager_setConfiguration(self: pointer, config: pointer): void {.importc: "QNetworkAccessManager_setConfiguration".}
proc fcQNetworkAccessManager_configuration(self: pointer, ): pointer {.importc: "QNetworkAccessManager_configuration".}
proc fcQNetworkAccessManager_activeConfiguration(self: pointer, ): pointer {.importc: "QNetworkAccessManager_activeConfiguration".}
proc fcQNetworkAccessManager_setNetworkAccessible(self: pointer, accessible: cint): void {.importc: "QNetworkAccessManager_setNetworkAccessible".}
proc fcQNetworkAccessManager_networkAccessible(self: pointer, ): cint {.importc: "QNetworkAccessManager_networkAccessible".}
proc fcQNetworkAccessManager_connectToHostEncrypted(self: pointer, hostName: struct_miqt_string): void {.importc: "QNetworkAccessManager_connectToHostEncrypted".}
proc fcQNetworkAccessManager_connectToHostEncrypted2(self: pointer, hostName: struct_miqt_string, port: cushort, sslConfiguration: pointer, peerName: struct_miqt_string): void {.importc: "QNetworkAccessManager_connectToHostEncrypted2".}
proc fcQNetworkAccessManager_connectToHost(self: pointer, hostName: struct_miqt_string): void {.importc: "QNetworkAccessManager_connectToHost".}
proc fcQNetworkAccessManager_setRedirectPolicy(self: pointer, policy: cint): void {.importc: "QNetworkAccessManager_setRedirectPolicy".}
proc fcQNetworkAccessManager_redirectPolicy(self: pointer, ): cint {.importc: "QNetworkAccessManager_redirectPolicy".}
proc fcQNetworkAccessManager_autoDeleteReplies(self: pointer, ): bool {.importc: "QNetworkAccessManager_autoDeleteReplies".}
proc fcQNetworkAccessManager_setAutoDeleteReplies(self: pointer, autoDelete: bool): void {.importc: "QNetworkAccessManager_setAutoDeleteReplies".}
proc fcQNetworkAccessManager_transferTimeout(self: pointer, ): cint {.importc: "QNetworkAccessManager_transferTimeout".}
proc fcQNetworkAccessManager_setTransferTimeout(self: pointer, ): void {.importc: "QNetworkAccessManager_setTransferTimeout".}
proc fcQNetworkAccessManager_proxyAuthenticationRequired(self: pointer, proxy: pointer, authenticator: pointer): void {.importc: "QNetworkAccessManager_proxyAuthenticationRequired".}
proc fQNetworkAccessManager_connect_proxyAuthenticationRequired(self: pointer, slot: int) {.importc: "QNetworkAccessManager_connect_proxyAuthenticationRequired".}
proc fcQNetworkAccessManager_authenticationRequired(self: pointer, reply: pointer, authenticator: pointer): void {.importc: "QNetworkAccessManager_authenticationRequired".}
proc fQNetworkAccessManager_connect_authenticationRequired(self: pointer, slot: int) {.importc: "QNetworkAccessManager_connect_authenticationRequired".}
proc fcQNetworkAccessManager_finished(self: pointer, reply: pointer): void {.importc: "QNetworkAccessManager_finished".}
proc fQNetworkAccessManager_connect_finished(self: pointer, slot: int) {.importc: "QNetworkAccessManager_connect_finished".}
proc fcQNetworkAccessManager_encrypted(self: pointer, reply: pointer): void {.importc: "QNetworkAccessManager_encrypted".}
proc fQNetworkAccessManager_connect_encrypted(self: pointer, slot: int) {.importc: "QNetworkAccessManager_connect_encrypted".}
proc fcQNetworkAccessManager_sslErrors(self: pointer, reply: pointer, errors: struct_miqt_array): void {.importc: "QNetworkAccessManager_sslErrors".}
proc fQNetworkAccessManager_connect_sslErrors(self: pointer, slot: int) {.importc: "QNetworkAccessManager_connect_sslErrors".}
proc fcQNetworkAccessManager_preSharedKeyAuthenticationRequired(self: pointer, reply: pointer, authenticator: pointer): void {.importc: "QNetworkAccessManager_preSharedKeyAuthenticationRequired".}
proc fQNetworkAccessManager_connect_preSharedKeyAuthenticationRequired(self: pointer, slot: int) {.importc: "QNetworkAccessManager_connect_preSharedKeyAuthenticationRequired".}
proc fcQNetworkAccessManager_networkSessionConnected(self: pointer, ): void {.importc: "QNetworkAccessManager_networkSessionConnected".}
proc fQNetworkAccessManager_connect_networkSessionConnected(self: pointer, slot: int) {.importc: "QNetworkAccessManager_connect_networkSessionConnected".}
proc fcQNetworkAccessManager_networkAccessibleChanged(self: pointer, accessible: cint): void {.importc: "QNetworkAccessManager_networkAccessibleChanged".}
proc fQNetworkAccessManager_connect_networkAccessibleChanged(self: pointer, slot: int) {.importc: "QNetworkAccessManager_connect_networkAccessibleChanged".}
proc fcQNetworkAccessManager_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkAccessManager_tr2".}
proc fcQNetworkAccessManager_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkAccessManager_tr3".}
proc fcQNetworkAccessManager_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkAccessManager_trUtf82".}
proc fcQNetworkAccessManager_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkAccessManager_trUtf83".}
proc fcQNetworkAccessManager_enableStrictTransportSecurityStore2(self: pointer, enabled: bool, storeDir: struct_miqt_string): void {.importc: "QNetworkAccessManager_enableStrictTransportSecurityStore2".}
proc fcQNetworkAccessManager_sendCustomRequest32(self: pointer, request: pointer, verb: struct_miqt_string, data: pointer): pointer {.importc: "QNetworkAccessManager_sendCustomRequest32".}
proc fcQNetworkAccessManager_connectToHostEncrypted22(self: pointer, hostName: struct_miqt_string, port: cushort): void {.importc: "QNetworkAccessManager_connectToHostEncrypted22".}
proc fcQNetworkAccessManager_connectToHostEncrypted3(self: pointer, hostName: struct_miqt_string, port: cushort, sslConfiguration: pointer): void {.importc: "QNetworkAccessManager_connectToHostEncrypted3".}
proc fcQNetworkAccessManager_connectToHost2(self: pointer, hostName: struct_miqt_string, port: cushort): void {.importc: "QNetworkAccessManager_connectToHost2".}
proc fcQNetworkAccessManager_setTransferTimeout1(self: pointer, timeout: cint): void {.importc: "QNetworkAccessManager_setTransferTimeout1".}
proc fQNetworkAccessManager_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QNetworkAccessManager_virtualbase_metaObject".}
proc fcQNetworkAccessManager_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QNetworkAccessManager_override_virtual_metaObject".}
proc fQNetworkAccessManager_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QNetworkAccessManager_virtualbase_metacast".}
proc fcQNetworkAccessManager_override_virtual_metacast(self: pointer, slot: int) {.importc: "QNetworkAccessManager_override_virtual_metacast".}
proc fQNetworkAccessManager_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QNetworkAccessManager_virtualbase_metacall".}
proc fcQNetworkAccessManager_override_virtual_metacall(self: pointer, slot: int) {.importc: "QNetworkAccessManager_override_virtual_metacall".}
proc fQNetworkAccessManager_virtualbase_createRequest(self: pointer, op: cint, request: pointer, outgoingData: pointer): pointer{.importc: "QNetworkAccessManager_virtualbase_createRequest".}
proc fcQNetworkAccessManager_override_virtual_createRequest(self: pointer, slot: int) {.importc: "QNetworkAccessManager_override_virtual_createRequest".}
proc fQNetworkAccessManager_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QNetworkAccessManager_virtualbase_event".}
proc fcQNetworkAccessManager_override_virtual_event(self: pointer, slot: int) {.importc: "QNetworkAccessManager_override_virtual_event".}
proc fQNetworkAccessManager_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QNetworkAccessManager_virtualbase_eventFilter".}
proc fcQNetworkAccessManager_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QNetworkAccessManager_override_virtual_eventFilter".}
proc fQNetworkAccessManager_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QNetworkAccessManager_virtualbase_timerEvent".}
proc fcQNetworkAccessManager_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QNetworkAccessManager_override_virtual_timerEvent".}
proc fQNetworkAccessManager_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QNetworkAccessManager_virtualbase_childEvent".}
proc fcQNetworkAccessManager_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QNetworkAccessManager_override_virtual_childEvent".}
proc fQNetworkAccessManager_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QNetworkAccessManager_virtualbase_customEvent".}
proc fcQNetworkAccessManager_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QNetworkAccessManager_override_virtual_customEvent".}
proc fQNetworkAccessManager_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QNetworkAccessManager_virtualbase_connectNotify".}
proc fcQNetworkAccessManager_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QNetworkAccessManager_override_virtual_connectNotify".}
proc fQNetworkAccessManager_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QNetworkAccessManager_virtualbase_disconnectNotify".}
proc fcQNetworkAccessManager_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QNetworkAccessManager_override_virtual_disconnectNotify".}
proc fcQNetworkAccessManager_staticMetaObject(): pointer {.importc: "QNetworkAccessManager_staticMetaObject".}
proc fcQNetworkAccessManager_delete(self: pointer) {.importc: "QNetworkAccessManager_delete".}


func init*(T: type gen_qnetworkaccessmanager_types.QNetworkAccessManager, h: ptr cQNetworkAccessManager): gen_qnetworkaccessmanager_types.QNetworkAccessManager =
  T(h: h)
proc create*(T: type gen_qnetworkaccessmanager_types.QNetworkAccessManager, ): gen_qnetworkaccessmanager_types.QNetworkAccessManager =
  gen_qnetworkaccessmanager_types.QNetworkAccessManager.init(fcQNetworkAccessManager_new())

proc create*(T: type gen_qnetworkaccessmanager_types.QNetworkAccessManager, parent: gen_qobject_types.QObject): gen_qnetworkaccessmanager_types.QNetworkAccessManager =
  gen_qnetworkaccessmanager_types.QNetworkAccessManager.init(fcQNetworkAccessManager_new2(parent.h))

proc metaObject*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkAccessManager_metaObject(self.h))

proc metacast*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, param1: cstring): pointer =
  fcQNetworkAccessManager_metacast(self.h, param1)

proc metacall*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, param1: cint, param2: cint, param3: pointer): cint =
  fcQNetworkAccessManager_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qnetworkaccessmanager_types.QNetworkAccessManager, s: cstring): string =
  let v_ms = fcQNetworkAccessManager_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qnetworkaccessmanager_types.QNetworkAccessManager, s: cstring): string =
  let v_ms = fcQNetworkAccessManager_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedSchemes*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, ): seq[string] =
  var v_ma = fcQNetworkAccessManager_supportedSchemes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc clearAccessCache*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, ): void =
  fcQNetworkAccessManager_clearAccessCache(self.h)

proc clearConnectionCache*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, ): void =
  fcQNetworkAccessManager_clearConnectionCache(self.h)

proc proxy*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, ): gen_qnetworkproxy_types.QNetworkProxy =
  gen_qnetworkproxy_types.QNetworkProxy(h: fcQNetworkAccessManager_proxy(self.h))

proc setProxy*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, proxy: gen_qnetworkproxy_types.QNetworkProxy): void =
  fcQNetworkAccessManager_setProxy(self.h, proxy.h)

proc proxyFactory*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, ): gen_qnetworkproxy_types.QNetworkProxyFactory =
  gen_qnetworkproxy_types.QNetworkProxyFactory(h: fcQNetworkAccessManager_proxyFactory(self.h))

proc setProxyFactory*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, factory: gen_qnetworkproxy_types.QNetworkProxyFactory): void =
  fcQNetworkAccessManager_setProxyFactory(self.h, factory.h)

proc cache*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, ): gen_qabstractnetworkcache_types.QAbstractNetworkCache =
  gen_qabstractnetworkcache_types.QAbstractNetworkCache(h: fcQNetworkAccessManager_cache(self.h))

proc setCache*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, cache: gen_qabstractnetworkcache_types.QAbstractNetworkCache): void =
  fcQNetworkAccessManager_setCache(self.h, cache.h)

proc cookieJar*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, ): gen_qnetworkcookiejar_types.QNetworkCookieJar =
  gen_qnetworkcookiejar_types.QNetworkCookieJar(h: fcQNetworkAccessManager_cookieJar(self.h))

proc setCookieJar*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, cookieJar: gen_qnetworkcookiejar_types.QNetworkCookieJar): void =
  fcQNetworkAccessManager_setCookieJar(self.h, cookieJar.h)

proc setStrictTransportSecurityEnabled*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, enabled: bool): void =
  fcQNetworkAccessManager_setStrictTransportSecurityEnabled(self.h, enabled)

proc isStrictTransportSecurityEnabled*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, ): bool =
  fcQNetworkAccessManager_isStrictTransportSecurityEnabled(self.h)

proc enableStrictTransportSecurityStore*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, enabled: bool): void =
  fcQNetworkAccessManager_enableStrictTransportSecurityStore(self.h, enabled)

proc isStrictTransportSecurityStoreEnabled*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, ): bool =
  fcQNetworkAccessManager_isStrictTransportSecurityStoreEnabled(self.h)

proc addStrictTransportSecurityHosts*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, knownHosts: seq[gen_qhstspolicy_types.QHstsPolicy]): void =
  var knownHosts_CArray = newSeq[pointer](len(knownHosts))
  for i in 0..<len(knownHosts):
    knownHosts_CArray[i] = knownHosts[i].h

  fcQNetworkAccessManager_addStrictTransportSecurityHosts(self.h, struct_miqt_array(len: csize_t(len(knownHosts)), data: if len(knownHosts) == 0: nil else: addr(knownHosts_CArray[0])))

proc strictTransportSecurityHosts*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, ): seq[gen_qhstspolicy_types.QHstsPolicy] =
  var v_ma = fcQNetworkAccessManager_strictTransportSecurityHosts(self.h)
  var vx_ret = newSeq[gen_qhstspolicy_types.QHstsPolicy](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qhstspolicy_types.QHstsPolicy(h: v_outCast[i])
  vx_ret

proc head*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQNetworkAccessManager_head(self.h, request.h))

proc get*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQNetworkAccessManager_get(self.h, request.h))

proc post*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, data: gen_qiodevice_types.QIODevice): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQNetworkAccessManager_post(self.h, request.h, data.h))

proc post*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, data: seq[byte]): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQNetworkAccessManager_post2(self.h, request.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data)))))

proc put*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, data: gen_qiodevice_types.QIODevice): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQNetworkAccessManager_put(self.h, request.h, data.h))

proc put*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, data: seq[byte]): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQNetworkAccessManager_put2(self.h, request.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data)))))

proc deleteResource*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQNetworkAccessManager_deleteResource(self.h, request.h))

proc sendCustomRequest*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, verb: seq[byte]): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQNetworkAccessManager_sendCustomRequest(self.h, request.h, struct_miqt_string(data: cast[cstring](if len(verb) == 0: nil else: unsafeAddr verb[0]), len: csize_t(len(verb)))))

proc sendCustomRequest*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, verb: seq[byte], data: seq[byte]): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQNetworkAccessManager_sendCustomRequest2(self.h, request.h, struct_miqt_string(data: cast[cstring](if len(verb) == 0: nil else: unsafeAddr verb[0]), len: csize_t(len(verb))), struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data)))))

proc post*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, multiPart: gen_qhttpmultipart_types.QHttpMultiPart): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQNetworkAccessManager_post3(self.h, request.h, multiPart.h))

proc put*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, multiPart: gen_qhttpmultipart_types.QHttpMultiPart): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQNetworkAccessManager_put3(self.h, request.h, multiPart.h))

proc sendCustomRequest*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, verb: seq[byte], multiPart: gen_qhttpmultipart_types.QHttpMultiPart): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQNetworkAccessManager_sendCustomRequest3(self.h, request.h, struct_miqt_string(data: cast[cstring](if len(verb) == 0: nil else: unsafeAddr verb[0]), len: csize_t(len(verb))), multiPart.h))

proc setConfiguration*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, config: gen_qnetworkconfiguration_types.QNetworkConfiguration): void =
  fcQNetworkAccessManager_setConfiguration(self.h, config.h)

proc configuration*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, ): gen_qnetworkconfiguration_types.QNetworkConfiguration =
  gen_qnetworkconfiguration_types.QNetworkConfiguration(h: fcQNetworkAccessManager_configuration(self.h))

proc activeConfiguration*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, ): gen_qnetworkconfiguration_types.QNetworkConfiguration =
  gen_qnetworkconfiguration_types.QNetworkConfiguration(h: fcQNetworkAccessManager_activeConfiguration(self.h))

proc setNetworkAccessible*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, accessible: cint): void =
  fcQNetworkAccessManager_setNetworkAccessible(self.h, cint(accessible))

proc networkAccessible*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, ): cint =
  cint(fcQNetworkAccessManager_networkAccessible(self.h))

proc connectToHostEncrypted*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, hostName: string): void =
  fcQNetworkAccessManager_connectToHostEncrypted(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))))

proc connectToHostEncrypted*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, hostName: string, port: cushort, sslConfiguration: gen_qsslconfiguration_types.QSslConfiguration, peerName: string): void =
  fcQNetworkAccessManager_connectToHostEncrypted2(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, sslConfiguration.h, struct_miqt_string(data: peerName, len: csize_t(len(peerName))))

proc connectToHost*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, hostName: string): void =
  fcQNetworkAccessManager_connectToHost(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))))

proc setRedirectPolicy*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, policy: cint): void =
  fcQNetworkAccessManager_setRedirectPolicy(self.h, cint(policy))

proc redirectPolicy*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, ): cint =
  cint(fcQNetworkAccessManager_redirectPolicy(self.h))

proc autoDeleteReplies*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, ): bool =
  fcQNetworkAccessManager_autoDeleteReplies(self.h)

proc setAutoDeleteReplies*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, autoDelete: bool): void =
  fcQNetworkAccessManager_setAutoDeleteReplies(self.h, autoDelete)

proc transferTimeout*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, ): cint =
  fcQNetworkAccessManager_transferTimeout(self.h)

proc setTransferTimeout*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, ): void =
  fcQNetworkAccessManager_setTransferTimeout(self.h)

proc proxyAuthenticationRequired*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, proxy: gen_qnetworkproxy_types.QNetworkProxy, authenticator: gen_qauthenticator_types.QAuthenticator): void =
  fcQNetworkAccessManager_proxyAuthenticationRequired(self.h, proxy.h, authenticator.h)

type QNetworkAccessManagerproxyAuthenticationRequiredSlot* = proc(proxy: gen_qnetworkproxy_types.QNetworkProxy, authenticator: gen_qauthenticator_types.QAuthenticator)
proc miqt_exec_callback_QNetworkAccessManager_proxyAuthenticationRequired(slot: int, proxy: pointer, authenticator: pointer) {.exportc.} =
  let nimfunc = cast[ptr QNetworkAccessManagerproxyAuthenticationRequiredSlot](cast[pointer](slot))
  let slotval1 = gen_qnetworkproxy_types.QNetworkProxy(h: proxy)

  let slotval2 = gen_qauthenticator_types.QAuthenticator(h: authenticator)

  nimfunc[](slotval1, slotval2)

proc onproxyAuthenticationRequired*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, slot: QNetworkAccessManagerproxyAuthenticationRequiredSlot) =
  var tmp = new QNetworkAccessManagerproxyAuthenticationRequiredSlot
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkAccessManager_connect_proxyAuthenticationRequired(self.h, cast[int](addr tmp[]))

proc authenticationRequired*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, reply: gen_qnetworkreply_types.QNetworkReply, authenticator: gen_qauthenticator_types.QAuthenticator): void =
  fcQNetworkAccessManager_authenticationRequired(self.h, reply.h, authenticator.h)

type QNetworkAccessManagerauthenticationRequiredSlot* = proc(reply: gen_qnetworkreply_types.QNetworkReply, authenticator: gen_qauthenticator_types.QAuthenticator)
proc miqt_exec_callback_QNetworkAccessManager_authenticationRequired(slot: int, reply: pointer, authenticator: pointer) {.exportc.} =
  let nimfunc = cast[ptr QNetworkAccessManagerauthenticationRequiredSlot](cast[pointer](slot))
  let slotval1 = gen_qnetworkreply_types.QNetworkReply(h: reply)

  let slotval2 = gen_qauthenticator_types.QAuthenticator(h: authenticator)

  nimfunc[](slotval1, slotval2)

proc onauthenticationRequired*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, slot: QNetworkAccessManagerauthenticationRequiredSlot) =
  var tmp = new QNetworkAccessManagerauthenticationRequiredSlot
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkAccessManager_connect_authenticationRequired(self.h, cast[int](addr tmp[]))

proc finished*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, reply: gen_qnetworkreply_types.QNetworkReply): void =
  fcQNetworkAccessManager_finished(self.h, reply.h)

type QNetworkAccessManagerfinishedSlot* = proc(reply: gen_qnetworkreply_types.QNetworkReply)
proc miqt_exec_callback_QNetworkAccessManager_finished(slot: int, reply: pointer) {.exportc.} =
  let nimfunc = cast[ptr QNetworkAccessManagerfinishedSlot](cast[pointer](slot))
  let slotval1 = gen_qnetworkreply_types.QNetworkReply(h: reply)

  nimfunc[](slotval1)

proc onfinished*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, slot: QNetworkAccessManagerfinishedSlot) =
  var tmp = new QNetworkAccessManagerfinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkAccessManager_connect_finished(self.h, cast[int](addr tmp[]))

proc encrypted*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, reply: gen_qnetworkreply_types.QNetworkReply): void =
  fcQNetworkAccessManager_encrypted(self.h, reply.h)

type QNetworkAccessManagerencryptedSlot* = proc(reply: gen_qnetworkreply_types.QNetworkReply)
proc miqt_exec_callback_QNetworkAccessManager_encrypted(slot: int, reply: pointer) {.exportc.} =
  let nimfunc = cast[ptr QNetworkAccessManagerencryptedSlot](cast[pointer](slot))
  let slotval1 = gen_qnetworkreply_types.QNetworkReply(h: reply)

  nimfunc[](slotval1)

proc onencrypted*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, slot: QNetworkAccessManagerencryptedSlot) =
  var tmp = new QNetworkAccessManagerencryptedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkAccessManager_connect_encrypted(self.h, cast[int](addr tmp[]))

proc sslErrors*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, reply: gen_qnetworkreply_types.QNetworkReply, errors: seq[gen_qsslerror_types.QSslError]): void =
  var errors_CArray = newSeq[pointer](len(errors))
  for i in 0..<len(errors):
    errors_CArray[i] = errors[i].h

  fcQNetworkAccessManager_sslErrors(self.h, reply.h, struct_miqt_array(len: csize_t(len(errors)), data: if len(errors) == 0: nil else: addr(errors_CArray[0])))

type QNetworkAccessManagersslErrorsSlot* = proc(reply: gen_qnetworkreply_types.QNetworkReply, errors: seq[gen_qsslerror_types.QSslError])
proc miqt_exec_callback_QNetworkAccessManager_sslErrors(slot: int, reply: pointer, errors: struct_miqt_array) {.exportc.} =
  let nimfunc = cast[ptr QNetworkAccessManagersslErrorsSlot](cast[pointer](slot))
  let slotval1 = gen_qnetworkreply_types.QNetworkReply(h: reply)

  var verrors_ma = errors
  var verrorsx_ret = newSeq[gen_qsslerror_types.QSslError](int(verrors_ma.len))
  let verrors_outCast = cast[ptr UncheckedArray[pointer]](verrors_ma.data)
  for i in 0 ..< verrors_ma.len:
    verrorsx_ret[i] = gen_qsslerror_types.QSslError(h: verrors_outCast[i])
  let slotval2 = verrorsx_ret

  nimfunc[](slotval1, slotval2)

proc onsslErrors*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, slot: QNetworkAccessManagersslErrorsSlot) =
  var tmp = new QNetworkAccessManagersslErrorsSlot
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkAccessManager_connect_sslErrors(self.h, cast[int](addr tmp[]))

proc preSharedKeyAuthenticationRequired*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, reply: gen_qnetworkreply_types.QNetworkReply, authenticator: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator): void =
  fcQNetworkAccessManager_preSharedKeyAuthenticationRequired(self.h, reply.h, authenticator.h)

type QNetworkAccessManagerpreSharedKeyAuthenticationRequiredSlot* = proc(reply: gen_qnetworkreply_types.QNetworkReply, authenticator: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator)
proc miqt_exec_callback_QNetworkAccessManager_preSharedKeyAuthenticationRequired(slot: int, reply: pointer, authenticator: pointer) {.exportc.} =
  let nimfunc = cast[ptr QNetworkAccessManagerpreSharedKeyAuthenticationRequiredSlot](cast[pointer](slot))
  let slotval1 = gen_qnetworkreply_types.QNetworkReply(h: reply)

  let slotval2 = gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator(h: authenticator)

  nimfunc[](slotval1, slotval2)

proc onpreSharedKeyAuthenticationRequired*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, slot: QNetworkAccessManagerpreSharedKeyAuthenticationRequiredSlot) =
  var tmp = new QNetworkAccessManagerpreSharedKeyAuthenticationRequiredSlot
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkAccessManager_connect_preSharedKeyAuthenticationRequired(self.h, cast[int](addr tmp[]))

proc networkSessionConnected*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, ): void =
  fcQNetworkAccessManager_networkSessionConnected(self.h)

type QNetworkAccessManagernetworkSessionConnectedSlot* = proc()
proc miqt_exec_callback_QNetworkAccessManager_networkSessionConnected(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QNetworkAccessManagernetworkSessionConnectedSlot](cast[pointer](slot))
  nimfunc[]()

proc onnetworkSessionConnected*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, slot: QNetworkAccessManagernetworkSessionConnectedSlot) =
  var tmp = new QNetworkAccessManagernetworkSessionConnectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkAccessManager_connect_networkSessionConnected(self.h, cast[int](addr tmp[]))

proc networkAccessibleChanged*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, accessible: cint): void =
  fcQNetworkAccessManager_networkAccessibleChanged(self.h, cint(accessible))

type QNetworkAccessManagernetworkAccessibleChangedSlot* = proc(accessible: cint)
proc miqt_exec_callback_QNetworkAccessManager_networkAccessibleChanged(slot: int, accessible: cint) {.exportc.} =
  let nimfunc = cast[ptr QNetworkAccessManagernetworkAccessibleChangedSlot](cast[pointer](slot))
  let slotval1 = cint(accessible)

  nimfunc[](slotval1)

proc onnetworkAccessibleChanged*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, slot: QNetworkAccessManagernetworkAccessibleChangedSlot) =
  var tmp = new QNetworkAccessManagernetworkAccessibleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkAccessManager_connect_networkAccessibleChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qnetworkaccessmanager_types.QNetworkAccessManager, s: cstring, c: cstring): string =
  let v_ms = fcQNetworkAccessManager_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qnetworkaccessmanager_types.QNetworkAccessManager, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQNetworkAccessManager_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qnetworkaccessmanager_types.QNetworkAccessManager, s: cstring, c: cstring): string =
  let v_ms = fcQNetworkAccessManager_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qnetworkaccessmanager_types.QNetworkAccessManager, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQNetworkAccessManager_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc enableStrictTransportSecurityStore*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, enabled: bool, storeDir: string): void =
  fcQNetworkAccessManager_enableStrictTransportSecurityStore2(self.h, enabled, struct_miqt_string(data: storeDir, len: csize_t(len(storeDir))))

proc sendCustomRequest*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, request: gen_qnetworkrequest_types.QNetworkRequest, verb: seq[byte], data: gen_qiodevice_types.QIODevice): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fcQNetworkAccessManager_sendCustomRequest32(self.h, request.h, struct_miqt_string(data: cast[cstring](if len(verb) == 0: nil else: unsafeAddr verb[0]), len: csize_t(len(verb))), data.h))

proc connectToHostEncrypted*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, hostName: string, port: cushort): void =
  fcQNetworkAccessManager_connectToHostEncrypted22(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port)

proc connectToHostEncrypted*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, hostName: string, port: cushort, sslConfiguration: gen_qsslconfiguration_types.QSslConfiguration): void =
  fcQNetworkAccessManager_connectToHostEncrypted3(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, sslConfiguration.h)

proc connectToHost*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, hostName: string, port: cushort): void =
  fcQNetworkAccessManager_connectToHost2(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port)

proc setTransferTimeout*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, timeout: cint): void =
  fcQNetworkAccessManager_setTransferTimeout1(self.h, timeout)

proc QNetworkAccessManagermetaObject*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQNetworkAccessManager_virtualbase_metaObject(self.h))

type QNetworkAccessManagermetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, slot: QNetworkAccessManagermetaObjectProc) =
  # TODO check subclass
  var tmp = new QNetworkAccessManagermetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkAccessManager_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkAccessManager_metaObject(self: ptr cQNetworkAccessManager, slot: int): pointer {.exportc: "miqt_exec_callback_QNetworkAccessManager_metaObject ".} =
  var nimfunc = cast[ptr QNetworkAccessManagermetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QNetworkAccessManagermetacast*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, param1: cstring): pointer =
  fQNetworkAccessManager_virtualbase_metacast(self.h, param1)

type QNetworkAccessManagermetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, slot: QNetworkAccessManagermetacastProc) =
  # TODO check subclass
  var tmp = new QNetworkAccessManagermetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkAccessManager_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkAccessManager_metacast(self: ptr cQNetworkAccessManager, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QNetworkAccessManager_metacast ".} =
  var nimfunc = cast[ptr QNetworkAccessManagermetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QNetworkAccessManagermetacall*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, param1: cint, param2: cint, param3: pointer): cint =
  fQNetworkAccessManager_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QNetworkAccessManagermetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, slot: QNetworkAccessManagermetacallProc) =
  # TODO check subclass
  var tmp = new QNetworkAccessManagermetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkAccessManager_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkAccessManager_metacall(self: ptr cQNetworkAccessManager, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QNetworkAccessManager_metacall ".} =
  var nimfunc = cast[ptr QNetworkAccessManagermetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QNetworkAccessManagercreateRequest*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, op: cint, request: gen_qnetworkrequest_types.QNetworkRequest, outgoingData: gen_qiodevice_types.QIODevice): gen_qnetworkreply_types.QNetworkReply =
  gen_qnetworkreply_types.QNetworkReply(h: fQNetworkAccessManager_virtualbase_createRequest(self.h, cint(op), request.h, outgoingData.h))

type QNetworkAccessManagercreateRequestProc* = proc(op: cint, request: gen_qnetworkrequest_types.QNetworkRequest, outgoingData: gen_qiodevice_types.QIODevice): gen_qnetworkreply_types.QNetworkReply
proc oncreateRequest*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, slot: QNetworkAccessManagercreateRequestProc) =
  # TODO check subclass
  var tmp = new QNetworkAccessManagercreateRequestProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkAccessManager_override_virtual_createRequest(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkAccessManager_createRequest(self: ptr cQNetworkAccessManager, slot: int, op: cint, request: pointer, outgoingData: pointer): pointer {.exportc: "miqt_exec_callback_QNetworkAccessManager_createRequest ".} =
  var nimfunc = cast[ptr QNetworkAccessManagercreateRequestProc](cast[pointer](slot))
  let slotval1 = cint(op)

  let slotval2 = gen_qnetworkrequest_types.QNetworkRequest(h: request)

  let slotval3 = gen_qiodevice_types.QIODevice(h: outgoingData)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QNetworkAccessManagerevent*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, event: gen_qcoreevent_types.QEvent): bool =
  fQNetworkAccessManager_virtualbase_event(self.h, event.h)

type QNetworkAccessManagereventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, slot: QNetworkAccessManagereventProc) =
  # TODO check subclass
  var tmp = new QNetworkAccessManagereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkAccessManager_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkAccessManager_event(self: ptr cQNetworkAccessManager, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QNetworkAccessManager_event ".} =
  var nimfunc = cast[ptr QNetworkAccessManagereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QNetworkAccessManagereventFilter*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQNetworkAccessManager_virtualbase_eventFilter(self.h, watched.h, event.h)

type QNetworkAccessManagereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, slot: QNetworkAccessManagereventFilterProc) =
  # TODO check subclass
  var tmp = new QNetworkAccessManagereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkAccessManager_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkAccessManager_eventFilter(self: ptr cQNetworkAccessManager, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QNetworkAccessManager_eventFilter ".} =
  var nimfunc = cast[ptr QNetworkAccessManagereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QNetworkAccessManagertimerEvent*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, event: gen_qcoreevent_types.QTimerEvent): void =
  fQNetworkAccessManager_virtualbase_timerEvent(self.h, event.h)

type QNetworkAccessManagertimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, slot: QNetworkAccessManagertimerEventProc) =
  # TODO check subclass
  var tmp = new QNetworkAccessManagertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkAccessManager_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkAccessManager_timerEvent(self: ptr cQNetworkAccessManager, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QNetworkAccessManager_timerEvent ".} =
  var nimfunc = cast[ptr QNetworkAccessManagertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QNetworkAccessManagerchildEvent*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, event: gen_qcoreevent_types.QChildEvent): void =
  fQNetworkAccessManager_virtualbase_childEvent(self.h, event.h)

type QNetworkAccessManagerchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, slot: QNetworkAccessManagerchildEventProc) =
  # TODO check subclass
  var tmp = new QNetworkAccessManagerchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkAccessManager_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkAccessManager_childEvent(self: ptr cQNetworkAccessManager, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QNetworkAccessManager_childEvent ".} =
  var nimfunc = cast[ptr QNetworkAccessManagerchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QNetworkAccessManagercustomEvent*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, event: gen_qcoreevent_types.QEvent): void =
  fQNetworkAccessManager_virtualbase_customEvent(self.h, event.h)

type QNetworkAccessManagercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, slot: QNetworkAccessManagercustomEventProc) =
  # TODO check subclass
  var tmp = new QNetworkAccessManagercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkAccessManager_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkAccessManager_customEvent(self: ptr cQNetworkAccessManager, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QNetworkAccessManager_customEvent ".} =
  var nimfunc = cast[ptr QNetworkAccessManagercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QNetworkAccessManagerconnectNotify*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQNetworkAccessManager_virtualbase_connectNotify(self.h, signal.h)

type QNetworkAccessManagerconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, slot: QNetworkAccessManagerconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QNetworkAccessManagerconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkAccessManager_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkAccessManager_connectNotify(self: ptr cQNetworkAccessManager, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QNetworkAccessManager_connectNotify ".} =
  var nimfunc = cast[ptr QNetworkAccessManagerconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QNetworkAccessManagerdisconnectNotify*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQNetworkAccessManager_virtualbase_disconnectNotify(self.h, signal.h)

type QNetworkAccessManagerdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager, slot: QNetworkAccessManagerdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QNetworkAccessManagerdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkAccessManager_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkAccessManager_disconnectNotify(self: ptr cQNetworkAccessManager, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QNetworkAccessManager_disconnectNotify ".} =
  var nimfunc = cast[ptr QNetworkAccessManagerdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qnetworkaccessmanager_types.QNetworkAccessManager): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQNetworkAccessManager_staticMetaObject())
proc delete*(self: gen_qnetworkaccessmanager_types.QNetworkAccessManager) =
  fcQNetworkAccessManager_delete(self.h)
