import Qt5Quick_libs

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

const cflags = gorge("pkg-config -cflags Qt5Quick")
{.compile("gen_qqmlfile.cpp", cflags).}


type QQmlFileStatusEnum* = distinct cint
template Null*(_: type QQmlFileStatusEnum): untyped = 0
template Ready*(_: type QQmlFileStatusEnum): untyped = 1
template Error*(_: type QQmlFileStatusEnum): untyped = 2
template Loading*(_: type QQmlFileStatusEnum): untyped = 3


import gen_qqmlfile_types
export gen_qqmlfile_types

import
  gen_qobject,
  gen_qqmlengine,
  gen_qurl
export
  gen_qobject,
  gen_qqmlengine,
  gen_qurl

type cQQmlFile*{.exportc: "QQmlFile", incompleteStruct.} = object

proc fcQQmlFile_new(): ptr cQQmlFile {.importc: "QQmlFile_new".}
proc fcQQmlFile_new2(param1: pointer, param2: pointer): ptr cQQmlFile {.importc: "QQmlFile_new2".}
proc fcQQmlFile_new3(param1: pointer, param2: struct_miqt_string): ptr cQQmlFile {.importc: "QQmlFile_new3".}
proc fcQQmlFile_isNull(self: pointer, ): bool {.importc: "QQmlFile_isNull".}
proc fcQQmlFile_isReady(self: pointer, ): bool {.importc: "QQmlFile_isReady".}
proc fcQQmlFile_isError(self: pointer, ): bool {.importc: "QQmlFile_isError".}
proc fcQQmlFile_isLoading(self: pointer, ): bool {.importc: "QQmlFile_isLoading".}
proc fcQQmlFile_url(self: pointer, ): pointer {.importc: "QQmlFile_url".}
proc fcQQmlFile_status(self: pointer, ): cint {.importc: "QQmlFile_status".}
proc fcQQmlFile_error(self: pointer, ): struct_miqt_string {.importc: "QQmlFile_error".}
proc fcQQmlFile_size(self: pointer, ): clonglong {.importc: "QQmlFile_size".}
proc fcQQmlFile_data(self: pointer, ): cstring {.importc: "QQmlFile_data".}
proc fcQQmlFile_dataByteArray(self: pointer, ): struct_miqt_string {.importc: "QQmlFile_dataByteArray".}
proc fcQQmlFile_load(self: pointer, param1: pointer, param2: pointer): void {.importc: "QQmlFile_load".}
proc fcQQmlFile_load2(self: pointer, param1: pointer, param2: struct_miqt_string): void {.importc: "QQmlFile_load2".}
proc fcQQmlFile_clear(self: pointer, ): void {.importc: "QQmlFile_clear".}
proc fcQQmlFile_clearWithQObject(self: pointer, param1: pointer): void {.importc: "QQmlFile_clearWithQObject".}
proc fcQQmlFile_connectFinished(self: pointer, param1: pointer, param2: cstring): bool {.importc: "QQmlFile_connectFinished".}
proc fcQQmlFile_connectFinished2(self: pointer, param1: pointer, param2: cint): bool {.importc: "QQmlFile_connectFinished2".}
proc fcQQmlFile_connectDownloadProgress(self: pointer, param1: pointer, param2: cstring): bool {.importc: "QQmlFile_connectDownloadProgress".}
proc fcQQmlFile_connectDownloadProgress2(self: pointer, param1: pointer, param2: cint): bool {.importc: "QQmlFile_connectDownloadProgress2".}
proc fcQQmlFile_isSynchronous(url: struct_miqt_string): bool {.importc: "QQmlFile_isSynchronous".}
proc fcQQmlFile_isSynchronousWithUrl(url: pointer): bool {.importc: "QQmlFile_isSynchronousWithUrl".}
proc fcQQmlFile_isLocalFile(url: struct_miqt_string): bool {.importc: "QQmlFile_isLocalFile".}
proc fcQQmlFile_isLocalFileWithUrl(url: pointer): bool {.importc: "QQmlFile_isLocalFileWithUrl".}
proc fcQQmlFile_urlToLocalFileOrQrc(param1: struct_miqt_string): struct_miqt_string {.importc: "QQmlFile_urlToLocalFileOrQrc".}
proc fcQQmlFile_urlToLocalFileOrQrcWithQUrl(param1: pointer): struct_miqt_string {.importc: "QQmlFile_urlToLocalFileOrQrcWithQUrl".}
proc fcQQmlFile_delete(self: pointer) {.importc: "QQmlFile_delete".}


func init*(T: type gen_qqmlfile_types.QQmlFile, h: ptr cQQmlFile): gen_qqmlfile_types.QQmlFile =
  T(h: h)
proc create*(T: type gen_qqmlfile_types.QQmlFile, ): gen_qqmlfile_types.QQmlFile =

  gen_qqmlfile_types.QQmlFile.init(fcQQmlFile_new())
