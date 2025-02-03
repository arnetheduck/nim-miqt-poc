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
{.compile("gen_qarraydata.cpp", cflags).}


type QArrayDataAllocationOption* = cint
const
  QArrayDataCapacityReserved* = 1
  QArrayDataUnsharable* = 2
  QArrayDataRawData* = 4
  QArrayDataGrow* = 8
  QArrayDataDefault* = 0



type QtPrivateQContainerImplHelperCutResult* = cint
const
  QtPrivateQContainerImplHelperNull* = 0
  QtPrivateQContainerImplHelperEmpty* = 1
  QtPrivateQContainerImplHelperFull* = 2
  QtPrivateQContainerImplHelperSubset* = 3



import gen_qarraydata_types
export gen_qarraydata_types


type cQArrayData*{.exportc: "QArrayData", incompleteStruct.} = object

proc fcQArrayData_data(self: pointer, ): pointer {.importc: "QArrayData_data".}
proc fcQArrayData_data2(self: pointer, ): pointer {.importc: "QArrayData_data2".}
proc fcQArrayData_isMutable(self: pointer, ): bool {.importc: "QArrayData_isMutable".}
proc fcQArrayData_detachCapacity(self: pointer, newSize: csize_t): csize_t {.importc: "QArrayData_detachCapacity".}
proc fcQArrayData_detachFlags(self: pointer, ): cint {.importc: "QArrayData_detachFlags".}
proc fcQArrayData_cloneFlags(self: pointer, ): cint {.importc: "QArrayData_cloneFlags".}
proc fcQArrayData_allocate(objectSize: csize_t, alignment: csize_t, capacity: csize_t): pointer {.importc: "QArrayData_allocate".}
proc fcQArrayData_reallocateUnaligned(data: pointer, objectSize: csize_t, newCapacity: csize_t): pointer {.importc: "QArrayData_reallocateUnaligned".}
proc fcQArrayData_deallocate(data: pointer, objectSize: csize_t, alignment: csize_t): void {.importc: "QArrayData_deallocate".}
proc fcQArrayData_sharedNull(): pointer {.importc: "QArrayData_sharedNull".}
proc fcQArrayData_allocate4(objectSize: csize_t, alignment: csize_t, capacity: csize_t, options: cint): pointer {.importc: "QArrayData_allocate4".}
proc fcQArrayData_reallocateUnaligned4(data: pointer, objectSize: csize_t, newCapacity: csize_t, newOptions: cint): pointer {.importc: "QArrayData_reallocateUnaligned4".}
proc fcQArrayData_delete(self: pointer) {.importc: "QArrayData_delete".}


func init*(T: type QArrayData, h: ptr cQArrayData): QArrayData =
  T(h: h)
proc data*(self: QArrayData, ): pointer =

  fcQArrayData_data(self.h)

proc data2*(self: QArrayData, ): pointer =

  fcQArrayData_data2(self.h)

proc isMutable*(self: QArrayData, ): bool =

  fcQArrayData_isMutable(self.h)

proc detachCapacity*(self: QArrayData, newSize: csize_t): csize_t =

  fcQArrayData_detachCapacity(self.h, newSize)

proc detachFlags*(self: QArrayData, ): QArrayDataAllocationOption =

  QArrayDataAllocationOption(fcQArrayData_detachFlags(self.h))

proc cloneFlags*(self: QArrayData, ): QArrayDataAllocationOption =

  QArrayDataAllocationOption(fcQArrayData_cloneFlags(self.h))

proc allocate*(_: type QArrayData, objectSize: csize_t, alignment: csize_t, capacity: csize_t): QArrayData =

  QArrayData(h: fcQArrayData_allocate(objectSize, alignment, capacity))

proc reallocateUnaligned*(_: type QArrayData, data: QArrayData, objectSize: csize_t, newCapacity: csize_t): QArrayData =

  QArrayData(h: fcQArrayData_reallocateUnaligned(data.h, objectSize, newCapacity))

proc deallocate*(_: type QArrayData, data: QArrayData, objectSize: csize_t, alignment: csize_t): void =

  fcQArrayData_deallocate(data.h, objectSize, alignment)

proc sharedNull*(_: type QArrayData, ): QArrayData =

  QArrayData(h: fcQArrayData_sharedNull())

proc allocate4*(_: type QArrayData, objectSize: csize_t, alignment: csize_t, capacity: csize_t, options: QArrayDataAllocationOption): QArrayData =

  QArrayData(h: fcQArrayData_allocate4(objectSize, alignment, capacity, cint(options)))

proc reallocateUnaligned4*(_: type QArrayData, data: QArrayData, objectSize: csize_t, newCapacity: csize_t, newOptions: QArrayDataAllocationOption): QArrayData =

  QArrayData(h: fcQArrayData_reallocateUnaligned4(data.h, objectSize, newCapacity, cint(newOptions)))

proc delete*(self: QArrayData) =
  fcQArrayData_delete(self.h)
