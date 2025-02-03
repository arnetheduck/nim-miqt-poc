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
{.compile("gen_qfloat16.cpp", cflags).}


import gen_qfloat16_types
export gen_qfloat16_types


type cqfloat16*{.exportc: "qfloat16", incompleteStruct.} = object

proc fcqfloat16_new(): ptr cqfloat16 {.importc: "qfloat16_new".}
proc fcqfloat16_new2(f: float32): ptr cqfloat16 {.importc: "qfloat16_new2".}
proc fcqfloat16_isInf(self: pointer, ): bool {.importc: "qfloat16_isInf".}
proc fcqfloat16_isNaN(self: pointer, ): bool {.importc: "qfloat16_isNaN".}
proc fcqfloat16_isFinite(self: pointer, ): bool {.importc: "qfloat16_isFinite".}
proc fcqfloat16_fpClassify(self: pointer, ): cint {.importc: "qfloat16_fpClassify".}
proc fcqfloat16_isNormal(self: pointer, ): bool {.importc: "qfloat16_isNormal".}
proc fcqfloat16_delete(self: pointer) {.importc: "qfloat16_delete".}


func init*(T: type qfloat16, h: ptr cqfloat16): qfloat16 =
  T(h: h)
proc create*(T: type qfloat16, ): qfloat16 =

  qfloat16.init(fcqfloat16_new())
proc create*(T: type qfloat16, f: float32): qfloat16 =

  qfloat16.init(fcqfloat16_new2(f))
proc isInf*(self: qfloat16, ): bool =

  fcqfloat16_isInf(self.h)

proc isNaN*(self: qfloat16, ): bool =

  fcqfloat16_isNaN(self.h)

proc isFinite*(self: qfloat16, ): bool =

  fcqfloat16_isFinite(self.h)

proc fpClassify*(self: qfloat16, ): cint =

  fcqfloat16_fpClassify(self.h)

proc isNormal*(self: qfloat16, ): bool =

  fcqfloat16_isNormal(self.h)

proc delete*(self: qfloat16) =
  fcqfloat16_delete(self.h)
