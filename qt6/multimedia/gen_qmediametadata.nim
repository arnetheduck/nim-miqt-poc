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
{.compile("gen_qmediametadata.cpp", cflags).}


type QMediaMetaDataKey* = cint
const
  QMediaMetaDataTitle* = 0
  QMediaMetaDataAuthor* = 1
  QMediaMetaDataComment* = 2
  QMediaMetaDataDescription* = 3
  QMediaMetaDataGenre* = 4
  QMediaMetaDataDate* = 5
  QMediaMetaDataLanguage* = 6
  QMediaMetaDataPublisher* = 7
  QMediaMetaDataCopyright* = 8
  QMediaMetaDataUrl* = 9
  QMediaMetaDataDuration* = 10
  QMediaMetaDataMediaType* = 11
  QMediaMetaDataFileFormat* = 12
  QMediaMetaDataAudioBitRate* = 13
  QMediaMetaDataAudioCodec* = 14
  QMediaMetaDataVideoBitRate* = 15
  QMediaMetaDataVideoCodec* = 16
  QMediaMetaDataVideoFrameRate* = 17
  QMediaMetaDataAlbumTitle* = 18
  QMediaMetaDataAlbumArtist* = 19
  QMediaMetaDataContributingArtist* = 20
  QMediaMetaDataTrackNumber* = 21
  QMediaMetaDataComposer* = 22
  QMediaMetaDataLeadPerformer* = 23
  QMediaMetaDataThumbnailImage* = 24
  QMediaMetaDataCoverArtImage* = 25
  QMediaMetaDataOrientation* = 26
  QMediaMetaDataResolution* = 27



import gen_qmediametadata_types
export gen_qmediametadata_types

import
  gen_qvariant
export
  gen_qvariant

type cQMediaMetaData*{.exportc: "QMediaMetaData", incompleteStruct.} = object

proc fcQMediaMetaData_new(param1: pointer): ptr cQMediaMetaData {.importc: "QMediaMetaData_new".}
proc fcQMediaMetaData_new2(): ptr cQMediaMetaData {.importc: "QMediaMetaData_new2".}
proc fcQMediaMetaData_value(self: pointer, k: cint): pointer {.importc: "QMediaMetaData_value".}
proc fcQMediaMetaData_insert(self: pointer, k: cint, value: pointer): void {.importc: "QMediaMetaData_insert".}
proc fcQMediaMetaData_remove(self: pointer, k: cint): void {.importc: "QMediaMetaData_remove".}
proc fcQMediaMetaData_keys(self: pointer, ): struct_miqt_array {.importc: "QMediaMetaData_keys".}
proc fcQMediaMetaData_operatorSubscript(self: pointer, k: cint): pointer {.importc: "QMediaMetaData_operatorSubscript".}
proc fcQMediaMetaData_clear(self: pointer, ): void {.importc: "QMediaMetaData_clear".}
proc fcQMediaMetaData_isEmpty(self: pointer, ): bool {.importc: "QMediaMetaData_isEmpty".}
proc fcQMediaMetaData_stringValue(self: pointer, k: cint): struct_miqt_string {.importc: "QMediaMetaData_stringValue".}
proc fcQMediaMetaData_metaDataKeyToString(k: cint): struct_miqt_string {.importc: "QMediaMetaData_metaDataKeyToString".}
proc fcQMediaMetaData_delete(self: pointer) {.importc: "QMediaMetaData_delete".}


func init*(T: type QMediaMetaData, h: ptr cQMediaMetaData): QMediaMetaData =
  T(h: h)
proc create*(T: type QMediaMetaData, param1: QMediaMetaData): QMediaMetaData =

  QMediaMetaData.init(fcQMediaMetaData_new(param1.h))
proc create*(T: type QMediaMetaData, ): QMediaMetaData =

  QMediaMetaData.init(fcQMediaMetaData_new2())
proc value*(self: QMediaMetaData, k: QMediaMetaDataKey): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQMediaMetaData_value(self.h, cint(k)))

proc insert*(self: QMediaMetaData, k: QMediaMetaDataKey, value: gen_qvariant.QVariant): void =

  fcQMediaMetaData_insert(self.h, cint(k), value.h)

proc remove*(self: QMediaMetaData, k: QMediaMetaDataKey): void =

  fcQMediaMetaData_remove(self.h, cint(k))

proc keys*(self: QMediaMetaData, ): seq[QMediaMetaDataKey] =

  var v_ma = fcQMediaMetaData_keys(self.h)
  var vx_ret = newSeq[QMediaMetaDataKey](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QMediaMetaDataKey(v_outCast[i])
  vx_ret

proc operatorSubscript*(self: QMediaMetaData, k: QMediaMetaDataKey): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQMediaMetaData_operatorSubscript(self.h, cint(k)))

proc clear*(self: QMediaMetaData, ): void =

  fcQMediaMetaData_clear(self.h)

proc isEmpty*(self: QMediaMetaData, ): bool =

  fcQMediaMetaData_isEmpty(self.h)

proc stringValue*(self: QMediaMetaData, k: QMediaMetaDataKey): string =

  let v_ms = fcQMediaMetaData_stringValue(self.h, cint(k))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc metaDataKeyToString*(_: type QMediaMetaData, k: QMediaMetaDataKey): string =

  let v_ms = fcQMediaMetaData_metaDataKeyToString(cint(k))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QMediaMetaData) =
  fcQMediaMetaData_delete(self.h)
