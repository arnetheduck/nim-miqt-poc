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
{.compile("gen_qbrush.cpp", cflags).}


type QGradientType* = cint
const
  QGradientLinearGradient* = 0
  QGradientRadialGradient* = 1
  QGradientConicalGradient* = 2
  QGradientNoGradient* = 3



type QGradientSpread* = cint
const
  QGradientPadSpread* = 0
  QGradientReflectSpread* = 1
  QGradientRepeatSpread* = 2



type QGradientCoordinateMode* = cint
const
  QGradientLogicalMode* = 0
  QGradientStretchToDeviceMode* = 1
  QGradientObjectBoundingMode* = 2
  QGradientObjectMode* = 3



type QGradientInterpolationMode* = cint
const
  QGradientColorInterpolation* = 0
  QGradientComponentInterpolation* = 1



type QGradientPreset* = cint
const
  QGradientWarmFlame* = 1
  QGradientNightFade* = 2
  QGradientSpringWarmth* = 3
  QGradientJuicyPeach* = 4
  QGradientYoungPassion* = 5
  QGradientLadyLips* = 6
  QGradientSunnyMorning* = 7
  QGradientRainyAshville* = 8
  QGradientFrozenDreams* = 9
  QGradientWinterNeva* = 10
  QGradientDustyGrass* = 11
  QGradientTemptingAzure* = 12
  QGradientHeavyRain* = 13
  QGradientAmyCrisp* = 14
  QGradientMeanFruit* = 15
  QGradientDeepBlue* = 16
  QGradientRipeMalinka* = 17
  QGradientCloudyKnoxville* = 18
  QGradientMalibuBeach* = 19
  QGradientNewLife* = 20
  QGradientTrueSunset* = 21
  QGradientMorpheusDen* = 22
  QGradientRareWind* = 23
  QGradientNearMoon* = 24
  QGradientWildApple* = 25
  QGradientSaintPetersburg* = 26
  QGradientPlumPlate* = 28
  QGradientEverlastingSky* = 29
  QGradientHappyFisher* = 30
  QGradientBlessing* = 31
  QGradientSharpeyeEagle* = 32
  QGradientLadogaBottom* = 33
  QGradientLemonGate* = 34
  QGradientItmeoBranding* = 35
  QGradientZeusMiracle* = 36
  QGradientOldHat* = 37
  QGradientStarWine* = 38
  QGradientHappyAcid* = 41
  QGradientAwesomePine* = 42
  QGradientNewYork* = 43
  QGradientShyRainbow* = 44
  QGradientMixedHopes* = 46
  QGradientFlyHigh* = 47
  QGradientStrongBliss* = 48
  QGradientFreshMilk* = 49
  QGradientSnowAgain* = 50
  QGradientFebruaryInk* = 51
  QGradientKindSteel* = 52
  QGradientSoftGrass* = 53
  QGradientGrownEarly* = 54
  QGradientSharpBlues* = 55
  QGradientShadyWater* = 56
  QGradientDirtyBeauty* = 57
  QGradientGreatWhale* = 58
  QGradientTeenNotebook* = 59
  QGradientPoliteRumors* = 60
  QGradientSweetPeriod* = 61
  QGradientWideMatrix* = 62
  QGradientSoftCherish* = 63
  QGradientRedSalvation* = 64
  QGradientBurningSpring* = 65
  QGradientNightParty* = 66
  QGradientSkyGlider* = 67
  QGradientHeavenPeach* = 68
  QGradientPurpleDivision* = 69
  QGradientAquaSplash* = 70
  QGradientSpikyNaga* = 72
  QGradientLoveKiss* = 73
  QGradientCleanMirror* = 75
  QGradientPremiumDark* = 76
  QGradientColdEvening* = 77
  QGradientCochitiLake* = 78
  QGradientSummerGames* = 79
  QGradientPassionateBed* = 80
  QGradientMountainRock* = 81
  QGradientDesertHump* = 82
  QGradientJungleDay* = 83
  QGradientPhoenixStart* = 84
  QGradientOctoberSilence* = 85
  QGradientFarawayRiver* = 86
  QGradientAlchemistLab* = 87
  QGradientOverSun* = 88
  QGradientPremiumWhite* = 89
  QGradientMarsParty* = 90
  QGradientEternalConstance* = 91
  QGradientJapanBlush* = 92
  QGradientSmilingRain* = 93
  QGradientCloudyApple* = 94
  QGradientBigMango* = 95
  QGradientHealthyWater* = 96
  QGradientAmourAmour* = 97
  QGradientRiskyConcrete* = 98
  QGradientStrongStick* = 99
  QGradientViciousStance* = 100
  QGradientPaloAlto* = 101
  QGradientHappyMemories* = 102
  QGradientMidnightBloom* = 103
  QGradientCrystalline* = 104
  QGradientPartyBliss* = 106
  QGradientConfidentCloud* = 107
  QGradientLeCocktail* = 108
  QGradientRiverCity* = 109
  QGradientFrozenBerry* = 110
  QGradientChildCare* = 112
  QGradientFlyingLemon* = 113
  QGradientNewRetrowave* = 114
  QGradientHiddenJaguar* = 115
  QGradientAboveTheSky* = 116
  QGradientNega* = 117
  QGradientDenseWater* = 118
  QGradientSeashore* = 120
  QGradientMarbleWall* = 121
  QGradientCheerfulCaramel* = 122
  QGradientNightSky* = 123
  QGradientMagicLake* = 124
  QGradientYoungGrass* = 125
  QGradientColorfulPeach* = 126
  QGradientGentleCare* = 127
  QGradientPlumBath* = 128
  QGradientHappyUnicorn* = 129
  QGradientAfricanField* = 131
  QGradientSolidStone* = 132
  QGradientOrangeJuice* = 133
  QGradientGlassWater* = 134
  QGradientNorthMiracle* = 136
  QGradientFruitBlend* = 137
  QGradientMillenniumPine* = 138
  QGradientHighFlight* = 139
  QGradientMoleHall* = 140
  QGradientSpaceShift* = 142
  QGradientForestInei* = 143
  QGradientRoyalGarden* = 144
  QGradientRichMetal* = 145
  QGradientJuicyCake* = 146
  QGradientSmartIndigo* = 147
  QGradientSandStrike* = 148
  QGradientNorseBeauty* = 149
  QGradientAquaGuidance* = 150
  QGradientSunVeggie* = 151
  QGradientSeaLord* = 152
  QGradientBlackSea* = 153
  QGradientGrassShampoo* = 154
  QGradientLandingAircraft* = 155
  QGradientWitchDance* = 156
  QGradientSleeplessNight* = 157
  QGradientAngelCare* = 158
  QGradientCrystalRiver* = 159
  QGradientSoftLipstick* = 160
  QGradientSaltMountain* = 161
  QGradientPerfectWhite* = 162
  QGradientFreshOasis* = 163
  QGradientStrictNovember* = 164
  QGradientMorningSalad* = 165
  QGradientDeepRelief* = 166
  QGradientSeaStrike* = 167
  QGradientNightCall* = 168
  QGradientSupremeSky* = 169
  QGradientLightBlue* = 170
  QGradientMindCrawl* = 171
  QGradientLilyMeadow* = 172
  QGradientSugarLollipop* = 173
  QGradientSweetDessert* = 174
  QGradientMagicRay* = 175
  QGradientTeenParty* = 176
  QGradientFrozenHeat* = 177
  QGradientGagarinView* = 178
  QGradientFabledSunset* = 179
  QGradientPerfectBlue* = 180
  QGradientNumPresets* = 181



