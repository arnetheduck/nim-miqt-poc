import Qt5WebKitWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5WebKitWidgets")
{.compile("gen_qwebsettings.cpp", cflags).}


type QWebSettingsFontFamily* = cint
const
  QWebSettingsStandardFont* = 0
  QWebSettingsFixedFont* = 1
  QWebSettingsSerifFont* = 2
  QWebSettingsSansSerifFont* = 3
  QWebSettingsCursiveFont* = 4
  QWebSettingsFantasyFont* = 5



type QWebSettingsWebAttribute* = cint
const
  QWebSettingsAutoLoadImages* = 0
  QWebSettingsJavascriptEnabled* = 1
  QWebSettingsJavaEnabled* = 2
  QWebSettingsPluginsEnabled* = 3
  QWebSettingsPrivateBrowsingEnabled* = 4
  QWebSettingsJavascriptCanOpenWindows* = 5
  QWebSettingsJavascriptCanAccessClipboard* = 6
  QWebSettingsDeveloperExtrasEnabled* = 7
  QWebSettingsLinksIncludedInFocusChain* = 8
  QWebSettingsZoomTextOnly* = 9
  QWebSettingsPrintElementBackgrounds* = 10
  QWebSettingsOfflineStorageDatabaseEnabled* = 11
  QWebSettingsOfflineWebApplicationCacheEnabled* = 12
  QWebSettingsLocalStorageEnabled* = 13
  QWebSettingsLocalStorageDatabaseEnabled* = 13
  QWebSettingsLocalContentCanAccessRemoteUrls* = 14
  QWebSettingsDnsPrefetchEnabled* = 15
  QWebSettingsXSSAuditingEnabled* = 16
  QWebSettingsAcceleratedCompositingEnabled* = 17
  QWebSettingsSpatialNavigationEnabled* = 18
  QWebSettingsLocalContentCanAccessFileUrls* = 19
  QWebSettingsTiledBackingStoreEnabled* = 20
  QWebSettingsFrameFlatteningEnabled* = 21
  QWebSettingsSiteSpecificQuirksEnabled* = 22
  QWebSettingsJavascriptCanCloseWindows* = 23
  QWebSettingsWebGLEnabled* = 24
  QWebSettingsCSSRegionsEnabled* = 25
  QWebSettingsHyperlinkAuditingEnabled* = 26
  QWebSettingsCSSGridLayoutEnabled* = 27
  QWebSettingsScrollAnimatorEnabled* = 28
  QWebSettingsCaretBrowsingEnabled* = 29
  QWebSettingsNotificationsEnabled* = 30
  QWebSettingsWebAudioEnabled* = 31
  QWebSettingsAccelerated2dCanvasEnabled* = 32
  QWebSettingsMediaSourceEnabled* = 33
  QWebSettingsMediaEnabled* = 34
  QWebSettingsWebSecurityEnabled* = 35
  QWebSettingsFullScreenSupportEnabled* = 36
  QWebSettingsImagesEnabled* = 37
  QWebSettingsAllowRunningInsecureContent* = 38
  QWebSettingsErrorPageEnabled* = 39



type QWebSettingsWebGraphic* = cint
const
  QWebSettingsMissingImageGraphic* = 0
  QWebSettingsMissingPluginGraphic* = 1
  QWebSettingsDefaultFrameIconGraphic* = 2
  QWebSettingsTextAreaSizeGripCornerGraphic* = 3
  QWebSettingsDeleteButtonGraphic* = 4
  QWebSettingsInputSpeechButtonGraphic* = 5
  QWebSettingsSearchCancelButtonGraphic* = 6
  QWebSettingsSearchCancelButtonPressedGraphic* = 7



type QWebSettingsFontSize* = cint
const
  QWebSettingsMinimumFontSize* = 0
  QWebSettingsMinimumLogicalFontSize* = 1
  QWebSettingsDefaultFontSize* = 2
  QWebSettingsDefaultFixedFontSize* = 3



type QWebSettingsThirdPartyCookiePolicy* = cint
const
  QWebSettingsAlwaysAllowThirdPartyCookies* = 0
  QWebSettingsAlwaysBlockThirdPartyCookies* = 1
  QWebSettingsAllowThirdPartyWithExistingCookies* = 2



import gen_qwebsettings_types
export gen_qwebsettings_types

import
  gen_qicon,
  gen_qpixmap,
  gen_qurl
export
  gen_qicon,
  gen_qpixmap,
  gen_qurl

type cQWebSettings*{.exportc: "QWebSettings", incompleteStruct.} = object

