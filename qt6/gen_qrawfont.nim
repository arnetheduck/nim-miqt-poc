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
{.compile("gen_qrawfont.cpp", cflags).}


type QRawFontAntialiasingType* = cint
const
  QRawFontPixelAntialiasing* = 0
  QRawFontSubPixelAntialiasing* = 1



type QRawFontLayoutFlag* = cint
const
  QRawFontSeparateAdvances* = 0
  QRawFontKernedAdvances* = 1
  QRawFontUseDesignMetrics* = 2



import gen_qrawfont_types
export gen_qrawfont_types

import
  gen_qchar,
  gen_qfont,
  gen_qfontdatabase,
  gen_qimage,
  gen_qpainterpath,
  gen_qpoint,
  gen_qrect,
  gen_qtransform
export
  gen_qchar,
  gen_qfont,
  gen_qfontdatabase,
  gen_qimage,
  gen_qpainterpath,
  gen_qpoint,
  gen_qrect,
  gen_qtransform

type cQRawFont*{.exportc: "QRawFont", incompleteStruct.} = object

proc fcQRawFont_new(): ptr cQRawFont {.importc: "QRawFont_new".}
proc fcQRawFont_new2(fileName: struct_miqt_string, pixelSize: float64): ptr cQRawFont {.importc: "QRawFont_new2".}
proc fcQRawFont_new3(fontData: struct_miqt_string, pixelSize: float64): ptr cQRawFont {.importc: "QRawFont_new3".}
proc fcQRawFont_new4(other: pointer): ptr cQRawFont {.importc: "QRawFont_new4".}
proc fcQRawFont_new5(fileName: struct_miqt_string, pixelSize: float64, hintingPreference: cint): ptr cQRawFont {.importc: "QRawFont_new5".}
proc fcQRawFont_new6(fontData: struct_miqt_string, pixelSize: float64, hintingPreference: cint): ptr cQRawFont {.importc: "QRawFont_new6".}
proc fcQRawFont_operatorAssign(self: pointer, other: pointer): void {.importc: "QRawFont_operatorAssign".}
proc fcQRawFont_swap(self: pointer, other: pointer): void {.importc: "QRawFont_swap".}
proc fcQRawFont_isValid(self: pointer, ): bool {.importc: "QRawFont_isValid".}
proc fcQRawFont_operatorEqual(self: pointer, other: pointer): bool {.importc: "QRawFont_operatorEqual".}
proc fcQRawFont_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QRawFont_operatorNotEqual".}
proc fcQRawFont_familyName(self: pointer, ): struct_miqt_string {.importc: "QRawFont_familyName".}
proc fcQRawFont_styleName(self: pointer, ): struct_miqt_string {.importc: "QRawFont_styleName".}
proc fcQRawFont_style(self: pointer, ): cint {.importc: "QRawFont_style".}
proc fcQRawFont_weight(self: pointer, ): cint {.importc: "QRawFont_weight".}
proc fcQRawFont_glyphIndexesForString(self: pointer, text: struct_miqt_string): struct_miqt_array {.importc: "QRawFont_glyphIndexesForString".}
proc fcQRawFont_advancesForGlyphIndexes(self: pointer, glyphIndexes: struct_miqt_array): struct_miqt_array {.importc: "QRawFont_advancesForGlyphIndexes".}
proc fcQRawFont_advancesForGlyphIndexes2(self: pointer, glyphIndexes: struct_miqt_array, layoutFlags: cint): struct_miqt_array {.importc: "QRawFont_advancesForGlyphIndexes2".}
proc fcQRawFont_glyphIndexesForChars(self: pointer, chars: pointer, numChars: cint, glyphIndexes: ptr cuint, numGlyphs: ptr cint): bool {.importc: "QRawFont_glyphIndexesForChars".}
proc fcQRawFont_advancesForGlyphIndexes3(self: pointer, glyphIndexes: ptr cuint, advances: pointer, numGlyphs: cint): bool {.importc: "QRawFont_advancesForGlyphIndexes3".}
proc fcQRawFont_advancesForGlyphIndexes4(self: pointer, glyphIndexes: ptr cuint, advances: pointer, numGlyphs: cint, layoutFlags: cint): bool {.importc: "QRawFont_advancesForGlyphIndexes4".}
proc fcQRawFont_alphaMapForGlyph(self: pointer, glyphIndex: cuint): pointer {.importc: "QRawFont_alphaMapForGlyph".}
proc fcQRawFont_pathForGlyph(self: pointer, glyphIndex: cuint): pointer {.importc: "QRawFont_pathForGlyph".}
proc fcQRawFont_boundingRect(self: pointer, glyphIndex: cuint): pointer {.importc: "QRawFont_boundingRect".}
proc fcQRawFont_setPixelSize(self: pointer, pixelSize: float64): void {.importc: "QRawFont_setPixelSize".}
proc fcQRawFont_pixelSize(self: pointer, ): float64 {.importc: "QRawFont_pixelSize".}
proc fcQRawFont_hintingPreference(self: pointer, ): cint {.importc: "QRawFont_hintingPreference".}
proc fcQRawFont_ascent(self: pointer, ): float64 {.importc: "QRawFont_ascent".}
proc fcQRawFont_capHeight(self: pointer, ): float64 {.importc: "QRawFont_capHeight".}
proc fcQRawFont_descent(self: pointer, ): float64 {.importc: "QRawFont_descent".}
proc fcQRawFont_leading(self: pointer, ): float64 {.importc: "QRawFont_leading".}
proc fcQRawFont_xHeight(self: pointer, ): float64 {.importc: "QRawFont_xHeight".}
proc fcQRawFont_averageCharWidth(self: pointer, ): float64 {.importc: "QRawFont_averageCharWidth".}
proc fcQRawFont_maxCharWidth(self: pointer, ): float64 {.importc: "QRawFont_maxCharWidth".}
proc fcQRawFont_lineThickness(self: pointer, ): float64 {.importc: "QRawFont_lineThickness".}
proc fcQRawFont_underlinePosition(self: pointer, ): float64 {.importc: "QRawFont_underlinePosition".}
proc fcQRawFont_unitsPerEm(self: pointer, ): float64 {.importc: "QRawFont_unitsPerEm".}
proc fcQRawFont_loadFromFile(self: pointer, fileName: struct_miqt_string, pixelSize: float64, hintingPreference: cint): void {.importc: "QRawFont_loadFromFile".}
proc fcQRawFont_loadFromData(self: pointer, fontData: struct_miqt_string, pixelSize: float64, hintingPreference: cint): void {.importc: "QRawFont_loadFromData".}
proc fcQRawFont_supportsCharacter(self: pointer, ucs4: cuint): bool {.importc: "QRawFont_supportsCharacter".}
proc fcQRawFont_supportsCharacterWithCharacter(self: pointer, character: pointer): bool {.importc: "QRawFont_supportsCharacterWithCharacter".}
proc fcQRawFont_supportedWritingSystems(self: pointer, ): struct_miqt_array {.importc: "QRawFont_supportedWritingSystems".}
proc fcQRawFont_fontTable(self: pointer, tagName: cstring): struct_miqt_string {.importc: "QRawFont_fontTable".}
proc fcQRawFont_fromFont(font: pointer): pointer {.importc: "QRawFont_fromFont".}
proc fcQRawFont_alphaMapForGlyph2(self: pointer, glyphIndex: cuint, antialiasingType: cint): pointer {.importc: "QRawFont_alphaMapForGlyph2".}
proc fcQRawFont_alphaMapForGlyph3(self: pointer, glyphIndex: cuint, antialiasingType: cint, transform: pointer): pointer {.importc: "QRawFont_alphaMapForGlyph3".}
proc fcQRawFont_fromFont2(font: pointer, writingSystem: cint): pointer {.importc: "QRawFont_fromFont2".}
proc fcQRawFont_delete(self: pointer) {.importc: "QRawFont_delete".}


