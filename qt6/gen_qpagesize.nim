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
{.compile("gen_qpagesize.cpp", cflags).}


type QPageSizePageSizeId* = cint
const
  QPageSizeLetter* = 0
  QPageSizeLegal* = 1
  QPageSizeExecutive* = 2
  QPageSizeA0* = 3
  QPageSizeA1* = 4
  QPageSizeA2* = 5
  QPageSizeA3* = 6
  QPageSizeA4* = 7
  QPageSizeA5* = 8
  QPageSizeA6* = 9
  QPageSizeA7* = 10
  QPageSizeA8* = 11
  QPageSizeA9* = 12
  QPageSizeA10* = 13
  QPageSizeB0* = 14
  QPageSizeB1* = 15
  QPageSizeB2* = 16
  QPageSizeB3* = 17
  QPageSizeB4* = 18
  QPageSizeB5* = 19
  QPageSizeB6* = 20
  QPageSizeB7* = 21
  QPageSizeB8* = 22
  QPageSizeB9* = 23
  QPageSizeB10* = 24
  QPageSizeC5E* = 25
  QPageSizeComm10E* = 26
  QPageSizeDLE* = 27
  QPageSizeFolio* = 28
  QPageSizeLedger* = 29
  QPageSizeTabloid* = 30
  QPageSizeCustom* = 31
  QPageSizeA3Extra* = 32
  QPageSizeA4Extra* = 33
  QPageSizeA4Plus* = 34
  QPageSizeA4Small* = 35
  QPageSizeA5Extra* = 36
  QPageSizeB5Extra* = 37
  QPageSizeJisB0* = 38
  QPageSizeJisB1* = 39
  QPageSizeJisB2* = 40
  QPageSizeJisB3* = 41
  QPageSizeJisB4* = 42
  QPageSizeJisB5* = 43
  QPageSizeJisB6* = 44
  QPageSizeJisB7* = 45
  QPageSizeJisB8* = 46
  QPageSizeJisB9* = 47
  QPageSizeJisB10* = 48
  QPageSizeAnsiC* = 49
  QPageSizeAnsiD* = 50
  QPageSizeAnsiE* = 51
  QPageSizeLegalExtra* = 52
  QPageSizeLetterExtra* = 53
  QPageSizeLetterPlus* = 54
  QPageSizeLetterSmall* = 55
  QPageSizeTabloidExtra* = 56
  QPageSizeArchA* = 57
  QPageSizeArchB* = 58
  QPageSizeArchC* = 59
  QPageSizeArchD* = 60
  QPageSizeArchE* = 61
  QPageSizeImperial7x9* = 62
  QPageSizeImperial8x10* = 63
  QPageSizeImperial9x11* = 64
  QPageSizeImperial9x12* = 65
  QPageSizeImperial10x11* = 66
  QPageSizeImperial10x13* = 67
  QPageSizeImperial10x14* = 68
  QPageSizeImperial12x11* = 69
  QPageSizeImperial15x11* = 70
  QPageSizeExecutiveStandard* = 71
  QPageSizeNote* = 72
  QPageSizeQuarto* = 73
  QPageSizeStatement* = 74
  QPageSizeSuperA* = 75
  QPageSizeSuperB* = 76
  QPageSizePostcard* = 77
  QPageSizeDoublePostcard* = 78
  QPageSizePrc16K* = 79
  QPageSizePrc32K* = 80
  QPageSizePrc32KBig* = 81
  QPageSizeFanFoldUS* = 82
  QPageSizeFanFoldGerman* = 83
  QPageSizeFanFoldGermanLegal* = 84
  QPageSizeEnvelopeB4* = 85
  QPageSizeEnvelopeB5* = 86
  QPageSizeEnvelopeB6* = 87
  QPageSizeEnvelopeC0* = 88
  QPageSizeEnvelopeC1* = 89
  QPageSizeEnvelopeC2* = 90
  QPageSizeEnvelopeC3* = 91
  QPageSizeEnvelopeC4* = 92
  QPageSizeEnvelopeC6* = 93
  QPageSizeEnvelopeC65* = 94
  QPageSizeEnvelopeC7* = 95
  QPageSizeEnvelope9* = 96
  QPageSizeEnvelope11* = 97
  QPageSizeEnvelope12* = 98
  QPageSizeEnvelope14* = 99
  QPageSizeEnvelopeMonarch* = 100
  QPageSizeEnvelopePersonal* = 101
  QPageSizeEnvelopeChou3* = 102
  QPageSizeEnvelopeChou4* = 103
  QPageSizeEnvelopeInvite* = 104
  QPageSizeEnvelopeItalian* = 105
  QPageSizeEnvelopeKaku2* = 106
  QPageSizeEnvelopeKaku3* = 107
  QPageSizeEnvelopePrc1* = 108
  QPageSizeEnvelopePrc2* = 109
  QPageSizeEnvelopePrc3* = 110
  QPageSizeEnvelopePrc4* = 111
  QPageSizeEnvelopePrc5* = 112
  QPageSizeEnvelopePrc6* = 113
  QPageSizeEnvelopePrc7* = 114
  QPageSizeEnvelopePrc8* = 115
  QPageSizeEnvelopePrc9* = 116
  QPageSizeEnvelopePrc10* = 117
  QPageSizeEnvelopeYou4* = 118
  QPageSizeLastPageSize* = 118
  QPageSizeAnsiA* = 0
  QPageSizeAnsiB* = 29
  QPageSizeEnvelopeC5* = 25
  QPageSizeEnvelopeDL* = 27
  QPageSizeEnvelope10* = 26



