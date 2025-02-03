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
{.compile("gen_qoperatingsystemversion.cpp", cflags).}


type QOperatingSystemVersionOSType* = cint
const
  QOperatingSystemVersionUnknown* = 0
  QOperatingSystemVersionWindows* = 1
  QOperatingSystemVersionMacOS* = 2
  QOperatingSystemVersionIOS* = 3
  QOperatingSystemVersionTvOS* = 4
  QOperatingSystemVersionWatchOS* = 5
  QOperatingSystemVersionAndroid* = 6



import gen_qoperatingsystemversion_types
export gen_qoperatingsystemversion_types


type cQOperatingSystemVersion*{.exportc: "QOperatingSystemVersion", incompleteStruct.} = object

proc fcQOperatingSystemVersion_new(osType: cint, vmajor: cint): ptr cQOperatingSystemVersion {.importc: "QOperatingSystemVersion_new".}
proc fcQOperatingSystemVersion_new2(osType: cint, vmajor: cint, vminor: cint): ptr cQOperatingSystemVersion {.importc: "QOperatingSystemVersion_new2".}
proc fcQOperatingSystemVersion_new3(osType: cint, vmajor: cint, vminor: cint, vmicro: cint): ptr cQOperatingSystemVersion {.importc: "QOperatingSystemVersion_new3".}
proc fcQOperatingSystemVersion_current(): pointer {.importc: "QOperatingSystemVersion_current".}
proc fcQOperatingSystemVersion_currentType(): cint {.importc: "QOperatingSystemVersion_currentType".}
proc fcQOperatingSystemVersion_majorVersion(self: pointer, ): cint {.importc: "QOperatingSystemVersion_majorVersion".}
proc fcQOperatingSystemVersion_minorVersion(self: pointer, ): cint {.importc: "QOperatingSystemVersion_minorVersion".}
proc fcQOperatingSystemVersion_microVersion(self: pointer, ): cint {.importc: "QOperatingSystemVersion_microVersion".}
proc fcQOperatingSystemVersion_segmentCount(self: pointer, ): cint {.importc: "QOperatingSystemVersion_segmentCount".}
proc fcQOperatingSystemVersion_typeX(self: pointer, ): cint {.importc: "QOperatingSystemVersion_type".}
proc fcQOperatingSystemVersion_name(self: pointer, ): struct_miqt_string {.importc: "QOperatingSystemVersion_name".}
proc fcQOperatingSystemVersion_delete(self: pointer) {.importc: "QOperatingSystemVersion_delete".}


func init*(T: type QOperatingSystemVersion, h: ptr cQOperatingSystemVersion): QOperatingSystemVersion =
  T(h: h)
proc create*(T: type QOperatingSystemVersion, osType: QOperatingSystemVersionOSType, vmajor: cint): QOperatingSystemVersion =

  QOperatingSystemVersion.init(fcQOperatingSystemVersion_new(cint(osType), vmajor))
proc create*(T: type QOperatingSystemVersion, osType: QOperatingSystemVersionOSType, vmajor: cint, vminor: cint): QOperatingSystemVersion =

  QOperatingSystemVersion.init(fcQOperatingSystemVersion_new2(cint(osType), vmajor, vminor))
proc create*(T: type QOperatingSystemVersion, osType: QOperatingSystemVersionOSType, vmajor: cint, vminor: cint, vmicro: cint): QOperatingSystemVersion =

  QOperatingSystemVersion.init(fcQOperatingSystemVersion_new3(cint(osType), vmajor, vminor, vmicro))
proc current*(_: type QOperatingSystemVersion, ): QOperatingSystemVersion =

  QOperatingSystemVersion(h: fcQOperatingSystemVersion_current())

proc currentType*(_: type QOperatingSystemVersion, ): QOperatingSystemVersionOSType =

  QOperatingSystemVersionOSType(fcQOperatingSystemVersion_currentType())

proc majorVersion*(self: QOperatingSystemVersion, ): cint =

  fcQOperatingSystemVersion_majorVersion(self.h)

proc minorVersion*(self: QOperatingSystemVersion, ): cint =

  fcQOperatingSystemVersion_minorVersion(self.h)

proc microVersion*(self: QOperatingSystemVersion, ): cint =

  fcQOperatingSystemVersion_microVersion(self.h)

proc segmentCount*(self: QOperatingSystemVersion, ): cint =

  fcQOperatingSystemVersion_segmentCount(self.h)

proc typeX*(self: QOperatingSystemVersion, ): QOperatingSystemVersionOSType =

  QOperatingSystemVersionOSType(fcQOperatingSystemVersion_typeX(self.h))

proc name*(self: QOperatingSystemVersion, ): string =

  let v_ms = fcQOperatingSystemVersion_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QOperatingSystemVersion) =
  fcQOperatingSystemVersion_delete(self.h)
