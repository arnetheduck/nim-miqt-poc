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
{.compile("gen_qqmlprivate.cpp", cflags).}


type QQmlPrivateAutoParentResult* = cint
const
  QQmlPrivateParented* = 0
  QQmlPrivateIncompatibleObject* = 1
  QQmlPrivateIncompatibleParent* = 2



type QQmlPrivateRegistrationType* = cint
const
  QQmlPrivateTypeRegistration* = 0
  QQmlPrivateInterfaceRegistration* = 1
  QQmlPrivateAutoParentRegistration* = 2
  QQmlPrivateSingletonRegistration* = 3
  QQmlPrivateCompositeRegistration* = 4
  QQmlPrivateCompositeSingletonRegistration* = 5
  QQmlPrivateQmlUnitCacheHookRegistration* = 6
  QQmlPrivateTypeAndRevisionsRegistration* = 7
  QQmlPrivateSingletonAndRevisionsRegistration* = 8



import gen_qqmlprivate_types
export gen_qqmlprivate_types