proc fcQWebSettings_globalSettings(): pointer {.importc: "QWebSettings_globalSettings".}
proc fcQWebSettings_setFontFamily(self: pointer, which: cint, family: struct_miqt_string): void {.importc: "QWebSettings_setFontFamily".}
proc fcQWebSettings_fontFamily(self: pointer, which: cint): struct_miqt_string {.importc: "QWebSettings_fontFamily".}
proc fcQWebSettings_resetFontFamily(self: pointer, which: cint): void {.importc: "QWebSettings_resetFontFamily".}
proc fcQWebSettings_setFontSize(self: pointer, typeVal: cint, size: cint): void {.importc: "QWebSettings_setFontSize".}
proc fcQWebSettings_fontSize(self: pointer, typeVal: cint): cint {.importc: "QWebSettings_fontSize".}
proc fcQWebSettings_resetFontSize(self: pointer, typeVal: cint): void {.importc: "QWebSettings_resetFontSize".}
proc fcQWebSettings_setAttribute(self: pointer, attr: cint, on: bool): void {.importc: "QWebSettings_setAttribute".}
proc fcQWebSettings_testAttribute(self: pointer, attr: cint): bool {.importc: "QWebSettings_testAttribute".}
proc fcQWebSettings_resetAttribute(self: pointer, attr: cint): void {.importc: "QWebSettings_resetAttribute".}
proc fcQWebSettings_setUserStyleSheetUrl(self: pointer, location: pointer): void {.importc: "QWebSettings_setUserStyleSheetUrl".}
proc fcQWebSettings_userStyleSheetUrl(self: pointer, ): pointer {.importc: "QWebSettings_userStyleSheetUrl".}
proc fcQWebSettings_setDefaultTextEncoding(self: pointer, encoding: struct_miqt_string): void {.importc: "QWebSettings_setDefaultTextEncoding".}
proc fcQWebSettings_defaultTextEncoding(self: pointer, ): struct_miqt_string {.importc: "QWebSettings_defaultTextEncoding".}
proc fcQWebSettings_setIconDatabasePath(location: struct_miqt_string): void {.importc: "QWebSettings_setIconDatabasePath".}
proc fcQWebSettings_iconDatabasePath(): struct_miqt_string {.importc: "QWebSettings_iconDatabasePath".}
proc fcQWebSettings_clearIconDatabase(): void {.importc: "QWebSettings_clearIconDatabase".}
proc fcQWebSettings_iconForUrl(url: pointer): pointer {.importc: "QWebSettings_iconForUrl".}
proc fcQWebSettings_setPluginSearchPaths(paths: struct_miqt_array): void {.importc: "QWebSettings_setPluginSearchPaths".}
proc fcQWebSettings_pluginSearchPaths(): struct_miqt_array {.importc: "QWebSettings_pluginSearchPaths".}
proc fcQWebSettings_setWebGraphic(typeVal: cint, graphic: pointer): void {.importc: "QWebSettings_setWebGraphic".}
proc fcQWebSettings_webGraphic(typeVal: cint): pointer {.importc: "QWebSettings_webGraphic".}
proc fcQWebSettings_setMaximumPagesInCache(pages: cint): void {.importc: "QWebSettings_setMaximumPagesInCache".}
proc fcQWebSettings_maximumPagesInCache(): cint {.importc: "QWebSettings_maximumPagesInCache".}
proc fcQWebSettings_setObjectCacheCapacities(cacheMinDeadCapacity: cint, cacheMaxDead: cint, totalCapacity: cint): void {.importc: "QWebSettings_setObjectCacheCapacities".}
proc fcQWebSettings_setOfflineStoragePath(path: struct_miqt_string): void {.importc: "QWebSettings_setOfflineStoragePath".}
proc fcQWebSettings_offlineStoragePath(): struct_miqt_string {.importc: "QWebSettings_offlineStoragePath".}
proc fcQWebSettings_setOfflineStorageDefaultQuota(maximumSize: clonglong): void {.importc: "QWebSettings_setOfflineStorageDefaultQuota".}
proc fcQWebSettings_offlineStorageDefaultQuota(): clonglong {.importc: "QWebSettings_offlineStorageDefaultQuota".}
proc fcQWebSettings_setOfflineWebApplicationCachePath(path: struct_miqt_string): void {.importc: "QWebSettings_setOfflineWebApplicationCachePath".}
proc fcQWebSettings_offlineWebApplicationCachePath(): struct_miqt_string {.importc: "QWebSettings_offlineWebApplicationCachePath".}
proc fcQWebSettings_setOfflineWebApplicationCacheQuota(maximumSize: clonglong): void {.importc: "QWebSettings_setOfflineWebApplicationCacheQuota".}
proc fcQWebSettings_offlineWebApplicationCacheQuota(): clonglong {.importc: "QWebSettings_offlineWebApplicationCacheQuota".}
proc fcQWebSettings_setLocalStoragePath(self: pointer, path: struct_miqt_string): void {.importc: "QWebSettings_setLocalStoragePath".}
proc fcQWebSettings_localStoragePath(self: pointer, ): struct_miqt_string {.importc: "QWebSettings_localStoragePath".}
proc fcQWebSettings_clearMemoryCaches(): void {.importc: "QWebSettings_clearMemoryCaches".}
proc fcQWebSettings_enablePersistentStorage(): void {.importc: "QWebSettings_enablePersistentStorage".}
proc fcQWebSettings_setThirdPartyCookiePolicy(self: pointer, thirdPartyCookiePolicy: cint): void {.importc: "QWebSettings_setThirdPartyCookiePolicy".}
proc fcQWebSettings_thirdPartyCookiePolicy(self: pointer, ): cint {.importc: "QWebSettings_thirdPartyCookiePolicy".}
proc fcQWebSettings_setCSSMediaType(self: pointer, cSSMediaType: struct_miqt_string): void {.importc: "QWebSettings_setCSSMediaType".}
proc fcQWebSettings_cssMediaType(self: pointer, ): struct_miqt_string {.importc: "QWebSettings_cssMediaType".}
proc fcQWebSettings_enablePersistentStorage1(path: struct_miqt_string): void {.importc: "QWebSettings_enablePersistentStorage1".}


