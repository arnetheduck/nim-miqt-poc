import Qt5Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5Widgets")
{.compile("gen_qstylefactory.cpp", cflags).}


import gen_qstylefactory_types
export gen_qstylefactory_types

import
  gen_qstyle
export
  gen_qstyle

type cQStyleFactory*{.exportc: "QStyleFactory", incompleteStruct.} = object

proc fcQStyleFactory_keys(): struct_miqt_array {.importc: "QStyleFactory_keys".}
proc fcQStyleFactory_create(param1: struct_miqt_string): pointer {.importc: "QStyleFactory_create".}
proc fcQStyleFactory_delete(self: pointer) {.importc: "QStyleFactory_delete".}


func init*(T: type QStyleFactory, h: ptr cQStyleFactory): QStyleFactory =
  T(h: h)
proc keys*(_: type QStyleFactory, ): seq[string] =

  var v_ma = fcQStyleFactory_keys()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc create*(_: type QStyleFactory, param1: string): gen_qstyle.QStyle =

  gen_qstyle.QStyle(h: fcQStyleFactory_create(struct_miqt_string(data: param1, len: csize_t(len(param1)))))

proc delete*(self: QStyleFactory) =
  fcQStyleFactory_delete(self.h)
