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
{.compile("gen_qpdfwriter.cpp", cflags).}


import gen_qpdfwriter_types
export gen_qpdfwriter_types

import
  gen_qcoreevent,
  gen_qiodevice,
  gen_qmargins,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpagedpaintdevice,
  gen_qpagelayout,
  gen_qpageranges,
  gen_qpagesize,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint
export
  gen_qcoreevent,
  gen_qiodevice,
  gen_qmargins,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpagedpaintdevice,
  gen_qpagelayout,
  gen_qpageranges,
  gen_qpagesize,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint

type cQPdfWriter*{.exportc: "QPdfWriter", incompleteStruct.} = object

proc fcQPdfWriter_new(filename: struct_miqt_string): ptr cQPdfWriter {.importc: "QPdfWriter_new".}
proc fcQPdfWriter_new2(device: pointer): ptr cQPdfWriter {.importc: "QPdfWriter_new2".}
proc fcQPdfWriter_metaObject(self: pointer, ): pointer {.importc: "QPdfWriter_metaObject".}
proc fcQPdfWriter_metacast(self: pointer, param1: cstring): pointer {.importc: "QPdfWriter_metacast".}
proc fcQPdfWriter_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPdfWriter_metacall".}
proc fcQPdfWriter_tr(s: cstring): struct_miqt_string {.importc: "QPdfWriter_tr".}
proc fcQPdfWriter_setPdfVersion(self: pointer, version: cint): void {.importc: "QPdfWriter_setPdfVersion".}
proc fcQPdfWriter_pdfVersion(self: pointer, ): cint {.importc: "QPdfWriter_pdfVersion".}
proc fcQPdfWriter_title(self: pointer, ): struct_miqt_string {.importc: "QPdfWriter_title".}
proc fcQPdfWriter_setTitle(self: pointer, title: struct_miqt_string): void {.importc: "QPdfWriter_setTitle".}
proc fcQPdfWriter_creator(self: pointer, ): struct_miqt_string {.importc: "QPdfWriter_creator".}
proc fcQPdfWriter_setCreator(self: pointer, creator: struct_miqt_string): void {.importc: "QPdfWriter_setCreator".}
proc fcQPdfWriter_newPage(self: pointer, ): bool {.importc: "QPdfWriter_newPage".}
proc fcQPdfWriter_setResolution(self: pointer, resolution: cint): void {.importc: "QPdfWriter_setResolution".}
proc fcQPdfWriter_resolution(self: pointer, ): cint {.importc: "QPdfWriter_resolution".}
proc fcQPdfWriter_setDocumentXmpMetadata(self: pointer, xmpMetadata: struct_miqt_string): void {.importc: "QPdfWriter_setDocumentXmpMetadata".}
proc fcQPdfWriter_documentXmpMetadata(self: pointer, ): struct_miqt_string {.importc: "QPdfWriter_documentXmpMetadata".}
proc fcQPdfWriter_addFileAttachment(self: pointer, fileName: struct_miqt_string, data: struct_miqt_string): void {.importc: "QPdfWriter_addFileAttachment".}
proc fcQPdfWriter_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPdfWriter_tr2".}
proc fcQPdfWriter_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPdfWriter_tr3".}
proc fcQPdfWriter_addFileAttachment3(self: pointer, fileName: struct_miqt_string, data: struct_miqt_string, mimeType: struct_miqt_string): void {.importc: "QPdfWriter_addFileAttachment3".}
proc fQPdfWriter_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QPdfWriter_virtualbase_metaObject".}
proc fcQPdfWriter_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QPdfWriter_override_virtual_metaObject".}
proc fQPdfWriter_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QPdfWriter_virtualbase_metacast".}
proc fcQPdfWriter_override_virtual_metacast(self: pointer, slot: int) {.importc: "QPdfWriter_override_virtual_metacast".}
proc fQPdfWriter_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QPdfWriter_virtualbase_metacall".}
proc fcQPdfWriter_override_virtual_metacall(self: pointer, slot: int) {.importc: "QPdfWriter_override_virtual_metacall".}
proc fQPdfWriter_virtualbase_newPage(self: pointer, ): bool{.importc: "QPdfWriter_virtualbase_newPage".}
proc fcQPdfWriter_override_virtual_newPage(self: pointer, slot: int) {.importc: "QPdfWriter_override_virtual_newPage".}
proc fQPdfWriter_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QPdfWriter_virtualbase_paintEngine".}
proc fcQPdfWriter_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QPdfWriter_override_virtual_paintEngine".}
proc fQPdfWriter_virtualbase_metric(self: pointer, id: cint): cint{.importc: "QPdfWriter_virtualbase_metric".}
proc fcQPdfWriter_override_virtual_metric(self: pointer, slot: int) {.importc: "QPdfWriter_override_virtual_metric".}
proc fQPdfWriter_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QPdfWriter_virtualbase_event".}
proc fcQPdfWriter_override_virtual_event(self: pointer, slot: int) {.importc: "QPdfWriter_override_virtual_event".}
proc fQPdfWriter_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QPdfWriter_virtualbase_eventFilter".}
proc fcQPdfWriter_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QPdfWriter_override_virtual_eventFilter".}
proc fQPdfWriter_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QPdfWriter_virtualbase_timerEvent".}
proc fcQPdfWriter_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QPdfWriter_override_virtual_timerEvent".}
proc fQPdfWriter_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QPdfWriter_virtualbase_childEvent".}
proc fcQPdfWriter_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QPdfWriter_override_virtual_childEvent".}
proc fQPdfWriter_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QPdfWriter_virtualbase_customEvent".}
proc fcQPdfWriter_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QPdfWriter_override_virtual_customEvent".}
proc fQPdfWriter_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QPdfWriter_virtualbase_connectNotify".}
proc fcQPdfWriter_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QPdfWriter_override_virtual_connectNotify".}
proc fQPdfWriter_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QPdfWriter_virtualbase_disconnectNotify".}
proc fcQPdfWriter_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QPdfWriter_override_virtual_disconnectNotify".}
proc fQPdfWriter_virtualbase_setPageLayout(self: pointer, pageLayout: pointer): bool{.importc: "QPdfWriter_virtualbase_setPageLayout".}
proc fcQPdfWriter_override_virtual_setPageLayout(self: pointer, slot: int) {.importc: "QPdfWriter_override_virtual_setPageLayout".}
proc fQPdfWriter_virtualbase_setPageSize(self: pointer, pageSize: pointer): bool{.importc: "QPdfWriter_virtualbase_setPageSize".}
proc fcQPdfWriter_override_virtual_setPageSize(self: pointer, slot: int) {.importc: "QPdfWriter_override_virtual_setPageSize".}
proc fQPdfWriter_virtualbase_setPageOrientation(self: pointer, orientation: cint): bool{.importc: "QPdfWriter_virtualbase_setPageOrientation".}
proc fcQPdfWriter_override_virtual_setPageOrientation(self: pointer, slot: int) {.importc: "QPdfWriter_override_virtual_setPageOrientation".}
proc fQPdfWriter_virtualbase_setPageMargins(self: pointer, margins: pointer, units: cint): bool{.importc: "QPdfWriter_virtualbase_setPageMargins".}
proc fcQPdfWriter_override_virtual_setPageMargins(self: pointer, slot: int) {.importc: "QPdfWriter_override_virtual_setPageMargins".}
proc fQPdfWriter_virtualbase_setPageRanges(self: pointer, ranges: pointer): void{.importc: "QPdfWriter_virtualbase_setPageRanges".}
proc fcQPdfWriter_override_virtual_setPageRanges(self: pointer, slot: int) {.importc: "QPdfWriter_override_virtual_setPageRanges".}
proc fQPdfWriter_virtualbase_devType(self: pointer, ): cint{.importc: "QPdfWriter_virtualbase_devType".}
proc fcQPdfWriter_override_virtual_devType(self: pointer, slot: int) {.importc: "QPdfWriter_override_virtual_devType".}
proc fQPdfWriter_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QPdfWriter_virtualbase_initPainter".}
proc fcQPdfWriter_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QPdfWriter_override_virtual_initPainter".}
proc fQPdfWriter_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QPdfWriter_virtualbase_redirected".}
proc fcQPdfWriter_override_virtual_redirected(self: pointer, slot: int) {.importc: "QPdfWriter_override_virtual_redirected".}
proc fQPdfWriter_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QPdfWriter_virtualbase_sharedPainter".}
proc fcQPdfWriter_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QPdfWriter_override_virtual_sharedPainter".}
proc fcQPdfWriter_staticMetaObject(): pointer {.importc: "QPdfWriter_staticMetaObject".}
proc fcQPdfWriter_delete(self: pointer) {.importc: "QPdfWriter_delete".}


