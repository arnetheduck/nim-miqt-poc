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
{.compile("gen_qnetworkproxy.cpp", cflags).}


type QNetworkProxyQueryQueryType* = cint
const
  QNetworkProxyQueryTcpSocket* = 0
  QNetworkProxyQueryUdpSocket* = 1
  QNetworkProxyQuerySctpSocket* = 2
  QNetworkProxyQueryTcpServer* = 100
  QNetworkProxyQueryUrlRequest* = 101
  QNetworkProxyQuerySctpServer* = 102



type QNetworkProxyProxyType* = cint
const
  QNetworkProxyDefaultProxy* = 0
  QNetworkProxySocks5Proxy* = 1
  QNetworkProxyNoProxy* = 2
  QNetworkProxyHttpProxy* = 3
  QNetworkProxyHttpCachingProxy* = 4
  QNetworkProxyFtpCachingProxy* = 5



type QNetworkProxyCapability* = cint
const
  QNetworkProxyTunnelingCapability* = 1
  QNetworkProxyListeningCapability* = 2
  QNetworkProxyUdpTunnelingCapability* = 4
  QNetworkProxyCachingCapability* = 8
  QNetworkProxyHostNameLookupCapability* = 16
  QNetworkProxySctpTunnelingCapability* = 32
  QNetworkProxySctpListeningCapability* = 64



import gen_qnetworkproxy_types
export gen_qnetworkproxy_types

import
  gen_qnetworkconfiguration,
  gen_qnetworkrequest,
  gen_qobjectdefs,
  gen_qurl,
  gen_qvariant
export
  gen_qnetworkconfiguration,
  gen_qnetworkrequest,
  gen_qobjectdefs,
  gen_qurl,
  gen_qvariant

type cQNetworkProxyQuery*{.exportc: "QNetworkProxyQuery", incompleteStruct.} = object
type cQNetworkProxy*{.exportc: "QNetworkProxy", incompleteStruct.} = object
type cQNetworkProxyFactory*{.exportc: "QNetworkProxyFactory", incompleteStruct.} = object

