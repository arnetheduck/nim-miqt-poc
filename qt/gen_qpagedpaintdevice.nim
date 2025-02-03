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
{.compile("gen_qpagedpaintdevice.cpp", cflags).}


type QPagedPaintDevicePageSize* = cint
const
  QPagedPaintDeviceA4* = 0
  QPagedPaintDeviceB5* = 1
  QPagedPaintDeviceLetter* = 2
  QPagedPaintDeviceLegal* = 3
  QPagedPaintDeviceExecutive* = 4
  QPagedPaintDeviceA0* = 5
  QPagedPaintDeviceA1* = 6
  QPagedPaintDeviceA2* = 7
  QPagedPaintDeviceA3* = 8
  QPagedPaintDeviceA5* = 9
  QPagedPaintDeviceA6* = 10
  QPagedPaintDeviceA7* = 11
  QPagedPaintDeviceA8* = 12
  QPagedPaintDeviceA9* = 13
  QPagedPaintDeviceB0* = 14
  QPagedPaintDeviceB1* = 15
  QPagedPaintDeviceB10* = 16
  QPagedPaintDeviceB2* = 17
  QPagedPaintDeviceB3* = 18
  QPagedPaintDeviceB4* = 19
  QPagedPaintDeviceB6* = 20
  QPagedPaintDeviceB7* = 21
  QPagedPaintDeviceB8* = 22
  QPagedPaintDeviceB9* = 23
  QPagedPaintDeviceC5E* = 24
  QPagedPaintDeviceComm10E* = 25
  QPagedPaintDeviceDLE* = 26
  QPagedPaintDeviceFolio* = 27
  QPagedPaintDeviceLedger* = 28
  QPagedPaintDeviceTabloid* = 29
  QPagedPaintDeviceCustom* = 30
  QPagedPaintDeviceA10* = 31
  QPagedPaintDeviceA3Extra* = 32
  QPagedPaintDeviceA4Extra* = 33
  QPagedPaintDeviceA4Plus* = 34
  QPagedPaintDeviceA4Small* = 35
  QPagedPaintDeviceA5Extra* = 36
  QPagedPaintDeviceB5Extra* = 37
  QPagedPaintDeviceJisB0* = 38
  QPagedPaintDeviceJisB1* = 39
  QPagedPaintDeviceJisB2* = 40
  QPagedPaintDeviceJisB3* = 41
  QPagedPaintDeviceJisB4* = 42
  QPagedPaintDeviceJisB5* = 43
  QPagedPaintDeviceJisB6* = 44
  QPagedPaintDeviceJisB7* = 45
  QPagedPaintDeviceJisB8* = 46
  QPagedPaintDeviceJisB9* = 47
  QPagedPaintDeviceJisB10* = 48
  QPagedPaintDeviceAnsiC* = 49
  QPagedPaintDeviceAnsiD* = 50
  QPagedPaintDeviceAnsiE* = 51
  QPagedPaintDeviceLegalExtra* = 52
  QPagedPaintDeviceLetterExtra* = 53
  QPagedPaintDeviceLetterPlus* = 54
  QPagedPaintDeviceLetterSmall* = 55
  QPagedPaintDeviceTabloidExtra* = 56
  QPagedPaintDeviceArchA* = 57
  QPagedPaintDeviceArchB* = 58
  QPagedPaintDeviceArchC* = 59
  QPagedPaintDeviceArchD* = 60
  QPagedPaintDeviceArchE* = 61
  QPagedPaintDeviceImperial7x9* = 62
  QPagedPaintDeviceImperial8x10* = 63
  QPagedPaintDeviceImperial9x11* = 64
  QPagedPaintDeviceImperial9x12* = 65
  QPagedPaintDeviceImperial10x11* = 66
  QPagedPaintDeviceImperial10x13* = 67
  QPagedPaintDeviceImperial10x14* = 68
  QPagedPaintDeviceImperial12x11* = 69
  QPagedPaintDeviceImperial15x11* = 70
  QPagedPaintDeviceExecutiveStandard* = 71
  QPagedPaintDeviceNote* = 72
  QPagedPaintDeviceQuarto* = 73
  QPagedPaintDeviceStatement* = 74
  QPagedPaintDeviceSuperA* = 75
  QPagedPaintDeviceSuperB* = 76
  QPagedPaintDevicePostcard* = 77
  QPagedPaintDeviceDoublePostcard* = 78
  QPagedPaintDevicePrc16K* = 79
  QPagedPaintDevicePrc32K* = 80
  QPagedPaintDevicePrc32KBig* = 81
  QPagedPaintDeviceFanFoldUS* = 82
  QPagedPaintDeviceFanFoldGerman* = 83
  QPagedPaintDeviceFanFoldGermanLegal* = 84
  QPagedPaintDeviceEnvelopeB4* = 85
  QPagedPaintDeviceEnvelopeB5* = 86
  QPagedPaintDeviceEnvelopeB6* = 87
  QPagedPaintDeviceEnvelopeC0* = 88
  QPagedPaintDeviceEnvelopeC1* = 89
  QPagedPaintDeviceEnvelopeC2* = 90
  QPagedPaintDeviceEnvelopeC3* = 91
  QPagedPaintDeviceEnvelopeC4* = 92
  QPagedPaintDeviceEnvelopeC6* = 93
  QPagedPaintDeviceEnvelopeC65* = 94
  QPagedPaintDeviceEnvelopeC7* = 95
  QPagedPaintDeviceEnvelope9* = 96
  QPagedPaintDeviceEnvelope11* = 97
  QPagedPaintDeviceEnvelope12* = 98
  QPagedPaintDeviceEnvelope14* = 99
  QPagedPaintDeviceEnvelopeMonarch* = 100
  QPagedPaintDeviceEnvelopePersonal* = 101
  QPagedPaintDeviceEnvelopeChou3* = 102
  QPagedPaintDeviceEnvelopeChou4* = 103
  QPagedPaintDeviceEnvelopeInvite* = 104
  QPagedPaintDeviceEnvelopeItalian* = 105
  QPagedPaintDeviceEnvelopeKaku2* = 106
  QPagedPaintDeviceEnvelopeKaku3* = 107
  QPagedPaintDeviceEnvelopePrc1* = 108
  QPagedPaintDeviceEnvelopePrc2* = 109
  QPagedPaintDeviceEnvelopePrc3* = 110
  QPagedPaintDeviceEnvelopePrc4* = 111
  QPagedPaintDeviceEnvelopePrc5* = 112
  QPagedPaintDeviceEnvelopePrc6* = 113
  QPagedPaintDeviceEnvelopePrc7* = 114
  QPagedPaintDeviceEnvelopePrc8* = 115
  QPagedPaintDeviceEnvelopePrc9* = 116
  QPagedPaintDeviceEnvelopePrc10* = 117
  QPagedPaintDeviceEnvelopeYou4* = 118
  QPagedPaintDeviceLastPageSize* = 118
  QPagedPaintDeviceNPageSize* = 118
  QPagedPaintDeviceNPaperSize* = 118
  QPagedPaintDeviceAnsiA* = 2
  QPagedPaintDeviceAnsiB* = 28
  QPagedPaintDeviceEnvelopeC5* = 24
  QPagedPaintDeviceEnvelopeDL* = 26
  QPagedPaintDeviceEnvelope10* = 25



