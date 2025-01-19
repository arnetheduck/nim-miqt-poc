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
{.compile("gen_qfiledevice.cpp", cflags).}


type QFileDeviceFileError* = cint
const
  QFileDeviceNoError* = 0
  QFileDeviceReadError* = 1
  QFileDeviceWriteError* = 2
  QFileDeviceFatalError* = 3
  QFileDeviceResourceError* = 4
  QFileDeviceOpenError* = 5
  QFileDeviceAbortError* = 6
  QFileDeviceTimeOutError* = 7
  QFileDeviceUnspecifiedError* = 8
  QFileDeviceRemoveError* = 9
  QFileDeviceRenameError* = 10
  QFileDevicePositionError* = 11
  QFileDeviceResizeError* = 12
  QFileDevicePermissionsError* = 13
  QFileDeviceCopyError* = 14



type QFileDeviceFileTime* = cint
const
  QFileDeviceFileAccessTime* = 0
  QFileDeviceFileBirthTime* = 1
  QFileDeviceFileMetadataChangeTime* = 2
  QFileDeviceFileModificationTime* = 3



type QFileDevicePermission* = cint
const
  QFileDeviceReadOwner* = 16384
  QFileDeviceWriteOwner* = 8192
  QFileDeviceExeOwner* = 4096
  QFileDeviceReadUser* = 1024
  QFileDeviceWriteUser* = 512
  QFileDeviceExeUser* = 256
  QFileDeviceReadGroup* = 64
  QFileDeviceWriteGroup* = 32
  QFileDeviceExeGroup* = 16
  QFileDeviceReadOther* = 4
  QFileDeviceWriteOther* = 2
  QFileDeviceExeOther* = 1



type QFileDeviceFileHandleFlag* = cint
const
  QFileDeviceAutoCloseHandle* = 1
  QFileDeviceDontCloseHandle* = 0



type QFileDeviceMemoryMapFlag* = cint
const
  QFileDeviceNoOptions* = 0
  QFileDeviceMapPrivateOption* = 1



import gen_qfiledevice_types
export gen_qfiledevice_types

import
  gen_qdatetime,
  gen_qiodevice,
  gen_qobjectdefs
export
  gen_qdatetime,
  gen_qiodevice,
  gen_qobjectdefs

type cQFileDevice*{.exportc: "QFileDevice", incompleteStruct.} = object

proc fcQFileDevice_metaObject(self: pointer, ): pointer {.importc: "QFileDevice_metaObject".}
proc fcQFileDevice_metacast(self: pointer, param1: cstring): pointer {.importc: "QFileDevice_metacast".}
proc fcQFileDevice_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFileDevice_metacall".}
proc fcQFileDevice_tr(s: cstring): struct_miqt_string {.importc: "QFileDevice_tr".}
proc fcQFileDevice_error(self: pointer, ): cint {.importc: "QFileDevice_error".}
proc fcQFileDevice_unsetError(self: pointer, ): void {.importc: "QFileDevice_unsetError".}
proc fcQFileDevice_close(self: pointer, ): void {.importc: "QFileDevice_close".}
proc fcQFileDevice_isSequential(self: pointer, ): bool {.importc: "QFileDevice_isSequential".}
proc fcQFileDevice_handle(self: pointer, ): cint {.importc: "QFileDevice_handle".}
proc fcQFileDevice_fileName(self: pointer, ): struct_miqt_string {.importc: "QFileDevice_fileName".}
proc fcQFileDevice_pos(self: pointer, ): clonglong {.importc: "QFileDevice_pos".}
proc fcQFileDevice_seek(self: pointer, offset: clonglong): bool {.importc: "QFileDevice_seek".}
proc fcQFileDevice_atEnd(self: pointer, ): bool {.importc: "QFileDevice_atEnd".}
proc fcQFileDevice_flush(self: pointer, ): bool {.importc: "QFileDevice_flush".}
proc fcQFileDevice_size(self: pointer, ): clonglong {.importc: "QFileDevice_size".}
proc fcQFileDevice_resize(self: pointer, sz: clonglong): bool {.importc: "QFileDevice_resize".}
proc fcQFileDevice_permissions(self: pointer, ): cint {.importc: "QFileDevice_permissions".}
proc fcQFileDevice_setPermissions(self: pointer, permissionSpec: cint): bool {.importc: "QFileDevice_setPermissions".}
proc fcQFileDevice_map(self: pointer, offset: clonglong, size: clonglong): ptr uint8 {.importc: "QFileDevice_map".}
proc fcQFileDevice_unmap(self: pointer, address: ptr uint8): bool {.importc: "QFileDevice_unmap".}
proc fcQFileDevice_fileTime(self: pointer, time: cint): pointer {.importc: "QFileDevice_fileTime".}
proc fcQFileDevice_setFileTime(self: pointer, newDate: pointer, fileTime: cint): bool {.importc: "QFileDevice_setFileTime".}
proc fcQFileDevice_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFileDevice_tr2".}
proc fcQFileDevice_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFileDevice_tr3".}
proc fcQFileDevice_map3(self: pointer, offset: clonglong, size: clonglong, flags: cint): ptr uint8 {.importc: "QFileDevice_map3".}
proc fcQFileDevice_staticMetaObject(): pointer {.importc: "QFileDevice_staticMetaObject".}
proc fcQFileDevice_delete(self: pointer) {.importc: "QFileDevice_delete".}