type QPageSizeUnit* = cint
const
  QPageSizeMillimeter* = 0
  QPageSizePoint* = 1
  QPageSizeInch* = 2
  QPageSizePica* = 3
  QPageSizeDidot* = 4
  QPageSizeCicero* = 5



type QPageSizeSizeMatchPolicy* = cint
const
  QPageSizeFuzzyMatch* = 0
  QPageSizeFuzzyOrientationMatch* = 1
  QPageSizeExactMatch* = 2



import gen_qpagesize_types
export gen_qpagesize_types

import
  gen_qrect,
  gen_qsize
export
  gen_qrect,
  gen_qsize

type cQPageSize*{.exportc: "QPageSize", incompleteStruct.} = object

proc fcQPageSize_new(): ptr cQPageSize {.importc: "QPageSize_new".}
proc fcQPageSize_new2(pageSizeId: cint): ptr cQPageSize {.importc: "QPageSize_new2".}
proc fcQPageSize_new3(pointSize: pointer): ptr cQPageSize {.importc: "QPageSize_new3".}
proc fcQPageSize_new4(size: pointer, units: cint): ptr cQPageSize {.importc: "QPageSize_new4".}
proc fcQPageSize_new5(other: pointer): ptr cQPageSize {.importc: "QPageSize_new5".}
proc fcQPageSize_new6(pointSize: pointer, name: struct_miqt_string): ptr cQPageSize {.importc: "QPageSize_new6".}
proc fcQPageSize_new7(pointSize: pointer, name: struct_miqt_string, matchPolicy: cint): ptr cQPageSize {.importc: "QPageSize_new7".}
proc fcQPageSize_new8(size: pointer, units: cint, name: struct_miqt_string): ptr cQPageSize {.importc: "QPageSize_new8".}
proc fcQPageSize_new9(size: pointer, units: cint, name: struct_miqt_string, matchPolicy: cint): ptr cQPageSize {.importc: "QPageSize_new9".}
proc fcQPageSize_operatorAssign(self: pointer, other: pointer): void {.importc: "QPageSize_operatorAssign".}
proc fcQPageSize_swap(self: pointer, other: pointer): void {.importc: "QPageSize_swap".}
proc fcQPageSize_isEquivalentTo(self: pointer, other: pointer): bool {.importc: "QPageSize_isEquivalentTo".}
proc fcQPageSize_isValid(self: pointer, ): bool {.importc: "QPageSize_isValid".}
proc fcQPageSize_key(self: pointer, ): struct_miqt_string {.importc: "QPageSize_key".}
proc fcQPageSize_name(self: pointer, ): struct_miqt_string {.importc: "QPageSize_name".}
proc fcQPageSize_id(self: pointer, ): cint {.importc: "QPageSize_id".}
proc fcQPageSize_windowsId(self: pointer, ): cint {.importc: "QPageSize_windowsId".}
proc fcQPageSize_definitionSize(self: pointer, ): pointer {.importc: "QPageSize_definitionSize".}
proc fcQPageSize_definitionUnits(self: pointer, ): cint {.importc: "QPageSize_definitionUnits".}
proc fcQPageSize_size(self: pointer, units: cint): pointer {.importc: "QPageSize_size".}
proc fcQPageSize_sizePoints(self: pointer, ): pointer {.importc: "QPageSize_sizePoints".}
proc fcQPageSize_sizePixels(self: pointer, resolution: cint): pointer {.importc: "QPageSize_sizePixels".}
proc fcQPageSize_rect(self: pointer, units: cint): pointer {.importc: "QPageSize_rect".}
proc fcQPageSize_rectPoints(self: pointer, ): pointer {.importc: "QPageSize_rectPoints".}
proc fcQPageSize_rectPixels(self: pointer, resolution: cint): pointer {.importc: "QPageSize_rectPixels".}
proc fcQPageSize_keyWithPageSizeId(pageSizeId: cint): struct_miqt_string {.importc: "QPageSize_keyWithPageSizeId".}
proc fcQPageSize_nameWithPageSizeId(pageSizeId: cint): struct_miqt_string {.importc: "QPageSize_nameWithPageSizeId".}
proc fcQPageSize_idWithPointSize(pointSize: pointer): cint {.importc: "QPageSize_idWithPointSize".}
proc fcQPageSize_id2(size: pointer, units: cint): cint {.importc: "QPageSize_id2".}
proc fcQPageSize_idWithWindowsId(windowsId: cint): cint {.importc: "QPageSize_idWithWindowsId".}
proc fcQPageSize_windowsIdWithPageSizeId(pageSizeId: cint): cint {.importc: "QPageSize_windowsIdWithPageSizeId".}
proc fcQPageSize_definitionSizeWithPageSizeId(pageSizeId: cint): pointer {.importc: "QPageSize_definitionSizeWithPageSizeId".}
proc fcQPageSize_definitionUnitsWithPageSizeId(pageSizeId: cint): cint {.importc: "QPageSize_definitionUnitsWithPageSizeId".}
proc fcQPageSize_size2(pageSizeId: cint, units: cint): pointer {.importc: "QPageSize_size2".}
proc fcQPageSize_sizePointsWithPageSizeId(pageSizeId: cint): pointer {.importc: "QPageSize_sizePointsWithPageSizeId".}
proc fcQPageSize_sizePixels2(pageSizeId: cint, resolution: cint): pointer {.importc: "QPageSize_sizePixels2".}
proc fcQPageSize_id22(pointSize: pointer, matchPolicy: cint): cint {.importc: "QPageSize_id22".}
proc fcQPageSize_id3(size: pointer, units: cint, matchPolicy: cint): cint {.importc: "QPageSize_id3".}
proc fcQPageSize_delete(self: pointer) {.importc: "QPageSize_delete".}


