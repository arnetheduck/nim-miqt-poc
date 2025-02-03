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
{.compile("gen_qaudiosystem.cpp", cflags).}


import gen_qaudiosystem_types
export gen_qaudiosystem_types

import
  gen_qaudio,
  gen_qaudioformat,
  gen_qiodevice,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qaudio,
  gen_qaudioformat,
  gen_qiodevice,
  gen_qobject,
  gen_qobjectdefs

type cQAbstractAudioDeviceInfo*{.exportc: "QAbstractAudioDeviceInfo", incompleteStruct.} = object
type cQAbstractAudioOutput*{.exportc: "QAbstractAudioOutput", incompleteStruct.} = object
type cQAbstractAudioInput*{.exportc: "QAbstractAudioInput", incompleteStruct.} = object

proc fcQAbstractAudioDeviceInfo_metaObject(self: pointer, ): pointer {.importc: "QAbstractAudioDeviceInfo_metaObject".}
proc fcQAbstractAudioDeviceInfo_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractAudioDeviceInfo_metacast".}
proc fcQAbstractAudioDeviceInfo_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractAudioDeviceInfo_metacall".}
proc fcQAbstractAudioDeviceInfo_tr(s: cstring): struct_miqt_string {.importc: "QAbstractAudioDeviceInfo_tr".}
proc fcQAbstractAudioDeviceInfo_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractAudioDeviceInfo_trUtf8".}
proc fcQAbstractAudioDeviceInfo_preferredFormat(self: pointer, ): pointer {.importc: "QAbstractAudioDeviceInfo_preferredFormat".}
proc fcQAbstractAudioDeviceInfo_isFormatSupported(self: pointer, format: pointer): bool {.importc: "QAbstractAudioDeviceInfo_isFormatSupported".}
proc fcQAbstractAudioDeviceInfo_deviceName(self: pointer, ): struct_miqt_string {.importc: "QAbstractAudioDeviceInfo_deviceName".}
proc fcQAbstractAudioDeviceInfo_supportedCodecs(self: pointer, ): struct_miqt_array {.importc: "QAbstractAudioDeviceInfo_supportedCodecs".}
proc fcQAbstractAudioDeviceInfo_supportedSampleRates(self: pointer, ): struct_miqt_array {.importc: "QAbstractAudioDeviceInfo_supportedSampleRates".}
proc fcQAbstractAudioDeviceInfo_supportedChannelCounts(self: pointer, ): struct_miqt_array {.importc: "QAbstractAudioDeviceInfo_supportedChannelCounts".}
proc fcQAbstractAudioDeviceInfo_supportedSampleSizes(self: pointer, ): struct_miqt_array {.importc: "QAbstractAudioDeviceInfo_supportedSampleSizes".}
proc fcQAbstractAudioDeviceInfo_supportedByteOrders(self: pointer, ): struct_miqt_array {.importc: "QAbstractAudioDeviceInfo_supportedByteOrders".}
proc fcQAbstractAudioDeviceInfo_supportedSampleTypes(self: pointer, ): struct_miqt_array {.importc: "QAbstractAudioDeviceInfo_supportedSampleTypes".}
proc fcQAbstractAudioDeviceInfo_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractAudioDeviceInfo_tr2".}
proc fcQAbstractAudioDeviceInfo_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractAudioDeviceInfo_tr3".}
proc fcQAbstractAudioDeviceInfo_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractAudioDeviceInfo_trUtf82".}
proc fcQAbstractAudioDeviceInfo_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractAudioDeviceInfo_trUtf83".}
proc fcQAbstractAudioDeviceInfo_delete(self: pointer) {.importc: "QAbstractAudioDeviceInfo_delete".}
proc fcQAbstractAudioOutput_metaObject(self: pointer, ): pointer {.importc: "QAbstractAudioOutput_metaObject".}
proc fcQAbstractAudioOutput_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractAudioOutput_metacast".}
proc fcQAbstractAudioOutput_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractAudioOutput_metacall".}
proc fcQAbstractAudioOutput_tr(s: cstring): struct_miqt_string {.importc: "QAbstractAudioOutput_tr".}
proc fcQAbstractAudioOutput_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractAudioOutput_trUtf8".}
proc fcQAbstractAudioOutput_start(self: pointer, device: pointer): void {.importc: "QAbstractAudioOutput_start".}
proc fcQAbstractAudioOutput_start2(self: pointer, ): pointer {.importc: "QAbstractAudioOutput_start2".}
proc fcQAbstractAudioOutput_stop(self: pointer, ): void {.importc: "QAbstractAudioOutput_stop".}
proc fcQAbstractAudioOutput_reset(self: pointer, ): void {.importc: "QAbstractAudioOutput_reset".}
proc fcQAbstractAudioOutput_suspend(self: pointer, ): void {.importc: "QAbstractAudioOutput_suspend".}
proc fcQAbstractAudioOutput_resume(self: pointer, ): void {.importc: "QAbstractAudioOutput_resume".}
proc fcQAbstractAudioOutput_bytesFree(self: pointer, ): cint {.importc: "QAbstractAudioOutput_bytesFree".}
proc fcQAbstractAudioOutput_periodSize(self: pointer, ): cint {.importc: "QAbstractAudioOutput_periodSize".}
proc fcQAbstractAudioOutput_setBufferSize(self: pointer, value: cint): void {.importc: "QAbstractAudioOutput_setBufferSize".}
proc fcQAbstractAudioOutput_bufferSize(self: pointer, ): cint {.importc: "QAbstractAudioOutput_bufferSize".}
proc fcQAbstractAudioOutput_setNotifyInterval(self: pointer, milliSeconds: cint): void {.importc: "QAbstractAudioOutput_setNotifyInterval".}
proc fcQAbstractAudioOutput_notifyInterval(self: pointer, ): cint {.importc: "QAbstractAudioOutput_notifyInterval".}
proc fcQAbstractAudioOutput_processedUSecs(self: pointer, ): clonglong {.importc: "QAbstractAudioOutput_processedUSecs".}
proc fcQAbstractAudioOutput_elapsedUSecs(self: pointer, ): clonglong {.importc: "QAbstractAudioOutput_elapsedUSecs".}
proc fcQAbstractAudioOutput_error(self: pointer, ): cint {.importc: "QAbstractAudioOutput_error".}
proc fcQAbstractAudioOutput_state(self: pointer, ): cint {.importc: "QAbstractAudioOutput_state".}
proc fcQAbstractAudioOutput_setFormat(self: pointer, fmt: pointer): void {.importc: "QAbstractAudioOutput_setFormat".}
proc fcQAbstractAudioOutput_format(self: pointer, ): pointer {.importc: "QAbstractAudioOutput_format".}
proc fcQAbstractAudioOutput_setVolume(self: pointer, volume: float64): void {.importc: "QAbstractAudioOutput_setVolume".}
proc fcQAbstractAudioOutput_volume(self: pointer, ): float64 {.importc: "QAbstractAudioOutput_volume".}
proc fcQAbstractAudioOutput_category(self: pointer, ): struct_miqt_string {.importc: "QAbstractAudioOutput_category".}
proc fcQAbstractAudioOutput_setCategory(self: pointer, category: struct_miqt_string): void {.importc: "QAbstractAudioOutput_setCategory".}
proc fcQAbstractAudioOutput_errorChanged(self: pointer, error: cint): void {.importc: "QAbstractAudioOutput_errorChanged".}
proc fQAbstractAudioOutput_connect_errorChanged(self: pointer, slot: int) {.importc: "QAbstractAudioOutput_connect_errorChanged".}
proc fcQAbstractAudioOutput_stateChanged(self: pointer, state: cint): void {.importc: "QAbstractAudioOutput_stateChanged".}
proc fQAbstractAudioOutput_connect_stateChanged(self: pointer, slot: int) {.importc: "QAbstractAudioOutput_connect_stateChanged".}
proc fcQAbstractAudioOutput_notify(self: pointer, ): void {.importc: "QAbstractAudioOutput_notify".}
proc fQAbstractAudioOutput_connect_notify(self: pointer, slot: int) {.importc: "QAbstractAudioOutput_connect_notify".}
proc fcQAbstractAudioOutput_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractAudioOutput_tr2".}
proc fcQAbstractAudioOutput_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractAudioOutput_tr3".}
proc fcQAbstractAudioOutput_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractAudioOutput_trUtf82".}
proc fcQAbstractAudioOutput_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractAudioOutput_trUtf83".}
proc fcQAbstractAudioOutput_delete(self: pointer) {.importc: "QAbstractAudioOutput_delete".}
proc fcQAbstractAudioInput_metaObject(self: pointer, ): pointer {.importc: "QAbstractAudioInput_metaObject".}
proc fcQAbstractAudioInput_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractAudioInput_metacast".}
proc fcQAbstractAudioInput_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractAudioInput_metacall".}
proc fcQAbstractAudioInput_tr(s: cstring): struct_miqt_string {.importc: "QAbstractAudioInput_tr".}
proc fcQAbstractAudioInput_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractAudioInput_trUtf8".}
proc fcQAbstractAudioInput_start(self: pointer, device: pointer): void {.importc: "QAbstractAudioInput_start".}
proc fcQAbstractAudioInput_start2(self: pointer, ): pointer {.importc: "QAbstractAudioInput_start2".}
proc fcQAbstractAudioInput_stop(self: pointer, ): void {.importc: "QAbstractAudioInput_stop".}
proc fcQAbstractAudioInput_reset(self: pointer, ): void {.importc: "QAbstractAudioInput_reset".}
proc fcQAbstractAudioInput_suspend(self: pointer, ): void {.importc: "QAbstractAudioInput_suspend".}
proc fcQAbstractAudioInput_resume(self: pointer, ): void {.importc: "QAbstractAudioInput_resume".}
proc fcQAbstractAudioInput_bytesReady(self: pointer, ): cint {.importc: "QAbstractAudioInput_bytesReady".}
proc fcQAbstractAudioInput_periodSize(self: pointer, ): cint {.importc: "QAbstractAudioInput_periodSize".}
proc fcQAbstractAudioInput_setBufferSize(self: pointer, value: cint): void {.importc: "QAbstractAudioInput_setBufferSize".}
proc fcQAbstractAudioInput_bufferSize(self: pointer, ): cint {.importc: "QAbstractAudioInput_bufferSize".}
proc fcQAbstractAudioInput_setNotifyInterval(self: pointer, milliSeconds: cint): void {.importc: "QAbstractAudioInput_setNotifyInterval".}
proc fcQAbstractAudioInput_notifyInterval(self: pointer, ): cint {.importc: "QAbstractAudioInput_notifyInterval".}
proc fcQAbstractAudioInput_processedUSecs(self: pointer, ): clonglong {.importc: "QAbstractAudioInput_processedUSecs".}
proc fcQAbstractAudioInput_elapsedUSecs(self: pointer, ): clonglong {.importc: "QAbstractAudioInput_elapsedUSecs".}
proc fcQAbstractAudioInput_error(self: pointer, ): cint {.importc: "QAbstractAudioInput_error".}
proc fcQAbstractAudioInput_state(self: pointer, ): cint {.importc: "QAbstractAudioInput_state".}
proc fcQAbstractAudioInput_setFormat(self: pointer, fmt: pointer): void {.importc: "QAbstractAudioInput_setFormat".}
proc fcQAbstractAudioInput_format(self: pointer, ): pointer {.importc: "QAbstractAudioInput_format".}
proc fcQAbstractAudioInput_setVolume(self: pointer, volume: float64): void {.importc: "QAbstractAudioInput_setVolume".}
proc fcQAbstractAudioInput_volume(self: pointer, ): float64 {.importc: "QAbstractAudioInput_volume".}
proc fcQAbstractAudioInput_errorChanged(self: pointer, error: cint): void {.importc: "QAbstractAudioInput_errorChanged".}
proc fQAbstractAudioInput_connect_errorChanged(self: pointer, slot: int) {.importc: "QAbstractAudioInput_connect_errorChanged".}
proc fcQAbstractAudioInput_stateChanged(self: pointer, state: cint): void {.importc: "QAbstractAudioInput_stateChanged".}
proc fQAbstractAudioInput_connect_stateChanged(self: pointer, slot: int) {.importc: "QAbstractAudioInput_connect_stateChanged".}
proc fcQAbstractAudioInput_notify(self: pointer, ): void {.importc: "QAbstractAudioInput_notify".}
proc fQAbstractAudioInput_connect_notify(self: pointer, slot: int) {.importc: "QAbstractAudioInput_connect_notify".}
proc fcQAbstractAudioInput_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractAudioInput_tr2".}
proc fcQAbstractAudioInput_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractAudioInput_tr3".}
proc fcQAbstractAudioInput_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractAudioInput_trUtf82".}
proc fcQAbstractAudioInput_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractAudioInput_trUtf83".}
proc fcQAbstractAudioInput_delete(self: pointer) {.importc: "QAbstractAudioInput_delete".}


