import Qt6WebEngineWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt6WebEngineWidgets")
{.compile("gen_qwebengineprofile.cpp", cflags).}


type QWebEngineProfileHttpCacheType* = cint
const
  QWebEngineProfileMemoryHttpCache* = 0
  QWebEngineProfileDiskHttpCache* = 1
  QWebEngineProfileNoCache* = 2



type QWebEngineProfilePersistentCookiesPolicy* = cint
const
  QWebEngineProfileNoPersistentCookies* = 0
  QWebEngineProfileAllowPersistentCookies* = 1
  QWebEngineProfileForcePersistentCookies* = 2



import gen_qwebengineprofile_types
export gen_qwebengineprofile_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl,
  gen_qwebengineclientcertificatestore,
  gen_qwebenginecookiestore,
  gen_qwebenginedownloadrequest,
  gen_qwebenginescriptcollection,
  gen_qwebenginesettings,
  gen_qwebengineurlrequestinterceptor,
  gen_qwebengineurlschemehandler
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl,
  gen_qwebengineclientcertificatestore,
  gen_qwebenginecookiestore,
  gen_qwebenginedownloadrequest,
  gen_qwebenginescriptcollection,
  gen_qwebenginesettings,
  gen_qwebengineurlrequestinterceptor,
  gen_qwebengineurlschemehandler

type cQWebEngineProfile*{.exportc: "QWebEngineProfile", incompleteStruct.} = object