type QPagedPaintDevicePdfVersion* = cint
const
  QPagedPaintDevicePdfVersion_1_4* = 0
  QPagedPaintDevicePdfVersion_A1b* = 1
  QPagedPaintDevicePdfVersion_1_6* = 2



import gen_qpagedpaintdevice_types
export gen_qpagedpaintdevice_types

import
  gen_qmargins,
  gen_qpagelayout,
  gen_qpagesize,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qsize
export
  gen_qmargins,
  gen_qpagelayout,
  gen_qpagesize,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qsize

type cQPagedPaintDevice*{.exportc: "QPagedPaintDevice", incompleteStruct.} = object
type cQPagedPaintDeviceMargins*{.exportc: "QPagedPaintDevice__Margins", incompleteStruct.} = object

proc fcQPagedPaintDevice_new(): ptr cQPagedPaintDevice {.importc: "QPagedPaintDevice_new".}
proc fcQPagedPaintDevice_newPage(self: pointer, ): bool {.importc: "QPagedPaintDevice_newPage".}
proc fcQPagedPaintDevice_setPageLayout(self: pointer, pageLayout: pointer): bool {.importc: "QPagedPaintDevice_setPageLayout".}
proc fcQPagedPaintDevice_setPageSize(self: pointer, pageSize: pointer): bool {.importc: "QPagedPaintDevice_setPageSize".}
proc fcQPagedPaintDevice_setPageOrientation(self: pointer, orientation: cint): bool {.importc: "QPagedPaintDevice_setPageOrientation".}
proc fcQPagedPaintDevice_setPageMargins(self: pointer, margins: pointer): bool {.importc: "QPagedPaintDevice_setPageMargins".}
proc fcQPagedPaintDevice_setPageMargins2(self: pointer, margins: pointer, units: cint): bool {.importc: "QPagedPaintDevice_setPageMargins2".}
proc fcQPagedPaintDevice_pageLayout(self: pointer, ): pointer {.importc: "QPagedPaintDevice_pageLayout".}
proc fcQPagedPaintDevice_setPageSizeWithSize(self: pointer, size: cint): void {.importc: "QPagedPaintDevice_setPageSizeWithSize".}
proc fcQPagedPaintDevice_pageSize(self: pointer, ): cint {.importc: "QPagedPaintDevice_pageSize".}
proc fcQPagedPaintDevice_setPageSizeMM(self: pointer, size: pointer): void {.importc: "QPagedPaintDevice_setPageSizeMM".}
proc fcQPagedPaintDevice_pageSizeMM(self: pointer, ): pointer {.importc: "QPagedPaintDevice_pageSizeMM".}
proc fcQPagedPaintDevice_setMargins(self: pointer, margins: pointer): void {.importc: "QPagedPaintDevice_setMargins".}
proc fcQPagedPaintDevice_margins(self: pointer, ): pointer {.importc: "QPagedPaintDevice_margins".}
proc fcQPagedPaintDevice_override_virtual_newPage(self: pointer, slot: int) {.importc: "QPagedPaintDevice_override_virtual_newPage".}
proc fQPagedPaintDevice_virtualbase_setPageSizeWithSize(self: pointer, size: cint): void{.importc: "QPagedPaintDevice_virtualbase_setPageSizeWithSize".}
proc fcQPagedPaintDevice_override_virtual_setPageSizeWithSize(self: pointer, slot: int) {.importc: "QPagedPaintDevice_override_virtual_setPageSizeWithSize".}
proc fQPagedPaintDevice_virtualbase_setPageSizeMM(self: pointer, size: pointer): void{.importc: "QPagedPaintDevice_virtualbase_setPageSizeMM".}
proc fcQPagedPaintDevice_override_virtual_setPageSizeMM(self: pointer, slot: int) {.importc: "QPagedPaintDevice_override_virtual_setPageSizeMM".}
proc fQPagedPaintDevice_virtualbase_setMargins(self: pointer, margins: pointer): void{.importc: "QPagedPaintDevice_virtualbase_setMargins".}
proc fcQPagedPaintDevice_override_virtual_setMargins(self: pointer, slot: int) {.importc: "QPagedPaintDevice_override_virtual_setMargins".}
proc fQPagedPaintDevice_virtualbase_devType(self: pointer, ): cint{.importc: "QPagedPaintDevice_virtualbase_devType".}
proc fcQPagedPaintDevice_override_virtual_devType(self: pointer, slot: int) {.importc: "QPagedPaintDevice_override_virtual_devType".}
proc fcQPagedPaintDevice_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QPagedPaintDevice_override_virtual_paintEngine".}
proc fQPagedPaintDevice_virtualbase_metric(self: pointer, metric: cint): cint{.importc: "QPagedPaintDevice_virtualbase_metric".}
proc fcQPagedPaintDevice_override_virtual_metric(self: pointer, slot: int) {.importc: "QPagedPaintDevice_override_virtual_metric".}
proc fQPagedPaintDevice_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QPagedPaintDevice_virtualbase_initPainter".}
proc fcQPagedPaintDevice_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QPagedPaintDevice_override_virtual_initPainter".}
proc fQPagedPaintDevice_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QPagedPaintDevice_virtualbase_redirected".}
proc fcQPagedPaintDevice_override_virtual_redirected(self: pointer, slot: int) {.importc: "QPagedPaintDevice_override_virtual_redirected".}
proc fQPagedPaintDevice_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QPagedPaintDevice_virtualbase_sharedPainter".}
proc fcQPagedPaintDevice_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QPagedPaintDevice_override_virtual_sharedPainter".}
proc fcQPagedPaintDevice_delete(self: pointer) {.importc: "QPagedPaintDevice_delete".}
proc fcQPagedPaintDeviceMargins_delete(self: pointer) {.importc: "QPagedPaintDevice__Margins_delete".}


