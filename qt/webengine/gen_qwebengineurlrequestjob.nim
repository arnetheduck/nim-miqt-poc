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
{.compile("gen_qwebengineurlrequestjob.cpp", cflags).}


type QWebEngineUrlRequestJobError* = cint
const
  QWebEngineUrlRequestJobNoError* = 0
  QWebEngineUrlRequestJobUrlNotFound* = 1
  QWebEngineUrlRequestJobUrlInvalid* = 2
  QWebEngineUrlRequestJobRequestAborted* = 3
  QWebEngineUrlRequestJobRequestDenied* = 4
  QWebEngineUrlRequestJobRequestFailed* = 5



import gen_qwebengineurlrequestjob_types
export gen_qwebengineurlrequestjob_types

import
  gen_qiodevice,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl
export
  gen_qiodevice,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl

type cQWebEngineUrlRequestJob*{.exportc: "QWebEngineUrlRequestJob", incompleteStruct.} = object

proc fcQWebEngineUrlRequestJob_metaObject(self: pointer, ): pointer {.importc: "QWebEngineUrlRequestJob_metaObject".}
proc fcQWebEngineUrlRequestJob_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineUrlRequestJob_metacast".}
proc fcQWebEngineUrlRequestJob_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineUrlRequestJob_metacall".}
proc fcQWebEngineUrlRequestJob_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineUrlRequestJob_tr".}
proc fcQWebEngineUrlRequestJob_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebEngineUrlRequestJob_trUtf8".}
proc fcQWebEngineUrlRequestJob_requestUrl(self: pointer, ): pointer {.importc: "QWebEngineUrlRequestJob_requestUrl".}
proc fcQWebEngineUrlRequestJob_requestMethod(self: pointer, ): struct_miqt_string {.importc: "QWebEngineUrlRequestJob_requestMethod".}
proc fcQWebEngineUrlRequestJob_initiator(self: pointer, ): pointer {.importc: "QWebEngineUrlRequestJob_initiator".}
proc fcQWebEngineUrlRequestJob_reply(self: pointer, contentType: struct_miqt_string, device: pointer): void {.importc: "QWebEngineUrlRequestJob_reply".}
proc fcQWebEngineUrlRequestJob_fail(self: pointer, error: cint): void {.importc: "QWebEngineUrlRequestJob_fail".}
proc fcQWebEngineUrlRequestJob_redirect(self: pointer, url: pointer): void {.importc: "QWebEngineUrlRequestJob_redirect".}
proc fcQWebEngineUrlRequestJob_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineUrlRequestJob_tr2".}
proc fcQWebEngineUrlRequestJob_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineUrlRequestJob_tr3".}
proc fcQWebEngineUrlRequestJob_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineUrlRequestJob_trUtf82".}
proc fcQWebEngineUrlRequestJob_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineUrlRequestJob_trUtf83".}
proc fcQWebEngineUrlRequestJob_delete(self: pointer) {.importc: "QWebEngineUrlRequestJob_delete".}


func init*(T: type QWebEngineUrlRequestJob, h: ptr cQWebEngineUrlRequestJob): QWebEngineUrlRequestJob =
  T(h: h)
proc metaObject*(self: QWebEngineUrlRequestJob, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQWebEngineUrlRequestJob_metaObject(self.h))

proc metacast*(self: QWebEngineUrlRequestJob, param1: cstring): pointer =

  fcQWebEngineUrlRequestJob_metacast(self.h, param1)

proc metacall*(self: QWebEngineUrlRequestJob, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQWebEngineUrlRequestJob_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QWebEngineUrlRequestJob, s: cstring): string =

  let v_ms = fcQWebEngineUrlRequestJob_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QWebEngineUrlRequestJob, s: cstring): string =

  let v_ms = fcQWebEngineUrlRequestJob_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc requestUrl*(self: QWebEngineUrlRequestJob, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebEngineUrlRequestJob_requestUrl(self.h))

proc requestMethod*(self: QWebEngineUrlRequestJob, ): seq[byte] =

  var v_bytearray = fcQWebEngineUrlRequestJob_requestMethod(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc initiator*(self: QWebEngineUrlRequestJob, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebEngineUrlRequestJob_initiator(self.h))

proc reply*(self: QWebEngineUrlRequestJob, contentType: seq[byte], device: gen_qiodevice.QIODevice): void =

  fcQWebEngineUrlRequestJob_reply(self.h, struct_miqt_string(data: cast[cstring](if len(contentType) == 0: nil else: unsafeAddr contentType[0]), len: csize_t(len(contentType))), device.h)

proc fail*(self: QWebEngineUrlRequestJob, error: QWebEngineUrlRequestJobError): void =

  fcQWebEngineUrlRequestJob_fail(self.h, cint(error))

proc redirect*(self: QWebEngineUrlRequestJob, url: gen_qurl.QUrl): void =

  fcQWebEngineUrlRequestJob_redirect(self.h, url.h)

proc tr2*(_: type QWebEngineUrlRequestJob, s: cstring, c: cstring): string =

  let v_ms = fcQWebEngineUrlRequestJob_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QWebEngineUrlRequestJob, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebEngineUrlRequestJob_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QWebEngineUrlRequestJob, s: cstring, c: cstring): string =

  let v_ms = fcQWebEngineUrlRequestJob_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QWebEngineUrlRequestJob, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebEngineUrlRequestJob_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QWebEngineUrlRequestJob) =
  fcQWebEngineUrlRequestJob_delete(self.h)