func init*(T: type QAbstractAudioDeviceInfo, h: ptr cQAbstractAudioDeviceInfo): QAbstractAudioDeviceInfo =
  T(h: h)
proc metaObject*(self: QAbstractAudioDeviceInfo, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAbstractAudioDeviceInfo_metaObject(self.h))

proc metacast*(self: QAbstractAudioDeviceInfo, param1: cstring): pointer =

  fcQAbstractAudioDeviceInfo_metacast(self.h, param1)

proc metacall*(self: QAbstractAudioDeviceInfo, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAbstractAudioDeviceInfo_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAbstractAudioDeviceInfo, s: cstring): string =

  let v_ms = fcQAbstractAudioDeviceInfo_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QAbstractAudioDeviceInfo, s: cstring): string =

  let v_ms = fcQAbstractAudioDeviceInfo_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc preferredFormat*(self: QAbstractAudioDeviceInfo, ): gen_qaudioformat.QAudioFormat =

  gen_qaudioformat.QAudioFormat(h: fcQAbstractAudioDeviceInfo_preferredFormat(self.h))

proc isFormatSupported*(self: QAbstractAudioDeviceInfo, format: gen_qaudioformat.QAudioFormat): bool =

  fcQAbstractAudioDeviceInfo_isFormatSupported(self.h, format.h)

