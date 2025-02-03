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
{.compile("gen_qlocale.cpp", cflags).}


type QLocaleLanguage* = cint
const
  QLocaleAnyLanguage* = 0
  QLocaleC* = 1
  QLocaleAbkhazian* = 2
  QLocaleOromo* = 3
  QLocaleAfar* = 4
  QLocaleAfrikaans* = 5
  QLocaleAlbanian* = 6
  QLocaleAmharic* = 7
  QLocaleArabic* = 8
  QLocaleArmenian* = 9
  QLocaleAssamese* = 10
  QLocaleAymara* = 11
  QLocaleAzerbaijani* = 12
  QLocaleBashkir* = 13
  QLocaleBasque* = 14
  QLocaleBengali* = 15
  QLocaleDzongkha* = 16
  QLocaleBihari* = 17
  QLocaleBislama* = 18
  QLocaleBreton* = 19
  QLocaleBulgarian* = 20
  QLocaleBurmese* = 21
  QLocaleBelarusian* = 22
  QLocaleKhmer* = 23
  QLocaleCatalan* = 24
  QLocaleChinese* = 25
  QLocaleCorsican* = 26
  QLocaleCroatian* = 27
  QLocaleCzech* = 28
  QLocaleDanish* = 29
  QLocaleDutch* = 30
  QLocaleEnglish* = 31
  QLocaleEsperanto* = 32
  QLocaleEstonian* = 33
  QLocaleFaroese* = 34
  QLocaleFijian* = 35
  QLocaleFinnish* = 36
  QLocaleFrench* = 37
  QLocaleWesternFrisian* = 38
  QLocaleGaelic* = 39
  QLocaleGalician* = 40
  QLocaleGeorgian* = 41
  QLocaleGerman* = 42
  QLocaleGreek* = 43
  QLocaleGreenlandic* = 44
  QLocaleGuarani* = 45
  QLocaleGujarati* = 46
  QLocaleHausa* = 47
  QLocaleHebrew* = 48
  QLocaleHindi* = 49
  QLocaleHungarian* = 50
  QLocaleIcelandic* = 51
  QLocaleIndonesian* = 52
  QLocaleInterlingua* = 53
  QLocaleInterlingue* = 54
  QLocaleInuktitut* = 55
  QLocaleInupiak* = 56
  QLocaleIrish* = 57
  QLocaleItalian* = 58
  QLocaleJapanese* = 59
  QLocaleJavanese* = 60
  QLocaleKannada* = 61
  QLocaleKashmiri* = 62
  QLocaleKazakh* = 63
  QLocaleKinyarwanda* = 64
  QLocaleKirghiz* = 65
  QLocaleKorean* = 66
  QLocaleKurdish* = 67
  QLocaleRundi* = 68
  QLocaleLao* = 69
  QLocaleLatin* = 70
  QLocaleLatvian* = 71
  QLocaleLingala* = 72
  QLocaleLithuanian* = 73
  QLocaleMacedonian* = 74
  QLocaleMalagasy* = 75
  QLocaleMalay* = 76
  QLocaleMalayalam* = 77
  QLocaleMaltese* = 78
  QLocaleMaori* = 79
  QLocaleMarathi* = 80
  QLocaleMarshallese* = 81
  QLocaleMongolian* = 82
  QLocaleNauruLanguage* = 83
  QLocaleNepali* = 84
  QLocaleNorwegianBokmal* = 85
  QLocaleOccitan* = 86
  QLocaleOriya* = 87
  QLocalePashto* = 88
  QLocalePersian* = 89
  QLocalePolish* = 90
  QLocalePortuguese* = 91
  QLocalePunjabi* = 92
  QLocaleQuechua* = 93
  QLocaleRomansh* = 94
  QLocaleRomanian* = 95
  QLocaleRussian* = 96
  QLocaleSamoan* = 97
  QLocaleSango* = 98
  QLocaleSanskrit* = 99
  QLocaleSerbian* = 100
  QLocaleOssetic* = 101
  QLocaleSouthernSotho* = 102
  QLocaleTswana* = 103
  QLocaleShona* = 104
  QLocaleSindhi* = 105
  QLocaleSinhala* = 106
  QLocaleSwati* = 107
  QLocaleSlovak* = 108
  QLocaleSlovenian* = 109
  QLocaleSomali* = 110
  QLocaleSpanish* = 111
  QLocaleSundanese* = 112
  QLocaleSwahili* = 113
  QLocaleSwedish* = 114
  QLocaleSardinian* = 115
  QLocaleTajik* = 116
  QLocaleTamil* = 117
  QLocaleTatar* = 118
  QLocaleTelugu* = 119
  QLocaleThai* = 120
  QLocaleTibetan* = 121
  QLocaleTigrinya* = 122
  QLocaleTongan* = 123
  QLocaleTsonga* = 124
  QLocaleTurkish* = 125
  QLocaleTurkmen* = 126
  QLocaleTahitian* = 127
  QLocaleUighur* = 128
  QLocaleUkrainian* = 129
  QLocaleUrdu* = 130
  QLocaleUzbek* = 131
  QLocaleVietnamese* = 132
  QLocaleVolapuk* = 133
  QLocaleWelsh* = 134
  QLocaleWolof* = 135
  QLocaleXhosa* = 136
  QLocaleYiddish* = 137
  QLocaleYoruba* = 138
  QLocaleZhuang* = 139
  QLocaleZulu* = 140
  QLocaleNorwegianNynorsk* = 141
  QLocaleBosnian* = 142
  QLocaleDivehi* = 143
  QLocaleManx* = 144
  QLocaleCornish* = 145
  QLocaleAkan* = 146
  QLocaleKonkani* = 147
  QLocaleGa* = 148
  QLocaleIgbo* = 149
  QLocaleKamba* = 150
  QLocaleSyriac* = 151
  QLocaleBlin* = 152
  QLocaleGeez* = 153
  QLocaleKoro* = 154
  QLocaleSidamo* = 155
  QLocaleAtsam* = 156
  QLocaleTigre* = 157
  QLocaleJju* = 158
  QLocaleFriulian* = 159
  QLocaleVenda* = 160
  QLocaleEwe* = 161
  QLocaleWalamo* = 162
  QLocaleHawaiian* = 163
  QLocaleTyap* = 164
  QLocaleNyanja* = 165
  QLocaleFilipino* = 166
  QLocaleSwissGerman* = 167
  QLocaleSichuanYi* = 168
  QLocaleKpelle* = 169
  QLocaleLowGerman* = 170
  QLocaleSouthNdebele* = 171
  QLocaleNorthernSotho* = 172
  QLocaleNorthernSami* = 173
  QLocaleTaroko* = 174
  QLocaleGusii* = 175
  QLocaleTaita* = 176
  QLocaleFulah* = 177
  QLocaleKikuyu* = 178
  QLocaleSamburu* = 179
  QLocaleSena* = 180
  QLocaleNorthNdebele* = 181
  QLocaleRombo* = 182
  QLocaleTachelhit* = 183
  QLocaleKabyle* = 184
  QLocaleNyankole* = 185
  QLocaleBena* = 186
  QLocaleVunjo* = 187
  QLocaleBambara* = 188
  QLocaleEmbu* = 189
  QLocaleCherokee* = 190
  QLocaleMorisyen* = 191
  QLocaleMakonde* = 192
  QLocaleLangi* = 193
  QLocaleGanda* = 194
  QLocaleBemba* = 195
  QLocaleKabuverdianu* = 196
  QLocaleMeru* = 197
  QLocaleKalenjin* = 198
  QLocaleNama* = 199
  QLocaleMachame* = 200
  QLocaleColognian* = 201
  QLocaleMasai* = 202
  QLocaleSoga* = 203
  QLocaleLuyia* = 204
  QLocaleAsu* = 205
  QLocaleTeso* = 206
  QLocaleSaho* = 207
  QLocaleKoyraChiini* = 208
  QLocaleRwa* = 209
  QLocaleLuo* = 210
  QLocaleChiga* = 211
  QLocaleCentralMoroccoTamazight* = 212
  QLocaleKoyraboroSenni* = 213
  QLocaleShambala* = 214
  QLocaleBodo* = 215
  QLocaleAvaric* = 216
  QLocaleChamorro* = 217
  QLocaleChechen* = 218
  QLocaleChurch* = 219
  QLocaleChuvash* = 220
  QLocaleCree* = 221
  QLocaleHaitian* = 222
  QLocaleHerero* = 223
  QLocaleHiriMotu* = 224
  QLocaleKanuri* = 225
  QLocaleKomi* = 226
  QLocaleKongo* = 227
  QLocaleKwanyama* = 228
  QLocaleLimburgish* = 229
  QLocaleLubaKatanga* = 230
  QLocaleLuxembourgish* = 231
  QLocaleNavaho* = 232
  QLocaleNdonga* = 233
  QLocaleOjibwa* = 234
  QLocalePali* = 235
  QLocaleWalloon* = 236
  QLocaleAghem* = 237
  QLocaleBasaa* = 238
  QLocaleZarma* = 239
  QLocaleDuala* = 240
  QLocaleJolaFonyi* = 241
  QLocaleEwondo* = 242
  QLocaleBafia* = 243
  QLocaleMakhuwaMeetto* = 244
  QLocaleMundang* = 245
  QLocaleKwasio* = 246
  QLocaleNuer* = 247
  QLocaleSakha* = 248
  QLocaleSangu* = 249
  QLocaleCongoSwahili* = 250
  QLocaleTasawaq* = 251
  QLocaleVai* = 252
  QLocaleWalser* = 253
  QLocaleYangben* = 254
  QLocaleAvestan* = 255
  QLocaleAsturian* = 256
  QLocaleNgomba* = 257
  QLocaleKako* = 258
  QLocaleMeta* = 259
  QLocaleNgiemboon* = 260
  QLocaleAragonese* = 261
  QLocaleAkkadian* = 262
  QLocaleAncientEgyptian* = 263
  QLocaleAncientGreek* = 264
  QLocaleAramaic* = 265
  QLocaleBalinese* = 266
  QLocaleBamun* = 267
  QLocaleBatakToba* = 268
  QLocaleBuginese* = 269
  QLocaleBuhid* = 270
  QLocaleCarian* = 271
  QLocaleChakma* = 272
  QLocaleClassicalMandaic* = 273
  QLocaleCoptic* = 274
  QLocaleDogri* = 275
  QLocaleEasternCham* = 276
  QLocaleEasternKayah* = 277
  QLocaleEtruscan* = 278
  QLocaleGothic* = 279
  QLocaleHanunoo* = 280
  QLocaleIngush* = 281
  QLocaleLargeFloweryMiao* = 282
  QLocaleLepcha* = 283
  QLocaleLimbu* = 284
  QLocaleLisu* = 285
  QLocaleLu* = 286
  QLocaleLycian* = 287
  QLocaleLydian* = 288
  QLocaleMandingo* = 289
  QLocaleManipuri* = 290
  QLocaleMeroitic* = 291
  QLocaleNorthernThai* = 292
  QLocaleOldIrish* = 293
  QLocaleOldNorse* = 294
  QLocaleOldPersian* = 295
  QLocaleOldTurkish* = 296
  QLocalePahlavi* = 297
  QLocaleParthian* = 298
  QLocalePhoenician* = 299
  QLocalePrakritLanguage* = 300
  QLocaleRejang* = 301
  QLocaleSabaean* = 302
  QLocaleSamaritan* = 303
  QLocaleSantali* = 304
  QLocaleSaurashtra* = 305
  QLocaleSora* = 306
  QLocaleSylheti* = 307
  QLocaleTagbanwa* = 308
  QLocaleTaiDam* = 309
  QLocaleTaiNua* = 310
  QLocaleUgaritic* = 311
  QLocaleAkoose* = 312
  QLocaleLakota* = 313
  QLocaleStandardMoroccanTamazight* = 314
  QLocaleMapuche* = 315
  QLocaleCentralKurdish* = 316
  QLocaleLowerSorbian* = 317
  QLocaleUpperSorbian* = 318
  QLocaleKenyang* = 319
  QLocaleMohawk* = 320
  QLocaleNko* = 321
  QLocalePrussian* = 322
  QLocaleKiche* = 323
  QLocaleSouthernSami* = 324
  QLocaleLuleSami* = 325
  QLocaleInariSami* = 326
  QLocaleSkoltSami* = 327
  QLocaleWarlpiri* = 328
  QLocaleManichaeanMiddlePersian* = 329
  QLocaleMende* = 330
  QLocaleAncientNorthArabian* = 331
  QLocaleLinearA* = 332
  QLocaleHmongNjua* = 333
  QLocaleHo* = 334
  QLocaleLezghian* = 335
  QLocaleBassa* = 336
  QLocaleMono* = 337
  QLocaleTedimChin* = 338
  QLocaleMaithili* = 339
  QLocaleAhom* = 340
  QLocaleAmericanSignLanguage* = 341
  QLocaleArdhamagadhiPrakrit* = 342
  QLocaleBhojpuri* = 343
  QLocaleHieroglyphicLuwian* = 344
  QLocaleLiteraryChinese* = 345
  QLocaleMazanderani* = 346
  QLocaleMru* = 347
  QLocaleNewari* = 348
  QLocaleNorthernLuri* = 349
  QLocalePalauan* = 350
  QLocalePapiamento* = 351
  QLocaleSaraiki* = 352
  QLocaleTokelauLanguage* = 353
  QLocaleTokPisin* = 354
  QLocaleTuvaluLanguage* = 355
  QLocaleUncodedLanguages* = 356
  QLocaleCantonese* = 357
  QLocaleOsage* = 358
  QLocaleTangut* = 359
  QLocaleIdo* = 360
  QLocaleLojban* = 361
  QLocaleSicilian* = 362
  QLocaleSouthernKurdish* = 363
  QLocaleWesternBalochi* = 364
  QLocaleCebuano* = 365
  QLocaleErzya* = 366
  QLocaleChickasaw* = 367
  QLocaleMuscogee* = 368
  QLocaleSilesian* = 369
  QLocaleNigerianPidgin* = 370
  QLocaleAfan* = 3
  QLocaleBhutani* = 16
  QLocaleByelorussian* = 22
  QLocaleCambodian* = 23
  QLocaleChewa* = 165
  QLocaleFrisian* = 38
  QLocaleKurundi* = 68
  QLocaleMoldavian* = 95
  QLocaleNorwegian* = 85
  QLocaleRhaetoRomance* = 94
  QLocaleSerboCroatian* = 100
  QLocaleTagalog* = 166
  QLocaleTwi* = 146
  QLocaleUigur* = 128
  QLocaleLastLanguage* = 370



