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
{.compile("gen_qnetworkaccessmanager.cpp", cflags).}


type QNetworkAccessManagerOperation* = cint
const
  QNetworkAccessManagerHeadOperation* = 1
  QNetworkAccessManagerGetOperation* = 2
  QNetworkAccessManagerPutOperation* = 3
  QNetworkAccessManagerPostOperation* = 4
  QNetworkAccessManagerDeleteOperation* = 5
  QNetworkAccessManagerCustomOperation* = 6
  QNetworkAccessManagerUnknownOperation* = 0



type QNetworkAccessManagerNetworkAccessibility* = cint
const
  QNetworkAccessManagerUnknownAccessibility* = -1
  QNetworkAccessManagerNotAccessible* = 0
  QNetworkAccessManagerAccessible* = 1



import gen_qnetworkaccessmanager_types
export gen_qnetworkaccessmanager_types

import
  gen_qabstractnetworkcache,
  gen_qauthenticator,
  gen_qcoreevent,
  gen_qhstspolicy,
  gen_qhttpmultipart,
  gen_qiodevice,
  gen_qmetaobject,
  gen_qnetworkconfiguration,
  gen_qnetworkcookiejar,
  gen_qnetworkproxy,
  gen_qnetworkreply,
  gen_qnetworkrequest,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsslconfiguration,
  gen_qsslerror,
  gen_qsslpresharedkeyauthenticator
export
  gen_qabstractnetworkcache,
  gen_qauthenticator,
  gen_qcoreevent,
  gen_qhstspolicy,
  gen_qhttpmultipart,
  gen_qiodevice,
  gen_qmetaobject,
  gen_qnetworkconfiguration,
  gen_qnetworkcookiejar,
  gen_qnetworkproxy,
  gen_qnetworkreply,
  gen_qnetworkrequest,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsslconfiguration,
  gen_qsslerror,
  gen_qsslpresharedkeyauthenticator

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


func init*(T: type QNetworkAccessManager, h: ptr cQNetworkAccessManager): QNetworkAccessManager =
  T(h: h)
proc create*(T: type QNetworkAccessManager, ): QNetworkAccessManager =

  QNetworkAccessManager.init(fcQNetworkAccessManager_new())
proc create*(T: type QNetworkAccessManager, parent: gen_qobject.QObject): QNetworkAccessManager =

  QNetworkAccessManager.init(fcQNetworkAccessManager_new2(parent.h))
proc metaObject*(self: QNetworkAccessManager, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQNetworkAccessManager_metaObject(self.h))

proc metacast*(self: QNetworkAccessManager, param1: cstring): pointer =

  fcQNetworkAccessManager_metacast(self.h, param1)

proc metacall*(self: QNetworkAccessManager, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQNetworkAccessManager_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QNetworkAccessManager, s: cstring): string =

  let v_ms = fcQNetworkAccessManager_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QNetworkAccessManager, s: cstring): string =

  let v_ms = fcQNetworkAccessManager_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedSchemes*(self: QNetworkAccessManager, ): seq[string] =

  var v_ma = fcQNetworkAccessManager_supportedSchemes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc clearAccessCache*(self: QNetworkAccessManager, ): void =

  fcQNetworkAccessManager_clearAccessCache(self.h)

proc clearConnectionCache*(self: QNetworkAccessManager, ): void =

  fcQNetworkAccessManager_clearConnectionCache(self.h)

proc proxy*(self: QNetworkAccessManager, ): gen_qnetworkproxy.QNetworkProxy =

  gen_qnetworkproxy.QNetworkProxy(h: fcQNetworkAccessManager_proxy(self.h))

proc setProxy*(self: QNetworkAccessManager, proxy: gen_qnetworkproxy.QNetworkProxy): void =

  fcQNetworkAccessManager_setProxy(self.h, proxy.h)

proc proxyFactory*(self: QNetworkAccessManager, ): gen_qnetworkproxy.QNetworkProxyFactory =

  gen_qnetworkproxy.QNetworkProxyFactory(h: fcQNetworkAccessManager_proxyFactory(self.h))

