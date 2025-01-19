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
{.compile("gen_qfont.cpp", cflags).}


type QFontStyleHint* = cint
const
  QFontHelvetica* = 0
  QFontSansSerif* = 0
  QFontTimes* = 1
  QFontSerif* = 1
  QFontCourier* = 2
  QFontTypeWriter* = 2
  QFontOldEnglish* = 3
  QFontDecorative* = 3
  QFontSystem* = 4
  QFontAnyStyle* = 5
  QFontCursive* = 6
  QFontMonospace* = 7
  QFontFantasy* = 8



type QFontStyleStrategy* = cint
const
  QFontPreferDefault* = 1
  QFontPreferBitmap* = 2
  QFontPreferDevice* = 4
  QFontPreferOutline* = 8
  QFontForceOutline* = 16
  QFontPreferMatch* = 32
  QFontPreferQuality* = 64
  QFontPreferAntialias* = 128
  QFontNoAntialias* = 256
  QFontOpenGLCompatible* = 512
  QFontForceIntegerMetrics* = 1024
  QFontNoSubpixelAntialias* = 2048
  QFontPreferNoShaping* = 4096
  QFontNoFontMerging* = 32768



type QFontHintingPreference* = cint
const
  QFontPreferDefaultHinting* = 0
  QFontPreferNoHinting* = 1
  QFontPreferVerticalHinting* = 2
  QFontPreferFullHinting* = 3



type QFontWeight* = cint
const
  QFontThin* = 0
  QFontExtraLight* = 12
  QFontLight* = 25
  QFontNormal* = 50
  QFontMedium* = 57
  QFontDemiBold* = 63
  QFontBold* = 75
  QFontExtraBold* = 81
  QFontBlack* = 87



type QFontStyle* = cint
const
  QFontStyleNormal* = 0
  QFontStyleItalic* = 1
  QFontStyleOblique* = 2



type QFontStretch* = cint
const
  QFontAnyStretch* = 0
  QFontUltraCondensed* = 50
  QFontExtraCondensed* = 62
  QFontCondensed* = 75
  QFontSemiCondensed* = 87
  QFontUnstretched* = 100
  QFontSemiExpanded* = 112
  QFontExpanded* = 125
  QFontExtraExpanded* = 150
  QFontUltraExpanded* = 200



type QFontCapitalization* = cint
const
  QFontMixedCase* = 0
  QFontAllUppercase* = 1
  QFontAllLowercase* = 2
  QFontSmallCaps* = 3
  QFontCapitalize* = 4



type QFontSpacingType* = cint
const
  QFontPercentageSpacing* = 0
  QFontAbsoluteSpacing* = 1



type QFontResolveProperties* = cint
const
  QFontNoPropertiesResolved* = 0
  QFontFamilyResolved* = 1
  QFontSizeResolved* = 2
  QFontStyleHintResolved* = 4
  QFontStyleStrategyResolved* = 8
  QFontWeightResolved* = 16
  QFontStyleResolved* = 32
  QFontUnderlineResolved* = 64
  QFontOverlineResolved* = 128
  QFontStrikeOutResolved* = 256
  QFontFixedPitchResolved* = 512
  QFontStretchResolved* = 1024
  QFontKerningResolved* = 2048
  QFontCapitalizationResolved* = 4096
  QFontLetterSpacingResolved* = 8192
  QFontWordSpacingResolved* = 16384
  QFontHintingPreferenceResolved* = 32768
  QFontStyleNameResolved* = 65536
  QFontFamiliesResolved* = 131072
  QFontAllPropertiesResolved* = 262143



import gen_qfont_types
export gen_qfont_types

import
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qvariant
export
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qvariant

type cQFont*{.exportc: "QFont", incompleteStruct.} = object