proc fcQNetworkProxyQuery_new(): ptr cQNetworkProxyQuery {.importc: "QNetworkProxyQuery_new".}
proc fcQNetworkProxyQuery_new2(requestUrl: pointer): ptr cQNetworkProxyQuery {.importc: "QNetworkProxyQuery_new2".}
proc fcQNetworkProxyQuery_new3(hostname: struct_miqt_string, port: cint): ptr cQNetworkProxyQuery {.importc: "QNetworkProxyQuery_new3".}
proc fcQNetworkProxyQuery_new4(bindPort: cushort): ptr cQNetworkProxyQuery {.importc: "QNetworkProxyQuery_new4".}
proc fcQNetworkProxyQuery_new5(networkConfiguration: pointer, requestUrl: pointer): ptr cQNetworkProxyQuery {.importc: "QNetworkProxyQuery_new5".}
proc fcQNetworkProxyQuery_new6(networkConfiguration: pointer, hostname: struct_miqt_string, port: cint): ptr cQNetworkProxyQuery {.importc: "QNetworkProxyQuery_new6".}
proc fcQNetworkProxyQuery_new7(networkConfiguration: pointer, bindPort: cushort): ptr cQNetworkProxyQuery {.importc: "QNetworkProxyQuery_new7".}
proc fcQNetworkProxyQuery_new8(other: pointer): ptr cQNetworkProxyQuery {.importc: "QNetworkProxyQuery_new8".}
proc fcQNetworkProxyQuery_new9(requestUrl: pointer, queryType: cint): ptr cQNetworkProxyQuery {.importc: "QNetworkProxyQuery_new9".}
proc fcQNetworkProxyQuery_new10(hostname: struct_miqt_string, port: cint, protocolTag: struct_miqt_string): ptr cQNetworkProxyQuery {.importc: "QNetworkProxyQuery_new10".}
proc fcQNetworkProxyQuery_new11(hostname: struct_miqt_string, port: cint, protocolTag: struct_miqt_string, queryType: cint): ptr cQNetworkProxyQuery {.importc: "QNetworkProxyQuery_new11".}
proc fcQNetworkProxyQuery_new12(bindPort: cushort, protocolTag: struct_miqt_string): ptr cQNetworkProxyQuery {.importc: "QNetworkProxyQuery_new12".}
proc fcQNetworkProxyQuery_new13(bindPort: cushort, protocolTag: struct_miqt_string, queryType: cint): ptr cQNetworkProxyQuery {.importc: "QNetworkProxyQuery_new13".}
proc fcQNetworkProxyQuery_new14(networkConfiguration: pointer, requestUrl: pointer, queryType: cint): ptr cQNetworkProxyQuery {.importc: "QNetworkProxyQuery_new14".}
proc fcQNetworkProxyQuery_new15(networkConfiguration: pointer, hostname: struct_miqt_string, port: cint, protocolTag: struct_miqt_string): ptr cQNetworkProxyQuery {.importc: "QNetworkProxyQuery_new15".}
proc fcQNetworkProxyQuery_new16(networkConfiguration: pointer, hostname: struct_miqt_string, port: cint, protocolTag: struct_miqt_string, queryType: cint): ptr cQNetworkProxyQuery {.importc: "QNetworkProxyQuery_new16".}
proc fcQNetworkProxyQuery_new17(networkConfiguration: pointer, bindPort: cushort, protocolTag: struct_miqt_string): ptr cQNetworkProxyQuery {.importc: "QNetworkProxyQuery_new17".}
proc fcQNetworkProxyQuery_new18(networkConfiguration: pointer, bindPort: cushort, protocolTag: struct_miqt_string, queryType: cint): ptr cQNetworkProxyQuery {.importc: "QNetworkProxyQuery_new18".}
proc fcQNetworkProxyQuery_operatorAssign(self: pointer, other: pointer): void {.importc: "QNetworkProxyQuery_operatorAssign".}
proc fcQNetworkProxyQuery_swap(self: pointer, other: pointer): void {.importc: "QNetworkProxyQuery_swap".}
proc fcQNetworkProxyQuery_operatorEqual(self: pointer, other: pointer): bool {.importc: "QNetworkProxyQuery_operatorEqual".}
proc fcQNetworkProxyQuery_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QNetworkProxyQuery_operatorNotEqual".}
proc fcQNetworkProxyQuery_queryType(self: pointer, ): cint {.importc: "QNetworkProxyQuery_queryType".}
proc fcQNetworkProxyQuery_setQueryType(self: pointer, typeVal: cint): void {.importc: "QNetworkProxyQuery_setQueryType".}
proc fcQNetworkProxyQuery_peerPort(self: pointer, ): cint {.importc: "QNetworkProxyQuery_peerPort".}
proc fcQNetworkProxyQuery_setPeerPort(self: pointer, port: cint): void {.importc: "QNetworkProxyQuery_setPeerPort".}
proc fcQNetworkProxyQuery_peerHostName(self: pointer, ): struct_miqt_string {.importc: "QNetworkProxyQuery_peerHostName".}
proc fcQNetworkProxyQuery_setPeerHostName(self: pointer, hostname: struct_miqt_string): void {.importc: "QNetworkProxyQuery_setPeerHostName".}
proc fcQNetworkProxyQuery_localPort(self: pointer, ): cint {.importc: "QNetworkProxyQuery_localPort".}
proc fcQNetworkProxyQuery_setLocalPort(self: pointer, port: cint): void {.importc: "QNetworkProxyQuery_setLocalPort".}
proc fcQNetworkProxyQuery_protocolTag(self: pointer, ): struct_miqt_string {.importc: "QNetworkProxyQuery_protocolTag".}
proc fcQNetworkProxyQuery_setProtocolTag(self: pointer, protocolTag: struct_miqt_string): void {.importc: "QNetworkProxyQuery_setProtocolTag".}
proc fcQNetworkProxyQuery_url(self: pointer, ): pointer {.importc: "QNetworkProxyQuery_url".}
proc fcQNetworkProxyQuery_setUrl(self: pointer, url: pointer): void {.importc: "QNetworkProxyQuery_setUrl".}
proc fcQNetworkProxyQuery_networkConfiguration(self: pointer, ): pointer {.importc: "QNetworkProxyQuery_networkConfiguration".}
proc fcQNetworkProxyQuery_setNetworkConfiguration(self: pointer, networkConfiguration: pointer): void {.importc: "QNetworkProxyQuery_setNetworkConfiguration".}
proc fcQNetworkProxyQuery_staticMetaObject(): pointer {.importc: "QNetworkProxyQuery_staticMetaObject".}
proc fcQNetworkProxyQuery_delete(self: pointer) {.importc: "QNetworkProxyQuery_delete".}
proc fcQNetworkProxy_new(): ptr cQNetworkProxy {.importc: "QNetworkProxy_new".}
proc fcQNetworkProxy_new2(typeVal: cint): ptr cQNetworkProxy {.importc: "QNetworkProxy_new2".}
proc fcQNetworkProxy_new3(other: pointer): ptr cQNetworkProxy {.importc: "QNetworkProxy_new3".}
proc fcQNetworkProxy_new4(typeVal: cint, hostName: struct_miqt_string): ptr cQNetworkProxy {.importc: "QNetworkProxy_new4".}
proc fcQNetworkProxy_new5(typeVal: cint, hostName: struct_miqt_string, port: cushort): ptr cQNetworkProxy {.importc: "QNetworkProxy_new5".}
proc fcQNetworkProxy_new6(typeVal: cint, hostName: struct_miqt_string, port: cushort, user: struct_miqt_string): ptr cQNetworkProxy {.importc: "QNetworkProxy_new6".}
proc fcQNetworkProxy_new7(typeVal: cint, hostName: struct_miqt_string, port: cushort, user: struct_miqt_string, password: struct_miqt_string): ptr cQNetworkProxy {.importc: "QNetworkProxy_new7".}
proc fcQNetworkProxy_operatorAssign(self: pointer, other: pointer): void {.importc: "QNetworkProxy_operatorAssign".}
proc fcQNetworkProxy_swap(self: pointer, other: pointer): void {.importc: "QNetworkProxy_swap".}
proc fcQNetworkProxy_operatorEqual(self: pointer, other: pointer): bool {.importc: "QNetworkProxy_operatorEqual".}
proc fcQNetworkProxy_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QNetworkProxy_operatorNotEqual".}
proc fcQNetworkProxy_setType(self: pointer, typeVal: cint): void {.importc: "QNetworkProxy_setType".}
proc fcQNetworkProxy_typeX(self: pointer, ): cint {.importc: "QNetworkProxy_type".}
proc fcQNetworkProxy_setCapabilities(self: pointer, capab: cint): void {.importc: "QNetworkProxy_setCapabilities".}
proc fcQNetworkProxy_capabilities(self: pointer, ): cint {.importc: "QNetworkProxy_capabilities".}
proc fcQNetworkProxy_isCachingProxy(self: pointer, ): bool {.importc: "QNetworkProxy_isCachingProxy".}
proc fcQNetworkProxy_isTransparentProxy(self: pointer, ): bool {.importc: "QNetworkProxy_isTransparentProxy".}
proc fcQNetworkProxy_setUser(self: pointer, userName: struct_miqt_string): void {.importc: "QNetworkProxy_setUser".}
proc fcQNetworkProxy_user(self: pointer, ): struct_miqt_string {.importc: "QNetworkProxy_user".}
proc fcQNetworkProxy_setPassword(self: pointer, password: struct_miqt_string): void {.importc: "QNetworkProxy_setPassword".}
proc fcQNetworkProxy_password(self: pointer, ): struct_miqt_string {.importc: "QNetworkProxy_password".}
proc fcQNetworkProxy_setHostName(self: pointer, hostName: struct_miqt_string): void {.importc: "QNetworkProxy_setHostName".}
proc fcQNetworkProxy_hostName(self: pointer, ): struct_miqt_string {.importc: "QNetworkProxy_hostName".}
proc fcQNetworkProxy_setPort(self: pointer, port: cushort): void {.importc: "QNetworkProxy_setPort".}
proc fcQNetworkProxy_port(self: pointer, ): cushort {.importc: "QNetworkProxy_port".}
proc fcQNetworkProxy_setApplicationProxy(proxy: pointer): void {.importc: "QNetworkProxy_setApplicationProxy".}
proc fcQNetworkProxy_applicationProxy(): pointer {.importc: "QNetworkProxy_applicationProxy".}
proc fcQNetworkProxy_header(self: pointer, header: cint): pointer {.importc: "QNetworkProxy_header".}
proc fcQNetworkProxy_setHeader(self: pointer, header: cint, value: pointer): void {.importc: "QNetworkProxy_setHeader".}
proc fcQNetworkProxy_hasRawHeader(self: pointer, headerName: struct_miqt_string): bool {.importc: "QNetworkProxy_hasRawHeader".}
proc fcQNetworkProxy_rawHeaderList(self: pointer, ): struct_miqt_array {.importc: "QNetworkProxy_rawHeaderList".}
proc fcQNetworkProxy_rawHeader(self: pointer, headerName: struct_miqt_string): struct_miqt_string {.importc: "QNetworkProxy_rawHeader".}
proc fcQNetworkProxy_setRawHeader(self: pointer, headerName: struct_miqt_string, value: struct_miqt_string): void {.importc: "QNetworkProxy_setRawHeader".}
proc fcQNetworkProxy_delete(self: pointer) {.importc: "QNetworkProxy_delete".}
proc fcQNetworkProxyFactory_new(): ptr cQNetworkProxyFactory {.importc: "QNetworkProxyFactory_new".}
proc fcQNetworkProxyFactory_queryProxy(self: pointer, query: pointer): struct_miqt_array {.importc: "QNetworkProxyFactory_queryProxy".}
proc fcQNetworkProxyFactory_usesSystemConfiguration(): bool {.importc: "QNetworkProxyFactory_usesSystemConfiguration".}
proc fcQNetworkProxyFactory_setUseSystemConfiguration(enable: bool): void {.importc: "QNetworkProxyFactory_setUseSystemConfiguration".}
proc fcQNetworkProxyFactory_setApplicationProxyFactory(factory: pointer): void {.importc: "QNetworkProxyFactory_setApplicationProxyFactory".}
proc fcQNetworkProxyFactory_proxyForQuery(query: pointer): struct_miqt_array {.importc: "QNetworkProxyFactory_proxyForQuery".}
proc fcQNetworkProxyFactory_systemProxyForQuery(): struct_miqt_array {.importc: "QNetworkProxyFactory_systemProxyForQuery".}
proc fcQNetworkProxyFactory_operatorAssign(self: pointer, param1: pointer): void {.importc: "QNetworkProxyFactory_operatorAssign".}
proc fcQNetworkProxyFactory_systemProxyForQuery1(query: pointer): struct_miqt_array {.importc: "QNetworkProxyFactory_systemProxyForQuery1".}
proc fcQNetworkProxyFactory_override_virtual_queryProxy(self: pointer, slot: int) {.importc: "QNetworkProxyFactory_override_virtual_queryProxy".}
proc fcQNetworkProxyFactory_delete(self: pointer) {.importc: "QNetworkProxyFactory_delete".}


