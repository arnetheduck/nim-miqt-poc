import Qt5MultimediaWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5MultimediaWidgets")
{.compile("gen_qabstractvideobuffer.cpp", cflags).}


type QAbstractVideoBufferHandleType* = cint
const
  QAbstractVideoBufferNoHandle* = 0
  QAbstractVideoBufferGLTextureHandle* = 1
  QAbstractVideoBufferXvShmImageHandle* = 2
  QAbstractVideoBufferCoreImageHandle* = 3
  QAbstractVideoBufferQPixmapHandle* = 4
  QAbstractVideoBufferEGLImageHandle* = 5
  QAbstractVideoBufferGLTextureRectangleHandle* = 6
  QAbstractVideoBufferUserHandle* = 1000



type QAbstractVideoBufferMapMode* = cint
const
  QAbstractVideoBufferNotMapped* = 0
  QAbstractVideoBufferReadOnly* = 1
  QAbstractVideoBufferWriteOnly* = 2
  QAbstractVideoBufferReadWrite* = 3



import gen_qabstractvideobuffer_types
export gen_qabstractvideobuffer_types

import
  gen_qvariant
export
  gen_qvariant

type cQAbstractVideoBuffer*{.exportc: "QAbstractVideoBuffer", incompleteStruct.} = object
type cQAbstractPlanarVideoBuffer*{.exportc: "QAbstractPlanarVideoBuffer", incompleteStruct.} = object

