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
{.compile("gen_qlocale.cpp", cflags).}


type QLocaleLanguage* = cushort
const
  QLocaleAnyLanguage* = 0
  QLocaleC* = 1
  QLocaleAbkhazian* = 2
  QLocaleAfar* = 3
  QLocaleAfrikaans* = 4
  QLocaleAghem* = 5
  QLocaleAkan* = 6
  QLocaleAkkadian* = 7
  QLocaleAkoose* = 8
  QLocaleAlbanian* = 9
  QLocaleAmericanSignLanguage* = 10
  QLocaleAmharic* = 11
  QLocaleAncientEgyptian* = 12
  QLocaleAncientGreek* = 13
  QLocaleArabic* = 14
  QLocaleAragonese* = 15
  QLocaleAramaic* = 16
  QLocaleArmenian* = 17
  QLocaleAssamese* = 18
  QLocaleAsturian* = 19
  QLocaleAsu* = 20
  QLocaleAtsam* = 21
  QLocaleAvaric* = 22
  QLocaleAvestan* = 23
  QLocaleAymara* = 24
  QLocaleAzerbaijani* = 25
  QLocaleBafia* = 26
  QLocaleBalinese* = 27
  QLocaleBambara* = 28
  QLocaleBamun* = 29
  QLocaleBangla* = 30
  QLocaleBasaa* = 31
  QLocaleBashkir* = 32
  QLocaleBasque* = 33
  QLocaleBatakToba* = 34
  QLocaleBelarusian* = 35
  QLocaleBemba* = 36
  QLocaleBena* = 37
  QLocaleBhojpuri* = 38
  QLocaleBislama* = 39
  QLocaleBlin* = 40
  QLocaleBodo* = 41
  QLocaleBosnian* = 42
  QLocaleBreton* = 43
  QLocaleBuginese* = 44
  QLocaleBulgarian* = 45
  QLocaleBurmese* = 46
  QLocaleCantonese* = 47
  QLocaleCatalan* = 48
  QLocaleCebuano* = 49
  QLocaleCentralAtlasTamazight* = 50
  QLocaleCentralKurdish* = 51
  QLocaleChakma* = 52
  QLocaleChamorro* = 53
  QLocaleChechen* = 54
  QLocaleCherokee* = 55
  QLocaleChickasaw* = 56
  QLocaleChiga* = 57
  QLocaleChinese* = 58
  QLocaleChurch* = 59
  QLocaleChuvash* = 60
  QLocaleColognian* = 61
  QLocaleCoptic* = 62
  QLocaleCornish* = 63
  QLocaleCorsican* = 64
  QLocaleCree* = 65
  QLocaleCroatian* = 66
  QLocaleCzech* = 67
  QLocaleDanish* = 68
  QLocaleDivehi* = 69
  QLocaleDogri* = 70
  QLocaleDuala* = 71
  QLocaleDutch* = 72
  QLocaleDzongkha* = 73
  QLocaleEmbu* = 74
  QLocaleEnglish* = 75
  QLocaleErzya* = 76
  QLocaleEsperanto* = 77
  QLocaleEstonian* = 78
  QLocaleEwe* = 79
  QLocaleEwondo* = 80
  QLocaleFaroese* = 81
  QLocaleFijian* = 82
  QLocaleFilipino* = 83
  QLocaleFinnish* = 84
  QLocaleFrench* = 85
  QLocaleFriulian* = 86
  QLocaleFulah* = 87
  QLocaleGaelic* = 88
  QLocaleGa* = 89
  QLocaleGalician* = 90
  QLocaleGanda* = 91
  QLocaleGeez* = 92
  QLocaleGeorgian* = 93
  QLocaleGerman* = 94
  QLocaleGothic* = 95
  QLocaleGreek* = 96
  QLocaleGuarani* = 97
  QLocaleGujarati* = 98
  QLocaleGusii* = 99
  QLocaleHaitian* = 100
  QLocaleHausa* = 101
  QLocaleHawaiian* = 102
  QLocaleHebrew* = 103
  QLocaleHerero* = 104
  QLocaleHindi* = 105
  QLocaleHiriMotu* = 106
  QLocaleHungarian* = 107
  QLocaleIcelandic* = 108
  QLocaleIdo* = 109
  QLocaleIgbo* = 110
  QLocaleInariSami* = 111
  QLocaleIndonesian* = 112
  QLocaleIngush* = 113
  QLocaleInterlingua* = 114
  QLocaleInterlingue* = 115
  QLocaleInuktitut* = 116
  QLocaleInupiaq* = 117
  QLocaleIrish* = 118
  QLocaleItalian* = 119
  QLocaleJapanese* = 120
  QLocaleJavanese* = 121
  QLocaleJju* = 122
  QLocaleJolaFonyi* = 123
  QLocaleKabuverdianu* = 124
  QLocaleKabyle* = 125
  QLocaleKako* = 126
  QLocaleKalaallisut* = 127
  QLocaleKalenjin* = 128
  QLocaleKamba* = 129
  QLocaleKannada* = 130
  QLocaleKanuri* = 131
  QLocaleKashmiri* = 132
  QLocaleKazakh* = 133
  QLocaleKenyang* = 134
  QLocaleKhmer* = 135
  QLocaleKiche* = 136
  QLocaleKikuyu* = 137
  QLocaleKinyarwanda* = 138
  QLocaleKomi* = 139
  QLocaleKongo* = 140
  QLocaleKonkani* = 141
  QLocaleKorean* = 142
  QLocaleKoro* = 143
  QLocaleKoyraboroSenni* = 144
  QLocaleKoyraChiini* = 145
  QLocaleKpelle* = 146
  QLocaleKuanyama* = 147
  QLocaleKurdish* = 148
  QLocaleKwasio* = 149
  QLocaleKyrgyz* = 150
  QLocaleLakota* = 151
  QLocaleLangi* = 152
  QLocaleLao* = 153
  QLocaleLatin* = 154
  QLocaleLatvian* = 155
  QLocaleLezghian* = 156
  QLocaleLimburgish* = 157
  QLocaleLingala* = 158
  QLocaleLiteraryChinese* = 159
  QLocaleLithuanian* = 160
  QLocaleLojban* = 161
  QLocaleLowerSorbian* = 162
  QLocaleLowGerman* = 163
  QLocaleLubaKatanga* = 164
  QLocaleLuleSami* = 165
  QLocaleLuo* = 166
  QLocaleLuxembourgish* = 167
  QLocaleLuyia* = 168
  QLocaleMacedonian* = 169
  QLocaleMachame* = 170
  QLocaleMaithili* = 171
  QLocaleMakhuwaMeetto* = 172
  QLocaleMakonde* = 173
  QLocaleMalagasy* = 174
  QLocaleMalayalam* = 175
  QLocaleMalay* = 176
  QLocaleMaltese* = 177
  QLocaleMandingo* = 178
  QLocaleManipuri* = 179
  QLocaleManx* = 180
  QLocaleMaori* = 181
  QLocaleMapuche* = 182
  QLocaleMarathi* = 183
  QLocaleMarshallese* = 184
  QLocaleMasai* = 185
  QLocaleMazanderani* = 186
  QLocaleMende* = 187
  QLocaleMeru* = 188
  QLocaleMeta* = 189
  QLocaleMohawk* = 190
  QLocaleMongolian* = 191
  QLocaleMorisyen* = 192
  QLocaleMundang* = 193
  QLocaleMuscogee* = 194
  QLocaleNama* = 195
  QLocaleNauruLanguage* = 196
  QLocaleNavajo* = 197
  QLocaleNdonga* = 198
  QLocaleNepali* = 199
  QLocaleNewari* = 200
  QLocaleNgiemboon* = 201
  QLocaleNgomba* = 202
  QLocaleNigerianPidgin* = 203
  QLocaleNko* = 204
  QLocaleNorthernLuri* = 205
  QLocaleNorthernSami* = 206
  QLocaleNorthernSotho* = 207
  QLocaleNorthNdebele* = 208
  QLocaleNorwegianBokmal* = 209
  QLocaleNorwegianNynorsk* = 210
  QLocaleNuer* = 211
  QLocaleNyanja* = 212
  QLocaleNyankole* = 213
  QLocaleOccitan* = 214
  QLocaleOdia* = 215
  QLocaleOjibwa* = 216
  QLocaleOldIrish* = 217
  QLocaleOldNorse* = 218
  QLocaleOldPersian* = 219
  QLocaleOromo* = 220
  QLocaleOsage* = 221
  QLocaleOssetic* = 222
  QLocalePahlavi* = 223
  QLocalePalauan* = 224
  QLocalePali* = 225
  QLocalePapiamento* = 226
  QLocalePashto* = 227
  QLocalePersian* = 228
  QLocalePhoenician* = 229
  QLocalePolish* = 230
  QLocalePortuguese* = 231
  QLocalePrussian* = 232
  QLocalePunjabi* = 233
  QLocaleQuechua* = 234
  QLocaleRomanian* = 235
  QLocaleRomansh* = 236
  QLocaleRombo* = 237
  QLocaleRundi* = 238
  QLocaleRussian* = 239
  QLocaleRwa* = 240
  QLocaleSaho* = 241
  QLocaleSakha* = 242
  QLocaleSamburu* = 243
  QLocaleSamoan* = 244
  QLocaleSango* = 245
  QLocaleSangu* = 246
  QLocaleSanskrit* = 247
  QLocaleSantali* = 248
  QLocaleSardinian* = 249
  QLocaleSaurashtra* = 250
  QLocaleSena* = 251
  QLocaleSerbian* = 252
  QLocaleShambala* = 253
  QLocaleShona* = 254
  QLocaleSichuanYi* = 255
  QLocaleSicilian* = 256
  QLocaleSidamo* = 257
  QLocaleSilesian* = 258
  QLocaleSindhi* = 259
  QLocaleSinhala* = 260
  QLocaleSkoltSami* = 261
  QLocaleSlovak* = 262
  QLocaleSlovenian* = 263
  QLocaleSoga* = 264
  QLocaleSomali* = 265
  QLocaleSouthernKurdish* = 266
  QLocaleSouthernSami* = 267
  QLocaleSouthernSotho* = 268
  QLocaleSouthNdebele* = 269
  QLocaleSpanish* = 270
  QLocaleStandardMoroccanTamazight* = 271
  QLocaleSundanese* = 272
  QLocaleSwahili* = 273
  QLocaleSwati* = 274
  QLocaleSwedish* = 275
  QLocaleSwissGerman* = 276
  QLocaleSyriac* = 277
  QLocaleTachelhit* = 278
  QLocaleTahitian* = 279
  QLocaleTaiDam* = 280
  QLocaleTaita* = 281
  QLocaleTajik* = 282
  QLocaleTamil* = 283
  QLocaleTaroko* = 284
  QLocaleTasawaq* = 285
  QLocaleTatar* = 286
  QLocaleTelugu* = 287
  QLocaleTeso* = 288
  QLocaleThai* = 289
  QLocaleTibetan* = 290
  QLocaleTigre* = 291
  QLocaleTigrinya* = 292
  QLocaleTokelauLanguage* = 293
  QLocaleTokPisin* = 294
  QLocaleTongan* = 295
  QLocaleTsonga* = 296
  QLocaleTswana* = 297
  QLocaleTurkish* = 298
  QLocaleTurkmen* = 299
  QLocaleTuvaluLanguage* = 300
  QLocaleTyap* = 301
  QLocaleUgaritic* = 302
  QLocaleUkrainian* = 303
  QLocaleUpperSorbian* = 304
  QLocaleUrdu* = 305
  QLocaleUyghur* = 306
  QLocaleUzbek* = 307
  QLocaleVai* = 308
  QLocaleVenda* = 309
  QLocaleVietnamese* = 310
  QLocaleVolapuk* = 311
  QLocaleVunjo* = 312
  QLocaleWalloon* = 313
  QLocaleWalser* = 314
  QLocaleWarlpiri* = 315
  QLocaleWelsh* = 316
  QLocaleWesternBalochi* = 317
  QLocaleWesternFrisian* = 318
  QLocaleWolaytta* = 319
  QLocaleWolof* = 320
  QLocaleXhosa* = 321
  QLocaleYangben* = 322
  QLocaleYiddish* = 323
  QLocaleYoruba* = 324
  QLocaleZarma* = 325
  QLocaleZhuang* = 326
  QLocaleZulu* = 327
  QLocaleKaingang* = 328
  QLocaleNheengatu* = 329
  QLocaleAfan* = 220
  QLocaleBengali* = 30
  QLocaleBhutani* = 73
  QLocaleByelorussian* = 35
  QLocaleCambodian* = 135
  QLocaleCentralMoroccoTamazight* = 50
  QLocaleChewa* = 212
  QLocaleFrisian* = 318
  QLocaleGreenlandic* = 127
  QLocaleInupiak* = 117
  QLocaleKirghiz* = 150
  QLocaleKurundi* = 238
  QLocaleKwanyama* = 147
  QLocaleNavaho* = 197
  QLocaleOriya* = 215
  QLocaleRhaetoRomance* = 236
  QLocaleUighur* = 306
  QLocaleUigur* = 306
  QLocaleWalamo* = 319
  QLocaleLastLanguage* = 329



