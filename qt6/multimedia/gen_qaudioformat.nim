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
{.compile("gen_qaudioformat.cpp", cflags).}


type QAudioFormatSampleFormat* = cushort
const
  QAudioFormatUnknown* = 0
  QAudioFormatUInt8* = 1
  QAudioFormatInt16* = 2
  QAudioFormatInt32* = 3
  QAudioFormatFloat* = 4
  QAudioFormatNSampleFormats* = 5



type QAudioFormatAudioChannelPosition* = cint
const
  QAudioFormatUnknownPosition* = 0
  QAudioFormatFrontLeft* = 1
  QAudioFormatFrontRight* = 2
  QAudioFormatFrontCenter* = 3
  QAudioFormatLFE* = 4
  QAudioFormatBackLeft* = 5
  QAudioFormatBackRight* = 6
  QAudioFormatFrontLeftOfCenter* = 7
  QAudioFormatFrontRightOfCenter* = 8
  QAudioFormatBackCenter* = 9
  QAudioFormatSideLeft* = 10
  QAudioFormatSideRight* = 11
  QAudioFormatTopCenter* = 12
  QAudioFormatTopFrontLeft* = 13
  QAudioFormatTopFrontCenter* = 14
  QAudioFormatTopFrontRight* = 15
  QAudioFormatTopBackLeft* = 16
  QAudioFormatTopBackCenter* = 17
  QAudioFormatTopBackRight* = 18
  QAudioFormatLFE2* = 19
  QAudioFormatTopSideLeft* = 20
  QAudioFormatTopSideRight* = 21
  QAudioFormatBottomFrontCenter* = 22
  QAudioFormatBottomFrontLeft* = 23
  QAudioFormatBottomFrontRight* = 24



type QAudioFormatChannelConfig* = cuint
const
  QAudioFormatChannelConfigUnknown* = 0
  QAudioFormatChannelConfigMono* = 8
  QAudioFormatChannelConfigStereo* = 6
  QAudioFormatChannelConfig2Dot1* = 22
  QAudioFormatChannelConfig3Dot0* = 14
  QAudioFormatChannelConfig3Dot1* = 30
  QAudioFormatChannelConfigSurround5Dot0* = 110
  QAudioFormatChannelConfigSurround5Dot1* = 126
  QAudioFormatChannelConfigSurround7Dot0* = 3182
  QAudioFormatChannelConfigSurround7Dot1* = 3198



import gen_qaudioformat_types
export gen_qaudioformat_types


type cQAudioFormat*{.exportc: "QAudioFormat", incompleteStruct.} = object

proc fcQAudioFormat_new(): ptr cQAudioFormat {.importc: "QAudioFormat_new".}
proc fcQAudioFormat_new2(param1: pointer): ptr cQAudioFormat {.importc: "QAudioFormat_new2".}
proc fcQAudioFormat_isValid(self: pointer, ): bool {.importc: "QAudioFormat_isValid".}
proc fcQAudioFormat_setSampleRate(self: pointer, sampleRate: cint): void {.importc: "QAudioFormat_setSampleRate".}
proc fcQAudioFormat_sampleRate(self: pointer, ): cint {.importc: "QAudioFormat_sampleRate".}
proc fcQAudioFormat_setChannelConfig(self: pointer, config: cint): void {.importc: "QAudioFormat_setChannelConfig".}
proc fcQAudioFormat_channelConfig(self: pointer, ): cint {.importc: "QAudioFormat_channelConfig".}
proc fcQAudioFormat_setChannelCount(self: pointer, channelCount: cint): void {.importc: "QAudioFormat_setChannelCount".}
proc fcQAudioFormat_channelCount(self: pointer, ): cint {.importc: "QAudioFormat_channelCount".}
proc fcQAudioFormat_channelOffset(self: pointer, channel: cint): cint {.importc: "QAudioFormat_channelOffset".}
proc fcQAudioFormat_setSampleFormat(self: pointer, f: cint): void {.importc: "QAudioFormat_setSampleFormat".}
proc fcQAudioFormat_sampleFormat(self: pointer, ): cint {.importc: "QAudioFormat_sampleFormat".}
proc fcQAudioFormat_bytesForDuration(self: pointer, microseconds: clonglong): cint {.importc: "QAudioFormat_bytesForDuration".}
proc fcQAudioFormat_durationForBytes(self: pointer, byteCount: cint): clonglong {.importc: "QAudioFormat_durationForBytes".}
proc fcQAudioFormat_bytesForFrames(self: pointer, frameCount: cint): cint {.importc: "QAudioFormat_bytesForFrames".}
proc fcQAudioFormat_framesForBytes(self: pointer, byteCount: cint): cint {.importc: "QAudioFormat_framesForBytes".}
proc fcQAudioFormat_framesForDuration(self: pointer, microseconds: clonglong): cint {.importc: "QAudioFormat_framesForDuration".}
proc fcQAudioFormat_durationForFrames(self: pointer, frameCount: cint): clonglong {.importc: "QAudioFormat_durationForFrames".}
proc fcQAudioFormat_bytesPerFrame(self: pointer, ): cint {.importc: "QAudioFormat_bytesPerFrame".}
proc fcQAudioFormat_bytesPerSample(self: pointer, ): cint {.importc: "QAudioFormat_bytesPerSample".}
proc fcQAudioFormat_normalizedSampleValue(self: pointer, sample: pointer): float32 {.importc: "QAudioFormat_normalizedSampleValue".}
proc fcQAudioFormat_defaultChannelConfigForChannelCount(channelCount: cint): cint {.importc: "QAudioFormat_defaultChannelConfigForChannelCount".}
proc fcQAudioFormat_delete(self: pointer) {.importc: "QAudioFormat_delete".}


