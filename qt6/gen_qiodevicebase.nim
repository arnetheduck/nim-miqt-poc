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
{.compile("gen_qiodevicebase.cpp", cflags).}


type QIODeviceBaseOpenModeFlag* = cint
const
  QIODeviceBaseNotOpen* = 0
  QIODeviceBaseReadOnly* = 1
  QIODeviceBaseWriteOnly* = 2
  QIODeviceBaseReadWrite* = 3
  QIODeviceBaseAppend* = 4
  QIODeviceBaseTruncate* = 8
  QIODeviceBaseText* = 16
  QIODeviceBaseUnbuffered* = 32
  QIODeviceBaseNewOnly* = 64
  QIODeviceBaseExistingOnly* = 128



import gen_qiodevicebase_types
export gen_qiodevicebase_types


type cQIODeviceBase*{.exportc: "QIODeviceBase", incompleteStruct.} = object



func init*(T: type QIODeviceBase, h: ptr cQIODeviceBase): QIODeviceBase =
  T(h: h)