import gen_qbrush_types
export gen_qbrush_types

import
  gen_qcolor,
  gen_qimage,
  gen_qnamespace,
  gen_qobjectdefs,
  gen_qpixmap,
  gen_qpoint,
  gen_qtransform,
  gen_qvariant
export
  gen_qcolor,
  gen_qimage,
  gen_qnamespace,
  gen_qobjectdefs,
  gen_qpixmap,
  gen_qpoint,
  gen_qtransform,
  gen_qvariant

type cQBrush*{.exportc: "QBrush", incompleteStruct.} = object
type cQBrushData*{.exportc: "QBrushData", incompleteStruct.} = object
type cQGradient*{.exportc: "QGradient", incompleteStruct.} = object
type cQLinearGradient*{.exportc: "QLinearGradient", incompleteStruct.} = object
type cQRadialGradient*{.exportc: "QRadialGradient", incompleteStruct.} = object
type cQConicalGradient*{.exportc: "QConicalGradient", incompleteStruct.} = object
type cQGradientQGradientData*{.exportc: "QGradient__QGradientData", incompleteStruct.} = object

proc fcQBrush_new(): ptr cQBrush {.importc: "QBrush_new".}
proc fcQBrush_new2(bs: cint): ptr cQBrush {.importc: "QBrush_new2".}
proc fcQBrush_new3(color: pointer): ptr cQBrush {.importc: "QBrush_new3".}
proc fcQBrush_new4(color: cint): ptr cQBrush {.importc: "QBrush_new4".}
proc fcQBrush_new5(color: pointer, pixmap: pointer): ptr cQBrush {.importc: "QBrush_new5".}
proc fcQBrush_new6(color: cint, pixmap: pointer): ptr cQBrush {.importc: "QBrush_new6".}
proc fcQBrush_new7(pixmap: pointer): ptr cQBrush {.importc: "QBrush_new7".}
proc fcQBrush_new8(image: pointer): ptr cQBrush {.importc: "QBrush_new8".}
proc fcQBrush_new9(brush: pointer): ptr cQBrush {.importc: "QBrush_new9".}
proc fcQBrush_new10(gradient: pointer): ptr cQBrush {.importc: "QBrush_new10".}
proc fcQBrush_new11(color: pointer, bs: cint): ptr cQBrush {.importc: "QBrush_new11".}
proc fcQBrush_new12(color: cint, bs: cint): ptr cQBrush {.importc: "QBrush_new12".}
proc fcQBrush_operatorAssign(self: pointer, brush: pointer): void {.importc: "QBrush_operatorAssign".}
proc fcQBrush_swap(self: pointer, other: pointer): void {.importc: "QBrush_swap".}
proc fcQBrush_ToQVariant(self: pointer, ): pointer {.importc: "QBrush_ToQVariant".}
proc fcQBrush_style(self: pointer, ): cint {.importc: "QBrush_style".}
proc fcQBrush_setStyle(self: pointer, style: cint): void {.importc: "QBrush_setStyle".}
proc fcQBrush_transform(self: pointer, ): pointer {.importc: "QBrush_transform".}
proc fcQBrush_setTransform(self: pointer, transform: pointer): void {.importc: "QBrush_setTransform".}
proc fcQBrush_texture(self: pointer, ): pointer {.importc: "QBrush_texture".}
proc fcQBrush_setTexture(self: pointer, pixmap: pointer): void {.importc: "QBrush_setTexture".}
proc fcQBrush_textureImage(self: pointer, ): pointer {.importc: "QBrush_textureImage".}
proc fcQBrush_setTextureImage(self: pointer, image: pointer): void {.importc: "QBrush_setTextureImage".}
proc fcQBrush_color(self: pointer, ): pointer {.importc: "QBrush_color".}
proc fcQBrush_setColor(self: pointer, color: pointer): void {.importc: "QBrush_setColor".}
proc fcQBrush_setColorWithColor(self: pointer, color: cint): void {.importc: "QBrush_setColorWithColor".}
proc fcQBrush_gradient(self: pointer, ): pointer {.importc: "QBrush_gradient".}
proc fcQBrush_isOpaque(self: pointer, ): bool {.importc: "QBrush_isOpaque".}
proc fcQBrush_operatorEqual(self: pointer, b: pointer): bool {.importc: "QBrush_operatorEqual".}
proc fcQBrush_operatorNotEqual(self: pointer, b: pointer): bool {.importc: "QBrush_operatorNotEqual".}
proc fcQBrush_isDetached(self: pointer, ): bool {.importc: "QBrush_isDetached".}
proc fcQBrush_delete(self: pointer) {.importc: "QBrush_delete".}
proc fcQBrushData_new(param1: pointer): ptr cQBrushData {.importc: "QBrushData_new".}
proc fcQBrushData_operatorAssign(self: pointer, param1: pointer): void {.importc: "QBrushData_operatorAssign".}
proc fcQBrushData_delete(self: pointer) {.importc: "QBrushData_delete".}
proc fcQGradient_new(): ptr cQGradient {.importc: "QGradient_new".}
proc fcQGradient_new2(param1: cint): ptr cQGradient {.importc: "QGradient_new2".}
proc fcQGradient_new3(param1: pointer): ptr cQGradient {.importc: "QGradient_new3".}
proc fcQGradient_typeX(self: pointer, ): cint {.importc: "QGradient_type".}
proc fcQGradient_setSpread(self: pointer, spread: cint): void {.importc: "QGradient_setSpread".}
proc fcQGradient_spread(self: pointer, ): cint {.importc: "QGradient_spread".}
proc fcQGradient_setColorAt(self: pointer, pos: float64, color: pointer): void {.importc: "QGradient_setColorAt".}
proc fcQGradient_setStops(self: pointer, stops: struct_miqt_array): void {.importc: "QGradient_setStops".}
proc fcQGradient_stops(self: pointer, ): struct_miqt_array {.importc: "QGradient_stops".}
proc fcQGradient_coordinateMode(self: pointer, ): cint {.importc: "QGradient_coordinateMode".}
proc fcQGradient_setCoordinateMode(self: pointer, mode: cint): void {.importc: "QGradient_setCoordinateMode".}
proc fcQGradient_interpolationMode(self: pointer, ): cint {.importc: "QGradient_interpolationMode".}
proc fcQGradient_setInterpolationMode(self: pointer, mode: cint): void {.importc: "QGradient_setInterpolationMode".}
proc fcQGradient_operatorEqual(self: pointer, gradient: pointer): bool {.importc: "QGradient_operatorEqual".}
proc fcQGradient_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QGradient_operatorNotEqual".}
proc fcQGradient_staticMetaObject(): pointer {.importc: "QGradient_staticMetaObject".}
proc fcQGradient_delete(self: pointer) {.importc: "QGradient_delete".}
proc fcQLinearGradient_new(): ptr cQLinearGradient {.importc: "QLinearGradient_new".}
proc fcQLinearGradient_new2(start: pointer, finalStop: pointer): ptr cQLinearGradient {.importc: "QLinearGradient_new2".}
proc fcQLinearGradient_new3(xStart: float64, yStart: float64, xFinalStop: float64, yFinalStop: float64): ptr cQLinearGradient {.importc: "QLinearGradient_new3".}
proc fcQLinearGradient_new4(param1: pointer): ptr cQLinearGradient {.importc: "QLinearGradient_new4".}
proc fcQLinearGradient_start(self: pointer, ): pointer {.importc: "QLinearGradient_start".}
proc fcQLinearGradient_setStart(self: pointer, start: pointer): void {.importc: "QLinearGradient_setStart".}
proc fcQLinearGradient_setStart2(self: pointer, x: float64, y: float64): void {.importc: "QLinearGradient_setStart2".}
proc fcQLinearGradient_finalStop(self: pointer, ): pointer {.importc: "QLinearGradient_finalStop".}
proc fcQLinearGradient_setFinalStop(self: pointer, stop: pointer): void {.importc: "QLinearGradient_setFinalStop".}
proc fcQLinearGradient_setFinalStop2(self: pointer, x: float64, y: float64): void {.importc: "QLinearGradient_setFinalStop2".}
proc fcQLinearGradient_delete(self: pointer) {.importc: "QLinearGradient_delete".}
proc fcQRadialGradient_new(): ptr cQRadialGradient {.importc: "QRadialGradient_new".}
proc fcQRadialGradient_new2(center: pointer, radius: float64, focalPoint: pointer): ptr cQRadialGradient {.importc: "QRadialGradient_new2".}
proc fcQRadialGradient_new3(cx: float64, cy: float64, radius: float64, fx: float64, fy: float64): ptr cQRadialGradient {.importc: "QRadialGradient_new3".}
proc fcQRadialGradient_new4(center: pointer, radius: float64): ptr cQRadialGradient {.importc: "QRadialGradient_new4".}
proc fcQRadialGradient_new5(cx: float64, cy: float64, radius: float64): ptr cQRadialGradient {.importc: "QRadialGradient_new5".}
proc fcQRadialGradient_new6(center: pointer, centerRadius: float64, focalPoint: pointer, focalRadius: float64): ptr cQRadialGradient {.importc: "QRadialGradient_new6".}
proc fcQRadialGradient_new7(cx: float64, cy: float64, centerRadius: float64, fx: float64, fy: float64, focalRadius: float64): ptr cQRadialGradient {.importc: "QRadialGradient_new7".}
proc fcQRadialGradient_new8(param1: pointer): ptr cQRadialGradient {.importc: "QRadialGradient_new8".}
proc fcQRadialGradient_center(self: pointer, ): pointer {.importc: "QRadialGradient_center".}
proc fcQRadialGradient_setCenter(self: pointer, center: pointer): void {.importc: "QRadialGradient_setCenter".}
proc fcQRadialGradient_setCenter2(self: pointer, x: float64, y: float64): void {.importc: "QRadialGradient_setCenter2".}
proc fcQRadialGradient_focalPoint(self: pointer, ): pointer {.importc: "QRadialGradient_focalPoint".}
proc fcQRadialGradient_setFocalPoint(self: pointer, focalPoint: pointer): void {.importc: "QRadialGradient_setFocalPoint".}
proc fcQRadialGradient_setFocalPoint2(self: pointer, x: float64, y: float64): void {.importc: "QRadialGradient_setFocalPoint2".}
proc fcQRadialGradient_radius(self: pointer, ): float64 {.importc: "QRadialGradient_radius".}
proc fcQRadialGradient_setRadius(self: pointer, radius: float64): void {.importc: "QRadialGradient_setRadius".}
proc fcQRadialGradient_centerRadius(self: pointer, ): float64 {.importc: "QRadialGradient_centerRadius".}
proc fcQRadialGradient_setCenterRadius(self: pointer, radius: float64): void {.importc: "QRadialGradient_setCenterRadius".}
proc fcQRadialGradient_focalRadius(self: pointer, ): float64 {.importc: "QRadialGradient_focalRadius".}
proc fcQRadialGradient_setFocalRadius(self: pointer, radius: float64): void {.importc: "QRadialGradient_setFocalRadius".}
proc fcQRadialGradient_delete(self: pointer) {.importc: "QRadialGradient_delete".}
proc fcQConicalGradient_new(): ptr cQConicalGradient {.importc: "QConicalGradient_new".}
proc fcQConicalGradient_new2(center: pointer, startAngle: float64): ptr cQConicalGradient {.importc: "QConicalGradient_new2".}
proc fcQConicalGradient_new3(cx: float64, cy: float64, startAngle: float64): ptr cQConicalGradient {.importc: "QConicalGradient_new3".}
proc fcQConicalGradient_new4(param1: pointer): ptr cQConicalGradient {.importc: "QConicalGradient_new4".}
proc fcQConicalGradient_center(self: pointer, ): pointer {.importc: "QConicalGradient_center".}
proc fcQConicalGradient_setCenter(self: pointer, center: pointer): void {.importc: "QConicalGradient_setCenter".}
proc fcQConicalGradient_setCenter2(self: pointer, x: float64, y: float64): void {.importc: "QConicalGradient_setCenter2".}
proc fcQConicalGradient_angle(self: pointer, ): float64 {.importc: "QConicalGradient_angle".}
proc fcQConicalGradient_setAngle(self: pointer, angle: float64): void {.importc: "QConicalGradient_setAngle".}
proc fcQConicalGradient_delete(self: pointer) {.importc: "QConicalGradient_delete".}
proc fcQGradientQGradientData_new(param1: pointer): ptr cQGradientQGradientData {.importc: "QGradient__QGradientData_new".}
proc fcQGradientQGradientData_delete(self: pointer) {.importc: "QGradient__QGradientData_delete".}


