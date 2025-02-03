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
{.compile("gen_qqmlerror.cpp", cflags).}


import gen_qqmlerror_types
export gen_qqmlerror_types

import
  gen_qobject,
  gen_qurl
export
  gen_qobject,
  gen_qurl

type cQQmlError*{.exportc: "QQmlError", incompleteStruct.} = object

proc fcQQmlError_new(): ptr cQQmlError {.importc: "QQmlError_new".}
proc fcQQmlError_new2(param1: pointer): ptr cQQmlError {.importc: "QQmlError_new2".}
proc fcQQmlError_operatorAssign(self: pointer, param1: pointer): void {.importc: "QQmlError_operatorAssign".}
proc fcQQmlError_isValid(self: pointer, ): bool {.importc: "QQmlError_isValid".}
proc fcQQmlError_url(self: pointer, ): pointer {.importc: "QQmlError_url".}
proc fcQQmlError_setUrl(self: pointer, url: pointer): void {.importc: "QQmlError_setUrl".}
proc fcQQmlError_description(self: pointer, ): struct_miqt_string {.importc: "QQmlError_description".}
proc fcQQmlError_setDescription(self: pointer, description: struct_miqt_string): void {.importc: "QQmlError_setDescription".}
proc fcQQmlError_line(self: pointer, ): cint {.importc: "QQmlError_line".}
proc fcQQmlError_setLine(self: pointer, line: cint): void {.importc: "QQmlError_setLine".}
proc fcQQmlError_column(self: pointer, ): cint {.importc: "QQmlError_column".}
proc fcQQmlError_setColumn(self: pointer, column: cint): void {.importc: "QQmlError_setColumn".}
proc fcQQmlError_objectX(self: pointer, ): pointer {.importc: "QQmlError_object".}
proc fcQQmlError_setObject(self: pointer, objectVal: pointer): void {.importc: "QQmlError_setObject".}
proc fcQQmlError_toString(self: pointer, ): struct_miqt_string {.importc: "QQmlError_toString".}
proc fcQQmlError_delete(self: pointer) {.importc: "QQmlError_delete".}


func init*(T: type QQmlError, h: ptr cQQmlError): QQmlError =
  T(h: h)
proc create*(T: type QQmlError, ): QQmlError =

  QQmlError.init(fcQQmlError_new())
proc create*(T: type QQmlError, param1: QQmlError): QQmlError =

  QQmlError.init(fcQQmlError_new2(param1.h))
proc operatorAssign*(self: QQmlError, param1: QQmlError): void =

  fcQQmlError_operatorAssign(self.h, param1.h)

proc isValid*(self: QQmlError, ): bool =

  fcQQmlError_isValid(self.h)

proc url*(self: QQmlError, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQQmlError_url(self.h))

proc setUrl*(self: QQmlError, url: gen_qurl.QUrl): void =

  fcQQmlError_setUrl(self.h, url.h)

proc description*(self: QQmlError, ): string =

  let v_ms = fcQQmlError_description(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDescription*(self: QQmlError, description: string): void =

  fcQQmlError_setDescription(self.h, struct_miqt_string(data: description, len: csize_t(len(description))))

proc line*(self: QQmlError, ): cint =

  fcQQmlError_line(self.h)

proc setLine*(self: QQmlError, line: cint): void =

  fcQQmlError_setLine(self.h, line)

proc column*(self: QQmlError, ): cint =

  fcQQmlError_column(self.h)

proc setColumn*(self: QQmlError, column: cint): void =

  fcQQmlError_setColumn(self.h, column)

proc objectX*(self: QQmlError, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQQmlError_objectX(self.h))

proc setObject*(self: QQmlError, objectVal: gen_qobject.QObject): void =

  fcQQmlError_setObject(self.h, objectVal.h)

proc toString*(self: QQmlError, ): string =

  let v_ms = fcQQmlError_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QQmlError) =
  fcQQmlError_delete(self.h)