func init*(T: type QNetworkProxyQuery, h: ptr cQNetworkProxyQuery): QNetworkProxyQuery =
  T(h: h)
proc create*(T: type QNetworkProxyQuery, ): QNetworkProxyQuery =

  QNetworkProxyQuery.init(fcQNetworkProxyQuery_new())
proc create*(T: type QNetworkProxyQuery, requestUrl: gen_qurl.QUrl): QNetworkProxyQuery =

  QNetworkProxyQuery.init(fcQNetworkProxyQuery_new2(requestUrl.h))
proc create*(T: type QNetworkProxyQuery, hostname: string, port: cint): QNetworkProxyQuery =

  QNetworkProxyQuery.init(fcQNetworkProxyQuery_new3(struct_miqt_string(data: hostname, len: csize_t(len(hostname))), port))
proc create*(T: type QNetworkProxyQuery, bindPort: cushort): QNetworkProxyQuery =

  QNetworkProxyQuery.init(fcQNetworkProxyQuery_new4(bindPort))
proc create*(T: type QNetworkProxyQuery, networkConfiguration: gen_qnetworkconfiguration.QNetworkConfiguration, requestUrl: gen_qurl.QUrl): QNetworkProxyQuery =

  QNetworkProxyQuery.init(fcQNetworkProxyQuery_new5(networkConfiguration.h, requestUrl.h))