func init*(T: type QPageSize, h: ptr cQPageSize): QPageSize =
  T(h: h)
proc create*(T: type QPageSize, ): QPageSize =

  QPageSize.init(fcQPageSize_new())
proc create*(T: type QPageSize, pageSizeId: QPageSizePageSizeId): QPageSize =

  QPageSize.init(fcQPageSize_new2(cint(pageSizeId)))
proc create*(T: type QPageSize, pointSize: gen_qsize.QSize): QPageSize =

  QPageSize.init(fcQPageSize_new3(pointSize.h))
proc create*(T: type QPageSize, size: gen_qsize.QSizeF, units: QPageSizeUnit): QPageSize =

  QPageSize.init(fcQPageSize_new4(size.h, cint(units)))
proc create2*(T: type QPageSize, other: QPageSize): QPageSize =

  QPageSize.init(fcQPageSize_new5(other.h))
proc create*(T: type QPageSize, pointSize: gen_qsize.QSize, name: string): QPageSize =

  QPageSize.init(fcQPageSize_new6(pointSize.h, struct_miqt_string(data: name, len: csize_t(len(name)))))
proc create*(T: type QPageSize, pointSize: gen_qsize.QSize, name: string, matchPolicy: QPageSizeSizeMatchPolicy): QPageSize =

  QPageSize.init(fcQPageSize_new7(pointSize.h, struct_miqt_string(data: name, len: csize_t(len(name))), cint(matchPolicy)))
proc create*(T: type QPageSize, size: gen_qsize.QSizeF, units: QPageSizeUnit, name: string): QPageSize =

  QPageSize.init(fcQPageSize_new8(size.h, cint(units), struct_miqt_string(data: name, len: csize_t(len(name)))))
proc create*(T: type QPageSize, size: gen_qsize.QSizeF, units: QPageSizeUnit, name: string, matchPolicy: QPageSizeSizeMatchPolicy): QPageSize =

  QPageSize.init(fcQPageSize_new9(size.h, cint(units), struct_miqt_string(data: name, len: csize_t(len(name))), cint(matchPolicy)))
proc operatorAssign*(self: QPageSize, other: QPageSize): void =

  fcQPageSize_operatorAssign(self.h, other.h)

proc swap*(self: QPageSize, other: QPageSize): void =

  fcQPageSize_swap(self.h, other.h)

