import Qt5Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5Widgets")
{.compile("gen_qsettings.cpp", cflags).}


type QSettingsStatus* = cint
const
  QSettingsNoError* = 0
  QSettingsAccessError* = 1
  QSettingsFormatError* = 2



type QSettingsFormat* = cint
const
  QSettingsNativeFormat* = 0
  QSettingsIniFormat* = 1
  QSettingsInvalidFormat* = 16
  QSettingsCustomFormat1* = 17
  QSettingsCustomFormat2* = 18
  QSettingsCustomFormat3* = 19
  QSettingsCustomFormat4* = 20
  QSettingsCustomFormat5* = 21
  QSettingsCustomFormat6* = 22
  QSettingsCustomFormat7* = 23
  QSettingsCustomFormat8* = 24
  QSettingsCustomFormat9* = 25
  QSettingsCustomFormat10* = 26
  QSettingsCustomFormat11* = 27
  QSettingsCustomFormat12* = 28
  QSettingsCustomFormat13* = 29
  QSettingsCustomFormat14* = 30
  QSettingsCustomFormat15* = 31
  QSettingsCustomFormat16* = 32



type QSettingsScope* = cint
const
  QSettingsUserScope* = 0
  QSettingsSystemScope* = 1



import gen_qsettings_types
export gen_qsettings_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qtextcodec,
  gen_qvariant
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qtextcodec,
  gen_qvariant

type cQSettings*{.exportc: "QSettings", incompleteStruct.} = object

