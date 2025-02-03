import Qt5WebEngineWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5WebEngineWidgets")
{.compile("gen_qwebengineurlrequestinfo.cpp", cflags).}


type QWebEngineUrlRequestInfoResourceType* = cint
const
  QWebEngineUrlRequestInfoResourceTypeMainFrame* = 0
  QWebEngineUrlRequestInfoResourceTypeSubFrame* = 1
  QWebEngineUrlRequestInfoResourceTypeStylesheet* = 2
  QWebEngineUrlRequestInfoResourceTypeScript* = 3
  QWebEngineUrlRequestInfoResourceTypeImage* = 4
  QWebEngineUrlRequestInfoResourceTypeFontResource* = 5
  QWebEngineUrlRequestInfoResourceTypeSubResource* = 6
  QWebEngineUrlRequestInfoResourceTypeObject* = 7
  QWebEngineUrlRequestInfoResourceTypeMedia* = 8
  QWebEngineUrlRequestInfoResourceTypeWorker* = 9
  QWebEngineUrlRequestInfoResourceTypeSharedWorker* = 10
  QWebEngineUrlRequestInfoResourceTypePrefetch* = 11
  QWebEngineUrlRequestInfoResourceTypeFavicon* = 12
  QWebEngineUrlRequestInfoResourceTypeXhr* = 13
  QWebEngineUrlRequestInfoResourceTypePing* = 14
  QWebEngineUrlRequestInfoResourceTypeServiceWorker* = 15
  QWebEngineUrlRequestInfoResourceTypeCspReport* = 16
  QWebEngineUrlRequestInfoResourceTypePluginResource* = 17
  QWebEngineUrlRequestInfoResourceTypeNavigationPreloadMainFrame* = 19
  QWebEngineUrlRequestInfoResourceTypeNavigationPreloadSubFrame* = 20
  QWebEngineUrlRequestInfoResourceTypeLast* = 20
  QWebEngineUrlRequestInfoResourceTypeUnknown* = 255



type QWebEngineUrlRequestInfoNavigationType* = cint
const
  QWebEngineUrlRequestInfoNavigationTypeLink* = 0
  QWebEngineUrlRequestInfoNavigationTypeTyped* = 1
  QWebEngineUrlRequestInfoNavigationTypeFormSubmitted* = 2
  QWebEngineUrlRequestInfoNavigationTypeBackForward* = 3
  QWebEngineUrlRequestInfoNavigationTypeReload* = 4
  QWebEngineUrlRequestInfoNavigationTypeOther* = 5
  QWebEngineUrlRequestInfoNavigationTypeRedirect* = 6



import gen_qwebengineurlrequestinfo_types
export gen_qwebengineurlrequestinfo_types

import
  gen_qurl
export
  gen_qurl

type cQWebEngineUrlRequestInfo*{.exportc: "QWebEngineUrlRequestInfo", incompleteStruct.} = object

proc fcQWebEngineUrlRequestInfo_resourceType(self: pointer, ): cint {.importc: "QWebEngineUrlRequestInfo_resourceType".}
proc fcQWebEngineUrlRequestInfo_navigationType(self: pointer, ): cint {.importc: "QWebEngineUrlRequestInfo_navigationType".}
proc fcQWebEngineUrlRequestInfo_requestUrl(self: pointer, ): pointer {.importc: "QWebEngineUrlRequestInfo_requestUrl".}
proc fcQWebEngineUrlRequestInfo_firstPartyUrl(self: pointer, ): pointer {.importc: "QWebEngineUrlRequestInfo_firstPartyUrl".}
proc fcQWebEngineUrlRequestInfo_initiator(self: pointer, ): pointer {.importc: "QWebEngineUrlRequestInfo_initiator".}
proc fcQWebEngineUrlRequestInfo_requestMethod(self: pointer, ): struct_miqt_string {.importc: "QWebEngineUrlRequestInfo_requestMethod".}
proc fcQWebEngineUrlRequestInfo_changed(self: pointer, ): bool {.importc: "QWebEngineUrlRequestInfo_changed".}
proc fcQWebEngineUrlRequestInfo_blockX(self: pointer, shouldBlock: bool): void {.importc: "QWebEngineUrlRequestInfo_block".}
proc fcQWebEngineUrlRequestInfo_redirect(self: pointer, url: pointer): void {.importc: "QWebEngineUrlRequestInfo_redirect".}
proc fcQWebEngineUrlRequestInfo_setHttpHeader(self: pointer, name: struct_miqt_string, value: struct_miqt_string): void {.importc: "QWebEngineUrlRequestInfo_setHttpHeader".}


func init*(T: type QWebEngineUrlRequestInfo, h: ptr cQWebEngineUrlRequestInfo): QWebEngineUrlRequestInfo =
  T(h: h)
proc resourceType*(self: QWebEngineUrlRequestInfo, ): QWebEngineUrlRequestInfoResourceType =

  QWebEngineUrlRequestInfoResourceType(fcQWebEngineUrlRequestInfo_resourceType(self.h))

proc navigationType*(self: QWebEngineUrlRequestInfo, ): QWebEngineUrlRequestInfoNavigationType =

  QWebEngineUrlRequestInfoNavigationType(fcQWebEngineUrlRequestInfo_navigationType(self.h))

proc requestUrl*(self: QWebEngineUrlRequestInfo, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebEngineUrlRequestInfo_requestUrl(self.h))

proc firstPartyUrl*(self: QWebEngineUrlRequestInfo, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebEngineUrlRequestInfo_firstPartyUrl(self.h))

proc initiator*(self: QWebEngineUrlRequestInfo, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebEngineUrlRequestInfo_initiator(self.h))

proc requestMethod*(self: QWebEngineUrlRequestInfo, ): seq[byte] =

  var v_bytearray = fcQWebEngineUrlRequestInfo_requestMethod(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc changed*(self: QWebEngineUrlRequestInfo, ): bool =

  fcQWebEngineUrlRequestInfo_changed(self.h)

proc blockX*(self: QWebEngineUrlRequestInfo, shouldBlock: bool): void =

  fcQWebEngineUrlRequestInfo_blockX(self.h, shouldBlock)

proc redirect*(self: QWebEngineUrlRequestInfo, url: gen_qurl.QUrl): void =

  fcQWebEngineUrlRequestInfo_redirect(self.h, url.h)

proc setHttpHeader*(self: QWebEngineUrlRequestInfo, name: seq[byte], value: seq[byte]): void =

  fcQWebEngineUrlRequestInfo_setHttpHeader(self.h, struct_miqt_string(data: cast[cstring](if len(name) == 0: nil else: unsafeAddr name[0]), len: csize_t(len(name))), struct_miqt_string(data: cast[cstring](if len(value) == 0: nil else: unsafeAddr value[0]), len: csize_t(len(value))))

