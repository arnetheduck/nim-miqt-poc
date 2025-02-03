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
{.compile("gen_qglyphrun.cpp", cflags).}


type QGlyphRunGlyphRunFlag* = cint
const
  QGlyphRunOverline* = 1
  QGlyphRunUnderline* = 2
  QGlyphRunStrikeOut* = 4
  QGlyphRunRightToLeft* = 8
  QGlyphRunSplitLigature* = 16



import gen_qglyphrun_types
export gen_qglyphrun_types

import
  gen_qpoint,
  gen_qrawfont,
  gen_qrect
export
  gen_qpoint,
  gen_qrawfont,
  gen_qrect

type cQGlyphRun*{.exportc: "QGlyphRun", incompleteStruct.} = object

proc fcQGlyphRun_new(): ptr cQGlyphRun {.importc: "QGlyphRun_new".}
proc fcQGlyphRun_new2(other: pointer): ptr cQGlyphRun {.importc: "QGlyphRun_new2".}
proc fcQGlyphRun_operatorAssign(self: pointer, other: pointer): void {.importc: "QGlyphRun_operatorAssign".}
proc fcQGlyphRun_swap(self: pointer, other: pointer): void {.importc: "QGlyphRun_swap".}
proc fcQGlyphRun_rawFont(self: pointer, ): pointer {.importc: "QGlyphRun_rawFont".}
proc fcQGlyphRun_setRawFont(self: pointer, rawFont: pointer): void {.importc: "QGlyphRun_setRawFont".}
proc fcQGlyphRun_setRawData(self: pointer, glyphIndexArray: ptr cuint, glyphPositionArray: pointer, size: cint): void {.importc: "QGlyphRun_setRawData".}
proc fcQGlyphRun_glyphIndexes(self: pointer, ): struct_miqt_array {.importc: "QGlyphRun_glyphIndexes".}
proc fcQGlyphRun_setGlyphIndexes(self: pointer, glyphIndexes: struct_miqt_array): void {.importc: "QGlyphRun_setGlyphIndexes".}
proc fcQGlyphRun_positions(self: pointer, ): struct_miqt_array {.importc: "QGlyphRun_positions".}
proc fcQGlyphRun_setPositions(self: pointer, positions: struct_miqt_array): void {.importc: "QGlyphRun_setPositions".}
proc fcQGlyphRun_clear(self: pointer, ): void {.importc: "QGlyphRun_clear".}
proc fcQGlyphRun_operatorEqual(self: pointer, other: pointer): bool {.importc: "QGlyphRun_operatorEqual".}
proc fcQGlyphRun_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QGlyphRun_operatorNotEqual".}
proc fcQGlyphRun_setOverline(self: pointer, overline: bool): void {.importc: "QGlyphRun_setOverline".}
proc fcQGlyphRun_overline(self: pointer, ): bool {.importc: "QGlyphRun_overline".}
proc fcQGlyphRun_setUnderline(self: pointer, underline: bool): void {.importc: "QGlyphRun_setUnderline".}
proc fcQGlyphRun_underline(self: pointer, ): bool {.importc: "QGlyphRun_underline".}
proc fcQGlyphRun_setStrikeOut(self: pointer, strikeOut: bool): void {.importc: "QGlyphRun_setStrikeOut".}
proc fcQGlyphRun_strikeOut(self: pointer, ): bool {.importc: "QGlyphRun_strikeOut".}
proc fcQGlyphRun_setRightToLeft(self: pointer, on: bool): void {.importc: "QGlyphRun_setRightToLeft".}
proc fcQGlyphRun_isRightToLeft(self: pointer, ): bool {.importc: "QGlyphRun_isRightToLeft".}
proc fcQGlyphRun_setFlag(self: pointer, flag: cint): void {.importc: "QGlyphRun_setFlag".}
proc fcQGlyphRun_setFlags(self: pointer, flags: cint): void {.importc: "QGlyphRun_setFlags".}
proc fcQGlyphRun_flags(self: pointer, ): cint {.importc: "QGlyphRun_flags".}
proc fcQGlyphRun_setBoundingRect(self: pointer, boundingRect: pointer): void {.importc: "QGlyphRun_setBoundingRect".}
proc fcQGlyphRun_boundingRect(self: pointer, ): pointer {.importc: "QGlyphRun_boundingRect".}
proc fcQGlyphRun_isEmpty(self: pointer, ): bool {.importc: "QGlyphRun_isEmpty".}
proc fcQGlyphRun_setFlag2(self: pointer, flag: cint, enabled: bool): void {.importc: "QGlyphRun_setFlag2".}
proc fcQGlyphRun_delete(self: pointer) {.importc: "QGlyphRun_delete".}


func init*(T: type QGlyphRun, h: ptr cQGlyphRun): QGlyphRun =
  T(h: h)
proc create*(T: type QGlyphRun, ): QGlyphRun =

  QGlyphRun.init(fcQGlyphRun_new())
proc create*(T: type QGlyphRun, other: QGlyphRun): QGlyphRun =

  QGlyphRun.init(fcQGlyphRun_new2(other.h))