func init*(T: type QBrush, h: ptr cQBrush): QBrush =
  T(h: h)
proc create*(T: type QBrush, ): QBrush =

  QBrush.init(fcQBrush_new())
proc create*(T: type QBrush, bs: gen_qnamespace.BrushStyle): QBrush =

  QBrush.init(fcQBrush_new2(cint(bs)))
proc create*(T: type QBrush, color: gen_qcolor.QColor): QBrush =

  QBrush.init(fcQBrush_new3(color.h))
proc create2*(T: type QBrush, color: gen_qnamespace.GlobalColor): QBrush =

  QBrush.init(fcQBrush_new4(cint(color)))
proc create*(T: type QBrush, color: gen_qcolor.QColor, pixmap: gen_qpixmap.QPixmap): QBrush =

  QBrush.init(fcQBrush_new5(color.h, pixmap.h))
proc create*(T: type QBrush, color: gen_qnamespace.GlobalColor, pixmap: gen_qpixmap.QPixmap): QBrush =

  QBrush.init(fcQBrush_new6(cint(color), pixmap.h))
proc create2*(T: type QBrush, pixmap: gen_qpixmap.QPixmap): QBrush =

  QBrush.init(fcQBrush_new7(pixmap.h))
proc create2*(T: type QBrush, image: gen_qimage.QImage): QBrush =

  QBrush.init(fcQBrush_new8(image.h))