type QLocaleScript* = cint
const
  QLocaleAnyScript* = 0
  QLocaleArabicScript* = 1
  QLocaleCyrillicScript* = 2
  QLocaleDeseretScript* = 3
  QLocaleGurmukhiScript* = 4
  QLocaleSimplifiedHanScript* = 5
  QLocaleTraditionalHanScript* = 6
  QLocaleLatinScript* = 7
  QLocaleMongolianScript* = 8
  QLocaleTifinaghScript* = 9
  QLocaleArmenianScript* = 10
  QLocaleBengaliScript* = 11
  QLocaleCherokeeScript* = 12
  QLocaleDevanagariScript* = 13
  QLocaleEthiopicScript* = 14
  QLocaleGeorgianScript* = 15
  QLocaleGreekScript* = 16
  QLocaleGujaratiScript* = 17
  QLocaleHebrewScript* = 18
  QLocaleJapaneseScript* = 19
  QLocaleKhmerScript* = 20
  QLocaleKannadaScript* = 21
  QLocaleKoreanScript* = 22
  QLocaleLaoScript* = 23
  QLocaleMalayalamScript* = 24
  QLocaleMyanmarScript* = 25
  QLocaleOriyaScript* = 26
  QLocaleTamilScript* = 27
  QLocaleTeluguScript* = 28
  QLocaleThaanaScript* = 29
  QLocaleThaiScript* = 30
  QLocaleTibetanScript* = 31
  QLocaleSinhalaScript* = 32
  QLocaleSyriacScript* = 33
  QLocaleYiScript* = 34
  QLocaleVaiScript* = 35
  QLocaleAvestanScript* = 36
  QLocaleBalineseScript* = 37
  QLocaleBamumScript* = 38
  QLocaleBatakScript* = 39
  QLocaleBopomofoScript* = 40
  QLocaleBrahmiScript* = 41
  QLocaleBugineseScript* = 42
  QLocaleBuhidScript* = 43
  QLocaleCanadianAboriginalScript* = 44
  QLocaleCarianScript* = 45
  QLocaleChakmaScript* = 46
  QLocaleChamScript* = 47
  QLocaleCopticScript* = 48
  QLocaleCypriotScript* = 49
  QLocaleEgyptianHieroglyphsScript* = 50
  QLocaleFraserScript* = 51
  QLocaleGlagoliticScript* = 52
  QLocaleGothicScript* = 53
  QLocaleHanScript* = 54
  QLocaleHangulScript* = 55
  QLocaleHanunooScript* = 56
  QLocaleImperialAramaicScript* = 57
  QLocaleInscriptionalPahlaviScript* = 58
  QLocaleInscriptionalParthianScript* = 59
  QLocaleJavaneseScript* = 60
  QLocaleKaithiScript* = 61
  QLocaleKatakanaScript* = 62
  QLocaleKayahLiScript* = 63
  QLocaleKharoshthiScript* = 64
  QLocaleLannaScript* = 65
  QLocaleLepchaScript* = 66
  QLocaleLimbuScript* = 67
  QLocaleLinearBScript* = 68
  QLocaleLycianScript* = 69
  QLocaleLydianScript* = 70
  QLocaleMandaeanScript* = 71
  QLocaleMeiteiMayekScript* = 72
  QLocaleMeroiticScript* = 73
  QLocaleMeroiticCursiveScript* = 74
  QLocaleNkoScript* = 75
  QLocaleNewTaiLueScript* = 76
  QLocaleOghamScript* = 77
  QLocaleOlChikiScript* = 78
  QLocaleOldItalicScript* = 79
  QLocaleOldPersianScript* = 80
  QLocaleOldSouthArabianScript* = 81
  QLocaleOrkhonScript* = 82
  QLocaleOsmanyaScript* = 83
  QLocalePhagsPaScript* = 84
  QLocalePhoenicianScript* = 85
  QLocalePollardPhoneticScript* = 86
  QLocaleRejangScript* = 87
  QLocaleRunicScript* = 88
  QLocaleSamaritanScript* = 89
  QLocaleSaurashtraScript* = 90
  QLocaleSharadaScript* = 91
  QLocaleShavianScript* = 92
  QLocaleSoraSompengScript* = 93
  QLocaleCuneiformScript* = 94
  QLocaleSundaneseScript* = 95
  QLocaleSylotiNagriScript* = 96
  QLocaleTagalogScript* = 97
  QLocaleTagbanwaScript* = 98
  QLocaleTaiLeScript* = 99
  QLocaleTaiVietScript* = 100
  QLocaleTakriScript* = 101
  QLocaleUgariticScript* = 102
  QLocaleBrailleScript* = 103
  QLocaleHiraganaScript* = 104
  QLocaleCaucasianAlbanianScript* = 105
  QLocaleBassaVahScript* = 106
  QLocaleDuployanScript* = 107
  QLocaleElbasanScript* = 108
  QLocaleGranthaScript* = 109
  QLocalePahawhHmongScript* = 110
  QLocaleKhojkiScript* = 111
  QLocaleLinearAScript* = 112
  QLocaleMahajaniScript* = 113
  QLocaleManichaeanScript* = 114
  QLocaleMendeKikakuiScript* = 115
  QLocaleModiScript* = 116
  QLocaleMroScript* = 117
  QLocaleOldNorthArabianScript* = 118
  QLocaleNabataeanScript* = 119
  QLocalePalmyreneScript* = 120
  QLocalePauCinHauScript* = 121
  QLocaleOldPermicScript* = 122
  QLocalePsalterPahlaviScript* = 123
  QLocaleSiddhamScript* = 124
  QLocaleKhudawadiScript* = 125
  QLocaleTirhutaScript* = 126
  QLocaleVarangKshitiScript* = 127
  QLocaleAhomScript* = 128
  QLocaleAnatolianHieroglyphsScript* = 129
  QLocaleHatranScript* = 130
  QLocaleMultaniScript* = 131
  QLocaleOldHungarianScript* = 132
  QLocaleSignWritingScript* = 133
  QLocaleAdlamScript* = 134
  QLocaleBhaiksukiScript* = 135
  QLocaleMarchenScript* = 136
  QLocaleNewaScript* = 137
  QLocaleOsageScript* = 138
  QLocaleTangutScript* = 139
  QLocaleHanWithBopomofoScript* = 140
  QLocaleJamoScript* = 141
  QLocaleSimplifiedChineseScript* = 5
  QLocaleTraditionalChineseScript* = 6
  QLocaleLastScript* = 141