proc operatorAssign*(self: QGlyphRun, other: QGlyphRun): void =

  fcQGlyphRun_operatorAssign(self.h, other.h)

proc swap*(self: QGlyphRun, other: QGlyphRun): void =

  fcQGlyphRun_swap(self.h, other.h)

proc rawFont*(self: QGlyphRun, ): gen_qrawfont.QRawFont =

  gen_qrawfont.QRawFont(h: fcQGlyphRun_rawFont(self.h))

proc setRawFont*(self: QGlyphRun, rawFont: gen_qrawfont.QRawFont): void =

  fcQGlyphRun_setRawFont(self.h, rawFont.h)

proc setRawData*(self: QGlyphRun, glyphIndexArray: ptr cuint, glyphPositionArray: gen_qpoint.QPointF, size: cint): void =

  fcQGlyphRun_setRawData(self.h, glyphIndexArray, glyphPositionArray.h, size)

proc glyphIndexes*(self: QGlyphRun, ): seq[cuint] =

  var v_ma = fcQGlyphRun_glyphIndexes(self.h)
  var vx_ret = newSeq[cuint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cuint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc setGlyphIndexes*(self: QGlyphRun, glyphIndexes: seq[cuint]): void =

  var glyphIndexes_CArray = newSeq[cuint](len(glyphIndexes))
  for i in 0..<len(glyphIndexes):
    glyphIndexes_CArray[i] = glyphIndexes[i]

  fcQGlyphRun_setGlyphIndexes(self.h, struct_miqt_array(len: csize_t(len(glyphIndexes)), data: if len(glyphIndexes) == 0: nil else: addr(glyphIndexes_CArray[0])))

proc positions*(self: QGlyphRun, ): seq[gen_qpoint.QPointF] =

  var v_ma = fcQGlyphRun_positions(self.h)
  var vx_ret = newSeq[gen_qpoint.QPointF](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qpoint.QPointF(h: v_outCast[i])
  vx_ret

proc setPositions*(self: QGlyphRun, positions: seq[gen_qpoint.QPointF]): void =

  var positions_CArray = newSeq[pointer](len(positions))
  for i in 0..<len(positions):
    positions_CArray[i] = positions[i].h

  fcQGlyphRun_setPositions(self.h, struct_miqt_array(len: csize_t(len(positions)), data: if len(positions) == 0: nil else: addr(positions_CArray[0])))

proc clear*(self: QGlyphRun, ): void =

  fcQGlyphRun_clear(self.h)

proc operatorEqual*(self: QGlyphRun, other: QGlyphRun): bool =

  fcQGlyphRun_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QGlyphRun, other: QGlyphRun): bool =

  fcQGlyphRun_operatorNotEqual(self.h, other.h)

proc setOverline*(self: QGlyphRun, overline: bool): void =

  fcQGlyphRun_setOverline(self.h, overline)

proc overline*(self: QGlyphRun, ): bool =

  fcQGlyphRun_overline(self.h)

proc setUnderline*(self: QGlyphRun, underline: bool): void =

  fcQGlyphRun_setUnderline(self.h, underline)

proc underline*(self: QGlyphRun, ): bool =

  fcQGlyphRun_underline(self.h)

proc setStrikeOut*(self: QGlyphRun, strikeOut: bool): void =

  fcQGlyphRun_setStrikeOut(self.h, strikeOut)

proc strikeOut*(self: QGlyphRun, ): bool =

  fcQGlyphRun_strikeOut(self.h)

proc setRightToLeft*(self: QGlyphRun, on: bool): void =

  fcQGlyphRun_setRightToLeft(self.h, on)

proc isRightToLeft*(self: QGlyphRun, ): bool =

  fcQGlyphRun_isRightToLeft(self.h)

proc setFlag*(self: QGlyphRun, flag: QGlyphRunGlyphRunFlag): void =

  fcQGlyphRun_setFlag(self.h, cint(flag))

proc setFlags*(self: QGlyphRun, flags: QGlyphRunGlyphRunFlag): void =

  fcQGlyphRun_setFlags(self.h, cint(flags))

proc flags*(self: QGlyphRun, ): QGlyphRunGlyphRunFlag =

  QGlyphRunGlyphRunFlag(fcQGlyphRun_flags(self.h))

proc setBoundingRect*(self: QGlyphRun, boundingRect: gen_qrect.QRectF): void =

  fcQGlyphRun_setBoundingRect(self.h, boundingRect.h)

proc boundingRect*(self: QGlyphRun, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGlyphRun_boundingRect(self.h))

proc isEmpty*(self: QGlyphRun, ): bool =

  fcQGlyphRun_isEmpty(self.h)

proc setFlag2*(self: QGlyphRun, flag: QGlyphRunGlyphRunFlag, enabled: bool): void =

  fcQGlyphRun_setFlag2(self.h, cint(flag), enabled)

proc delete*(self: QGlyphRun) =
  fcQGlyphRun_delete(self.h)