func init*(T: type QPdfWriter, h: ptr cQPdfWriter): QPdfWriter =
  T(h: h)
proc create*(T: type QPdfWriter, filename: string): QPdfWriter =

  QPdfWriter.init(fcQPdfWriter_new(struct_miqt_string(data: filename, len: csize_t(len(filename)))))
proc create*(T: type QPdfWriter, device: gen_qiodevice.QIODevice): QPdfWriter =

  QPdfWriter.init(fcQPdfWriter_new2(device.h))
proc metaObject*(self: QPdfWriter, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQPdfWriter_metaObject(self.h))

proc metacast*(self: QPdfWriter, param1: cstring): pointer =

  fcQPdfWriter_metacast(self.h, param1)

proc metacall*(self: QPdfWriter, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQPdfWriter_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QPdfWriter, s: cstring): string =

  let v_ms = fcQPdfWriter_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPdfVersion*(self: QPdfWriter, version: gen_qpagedpaintdevice.QPagedPaintDevicePdfVersion): void =

  fcQPdfWriter_setPdfVersion(self.h, cint(version))

proc pdfVersion*(self: QPdfWriter, ): gen_qpagedpaintdevice.QPagedPaintDevicePdfVersion =

  gen_qpagedpaintdevice.QPagedPaintDevicePdfVersion(fcQPdfWriter_pdfVersion(self.h))