type QLocaleCountry* = cint
const
  QLocaleAnyCountry* = 0
  QLocaleAfghanistan* = 1
  QLocaleAlbania* = 2
  QLocaleAlgeria* = 3
  QLocaleAmericanSamoa* = 4
  QLocaleAndorra* = 5
  QLocaleAngola* = 6
  QLocaleAnguilla* = 7
  QLocaleAntarctica* = 8
  QLocaleAntiguaAndBarbuda* = 9
  QLocaleArgentina* = 10
  QLocaleArmenia* = 11
  QLocaleAruba* = 12
  QLocaleAustralia* = 13
  QLocaleAustria* = 14
  QLocaleAzerbaijan* = 15
  QLocaleBahamas* = 16
  QLocaleBahrain* = 17
  QLocaleBangladesh* = 18
  QLocaleBarbados* = 19
  QLocaleBelarus* = 20
  QLocaleBelgium* = 21
  QLocaleBelize* = 22
  QLocaleBenin* = 23
  QLocaleBermuda* = 24
  QLocaleBhutan* = 25
  QLocaleBolivia* = 26
  QLocaleBosniaAndHerzegowina* = 27
  QLocaleBotswana* = 28
  QLocaleBouvetIsland* = 29
  QLocaleBrazil* = 30
  QLocaleBritishIndianOceanTerritory* = 31
  QLocaleBrunei* = 32
  QLocaleBulgaria* = 33
  QLocaleBurkinaFaso* = 34
  QLocaleBurundi* = 35
  QLocaleCambodia* = 36
  QLocaleCameroon* = 37
  QLocaleCanada* = 38
  QLocaleCapeVerde* = 39
  QLocaleCaymanIslands* = 40
  QLocaleCentralAfricanRepublic* = 41
  QLocaleChad* = 42
  QLocaleChile* = 43
  QLocaleChina* = 44
  QLocaleChristmasIsland* = 45
  QLocaleCocosIslands* = 46
  QLocaleColombia* = 47
  QLocaleComoros* = 48
  QLocaleCongoKinshasa* = 49
  QLocaleCongoBrazzaville* = 50
  QLocaleCookIslands* = 51
  QLocaleCostaRica* = 52
  QLocaleIvoryCoast* = 53
  QLocaleCroatia* = 54
  QLocaleCuba* = 55
  QLocaleCyprus* = 56
  QLocaleCzechRepublic* = 57
  QLocaleDenmark* = 58
  QLocaleDjibouti* = 59
  QLocaleDominica* = 60
  QLocaleDominicanRepublic* = 61
  QLocaleEastTimor* = 62
  QLocaleEcuador* = 63
  QLocaleEgypt* = 64
  QLocaleElSalvador* = 65
  QLocaleEquatorialGuinea* = 66
  QLocaleEritrea* = 67
  QLocaleEstonia* = 68
  QLocaleEthiopia* = 69
  QLocaleFalklandIslands* = 70
  QLocaleFaroeIslands* = 71
  QLocaleFiji* = 72
  QLocaleFinland* = 73
  QLocaleFrance* = 74
  QLocaleGuernsey* = 75
  QLocaleFrenchGuiana* = 76
  QLocaleFrenchPolynesia* = 77
  QLocaleFrenchSouthernTerritories* = 78
  QLocaleGabon* = 79
  QLocaleGambia* = 80
  QLocaleGeorgia* = 81
  QLocaleGermany* = 82
  QLocaleGhana* = 83
  QLocaleGibraltar* = 84
  QLocaleGreece* = 85
  QLocaleGreenland* = 86
  QLocaleGrenada* = 87
  QLocaleGuadeloupe* = 88
  QLocaleGuam* = 89
  QLocaleGuatemala* = 90
  QLocaleGuinea* = 91
  QLocaleGuineaBissau* = 92
  QLocaleGuyana* = 93
  QLocaleHaiti* = 94
  QLocaleHeardAndMcDonaldIslands* = 95
  QLocaleHonduras* = 96
  QLocaleHongKong* = 97
  QLocaleHungary* = 98
  QLocaleIceland* = 99
  QLocaleIndia* = 100
  QLocaleIndonesia* = 101
  QLocaleIran* = 102
  QLocaleIraq* = 103
  QLocaleIreland* = 104
  QLocaleIsrael* = 105
  QLocaleItaly* = 106
  QLocaleJamaica* = 107
  QLocaleJapan* = 108
  QLocaleJordan* = 109
  QLocaleKazakhstan* = 110
  QLocaleKenya* = 111
  QLocaleKiribati* = 112
  QLocaleNorthKorea* = 113
  QLocaleSouthKorea* = 114
  QLocaleKuwait* = 115
  QLocaleKyrgyzstan* = 116
  QLocaleLaos* = 117
  QLocaleLatvia* = 118
  QLocaleLebanon* = 119
  QLocaleLesotho* = 120
  QLocaleLiberia* = 121
  QLocaleLibya* = 122
  QLocaleLiechtenstein* = 123
  QLocaleLithuania* = 124
  QLocaleLuxembourg* = 125
  QLocaleMacau* = 126
  QLocaleMacedonia* = 127
  QLocaleMadagascar* = 128
  QLocaleMalawi* = 129
  QLocaleMalaysia* = 130
  QLocaleMaldives* = 131
  QLocaleMali* = 132
  QLocaleMalta* = 133
  QLocaleMarshallIslands* = 134
  QLocaleMartinique* = 135
  QLocaleMauritania* = 136
  QLocaleMauritius* = 137
  QLocaleMayotte* = 138
  QLocaleMexico* = 139
  QLocaleMicronesia* = 140
  QLocaleMoldova* = 141
  QLocaleMonaco* = 142
  QLocaleMongolia* = 143
  QLocaleMontserrat* = 144
  QLocaleMorocco* = 145
  QLocaleMozambique* = 146
  QLocaleMyanmar* = 147
  QLocaleNamibia* = 148
  QLocaleNauruCountry* = 149
  QLocaleNepal* = 150
  QLocaleNetherlands* = 151
  QLocaleCuraSao* = 152
  QLocaleNewCaledonia* = 153
  QLocaleNewZealand* = 154
  QLocaleNicaragua* = 155
  QLocaleNiger* = 156
  QLocaleNigeria* = 157
  QLocaleNiue* = 158
  QLocaleNorfolkIsland* = 159
  QLocaleNorthernMarianaIslands* = 160
  QLocaleNorway* = 161
  QLocaleOman* = 162
  QLocalePakistan* = 163
  QLocalePalau* = 164
  QLocalePalestinianTerritories* = 165
  QLocalePanama* = 166
  QLocalePapuaNewGuinea* = 167
  QLocaleParaguay* = 168
  QLocalePeru* = 169
  QLocalePhilippines* = 170
  QLocalePitcairn* = 171
  QLocalePoland* = 172
  QLocalePortugal* = 173
  QLocalePuertoRico* = 174
  QLocaleQatar* = 175
  QLocaleReunion* = 176
  QLocaleRomania* = 177
  QLocaleRussia* = 178
  QLocaleRwanda* = 179
  QLocaleSaintKittsAndNevis* = 180
  QLocaleSaintLucia* = 181
  QLocaleSaintVincentAndTheGrenadines* = 182
  QLocaleSamoa* = 183
  QLocaleSanMarino* = 184
  QLocaleSaoTomeAndPrincipe* = 185
  QLocaleSaudiArabia* = 186
  QLocaleSenegal* = 187
  QLocaleSeychelles* = 188
  QLocaleSierraLeone* = 189
  QLocaleSingapore* = 190
  QLocaleSlovakia* = 191
  QLocaleSlovenia* = 192
  QLocaleSolomonIslands* = 193
  QLocaleSomalia* = 194
  QLocaleSouthAfrica* = 195
  QLocaleSouthGeorgiaAndTheSouthSandwichIslands* = 196
  QLocaleSpain* = 197
  QLocaleSriLanka* = 198
  QLocaleSaintHelena* = 199
  QLocaleSaintPierreAndMiquelon* = 200
  QLocaleSudan* = 201
  QLocaleSuriname* = 202
  QLocaleSvalbardAndJanMayenIslands* = 203
  QLocaleSwaziland* = 204
  QLocaleSweden* = 205
  QLocaleSwitzerland* = 206
  QLocaleSyria* = 207
  QLocaleTaiwan* = 208
  QLocaleTajikistan* = 209
  QLocaleTanzania* = 210
  QLocaleThailand* = 211
  QLocaleTogo* = 212
  QLocaleTokelauCountry* = 213
  QLocaleTonga* = 214
  QLocaleTrinidadAndTobago* = 215
  QLocaleTunisia* = 216
  QLocaleTurkey* = 217
  QLocaleTurkmenistan* = 218
  QLocaleTurksAndCaicosIslands* = 219
  QLocaleTuvaluCountry* = 220
  QLocaleUganda* = 221
  QLocaleUkraine* = 222
  QLocaleUnitedArabEmirates* = 223
  QLocaleUnitedKingdom* = 224
  QLocaleUnitedStates* = 225
  QLocaleUnitedStatesMinorOutlyingIslands* = 226
  QLocaleUruguay* = 227
  QLocaleUzbekistan* = 228
  QLocaleVanuatu* = 229
  QLocaleVaticanCityState* = 230
  QLocaleVenezuela* = 231
  QLocaleVietnam* = 232
  QLocaleBritishVirginIslands* = 233
  QLocaleUnitedStatesVirginIslands* = 234
  QLocaleWallisAndFutunaIslands* = 235
  QLocaleWesternSahara* = 236
  QLocaleYemen* = 237
  QLocaleCanaryIslands* = 238
  QLocaleZambia* = 239
  QLocaleZimbabwe* = 240
  QLocaleClippertonIsland* = 241
  QLocaleMontenegro* = 242
  QLocaleSerbia* = 243
  QLocaleSaintBarthelemy* = 244
  QLocaleSaintMartin* = 245
  QLocaleLatinAmerica* = 246
  QLocaleAscensionIsland* = 247
  QLocaleAlandIslands* = 248
  QLocaleDiegoGarcia* = 249
  QLocaleCeutaAndMelilla* = 250
  QLocaleIsleOfMan* = 251
  QLocaleJersey* = 252
  QLocaleTristanDaCunha* = 253
  QLocaleSouthSudan* = 254
  QLocaleBonaire* = 255
  QLocaleSintMaarten* = 256
  QLocaleKosovo* = 257
  QLocaleEuropeanUnion* = 258
  QLocaleOutlyingOceania* = 259
  QLocaleWorld* = 260
  QLocaleEurope* = 261
  QLocaleDemocraticRepublicOfCongo* = 49
  QLocaleDemocraticRepublicOfKorea* = 113
  QLocaleLatinAmericaAndTheCaribbean* = 246
  QLocalePeoplesRepublicOfCongo* = 50
  QLocaleRepublicOfKorea* = 114
  QLocaleRussianFederation* = 178
  QLocaleSyrianArabRepublic* = 207
  QLocaleTokelau* = 213
  QLocaleTuvalu* = 220
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



