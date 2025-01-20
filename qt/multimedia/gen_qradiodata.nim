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
{.compile("gen_qradiodata.cpp", cflags).}


type QRadioDataError* = cint
const
  QRadioDataNoError* = 0
  QRadioDataResourceError* = 1
  QRadioDataOpenError* = 2
  QRadioDataOutOfRangeError* = 3



type QRadioDataProgramType* = cint
const
  QRadioDataUndefined* = 0
  QRadioDataNews* = 1
  QRadioDataCurrentAffairs* = 2
  QRadioDataInformation* = 3
  QRadioDataSport* = 4
  QRadioDataEducation* = 5
  QRadioDataDrama* = 6
  QRadioDataCulture* = 7
  QRadioDataScience* = 8
  QRadioDataVaried* = 9
  QRadioDataPopMusic* = 10
  QRadioDataRockMusic* = 11
  QRadioDataEasyListening* = 12
  QRadioDataLightClassical* = 13
  QRadioDataSeriousClassical* = 14
  QRadioDataOtherMusic* = 15
  QRadioDataWeather* = 16
  QRadioDataFinance* = 17
  QRadioDataChildrensProgrammes* = 18
  QRadioDataSocialAffairs* = 19
  QRadioDataReligion* = 20
  QRadioDataPhoneIn* = 21
  QRadioDataTravel* = 22
  QRadioDataLeisure* = 23
  QRadioDataJazzMusic* = 24
  QRadioDataCountryMusic* = 25
  QRadioDataNationalMusic* = 26
  QRadioDataOldiesMusic* = 27
  QRadioDataFolkMusic* = 28
  QRadioDataDocumentary* = 29
  QRadioDataAlarmTest* = 30
  QRadioDataAlarm* = 31
  QRadioDataTalk* = 32
  QRadioDataClassicRock* = 33
  QRadioDataAdultHits* = 34
  QRadioDataSoftRock* = 35
  QRadioDataTop40* = 36
  QRadioDataSoft* = 37
  QRadioDataNostalgia* = 38
  QRadioDataClassical* = 39
  QRadioDataRhythmAndBlues* = 40
  QRadioDataSoftRhythmAndBlues* = 41
  QRadioDataLanguage* = 42
  QRadioDataReligiousMusic* = 43
  QRadioDataReligiousTalk* = 44
  QRadioDataPersonality* = 45
  QRadioDataPublic* = 46
  QRadioDataCollege* = 47



import gen_qradiodata_types
export gen_qradiodata_types

import
  gen_qcoreevent,
  gen_qmediaobject,
  gen_qmetaobject,
  gen_qmultimedia,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qcoreevent,
  gen_qmediaobject,
  gen_qmetaobject,
  gen_qmultimedia,
  gen_qobject,
  gen_qobjectdefs

type cQRadioData*{.exportc: "QRadioData", incompleteStruct.} = object

