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
{.compile("gen_qchar.cpp", cflags).}


type QCharSpecialCharacter* = cint
const
  QCharNull* = 0
  QCharTabulation* = 9
  QCharLineFeed* = 10
  QCharFormFeed* = 12
  QCharCarriageReturn* = 13
  QCharSpace* = 32
  QCharNbsp* = 160
  QCharSoftHyphen* = 173
  QCharReplacementCharacter* = 65533
  QCharObjectReplacementCharacter* = 65532
  QCharByteOrderMark* = 65279
  QCharByteOrderSwapped* = 65534
  QCharParagraphSeparator* = 8233
  QCharLineSeparator* = 8232
  QCharLastValidCodePoint* = 1114111



type QCharCategory* = cint
const
  QCharMark_NonSpacing* = 0
  QCharMark_SpacingCombining* = 1
  QCharMark_Enclosing* = 2
  QCharNumber_DecimalDigit* = 3
  QCharNumber_Letter* = 4
  QCharNumber_Other* = 5
  QCharSeparator_Space* = 6
  QCharSeparator_Line* = 7
  QCharSeparator_Paragraph* = 8
  QCharOther_Control* = 9
  QCharOther_Format* = 10
  QCharOther_Surrogate* = 11
  QCharOther_PrivateUse* = 12
  QCharOther_NotAssigned* = 13
  QCharLetter_Uppercase* = 14
  QCharLetter_Lowercase* = 15
  QCharLetter_Titlecase* = 16
  QCharLetter_Modifier* = 17
  QCharLetter_Other* = 18
  QCharPunctuation_Connector* = 19
  QCharPunctuation_Dash* = 20
  QCharPunctuation_Open* = 21
  QCharPunctuation_Close* = 22
  QCharPunctuation_InitialQuote* = 23
  QCharPunctuation_FinalQuote* = 24
  QCharPunctuation_Other* = 25
  QCharSymbol_Math* = 26
  QCharSymbol_Currency* = 27
  QCharSymbol_Modifier* = 28
  QCharSymbol_Other* = 29



