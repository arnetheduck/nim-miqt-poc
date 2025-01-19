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
{.compile("gen_qwebengineloadinginfo.cpp", cflags).}


type QWebEngineLoadingInfoLoadStatus* = cint
const
  QWebEngineLoadingInfoLoadStartedStatus* = 0
  QWebEngineLoadingInfoLoadStoppedStatus* = 1
  QWebEngineLoadingInfoLoadSucceededStatus* = 2
  QWebEngineLoadingInfoLoadFailedStatus* = 3



type QWebEngineLoadingInfoErrorDomain* = cint
const
  QWebEngineLoadingInfoNoErrorDomain* = 0
  QWebEngineLoadingInfoInternalErrorDomain* = 1
  QWebEngineLoadingInfoConnectionErrorDomain* = 2
  QWebEngineLoadingInfoCertificateErrorDomain* = 3
  QWebEngineLoadingInfoHttpErrorDomain* = 4
  QWebEngineLoadingInfoFtpErrorDomain* = 5
  QWebEngineLoadingInfoDnsErrorDomain* = 6
  QWebEngineLoadingInfoHttpStatusCodeDomain* = 7



import gen_qwebengineloadinginfo_types
export gen_qwebengineloadinginfo_types

import
  gen_qobjectdefs,
  gen_qurl
export
  gen_qobjectdefs,
  gen_qurl

type cQWebEngineLoadingInfo*{.exportc: "QWebEngineLoadingInfo", incompleteStruct.} = object

proc fcQWebEngineLoadingInfo_new(other: pointer): ptr cQWebEngineLoadingInfo {.importc: "QWebEngineLoadingInfo_new".}
proc fcQWebEngineLoadingInfo_operatorAssign(self: pointer, other: pointer): void {.importc: "QWebEngineLoadingInfo_operatorAssign".}
proc fcQWebEngineLoadingInfo_url(self: pointer, ): pointer {.importc: "QWebEngineLoadingInfo_url".}
proc fcQWebEngineLoadingInfo_isErrorPage(self: pointer, ): bool {.importc: "QWebEngineLoadingInfo_isErrorPage".}
proc fcQWebEngineLoadingInfo_status(self: pointer, ): cint {.importc: "QWebEngineLoadingInfo_status".}
proc fcQWebEngineLoadingInfo_errorString(self: pointer, ): struct_miqt_string {.importc: "QWebEngineLoadingInfo_errorString".}
proc fcQWebEngineLoadingInfo_errorDomain(self: pointer, ): cint {.importc: "QWebEngineLoadingInfo_errorDomain".}
proc fcQWebEngineLoadingInfo_errorCode(self: pointer, ): cint {.importc: "QWebEngineLoadingInfo_errorCode".}
proc fcQWebEngineLoadingInfo_staticMetaObject(): pointer {.importc: "QWebEngineLoadingInfo_staticMetaObject".}
proc fcQWebEngineLoadingInfo_delete(self: pointer) {.importc: "QWebEngineLoadingInfo_delete".}


func init*(T: type QWebEngineLoadingInfo, h: ptr cQWebEngineLoadingInfo): QWebEngineLoadingInfo =
  T(h: h)
proc create*(T: type QWebEngineLoadingInfo, other: QWebEngineLoadingInfo): QWebEngineLoadingInfo =

  QWebEngineLoadingInfo.init(fcQWebEngineLoadingInfo_new(other.h))
proc operatorAssign*(self: QWebEngineLoadingInfo, other: QWebEngineLoadingInfo): void =

  fcQWebEngineLoadingInfo_operatorAssign(self.h, other.h)

proc url*(self: QWebEngineLoadingInfo, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebEngineLoadingInfo_url(self.h))

proc isErrorPage*(self: QWebEngineLoadingInfo, ): bool =

  fcQWebEngineLoadingInfo_isErrorPage(self.h)

proc status*(self: QWebEngineLoadingInfo, ): QWebEngineLoadingInfoLoadStatus =

  QWebEngineLoadingInfoLoadStatus(fcQWebEngineLoadingInfo_status(self.h))

proc errorString*(self: QWebEngineLoadingInfo, ): string =

  let v_ms = fcQWebEngineLoadingInfo_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc errorDomain*(self: QWebEngineLoadingInfo, ): QWebEngineLoadingInfoErrorDomain =

  QWebEngineLoadingInfoErrorDomain(fcQWebEngineLoadingInfo_errorDomain(self.h))

proc errorCode*(self: QWebEngineLoadingInfo, ): cint =

  fcQWebEngineLoadingInfo_errorCode(self.h)

proc staticMetaObject*(_: type QWebEngineLoadingInfo): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQWebEngineLoadingInfo_staticMetaObject())
proc delete*(self: QWebEngineLoadingInfo) =
  fcQWebEngineLoadingInfo_delete(self.h)