proc fcQRadioData_new(mediaObject: pointer): ptr cQRadioData {.importc: "QRadioData_new".}
proc fcQRadioData_new2(mediaObject: pointer, parent: pointer): ptr cQRadioData {.importc: "QRadioData_new2".}
proc fcQRadioData_metaObject(self: pointer, ): pointer {.importc: "QRadioData_metaObject".}
proc fcQRadioData_metacast(self: pointer, param1: cstring): pointer {.importc: "QRadioData_metacast".}
proc fcQRadioData_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRadioData_metacall".}
proc fcQRadioData_tr(s: cstring): struct_miqt_string {.importc: "QRadioData_tr".}
proc fcQRadioData_trUtf8(s: cstring): struct_miqt_string {.importc: "QRadioData_trUtf8".}
proc fcQRadioData_availability(self: pointer, ): cint {.importc: "QRadioData_availability".}
proc fcQRadioData_mediaObject(self: pointer, ): pointer {.importc: "QRadioData_mediaObject".}
proc fcQRadioData_stationId(self: pointer, ): struct_miqt_string {.importc: "QRadioData_stationId".}
proc fcQRadioData_programType(self: pointer, ): cint {.importc: "QRadioData_programType".}
proc fcQRadioData_programTypeName(self: pointer, ): struct_miqt_string {.importc: "QRadioData_programTypeName".}
proc fcQRadioData_stationName(self: pointer, ): struct_miqt_string {.importc: "QRadioData_stationName".}
proc fcQRadioData_radioText(self: pointer, ): struct_miqt_string {.importc: "QRadioData_radioText".}
proc fcQRadioData_isAlternativeFrequenciesEnabled(self: pointer, ): bool {.importc: "QRadioData_isAlternativeFrequenciesEnabled".}
proc fcQRadioData_error(self: pointer, ): cint {.importc: "QRadioData_error".}
proc fcQRadioData_errorString(self: pointer, ): struct_miqt_string {.importc: "QRadioData_errorString".}
proc fcQRadioData_setAlternativeFrequenciesEnabled(self: pointer, enabled: bool): void {.importc: "QRadioData_setAlternativeFrequenciesEnabled".}
proc fcQRadioData_stationIdChanged(self: pointer, stationId: struct_miqt_string): void {.importc: "QRadioData_stationIdChanged".}
proc fQRadioData_connect_stationIdChanged(self: pointer, slot: int) {.importc: "QRadioData_connect_stationIdChanged".}
proc fcQRadioData_programTypeChanged(self: pointer, programType: cint): void {.importc: "QRadioData_programTypeChanged".}
proc fQRadioData_connect_programTypeChanged(self: pointer, slot: int) {.importc: "QRadioData_connect_programTypeChanged".}
proc fcQRadioData_programTypeNameChanged(self: pointer, programTypeName: struct_miqt_string): void {.importc: "QRadioData_programTypeNameChanged".}
proc fQRadioData_connect_programTypeNameChanged(self: pointer, slot: int) {.importc: "QRadioData_connect_programTypeNameChanged".}
proc fcQRadioData_stationNameChanged(self: pointer, stationName: struct_miqt_string): void {.importc: "QRadioData_stationNameChanged".}
proc fQRadioData_connect_stationNameChanged(self: pointer, slot: int) {.importc: "QRadioData_connect_stationNameChanged".}
proc fcQRadioData_radioTextChanged(self: pointer, radioText: struct_miqt_string): void {.importc: "QRadioData_radioTextChanged".}
proc fQRadioData_connect_radioTextChanged(self: pointer, slot: int) {.importc: "QRadioData_connect_radioTextChanged".}
proc fcQRadioData_alternativeFrequenciesEnabledChanged(self: pointer, enabled: bool): void {.importc: "QRadioData_alternativeFrequenciesEnabledChanged".}
proc fQRadioData_connect_alternativeFrequenciesEnabledChanged(self: pointer, slot: int) {.importc: "QRadioData_connect_alternativeFrequenciesEnabledChanged".}
proc fcQRadioData_errorWithError(self: pointer, error: cint): void {.importc: "QRadioData_errorWithError".}
proc fQRadioData_connect_errorWithError(self: pointer, slot: int) {.importc: "QRadioData_connect_errorWithError".}
proc fcQRadioData_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QRadioData_tr2".}
proc fcQRadioData_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRadioData_tr3".}
proc fcQRadioData_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QRadioData_trUtf82".}
proc fcQRadioData_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRadioData_trUtf83".}
proc fQRadioData_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QRadioData_virtualbase_metaObject".}
proc fcQRadioData_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QRadioData_override_virtual_metaObject".}
proc fQRadioData_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QRadioData_virtualbase_metacast".}
proc fcQRadioData_override_virtual_metacast(self: pointer, slot: int) {.importc: "QRadioData_override_virtual_metacast".}
proc fQRadioData_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QRadioData_virtualbase_metacall".}
proc fcQRadioData_override_virtual_metacall(self: pointer, slot: int) {.importc: "QRadioData_override_virtual_metacall".}
proc fQRadioData_virtualbase_mediaObject(self: pointer, ): pointer{.importc: "QRadioData_virtualbase_mediaObject".}
proc fcQRadioData_override_virtual_mediaObject(self: pointer, slot: int) {.importc: "QRadioData_override_virtual_mediaObject".}
proc fQRadioData_virtualbase_setMediaObject(self: pointer, mediaObject: pointer): bool{.importc: "QRadioData_virtualbase_setMediaObject".}
proc fcQRadioData_override_virtual_setMediaObject(self: pointer, slot: int) {.importc: "QRadioData_override_virtual_setMediaObject".}
proc fQRadioData_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QRadioData_virtualbase_event".}
proc fcQRadioData_override_virtual_event(self: pointer, slot: int) {.importc: "QRadioData_override_virtual_event".}
proc fQRadioData_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QRadioData_virtualbase_eventFilter".}
proc fcQRadioData_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QRadioData_override_virtual_eventFilter".}
proc fQRadioData_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QRadioData_virtualbase_timerEvent".}
proc fcQRadioData_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QRadioData_override_virtual_timerEvent".}
proc fQRadioData_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QRadioData_virtualbase_childEvent".}
proc fcQRadioData_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QRadioData_override_virtual_childEvent".}
proc fQRadioData_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QRadioData_virtualbase_customEvent".}
proc fcQRadioData_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QRadioData_override_virtual_customEvent".}
proc fQRadioData_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QRadioData_virtualbase_connectNotify".}
proc fcQRadioData_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QRadioData_override_virtual_connectNotify".}
proc fQRadioData_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QRadioData_virtualbase_disconnectNotify".}
proc fcQRadioData_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QRadioData_override_virtual_disconnectNotify".}
proc fcQRadioData_staticMetaObject(): pointer {.importc: "QRadioData_staticMetaObject".}
proc fcQRadioData_delete(self: pointer) {.importc: "QRadioData_delete".}


