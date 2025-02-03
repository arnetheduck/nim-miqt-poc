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
{.compile("gen_qpicture.cpp", cflags).}


import gen_qpicture_types
export gen_qpicture_types

import
  gen_qiodevice,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qrect
export
  gen_qiodevice,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qrect

type cQPicture*{.exportc: "QPicture", incompleteStruct.} = object

proc fcQPicture_new(): ptr cQPicture {.importc: "QPicture_new".}
proc fcQPicture_new2(param1: pointer): ptr cQPicture {.importc: "QPicture_new2".}
proc fcQPicture_new3(formatVersion: cint): ptr cQPicture {.importc: "QPicture_new3".}
proc fcQPicture_isNull(self: pointer, ): bool {.importc: "QPicture_isNull".}
proc fcQPicture_devType(self: pointer, ): cint {.importc: "QPicture_devType".}
proc fcQPicture_size(self: pointer, ): cuint {.importc: "QPicture_size".}
proc fcQPicture_data(self: pointer, ): cstring {.importc: "QPicture_data".}
proc fcQPicture_setData(self: pointer, data: cstring, size: cuint): void {.importc: "QPicture_setData".}
proc fcQPicture_play(self: pointer, p: pointer): bool {.importc: "QPicture_play".}
proc fcQPicture_load(self: pointer, dev: pointer): bool {.importc: "QPicture_load".}
proc fcQPicture_loadWithFileName(self: pointer, fileName: struct_miqt_string): bool {.importc: "QPicture_loadWithFileName".}
proc fcQPicture_save(self: pointer, dev: pointer): bool {.importc: "QPicture_save".}
proc fcQPicture_saveWithFileName(self: pointer, fileName: struct_miqt_string): bool {.importc: "QPicture_saveWithFileName".}
proc fcQPicture_boundingRect(self: pointer, ): pointer {.importc: "QPicture_boundingRect".}
proc fcQPicture_setBoundingRect(self: pointer, r: pointer): void {.importc: "QPicture_setBoundingRect".}
proc fcQPicture_operatorAssign(self: pointer, p: pointer): void {.importc: "QPicture_operatorAssign".}
proc fcQPicture_swap(self: pointer, other: pointer): void {.importc: "QPicture_swap".}
proc fcQPicture_detach(self: pointer, ): void {.importc: "QPicture_detach".}
proc fcQPicture_isDetached(self: pointer, ): bool {.importc: "QPicture_isDetached".}
proc fcQPicture_paintEngine(self: pointer, ): pointer {.importc: "QPicture_paintEngine".}
proc fQPicture_virtualbase_devType(self: pointer, ): cint{.importc: "QPicture_virtualbase_devType".}
proc fcQPicture_override_virtual_devType(self: pointer, slot: int) {.importc: "QPicture_override_virtual_devType".}
proc fQPicture_virtualbase_setData(self: pointer, data: cstring, size: cuint): void{.importc: "QPicture_virtualbase_setData".}
proc fcQPicture_override_virtual_setData(self: pointer, slot: int) {.importc: "QPicture_override_virtual_setData".}
proc fQPicture_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QPicture_virtualbase_paintEngine".}
proc fcQPicture_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QPicture_override_virtual_paintEngine".}
proc fQPicture_virtualbase_metric(self: pointer, m: cint): cint{.importc: "QPicture_virtualbase_metric".}
proc fcQPicture_override_virtual_metric(self: pointer, slot: int) {.importc: "QPicture_override_virtual_metric".}
proc fQPicture_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QPicture_virtualbase_initPainter".}
proc fcQPicture_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QPicture_override_virtual_initPainter".}
proc fQPicture_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QPicture_virtualbase_redirected".}
proc fcQPicture_override_virtual_redirected(self: pointer, slot: int) {.importc: "QPicture_override_virtual_redirected".}
proc fQPicture_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QPicture_virtualbase_sharedPainter".}
proc fcQPicture_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QPicture_override_virtual_sharedPainter".}
proc fcQPicture_delete(self: pointer) {.importc: "QPicture_delete".}


func init*(T: type QPicture, h: ptr cQPicture): QPicture =
  T(h: h)
proc create*(T: type QPicture, ): QPicture =

  QPicture.init(fcQPicture_new())
proc create*(T: type QPicture, param1: QPicture): QPicture =

  QPicture.init(fcQPicture_new2(param1.h))
proc create*(T: type QPicture, formatVersion: cint): QPicture =

  QPicture.init(fcQPicture_new3(formatVersion))
proc isNull*(self: QPicture, ): bool =

  fcQPicture_isNull(self.h)

proc devType*(self: QPicture, ): cint =

  fcQPicture_devType(self.h)

proc size*(self: QPicture, ): cuint =

  fcQPicture_size(self.h)

proc data*(self: QPicture, ): cstring =

  (fcQPicture_data(self.h))