proc fcQWebEngineProfile_new(): ptr cQWebEngineProfile {.importc: "QWebEngineProfile_new".}
proc fcQWebEngineProfile_new2(name: struct_miqt_string): ptr cQWebEngineProfile {.importc: "QWebEngineProfile_new2".}
proc fcQWebEngineProfile_new3(parent: pointer): ptr cQWebEngineProfile {.importc: "QWebEngineProfile_new3".}
proc fcQWebEngineProfile_new4(name: struct_miqt_string, parent: pointer): ptr cQWebEngineProfile {.importc: "QWebEngineProfile_new4".}
proc fcQWebEngineProfile_metaObject(self: pointer, ): pointer {.importc: "QWebEngineProfile_metaObject".}
proc fcQWebEngineProfile_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineProfile_metacast".}
proc fcQWebEngineProfile_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineProfile_metacall".}
proc fcQWebEngineProfile_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineProfile_tr".}
proc fcQWebEngineProfile_storageName(self: pointer, ): struct_miqt_string {.importc: "QWebEngineProfile_storageName".}
proc fcQWebEngineProfile_isOffTheRecord(self: pointer, ): bool {.importc: "QWebEngineProfile_isOffTheRecord".}
proc fcQWebEngineProfile_persistentStoragePath(self: pointer, ): struct_miqt_string {.importc: "QWebEngineProfile_persistentStoragePath".}
proc fcQWebEngineProfile_setPersistentStoragePath(self: pointer, path: struct_miqt_string): void {.importc: "QWebEngineProfile_setPersistentStoragePath".}
proc fcQWebEngineProfile_cachePath(self: pointer, ): struct_miqt_string {.importc: "QWebEngineProfile_cachePath".}
proc fcQWebEngineProfile_setCachePath(self: pointer, path: struct_miqt_string): void {.importc: "QWebEngineProfile_setCachePath".}
proc fcQWebEngineProfile_httpUserAgent(self: pointer, ): struct_miqt_string {.importc: "QWebEngineProfile_httpUserAgent".}
proc fcQWebEngineProfile_setHttpUserAgent(self: pointer, userAgent: struct_miqt_string): void {.importc: "QWebEngineProfile_setHttpUserAgent".}
proc fcQWebEngineProfile_httpCacheType(self: pointer, ): cint {.importc: "QWebEngineProfile_httpCacheType".}
proc fcQWebEngineProfile_setHttpCacheType(self: pointer, httpCacheType: cint): void {.importc: "QWebEngineProfile_setHttpCacheType".}
proc fcQWebEngineProfile_setHttpAcceptLanguage(self: pointer, httpAcceptLanguage: struct_miqt_string): void {.importc: "QWebEngineProfile_setHttpAcceptLanguage".}
proc fcQWebEngineProfile_httpAcceptLanguage(self: pointer, ): struct_miqt_string {.importc: "QWebEngineProfile_httpAcceptLanguage".}
proc fcQWebEngineProfile_persistentCookiesPolicy(self: pointer, ): cint {.importc: "QWebEngineProfile_persistentCookiesPolicy".}
proc fcQWebEngineProfile_setPersistentCookiesPolicy(self: pointer, persistentCookiesPolicy: cint): void {.importc: "QWebEngineProfile_setPersistentCookiesPolicy".}
proc fcQWebEngineProfile_httpCacheMaximumSize(self: pointer, ): cint {.importc: "QWebEngineProfile_httpCacheMaximumSize".}
proc fcQWebEngineProfile_setHttpCacheMaximumSize(self: pointer, maxSize: cint): void {.importc: "QWebEngineProfile_setHttpCacheMaximumSize".}
proc fcQWebEngineProfile_cookieStore(self: pointer, ): pointer {.importc: "QWebEngineProfile_cookieStore".}
proc fcQWebEngineProfile_setUrlRequestInterceptor(self: pointer, interceptor: pointer): void {.importc: "QWebEngineProfile_setUrlRequestInterceptor".}
proc fcQWebEngineProfile_clearAllVisitedLinks(self: pointer, ): void {.importc: "QWebEngineProfile_clearAllVisitedLinks".}
proc fcQWebEngineProfile_clearVisitedLinks(self: pointer, urls: struct_miqt_array): void {.importc: "QWebEngineProfile_clearVisitedLinks".}
proc fcQWebEngineProfile_visitedLinksContainsUrl(self: pointer, url: pointer): bool {.importc: "QWebEngineProfile_visitedLinksContainsUrl".}
proc fcQWebEngineProfile_settings(self: pointer, ): pointer {.importc: "QWebEngineProfile_settings".}
proc fcQWebEngineProfile_scripts(self: pointer, ): pointer {.importc: "QWebEngineProfile_scripts".}
proc fcQWebEngineProfile_urlSchemeHandler(self: pointer, param1: struct_miqt_string): pointer {.importc: "QWebEngineProfile_urlSchemeHandler".}
proc fcQWebEngineProfile_installUrlSchemeHandler(self: pointer, scheme: struct_miqt_string, param2: pointer): void {.importc: "QWebEngineProfile_installUrlSchemeHandler".}
proc fcQWebEngineProfile_removeUrlScheme(self: pointer, scheme: struct_miqt_string): void {.importc: "QWebEngineProfile_removeUrlScheme".}
proc fcQWebEngineProfile_removeUrlSchemeHandler(self: pointer, param1: pointer): void {.importc: "QWebEngineProfile_removeUrlSchemeHandler".}
proc fcQWebEngineProfile_removeAllUrlSchemeHandlers(self: pointer, ): void {.importc: "QWebEngineProfile_removeAllUrlSchemeHandlers".}
proc fcQWebEngineProfile_clearHttpCache(self: pointer, ): void {.importc: "QWebEngineProfile_clearHttpCache".}
proc fcQWebEngineProfile_setSpellCheckLanguages(self: pointer, languages: struct_miqt_array): void {.importc: "QWebEngineProfile_setSpellCheckLanguages".}
proc fcQWebEngineProfile_spellCheckLanguages(self: pointer, ): struct_miqt_array {.importc: "QWebEngineProfile_spellCheckLanguages".}
proc fcQWebEngineProfile_setSpellCheckEnabled(self: pointer, enabled: bool): void {.importc: "QWebEngineProfile_setSpellCheckEnabled".}
proc fcQWebEngineProfile_isSpellCheckEnabled(self: pointer, ): bool {.importc: "QWebEngineProfile_isSpellCheckEnabled".}
proc fcQWebEngineProfile_downloadPath(self: pointer, ): struct_miqt_string {.importc: "QWebEngineProfile_downloadPath".}
proc fcQWebEngineProfile_setDownloadPath(self: pointer, path: struct_miqt_string): void {.importc: "QWebEngineProfile_setDownloadPath".}
proc fcQWebEngineProfile_clientCertificateStore(self: pointer, ): pointer {.importc: "QWebEngineProfile_clientCertificateStore".}
proc fcQWebEngineProfile_defaultProfile(): pointer {.importc: "QWebEngineProfile_defaultProfile".}
proc fcQWebEngineProfile_downloadRequested(self: pointer, download: pointer): void {.importc: "QWebEngineProfile_downloadRequested".}
proc fQWebEngineProfile_connect_downloadRequested(self: pointer, slot: int) {.importc: "QWebEngineProfile_connect_downloadRequested".}
proc fcQWebEngineProfile_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineProfile_tr2".}
proc fcQWebEngineProfile_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineProfile_tr3".}
proc fQWebEngineProfile_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QWebEngineProfile_virtualbase_metacall".}
proc fcQWebEngineProfile_override_virtual_metacall(self: pointer, slot: int) {.importc: "QWebEngineProfile_override_virtual_metacall".}
proc fQWebEngineProfile_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QWebEngineProfile_virtualbase_event".}
proc fcQWebEngineProfile_override_virtual_event(self: pointer, slot: int) {.importc: "QWebEngineProfile_override_virtual_event".}
proc fQWebEngineProfile_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWebEngineProfile_virtualbase_eventFilter".}
proc fcQWebEngineProfile_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWebEngineProfile_override_virtual_eventFilter".}
proc fQWebEngineProfile_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWebEngineProfile_virtualbase_timerEvent".}
proc fcQWebEngineProfile_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWebEngineProfile_override_virtual_timerEvent".}
proc fQWebEngineProfile_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWebEngineProfile_virtualbase_childEvent".}
proc fcQWebEngineProfile_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWebEngineProfile_override_virtual_childEvent".}
proc fQWebEngineProfile_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWebEngineProfile_virtualbase_customEvent".}
proc fcQWebEngineProfile_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWebEngineProfile_override_virtual_customEvent".}
proc fQWebEngineProfile_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWebEngineProfile_virtualbase_connectNotify".}
proc fcQWebEngineProfile_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWebEngineProfile_override_virtual_connectNotify".}
proc fQWebEngineProfile_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWebEngineProfile_virtualbase_disconnectNotify".}
proc fcQWebEngineProfile_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWebEngineProfile_override_virtual_disconnectNotify".}
proc fcQWebEngineProfile_staticMetaObject(): pointer {.importc: "QWebEngineProfile_staticMetaObject".}
proc fcQWebEngineProfile_delete(self: pointer) {.importc: "QWebEngineProfile_delete".}


