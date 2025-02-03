import Qt6Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt6Widgets")
{.compile("gen_qshareddata.cpp", cflags).}


import gen_qshareddata_types
export gen_qshareddata_types


type cQSharedData*{.exportc: "QSharedData", incompleteStruct.} = object
type cQAdoptSharedDataTag*{.exportc: "QAdoptSharedDataTag", incompleteStruct.} = object

proc fcQSharedData_new(): ptr cQSharedData {.importc: "QSharedData_new".}
proc fcQSharedData_new2(param1: pointer): ptr cQSharedData {.importc: "QSharedData_new2".}
proc fcQSharedData_delete(self: pointer) {.importc: "QSharedData_delete".}
proc fcQAdoptSharedDataTag_new(): ptr cQAdoptSharedDataTag {.importc: "QAdoptSharedDataTag_new".}
proc fcQAdoptSharedDataTag_delete(self: pointer) {.importc: "QAdoptSharedDataTag_delete".}


func init*(T: type QSharedData, h: ptr cQSharedData): QSharedData =
  T(h: h)
proc create*(T: type QSharedData, ): QSharedData =

  QSharedData.init(fcQSharedData_new())
proc create*(T: type QSharedData, param1: QSharedData): QSharedData =

  QSharedData.init(fcQSharedData_new2(param1.h))
proc delete*(self: QSharedData) =
  fcQSharedData_delete(self.h)

func init*(T: type QAdoptSharedDataTag, h: ptr cQAdoptSharedDataTag): QAdoptSharedDataTag =
  T(h: h)
proc create*(T: type QAdoptSharedDataTag, ): QAdoptSharedDataTag =

  QAdoptSharedDataTag.init(fcQAdoptSharedDataTag_new())
proc delete*(self: QAdoptSharedDataTag) =
  fcQAdoptSharedDataTag_delete(self.h)