func init*(T: type QPagedPaintDevice, h: ptr cQPagedPaintDevice): QPagedPaintDevice =
  T(h: h)
proc create*(T: type QPagedPaintDevice, ): QPagedPaintDevice =

  QPagedPaintDevice.init(fcQPagedPaintDevice_new())
proc newPage*(self: QPagedPaintDevice, ): bool =

  fcQPagedPaintDevice_newPage(self.h)

proc setPageLayout*(self: QPagedPaintDevice, pageLayout: gen_qpagelayout.QPageLayout): bool =

  fcQPagedPaintDevice_setPageLayout(self.h, pageLayout.h)

proc setPageSize*(self: QPagedPaintDevice, pageSize: gen_qpagesize.QPageSize): bool =

  fcQPagedPaintDevice_setPageSize(self.h, pageSize.h)

proc setPageOrientation*(self: QPagedPaintDevice, orientation: gen_qpagelayout.QPageLayoutOrientation): bool =

  fcQPagedPaintDevice_setPageOrientation(self.h, cint(orientation))

proc setPageMargins*(self: QPagedPaintDevice, margins: gen_qmargins.QMarginsF): bool =

  fcQPagedPaintDevice_setPageMargins(self.h, margins.h)

proc setPageMargins2*(self: QPagedPaintDevice, margins: gen_qmargins.QMarginsF, units: gen_qpagelayout.QPageLayoutUnit): bool =

  fcQPagedPaintDevice_setPageMargins2(self.h, margins.h, cint(units))