func init*(T: type QRawFont, h: ptr cQRawFont): QRawFont =
  T(h: h)
proc create*(T: type QRawFont, ): QRawFont =

  QRawFont.init(fcQRawFont_new())
proc create*(T: type QRawFont, fileName: string, pixelSize: float64): QRawFont =

  QRawFont.init(fcQRawFont_new2(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), pixelSize))
proc create2*(T: type QRawFont, fontData: seq[byte], pixelSize: float64): QRawFont =

  QRawFont.init(fcQRawFont_new3(struct_miqt_string(data: cast[cstring](if len(fontData) == 0: nil else: unsafeAddr fontData[0]), len: csize_t(len(fontData))), pixelSize))
proc create*(T: type QRawFont, other: QRawFont): QRawFont =

  QRawFont.init(fcQRawFont_new4(other.h))
proc create*(T: type QRawFont, fileName: string, pixelSize: float64, hintingPreference: gen_qfont.QFontHintingPreference): QRawFont =

  QRawFont.init(fcQRawFont_new5(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), pixelSize, cint(hintingPreference)))
proc create2*(T: type QRawFont, fontData: seq[byte], pixelSize: float64, hintingPreference: gen_qfont.QFontHintingPreference): QRawFont =

  QRawFont.init(fcQRawFont_new6(struct_miqt_string(data: cast[cstring](if len(fontData) == 0: nil else: unsafeAddr fontData[0]), len: csize_t(len(fontData))), pixelSize, cint(hintingPreference)))