proc create2*(T: type QBrush, brush: QBrush): QBrush =

  QBrush.init(fcQBrush_new9(brush.h))
proc create2*(T: type QBrush, gradient: QGradient): QBrush =

  QBrush.init(fcQBrush_new10(gradient.h))
proc create*(T: type QBrush, color: gen_qcolor.QColor, bs: gen_qnamespace.BrushStyle): QBrush =

  QBrush.init(fcQBrush_new11(color.h, cint(bs)))
proc create*(T: type QBrush, color: gen_qnamespace.GlobalColor, bs: gen_qnamespace.BrushStyle): QBrush =

  QBrush.init(fcQBrush_new12(cint(color), cint(bs)))
proc operatorAssign*(self: QBrush, brush: QBrush): void =

  fcQBrush_operatorAssign(self.h, brush.h)

proc swap*(self: QBrush, other: QBrush): void =

  fcQBrush_swap(self.h, other.h)

proc ToQVariant*(self: QBrush, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQBrush_ToQVariant(self.h))

proc style*(self: QBrush, ): gen_qnamespace.BrushStyle =

  gen_qnamespace.BrushStyle(fcQBrush_style(self.h))

proc setStyle*(self: QBrush, style: gen_qnamespace.BrushStyle): void =

  fcQBrush_setStyle(self.h, cint(style))