proc create*(T: type QNetworkProxyQuery, networkConfiguration: gen_qnetworkconfiguration.QNetworkConfiguration, hostname: string, port: cint): QNetworkProxyQuery =

  QNetworkProxyQuery.init(fcQNetworkProxyQuery_new6(networkConfiguration.h, struct_miqt_string(data: hostname, len: csize_t(len(hostname))), port))
proc create*(T: type QNetworkProxyQuery, networkConfiguration: gen_qnetworkconfiguration.QNetworkConfiguration, bindPort: cushort): QNetworkProxyQuery =

  QNetworkProxyQuery.init(fcQNetworkProxyQuery_new7(networkConfiguration.h, bindPort))
proc create2*(T: type QNetworkProxyQuery, other: QNetworkProxyQuery): QNetworkProxyQuery =

  QNetworkProxyQuery.init(fcQNetworkProxyQuery_new8(other.h))
proc create*(T: type QNetworkProxyQuery, requestUrl: gen_qurl.QUrl, queryType: QNetworkProxyQueryQueryType): QNetworkProxyQuery =

  QNetworkProxyQuery.init(fcQNetworkProxyQuery_new9(requestUrl.h, cint(queryType)))
proc create*(T: type QNetworkProxyQuery, hostname: string, port: cint, protocolTag: string): QNetworkProxyQuery =

  QNetworkProxyQuery.init(fcQNetworkProxyQuery_new10(struct_miqt_string(data: hostname, len: csize_t(len(hostname))), port, struct_miqt_string(data: protocolTag, len: csize_t(len(protocolTag)))))