proc fcQFont_new(): ptr cQFont {.importc: "QFont_new".}
proc fcQFont_new2(family: struct_miqt_string): ptr cQFont {.importc: "QFont_new2".}
proc fcQFont_new3(font: pointer, pd: pointer): ptr cQFont {.importc: "QFont_new3".}
proc fcQFont_new4(font: pointer, pd: pointer): ptr cQFont {.importc: "QFont_new4".}
proc fcQFont_new5(font: pointer): ptr cQFont {.importc: "QFont_new5".}
proc fcQFont_new6(family: struct_miqt_string, pointSize: cint): ptr cQFont {.importc: "QFont_new6".}
proc fcQFont_new7(family: struct_miqt_string, pointSize: cint, weight: cint): ptr cQFont {.importc: "QFont_new7".}
proc fcQFont_new8(family: struct_miqt_string, pointSize: cint, weight: cint, italic: bool): ptr cQFont {.importc: "QFont_new8".}
proc fcQFont_swap(self: pointer, other: pointer): void {.importc: "QFont_swap".}
proc fcQFont_family(self: pointer, ): struct_miqt_string {.importc: "QFont_family".}
proc fcQFont_setFamily(self: pointer, family: struct_miqt_string): void {.importc: "QFont_setFamily".}
proc fcQFont_families(self: pointer, ): struct_miqt_array {.importc: "QFont_families".}
proc fcQFont_setFamilies(self: pointer, families: struct_miqt_array): void {.importc: "QFont_setFamilies".}
proc fcQFont_styleName(self: pointer, ): struct_miqt_string {.importc: "QFont_styleName".}
proc fcQFont_setStyleName(self: pointer, styleName: struct_miqt_string): void {.importc: "QFont_setStyleName".}
proc fcQFont_pointSize(self: pointer, ): cint {.importc: "QFont_pointSize".}
proc fcQFont_setPointSize(self: pointer, pointSize: cint): void {.importc: "QFont_setPointSize".}
proc fcQFont_pointSizeF(self: pointer, ): float64 {.importc: "QFont_pointSizeF".}
proc fcQFont_setPointSizeF(self: pointer, pointSizeF: float64): void {.importc: "QFont_setPointSizeF".}
proc fcQFont_pixelSize(self: pointer, ): cint {.importc: "QFont_pixelSize".}
proc fcQFont_setPixelSize(self: pointer, pixelSize: cint): void {.importc: "QFont_setPixelSize".}
proc fcQFont_weight(self: pointer, ): cint {.importc: "QFont_weight".}
proc fcQFont_setWeight(self: pointer, weight: cint): void {.importc: "QFont_setWeight".}
proc fcQFont_bold(self: pointer, ): bool {.importc: "QFont_bold".}
proc fcQFont_setBold(self: pointer, bold: bool): void {.importc: "QFont_setBold".}
proc fcQFont_setStyle(self: pointer, style: cint): void {.importc: "QFont_setStyle".}
proc fcQFont_style(self: pointer, ): cint {.importc: "QFont_style".}
proc fcQFont_italic(self: pointer, ): bool {.importc: "QFont_italic".}
proc fcQFont_setItalic(self: pointer, b: bool): void {.importc: "QFont_setItalic".}
proc fcQFont_underline(self: pointer, ): bool {.importc: "QFont_underline".}
proc fcQFont_setUnderline(self: pointer, underline: bool): void {.importc: "QFont_setUnderline".}
proc fcQFont_overline(self: pointer, ): bool {.importc: "QFont_overline".}
proc fcQFont_setOverline(self: pointer, overline: bool): void {.importc: "QFont_setOverline".}
proc fcQFont_strikeOut(self: pointer, ): bool {.importc: "QFont_strikeOut".}
proc fcQFont_setStrikeOut(self: pointer, strikeOut: bool): void {.importc: "QFont_setStrikeOut".}
proc fcQFont_fixedPitch(self: pointer, ): bool {.importc: "QFont_fixedPitch".}
proc fcQFont_setFixedPitch(self: pointer, fixedPitch: bool): void {.importc: "QFont_setFixedPitch".}
proc fcQFont_kerning(self: pointer, ): bool {.importc: "QFont_kerning".}
proc fcQFont_setKerning(self: pointer, kerning: bool): void {.importc: "QFont_setKerning".}
proc fcQFont_styleHint(self: pointer, ): cint {.importc: "QFont_styleHint".}
proc fcQFont_styleStrategy(self: pointer, ): cint {.importc: "QFont_styleStrategy".}
proc fcQFont_setStyleHint(self: pointer, param1: cint): void {.importc: "QFont_setStyleHint".}
proc fcQFont_setStyleStrategy(self: pointer, s: cint): void {.importc: "QFont_setStyleStrategy".}
proc fcQFont_stretch(self: pointer, ): cint {.importc: "QFont_stretch".}
proc fcQFont_setStretch(self: pointer, stretch: cint): void {.importc: "QFont_setStretch".}
proc fcQFont_letterSpacing(self: pointer, ): float64 {.importc: "QFont_letterSpacing".}
proc fcQFont_letterSpacingType(self: pointer, ): cint {.importc: "QFont_letterSpacingType".}
proc fcQFont_setLetterSpacing(self: pointer, typeVal: cint, spacing: float64): void {.importc: "QFont_setLetterSpacing".}
proc fcQFont_wordSpacing(self: pointer, ): float64 {.importc: "QFont_wordSpacing".}
proc fcQFont_setWordSpacing(self: pointer, spacing: float64): void {.importc: "QFont_setWordSpacing".}
proc fcQFont_setCapitalization(self: pointer, capitalization: cint): void {.importc: "QFont_setCapitalization".}
proc fcQFont_capitalization(self: pointer, ): cint {.importc: "QFont_capitalization".}
proc fcQFont_setHintingPreference(self: pointer, hintingPreference: cint): void {.importc: "QFont_setHintingPreference".}
proc fcQFont_hintingPreference(self: pointer, ): cint {.importc: "QFont_hintingPreference".}
proc fcQFont_rawMode(self: pointer, ): bool {.importc: "QFont_rawMode".}
proc fcQFont_setRawMode(self: pointer, rawMode: bool): void {.importc: "QFont_setRawMode".}
proc fcQFont_exactMatch(self: pointer, ): bool {.importc: "QFont_exactMatch".}
proc fcQFont_operatorAssign(self: pointer, param1: pointer): void {.importc: "QFont_operatorAssign".}
proc fcQFont_operatorEqual(self: pointer, param1: pointer): bool {.importc: "QFont_operatorEqual".}
proc fcQFont_operatorNotEqual(self: pointer, param1: pointer): bool {.importc: "QFont_operatorNotEqual".}
proc fcQFont_operatorLesser(self: pointer, param1: pointer): bool {.importc: "QFont_operatorLesser".}
proc fcQFont_ToQVariant(self: pointer, ): pointer {.importc: "QFont_ToQVariant".}
proc fcQFont_isCopyOf(self: pointer, param1: pointer): bool {.importc: "QFont_isCopyOf".}
proc fcQFont_setRawName(self: pointer, rawName: struct_miqt_string): void {.importc: "QFont_setRawName".}
proc fcQFont_rawName(self: pointer, ): struct_miqt_string {.importc: "QFont_rawName".}
proc fcQFont_key(self: pointer, ): struct_miqt_string {.importc: "QFont_key".}
proc fcQFont_toString(self: pointer, ): struct_miqt_string {.importc: "QFont_toString".}
proc fcQFont_fromString(self: pointer, param1: struct_miqt_string): bool {.importc: "QFont_fromString".}
proc fcQFont_substitute(param1: struct_miqt_string): struct_miqt_string {.importc: "QFont_substitute".}
proc fcQFont_substitutes(param1: struct_miqt_string): struct_miqt_array {.importc: "QFont_substitutes".}
proc fcQFont_substitutions(): struct_miqt_array {.importc: "QFont_substitutions".}
proc fcQFont_insertSubstitution(param1: struct_miqt_string, param2: struct_miqt_string): void {.importc: "QFont_insertSubstitution".}
proc fcQFont_insertSubstitutions(param1: struct_miqt_string, param2: struct_miqt_array): void {.importc: "QFont_insertSubstitutions".}
proc fcQFont_removeSubstitutions(param1: struct_miqt_string): void {.importc: "QFont_removeSubstitutions".}
proc fcQFont_initialize(): void {.importc: "QFont_initialize".}
proc fcQFont_cleanup(): void {.importc: "QFont_cleanup".}
proc fcQFont_cacheStatistics(): void {.importc: "QFont_cacheStatistics".}
proc fcQFont_defaultFamily(self: pointer, ): struct_miqt_string {.importc: "QFont_defaultFamily".}
proc fcQFont_lastResortFamily(self: pointer, ): struct_miqt_string {.importc: "QFont_lastResortFamily".}
proc fcQFont_lastResortFont(self: pointer, ): struct_miqt_string {.importc: "QFont_lastResortFont".}
proc fcQFont_resolve(self: pointer, param1: pointer): pointer {.importc: "QFont_resolve".}
proc fcQFont_resolve2(self: pointer, ): cuint {.importc: "QFont_resolve2".}
proc fcQFont_resolveWithMask(self: pointer, mask: cuint): void {.importc: "QFont_resolveWithMask".}
proc fcQFont_setStyleHint2(self: pointer, param1: cint, param2: cint): void {.importc: "QFont_setStyleHint2".}
proc fcQFont_staticMetaObject(): pointer {.importc: "QFont_staticMetaObject".}
proc fcQFont_delete(self: pointer) {.importc: "QFont_delete".}