proc transform*(self: QBrush, ): gen_qtransform.QTransform =

  gen_qtransform.QTransform(h: fcQBrush_transform(self.h))

proc setTransform*(self: QBrush, transform: gen_qtransform.QTransform): void =

  fcQBrush_setTransform(self.h, transform.h)

proc texture*(self: QBrush, ): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQBrush_texture(self.h))

proc setTexture*(self: QBrush, pixmap: gen_qpixmap.QPixmap): void =

  fcQBrush_setTexture(self.h, pixmap.h)

proc textureImage*(self: QBrush, ): gen_qimage.QImage =

  gen_qimage.QImage(h: fcQBrush_textureImage(self.h))

proc setTextureImage*(self: QBrush, image: gen_qimage.QImage): void =

  fcQBrush_setTextureImage(self.h, image.h)

proc color*(self: QBrush, ): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQBrush_color(self.h))

proc setColor*(self: QBrush, color: gen_qcolor.QColor): void =

  fcQBrush_setColor(self.h, color.h)

proc setColorWithColor*(self: QBrush, color: gen_qnamespace.GlobalColor): void =

  fcQBrush_setColorWithColor(self.h, cint(color))

proc gradient*(self: QBrush, ): QGradient =

  QGradient(h: fcQBrush_gradient(self.h))