func init*(T: type QRadioData, h: ptr cQRadioData): QRadioData =
  T(h: h)
proc create*(T: type QRadioData, mediaObject: gen_qmediaobject.QMediaObject): QRadioData =

  QRadioData.init(fcQRadioData_new(mediaObject.h))
proc create*(T: type QRadioData, mediaObject: gen_qmediaobject.QMediaObject, parent: gen_qobject.QObject): QRadioData =

  QRadioData.init(fcQRadioData_new2(mediaObject.h, parent.h))
proc metaObject*(self: QRadioData, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQRadioData_metaObject(self.h))

proc metacast*(self: QRadioData, param1: cstring): pointer =

  fcQRadioData_metacast(self.h, param1)

proc metacall*(self: QRadioData, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQRadioData_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QRadioData, s: cstring): string =

  let v_ms = fcQRadioData_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QRadioData, s: cstring): string =

  let v_ms = fcQRadioData_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc availability*(self: QRadioData, ): gen_qmultimedia.QMultimediaAvailabilityStatus =

  gen_qmultimedia.QMultimediaAvailabilityStatus(fcQRadioData_availability(self.h))

proc mediaObject*(self: QRadioData, ): gen_qmediaobject.QMediaObject =

  gen_qmediaobject.QMediaObject(h: fcQRadioData_mediaObject(self.h))