proc create*(T: type gen_qqmlfile_types.QQmlFile, param1: gen_qqmlengine.QQmlEngine, param2: gen_qurl.QUrl): gen_qqmlfile_types.QQmlFile =

  gen_qqmlfile_types.QQmlFile.init(fcQQmlFile_new2(param1.h, param2.h))
proc create*(T: type gen_qqmlfile_types.QQmlFile, param1: gen_qqmlengine.QQmlEngine, param2: string): gen_qqmlfile_types.QQmlFile =

  gen_qqmlfile_types.QQmlFile.init(fcQQmlFile_new3(param1.h, struct_miqt_string(data: param2, len: csize_t(len(param2)))))
proc isNull*(self: gen_qqmlfile_types.QQmlFile, ): bool =

  fcQQmlFile_isNull(self.h)

proc isReady*(self: gen_qqmlfile_types.QQmlFile, ): bool =

  fcQQmlFile_isReady(self.h)

proc isError*(self: gen_qqmlfile_types.QQmlFile, ): bool =

  fcQQmlFile_isError(self.h)

proc isLoading*(self: gen_qqmlfile_types.QQmlFile, ): bool =

  fcQQmlFile_isLoading(self.h)

proc url*(self: gen_qqmlfile_types.QQmlFile, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQQmlFile_url(self.h))

proc status*(self: gen_qqmlfile_types.QQmlFile, ): cint =

  cint(fcQQmlFile_status(self.h))

proc error*(self: gen_qqmlfile_types.QQmlFile, ): string =

  let v_ms = fcQQmlFile_error(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc size*(self: gen_qqmlfile_types.QQmlFile, ): clonglong =

  fcQQmlFile_size(self.h)

proc data*(self: gen_qqmlfile_types.QQmlFile, ): cstring =

  (fcQQmlFile_data(self.h))

proc dataByteArray*(self: gen_qqmlfile_types.QQmlFile, ): seq[byte] =

  var v_bytearray = fcQQmlFile_dataByteArray(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc load*(self: gen_qqmlfile_types.QQmlFile, param1: gen_qqmlengine.QQmlEngine, param2: gen_qurl.QUrl): void =

  fcQQmlFile_load(self.h, param1.h, param2.h)

proc load2*(self: gen_qqmlfile_types.QQmlFile, param1: gen_qqmlengine.QQmlEngine, param2: string): void =

  fcQQmlFile_load2(self.h, param1.h, struct_miqt_string(data: param2, len: csize_t(len(param2))))

proc clear*(self: gen_qqmlfile_types.QQmlFile, ): void =

  fcQQmlFile_clear(self.h)

proc clearWithQObject*(self: gen_qqmlfile_types.QQmlFile, param1: gen_qobject.QObject): void =

  fcQQmlFile_clearWithQObject(self.h, param1.h)

proc connectFinished*(self: gen_qqmlfile_types.QQmlFile, param1: gen_qobject.QObject, param2: cstring): bool =

  fcQQmlFile_connectFinished(self.h, param1.h, param2)

proc connectFinished2*(self: gen_qqmlfile_types.QQmlFile, param1: gen_qobject.QObject, param2: cint): bool =

  fcQQmlFile_connectFinished2(self.h, param1.h, param2)

proc connectDownloadProgress*(self: gen_qqmlfile_types.QQmlFile, param1: gen_qobject.QObject, param2: cstring): bool =

  fcQQmlFile_connectDownloadProgress(self.h, param1.h, param2)

proc connectDownloadProgress2*(self: gen_qqmlfile_types.QQmlFile, param1: gen_qobject.QObject, param2: cint): bool =

  fcQQmlFile_connectDownloadProgress2(self.h, param1.h, param2)

proc isSynchronous*(_: type gen_qqmlfile_types.QQmlFile, url: string): bool =

  fcQQmlFile_isSynchronous(struct_miqt_string(data: url, len: csize_t(len(url))))

proc isSynchronousWithUrl*(_: type gen_qqmlfile_types.QQmlFile, url: gen_qurl.QUrl): bool =

  fcQQmlFile_isSynchronousWithUrl(url.h)

proc isLocalFile*(_: type gen_qqmlfile_types.QQmlFile, url: string): bool =

  fcQQmlFile_isLocalFile(struct_miqt_string(data: url, len: csize_t(len(url))))

proc isLocalFileWithUrl*(_: type gen_qqmlfile_types.QQmlFile, url: gen_qurl.QUrl): bool =

  fcQQmlFile_isLocalFileWithUrl(url.h)

proc urlToLocalFileOrQrc*(_: type gen_qqmlfile_types.QQmlFile, param1: string): string =

  let v_ms = fcQQmlFile_urlToLocalFileOrQrc(struct_miqt_string(data: param1, len: csize_t(len(param1))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc urlToLocalFileOrQrcWithQUrl*(_: type gen_qqmlfile_types.QQmlFile, param1: gen_qurl.QUrl): string =

  let v_ms = fcQQmlFile_urlToLocalFileOrQrcWithQUrl(param1.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: gen_qqmlfile_types.QQmlFile) =
  fcQQmlFile_delete(self.h)