func init*(T: type QFont, h: ptr cQFont): QFont =
  T(h: h)
proc create*(T: type QFont, ): QFont =

  QFont.init(fcQFont_new())
proc create*(T: type QFont, family: string): QFont =

  QFont.init(fcQFont_new2(struct_miqt_string(data: family, len: csize_t(len(family)))))
proc create*(T: type QFont, font: QFont, pd: gen_qpaintdevice.QPaintDevice): QFont =

  QFont.init(fcQFont_new3(font.h, pd.h))
proc create2*(T: type QFont, font: QFont, pd: gen_qpaintdevice.QPaintDevice): QFont =

  QFont.init(fcQFont_new4(font.h, pd.h))
proc create*(T: type QFont, font: QFont): QFont =

  QFont.init(fcQFont_new5(font.h))
proc create*(T: type QFont, family: string, pointSize: cint): QFont =

  QFont.init(fcQFont_new6(struct_miqt_string(data: family, len: csize_t(len(family))), pointSize))
proc create*(T: type QFont, family: string, pointSize: cint, weight: cint): QFont =

  QFont.init(fcQFont_new7(struct_miqt_string(data: family, len: csize_t(len(family))), pointSize, weight))
proc create*(T: type QFont, family: string, pointSize: cint, weight: cint, italic: bool): QFont =

  QFont.init(fcQFont_new8(struct_miqt_string(data: family, len: csize_t(len(family))), pointSize, weight, italic))