func init*(T: type QWebEngineProfile, h: ptr cQWebEngineProfile): QWebEngineProfile =
  T(h: h)
proc create*(T: type QWebEngineProfile, ): QWebEngineProfile =

  QWebEngineProfile.init(fcQWebEngineProfile_new())
proc create*(T: type QWebEngineProfile, name: string): QWebEngineProfile =

  QWebEngineProfile.init(fcQWebEngineProfile_new2(struct_miqt_string(data: name, len: csize_t(len(name)))))
proc create*(T: type QWebEngineProfile, parent: gen_qobject.QObject): QWebEngineProfile =

  QWebEngineProfile.init(fcQWebEngineProfile_new3(parent.h))
proc create*(T: type QWebEngineProfile, name: string, parent: gen_qobject.QObject): QWebEngineProfile =

  QWebEngineProfile.init(fcQWebEngineProfile_new4(struct_miqt_string(data: name, len: csize_t(len(name))), parent.h))
proc metaObject*(self: QWebEngineProfile, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQWebEngineProfile_metaObject(self.h))

proc metacast*(self: QWebEngineProfile, param1: cstring): pointer =

  fcQWebEngineProfile_metacast(self.h, param1)

proc metacall*(self: QWebEngineProfile, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQWebEngineProfile_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QWebEngineProfile, s: cstring): string =

  let v_ms = fcQWebEngineProfile_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc storageName*(self: QWebEngineProfile, ): string =

  let v_ms = fcQWebEngineProfile_storageName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isOffTheRecord*(self: QWebEngineProfile, ): bool =

  fcQWebEngineProfile_isOffTheRecord(self.h)

proc persistentStoragePath*(self: QWebEngineProfile, ): string =

  let v_ms = fcQWebEngineProfile_persistentStoragePath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPersistentStoragePath*(self: QWebEngineProfile, path: string): void =

  fcQWebEngineProfile_setPersistentStoragePath(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))

