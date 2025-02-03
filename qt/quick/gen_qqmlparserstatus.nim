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
{.compile("gen_qqmlparserstatus.cpp", cflags).}


import gen_qqmlparserstatus_types
export gen_qqmlparserstatus_types


type cQQmlParserStatus*{.exportc: "QQmlParserStatus", incompleteStruct.} = object

proc fcQQmlParserStatus_new(): ptr cQQmlParserStatus {.importc: "QQmlParserStatus_new".}
proc fcQQmlParserStatus_classBegin(self: pointer, ): void {.importc: "QQmlParserStatus_classBegin".}
proc fcQQmlParserStatus_componentComplete(self: pointer, ): void {.importc: "QQmlParserStatus_componentComplete".}
proc fcQQmlParserStatus_override_virtual_classBegin(self: pointer, slot: int) {.importc: "QQmlParserStatus_override_virtual_classBegin".}
proc fcQQmlParserStatus_override_virtual_componentComplete(self: pointer, slot: int) {.importc: "QQmlParserStatus_override_virtual_componentComplete".}
proc fcQQmlParserStatus_delete(self: pointer) {.importc: "QQmlParserStatus_delete".}


func init*(T: type QQmlParserStatus, h: ptr cQQmlParserStatus): QQmlParserStatus =
  T(h: h)
proc create*(T: type QQmlParserStatus, ): QQmlParserStatus =

  QQmlParserStatus.init(fcQQmlParserStatus_new())
proc classBegin*(self: QQmlParserStatus, ): void =

  fcQQmlParserStatus_classBegin(self.h)

proc componentComplete*(self: QQmlParserStatus, ): void =

  fcQQmlParserStatus_componentComplete(self.h)

type QQmlParserStatusclassBeginBase* = proc(): void
proc onclassBegin*(self: QQmlParserStatus, slot: proc(): void) =
  # TODO check subclass
  type Cb = proc(): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlParserStatus_override_virtual_classBegin(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlParserStatus_classBegin(self: ptr cQQmlParserStatus, slot: int): void {.exportc: "miqt_exec_callback_QQmlParserStatus_classBegin ".} =
  type Cb = proc(): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()
type QQmlParserStatuscomponentCompleteBase* = proc(): void
proc oncomponentComplete*(self: QQmlParserStatus, slot: proc(): void) =
  # TODO check subclass
  type Cb = proc(): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlParserStatus_override_virtual_componentComplete(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlParserStatus_componentComplete(self: ptr cQQmlParserStatus, slot: int): void {.exportc: "miqt_exec_callback_QQmlParserStatus_componentComplete ".} =
  type Cb = proc(): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()
proc delete*(self: QQmlParserStatus) =
  fcQQmlParserStatus_delete(self.h)