type QLocaleScript* = cushort
const
  QLocaleAnyScript* = 0
  QLocaleAdlamScript* = 1
  QLocaleAhomScript* = 2
  QLocaleAnatolianHieroglyphsScript* = 3
  QLocaleArabicScript* = 4
  QLocaleArmenianScript* = 5
  QLocaleAvestanScript* = 6
  QLocaleBalineseScript* = 7
  QLocaleBamumScript* = 8
  QLocaleBanglaScript* = 9
  QLocaleBassaVahScript* = 10
  QLocaleBatakScript* = 11
  QLocaleBhaiksukiScript* = 12
  QLocaleBopomofoScript* = 13
  QLocaleBrahmiScript* = 14
  QLocaleBrailleScript* = 15
  QLocaleBugineseScript* = 16
  QLocaleBuhidScript* = 17
  QLocaleCanadianAboriginalScript* = 18
  QLocaleCarianScript* = 19
  QLocaleCaucasianAlbanianScript* = 20
  QLocaleChakmaScript* = 21
  QLocaleChamScript* = 22
  QLocaleCherokeeScript* = 23
  QLocaleCopticScript* = 24
  QLocaleCuneiformScript* = 25
  QLocaleCypriotScript* = 26
  QLocaleCyrillicScript* = 27
  QLocaleDeseretScript* = 28
  QLocaleDevanagariScript* = 29
  QLocaleDuployanScript* = 30
  QLocaleEgyptianHieroglyphsScript* = 31
  QLocaleElbasanScript* = 32
  QLocaleEthiopicScript* = 33
  QLocaleFraserScript* = 34
  QLocaleGeorgianScript* = 35
  QLocaleGlagoliticScript* = 36
  QLocaleGothicScript* = 37
  QLocaleGranthaScript* = 38
  QLocaleGreekScript* = 39
  QLocaleGujaratiScript* = 40
  QLocaleGurmukhiScript* = 41
  QLocaleHangulScript* = 42
  QLocaleHanScript* = 43
  QLocaleHanunooScript* = 44
  QLocaleHanWithBopomofoScript* = 45
  QLocaleHatranScript* = 46
  QLocaleHebrewScript* = 47
  QLocaleHiraganaScript* = 48
  QLocaleImperialAramaicScript* = 49
  QLocaleInscriptionalPahlaviScript* = 50
  QLocaleInscriptionalParthianScript* = 51
  QLocaleJamoScript* = 52
  QLocaleJapaneseScript* = 53
  QLocaleJavaneseScript* = 54
  QLocaleKaithiScript* = 55
  QLocaleKannadaScript* = 56
  QLocaleKatakanaScript* = 57
  QLocaleKayahLiScript* = 58
  QLocaleKharoshthiScript* = 59
  QLocaleKhmerScript* = 60
  QLocaleKhojkiScript* = 61
  QLocaleKhudawadiScript* = 62
  QLocaleKoreanScript* = 63
  QLocaleLannaScript* = 64
  QLocaleLaoScript* = 65
  QLocaleLatinScript* = 66
  QLocaleLepchaScript* = 67
  QLocaleLimbuScript* = 68
  QLocaleLinearAScript* = 69
  QLocaleLinearBScript* = 70
  QLocaleLycianScript* = 71
  QLocaleLydianScript* = 72
  QLocaleMahajaniScript* = 73
  QLocaleMalayalamScript* = 74
  QLocaleMandaeanScript* = 75
  QLocaleManichaeanScript* = 76
  QLocaleMarchenScript* = 77
  QLocaleMeiteiMayekScript* = 78
  QLocaleMendeScript* = 79
  QLocaleMeroiticCursiveScript* = 80
  QLocaleMeroiticScript* = 81
  QLocaleModiScript* = 82
  QLocaleMongolianScript* = 83
  QLocaleMroScript* = 84
  QLocaleMultaniScript* = 85
  QLocaleMyanmarScript* = 86
  QLocaleNabataeanScript* = 87
  QLocaleNewaScript* = 88
  QLocaleNewTaiLueScript* = 89
  QLocaleNkoScript* = 90
  QLocaleOdiaScript* = 91
  QLocaleOghamScript* = 92
  QLocaleOlChikiScript* = 93
  QLocaleOldHungarianScript* = 94
  QLocaleOldItalicScript* = 95
  QLocaleOldNorthArabianScript* = 96
  QLocaleOldPermicScript* = 97
  QLocaleOldPersianScript* = 98
  QLocaleOldSouthArabianScript* = 99
  QLocaleOrkhonScript* = 100
  QLocaleOsageScript* = 101
  QLocaleOsmanyaScript* = 102
  QLocalePahawhHmongScript* = 103
  QLocalePalmyreneScript* = 104
  QLocalePauCinHauScript* = 105
  QLocalePhagsPaScript* = 106
  QLocalePhoenicianScript* = 107
  QLocalePollardPhoneticScript* = 108
  QLocalePsalterPahlaviScript* = 109
  QLocaleRejangScript* = 110
  QLocaleRunicScript* = 111
  QLocaleSamaritanScript* = 112
  QLocaleSaurashtraScript* = 113
  QLocaleSharadaScript* = 114
  QLocaleShavianScript* = 115
  QLocaleSiddhamScript* = 116
  QLocaleSignWritingScript* = 117
  QLocaleSimplifiedHanScript* = 118
  QLocaleSinhalaScript* = 119
  QLocaleSoraSompengScript* = 120
  QLocaleSundaneseScript* = 121
  QLocaleSylotiNagriScript* = 122
  QLocaleSyriacScript* = 123
  QLocaleTagalogScript* = 124
  QLocaleTagbanwaScript* = 125
  QLocaleTaiLeScript* = 126
  QLocaleTaiVietScript* = 127
  QLocaleTakriScript* = 128
  QLocaleTamilScript* = 129
  QLocaleTangutScript* = 130
  QLocaleTeluguScript* = 131
  QLocaleThaanaScript* = 132
  QLocaleThaiScript* = 133
  QLocaleTibetanScript* = 134
  QLocaleTifinaghScript* = 135
  QLocaleTirhutaScript* = 136
  QLocaleTraditionalHanScript* = 137
  QLocaleUgariticScript* = 138
  QLocaleVaiScript* = 139
  QLocaleVarangKshitiScript* = 140
  QLocaleYiScript* = 141
  QLocaleBengaliScript* = 9
  QLocaleMendeKikakuiScript* = 79
  QLocaleOriyaScript* = 91
  QLocaleSimplifiedChineseScript* = 118
  QLocaleTraditionalChineseScript* = 137
  QLocaleLastScript* = 141