proc create*(T: type QNetworkProxyQuery, hostname: string, port: cint, protocolTag: string, queryType: QNetworkProxyQueryQueryType): QNetworkProxyQuery =

  QNetworkProxyQuery.init(fcQNetworkProxyQuery_new11(struct_miqt_string(data: hostname, len: csize_t(len(hostname))), port, struct_miqt_string(data: protocolTag, len: csize_t(len(protocolTag))), cint(queryType)))
proc create*(T: type QNetworkProxyQuery, bindPort: cushort, protocolTag: string): QNetworkProxyQuery =

  QNetworkProxyQuery.init(fcQNetworkProxyQuery_new12(bindPort, struct_miqt_string(data: protocolTag, len: csize_t(len(protocolTag)))))
proc create*(T: type QNetworkProxyQuery, bindPort: cushort, protocolTag: string, queryType: QNetworkProxyQueryQueryType): QNetworkProxyQuery =

  QNetworkProxyQuery.init(fcQNetworkProxyQuery_new13(bindPort, struct_miqt_string(data: protocolTag, len: csize_t(len(protocolTag))), cint(queryType)))
proc create*(T: type QNetworkProxyQuery, networkConfiguration: gen_qnetworkconfiguration.QNetworkConfiguration, requestUrl: gen_qurl.QUrl, queryType: QNetworkProxyQueryQueryType): QNetworkProxyQuery =

  QNetworkProxyQuery.init(fcQNetworkProxyQuery_new14(networkConfiguration.h, requestUrl.h, cint(queryType)))
proc create*(T: type QNetworkProxyQuery, networkConfiguration: gen_qnetworkconfiguration.QNetworkConfiguration, hostname: string, port: cint, protocolTag: string): QNetworkProxyQuery =

  QNetworkProxyQuery.init(fcQNetworkProxyQuery_new15(networkConfiguration.h, struct_miqt_string(data: hostname, len: csize_t(len(hostname))), port, struct_miqt_string(data: protocolTag, len: csize_t(len(protocolTag)))))
proc create*(T: type QNetworkProxyQuery, networkConfiguration: gen_qnetworkconfiguration.QNetworkConfiguration, hostname: string, port: cint, protocolTag: string, queryType: QNetworkProxyQueryQueryType): QNetworkProxyQuery =

  QNetworkProxyQuery.init(fcQNetworkProxyQuery_new16(networkConfiguration.h, struct_miqt_string(data: hostname, len: csize_t(len(hostname))), port, struct_miqt_string(data: protocolTag, len: csize_t(len(protocolTag))), cint(queryType)))
proc create*(T: type QNetworkProxyQuery, networkConfiguration: gen_qnetworkconfiguration.QNetworkConfiguration, bindPort: cushort, protocolTag: string): QNetworkProxyQuery =

  QNetworkProxyQuery.init(fcQNetworkProxyQuery_new17(networkConfiguration.h, bindPort, struct_miqt_string(data: protocolTag, len: csize_t(len(protocolTag)))))
proc create*(T: type QNetworkProxyQuery, networkConfiguration: gen_qnetworkconfiguration.QNetworkConfiguration, bindPort: cushort, protocolTag: string, queryType: QNetworkProxyQueryQueryType): QNetworkProxyQuery =

  QNetworkProxyQuery.init(fcQNetworkProxyQuery_new18(networkConfiguration.h, bindPort, struct_miqt_string(data: protocolTag, len: csize_t(len(protocolTag))), cint(queryType)))
proc operatorAssign*(self: QNetworkProxyQuery, other: QNetworkProxyQuery): void =

  fcQNetworkProxyQuery_operatorAssign(self.h, other.h)