proc isEquivalentTo*(self: QPageSize, other: QPageSize): bool =

  fcQPageSize_isEquivalentTo(self.h, other.h)

proc isValid*(self: QPageSize, ): bool =

  fcQPageSize_isValid(self.h)

proc key*(self: QPageSize, ): string =

  let v_ms = fcQPageSize_key(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc name*(self: QPageSize, ): string =

  let v_ms = fcQPageSize_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc id*(self: QPageSize, ): QPageSizePageSizeId =

  QPageSizePageSizeId(fcQPageSize_id(self.h))

proc windowsId*(self: QPageSize, ): cint =

  fcQPageSize_windowsId(self.h)

proc definitionSize*(self: QPageSize, ): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQPageSize_definitionSize(self.h))

proc definitionUnits*(self: QPageSize, ): QPageSizeUnit =

  QPageSizeUnit(fcQPageSize_definitionUnits(self.h))

proc size*(self: QPageSize, units: QPageSizeUnit): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQPageSize_size(self.h, cint(units)))

proc sizePoints*(self: QPageSize, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQPageSize_sizePoints(self.h))

proc sizePixels*(self: QPageSize, resolution: cint): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQPageSize_sizePixels(self.h, resolution))

proc rect*(self: QPageSize, units: QPageSizeUnit): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQPageSize_rect(self.h, cint(units)))

proc rectPoints*(self: QPageSize, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQPageSize_rectPoints(self.h))

proc rectPixels*(self: QPageSize, resolution: cint): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQPageSize_rectPixels(self.h, resolution))

proc keyWithPageSizeId*(_: type QPageSize, pageSizeId: QPageSizePageSizeId): string =

  let v_ms = fcQPageSize_keyWithPageSizeId(cint(pageSizeId))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc nameWithPageSizeId*(_: type QPageSize, pageSizeId: QPageSizePageSizeId): string =

  let v_ms = fcQPageSize_nameWithPageSizeId(cint(pageSizeId))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc idWithPointSize*(_: type QPageSize, pointSize: gen_qsize.QSize): QPageSizePageSizeId =

  QPageSizePageSizeId(fcQPageSize_idWithPointSize(pointSize.h))

proc id2*(_: type QPageSize, size: gen_qsize.QSizeF, units: QPageSizeUnit): QPageSizePageSizeId =

  QPageSizePageSizeId(fcQPageSize_id2(size.h, cint(units)))

proc idWithWindowsId*(_: type QPageSize, windowsId: cint): QPageSizePageSizeId =

  QPageSizePageSizeId(fcQPageSize_idWithWindowsId(windowsId))

proc windowsIdWithPageSizeId*(_: type QPageSize, pageSizeId: QPageSizePageSizeId): cint =

  fcQPageSize_windowsIdWithPageSizeId(cint(pageSizeId))

proc definitionSizeWithPageSizeId*(_: type QPageSize, pageSizeId: QPageSizePageSizeId): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQPageSize_definitionSizeWithPageSizeId(cint(pageSizeId)))

proc definitionUnitsWithPageSizeId*(_: type QPageSize, pageSizeId: QPageSizePageSizeId): QPageSizeUnit =

  QPageSizeUnit(fcQPageSize_definitionUnitsWithPageSizeId(cint(pageSizeId)))

proc size2*(_: type QPageSize, pageSizeId: QPageSizePageSizeId, units: QPageSizeUnit): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQPageSize_size2(cint(pageSizeId), cint(units)))

proc sizePointsWithPageSizeId*(_: type QPageSize, pageSizeId: QPageSizePageSizeId): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQPageSize_sizePointsWithPageSizeId(cint(pageSizeId)))

proc sizePixels2*(_: type QPageSize, pageSizeId: QPageSizePageSizeId, resolution: cint): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQPageSize_sizePixels2(cint(pageSizeId), resolution))

proc id22*(_: type QPageSize, pointSize: gen_qsize.QSize, matchPolicy: QPageSizeSizeMatchPolicy): QPageSizePageSizeId =

  QPageSizePageSizeId(fcQPageSize_id22(pointSize.h, cint(matchPolicy)))

proc id3*(_: type QPageSize, size: gen_qsize.QSizeF, units: QPageSizeUnit, matchPolicy: QPageSizeSizeMatchPolicy): QPageSizePageSizeId =

  QPageSizePageSizeId(fcQPageSize_id3(size.h, cint(units), cint(matchPolicy)))

proc delete*(self: QPageSize) =
  fcQPageSize_delete(self.h)
