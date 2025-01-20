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
{.compile("gen_qqmlnetworkaccessmanagerfactory.cpp", cflags).}


import gen_qqmlnetworkaccessmanagerfactory_types
export gen_qqmlnetworkaccessmanagerfactory_types

import
  gen_qnetworkaccessmanager,
  gen_qobject
export
  gen_qnetworkaccessmanager,
  gen_qobject

type cQQmlNetworkAccessManagerFactory*{.exportc: "QQmlNetworkAccessManagerFactory", incompleteStruct.} = object

proc fcQQmlNetworkAccessManagerFactory_create(self: pointer, parent: pointer): pointer {.importc: "QQmlNetworkAccessManagerFactory_create".}
proc fcQQmlNetworkAccessManagerFactory_operatorAssign(self: pointer, param1: pointer): void {.importc: "QQmlNetworkAccessManagerFactory_operatorAssign".}
proc fcQQmlNetworkAccessManagerFactory_delete(self: pointer) {.importc: "QQmlNetworkAccessManagerFactory_delete".}


func init*(T: type gen_qqmlnetworkaccessmanagerfactory_types.QQmlNetworkAccessManagerFactory, h: ptr cQQmlNetworkAccessManagerFactory): gen_qqmlnetworkaccessmanagerfactory_types.QQmlNetworkAccessManagerFactory =
  T(h: h)
proc create*(self: gen_qqmlnetworkaccessmanagerfactory_types.QQmlNetworkAccessManagerFactory, parent: gen_qobject.QObject): gen_qnetworkaccessmanager.QNetworkAccessManager =
  gen_qnetworkaccessmanager.QNetworkAccessManager(h: fcQQmlNetworkAccessManagerFactory_create(self.h, parent.h))

proc operatorAssign*(self: gen_qqmlnetworkaccessmanagerfactory_types.QQmlNetworkAccessManagerFactory, param1: gen_qqmlnetworkaccessmanagerfactory_types.QQmlNetworkAccessManagerFactory): void =
  fcQQmlNetworkAccessManagerFactory_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qqmlnetworkaccessmanagerfactory_types.QQmlNetworkAccessManagerFactory) =
  fcQQmlNetworkAccessManagerFactory_delete(self.h)
