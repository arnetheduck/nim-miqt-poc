import Qt5MultimediaWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5MultimediaWidgets")
{.compile("gen_qmediabindableinterface.cpp", cflags).}


import gen_qmediabindableinterface_types
export gen_qmediabindableinterface_types

import
  gen_qmediaobject
export
  gen_qmediaobject

type cQMediaBindableInterface*{.exportc: "QMediaBindableInterface", incompleteStruct.} = object

proc fcQMediaBindableInterface_mediaObject(self: pointer, ): pointer {.importc: "QMediaBindableInterface_mediaObject".}
proc fcQMediaBindableInterface_delete(self: pointer) {.importc: "QMediaBindableInterface_delete".}


func init*(T: type QMediaBindableInterface, h: ptr cQMediaBindableInterface): QMediaBindableInterface =
  T(h: h)
proc mediaObject*(self: QMediaBindableInterface, ): gen_qmediaobject.QMediaObject =

  gen_qmediaobject.QMediaObject(h: fcQMediaBindableInterface_mediaObject(self.h))

proc delete*(self: QMediaBindableInterface) =
  fcQMediaBindableInterface_delete(self.h)