type QLocaleCountry* = cushort
const
  QLocaleAnyTerritory* = 0
  QLocaleAfghanistan* = 1
  QLocaleAlandIslands* = 2
  QLocaleAlbania* = 3
  QLocaleAlgeria* = 4
  QLocaleAmericanSamoa* = 5
  QLocaleAndorra* = 6
  QLocaleAngola* = 7
  QLocaleAnguilla* = 8
  QLocaleAntarctica* = 9
  QLocaleAntiguaAndBarbuda* = 10
  QLocaleArgentina* = 11
  QLocaleArmenia* = 12
  QLocaleAruba* = 13
  QLocaleAscensionIsland* = 14
  QLocaleAustralia* = 15
  QLocaleAustria* = 16
  QLocaleAzerbaijan* = 17
  QLocaleBahamas* = 18
  QLocaleBahrain* = 19
  QLocaleBangladesh* = 20
  QLocaleBarbados* = 21
  QLocaleBelarus* = 22
  QLocaleBelgium* = 23
  QLocaleBelize* = 24
  QLocaleBenin* = 25
  QLocaleBermuda* = 26
  QLocaleBhutan* = 27
  QLocaleBolivia* = 28
  QLocaleBosniaAndHerzegovina* = 29
  QLocaleBotswana* = 30
  QLocaleBouvetIsland* = 31
  QLocaleBrazil* = 32
  QLocaleBritishIndianOceanTerritory* = 33
  QLocaleBritishVirginIslands* = 34
  QLocaleBrunei* = 35
  QLocaleBulgaria* = 36
  QLocaleBurkinaFaso* = 37
  QLocaleBurundi* = 38
  QLocaleCambodia* = 39
  QLocaleCameroon* = 40
  QLocaleCanada* = 41
  QLocaleCanaryIslands* = 42
  QLocaleCapeVerde* = 43
  QLocaleCaribbeanNetherlands* = 44
  QLocaleCaymanIslands* = 45
  QLocaleCentralAfricanRepublic* = 46
  QLocaleCeutaAndMelilla* = 47
  QLocaleChad* = 48
  QLocaleChile* = 49
  QLocaleChina* = 50
  QLocaleChristmasIsland* = 51
  QLocaleClippertonIsland* = 52
  QLocaleCocosIslands* = 53
  QLocaleColombia* = 54
  QLocaleComoros* = 55
  QLocaleCongoBrazzaville* = 56
  QLocaleCongoKinshasa* = 57
  QLocaleCookIslands* = 58
  QLocaleCostaRica* = 59
  QLocaleCroatia* = 60
  QLocaleCuba* = 61
  QLocaleCuracao* = 62
  QLocaleCyprus* = 63
  QLocaleCzechia* = 64
  QLocaleDenmark* = 65
  QLocaleDiegoGarcia* = 66
  QLocaleDjibouti* = 67
  QLocaleDominica* = 68
  QLocaleDominicanRepublic* = 69
  QLocaleEcuador* = 70
  QLocaleEgypt* = 71
  QLocaleElSalvador* = 72
  QLocaleEquatorialGuinea* = 73
  QLocaleEritrea* = 74
  QLocaleEstonia* = 75
  QLocaleEswatini* = 76
  QLocaleEthiopia* = 77
  QLocaleEurope* = 78
  QLocaleEuropeanUnion* = 79
  QLocaleFalklandIslands* = 80
  QLocaleFaroeIslands* = 81
  QLocaleFiji* = 82
  QLocaleFinland* = 83
  QLocaleFrance* = 84
  QLocaleFrenchGuiana* = 85
  QLocaleFrenchPolynesia* = 86
  QLocaleFrenchSouthernTerritories* = 87
  QLocaleGabon* = 88
  QLocaleGambia* = 89
  QLocaleGeorgia* = 90
  QLocaleGermany* = 91
  QLocaleGhana* = 92
  QLocaleGibraltar* = 93
  QLocaleGreece* = 94
  QLocaleGreenland* = 95
  QLocaleGrenada* = 96
  QLocaleGuadeloupe* = 97
  QLocaleGuam* = 98
  QLocaleGuatemala* = 99
  QLocaleGuernsey* = 100
  QLocaleGuineaBissau* = 101
  QLocaleGuinea* = 102
  QLocaleGuyana* = 103
  QLocaleHaiti* = 104
  QLocaleHeardAndMcDonaldIslands* = 105
  QLocaleHonduras* = 106
  QLocaleHongKong* = 107
  QLocaleHungary* = 108
  QLocaleIceland* = 109
  QLocaleIndia* = 110
  QLocaleIndonesia* = 111
  QLocaleIran* = 112
  QLocaleIraq* = 113
  QLocaleIreland* = 114
  QLocaleIsleOfMan* = 115
  QLocaleIsrael* = 116
  QLocaleItaly* = 117
  QLocaleIvoryCoast* = 118
  QLocaleJamaica* = 119
  QLocaleJapan* = 120
  QLocaleJersey* = 121
  QLocaleJordan* = 122
  QLocaleKazakhstan* = 123
  QLocaleKenya* = 124
  QLocaleKiribati* = 125
  QLocaleKosovo* = 126
  QLocaleKuwait* = 127
  QLocaleKyrgyzstan* = 128
  QLocaleLaos* = 129
  QLocaleLatinAmerica* = 130
  QLocaleLatvia* = 131
  QLocaleLebanon* = 132
  QLocaleLesotho* = 133
  QLocaleLiberia* = 134
  QLocaleLibya* = 135
  QLocaleLiechtenstein* = 136
  QLocaleLithuania* = 137
  QLocaleLuxembourg* = 138
  QLocaleMacao* = 139
  QLocaleMacedonia* = 140
  QLocaleMadagascar* = 141
  QLocaleMalawi* = 142
  QLocaleMalaysia* = 143
  QLocaleMaldives* = 144
  QLocaleMali* = 145
  QLocaleMalta* = 146
  QLocaleMarshallIslands* = 147
  QLocaleMartinique* = 148
  QLocaleMauritania* = 149
  QLocaleMauritius* = 150
  QLocaleMayotte* = 151
  QLocaleMexico* = 152
  QLocaleMicronesia* = 153
  QLocaleMoldova* = 154
  QLocaleMonaco* = 155
  QLocaleMongolia* = 156
  QLocaleMontenegro* = 157
  QLocaleMontserrat* = 158
  QLocaleMorocco* = 159
  QLocaleMozambique* = 160
  QLocaleMyanmar* = 161
  QLocaleNamibia* = 162
  QLocaleNauruTerritory* = 163
  QLocaleNepal* = 164
  QLocaleNetherlands* = 165
  QLocaleNewCaledonia* = 166
  QLocaleNewZealand* = 167
  QLocaleNicaragua* = 168
  QLocaleNigeria* = 169
  QLocaleNiger* = 170
  QLocaleNiue* = 171
  QLocaleNorfolkIsland* = 172
  QLocaleNorthernMarianaIslands* = 173
  QLocaleNorthKorea* = 174
  QLocaleNorway* = 175
  QLocaleOman* = 176
  QLocaleOutlyingOceania* = 177
  QLocalePakistan* = 178
  QLocalePalau* = 179
  QLocalePalestinianTerritories* = 180
  QLocalePanama* = 181
  QLocalePapuaNewGuinea* = 182
  QLocaleParaguay* = 183
  QLocalePeru* = 184
  QLocalePhilippines* = 185
  QLocalePitcairn* = 186
  QLocalePoland* = 187
  QLocalePortugal* = 188
  QLocalePuertoRico* = 189
  QLocaleQatar* = 190
  QLocaleReunion* = 191
  QLocaleRomania* = 192
  QLocaleRussia* = 193
  QLocaleRwanda* = 194
  QLocaleSaintBarthelemy* = 195
  QLocaleSaintHelena* = 196
  QLocaleSaintKittsAndNevis* = 197
  QLocaleSaintLucia* = 198
  QLocaleSaintMartin* = 199
  QLocaleSaintPierreAndMiquelon* = 200
  QLocaleSaintVincentAndGrenadines* = 201
  QLocaleSamoa* = 202
  QLocaleSanMarino* = 203
  QLocaleSaoTomeAndPrincipe* = 204
  QLocaleSaudiArabia* = 205
  QLocaleSenegal* = 206
  QLocaleSerbia* = 207
  QLocaleSeychelles* = 208
  QLocaleSierraLeone* = 209
  QLocaleSingapore* = 210
  QLocaleSintMaarten* = 211
  QLocaleSlovakia* = 212
  QLocaleSlovenia* = 213
  QLocaleSolomonIslands* = 214
  QLocaleSomalia* = 215
  QLocaleSouthAfrica* = 216
  QLocaleSouthGeorgiaAndSouthSandwichIslands* = 217
  QLocaleSouthKorea* = 218
  QLocaleSouthSudan* = 219
  QLocaleSpain* = 220
  QLocaleSriLanka* = 221
  QLocaleSudan* = 222
  QLocaleSuriname* = 223
  QLocaleSvalbardAndJanMayen* = 224
  QLocaleSweden* = 225
  QLocaleSwitzerland* = 226
  QLocaleSyria* = 227
  QLocaleTaiwan* = 228
  QLocaleTajikistan* = 229
  QLocaleTanzania* = 230
  QLocaleThailand* = 231
  QLocaleTimorLeste* = 232
  QLocaleTogo* = 233
  QLocaleTokelauTerritory* = 234
  QLocaleTonga* = 235
  QLocaleTrinidadAndTobago* = 236
  QLocaleTristanDaCunha* = 237
  QLocaleTunisia* = 238
  QLocaleTurkey* = 239
  QLocaleTurkmenistan* = 240
  QLocaleTurksAndCaicosIslands* = 241
  QLocaleTuvaluTerritory* = 242
  QLocaleUganda* = 243
  QLocaleUkraine* = 244
  QLocaleUnitedArabEmirates* = 245
  QLocaleUnitedKingdom* = 246
  QLocaleUnitedStatesOutlyingIslands* = 247
  QLocaleUnitedStates* = 248
  QLocaleUnitedStatesVirginIslands* = 249
  QLocaleUruguay* = 250
  QLocaleUzbekistan* = 251
  QLocaleVanuatu* = 252
  QLocaleVaticanCity* = 253
  QLocaleVenezuela* = 254
  QLocaleVietnam* = 255
  QLocaleWallisAndFutuna* = 256
  QLocaleWesternSahara* = 257
  QLocaleWorld* = 258
  QLocaleYemen* = 259
  QLocaleZambia* = 260
  QLocaleZimbabwe* = 261
  QLocaleAnyCountry* = 0
  QLocaleBonaire* = 44
  QLocaleBosniaAndHerzegowina* = 29
  QLocaleCuraSao* = 62
  QLocaleCzechRepublic* = 64
  QLocaleDemocraticRepublicOfCongo* = 57
  QLocaleDemocraticRepublicOfKorea* = 174
  QLocaleEastTimor* = 232
  QLocaleLatinAmericaAndTheCaribbean* = 130
  QLocaleMacau* = 139
  QLocaleNauruCountry* = 163
  QLocalePeoplesRepublicOfCongo* = 56
  QLocaleRepublicOfKorea* = 218
  QLocaleRussianFederation* = 193
  QLocaleSaintVincentAndTheGrenadines* = 201
  QLocaleSouthGeorgiaAndTheSouthSandwichIslands* = 217
  QLocaleSvalbardAndJanMayenIslands* = 224
  QLocaleSwaziland* = 76
  QLocaleSyrianArabRepublic* = 227
  QLocaleTokelauCountry* = 234
  QLocaleTuvaluCountry* = 242
  QLocaleUnitedStatesMinorOutlyingIslands* = 247
  QLocaleVaticanCityState* = 253
  QLocaleWallisAndFutunaIslands* = 256
  QLocaleLastTerritory* = 261
  QLocaleLastCountry* = 261