proc operatorAssign*(self: QRawFont, other: QRawFont): void =

  fcQRawFont_operatorAssign(self.h, other.h)

proc swap*(self: QRawFont, other: QRawFont): void =

  fcQRawFont_swap(self.h, other.h)

proc isValid*(self: QRawFont, ): bool =

  fcQRawFont_isValid(self.h)

proc operatorEqual*(self: QRawFont, other: QRawFont): bool =

  fcQRawFont_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QRawFont, other: QRawFont): bool =

  fcQRawFont_operatorNotEqual(self.h, other.h)

proc familyName*(self: QRawFont, ): string =

  let v_ms = fcQRawFont_familyName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc styleName*(self: QRawFont, ): string =

  let v_ms = fcQRawFont_styleName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc style*(self: QRawFont, ): gen_qfont.QFontStyle =

  gen_qfont.QFontStyle(fcQRawFont_style(self.h))

proc weight*(self: QRawFont, ): cint =

  fcQRawFont_weight(self.h)

proc glyphIndexesForString*(self: QRawFont, text: string): seq[cuint] =

  var v_ma = fcQRawFont_glyphIndexesForString(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))
  var vx_ret = newSeq[cuint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cuint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc advancesForGlyphIndexes*(self: QRawFont, glyphIndexes: seq[cuint]): seq[gen_qpoint.QPointF] =

  var glyphIndexes_CArray = newSeq[cuint](len(glyphIndexes))
  for i in 0..<len(glyphIndexes):
    glyphIndexes_CArray[i] = glyphIndexes[i]

  var v_ma = fcQRawFont_advancesForGlyphIndexes(self.h, struct_miqt_array(len: csize_t(len(glyphIndexes)), data: if len(glyphIndexes) == 0: nil else: addr(glyphIndexes_CArray[0])))
  var vx_ret = newSeq[gen_qpoint.QPointF](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qpoint.QPointF(h: v_outCast[i])
  vx_ret

proc advancesForGlyphIndexes2*(self: QRawFont, glyphIndexes: seq[cuint], layoutFlags: QRawFontLayoutFlag): seq[gen_qpoint.QPointF] =

  var glyphIndexes_CArray = newSeq[cuint](len(glyphIndexes))
  for i in 0..<len(glyphIndexes):
    glyphIndexes_CArray[i] = glyphIndexes[i]

  var v_ma = fcQRawFont_advancesForGlyphIndexes2(self.h, struct_miqt_array(len: csize_t(len(glyphIndexes)), data: if len(glyphIndexes) == 0: nil else: addr(glyphIndexes_CArray[0])), cint(layoutFlags))
  var vx_ret = newSeq[gen_qpoint.QPointF](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qpoint.QPointF(h: v_outCast[i])
  vx_ret

proc glyphIndexesForChars*(self: QRawFont, chars: gen_qchar.QChar, numChars: cint, glyphIndexes: ptr cuint, numGlyphs: ptr cint): bool =

  fcQRawFont_glyphIndexesForChars(self.h, chars.h, numChars, glyphIndexes, numGlyphs)

proc advancesForGlyphIndexes3*(self: QRawFont, glyphIndexes: ptr cuint, advances: gen_qpoint.QPointF, numGlyphs: cint): bool =

  fcQRawFont_advancesForGlyphIndexes3(self.h, glyphIndexes, advances.h, numGlyphs)

proc advancesForGlyphIndexes4*(self: QRawFont, glyphIndexes: ptr cuint, advances: gen_qpoint.QPointF, numGlyphs: cint, layoutFlags: QRawFontLayoutFlag): bool =

  fcQRawFont_advancesForGlyphIndexes4(self.h, glyphIndexes, advances.h, numGlyphs, cint(layoutFlags))

proc alphaMapForGlyph*(self: QRawFont, glyphIndex: cuint): gen_qimage.QImage =

  gen_qimage.QImage(h: fcQRawFont_alphaMapForGlyph(self.h, glyphIndex))

proc pathForGlyph*(self: QRawFont, glyphIndex: cuint): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQRawFont_pathForGlyph(self.h, glyphIndex))

proc boundingRect*(self: QRawFont, glyphIndex: cuint): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQRawFont_boundingRect(self.h, glyphIndex))

proc setPixelSize*(self: QRawFont, pixelSize: float64): void =

  fcQRawFont_setPixelSize(self.h, pixelSize)

proc pixelSize*(self: QRawFont, ): float64 =

  fcQRawFont_pixelSize(self.h)

proc hintingPreference*(self: QRawFont, ): gen_qfont.QFontHintingPreference =

  gen_qfont.QFontHintingPreference(fcQRawFont_hintingPreference(self.h))

proc ascent*(self: QRawFont, ): float64 =

  fcQRawFont_ascent(self.h)

proc capHeight*(self: QRawFont, ): float64 =

  fcQRawFont_capHeight(self.h)

proc descent*(self: QRawFont, ): float64 =

  fcQRawFont_descent(self.h)

proc leading*(self: QRawFont, ): float64 =

  fcQRawFont_leading(self.h)

proc xHeight*(self: QRawFont, ): float64 =

  fcQRawFont_xHeight(self.h)

proc averageCharWidth*(self: QRawFont, ): float64 =

  fcQRawFont_averageCharWidth(self.h)

proc maxCharWidth*(self: QRawFont, ): float64 =

  fcQRawFont_maxCharWidth(self.h)

proc lineThickness*(self: QRawFont, ): float64 =

  fcQRawFont_lineThickness(self.h)

proc underlinePosition*(self: QRawFont, ): float64 =

  fcQRawFont_underlinePosition(self.h)

proc unitsPerEm*(self: QRawFont, ): float64 =

  fcQRawFont_unitsPerEm(self.h)

proc loadFromFile*(self: QRawFont, fileName: string, pixelSize: float64, hintingPreference: gen_qfont.QFontHintingPreference): void =

  fcQRawFont_loadFromFile(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), pixelSize, cint(hintingPreference))