proc setProxyFactory*(self: QNetworkAccessManager, factory: gen_qnetworkproxy.QNetworkProxyFactory): void =

  fcQNetworkAccessManager_setProxyFactory(self.h, factory.h)

proc cache*(self: QNetworkAccessManager, ): gen_qabstractnetworkcache.QAbstractNetworkCache =

  gen_qabstractnetworkcache.QAbstractNetworkCache(h: fcQNetworkAccessManager_cache(self.h))

proc setCache*(self: QNetworkAccessManager, cache: gen_qabstractnetworkcache.QAbstractNetworkCache): void =

  fcQNetworkAccessManager_setCache(self.h, cache.h)

proc cookieJar*(self: QNetworkAccessManager, ): gen_qnetworkcookiejar.QNetworkCookieJar =

  gen_qnetworkcookiejar.QNetworkCookieJar(h: fcQNetworkAccessManager_cookieJar(self.h))

proc setCookieJar*(self: QNetworkAccessManager, cookieJar: gen_qnetworkcookiejar.QNetworkCookieJar): void =

  fcQNetworkAccessManager_setCookieJar(self.h, cookieJar.h)

proc setStrictTransportSecurityEnabled*(self: QNetworkAccessManager, enabled: bool): void =

  fcQNetworkAccessManager_setStrictTransportSecurityEnabled(self.h, enabled)

proc isStrictTransportSecurityEnabled*(self: QNetworkAccessManager, ): bool =

  fcQNetworkAccessManager_isStrictTransportSecurityEnabled(self.h)

proc enableStrictTransportSecurityStore*(self: QNetworkAccessManager, enabled: bool): void =

  fcQNetworkAccessManager_enableStrictTransportSecurityStore(self.h, enabled)

proc isStrictTransportSecurityStoreEnabled*(self: QNetworkAccessManager, ): bool =

  fcQNetworkAccessManager_isStrictTransportSecurityStoreEnabled(self.h)

proc addStrictTransportSecurityHosts*(self: QNetworkAccessManager, knownHosts: seq[gen_qhstspolicy.QHstsPolicy]): void =

  var knownHosts_CArray = newSeq[pointer](len(knownHosts))
  for i in 0..<len(knownHosts):
    knownHosts_CArray[i] = knownHosts[i].h

  fcQNetworkAccessManager_addStrictTransportSecurityHosts(self.h, struct_miqt_array(len: csize_t(len(knownHosts)), data: if len(knownHosts) == 0: nil else: addr(knownHosts_CArray[0])))

proc strictTransportSecurityHosts*(self: QNetworkAccessManager, ): seq[gen_qhstspolicy.QHstsPolicy] =

  var v_ma = fcQNetworkAccessManager_strictTransportSecurityHosts(self.h)
  var vx_ret = newSeq[gen_qhstspolicy.QHstsPolicy](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qhstspolicy.QHstsPolicy(h: v_outCast[i])
  vx_ret

proc head*(self: QNetworkAccessManager, request: gen_qnetworkrequest.QNetworkRequest): gen_qnetworkreply.QNetworkReply =

  gen_qnetworkreply.QNetworkReply(h: fcQNetworkAccessManager_head(self.h, request.h))

proc get*(self: QNetworkAccessManager, request: gen_qnetworkrequest.QNetworkRequest): gen_qnetworkreply.QNetworkReply =

  gen_qnetworkreply.QNetworkReply(h: fcQNetworkAccessManager_get(self.h, request.h))

proc post*(self: QNetworkAccessManager, request: gen_qnetworkrequest.QNetworkRequest, data: gen_qiodevice.QIODevice): gen_qnetworkreply.QNetworkReply =

  gen_qnetworkreply.QNetworkReply(h: fcQNetworkAccessManager_post(self.h, request.h, data.h))

proc post2*(self: QNetworkAccessManager, request: gen_qnetworkrequest.QNetworkRequest, data: seq[byte]): gen_qnetworkreply.QNetworkReply =

  gen_qnetworkreply.QNetworkReply(h: fcQNetworkAccessManager_post2(self.h, request.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data)))))