proc fcQSettings_new(organization: struct_miqt_string): ptr cQSettings {.importc: "QSettings_new".}
proc fcQSettings_new2(scope: cint, organization: struct_miqt_string): ptr cQSettings {.importc: "QSettings_new2".}
proc fcQSettings_new3(format: cint, scope: cint, organization: struct_miqt_string): ptr cQSettings {.importc: "QSettings_new3".}
proc fcQSettings_new4(fileName: struct_miqt_string, format: cint): ptr cQSettings {.importc: "QSettings_new4".}
proc fcQSettings_new5(): ptr cQSettings {.importc: "QSettings_new5".}
proc fcQSettings_new6(scope: cint): ptr cQSettings {.importc: "QSettings_new6".}
proc fcQSettings_new7(organization: struct_miqt_string, application: struct_miqt_string): ptr cQSettings {.importc: "QSettings_new7".}
proc fcQSettings_new8(organization: struct_miqt_string, application: struct_miqt_string, parent: pointer): ptr cQSettings {.importc: "QSettings_new8".}
proc fcQSettings_new9(scope: cint, organization: struct_miqt_string, application: struct_miqt_string): ptr cQSettings {.importc: "QSettings_new9".}
proc fcQSettings_new10(scope: cint, organization: struct_miqt_string, application: struct_miqt_string, parent: pointer): ptr cQSettings {.importc: "QSettings_new10".}
proc fcQSettings_new11(format: cint, scope: cint, organization: struct_miqt_string, application: struct_miqt_string): ptr cQSettings {.importc: "QSettings_new11".}
proc fcQSettings_new12(format: cint, scope: cint, organization: struct_miqt_string, application: struct_miqt_string, parent: pointer): ptr cQSettings {.importc: "QSettings_new12".}
proc fcQSettings_new13(fileName: struct_miqt_string, format: cint, parent: pointer): ptr cQSettings {.importc: "QSettings_new13".}
proc fcQSettings_new14(parent: pointer): ptr cQSettings {.importc: "QSettings_new14".}
proc fcQSettings_new15(scope: cint, parent: pointer): ptr cQSettings {.importc: "QSettings_new15".}
proc fcQSettings_metaObject(self: pointer, ): pointer {.importc: "QSettings_metaObject".}
proc fcQSettings_metacast(self: pointer, param1: cstring): pointer {.importc: "QSettings_metacast".}
proc fcQSettings_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSettings_metacall".}
proc fcQSettings_tr(s: cstring): struct_miqt_string {.importc: "QSettings_tr".}
proc fcQSettings_trUtf8(s: cstring): struct_miqt_string {.importc: "QSettings_trUtf8".}
proc fcQSettings_clear(self: pointer, ): void {.importc: "QSettings_clear".}
proc fcQSettings_sync(self: pointer, ): void {.importc: "QSettings_sync".}
proc fcQSettings_status(self: pointer, ): cint {.importc: "QSettings_status".}
proc fcQSettings_isAtomicSyncRequired(self: pointer, ): bool {.importc: "QSettings_isAtomicSyncRequired".}
proc fcQSettings_setAtomicSyncRequired(self: pointer, enable: bool): void {.importc: "QSettings_setAtomicSyncRequired".}
proc fcQSettings_beginGroup(self: pointer, prefix: struct_miqt_string): void {.importc: "QSettings_beginGroup".}
proc fcQSettings_endGroup(self: pointer, ): void {.importc: "QSettings_endGroup".}
proc fcQSettings_group(self: pointer, ): struct_miqt_string {.importc: "QSettings_group".}
proc fcQSettings_beginReadArray(self: pointer, prefix: struct_miqt_string): cint {.importc: "QSettings_beginReadArray".}
proc fcQSettings_beginWriteArray(self: pointer, prefix: struct_miqt_string): void {.importc: "QSettings_beginWriteArray".}
proc fcQSettings_endArray(self: pointer, ): void {.importc: "QSettings_endArray".}
proc fcQSettings_setArrayIndex(self: pointer, i: cint): void {.importc: "QSettings_setArrayIndex".}
proc fcQSettings_allKeys(self: pointer, ): struct_miqt_array {.importc: "QSettings_allKeys".}
proc fcQSettings_childKeys(self: pointer, ): struct_miqt_array {.importc: "QSettings_childKeys".}
proc fcQSettings_childGroups(self: pointer, ): struct_miqt_array {.importc: "QSettings_childGroups".}
proc fcQSettings_isWritable(self: pointer, ): bool {.importc: "QSettings_isWritable".}
proc fcQSettings_setValue(self: pointer, key: struct_miqt_string, value: pointer): void {.importc: "QSettings_setValue".}
proc fcQSettings_value(self: pointer, key: struct_miqt_string): pointer {.importc: "QSettings_value".}
proc fcQSettings_remove(self: pointer, key: struct_miqt_string): void {.importc: "QSettings_remove".}
proc fcQSettings_contains(self: pointer, key: struct_miqt_string): bool {.importc: "QSettings_contains".}
proc fcQSettings_setFallbacksEnabled(self: pointer, b: bool): void {.importc: "QSettings_setFallbacksEnabled".}
proc fcQSettings_fallbacksEnabled(self: pointer, ): bool {.importc: "QSettings_fallbacksEnabled".}
proc fcQSettings_fileName(self: pointer, ): struct_miqt_string {.importc: "QSettings_fileName".}
proc fcQSettings_format(self: pointer, ): cint {.importc: "QSettings_format".}
proc fcQSettings_scope(self: pointer, ): cint {.importc: "QSettings_scope".}
proc fcQSettings_organizationName(self: pointer, ): struct_miqt_string {.importc: "QSettings_organizationName".}
proc fcQSettings_applicationName(self: pointer, ): struct_miqt_string {.importc: "QSettings_applicationName".}
proc fcQSettings_setIniCodec(self: pointer, codec: pointer): void {.importc: "QSettings_setIniCodec".}
proc fcQSettings_setIniCodecWithCodecName(self: pointer, codecName: cstring): void {.importc: "QSettings_setIniCodecWithCodecName".}
proc fcQSettings_iniCodec(self: pointer, ): pointer {.importc: "QSettings_iniCodec".}
proc fcQSettings_setDefaultFormat(format: cint): void {.importc: "QSettings_setDefaultFormat".}
proc fcQSettings_defaultFormat(): cint {.importc: "QSettings_defaultFormat".}
proc fcQSettings_setSystemIniPath(dir: struct_miqt_string): void {.importc: "QSettings_setSystemIniPath".}
proc fcQSettings_setUserIniPath(dir: struct_miqt_string): void {.importc: "QSettings_setUserIniPath".}
proc fcQSettings_setPath(format: cint, scope: cint, path: struct_miqt_string): void {.importc: "QSettings_setPath".}
proc fcQSettings_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSettings_tr2".}
proc fcQSettings_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSettings_tr3".}
proc fcQSettings_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSettings_trUtf82".}
proc fcQSettings_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSettings_trUtf83".}
proc fcQSettings_beginWriteArray2(self: pointer, prefix: struct_miqt_string, size: cint): void {.importc: "QSettings_beginWriteArray2".}
proc fcQSettings_value2(self: pointer, key: struct_miqt_string, defaultValue: pointer): pointer {.importc: "QSettings_value2".}
proc fQSettings_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QSettings_virtualbase_metaObject".}
proc fcQSettings_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QSettings_override_virtual_metaObject".}
proc fQSettings_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QSettings_virtualbase_metacast".}
proc fcQSettings_override_virtual_metacast(self: pointer, slot: int) {.importc: "QSettings_override_virtual_metacast".}
proc fQSettings_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSettings_virtualbase_metacall".}
proc fcQSettings_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSettings_override_virtual_metacall".}
proc fQSettings_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSettings_virtualbase_event".}
proc fcQSettings_override_virtual_event(self: pointer, slot: int) {.importc: "QSettings_override_virtual_event".}
proc fQSettings_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSettings_virtualbase_eventFilter".}
proc fcQSettings_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSettings_override_virtual_eventFilter".}
proc fQSettings_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSettings_virtualbase_timerEvent".}
proc fcQSettings_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSettings_override_virtual_timerEvent".}
proc fQSettings_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSettings_virtualbase_childEvent".}
proc fcQSettings_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSettings_override_virtual_childEvent".}
proc fQSettings_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSettings_virtualbase_customEvent".}
proc fcQSettings_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSettings_override_virtual_customEvent".}
proc fQSettings_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSettings_virtualbase_connectNotify".}
proc fcQSettings_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSettings_override_virtual_connectNotify".}
proc fQSettings_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSettings_virtualbase_disconnectNotify".}
proc fcQSettings_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSettings_override_virtual_disconnectNotify".}
proc fcQSettings_staticMetaObject(): pointer {.importc: "QSettings_staticMetaObject".}
proc fcQSettings_delete(self: pointer) {.importc: "QSettings_delete".}


