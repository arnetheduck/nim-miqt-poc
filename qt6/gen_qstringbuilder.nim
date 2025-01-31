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
{.compile("gen_qstringbuilder.cpp", cflags).}

import gen_qstringbuilder_types
export gen_qstringbuilder_types

import
  gen_qbytearrayview_types,
  gen_qchar_types
export
  gen_qbytearrayview_types,
  gen_qchar_types

type cQAbstractConcatenable*{.exportc: "QAbstractConcatenable", incompleteStruct.} = object

proc fcQAbstractConcatenable_protectedbase_convertFromUtf8(self: pointer, inVal: pointer, outVal: pointer): void {.importc: "QAbstractConcatenable_protectedbase_convertFromUtf8".}
proc fcQAbstractConcatenable_protectedbase_convertFromAscii(self: pointer, a: cchar, outVal: pointer): void {.importc: "QAbstractConcatenable_protectedbase_convertFromAscii".}
proc fcQAbstractConcatenable_delete(self: pointer) {.importc: "QAbstractConcatenable_delete".}

proc convertFromUtf8*(self: gen_qstringbuilder_types.QAbstractConcatenable, inVal: gen_qbytearrayview_types.QByteArrayView, outVal: gen_qchar_types.QChar): void =
  fcQAbstractConcatenable_protectedbase_convertFromUtf8(self.hinVal.h, outVal.h)

proc convertFromAscii*(self: gen_qstringbuilder_types.QAbstractConcatenable, a: cchar, outVal: gen_qchar_types.QChar): void =
  fcQAbstractConcatenable_protectedbase_convertFromAscii(self.ha, outVal.h)

proc delete*(self: gen_qstringbuilder_types.QAbstractConcatenable) =
  fcQAbstractConcatenable_delete(self.h)