proc put*(self: QNetworkAccessManager, request: gen_qnetworkrequest.QNetworkRequest, data: gen_qiodevice.QIODevice): gen_qnetworkreply.QNetworkReply =

  gen_qnetworkreply.QNetworkReply(h: fcQNetworkAccessManager_put(self.h, request.h, data.h))

proc put2*(self: QNetworkAccessManager, request: gen_qnetworkrequest.QNetworkRequest, data: seq[byte]): gen_qnetworkreply.QNetworkReply =

  gen_qnetworkreply.QNetworkReply(h: fcQNetworkAccessManager_put2(self.h, request.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data)))))

proc deleteResource*(self: QNetworkAccessManager, request: gen_qnetworkrequest.QNetworkRequest): gen_qnetworkreply.QNetworkReply =

  gen_qnetworkreply.QNetworkReply(h: fcQNetworkAccessManager_deleteResource(self.h, request.h))

proc sendCustomRequest*(self: QNetworkAccessManager, request: gen_qnetworkrequest.QNetworkRequest, verb: seq[byte]): gen_qnetworkreply.QNetworkReply =

  gen_qnetworkreply.QNetworkReply(h: fcQNetworkAccessManager_sendCustomRequest(self.h, request.h, struct_miqt_string(data: cast[cstring](if len(verb) == 0: nil else: unsafeAddr verb[0]), len: csize_t(len(verb)))))

proc sendCustomRequest2*(self: QNetworkAccessManager, request: gen_qnetworkrequest.QNetworkRequest, verb: seq[byte], data: seq[byte]): gen_qnetworkreply.QNetworkReply =

  gen_qnetworkreply.QNetworkReply(h: fcQNetworkAccessManager_sendCustomRequest2(self.h, request.h, struct_miqt_string(data: cast[cstring](if len(verb) == 0: nil else: unsafeAddr verb[0]), len: csize_t(len(verb))), struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data)))))

proc post3*(self: QNetworkAccessManager, request: gen_qnetworkrequest.QNetworkRequest, multiPart: gen_qhttpmultipart.QHttpMultiPart): gen_qnetworkreply.QNetworkReply =

  gen_qnetworkreply.QNetworkReply(h: fcQNetworkAccessManager_post3(self.h, request.h, multiPart.h))

proc put3*(self: QNetworkAccessManager, request: gen_qnetworkrequest.QNetworkRequest, multiPart: gen_qhttpmultipart.QHttpMultiPart): gen_qnetworkreply.QNetworkReply =

  gen_qnetworkreply.QNetworkReply(h: fcQNetworkAccessManager_put3(self.h, request.h, multiPart.h))

proc sendCustomRequest3*(self: QNetworkAccessManager, request: gen_qnetworkrequest.QNetworkRequest, verb: seq[byte], multiPart: gen_qhttpmultipart.QHttpMultiPart): gen_qnetworkreply.QNetworkReply =

  gen_qnetworkreply.QNetworkReply(h: fcQNetworkAccessManager_sendCustomRequest3(self.h, request.h, struct_miqt_string(data: cast[cstring](if len(verb) == 0: nil else: unsafeAddr verb[0]), len: csize_t(len(verb))), multiPart.h))

proc setConfiguration*(self: QNetworkAccessManager, config: gen_qnetworkconfiguration.QNetworkConfiguration): void =

  fcQNetworkAccessManager_setConfiguration(self.h, config.h)

proc configuration*(self: QNetworkAccessManager, ): gen_qnetworkconfiguration.QNetworkConfiguration =

  gen_qnetworkconfiguration.QNetworkConfiguration(h: fcQNetworkAccessManager_configuration(self.h))