proc swap*(self: QNetworkProxyQuery, other: QNetworkProxyQuery): void =

  fcQNetworkProxyQuery_swap(self.h, other.h)

proc operatorEqual*(self: QNetworkProxyQuery, other: QNetworkProxyQuery): bool =

  fcQNetworkProxyQuery_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QNetworkProxyQuery, other: QNetworkProxyQuery): bool =

  fcQNetworkProxyQuery_operatorNotEqual(self.h, other.h)

proc queryType*(self: QNetworkProxyQuery, ): QNetworkProxyQueryQueryType =

  QNetworkProxyQueryQueryType(fcQNetworkProxyQuery_queryType(self.h))

proc setQueryType*(self: QNetworkProxyQuery, typeVal: QNetworkProxyQueryQueryType): void =

  fcQNetworkProxyQuery_setQueryType(self.h, cint(typeVal))

proc peerPort*(self: QNetworkProxyQuery, ): cint =

  fcQNetworkProxyQuery_peerPort(self.h)

proc setPeerPort*(self: QNetworkProxyQuery, port: cint): void =

  fcQNetworkProxyQuery_setPeerPort(self.h, port)

proc peerHostName*(self: QNetworkProxyQuery, ): string =

  let v_ms = fcQNetworkProxyQuery_peerHostName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPeerHostName*(self: QNetworkProxyQuery, hostname: string): void =

  fcQNetworkProxyQuery_setPeerHostName(self.h, struct_miqt_string(data: hostname, len: csize_t(len(hostname))))

proc localPort*(self: QNetworkProxyQuery, ): cint =

  fcQNetworkProxyQuery_localPort(self.h)

proc setLocalPort*(self: QNetworkProxyQuery, port: cint): void =

  fcQNetworkProxyQuery_setLocalPort(self.h, port)

proc protocolTag*(self: QNetworkProxyQuery, ): string =

  let v_ms = fcQNetworkProxyQuery_protocolTag(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setProtocolTag*(self: QNetworkProxyQuery, protocolTag: string): void =

  fcQNetworkProxyQuery_setProtocolTag(self.h, struct_miqt_string(data: protocolTag, len: csize_t(len(protocolTag))))

proc url*(self: QNetworkProxyQuery, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQNetworkProxyQuery_url(self.h))

proc setUrl*(self: QNetworkProxyQuery, url: gen_qurl.QUrl): void =

  fcQNetworkProxyQuery_setUrl(self.h, url.h)

proc networkConfiguration*(self: QNetworkProxyQuery, ): gen_qnetworkconfiguration.QNetworkConfiguration =

  gen_qnetworkconfiguration.QNetworkConfiguration(h: fcQNetworkProxyQuery_networkConfiguration(self.h))

proc setNetworkConfiguration*(self: QNetworkProxyQuery, networkConfiguration: gen_qnetworkconfiguration.QNetworkConfiguration): void =

  fcQNetworkProxyQuery_setNetworkConfiguration(self.h, networkConfiguration.h)

proc staticMetaObject*(_: type QNetworkProxyQuery): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQNetworkProxyQuery_staticMetaObject())
proc delete*(self: QNetworkProxyQuery) =
  fcQNetworkProxyQuery_delete(self.h)

func init*(T: type QNetworkProxy, h: ptr cQNetworkProxy): QNetworkProxy =
  T(h: h)
proc create*(T: type QNetworkProxy, ): QNetworkProxy =

  QNetworkProxy.init(fcQNetworkProxy_new())
proc create*(T: type QNetworkProxy, typeVal: QNetworkProxyProxyType): QNetworkProxy =

  QNetworkProxy.init(fcQNetworkProxy_new2(cint(typeVal)))
proc create*(T: type QNetworkProxy, other: QNetworkProxy): QNetworkProxy =

  QNetworkProxy.init(fcQNetworkProxy_new3(other.h))
proc create*(T: type QNetworkProxy, typeVal: QNetworkProxyProxyType, hostName: string): QNetworkProxy =

  QNetworkProxy.init(fcQNetworkProxy_new4(cint(typeVal), struct_miqt_string(data: hostName, len: csize_t(len(hostName)))))
proc create*(T: type QNetworkProxy, typeVal: QNetworkProxyProxyType, hostName: string, port: cushort): QNetworkProxy =

  QNetworkProxy.init(fcQNetworkProxy_new5(cint(typeVal), struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port))
