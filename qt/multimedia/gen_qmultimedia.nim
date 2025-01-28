import Qt5MultimediaWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5MultimediaWidgets")
{.compile("gen_qmultimedia.cpp", cflags).}


type QMultimediaSupportEstimateEnum* = distinct cint
template NotSupported*(_: type QMultimediaSupportEstimateEnum): untyped = 0
template MaybeSupported*(_: type QMultimediaSupportEstimateEnum): untyped = 1
template ProbablySupported*(_: type QMultimediaSupportEstimateEnum): untyped = 2
template PreferredService*(_: type QMultimediaSupportEstimateEnum): untyped = 3


type QMultimediaEncodingQualityEnum* = distinct cint
template VeryLowQuality*(_: type QMultimediaEncodingQualityEnum): untyped = 0
template LowQuality*(_: type QMultimediaEncodingQualityEnum): untyped = 1
template NormalQuality*(_: type QMultimediaEncodingQualityEnum): untyped = 2
template HighQuality*(_: type QMultimediaEncodingQualityEnum): untyped = 3
template VeryHighQuality*(_: type QMultimediaEncodingQualityEnum): untyped = 4


type QMultimediaEncodingModeEnum* = distinct cint
template ConstantQualityEncoding*(_: type QMultimediaEncodingModeEnum): untyped = 0
template ConstantBitRateEncoding*(_: type QMultimediaEncodingModeEnum): untyped = 1
template AverageBitRateEncoding*(_: type QMultimediaEncodingModeEnum): untyped = 2
template TwoPassEncoding*(_: type QMultimediaEncodingModeEnum): untyped = 3


type QMultimediaAvailabilityStatusEnum* = distinct cint
template Available*(_: type QMultimediaAvailabilityStatusEnum): untyped = 0
template ServiceMissing*(_: type QMultimediaAvailabilityStatusEnum): untyped = 1
template Busy*(_: type QMultimediaAvailabilityStatusEnum): untyped = 2
template ResourceError*(_: type QMultimediaAvailabilityStatusEnum): untyped = 3

import gen_qmultimedia_types
export gen_qmultimedia_types




