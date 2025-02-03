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
{.compile("gen_qreadwritelock.cpp", cflags).}


type QReadWriteLockRecursionMode* = cint
const
  QReadWriteLockNonRecursive* = 0
  QReadWriteLockRecursive* = 1



import gen_qreadwritelock_types
export gen_qreadwritelock_types


type cQReadWriteLock*{.exportc: "QReadWriteLock", incompleteStruct.} = object
type cQReadLocker*{.exportc: "QReadLocker", incompleteStruct.} = object
type cQWriteLocker*{.exportc: "QWriteLocker", incompleteStruct.} = object

proc fcQReadWriteLock_new(): ptr cQReadWriteLock {.importc: "QReadWriteLock_new".}
proc fcQReadWriteLock_new2(recursionMode: cint): ptr cQReadWriteLock {.importc: "QReadWriteLock_new2".}
proc fcQReadWriteLock_lockForRead(self: pointer, ): void {.importc: "QReadWriteLock_lockForRead".}
proc fcQReadWriteLock_tryLockForRead(self: pointer, ): bool {.importc: "QReadWriteLock_tryLockForRead".}
proc fcQReadWriteLock_tryLockForReadWithTimeout(self: pointer, timeout: cint): bool {.importc: "QReadWriteLock_tryLockForReadWithTimeout".}
proc fcQReadWriteLock_lockForWrite(self: pointer, ): void {.importc: "QReadWriteLock_lockForWrite".}
proc fcQReadWriteLock_tryLockForWrite(self: pointer, ): bool {.importc: "QReadWriteLock_tryLockForWrite".}
proc fcQReadWriteLock_tryLockForWriteWithTimeout(self: pointer, timeout: cint): bool {.importc: "QReadWriteLock_tryLockForWriteWithTimeout".}
proc fcQReadWriteLock_unlock(self: pointer, ): void {.importc: "QReadWriteLock_unlock".}
proc fcQReadWriteLock_delete(self: pointer) {.importc: "QReadWriteLock_delete".}
proc fcQReadLocker_new(readWriteLock: pointer): ptr cQReadLocker {.importc: "QReadLocker_new".}
proc fcQReadLocker_unlock(self: pointer, ): void {.importc: "QReadLocker_unlock".}
proc fcQReadLocker_relock(self: pointer, ): void {.importc: "QReadLocker_relock".}
proc fcQReadLocker_readWriteLock(self: pointer, ): pointer {.importc: "QReadLocker_readWriteLock".}
proc fcQReadLocker_delete(self: pointer) {.importc: "QReadLocker_delete".}
proc fcQWriteLocker_new(readWriteLock: pointer): ptr cQWriteLocker {.importc: "QWriteLocker_new".}
proc fcQWriteLocker_unlock(self: pointer, ): void {.importc: "QWriteLocker_unlock".}
proc fcQWriteLocker_relock(self: pointer, ): void {.importc: "QWriteLocker_relock".}
proc fcQWriteLocker_readWriteLock(self: pointer, ): pointer {.importc: "QWriteLocker_readWriteLock".}
proc fcQWriteLocker_delete(self: pointer) {.importc: "QWriteLocker_delete".}


func init*(T: type QReadWriteLock, h: ptr cQReadWriteLock): QReadWriteLock =
  T(h: h)
proc create*(T: type QReadWriteLock, ): QReadWriteLock =

  QReadWriteLock.init(fcQReadWriteLock_new())
proc create*(T: type QReadWriteLock, recursionMode: QReadWriteLockRecursionMode): QReadWriteLock =

  QReadWriteLock.init(fcQReadWriteLock_new2(cint(recursionMode)))
proc lockForRead*(self: QReadWriteLock, ): void =

  fcQReadWriteLock_lockForRead(self.h)

proc tryLockForRead*(self: QReadWriteLock, ): bool =

  fcQReadWriteLock_tryLockForRead(self.h)

proc tryLockForReadWithTimeout*(self: QReadWriteLock, timeout: cint): bool =

  fcQReadWriteLock_tryLockForReadWithTimeout(self.h, timeout)

proc lockForWrite*(self: QReadWriteLock, ): void =

  fcQReadWriteLock_lockForWrite(self.h)

proc tryLockForWrite*(self: QReadWriteLock, ): bool =

  fcQReadWriteLock_tryLockForWrite(self.h)

proc tryLockForWriteWithTimeout*(self: QReadWriteLock, timeout: cint): bool =

  fcQReadWriteLock_tryLockForWriteWithTimeout(self.h, timeout)

proc unlock*(self: QReadWriteLock, ): void =

  fcQReadWriteLock_unlock(self.h)

proc delete*(self: QReadWriteLock) =
  fcQReadWriteLock_delete(self.h)

func init*(T: type QReadLocker, h: ptr cQReadLocker): QReadLocker =
  T(h: h)
proc create*(T: type QReadLocker, readWriteLock: QReadWriteLock): QReadLocker =

  QReadLocker.init(fcQReadLocker_new(readWriteLock.h))
proc unlock*(self: QReadLocker, ): void =

  fcQReadLocker_unlock(self.h)

proc relock*(self: QReadLocker, ): void =

  fcQReadLocker_relock(self.h)

proc readWriteLock*(self: QReadLocker, ): QReadWriteLock =

  QReadWriteLock(h: fcQReadLocker_readWriteLock(self.h))

proc delete*(self: QReadLocker) =
  fcQReadLocker_delete(self.h)

func init*(T: type QWriteLocker, h: ptr cQWriteLocker): QWriteLocker =
  T(h: h)
proc create*(T: type QWriteLocker, readWriteLock: QReadWriteLock): QWriteLocker =

  QWriteLocker.init(fcQWriteLocker_new(readWriteLock.h))
proc unlock*(self: QWriteLocker, ): void =

  fcQWriteLocker_unlock(self.h)

proc relock*(self: QWriteLocker, ): void =

  fcQWriteLocker_relock(self.h)

proc readWriteLock*(self: QWriteLocker, ): QReadWriteLock =

  QReadWriteLock(h: fcQWriteLocker_readWriteLock(self.h))

proc delete*(self: QWriteLocker) =
  fcQWriteLocker_delete(self.h)
