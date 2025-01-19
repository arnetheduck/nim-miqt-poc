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
{.compile("gen_qwebenginefilesystemaccessrequest.cpp", cflags).}


type QWebEngineFileSystemAccessRequestHandleType* = cint
const
  QWebEngineFileSystemAccessRequestFile* = 0
  QWebEngineFileSystemAccessRequestDirectory* = 1



type QWebEngineFileSystemAccessRequestAccessFlag* = cint
const
  QWebEngineFileSystemAccessRequestRead* = 1
  QWebEngineFileSystemAccessRequestWrite* = 2



import gen_qwebenginefilesystemaccessrequest_types
export gen_qwebenginefilesystemaccessrequest_types

import
  gen_qobjectdefs,
  gen_qurl
export
  gen_qobjectdefs,
  gen_qurl

type cQWebEngineFileSystemAccessRequest*{.exportc: "QWebEngineFileSystemAccessRequest", incompleteStruct.} = object

proc fcQWebEngineFileSystemAccessRequest_new(other: pointer): ptr cQWebEngineFileSystemAccessRequest {.importc: "QWebEngineFileSystemAccessRequest_new".}
proc fcQWebEngineFileSystemAccessRequest_operatorAssign(self: pointer, other: pointer): void {.importc: "QWebEngineFileSystemAccessRequest_operatorAssign".}
proc fcQWebEngineFileSystemAccessRequest_swap(self: pointer, other: pointer): void {.importc: "QWebEngineFileSystemAccessRequest_swap".}
proc fcQWebEngineFileSystemAccessRequest_accept(self: pointer, ): void {.importc: "QWebEngineFileSystemAccessRequest_accept".}
proc fcQWebEngineFileSystemAccessRequest_reject(self: pointer, ): void {.importc: "QWebEngineFileSystemAccessRequest_reject".}
proc fcQWebEngineFileSystemAccessRequest_origin(self: pointer, ): pointer {.importc: "QWebEngineFileSystemAccessRequest_origin".}
proc fcQWebEngineFileSystemAccessRequest_filePath(self: pointer, ): pointer {.importc: "QWebEngineFileSystemAccessRequest_filePath".}
proc fcQWebEngineFileSystemAccessRequest_handleType(self: pointer, ): cint {.importc: "QWebEngineFileSystemAccessRequest_handleType".}
proc fcQWebEngineFileSystemAccessRequest_accessFlags(self: pointer, ): cint {.importc: "QWebEngineFileSystemAccessRequest_accessFlags".}
proc fcQWebEngineFileSystemAccessRequest_staticMetaObject(): pointer {.importc: "QWebEngineFileSystemAccessRequest_staticMetaObject".}
proc fcQWebEngineFileSystemAccessRequest_delete(self: pointer) {.importc: "QWebEngineFileSystemAccessRequest_delete".}


func init*(T: type QWebEngineFileSystemAccessRequest, h: ptr cQWebEngineFileSystemAccessRequest): QWebEngineFileSystemAccessRequest =
  T(h: h)
proc create*(T: type QWebEngineFileSystemAccessRequest, other: QWebEngineFileSystemAccessRequest): QWebEngineFileSystemAccessRequest =

  QWebEngineFileSystemAccessRequest.init(fcQWebEngineFileSystemAccessRequest_new(other.h))
proc operatorAssign*(self: QWebEngineFileSystemAccessRequest, other: QWebEngineFileSystemAccessRequest): void =

  fcQWebEngineFileSystemAccessRequest_operatorAssign(self.h, other.h)

proc swap*(self: QWebEngineFileSystemAccessRequest, other: QWebEngineFileSystemAccessRequest): void =

  fcQWebEngineFileSystemAccessRequest_swap(self.h, other.h)

proc accept*(self: QWebEngineFileSystemAccessRequest, ): void =

  fcQWebEngineFileSystemAccessRequest_accept(self.h)

proc reject*(self: QWebEngineFileSystemAccessRequest, ): void =

  fcQWebEngineFileSystemAccessRequest_reject(self.h)

proc origin*(self: QWebEngineFileSystemAccessRequest, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebEngineFileSystemAccessRequest_origin(self.h))

proc filePath*(self: QWebEngineFileSystemAccessRequest, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebEngineFileSystemAccessRequest_filePath(self.h))

proc handleType*(self: QWebEngineFileSystemAccessRequest, ): QWebEngineFileSystemAccessRequestHandleType =

  QWebEngineFileSystemAccessRequestHandleType(fcQWebEngineFileSystemAccessRequest_handleType(self.h))

proc accessFlags*(self: QWebEngineFileSystemAccessRequest, ): QWebEngineFileSystemAccessRequestAccessFlag =

  QWebEngineFileSystemAccessRequestAccessFlag(fcQWebEngineFileSystemAccessRequest_accessFlags(self.h))

proc staticMetaObject*(_: type QWebEngineFileSystemAccessRequest): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQWebEngineFileSystemAccessRequest_staticMetaObject())
proc delete*(self: QWebEngineFileSystemAccessRequest) =
  fcQWebEngineFileSystemAccessRequest_delete(self.h)
