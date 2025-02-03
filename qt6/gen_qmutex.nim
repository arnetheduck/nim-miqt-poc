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
{.compile("gen_qmutex.cpp", cflags).}


import gen_qmutex_types
export gen_qmutex_types


type cQBasicMutex*{.exportc: "QBasicMutex", incompleteStruct.} = object
type cQMutex*{.exportc: "QMutex", incompleteStruct.} = object
type cQRecursiveMutex*{.exportc: "QRecursiveMutex", incompleteStruct.} = object

proc fcQBasicMutex_new(): ptr cQBasicMutex {.importc: "QBasicMutex_new".}
proc fcQBasicMutex_lock(self: pointer, ): void {.importc: "QBasicMutex_lock".}
proc fcQBasicMutex_unlock(self: pointer, ): void {.importc: "QBasicMutex_unlock".}
proc fcQBasicMutex_tryLock(self: pointer, ): bool {.importc: "QBasicMutex_tryLock".}
proc fcQBasicMutex_tryLock2(self: pointer, ): bool {.importc: "QBasicMutex_tryLock2".}
proc fcQBasicMutex_delete(self: pointer) {.importc: "QBasicMutex_delete".}
proc fcQMutex_new(): ptr cQMutex {.importc: "QMutex_new".}
proc fcQMutex_tryLock(self: pointer, ): bool {.importc: "QMutex_tryLock".}
proc fcQMutex_tryLockWithTimeout(self: pointer, timeout: cint): bool {.importc: "QMutex_tryLockWithTimeout".}
proc fcQMutex_delete(self: pointer) {.importc: "QMutex_delete".}
proc fcQRecursiveMutex_new(): ptr cQRecursiveMutex {.importc: "QRecursiveMutex_new".}
proc fcQRecursiveMutex_lock(self: pointer, ): void {.importc: "QRecursiveMutex_lock".}
proc fcQRecursiveMutex_tryLock(self: pointer, ): bool {.importc: "QRecursiveMutex_tryLock".}
proc fcQRecursiveMutex_unlock(self: pointer, ): void {.importc: "QRecursiveMutex_unlock".}
proc fcQRecursiveMutex_tryLock2(self: pointer, ): bool {.importc: "QRecursiveMutex_tryLock2".}
proc fcQRecursiveMutex_tryLock1(self: pointer, timeout: cint): bool {.importc: "QRecursiveMutex_tryLock1".}
proc fcQRecursiveMutex_delete(self: pointer) {.importc: "QRecursiveMutex_delete".}


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

proc delete*(self: QBasicMutex) =
  fcQBasicMutex_delete(self.h)

func init*(T: type QMutex, h: ptr cQMutex): QMutex =
  T(h: h)
proc create*(T: type QMutex, ): QMutex =

  QMutex.init(fcQMutex_new())
proc tryLock*(self: QMutex, ): bool =

  fcQMutex_tryLock(self.h)

proc tryLockWithTimeout*(self: QMutex, timeout: cint): bool =

  fcQMutex_tryLockWithTimeout(self.h, timeout)

proc delete*(self: QMutex) =
  fcQMutex_delete(self.h)

func init*(T: type QRecursiveMutex, h: ptr cQRecursiveMutex): QRecursiveMutex =
  T(h: h)
proc create*(T: type QRecursiveMutex, ): QRecursiveMutex =

  QRecursiveMutex.init(fcQRecursiveMutex_new())
proc lock*(self: QRecursiveMutex, ): void =

  fcQRecursiveMutex_lock(self.h)

proc tryLock*(self: QRecursiveMutex, ): bool =

  fcQRecursiveMutex_tryLock(self.h)

proc unlock*(self: QRecursiveMutex, ): void =

  fcQRecursiveMutex_unlock(self.h)

proc tryLock2*(self: QRecursiveMutex, ): bool =

  fcQRecursiveMutex_tryLock2(self.h)

proc tryLock1*(self: QRecursiveMutex, timeout: cint): bool =

  fcQRecursiveMutex_tryLock1(self.h, timeout)

proc delete*(self: QRecursiveMutex) =
  fcQRecursiveMutex_delete(self.h)