func init*(T: type QSettings, h: ptr cQSettings): QSettings =
  T(h: h)
proc create*(T: type QSettings, organization: string): QSettings =

  QSettings.init(fcQSettings_new(struct_miqt_string(data: organization, len: csize_t(len(organization)))))
proc create*(T: type QSettings, scope: QSettingsScope, organization: string): QSettings =

  QSettings.init(fcQSettings_new2(cint(scope), struct_miqt_string(data: organization, len: csize_t(len(organization)))))
proc create*(T: type QSettings, format: QSettingsFormat, scope: QSettingsScope, organization: string): QSettings =

  QSettings.init(fcQSettings_new3(cint(format), cint(scope), struct_miqt_string(data: organization, len: csize_t(len(organization)))))
proc create*(T: type QSettings, fileName: string, format: QSettingsFormat): QSettings =

  QSettings.init(fcQSettings_new4(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(format)))
proc create*(T: type QSettings, ): QSettings =

  QSettings.init(fcQSettings_new5())
proc create*(T: type QSettings, scope: QSettingsScope): QSettings =

  QSettings.init(fcQSettings_new6(cint(scope)))
proc create*(T: type QSettings, organization: string, application: string): QSettings =

  QSettings.init(fcQSettings_new7(struct_miqt_string(data: organization, len: csize_t(len(organization))), struct_miqt_string(data: application, len: csize_t(len(application)))))
proc create*(T: type QSettings, organization: string, application: string, parent: gen_qobject.QObject): QSettings =

  QSettings.init(fcQSettings_new8(struct_miqt_string(data: organization, len: csize_t(len(organization))), struct_miqt_string(data: application, len: csize_t(len(application))), parent.h))
proc create*(T: type QSettings, scope: QSettingsScope, organization: string, application: string): QSettings =

  QSettings.init(fcQSettings_new9(cint(scope), struct_miqt_string(data: organization, len: csize_t(len(organization))), struct_miqt_string(data: application, len: csize_t(len(application)))))
proc create*(T: type QSettings, scope: QSettingsScope, organization: string, application: string, parent: gen_qobject.QObject): QSettings =

  QSettings.init(fcQSettings_new10(cint(scope), struct_miqt_string(data: organization, len: csize_t(len(organization))), struct_miqt_string(data: application, len: csize_t(len(application))), parent.h))
proc create*(T: type QSettings, format: QSettingsFormat, scope: QSettingsScope, organization: string, application: string): QSettings =

  QSettings.init(fcQSettings_new11(cint(format), cint(scope), struct_miqt_string(data: organization, len: csize_t(len(organization))), struct_miqt_string(data: application, len: csize_t(len(application)))))
proc create*(T: type QSettings, format: QSettingsFormat, scope: QSettingsScope, organization: string, application: string, parent: gen_qobject.QObject): QSettings =

  QSettings.init(fcQSettings_new12(cint(format), cint(scope), struct_miqt_string(data: organization, len: csize_t(len(organization))), struct_miqt_string(data: application, len: csize_t(len(application))), parent.h))
proc create*(T: type QSettings, fileName: string, format: QSettingsFormat, parent: gen_qobject.QObject): QSettings =

  QSettings.init(fcQSettings_new13(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(format), parent.h))
proc create*(T: type QSettings, parent: gen_qobject.QObject): QSettings =

  QSettings.init(fcQSettings_new14(parent.h))