type QCharScript* = cint
const
  QCharScript_Unknown* = 0
  QCharScript_Inherited* = 1
  QCharScript_Common* = 2
  QCharScript_Latin* = 3
  QCharScript_Greek* = 4
  QCharScript_Cyrillic* = 5
  QCharScript_Armenian* = 6
  QCharScript_Hebrew* = 7
  QCharScript_Arabic* = 8
  QCharScript_Syriac* = 9
  QCharScript_Thaana* = 10
  QCharScript_Devanagari* = 11
  QCharScript_Bengali* = 12
  QCharScript_Gurmukhi* = 13
  QCharScript_Gujarati* = 14
  QCharScript_Oriya* = 15
  QCharScript_Tamil* = 16
  QCharScript_Telugu* = 17
  QCharScript_Kannada* = 18
  QCharScript_Malayalam* = 19
  QCharScript_Sinhala* = 20
  QCharScript_Thai* = 21
  QCharScript_Lao* = 22
  QCharScript_Tibetan* = 23
  QCharScript_Myanmar* = 24
  QCharScript_Georgian* = 25
  QCharScript_Hangul* = 26
  QCharScript_Ethiopic* = 27
  QCharScript_Cherokee* = 28
  QCharScript_CanadianAboriginal* = 29
  QCharScript_Ogham* = 30
  QCharScript_Runic* = 31
  QCharScript_Khmer* = 32
  QCharScript_Mongolian* = 33
  QCharScript_Hiragana* = 34
  QCharScript_Katakana* = 35
  QCharScript_Bopomofo* = 36
  QCharScript_Han* = 37
  QCharScript_Yi* = 38
  QCharScript_OldItalic* = 39
  QCharScript_Gothic* = 40
  QCharScript_Deseret* = 41
  QCharScript_Tagalog* = 42
  QCharScript_Hanunoo* = 43
  QCharScript_Buhid* = 44
  QCharScript_Tagbanwa* = 45
  QCharScript_Coptic* = 46
  QCharScript_Limbu* = 47
  QCharScript_TaiLe* = 48
  QCharScript_LinearB* = 49
  QCharScript_Ugaritic* = 50
  QCharScript_Shavian* = 51
  QCharScript_Osmanya* = 52
  QCharScript_Cypriot* = 53
  QCharScript_Braille* = 54
  QCharScript_Buginese* = 55
  QCharScript_NewTaiLue* = 56
  QCharScript_Glagolitic* = 57
  QCharScript_Tifinagh* = 58
  QCharScript_SylotiNagri* = 59
  QCharScript_OldPersian* = 60
  QCharScript_Kharoshthi* = 61
  QCharScript_Balinese* = 62
  QCharScript_Cuneiform* = 63
  QCharScript_Phoenician* = 64
  QCharScript_PhagsPa* = 65
  QCharScript_Nko* = 66
  QCharScript_Sundanese* = 67
  QCharScript_Lepcha* = 68
  QCharScript_OlChiki* = 69
  QCharScript_Vai* = 70
  QCharScript_Saurashtra* = 71
  QCharScript_KayahLi* = 72
  QCharScript_Rejang* = 73
  QCharScript_Lycian* = 74
  QCharScript_Carian* = 75
  QCharScript_Lydian* = 76
  QCharScript_Cham* = 77
  QCharScript_TaiTham* = 78
  QCharScript_TaiViet* = 79
  QCharScript_Avestan* = 80
  QCharScript_EgyptianHieroglyphs* = 81
  QCharScript_Samaritan* = 82
  QCharScript_Lisu* = 83
  QCharScript_Bamum* = 84
  QCharScript_Javanese* = 85
  QCharScript_MeeteiMayek* = 86
  QCharScript_ImperialAramaic* = 87
  QCharScript_OldSouthArabian* = 88
  QCharScript_InscriptionalParthian* = 89
  QCharScript_InscriptionalPahlavi* = 90
  QCharScript_OldTurkic* = 91
  QCharScript_Kaithi* = 92
  QCharScript_Batak* = 93
  QCharScript_Brahmi* = 94
  QCharScript_Mandaic* = 95
  QCharScript_Chakma* = 96
  QCharScript_MeroiticCursive* = 97
  QCharScript_MeroiticHieroglyphs* = 98
  QCharScript_Miao* = 99
  QCharScript_Sharada* = 100
  QCharScript_SoraSompeng* = 101
  QCharScript_Takri* = 102
  QCharScript_CaucasianAlbanian* = 103
  QCharScript_BassaVah* = 104
  QCharScript_Duployan* = 105
  QCharScript_Elbasan* = 106
  QCharScript_Grantha* = 107
  QCharScript_PahawhHmong* = 108
  QCharScript_Khojki* = 109
  QCharScript_LinearA* = 110
  QCharScript_Mahajani* = 111
  QCharScript_Manichaean* = 112
  QCharScript_MendeKikakui* = 113
  QCharScript_Modi* = 114
  QCharScript_Mro* = 115
  QCharScript_OldNorthArabian* = 116
  QCharScript_Nabataean* = 117
  QCharScript_Palmyrene* = 118
  QCharScript_PauCinHau* = 119
  QCharScript_OldPermic* = 120
  QCharScript_PsalterPahlavi* = 121
  QCharScript_Siddham* = 122
  QCharScript_Khudawadi* = 123
  QCharScript_Tirhuta* = 124
  QCharScript_WarangCiti* = 125
  QCharScript_Ahom* = 126
  QCharScript_AnatolianHieroglyphs* = 127
  QCharScript_Hatran* = 128
  QCharScript_Multani* = 129
  QCharScript_OldHungarian* = 130
  QCharScript_SignWriting* = 131
  QCharScript_Adlam* = 132
  QCharScript_Bhaiksuki* = 133
  QCharScript_Marchen* = 134
  QCharScript_Newa* = 135
  QCharScript_Osage* = 136
  QCharScript_Tangut* = 137
  QCharScript_MasaramGondi* = 138
  QCharScript_Nushu* = 139
  QCharScript_Soyombo* = 140
  QCharScript_ZanabazarSquare* = 141
  QCharScript_Dogra* = 142
  QCharScript_GunjalaGondi* = 143
  QCharScript_HanifiRohingya* = 144
  QCharScript_Makasar* = 145
  QCharScript_Medefaidrin* = 146
  QCharScript_OldSogdian* = 147
  QCharScript_Sogdian* = 148
  QCharScript_Elymaic* = 149
  QCharScript_Nandinagari* = 150
  QCharScript_NyiakengPuachueHmong* = 151
  QCharScript_Wancho* = 152
  QCharScript_Chorasmian* = 153
  QCharScript_DivesAkuru* = 154
  QCharScript_KhitanSmallScript* = 155
  QCharScript_Yezidi* = 156
  QCharScriptCount* = 157



