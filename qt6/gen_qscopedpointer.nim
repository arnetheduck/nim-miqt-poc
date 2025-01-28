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
{.compile("gen_qscopedpointer.cpp", cflags).}

import gen_qscopedpointer_types
export gen_qscopedpointer_types


type cQScopedPointerPodDeleter*{.exportc: "QScopedPointerPodDeleter", incompleteStruct.} = object

proc fcQScopedPointerPodDeleter_cleanup(pointer: pointer): void {.importc: "QScopedPointerPodDeleter_cleanup".}
proc fcQScopedPointerPodDeleter_operatorCall(self: pointer, pointer: pointer): void {.importc: "QScopedPointerPodDeleter_operatorCall".}
proc fcQScopedPointerPodDeleter_delete(self: pointer) {.importc: "QScopedPointerPodDeleter_delete".}

proc cleanup*(_: type gen_qscopedpointer_types.QScopedPointerPodDeleter, pointer: pointer): void =
  fcQScopedPointerPodDeleter_cleanup(pointer)

proc operatorCall*(self: gen_qscopedpointer_types.QScopedPointerPodDeleter, pointer: pointer): void =
  fcQScopedPointerPodDeleter_operatorCall(self.h, pointer)

proc delete*(self: gen_qscopedpointer_types.QScopedPointerPodDeleter) =
  fcQScopedPointerPodDeleter_delete(self.h)