proc cachePath*(self: QWebEngineProfile, ): string =

  let v_ms = fcQWebEngineProfile_cachePath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCachePath*(self: QWebEngineProfile, path: string): void =

  fcQWebEngineProfile_setCachePath(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))

proc httpUserAgent*(self: QWebEngineProfile, ): string =

  let v_ms = fcQWebEngineProfile_httpUserAgent(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setHttpUserAgent*(self: QWebEngineProfile, userAgent: string): void =

  fcQWebEngineProfile_setHttpUserAgent(self.h, struct_miqt_string(data: userAgent, len: csize_t(len(userAgent))))

proc httpCacheType*(self: QWebEngineProfile, ): QWebEngineProfileHttpCacheType =

  QWebEngineProfileHttpCacheType(fcQWebEngineProfile_httpCacheType(self.h))

proc setHttpCacheType*(self: QWebEngineProfile, httpCacheType: QWebEngineProfileHttpCacheType): void =

  fcQWebEngineProfile_setHttpCacheType(self.h, cint(httpCacheType))

proc setHttpAcceptLanguage*(self: QWebEngineProfile, httpAcceptLanguage: string): void =

  fcQWebEngineProfile_setHttpAcceptLanguage(self.h, struct_miqt_string(data: httpAcceptLanguage, len: csize_t(len(httpAcceptLanguage))))

proc httpAcceptLanguage*(self: QWebEngineProfile, ): string =

  let v_ms = fcQWebEngineProfile_httpAcceptLanguage(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc persistentCookiesPolicy*(self: QWebEngineProfile, ): QWebEngineProfilePersistentCookiesPolicy =

  QWebEngineProfilePersistentCookiesPolicy(fcQWebEngineProfile_persistentCookiesPolicy(self.h))

proc setPersistentCookiesPolicy*(self: QWebEngineProfile, persistentCookiesPolicy: QWebEngineProfilePersistentCookiesPolicy): void =

  fcQWebEngineProfile_setPersistentCookiesPolicy(self.h, cint(persistentCookiesPolicy))

proc httpCacheMaximumSize*(self: QWebEngineProfile, ): cint =

  fcQWebEngineProfile_httpCacheMaximumSize(self.h)

proc setHttpCacheMaximumSize*(self: QWebEngineProfile, maxSize: cint): void =

  fcQWebEngineProfile_setHttpCacheMaximumSize(self.h, maxSize)

proc cookieStore*(self: QWebEngineProfile, ): gen_qwebenginecookiestore.QWebEngineCookieStore =

  gen_qwebenginecookiestore.QWebEngineCookieStore(h: fcQWebEngineProfile_cookieStore(self.h))

proc setUrlRequestInterceptor*(self: QWebEngineProfile, interceptor: gen_qwebengineurlrequestinterceptor.QWebEngineUrlRequestInterceptor): void =

  fcQWebEngineProfile_setUrlRequestInterceptor(self.h, interceptor.h)

proc clearAllVisitedLinks*(self: QWebEngineProfile, ): void =

  fcQWebEngineProfile_clearAllVisitedLinks(self.h)

proc clearVisitedLinks*(self: QWebEngineProfile, urls: seq[gen_qurl.QUrl]): void =

  var urls_CArray = newSeq[pointer](len(urls))
  for i in 0..<len(urls):
    urls_CArray[i] = urls[i].h

  fcQWebEngineProfile_clearVisitedLinks(self.h, struct_miqt_array(len: csize_t(len(urls)), data: if len(urls) == 0: nil else: addr(urls_CArray[0])))

proc visitedLinksContainsUrl*(self: QWebEngineProfile, url: gen_qurl.QUrl): bool =

  fcQWebEngineProfile_visitedLinksContainsUrl(self.h, url.h)

proc settings*(self: QWebEngineProfile, ): gen_qwebenginesettings.QWebEngineSettings =

  gen_qwebenginesettings.QWebEngineSettings(h: fcQWebEngineProfile_settings(self.h))

proc scripts*(self: QWebEngineProfile, ): gen_qwebenginescriptcollection.QWebEngineScriptCollection =

  gen_qwebenginescriptcollection.QWebEngineScriptCollection(h: fcQWebEngineProfile_scripts(self.h))

proc urlSchemeHandler*(self: QWebEngineProfile, param1: seq[byte]): gen_qwebengineurlschemehandler.QWebEngineUrlSchemeHandler =

  gen_qwebengineurlschemehandler.QWebEngineUrlSchemeHandler(h: fcQWebEngineProfile_urlSchemeHandler(self.h, struct_miqt_string(data: cast[cstring](if len(param1) == 0: nil else: unsafeAddr param1[0]), len: csize_t(len(param1)))))

proc installUrlSchemeHandler*(self: QWebEngineProfile, scheme: seq[byte], param2: gen_qwebengineurlschemehandler.QWebEngineUrlSchemeHandler): void =

  fcQWebEngineProfile_installUrlSchemeHandler(self.h, struct_miqt_string(data: cast[cstring](if len(scheme) == 0: nil else: unsafeAddr scheme[0]), len: csize_t(len(scheme))), param2.h)

proc removeUrlScheme*(self: QWebEngineProfile, scheme: seq[byte]): void =

  fcQWebEngineProfile_removeUrlScheme(self.h, struct_miqt_string(data: cast[cstring](if len(scheme) == 0: nil else: unsafeAddr scheme[0]), len: csize_t(len(scheme))))

proc removeUrlSchemeHandler*(self: QWebEngineProfile, param1: gen_qwebengineurlschemehandler.QWebEngineUrlSchemeHandler): void =

  fcQWebEngineProfile_removeUrlSchemeHandler(self.h, param1.h)

proc removeAllUrlSchemeHandlers*(self: QWebEngineProfile, ): void =

  fcQWebEngineProfile_removeAllUrlSchemeHandlers(self.h)

proc clearHttpCache*(self: QWebEngineProfile, ): void =

  fcQWebEngineProfile_clearHttpCache(self.h)

proc setSpellCheckLanguages*(self: QWebEngineProfile, languages: seq[string]): void =

  var languages_CArray = newSeq[struct_miqt_string](len(languages))
  for i in 0..<len(languages):
    languages_CArray[i] = struct_miqt_string(data: languages[i], len: csize_t(len(languages[i])))

  fcQWebEngineProfile_setSpellCheckLanguages(self.h, struct_miqt_array(len: csize_t(len(languages)), data: if len(languages) == 0: nil else: addr(languages_CArray[0])))

proc spellCheckLanguages*(self: QWebEngineProfile, ): seq[string] =

  var v_ma = fcQWebEngineProfile_spellCheckLanguages(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setSpellCheckEnabled*(self: QWebEngineProfile, enabled: bool): void =

  fcQWebEngineProfile_setSpellCheckEnabled(self.h, enabled)

proc isSpellCheckEnabled*(self: QWebEngineProfile, ): bool =

  fcQWebEngineProfile_isSpellCheckEnabled(self.h)

proc downloadPath*(self: QWebEngineProfile, ): string =

  let v_ms = fcQWebEngineProfile_downloadPath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDownloadPath*(self: QWebEngineProfile, path: string): void =

  fcQWebEngineProfile_setDownloadPath(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))

proc clientCertificateStore*(self: QWebEngineProfile, ): gen_qwebengineclientcertificatestore.QWebEngineClientCertificateStore =

  gen_qwebengineclientcertificatestore.QWebEngineClientCertificateStore(h: fcQWebEngineProfile_clientCertificateStore(self.h))

proc defaultProfile*(_: type QWebEngineProfile, ): QWebEngineProfile =

  QWebEngineProfile(h: fcQWebEngineProfile_defaultProfile())

proc downloadRequested*(self: QWebEngineProfile, download: gen_qwebenginedownloadrequest.QWebEngineDownloadRequest): void =

  fcQWebEngineProfile_downloadRequested(self.h, download.h)

proc miqt_exec_callback_QWebEngineProfile_downloadRequested(slot: int, download: pointer) {.exportc.} =
  type Cb = proc(download: gen_qwebenginedownloadrequest.QWebEngineDownloadRequest)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qwebenginedownloadrequest.QWebEngineDownloadRequest(h: download)


  nimfunc[](slotval1)

proc ondownloadRequested*(self: QWebEngineProfile, slot: proc(download: gen_qwebenginedownloadrequest.QWebEngineDownloadRequest)) =
  type Cb = proc(download: gen_qwebenginedownloadrequest.QWebEngineDownloadRequest)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEngineProfile_connect_downloadRequested(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QWebEngineProfile, s: cstring, c: cstring): string =

  let v_ms = fcQWebEngineProfile_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QWebEngineProfile, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebEngineProfile_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QWebEngineProfile, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQWebEngineProfile_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QWebEngineProfilemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QWebEngineProfile, slot: proc(super: QWebEngineProfilemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineProfilemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineProfile_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineProfile_metacall(self: ptr cQWebEngineProfile, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QWebEngineProfile_metacall ".} =
  type Cb = proc(super: QWebEngineProfilemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QWebEngineProfile(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QWebEngineProfile, event: gen_qcoreevent.QEvent): bool =


  fQWebEngineProfile_virtualbase_event(self.h, event.h)

type QWebEngineProfileeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QWebEngineProfile, slot: proc(super: QWebEngineProfileeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineProfileeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineProfile_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineProfile_event(self: ptr cQWebEngineProfile, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QWebEngineProfile_event ".} =
  type Cb = proc(super: QWebEngineProfileeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QWebEngineProfile(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QWebEngineProfile, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQWebEngineProfile_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWebEngineProfileeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QWebEngineProfile, slot: proc(super: QWebEngineProfileeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineProfileeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineProfile_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineProfile_eventFilter(self: ptr cQWebEngineProfile, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWebEngineProfile_eventFilter ".} =
  type Cb = proc(super: QWebEngineProfileeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QWebEngineProfile(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QWebEngineProfile, event: gen_qcoreevent.QTimerEvent): void =


  fQWebEngineProfile_virtualbase_timerEvent(self.h, event.h)

type QWebEngineProfiletimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QWebEngineProfile, slot: proc(super: QWebEngineProfiletimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineProfiletimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineProfile_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineProfile_timerEvent(self: ptr cQWebEngineProfile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineProfile_timerEvent ".} =
  type Cb = proc(super: QWebEngineProfiletimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QWebEngineProfile(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QWebEngineProfile, event: gen_qcoreevent.QChildEvent): void =


  fQWebEngineProfile_virtualbase_childEvent(self.h, event.h)

type QWebEngineProfilechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QWebEngineProfile, slot: proc(super: QWebEngineProfilechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineProfilechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineProfile_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineProfile_childEvent(self: ptr cQWebEngineProfile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineProfile_childEvent ".} =
  type Cb = proc(super: QWebEngineProfilechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QWebEngineProfile(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QWebEngineProfile, event: gen_qcoreevent.QEvent): void =


  fQWebEngineProfile_virtualbase_customEvent(self.h, event.h)

type QWebEngineProfilecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QWebEngineProfile, slot: proc(super: QWebEngineProfilecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineProfilecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineProfile_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineProfile_customEvent(self: ptr cQWebEngineProfile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineProfile_customEvent ".} =
  type Cb = proc(super: QWebEngineProfilecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QWebEngineProfile(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QWebEngineProfile, signal: gen_qmetaobject.QMetaMethod): void =


  fQWebEngineProfile_virtualbase_connectNotify(self.h, signal.h)

type QWebEngineProfileconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QWebEngineProfile, slot: proc(super: QWebEngineProfileconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineProfileconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineProfile_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineProfile_connectNotify(self: ptr cQWebEngineProfile, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebEngineProfile_connectNotify ".} =
  type Cb = proc(super: QWebEngineProfileconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QWebEngineProfile(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QWebEngineProfile, signal: gen_qmetaobject.QMetaMethod): void =


  fQWebEngineProfile_virtualbase_disconnectNotify(self.h, signal.h)

type QWebEngineProfiledisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QWebEngineProfile, slot: proc(super: QWebEngineProfiledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineProfiledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineProfile_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineProfile_disconnectNotify(self: ptr cQWebEngineProfile, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebEngineProfile_disconnectNotify ".} =
  type Cb = proc(super: QWebEngineProfiledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QWebEngineProfile(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QWebEngineProfile): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQWebEngineProfile_staticMetaObject())
proc delete*(self: QWebEngineProfile) =
  fcQWebEngineProfile_delete(self.h)