type QCharDirection* = cint
const
  QCharDirL* = 0
  QCharDirR* = 1
  QCharDirEN* = 2
  QCharDirES* = 3
  QCharDirET* = 4
  QCharDirAN* = 5
  QCharDirCS* = 6
  QCharDirB* = 7
  QCharDirS* = 8
  QCharDirWS* = 9
  QCharDirON* = 10
  QCharDirLRE* = 11
  QCharDirLRO* = 12
  QCharDirAL* = 13
  QCharDirRLE* = 14
  QCharDirRLO* = 15
  QCharDirPDF* = 16
  QCharDirNSM* = 17
  QCharDirBN* = 18
  QCharDirLRI* = 19
  QCharDirRLI* = 20
  QCharDirFSI* = 21
  QCharDirPDI* = 22



type QCharDecomposition* = cint
const
  QCharNoDecomposition* = 0
  QCharCanonical* = 1
  QCharFont* = 2
  QCharNoBreak* = 3
  QCharInitial* = 4
  QCharMedial* = 5
  QCharFinal* = 6
  QCharIsolated* = 7
  QCharCircle* = 8
  QCharSuper* = 9
  QCharSub* = 10
  QCharVertical* = 11
  QCharWide* = 12
  QCharNarrow* = 13
  QCharSmall* = 14
  QCharSquare* = 15
  QCharCompat* = 16
  QCharFraction* = 17



type QCharJoiningType* = cint
const
  QCharJoining_None* = 0
  QCharJoining_Causing* = 1
  QCharJoining_Dual* = 2
  QCharJoining_Right* = 3
  QCharJoining_Left* = 4
  QCharJoining_Transparent* = 5



type QCharJoining* = cint
const
  QCharOtherJoining* = 0
  QCharDual* = 1
  QCharRight* = 2
  QCharCenter* = 3



type QCharCombiningClass* = cint
const
  QCharCombining_BelowLeftAttached* = 200
  QCharCombining_BelowAttached* = 202
  QCharCombining_BelowRightAttached* = 204
  QCharCombining_LeftAttached* = 208
  QCharCombining_RightAttached* = 210
  QCharCombining_AboveLeftAttached* = 212
  QCharCombining_AboveAttached* = 214
  QCharCombining_AboveRightAttached* = 216
  QCharCombining_BelowLeft* = 218
  QCharCombining_Below* = 220
  QCharCombining_BelowRight* = 222
  QCharCombining_Left* = 224
  QCharCombining_Right* = 226
  QCharCombining_AboveLeft* = 228
  QCharCombining_Above* = 230
  QCharCombining_AboveRight* = 232
  QCharCombining_DoubleBelow* = 233
  QCharCombining_DoubleAbove* = 234
  QCharCombining_IotaSubscript* = 240



type QCharUnicodeVersion* = cint
const
  QCharUnicode_Unassigned* = 0
  QCharUnicode_1_1* = 1
  QCharUnicode_2_0* = 2
  QCharUnicode_2_1_2* = 3
  QCharUnicode_3_0* = 4
  QCharUnicode_3_1* = 5
  QCharUnicode_3_2* = 6
  QCharUnicode_4_0* = 7
  QCharUnicode_4_1* = 8
  QCharUnicode_5_0* = 9
  QCharUnicode_5_1* = 10
  QCharUnicode_5_2* = 11
  QCharUnicode_6_0* = 12
  QCharUnicode_6_1* = 13
  QCharUnicode_6_2* = 14
  QCharUnicode_6_3* = 15
  QCharUnicode_7_0* = 16
  QCharUnicode_8_0* = 17
  QCharUnicode_9_0* = 18
  QCharUnicode_10_0* = 19
  QCharUnicode_11_0* = 20
  QCharUnicode_12_0* = 21
  QCharUnicode_12_1* = 22
  QCharUnicode_13_0* = 23



import gen_qchar_types
export gen_qchar_types


type cQLatin1Char*{.exportc: "QLatin1Char", incompleteStruct.} = object
type cQChar*{.exportc: "QChar", incompleteStruct.} = object