proc pageLayout*(self: QPagedPaintDevice, ): gen_qpagelayout.QPageLayout =

  gen_qpagelayout.QPageLayout(h: fcQPagedPaintDevice_pageLayout(self.h))

proc setPageSizeWithSize*(self: QPagedPaintDevice, size: QPagedPaintDevicePageSize): void =

  fcQPagedPaintDevice_setPageSizeWithSize(self.h, cint(size))

proc pageSize*(self: QPagedPaintDevice, ): QPagedPaintDevicePageSize =

  QPagedPaintDevicePageSize(fcQPagedPaintDevice_pageSize(self.h))

proc setPageSizeMM*(self: QPagedPaintDevice, size: gen_qsize.QSizeF): void =

  fcQPagedPaintDevice_setPageSizeMM(self.h, size.h)

proc pageSizeMM*(self: QPagedPaintDevice, ): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQPagedPaintDevice_pageSizeMM(self.h))

proc setMargins*(self: QPagedPaintDevice, margins: QPagedPaintDeviceMargins): void =

  fcQPagedPaintDevice_setMargins(self.h, margins.h)

proc margins*(self: QPagedPaintDevice, ): QPagedPaintDeviceMargins =

  QPagedPaintDeviceMargins(h: fcQPagedPaintDevice_margins(self.h))

