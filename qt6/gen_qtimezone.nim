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
{.compile("gen_qtimezone.cpp", cflags).}


type QTimeZoneEnum* = cint
const
  QTimeZoneMinUtcOffsetSecs* = -50400
  QTimeZoneMaxUtcOffsetSecs* = 50400



type QTimeZoneTimeType* = cint
const
  QTimeZoneStandardTime* = 0
  QTimeZoneDaylightTime* = 1
  QTimeZoneGenericTime* = 2



type QTimeZoneNameType* = cint
const
  QTimeZoneDefaultName* = 0
  QTimeZoneLongName* = 1
  QTimeZoneShortName* = 2
  QTimeZoneOffsetName* = 3



import gen_qtimezone_types
export gen_qtimezone_types

import
  gen_qdatetime,
  gen_qlocale
export
  gen_qdatetime,
  gen_qlocale

type cQTimeZone*{.exportc: "QTimeZone", incompleteStruct.} = object
type cQTimeZoneOffsetData*{.exportc: "QTimeZone__OffsetData", incompleteStruct.} = object

proc fcQTimeZone_new(): ptr cQTimeZone {.importc: "QTimeZone_new".}
proc fcQTimeZone_new2(ianaId: struct_miqt_string): ptr cQTimeZone {.importc: "QTimeZone_new2".}
proc fcQTimeZone_new3(offsetSeconds: cint): ptr cQTimeZone {.importc: "QTimeZone_new3".}
proc fcQTimeZone_new4(zoneId: struct_miqt_string, offsetSeconds: cint, name: struct_miqt_string, abbreviation: struct_miqt_string): ptr cQTimeZone {.importc: "QTimeZone_new4".}
proc fcQTimeZone_new5(other: pointer): ptr cQTimeZone {.importc: "QTimeZone_new5".}
proc fcQTimeZone_new6(zoneId: struct_miqt_string, offsetSeconds: cint, name: struct_miqt_string, abbreviation: struct_miqt_string, territory: cint): ptr cQTimeZone {.importc: "QTimeZone_new6".}
proc fcQTimeZone_new7(zoneId: struct_miqt_string, offsetSeconds: cint, name: struct_miqt_string, abbreviation: struct_miqt_string, territory: cint, comment: struct_miqt_string): ptr cQTimeZone {.importc: "QTimeZone_new7".}
proc fcQTimeZone_operatorAssign(self: pointer, other: pointer): void {.importc: "QTimeZone_operatorAssign".}
proc fcQTimeZone_swap(self: pointer, other: pointer): void {.importc: "QTimeZone_swap".}
proc fcQTimeZone_isValid(self: pointer, ): bool {.importc: "QTimeZone_isValid".}
proc fcQTimeZone_id(self: pointer, ): struct_miqt_string {.importc: "QTimeZone_id".}
proc fcQTimeZone_territory(self: pointer, ): cint {.importc: "QTimeZone_territory".}
proc fcQTimeZone_country(self: pointer, ): cint {.importc: "QTimeZone_country".}
proc fcQTimeZone_comment(self: pointer, ): struct_miqt_string {.importc: "QTimeZone_comment".}
proc fcQTimeZone_displayName(self: pointer, atDateTime: pointer): struct_miqt_string {.importc: "QTimeZone_displayName".}
proc fcQTimeZone_displayNameWithTimeType(self: pointer, timeType: cint): struct_miqt_string {.importc: "QTimeZone_displayNameWithTimeType".}
proc fcQTimeZone_abbreviation(self: pointer, atDateTime: pointer): struct_miqt_string {.importc: "QTimeZone_abbreviation".}
proc fcQTimeZone_offsetFromUtc(self: pointer, atDateTime: pointer): cint {.importc: "QTimeZone_offsetFromUtc".}
proc fcQTimeZone_standardTimeOffset(self: pointer, atDateTime: pointer): cint {.importc: "QTimeZone_standardTimeOffset".}
proc fcQTimeZone_daylightTimeOffset(self: pointer, atDateTime: pointer): cint {.importc: "QTimeZone_daylightTimeOffset".}
proc fcQTimeZone_hasDaylightTime(self: pointer, ): bool {.importc: "QTimeZone_hasDaylightTime".}
proc fcQTimeZone_isDaylightTime(self: pointer, atDateTime: pointer): bool {.importc: "QTimeZone_isDaylightTime".}
proc fcQTimeZone_offsetData(self: pointer, forDateTime: pointer): pointer {.importc: "QTimeZone_offsetData".}
proc fcQTimeZone_hasTransitions(self: pointer, ): bool {.importc: "QTimeZone_hasTransitions".}
proc fcQTimeZone_nextTransition(self: pointer, afterDateTime: pointer): pointer {.importc: "QTimeZone_nextTransition".}
proc fcQTimeZone_previousTransition(self: pointer, beforeDateTime: pointer): pointer {.importc: "QTimeZone_previousTransition".}
proc fcQTimeZone_transitions(self: pointer, fromDateTime: pointer, toDateTime: pointer): struct_miqt_array {.importc: "QTimeZone_transitions".}
proc fcQTimeZone_systemTimeZoneId(): struct_miqt_string {.importc: "QTimeZone_systemTimeZoneId".}
proc fcQTimeZone_systemTimeZone(): pointer {.importc: "QTimeZone_systemTimeZone".}
proc fcQTimeZone_utc(): pointer {.importc: "QTimeZone_utc".}
proc fcQTimeZone_isTimeZoneIdAvailable(ianaId: struct_miqt_string): bool {.importc: "QTimeZone_isTimeZoneIdAvailable".}
proc fcQTimeZone_availableTimeZoneIds(): struct_miqt_array {.importc: "QTimeZone_availableTimeZoneIds".}
proc fcQTimeZone_availableTimeZoneIdsWithTerritory(territory: cint): struct_miqt_array {.importc: "QTimeZone_availableTimeZoneIdsWithTerritory".}
proc fcQTimeZone_availableTimeZoneIdsWithOffsetSeconds(offsetSeconds: cint): struct_miqt_array {.importc: "QTimeZone_availableTimeZoneIdsWithOffsetSeconds".}
proc fcQTimeZone_ianaIdToWindowsId(ianaId: struct_miqt_string): struct_miqt_string {.importc: "QTimeZone_ianaIdToWindowsId".}
proc fcQTimeZone_windowsIdToDefaultIanaId(windowsId: struct_miqt_string): struct_miqt_string {.importc: "QTimeZone_windowsIdToDefaultIanaId".}
proc fcQTimeZone_windowsIdToDefaultIanaId2(windowsId: struct_miqt_string, territory: cint): struct_miqt_string {.importc: "QTimeZone_windowsIdToDefaultIanaId2".}
proc fcQTimeZone_windowsIdToIanaIds(windowsId: struct_miqt_string): struct_miqt_array {.importc: "QTimeZone_windowsIdToIanaIds".}
proc fcQTimeZone_windowsIdToIanaIds2(windowsId: struct_miqt_string, territory: cint): struct_miqt_array {.importc: "QTimeZone_windowsIdToIanaIds2".}
proc fcQTimeZone_displayName2(self: pointer, atDateTime: pointer, nameType: cint): struct_miqt_string {.importc: "QTimeZone_displayName2".}
proc fcQTimeZone_displayName3(self: pointer, atDateTime: pointer, nameType: cint, locale: pointer): struct_miqt_string {.importc: "QTimeZone_displayName3".}
proc fcQTimeZone_displayName22(self: pointer, timeType: cint, nameType: cint): struct_miqt_string {.importc: "QTimeZone_displayName22".}
proc fcQTimeZone_displayName32(self: pointer, timeType: cint, nameType: cint, locale: pointer): struct_miqt_string {.importc: "QTimeZone_displayName32".}
proc fcQTimeZone_delete(self: pointer) {.importc: "QTimeZone_delete".}
proc fcQTimeZoneOffsetData_new(param1: pointer): ptr cQTimeZoneOffsetData {.importc: "QTimeZone__OffsetData_new".}
proc fcQTimeZoneOffsetData_operatorAssign(self: pointer, param1: pointer): void {.importc: "QTimeZone__OffsetData_operatorAssign".}
proc fcQTimeZoneOffsetData_delete(self: pointer) {.importc: "QTimeZone__OffsetData_delete".}