proc fcQLatin1Char_new(c: cchar): ptr cQLatin1Char {.importc: "QLatin1Char_new".}
proc fcQLatin1Char_new2(param1: pointer): ptr cQLatin1Char {.importc: "QLatin1Char_new2".}
proc fcQLatin1Char_toLatin1(self: pointer, ): cchar {.importc: "QLatin1Char_toLatin1".}
proc fcQLatin1Char_unicode(self: pointer, ): cushort {.importc: "QLatin1Char_unicode".}
proc fcQLatin1Char_delete(self: pointer) {.importc: "QLatin1Char_delete".}
proc fcQChar_new(): ptr cQChar {.importc: "QChar_new".}
proc fcQChar_new2(rc: cushort): ptr cQChar {.importc: "QChar_new2".}
proc fcQChar_new3(c: uint8, r: uint8): ptr cQChar {.importc: "QChar_new3".}
proc fcQChar_new4(rc: cshort): ptr cQChar {.importc: "QChar_new4".}
proc fcQChar_new5(rc: cuint): ptr cQChar {.importc: "QChar_new5".}
proc fcQChar_new6(rc: cint): ptr cQChar {.importc: "QChar_new6".}
proc fcQChar_new7(s: cint): ptr cQChar {.importc: "QChar_new7".}
proc fcQChar_new8(ch: pointer): ptr cQChar {.importc: "QChar_new8".}
proc fcQChar_new9(c: cchar): ptr cQChar {.importc: "QChar_new9".}
proc fcQChar_new10(c: uint8): ptr cQChar {.importc: "QChar_new10".}
proc fcQChar_new11(param1: pointer): ptr cQChar {.importc: "QChar_new11".}
proc fcQChar_category(self: pointer, ): cint {.importc: "QChar_category".}
proc fcQChar_direction(self: pointer, ): cint {.importc: "QChar_direction".}
proc fcQChar_joiningType(self: pointer, ): cint {.importc: "QChar_joiningType".}
proc fcQChar_joining(self: pointer, ): cint {.importc: "QChar_joining".}
proc fcQChar_combiningClass(self: pointer, ): uint8 {.importc: "QChar_combiningClass".}
proc fcQChar_mirroredChar(self: pointer, ): pointer {.importc: "QChar_mirroredChar".}
proc fcQChar_hasMirrored(self: pointer, ): bool {.importc: "QChar_hasMirrored".}
proc fcQChar_decomposition(self: pointer, ): struct_miqt_string {.importc: "QChar_decomposition".}
proc fcQChar_decompositionTag(self: pointer, ): cint {.importc: "QChar_decompositionTag".}
proc fcQChar_digitValue(self: pointer, ): cint {.importc: "QChar_digitValue".}
proc fcQChar_toLower(self: pointer, ): pointer {.importc: "QChar_toLower".}
proc fcQChar_toUpper(self: pointer, ): pointer {.importc: "QChar_toUpper".}
proc fcQChar_toTitleCase(self: pointer, ): pointer {.importc: "QChar_toTitleCase".}
proc fcQChar_toCaseFolded(self: pointer, ): pointer {.importc: "QChar_toCaseFolded".}
proc fcQChar_script(self: pointer, ): cint {.importc: "QChar_script".}
proc fcQChar_unicodeVersion(self: pointer, ): cint {.importc: "QChar_unicodeVersion".}
proc fcQChar_toLatin1(self: pointer, ): cchar {.importc: "QChar_toLatin1".}
proc fcQChar_unicode(self: pointer, ): cushort {.importc: "QChar_unicode".}
proc fcQChar_fromLatin1(c: cchar): pointer {.importc: "QChar_fromLatin1".}
proc fcQChar_isNull(self: pointer, ): bool {.importc: "QChar_isNull".}
proc fcQChar_isPrint(self: pointer, ): bool {.importc: "QChar_isPrint".}
proc fcQChar_isSpace(self: pointer, ): bool {.importc: "QChar_isSpace".}
proc fcQChar_isMark(self: pointer, ): bool {.importc: "QChar_isMark".}
proc fcQChar_isPunct(self: pointer, ): bool {.importc: "QChar_isPunct".}
proc fcQChar_isSymbol(self: pointer, ): bool {.importc: "QChar_isSymbol".}
proc fcQChar_isLetter(self: pointer, ): bool {.importc: "QChar_isLetter".}
proc fcQChar_isNumber(self: pointer, ): bool {.importc: "QChar_isNumber".}
proc fcQChar_isLetterOrNumber(self: pointer, ): bool {.importc: "QChar_isLetterOrNumber".}
proc fcQChar_isDigit(self: pointer, ): bool {.importc: "QChar_isDigit".}
proc fcQChar_isLower(self: pointer, ): bool {.importc: "QChar_isLower".}
proc fcQChar_isUpper(self: pointer, ): bool {.importc: "QChar_isUpper".}
proc fcQChar_isTitleCase(self: pointer, ): bool {.importc: "QChar_isTitleCase".}
proc fcQChar_isNonCharacter(self: pointer, ): bool {.importc: "QChar_isNonCharacter".}
proc fcQChar_isHighSurrogate(self: pointer, ): bool {.importc: "QChar_isHighSurrogate".}
proc fcQChar_isLowSurrogate(self: pointer, ): bool {.importc: "QChar_isLowSurrogate".}
proc fcQChar_isSurrogate(self: pointer, ): bool {.importc: "QChar_isSurrogate".}
proc fcQChar_cell(self: pointer, ): uint8 {.importc: "QChar_cell".}
proc fcQChar_row(self: pointer, ): uint8 {.importc: "QChar_row".}
proc fcQChar_setCell(self: pointer, acell: uint8): void {.importc: "QChar_setCell".}
proc fcQChar_setRow(self: pointer, arow: uint8): void {.importc: "QChar_setRow".}
proc fcQChar_isNonCharacterWithUcs4(ucs4: cuint): bool {.importc: "QChar_isNonCharacterWithUcs4".}
proc fcQChar_isHighSurrogateWithUcs4(ucs4: cuint): bool {.importc: "QChar_isHighSurrogateWithUcs4".}
proc fcQChar_isLowSurrogateWithUcs4(ucs4: cuint): bool {.importc: "QChar_isLowSurrogateWithUcs4".}
proc fcQChar_isSurrogateWithUcs4(ucs4: cuint): bool {.importc: "QChar_isSurrogateWithUcs4".}
proc fcQChar_requiresSurrogates(ucs4: cuint): bool {.importc: "QChar_requiresSurrogates".}
proc fcQChar_surrogateToUcs4(high: cushort, low: cushort): cuint {.importc: "QChar_surrogateToUcs4".}
proc fcQChar_surrogateToUcs42(high: pointer, low: pointer): cuint {.importc: "QChar_surrogateToUcs42".}
proc fcQChar_highSurrogate(ucs4: cuint): cushort {.importc: "QChar_highSurrogate".}
proc fcQChar_lowSurrogate(ucs4: cuint): cushort {.importc: "QChar_lowSurrogate".}
proc fcQChar_categoryWithUcs4(ucs4: cuint): cint {.importc: "QChar_categoryWithUcs4".}
proc fcQChar_directionWithUcs4(ucs4: cuint): cint {.importc: "QChar_directionWithUcs4".}
proc fcQChar_joiningTypeWithUcs4(ucs4: cuint): cint {.importc: "QChar_joiningTypeWithUcs4".}
proc fcQChar_joiningWithUcs4(ucs4: cuint): cint {.importc: "QChar_joiningWithUcs4".}
proc fcQChar_combiningClassWithUcs4(ucs4: cuint): uint8 {.importc: "QChar_combiningClassWithUcs4".}
proc fcQChar_mirroredCharWithUcs4(ucs4: cuint): cuint {.importc: "QChar_mirroredCharWithUcs4".}
proc fcQChar_hasMirroredWithUcs4(ucs4: cuint): bool {.importc: "QChar_hasMirroredWithUcs4".}
proc fcQChar_decompositionWithUcs4(ucs4: cuint): struct_miqt_string {.importc: "QChar_decompositionWithUcs4".}
proc fcQChar_decompositionTagWithUcs4(ucs4: cuint): cint {.importc: "QChar_decompositionTagWithUcs4".}
proc fcQChar_digitValueWithUcs4(ucs4: cuint): cint {.importc: "QChar_digitValueWithUcs4".}
proc fcQChar_toLowerWithUcs4(ucs4: cuint): cuint {.importc: "QChar_toLowerWithUcs4".}
proc fcQChar_toUpperWithUcs4(ucs4: cuint): cuint {.importc: "QChar_toUpperWithUcs4".}
proc fcQChar_toTitleCaseWithUcs4(ucs4: cuint): cuint {.importc: "QChar_toTitleCaseWithUcs4".}
proc fcQChar_toCaseFoldedWithUcs4(ucs4: cuint): cuint {.importc: "QChar_toCaseFoldedWithUcs4".}
proc fcQChar_scriptWithUcs4(ucs4: cuint): cint {.importc: "QChar_scriptWithUcs4".}
proc fcQChar_unicodeVersionWithUcs4(ucs4: cuint): cint {.importc: "QChar_unicodeVersionWithUcs4".}
proc fcQChar_currentUnicodeVersion(): cint {.importc: "QChar_currentUnicodeVersion".}
proc fcQChar_isPrintWithUcs4(ucs4: cuint): bool {.importc: "QChar_isPrintWithUcs4".}
proc fcQChar_isSpaceWithUcs4(ucs4: cuint): bool {.importc: "QChar_isSpaceWithUcs4".}
proc fcQChar_isMarkWithUcs4(ucs4: cuint): bool {.importc: "QChar_isMarkWithUcs4".}
proc fcQChar_isPunctWithUcs4(ucs4: cuint): bool {.importc: "QChar_isPunctWithUcs4".}
proc fcQChar_isSymbolWithUcs4(ucs4: cuint): bool {.importc: "QChar_isSymbolWithUcs4".}
proc fcQChar_isLetterWithUcs4(ucs4: cuint): bool {.importc: "QChar_isLetterWithUcs4".}
proc fcQChar_isNumberWithUcs4(ucs4: cuint): bool {.importc: "QChar_isNumberWithUcs4".}
proc fcQChar_isLetterOrNumberWithUcs4(ucs4: cuint): bool {.importc: "QChar_isLetterOrNumberWithUcs4".}
proc fcQChar_isDigitWithUcs4(ucs4: cuint): bool {.importc: "QChar_isDigitWithUcs4".}
proc fcQChar_isLowerWithUcs4(ucs4: cuint): bool {.importc: "QChar_isLowerWithUcs4".}
proc fcQChar_isUpperWithUcs4(ucs4: cuint): bool {.importc: "QChar_isUpperWithUcs4".}
proc fcQChar_isTitleCaseWithUcs4(ucs4: cuint): bool {.importc: "QChar_isTitleCaseWithUcs4".}
proc fcQChar_delete(self: pointer) {.importc: "QChar_delete".}


