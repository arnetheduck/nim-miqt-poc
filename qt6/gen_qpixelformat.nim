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
{.compile("gen_qpixelformat.cpp", cflags).}


type QPixelFormatColorModel* = cint
const
  QPixelFormatRGB* = 0
  QPixelFormatBGR* = 1
  QPixelFormatIndexed* = 2
  QPixelFormatGrayscale* = 3
  QPixelFormatCMYK* = 4
  QPixelFormatHSL* = 5
  QPixelFormatHSV* = 6
  QPixelFormatYUV* = 7
  QPixelFormatAlpha* = 8



type QPixelFormatAlphaUsage* = cint
const
  QPixelFormatUsesAlpha* = 0
  QPixelFormatIgnoresAlpha* = 1



type QPixelFormatAlphaPosition* = cint
const
  QPixelFormatAtBeginning* = 0
  QPixelFormatAtEnd* = 1



type QPixelFormatAlphaPremultiplied* = cint
const
  QPixelFormatNotPremultiplied* = 0
  QPixelFormatPremultiplied* = 1



type QPixelFormatTypeInterpretation* = cint
const
  QPixelFormatUnsignedInteger* = 0
  QPixelFormatUnsignedShort* = 1
  QPixelFormatUnsignedByte* = 2
  QPixelFormatFloatingPoint* = 3



type QPixelFormatYUVLayout* = cint
const
  QPixelFormatYUV444* = 0
  QPixelFormatYUV422* = 1
  QPixelFormatYUV411* = 2
  QPixelFormatYUV420P* = 3
  QPixelFormatYUV420SP* = 4
  QPixelFormatYV12* = 5
  QPixelFormatUYVY* = 6
  QPixelFormatYUYV* = 7
  QPixelFormatNV12* = 8
  QPixelFormatNV21* = 9
  QPixelFormatIMC1* = 10
  QPixelFormatIMC2* = 11
  QPixelFormatIMC3* = 12
  QPixelFormatIMC4* = 13
  QPixelFormatY8* = 14
  QPixelFormatY16* = 15



type QPixelFormatByteOrder* = cint
const
  QPixelFormatLittleEndian* = 0
  QPixelFormatBigEndian* = 1
  QPixelFormatCurrentSystemEndian* = 2



import gen_qpixelformat_types
export gen_qpixelformat_types


type cQPixelFormat*{.exportc: "QPixelFormat", incompleteStruct.} = object