proc create*(T: type QSettings, scope: QSettingsScope, parent: gen_qobject.QObject): QSettings =

  QSettings.init(fcQSettings_new15(cint(scope), parent.h))
proc metaObject*(self: QSettings, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSettings_metaObject(self.h))

proc metacast*(self: QSettings, param1: cstring): pointer =

  fcQSettings_metacast(self.h, param1)

proc metacall*(self: QSettings, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQSettings_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QSettings, s: cstring): string =

  let v_ms = fcQSettings_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QSettings, s: cstring): string =

  let v_ms = fcQSettings_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc clear*(self: QSettings, ): void =

  fcQSettings_clear(self.h)

proc sync*(self: QSettings, ): void =

  fcQSettings_sync(self.h)

proc status*(self: QSettings, ): QSettingsStatus =

  QSettingsStatus(fcQSettings_status(self.h))

proc isAtomicSyncRequired*(self: QSettings, ): bool =

  fcQSettings_isAtomicSyncRequired(self.h)

proc setAtomicSyncRequired*(self: QSettings, enable: bool): void =

  fcQSettings_setAtomicSyncRequired(self.h, enable)

proc beginGroup*(self: QSettings, prefix: string): void =

  fcQSettings_beginGroup(self.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc endGroup*(self: QSettings, ): void =

  fcQSettings_endGroup(self.h)

proc group*(self: QSettings, ): string =

  let v_ms = fcQSettings_group(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc beginReadArray*(self: QSettings, prefix: string): cint =

  fcQSettings_beginReadArray(self.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc beginWriteArray*(self: QSettings, prefix: string): void =

  fcQSettings_beginWriteArray(self.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc endArray*(self: QSettings, ): void =

  fcQSettings_endArray(self.h)

proc setArrayIndex*(self: QSettings, i: cint): void =

  fcQSettings_setArrayIndex(self.h, i)

proc allKeys*(self: QSettings, ): seq[string] =

  var v_ma = fcQSettings_allKeys(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc childKeys*(self: QSettings, ): seq[string] =

  var v_ma = fcQSettings_childKeys(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc childGroups*(self: QSettings, ): seq[string] =

  var v_ma = fcQSettings_childGroups(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc isWritable*(self: QSettings, ): bool =

  fcQSettings_isWritable(self.h)

proc setValue*(self: QSettings, key: string, value: gen_qvariant.QVariant): void =

  fcQSettings_setValue(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), value.h)

proc value*(self: QSettings, key: string): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQSettings_value(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc remove*(self: QSettings, key: string): void =

  fcQSettings_remove(self.h, struct_miqt_string(data: key, len: csize_t(len(key))))

proc contains*(self: QSettings, key: string): bool =

  fcQSettings_contains(self.h, struct_miqt_string(data: key, len: csize_t(len(key))))

proc setFallbacksEnabled*(self: QSettings, b: bool): void =

  fcQSettings_setFallbacksEnabled(self.h, b)

proc fallbacksEnabled*(self: QSettings, ): bool =

  fcQSettings_fallbacksEnabled(self.h)

proc fileName*(self: QSettings, ): string =

  let v_ms = fcQSettings_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc format*(self: QSettings, ): QSettingsFormat =

  QSettingsFormat(fcQSettings_format(self.h))

proc scope*(self: QSettings, ): QSettingsScope =

  QSettingsScope(fcQSettings_scope(self.h))

proc organizationName*(self: QSettings, ): string =

  let v_ms = fcQSettings_organizationName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc applicationName*(self: QSettings, ): string =

  let v_ms = fcQSettings_applicationName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setIniCodec*(self: QSettings, codec: gen_qtextcodec.QTextCodec): void =

  fcQSettings_setIniCodec(self.h, codec.h)

proc setIniCodecWithCodecName*(self: QSettings, codecName: cstring): void =

  fcQSettings_setIniCodecWithCodecName(self.h, codecName)

proc iniCodec*(self: QSettings, ): gen_qtextcodec.QTextCodec =

  gen_qtextcodec.QTextCodec(h: fcQSettings_iniCodec(self.h))

proc setDefaultFormat*(_: type QSettings, format: QSettingsFormat): void =

  fcQSettings_setDefaultFormat(cint(format))

proc defaultFormat*(_: type QSettings, ): QSettingsFormat =

  QSettingsFormat(fcQSettings_defaultFormat())

proc setSystemIniPath*(_: type QSettings, dir: string): void =

  fcQSettings_setSystemIniPath(struct_miqt_string(data: dir, len: csize_t(len(dir))))

proc setUserIniPath*(_: type QSettings, dir: string): void =

  fcQSettings_setUserIniPath(struct_miqt_string(data: dir, len: csize_t(len(dir))))

proc setPath*(_: type QSettings, format: QSettingsFormat, scope: QSettingsScope, path: string): void =

  fcQSettings_setPath(cint(format), cint(scope), struct_miqt_string(data: path, len: csize_t(len(path))))

proc tr2*(_: type QSettings, s: cstring, c: cstring): string =

  let v_ms = fcQSettings_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QSettings, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSettings_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QSettings, s: cstring, c: cstring): string =

  let v_ms = fcQSettings_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QSettings, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSettings_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc beginWriteArray2*(self: QSettings, prefix: string, size: cint): void =

  fcQSettings_beginWriteArray2(self.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))), size)

proc value2*(self: QSettings, key: string, defaultValue: gen_qvariant.QVariant): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQSettings_value2(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), defaultValue.h))

proc callVirtualBase_metaObject(self: QSettings, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQSettings_virtualbase_metaObject(self.h))

type QSettingsmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QSettings, slot: proc(super: QSettingsmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QSettingsmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSettings_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSettings_metaObject(self: ptr cQSettings, slot: int): pointer {.exportc: "miqt_exec_callback_QSettings_metaObject ".} =
  type Cb = proc(super: QSettingsmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QSettings(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QSettings, param1: cstring): pointer =


  fQSettings_virtualbase_metacast(self.h, param1)

type QSettingsmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QSettings, slot: proc(super: QSettingsmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QSettingsmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSettings_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSettings_metacast(self: ptr cQSettings, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QSettings_metacast ".} =
  type Cb = proc(super: QSettingsmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QSettings(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QSettings, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQSettings_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSettingsmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QSettings, slot: proc(super: QSettingsmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QSettingsmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSettings_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSettings_metacall(self: ptr cQSettings, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSettings_metacall ".} =
  type Cb = proc(super: QSettingsmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QSettings(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QSettings, event: gen_qcoreevent.QEvent): bool =


  fQSettings_virtualbase_event(self.h, event.h)

type QSettingseventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QSettings, slot: proc(super: QSettingseventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSettingseventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSettings_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSettings_event(self: ptr cQSettings, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSettings_event ".} =
  type Cb = proc(super: QSettingseventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QSettings(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QSettings, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQSettings_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSettingseventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QSettings, slot: proc(super: QSettingseventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSettingseventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSettings_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSettings_eventFilter(self: ptr cQSettings, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSettings_eventFilter ".} =
  type Cb = proc(super: QSettingseventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QSettings(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QSettings, event: gen_qcoreevent.QTimerEvent): void =


  fQSettings_virtualbase_timerEvent(self.h, event.h)

type QSettingstimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QSettings, slot: proc(super: QSettingstimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSettingstimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSettings_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSettings_timerEvent(self: ptr cQSettings, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSettings_timerEvent ".} =
  type Cb = proc(super: QSettingstimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QSettings(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QSettings, event: gen_qcoreevent.QChildEvent): void =


  fQSettings_virtualbase_childEvent(self.h, event.h)

type QSettingschildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QSettings, slot: proc(super: QSettingschildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSettingschildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSettings_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSettings_childEvent(self: ptr cQSettings, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSettings_childEvent ".} =
  type Cb = proc(super: QSettingschildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QSettings(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QSettings, event: gen_qcoreevent.QEvent): void =


  fQSettings_virtualbase_customEvent(self.h, event.h)

type QSettingscustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QSettings, slot: proc(super: QSettingscustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSettingscustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSettings_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSettings_customEvent(self: ptr cQSettings, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSettings_customEvent ".} =
  type Cb = proc(super: QSettingscustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QSettings(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QSettings, signal: gen_qmetaobject.QMetaMethod): void =


  fQSettings_virtualbase_connectNotify(self.h, signal.h)

type QSettingsconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QSettings, slot: proc(super: QSettingsconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSettingsconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSettings_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSettings_connectNotify(self: ptr cQSettings, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSettings_connectNotify ".} =
  type Cb = proc(super: QSettingsconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QSettings(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QSettings, signal: gen_qmetaobject.QMetaMethod): void =


  fQSettings_virtualbase_disconnectNotify(self.h, signal.h)

type QSettingsdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QSettings, slot: proc(super: QSettingsdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSettingsdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSettings_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSettings_disconnectNotify(self: ptr cQSettings, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSettings_disconnectNotify ".} =
  type Cb = proc(super: QSettingsdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QSettings(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QSettings): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQSettings_staticMetaObject())
proc delete*(self: QSettings) =
  fcQSettings_delete(self.h)
