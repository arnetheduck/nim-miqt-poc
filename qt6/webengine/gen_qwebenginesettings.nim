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
{.compile("gen_qwebenginesettings.cpp", cflags).}


type QWebEngineSettingsFontFamily* = cint
const
  QWebEngineSettingsStandardFont* = 0
  QWebEngineSettingsFixedFont* = 1
  QWebEngineSettingsSerifFont* = 2
  QWebEngineSettingsSansSerifFont* = 3
  QWebEngineSettingsCursiveFont* = 4
  QWebEngineSettingsFantasyFont* = 5
  QWebEngineSettingsPictographFont* = 6



type QWebEngineSettingsWebAttribute* = cint
const
  QWebEngineSettingsAutoLoadImages* = 0
  QWebEngineSettingsJavascriptEnabled* = 1
  QWebEngineSettingsJavascriptCanOpenWindows* = 2
  QWebEngineSettingsJavascriptCanAccessClipboard* = 3
  QWebEngineSettingsLinksIncludedInFocusChain* = 4
  QWebEngineSettingsLocalStorageEnabled* = 5
  QWebEngineSettingsLocalContentCanAccessRemoteUrls* = 6
  QWebEngineSettingsXSSAuditingEnabled* = 7
  QWebEngineSettingsSpatialNavigationEnabled* = 8
  QWebEngineSettingsLocalContentCanAccessFileUrls* = 9
  QWebEngineSettingsHyperlinkAuditingEnabled* = 10
  QWebEngineSettingsScrollAnimatorEnabled* = 11
  QWebEngineSettingsErrorPageEnabled* = 12
  QWebEngineSettingsPluginsEnabled* = 13
  QWebEngineSettingsFullScreenSupportEnabled* = 14
  QWebEngineSettingsScreenCaptureEnabled* = 15
  QWebEngineSettingsWebGLEnabled* = 16
  QWebEngineSettingsAccelerated2dCanvasEnabled* = 17
  QWebEngineSettingsAutoLoadIconsForPage* = 18
  QWebEngineSettingsTouchIconsEnabled* = 19
  QWebEngineSettingsFocusOnNavigationEnabled* = 20
  QWebEngineSettingsPrintElementBackgrounds* = 21
  QWebEngineSettingsAllowRunningInsecureContent* = 22
  QWebEngineSettingsAllowGeolocationOnInsecureOrigins* = 23
  QWebEngineSettingsAllowWindowActivationFromJavaScript* = 24
  QWebEngineSettingsShowScrollBars* = 25
  QWebEngineSettingsPlaybackRequiresUserGesture* = 26
  QWebEngineSettingsWebRTCPublicInterfacesOnly* = 27
  QWebEngineSettingsJavascriptCanPaste* = 28
  QWebEngineSettingsDnsPrefetchEnabled* = 29
  QWebEngineSettingsPdfViewerEnabled* = 30
  QWebEngineSettingsNavigateOnDropEnabled* = 31



type QWebEngineSettingsFontSize* = cint
const
  QWebEngineSettingsMinimumFontSize* = 0
  QWebEngineSettingsMinimumLogicalFontSize* = 1
  QWebEngineSettingsDefaultFontSize* = 2
  QWebEngineSettingsDefaultFixedFontSize* = 3



type QWebEngineSettingsUnknownUrlSchemePolicy* = cint
const
  QWebEngineSettingsInheritedUnknownUrlSchemePolicy* = 0
  QWebEngineSettingsDisallowUnknownUrlSchemes* = 1
  QWebEngineSettingsAllowUnknownUrlSchemesFromUserInteraction* = 2
  QWebEngineSettingsAllowAllUnknownUrlSchemes* = 3



import gen_qwebenginesettings_types
export gen_qwebenginesettings_types


type cQWebEngineSettings*{.exportc: "QWebEngineSettings", incompleteStruct.} = object

