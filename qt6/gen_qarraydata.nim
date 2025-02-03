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
{.compile("gen_qarraydata.cpp", cflags).}


type QArrayDataAllocationOption* = cint
const
  QArrayDataGrow* = 0
  QArrayDataKeepSize* = 1



type QArrayDataGrowthPosition* = cint
const
  QArrayDataGrowsAtEnd* = 0
  QArrayDataGrowsAtBeginning* = 1



type QArrayDataArrayOption* = cint
const
  QArrayDataArrayOptionDefault* = 0
  QArrayDataCapacityReserved* = 1



type QtPrivateQContainerImplHelperCutResult* = cint
const
  QtPrivateQContainerImplHelperNull* = 0
  QtPrivateQContainerImplHelperEmpty* = 1
  QtPrivateQContainerImplHelperFull* = 2
  QtPrivateQContainerImplHelperSubset* = 3



import gen_qarraydata_types
export gen_qarraydata_types


type cQArrayData*{.exportc: "QArrayData", incompleteStruct.} = object

proc fcQArrayData_allocatedCapacity(self: pointer, ): int64 {.importc: "QArrayData_allocatedCapacity".}
proc fcQArrayData_constAllocatedCapacity(self: pointer, ): int64 {.importc: "QArrayData_constAllocatedCapacity".}
proc fcQArrayData_refX(self: pointer, ): bool {.importc: "QArrayData_ref".}
proc fcQArrayData_deref(self: pointer, ): bool {.importc: "QArrayData_deref".}
proc fcQArrayData_isShared(self: pointer, ): bool {.importc: "QArrayData_isShared".}
proc fcQArrayData_needsDetach(self: pointer, ): bool {.importc: "QArrayData_needsDetach".}
proc fcQArrayData_detachCapacity(self: pointer, newSize: int64): int64 {.importc: "QArrayData_detachCapacity".}
proc fcQArrayData_reallocateUnaligned(data: pointer, dataPointer: pointer, objectSize: int64, newCapacity: int64, option: cint): struct_miqt_map {.importc: "QArrayData_reallocateUnaligned".}
proc fcQArrayData_deallocate(data: pointer, objectSize: int64, alignment: int64): void {.importc: "QArrayData_deallocate".}
proc fcQArrayData_delete(self: pointer) {.importc: "QArrayData_delete".}


func init*(T: type QArrayData, h: ptr cQArrayData): QArrayData =
  T(h: h)
proc allocatedCapacity*(self: QArrayData, ): int64 =

  fcQArrayData_allocatedCapacity(self.h)

proc constAllocatedCapacity*(self: QArrayData, ): int64 =

  fcQArrayData_constAllocatedCapacity(self.h)

proc refX*(self: QArrayData, ): bool =

  fcQArrayData_refX(self.h)

proc deref*(self: QArrayData, ): bool =

  fcQArrayData_deref(self.h)

proc isShared*(self: QArrayData, ): bool =

  fcQArrayData_isShared(self.h)

proc needsDetach*(self: QArrayData, ): bool =

  fcQArrayData_needsDetach(self.h)

proc detachCapacity*(self: QArrayData, newSize: int64): int64 =

  fcQArrayData_detachCapacity(self.h, newSize)

proc reallocateUnaligned*(_: type QArrayData, data: QArrayData, dataPointer: pointer, objectSize: int64, newCapacity: int64, option: QArrayDataAllocationOption): tuple[first: QArrayData, second: pointer] =

  var v_mm = fcQArrayData_reallocateUnaligned(data.h, dataPointer, objectSize, newCapacity, cint(option))
  var v_First_CArray = cast[ptr UncheckedArray[pointer]](v_mm.keys)
  var v_Second_CArray = cast[ptr UncheckedArray[pointer]](v_mm.values)
  var v_entry_First = QArrayData(h: v_First_CArray[0])

  var v_entry_Second = v_Second_CArray[0]

  (first: v_entry_First , second: v_entry_Second )

proc deallocate*(_: type QArrayData, data: QArrayData, objectSize: int64, alignment: int64): void =

  fcQArrayData_deallocate(data.h, objectSize, alignment)

proc delete*(self: QArrayData) =
  fcQArrayData_delete(self.h)