proc activeConfiguration*(self: QNetworkAccessManager, ): gen_qnetworkconfiguration.QNetworkConfiguration =

  gen_qnetworkconfiguration.QNetworkConfiguration(h: fcQNetworkAccessManager_activeConfiguration(self.h))

proc setNetworkAccessible*(self: QNetworkAccessManager, accessible: QNetworkAccessManagerNetworkAccessibility): void =

  fcQNetworkAccessManager_setNetworkAccessible(self.h, cint(accessible))

proc networkAccessible*(self: QNetworkAccessManager, ): QNetworkAccessManagerNetworkAccessibility =

  QNetworkAccessManagerNetworkAccessibility(fcQNetworkAccessManager_networkAccessible(self.h))

proc connectToHostEncrypted*(self: QNetworkAccessManager, hostName: string): void =

  fcQNetworkAccessManager_connectToHostEncrypted(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))))

proc connectToHostEncrypted2*(self: QNetworkAccessManager, hostName: string, port: cushort, sslConfiguration: gen_qsslconfiguration.QSslConfiguration, peerName: string): void =

  fcQNetworkAccessManager_connectToHostEncrypted2(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, sslConfiguration.h, struct_miqt_string(data: peerName, len: csize_t(len(peerName))))

proc connectToHost*(self: QNetworkAccessManager, hostName: string): void =

  fcQNetworkAccessManager_connectToHost(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))))

proc setRedirectPolicy*(self: QNetworkAccessManager, policy: gen_qnetworkrequest.QNetworkRequestRedirectPolicy): void =

  fcQNetworkAccessManager_setRedirectPolicy(self.h, cint(policy))

proc redirectPolicy*(self: QNetworkAccessManager, ): gen_qnetworkrequest.QNetworkRequestRedirectPolicy =

  gen_qnetworkrequest.QNetworkRequestRedirectPolicy(fcQNetworkAccessManager_redirectPolicy(self.h))

proc autoDeleteReplies*(self: QNetworkAccessManager, ): bool =

  fcQNetworkAccessManager_autoDeleteReplies(self.h)

proc setAutoDeleteReplies*(self: QNetworkAccessManager, autoDelete: bool): void =

  fcQNetworkAccessManager_setAutoDeleteReplies(self.h, autoDelete)

proc transferTimeout*(self: QNetworkAccessManager, ): cint =

  fcQNetworkAccessManager_transferTimeout(self.h)

proc setTransferTimeout*(self: QNetworkAccessManager, ): void =

  fcQNetworkAccessManager_setTransferTimeout(self.h)

proc proxyAuthenticationRequired*(self: QNetworkAccessManager, proxy: gen_qnetworkproxy.QNetworkProxy, authenticator: gen_qauthenticator.QAuthenticator): void =

  fcQNetworkAccessManager_proxyAuthenticationRequired(self.h, proxy.h, authenticator.h)

proc miqt_exec_callback_QNetworkAccessManager_proxyAuthenticationRequired(slot: int, proxy: pointer, authenticator: pointer) {.exportc.} =
  type Cb = proc(proxy: gen_qnetworkproxy.QNetworkProxy, authenticator: gen_qauthenticator.QAuthenticator)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnetworkproxy.QNetworkProxy(h: proxy)

  let slotval2 = gen_qauthenticator.QAuthenticator(h: authenticator)


  nimfunc[](slotval1, slotval2)

proc onproxyAuthenticationRequired*(self: QNetworkAccessManager, slot: proc(proxy: gen_qnetworkproxy.QNetworkProxy, authenticator: gen_qauthenticator.QAuthenticator)) =
  type Cb = proc(proxy: gen_qnetworkproxy.QNetworkProxy, authenticator: gen_qauthenticator.QAuthenticator)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkAccessManager_connect_proxyAuthenticationRequired(self.h, cast[int](addr tmp[]))
proc authenticationRequired*(self: QNetworkAccessManager, reply: gen_qnetworkreply.QNetworkReply, authenticator: gen_qauthenticator.QAuthenticator): void =

  fcQNetworkAccessManager_authenticationRequired(self.h, reply.h, authenticator.h)