proc fcQPixelFormat_new(): ptr cQPixelFormat {.importc: "QPixelFormat_new".}
proc fcQPixelFormat_new2(colorModel: cint, firstSize: uint8, secondSize: uint8, thirdSize: uint8, fourthSize: uint8, fifthSize: uint8, alphaSize: uint8, alphaUsage: cint, alphaPosition: cint, premultiplied: cint, typeInterpretation: cint): ptr cQPixelFormat {.importc: "QPixelFormat_new2".}
proc fcQPixelFormat_new3(param1: pointer): ptr cQPixelFormat {.importc: "QPixelFormat_new3".}
proc fcQPixelFormat_new4(colorModel: cint, firstSize: uint8, secondSize: uint8, thirdSize: uint8, fourthSize: uint8, fifthSize: uint8, alphaSize: uint8, alphaUsage: cint, alphaPosition: cint, premultiplied: cint, typeInterpretation: cint, byteOrder: cint): ptr cQPixelFormat {.importc: "QPixelFormat_new4".}
proc fcQPixelFormat_new5(colorModel: cint, firstSize: uint8, secondSize: uint8, thirdSize: uint8, fourthSize: uint8, fifthSize: uint8, alphaSize: uint8, alphaUsage: cint, alphaPosition: cint, premultiplied: cint, typeInterpretation: cint, byteOrder: cint, subEnum: uint8): ptr cQPixelFormat {.importc: "QPixelFormat_new5".}
proc fcQPixelFormat_colorModel(self: pointer, ): cint {.importc: "QPixelFormat_colorModel".}
proc fcQPixelFormat_channelCount(self: pointer, ): uint8 {.importc: "QPixelFormat_channelCount".}
proc fcQPixelFormat_redSize(self: pointer, ): uint8 {.importc: "QPixelFormat_redSize".}
proc fcQPixelFormat_greenSize(self: pointer, ): uint8 {.importc: "QPixelFormat_greenSize".}
proc fcQPixelFormat_blueSize(self: pointer, ): uint8 {.importc: "QPixelFormat_blueSize".}
proc fcQPixelFormat_cyanSize(self: pointer, ): uint8 {.importc: "QPixelFormat_cyanSize".}
proc fcQPixelFormat_magentaSize(self: pointer, ): uint8 {.importc: "QPixelFormat_magentaSize".}
proc fcQPixelFormat_yellowSize(self: pointer, ): uint8 {.importc: "QPixelFormat_yellowSize".}
proc fcQPixelFormat_blackSize(self: pointer, ): uint8 {.importc: "QPixelFormat_blackSize".}
proc fcQPixelFormat_hueSize(self: pointer, ): uint8 {.importc: "QPixelFormat_hueSize".}
proc fcQPixelFormat_saturationSize(self: pointer, ): uint8 {.importc: "QPixelFormat_saturationSize".}
proc fcQPixelFormat_lightnessSize(self: pointer, ): uint8 {.importc: "QPixelFormat_lightnessSize".}
proc fcQPixelFormat_brightnessSize(self: pointer, ): uint8 {.importc: "QPixelFormat_brightnessSize".}
proc fcQPixelFormat_alphaSize(self: pointer, ): uint8 {.importc: "QPixelFormat_alphaSize".}
proc fcQPixelFormat_bitsPerPixel(self: pointer, ): uint8 {.importc: "QPixelFormat_bitsPerPixel".}
proc fcQPixelFormat_alphaUsage(self: pointer, ): cint {.importc: "QPixelFormat_alphaUsage".}
proc fcQPixelFormat_alphaPosition(self: pointer, ): cint {.importc: "QPixelFormat_alphaPosition".}
proc fcQPixelFormat_premultiplied(self: pointer, ): cint {.importc: "QPixelFormat_premultiplied".}
proc fcQPixelFormat_typeInterpretation(self: pointer, ): cint {.importc: "QPixelFormat_typeInterpretation".}
proc fcQPixelFormat_byteOrder(self: pointer, ): cint {.importc: "QPixelFormat_byteOrder".}
proc fcQPixelFormat_yuvLayout(self: pointer, ): cint {.importc: "QPixelFormat_yuvLayout".}
proc fcQPixelFormat_subEnum(self: pointer, ): uint8 {.importc: "QPixelFormat_subEnum".}
proc fcQPixelFormat_delete(self: pointer) {.importc: "QPixelFormat_delete".}


func init*(T: type QPixelFormat, h: ptr cQPixelFormat): QPixelFormat =
  T(h: h)
proc create*(T: type QPixelFormat, ): QPixelFormat =

  QPixelFormat.init(fcQPixelFormat_new())
proc create*(T: type QPixelFormat, colorModel: QPixelFormatColorModel, firstSize: uint8, secondSize: uint8, thirdSize: uint8, fourthSize: uint8, fifthSize: uint8, alphaSize: uint8, alphaUsage: QPixelFormatAlphaUsage, alphaPosition: QPixelFormatAlphaPosition, premultiplied: QPixelFormatAlphaPremultiplied, typeInterpretation: QPixelFormatTypeInterpretation): QPixelFormat =

  QPixelFormat.init(fcQPixelFormat_new2(cint(colorModel), firstSize, secondSize, thirdSize, fourthSize, fifthSize, alphaSize, cint(alphaUsage), cint(alphaPosition), cint(premultiplied), cint(typeInterpretation)))
proc create*(T: type QPixelFormat, param1: QPixelFormat): QPixelFormat =

  QPixelFormat.init(fcQPixelFormat_new3(param1.h))
proc create*(T: type QPixelFormat, colorModel: QPixelFormatColorModel, firstSize: uint8, secondSize: uint8, thirdSize: uint8, fourthSize: uint8, fifthSize: uint8, alphaSize: uint8, alphaUsage: QPixelFormatAlphaUsage, alphaPosition: QPixelFormatAlphaPosition, premultiplied: QPixelFormatAlphaPremultiplied, typeInterpretation: QPixelFormatTypeInterpretation, byteOrder: QPixelFormatByteOrder): QPixelFormat =

  QPixelFormat.init(fcQPixelFormat_new4(cint(colorModel), firstSize, secondSize, thirdSize, fourthSize, fifthSize, alphaSize, cint(alphaUsage), cint(alphaPosition), cint(premultiplied), cint(typeInterpretation), cint(byteOrder)))