proc stationId*(self: QRadioData, ): string =

  let v_ms = fcQRadioData_stationId(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc programType*(self: QRadioData, ): QRadioDataProgramType =

  QRadioDataProgramType(fcQRadioData_programType(self.h))

proc programTypeName*(self: QRadioData, ): string =

  let v_ms = fcQRadioData_programTypeName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc stationName*(self: QRadioData, ): string =

  let v_ms = fcQRadioData_stationName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc radioText*(self: QRadioData, ): string =

  let v_ms = fcQRadioData_radioText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isAlternativeFrequenciesEnabled*(self: QRadioData, ): bool =

  fcQRadioData_isAlternativeFrequenciesEnabled(self.h)

proc error*(self: QRadioData, ): QRadioDataError =

  QRadioDataError(fcQRadioData_error(self.h))

proc errorString*(self: QRadioData, ): string =

  let v_ms = fcQRadioData_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAlternativeFrequenciesEnabled*(self: QRadioData, enabled: bool): void =

  fcQRadioData_setAlternativeFrequenciesEnabled(self.h, enabled)

proc stationIdChanged*(self: QRadioData, stationId: string): void =

  fcQRadioData_stationIdChanged(self.h, struct_miqt_string(data: stationId, len: csize_t(len(stationId))))

proc miqt_exec_callback_QRadioData_stationIdChanged(slot: int, stationId: struct_miqt_string) {.exportc.} =
  type Cb = proc(stationId: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vstationId_ms = stationId
  let vstationIdx_ret = string.fromBytes(toOpenArrayByte(vstationId_ms.data, 0, int(vstationId_ms.len)-1))
  c_free(vstationId_ms.data)
  let slotval1 = vstationIdx_ret


  nimfunc[](slotval1)

proc onstationIdChanged*(self: QRadioData, slot: proc(stationId: string)) =
  type Cb = proc(stationId: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioData_connect_stationIdChanged(self.h, cast[int](addr tmp[]))
proc programTypeChanged*(self: QRadioData, programType: QRadioDataProgramType): void =

  fcQRadioData_programTypeChanged(self.h, cint(programType))

proc miqt_exec_callback_QRadioData_programTypeChanged(slot: int, programType: cint) {.exportc.} =
  type Cb = proc(programType: QRadioDataProgramType)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QRadioDataProgramType(programType)


  nimfunc[](slotval1)

proc onprogramTypeChanged*(self: QRadioData, slot: proc(programType: QRadioDataProgramType)) =
  type Cb = proc(programType: QRadioDataProgramType)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioData_connect_programTypeChanged(self.h, cast[int](addr tmp[]))
proc programTypeNameChanged*(self: QRadioData, programTypeName: string): void =

  fcQRadioData_programTypeNameChanged(self.h, struct_miqt_string(data: programTypeName, len: csize_t(len(programTypeName))))

proc miqt_exec_callback_QRadioData_programTypeNameChanged(slot: int, programTypeName: struct_miqt_string) {.exportc.} =
  type Cb = proc(programTypeName: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vprogramTypeName_ms = programTypeName
  let vprogramTypeNamex_ret = string.fromBytes(toOpenArrayByte(vprogramTypeName_ms.data, 0, int(vprogramTypeName_ms.len)-1))
  c_free(vprogramTypeName_ms.data)
  let slotval1 = vprogramTypeNamex_ret


  nimfunc[](slotval1)

proc onprogramTypeNameChanged*(self: QRadioData, slot: proc(programTypeName: string)) =
  type Cb = proc(programTypeName: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioData_connect_programTypeNameChanged(self.h, cast[int](addr tmp[]))
proc stationNameChanged*(self: QRadioData, stationName: string): void =

  fcQRadioData_stationNameChanged(self.h, struct_miqt_string(data: stationName, len: csize_t(len(stationName))))

proc miqt_exec_callback_QRadioData_stationNameChanged(slot: int, stationName: struct_miqt_string) {.exportc.} =
  type Cb = proc(stationName: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vstationName_ms = stationName
  let vstationNamex_ret = string.fromBytes(toOpenArrayByte(vstationName_ms.data, 0, int(vstationName_ms.len)-1))
  c_free(vstationName_ms.data)
  let slotval1 = vstationNamex_ret


  nimfunc[](slotval1)

proc onstationNameChanged*(self: QRadioData, slot: proc(stationName: string)) =
  type Cb = proc(stationName: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioData_connect_stationNameChanged(self.h, cast[int](addr tmp[]))
proc radioTextChanged*(self: QRadioData, radioText: string): void =

  fcQRadioData_radioTextChanged(self.h, struct_miqt_string(data: radioText, len: csize_t(len(radioText))))

proc miqt_exec_callback_QRadioData_radioTextChanged(slot: int, radioText: struct_miqt_string) {.exportc.} =
  type Cb = proc(radioText: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vradioText_ms = radioText
  let vradioTextx_ret = string.fromBytes(toOpenArrayByte(vradioText_ms.data, 0, int(vradioText_ms.len)-1))
  c_free(vradioText_ms.data)
  let slotval1 = vradioTextx_ret


  nimfunc[](slotval1)

proc onradioTextChanged*(self: QRadioData, slot: proc(radioText: string)) =
  type Cb = proc(radioText: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioData_connect_radioTextChanged(self.h, cast[int](addr tmp[]))
proc alternativeFrequenciesEnabledChanged*(self: QRadioData, enabled: bool): void =

  fcQRadioData_alternativeFrequenciesEnabledChanged(self.h, enabled)

proc miqt_exec_callback_QRadioData_alternativeFrequenciesEnabledChanged(slot: int, enabled: bool) {.exportc.} =
  type Cb = proc(enabled: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = enabled


  nimfunc[](slotval1)

proc onalternativeFrequenciesEnabledChanged*(self: QRadioData, slot: proc(enabled: bool)) =
  type Cb = proc(enabled: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioData_connect_alternativeFrequenciesEnabledChanged(self.h, cast[int](addr tmp[]))
proc errorWithError*(self: QRadioData, error: QRadioDataError): void =

  fcQRadioData_errorWithError(self.h, cint(error))

proc miqt_exec_callback_QRadioData_errorWithError(slot: int, error: cint) {.exportc.} =
  type Cb = proc(error: QRadioDataError)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QRadioDataError(error)


  nimfunc[](slotval1)

proc onerrorWithError*(self: QRadioData, slot: proc(error: QRadioDataError)) =
  type Cb = proc(error: QRadioDataError)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioData_connect_errorWithError(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QRadioData, s: cstring, c: cstring): string =

  let v_ms = fcQRadioData_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QRadioData, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQRadioData_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QRadioData, s: cstring, c: cstring): string =

  let v_ms = fcQRadioData_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QRadioData, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQRadioData_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QRadioData, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQRadioData_virtualbase_metaObject(self.h))

type QRadioDatametaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QRadioData, slot: proc(super: QRadioDatametaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QRadioDatametaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioData_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioData_metaObject(self: ptr cQRadioData, slot: int): pointer {.exportc: "miqt_exec_callback_QRadioData_metaObject ".} =
  type Cb = proc(super: QRadioDatametaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QRadioData(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QRadioData, param1: cstring): pointer =


  fQRadioData_virtualbase_metacast(self.h, param1)

type QRadioDatametacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QRadioData, slot: proc(super: QRadioDatametacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QRadioDatametacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioData_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioData_metacast(self: ptr cQRadioData, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QRadioData_metacast ".} =
  type Cb = proc(super: QRadioDatametacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QRadioData(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QRadioData, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQRadioData_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QRadioDatametacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QRadioData, slot: proc(super: QRadioDatametacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QRadioDatametacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioData_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioData_metacall(self: ptr cQRadioData, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QRadioData_metacall ".} =
  type Cb = proc(super: QRadioDatametacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QRadioData(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_mediaObject(self: QRadioData, ): gen_qmediaobject.QMediaObject =


  gen_qmediaobject.QMediaObject(h: fQRadioData_virtualbase_mediaObject(self.h))

type QRadioDatamediaObjectBase* = proc(): gen_qmediaobject.QMediaObject
proc onmediaObject*(self: QRadioData, slot: proc(super: QRadioDatamediaObjectBase): gen_qmediaobject.QMediaObject) =
  # TODO check subclass
  type Cb = proc(super: QRadioDatamediaObjectBase): gen_qmediaobject.QMediaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioData_override_virtual_mediaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioData_mediaObject(self: ptr cQRadioData, slot: int): pointer {.exportc: "miqt_exec_callback_QRadioData_mediaObject ".} =
  type Cb = proc(super: QRadioDatamediaObjectBase): gen_qmediaobject.QMediaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_mediaObject(QRadioData(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setMediaObject(self: QRadioData, mediaObject: gen_qmediaobject.QMediaObject): bool =


  fQRadioData_virtualbase_setMediaObject(self.h, mediaObject.h)

type QRadioDatasetMediaObjectBase* = proc(mediaObject: gen_qmediaobject.QMediaObject): bool
proc onsetMediaObject*(self: QRadioData, slot: proc(super: QRadioDatasetMediaObjectBase, mediaObject: gen_qmediaobject.QMediaObject): bool) =
  # TODO check subclass
  type Cb = proc(super: QRadioDatasetMediaObjectBase, mediaObject: gen_qmediaobject.QMediaObject): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioData_override_virtual_setMediaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioData_setMediaObject(self: ptr cQRadioData, slot: int, mediaObject: pointer): bool {.exportc: "miqt_exec_callback_QRadioData_setMediaObject ".} =
  type Cb = proc(super: QRadioDatasetMediaObjectBase, mediaObject: gen_qmediaobject.QMediaObject): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(mediaObject: gen_qmediaobject.QMediaObject): auto =
    callVirtualBase_setMediaObject(QRadioData(h: self), mediaObject)
  let slotval1 = gen_qmediaobject.QMediaObject(h: mediaObject)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_event(self: QRadioData, event: gen_qcoreevent.QEvent): bool =


  fQRadioData_virtualbase_event(self.h, event.h)

type QRadioDataeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QRadioData, slot: proc(super: QRadioDataeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QRadioDataeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioData_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioData_event(self: ptr cQRadioData, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QRadioData_event ".} =
  type Cb = proc(super: QRadioDataeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QRadioData(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QRadioData, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQRadioData_virtualbase_eventFilter(self.h, watched.h, event.h)

type QRadioDataeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QRadioData, slot: proc(super: QRadioDataeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QRadioDataeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioData_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioData_eventFilter(self: ptr cQRadioData, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QRadioData_eventFilter ".} =
  type Cb = proc(super: QRadioDataeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QRadioData(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QRadioData, event: gen_qcoreevent.QTimerEvent): void =


  fQRadioData_virtualbase_timerEvent(self.h, event.h)

type QRadioDatatimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QRadioData, slot: proc(super: QRadioDatatimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioDatatimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioData_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioData_timerEvent(self: ptr cQRadioData, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioData_timerEvent ".} =
  type Cb = proc(super: QRadioDatatimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QRadioData(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QRadioData, event: gen_qcoreevent.QChildEvent): void =


  fQRadioData_virtualbase_childEvent(self.h, event.h)

type QRadioDatachildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QRadioData, slot: proc(super: QRadioDatachildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioDatachildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioData_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioData_childEvent(self: ptr cQRadioData, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioData_childEvent ".} =
  type Cb = proc(super: QRadioDatachildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QRadioData(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QRadioData, event: gen_qcoreevent.QEvent): void =


  fQRadioData_virtualbase_customEvent(self.h, event.h)

type QRadioDatacustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QRadioData, slot: proc(super: QRadioDatacustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioDatacustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioData_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioData_customEvent(self: ptr cQRadioData, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioData_customEvent ".} =
  type Cb = proc(super: QRadioDatacustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QRadioData(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QRadioData, signal: gen_qmetaobject.QMetaMethod): void =


  fQRadioData_virtualbase_connectNotify(self.h, signal.h)

type QRadioDataconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QRadioData, slot: proc(super: QRadioDataconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioDataconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioData_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioData_connectNotify(self: ptr cQRadioData, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QRadioData_connectNotify ".} =
  type Cb = proc(super: QRadioDataconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QRadioData(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QRadioData, signal: gen_qmetaobject.QMetaMethod): void =


  fQRadioData_virtualbase_disconnectNotify(self.h, signal.h)

type QRadioDatadisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QRadioData, slot: proc(super: QRadioDatadisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QRadioDatadisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioData_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioData_disconnectNotify(self: ptr cQRadioData, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QRadioData_disconnectNotify ".} =
  type Cb = proc(super: QRadioDatadisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QRadioData(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QRadioData): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQRadioData_staticMetaObject())
proc delete*(self: QRadioData) =
  fcQRadioData_delete(self.h)