func init*(T: type QTimeZone, h: ptr cQTimeZone): QTimeZone =
  T(h: h)
proc create*(T: type QTimeZone, ): QTimeZone =

  QTimeZone.init(fcQTimeZone_new())
proc create*(T: type QTimeZone, ianaId: seq[byte]): QTimeZone =

  QTimeZone.init(fcQTimeZone_new2(struct_miqt_string(data: cast[cstring](if len(ianaId) == 0: nil else: unsafeAddr ianaId[0]), len: csize_t(len(ianaId)))))
proc create*(T: type QTimeZone, offsetSeconds: cint): QTimeZone =

  QTimeZone.init(fcQTimeZone_new3(offsetSeconds))
proc create*(T: type QTimeZone, zoneId: seq[byte], offsetSeconds: cint, name: string, abbreviation: string): QTimeZone =

  QTimeZone.init(fcQTimeZone_new4(struct_miqt_string(data: cast[cstring](if len(zoneId) == 0: nil else: unsafeAddr zoneId[0]), len: csize_t(len(zoneId))), offsetSeconds, struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: abbreviation, len: csize_t(len(abbreviation)))))
proc create*(T: type QTimeZone, other: QTimeZone): QTimeZone =

  QTimeZone.init(fcQTimeZone_new5(other.h))