proc create*(T: type QPixelFormat, colorModel: QPixelFormatColorModel, firstSize: uint8, secondSize: uint8, thirdSize: uint8, fourthSize: uint8, fifthSize: uint8, alphaSize: uint8, alphaUsage: QPixelFormatAlphaUsage, alphaPosition: QPixelFormatAlphaPosition, premultiplied: QPixelFormatAlphaPremultiplied, typeInterpretation: QPixelFormatTypeInterpretation, byteOrder: QPixelFormatByteOrder, subEnum: uint8): QPixelFormat =

  QPixelFormat.init(fcQPixelFormat_new5(cint(colorModel), firstSize, secondSize, thirdSize, fourthSize, fifthSize, alphaSize, cint(alphaUsage), cint(alphaPosition), cint(premultiplied), cint(typeInterpretation), cint(byteOrder), subEnum))
proc colorModel*(self: QPixelFormat, ): QPixelFormatColorModel =

  QPixelFormatColorModel(fcQPixelFormat_colorModel(self.h))

proc channelCount*(self: QPixelFormat, ): uint8 =

  fcQPixelFormat_channelCount(self.h)

proc redSize*(self: QPixelFormat, ): uint8 =

  fcQPixelFormat_redSize(self.h)

proc greenSize*(self: QPixelFormat, ): uint8 =

  fcQPixelFormat_greenSize(self.h)

proc blueSize*(self: QPixelFormat, ): uint8 =

  fcQPixelFormat_blueSize(self.h)

proc cyanSize*(self: QPixelFormat, ): uint8 =

  fcQPixelFormat_cyanSize(self.h)

proc magentaSize*(self: QPixelFormat, ): uint8 =

  fcQPixelFormat_magentaSize(self.h)

proc yellowSize*(self: QPixelFormat, ): uint8 =

  fcQPixelFormat_yellowSize(self.h)

proc blackSize*(self: QPixelFormat, ): uint8 =

  fcQPixelFormat_blackSize(self.h)

proc hueSize*(self: QPixelFormat, ): uint8 =

  fcQPixelFormat_hueSize(self.h)

proc saturationSize*(self: QPixelFormat, ): uint8 =

  fcQPixelFormat_saturationSize(self.h)

proc lightnessSize*(self: QPixelFormat, ): uint8 =

  fcQPixelFormat_lightnessSize(self.h)

proc brightnessSize*(self: QPixelFormat, ): uint8 =

  fcQPixelFormat_brightnessSize(self.h)

proc alphaSize*(self: QPixelFormat, ): uint8 =

  fcQPixelFormat_alphaSize(self.h)

proc bitsPerPixel*(self: QPixelFormat, ): uint8 =

  fcQPixelFormat_bitsPerPixel(self.h)

proc alphaUsage*(self: QPixelFormat, ): QPixelFormatAlphaUsage =

  QPixelFormatAlphaUsage(fcQPixelFormat_alphaUsage(self.h))

proc alphaPosition*(self: QPixelFormat, ): QPixelFormatAlphaPosition =

  QPixelFormatAlphaPosition(fcQPixelFormat_alphaPosition(self.h))

proc premultiplied*(self: QPixelFormat, ): QPixelFormatAlphaPremultiplied =

  QPixelFormatAlphaPremultiplied(fcQPixelFormat_premultiplied(self.h))

proc typeInterpretation*(self: QPixelFormat, ): QPixelFormatTypeInterpretation =

  QPixelFormatTypeInterpretation(fcQPixelFormat_typeInterpretation(self.h))

proc byteOrder*(self: QPixelFormat, ): QPixelFormatByteOrder =

  QPixelFormatByteOrder(fcQPixelFormat_byteOrder(self.h))

proc yuvLayout*(self: QPixelFormat, ): QPixelFormatYUVLayout =

  QPixelFormatYUVLayout(fcQPixelFormat_yuvLayout(self.h))

proc subEnum*(self: QPixelFormat, ): uint8 =

  fcQPixelFormat_subEnum(self.h)

proc delete*(self: QPixelFormat) =
  fcQPixelFormat_delete(self.h)