func init*(T: type QWebSettings, h: ptr cQWebSettings): QWebSettings =
  T(h: h)
proc globalSettings*(_: type QWebSettings, ): QWebSettings =

  QWebSettings(h: fcQWebSettings_globalSettings())

proc setFontFamily*(self: QWebSettings, which: QWebSettingsFontFamily, family: string): void =

  fcQWebSettings_setFontFamily(self.h, cint(which), struct_miqt_string(data: family, len: csize_t(len(family))))

proc fontFamily*(self: QWebSettings, which: QWebSettingsFontFamily): string =

  let v_ms = fcQWebSettings_fontFamily(self.h, cint(which))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc resetFontFamily*(self: QWebSettings, which: QWebSettingsFontFamily): void =

  fcQWebSettings_resetFontFamily(self.h, cint(which))

proc setFontSize*(self: QWebSettings, typeVal: QWebSettingsFontSize, size: cint): void =

  fcQWebSettings_setFontSize(self.h, cint(typeVal), size)

proc fontSize*(self: QWebSettings, typeVal: QWebSettingsFontSize): cint =

  fcQWebSettings_fontSize(self.h, cint(typeVal))

proc resetFontSize*(self: QWebSettings, typeVal: QWebSettingsFontSize): void =

  fcQWebSettings_resetFontSize(self.h, cint(typeVal))

proc setAttribute*(self: QWebSettings, attr: QWebSettingsWebAttribute, on: bool): void =

  fcQWebSettings_setAttribute(self.h, cint(attr), on)

proc testAttribute*(self: QWebSettings, attr: QWebSettingsWebAttribute): bool =

  fcQWebSettings_testAttribute(self.h, cint(attr))

proc resetAttribute*(self: QWebSettings, attr: QWebSettingsWebAttribute): void =

  fcQWebSettings_resetAttribute(self.h, cint(attr))

proc setUserStyleSheetUrl*(self: QWebSettings, location: gen_qurl.QUrl): void =

  fcQWebSettings_setUserStyleSheetUrl(self.h, location.h)

proc userStyleSheetUrl*(self: QWebSettings, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebSettings_userStyleSheetUrl(self.h))

proc setDefaultTextEncoding*(self: QWebSettings, encoding: string): void =

  fcQWebSettings_setDefaultTextEncoding(self.h, struct_miqt_string(data: encoding, len: csize_t(len(encoding))))

proc defaultTextEncoding*(self: QWebSettings, ): string =

  let v_ms = fcQWebSettings_defaultTextEncoding(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setIconDatabasePath*(_: type QWebSettings, location: string): void =

  fcQWebSettings_setIconDatabasePath(struct_miqt_string(data: location, len: csize_t(len(location))))

proc iconDatabasePath*(_: type QWebSettings, ): string =

  let v_ms = fcQWebSettings_iconDatabasePath()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc clearIconDatabase*(_: type QWebSettings, ): void =

  fcQWebSettings_clearIconDatabase()

proc iconForUrl*(_: type QWebSettings, url: gen_qurl.QUrl): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQWebSettings_iconForUrl(url.h))