proc miqt_exec_callback_QNetworkAccessManager_authenticationRequired(slot: int, reply: pointer, authenticator: pointer) {.exportc.} =
  type Cb = proc(reply: gen_qnetworkreply.QNetworkReply, authenticator: gen_qauthenticator.QAuthenticator)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnetworkreply.QNetworkReply(h: reply)

  let slotval2 = gen_qauthenticator.QAuthenticator(h: authenticator)


  nimfunc[](slotval1, slotval2)

proc onauthenticationRequired*(self: QNetworkAccessManager, slot: proc(reply: gen_qnetworkreply.QNetworkReply, authenticator: gen_qauthenticator.QAuthenticator)) =
  type Cb = proc(reply: gen_qnetworkreply.QNetworkReply, authenticator: gen_qauthenticator.QAuthenticator)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkAccessManager_connect_authenticationRequired(self.h, cast[int](addr tmp[]))
proc finished*(self: QNetworkAccessManager, reply: gen_qnetworkreply.QNetworkReply): void =

  fcQNetworkAccessManager_finished(self.h, reply.h)

proc miqt_exec_callback_QNetworkAccessManager_finished(slot: int, reply: pointer) {.exportc.} =
  type Cb = proc(reply: gen_qnetworkreply.QNetworkReply)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnetworkreply.QNetworkReply(h: reply)


  nimfunc[](slotval1)

proc onfinished*(self: QNetworkAccessManager, slot: proc(reply: gen_qnetworkreply.QNetworkReply)) =
  type Cb = proc(reply: gen_qnetworkreply.QNetworkReply)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkAccessManager_connect_finished(self.h, cast[int](addr tmp[]))
proc encrypted*(self: QNetworkAccessManager, reply: gen_qnetworkreply.QNetworkReply): void =

  fcQNetworkAccessManager_encrypted(self.h, reply.h)

proc miqt_exec_callback_QNetworkAccessManager_encrypted(slot: int, reply: pointer) {.exportc.} =
  type Cb = proc(reply: gen_qnetworkreply.QNetworkReply)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnetworkreply.QNetworkReply(h: reply)


  nimfunc[](slotval1)

proc onencrypted*(self: QNetworkAccessManager, slot: proc(reply: gen_qnetworkreply.QNetworkReply)) =
  type Cb = proc(reply: gen_qnetworkreply.QNetworkReply)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkAccessManager_connect_encrypted(self.h, cast[int](addr tmp[]))
proc sslErrors*(self: QNetworkAccessManager, reply: gen_qnetworkreply.QNetworkReply, errors: seq[gen_qsslerror.QSslError]): void =

  var errors_CArray = newSeq[pointer](len(errors))
  for i in 0..<len(errors):
    errors_CArray[i] = errors[i].h

  fcQNetworkAccessManager_sslErrors(self.h, reply.h, struct_miqt_array(len: csize_t(len(errors)), data: if len(errors) == 0: nil else: addr(errors_CArray[0])))

proc miqt_exec_callback_QNetworkAccessManager_sslErrors(slot: int, reply: pointer, errors: struct_miqt_array) {.exportc.} =
  type Cb = proc(reply: gen_qnetworkreply.QNetworkReply, errors: seq[gen_qsslerror.QSslError])
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnetworkreply.QNetworkReply(h: reply)

  var verrors_ma = errors
  var verrorsx_ret = newSeq[gen_qsslerror.QSslError](int(verrors_ma.len))
  let verrors_outCast = cast[ptr UncheckedArray[pointer]](verrors_ma.data)
  for i in 0 ..< verrors_ma.len:
    verrorsx_ret[i] = gen_qsslerror.QSslError(h: verrors_outCast[i])
  let slotval2 = verrorsx_ret


  nimfunc[](slotval1, slotval2)