func init*(T: type QLatin1Char, h: ptr cQLatin1Char): QLatin1Char =
  T(h: h)
proc create*(T: type QLatin1Char, c: cchar): QLatin1Char =

  QLatin1Char.init(fcQLatin1Char_new(c))
proc create*(T: type QLatin1Char, param1: QLatin1Char): QLatin1Char =

  QLatin1Char.init(fcQLatin1Char_new2(param1.h))
proc toLatin1*(self: QLatin1Char, ): cchar =

  fcQLatin1Char_toLatin1(self.h)

proc unicode*(self: QLatin1Char, ): cushort =

  fcQLatin1Char_unicode(self.h)

proc delete*(self: QLatin1Char) =
  fcQLatin1Char_delete(self.h)

func init*(T: type QChar, h: ptr cQChar): QChar =
  T(h: h)
proc create*(T: type QChar, ): QChar =

  QChar.init(fcQChar_new())
proc create*(T: type QChar, rc: cushort): QChar =

  QChar.init(fcQChar_new2(rc))
proc create*(T: type QChar, c: uint8, r: uint8): QChar =

  QChar.init(fcQChar_new3(c, r))
proc create*(T: type QChar, rc: cshort): QChar =

  QChar.init(fcQChar_new4(rc))
proc create*(T: type QChar, rc: cuint): QChar =

  QChar.init(fcQChar_new5(rc))
