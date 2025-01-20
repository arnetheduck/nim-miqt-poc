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


func init*(T: type gen_qpdfwriter_types.QPdfWriter, h: ptr cQPdfWriter): gen_qpdfwriter_types.QPdfWriter =
  T(h: h)
proc create*(T: type gen_qpdfwriter_types.QPdfWriter, filename: string): gen_qpdfwriter_types.QPdfWriter =

  gen_qpdfwriter_types.QPdfWriter.init(fcQPdfWriter_new(struct_miqt_string(data: filename, len: csize_t(len(filename)))))
proc create*(T: type gen_qpdfwriter_types.QPdfWriter, device: gen_qiodevice.QIODevice): gen_qpdfwriter_types.QPdfWriter =

  gen_qpdfwriter_types.QPdfWriter.init(fcQPdfWriter_new2(device.h))
proc metaObject*(self: gen_qpdfwriter_types.QPdfWriter, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQPdfWriter_metaObject(self.h))

proc metacast*(self: gen_qpdfwriter_types.QPdfWriter, param1: cstring): pointer =

  fcQPdfWriter_metacast(self.h, param1)

proc metacall*(self: gen_qpdfwriter_types.QPdfWriter, param1: cint, param2: cint, param3: pointer): cint =

  fcQPdfWriter_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qpdfwriter_types.QPdfWriter, s: cstring): string =

  let v_ms = fcQPdfWriter_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPdfVersion*(self: gen_qpdfwriter_types.QPdfWriter, version: cint): void =

  fcQPdfWriter_setPdfVersion(self.h, cint(version))

proc pdfVersion*(self: gen_qpdfwriter_types.QPdfWriter, ): cint =

  cint(fcQPdfWriter_pdfVersion(self.h))