proc onsslErrors*(self: QNetworkAccessManager, slot: proc(reply: gen_qnetworkreply.QNetworkReply, errors: seq[gen_qsslerror.QSslError])) =
  type Cb = proc(reply: gen_qnetworkreply.QNetworkReply, errors: seq[gen_qsslerror.QSslError])
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkAccessManager_connect_sslErrors(self.h, cast[int](addr tmp[]))
proc preSharedKeyAuthenticationRequired*(self: QNetworkAccessManager, reply: gen_qnetworkreply.QNetworkReply, authenticator: gen_qsslpresharedkeyauthenticator.QSslPreSharedKeyAuthenticator): void =

  fcQNetworkAccessManager_preSharedKeyAuthenticationRequired(self.h, reply.h, authenticator.h)

proc miqt_exec_callback_QNetworkAccessManager_preSharedKeyAuthenticationRequired(slot: int, reply: pointer, authenticator: pointer) {.exportc.} =
  type Cb = proc(reply: gen_qnetworkreply.QNetworkReply, authenticator: gen_qsslpresharedkeyauthenticator.QSslPreSharedKeyAuthenticator)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnetworkreply.QNetworkReply(h: reply)

  let slotval2 = gen_qsslpresharedkeyauthenticator.QSslPreSharedKeyAuthenticator(h: authenticator)


  nimfunc[](slotval1, slotval2)

proc onpreSharedKeyAuthenticationRequired*(self: QNetworkAccessManager, slot: proc(reply: gen_qnetworkreply.QNetworkReply, authenticator: gen_qsslpresharedkeyauthenticator.QSslPreSharedKeyAuthenticator)) =
  type Cb = proc(reply: gen_qnetworkreply.QNetworkReply, authenticator: gen_qsslpresharedkeyauthenticator.QSslPreSharedKeyAuthenticator)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkAccessManager_connect_preSharedKeyAuthenticationRequired(self.h, cast[int](addr tmp[]))
proc networkSessionConnected*(self: QNetworkAccessManager, ): void =

  fcQNetworkAccessManager_networkSessionConnected(self.h)

proc miqt_exec_callback_QNetworkAccessManager_networkSessionConnected(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onnetworkSessionConnected*(self: QNetworkAccessManager, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkAccessManager_connect_networkSessionConnected(self.h, cast[int](addr tmp[]))
proc networkAccessibleChanged*(self: QNetworkAccessManager, accessible: QNetworkAccessManagerNetworkAccessibility): void =

  fcQNetworkAccessManager_networkAccessibleChanged(self.h, cint(accessible))

proc miqt_exec_callback_QNetworkAccessManager_networkAccessibleChanged(slot: int, accessible: cint) {.exportc.} =
  type Cb = proc(accessible: QNetworkAccessManagerNetworkAccessibility)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QNetworkAccessManagerNetworkAccessibility(accessible)


  nimfunc[](slotval1)

proc onnetworkAccessibleChanged*(self: QNetworkAccessManager, slot: proc(accessible: QNetworkAccessManagerNetworkAccessibility)) =
  type Cb = proc(accessible: QNetworkAccessManagerNetworkAccessibility)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQNetworkAccessManager_connect_networkAccessibleChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QNetworkAccessManager, s: cstring, c: cstring): string =

  let v_ms = fcQNetworkAccessManager_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QNetworkAccessManager, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQNetworkAccessManager_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QNetworkAccessManager, s: cstring, c: cstring): string =

  let v_ms = fcQNetworkAccessManager_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QNetworkAccessManager, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQNetworkAccessManager_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc enableStrictTransportSecurityStore2*(self: QNetworkAccessManager, enabled: bool, storeDir: string): void =

  fcQNetworkAccessManager_enableStrictTransportSecurityStore2(self.h, enabled, struct_miqt_string(data: storeDir, len: csize_t(len(storeDir))))