proc isOpaque*(self: QBrush, ): bool =

  fcQBrush_isOpaque(self.h)

proc operatorEqual*(self: QBrush, b: QBrush): bool =

  fcQBrush_operatorEqual(self.h, b.h)

proc operatorNotEqual*(self: QBrush, b: QBrush): bool =

  fcQBrush_operatorNotEqual(self.h, b.h)

proc isDetached*(self: QBrush, ): bool =

  fcQBrush_isDetached(self.h)

proc delete*(self: QBrush) =
  fcQBrush_delete(self.h)

func init*(T: type QBrushData, h: ptr cQBrushData): QBrushData =
  T(h: h)
proc create*(T: type QBrushData, param1: QBrushData): QBrushData =

  QBrushData.init(fcQBrushData_new(param1.h))
proc operatorAssign*(self: QBrushData, param1: QBrushData): void =

  fcQBrushData_operatorAssign(self.h, param1.h)

proc delete*(self: QBrushData) =
  fcQBrushData_delete(self.h)

func init*(T: type QGradient, h: ptr cQGradient): QGradient =
  T(h: h)
proc create*(T: type QGradient, ): QGradient =

  QGradient.init(fcQGradient_new())
proc create*(T: type QGradient, param1: QGradientPreset): QGradient =

  QGradient.init(fcQGradient_new2(cint(param1)))
proc create*(T: type QGradient, param1: QGradient): QGradient =

  QGradient.init(fcQGradient_new3(param1.h))
proc typeX*(self: QGradient, ): QGradientType =

  QGradientType(fcQGradient_typeX(self.h))

proc setSpread*(self: QGradient, spread: QGradientSpread): void =

  fcQGradient_setSpread(self.h, cint(spread))

proc spread*(self: QGradient, ): QGradientSpread =

  QGradientSpread(fcQGradient_spread(self.h))

proc setColorAt*(self: QGradient, pos: float64, color: gen_qcolor.QColor): void =

  fcQGradient_setColorAt(self.h, pos, color.h)

proc setStops*(self: QGradient, stops: seq[tuple[first: float64, second: gen_qcolor.QColor]]): void =

  var stops_CArray = newSeq[struct_miqt_map](len(stops))
  for i in 0..<len(stops):
    var stops_i_CArray_First: float64
    var stops_i_CArray_Second: pointer
    stops_i_CArray_First = stops[i].first
    stops_i_CArray_Second = stops[i].second.h
    stops_CArray[i] = struct_miqt_map(len: 1,keys: addr(stops_i_CArray_First),values: addr(stops_i_CArray_Second),)

  fcQGradient_setStops(self.h, struct_miqt_array(len: csize_t(len(stops)), data: if len(stops) == 0: nil else: addr(stops_CArray[0])))

