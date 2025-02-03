import Qt6MultimediaWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt6MultimediaWidgets")
{.compile("gen_qmediaformat.cpp", cflags).}


type QMediaFormatFileFormat* = cint
const
  QMediaFormatFileFormatUnspecifiedFormat* = -1
  QMediaFormatFileFormatWMV* = 0
  QMediaFormatFileFormatAVI* = 1
  QMediaFormatFileFormatMatroska* = 2
  QMediaFormatFileFormatMPEG4* = 3
  QMediaFormatFileFormatOgg* = 4
  QMediaFormatFileFormatQuickTime* = 5
  QMediaFormatFileFormatWebM* = 6
  QMediaFormatFileFormatMpeg4Audio* = 7
  QMediaFormatFileFormatAAC* = 8
  QMediaFormatFileFormatWMA* = 9
  QMediaFormatFileFormatMP3* = 10
  QMediaFormatFileFormatFLAC* = 11
  QMediaFormatFileFormatWave* = 12
  QMediaFormatFileFormatLastFileFormat* = 12



type QMediaFormatAudioCodec* = cint
const
  QMediaFormatAudioCodecUnspecified* = -1
  QMediaFormatAudioCodecMP3* = 0
  QMediaFormatAudioCodecAAC* = 1
  QMediaFormatAudioCodecAC3* = 2
  QMediaFormatAudioCodecEAC3* = 3
  QMediaFormatAudioCodecFLAC* = 4
  QMediaFormatAudioCodecDolbyTrueHD* = 5
  QMediaFormatAudioCodecOpus* = 6
  QMediaFormatAudioCodecVorbis* = 7
  QMediaFormatAudioCodecWave* = 8
  QMediaFormatAudioCodecWMA* = 9
  QMediaFormatAudioCodecALAC* = 10
  QMediaFormatAudioCodecLastAudioCodec* = 10



type QMediaFormatVideoCodec* = cint
const
  QMediaFormatVideoCodecUnspecified* = -1
  QMediaFormatVideoCodecMPEG1* = 0
  QMediaFormatVideoCodecMPEG2* = 1
  QMediaFormatVideoCodecMPEG4* = 2
  QMediaFormatVideoCodecH264* = 3
  QMediaFormatVideoCodecH265* = 4
  QMediaFormatVideoCodecVP8* = 5
  QMediaFormatVideoCodecVP9* = 6
  QMediaFormatVideoCodecAV1* = 7
  QMediaFormatVideoCodecTheora* = 8
  QMediaFormatVideoCodecWMV* = 9
  QMediaFormatVideoCodecMotionJPEG* = 10
  QMediaFormatVideoCodecLastVideoCodec* = 10



type QMediaFormatConversionMode* = cint
const
  QMediaFormatEncode* = 0
  QMediaFormatDecode* = 1



type QMediaFormatResolveFlags* = cint
const
  QMediaFormatNoFlags* = 0
  QMediaFormatRequiresVideo* = 1



import gen_qmediaformat_types
export gen_qmediaformat_types

import
  gen_qmimetype
export
  gen_qmimetype

type cQMediaFormat*{.exportc: "QMediaFormat", incompleteStruct.} = object

