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
{.compile("gen_qplugin.cpp", cflags).}


import gen_qplugin_types
export gen_qplugin_types

import
  gen_qjsonobject
export
  gen_qjsonobject

type cQStaticPlugin*{.exportc: "QStaticPlugin", incompleteStruct.} = object

proc fcQStaticPlugin_metaData(self: pointer, ): pointer {.importc: "QStaticPlugin_metaData".}
proc fcQStaticPlugin_delete(self: pointer) {.importc: "QStaticPlugin_delete".}


func init*(T: type QStaticPlugin, h: ptr cQStaticPlugin): QStaticPlugin =
  T(h: h)
proc metaData*(self: QStaticPlugin, ): gen_qjsonobject.QJsonObject =

  gen_qjsonobject.QJsonObject(h: fcQStaticPlugin_metaData(self.h))

proc delete*(self: QStaticPlugin) =
  fcQStaticPlugin_delete(self.h)
