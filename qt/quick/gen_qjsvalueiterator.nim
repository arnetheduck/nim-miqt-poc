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
{.compile("gen_qjsvalueiterator.cpp", cflags).}


import gen_qjsvalueiterator_types
export gen_qjsvalueiterator_types

import
  gen_qjsvalue
export
  gen_qjsvalue

type cQJSValueIterator*{.exportc: "QJSValueIterator", incompleteStruct.} = object

proc fcQJSValueIterator_new(value: pointer): ptr cQJSValueIterator {.importc: "QJSValueIterator_new".}
proc fcQJSValueIterator_hasNext(self: pointer, ): bool {.importc: "QJSValueIterator_hasNext".}
proc fcQJSValueIterator_next(self: pointer, ): bool {.importc: "QJSValueIterator_next".}
proc fcQJSValueIterator_name(self: pointer, ): struct_miqt_string {.importc: "QJSValueIterator_name".}
proc fcQJSValueIterator_value(self: pointer, ): pointer {.importc: "QJSValueIterator_value".}
proc fcQJSValueIterator_operatorAssign(self: pointer, value: pointer): void {.importc: "QJSValueIterator_operatorAssign".}
proc fcQJSValueIterator_delete(self: pointer) {.importc: "QJSValueIterator_delete".}


func init*(T: type gen_qjsvalueiterator_types.QJSValueIterator, h: ptr cQJSValueIterator): gen_qjsvalueiterator_types.QJSValueIterator =
  T(h: h)
proc create*(T: type gen_qjsvalueiterator_types.QJSValueIterator, value: gen_qjsvalue.QJSValue): gen_qjsvalueiterator_types.QJSValueIterator =

  gen_qjsvalueiterator_types.QJSValueIterator.init(fcQJSValueIterator_new(value.h))
proc hasNext*(self: gen_qjsvalueiterator_types.QJSValueIterator, ): bool =

  fcQJSValueIterator_hasNext(self.h)

proc next*(self: gen_qjsvalueiterator_types.QJSValueIterator, ): bool =

  fcQJSValueIterator_next(self.h)

proc name*(self: gen_qjsvalueiterator_types.QJSValueIterator, ): string =

  let v_ms = fcQJSValueIterator_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc value*(self: gen_qjsvalueiterator_types.QJSValueIterator, ): gen_qjsvalue.QJSValue =

  gen_qjsvalue.QJSValue(h: fcQJSValueIterator_value(self.h))

proc operatorAssign*(self: gen_qjsvalueiterator_types.QJSValueIterator, value: gen_qjsvalue.QJSValue): void =

  fcQJSValueIterator_operatorAssign(self.h, value.h)

proc delete*(self: gen_qjsvalueiterator_types.QJSValueIterator) =
  fcQJSValueIterator_delete(self.h)