proc fcQMediaFormat_new(): ptr cQMediaFormat {.importc: "QMediaFormat_new".}
proc fcQMediaFormat_new2(other: pointer): ptr cQMediaFormat {.importc: "QMediaFormat_new2".}
proc fcQMediaFormat_new3(format: cint): ptr cQMediaFormat {.importc: "QMediaFormat_new3".}
proc fcQMediaFormat_operatorAssign(self: pointer, other: pointer): void {.importc: "QMediaFormat_operatorAssign".}
proc fcQMediaFormat_swap(self: pointer, other: pointer): void {.importc: "QMediaFormat_swap".}
proc fcQMediaFormat_fileFormat(self: pointer, ): cint {.importc: "QMediaFormat_fileFormat".}
proc fcQMediaFormat_setFileFormat(self: pointer, f: cint): void {.importc: "QMediaFormat_setFileFormat".}
proc fcQMediaFormat_setVideoCodec(self: pointer, codec: cint): void {.importc: "QMediaFormat_setVideoCodec".}
proc fcQMediaFormat_videoCodec(self: pointer, ): cint {.importc: "QMediaFormat_videoCodec".}
proc fcQMediaFormat_setAudioCodec(self: pointer, codec: cint): void {.importc: "QMediaFormat_setAudioCodec".}
proc fcQMediaFormat_audioCodec(self: pointer, ): cint {.importc: "QMediaFormat_audioCodec".}
proc fcQMediaFormat_isSupported(self: pointer, mode: cint): bool {.importc: "QMediaFormat_isSupported".}
proc fcQMediaFormat_mimeType(self: pointer, ): pointer {.importc: "QMediaFormat_mimeType".}
proc fcQMediaFormat_supportedFileFormats(self: pointer, m: cint): struct_miqt_array {.importc: "QMediaFormat_supportedFileFormats".}
proc fcQMediaFormat_supportedVideoCodecs(self: pointer, m: cint): struct_miqt_array {.importc: "QMediaFormat_supportedVideoCodecs".}
proc fcQMediaFormat_supportedAudioCodecs(self: pointer, m: cint): struct_miqt_array {.importc: "QMediaFormat_supportedAudioCodecs".}
proc fcQMediaFormat_fileFormatName(fileFormat: cint): struct_miqt_string {.importc: "QMediaFormat_fileFormatName".}
proc fcQMediaFormat_audioCodecName(codec: cint): struct_miqt_string {.importc: "QMediaFormat_audioCodecName".}
proc fcQMediaFormat_videoCodecName(codec: cint): struct_miqt_string {.importc: "QMediaFormat_videoCodecName".}
proc fcQMediaFormat_fileFormatDescription(fileFormat: cint): struct_miqt_string {.importc: "QMediaFormat_fileFormatDescription".}
proc fcQMediaFormat_audioCodecDescription(codec: cint): struct_miqt_string {.importc: "QMediaFormat_audioCodecDescription".}
proc fcQMediaFormat_videoCodecDescription(codec: cint): struct_miqt_string {.importc: "QMediaFormat_videoCodecDescription".}
proc fcQMediaFormat_operatorEqual(self: pointer, other: pointer): bool {.importc: "QMediaFormat_operatorEqual".}
proc fcQMediaFormat_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QMediaFormat_operatorNotEqual".}
proc fcQMediaFormat_resolveForEncoding(self: pointer, flags: cint): void {.importc: "QMediaFormat_resolveForEncoding".}
proc fcQMediaFormat_delete(self: pointer) {.importc: "QMediaFormat_delete".}


func init*(T: type QMediaFormat, h: ptr cQMediaFormat): QMediaFormat =
  T(h: h)
proc create*(T: type QMediaFormat, ): QMediaFormat =

  QMediaFormat.init(fcQMediaFormat_new())
proc create*(T: type QMediaFormat, other: QMediaFormat): QMediaFormat =

  QMediaFormat.init(fcQMediaFormat_new2(other.h))
proc create*(T: type QMediaFormat, format: QMediaFormatFileFormat): QMediaFormat =

  QMediaFormat.init(fcQMediaFormat_new3(cint(format)))
proc operatorAssign*(self: QMediaFormat, other: QMediaFormat): void =

  fcQMediaFormat_operatorAssign(self.h, other.h)

proc swap*(self: QMediaFormat, other: QMediaFormat): void =

  fcQMediaFormat_swap(self.h, other.h)

proc fileFormat*(self: QMediaFormat, ): QMediaFormatFileFormat =

  QMediaFormatFileFormat(fcQMediaFormat_fileFormat(self.h))

proc setFileFormat*(self: QMediaFormat, f: QMediaFormatFileFormat): void =

  fcQMediaFormat_setFileFormat(self.h, cint(f))