type QPagedPaintDevicenewPageBase* = proc(): bool
proc onnewPage*(self: QPagedPaintDevice, slot: proc(): bool) =
  # TODO check subclass
  type Cb = proc(): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPagedPaintDevice_override_virtual_newPage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPagedPaintDevice_newPage(self: ptr cQPagedPaintDevice, slot: int): bool {.exportc: "miqt_exec_callback_QPagedPaintDevice_newPage ".} =
  type Cb = proc(): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_setPageSizeWithSize(self: QPagedPaintDevice, size: QPagedPaintDevicePageSize): void =


  fQPagedPaintDevice_virtualbase_setPageSizeWithSize(self.h, cint(size))

type QPagedPaintDevicesetPageSizeWithSizeBase* = proc(size: QPagedPaintDevicePageSize): void
proc onsetPageSizeWithSize*(self: QPagedPaintDevice, slot: proc(super: QPagedPaintDevicesetPageSizeWithSizeBase, size: QPagedPaintDevicePageSize): void) =
  # TODO check subclass
  type Cb = proc(super: QPagedPaintDevicesetPageSizeWithSizeBase, size: QPagedPaintDevicePageSize): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPagedPaintDevice_override_virtual_setPageSizeWithSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPagedPaintDevice_setPageSizeWithSize(self: ptr cQPagedPaintDevice, slot: int, size: cint): void {.exportc: "miqt_exec_callback_QPagedPaintDevice_setPageSizeWithSize ".} =
  type Cb = proc(super: QPagedPaintDevicesetPageSizeWithSizeBase, size: QPagedPaintDevicePageSize): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(size: QPagedPaintDevicePageSize): auto =
    callVirtualBase_setPageSizeWithSize(QPagedPaintDevice(h: self), size)
  let slotval1 = QPagedPaintDevicePageSize(size)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setPageSizeMM(self: QPagedPaintDevice, size: gen_qsize.QSizeF): void =


  fQPagedPaintDevice_virtualbase_setPageSizeMM(self.h, size.h)