proc fcQAbstractVideoBuffer_new(typeVal: cint): ptr cQAbstractVideoBuffer {.importc: "QAbstractVideoBuffer_new".}
proc fcQAbstractVideoBuffer_release(self: pointer, ): void {.importc: "QAbstractVideoBuffer_release".}
proc fcQAbstractVideoBuffer_handleType(self: pointer, ): cint {.importc: "QAbstractVideoBuffer_handleType".}
proc fcQAbstractVideoBuffer_mapMode(self: pointer, ): cint {.importc: "QAbstractVideoBuffer_mapMode".}
proc fcQAbstractVideoBuffer_map(self: pointer, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 {.importc: "QAbstractVideoBuffer_map".}
proc fcQAbstractVideoBuffer_unmap(self: pointer, ): void {.importc: "QAbstractVideoBuffer_unmap".}
proc fcQAbstractVideoBuffer_handle(self: pointer, ): pointer {.importc: "QAbstractVideoBuffer_handle".}
proc fQAbstractVideoBuffer_virtualbase_release(self: pointer, ): void{.importc: "QAbstractVideoBuffer_virtualbase_release".}
proc fcQAbstractVideoBuffer_override_virtual_release(self: pointer, slot: int) {.importc: "QAbstractVideoBuffer_override_virtual_release".}
proc fcQAbstractVideoBuffer_override_virtual_mapMode(self: pointer, slot: int) {.importc: "QAbstractVideoBuffer_override_virtual_mapMode".}
proc fcQAbstractVideoBuffer_override_virtual_map(self: pointer, slot: int) {.importc: "QAbstractVideoBuffer_override_virtual_map".}
proc fcQAbstractVideoBuffer_override_virtual_unmap(self: pointer, slot: int) {.importc: "QAbstractVideoBuffer_override_virtual_unmap".}
proc fQAbstractVideoBuffer_virtualbase_handle(self: pointer, ): pointer{.importc: "QAbstractVideoBuffer_virtualbase_handle".}
proc fcQAbstractVideoBuffer_override_virtual_handle(self: pointer, slot: int) {.importc: "QAbstractVideoBuffer_override_virtual_handle".}
proc fcQAbstractVideoBuffer_delete(self: pointer) {.importc: "QAbstractVideoBuffer_delete".}
proc fcQAbstractPlanarVideoBuffer_new(typeVal: cint): ptr cQAbstractPlanarVideoBuffer {.importc: "QAbstractPlanarVideoBuffer_new".}
proc fcQAbstractPlanarVideoBuffer_map(self: pointer, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 {.importc: "QAbstractPlanarVideoBuffer_map".}
proc fQAbstractPlanarVideoBuffer_virtualbase_map(self: pointer, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8{.importc: "QAbstractPlanarVideoBuffer_virtualbase_map".}
proc fcQAbstractPlanarVideoBuffer_override_virtual_map(self: pointer, slot: int) {.importc: "QAbstractPlanarVideoBuffer_override_virtual_map".}
proc fQAbstractPlanarVideoBuffer_virtualbase_release(self: pointer, ): void{.importc: "QAbstractPlanarVideoBuffer_virtualbase_release".}
proc fcQAbstractPlanarVideoBuffer_override_virtual_release(self: pointer, slot: int) {.importc: "QAbstractPlanarVideoBuffer_override_virtual_release".}
proc fcQAbstractPlanarVideoBuffer_override_virtual_mapMode(self: pointer, slot: int) {.importc: "QAbstractPlanarVideoBuffer_override_virtual_mapMode".}
proc fcQAbstractPlanarVideoBuffer_override_virtual_unmap(self: pointer, slot: int) {.importc: "QAbstractPlanarVideoBuffer_override_virtual_unmap".}
proc fQAbstractPlanarVideoBuffer_virtualbase_handle(self: pointer, ): pointer{.importc: "QAbstractPlanarVideoBuffer_virtualbase_handle".}
proc fcQAbstractPlanarVideoBuffer_override_virtual_handle(self: pointer, slot: int) {.importc: "QAbstractPlanarVideoBuffer_override_virtual_handle".}
proc fcQAbstractPlanarVideoBuffer_delete(self: pointer) {.importc: "QAbstractPlanarVideoBuffer_delete".}


func init*(T: type QAbstractVideoBuffer, h: ptr cQAbstractVideoBuffer): QAbstractVideoBuffer =
  T(h: h)
proc create*(T: type QAbstractVideoBuffer, typeVal: QAbstractVideoBufferHandleType): QAbstractVideoBuffer =

  QAbstractVideoBuffer.init(fcQAbstractVideoBuffer_new(cint(typeVal)))
proc release*(self: QAbstractVideoBuffer, ): void =

  fcQAbstractVideoBuffer_release(self.h)

proc handleType*(self: QAbstractVideoBuffer, ): QAbstractVideoBufferHandleType =

  QAbstractVideoBufferHandleType(fcQAbstractVideoBuffer_handleType(self.h))

proc mapMode*(self: QAbstractVideoBuffer, ): QAbstractVideoBufferMapMode =

  QAbstractVideoBufferMapMode(fcQAbstractVideoBuffer_mapMode(self.h))

proc map*(self: QAbstractVideoBuffer, mode: QAbstractVideoBufferMapMode, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 =

  fcQAbstractVideoBuffer_map(self.h, cint(mode), numBytes, bytesPerLine)

proc unmap*(self: QAbstractVideoBuffer, ): void =

  fcQAbstractVideoBuffer_unmap(self.h)

proc handle*(self: QAbstractVideoBuffer, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQAbstractVideoBuffer_handle(self.h))

proc callVirtualBase_release(self: QAbstractVideoBuffer, ): void =


  fQAbstractVideoBuffer_virtualbase_release(self.h)

type QAbstractVideoBufferreleaseBase* = proc(): void
proc onrelease*(self: QAbstractVideoBuffer, slot: proc(super: QAbstractVideoBufferreleaseBase): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractVideoBufferreleaseBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoBuffer_override_virtual_release(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoBuffer_release(self: ptr cQAbstractVideoBuffer, slot: int): void {.exportc: "miqt_exec_callback_QAbstractVideoBuffer_release ".} =
  type Cb = proc(super: QAbstractVideoBufferreleaseBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_release(QAbstractVideoBuffer(h: self), )

  nimfunc[](superCall)
type QAbstractVideoBuffermapModeBase* = proc(): QAbstractVideoBufferMapMode
proc onmapMode*(self: QAbstractVideoBuffer, slot: proc(): QAbstractVideoBufferMapMode) =
  # TODO check subclass
  type Cb = proc(): QAbstractVideoBufferMapMode
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoBuffer_override_virtual_mapMode(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoBuffer_mapMode(self: ptr cQAbstractVideoBuffer, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractVideoBuffer_mapMode ".} =
  type Cb = proc(): QAbstractVideoBufferMapMode
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
type QAbstractVideoBuffermapBase* = proc(mode: QAbstractVideoBufferMapMode, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8
proc onmap*(self: QAbstractVideoBuffer, slot: proc(mode: QAbstractVideoBufferMapMode, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8) =
  # TODO check subclass
  type Cb = proc(mode: QAbstractVideoBufferMapMode, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoBuffer_override_virtual_map(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoBuffer_map(self: ptr cQAbstractVideoBuffer, slot: int, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 {.exportc: "miqt_exec_callback_QAbstractVideoBuffer_map ".} =
  type Cb = proc(mode: QAbstractVideoBufferMapMode, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QAbstractVideoBufferMapMode(mode)

  let slotval2 = numBytes

  let slotval3 = bytesPerLine


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QAbstractVideoBufferunmapBase* = proc(): void
proc onunmap*(self: QAbstractVideoBuffer, slot: proc(): void) =
  # TODO check subclass
  type Cb = proc(): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoBuffer_override_virtual_unmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoBuffer_unmap(self: ptr cQAbstractVideoBuffer, slot: int): void {.exportc: "miqt_exec_callback_QAbstractVideoBuffer_unmap ".} =
  type Cb = proc(): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()
proc callVirtualBase_handle(self: QAbstractVideoBuffer, ): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQAbstractVideoBuffer_virtualbase_handle(self.h))

type QAbstractVideoBufferhandleBase* = proc(): gen_qvariant.QVariant
proc onhandle*(self: QAbstractVideoBuffer, slot: proc(super: QAbstractVideoBufferhandleBase): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QAbstractVideoBufferhandleBase): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoBuffer_override_virtual_handle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoBuffer_handle(self: ptr cQAbstractVideoBuffer, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractVideoBuffer_handle ".} =
  type Cb = proc(super: QAbstractVideoBufferhandleBase): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_handle(QAbstractVideoBuffer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QAbstractVideoBuffer) =
  fcQAbstractVideoBuffer_delete(self.h)

func init*(T: type QAbstractPlanarVideoBuffer, h: ptr cQAbstractPlanarVideoBuffer): QAbstractPlanarVideoBuffer =
  T(h: h)
proc create*(T: type QAbstractPlanarVideoBuffer, typeVal: QAbstractVideoBufferHandleType): QAbstractPlanarVideoBuffer =

  QAbstractPlanarVideoBuffer.init(fcQAbstractPlanarVideoBuffer_new(cint(typeVal)))
proc map*(self: QAbstractPlanarVideoBuffer, mode: QAbstractVideoBufferMapMode, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 =

  fcQAbstractPlanarVideoBuffer_map(self.h, cint(mode), numBytes, bytesPerLine)

proc callVirtualBase_map(self: QAbstractPlanarVideoBuffer, mode: QAbstractVideoBufferMapMode, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 =


  fQAbstractPlanarVideoBuffer_virtualbase_map(self.h, cint(mode), numBytes, bytesPerLine)

type QAbstractPlanarVideoBuffermapBase* = proc(mode: QAbstractVideoBufferMapMode, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8
proc onmap*(self: QAbstractPlanarVideoBuffer, slot: proc(super: QAbstractPlanarVideoBuffermapBase, mode: QAbstractVideoBufferMapMode, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPlanarVideoBuffermapBase, mode: QAbstractVideoBufferMapMode, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPlanarVideoBuffer_override_virtual_map(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPlanarVideoBuffer_map(self: ptr cQAbstractPlanarVideoBuffer, slot: int, mode: cint, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8 {.exportc: "miqt_exec_callback_QAbstractPlanarVideoBuffer_map ".} =
  type Cb = proc(super: QAbstractPlanarVideoBuffermapBase, mode: QAbstractVideoBufferMapMode, numBytes: ptr cint, bytesPerLine: ptr cint): ptr uint8
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(mode: QAbstractVideoBufferMapMode, numBytes: ptr cint, bytesPerLine: ptr cint): auto =
    callVirtualBase_map(QAbstractPlanarVideoBuffer(h: self), mode, numBytes, bytesPerLine)
  let slotval1 = QAbstractVideoBufferMapMode(mode)

  let slotval2 = numBytes

  let slotval3 = bytesPerLine


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_release(self: QAbstractPlanarVideoBuffer, ): void =


  fQAbstractPlanarVideoBuffer_virtualbase_release(self.h)

type QAbstractPlanarVideoBufferreleaseBase* = proc(): void
proc onrelease*(self: QAbstractPlanarVideoBuffer, slot: proc(super: QAbstractPlanarVideoBufferreleaseBase): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPlanarVideoBufferreleaseBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPlanarVideoBuffer_override_virtual_release(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPlanarVideoBuffer_release(self: ptr cQAbstractPlanarVideoBuffer, slot: int): void {.exportc: "miqt_exec_callback_QAbstractPlanarVideoBuffer_release ".} =
  type Cb = proc(super: QAbstractPlanarVideoBufferreleaseBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_release(QAbstractPlanarVideoBuffer(h: self), )

  nimfunc[](superCall)
type QAbstractPlanarVideoBuffermapModeBase* = proc(): QAbstractVideoBufferMapMode
proc onmapMode*(self: QAbstractPlanarVideoBuffer, slot: proc(): QAbstractVideoBufferMapMode) =
  # TODO check subclass
  type Cb = proc(): QAbstractVideoBufferMapMode
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPlanarVideoBuffer_override_virtual_mapMode(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPlanarVideoBuffer_mapMode(self: ptr cQAbstractPlanarVideoBuffer, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractPlanarVideoBuffer_mapMode ".} =
  type Cb = proc(): QAbstractVideoBufferMapMode
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
type QAbstractPlanarVideoBufferunmapBase* = proc(): void
proc onunmap*(self: QAbstractPlanarVideoBuffer, slot: proc(): void) =
  # TODO check subclass
  type Cb = proc(): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPlanarVideoBuffer_override_virtual_unmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPlanarVideoBuffer_unmap(self: ptr cQAbstractPlanarVideoBuffer, slot: int): void {.exportc: "miqt_exec_callback_QAbstractPlanarVideoBuffer_unmap ".} =
  type Cb = proc(): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()
proc callVirtualBase_handle(self: QAbstractPlanarVideoBuffer, ): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQAbstractPlanarVideoBuffer_virtualbase_handle(self.h))

type QAbstractPlanarVideoBufferhandleBase* = proc(): gen_qvariant.QVariant
proc onhandle*(self: QAbstractPlanarVideoBuffer, slot: proc(super: QAbstractPlanarVideoBufferhandleBase): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPlanarVideoBufferhandleBase): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPlanarVideoBuffer_override_virtual_handle(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPlanarVideoBuffer_handle(self: ptr cQAbstractPlanarVideoBuffer, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractPlanarVideoBuffer_handle ".} =
  type Cb = proc(super: QAbstractPlanarVideoBufferhandleBase): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_handle(QAbstractPlanarVideoBuffer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QAbstractPlanarVideoBuffer) =
  fcQAbstractPlanarVideoBuffer_delete(self.h)
