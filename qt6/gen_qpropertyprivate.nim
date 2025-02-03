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
{.compile("gen_qpropertyprivate.cpp", cflags).}


import gen_qpropertyprivate_types
export gen_qpropertyprivate_types


type cQUntypedPropertyData*{.exportc: "QUntypedPropertyData", incompleteStruct.} = object
type cQPropertyProxyBindingData*{.exportc: "QPropertyProxyBindingData", incompleteStruct.} = object

proc fcQUntypedPropertyData_delete(self: pointer) {.importc: "QUntypedPropertyData_delete".}
proc fcQPropertyProxyBindingData_delete(self: pointer) {.importc: "QPropertyProxyBindingData_delete".}


func init*(T: type QUntypedPropertyData, h: ptr cQUntypedPropertyData): QUntypedPropertyData =
  T(h: h)
proc delete*(self: QUntypedPropertyData) =
  fcQUntypedPropertyData_delete(self.h)

func init*(T: type QPropertyProxyBindingData, h: ptr cQPropertyProxyBindingData): QPropertyProxyBindingData =
  T(h: h)
proc delete*(self: QPropertyProxyBindingData) =
  fcQPropertyProxyBindingData_delete(self.h)