proc fcQWebEngineSettings_setFontFamily(self: pointer, which: cint, family: struct_miqt_string): void {.importc: "QWebEngineSettings_setFontFamily".}
proc fcQWebEngineSettings_fontFamily(self: pointer, which: cint): struct_miqt_string {.importc: "QWebEngineSettings_fontFamily".}
proc fcQWebEngineSettings_resetFontFamily(self: pointer, which: cint): void {.importc: "QWebEngineSettings_resetFontFamily".}
proc fcQWebEngineSettings_setFontSize(self: pointer, typeVal: cint, size: cint): void {.importc: "QWebEngineSettings_setFontSize".}
proc fcQWebEngineSettings_fontSize(self: pointer, typeVal: cint): cint {.importc: "QWebEngineSettings_fontSize".}
proc fcQWebEngineSettings_resetFontSize(self: pointer, typeVal: cint): void {.importc: "QWebEngineSettings_resetFontSize".}
proc fcQWebEngineSettings_setAttribute(self: pointer, attr: cint, on: bool): void {.importc: "QWebEngineSettings_setAttribute".}
proc fcQWebEngineSettings_testAttribute(self: pointer, attr: cint): bool {.importc: "QWebEngineSettings_testAttribute".}
proc fcQWebEngineSettings_resetAttribute(self: pointer, attr: cint): void {.importc: "QWebEngineSettings_resetAttribute".}
proc fcQWebEngineSettings_setDefaultTextEncoding(self: pointer, encoding: struct_miqt_string): void {.importc: "QWebEngineSettings_setDefaultTextEncoding".}
proc fcQWebEngineSettings_defaultTextEncoding(self: pointer, ): struct_miqt_string {.importc: "QWebEngineSettings_defaultTextEncoding".}
proc fcQWebEngineSettings_unknownUrlSchemePolicy(self: pointer, ): cint {.importc: "QWebEngineSettings_unknownUrlSchemePolicy".}
proc fcQWebEngineSettings_setUnknownUrlSchemePolicy(self: pointer, policy: cint): void {.importc: "QWebEngineSettings_setUnknownUrlSchemePolicy".}
proc fcQWebEngineSettings_resetUnknownUrlSchemePolicy(self: pointer, ): void {.importc: "QWebEngineSettings_resetUnknownUrlSchemePolicy".}
proc fcQWebEngineSettings_delete(self: pointer) {.importc: "QWebEngineSettings_delete".}


func init*(T: type QWebEngineSettings, h: ptr cQWebEngineSettings): QWebEngineSettings =
  T(h: h)
proc setFontFamily*(self: QWebEngineSettings, which: QWebEngineSettingsFontFamily, family: string): void =

  fcQWebEngineSettings_setFontFamily(self.h, cint(which), struct_miqt_string(data: family, len: csize_t(len(family))))

proc fontFamily*(self: QWebEngineSettings, which: QWebEngineSettingsFontFamily): string =

  let v_ms = fcQWebEngineSettings_fontFamily(self.h, cint(which))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc resetFontFamily*(self: QWebEngineSettings, which: QWebEngineSettingsFontFamily): void =

  fcQWebEngineSettings_resetFontFamily(self.h, cint(which))

proc setFontSize*(self: QWebEngineSettings, typeVal: QWebEngineSettingsFontSize, size: cint): void =

  fcQWebEngineSettings_setFontSize(self.h, cint(typeVal), size)

proc fontSize*(self: QWebEngineSettings, typeVal: QWebEngineSettingsFontSize): cint =

  fcQWebEngineSettings_fontSize(self.h, cint(typeVal))

proc resetFontSize*(self: QWebEngineSettings, typeVal: QWebEngineSettingsFontSize): void =

  fcQWebEngineSettings_resetFontSize(self.h, cint(typeVal))

proc setAttribute*(self: QWebEngineSettings, attr: QWebEngineSettingsWebAttribute, on: bool): void =

  fcQWebEngineSettings_setAttribute(self.h, cint(attr), on)

proc testAttribute*(self: QWebEngineSettings, attr: QWebEngineSettingsWebAttribute): bool =

  fcQWebEngineSettings_testAttribute(self.h, cint(attr))

proc resetAttribute*(self: QWebEngineSettings, attr: QWebEngineSettingsWebAttribute): void =

  fcQWebEngineSettings_resetAttribute(self.h, cint(attr))

proc setDefaultTextEncoding*(self: QWebEngineSettings, encoding: string): void =

  fcQWebEngineSettings_setDefaultTextEncoding(self.h, struct_miqt_string(data: encoding, len: csize_t(len(encoding))))

proc defaultTextEncoding*(self: QWebEngineSettings, ): string =

  let v_ms = fcQWebEngineSettings_defaultTextEncoding(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc unknownUrlSchemePolicy*(self: QWebEngineSettings, ): QWebEngineSettingsUnknownUrlSchemePolicy =

  QWebEngineSettingsUnknownUrlSchemePolicy(fcQWebEngineSettings_unknownUrlSchemePolicy(self.h))

proc setUnknownUrlSchemePolicy*(self: QWebEngineSettings, policy: QWebEngineSettingsUnknownUrlSchemePolicy): void =

  fcQWebEngineSettings_setUnknownUrlSchemePolicy(self.h, cint(policy))

proc resetUnknownUrlSchemePolicy*(self: QWebEngineSettings, ): void =

  fcQWebEngineSettings_resetUnknownUrlSchemePolicy(self.h)

proc delete*(self: QWebEngineSettings) =
  fcQWebEngineSettings_delete(self.h)