type QLocaleMeasurementSystem* = cint
const
  QLocaleMetricSystem* = 0
  QLocaleImperialUSSystem* = 1
  QLocaleImperialUKSystem* = 2
  QLocaleImperialSystem* = 1



type QLocaleFormatType* = cint
const
  QLocaleLongFormat* = 0
  QLocaleShortFormat* = 1
  QLocaleNarrowFormat* = 2



type QLocaleNumberOption* = cint
const
  QLocaleDefaultNumberOptions* = 0
  QLocaleOmitGroupSeparator* = 1
  QLocaleRejectGroupSeparator* = 2
  QLocaleOmitLeadingZeroInExponent* = 4
  QLocaleRejectLeadingZeroInExponent* = 8
  QLocaleIncludeTrailingZeroesAfterDot* = 16
  QLocaleRejectTrailingZeroesAfterDot* = 32



type QLocaleFloatingPointPrecisionOption* = cint
const
  QLocaleFloatingPointShortest* = -128



type QLocaleCurrencySymbolFormat* = cint
const
  QLocaleCurrencyIsoCode* = 0
  QLocaleCurrencySymbol* = 1
  QLocaleCurrencyDisplayName* = 2



type QLocaleDataSizeFormat* = cint
const
  QLocaleDataSizeBase1000* = 1
  QLocaleDataSizeSIQuantifiers* = 2
  QLocaleDataSizeIecFormat* = 0
  QLocaleDataSizeTraditionalFormat* = 2
  QLocaleDataSizeSIFormat* = 3



type QLocaleLanguageCodeType* = cint
const
  QLocaleISO639Part1* = 1
  QLocaleISO639Part2B* = 2
  QLocaleISO639Part2T* = 4
  QLocaleISO639Part3* = 8
  QLocaleLegacyLanguageCode* = 32768
  QLocaleISO639Part2* = 6
  QLocaleISO639Alpha2* = 1
  QLocaleISO639Alpha3* = 14
  QLocaleISO639* = 15
  QLocaleAnyLanguageCode* = -1



type QLocaleQuotationStyle* = cint
const
  QLocaleStandardQuotation* = 0
  QLocaleAlternateQuotation* = 1



import gen_qlocale_types
export gen_qlocale_types

import
  gen_qcalendar,
  gen_qdatetime,
  gen_qnamespace,
  gen_qobjectdefs
export
  gen_qcalendar,
  gen_qdatetime,
  gen_qnamespace,
  gen_qobjectdefs

type cQLocale*{.exportc: "QLocale", incompleteStruct.} = object