func init*(T: type QAudioFormat, h: ptr cQAudioFormat): QAudioFormat =
  T(h: h)
proc create*(T: type QAudioFormat, ): QAudioFormat =

  QAudioFormat.init(fcQAudioFormat_new())
proc create*(T: type QAudioFormat, param1: QAudioFormat): QAudioFormat =

  QAudioFormat.init(fcQAudioFormat_new2(param1.h))
proc isValid*(self: QAudioFormat, ): bool =

  fcQAudioFormat_isValid(self.h)

proc setSampleRate*(self: QAudioFormat, sampleRate: cint): void =

  fcQAudioFormat_setSampleRate(self.h, sampleRate)

proc sampleRate*(self: QAudioFormat, ): cint =

  fcQAudioFormat_sampleRate(self.h)

proc setChannelConfig*(self: QAudioFormat, config: QAudioFormatChannelConfig): void =

  fcQAudioFormat_setChannelConfig(self.h, cint(config))

proc channelConfig*(self: QAudioFormat, ): QAudioFormatChannelConfig =

  QAudioFormatChannelConfig(fcQAudioFormat_channelConfig(self.h))

proc setChannelCount*(self: QAudioFormat, channelCount: cint): void =

  fcQAudioFormat_setChannelCount(self.h, channelCount)

proc channelCount*(self: QAudioFormat, ): cint =

  fcQAudioFormat_channelCount(self.h)

proc channelOffset*(self: QAudioFormat, channel: QAudioFormatAudioChannelPosition): cint =

  fcQAudioFormat_channelOffset(self.h, cint(channel))

proc setSampleFormat*(self: QAudioFormat, f: QAudioFormatSampleFormat): void =

  fcQAudioFormat_setSampleFormat(self.h, cint(f))

proc sampleFormat*(self: QAudioFormat, ): QAudioFormatSampleFormat =

  QAudioFormatSampleFormat(fcQAudioFormat_sampleFormat(self.h))

proc bytesForDuration*(self: QAudioFormat, microseconds: clonglong): cint =

  fcQAudioFormat_bytesForDuration(self.h, microseconds)

proc durationForBytes*(self: QAudioFormat, byteCount: cint): clonglong =

  fcQAudioFormat_durationForBytes(self.h, byteCount)

proc bytesForFrames*(self: QAudioFormat, frameCount: cint): cint =

  fcQAudioFormat_bytesForFrames(self.h, frameCount)

proc framesForBytes*(self: QAudioFormat, byteCount: cint): cint =

  fcQAudioFormat_framesForBytes(self.h, byteCount)

proc framesForDuration*(self: QAudioFormat, microseconds: clonglong): cint =

  fcQAudioFormat_framesForDuration(self.h, microseconds)

proc durationForFrames*(self: QAudioFormat, frameCount: cint): clonglong =

  fcQAudioFormat_durationForFrames(self.h, frameCount)

proc bytesPerFrame*(self: QAudioFormat, ): cint =

  fcQAudioFormat_bytesPerFrame(self.h)

proc bytesPerSample*(self: QAudioFormat, ): cint =

  fcQAudioFormat_bytesPerSample(self.h)

proc normalizedSampleValue*(self: QAudioFormat, sample: pointer): float32 =

  fcQAudioFormat_normalizedSampleValue(self.h, sample)

proc defaultChannelConfigForChannelCount*(_: type QAudioFormat, channelCount: cint): QAudioFormatChannelConfig =

  QAudioFormatChannelConfig(fcQAudioFormat_defaultChannelConfigForChannelCount(channelCount))

proc delete*(self: QAudioFormat) =
  fcQAudioFormat_delete(self.h)
