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
{.compile("gen_qiconengine.cpp", cflags).}


type QIconEngineIconEngineHook* = cint
const
  QIconEngineAvailableSizesHook* = 1
  QIconEngineIconNameHook* = 2
  QIconEngineIsNullHook* = 3
  QIconEngineScaledPixmapHook* = 4



import gen_qiconengine_types
export gen_qiconengine_types

import
  gen_qdatastream,
  gen_qicon,
  gen_qpainter,
  gen_qpixmap,
  gen_qrect,
  gen_qsize
export
  gen_qdatastream,
  gen_qicon,
  gen_qpainter,
  gen_qpixmap,
  gen_qrect,
  gen_qsize

type cQIconEngine*{.exportc: "QIconEngine", incompleteStruct.} = object
type cQIconEngineAvailableSizesArgument*{.exportc: "QIconEngine__AvailableSizesArgument", incompleteStruct.} = object
type cQIconEngineScaledPixmapArgument*{.exportc: "QIconEngine__ScaledPixmapArgument", incompleteStruct.} = object

proc fcQIconEngine_new(): ptr cQIconEngine {.importc: "QIconEngine_new".}
proc fcQIconEngine_new2(other: pointer): ptr cQIconEngine {.importc: "QIconEngine_new2".}
proc fcQIconEngine_paint(self: pointer, painter: pointer, rect: pointer, mode: cint, state: cint): void {.importc: "QIconEngine_paint".}
proc fcQIconEngine_actualSize(self: pointer, size: pointer, mode: cint, state: cint): pointer {.importc: "QIconEngine_actualSize".}
proc fcQIconEngine_pixmap(self: pointer, size: pointer, mode: cint, state: cint): pointer {.importc: "QIconEngine_pixmap".}
proc fcQIconEngine_addPixmap(self: pointer, pixmap: pointer, mode: cint, state: cint): void {.importc: "QIconEngine_addPixmap".}
proc fcQIconEngine_addFile(self: pointer, fileName: struct_miqt_string, size: pointer, mode: cint, state: cint): void {.importc: "QIconEngine_addFile".}
proc fcQIconEngine_key(self: pointer, ): struct_miqt_string {.importc: "QIconEngine_key".}
proc fcQIconEngine_clone(self: pointer, ): pointer {.importc: "QIconEngine_clone".}
proc fcQIconEngine_read(self: pointer, inVal: pointer): bool {.importc: "QIconEngine_read".}
proc fcQIconEngine_write(self: pointer, outVal: pointer): bool {.importc: "QIconEngine_write".}
proc fcQIconEngine_availableSizes(self: pointer, mode: cint, state: cint): struct_miqt_array {.importc: "QIconEngine_availableSizes".}
proc fcQIconEngine_iconName(self: pointer, ): struct_miqt_string {.importc: "QIconEngine_iconName".}
proc fcQIconEngine_isNull(self: pointer, ): bool {.importc: "QIconEngine_isNull".}
proc fcQIconEngine_scaledPixmap(self: pointer, size: pointer, mode: cint, state: cint, scale: float64): pointer {.importc: "QIconEngine_scaledPixmap".}
proc fcQIconEngine_virtualHook(self: pointer, id: cint, data: pointer): void {.importc: "QIconEngine_virtualHook".}
proc fcQIconEngine_override_virtual_paint(self: pointer, slot: int) {.importc: "QIconEngine_override_virtual_paint".}
proc fQIconEngine_virtualbase_actualSize(self: pointer, size: pointer, mode: cint, state: cint): pointer{.importc: "QIconEngine_virtualbase_actualSize".}
proc fcQIconEngine_override_virtual_actualSize(self: pointer, slot: int) {.importc: "QIconEngine_override_virtual_actualSize".}
proc fQIconEngine_virtualbase_pixmap(self: pointer, size: pointer, mode: cint, state: cint): pointer{.importc: "QIconEngine_virtualbase_pixmap".}
proc fcQIconEngine_override_virtual_pixmap(self: pointer, slot: int) {.importc: "QIconEngine_override_virtual_pixmap".}
proc fQIconEngine_virtualbase_addPixmap(self: pointer, pixmap: pointer, mode: cint, state: cint): void{.importc: "QIconEngine_virtualbase_addPixmap".}
proc fcQIconEngine_override_virtual_addPixmap(self: pointer, slot: int) {.importc: "QIconEngine_override_virtual_addPixmap".}
proc fQIconEngine_virtualbase_addFile(self: pointer, fileName: struct_miqt_string, size: pointer, mode: cint, state: cint): void{.importc: "QIconEngine_virtualbase_addFile".}
proc fcQIconEngine_override_virtual_addFile(self: pointer, slot: int) {.importc: "QIconEngine_override_virtual_addFile".}
proc fQIconEngine_virtualbase_key(self: pointer, ): struct_miqt_string{.importc: "QIconEngine_virtualbase_key".}
proc fcQIconEngine_override_virtual_key(self: pointer, slot: int) {.importc: "QIconEngine_override_virtual_key".}
proc fcQIconEngine_override_virtual_clone(self: pointer, slot: int) {.importc: "QIconEngine_override_virtual_clone".}
proc fQIconEngine_virtualbase_read(self: pointer, inVal: pointer): bool{.importc: "QIconEngine_virtualbase_read".}
proc fcQIconEngine_override_virtual_read(self: pointer, slot: int) {.importc: "QIconEngine_override_virtual_read".}
proc fQIconEngine_virtualbase_write(self: pointer, outVal: pointer): bool{.importc: "QIconEngine_virtualbase_write".}
proc fcQIconEngine_override_virtual_write(self: pointer, slot: int) {.importc: "QIconEngine_override_virtual_write".}
proc fQIconEngine_virtualbase_availableSizes(self: pointer, mode: cint, state: cint): struct_miqt_array{.importc: "QIconEngine_virtualbase_availableSizes".}
proc fcQIconEngine_override_virtual_availableSizes(self: pointer, slot: int) {.importc: "QIconEngine_override_virtual_availableSizes".}
proc fQIconEngine_virtualbase_iconName(self: pointer, ): struct_miqt_string{.importc: "QIconEngine_virtualbase_iconName".}
proc fcQIconEngine_override_virtual_iconName(self: pointer, slot: int) {.importc: "QIconEngine_override_virtual_iconName".}
proc fQIconEngine_virtualbase_virtualHook(self: pointer, id: cint, data: pointer): void{.importc: "QIconEngine_virtualbase_virtualHook".}
proc fcQIconEngine_override_virtual_virtualHook(self: pointer, slot: int) {.importc: "QIconEngine_override_virtual_virtualHook".}
proc fcQIconEngine_delete(self: pointer) {.importc: "QIconEngine_delete".}
proc fcQIconEngineAvailableSizesArgument_new(param1: pointer): ptr cQIconEngineAvailableSizesArgument {.importc: "QIconEngine__AvailableSizesArgument_new".}
proc fcQIconEngineAvailableSizesArgument_operatorAssign(self: pointer, param1: pointer): void {.importc: "QIconEngine__AvailableSizesArgument_operatorAssign".}
proc fcQIconEngineAvailableSizesArgument_delete(self: pointer) {.importc: "QIconEngine__AvailableSizesArgument_delete".}
proc fcQIconEngineScaledPixmapArgument_new(param1: pointer): ptr cQIconEngineScaledPixmapArgument {.importc: "QIconEngine__ScaledPixmapArgument_new".}
proc fcQIconEngineScaledPixmapArgument_operatorAssign(self: pointer, param1: pointer): void {.importc: "QIconEngine__ScaledPixmapArgument_operatorAssign".}
proc fcQIconEngineScaledPixmapArgument_delete(self: pointer) {.importc: "QIconEngine__ScaledPixmapArgument_delete".}


