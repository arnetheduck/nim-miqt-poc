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
{.compile("gen_qstringconverter.cpp", cflags).}


import gen_qstringconverter_types
export gen_qstringconverter_types

import
  gen_qbytearrayview,
  gen_qchar,
  gen_qstringconverter_base
export
  gen_qbytearrayview,
  gen_qchar,
  gen_qstringconverter_base

type cQStringEncoder*{.exportc: "QStringEncoder", incompleteStruct.} = object
type cQStringDecoder*{.exportc: "QStringDecoder", incompleteStruct.} = object

proc fcQStringEncoder_new(): ptr cQStringEncoder {.importc: "QStringEncoder_new".}
proc fcQStringEncoder_new2(encoding: cint): ptr cQStringEncoder {.importc: "QStringEncoder_new2".}
proc fcQStringEncoder_new3(name: cstring): ptr cQStringEncoder {.importc: "QStringEncoder_new3".}
proc fcQStringEncoder_new4(encoding: cint, flags: cint): ptr cQStringEncoder {.importc: "QStringEncoder_new4".}
proc fcQStringEncoder_new5(name: cstring, flags: cint): ptr cQStringEncoder {.importc: "QStringEncoder_new5".}
proc fcQStringEncoder_requiredSpace(self: pointer, inputLength: int64): int64 {.importc: "QStringEncoder_requiredSpace".}
proc fcQStringEncoder_delete(self: pointer) {.importc: "QStringEncoder_delete".}
proc fcQStringDecoder_new(encoding: cint): ptr cQStringDecoder {.importc: "QStringDecoder_new".}
proc fcQStringDecoder_new2(): ptr cQStringDecoder {.importc: "QStringDecoder_new2".}
proc fcQStringDecoder_new3(name: cstring): ptr cQStringDecoder {.importc: "QStringDecoder_new3".}
proc fcQStringDecoder_new4(encoding: cint, flags: cint): ptr cQStringDecoder {.importc: "QStringDecoder_new4".}
proc fcQStringDecoder_new5(name: cstring, f: cint): ptr cQStringDecoder {.importc: "QStringDecoder_new5".}
proc fcQStringDecoder_requiredSpace(self: pointer, inputLength: int64): int64 {.importc: "QStringDecoder_requiredSpace".}
proc fcQStringDecoder_appendToBuffer(self: pointer, outVal: pointer, ba: pointer): pointer {.importc: "QStringDecoder_appendToBuffer".}
proc fcQStringDecoder_decoderForHtml(data: pointer): pointer {.importc: "QStringDecoder_decoderForHtml".}
proc fcQStringDecoder_delete(self: pointer) {.importc: "QStringDecoder_delete".}


func init*(T: type QStringEncoder, h: ptr cQStringEncoder): QStringEncoder =
  T(h: h)
proc create*(T: type QStringEncoder, ): QStringEncoder =

  QStringEncoder.init(fcQStringEncoder_new())
proc create*(T: type QStringEncoder, encoding: gen_qstringconverter_base.QStringConverterEncoding): QStringEncoder =

  QStringEncoder.init(fcQStringEncoder_new2(cint(encoding)))
proc create*(T: type QStringEncoder, name: cstring): QStringEncoder =

  QStringEncoder.init(fcQStringEncoder_new3(name))
proc create*(T: type QStringEncoder, encoding: gen_qstringconverter_base.QStringConverterEncoding, flags: gen_qstringconverter_base.QStringConverterBaseFlag): QStringEncoder =

  QStringEncoder.init(fcQStringEncoder_new4(cint(encoding), cint(flags)))
proc create*(T: type QStringEncoder, name: cstring, flags: gen_qstringconverter_base.QStringConverterBaseFlag): QStringEncoder =

  QStringEncoder.init(fcQStringEncoder_new5(name, cint(flags)))
proc requiredSpace*(self: QStringEncoder, inputLength: int64): int64 =

  fcQStringEncoder_requiredSpace(self.h, inputLength)

proc delete*(self: QStringEncoder) =
  fcQStringEncoder_delete(self.h)

func init*(T: type QStringDecoder, h: ptr cQStringDecoder): QStringDecoder =
  T(h: h)
proc create*(T: type QStringDecoder, encoding: gen_qstringconverter_base.QStringConverterEncoding): QStringDecoder =

  QStringDecoder.init(fcQStringDecoder_new(cint(encoding)))
proc create*(T: type QStringDecoder, ): QStringDecoder =

  QStringDecoder.init(fcQStringDecoder_new2())
proc create*(T: type QStringDecoder, name: cstring): QStringDecoder =

  QStringDecoder.init(fcQStringDecoder_new3(name))
proc create*(T: type QStringDecoder, encoding: gen_qstringconverter_base.QStringConverterEncoding, flags: gen_qstringconverter_base.QStringConverterBaseFlag): QStringDecoder =

  QStringDecoder.init(fcQStringDecoder_new4(cint(encoding), cint(flags)))
proc create*(T: type QStringDecoder, name: cstring, f: gen_qstringconverter_base.QStringConverterBaseFlag): QStringDecoder =

  QStringDecoder.init(fcQStringDecoder_new5(name, cint(f)))
proc requiredSpace*(self: QStringDecoder, inputLength: int64): int64 =

  fcQStringDecoder_requiredSpace(self.h, inputLength)

proc appendToBuffer*(self: QStringDecoder, outVal: gen_qchar.QChar, ba: gen_qbytearrayview.QByteArrayView): gen_qchar.QChar =

  gen_qchar.QChar(h: fcQStringDecoder_appendToBuffer(self.h, outVal.h, ba.h))

proc decoderForHtml*(_: type QStringDecoder, data: gen_qbytearrayview.QByteArrayView): QStringDecoder =

  QStringDecoder(h: fcQStringDecoder_decoderForHtml(data.h))

proc delete*(self: QStringDecoder) =
  fcQStringDecoder_delete(self.h)
