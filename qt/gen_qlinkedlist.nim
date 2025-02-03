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
{.compile("gen_qlinkedlist.cpp", cflags).}


import gen_qlinkedlist_types
export gen_qlinkedlist_types


type cQLinkedListData*{.exportc: "QLinkedListData", incompleteStruct.} = object

proc fcQLinkedListData_new(): ptr cQLinkedListData {.importc: "QLinkedListData_new".}
proc fcQLinkedListData_delete(self: pointer) {.importc: "QLinkedListData_delete".}


func init*(T: type QLinkedListData, h: ptr cQLinkedListData): QLinkedListData =
  T(h: h)
proc create*(T: type QLinkedListData, ): QLinkedListData =

  QLinkedListData.init(fcQLinkedListData_new())
proc delete*(self: QLinkedListData) =
  fcQLinkedListData_delete(self.h)