proc setVideoCodec*(self: QMediaFormat, codec: QMediaFormatVideoCodec): void =

  fcQMediaFormat_setVideoCodec(self.h, cint(codec))

proc videoCodec*(self: QMediaFormat, ): QMediaFormatVideoCodec =

  QMediaFormatVideoCodec(fcQMediaFormat_videoCodec(self.h))

proc setAudioCodec*(self: QMediaFormat, codec: QMediaFormatAudioCodec): void =

  fcQMediaFormat_setAudioCodec(self.h, cint(codec))

proc audioCodec*(self: QMediaFormat, ): QMediaFormatAudioCodec =

  QMediaFormatAudioCodec(fcQMediaFormat_audioCodec(self.h))

proc isSupported*(self: QMediaFormat, mode: QMediaFormatConversionMode): bool =

  fcQMediaFormat_isSupported(self.h, cint(mode))

proc mimeType*(self: QMediaFormat, ): gen_qmimetype.QMimeType =

  gen_qmimetype.QMimeType(h: fcQMediaFormat_mimeType(self.h))

proc supportedFileFormats*(self: QMediaFormat, m: QMediaFormatConversionMode): seq[QMediaFormatFileFormat] =

  var v_ma = fcQMediaFormat_supportedFileFormats(self.h, cint(m))
  var vx_ret = newSeq[QMediaFormatFileFormat](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QMediaFormatFileFormat(v_outCast[i])
  vx_ret

proc supportedVideoCodecs*(self: QMediaFormat, m: QMediaFormatConversionMode): seq[QMediaFormatVideoCodec] =

  var v_ma = fcQMediaFormat_supportedVideoCodecs(self.h, cint(m))
  var vx_ret = newSeq[QMediaFormatVideoCodec](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QMediaFormatVideoCodec(v_outCast[i])
  vx_ret

proc supportedAudioCodecs*(self: QMediaFormat, m: QMediaFormatConversionMode): seq[QMediaFormatAudioCodec] =

  var v_ma = fcQMediaFormat_supportedAudioCodecs(self.h, cint(m))
  var vx_ret = newSeq[QMediaFormatAudioCodec](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QMediaFormatAudioCodec(v_outCast[i])
  vx_ret

proc fileFormatName*(_: type QMediaFormat, fileFormat: QMediaFormatFileFormat): string =

  let v_ms = fcQMediaFormat_fileFormatName(cint(fileFormat))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc audioCodecName*(_: type QMediaFormat, codec: QMediaFormatAudioCodec): string =

  let v_ms = fcQMediaFormat_audioCodecName(cint(codec))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc videoCodecName*(_: type QMediaFormat, codec: QMediaFormatVideoCodec): string =

  let v_ms = fcQMediaFormat_videoCodecName(cint(codec))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fileFormatDescription*(_: type QMediaFormat, fileFormat: QMediaFormatFileFormat): string =

  let v_ms = fcQMediaFormat_fileFormatDescription(cint(fileFormat))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc audioCodecDescription*(_: type QMediaFormat, codec: QMediaFormatAudioCodec): string =

  let v_ms = fcQMediaFormat_audioCodecDescription(cint(codec))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc videoCodecDescription*(_: type QMediaFormat, codec: QMediaFormatVideoCodec): string =

  let v_ms = fcQMediaFormat_videoCodecDescription(cint(codec))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc operatorEqual*(self: QMediaFormat, other: QMediaFormat): bool =

  fcQMediaFormat_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QMediaFormat, other: QMediaFormat): bool =

  fcQMediaFormat_operatorNotEqual(self.h, other.h)

proc resolveForEncoding*(self: QMediaFormat, flags: QMediaFormatResolveFlags): void =

  fcQMediaFormat_resolveForEncoding(self.h, cint(flags))

proc delete*(self: QMediaFormat) =
  fcQMediaFormat_delete(self.h)