proc sendCustomRequest32*(self: QNetworkAccessManager, request: gen_qnetworkrequest.QNetworkRequest, verb: seq[byte], data: gen_qiodevice.QIODevice): gen_qnetworkreply.QNetworkReply =

  gen_qnetworkreply.QNetworkReply(h: fcQNetworkAccessManager_sendCustomRequest32(self.h, request.h, struct_miqt_string(data: cast[cstring](if len(verb) == 0: nil else: unsafeAddr verb[0]), len: csize_t(len(verb))), data.h))

proc connectToHostEncrypted22*(self: QNetworkAccessManager, hostName: string, port: cushort): void =

  fcQNetworkAccessManager_connectToHostEncrypted22(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port)

proc connectToHostEncrypted3*(self: QNetworkAccessManager, hostName: string, port: cushort, sslConfiguration: gen_qsslconfiguration.QSslConfiguration): void =

  fcQNetworkAccessManager_connectToHostEncrypted3(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, sslConfiguration.h)

proc connectToHost2*(self: QNetworkAccessManager, hostName: string, port: cushort): void =

  fcQNetworkAccessManager_connectToHost2(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port)

proc setTransferTimeout1*(self: QNetworkAccessManager, timeout: cint): void =

  fcQNetworkAccessManager_setTransferTimeout1(self.h, timeout)

