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
{.compile("gen_qradiodatacontrol.cpp", cflags).}


import gen_qradiodatacontrol_types
export gen_qradiodatacontrol_types

import
  gen_qmediacontrol,
  gen_qobjectdefs,
  gen_qradiodata
export
  gen_qmediacontrol,
  gen_qobjectdefs,
  gen_qradiodata

type cQRadioDataControl*{.exportc: "QRadioDataControl", incompleteStruct.} = object

proc fcQRadioDataControl_metaObject(self: pointer, ): pointer {.importc: "QRadioDataControl_metaObject".}
proc fcQRadioDataControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QRadioDataControl_metacast".}
proc fcQRadioDataControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRadioDataControl_metacall".}
proc fcQRadioDataControl_tr(s: cstring): struct_miqt_string {.importc: "QRadioDataControl_tr".}
proc fcQRadioDataControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QRadioDataControl_trUtf8".}
proc fcQRadioDataControl_stationId(self: pointer, ): struct_miqt_string {.importc: "QRadioDataControl_stationId".}
proc fcQRadioDataControl_programType(self: pointer, ): cint {.importc: "QRadioDataControl_programType".}
proc fcQRadioDataControl_programTypeName(self: pointer, ): struct_miqt_string {.importc: "QRadioDataControl_programTypeName".}
proc fcQRadioDataControl_stationName(self: pointer, ): struct_miqt_string {.importc: "QRadioDataControl_stationName".}
proc fcQRadioDataControl_radioText(self: pointer, ): struct_miqt_string {.importc: "QRadioDataControl_radioText".}
proc fcQRadioDataControl_setAlternativeFrequenciesEnabled(self: pointer, enabled: bool): void {.importc: "QRadioDataControl_setAlternativeFrequenciesEnabled".}
proc fcQRadioDataControl_isAlternativeFrequenciesEnabled(self: pointer, ): bool {.importc: "QRadioDataControl_isAlternativeFrequenciesEnabled".}
proc fcQRadioDataControl_error(self: pointer, ): cint {.importc: "QRadioDataControl_error".}
proc fcQRadioDataControl_errorString(self: pointer, ): struct_miqt_string {.importc: "QRadioDataControl_errorString".}
proc fcQRadioDataControl_stationIdChanged(self: pointer, stationId: struct_miqt_string): void {.importc: "QRadioDataControl_stationIdChanged".}
proc fQRadioDataControl_connect_stationIdChanged(self: pointer, slot: int) {.importc: "QRadioDataControl_connect_stationIdChanged".}
proc fcQRadioDataControl_programTypeChanged(self: pointer, programType: cint): void {.importc: "QRadioDataControl_programTypeChanged".}
proc fQRadioDataControl_connect_programTypeChanged(self: pointer, slot: int) {.importc: "QRadioDataControl_connect_programTypeChanged".}
proc fcQRadioDataControl_programTypeNameChanged(self: pointer, programTypeName: struct_miqt_string): void {.importc: "QRadioDataControl_programTypeNameChanged".}
proc fQRadioDataControl_connect_programTypeNameChanged(self: pointer, slot: int) {.importc: "QRadioDataControl_connect_programTypeNameChanged".}
proc fcQRadioDataControl_stationNameChanged(self: pointer, stationName: struct_miqt_string): void {.importc: "QRadioDataControl_stationNameChanged".}
proc fQRadioDataControl_connect_stationNameChanged(self: pointer, slot: int) {.importc: "QRadioDataControl_connect_stationNameChanged".}
proc fcQRadioDataControl_radioTextChanged(self: pointer, radioText: struct_miqt_string): void {.importc: "QRadioDataControl_radioTextChanged".}
proc fQRadioDataControl_connect_radioTextChanged(self: pointer, slot: int) {.importc: "QRadioDataControl_connect_radioTextChanged".}
proc fcQRadioDataControl_alternativeFrequenciesEnabledChanged(self: pointer, enabled: bool): void {.importc: "QRadioDataControl_alternativeFrequenciesEnabledChanged".}
proc fQRadioDataControl_connect_alternativeFrequenciesEnabledChanged(self: pointer, slot: int) {.importc: "QRadioDataControl_connect_alternativeFrequenciesEnabledChanged".}
proc fcQRadioDataControl_errorWithErr(self: pointer, err: cint): void {.importc: "QRadioDataControl_errorWithErr".}
proc fQRadioDataControl_connect_errorWithErr(self: pointer, slot: int) {.importc: "QRadioDataControl_connect_errorWithErr".}
proc fcQRadioDataControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QRadioDataControl_tr2".}
proc fcQRadioDataControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRadioDataControl_tr3".}
proc fcQRadioDataControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QRadioDataControl_trUtf82".}
proc fcQRadioDataControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRadioDataControl_trUtf83".}
proc fcQRadioDataControl_delete(self: pointer) {.importc: "QRadioDataControl_delete".}