type QPagedPaintDevicesetPageSizeMMBase* = proc(size: gen_qsize.QSizeF): void
proc onsetPageSizeMM*(self: QPagedPaintDevice, slot: proc(super: QPagedPaintDevicesetPageSizeMMBase, size: gen_qsize.QSizeF): void) =
  # TODO check subclass
  type Cb = proc(super: QPagedPaintDevicesetPageSizeMMBase, size: gen_qsize.QSizeF): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPagedPaintDevice_override_virtual_setPageSizeMM(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPagedPaintDevice_setPageSizeMM(self: ptr cQPagedPaintDevice, slot: int, size: pointer): void {.exportc: "miqt_exec_callback_QPagedPaintDevice_setPageSizeMM ".} =
  type Cb = proc(super: QPagedPaintDevicesetPageSizeMMBase, size: gen_qsize.QSizeF): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(size: gen_qsize.QSizeF): auto =
    callVirtualBase_setPageSizeMM(QPagedPaintDevice(h: self), size)
  let slotval1 = gen_qsize.QSizeF(h: size)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setMargins(self: QPagedPaintDevice, margins: QPagedPaintDeviceMargins): void =


  fQPagedPaintDevice_virtualbase_setMargins(self.h, margins.h)

type QPagedPaintDevicesetMarginsBase* = proc(margins: QPagedPaintDeviceMargins): void
proc onsetMargins*(self: QPagedPaintDevice, slot: proc(super: QPagedPaintDevicesetMarginsBase, margins: QPagedPaintDeviceMargins): void) =
  # TODO check subclass
  type Cb = proc(super: QPagedPaintDevicesetMarginsBase, margins: QPagedPaintDeviceMargins): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPagedPaintDevice_override_virtual_setMargins(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPagedPaintDevice_setMargins(self: ptr cQPagedPaintDevice, slot: int, margins: pointer): void {.exportc: "miqt_exec_callback_QPagedPaintDevice_setMargins ".} =
  type Cb = proc(super: QPagedPaintDevicesetMarginsBase, margins: QPagedPaintDeviceMargins): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(margins: QPagedPaintDeviceMargins): auto =
    callVirtualBase_setMargins(QPagedPaintDevice(h: self), margins)
  let slotval1 = QPagedPaintDeviceMargins(h: margins)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QPagedPaintDevice, ): cint =


  fQPagedPaintDevice_virtualbase_devType(self.h)

type QPagedPaintDevicedevTypeBase* = proc(): cint
proc ondevType*(self: QPagedPaintDevice, slot: proc(super: QPagedPaintDevicedevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QPagedPaintDevicedevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPagedPaintDevice_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPagedPaintDevice_devType(self: ptr cQPagedPaintDevice, slot: int): cint {.exportc: "miqt_exec_callback_QPagedPaintDevice_devType ".} =
  type Cb = proc(super: QPagedPaintDevicedevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QPagedPaintDevice(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
type QPagedPaintDevicepaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QPagedPaintDevice, slot: proc(): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPagedPaintDevice_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPagedPaintDevice_paintEngine(self: ptr cQPagedPaintDevice, slot: int): pointer {.exportc: "miqt_exec_callback_QPagedPaintDevice_paintEngine ".} =
  type Cb = proc(): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc callVirtualBase_metric(self: QPagedPaintDevice, metric: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQPagedPaintDevice_virtualbase_metric(self.h, cint(metric))

type QPagedPaintDevicemetricBase* = proc(metric: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QPagedPaintDevice, slot: proc(super: QPagedPaintDevicemetricBase, metric: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QPagedPaintDevicemetricBase, metric: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPagedPaintDevice_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPagedPaintDevice_metric(self: ptr cQPagedPaintDevice, slot: int, metric: cint): cint {.exportc: "miqt_exec_callback_QPagedPaintDevice_metric ".} =
  type Cb = proc(super: QPagedPaintDevicemetricBase, metric: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(metric: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QPagedPaintDevice(h: self), metric)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(metric)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QPagedPaintDevice, painter: gen_qpainter.QPainter): void =


  fQPagedPaintDevice_virtualbase_initPainter(self.h, painter.h)

type QPagedPaintDeviceinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QPagedPaintDevice, slot: proc(super: QPagedPaintDeviceinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QPagedPaintDeviceinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPagedPaintDevice_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPagedPaintDevice_initPainter(self: ptr cQPagedPaintDevice, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QPagedPaintDevice_initPainter ".} =
  type Cb = proc(super: QPagedPaintDeviceinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QPagedPaintDevice(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QPagedPaintDevice, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQPagedPaintDevice_virtualbase_redirected(self.h, offset.h))

type QPagedPaintDeviceredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QPagedPaintDevice, slot: proc(super: QPagedPaintDeviceredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QPagedPaintDeviceredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPagedPaintDevice_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPagedPaintDevice_redirected(self: ptr cQPagedPaintDevice, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QPagedPaintDevice_redirected ".} =
  type Cb = proc(super: QPagedPaintDeviceredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QPagedPaintDevice(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QPagedPaintDevice, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQPagedPaintDevice_virtualbase_sharedPainter(self.h))

type QPagedPaintDevicesharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QPagedPaintDevice, slot: proc(super: QPagedPaintDevicesharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QPagedPaintDevicesharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPagedPaintDevice_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPagedPaintDevice_sharedPainter(self: ptr cQPagedPaintDevice, slot: int): pointer {.exportc: "miqt_exec_callback_QPagedPaintDevice_sharedPainter ".} =
  type Cb = proc(super: QPagedPaintDevicesharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QPagedPaintDevice(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QPagedPaintDevice) =
  fcQPagedPaintDevice_delete(self.h)

func init*(T: type QPagedPaintDeviceMargins, h: ptr cQPagedPaintDeviceMargins): QPagedPaintDeviceMargins =
  T(h: h)
proc delete*(self: QPagedPaintDeviceMargins) =
  fcQPagedPaintDeviceMargins_delete(self.h)