proc callVirtualBase_metacall(self: QNetworkAccessManager, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQNetworkAccessManager_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QNetworkAccessManagermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QNetworkAccessManager, slot: proc(super: QNetworkAccessManagermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QNetworkAccessManagermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkAccessManager_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkAccessManager_metacall(self: ptr cQNetworkAccessManager, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QNetworkAccessManager_metacall ".} =
  type Cb = proc(super: QNetworkAccessManagermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QNetworkAccessManager(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_createRequest(self: QNetworkAccessManager, op: QNetworkAccessManagerOperation, request: gen_qnetworkrequest.QNetworkRequest, outgoingData: gen_qiodevice.QIODevice): gen_qnetworkreply.QNetworkReply =


  gen_qnetworkreply.QNetworkReply(h: fQNetworkAccessManager_virtualbase_createRequest(self.h, cint(op), request.h, outgoingData.h))

type QNetworkAccessManagercreateRequestBase* = proc(op: QNetworkAccessManagerOperation, request: gen_qnetworkrequest.QNetworkRequest, outgoingData: gen_qiodevice.QIODevice): gen_qnetworkreply.QNetworkReply
proc oncreateRequest*(self: QNetworkAccessManager, slot: proc(super: QNetworkAccessManagercreateRequestBase, op: QNetworkAccessManagerOperation, request: gen_qnetworkrequest.QNetworkRequest, outgoingData: gen_qiodevice.QIODevice): gen_qnetworkreply.QNetworkReply) =
  # TODO check subclass
  type Cb = proc(super: QNetworkAccessManagercreateRequestBase, op: QNetworkAccessManagerOperation, request: gen_qnetworkrequest.QNetworkRequest, outgoingData: gen_qiodevice.QIODevice): gen_qnetworkreply.QNetworkReply
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkAccessManager_override_virtual_createRequest(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkAccessManager_createRequest(self: ptr cQNetworkAccessManager, slot: int, op: cint, request: pointer, outgoingData: pointer): pointer {.exportc: "miqt_exec_callback_QNetworkAccessManager_createRequest ".} =
  type Cb = proc(super: QNetworkAccessManagercreateRequestBase, op: QNetworkAccessManagerOperation, request: gen_qnetworkrequest.QNetworkRequest, outgoingData: gen_qiodevice.QIODevice): gen_qnetworkreply.QNetworkReply
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(op: QNetworkAccessManagerOperation, request: gen_qnetworkrequest.QNetworkRequest, outgoingData: gen_qiodevice.QIODevice): auto =
    callVirtualBase_createRequest(QNetworkAccessManager(h: self), op, request, outgoingData)
  let slotval1 = QNetworkAccessManagerOperation(op)

  let slotval2 = gen_qnetworkrequest.QNetworkRequest(h: request)

  let slotval3 = gen_qiodevice.QIODevice(h: outgoingData)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_event(self: QNetworkAccessManager, event: gen_qcoreevent.QEvent): bool =


  fQNetworkAccessManager_virtualbase_event(self.h, event.h)

type QNetworkAccessManagereventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QNetworkAccessManager, slot: proc(super: QNetworkAccessManagereventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QNetworkAccessManagereventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkAccessManager_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkAccessManager_event(self: ptr cQNetworkAccessManager, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QNetworkAccessManager_event ".} =
  type Cb = proc(super: QNetworkAccessManagereventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QNetworkAccessManager(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QNetworkAccessManager, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQNetworkAccessManager_virtualbase_eventFilter(self.h, watched.h, event.h)

type QNetworkAccessManagereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QNetworkAccessManager, slot: proc(super: QNetworkAccessManagereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QNetworkAccessManagereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkAccessManager_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkAccessManager_eventFilter(self: ptr cQNetworkAccessManager, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QNetworkAccessManager_eventFilter ".} =
  type Cb = proc(super: QNetworkAccessManagereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QNetworkAccessManager(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QNetworkAccessManager, event: gen_qcoreevent.QTimerEvent): void =


  fQNetworkAccessManager_virtualbase_timerEvent(self.h, event.h)

type QNetworkAccessManagertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QNetworkAccessManager, slot: proc(super: QNetworkAccessManagertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QNetworkAccessManagertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkAccessManager_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkAccessManager_timerEvent(self: ptr cQNetworkAccessManager, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QNetworkAccessManager_timerEvent ".} =
  type Cb = proc(super: QNetworkAccessManagertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QNetworkAccessManager(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QNetworkAccessManager, event: gen_qcoreevent.QChildEvent): void =


  fQNetworkAccessManager_virtualbase_childEvent(self.h, event.h)

type QNetworkAccessManagerchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QNetworkAccessManager, slot: proc(super: QNetworkAccessManagerchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QNetworkAccessManagerchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkAccessManager_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkAccessManager_childEvent(self: ptr cQNetworkAccessManager, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QNetworkAccessManager_childEvent ".} =
  type Cb = proc(super: QNetworkAccessManagerchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QNetworkAccessManager(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QNetworkAccessManager, event: gen_qcoreevent.QEvent): void =


  fQNetworkAccessManager_virtualbase_customEvent(self.h, event.h)

type QNetworkAccessManagercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QNetworkAccessManager, slot: proc(super: QNetworkAccessManagercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QNetworkAccessManagercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkAccessManager_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkAccessManager_customEvent(self: ptr cQNetworkAccessManager, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QNetworkAccessManager_customEvent ".} =
  type Cb = proc(super: QNetworkAccessManagercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QNetworkAccessManager(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QNetworkAccessManager, signal: gen_qmetaobject.QMetaMethod): void =


  fQNetworkAccessManager_virtualbase_connectNotify(self.h, signal.h)

type QNetworkAccessManagerconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QNetworkAccessManager, slot: proc(super: QNetworkAccessManagerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QNetworkAccessManagerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkAccessManager_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkAccessManager_connectNotify(self: ptr cQNetworkAccessManager, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QNetworkAccessManager_connectNotify ".} =
  type Cb = proc(super: QNetworkAccessManagerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QNetworkAccessManager(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QNetworkAccessManager, signal: gen_qmetaobject.QMetaMethod): void =


  fQNetworkAccessManager_virtualbase_disconnectNotify(self.h, signal.h)

type QNetworkAccessManagerdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QNetworkAccessManager, slot: proc(super: QNetworkAccessManagerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QNetworkAccessManagerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkAccessManager_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkAccessManager_disconnectNotify(self: ptr cQNetworkAccessManager, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QNetworkAccessManager_disconnectNotify ".} =
  type Cb = proc(super: QNetworkAccessManagerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QNetworkAccessManager(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QNetworkAccessManager): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQNetworkAccessManager_staticMetaObject())
proc delete*(self: QNetworkAccessManager) =
  fcQNetworkAccessManager_delete(self.h)