proc create*(T: type QTimeZone, zoneId: seq[byte], offsetSeconds: cint, name: string, abbreviation: string, territory: gen_qlocale.QLocaleCountry): QTimeZone =

  QTimeZone.init(fcQTimeZone_new6(struct_miqt_string(data: cast[cstring](if len(zoneId) == 0: nil else: unsafeAddr zoneId[0]), len: csize_t(len(zoneId))), offsetSeconds, struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: abbreviation, len: csize_t(len(abbreviation))), cint(territory)))
proc create*(T: type QTimeZone, zoneId: seq[byte], offsetSeconds: cint, name: string, abbreviation: string, territory: gen_qlocale.QLocaleCountry, comment: string): QTimeZone =

  QTimeZone.init(fcQTimeZone_new7(struct_miqt_string(data: cast[cstring](if len(zoneId) == 0: nil else: unsafeAddr zoneId[0]), len: csize_t(len(zoneId))), offsetSeconds, struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: abbreviation, len: csize_t(len(abbreviation))), cint(territory), struct_miqt_string(data: comment, len: csize_t(len(comment)))))
proc operatorAssign*(self: QTimeZone, other: QTimeZone): void =

  fcQTimeZone_operatorAssign(self.h, other.h)

proc swap*(self: QTimeZone, other: QTimeZone): void =

  fcQTimeZone_swap(self.h, other.h)

proc isValid*(self: QTimeZone, ): bool =

  fcQTimeZone_isValid(self.h)

