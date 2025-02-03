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
{.compile("gen_qdrawutil.cpp", cflags).}


type QDrawBorderPixmapDrawingHint* = cint
const
  QDrawBorderPixmapOpaqueTopLeft* = 1
  QDrawBorderPixmapOpaqueTop* = 2
  QDrawBorderPixmapOpaqueTopRight* = 4
  QDrawBorderPixmapOpaqueLeft* = 8
  QDrawBorderPixmapOpaqueCenter* = 16
  QDrawBorderPixmapOpaqueRight* = 32
  QDrawBorderPixmapOpaqueBottomLeft* = 64
  QDrawBorderPixmapOpaqueBottom* = 128
  QDrawBorderPixmapOpaqueBottomRight* = 256
  QDrawBorderPixmapOpaqueCorners* = 325
  QDrawBorderPixmapOpaqueEdges* = 170
  QDrawBorderPixmapOpaqueFrame* = 495
  QDrawBorderPixmapOpaqueAll* = 511



import gen_qdrawutil_types
export gen_qdrawutil_types

import
  gen_qnamespace
export
  gen_qnamespace

type cQTileRules*{.exportc: "QTileRules", incompleteStruct.} = object

proc fcQTileRules_new(horizontalRule: cint, verticalRule: cint): ptr cQTileRules {.importc: "QTileRules_new".}
proc fcQTileRules_new2(): ptr cQTileRules {.importc: "QTileRules_new2".}
proc fcQTileRules_new3(param1: pointer): ptr cQTileRules {.importc: "QTileRules_new3".}
proc fcQTileRules_new4(rule: cint): ptr cQTileRules {.importc: "QTileRules_new4".}
proc fcQTileRules_delete(self: pointer) {.importc: "QTileRules_delete".}


func init*(T: type QTileRules, h: ptr cQTileRules): QTileRules =
  T(h: h)
proc create*(T: type QTileRules, horizontalRule: gen_qnamespace.TileRule, verticalRule: gen_qnamespace.TileRule): QTileRules =

  QTileRules.init(fcQTileRules_new(cint(horizontalRule), cint(verticalRule)))
proc create*(T: type QTileRules, ): QTileRules =

  QTileRules.init(fcQTileRules_new2())
proc create*(T: type QTileRules, param1: QTileRules): QTileRules =

  QTileRules.init(fcQTileRules_new3(param1.h))
proc create*(T: type QTileRules, rule: gen_qnamespace.TileRule): QTileRules =

  QTileRules.init(fcQTileRules_new4(cint(rule)))
proc delete*(self: QTileRules) =
  fcQTileRules_delete(self.h)
