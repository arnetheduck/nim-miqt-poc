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
{.compile("gen_qfontdatabase.cpp", cflags).}


type QFontDatabaseWritingSystem* = cint
const
  QFontDatabaseAny* = 0
  QFontDatabaseLatin* = 1
  QFontDatabaseGreek* = 2
  QFontDatabaseCyrillic* = 3
  QFontDatabaseArmenian* = 4
  QFontDatabaseHebrew* = 5
  QFontDatabaseArabic* = 6
  QFontDatabaseSyriac* = 7
  QFontDatabaseThaana* = 8
  QFontDatabaseDevanagari* = 9
  QFontDatabaseBengali* = 10
  QFontDatabaseGurmukhi* = 11
  QFontDatabaseGujarati* = 12
  QFontDatabaseOriya* = 13
  QFontDatabaseTamil* = 14
  QFontDatabaseTelugu* = 15
  QFontDatabaseKannada* = 16
  QFontDatabaseMalayalam* = 17
  QFontDatabaseSinhala* = 18
  QFontDatabaseThai* = 19
  QFontDatabaseLao* = 20
  QFontDatabaseTibetan* = 21
  QFontDatabaseMyanmar* = 22
  QFontDatabaseGeorgian* = 23
  QFontDatabaseKhmer* = 24
  QFontDatabaseSimplifiedChinese* = 25
  QFontDatabaseTraditionalChinese* = 26
  QFontDatabaseJapanese* = 27
  QFontDatabaseKorean* = 28
  QFontDatabaseVietnamese* = 29
  QFontDatabaseSymbol* = 30
  QFontDatabaseOther* = 30
  QFontDatabaseOgham* = 31
  QFontDatabaseRunic* = 32
  QFontDatabaseNko* = 33
  QFontDatabaseWritingSystemsCount* = 34



type QFontDatabaseSystemFont* = cint
const
  QFontDatabaseGeneralFont* = 0
  QFontDatabaseFixedFont* = 1
  QFontDatabaseTitleFont* = 2
  QFontDatabaseSmallestReadableFont* = 3



import gen_qfontdatabase_types
export gen_qfontdatabase_types

import
  gen_qfont,
  gen_qfontinfo
export
  gen_qfont,
  gen_qfontinfo

type cQFontDatabase*{.exportc: "QFontDatabase", incompleteStruct.} = object

proc fcQFontDatabase_new(): ptr cQFontDatabase {.importc: "QFontDatabase_new".}
proc fcQFontDatabase_standardSizes(): struct_miqt_array {.importc: "QFontDatabase_standardSizes".}
proc fcQFontDatabase_writingSystems(): struct_miqt_array {.importc: "QFontDatabase_writingSystems".}
proc fcQFontDatabase_writingSystemsWithFamily(family: struct_miqt_string): struct_miqt_array {.importc: "QFontDatabase_writingSystemsWithFamily".}
proc fcQFontDatabase_families(): struct_miqt_array {.importc: "QFontDatabase_families".}
proc fcQFontDatabase_styles(family: struct_miqt_string): struct_miqt_array {.importc: "QFontDatabase_styles".}
proc fcQFontDatabase_pointSizes(family: struct_miqt_string): struct_miqt_array {.importc: "QFontDatabase_pointSizes".}
proc fcQFontDatabase_smoothSizes(family: struct_miqt_string, style: struct_miqt_string): struct_miqt_array {.importc: "QFontDatabase_smoothSizes".}
proc fcQFontDatabase_styleString(font: pointer): struct_miqt_string {.importc: "QFontDatabase_styleString".}
proc fcQFontDatabase_styleStringWithFontInfo(fontInfo: pointer): struct_miqt_string {.importc: "QFontDatabase_styleStringWithFontInfo".}
proc fcQFontDatabase_font(family: struct_miqt_string, style: struct_miqt_string, pointSize: cint): pointer {.importc: "QFontDatabase_font".}
proc fcQFontDatabase_isBitmapScalable(family: struct_miqt_string): bool {.importc: "QFontDatabase_isBitmapScalable".}
proc fcQFontDatabase_isSmoothlyScalable(family: struct_miqt_string): bool {.importc: "QFontDatabase_isSmoothlyScalable".}
proc fcQFontDatabase_isScalable(family: struct_miqt_string): bool {.importc: "QFontDatabase_isScalable".}
proc fcQFontDatabase_isFixedPitch(family: struct_miqt_string): bool {.importc: "QFontDatabase_isFixedPitch".}
proc fcQFontDatabase_italic(family: struct_miqt_string, style: struct_miqt_string): bool {.importc: "QFontDatabase_italic".}
proc fcQFontDatabase_bold(family: struct_miqt_string, style: struct_miqt_string): bool {.importc: "QFontDatabase_bold".}
proc fcQFontDatabase_weight(family: struct_miqt_string, style: struct_miqt_string): cint {.importc: "QFontDatabase_weight".}
proc fcQFontDatabase_hasFamily(family: struct_miqt_string): bool {.importc: "QFontDatabase_hasFamily".}
proc fcQFontDatabase_isPrivateFamily(family: struct_miqt_string): bool {.importc: "QFontDatabase_isPrivateFamily".}
proc fcQFontDatabase_writingSystemName(writingSystem: cint): struct_miqt_string {.importc: "QFontDatabase_writingSystemName".}
proc fcQFontDatabase_writingSystemSample(writingSystem: cint): struct_miqt_string {.importc: "QFontDatabase_writingSystemSample".}
proc fcQFontDatabase_addApplicationFont(fileName: struct_miqt_string): cint {.importc: "QFontDatabase_addApplicationFont".}
proc fcQFontDatabase_addApplicationFontFromData(fontData: struct_miqt_string): cint {.importc: "QFontDatabase_addApplicationFontFromData".}
proc fcQFontDatabase_applicationFontFamilies(id: cint): struct_miqt_array {.importc: "QFontDatabase_applicationFontFamilies".}
proc fcQFontDatabase_removeApplicationFont(id: cint): bool {.importc: "QFontDatabase_removeApplicationFont".}
proc fcQFontDatabase_removeAllApplicationFonts(): bool {.importc: "QFontDatabase_removeAllApplicationFonts".}
proc fcQFontDatabase_systemFont(typeVal: cint): pointer {.importc: "QFontDatabase_systemFont".}
proc fcQFontDatabase_families1(writingSystem: cint): struct_miqt_array {.importc: "QFontDatabase_families1".}
proc fcQFontDatabase_pointSizes2(family: struct_miqt_string, style: struct_miqt_string): struct_miqt_array {.importc: "QFontDatabase_pointSizes2".}
proc fcQFontDatabase_isBitmapScalable2(family: struct_miqt_string, style: struct_miqt_string): bool {.importc: "QFontDatabase_isBitmapScalable2".}
proc fcQFontDatabase_isSmoothlyScalable2(family: struct_miqt_string, style: struct_miqt_string): bool {.importc: "QFontDatabase_isSmoothlyScalable2".}
proc fcQFontDatabase_isScalable2(family: struct_miqt_string, style: struct_miqt_string): bool {.importc: "QFontDatabase_isScalable2".}
proc fcQFontDatabase_isFixedPitch2(family: struct_miqt_string, style: struct_miqt_string): bool {.importc: "QFontDatabase_isFixedPitch2".}
proc fcQFontDatabase_delete(self: pointer) {.importc: "QFontDatabase_delete".}