proc create*(T: type QNetworkProxy, typeVal: QNetworkProxyProxyType, hostName: string, port: cushort, user: string): QNetworkProxy =

  QNetworkProxy.init(fcQNetworkProxy_new6(cint(typeVal), struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, struct_miqt_string(data: user, len: csize_t(len(user)))))
proc create*(T: type QNetworkProxy, typeVal: QNetworkProxyProxyType, hostName: string, port: cushort, user: string, password: string): QNetworkProxy =

  QNetworkProxy.init(fcQNetworkProxy_new7(cint(typeVal), struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, struct_miqt_string(data: user, len: csize_t(len(user))), struct_miqt_string(data: password, len: csize_t(len(password)))))
proc operatorAssign*(self: QNetworkProxy, other: QNetworkProxy): void =

  fcQNetworkProxy_operatorAssign(self.h, other.h)

proc swap*(self: QNetworkProxy, other: QNetworkProxy): void =

  fcQNetworkProxy_swap(self.h, other.h)

proc operatorEqual*(self: QNetworkProxy, other: QNetworkProxy): bool =

  fcQNetworkProxy_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QNetworkProxy, other: QNetworkProxy): bool =

  fcQNetworkProxy_operatorNotEqual(self.h, other.h)

proc setType*(self: QNetworkProxy, typeVal: QNetworkProxyProxyType): void =

  fcQNetworkProxy_setType(self.h, cint(typeVal))

proc typeX*(self: QNetworkProxy, ): QNetworkProxyProxyType =

  QNetworkProxyProxyType(fcQNetworkProxy_typeX(self.h))

proc setCapabilities*(self: QNetworkProxy, capab: QNetworkProxyCapability): void =

  fcQNetworkProxy_setCapabilities(self.h, cint(capab))

proc capabilities*(self: QNetworkProxy, ): QNetworkProxyCapability =

  QNetworkProxyCapability(fcQNetworkProxy_capabilities(self.h))

proc isCachingProxy*(self: QNetworkProxy, ): bool =

  fcQNetworkProxy_isCachingProxy(self.h)

proc isTransparentProxy*(self: QNetworkProxy, ): bool =

  fcQNetworkProxy_isTransparentProxy(self.h)

proc setUser*(self: QNetworkProxy, userName: string): void =

  fcQNetworkProxy_setUser(self.h, struct_miqt_string(data: userName, len: csize_t(len(userName))))

proc user*(self: QNetworkProxy, ): string =

  let v_ms = fcQNetworkProxy_user(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPassword*(self: QNetworkProxy, password: string): void =

  fcQNetworkProxy_setPassword(self.h, struct_miqt_string(data: password, len: csize_t(len(password))))

proc password*(self: QNetworkProxy, ): string =

  let v_ms = fcQNetworkProxy_password(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setHostName*(self: QNetworkProxy, hostName: string): void =

  fcQNetworkProxy_setHostName(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))))

proc hostName*(self: QNetworkProxy, ): string =

  let v_ms = fcQNetworkProxy_hostName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPort*(self: QNetworkProxy, port: cushort): void =

  fcQNetworkProxy_setPort(self.h, port)

proc port*(self: QNetworkProxy, ): cushort =

  fcQNetworkProxy_port(self.h)

proc setApplicationProxy*(_: type QNetworkProxy, proxy: QNetworkProxy): void =

  fcQNetworkProxy_setApplicationProxy(proxy.h)

proc applicationProxy*(_: type QNetworkProxy, ): QNetworkProxy =

  QNetworkProxy(h: fcQNetworkProxy_applicationProxy())

proc header*(self: QNetworkProxy, header: gen_qnetworkrequest.QNetworkRequestKnownHeaders): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQNetworkProxy_header(self.h, cint(header)))

proc setHeader*(self: QNetworkProxy, header: gen_qnetworkrequest.QNetworkRequestKnownHeaders, value: gen_qvariant.QVariant): void =

  fcQNetworkProxy_setHeader(self.h, cint(header), value.h)

proc hasRawHeader*(self: QNetworkProxy, headerName: seq[byte]): bool =

  fcQNetworkProxy_hasRawHeader(self.h, struct_miqt_string(data: cast[cstring](if len(headerName) == 0: nil else: unsafeAddr headerName[0]), len: csize_t(len(headerName))))