proc setPluginSearchPaths*(_: type QWebSettings, paths: seq[string]): void =

  var paths_CArray = newSeq[struct_miqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_miqt_string(data: paths[i], len: csize_t(len(paths[i])))

  fcQWebSettings_setPluginSearchPaths(struct_miqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0])))

proc pluginSearchPaths*(_: type QWebSettings, ): seq[string] =

  var v_ma = fcQWebSettings_pluginSearchPaths()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setWebGraphic*(_: type QWebSettings, typeVal: QWebSettingsWebGraphic, graphic: gen_qpixmap.QPixmap): void =

  fcQWebSettings_setWebGraphic(cint(typeVal), graphic.h)

proc webGraphic*(_: type QWebSettings, typeVal: QWebSettingsWebGraphic): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQWebSettings_webGraphic(cint(typeVal)))

proc setMaximumPagesInCache*(_: type QWebSettings, pages: cint): void =

  fcQWebSettings_setMaximumPagesInCache(pages)

proc maximumPagesInCache*(_: type QWebSettings, ): cint =

  fcQWebSettings_maximumPagesInCache()

proc setObjectCacheCapacities*(_: type QWebSettings, cacheMinDeadCapacity: cint, cacheMaxDead: cint, totalCapacity: cint): void =

  fcQWebSettings_setObjectCacheCapacities(cacheMinDeadCapacity, cacheMaxDead, totalCapacity)

proc setOfflineStoragePath*(_: type QWebSettings, path: string): void =

  fcQWebSettings_setOfflineStoragePath(struct_miqt_string(data: path, len: csize_t(len(path))))

proc offlineStoragePath*(_: type QWebSettings, ): string =

  let v_ms = fcQWebSettings_offlineStoragePath()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOfflineStorageDefaultQuota*(_: type QWebSettings, maximumSize: clonglong): void =

  fcQWebSettings_setOfflineStorageDefaultQuota(maximumSize)

proc offlineStorageDefaultQuota*(_: type QWebSettings, ): clonglong =

  fcQWebSettings_offlineStorageDefaultQuota()

proc setOfflineWebApplicationCachePath*(_: type QWebSettings, path: string): void =

  fcQWebSettings_setOfflineWebApplicationCachePath(struct_miqt_string(data: path, len: csize_t(len(path))))

proc offlineWebApplicationCachePath*(_: type QWebSettings, ): string =

  let v_ms = fcQWebSettings_offlineWebApplicationCachePath()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOfflineWebApplicationCacheQuota*(_: type QWebSettings, maximumSize: clonglong): void =

  fcQWebSettings_setOfflineWebApplicationCacheQuota(maximumSize)

proc offlineWebApplicationCacheQuota*(_: type QWebSettings, ): clonglong =

  fcQWebSettings_offlineWebApplicationCacheQuota()

proc setLocalStoragePath*(self: QWebSettings, path: string): void =

  fcQWebSettings_setLocalStoragePath(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))

proc localStoragePath*(self: QWebSettings, ): string =

  let v_ms = fcQWebSettings_localStoragePath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc clearMemoryCaches*(_: type QWebSettings, ): void =

  fcQWebSettings_clearMemoryCaches()

proc enablePersistentStorage*(_: type QWebSettings, ): void =

  fcQWebSettings_enablePersistentStorage()

proc setThirdPartyCookiePolicy*(self: QWebSettings, thirdPartyCookiePolicy: QWebSettingsThirdPartyCookiePolicy): void =

  fcQWebSettings_setThirdPartyCookiePolicy(self.h, cint(thirdPartyCookiePolicy))

proc thirdPartyCookiePolicy*(self: QWebSettings, ): QWebSettingsThirdPartyCookiePolicy =

  QWebSettingsThirdPartyCookiePolicy(fcQWebSettings_thirdPartyCookiePolicy(self.h))

proc setCSSMediaType*(self: QWebSettings, cSSMediaType: string): void =

  fcQWebSettings_setCSSMediaType(self.h, struct_miqt_string(data: cSSMediaType, len: csize_t(len(cSSMediaType))))

proc cssMediaType*(self: QWebSettings, ): string =

  let v_ms = fcQWebSettings_cssMediaType(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc enablePersistentStorage1*(_: type QWebSettings, path: string): void =

  fcQWebSettings_enablePersistentStorage1(struct_miqt_string(data: path, len: csize_t(len(path))))