func init*(T: type QFontDatabase, h: ptr cQFontDatabase): QFontDatabase =
  T(h: h)
proc create*(T: type QFontDatabase, ): QFontDatabase =

  QFontDatabase.init(fcQFontDatabase_new())
proc standardSizes*(_: type QFontDatabase, ): seq[cint] =

  var v_ma = fcQFontDatabase_standardSizes()
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc writingSystems*(_: type QFontDatabase, ): seq[QFontDatabaseWritingSystem] =

  var v_ma = fcQFontDatabase_writingSystems()
  var vx_ret = newSeq[QFontDatabaseWritingSystem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QFontDatabaseWritingSystem(v_outCast[i])
  vx_ret

proc writingSystemsWithFamily*(_: type QFontDatabase, family: string): seq[QFontDatabaseWritingSystem] =

  var v_ma = fcQFontDatabase_writingSystemsWithFamily(struct_miqt_string(data: family, len: csize_t(len(family))))
  var vx_ret = newSeq[QFontDatabaseWritingSystem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QFontDatabaseWritingSystem(v_outCast[i])
  vx_ret

proc families*(_: type QFontDatabase, ): seq[string] =

  var v_ma = fcQFontDatabase_families()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc styles*(_: type QFontDatabase, family: string): seq[string] =

  var v_ma = fcQFontDatabase_styles(struct_miqt_string(data: family, len: csize_t(len(family))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc pointSizes*(_: type QFontDatabase, family: string): seq[cint] =

  var v_ma = fcQFontDatabase_pointSizes(struct_miqt_string(data: family, len: csize_t(len(family))))
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc smoothSizes*(_: type QFontDatabase, family: string, style: string): seq[cint] =

  var v_ma = fcQFontDatabase_smoothSizes(struct_miqt_string(data: family, len: csize_t(len(family))), struct_miqt_string(data: style, len: csize_t(len(style))))
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc styleString*(_: type QFontDatabase, font: gen_qfont.QFont): string =

  let v_ms = fcQFontDatabase_styleString(font.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc styleStringWithFontInfo*(_: type QFontDatabase, fontInfo: gen_qfontinfo.QFontInfo): string =

  let v_ms = fcQFontDatabase_styleStringWithFontInfo(fontInfo.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc font*(_: type QFontDatabase, family: string, style: string, pointSize: cint): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQFontDatabase_font(struct_miqt_string(data: family, len: csize_t(len(family))), struct_miqt_string(data: style, len: csize_t(len(style))), pointSize))

proc isBitmapScalable*(_: type QFontDatabase, family: string): bool =

  fcQFontDatabase_isBitmapScalable(struct_miqt_string(data: family, len: csize_t(len(family))))

proc isSmoothlyScalable*(_: type QFontDatabase, family: string): bool =

  fcQFontDatabase_isSmoothlyScalable(struct_miqt_string(data: family, len: csize_t(len(family))))

proc isScalable*(_: type QFontDatabase, family: string): bool =

  fcQFontDatabase_isScalable(struct_miqt_string(data: family, len: csize_t(len(family))))

proc isFixedPitch*(_: type QFontDatabase, family: string): bool =

  fcQFontDatabase_isFixedPitch(struct_miqt_string(data: family, len: csize_t(len(family))))

proc italic*(_: type QFontDatabase, family: string, style: string): bool =

  fcQFontDatabase_italic(struct_miqt_string(data: family, len: csize_t(len(family))), struct_miqt_string(data: style, len: csize_t(len(style))))

proc bold*(_: type QFontDatabase, family: string, style: string): bool =

  fcQFontDatabase_bold(struct_miqt_string(data: family, len: csize_t(len(family))), struct_miqt_string(data: style, len: csize_t(len(style))))

proc weight*(_: type QFontDatabase, family: string, style: string): cint =

  fcQFontDatabase_weight(struct_miqt_string(data: family, len: csize_t(len(family))), struct_miqt_string(data: style, len: csize_t(len(style))))

proc hasFamily*(_: type QFontDatabase, family: string): bool =

  fcQFontDatabase_hasFamily(struct_miqt_string(data: family, len: csize_t(len(family))))

proc isPrivateFamily*(_: type QFontDatabase, family: string): bool =

  fcQFontDatabase_isPrivateFamily(struct_miqt_string(data: family, len: csize_t(len(family))))

proc writingSystemName*(_: type QFontDatabase, writingSystem: QFontDatabaseWritingSystem): string =

  let v_ms = fcQFontDatabase_writingSystemName(cint(writingSystem))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc writingSystemSample*(_: type QFontDatabase, writingSystem: QFontDatabaseWritingSystem): string =

  let v_ms = fcQFontDatabase_writingSystemSample(cint(writingSystem))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addApplicationFont*(_: type QFontDatabase, fileName: string): cint =

  fcQFontDatabase_addApplicationFont(struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc addApplicationFontFromData*(_: type QFontDatabase, fontData: seq[byte]): cint =

  fcQFontDatabase_addApplicationFontFromData(struct_miqt_string(data: cast[cstring](if len(fontData) == 0: nil else: unsafeAddr fontData[0]), len: csize_t(len(fontData))))

proc applicationFontFamilies*(_: type QFontDatabase, id: cint): seq[string] =

  var v_ma = fcQFontDatabase_applicationFontFamilies(id)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc removeApplicationFont*(_: type QFontDatabase, id: cint): bool =

  fcQFontDatabase_removeApplicationFont(id)

proc removeAllApplicationFonts*(_: type QFontDatabase, ): bool =

  fcQFontDatabase_removeAllApplicationFonts()

proc systemFont*(_: type QFontDatabase, typeVal: QFontDatabaseSystemFont): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQFontDatabase_systemFont(cint(typeVal)))

proc families1*(_: type QFontDatabase, writingSystem: QFontDatabaseWritingSystem): seq[string] =

  var v_ma = fcQFontDatabase_families1(cint(writingSystem))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc pointSizes2*(_: type QFontDatabase, family: string, style: string): seq[cint] =

  var v_ma = fcQFontDatabase_pointSizes2(struct_miqt_string(data: family, len: csize_t(len(family))), struct_miqt_string(data: style, len: csize_t(len(style))))
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc isBitmapScalable2*(_: type QFontDatabase, family: string, style: string): bool =

  fcQFontDatabase_isBitmapScalable2(struct_miqt_string(data: family, len: csize_t(len(family))), struct_miqt_string(data: style, len: csize_t(len(style))))

proc isSmoothlyScalable2*(_: type QFontDatabase, family: string, style: string): bool =

  fcQFontDatabase_isSmoothlyScalable2(struct_miqt_string(data: family, len: csize_t(len(family))), struct_miqt_string(data: style, len: csize_t(len(style))))

proc isScalable2*(_: type QFontDatabase, family: string, style: string): bool =

  fcQFontDatabase_isScalable2(struct_miqt_string(data: family, len: csize_t(len(family))), struct_miqt_string(data: style, len: csize_t(len(style))))

proc isFixedPitch2*(_: type QFontDatabase, family: string, style: string): bool =

  fcQFontDatabase_isFixedPitch2(struct_miqt_string(data: family, len: csize_t(len(family))), struct_miqt_string(data: style, len: csize_t(len(style))))

proc delete*(self: QFontDatabase) =
  fcQFontDatabase_delete(self.h)