func init*(T: type QIconEngine, h: ptr cQIconEngine): QIconEngine =
  T(h: h)
proc create*(T: type QIconEngine, ): QIconEngine =

  QIconEngine.init(fcQIconEngine_new())
proc create*(T: type QIconEngine, other: QIconEngine): QIconEngine =

  QIconEngine.init(fcQIconEngine_new2(other.h))
proc paint*(self: QIconEngine, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): void =

  fcQIconEngine_paint(self.h, painter.h, rect.h, cint(mode), cint(state))

proc actualSize*(self: QIconEngine, size: gen_qsize.QSize, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQIconEngine_actualSize(self.h, size.h, cint(mode), cint(state)))

proc pixmap*(self: QIconEngine, size: gen_qsize.QSize, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQIconEngine_pixmap(self.h, size.h, cint(mode), cint(state)))

proc addPixmap*(self: QIconEngine, pixmap: gen_qpixmap.QPixmap, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): void =

  fcQIconEngine_addPixmap(self.h, pixmap.h, cint(mode), cint(state))

proc addFile*(self: QIconEngine, fileName: string, size: gen_qsize.QSize, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): void =

  fcQIconEngine_addFile(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), size.h, cint(mode), cint(state))

proc key*(self: QIconEngine, ): string =

  let v_ms = fcQIconEngine_key(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc clone*(self: QIconEngine, ): QIconEngine =

  QIconEngine(h: fcQIconEngine_clone(self.h))

proc read*(self: QIconEngine, inVal: gen_qdatastream.QDataStream): bool =

  fcQIconEngine_read(self.h, inVal.h)

proc write*(self: QIconEngine, outVal: gen_qdatastream.QDataStream): bool =

  fcQIconEngine_write(self.h, outVal.h)

proc availableSizes*(self: QIconEngine, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): seq[gen_qsize.QSize] =

  var v_ma = fcQIconEngine_availableSizes(self.h, cint(mode), cint(state))
  var vx_ret = newSeq[gen_qsize.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize.QSize(h: v_outCast[i])
  vx_ret

proc iconName*(self: QIconEngine, ): string =

  let v_ms = fcQIconEngine_iconName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isNull*(self: QIconEngine, ): bool =

  fcQIconEngine_isNull(self.h)

proc scaledPixmap*(self: QIconEngine, size: gen_qsize.QSize, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState, scale: float64): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQIconEngine_scaledPixmap(self.h, size.h, cint(mode), cint(state), scale))

proc virtualHook*(self: QIconEngine, id: cint, data: pointer): void =

  fcQIconEngine_virtualHook(self.h, id, data)

type QIconEnginepaintBase* = proc(painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): void
proc onpaint*(self: QIconEngine, slot: proc(painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): void) =
  # TODO check subclass
  type Cb = proc(painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEngine_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEngine_paint(self: ptr cQIconEngine, slot: int, painter: pointer, rect: pointer, mode: cint, state: cint): void {.exportc: "miqt_exec_callback_QIconEngine_paint ".} =
  type Cb = proc(painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qrect.QRect(h: rect)

  let slotval3 = gen_qicon.QIconMode(mode)

  let slotval4 = gen_qicon.QIconState(state)


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_actualSize(self: QIconEngine, size: gen_qsize.QSize, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): gen_qsize.QSize =


  gen_qsize.QSize(h: fQIconEngine_virtualbase_actualSize(self.h, size.h, cint(mode), cint(state)))

type QIconEngineactualSizeBase* = proc(size: gen_qsize.QSize, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): gen_qsize.QSize
proc onactualSize*(self: QIconEngine, slot: proc(super: QIconEngineactualSizeBase, size: gen_qsize.QSize, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QIconEngineactualSizeBase, size: gen_qsize.QSize, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEngine_override_virtual_actualSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEngine_actualSize(self: ptr cQIconEngine, slot: int, size: pointer, mode: cint, state: cint): pointer {.exportc: "miqt_exec_callback_QIconEngine_actualSize ".} =
  type Cb = proc(super: QIconEngineactualSizeBase, size: gen_qsize.QSize, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(size: gen_qsize.QSize, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): auto =
    callVirtualBase_actualSize(QIconEngine(h: self), size, mode, state)
  let slotval1 = gen_qsize.QSize(h: size)

  let slotval2 = gen_qicon.QIconMode(mode)

  let slotval3 = gen_qicon.QIconState(state)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_pixmap(self: QIconEngine, size: gen_qsize.QSize, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): gen_qpixmap.QPixmap =


  gen_qpixmap.QPixmap(h: fQIconEngine_virtualbase_pixmap(self.h, size.h, cint(mode), cint(state)))

type QIconEnginepixmapBase* = proc(size: gen_qsize.QSize, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): gen_qpixmap.QPixmap
proc onpixmap*(self: QIconEngine, slot: proc(super: QIconEnginepixmapBase, size: gen_qsize.QSize, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): gen_qpixmap.QPixmap) =
  # TODO check subclass
  type Cb = proc(super: QIconEnginepixmapBase, size: gen_qsize.QSize, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): gen_qpixmap.QPixmap
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEngine_override_virtual_pixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEngine_pixmap(self: ptr cQIconEngine, slot: int, size: pointer, mode: cint, state: cint): pointer {.exportc: "miqt_exec_callback_QIconEngine_pixmap ".} =
  type Cb = proc(super: QIconEnginepixmapBase, size: gen_qsize.QSize, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): gen_qpixmap.QPixmap
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(size: gen_qsize.QSize, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): auto =
    callVirtualBase_pixmap(QIconEngine(h: self), size, mode, state)
  let slotval1 = gen_qsize.QSize(h: size)

  let slotval2 = gen_qicon.QIconMode(mode)

  let slotval3 = gen_qicon.QIconState(state)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_addPixmap(self: QIconEngine, pixmap: gen_qpixmap.QPixmap, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): void =


  fQIconEngine_virtualbase_addPixmap(self.h, pixmap.h, cint(mode), cint(state))

type QIconEngineaddPixmapBase* = proc(pixmap: gen_qpixmap.QPixmap, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): void
proc onaddPixmap*(self: QIconEngine, slot: proc(super: QIconEngineaddPixmapBase, pixmap: gen_qpixmap.QPixmap, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): void) =
  # TODO check subclass
  type Cb = proc(super: QIconEngineaddPixmapBase, pixmap: gen_qpixmap.QPixmap, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEngine_override_virtual_addPixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEngine_addPixmap(self: ptr cQIconEngine, slot: int, pixmap: pointer, mode: cint, state: cint): void {.exportc: "miqt_exec_callback_QIconEngine_addPixmap ".} =
  type Cb = proc(super: QIconEngineaddPixmapBase, pixmap: gen_qpixmap.QPixmap, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(pixmap: gen_qpixmap.QPixmap, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): auto =
    callVirtualBase_addPixmap(QIconEngine(h: self), pixmap, mode, state)
  let slotval1 = gen_qpixmap.QPixmap(h: pixmap)

  let slotval2 = gen_qicon.QIconMode(mode)

  let slotval3 = gen_qicon.QIconState(state)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_addFile(self: QIconEngine, fileName: string, size: gen_qsize.QSize, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): void =


  fQIconEngine_virtualbase_addFile(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), size.h, cint(mode), cint(state))

type QIconEngineaddFileBase* = proc(fileName: string, size: gen_qsize.QSize, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): void
proc onaddFile*(self: QIconEngine, slot: proc(super: QIconEngineaddFileBase, fileName: string, size: gen_qsize.QSize, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): void) =
  # TODO check subclass
  type Cb = proc(super: QIconEngineaddFileBase, fileName: string, size: gen_qsize.QSize, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEngine_override_virtual_addFile(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEngine_addFile(self: ptr cQIconEngine, slot: int, fileName: struct_miqt_string, size: pointer, mode: cint, state: cint): void {.exportc: "miqt_exec_callback_QIconEngine_addFile ".} =
  type Cb = proc(super: QIconEngineaddFileBase, fileName: string, size: gen_qsize.QSize, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fileName: string, size: gen_qsize.QSize, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): auto =
    callVirtualBase_addFile(QIconEngine(h: self), fileName, size, mode, state)
  let vfileName_ms = fileName
  let vfileNamex_ret = string.fromBytes(toOpenArrayByte(vfileName_ms.data, 0, int(vfileName_ms.len)-1))
  c_free(vfileName_ms.data)
  let slotval1 = vfileNamex_ret

  let slotval2 = gen_qsize.QSize(h: size)

  let slotval3 = gen_qicon.QIconMode(mode)

  let slotval4 = gen_qicon.QIconState(state)


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_key(self: QIconEngine, ): string =


  let v_ms = fQIconEngine_virtualbase_key(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QIconEnginekeyBase* = proc(): string
proc onkey*(self: QIconEngine, slot: proc(super: QIconEnginekeyBase): string) =
  # TODO check subclass
  type Cb = proc(super: QIconEnginekeyBase): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEngine_override_virtual_key(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEngine_key(self: ptr cQIconEngine, slot: int): struct_miqt_string {.exportc: "miqt_exec_callback_QIconEngine_key ".} =
  type Cb = proc(super: QIconEnginekeyBase): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_key(QIconEngine(h: self), )

  let virtualReturn = nimfunc[](superCall )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
type QIconEnginecloneBase* = proc(): QIconEngine
proc onclone*(self: QIconEngine, slot: proc(): QIconEngine) =
  # TODO check subclass
  type Cb = proc(): QIconEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEngine_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEngine_clone(self: ptr cQIconEngine, slot: int): pointer {.exportc: "miqt_exec_callback_QIconEngine_clone ".} =
  type Cb = proc(): QIconEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc callVirtualBase_read(self: QIconEngine, inVal: gen_qdatastream.QDataStream): bool =


  fQIconEngine_virtualbase_read(self.h, inVal.h)

type QIconEnginereadBase* = proc(inVal: gen_qdatastream.QDataStream): bool
proc onread*(self: QIconEngine, slot: proc(super: QIconEnginereadBase, inVal: gen_qdatastream.QDataStream): bool) =
  # TODO check subclass
  type Cb = proc(super: QIconEnginereadBase, inVal: gen_qdatastream.QDataStream): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEngine_override_virtual_read(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEngine_read(self: ptr cQIconEngine, slot: int, inVal: pointer): bool {.exportc: "miqt_exec_callback_QIconEngine_read ".} =
  type Cb = proc(super: QIconEnginereadBase, inVal: gen_qdatastream.QDataStream): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(inVal: gen_qdatastream.QDataStream): auto =
    callVirtualBase_read(QIconEngine(h: self), inVal)
  let slotval1 = gen_qdatastream.QDataStream(h: inVal)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_write(self: QIconEngine, outVal: gen_qdatastream.QDataStream): bool =


  fQIconEngine_virtualbase_write(self.h, outVal.h)

type QIconEnginewriteBase* = proc(outVal: gen_qdatastream.QDataStream): bool
proc onwrite*(self: QIconEngine, slot: proc(super: QIconEnginewriteBase, outVal: gen_qdatastream.QDataStream): bool) =
  # TODO check subclass
  type Cb = proc(super: QIconEnginewriteBase, outVal: gen_qdatastream.QDataStream): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEngine_override_virtual_write(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEngine_write(self: ptr cQIconEngine, slot: int, outVal: pointer): bool {.exportc: "miqt_exec_callback_QIconEngine_write ".} =
  type Cb = proc(super: QIconEnginewriteBase, outVal: gen_qdatastream.QDataStream): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(outVal: gen_qdatastream.QDataStream): auto =
    callVirtualBase_write(QIconEngine(h: self), outVal)
  let slotval1 = gen_qdatastream.QDataStream(h: outVal)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_availableSizes(self: QIconEngine, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): seq[gen_qsize.QSize] =


  var v_ma = fQIconEngine_virtualbase_availableSizes(self.h, cint(mode), cint(state))
  var vx_ret = newSeq[gen_qsize.QSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsize.QSize(h: v_outCast[i])
  vx_ret

type QIconEngineavailableSizesBase* = proc(mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): seq[gen_qsize.QSize]
proc onavailableSizes*(self: QIconEngine, slot: proc(super: QIconEngineavailableSizesBase, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): seq[gen_qsize.QSize]) =
  # TODO check subclass
  type Cb = proc(super: QIconEngineavailableSizesBase, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): seq[gen_qsize.QSize]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEngine_override_virtual_availableSizes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEngine_availableSizes(self: ptr cQIconEngine, slot: int, mode: cint, state: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QIconEngine_availableSizes ".} =
  type Cb = proc(super: QIconEngineavailableSizesBase, mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): seq[gen_qsize.QSize]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(mode: gen_qicon.QIconMode, state: gen_qicon.QIconState): auto =
    callVirtualBase_availableSizes(QIconEngine(h: self), mode, state)
  let slotval1 = gen_qicon.QIconMode(mode)

  let slotval2 = gen_qicon.QIconState(state)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_iconName(self: QIconEngine, ): string =


  let v_ms = fQIconEngine_virtualbase_iconName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QIconEngineiconNameBase* = proc(): string
proc oniconName*(self: QIconEngine, slot: proc(super: QIconEngineiconNameBase): string) =
  # TODO check subclass
  type Cb = proc(super: QIconEngineiconNameBase): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEngine_override_virtual_iconName(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEngine_iconName(self: ptr cQIconEngine, slot: int): struct_miqt_string {.exportc: "miqt_exec_callback_QIconEngine_iconName ".} =
  type Cb = proc(super: QIconEngineiconNameBase): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_iconName(QIconEngine(h: self), )

  let virtualReturn = nimfunc[](superCall )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_virtualHook(self: QIconEngine, id: cint, data: pointer): void =


  fQIconEngine_virtualbase_virtualHook(self.h, id, data)

type QIconEnginevirtualHookBase* = proc(id: cint, data: pointer): void
proc onvirtualHook*(self: QIconEngine, slot: proc(super: QIconEnginevirtualHookBase, id: cint, data: pointer): void) =
  # TODO check subclass
  type Cb = proc(super: QIconEnginevirtualHookBase, id: cint, data: pointer): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIconEngine_override_virtual_virtualHook(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconEngine_virtualHook(self: ptr cQIconEngine, slot: int, id: cint, data: pointer): void {.exportc: "miqt_exec_callback_QIconEngine_virtualHook ".} =
  type Cb = proc(super: QIconEnginevirtualHookBase, id: cint, data: pointer): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(id: cint, data: pointer): auto =
    callVirtualBase_virtualHook(QIconEngine(h: self), id, data)
  let slotval1 = id

  let slotval2 = data


  nimfunc[](superCall, slotval1, slotval2)
proc delete*(self: QIconEngine) =
  fcQIconEngine_delete(self.h)

func init*(T: type QIconEngineAvailableSizesArgument, h: ptr cQIconEngineAvailableSizesArgument): QIconEngineAvailableSizesArgument =
  T(h: h)
proc create*(T: type QIconEngineAvailableSizesArgument, param1: QIconEngineAvailableSizesArgument): QIconEngineAvailableSizesArgument =

  QIconEngineAvailableSizesArgument.init(fcQIconEngineAvailableSizesArgument_new(param1.h))
proc operatorAssign*(self: QIconEngineAvailableSizesArgument, param1: QIconEngineAvailableSizesArgument): void =

  fcQIconEngineAvailableSizesArgument_operatorAssign(self.h, param1.h)

proc delete*(self: QIconEngineAvailableSizesArgument) =
  fcQIconEngineAvailableSizesArgument_delete(self.h)

func init*(T: type QIconEngineScaledPixmapArgument, h: ptr cQIconEngineScaledPixmapArgument): QIconEngineScaledPixmapArgument =
  T(h: h)
proc create*(T: type QIconEngineScaledPixmapArgument, param1: QIconEngineScaledPixmapArgument): QIconEngineScaledPixmapArgument =

  QIconEngineScaledPixmapArgument.init(fcQIconEngineScaledPixmapArgument_new(param1.h))
proc operatorAssign*(self: QIconEngineScaledPixmapArgument, param1: QIconEngineScaledPixmapArgument): void =

  fcQIconEngineScaledPixmapArgument_operatorAssign(self.h, param1.h)

proc delete*(self: QIconEngineScaledPixmapArgument) =
  fcQIconEngineScaledPixmapArgument_delete(self.h)