proc deviceName*(self: QAbstractAudioDeviceInfo, ): string =

  let v_ms = fcQAbstractAudioDeviceInfo_deviceName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedCodecs*(self: QAbstractAudioDeviceInfo, ): seq[string] =

  var v_ma = fcQAbstractAudioDeviceInfo_supportedCodecs(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc supportedSampleRates*(self: QAbstractAudioDeviceInfo, ): seq[cint] =

  var v_ma = fcQAbstractAudioDeviceInfo_supportedSampleRates(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc supportedChannelCounts*(self: QAbstractAudioDeviceInfo, ): seq[cint] =

  var v_ma = fcQAbstractAudioDeviceInfo_supportedChannelCounts(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc supportedSampleSizes*(self: QAbstractAudioDeviceInfo, ): seq[cint] =

  var v_ma = fcQAbstractAudioDeviceInfo_supportedSampleSizes(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc supportedByteOrders*(self: QAbstractAudioDeviceInfo, ): seq[gen_qaudioformat.QAudioFormatEndian] =

  var v_ma = fcQAbstractAudioDeviceInfo_supportedByteOrders(self.h)
  var vx_ret = newSeq[gen_qaudioformat.QAudioFormatEndian](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qaudioformat.QAudioFormatEndian(v_outCast[i])
  vx_ret

proc supportedSampleTypes*(self: QAbstractAudioDeviceInfo, ): seq[gen_qaudioformat.QAudioFormatSampleType] =

  var v_ma = fcQAbstractAudioDeviceInfo_supportedSampleTypes(self.h)
  var vx_ret = newSeq[gen_qaudioformat.QAudioFormatSampleType](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qaudioformat.QAudioFormatSampleType(v_outCast[i])
  vx_ret

proc tr2*(_: type QAbstractAudioDeviceInfo, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractAudioDeviceInfo_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAbstractAudioDeviceInfo, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractAudioDeviceInfo_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QAbstractAudioDeviceInfo, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractAudioDeviceInfo_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QAbstractAudioDeviceInfo, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractAudioDeviceInfo_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QAbstractAudioDeviceInfo) =
  fcQAbstractAudioDeviceInfo_delete(self.h)

func init*(T: type QAbstractAudioOutput, h: ptr cQAbstractAudioOutput): QAbstractAudioOutput =
  T(h: h)
proc metaObject*(self: QAbstractAudioOutput, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAbstractAudioOutput_metaObject(self.h))

proc metacast*(self: QAbstractAudioOutput, param1: cstring): pointer =

  fcQAbstractAudioOutput_metacast(self.h, param1)

proc metacall*(self: QAbstractAudioOutput, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAbstractAudioOutput_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAbstractAudioOutput, s: cstring): string =

  let v_ms = fcQAbstractAudioOutput_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QAbstractAudioOutput, s: cstring): string =

  let v_ms = fcQAbstractAudioOutput_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc start*(self: QAbstractAudioOutput, device: gen_qiodevice.QIODevice): void =

  fcQAbstractAudioOutput_start(self.h, device.h)

proc start2*(self: QAbstractAudioOutput, ): gen_qiodevice.QIODevice =

  gen_qiodevice.QIODevice(h: fcQAbstractAudioOutput_start2(self.h))

proc stop*(self: QAbstractAudioOutput, ): void =

  fcQAbstractAudioOutput_stop(self.h)

proc reset*(self: QAbstractAudioOutput, ): void =

  fcQAbstractAudioOutput_reset(self.h)

proc suspend*(self: QAbstractAudioOutput, ): void =

  fcQAbstractAudioOutput_suspend(self.h)

proc resume*(self: QAbstractAudioOutput, ): void =

  fcQAbstractAudioOutput_resume(self.h)

proc bytesFree*(self: QAbstractAudioOutput, ): cint =

  fcQAbstractAudioOutput_bytesFree(self.h)

proc periodSize*(self: QAbstractAudioOutput, ): cint =

  fcQAbstractAudioOutput_periodSize(self.h)

proc setBufferSize*(self: QAbstractAudioOutput, value: cint): void =

  fcQAbstractAudioOutput_setBufferSize(self.h, value)

proc bufferSize*(self: QAbstractAudioOutput, ): cint =

  fcQAbstractAudioOutput_bufferSize(self.h)

proc setNotifyInterval*(self: QAbstractAudioOutput, milliSeconds: cint): void =

  fcQAbstractAudioOutput_setNotifyInterval(self.h, milliSeconds)

proc notifyInterval*(self: QAbstractAudioOutput, ): cint =

  fcQAbstractAudioOutput_notifyInterval(self.h)

proc processedUSecs*(self: QAbstractAudioOutput, ): clonglong =

  fcQAbstractAudioOutput_processedUSecs(self.h)

proc elapsedUSecs*(self: QAbstractAudioOutput, ): clonglong =

  fcQAbstractAudioOutput_elapsedUSecs(self.h)

proc error*(self: QAbstractAudioOutput, ): gen_qaudio.QAudioError =

  gen_qaudio.QAudioError(fcQAbstractAudioOutput_error(self.h))

proc state*(self: QAbstractAudioOutput, ): gen_qaudio.QAudioState =

  gen_qaudio.QAudioState(fcQAbstractAudioOutput_state(self.h))

proc setFormat*(self: QAbstractAudioOutput, fmt: gen_qaudioformat.QAudioFormat): void =

  fcQAbstractAudioOutput_setFormat(self.h, fmt.h)

proc format*(self: QAbstractAudioOutput, ): gen_qaudioformat.QAudioFormat =

  gen_qaudioformat.QAudioFormat(h: fcQAbstractAudioOutput_format(self.h))

proc setVolume*(self: QAbstractAudioOutput, volume: float64): void =

  fcQAbstractAudioOutput_setVolume(self.h, volume)

proc volume*(self: QAbstractAudioOutput, ): float64 =

  fcQAbstractAudioOutput_volume(self.h)

proc category*(self: QAbstractAudioOutput, ): string =

  let v_ms = fcQAbstractAudioOutput_category(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCategory*(self: QAbstractAudioOutput, category: string): void =

  fcQAbstractAudioOutput_setCategory(self.h, struct_miqt_string(data: category, len: csize_t(len(category))))

proc errorChanged*(self: QAbstractAudioOutput, error: gen_qaudio.QAudioError): void =

  fcQAbstractAudioOutput_errorChanged(self.h, cint(error))

proc miqt_exec_callback_QAbstractAudioOutput_errorChanged(slot: int, error: cint) {.exportc.} =
  type Cb = proc(error: gen_qaudio.QAudioError)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qaudio.QAudioError(error)


  nimfunc[](slotval1)

proc onerrorChanged*(self: QAbstractAudioOutput, slot: proc(error: gen_qaudio.QAudioError)) =
  type Cb = proc(error: gen_qaudio.QAudioError)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractAudioOutput_connect_errorChanged(self.h, cast[int](addr tmp[]))
proc stateChanged*(self: QAbstractAudioOutput, state: gen_qaudio.QAudioState): void =

  fcQAbstractAudioOutput_stateChanged(self.h, cint(state))

proc miqt_exec_callback_QAbstractAudioOutput_stateChanged(slot: int, state: cint) {.exportc.} =
  type Cb = proc(state: gen_qaudio.QAudioState)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qaudio.QAudioState(state)


  nimfunc[](slotval1)

proc onstateChanged*(self: QAbstractAudioOutput, slot: proc(state: gen_qaudio.QAudioState)) =
  type Cb = proc(state: gen_qaudio.QAudioState)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractAudioOutput_connect_stateChanged(self.h, cast[int](addr tmp[]))
proc notify*(self: QAbstractAudioOutput, ): void =

  fcQAbstractAudioOutput_notify(self.h)

proc miqt_exec_callback_QAbstractAudioOutput_notify(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onnotify*(self: QAbstractAudioOutput, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractAudioOutput_connect_notify(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QAbstractAudioOutput, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractAudioOutput_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAbstractAudioOutput, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractAudioOutput_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QAbstractAudioOutput, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractAudioOutput_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QAbstractAudioOutput, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractAudioOutput_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QAbstractAudioOutput) =
  fcQAbstractAudioOutput_delete(self.h)

func init*(T: type QAbstractAudioInput, h: ptr cQAbstractAudioInput): QAbstractAudioInput =
  T(h: h)
proc metaObject*(self: QAbstractAudioInput, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAbstractAudioInput_metaObject(self.h))

proc metacast*(self: QAbstractAudioInput, param1: cstring): pointer =

  fcQAbstractAudioInput_metacast(self.h, param1)

proc metacall*(self: QAbstractAudioInput, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAbstractAudioInput_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAbstractAudioInput, s: cstring): string =

  let v_ms = fcQAbstractAudioInput_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QAbstractAudioInput, s: cstring): string =

  let v_ms = fcQAbstractAudioInput_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc start*(self: QAbstractAudioInput, device: gen_qiodevice.QIODevice): void =

  fcQAbstractAudioInput_start(self.h, device.h)

proc start2*(self: QAbstractAudioInput, ): gen_qiodevice.QIODevice =

  gen_qiodevice.QIODevice(h: fcQAbstractAudioInput_start2(self.h))

proc stop*(self: QAbstractAudioInput, ): void =

  fcQAbstractAudioInput_stop(self.h)

proc reset*(self: QAbstractAudioInput, ): void =

  fcQAbstractAudioInput_reset(self.h)

proc suspend*(self: QAbstractAudioInput, ): void =

  fcQAbstractAudioInput_suspend(self.h)

proc resume*(self: QAbstractAudioInput, ): void =

  fcQAbstractAudioInput_resume(self.h)

proc bytesReady*(self: QAbstractAudioInput, ): cint =

  fcQAbstractAudioInput_bytesReady(self.h)

proc periodSize*(self: QAbstractAudioInput, ): cint =

  fcQAbstractAudioInput_periodSize(self.h)

proc setBufferSize*(self: QAbstractAudioInput, value: cint): void =

  fcQAbstractAudioInput_setBufferSize(self.h, value)

proc bufferSize*(self: QAbstractAudioInput, ): cint =

  fcQAbstractAudioInput_bufferSize(self.h)

proc setNotifyInterval*(self: QAbstractAudioInput, milliSeconds: cint): void =

  fcQAbstractAudioInput_setNotifyInterval(self.h, milliSeconds)

proc notifyInterval*(self: QAbstractAudioInput, ): cint =

  fcQAbstractAudioInput_notifyInterval(self.h)

proc processedUSecs*(self: QAbstractAudioInput, ): clonglong =

  fcQAbstractAudioInput_processedUSecs(self.h)

proc elapsedUSecs*(self: QAbstractAudioInput, ): clonglong =

  fcQAbstractAudioInput_elapsedUSecs(self.h)

proc error*(self: QAbstractAudioInput, ): gen_qaudio.QAudioError =

  gen_qaudio.QAudioError(fcQAbstractAudioInput_error(self.h))

proc state*(self: QAbstractAudioInput, ): gen_qaudio.QAudioState =

  gen_qaudio.QAudioState(fcQAbstractAudioInput_state(self.h))

proc setFormat*(self: QAbstractAudioInput, fmt: gen_qaudioformat.QAudioFormat): void =

  fcQAbstractAudioInput_setFormat(self.h, fmt.h)

proc format*(self: QAbstractAudioInput, ): gen_qaudioformat.QAudioFormat =

  gen_qaudioformat.QAudioFormat(h: fcQAbstractAudioInput_format(self.h))

proc setVolume*(self: QAbstractAudioInput, volume: float64): void =

  fcQAbstractAudioInput_setVolume(self.h, volume)

proc volume*(self: QAbstractAudioInput, ): float64 =

  fcQAbstractAudioInput_volume(self.h)

proc errorChanged*(self: QAbstractAudioInput, error: gen_qaudio.QAudioError): void =

  fcQAbstractAudioInput_errorChanged(self.h, cint(error))

proc miqt_exec_callback_QAbstractAudioInput_errorChanged(slot: int, error: cint) {.exportc.} =
  type Cb = proc(error: gen_qaudio.QAudioError)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qaudio.QAudioError(error)


  nimfunc[](slotval1)

proc onerrorChanged*(self: QAbstractAudioInput, slot: proc(error: gen_qaudio.QAudioError)) =
  type Cb = proc(error: gen_qaudio.QAudioError)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractAudioInput_connect_errorChanged(self.h, cast[int](addr tmp[]))
proc stateChanged*(self: QAbstractAudioInput, state: gen_qaudio.QAudioState): void =

  fcQAbstractAudioInput_stateChanged(self.h, cint(state))

proc miqt_exec_callback_QAbstractAudioInput_stateChanged(slot: int, state: cint) {.exportc.} =
  type Cb = proc(state: gen_qaudio.QAudioState)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qaudio.QAudioState(state)


  nimfunc[](slotval1)

proc onstateChanged*(self: QAbstractAudioInput, slot: proc(state: gen_qaudio.QAudioState)) =
  type Cb = proc(state: gen_qaudio.QAudioState)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractAudioInput_connect_stateChanged(self.h, cast[int](addr tmp[]))
proc notify*(self: QAbstractAudioInput, ): void =

  fcQAbstractAudioInput_notify(self.h)

proc miqt_exec_callback_QAbstractAudioInput_notify(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onnotify*(self: QAbstractAudioInput, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractAudioInput_connect_notify(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QAbstractAudioInput, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractAudioInput_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAbstractAudioInput, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractAudioInput_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QAbstractAudioInput, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractAudioInput_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QAbstractAudioInput, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractAudioInput_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QAbstractAudioInput) =
  fcQAbstractAudioInput_delete(self.h)