proc fcQLocale_new(): ptr cQLocale {.importc: "QLocale_new".}
proc fcQLocale_new2(name: struct_miqt_string): ptr cQLocale {.importc: "QLocale_new2".}
proc fcQLocale_new3(language: cint, territory: cint): ptr cQLocale {.importc: "QLocale_new3".}
proc fcQLocale_new4(language: cint): ptr cQLocale {.importc: "QLocale_new4".}
proc fcQLocale_new5(other: pointer): ptr cQLocale {.importc: "QLocale_new5".}
proc fcQLocale_new6(language: cint, script: cint): ptr cQLocale {.importc: "QLocale_new6".}
proc fcQLocale_new7(language: cint, script: cint, territory: cint): ptr cQLocale {.importc: "QLocale_new7".}
proc fcQLocale_operatorAssign(self: pointer, other: pointer): void {.importc: "QLocale_operatorAssign".}
proc fcQLocale_swap(self: pointer, other: pointer): void {.importc: "QLocale_swap".}
proc fcQLocale_language(self: pointer, ): cint {.importc: "QLocale_language".}
proc fcQLocale_script(self: pointer, ): cint {.importc: "QLocale_script".}
proc fcQLocale_territory(self: pointer, ): cint {.importc: "QLocale_territory".}
proc fcQLocale_country(self: pointer, ): cint {.importc: "QLocale_country".}
proc fcQLocale_name(self: pointer, ): struct_miqt_string {.importc: "QLocale_name".}
proc fcQLocale_bcp47Name(self: pointer, ): struct_miqt_string {.importc: "QLocale_bcp47Name".}
proc fcQLocale_nativeLanguageName(self: pointer, ): struct_miqt_string {.importc: "QLocale_nativeLanguageName".}
proc fcQLocale_nativeTerritoryName(self: pointer, ): struct_miqt_string {.importc: "QLocale_nativeTerritoryName".}
proc fcQLocale_nativeCountryName(self: pointer, ): struct_miqt_string {.importc: "QLocale_nativeCountryName".}
proc fcQLocale_toShort(self: pointer, s: struct_miqt_string): cshort {.importc: "QLocale_toShort".}
proc fcQLocale_toUShort(self: pointer, s: struct_miqt_string): cushort {.importc: "QLocale_toUShort".}
proc fcQLocale_toInt(self: pointer, s: struct_miqt_string): cint {.importc: "QLocale_toInt".}
proc fcQLocale_toUInt(self: pointer, s: struct_miqt_string): cuint {.importc: "QLocale_toUInt".}
proc fcQLocale_toLong(self: pointer, s: struct_miqt_string): clong {.importc: "QLocale_toLong".}
proc fcQLocale_toULong(self: pointer, s: struct_miqt_string): culong {.importc: "QLocale_toULong".}
proc fcQLocale_toLongLong(self: pointer, s: struct_miqt_string): clonglong {.importc: "QLocale_toLongLong".}
proc fcQLocale_toULongLong(self: pointer, s: struct_miqt_string): culonglong {.importc: "QLocale_toULongLong".}
proc fcQLocale_toFloat(self: pointer, s: struct_miqt_string): float32 {.importc: "QLocale_toFloat".}
proc fcQLocale_toDouble(self: pointer, s: struct_miqt_string): float64 {.importc: "QLocale_toDouble".}
proc fcQLocale_toString(self: pointer, i: clonglong): struct_miqt_string {.importc: "QLocale_toString".}
proc fcQLocale_toStringWithQulonglong(self: pointer, i: culonglong): struct_miqt_string {.importc: "QLocale_toStringWithQulonglong".}
proc fcQLocale_toStringWithLong(self: pointer, i: clong): struct_miqt_string {.importc: "QLocale_toStringWithLong".}
proc fcQLocale_toStringWithUlong(self: pointer, i: culong): struct_miqt_string {.importc: "QLocale_toStringWithUlong".}
proc fcQLocale_toStringWithShort(self: pointer, i: cshort): struct_miqt_string {.importc: "QLocale_toStringWithShort".}
proc fcQLocale_toStringWithUshort(self: pointer, i: cushort): struct_miqt_string {.importc: "QLocale_toStringWithUshort".}
proc fcQLocale_toStringWithInt(self: pointer, i: cint): struct_miqt_string {.importc: "QLocale_toStringWithInt".}
proc fcQLocale_toStringWithUint(self: pointer, i: cuint): struct_miqt_string {.importc: "QLocale_toStringWithUint".}
proc fcQLocale_toStringWithDouble(self: pointer, f: float64): struct_miqt_string {.importc: "QLocale_toStringWithDouble".}
proc fcQLocale_toStringWithFloat(self: pointer, f: float32): struct_miqt_string {.importc: "QLocale_toStringWithFloat".}
proc fcQLocale_toString2(self: pointer, date: pointer, format: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toString2".}
proc fcQLocale_toString3(self: pointer, time: pointer, format: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toString3".}
proc fcQLocale_toString4(self: pointer, dateTime: pointer, format: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toString4".}
proc fcQLocale_toStringWithDate(self: pointer, date: pointer): struct_miqt_string {.importc: "QLocale_toStringWithDate".}
proc fcQLocale_toStringWithTime(self: pointer, time: pointer): struct_miqt_string {.importc: "QLocale_toStringWithTime".}
proc fcQLocale_toStringWithDateTime(self: pointer, dateTime: pointer): struct_miqt_string {.importc: "QLocale_toStringWithDateTime".}
proc fcQLocale_toString9(self: pointer, date: pointer, format: cint, cal: pointer): struct_miqt_string {.importc: "QLocale_toString9".}
proc fcQLocale_toString10(self: pointer, dateTime: pointer, format: cint, cal: pointer): struct_miqt_string {.importc: "QLocale_toString10".}
proc fcQLocale_dateFormat(self: pointer, ): struct_miqt_string {.importc: "QLocale_dateFormat".}
proc fcQLocale_timeFormat(self: pointer, ): struct_miqt_string {.importc: "QLocale_timeFormat".}
proc fcQLocale_dateTimeFormat(self: pointer, ): struct_miqt_string {.importc: "QLocale_dateTimeFormat".}
proc fcQLocale_toDate(self: pointer, string: struct_miqt_string): pointer {.importc: "QLocale_toDate".}
proc fcQLocale_toTime(self: pointer, string: struct_miqt_string): pointer {.importc: "QLocale_toTime".}
proc fcQLocale_toDateTime(self: pointer, string: struct_miqt_string): pointer {.importc: "QLocale_toDateTime".}
proc fcQLocale_toDate2(self: pointer, string: struct_miqt_string, format: struct_miqt_string): pointer {.importc: "QLocale_toDate2".}
proc fcQLocale_toTime2(self: pointer, string: struct_miqt_string, format: struct_miqt_string): pointer {.importc: "QLocale_toTime2".}
proc fcQLocale_toDateTime2(self: pointer, string: struct_miqt_string, format: struct_miqt_string): pointer {.importc: "QLocale_toDateTime2".}
proc fcQLocale_toDate3(self: pointer, string: struct_miqt_string, format: cint, cal: pointer): pointer {.importc: "QLocale_toDate3".}
proc fcQLocale_toDateTime3(self: pointer, string: struct_miqt_string, format: cint, cal: pointer): pointer {.importc: "QLocale_toDateTime3".}
proc fcQLocale_toDate4(self: pointer, string: struct_miqt_string, format: struct_miqt_string, cal: pointer): pointer {.importc: "QLocale_toDate4".}
proc fcQLocale_toDateTime4(self: pointer, string: struct_miqt_string, format: struct_miqt_string, cal: pointer): pointer {.importc: "QLocale_toDateTime4".}
proc fcQLocale_decimalPoint(self: pointer, ): struct_miqt_string {.importc: "QLocale_decimalPoint".}
proc fcQLocale_groupSeparator(self: pointer, ): struct_miqt_string {.importc: "QLocale_groupSeparator".}
proc fcQLocale_percent(self: pointer, ): struct_miqt_string {.importc: "QLocale_percent".}
proc fcQLocale_zeroDigit(self: pointer, ): struct_miqt_string {.importc: "QLocale_zeroDigit".}
proc fcQLocale_negativeSign(self: pointer, ): struct_miqt_string {.importc: "QLocale_negativeSign".}
proc fcQLocale_positiveSign(self: pointer, ): struct_miqt_string {.importc: "QLocale_positiveSign".}
proc fcQLocale_exponential(self: pointer, ): struct_miqt_string {.importc: "QLocale_exponential".}
proc fcQLocale_monthName(self: pointer, param1: cint): struct_miqt_string {.importc: "QLocale_monthName".}
proc fcQLocale_standaloneMonthName(self: pointer, param1: cint): struct_miqt_string {.importc: "QLocale_standaloneMonthName".}
proc fcQLocale_dayName(self: pointer, param1: cint): struct_miqt_string {.importc: "QLocale_dayName".}
proc fcQLocale_standaloneDayName(self: pointer, param1: cint): struct_miqt_string {.importc: "QLocale_standaloneDayName".}
proc fcQLocale_firstDayOfWeek(self: pointer, ): cint {.importc: "QLocale_firstDayOfWeek".}
proc fcQLocale_weekdays(self: pointer, ): struct_miqt_array {.importc: "QLocale_weekdays".}
proc fcQLocale_amText(self: pointer, ): struct_miqt_string {.importc: "QLocale_amText".}
proc fcQLocale_pmText(self: pointer, ): struct_miqt_string {.importc: "QLocale_pmText".}
proc fcQLocale_measurementSystem(self: pointer, ): cint {.importc: "QLocale_measurementSystem".}
proc fcQLocale_collation(self: pointer, ): pointer {.importc: "QLocale_collation".}
proc fcQLocale_textDirection(self: pointer, ): cint {.importc: "QLocale_textDirection".}
proc fcQLocale_toUpper(self: pointer, str: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toUpper".}
proc fcQLocale_toLower(self: pointer, str: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toLower".}
proc fcQLocale_currencySymbol(self: pointer, ): struct_miqt_string {.importc: "QLocale_currencySymbol".}
proc fcQLocale_toCurrencyString(self: pointer, param1: clonglong): struct_miqt_string {.importc: "QLocale_toCurrencyString".}
proc fcQLocale_toCurrencyStringWithQulonglong(self: pointer, param1: culonglong): struct_miqt_string {.importc: "QLocale_toCurrencyStringWithQulonglong".}
proc fcQLocale_toCurrencyStringWithShort(self: pointer, i: cshort): struct_miqt_string {.importc: "QLocale_toCurrencyStringWithShort".}
proc fcQLocale_toCurrencyStringWithUshort(self: pointer, i: cushort): struct_miqt_string {.importc: "QLocale_toCurrencyStringWithUshort".}
proc fcQLocale_toCurrencyStringWithInt(self: pointer, i: cint): struct_miqt_string {.importc: "QLocale_toCurrencyStringWithInt".}
proc fcQLocale_toCurrencyStringWithUint(self: pointer, i: cuint): struct_miqt_string {.importc: "QLocale_toCurrencyStringWithUint".}
proc fcQLocale_toCurrencyStringWithDouble(self: pointer, param1: float64): struct_miqt_string {.importc: "QLocale_toCurrencyStringWithDouble".}
proc fcQLocale_toCurrencyStringWithFloat(self: pointer, i: float32): struct_miqt_string {.importc: "QLocale_toCurrencyStringWithFloat".}
proc fcQLocale_formattedDataSize(self: pointer, bytes: clonglong): struct_miqt_string {.importc: "QLocale_formattedDataSize".}
proc fcQLocale_uiLanguages(self: pointer, ): struct_miqt_array {.importc: "QLocale_uiLanguages".}
proc fcQLocale_languageToCode(language: cint): struct_miqt_string {.importc: "QLocale_languageToCode".}
proc fcQLocale_territoryToCode(territory: cint): struct_miqt_string {.importc: "QLocale_territoryToCode".}
proc fcQLocale_countryToCode(country: cint): struct_miqt_string {.importc: "QLocale_countryToCode".}
proc fcQLocale_scriptToCode(script: cint): struct_miqt_string {.importc: "QLocale_scriptToCode".}
proc fcQLocale_languageToString(language: cint): struct_miqt_string {.importc: "QLocale_languageToString".}
proc fcQLocale_territoryToString(territory: cint): struct_miqt_string {.importc: "QLocale_territoryToString".}
proc fcQLocale_countryToString(country: cint): struct_miqt_string {.importc: "QLocale_countryToString".}
proc fcQLocale_scriptToString(script: cint): struct_miqt_string {.importc: "QLocale_scriptToString".}
proc fcQLocale_setDefault(locale: pointer): void {.importc: "QLocale_setDefault".}
proc fcQLocale_c(): pointer {.importc: "QLocale_c".}
proc fcQLocale_system(): pointer {.importc: "QLocale_system".}
proc fcQLocale_matchingLocales(language: cint, script: cint, territory: cint): struct_miqt_array {.importc: "QLocale_matchingLocales".}
proc fcQLocale_countriesForLanguage(lang: cint): struct_miqt_array {.importc: "QLocale_countriesForLanguage".}
proc fcQLocale_setNumberOptions(self: pointer, options: cint): void {.importc: "QLocale_setNumberOptions".}
proc fcQLocale_numberOptions(self: pointer, ): cint {.importc: "QLocale_numberOptions".}
proc fcQLocale_quoteString(self: pointer, str: struct_miqt_string): struct_miqt_string {.importc: "QLocale_quoteString".}
proc fcQLocale_createSeparatedList(self: pointer, strl: struct_miqt_array): struct_miqt_string {.importc: "QLocale_createSeparatedList".}
proc fcQLocale_toShort2(self: pointer, s: struct_miqt_string, ok: ptr bool): cshort {.importc: "QLocale_toShort2".}
proc fcQLocale_toUShort2(self: pointer, s: struct_miqt_string, ok: ptr bool): cushort {.importc: "QLocale_toUShort2".}
proc fcQLocale_toInt2(self: pointer, s: struct_miqt_string, ok: ptr bool): cint {.importc: "QLocale_toInt2".}
proc fcQLocale_toUInt2(self: pointer, s: struct_miqt_string, ok: ptr bool): cuint {.importc: "QLocale_toUInt2".}
proc fcQLocale_toLong2(self: pointer, s: struct_miqt_string, ok: ptr bool): clong {.importc: "QLocale_toLong2".}
proc fcQLocale_toULong2(self: pointer, s: struct_miqt_string, ok: ptr bool): culong {.importc: "QLocale_toULong2".}
proc fcQLocale_toLongLong2(self: pointer, s: struct_miqt_string, ok: ptr bool): clonglong {.importc: "QLocale_toLongLong2".}
proc fcQLocale_toULongLong2(self: pointer, s: struct_miqt_string, ok: ptr bool): culonglong {.importc: "QLocale_toULongLong2".}
proc fcQLocale_toFloat2(self: pointer, s: struct_miqt_string, ok: ptr bool): float32 {.importc: "QLocale_toFloat2".}
proc fcQLocale_toDouble2(self: pointer, s: struct_miqt_string, ok: ptr bool): float64 {.importc: "QLocale_toDouble2".}
proc fcQLocale_toString22(self: pointer, f: float64, format: cchar): struct_miqt_string {.importc: "QLocale_toString22".}
proc fcQLocale_toString32(self: pointer, f: float64, format: cchar, precision: cint): struct_miqt_string {.importc: "QLocale_toString32".}
proc fcQLocale_toString23(self: pointer, f: float32, format: cchar): struct_miqt_string {.importc: "QLocale_toString23".}
proc fcQLocale_toString33(self: pointer, f: float32, format: cchar, precision: cint): struct_miqt_string {.importc: "QLocale_toString33".}
proc fcQLocale_toString24(self: pointer, date: pointer, format: cint): struct_miqt_string {.importc: "QLocale_toString24".}
proc fcQLocale_toString25(self: pointer, time: pointer, format: cint): struct_miqt_string {.importc: "QLocale_toString25".}
proc fcQLocale_toString26(self: pointer, dateTime: pointer, format: cint): struct_miqt_string {.importc: "QLocale_toString26".}
proc fcQLocale_dateFormat1(self: pointer, format: cint): struct_miqt_string {.importc: "QLocale_dateFormat1".}
proc fcQLocale_timeFormat1(self: pointer, format: cint): struct_miqt_string {.importc: "QLocale_timeFormat1".}
proc fcQLocale_dateTimeFormat1(self: pointer, format: cint): struct_miqt_string {.importc: "QLocale_dateTimeFormat1".}
proc fcQLocale_toDate22(self: pointer, string: struct_miqt_string, param2: cint): pointer {.importc: "QLocale_toDate22".}
proc fcQLocale_toTime22(self: pointer, string: struct_miqt_string, param2: cint): pointer {.importc: "QLocale_toTime22".}
proc fcQLocale_toDateTime22(self: pointer, string: struct_miqt_string, format: cint): pointer {.importc: "QLocale_toDateTime22".}
proc fcQLocale_monthName2(self: pointer, param1: cint, format: cint): struct_miqt_string {.importc: "QLocale_monthName2".}
proc fcQLocale_standaloneMonthName2(self: pointer, param1: cint, format: cint): struct_miqt_string {.importc: "QLocale_standaloneMonthName2".}
proc fcQLocale_dayName2(self: pointer, param1: cint, format: cint): struct_miqt_string {.importc: "QLocale_dayName2".}
proc fcQLocale_standaloneDayName2(self: pointer, param1: cint, format: cint): struct_miqt_string {.importc: "QLocale_standaloneDayName2".}
proc fcQLocale_currencySymbol1(self: pointer, param1: cint): struct_miqt_string {.importc: "QLocale_currencySymbol1".}
proc fcQLocale_toCurrencyString2(self: pointer, param1: clonglong, symbol: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toCurrencyString2".}
proc fcQLocale_toCurrencyString22(self: pointer, param1: culonglong, symbol: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toCurrencyString22".}
proc fcQLocale_toCurrencyString23(self: pointer, i: cshort, symbol: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toCurrencyString23".}
proc fcQLocale_toCurrencyString24(self: pointer, i: cushort, symbol: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toCurrencyString24".}
proc fcQLocale_toCurrencyString25(self: pointer, i: cint, symbol: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toCurrencyString25".}
proc fcQLocale_toCurrencyString26(self: pointer, i: cuint, symbol: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toCurrencyString26".}
proc fcQLocale_toCurrencyString27(self: pointer, param1: float64, symbol: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toCurrencyString27".}
proc fcQLocale_toCurrencyString3(self: pointer, param1: float64, symbol: struct_miqt_string, precision: cint): struct_miqt_string {.importc: "QLocale_toCurrencyString3".}
proc fcQLocale_toCurrencyString28(self: pointer, i: float32, symbol: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toCurrencyString28".}
proc fcQLocale_toCurrencyString32(self: pointer, i: float32, symbol: struct_miqt_string, precision: cint): struct_miqt_string {.importc: "QLocale_toCurrencyString32".}
proc fcQLocale_formattedDataSize2(self: pointer, bytes: clonglong, precision: cint): struct_miqt_string {.importc: "QLocale_formattedDataSize2".}
proc fcQLocale_formattedDataSize3(self: pointer, bytes: clonglong, precision: cint, format: cint): struct_miqt_string {.importc: "QLocale_formattedDataSize3".}
proc fcQLocale_languageToCode2(language: cint, codeTypes: cint): struct_miqt_string {.importc: "QLocale_languageToCode2".}
proc fcQLocale_quoteString2(self: pointer, str: struct_miqt_string, style: cint): struct_miqt_string {.importc: "QLocale_quoteString2".}
proc fcQLocale_staticMetaObject(): pointer {.importc: "QLocale_staticMetaObject".}
proc fcQLocale_delete(self: pointer) {.importc: "QLocale_delete".}


func init*(T: type QLocale, h: ptr cQLocale): QLocale =
  T(h: h)
proc create*(T: type QLocale, ): QLocale =

  QLocale.init(fcQLocale_new())
proc create*(T: type QLocale, name: string): QLocale =

  QLocale.init(fcQLocale_new2(struct_miqt_string(data: name, len: csize_t(len(name)))))
proc create*(T: type QLocale, language: QLocaleLanguage, territory: QLocaleCountry): QLocale =

  QLocale.init(fcQLocale_new3(cint(language), cint(territory)))
proc create*(T: type QLocale, language: QLocaleLanguage): QLocale =

  QLocale.init(fcQLocale_new4(cint(language)))
proc create*(T: type QLocale, other: QLocale): QLocale =

  QLocale.init(fcQLocale_new5(other.h))
proc create2*(T: type QLocale, language: QLocaleLanguage, script: QLocaleScript): QLocale =

  QLocale.init(fcQLocale_new6(cint(language), cint(script)))
proc create*(T: type QLocale, language: QLocaleLanguage, script: QLocaleScript, territory: QLocaleCountry): QLocale =

  QLocale.init(fcQLocale_new7(cint(language), cint(script), cint(territory)))
proc operatorAssign*(self: QLocale, other: QLocale): void =

  fcQLocale_operatorAssign(self.h, other.h)

proc swap*(self: QLocale, other: QLocale): void =

  fcQLocale_swap(self.h, other.h)

proc language*(self: QLocale, ): QLocaleLanguage =

  QLocaleLanguage(fcQLocale_language(self.h))

proc script*(self: QLocale, ): QLocaleScript =

  QLocaleScript(fcQLocale_script(self.h))

proc territory*(self: QLocale, ): QLocaleCountry =

  QLocaleCountry(fcQLocale_territory(self.h))

proc country*(self: QLocale, ): QLocaleCountry =

  QLocaleCountry(fcQLocale_country(self.h))

proc name*(self: QLocale, ): string =

  let v_ms = fcQLocale_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc bcp47Name*(self: QLocale, ): string =

  let v_ms = fcQLocale_bcp47Name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc nativeLanguageName*(self: QLocale, ): string =

  let v_ms = fcQLocale_nativeLanguageName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc nativeTerritoryName*(self: QLocale, ): string =

  let v_ms = fcQLocale_nativeTerritoryName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc nativeCountryName*(self: QLocale, ): string =

  let v_ms = fcQLocale_nativeCountryName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toShort*(self: QLocale, s: string): cshort =

  fcQLocale_toShort(self.h, struct_miqt_string(data: s, len: csize_t(len(s))))

proc toUShort*(self: QLocale, s: string): cushort =

  fcQLocale_toUShort(self.h, struct_miqt_string(data: s, len: csize_t(len(s))))

proc toInt*(self: QLocale, s: string): cint =

  fcQLocale_toInt(self.h, struct_miqt_string(data: s, len: csize_t(len(s))))

proc toUInt*(self: QLocale, s: string): cuint =

  fcQLocale_toUInt(self.h, struct_miqt_string(data: s, len: csize_t(len(s))))

proc toLong*(self: QLocale, s: string): clong =

  fcQLocale_toLong(self.h, struct_miqt_string(data: s, len: csize_t(len(s))))

proc toULong*(self: QLocale, s: string): culong =

  fcQLocale_toULong(self.h, struct_miqt_string(data: s, len: csize_t(len(s))))

proc toLongLong*(self: QLocale, s: string): clonglong =

  fcQLocale_toLongLong(self.h, struct_miqt_string(data: s, len: csize_t(len(s))))

proc toULongLong*(self: QLocale, s: string): culonglong =

  fcQLocale_toULongLong(self.h, struct_miqt_string(data: s, len: csize_t(len(s))))

proc toFloat*(self: QLocale, s: string): float32 =

  fcQLocale_toFloat(self.h, struct_miqt_string(data: s, len: csize_t(len(s))))

proc toDouble*(self: QLocale, s: string): float64 =

  fcQLocale_toDouble(self.h, struct_miqt_string(data: s, len: csize_t(len(s))))

proc toString*(self: QLocale, i: clonglong): string =

  let v_ms = fcQLocale_toString(self.h, i)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toStringWithQulonglong*(self: QLocale, i: culonglong): string =

  let v_ms = fcQLocale_toStringWithQulonglong(self.h, i)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toStringWithLong*(self: QLocale, i: clong): string =

  let v_ms = fcQLocale_toStringWithLong(self.h, i)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toStringWithUlong*(self: QLocale, i: culong): string =

  let v_ms = fcQLocale_toStringWithUlong(self.h, i)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toStringWithShort*(self: QLocale, i: cshort): string =

  let v_ms = fcQLocale_toStringWithShort(self.h, i)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toStringWithUshort*(self: QLocale, i: cushort): string =

  let v_ms = fcQLocale_toStringWithUshort(self.h, i)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toStringWithInt*(self: QLocale, i: cint): string =

  let v_ms = fcQLocale_toStringWithInt(self.h, i)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toStringWithUint*(self: QLocale, i: cuint): string =

  let v_ms = fcQLocale_toStringWithUint(self.h, i)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toStringWithDouble*(self: QLocale, f: float64): string =

  let v_ms = fcQLocale_toStringWithDouble(self.h, f)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toStringWithFloat*(self: QLocale, f: float32): string =

  let v_ms = fcQLocale_toStringWithFloat(self.h, f)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString2*(self: QLocale, date: gen_qdatetime.QDate, format: string): string =

  let v_ms = fcQLocale_toString2(self.h, date.h, struct_miqt_string(data: format, len: csize_t(len(format))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString3*(self: QLocale, time: gen_qdatetime.QTime, format: string): string =

  let v_ms = fcQLocale_toString3(self.h, time.h, struct_miqt_string(data: format, len: csize_t(len(format))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString4*(self: QLocale, dateTime: gen_qdatetime.QDateTime, format: string): string =

  let v_ms = fcQLocale_toString4(self.h, dateTime.h, struct_miqt_string(data: format, len: csize_t(len(format))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toStringWithDate*(self: QLocale, date: gen_qdatetime.QDate): string =

  let v_ms = fcQLocale_toStringWithDate(self.h, date.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toStringWithTime*(self: QLocale, time: gen_qdatetime.QTime): string =

  let v_ms = fcQLocale_toStringWithTime(self.h, time.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toStringWithDateTime*(self: QLocale, dateTime: gen_qdatetime.QDateTime): string =

  let v_ms = fcQLocale_toStringWithDateTime(self.h, dateTime.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString9*(self: QLocale, date: gen_qdatetime.QDate, format: QLocaleFormatType, cal: gen_qcalendar.QCalendar): string =

  let v_ms = fcQLocale_toString9(self.h, date.h, cint(format), cal.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString10*(self: QLocale, dateTime: gen_qdatetime.QDateTime, format: QLocaleFormatType, cal: gen_qcalendar.QCalendar): string =

  let v_ms = fcQLocale_toString10(self.h, dateTime.h, cint(format), cal.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc dateFormat*(self: QLocale, ): string =

  let v_ms = fcQLocale_dateFormat(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc timeFormat*(self: QLocale, ): string =

  let v_ms = fcQLocale_timeFormat(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc dateTimeFormat*(self: QLocale, ): string =

  let v_ms = fcQLocale_dateTimeFormat(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toDate*(self: QLocale, string: string): gen_qdatetime.QDate =

  gen_qdatetime.QDate(h: fcQLocale_toDate(self.h, struct_miqt_string(data: string, len: csize_t(len(string)))))

proc toTime*(self: QLocale, string: string): gen_qdatetime.QTime =

  gen_qdatetime.QTime(h: fcQLocale_toTime(self.h, struct_miqt_string(data: string, len: csize_t(len(string)))))

proc toDateTime*(self: QLocale, string: string): gen_qdatetime.QDateTime =

  gen_qdatetime.QDateTime(h: fcQLocale_toDateTime(self.h, struct_miqt_string(data: string, len: csize_t(len(string)))))

proc toDate2*(self: QLocale, string: string, format: string): gen_qdatetime.QDate =

  gen_qdatetime.QDate(h: fcQLocale_toDate2(self.h, struct_miqt_string(data: string, len: csize_t(len(string))), struct_miqt_string(data: format, len: csize_t(len(format)))))

proc toTime2*(self: QLocale, string: string, format: string): gen_qdatetime.QTime =

  gen_qdatetime.QTime(h: fcQLocale_toTime2(self.h, struct_miqt_string(data: string, len: csize_t(len(string))), struct_miqt_string(data: format, len: csize_t(len(format)))))

proc toDateTime2*(self: QLocale, string: string, format: string): gen_qdatetime.QDateTime =

  gen_qdatetime.QDateTime(h: fcQLocale_toDateTime2(self.h, struct_miqt_string(data: string, len: csize_t(len(string))), struct_miqt_string(data: format, len: csize_t(len(format)))))

proc toDate3*(self: QLocale, string: string, format: QLocaleFormatType, cal: gen_qcalendar.QCalendar): gen_qdatetime.QDate =

  gen_qdatetime.QDate(h: fcQLocale_toDate3(self.h, struct_miqt_string(data: string, len: csize_t(len(string))), cint(format), cal.h))

proc toDateTime3*(self: QLocale, string: string, format: QLocaleFormatType, cal: gen_qcalendar.QCalendar): gen_qdatetime.QDateTime =

  gen_qdatetime.QDateTime(h: fcQLocale_toDateTime3(self.h, struct_miqt_string(data: string, len: csize_t(len(string))), cint(format), cal.h))

proc toDate4*(self: QLocale, string: string, format: string, cal: gen_qcalendar.QCalendar): gen_qdatetime.QDate =

  gen_qdatetime.QDate(h: fcQLocale_toDate4(self.h, struct_miqt_string(data: string, len: csize_t(len(string))), struct_miqt_string(data: format, len: csize_t(len(format))), cal.h))

proc toDateTime4*(self: QLocale, string: string, format: string, cal: gen_qcalendar.QCalendar): gen_qdatetime.QDateTime =

  gen_qdatetime.QDateTime(h: fcQLocale_toDateTime4(self.h, struct_miqt_string(data: string, len: csize_t(len(string))), struct_miqt_string(data: format, len: csize_t(len(format))), cal.h))

proc decimalPoint*(self: QLocale, ): string =

  let v_ms = fcQLocale_decimalPoint(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc groupSeparator*(self: QLocale, ): string =

  let v_ms = fcQLocale_groupSeparator(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc percent*(self: QLocale, ): string =

  let v_ms = fcQLocale_percent(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc zeroDigit*(self: QLocale, ): string =

  let v_ms = fcQLocale_zeroDigit(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc negativeSign*(self: QLocale, ): string =

  let v_ms = fcQLocale_negativeSign(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc positiveSign*(self: QLocale, ): string =

  let v_ms = fcQLocale_positiveSign(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc exponential*(self: QLocale, ): string =

  let v_ms = fcQLocale_exponential(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc monthName*(self: QLocale, param1: cint): string =

  let v_ms = fcQLocale_monthName(self.h, param1)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc standaloneMonthName*(self: QLocale, param1: cint): string =

  let v_ms = fcQLocale_standaloneMonthName(self.h, param1)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc dayName*(self: QLocale, param1: cint): string =

  let v_ms = fcQLocale_dayName(self.h, param1)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc standaloneDayName*(self: QLocale, param1: cint): string =

  let v_ms = fcQLocale_standaloneDayName(self.h, param1)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc firstDayOfWeek*(self: QLocale, ): gen_qnamespace.DayOfWeek =

  gen_qnamespace.DayOfWeek(fcQLocale_firstDayOfWeek(self.h))

proc weekdays*(self: QLocale, ): seq[gen_qnamespace.DayOfWeek] =

  var v_ma = fcQLocale_weekdays(self.h)
  var vx_ret = newSeq[gen_qnamespace.DayOfWeek](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qnamespace.DayOfWeek(v_outCast[i])
  vx_ret

proc amText*(self: QLocale, ): string =

  let v_ms = fcQLocale_amText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc pmText*(self: QLocale, ): string =

  let v_ms = fcQLocale_pmText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc measurementSystem*(self: QLocale, ): QLocaleMeasurementSystem =

  QLocaleMeasurementSystem(fcQLocale_measurementSystem(self.h))

proc collation*(self: QLocale, ): QLocale =

  QLocale(h: fcQLocale_collation(self.h))

proc textDirection*(self: QLocale, ): gen_qnamespace.LayoutDirection =

  gen_qnamespace.LayoutDirection(fcQLocale_textDirection(self.h))

proc toUpper*(self: QLocale, str: string): string =

  let v_ms = fcQLocale_toUpper(self.h, struct_miqt_string(data: str, len: csize_t(len(str))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toLower*(self: QLocale, str: string): string =

  let v_ms = fcQLocale_toLower(self.h, struct_miqt_string(data: str, len: csize_t(len(str))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc currencySymbol*(self: QLocale, ): string =

  let v_ms = fcQLocale_currencySymbol(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: QLocale, param1: clonglong): string =

  let v_ms = fcQLocale_toCurrencyString(self.h, param1)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyStringWithQulonglong*(self: QLocale, param1: culonglong): string =

  let v_ms = fcQLocale_toCurrencyStringWithQulonglong(self.h, param1)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyStringWithShort*(self: QLocale, i: cshort): string =

  let v_ms = fcQLocale_toCurrencyStringWithShort(self.h, i)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyStringWithUshort*(self: QLocale, i: cushort): string =

  let v_ms = fcQLocale_toCurrencyStringWithUshort(self.h, i)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyStringWithInt*(self: QLocale, i: cint): string =

  let v_ms = fcQLocale_toCurrencyStringWithInt(self.h, i)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyStringWithUint*(self: QLocale, i: cuint): string =

  let v_ms = fcQLocale_toCurrencyStringWithUint(self.h, i)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyStringWithDouble*(self: QLocale, param1: float64): string =

  let v_ms = fcQLocale_toCurrencyStringWithDouble(self.h, param1)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyStringWithFloat*(self: QLocale, i: float32): string =

  let v_ms = fcQLocale_toCurrencyStringWithFloat(self.h, i)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc formattedDataSize*(self: QLocale, bytes: clonglong): string =

  let v_ms = fcQLocale_formattedDataSize(self.h, bytes)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc uiLanguages*(self: QLocale, ): seq[string] =

  var v_ma = fcQLocale_uiLanguages(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc languageToCode*(_: type QLocale, language: QLocaleLanguage): string =

  let v_ms = fcQLocale_languageToCode(cint(language))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc territoryToCode*(_: type QLocale, territory: QLocaleCountry): string =

  let v_ms = fcQLocale_territoryToCode(cint(territory))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc countryToCode*(_: type QLocale, country: QLocaleCountry): string =

  let v_ms = fcQLocale_countryToCode(cint(country))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc scriptToCode*(_: type QLocale, script: QLocaleScript): string =

  let v_ms = fcQLocale_scriptToCode(cint(script))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc languageToString*(_: type QLocale, language: QLocaleLanguage): string =

  let v_ms = fcQLocale_languageToString(cint(language))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc territoryToString*(_: type QLocale, territory: QLocaleCountry): string =

  let v_ms = fcQLocale_territoryToString(cint(territory))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc countryToString*(_: type QLocale, country: QLocaleCountry): string =

  let v_ms = fcQLocale_countryToString(cint(country))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc scriptToString*(_: type QLocale, script: QLocaleScript): string =

  let v_ms = fcQLocale_scriptToString(cint(script))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDefault*(_: type QLocale, locale: QLocale): void =

  fcQLocale_setDefault(locale.h)

proc c*(_: type QLocale, ): QLocale =

  QLocale(h: fcQLocale_c())

proc system*(_: type QLocale, ): QLocale =

  QLocale(h: fcQLocale_system())

proc matchingLocales*(_: type QLocale, language: QLocaleLanguage, script: QLocaleScript, territory: QLocaleCountry): seq[QLocale] =

  var v_ma = fcQLocale_matchingLocales(cint(language), cint(script), cint(territory))
  var vx_ret = newSeq[QLocale](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QLocale(h: v_outCast[i])
  vx_ret

proc countriesForLanguage*(_: type QLocale, lang: QLocaleLanguage): seq[QLocaleCountry] =

  var v_ma = fcQLocale_countriesForLanguage(cint(lang))
  var vx_ret = newSeq[QLocaleCountry](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QLocaleCountry(v_outCast[i])
  vx_ret

proc setNumberOptions*(self: QLocale, options: QLocaleNumberOption): void =

  fcQLocale_setNumberOptions(self.h, cint(options))

proc numberOptions*(self: QLocale, ): QLocaleNumberOption =

  QLocaleNumberOption(fcQLocale_numberOptions(self.h))

proc quoteString*(self: QLocale, str: string): string =

  let v_ms = fcQLocale_quoteString(self.h, struct_miqt_string(data: str, len: csize_t(len(str))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc createSeparatedList*(self: QLocale, strl: seq[string]): string =

  var strl_CArray = newSeq[struct_miqt_string](len(strl))
  for i in 0..<len(strl):
    strl_CArray[i] = struct_miqt_string(data: strl[i], len: csize_t(len(strl[i])))

  let v_ms = fcQLocale_createSeparatedList(self.h, struct_miqt_array(len: csize_t(len(strl)), data: if len(strl) == 0: nil else: addr(strl_CArray[0])))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toShort2*(self: QLocale, s: string, ok: ptr bool): cshort =

  fcQLocale_toShort2(self.h, struct_miqt_string(data: s, len: csize_t(len(s))), ok)

proc toUShort2*(self: QLocale, s: string, ok: ptr bool): cushort =

  fcQLocale_toUShort2(self.h, struct_miqt_string(data: s, len: csize_t(len(s))), ok)

proc toInt2*(self: QLocale, s: string, ok: ptr bool): cint =

  fcQLocale_toInt2(self.h, struct_miqt_string(data: s, len: csize_t(len(s))), ok)

proc toUInt2*(self: QLocale, s: string, ok: ptr bool): cuint =

  fcQLocale_toUInt2(self.h, struct_miqt_string(data: s, len: csize_t(len(s))), ok)

proc toLong2*(self: QLocale, s: string, ok: ptr bool): clong =

  fcQLocale_toLong2(self.h, struct_miqt_string(data: s, len: csize_t(len(s))), ok)

proc toULong2*(self: QLocale, s: string, ok: ptr bool): culong =

  fcQLocale_toULong2(self.h, struct_miqt_string(data: s, len: csize_t(len(s))), ok)

proc toLongLong2*(self: QLocale, s: string, ok: ptr bool): clonglong =

  fcQLocale_toLongLong2(self.h, struct_miqt_string(data: s, len: csize_t(len(s))), ok)

proc toULongLong2*(self: QLocale, s: string, ok: ptr bool): culonglong =

  fcQLocale_toULongLong2(self.h, struct_miqt_string(data: s, len: csize_t(len(s))), ok)

proc toFloat2*(self: QLocale, s: string, ok: ptr bool): float32 =

  fcQLocale_toFloat2(self.h, struct_miqt_string(data: s, len: csize_t(len(s))), ok)

proc toDouble2*(self: QLocale, s: string, ok: ptr bool): float64 =

  fcQLocale_toDouble2(self.h, struct_miqt_string(data: s, len: csize_t(len(s))), ok)

proc toString22*(self: QLocale, f: float64, format: cchar): string =

  let v_ms = fcQLocale_toString22(self.h, f, format)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString32*(self: QLocale, f: float64, format: cchar, precision: cint): string =

  let v_ms = fcQLocale_toString32(self.h, f, format, precision)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString23*(self: QLocale, f: float32, format: cchar): string =

  let v_ms = fcQLocale_toString23(self.h, f, format)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString33*(self: QLocale, f: float32, format: cchar, precision: cint): string =

  let v_ms = fcQLocale_toString33(self.h, f, format, precision)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString24*(self: QLocale, date: gen_qdatetime.QDate, format: QLocaleFormatType): string =

  let v_ms = fcQLocale_toString24(self.h, date.h, cint(format))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString25*(self: QLocale, time: gen_qdatetime.QTime, format: QLocaleFormatType): string =

  let v_ms = fcQLocale_toString25(self.h, time.h, cint(format))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString26*(self: QLocale, dateTime: gen_qdatetime.QDateTime, format: QLocaleFormatType): string =

  let v_ms = fcQLocale_toString26(self.h, dateTime.h, cint(format))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc dateFormat1*(self: QLocale, format: QLocaleFormatType): string =

  let v_ms = fcQLocale_dateFormat1(self.h, cint(format))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc timeFormat1*(self: QLocale, format: QLocaleFormatType): string =

  let v_ms = fcQLocale_timeFormat1(self.h, cint(format))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc dateTimeFormat1*(self: QLocale, format: QLocaleFormatType): string =

  let v_ms = fcQLocale_dateTimeFormat1(self.h, cint(format))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toDate22*(self: QLocale, string: string, param2: QLocaleFormatType): gen_qdatetime.QDate =

  gen_qdatetime.QDate(h: fcQLocale_toDate22(self.h, struct_miqt_string(data: string, len: csize_t(len(string))), cint(param2)))

proc toTime22*(self: QLocale, string: string, param2: QLocaleFormatType): gen_qdatetime.QTime =

  gen_qdatetime.QTime(h: fcQLocale_toTime22(self.h, struct_miqt_string(data: string, len: csize_t(len(string))), cint(param2)))

proc toDateTime22*(self: QLocale, string: string, format: QLocaleFormatType): gen_qdatetime.QDateTime =

  gen_qdatetime.QDateTime(h: fcQLocale_toDateTime22(self.h, struct_miqt_string(data: string, len: csize_t(len(string))), cint(format)))

proc monthName2*(self: QLocale, param1: cint, format: QLocaleFormatType): string =

  let v_ms = fcQLocale_monthName2(self.h, param1, cint(format))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc standaloneMonthName2*(self: QLocale, param1: cint, format: QLocaleFormatType): string =

  let v_ms = fcQLocale_standaloneMonthName2(self.h, param1, cint(format))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc dayName2*(self: QLocale, param1: cint, format: QLocaleFormatType): string =

  let v_ms = fcQLocale_dayName2(self.h, param1, cint(format))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc standaloneDayName2*(self: QLocale, param1: cint, format: QLocaleFormatType): string =

  let v_ms = fcQLocale_standaloneDayName2(self.h, param1, cint(format))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc currencySymbol1*(self: QLocale, param1: QLocaleCurrencySymbolFormat): string =

  let v_ms = fcQLocale_currencySymbol1(self.h, cint(param1))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString2*(self: QLocale, param1: clonglong, symbol: string): string =

  let v_ms = fcQLocale_toCurrencyString2(self.h, param1, struct_miqt_string(data: symbol, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString22*(self: QLocale, param1: culonglong, symbol: string): string =

  let v_ms = fcQLocale_toCurrencyString22(self.h, param1, struct_miqt_string(data: symbol, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString23*(self: QLocale, i: cshort, symbol: string): string =

  let v_ms = fcQLocale_toCurrencyString23(self.h, i, struct_miqt_string(data: symbol, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString24*(self: QLocale, i: cushort, symbol: string): string =

  let v_ms = fcQLocale_toCurrencyString24(self.h, i, struct_miqt_string(data: symbol, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString25*(self: QLocale, i: cint, symbol: string): string =

  let v_ms = fcQLocale_toCurrencyString25(self.h, i, struct_miqt_string(data: symbol, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString26*(self: QLocale, i: cuint, symbol: string): string =

  let v_ms = fcQLocale_toCurrencyString26(self.h, i, struct_miqt_string(data: symbol, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString27*(self: QLocale, param1: float64, symbol: string): string =

  let v_ms = fcQLocale_toCurrencyString27(self.h, param1, struct_miqt_string(data: symbol, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString3*(self: QLocale, param1: float64, symbol: string, precision: cint): string =

  let v_ms = fcQLocale_toCurrencyString3(self.h, param1, struct_miqt_string(data: symbol, len: csize_t(len(symbol))), precision)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString28*(self: QLocale, i: float32, symbol: string): string =

  let v_ms = fcQLocale_toCurrencyString28(self.h, i, struct_miqt_string(data: symbol, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString32*(self: QLocale, i: float32, symbol: string, precision: cint): string =

  let v_ms = fcQLocale_toCurrencyString32(self.h, i, struct_miqt_string(data: symbol, len: csize_t(len(symbol))), precision)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc formattedDataSize2*(self: QLocale, bytes: clonglong, precision: cint): string =

  let v_ms = fcQLocale_formattedDataSize2(self.h, bytes, precision)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc formattedDataSize3*(self: QLocale, bytes: clonglong, precision: cint, format: QLocaleDataSizeFormat): string =

  let v_ms = fcQLocale_formattedDataSize3(self.h, bytes, precision, cint(format))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc languageToCode2*(_: type QLocale, language: QLocaleLanguage, codeTypes: QLocaleLanguageCodeType): string =

  let v_ms = fcQLocale_languageToCode2(cint(language), cint(codeTypes))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc quoteString2*(self: QLocale, str: string, style: QLocaleQuotationStyle): string =

  let v_ms = fcQLocale_quoteString2(self.h, struct_miqt_string(data: str, len: csize_t(len(str))), cint(style))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type QLocale): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQLocale_staticMetaObject())
proc delete*(self: QLocale) =
  fcQLocale_delete(self.h)