func init*(T: type QRadioDataControl, h: ptr cQRadioDataControl): QRadioDataControl =
  T(h: h)
proc metaObject*(self: QRadioDataControl, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQRadioDataControl_metaObject(self.h))

proc metacast*(self: QRadioDataControl, param1: cstring): pointer =

  fcQRadioDataControl_metacast(self.h, param1)

proc metacall*(self: QRadioDataControl, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQRadioDataControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QRadioDataControl, s: cstring): string =

  let v_ms = fcQRadioDataControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QRadioDataControl, s: cstring): string =

  let v_ms = fcQRadioDataControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc stationId*(self: QRadioDataControl, ): string =

  let v_ms = fcQRadioDataControl_stationId(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc programType*(self: QRadioDataControl, ): gen_qradiodata.QRadioDataProgramType =

  gen_qradiodata.QRadioDataProgramType(fcQRadioDataControl_programType(self.h))

proc programTypeName*(self: QRadioDataControl, ): string =

  let v_ms = fcQRadioDataControl_programTypeName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc stationName*(self: QRadioDataControl, ): string =

  let v_ms = fcQRadioDataControl_stationName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc radioText*(self: QRadioDataControl, ): string =

  let v_ms = fcQRadioDataControl_radioText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAlternativeFrequenciesEnabled*(self: QRadioDataControl, enabled: bool): void =

  fcQRadioDataControl_setAlternativeFrequenciesEnabled(self.h, enabled)

proc isAlternativeFrequenciesEnabled*(self: QRadioDataControl, ): bool =

  fcQRadioDataControl_isAlternativeFrequenciesEnabled(self.h)

proc error*(self: QRadioDataControl, ): gen_qradiodata.QRadioDataError =

  gen_qradiodata.QRadioDataError(fcQRadioDataControl_error(self.h))

proc errorString*(self: QRadioDataControl, ): string =

  let v_ms = fcQRadioDataControl_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc stationIdChanged*(self: QRadioDataControl, stationId: string): void =

  fcQRadioDataControl_stationIdChanged(self.h, struct_miqt_string(data: stationId, len: csize_t(len(stationId))))

proc miqt_exec_callback_QRadioDataControl_stationIdChanged(slot: int, stationId: struct_miqt_string) {.exportc.} =
  type Cb = proc(stationId: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vstationId_ms = stationId
  let vstationIdx_ret = string.fromBytes(toOpenArrayByte(vstationId_ms.data, 0, int(vstationId_ms.len)-1))
  c_free(vstationId_ms.data)
  let slotval1 = vstationIdx_ret


  nimfunc[](slotval1)

proc onstationIdChanged*(self: QRadioDataControl, slot: proc(stationId: string)) =
  type Cb = proc(stationId: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioDataControl_connect_stationIdChanged(self.h, cast[int](addr tmp[]))
proc programTypeChanged*(self: QRadioDataControl, programType: gen_qradiodata.QRadioDataProgramType): void =

  fcQRadioDataControl_programTypeChanged(self.h, cint(programType))

proc miqt_exec_callback_QRadioDataControl_programTypeChanged(slot: int, programType: cint) {.exportc.} =
  type Cb = proc(programType: gen_qradiodata.QRadioDataProgramType)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qradiodata.QRadioDataProgramType(programType)


  nimfunc[](slotval1)

proc onprogramTypeChanged*(self: QRadioDataControl, slot: proc(programType: gen_qradiodata.QRadioDataProgramType)) =
  type Cb = proc(programType: gen_qradiodata.QRadioDataProgramType)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioDataControl_connect_programTypeChanged(self.h, cast[int](addr tmp[]))
proc programTypeNameChanged*(self: QRadioDataControl, programTypeName: string): void =

  fcQRadioDataControl_programTypeNameChanged(self.h, struct_miqt_string(data: programTypeName, len: csize_t(len(programTypeName))))

proc miqt_exec_callback_QRadioDataControl_programTypeNameChanged(slot: int, programTypeName: struct_miqt_string) {.exportc.} =
  type Cb = proc(programTypeName: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vprogramTypeName_ms = programTypeName
  let vprogramTypeNamex_ret = string.fromBytes(toOpenArrayByte(vprogramTypeName_ms.data, 0, int(vprogramTypeName_ms.len)-1))
  c_free(vprogramTypeName_ms.data)
  let slotval1 = vprogramTypeNamex_ret


  nimfunc[](slotval1)

proc onprogramTypeNameChanged*(self: QRadioDataControl, slot: proc(programTypeName: string)) =
  type Cb = proc(programTypeName: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioDataControl_connect_programTypeNameChanged(self.h, cast[int](addr tmp[]))
proc stationNameChanged*(self: QRadioDataControl, stationName: string): void =

  fcQRadioDataControl_stationNameChanged(self.h, struct_miqt_string(data: stationName, len: csize_t(len(stationName))))

proc miqt_exec_callback_QRadioDataControl_stationNameChanged(slot: int, stationName: struct_miqt_string) {.exportc.} =
  type Cb = proc(stationName: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vstationName_ms = stationName
  let vstationNamex_ret = string.fromBytes(toOpenArrayByte(vstationName_ms.data, 0, int(vstationName_ms.len)-1))
  c_free(vstationName_ms.data)
  let slotval1 = vstationNamex_ret


  nimfunc[](slotval1)

proc onstationNameChanged*(self: QRadioDataControl, slot: proc(stationName: string)) =
  type Cb = proc(stationName: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioDataControl_connect_stationNameChanged(self.h, cast[int](addr tmp[]))
proc radioTextChanged*(self: QRadioDataControl, radioText: string): void =

  fcQRadioDataControl_radioTextChanged(self.h, struct_miqt_string(data: radioText, len: csize_t(len(radioText))))

proc miqt_exec_callback_QRadioDataControl_radioTextChanged(slot: int, radioText: struct_miqt_string) {.exportc.} =
  type Cb = proc(radioText: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vradioText_ms = radioText
  let vradioTextx_ret = string.fromBytes(toOpenArrayByte(vradioText_ms.data, 0, int(vradioText_ms.len)-1))
  c_free(vradioText_ms.data)
  let slotval1 = vradioTextx_ret


  nimfunc[](slotval1)

proc onradioTextChanged*(self: QRadioDataControl, slot: proc(radioText: string)) =
  type Cb = proc(radioText: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioDataControl_connect_radioTextChanged(self.h, cast[int](addr tmp[]))
proc alternativeFrequenciesEnabledChanged*(self: QRadioDataControl, enabled: bool): void =

  fcQRadioDataControl_alternativeFrequenciesEnabledChanged(self.h, enabled)

proc miqt_exec_callback_QRadioDataControl_alternativeFrequenciesEnabledChanged(slot: int, enabled: bool) {.exportc.} =
  type Cb = proc(enabled: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = enabled


  nimfunc[](slotval1)

proc onalternativeFrequenciesEnabledChanged*(self: QRadioDataControl, slot: proc(enabled: bool)) =
  type Cb = proc(enabled: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioDataControl_connect_alternativeFrequenciesEnabledChanged(self.h, cast[int](addr tmp[]))
proc errorWithErr*(self: QRadioDataControl, err: gen_qradiodata.QRadioDataError): void =

  fcQRadioDataControl_errorWithErr(self.h, cint(err))

proc miqt_exec_callback_QRadioDataControl_errorWithErr(slot: int, err: cint) {.exportc.} =
  type Cb = proc(err: gen_qradiodata.QRadioDataError)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qradiodata.QRadioDataError(err)


  nimfunc[](slotval1)

proc onerrorWithErr*(self: QRadioDataControl, slot: proc(err: gen_qradiodata.QRadioDataError)) =
  type Cb = proc(err: gen_qradiodata.QRadioDataError)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRadioDataControl_connect_errorWithErr(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QRadioDataControl, s: cstring, c: cstring): string =

  let v_ms = fcQRadioDataControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QRadioDataControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQRadioDataControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QRadioDataControl, s: cstring, c: cstring): string =

  let v_ms = fcQRadioDataControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QRadioDataControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQRadioDataControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QRadioDataControl) =
  fcQRadioDataControl_delete(self.h)
