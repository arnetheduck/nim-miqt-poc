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
{.compile("gen_qtextboundaryfinder.cpp", cflags).}


type QTextBoundaryFinderBoundaryType* = cint
const
  QTextBoundaryFinderGrapheme* = 0
  QTextBoundaryFinderWord* = 1
  QTextBoundaryFinderSentence* = 2
  QTextBoundaryFinderLine* = 3



type QTextBoundaryFinderBoundaryReason* = cint
const
  QTextBoundaryFinderNotAtBoundary* = 0
  QTextBoundaryFinderBreakOpportunity* = 31
  QTextBoundaryFinderStartOfItem* = 32
  QTextBoundaryFinderEndOfItem* = 64
  QTextBoundaryFinderMandatoryBreak* = 128
  QTextBoundaryFinderSoftHyphen* = 256



import gen_qtextboundaryfinder_types
export gen_qtextboundaryfinder_types

import
  gen_qchar
export
  gen_qchar

type cQTextBoundaryFinder*{.exportc: "QTextBoundaryFinder", incompleteStruct.} = object

proc fcQTextBoundaryFinder_new(): ptr cQTextBoundaryFinder {.importc: "QTextBoundaryFinder_new".}
proc fcQTextBoundaryFinder_new2(other: pointer): ptr cQTextBoundaryFinder {.importc: "QTextBoundaryFinder_new2".}
proc fcQTextBoundaryFinder_new3(typeVal: cint, string: struct_miqt_string): ptr cQTextBoundaryFinder {.importc: "QTextBoundaryFinder_new3".}
proc fcQTextBoundaryFinder_new4(typeVal: cint, chars: pointer, length: int64): ptr cQTextBoundaryFinder {.importc: "QTextBoundaryFinder_new4".}
proc fcQTextBoundaryFinder_new5(typeVal: cint, chars: pointer, length: int64, buffer: ptr uint8): ptr cQTextBoundaryFinder {.importc: "QTextBoundaryFinder_new5".}
proc fcQTextBoundaryFinder_new6(typeVal: cint, chars: pointer, length: int64, buffer: ptr uint8, bufferSize: int64): ptr cQTextBoundaryFinder {.importc: "QTextBoundaryFinder_new6".}
proc fcQTextBoundaryFinder_operatorAssign(self: pointer, other: pointer): void {.importc: "QTextBoundaryFinder_operatorAssign".}
proc fcQTextBoundaryFinder_isValid(self: pointer, ): bool {.importc: "QTextBoundaryFinder_isValid".}
proc fcQTextBoundaryFinder_typeX(self: pointer, ): cint {.importc: "QTextBoundaryFinder_type".}
proc fcQTextBoundaryFinder_string(self: pointer, ): struct_miqt_string {.importc: "QTextBoundaryFinder_string".}
proc fcQTextBoundaryFinder_toStart(self: pointer, ): void {.importc: "QTextBoundaryFinder_toStart".}
proc fcQTextBoundaryFinder_toEnd(self: pointer, ): void {.importc: "QTextBoundaryFinder_toEnd".}
proc fcQTextBoundaryFinder_position(self: pointer, ): int64 {.importc: "QTextBoundaryFinder_position".}
proc fcQTextBoundaryFinder_setPosition(self: pointer, position: int64): void {.importc: "QTextBoundaryFinder_setPosition".}
proc fcQTextBoundaryFinder_toNextBoundary(self: pointer, ): int64 {.importc: "QTextBoundaryFinder_toNextBoundary".}
proc fcQTextBoundaryFinder_toPreviousBoundary(self: pointer, ): int64 {.importc: "QTextBoundaryFinder_toPreviousBoundary".}
proc fcQTextBoundaryFinder_isAtBoundary(self: pointer, ): bool {.importc: "QTextBoundaryFinder_isAtBoundary".}
proc fcQTextBoundaryFinder_boundaryReasons(self: pointer, ): cint {.importc: "QTextBoundaryFinder_boundaryReasons".}
proc fcQTextBoundaryFinder_delete(self: pointer) {.importc: "QTextBoundaryFinder_delete".}