proc title*(self: gen_qpdfwriter_types.QPdfWriter, ): string =

  let v_ms = fcQPdfWriter_title(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTitle*(self: gen_qpdfwriter_types.QPdfWriter, title: string): void =

  fcQPdfWriter_setTitle(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

proc creator*(self: gen_qpdfwriter_types.QPdfWriter, ): string =

  let v_ms = fcQPdfWriter_creator(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCreator*(self: gen_qpdfwriter_types.QPdfWriter, creator: string): void =

  fcQPdfWriter_setCreator(self.h, struct_miqt_string(data: creator, len: csize_t(len(creator))))

proc newPage*(self: gen_qpdfwriter_types.QPdfWriter, ): bool =

  fcQPdfWriter_newPage(self.h)

proc setResolution*(self: gen_qpdfwriter_types.QPdfWriter, resolution: cint): void =

  fcQPdfWriter_setResolution(self.h, resolution)

proc resolution*(self: gen_qpdfwriter_types.QPdfWriter, ): cint =

  fcQPdfWriter_resolution(self.h)

proc setDocumentXmpMetadata*(self: gen_qpdfwriter_types.QPdfWriter, xmpMetadata: seq[byte]): void =

  fcQPdfWriter_setDocumentXmpMetadata(self.h, struct_miqt_string(data: cast[cstring](if len(xmpMetadata) == 0: nil else: unsafeAddr xmpMetadata[0]), len: csize_t(len(xmpMetadata))))

proc documentXmpMetadata*(self: gen_qpdfwriter_types.QPdfWriter, ): seq[byte] =

  var v_bytearray = fcQPdfWriter_documentXmpMetadata(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc addFileAttachment*(self: gen_qpdfwriter_types.QPdfWriter, fileName: string, data: seq[byte]): void =

  fcQPdfWriter_addFileAttachment(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc tr2*(_: type gen_qpdfwriter_types.QPdfWriter, s: cstring, c: cstring): string =

  let v_ms = fcQPdfWriter_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qpdfwriter_types.QPdfWriter, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQPdfWriter_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addFileAttachment3*(self: gen_qpdfwriter_types.QPdfWriter, fileName: string, data: seq[byte], mimeType: string): void =

  fcQPdfWriter_addFileAttachment3(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))))

proc QPdfWritermetaObject*(self: gen_qpdfwriter_types.QPdfWriter, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQPdfWriter_virtualbase_metaObject(self.h))

type QPdfWritermetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qpdfwriter_types.QPdfWriter, slot: QPdfWritermetaObjectProc) =
  # TODO check subclass
  var tmp = new QPdfWritermetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_metaObject(self: ptr cQPdfWriter, slot: int): pointer {.exportc: "miqt_exec_callback_QPdfWriter_metaObject ".} =
  var nimfunc = cast[ptr QPdfWritermetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPdfWritermetacast*(self: gen_qpdfwriter_types.QPdfWriter, param1: cstring): pointer =

  fQPdfWriter_virtualbase_metacast(self.h, param1)

type QPdfWritermetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qpdfwriter_types.QPdfWriter, slot: QPdfWritermetacastProc) =
  # TODO check subclass
  var tmp = new QPdfWritermetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_metacast(self: ptr cQPdfWriter, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QPdfWriter_metacast ".} =
  var nimfunc = cast[ptr QPdfWritermetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPdfWritermetacall*(self: gen_qpdfwriter_types.QPdfWriter, param1: cint, param2: cint, param3: pointer): cint =

  fQPdfWriter_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QPdfWritermetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qpdfwriter_types.QPdfWriter, slot: QPdfWritermetacallProc) =
  # TODO check subclass
  var tmp = new QPdfWritermetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_metacall(self: ptr cQPdfWriter, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QPdfWriter_metacall ".} =
  var nimfunc = cast[ptr QPdfWritermetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QPdfWriternewPage*(self: gen_qpdfwriter_types.QPdfWriter, ): bool =

  fQPdfWriter_virtualbase_newPage(self.h)

type QPdfWriternewPageProc* = proc(): bool
proc onnewPage*(self: gen_qpdfwriter_types.QPdfWriter, slot: QPdfWriternewPageProc) =
  # TODO check subclass
  var tmp = new QPdfWriternewPageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_newPage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_newPage(self: ptr cQPdfWriter, slot: int): bool {.exportc: "miqt_exec_callback_QPdfWriter_newPage ".} =
  var nimfunc = cast[ptr QPdfWriternewPageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QPdfWriterpaintEngine*(self: gen_qpdfwriter_types.QPdfWriter, ): gen_qpaintengine.QPaintEngine =

  gen_qpaintengine.QPaintEngine(h: fQPdfWriter_virtualbase_paintEngine(self.h))

type QPdfWriterpaintEngineProc* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: gen_qpdfwriter_types.QPdfWriter, slot: QPdfWriterpaintEngineProc) =
  # TODO check subclass
  var tmp = new QPdfWriterpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_paintEngine(self: ptr cQPdfWriter, slot: int): pointer {.exportc: "miqt_exec_callback_QPdfWriter_paintEngine ".} =
  var nimfunc = cast[ptr QPdfWriterpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPdfWritermetric*(self: gen_qpdfwriter_types.QPdfWriter, id: cint): cint =

  fQPdfWriter_virtualbase_metric(self.h, cint(id))

type QPdfWritermetricProc* = proc(id: cint): cint
proc onmetric*(self: gen_qpdfwriter_types.QPdfWriter, slot: QPdfWritermetricProc) =
  # TODO check subclass
  var tmp = new QPdfWritermetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_metric(self: ptr cQPdfWriter, slot: int, id: cint): cint {.exportc: "miqt_exec_callback_QPdfWriter_metric ".} =
  var nimfunc = cast[ptr QPdfWritermetricProc](cast[pointer](slot))
  let slotval1 = cint(id)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPdfWriterevent*(self: gen_qpdfwriter_types.QPdfWriter, event: gen_qcoreevent.QEvent): bool =

  fQPdfWriter_virtualbase_event(self.h, event.h)

type QPdfWritereventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qpdfwriter_types.QPdfWriter, slot: QPdfWritereventProc) =
  # TODO check subclass
  var tmp = new QPdfWritereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_event(self: ptr cQPdfWriter, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QPdfWriter_event ".} =
  var nimfunc = cast[ptr QPdfWritereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPdfWritereventFilter*(self: gen_qpdfwriter_types.QPdfWriter, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQPdfWriter_virtualbase_eventFilter(self.h, watched.h, event.h)

type QPdfWritereventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qpdfwriter_types.QPdfWriter, slot: QPdfWritereventFilterProc) =
  # TODO check subclass
  var tmp = new QPdfWritereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_eventFilter(self: ptr cQPdfWriter, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QPdfWriter_eventFilter ".} =
  var nimfunc = cast[ptr QPdfWritereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QPdfWritertimerEvent*(self: gen_qpdfwriter_types.QPdfWriter, event: gen_qcoreevent.QTimerEvent): void =

  fQPdfWriter_virtualbase_timerEvent(self.h, event.h)

type QPdfWritertimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qpdfwriter_types.QPdfWriter, slot: QPdfWritertimerEventProc) =
  # TODO check subclass
  var tmp = new QPdfWritertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_timerEvent(self: ptr cQPdfWriter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPdfWriter_timerEvent ".} =
  var nimfunc = cast[ptr QPdfWritertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QPdfWriterchildEvent*(self: gen_qpdfwriter_types.QPdfWriter, event: gen_qcoreevent.QChildEvent): void =

  fQPdfWriter_virtualbase_childEvent(self.h, event.h)

type QPdfWriterchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qpdfwriter_types.QPdfWriter, slot: QPdfWriterchildEventProc) =
  # TODO check subclass
  var tmp = new QPdfWriterchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_childEvent(self: ptr cQPdfWriter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPdfWriter_childEvent ".} =
  var nimfunc = cast[ptr QPdfWriterchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QPdfWritercustomEvent*(self: gen_qpdfwriter_types.QPdfWriter, event: gen_qcoreevent.QEvent): void =

  fQPdfWriter_virtualbase_customEvent(self.h, event.h)

type QPdfWritercustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qpdfwriter_types.QPdfWriter, slot: QPdfWritercustomEventProc) =
  # TODO check subclass
  var tmp = new QPdfWritercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_customEvent(self: ptr cQPdfWriter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPdfWriter_customEvent ".} =
  var nimfunc = cast[ptr QPdfWritercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QPdfWriterconnectNotify*(self: gen_qpdfwriter_types.QPdfWriter, signal: gen_qmetaobject.QMetaMethod): void =

  fQPdfWriter_virtualbase_connectNotify(self.h, signal.h)

type QPdfWriterconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qpdfwriter_types.QPdfWriter, slot: QPdfWriterconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPdfWriterconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_connectNotify(self: ptr cQPdfWriter, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPdfWriter_connectNotify ".} =
  var nimfunc = cast[ptr QPdfWriterconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QPdfWriterdisconnectNotify*(self: gen_qpdfwriter_types.QPdfWriter, signal: gen_qmetaobject.QMetaMethod): void =

  fQPdfWriter_virtualbase_disconnectNotify(self.h, signal.h)

type QPdfWriterdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qpdfwriter_types.QPdfWriter, slot: QPdfWriterdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPdfWriterdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_disconnectNotify(self: ptr cQPdfWriter, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPdfWriter_disconnectNotify ".} =
  var nimfunc = cast[ptr QPdfWriterdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QPdfWritersetPageLayout*(self: gen_qpdfwriter_types.QPdfWriter, pageLayout: gen_qpagelayout.QPageLayout): bool =

  fQPdfWriter_virtualbase_setPageLayout(self.h, pageLayout.h)

type QPdfWritersetPageLayoutProc* = proc(pageLayout: gen_qpagelayout.QPageLayout): bool
proc onsetPageLayout*(self: gen_qpdfwriter_types.QPdfWriter, slot: QPdfWritersetPageLayoutProc) =
  # TODO check subclass
  var tmp = new QPdfWritersetPageLayoutProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_setPageLayout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_setPageLayout(self: ptr cQPdfWriter, slot: int, pageLayout: pointer): bool {.exportc: "miqt_exec_callback_QPdfWriter_setPageLayout ".} =
  var nimfunc = cast[ptr QPdfWritersetPageLayoutProc](cast[pointer](slot))
  let slotval1 = gen_qpagelayout.QPageLayout(h: pageLayout)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPdfWritersetPageSize*(self: gen_qpdfwriter_types.QPdfWriter, pageSize: gen_qpagesize.QPageSize): bool =

  fQPdfWriter_virtualbase_setPageSize(self.h, pageSize.h)

type QPdfWritersetPageSizeProc* = proc(pageSize: gen_qpagesize.QPageSize): bool
proc onsetPageSize*(self: gen_qpdfwriter_types.QPdfWriter, slot: QPdfWritersetPageSizeProc) =
  # TODO check subclass
  var tmp = new QPdfWritersetPageSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_setPageSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_setPageSize(self: ptr cQPdfWriter, slot: int, pageSize: pointer): bool {.exportc: "miqt_exec_callback_QPdfWriter_setPageSize ".} =
  var nimfunc = cast[ptr QPdfWritersetPageSizeProc](cast[pointer](slot))
  let slotval1 = gen_qpagesize.QPageSize(h: pageSize)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPdfWritersetPageOrientation*(self: gen_qpdfwriter_types.QPdfWriter, orientation: cint): bool =

  fQPdfWriter_virtualbase_setPageOrientation(self.h, cint(orientation))

type QPdfWritersetPageOrientationProc* = proc(orientation: cint): bool
proc onsetPageOrientation*(self: gen_qpdfwriter_types.QPdfWriter, slot: QPdfWritersetPageOrientationProc) =
  # TODO check subclass
  var tmp = new QPdfWritersetPageOrientationProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_setPageOrientation(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_setPageOrientation(self: ptr cQPdfWriter, slot: int, orientation: cint): bool {.exportc: "miqt_exec_callback_QPdfWriter_setPageOrientation ".} =
  var nimfunc = cast[ptr QPdfWritersetPageOrientationProc](cast[pointer](slot))
  let slotval1 = cint(orientation)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPdfWritersetPageMargins*(self: gen_qpdfwriter_types.QPdfWriter, margins: gen_qmargins.QMarginsF, units: cint): bool =

  fQPdfWriter_virtualbase_setPageMargins(self.h, margins.h, cint(units))

type QPdfWritersetPageMarginsProc* = proc(margins: gen_qmargins.QMarginsF, units: cint): bool
proc onsetPageMargins*(self: gen_qpdfwriter_types.QPdfWriter, slot: QPdfWritersetPageMarginsProc) =
  # TODO check subclass
  var tmp = new QPdfWritersetPageMarginsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_setPageMargins(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_setPageMargins(self: ptr cQPdfWriter, slot: int, margins: pointer, units: cint): bool {.exportc: "miqt_exec_callback_QPdfWriter_setPageMargins ".} =
  var nimfunc = cast[ptr QPdfWritersetPageMarginsProc](cast[pointer](slot))
  let slotval1 = gen_qmargins.QMarginsF(h: margins)

  let slotval2 = cint(units)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QPdfWritersetPageRanges*(self: gen_qpdfwriter_types.QPdfWriter, ranges: gen_qpageranges.QPageRanges): void =

  fQPdfWriter_virtualbase_setPageRanges(self.h, ranges.h)

type QPdfWritersetPageRangesProc* = proc(ranges: gen_qpageranges.QPageRanges): void
proc onsetPageRanges*(self: gen_qpdfwriter_types.QPdfWriter, slot: QPdfWritersetPageRangesProc) =
  # TODO check subclass
  var tmp = new QPdfWritersetPageRangesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_setPageRanges(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_setPageRanges(self: ptr cQPdfWriter, slot: int, ranges: pointer): void {.exportc: "miqt_exec_callback_QPdfWriter_setPageRanges ".} =
  var nimfunc = cast[ptr QPdfWritersetPageRangesProc](cast[pointer](slot))
  let slotval1 = gen_qpageranges.QPageRanges(h: ranges)


  nimfunc[](slotval1)
proc QPdfWriterdevType*(self: gen_qpdfwriter_types.QPdfWriter, ): cint =

  fQPdfWriter_virtualbase_devType(self.h)

type QPdfWriterdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qpdfwriter_types.QPdfWriter, slot: QPdfWriterdevTypeProc) =
  # TODO check subclass
  var tmp = new QPdfWriterdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_devType(self: ptr cQPdfWriter, slot: int): cint {.exportc: "miqt_exec_callback_QPdfWriter_devType ".} =
  var nimfunc = cast[ptr QPdfWriterdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QPdfWriterinitPainter*(self: gen_qpdfwriter_types.QPdfWriter, painter: gen_qpainter.QPainter): void =

  fQPdfWriter_virtualbase_initPainter(self.h, painter.h)

type QPdfWriterinitPainterProc* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: gen_qpdfwriter_types.QPdfWriter, slot: QPdfWriterinitPainterProc) =
  # TODO check subclass
  var tmp = new QPdfWriterinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_initPainter(self: ptr cQPdfWriter, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QPdfWriter_initPainter ".} =
  var nimfunc = cast[ptr QPdfWriterinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](slotval1)
proc QPdfWriterredirected*(self: gen_qpdfwriter_types.QPdfWriter, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =

  gen_qpaintdevice.QPaintDevice(h: fQPdfWriter_virtualbase_redirected(self.h, offset.h))

type QPdfWriterredirectedProc* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: gen_qpdfwriter_types.QPdfWriter, slot: QPdfWriterredirectedProc) =
  # TODO check subclass
  var tmp = new QPdfWriterredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_redirected(self: ptr cQPdfWriter, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QPdfWriter_redirected ".} =
  var nimfunc = cast[ptr QPdfWriterredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QPdfWritersharedPainter*(self: gen_qpdfwriter_types.QPdfWriter, ): gen_qpainter.QPainter =

  gen_qpainter.QPainter(h: fQPdfWriter_virtualbase_sharedPainter(self.h))

type QPdfWritersharedPainterProc* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: gen_qpdfwriter_types.QPdfWriter, slot: QPdfWritersharedPainterProc) =
  # TODO check subclass
  var tmp = new QPdfWritersharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPdfWriter_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPdfWriter_sharedPainter(self: ptr cQPdfWriter, slot: int): pointer {.exportc: "miqt_exec_callback_QPdfWriter_sharedPainter ".} =
  var nimfunc = cast[ptr QPdfWritersharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc staticMetaObject*(_: type gen_qpdfwriter_types.QPdfWriter): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQPdfWriter_staticMetaObject())
proc delete*(self: gen_qpdfwriter_types.QPdfWriter) =
  fcQPdfWriter_delete(self.h)
