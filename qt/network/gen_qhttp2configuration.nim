import Qt5Network_libs

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

const cflags = gorge("pkg-config -cflags Qt5Network")
{.compile("gen_qhttp2configuration.cpp", cflags).}


import gen_qhttp2configuration_types
export gen_qhttp2configuration_types


type cQHttp2Configuration*{.exportc: "QHttp2Configuration", incompleteStruct.} = object

proc fcQHttp2Configuration_new(): ptr cQHttp2Configuration {.importc: "QHttp2Configuration_new".}
proc fcQHttp2Configuration_new2(other: pointer): ptr cQHttp2Configuration {.importc: "QHttp2Configuration_new2".}
proc fcQHttp2Configuration_operatorAssign(self: pointer, other: pointer): void {.importc: "QHttp2Configuration_operatorAssign".}
proc fcQHttp2Configuration_setServerPushEnabled(self: pointer, enable: bool): void {.importc: "QHttp2Configuration_setServerPushEnabled".}
proc fcQHttp2Configuration_serverPushEnabled(self: pointer, ): bool {.importc: "QHttp2Configuration_serverPushEnabled".}
proc fcQHttp2Configuration_setHuffmanCompressionEnabled(self: pointer, enable: bool): void {.importc: "QHttp2Configuration_setHuffmanCompressionEnabled".}
proc fcQHttp2Configuration_huffmanCompressionEnabled(self: pointer, ): bool {.importc: "QHttp2Configuration_huffmanCompressionEnabled".}
proc fcQHttp2Configuration_setSessionReceiveWindowSize(self: pointer, size: cuint): bool {.importc: "QHttp2Configuration_setSessionReceiveWindowSize".}
proc fcQHttp2Configuration_sessionReceiveWindowSize(self: pointer, ): cuint {.importc: "QHttp2Configuration_sessionReceiveWindowSize".}
proc fcQHttp2Configuration_setStreamReceiveWindowSize(self: pointer, size: cuint): bool {.importc: "QHttp2Configuration_setStreamReceiveWindowSize".}
proc fcQHttp2Configuration_streamReceiveWindowSize(self: pointer, ): cuint {.importc: "QHttp2Configuration_streamReceiveWindowSize".}
proc fcQHttp2Configuration_setMaxFrameSize(self: pointer, size: cuint): bool {.importc: "QHttp2Configuration_setMaxFrameSize".}
proc fcQHttp2Configuration_maxFrameSize(self: pointer, ): cuint {.importc: "QHttp2Configuration_maxFrameSize".}
proc fcQHttp2Configuration_swap(self: pointer, other: pointer): void {.importc: "QHttp2Configuration_swap".}
proc fcQHttp2Configuration_delete(self: pointer) {.importc: "QHttp2Configuration_delete".}


func init*(T: type QHttp2Configuration, h: ptr cQHttp2Configuration): QHttp2Configuration =
  T(h: h)
proc create*(T: type QHttp2Configuration, ): QHttp2Configuration =

  QHttp2Configuration.init(fcQHttp2Configuration_new())
proc create*(T: type QHttp2Configuration, other: QHttp2Configuration): QHttp2Configuration =

  QHttp2Configuration.init(fcQHttp2Configuration_new2(other.h))
proc operatorAssign*(self: QHttp2Configuration, other: QHttp2Configuration): void =

  fcQHttp2Configuration_operatorAssign(self.h, other.h)

proc setServerPushEnabled*(self: QHttp2Configuration, enable: bool): void =

  fcQHttp2Configuration_setServerPushEnabled(self.h, enable)

proc serverPushEnabled*(self: QHttp2Configuration, ): bool =

  fcQHttp2Configuration_serverPushEnabled(self.h)

proc setHuffmanCompressionEnabled*(self: QHttp2Configuration, enable: bool): void =

  fcQHttp2Configuration_setHuffmanCompressionEnabled(self.h, enable)

proc huffmanCompressionEnabled*(self: QHttp2Configuration, ): bool =

  fcQHttp2Configuration_huffmanCompressionEnabled(self.h)

proc setSessionReceiveWindowSize*(self: QHttp2Configuration, size: cuint): bool =

  fcQHttp2Configuration_setSessionReceiveWindowSize(self.h, size)

proc sessionReceiveWindowSize*(self: QHttp2Configuration, ): cuint =

  fcQHttp2Configuration_sessionReceiveWindowSize(self.h)

proc setStreamReceiveWindowSize*(self: QHttp2Configuration, size: cuint): bool =

  fcQHttp2Configuration_setStreamReceiveWindowSize(self.h, size)

proc streamReceiveWindowSize*(self: QHttp2Configuration, ): cuint =

  fcQHttp2Configuration_streamReceiveWindowSize(self.h)

proc setMaxFrameSize*(self: QHttp2Configuration, size: cuint): bool =

  fcQHttp2Configuration_setMaxFrameSize(self.h, size)

proc maxFrameSize*(self: QHttp2Configuration, ): cuint =

  fcQHttp2Configuration_maxFrameSize(self.h)

proc swap*(self: QHttp2Configuration, other: QHttp2Configuration): void =

  fcQHttp2Configuration_swap(self.h, other.h)

proc delete*(self: QHttp2Configuration) =
  fcQHttp2Configuration_delete(self.h)
