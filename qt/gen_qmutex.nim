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
{.compile("gen_qmutex.cpp", cflags).}


type QMutexRecursionMode* = cint
const
  QMutexNonRecursive* = 0
  QMutexRecursive* = 1



import gen_qmutex_types
export gen_qmutex_types


type cQBasicMutex*{.exportc: "QBasicMutex", incompleteStruct.} = object
type cQMutex*{.exportc: "QMutex", incompleteStruct.} = object
type cQRecursiveMutex*{.exportc: "QRecursiveMutex", incompleteStruct.} = object
type cQMutexLocker*{.exportc: "QMutexLocker", incompleteStruct.} = object

proc fcQBasicMutex_new(): ptr cQBasicMutex {.importc: "QBasicMutex_new".}
proc fcQBasicMutex_lock(self: pointer, ): void {.importc: "QBasicMutex_lock".}
proc fcQBasicMutex_unlock(self: pointer, ): void {.importc: "QBasicMutex_unlock".}
proc fcQBasicMutex_tryLock(self: pointer, ): bool {.importc: "QBasicMutex_tryLock".}
proc fcQBasicMutex_tryLock2(self: pointer, ): bool {.importc: "QBasicMutex_tryLock2".}
proc fcQBasicMutex_isRecursive(self: pointer, ): bool {.importc: "QBasicMutex_isRecursive".}
proc fcQBasicMutex_isRecursive2(self: pointer, ): bool {.importc: "QBasicMutex_isRecursive2".}
proc fcQBasicMutex_delete(self: pointer) {.importc: "QBasicMutex_delete".}
proc fcQMutex_new(): ptr cQMutex {.importc: "QMutex_new".}
proc fcQMutex_new2(mode: cint): ptr cQMutex {.importc: "QMutex_new2".}
proc fcQMutex_lock(self: pointer, ): void {.importc: "QMutex_lock".}
proc fcQMutex_tryLock(self: pointer, ): bool {.importc: "QMutex_tryLock".}
proc fcQMutex_unlock(self: pointer, ): void {.importc: "QMutex_unlock".}
proc fcQMutex_tryLock2(self: pointer, ): bool {.importc: "QMutex_tryLock2".}
proc fcQMutex_isRecursive(self: pointer, ): bool {.importc: "QMutex_isRecursive".}
proc fcQMutex_tryLock1(self: pointer, timeout: cint): bool {.importc: "QMutex_tryLock1".}
proc fcQMutex_delete(self: pointer) {.importc: "QMutex_delete".}
proc fcQRecursiveMutex_new(): ptr cQRecursiveMutex {.importc: "QRecursiveMutex_new".}
proc fcQRecursiveMutex_delete(self: pointer) {.importc: "QRecursiveMutex_delete".}
proc fcQMutexLocker_new(m: pointer): ptr cQMutexLocker {.importc: "QMutexLocker_new".}
proc fcQMutexLocker_new2(m: pointer): ptr cQMutexLocker {.importc: "QMutexLocker_new2".}
proc fcQMutexLocker_unlock(self: pointer, ): void {.importc: "QMutexLocker_unlock".}
proc fcQMutexLocker_relock(self: pointer, ): void {.importc: "QMutexLocker_relock".}
proc fcQMutexLocker_mutex(self: pointer, ): pointer {.importc: "QMutexLocker_mutex".}
proc fcQMutexLocker_delete(self: pointer) {.importc: "QMutexLocker_delete".}


func init*(T: type QBasicMutex, h: ptr cQBasicMutex): QBasicMutex =
  T(h: h)
proc create*(T: type QBasicMutex, ): QBasicMutex =

  QBasicMutex.init(fcQBasicMutex_new())
proc lock*(self: QBasicMutex, ): void =

  fcQBasicMutex_lock(self.h)

proc unlock*(self: QBasicMutex, ): void =

  fcQBasicMutex_unlock(self.h)

proc tryLock*(self: QBasicMutex, ): bool =

  fcQBasicMutex_tryLock(self.h)

proc tryLock2*(self: QBasicMutex, ): bool =

  fcQBasicMutex_tryLock2(self.h)

proc isRecursive*(self: QBasicMutex, ): bool =

  fcQBasicMutex_isRecursive(self.h)

proc isRecursive2*(self: QBasicMutex, ): bool =

  fcQBasicMutex_isRecursive2(self.h)

proc delete*(self: QBasicMutex) =
  fcQBasicMutex_delete(self.h)

func init*(T: type QMutex, h: ptr cQMutex): QMutex =
  T(h: h)
proc create*(T: type QMutex, ): QMutex =

  QMutex.init(fcQMutex_new())
proc create*(T: type QMutex, mode: QMutexRecursionMode): QMutex =

  QMutex.init(fcQMutex_new2(cint(mode)))
proc lock*(self: QMutex, ): void =

  fcQMutex_lock(self.h)

proc tryLock*(self: QMutex, ): bool =

  fcQMutex_tryLock(self.h)

proc unlock*(self: QMutex, ): void =

  fcQMutex_unlock(self.h)

proc tryLock2*(self: QMutex, ): bool =

  fcQMutex_tryLock2(self.h)

proc isRecursive*(self: QMutex, ): bool =

  fcQMutex_isRecursive(self.h)

proc tryLock1*(self: QMutex, timeout: cint): bool =

  fcQMutex_tryLock1(self.h, timeout)

proc delete*(self: QMutex) =
  fcQMutex_delete(self.h)

func init*(T: type QRecursiveMutex, h: ptr cQRecursiveMutex): QRecursiveMutex =
  T(h: h)
proc create*(T: type QRecursiveMutex, ): QRecursiveMutex =

  QRecursiveMutex.init(fcQRecursiveMutex_new())
proc delete*(self: QRecursiveMutex) =
  fcQRecursiveMutex_delete(self.h)

func init*(T: type QMutexLocker, h: ptr cQMutexLocker): QMutexLocker =
  T(h: h)
proc create*(T: type QMutexLocker, m: QBasicMutex): QMutexLocker =

  QMutexLocker.init(fcQMutexLocker_new(m.h))
proc create2*(T: type QMutexLocker, m: QRecursiveMutex): QMutexLocker =

  QMutexLocker.init(fcQMutexLocker_new2(m.h))
proc unlock*(self: QMutexLocker, ): void =

  fcQMutexLocker_unlock(self.h)

proc relock*(self: QMutexLocker, ): void =

  fcQMutexLocker_relock(self.h)

proc mutex*(self: QMutexLocker, ): QMutex =

  QMutex(h: fcQMutexLocker_mutex(self.h))

proc delete*(self: QMutexLocker) =
  fcQMutexLocker_delete(self.h)
