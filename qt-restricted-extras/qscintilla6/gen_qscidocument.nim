import Qt6PrintSupport_libs

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

const cflags = gorge("pkg-config -cflags Qt6PrintSupport")
{.compile("gen_qscidocument.cpp", cflags).}


import gen_qscidocument_types
export gen_qscidocument_types


type cQsciDocument*{.exportc: "QsciDocument", incompleteStruct.} = object

proc fcQsciDocument_new(): ptr cQsciDocument {.importc: "QsciDocument_new".}
proc fcQsciDocument_new2(param1: pointer): ptr cQsciDocument {.importc: "QsciDocument_new2".}
proc fcQsciDocument_operatorAssign(self: pointer, param1: pointer): void {.importc: "QsciDocument_operatorAssign".}
proc fcQsciDocument_delete(self: pointer) {.importc: "QsciDocument_delete".}


func init*(T: type gen_qscidocument_types.QsciDocument, h: ptr cQsciDocument): gen_qscidocument_types.QsciDocument =
  T(h: h)
proc create*(T: type gen_qscidocument_types.QsciDocument, ): gen_qscidocument_types.QsciDocument =

  gen_qscidocument_types.QsciDocument.init(fcQsciDocument_new())
proc create*(T: type gen_qscidocument_types.QsciDocument, param1: gen_qscidocument_types.QsciDocument): gen_qscidocument_types.QsciDocument =

  gen_qscidocument_types.QsciDocument.init(fcQsciDocument_new2(param1.h))
proc operatorAssign*(self: gen_qscidocument_types.QsciDocument, param1: gen_qscidocument_types.QsciDocument): void =

  fcQsciDocument_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qscidocument_types.QsciDocument) =
  fcQsciDocument_delete(self.h)
