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
{.compile("gen_qlockfile.cpp", cflags).}


type QLockFileLockError* = cint
const
  QLockFileNoError* = 0
  QLockFileLockFailedError* = 1
  QLockFilePermissionError* = 2
  QLockFileUnknownError* = 3



import gen_qlockfile_types
export gen_qlockfile_types


type cQLockFile*{.exportc: "QLockFile", incompleteStruct.} = object

proc fcQLockFile_new(fileName: struct_miqt_string): ptr cQLockFile {.importc: "QLockFile_new".}
proc fcQLockFile_fileName(self: pointer, ): struct_miqt_string {.importc: "QLockFile_fileName".}
proc fcQLockFile_lock(self: pointer, ): bool {.importc: "QLockFile_lock".}
proc fcQLockFile_tryLock(self: pointer, ): bool {.importc: "QLockFile_tryLock".}
proc fcQLockFile_unlock(self: pointer, ): void {.importc: "QLockFile_unlock".}
proc fcQLockFile_setStaleLockTime(self: pointer, staleLockTime: cint): void {.importc: "QLockFile_setStaleLockTime".}
proc fcQLockFile_staleLockTime(self: pointer, ): cint {.importc: "QLockFile_staleLockTime".}
proc fcQLockFile_isLocked(self: pointer, ): bool {.importc: "QLockFile_isLocked".}
proc fcQLockFile_removeStaleLockFile(self: pointer, ): bool {.importc: "QLockFile_removeStaleLockFile".}
proc fcQLockFile_error(self: pointer, ): cint {.importc: "QLockFile_error".}
proc fcQLockFile_tryLock1(self: pointer, timeout: cint): bool {.importc: "QLockFile_tryLock1".}
proc fcQLockFile_delete(self: pointer) {.importc: "QLockFile_delete".}


func init*(T: type QLockFile, h: ptr cQLockFile): QLockFile =
  T(h: h)
proc create*(T: type QLockFile, fileName: string): QLockFile =

  QLockFile.init(fcQLockFile_new(struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))
proc fileName*(self: QLockFile, ): string =

  let v_ms = fcQLockFile_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc lock*(self: QLockFile, ): bool =

  fcQLockFile_lock(self.h)

proc tryLock*(self: QLockFile, ): bool =

  fcQLockFile_tryLock(self.h)

proc unlock*(self: QLockFile, ): void =

  fcQLockFile_unlock(self.h)

proc setStaleLockTime*(self: QLockFile, staleLockTime: cint): void =

  fcQLockFile_setStaleLockTime(self.h, staleLockTime)

proc staleLockTime*(self: QLockFile, ): cint =

  fcQLockFile_staleLockTime(self.h)

proc isLocked*(self: QLockFile, ): bool =

  fcQLockFile_isLocked(self.h)

proc removeStaleLockFile*(self: QLockFile, ): bool =

  fcQLockFile_removeStaleLockFile(self.h)

proc error*(self: QLockFile, ): QLockFileLockError =

  QLockFileLockError(fcQLockFile_error(self.h))

proc tryLock1*(self: QLockFile, timeout: cint): bool =

  fcQLockFile_tryLock1(self.h, timeout)

proc delete*(self: QLockFile) =
  fcQLockFile_delete(self.h)