proc setData*(self: QPicture, data: cstring, size: cuint): void =

  fcQPicture_setData(self.h, data, size)

proc play*(self: QPicture, p: gen_qpainter.QPainter): bool =

  fcQPicture_play(self.h, p.h)

proc load*(self: QPicture, dev: gen_qiodevice.QIODevice): bool =

  fcQPicture_load(self.h, dev.h)

proc loadWithFileName*(self: QPicture, fileName: string): bool =

  fcQPicture_loadWithFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc save*(self: QPicture, dev: gen_qiodevice.QIODevice): bool =

  fcQPicture_save(self.h, dev.h)

proc saveWithFileName*(self: QPicture, fileName: string): bool =

  fcQPicture_saveWithFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc boundingRect*(self: QPicture, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQPicture_boundingRect(self.h))

proc setBoundingRect*(self: QPicture, r: gen_qrect.QRect): void =

  fcQPicture_setBoundingRect(self.h, r.h)

proc operatorAssign*(self: QPicture, p: QPicture): void =

  fcQPicture_operatorAssign(self.h, p.h)

proc swap*(self: QPicture, other: QPicture): void =

  fcQPicture_swap(self.h, other.h)

proc detach*(self: QPicture, ): void =

  fcQPicture_detach(self.h)

proc isDetached*(self: QPicture, ): bool =

  fcQPicture_isDetached(self.h)

proc paintEngine*(self: QPicture, ): gen_qpaintengine.QPaintEngine =

  gen_qpaintengine.QPaintEngine(h: fcQPicture_paintEngine(self.h))

proc callVirtualBase_devType(self: QPicture, ): cint =


  fQPicture_virtualbase_devType(self.h)

type QPicturedevTypeBase* = proc(): cint
proc ondevType*(self: QPicture, slot: proc(super: QPicturedevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QPicturedevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPicture_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPicture_devType(self: ptr cQPicture, slot: int): cint {.exportc: "miqt_exec_callback_QPicture_devType ".} =
  type Cb = proc(super: QPicturedevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QPicture(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setData(self: QPicture, data: cstring, size: cuint): void =


  fQPicture_virtualbase_setData(self.h, data, size)

type QPicturesetDataBase* = proc(data: cstring, size: cuint): void
proc onsetData*(self: QPicture, slot: proc(super: QPicturesetDataBase, data: cstring, size: cuint): void) =
  # TODO check subclass
  type Cb = proc(super: QPicturesetDataBase, data: cstring, size: cuint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPicture_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPicture_setData(self: ptr cQPicture, slot: int, data: cstring, size: cuint): void {.exportc: "miqt_exec_callback_QPicture_setData ".} =
  type Cb = proc(super: QPicturesetDataBase, data: cstring, size: cuint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, size: cuint): auto =
    callVirtualBase_setData(QPicture(h: self), data, size)
  let slotval1 = (data)

  let slotval2 = size


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_paintEngine(self: QPicture, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQPicture_virtualbase_paintEngine(self.h))

type QPicturepaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QPicture, slot: proc(super: QPicturepaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QPicturepaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPicture_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPicture_paintEngine(self: ptr cQPicture, slot: int): pointer {.exportc: "miqt_exec_callback_QPicture_paintEngine ".} =
  type Cb = proc(super: QPicturepaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QPicture(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metric(self: QPicture, m: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQPicture_virtualbase_metric(self.h, cint(m))

type QPicturemetricBase* = proc(m: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QPicture, slot: proc(super: QPicturemetricBase, m: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QPicturemetricBase, m: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPicture_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPicture_metric(self: ptr cQPicture, slot: int, m: cint): cint {.exportc: "miqt_exec_callback_QPicture_metric ".} =
  type Cb = proc(super: QPicturemetricBase, m: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(m: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QPicture(h: self), m)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(m)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QPicture, painter: gen_qpainter.QPainter): void =


  fQPicture_virtualbase_initPainter(self.h, painter.h)

type QPictureinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QPicture, slot: proc(super: QPictureinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QPictureinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPicture_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPicture_initPainter(self: ptr cQPicture, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QPicture_initPainter ".} =
  type Cb = proc(super: QPictureinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QPicture(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QPicture, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQPicture_virtualbase_redirected(self.h, offset.h))

type QPictureredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QPicture, slot: proc(super: QPictureredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QPictureredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPicture_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPicture_redirected(self: ptr cQPicture, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QPicture_redirected ".} =
  type Cb = proc(super: QPictureredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QPicture(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QPicture, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQPicture_virtualbase_sharedPainter(self.h))

type QPicturesharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QPicture, slot: proc(super: QPicturesharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QPicturesharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPicture_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPicture_sharedPainter(self: ptr cQPicture, slot: int): pointer {.exportc: "miqt_exec_callback_QPicture_sharedPainter ".} =
  type Cb = proc(super: QPicturesharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QPicture(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QPicture) =
  fcQPicture_delete(self.h)