proc create*(T: type QChar, rc: cint): QChar =

  QChar.init(fcQChar_new6(rc))
proc create2*(T: type QChar, s: QCharSpecialCharacter): QChar =

  QChar.init(fcQChar_new7(cint(s)))
proc create*(T: type QChar, ch: QLatin1Char): QChar =

  QChar.init(fcQChar_new8(ch.h))
proc create*(T: type QChar, c: cchar): QChar =

  QChar.init(fcQChar_new9(c))
proc create*(T: type QChar, c: uint8): QChar =

  QChar.init(fcQChar_new10(c))
proc create2*(T: type QChar, param1: QChar): QChar =

  QChar.init(fcQChar_new11(param1.h))
proc category*(self: QChar, ): QCharCategory =

  QCharCategory(fcQChar_category(self.h))

proc direction*(self: QChar, ): QCharDirection =

  QCharDirection(fcQChar_direction(self.h))

proc joiningType*(self: QChar, ): QCharJoiningType =

  QCharJoiningType(fcQChar_joiningType(self.h))

proc joining*(self: QChar, ): QCharJoining =

  QCharJoining(fcQChar_joining(self.h))

proc combiningClass*(self: QChar, ): uint8 =

  fcQChar_combiningClass(self.h)

proc mirroredChar*(self: QChar, ): QChar =

  QChar(h: fcQChar_mirroredChar(self.h))

proc hasMirrored*(self: QChar, ): bool =

  fcQChar_hasMirrored(self.h)