proc rawHeaderList*(self: QNetworkProxy, ): seq[seq[byte]] =

  var v_ma = fcQNetworkProxy_rawHeaderList(self.h)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc rawHeader*(self: QNetworkProxy, headerName: seq[byte]): seq[byte] =

  var v_bytearray = fcQNetworkProxy_rawHeader(self.h, struct_miqt_string(data: cast[cstring](if len(headerName) == 0: nil else: unsafeAddr headerName[0]), len: csize_t(len(headerName))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setRawHeader*(self: QNetworkProxy, headerName: seq[byte], value: seq[byte]): void =

  fcQNetworkProxy_setRawHeader(self.h, struct_miqt_string(data: cast[cstring](if len(headerName) == 0: nil else: unsafeAddr headerName[0]), len: csize_t(len(headerName))), struct_miqt_string(data: cast[cstring](if len(value) == 0: nil else: unsafeAddr value[0]), len: csize_t(len(value))))

proc delete*(self: QNetworkProxy) =
  fcQNetworkProxy_delete(self.h)

func init*(T: type QNetworkProxyFactory, h: ptr cQNetworkProxyFactory): QNetworkProxyFactory =
  T(h: h)
proc create*(T: type QNetworkProxyFactory, ): QNetworkProxyFactory =

  QNetworkProxyFactory.init(fcQNetworkProxyFactory_new())
proc queryProxy*(self: QNetworkProxyFactory, query: QNetworkProxyQuery): seq[QNetworkProxy] =

  var v_ma = fcQNetworkProxyFactory_queryProxy(self.h, query.h)
  var vx_ret = newSeq[QNetworkProxy](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QNetworkProxy(h: v_outCast[i])
  vx_ret

proc usesSystemConfiguration*(_: type QNetworkProxyFactory, ): bool =

  fcQNetworkProxyFactory_usesSystemConfiguration()

proc setUseSystemConfiguration*(_: type QNetworkProxyFactory, enable: bool): void =

  fcQNetworkProxyFactory_setUseSystemConfiguration(enable)

proc setApplicationProxyFactory*(_: type QNetworkProxyFactory, factory: QNetworkProxyFactory): void =

  fcQNetworkProxyFactory_setApplicationProxyFactory(factory.h)

proc proxyForQuery*(_: type QNetworkProxyFactory, query: QNetworkProxyQuery): seq[QNetworkProxy] =

  var v_ma = fcQNetworkProxyFactory_proxyForQuery(query.h)
  var vx_ret = newSeq[QNetworkProxy](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QNetworkProxy(h: v_outCast[i])
  vx_ret

proc systemProxyForQuery*(_: type QNetworkProxyFactory, ): seq[QNetworkProxy] =

  var v_ma = fcQNetworkProxyFactory_systemProxyForQuery()
  var vx_ret = newSeq[QNetworkProxy](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QNetworkProxy(h: v_outCast[i])
  vx_ret

proc operatorAssign*(self: QNetworkProxyFactory, param1: QNetworkProxyFactory): void =

  fcQNetworkProxyFactory_operatorAssign(self.h, param1.h)

proc systemProxyForQuery1*(_: type QNetworkProxyFactory, query: QNetworkProxyQuery): seq[QNetworkProxy] =

  var v_ma = fcQNetworkProxyFactory_systemProxyForQuery1(query.h)
  var vx_ret = newSeq[QNetworkProxy](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QNetworkProxy(h: v_outCast[i])
  vx_ret

type QNetworkProxyFactoryqueryProxyBase* = proc(query: QNetworkProxyQuery): seq[QNetworkProxy]
proc onqueryProxy*(self: QNetworkProxyFactory, slot: proc(query: QNetworkProxyQuery): seq[QNetworkProxy]) =
  # TODO check subclass
  type Cb = proc(query: QNetworkProxyQuery): seq[QNetworkProxy]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkProxyFactory_override_virtual_queryProxy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkProxyFactory_queryProxy(self: ptr cQNetworkProxyFactory, slot: int, query: pointer): struct_miqt_array {.exportc: "miqt_exec_callback_QNetworkProxyFactory_queryProxy ".} =
  type Cb = proc(query: QNetworkProxyQuery): seq[QNetworkProxy]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QNetworkProxyQuery(h: query)


  let virtualReturn = nimfunc[](slotval1 )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc delete*(self: QNetworkProxyFactory) =
  fcQNetworkProxyFactory_delete(self.h)