type QLocaleQuotationStyle* = cint
const
  QLocaleStandardQuotation* = 0
  QLocaleAlternateQuotation* = 1



import gen_qlocale_types
export gen_qlocale_types

import
  gen_qcalendar,
  gen_qchar,
  gen_qdatetime,
  gen_qnamespace
export
  gen_qcalendar,
  gen_qchar,
  gen_qdatetime,
  gen_qnamespace

type cQLocale*{.exportc: "QLocale", incompleteStruct.} = object

proc fcQLocale_new(): ptr cQLocale {.importc: "QLocale_new".}
proc fcQLocale_new2(name: struct_miqt_string): ptr cQLocale {.importc: "QLocale_new2".}
proc fcQLocale_new3(language: cint): ptr cQLocale {.importc: "QLocale_new3".}
proc fcQLocale_new4(language: cint, script: cint, country: cint): ptr cQLocale {.importc: "QLocale_new4".}
proc fcQLocale_new5(other: pointer): ptr cQLocale {.importc: "QLocale_new5".}
proc fcQLocale_new6(language: cint, country: cint): ptr cQLocale {.importc: "QLocale_new6".}
proc fcQLocale_operatorAssign(self: pointer, other: pointer): void {.importc: "QLocale_operatorAssign".}
proc fcQLocale_swap(self: pointer, other: pointer): void {.importc: "QLocale_swap".}
proc fcQLocale_language(self: pointer, ): cint {.importc: "QLocale_language".}
proc fcQLocale_script(self: pointer, ): cint {.importc: "QLocale_script".}
proc fcQLocale_country(self: pointer, ): cint {.importc: "QLocale_country".}
proc fcQLocale_name(self: pointer, ): struct_miqt_string {.importc: "QLocale_name".}
proc fcQLocale_bcp47Name(self: pointer, ): struct_miqt_string {.importc: "QLocale_bcp47Name".}
proc fcQLocale_nativeLanguageName(self: pointer, ): struct_miqt_string {.importc: "QLocale_nativeLanguageName".}
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
proc fcQLocale_toStringWithDouble(self: pointer, i: float64): struct_miqt_string {.importc: "QLocale_toStringWithDouble".}
proc fcQLocale_toStringWithFloat(self: pointer, i: float32): struct_miqt_string {.importc: "QLocale_toStringWithFloat".}
proc fcQLocale_toString2(self: pointer, date: pointer, formatStr: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toString2".}
proc fcQLocale_toString3(self: pointer, time: pointer, formatStr: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toString3".}
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
proc fcQLocale_toTime3(self: pointer, string: struct_miqt_string, format: cint, cal: pointer): pointer {.importc: "QLocale_toTime3".}
proc fcQLocale_toTime4(self: pointer, string: struct_miqt_string, format: struct_miqt_string, cal: pointer): pointer {.importc: "QLocale_toTime4".}
proc fcQLocale_decimalPoint(self: pointer, ): pointer {.importc: "QLocale_decimalPoint".}
proc fcQLocale_groupSeparator(self: pointer, ): pointer {.importc: "QLocale_groupSeparator".}
proc fcQLocale_percent(self: pointer, ): pointer {.importc: "QLocale_percent".}
proc fcQLocale_zeroDigit(self: pointer, ): pointer {.importc: "QLocale_zeroDigit".}
proc fcQLocale_negativeSign(self: pointer, ): pointer {.importc: "QLocale_negativeSign".}
proc fcQLocale_positiveSign(self: pointer, ): pointer {.importc: "QLocale_positiveSign".}
proc fcQLocale_exponential(self: pointer, ): pointer {.importc: "QLocale_exponential".}
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
proc fcQLocale_toCurrencyStringWithShort(self: pointer, param1: cshort): struct_miqt_string {.importc: "QLocale_toCurrencyStringWithShort".}
proc fcQLocale_toCurrencyStringWithUshort(self: pointer, param1: cushort): struct_miqt_string {.importc: "QLocale_toCurrencyStringWithUshort".}
proc fcQLocale_toCurrencyStringWithInt(self: pointer, param1: cint): struct_miqt_string {.importc: "QLocale_toCurrencyStringWithInt".}
proc fcQLocale_toCurrencyStringWithUint(self: pointer, param1: cuint): struct_miqt_string {.importc: "QLocale_toCurrencyStringWithUint".}
proc fcQLocale_toCurrencyStringWithDouble(self: pointer, param1: float64): struct_miqt_string {.importc: "QLocale_toCurrencyStringWithDouble".}
proc fcQLocale_toCurrencyString2(self: pointer, param1: float64, symbol: struct_miqt_string, precision: cint): struct_miqt_string {.importc: "QLocale_toCurrencyString2".}
proc fcQLocale_toCurrencyStringWithFloat(self: pointer, i: float32): struct_miqt_string {.importc: "QLocale_toCurrencyStringWithFloat".}
proc fcQLocale_toCurrencyString3(self: pointer, i: float32, symbol: struct_miqt_string, precision: cint): struct_miqt_string {.importc: "QLocale_toCurrencyString3".}
proc fcQLocale_formattedDataSize(self: pointer, bytes: clonglong): struct_miqt_string {.importc: "QLocale_formattedDataSize".}
proc fcQLocale_formattedDataSizeWithBytes(self: pointer, bytes: clonglong): struct_miqt_string {.importc: "QLocale_formattedDataSizeWithBytes".}
proc fcQLocale_uiLanguages(self: pointer, ): struct_miqt_array {.importc: "QLocale_uiLanguages".}
proc fcQLocale_operatorEqual(self: pointer, other: pointer): bool {.importc: "QLocale_operatorEqual".}
proc fcQLocale_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QLocale_operatorNotEqual".}
proc fcQLocale_languageToString(language: cint): struct_miqt_string {.importc: "QLocale_languageToString".}
proc fcQLocale_countryToString(country: cint): struct_miqt_string {.importc: "QLocale_countryToString".}
proc fcQLocale_scriptToString(script: cint): struct_miqt_string {.importc: "QLocale_scriptToString".}
proc fcQLocale_setDefault(locale: pointer): void {.importc: "QLocale_setDefault".}
proc fcQLocale_c(): pointer {.importc: "QLocale_c".}
proc fcQLocale_system(): pointer {.importc: "QLocale_system".}
proc fcQLocale_matchingLocales(language: cint, script: cint, country: cint): struct_miqt_array {.importc: "QLocale_matchingLocales".}
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
proc fcQLocale_toString22(self: pointer, i: float64, f: cchar): struct_miqt_string {.importc: "QLocale_toString22".}
proc fcQLocale_toString32(self: pointer, i: float64, f: cchar, prec: cint): struct_miqt_string {.importc: "QLocale_toString32".}
proc fcQLocale_toString23(self: pointer, i: float32, f: cchar): struct_miqt_string {.importc: "QLocale_toString23".}
proc fcQLocale_toString33(self: pointer, i: float32, f: cchar, prec: cint): struct_miqt_string {.importc: "QLocale_toString33".}
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
proc fcQLocale_toCurrencyString22(self: pointer, param1: clonglong, symbol: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toCurrencyString22".}
proc fcQLocale_toCurrencyString23(self: pointer, param1: culonglong, symbol: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toCurrencyString23".}
proc fcQLocale_toCurrencyString24(self: pointer, param1: cshort, symbol: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toCurrencyString24".}
proc fcQLocale_toCurrencyString25(self: pointer, param1: cushort, symbol: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toCurrencyString25".}
proc fcQLocale_toCurrencyString26(self: pointer, param1: cint, symbol: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toCurrencyString26".}
proc fcQLocale_toCurrencyString27(self: pointer, param1: cuint, symbol: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toCurrencyString27".}
proc fcQLocale_toCurrencyString28(self: pointer, param1: float64, symbol: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toCurrencyString28".}
proc fcQLocale_toCurrencyString29(self: pointer, i: float32, symbol: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toCurrencyString29".}
proc fcQLocale_formattedDataSize2(self: pointer, bytes: clonglong, precision: cint): struct_miqt_string {.importc: "QLocale_formattedDataSize2".}
proc fcQLocale_formattedDataSize3(self: pointer, bytes: clonglong, precision: cint, format: cint): struct_miqt_string {.importc: "QLocale_formattedDataSize3".}
proc fcQLocale_formattedDataSize22(self: pointer, bytes: clonglong, precision: cint): struct_miqt_string {.importc: "QLocale_formattedDataSize22".}
proc fcQLocale_formattedDataSize32(self: pointer, bytes: clonglong, precision: cint, format: cint): struct_miqt_string {.importc: "QLocale_formattedDataSize32".}
proc fcQLocale_quoteString2(self: pointer, str: struct_miqt_string, style: cint): struct_miqt_string {.importc: "QLocale_quoteString2".}
proc fcQLocale_delete(self: pointer) {.importc: "QLocale_delete".}


func init*(T: type QLocale, h: ptr cQLocale): QLocale =
  T(h: h)
proc create*(T: type QLocale, ): QLocale =

  QLocale.init(fcQLocale_new())
proc create*(T: type QLocale, name: string): QLocale =

  QLocale.init(fcQLocale_new2(struct_miqt_string(data: name, len: csize_t(len(name)))))
proc create*(T: type QLocale, language: QLocaleLanguage): QLocale =

  QLocale.init(fcQLocale_new3(cint(language)))
proc create*(T: type QLocale, language: QLocaleLanguage, script: QLocaleScript, country: QLocaleCountry): QLocale =

  QLocale.init(fcQLocale_new4(cint(language), cint(script), cint(country)))
proc create*(T: type QLocale, other: QLocale): QLocale =

  QLocale.init(fcQLocale_new5(other.h))
proc create*(T: type QLocale, language: QLocaleLanguage, country: QLocaleCountry): QLocale =

  QLocale.init(fcQLocale_new6(cint(language), cint(country)))
proc operatorAssign*(self: QLocale, other: QLocale): void =

  fcQLocale_operatorAssign(self.h, other.h)

proc swap*(self: QLocale, other: QLocale): void =

  fcQLocale_swap(self.h, other.h)

proc language*(self: QLocale, ): QLocaleLanguage =

  QLocaleLanguage(fcQLocale_language(self.h))

proc script*(self: QLocale, ): QLocaleScript =

  QLocaleScript(fcQLocale_script(self.h))

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

proc toStringWithDouble*(self: QLocale, i: float64): string =

  let v_ms = fcQLocale_toStringWithDouble(self.h, i)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toStringWithFloat*(self: QLocale, i: float32): string =

  let v_ms = fcQLocale_toStringWithFloat(self.h, i)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString2*(self: QLocale, date: gen_qdatetime.QDate, formatStr: string): string =

  let v_ms = fcQLocale_toString2(self.h, date.h, struct_miqt_string(data: formatStr, len: csize_t(len(formatStr))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString3*(self: QLocale, time: gen_qdatetime.QTime, formatStr: string): string =

  let v_ms = fcQLocale_toString3(self.h, time.h, struct_miqt_string(data: formatStr, len: csize_t(len(formatStr))))
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

proc toTime3*(self: QLocale, string: string, format: QLocaleFormatType, cal: gen_qcalendar.QCalendar): gen_qdatetime.QTime =

  gen_qdatetime.QTime(h: fcQLocale_toTime3(self.h, struct_miqt_string(data: string, len: csize_t(len(string))), cint(format), cal.h))

proc toTime4*(self: QLocale, string: string, format: string, cal: gen_qcalendar.QCalendar): gen_qdatetime.QTime =

  gen_qdatetime.QTime(h: fcQLocale_toTime4(self.h, struct_miqt_string(data: string, len: csize_t(len(string))), struct_miqt_string(data: format, len: csize_t(len(format))), cal.h))

proc decimalPoint*(self: QLocale, ): gen_qchar.QChar =

  gen_qchar.QChar(h: fcQLocale_decimalPoint(self.h))

proc groupSeparator*(self: QLocale, ): gen_qchar.QChar =

  gen_qchar.QChar(h: fcQLocale_groupSeparator(self.h))

proc percent*(self: QLocale, ): gen_qchar.QChar =

  gen_qchar.QChar(h: fcQLocale_percent(self.h))

proc zeroDigit*(self: QLocale, ): gen_qchar.QChar =

  gen_qchar.QChar(h: fcQLocale_zeroDigit(self.h))

proc negativeSign*(self: QLocale, ): gen_qchar.QChar =

  gen_qchar.QChar(h: fcQLocale_negativeSign(self.h))

proc positiveSign*(self: QLocale, ): gen_qchar.QChar =

  gen_qchar.QChar(h: fcQLocale_positiveSign(self.h))

proc exponential*(self: QLocale, ): gen_qchar.QChar =

  gen_qchar.QChar(h: fcQLocale_exponential(self.h))

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

proc toCurrencyStringWithShort*(self: QLocale, param1: cshort): string =

  let v_ms = fcQLocale_toCurrencyStringWithShort(self.h, param1)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyStringWithUshort*(self: QLocale, param1: cushort): string =

  let v_ms = fcQLocale_toCurrencyStringWithUshort(self.h, param1)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyStringWithInt*(self: QLocale, param1: cint): string =

  let v_ms = fcQLocale_toCurrencyStringWithInt(self.h, param1)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyStringWithUint*(self: QLocale, param1: cuint): string =

  let v_ms = fcQLocale_toCurrencyStringWithUint(self.h, param1)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyStringWithDouble*(self: QLocale, param1: float64): string =

  let v_ms = fcQLocale_toCurrencyStringWithDouble(self.h, param1)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString2*(self: QLocale, param1: float64, symbol: string, precision: cint): string =

  let v_ms = fcQLocale_toCurrencyString2(self.h, param1, struct_miqt_string(data: symbol, len: csize_t(len(symbol))), precision)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyStringWithFloat*(self: QLocale, i: float32): string =

  let v_ms = fcQLocale_toCurrencyStringWithFloat(self.h, i)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString3*(self: QLocale, i: float32, symbol: string, precision: cint): string =

  let v_ms = fcQLocale_toCurrencyString3(self.h, i, struct_miqt_string(data: symbol, len: csize_t(len(symbol))), precision)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc formattedDataSize*(self: QLocale, bytes: clonglong): string =

  let v_ms = fcQLocale_formattedDataSize(self.h, bytes)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc formattedDataSizeWithBytes*(self: QLocale, bytes: clonglong): string =

  let v_ms = fcQLocale_formattedDataSizeWithBytes(self.h, bytes)
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

proc operatorEqual*(self: QLocale, other: QLocale): bool =

  fcQLocale_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QLocale, other: QLocale): bool =

  fcQLocale_operatorNotEqual(self.h, other.h)

proc languageToString*(_: type QLocale, language: QLocaleLanguage): string =

  let v_ms = fcQLocale_languageToString(cint(language))
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

proc matchingLocales*(_: type QLocale, language: QLocaleLanguage, script: QLocaleScript, country: QLocaleCountry): seq[QLocale] =

  var v_ma = fcQLocale_matchingLocales(cint(language), cint(script), cint(country))
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

proc toString22*(self: QLocale, i: float64, f: cchar): string =

  let v_ms = fcQLocale_toString22(self.h, i, f)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString32*(self: QLocale, i: float64, f: cchar, prec: cint): string =

  let v_ms = fcQLocale_toString32(self.h, i, f, prec)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString23*(self: QLocale, i: float32, f: cchar): string =

  let v_ms = fcQLocale_toString23(self.h, i, f)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString33*(self: QLocale, i: float32, f: cchar, prec: cint): string =

  let v_ms = fcQLocale_toString33(self.h, i, f, prec)
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

proc toCurrencyString22*(self: QLocale, param1: clonglong, symbol: string): string =

  let v_ms = fcQLocale_toCurrencyString22(self.h, param1, struct_miqt_string(data: symbol, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString23*(self: QLocale, param1: culonglong, symbol: string): string =

  let v_ms = fcQLocale_toCurrencyString23(self.h, param1, struct_miqt_string(data: symbol, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString24*(self: QLocale, param1: cshort, symbol: string): string =

  let v_ms = fcQLocale_toCurrencyString24(self.h, param1, struct_miqt_string(data: symbol, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString25*(self: QLocale, param1: cushort, symbol: string): string =

  let v_ms = fcQLocale_toCurrencyString25(self.h, param1, struct_miqt_string(data: symbol, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString26*(self: QLocale, param1: cint, symbol: string): string =

  let v_ms = fcQLocale_toCurrencyString26(self.h, param1, struct_miqt_string(data: symbol, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString27*(self: QLocale, param1: cuint, symbol: string): string =

  let v_ms = fcQLocale_toCurrencyString27(self.h, param1, struct_miqt_string(data: symbol, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString28*(self: QLocale, param1: float64, symbol: string): string =

  let v_ms = fcQLocale_toCurrencyString28(self.h, param1, struct_miqt_string(data: symbol, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString29*(self: QLocale, i: float32, symbol: string): string =

  let v_ms = fcQLocale_toCurrencyString29(self.h, i, struct_miqt_string(data: symbol, len: csize_t(len(symbol))))
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

proc formattedDataSize22*(self: QLocale, bytes: clonglong, precision: cint): string =

  let v_ms = fcQLocale_formattedDataSize22(self.h, bytes, precision)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc formattedDataSize32*(self: QLocale, bytes: clonglong, precision: cint, format: QLocaleDataSizeFormat): string =

  let v_ms = fcQLocale_formattedDataSize32(self.h, bytes, precision, cint(format))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc quoteString2*(self: QLocale, str: string, style: QLocaleQuotationStyle): string =

  let v_ms = fcQLocale_quoteString2(self.h, struct_miqt_string(data: str, len: csize_t(len(str))), cint(style))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QLocale) =
  fcQLocale_delete(self.h)