proc decomposition*(self: QChar, ): string =

  let v_ms = fcQChar_decomposition(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc decompositionTag*(self: QChar, ): QCharDecomposition =

  QCharDecomposition(fcQChar_decompositionTag(self.h))

proc digitValue*(self: QChar, ): cint =

  fcQChar_digitValue(self.h)

proc toLower*(self: QChar, ): QChar =

  QChar(h: fcQChar_toLower(self.h))

proc toUpper*(self: QChar, ): QChar =

  QChar(h: fcQChar_toUpper(self.h))

proc toTitleCase*(self: QChar, ): QChar =

  QChar(h: fcQChar_toTitleCase(self.h))

proc toCaseFolded*(self: QChar, ): QChar =

  QChar(h: fcQChar_toCaseFolded(self.h))

proc script*(self: QChar, ): QCharScript =

  QCharScript(fcQChar_script(self.h))

proc unicodeVersion*(self: QChar, ): QCharUnicodeVersion =

  QCharUnicodeVersion(fcQChar_unicodeVersion(self.h))

proc toLatin1*(self: QChar, ): cchar =

  fcQChar_toLatin1(self.h)

proc unicode*(self: QChar, ): cushort =

  fcQChar_unicode(self.h)

proc fromLatin1*(_: type QChar, c: cchar): QChar =

  QChar(h: fcQChar_fromLatin1(c))

proc isNull*(self: QChar, ): bool =

  fcQChar_isNull(self.h)

proc isPrint*(self: QChar, ): bool =

  fcQChar_isPrint(self.h)

proc isSpace*(self: QChar, ): bool =

  fcQChar_isSpace(self.h)

proc isMark*(self: QChar, ): bool =

  fcQChar_isMark(self.h)

proc isPunct*(self: QChar, ): bool =

  fcQChar_isPunct(self.h)

proc isSymbol*(self: QChar, ): bool =

  fcQChar_isSymbol(self.h)

proc isLetter*(self: QChar, ): bool =

  fcQChar_isLetter(self.h)

proc isNumber*(self: QChar, ): bool =

  fcQChar_isNumber(self.h)

proc isLetterOrNumber*(self: QChar, ): bool =

  fcQChar_isLetterOrNumber(self.h)

proc isDigit*(self: QChar, ): bool =

  fcQChar_isDigit(self.h)

proc isLower*(self: QChar, ): bool =

  fcQChar_isLower(self.h)

proc isUpper*(self: QChar, ): bool =

  fcQChar_isUpper(self.h)

proc isTitleCase*(self: QChar, ): bool =

  fcQChar_isTitleCase(self.h)

proc isNonCharacter*(self: QChar, ): bool =

  fcQChar_isNonCharacter(self.h)

proc isHighSurrogate*(self: QChar, ): bool =

  fcQChar_isHighSurrogate(self.h)

proc isLowSurrogate*(self: QChar, ): bool =

  fcQChar_isLowSurrogate(self.h)

proc isSurrogate*(self: QChar, ): bool =

  fcQChar_isSurrogate(self.h)

proc cell*(self: QChar, ): uint8 =

  fcQChar_cell(self.h)

proc row*(self: QChar, ): uint8 =

  fcQChar_row(self.h)

proc setCell*(self: QChar, acell: uint8): void =

  fcQChar_setCell(self.h, acell)

proc setRow*(self: QChar, arow: uint8): void =

  fcQChar_setRow(self.h, arow)

proc isNonCharacterWithUcs4*(_: type QChar, ucs4: cuint): bool =

  fcQChar_isNonCharacterWithUcs4(ucs4)

proc isHighSurrogateWithUcs4*(_: type QChar, ucs4: cuint): bool =

  fcQChar_isHighSurrogateWithUcs4(ucs4)

proc isLowSurrogateWithUcs4*(_: type QChar, ucs4: cuint): bool =

  fcQChar_isLowSurrogateWithUcs4(ucs4)

proc isSurrogateWithUcs4*(_: type QChar, ucs4: cuint): bool =

  fcQChar_isSurrogateWithUcs4(ucs4)

proc requiresSurrogates*(_: type QChar, ucs4: cuint): bool =

  fcQChar_requiresSurrogates(ucs4)

proc surrogateToUcs4*(_: type QChar, high: cushort, low: cushort): cuint =

  fcQChar_surrogateToUcs4(high, low)

proc surrogateToUcs42*(_: type QChar, high: QChar, low: QChar): cuint =

  fcQChar_surrogateToUcs42(high.h, low.h)

proc highSurrogate*(_: type QChar, ucs4: cuint): cushort =

  fcQChar_highSurrogate(ucs4)

proc lowSurrogate*(_: type QChar, ucs4: cuint): cushort =

  fcQChar_lowSurrogate(ucs4)

proc categoryWithUcs4*(_: type QChar, ucs4: cuint): QCharCategory =

  QCharCategory(fcQChar_categoryWithUcs4(ucs4))

proc directionWithUcs4*(_: type QChar, ucs4: cuint): QCharDirection =

  QCharDirection(fcQChar_directionWithUcs4(ucs4))

proc joiningTypeWithUcs4*(_: type QChar, ucs4: cuint): QCharJoiningType =

  QCharJoiningType(fcQChar_joiningTypeWithUcs4(ucs4))

proc joiningWithUcs4*(_: type QChar, ucs4: cuint): QCharJoining =

  QCharJoining(fcQChar_joiningWithUcs4(ucs4))

proc combiningClassWithUcs4*(_: type QChar, ucs4: cuint): uint8 =

  fcQChar_combiningClassWithUcs4(ucs4)

proc mirroredCharWithUcs4*(_: type QChar, ucs4: cuint): cuint =

  fcQChar_mirroredCharWithUcs4(ucs4)

proc hasMirroredWithUcs4*(_: type QChar, ucs4: cuint): bool =

  fcQChar_hasMirroredWithUcs4(ucs4)

proc decompositionWithUcs4*(_: type QChar, ucs4: cuint): string =

  let v_ms = fcQChar_decompositionWithUcs4(ucs4)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc decompositionTagWithUcs4*(_: type QChar, ucs4: cuint): QCharDecomposition =

  QCharDecomposition(fcQChar_decompositionTagWithUcs4(ucs4))

proc digitValueWithUcs4*(_: type QChar, ucs4: cuint): cint =

  fcQChar_digitValueWithUcs4(ucs4)

proc toLowerWithUcs4*(_: type QChar, ucs4: cuint): cuint =

  fcQChar_toLowerWithUcs4(ucs4)

proc toUpperWithUcs4*(_: type QChar, ucs4: cuint): cuint =

  fcQChar_toUpperWithUcs4(ucs4)

proc toTitleCaseWithUcs4*(_: type QChar, ucs4: cuint): cuint =

  fcQChar_toTitleCaseWithUcs4(ucs4)

proc toCaseFoldedWithUcs4*(_: type QChar, ucs4: cuint): cuint =

  fcQChar_toCaseFoldedWithUcs4(ucs4)

proc scriptWithUcs4*(_: type QChar, ucs4: cuint): QCharScript =

  QCharScript(fcQChar_scriptWithUcs4(ucs4))

proc unicodeVersionWithUcs4*(_: type QChar, ucs4: cuint): QCharUnicodeVersion =

  QCharUnicodeVersion(fcQChar_unicodeVersionWithUcs4(ucs4))

proc currentUnicodeVersion*(_: type QChar, ): QCharUnicodeVersion =

  QCharUnicodeVersion(fcQChar_currentUnicodeVersion())

proc isPrintWithUcs4*(_: type QChar, ucs4: cuint): bool =

  fcQChar_isPrintWithUcs4(ucs4)

proc isSpaceWithUcs4*(_: type QChar, ucs4: cuint): bool =

  fcQChar_isSpaceWithUcs4(ucs4)

proc isMarkWithUcs4*(_: type QChar, ucs4: cuint): bool =

  fcQChar_isMarkWithUcs4(ucs4)

proc isPunctWithUcs4*(_: type QChar, ucs4: cuint): bool =

  fcQChar_isPunctWithUcs4(ucs4)

proc isSymbolWithUcs4*(_: type QChar, ucs4: cuint): bool =

  fcQChar_isSymbolWithUcs4(ucs4)

proc isLetterWithUcs4*(_: type QChar, ucs4: cuint): bool =

  fcQChar_isLetterWithUcs4(ucs4)

proc isNumberWithUcs4*(_: type QChar, ucs4: cuint): bool =

  fcQChar_isNumberWithUcs4(ucs4)

proc isLetterOrNumberWithUcs4*(_: type QChar, ucs4: cuint): bool =

  fcQChar_isLetterOrNumberWithUcs4(ucs4)

proc isDigitWithUcs4*(_: type QChar, ucs4: cuint): bool =

  fcQChar_isDigitWithUcs4(ucs4)

proc isLowerWithUcs4*(_: type QChar, ucs4: cuint): bool =

  fcQChar_isLowerWithUcs4(ucs4)

proc isUpperWithUcs4*(_: type QChar, ucs4: cuint): bool =

  fcQChar_isUpperWithUcs4(ucs4)

proc isTitleCaseWithUcs4*(_: type QChar, ucs4: cuint): bool =

  fcQChar_isTitleCaseWithUcs4(ucs4)

proc delete*(self: QChar) =
  fcQChar_delete(self.h)