proc title*(self: QPdfWriter, ): string =

  let v_ms = fcQPdfWriter_title(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTitle*(self: QPdfWriter, title: string): void =

  fcQPdfWriter_setTitle(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

proc creator*(self: QPdfWriter, ): string =

  let v_ms = fcQPdfWriter_creator(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCreator*(self: QPdfWriter, creator: string): void =

  fcQPdfWriter_setCreator(self.h, struct_miqt_string(data: creator, len: csize_t(len(creator))))

proc newPage*(self: QPdfWriter, ): bool =

  fcQPdfWriter_newPage(self.h)

proc setResolution*(self: QPdfWriter, resolution: cint): void =

  fcQPdfWriter_setResolution(self.h, resolution)

proc resolution*(self: QPdfWriter, ): cint =

  fcQPdfWriter_resolution(self.h)

proc setDocumentXmpMetadata*(self: QPdfWriter, xmpMetadata: seq[byte]): void =

  fcQPdfWriter_setDocumentXmpMetadata(self.h, struct_miqt_string(data: cast[cstring](if len(xmpMetadata) == 0: nil else: unsafeAddr xmpMetadata[0]), len: csize_t(len(xmpMetadata))))

proc documentXmpMetadata*(self: QPdfWriter, ): seq[byte] =

  var v_bytearray = fcQPdfWriter_documentXmpMetadata(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc addFileAttachment*(self: QPdfWriter, fileName: string, data: seq[byte]): void =

  fcQPdfWriter_addFileAttachment(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc tr2*(_: type QPdfWriter, s: cstring, c: cstring): string =

  let v_ms = fcQPdfWriter_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QPdfWriter, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQPdfWriter_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addFileAttachment3*(self: QPdfWriter, fileName: string, data: seq[byte], mimeType: string): void =

  fcQPdfWriter_addFileAttachment3(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))))

proc callVirtualBase_metaObject(self: QPdfWriter, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQPdfWriter_virtualbase_metaObject(self.h))

type QPdfWritermetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QPdfWriter, slot: proc(super: QPdfWritermetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QPdfWritermetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_metaObject(self: ptr cQPdfWriter, slot: int): pointer {.exportc: "miqt_exec_callback_QPdfWriter_metaObject ".} =
  type Cb = proc(super: QPdfWritermetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QPdfWriter(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QPdfWriter, param1: cstring): pointer =


  fQPdfWriter_virtualbase_metacast(self.h, param1)

type QPdfWritermetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QPdfWriter, slot: proc(super: QPdfWritermetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QPdfWritermetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_metacast(self: ptr cQPdfWriter, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QPdfWriter_metacast ".} =
  type Cb = proc(super: QPdfWritermetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QPdfWriter(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QPdfWriter, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQPdfWriter_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QPdfWritermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QPdfWriter, slot: proc(super: QPdfWritermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QPdfWritermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_metacall(self: ptr cQPdfWriter, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QPdfWriter_metacall ".} =
  type Cb = proc(super: QPdfWritermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QPdfWriter(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_newPage(self: QPdfWriter, ): bool =


  fQPdfWriter_virtualbase_newPage(self.h)

type QPdfWriternewPageBase* = proc(): bool
proc onnewPage*(self: QPdfWriter, slot: proc(super: QPdfWriternewPageBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QPdfWriternewPageBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_newPage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_newPage(self: ptr cQPdfWriter, slot: int): bool {.exportc: "miqt_exec_callback_QPdfWriter_newPage ".} =
  type Cb = proc(super: QPdfWriternewPageBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_newPage(QPdfWriter(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QPdfWriter, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQPdfWriter_virtualbase_paintEngine(self.h))

type QPdfWriterpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QPdfWriter, slot: proc(super: QPdfWriterpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QPdfWriterpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_paintEngine(self: ptr cQPdfWriter, slot: int): pointer {.exportc: "miqt_exec_callback_QPdfWriter_paintEngine ".} =
  type Cb = proc(super: QPdfWriterpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QPdfWriter(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metric(self: QPdfWriter, id: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQPdfWriter_virtualbase_metric(self.h, cint(id))

type QPdfWritermetricBase* = proc(id: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QPdfWriter, slot: proc(super: QPdfWritermetricBase, id: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QPdfWritermetricBase, id: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_metric(self: ptr cQPdfWriter, slot: int, id: cint): cint {.exportc: "miqt_exec_callback_QPdfWriter_metric ".} =
  type Cb = proc(super: QPdfWritermetricBase, id: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(id: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QPdfWriter(h: self), id)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(id)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_event(self: QPdfWriter, event: gen_qcoreevent.QEvent): bool =


  fQPdfWriter_virtualbase_event(self.h, event.h)

type QPdfWritereventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QPdfWriter, slot: proc(super: QPdfWritereventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QPdfWritereventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_event(self: ptr cQPdfWriter, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QPdfWriter_event ".} =
  type Cb = proc(super: QPdfWritereventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QPdfWriter(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QPdfWriter, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQPdfWriter_virtualbase_eventFilter(self.h, watched.h, event.h)

type QPdfWritereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QPdfWriter, slot: proc(super: QPdfWritereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QPdfWritereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_eventFilter(self: ptr cQPdfWriter, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QPdfWriter_eventFilter ".} =
  type Cb = proc(super: QPdfWritereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QPdfWriter(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QPdfWriter, event: gen_qcoreevent.QTimerEvent): void =


  fQPdfWriter_virtualbase_timerEvent(self.h, event.h)

type QPdfWritertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QPdfWriter, slot: proc(super: QPdfWritertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPdfWritertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_timerEvent(self: ptr cQPdfWriter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPdfWriter_timerEvent ".} =
  type Cb = proc(super: QPdfWritertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QPdfWriter(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QPdfWriter, event: gen_qcoreevent.QChildEvent): void =


  fQPdfWriter_virtualbase_childEvent(self.h, event.h)

type QPdfWriterchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QPdfWriter, slot: proc(super: QPdfWriterchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPdfWriterchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_childEvent(self: ptr cQPdfWriter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPdfWriter_childEvent ".} =
  type Cb = proc(super: QPdfWriterchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QPdfWriter(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QPdfWriter, event: gen_qcoreevent.QEvent): void =


  fQPdfWriter_virtualbase_customEvent(self.h, event.h)

type QPdfWritercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QPdfWriter, slot: proc(super: QPdfWritercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPdfWritercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_customEvent(self: ptr cQPdfWriter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPdfWriter_customEvent ".} =
  type Cb = proc(super: QPdfWritercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QPdfWriter(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QPdfWriter, signal: gen_qmetaobject.QMetaMethod): void =


  fQPdfWriter_virtualbase_connectNotify(self.h, signal.h)

type QPdfWriterconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QPdfWriter, slot: proc(super: QPdfWriterconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QPdfWriterconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_connectNotify(self: ptr cQPdfWriter, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPdfWriter_connectNotify ".} =
  type Cb = proc(super: QPdfWriterconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QPdfWriter(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QPdfWriter, signal: gen_qmetaobject.QMetaMethod): void =


  fQPdfWriter_virtualbase_disconnectNotify(self.h, signal.h)

type QPdfWriterdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QPdfWriter, slot: proc(super: QPdfWriterdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QPdfWriterdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_disconnectNotify(self: ptr cQPdfWriter, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPdfWriter_disconnectNotify ".} =
  type Cb = proc(super: QPdfWriterdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QPdfWriter(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setPageLayout(self: QPdfWriter, pageLayout: gen_qpagelayout.QPageLayout): bool =


  fQPdfWriter_virtualbase_setPageLayout(self.h, pageLayout.h)

type QPdfWritersetPageLayoutBase* = proc(pageLayout: gen_qpagelayout.QPageLayout): bool
proc onsetPageLayout*(self: QPdfWriter, slot: proc(super: QPdfWritersetPageLayoutBase, pageLayout: gen_qpagelayout.QPageLayout): bool) =
  # TODO check subclass
  type Cb = proc(super: QPdfWritersetPageLayoutBase, pageLayout: gen_qpagelayout.QPageLayout): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_setPageLayout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_setPageLayout(self: ptr cQPdfWriter, slot: int, pageLayout: pointer): bool {.exportc: "miqt_exec_callback_QPdfWriter_setPageLayout ".} =
  type Cb = proc(super: QPdfWritersetPageLayoutBase, pageLayout: gen_qpagelayout.QPageLayout): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(pageLayout: gen_qpagelayout.QPageLayout): auto =
    callVirtualBase_setPageLayout(QPdfWriter(h: self), pageLayout)
  let slotval1 = gen_qpagelayout.QPageLayout(h: pageLayout)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_setPageSize(self: QPdfWriter, pageSize: gen_qpagesize.QPageSize): bool =


  fQPdfWriter_virtualbase_setPageSize(self.h, pageSize.h)

type QPdfWritersetPageSizeBase* = proc(pageSize: gen_qpagesize.QPageSize): bool
proc onsetPageSize*(self: QPdfWriter, slot: proc(super: QPdfWritersetPageSizeBase, pageSize: gen_qpagesize.QPageSize): bool) =
  # TODO check subclass
  type Cb = proc(super: QPdfWritersetPageSizeBase, pageSize: gen_qpagesize.QPageSize): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_setPageSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_setPageSize(self: ptr cQPdfWriter, slot: int, pageSize: pointer): bool {.exportc: "miqt_exec_callback_QPdfWriter_setPageSize ".} =
  type Cb = proc(super: QPdfWritersetPageSizeBase, pageSize: gen_qpagesize.QPageSize): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(pageSize: gen_qpagesize.QPageSize): auto =
    callVirtualBase_setPageSize(QPdfWriter(h: self), pageSize)
  let slotval1 = gen_qpagesize.QPageSize(h: pageSize)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_setPageOrientation(self: QPdfWriter, orientation: gen_qpagelayout.QPageLayoutOrientation): bool =


  fQPdfWriter_virtualbase_setPageOrientation(self.h, cint(orientation))

type QPdfWritersetPageOrientationBase* = proc(orientation: gen_qpagelayout.QPageLayoutOrientation): bool
proc onsetPageOrientation*(self: QPdfWriter, slot: proc(super: QPdfWritersetPageOrientationBase, orientation: gen_qpagelayout.QPageLayoutOrientation): bool) =
  # TODO check subclass
  type Cb = proc(super: QPdfWritersetPageOrientationBase, orientation: gen_qpagelayout.QPageLayoutOrientation): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_setPageOrientation(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_setPageOrientation(self: ptr cQPdfWriter, slot: int, orientation: cint): bool {.exportc: "miqt_exec_callback_QPdfWriter_setPageOrientation ".} =
  type Cb = proc(super: QPdfWritersetPageOrientationBase, orientation: gen_qpagelayout.QPageLayoutOrientation): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(orientation: gen_qpagelayout.QPageLayoutOrientation): auto =
    callVirtualBase_setPageOrientation(QPdfWriter(h: self), orientation)
  let slotval1 = gen_qpagelayout.QPageLayoutOrientation(orientation)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_setPageMargins(self: QPdfWriter, margins: gen_qmargins.QMarginsF, units: gen_qpagelayout.QPageLayoutUnit): bool =


  fQPdfWriter_virtualbase_setPageMargins(self.h, margins.h, cint(units))

type QPdfWritersetPageMarginsBase* = proc(margins: gen_qmargins.QMarginsF, units: gen_qpagelayout.QPageLayoutUnit): bool
proc onsetPageMargins*(self: QPdfWriter, slot: proc(super: QPdfWritersetPageMarginsBase, margins: gen_qmargins.QMarginsF, units: gen_qpagelayout.QPageLayoutUnit): bool) =
  # TODO check subclass
  type Cb = proc(super: QPdfWritersetPageMarginsBase, margins: gen_qmargins.QMarginsF, units: gen_qpagelayout.QPageLayoutUnit): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_setPageMargins(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_setPageMargins(self: ptr cQPdfWriter, slot: int, margins: pointer, units: cint): bool {.exportc: "miqt_exec_callback_QPdfWriter_setPageMargins ".} =
  type Cb = proc(super: QPdfWritersetPageMarginsBase, margins: gen_qmargins.QMarginsF, units: gen_qpagelayout.QPageLayoutUnit): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(margins: gen_qmargins.QMarginsF, units: gen_qpagelayout.QPageLayoutUnit): auto =
    callVirtualBase_setPageMargins(QPdfWriter(h: self), margins, units)
  let slotval1 = gen_qmargins.QMarginsF(h: margins)

  let slotval2 = gen_qpagelayout.QPageLayoutUnit(units)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_setPageRanges(self: QPdfWriter, ranges: gen_qpageranges.QPageRanges): void =


  fQPdfWriter_virtualbase_setPageRanges(self.h, ranges.h)

type QPdfWritersetPageRangesBase* = proc(ranges: gen_qpageranges.QPageRanges): void
proc onsetPageRanges*(self: QPdfWriter, slot: proc(super: QPdfWritersetPageRangesBase, ranges: gen_qpageranges.QPageRanges): void) =
  # TODO check subclass
  type Cb = proc(super: QPdfWritersetPageRangesBase, ranges: gen_qpageranges.QPageRanges): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_setPageRanges(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_setPageRanges(self: ptr cQPdfWriter, slot: int, ranges: pointer): void {.exportc: "miqt_exec_callback_QPdfWriter_setPageRanges ".} =
  type Cb = proc(super: QPdfWritersetPageRangesBase, ranges: gen_qpageranges.QPageRanges): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(ranges: gen_qpageranges.QPageRanges): auto =
    callVirtualBase_setPageRanges(QPdfWriter(h: self), ranges)
  let slotval1 = gen_qpageranges.QPageRanges(h: ranges)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QPdfWriter, ): cint =


  fQPdfWriter_virtualbase_devType(self.h)

type QPdfWriterdevTypeBase* = proc(): cint
proc ondevType*(self: QPdfWriter, slot: proc(super: QPdfWriterdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QPdfWriterdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_devType(self: ptr cQPdfWriter, slot: int): cint {.exportc: "miqt_exec_callback_QPdfWriter_devType ".} =
  type Cb = proc(super: QPdfWriterdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QPdfWriter(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_initPainter(self: QPdfWriter, painter: gen_qpainter.QPainter): void =


  fQPdfWriter_virtualbase_initPainter(self.h, painter.h)

type QPdfWriterinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QPdfWriter, slot: proc(super: QPdfWriterinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QPdfWriterinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_initPainter(self: ptr cQPdfWriter, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QPdfWriter_initPainter ".} =
  type Cb = proc(super: QPdfWriterinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QPdfWriter(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QPdfWriter, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQPdfWriter_virtualbase_redirected(self.h, offset.h))

type QPdfWriterredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QPdfWriter, slot: proc(super: QPdfWriterredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QPdfWriterredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_redirected(self: ptr cQPdfWriter, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QPdfWriter_redirected ".} =
  type Cb = proc(super: QPdfWriterredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QPdfWriter(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QPdfWriter, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQPdfWriter_virtualbase_sharedPainter(self.h))

type QPdfWritersharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QPdfWriter, slot: proc(super: QPdfWritersharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QPdfWritersharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_sharedPainter(self: ptr cQPdfWriter, slot: int): pointer {.exportc: "miqt_exec_callback_QPdfWriter_sharedPainter ".} =
  type Cb = proc(super: QPdfWritersharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QPdfWriter(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc staticMetaObject*(_: type QPdfWriter): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQPdfWriter_staticMetaObject())
proc delete*(self: QPdfWriter) =
  fcQPdfWriter_delete(self.h)