proc swap*(self: QFont, other: QFont): void =

  fcQFont_swap(self.h, other.h)

proc family*(self: QFont, ): string =

  let v_ms = fcQFont_family(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFamily*(self: QFont, family: string): void =

  fcQFont_setFamily(self.h, struct_miqt_string(data: family, len: csize_t(len(family))))

proc families*(self: QFont, ): seq[string] =

  var v_ma = fcQFont_families(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setFamilies*(self: QFont, families: seq[string]): void =

  var families_CArray = newSeq[struct_miqt_string](len(families))
  for i in 0..<len(families):
    families_CArray[i] = struct_miqt_string(data: families[i], len: csize_t(len(families[i])))

  fcQFont_setFamilies(self.h, struct_miqt_array(len: csize_t(len(families)), data: if len(families) == 0: nil else: addr(families_CArray[0])))

proc styleName*(self: QFont, ): string =

  let v_ms = fcQFont_styleName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setStyleName*(self: QFont, styleName: string): void =

  fcQFont_setStyleName(self.h, struct_miqt_string(data: styleName, len: csize_t(len(styleName))))

proc pointSize*(self: QFont, ): cint =

  fcQFont_pointSize(self.h)

proc setPointSize*(self: QFont, pointSize: cint): void =

  fcQFont_setPointSize(self.h, pointSize)

proc pointSizeF*(self: QFont, ): float64 =

  fcQFont_pointSizeF(self.h)

proc setPointSizeF*(self: QFont, pointSizeF: float64): void =

  fcQFont_setPointSizeF(self.h, pointSizeF)

proc pixelSize*(self: QFont, ): cint =

  fcQFont_pixelSize(self.h)

proc setPixelSize*(self: QFont, pixelSize: cint): void =

  fcQFont_setPixelSize(self.h, pixelSize)

proc weight*(self: QFont, ): cint =

  fcQFont_weight(self.h)

proc setWeight*(self: QFont, weight: cint): void =

  fcQFont_setWeight(self.h, weight)

proc bold*(self: QFont, ): bool =

  fcQFont_bold(self.h)

proc setBold*(self: QFont, bold: bool): void =

  fcQFont_setBold(self.h, bold)

proc setStyle*(self: QFont, style: QFontStyle): void =

  fcQFont_setStyle(self.h, cint(style))

proc style*(self: QFont, ): QFontStyle =

  QFontStyle(fcQFont_style(self.h))

proc italic*(self: QFont, ): bool =

  fcQFont_italic(self.h)

proc setItalic*(self: QFont, b: bool): void =

  fcQFont_setItalic(self.h, b)

proc underline*(self: QFont, ): bool =

  fcQFont_underline(self.h)

proc setUnderline*(self: QFont, underline: bool): void =

  fcQFont_setUnderline(self.h, underline)

proc overline*(self: QFont, ): bool =

  fcQFont_overline(self.h)

proc setOverline*(self: QFont, overline: bool): void =

  fcQFont_setOverline(self.h, overline)

proc strikeOut*(self: QFont, ): bool =

  fcQFont_strikeOut(self.h)

proc setStrikeOut*(self: QFont, strikeOut: bool): void =

  fcQFont_setStrikeOut(self.h, strikeOut)

proc fixedPitch*(self: QFont, ): bool =

  fcQFont_fixedPitch(self.h)

proc setFixedPitch*(self: QFont, fixedPitch: bool): void =

  fcQFont_setFixedPitch(self.h, fixedPitch)

proc kerning*(self: QFont, ): bool =

  fcQFont_kerning(self.h)

proc setKerning*(self: QFont, kerning: bool): void =

  fcQFont_setKerning(self.h, kerning)

proc styleHint*(self: QFont, ): QFontStyleHint =

  QFontStyleHint(fcQFont_styleHint(self.h))

proc styleStrategy*(self: QFont, ): QFontStyleStrategy =

  QFontStyleStrategy(fcQFont_styleStrategy(self.h))

proc setStyleHint*(self: QFont, param1: QFontStyleHint): void =

  fcQFont_setStyleHint(self.h, cint(param1))

proc setStyleStrategy*(self: QFont, s: QFontStyleStrategy): void =

  fcQFont_setStyleStrategy(self.h, cint(s))

proc stretch*(self: QFont, ): cint =

  fcQFont_stretch(self.h)

proc setStretch*(self: QFont, stretch: cint): void =

  fcQFont_setStretch(self.h, stretch)

proc letterSpacing*(self: QFont, ): float64 =

  fcQFont_letterSpacing(self.h)

proc letterSpacingType*(self: QFont, ): QFontSpacingType =

  QFontSpacingType(fcQFont_letterSpacingType(self.h))

proc setLetterSpacing*(self: QFont, typeVal: QFontSpacingType, spacing: float64): void =

  fcQFont_setLetterSpacing(self.h, cint(typeVal), spacing)

proc wordSpacing*(self: QFont, ): float64 =

  fcQFont_wordSpacing(self.h)

proc setWordSpacing*(self: QFont, spacing: float64): void =

  fcQFont_setWordSpacing(self.h, spacing)

proc setCapitalization*(self: QFont, capitalization: QFontCapitalization): void =

  fcQFont_setCapitalization(self.h, cint(capitalization))

proc capitalization*(self: QFont, ): QFontCapitalization =

  QFontCapitalization(fcQFont_capitalization(self.h))

proc setHintingPreference*(self: QFont, hintingPreference: QFontHintingPreference): void =

  fcQFont_setHintingPreference(self.h, cint(hintingPreference))

proc hintingPreference*(self: QFont, ): QFontHintingPreference =

  QFontHintingPreference(fcQFont_hintingPreference(self.h))

proc rawMode*(self: QFont, ): bool =

  fcQFont_rawMode(self.h)

proc setRawMode*(self: QFont, rawMode: bool): void =

  fcQFont_setRawMode(self.h, rawMode)

proc exactMatch*(self: QFont, ): bool =

  fcQFont_exactMatch(self.h)

proc operatorAssign*(self: QFont, param1: QFont): void =

  fcQFont_operatorAssign(self.h, param1.h)

proc operatorEqual*(self: QFont, param1: QFont): bool =

  fcQFont_operatorEqual(self.h, param1.h)

proc operatorNotEqual*(self: QFont, param1: QFont): bool =

  fcQFont_operatorNotEqual(self.h, param1.h)

proc operatorLesser*(self: QFont, param1: QFont): bool =

  fcQFont_operatorLesser(self.h, param1.h)

proc ToQVariant*(self: QFont, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQFont_ToQVariant(self.h))

proc isCopyOf*(self: QFont, param1: QFont): bool =

  fcQFont_isCopyOf(self.h, param1.h)

proc setRawName*(self: QFont, rawName: string): void =

  fcQFont_setRawName(self.h, struct_miqt_string(data: rawName, len: csize_t(len(rawName))))

proc rawName*(self: QFont, ): string =

  let v_ms = fcQFont_rawName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc key*(self: QFont, ): string =

  let v_ms = fcQFont_key(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString*(self: QFont, ): string =

  let v_ms = fcQFont_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fromString*(self: QFont, param1: string): bool =

  fcQFont_fromString(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc substitute*(_: type QFont, param1: string): string =

  let v_ms = fcQFont_substitute(struct_miqt_string(data: param1, len: csize_t(len(param1))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc substitutes*(_: type QFont, param1: string): seq[string] =

  var v_ma = fcQFont_substitutes(struct_miqt_string(data: param1, len: csize_t(len(param1))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc substitutions*(_: type QFont, ): seq[string] =

  var v_ma = fcQFont_substitutions()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc insertSubstitution*(_: type QFont, param1: string, param2: string): void =

  fcQFont_insertSubstitution(struct_miqt_string(data: param1, len: csize_t(len(param1))), struct_miqt_string(data: param2, len: csize_t(len(param2))))

proc insertSubstitutions*(_: type QFont, param1: string, param2: seq[string]): void =

  var param2_CArray = newSeq[struct_miqt_string](len(param2))
  for i in 0..<len(param2):
    param2_CArray[i] = struct_miqt_string(data: param2[i], len: csize_t(len(param2[i])))

  fcQFont_insertSubstitutions(struct_miqt_string(data: param1, len: csize_t(len(param1))), struct_miqt_array(len: csize_t(len(param2)), data: if len(param2) == 0: nil else: addr(param2_CArray[0])))

proc removeSubstitutions*(_: type QFont, param1: string): void =

  fcQFont_removeSubstitutions(struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc initialize*(_: type QFont, ): void =

  fcQFont_initialize()

proc cleanup*(_: type QFont, ): void =

  fcQFont_cleanup()

proc cacheStatistics*(_: type QFont, ): void =

  fcQFont_cacheStatistics()

proc defaultFamily*(self: QFont, ): string =

  let v_ms = fcQFont_defaultFamily(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc lastResortFamily*(self: QFont, ): string =

  let v_ms = fcQFont_lastResortFamily(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc lastResortFont*(self: QFont, ): string =

  let v_ms = fcQFont_lastResortFont(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc resolve*(self: QFont, param1: QFont): QFont =

  QFont(h: fcQFont_resolve(self.h, param1.h))

proc resolve2*(self: QFont, ): cuint =

  fcQFont_resolve2(self.h)

proc resolveWithMask*(self: QFont, mask: cuint): void =

  fcQFont_resolveWithMask(self.h, mask)

proc setStyleHint2*(self: QFont, param1: QFontStyleHint, param2: QFontStyleStrategy): void =

  fcQFont_setStyleHint2(self.h, cint(param1), cint(param2))

proc staticMetaObject*(_: type QFont): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQFont_staticMetaObject())
proc delete*(self: QFont) =
  fcQFont_delete(self.h)