proc loadFromData*(self: QRawFont, fontData: seq[byte], pixelSize: float64, hintingPreference: gen_qfont.QFontHintingPreference): void =

  fcQRawFont_loadFromData(self.h, struct_miqt_string(data: cast[cstring](if len(fontData) == 0: nil else: unsafeAddr fontData[0]), len: csize_t(len(fontData))), pixelSize, cint(hintingPreference))

proc supportsCharacter*(self: QRawFont, ucs4: cuint): bool =

  fcQRawFont_supportsCharacter(self.h, ucs4)

proc supportsCharacterWithCharacter*(self: QRawFont, character: gen_qchar.QChar): bool =

  fcQRawFont_supportsCharacterWithCharacter(self.h, character.h)

proc supportedWritingSystems*(self: QRawFont, ): seq[gen_qfontdatabase.QFontDatabaseWritingSystem] =

  var v_ma = fcQRawFont_supportedWritingSystems(self.h)
  var vx_ret = newSeq[gen_qfontdatabase.QFontDatabaseWritingSystem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qfontdatabase.QFontDatabaseWritingSystem(v_outCast[i])
  vx_ret

proc fontTable*(self: QRawFont, tagName: cstring): seq[byte] =

  var v_bytearray = fcQRawFont_fontTable(self.h, tagName)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc fromFont*(_: type QRawFont, font: gen_qfont.QFont): QRawFont =

  QRawFont(h: fcQRawFont_fromFont(font.h))

proc alphaMapForGlyph2*(self: QRawFont, glyphIndex: cuint, antialiasingType: QRawFontAntialiasingType): gen_qimage.QImage =

  gen_qimage.QImage(h: fcQRawFont_alphaMapForGlyph2(self.h, glyphIndex, cint(antialiasingType)))

proc alphaMapForGlyph3*(self: QRawFont, glyphIndex: cuint, antialiasingType: QRawFontAntialiasingType, transform: gen_qtransform.QTransform): gen_qimage.QImage =

  gen_qimage.QImage(h: fcQRawFont_alphaMapForGlyph3(self.h, glyphIndex, cint(antialiasingType), transform.h))

proc fromFont2*(_: type QRawFont, font: gen_qfont.QFont, writingSystem: gen_qfontdatabase.QFontDatabaseWritingSystem): QRawFont =

  QRawFont(h: fcQRawFont_fromFont2(font.h, cint(writingSystem)))

proc delete*(self: QRawFont) =
  fcQRawFont_delete(self.h)