proc stops*(self: QGradient, ): seq[tuple[first: float64, second: gen_qcolor.QColor]] =

  var v_ma = fcQGradient_stops(self.h)
  var vx_ret = newSeq[tuple[first: float64, second: gen_qcolor.QColor]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_map]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_mm = v_outCast[i]
    var vx_lv_First_CArray = cast[ptr UncheckedArray[float64]](vx_lv_mm.keys)
    var vx_lv_Second_CArray = cast[ptr UncheckedArray[pointer]](vx_lv_mm.values)
    var vx_lv_entry_First = vx_lv_First_CArray[0]

    var vx_lv_entry_Second = gen_qcolor.QColor(h: vx_lv_Second_CArray[0])

    vx_ret[i] = (first: vx_lv_entry_First , second: vx_lv_entry_Second )
  vx_ret

proc coordinateMode*(self: QGradient, ): QGradientCoordinateMode =

  QGradientCoordinateMode(fcQGradient_coordinateMode(self.h))

proc setCoordinateMode*(self: QGradient, mode: QGradientCoordinateMode): void =

  fcQGradient_setCoordinateMode(self.h, cint(mode))

proc interpolationMode*(self: QGradient, ): QGradientInterpolationMode =

  QGradientInterpolationMode(fcQGradient_interpolationMode(self.h))

proc setInterpolationMode*(self: QGradient, mode: QGradientInterpolationMode): void =

  fcQGradient_setInterpolationMode(self.h, cint(mode))

proc operatorEqual*(self: QGradient, gradient: QGradient): bool =

  fcQGradient_operatorEqual(self.h, gradient.h)

proc operatorNotEqual*(self: QGradient, other: QGradient): bool =

  fcQGradient_operatorNotEqual(self.h, other.h)

proc staticMetaObject*(_: type QGradient): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQGradient_staticMetaObject())
proc delete*(self: QGradient) =
  fcQGradient_delete(self.h)

func init*(T: type QLinearGradient, h: ptr cQLinearGradient): QLinearGradient =
  T(h: h)
proc create*(T: type QLinearGradient, ): QLinearGradient =

  QLinearGradient.init(fcQLinearGradient_new())
proc create*(T: type QLinearGradient, start: gen_qpoint.QPointF, finalStop: gen_qpoint.QPointF): QLinearGradient =

  QLinearGradient.init(fcQLinearGradient_new2(start.h, finalStop.h))
proc create*(T: type QLinearGradient, xStart: float64, yStart: float64, xFinalStop: float64, yFinalStop: float64): QLinearGradient =

  QLinearGradient.init(fcQLinearGradient_new3(xStart, yStart, xFinalStop, yFinalStop))
proc create*(T: type QLinearGradient, param1: QLinearGradient): QLinearGradient =

  QLinearGradient.init(fcQLinearGradient_new4(param1.h))
proc start*(self: QLinearGradient, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQLinearGradient_start(self.h))

proc setStart*(self: QLinearGradient, start: gen_qpoint.QPointF): void =

  fcQLinearGradient_setStart(self.h, start.h)

proc setStart2*(self: QLinearGradient, x: float64, y: float64): void =

  fcQLinearGradient_setStart2(self.h, x, y)

proc finalStop*(self: QLinearGradient, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQLinearGradient_finalStop(self.h))

proc setFinalStop*(self: QLinearGradient, stop: gen_qpoint.QPointF): void =

  fcQLinearGradient_setFinalStop(self.h, stop.h)

proc setFinalStop2*(self: QLinearGradient, x: float64, y: float64): void =

  fcQLinearGradient_setFinalStop2(self.h, x, y)

proc delete*(self: QLinearGradient) =
  fcQLinearGradient_delete(self.h)

func init*(T: type QRadialGradient, h: ptr cQRadialGradient): QRadialGradient =
  T(h: h)
proc create*(T: type QRadialGradient, ): QRadialGradient =

  QRadialGradient.init(fcQRadialGradient_new())
proc create*(T: type QRadialGradient, center: gen_qpoint.QPointF, radius: float64, focalPoint: gen_qpoint.QPointF): QRadialGradient =

  QRadialGradient.init(fcQRadialGradient_new2(center.h, radius, focalPoint.h))
proc create*(T: type QRadialGradient, cx: float64, cy: float64, radius: float64, fx: float64, fy: float64): QRadialGradient =

  QRadialGradient.init(fcQRadialGradient_new3(cx, cy, radius, fx, fy))
proc create*(T: type QRadialGradient, center: gen_qpoint.QPointF, radius: float64): QRadialGradient =

  QRadialGradient.init(fcQRadialGradient_new4(center.h, radius))