func init*(T: type QFileDevice, h: ptr cQFileDevice): QFileDevice =
  T(h: h)
proc metaObject*(self: QFileDevice, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQFileDevice_metaObject(self.h))

proc metacast*(self: QFileDevice, param1: cstring): pointer =

  fcQFileDevice_metacast(self.h, param1)

proc metacall*(self: QFileDevice, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQFileDevice_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QFileDevice, s: cstring): string =

  let v_ms = fcQFileDevice_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc error*(self: QFileDevice, ): QFileDeviceFileError =

  QFileDeviceFileError(fcQFileDevice_error(self.h))

proc unsetError*(self: QFileDevice, ): void =

  fcQFileDevice_unsetError(self.h)

proc close*(self: QFileDevice, ): void =

  fcQFileDevice_close(self.h)

proc isSequential*(self: QFileDevice, ): bool =

  fcQFileDevice_isSequential(self.h)

proc handle*(self: QFileDevice, ): cint =

  fcQFileDevice_handle(self.h)

proc fileName*(self: QFileDevice, ): string =

  let v_ms = fcQFileDevice_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc pos*(self: QFileDevice, ): clonglong =

  fcQFileDevice_pos(self.h)

proc seek*(self: QFileDevice, offset: clonglong): bool =

  fcQFileDevice_seek(self.h, offset)

proc atEnd*(self: QFileDevice, ): bool =

  fcQFileDevice_atEnd(self.h)

proc flush*(self: QFileDevice, ): bool =

  fcQFileDevice_flush(self.h)

proc size*(self: QFileDevice, ): clonglong =

  fcQFileDevice_size(self.h)

proc resize*(self: QFileDevice, sz: clonglong): bool =

  fcQFileDevice_resize(self.h, sz)

proc permissions*(self: QFileDevice, ): QFileDevicePermission =

  QFileDevicePermission(fcQFileDevice_permissions(self.h))

proc setPermissions*(self: QFileDevice, permissionSpec: QFileDevicePermission): bool =

  fcQFileDevice_setPermissions(self.h, cint(permissionSpec))

proc map*(self: QFileDevice, offset: clonglong, size: clonglong): ptr uint8 =

  fcQFileDevice_map(self.h, offset, size)

proc unmap*(self: QFileDevice, address: ptr uint8): bool =

  fcQFileDevice_unmap(self.h, address)

proc fileTime*(self: QFileDevice, time: QFileDeviceFileTime): gen_qdatetime.QDateTime =

  gen_qdatetime.QDateTime(h: fcQFileDevice_fileTime(self.h, cint(time)))

proc setFileTime*(self: QFileDevice, newDate: gen_qdatetime.QDateTime, fileTime: QFileDeviceFileTime): bool =

  fcQFileDevice_setFileTime(self.h, newDate.h, cint(fileTime))

proc tr2*(_: type QFileDevice, s: cstring, c: cstring): string =

  let v_ms = fcQFileDevice_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QFileDevice, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQFileDevice_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc map3*(self: QFileDevice, offset: clonglong, size: clonglong, flags: QFileDeviceMemoryMapFlag): ptr uint8 =

  fcQFileDevice_map3(self.h, offset, size, cint(flags))

proc staticMetaObject*(_: type QFileDevice): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQFileDevice_staticMetaObject())
proc delete*(self: QFileDevice) =
  fcQFileDevice_delete(self.h)