func init*(T: type QTextBoundaryFinder, h: ptr cQTextBoundaryFinder): QTextBoundaryFinder =
  T(h: h)
proc create*(T: type QTextBoundaryFinder, ): QTextBoundaryFinder =

  QTextBoundaryFinder.init(fcQTextBoundaryFinder_new())
proc create*(T: type QTextBoundaryFinder, other: QTextBoundaryFinder): QTextBoundaryFinder =

  QTextBoundaryFinder.init(fcQTextBoundaryFinder_new2(other.h))
proc create*(T: type QTextBoundaryFinder, typeVal: QTextBoundaryFinderBoundaryType, string: string): QTextBoundaryFinder =

  QTextBoundaryFinder.init(fcQTextBoundaryFinder_new3(cint(typeVal), struct_miqt_string(data: string, len: csize_t(len(string)))))
proc create*(T: type QTextBoundaryFinder, typeVal: QTextBoundaryFinderBoundaryType, chars: gen_qchar.QChar, length: int64): QTextBoundaryFinder =

  QTextBoundaryFinder.init(fcQTextBoundaryFinder_new4(cint(typeVal), chars.h, length))
proc create*(T: type QTextBoundaryFinder, typeVal: QTextBoundaryFinderBoundaryType, chars: gen_qchar.QChar, length: int64, buffer: ptr uint8): QTextBoundaryFinder =

  QTextBoundaryFinder.init(fcQTextBoundaryFinder_new5(cint(typeVal), chars.h, length, buffer))
proc create*(T: type QTextBoundaryFinder, typeVal: QTextBoundaryFinderBoundaryType, chars: gen_qchar.QChar, length: int64, buffer: ptr uint8, bufferSize: int64): QTextBoundaryFinder =

  QTextBoundaryFinder.init(fcQTextBoundaryFinder_new6(cint(typeVal), chars.h, length, buffer, bufferSize))
proc operatorAssign*(self: QTextBoundaryFinder, other: QTextBoundaryFinder): void =

  fcQTextBoundaryFinder_operatorAssign(self.h, other.h)

proc isValid*(self: QTextBoundaryFinder, ): bool =

  fcQTextBoundaryFinder_isValid(self.h)

proc typeX*(self: QTextBoundaryFinder, ): QTextBoundaryFinderBoundaryType =

  QTextBoundaryFinderBoundaryType(fcQTextBoundaryFinder_typeX(self.h))

proc string*(self: QTextBoundaryFinder, ): string =

  let v_ms = fcQTextBoundaryFinder_string(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toStart*(self: QTextBoundaryFinder, ): void =

  fcQTextBoundaryFinder_toStart(self.h)

proc toEnd*(self: QTextBoundaryFinder, ): void =

  fcQTextBoundaryFinder_toEnd(self.h)

proc position*(self: QTextBoundaryFinder, ): int64 =

  fcQTextBoundaryFinder_position(self.h)

proc setPosition*(self: QTextBoundaryFinder, position: int64): void =

  fcQTextBoundaryFinder_setPosition(self.h, position)

proc toNextBoundary*(self: QTextBoundaryFinder, ): int64 =

  fcQTextBoundaryFinder_toNextBoundary(self.h)

proc toPreviousBoundary*(self: QTextBoundaryFinder, ): int64 =

  fcQTextBoundaryFinder_toPreviousBoundary(self.h)

proc isAtBoundary*(self: QTextBoundaryFinder, ): bool =

  fcQTextBoundaryFinder_isAtBoundary(self.h)

proc boundaryReasons*(self: QTextBoundaryFinder, ): QTextBoundaryFinderBoundaryReason =

  QTextBoundaryFinderBoundaryReason(fcQTextBoundaryFinder_boundaryReasons(self.h))

proc delete*(self: QTextBoundaryFinder) =
  fcQTextBoundaryFinder_delete(self.h)