proc create*(T: type QRadialGradient, cx: float64, cy: float64, radius: float64): QRadialGradient =

  QRadialGradient.init(fcQRadialGradient_new5(cx, cy, radius))
proc create*(T: type QRadialGradient, center: gen_qpoint.QPointF, centerRadius: float64, focalPoint: gen_qpoint.QPointF, focalRadius: float64): QRadialGradient =

  QRadialGradient.init(fcQRadialGradient_new6(center.h, centerRadius, focalPoint.h, focalRadius))
proc create*(T: type QRadialGradient, cx: float64, cy: float64, centerRadius: float64, fx: float64, fy: float64, focalRadius: float64): QRadialGradient =

  QRadialGradient.init(fcQRadialGradient_new7(cx, cy, centerRadius, fx, fy, focalRadius))
proc create*(T: type QRadialGradient, param1: QRadialGradient): QRadialGradient =

  QRadialGradient.init(fcQRadialGradient_new8(param1.h))
proc center*(self: QRadialGradient, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQRadialGradient_center(self.h))

proc setCenter*(self: QRadialGradient, center: gen_qpoint.QPointF): void =

  fcQRadialGradient_setCenter(self.h, center.h)

proc setCenter2*(self: QRadialGradient, x: float64, y: float64): void =

  fcQRadialGradient_setCenter2(self.h, x, y)

proc focalPoint*(self: QRadialGradient, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQRadialGradient_focalPoint(self.h))

proc setFocalPoint*(self: QRadialGradient, focalPoint: gen_qpoint.QPointF): void =

  fcQRadialGradient_setFocalPoint(self.h, focalPoint.h)

proc setFocalPoint2*(self: QRadialGradient, x: float64, y: float64): void =

  fcQRadialGradient_setFocalPoint2(self.h, x, y)

proc radius*(self: QRadialGradient, ): float64 =

  fcQRadialGradient_radius(self.h)

proc setRadius*(self: QRadialGradient, radius: float64): void =

  fcQRadialGradient_setRadius(self.h, radius)

proc centerRadius*(self: QRadialGradient, ): float64 =

  fcQRadialGradient_centerRadius(self.h)

proc setCenterRadius*(self: QRadialGradient, radius: float64): void =

  fcQRadialGradient_setCenterRadius(self.h, radius)

proc focalRadius*(self: QRadialGradient, ): float64 =

  fcQRadialGradient_focalRadius(self.h)

proc setFocalRadius*(self: QRadialGradient, radius: float64): void =

  fcQRadialGradient_setFocalRadius(self.h, radius)

proc delete*(self: QRadialGradient) =
  fcQRadialGradient_delete(self.h)

func init*(T: type QConicalGradient, h: ptr cQConicalGradient): QConicalGradient =
  T(h: h)
proc create*(T: type QConicalGradient, ): QConicalGradient =

  QConicalGradient.init(fcQConicalGradient_new())
proc create*(T: type QConicalGradient, center: gen_qpoint.QPointF, startAngle: float64): QConicalGradient =

  QConicalGradient.init(fcQConicalGradient_new2(center.h, startAngle))
proc create*(T: type QConicalGradient, cx: float64, cy: float64, startAngle: float64): QConicalGradient =

  QConicalGradient.init(fcQConicalGradient_new3(cx, cy, startAngle))
proc create*(T: type QConicalGradient, param1: QConicalGradient): QConicalGradient =

  QConicalGradient.init(fcQConicalGradient_new4(param1.h))
proc center*(self: QConicalGradient, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQConicalGradient_center(self.h))

proc setCenter*(self: QConicalGradient, center: gen_qpoint.QPointF): void =

  fcQConicalGradient_setCenter(self.h, center.h)

proc setCenter2*(self: QConicalGradient, x: float64, y: float64): void =

  fcQConicalGradient_setCenter2(self.h, x, y)

proc angle*(self: QConicalGradient, ): float64 =

  fcQConicalGradient_angle(self.h)

proc setAngle*(self: QConicalGradient, angle: float64): void =

  fcQConicalGradient_setAngle(self.h, angle)

proc delete*(self: QConicalGradient) =
  fcQConicalGradient_delete(self.h)

func init*(T: type QGradientQGradientData, h: ptr cQGradientQGradientData): QGradientQGradientData =
  T(h: h)
proc create*(T: type QGradientQGradientData, param1: QGradientQGradientData): QGradientQGradientData =

  QGradientQGradientData.init(fcQGradientQGradientData_new(param1.h))
proc delete*(self: QGradientQGradientData) =
  fcQGradientQGradientData_delete(self.h)