proc id*(self: QTimeZone, ): seq[byte] =

  var v_bytearray = fcQTimeZone_id(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc territory*(self: QTimeZone, ): gen_qlocale.QLocaleCountry =

  gen_qlocale.QLocaleCountry(fcQTimeZone_territory(self.h))

proc country*(self: QTimeZone, ): gen_qlocale.QLocaleCountry =

  gen_qlocale.QLocaleCountry(fcQTimeZone_country(self.h))

proc comment*(self: QTimeZone, ): string =

  let v_ms = fcQTimeZone_comment(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc displayName*(self: QTimeZone, atDateTime: gen_qdatetime.QDateTime): string =

  let v_ms = fcQTimeZone_displayName(self.h, atDateTime.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc displayNameWithTimeType*(self: QTimeZone, timeType: QTimeZoneTimeType): string =

  let v_ms = fcQTimeZone_displayNameWithTimeType(self.h, cint(timeType))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc abbreviation*(self: QTimeZone, atDateTime: gen_qdatetime.QDateTime): string =

  let v_ms = fcQTimeZone_abbreviation(self.h, atDateTime.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc offsetFromUtc*(self: QTimeZone, atDateTime: gen_qdatetime.QDateTime): cint =

  fcQTimeZone_offsetFromUtc(self.h, atDateTime.h)

proc standardTimeOffset*(self: QTimeZone, atDateTime: gen_qdatetime.QDateTime): cint =

  fcQTimeZone_standardTimeOffset(self.h, atDateTime.h)

proc daylightTimeOffset*(self: QTimeZone, atDateTime: gen_qdatetime.QDateTime): cint =

  fcQTimeZone_daylightTimeOffset(self.h, atDateTime.h)

proc hasDaylightTime*(self: QTimeZone, ): bool =

  fcQTimeZone_hasDaylightTime(self.h)

proc isDaylightTime*(self: QTimeZone, atDateTime: gen_qdatetime.QDateTime): bool =

  fcQTimeZone_isDaylightTime(self.h, atDateTime.h)

proc offsetData*(self: QTimeZone, forDateTime: gen_qdatetime.QDateTime): QTimeZoneOffsetData =

  QTimeZoneOffsetData(h: fcQTimeZone_offsetData(self.h, forDateTime.h))

proc hasTransitions*(self: QTimeZone, ): bool =

  fcQTimeZone_hasTransitions(self.h)

proc nextTransition*(self: QTimeZone, afterDateTime: gen_qdatetime.QDateTime): QTimeZoneOffsetData =

  QTimeZoneOffsetData(h: fcQTimeZone_nextTransition(self.h, afterDateTime.h))

proc previousTransition*(self: QTimeZone, beforeDateTime: gen_qdatetime.QDateTime): QTimeZoneOffsetData =

  QTimeZoneOffsetData(h: fcQTimeZone_previousTransition(self.h, beforeDateTime.h))

proc transitions*(self: QTimeZone, fromDateTime: gen_qdatetime.QDateTime, toDateTime: gen_qdatetime.QDateTime): seq[QTimeZoneOffsetData] =

  var v_ma = fcQTimeZone_transitions(self.h, fromDateTime.h, toDateTime.h)
  var vx_ret = newSeq[QTimeZoneOffsetData](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QTimeZoneOffsetData(h: v_outCast[i])
  vx_ret

proc systemTimeZoneId*(_: type QTimeZone, ): seq[byte] =

  var v_bytearray = fcQTimeZone_systemTimeZoneId()
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc systemTimeZone*(_: type QTimeZone, ): QTimeZone =

  QTimeZone(h: fcQTimeZone_systemTimeZone())

proc utc*(_: type QTimeZone, ): QTimeZone =

  QTimeZone(h: fcQTimeZone_utc())

proc isTimeZoneIdAvailable*(_: type QTimeZone, ianaId: seq[byte]): bool =

  fcQTimeZone_isTimeZoneIdAvailable(struct_miqt_string(data: cast[cstring](if len(ianaId) == 0: nil else: unsafeAddr ianaId[0]), len: csize_t(len(ianaId))))

proc availableTimeZoneIds*(_: type QTimeZone, ): seq[seq[byte]] =

  var v_ma = fcQTimeZone_availableTimeZoneIds()
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc availableTimeZoneIdsWithTerritory*(_: type QTimeZone, territory: gen_qlocale.QLocaleCountry): seq[seq[byte]] =

  var v_ma = fcQTimeZone_availableTimeZoneIdsWithTerritory(cint(territory))
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc availableTimeZoneIdsWithOffsetSeconds*(_: type QTimeZone, offsetSeconds: cint): seq[seq[byte]] =

  var v_ma = fcQTimeZone_availableTimeZoneIdsWithOffsetSeconds(offsetSeconds)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc ianaIdToWindowsId*(_: type QTimeZone, ianaId: seq[byte]): seq[byte] =

  var v_bytearray = fcQTimeZone_ianaIdToWindowsId(struct_miqt_string(data: cast[cstring](if len(ianaId) == 0: nil else: unsafeAddr ianaId[0]), len: csize_t(len(ianaId))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc windowsIdToDefaultIanaId*(_: type QTimeZone, windowsId: seq[byte]): seq[byte] =

  var v_bytearray = fcQTimeZone_windowsIdToDefaultIanaId(struct_miqt_string(data: cast[cstring](if len(windowsId) == 0: nil else: unsafeAddr windowsId[0]), len: csize_t(len(windowsId))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc windowsIdToDefaultIanaId2*(_: type QTimeZone, windowsId: seq[byte], territory: gen_qlocale.QLocaleCountry): seq[byte] =

  var v_bytearray = fcQTimeZone_windowsIdToDefaultIanaId2(struct_miqt_string(data: cast[cstring](if len(windowsId) == 0: nil else: unsafeAddr windowsId[0]), len: csize_t(len(windowsId))), cint(territory))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc windowsIdToIanaIds*(_: type QTimeZone, windowsId: seq[byte]): seq[seq[byte]] =

  var v_ma = fcQTimeZone_windowsIdToIanaIds(struct_miqt_string(data: cast[cstring](if len(windowsId) == 0: nil else: unsafeAddr windowsId[0]), len: csize_t(len(windowsId))))
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc windowsIdToIanaIds2*(_: type QTimeZone, windowsId: seq[byte], territory: gen_qlocale.QLocaleCountry): seq[seq[byte]] =

  var v_ma = fcQTimeZone_windowsIdToIanaIds2(struct_miqt_string(data: cast[cstring](if len(windowsId) == 0: nil else: unsafeAddr windowsId[0]), len: csize_t(len(windowsId))), cint(territory))
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc displayName2*(self: QTimeZone, atDateTime: gen_qdatetime.QDateTime, nameType: QTimeZoneNameType): string =

  let v_ms = fcQTimeZone_displayName2(self.h, atDateTime.h, cint(nameType))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc displayName3*(self: QTimeZone, atDateTime: gen_qdatetime.QDateTime, nameType: QTimeZoneNameType, locale: gen_qlocale.QLocale): string =

  let v_ms = fcQTimeZone_displayName3(self.h, atDateTime.h, cint(nameType), locale.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc displayName22*(self: QTimeZone, timeType: QTimeZoneTimeType, nameType: QTimeZoneNameType): string =

  let v_ms = fcQTimeZone_displayName22(self.h, cint(timeType), cint(nameType))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc displayName32*(self: QTimeZone, timeType: QTimeZoneTimeType, nameType: QTimeZoneNameType, locale: gen_qlocale.QLocale): string =

  let v_ms = fcQTimeZone_displayName32(self.h, cint(timeType), cint(nameType), locale.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QTimeZone) =
  fcQTimeZone_delete(self.h)

func init*(T: type QTimeZoneOffsetData, h: ptr cQTimeZoneOffsetData): QTimeZoneOffsetData =
  T(h: h)
proc create*(T: type QTimeZoneOffsetData, param1: QTimeZoneOffsetData): QTimeZoneOffsetData =

  QTimeZoneOffsetData.init(fcQTimeZoneOffsetData_new(param1.h))
proc operatorAssign*(self: QTimeZoneOffsetData, param1: QTimeZoneOffsetData): void =

  fcQTimeZoneOffsetData_operatorAssign(self.h, param1.h)

proc delete*(self: QTimeZoneOffsetData) =
  fcQTimeZoneOffsetData_delete(self.h)
