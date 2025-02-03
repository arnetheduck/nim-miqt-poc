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
{.compile("gen_qtextoption.cpp", cflags).}


type QTextOptionTabType* = cint
const
  QTextOptionLeftTab* = 0
  QTextOptionRightTab* = 1
  QTextOptionCenterTab* = 2
  QTextOptionDelimiterTab* = 3



type QTextOptionWrapMode* = cint
const
  QTextOptionNoWrap* = 0
  QTextOptionWordWrap* = 1
  QTextOptionManualWrap* = 2
  QTextOptionWrapAnywhere* = 3
  QTextOptionWrapAtWordBoundaryOrAnywhere* = 4



type QTextOptionFlag* = cint
const
  QTextOptionShowTabsAndSpaces* = 1
  QTextOptionShowLineAndParagraphSeparators* = 2
  QTextOptionAddSpaceForLineAndParagraphSeparators* = 4
  QTextOptionSuppressColors* = 8
  QTextOptionShowDocumentTerminator* = 16
  QTextOptionIncludeTrailingSpaces* = 2147483648



import gen_qtextoption_types
export gen_qtextoption_types

import
  gen_qchar,
  gen_qnamespace
export
  gen_qchar,
  gen_qnamespace

type cQTextOption*{.exportc: "QTextOption", incompleteStruct.} = object
type cQTextOptionTab*{.exportc: "QTextOption__Tab", incompleteStruct.} = object

proc fcQTextOption_new(): ptr cQTextOption {.importc: "QTextOption_new".}
proc fcQTextOption_new2(alignment: cint): ptr cQTextOption {.importc: "QTextOption_new2".}
proc fcQTextOption_new3(o: pointer): ptr cQTextOption {.importc: "QTextOption_new3".}
proc fcQTextOption_operatorAssign(self: pointer, o: pointer): void {.importc: "QTextOption_operatorAssign".}
proc fcQTextOption_setAlignment(self: pointer, alignment: cint): void {.importc: "QTextOption_setAlignment".}
proc fcQTextOption_alignment(self: pointer, ): cint {.importc: "QTextOption_alignment".}
proc fcQTextOption_setTextDirection(self: pointer, aDirection: cint): void {.importc: "QTextOption_setTextDirection".}
proc fcQTextOption_textDirection(self: pointer, ): cint {.importc: "QTextOption_textDirection".}
proc fcQTextOption_setWrapMode(self: pointer, wrap: cint): void {.importc: "QTextOption_setWrapMode".}
proc fcQTextOption_wrapMode(self: pointer, ): cint {.importc: "QTextOption_wrapMode".}
proc fcQTextOption_setFlags(self: pointer, flags: cint): void {.importc: "QTextOption_setFlags".}
proc fcQTextOption_flags(self: pointer, ): cint {.importc: "QTextOption_flags".}
proc fcQTextOption_setTabStopDistance(self: pointer, tabStopDistance: float64): void {.importc: "QTextOption_setTabStopDistance".}
proc fcQTextOption_tabStopDistance(self: pointer, ): float64 {.importc: "QTextOption_tabStopDistance".}
proc fcQTextOption_setTabArray(self: pointer, tabStops: struct_miqt_array): void {.importc: "QTextOption_setTabArray".}
proc fcQTextOption_tabArray(self: pointer, ): struct_miqt_array {.importc: "QTextOption_tabArray".}
proc fcQTextOption_setTabs(self: pointer, tabStops: struct_miqt_array): void {.importc: "QTextOption_setTabs".}
proc fcQTextOption_tabs(self: pointer, ): struct_miqt_array {.importc: "QTextOption_tabs".}
proc fcQTextOption_setUseDesignMetrics(self: pointer, b: bool): void {.importc: "QTextOption_setUseDesignMetrics".}
proc fcQTextOption_useDesignMetrics(self: pointer, ): bool {.importc: "QTextOption_useDesignMetrics".}
proc fcQTextOption_delete(self: pointer) {.importc: "QTextOption_delete".}
proc fcQTextOptionTab_new(): ptr cQTextOptionTab {.importc: "QTextOption__Tab_new".}
proc fcQTextOptionTab_new2(pos: float64, tabType: cint): ptr cQTextOptionTab {.importc: "QTextOption__Tab_new2".}
proc fcQTextOptionTab_new3(pos: float64, tabType: cint, delim: pointer): ptr cQTextOptionTab {.importc: "QTextOption__Tab_new3".}
proc fcQTextOptionTab_operatorEqual(self: pointer, other: pointer): bool {.importc: "QTextOption__Tab_operatorEqual".}
proc fcQTextOptionTab_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QTextOption__Tab_operatorNotEqual".}
proc fcQTextOptionTab_delete(self: pointer) {.importc: "QTextOption__Tab_delete".}


func init*(T: type QTextOption, h: ptr cQTextOption): QTextOption =
  T(h: h)
proc create*(T: type QTextOption, ): QTextOption =

  QTextOption.init(fcQTextOption_new())
proc create*(T: type QTextOption, alignment: gen_qnamespace.AlignmentFlag): QTextOption =

  QTextOption.init(fcQTextOption_new2(cint(alignment)))
proc create*(T: type QTextOption, o: QTextOption): QTextOption =

  QTextOption.init(fcQTextOption_new3(o.h))
proc operatorAssign*(self: QTextOption, o: QTextOption): void =

  fcQTextOption_operatorAssign(self.h, o.h)

proc setAlignment*(self: QTextOption, alignment: gen_qnamespace.AlignmentFlag): void =

  fcQTextOption_setAlignment(self.h, cint(alignment))

proc alignment*(self: QTextOption, ): gen_qnamespace.AlignmentFlag =

  gen_qnamespace.AlignmentFlag(fcQTextOption_alignment(self.h))

proc setTextDirection*(self: QTextOption, aDirection: gen_qnamespace.LayoutDirection): void =

  fcQTextOption_setTextDirection(self.h, cint(aDirection))

proc textDirection*(self: QTextOption, ): gen_qnamespace.LayoutDirection =

  gen_qnamespace.LayoutDirection(fcQTextOption_textDirection(self.h))

proc setWrapMode*(self: QTextOption, wrap: QTextOptionWrapMode): void =

  fcQTextOption_setWrapMode(self.h, cint(wrap))

proc wrapMode*(self: QTextOption, ): QTextOptionWrapMode =

  QTextOptionWrapMode(fcQTextOption_wrapMode(self.h))

proc setFlags*(self: QTextOption, flags: QTextOptionFlag): void =

  fcQTextOption_setFlags(self.h, cint(flags))

proc flags*(self: QTextOption, ): QTextOptionFlag =

  QTextOptionFlag(fcQTextOption_flags(self.h))

proc setTabStopDistance*(self: QTextOption, tabStopDistance: float64): void =

  fcQTextOption_setTabStopDistance(self.h, tabStopDistance)

proc tabStopDistance*(self: QTextOption, ): float64 =

  fcQTextOption_tabStopDistance(self.h)

proc setTabArray*(self: QTextOption, tabStops: seq[float64]): void =

  var tabStops_CArray = newSeq[float64](len(tabStops))
  for i in 0..<len(tabStops):
    tabStops_CArray[i] = tabStops[i]

  fcQTextOption_setTabArray(self.h, struct_miqt_array(len: csize_t(len(tabStops)), data: if len(tabStops) == 0: nil else: addr(tabStops_CArray[0])))

proc tabArray*(self: QTextOption, ): seq[float64] =

  var v_ma = fcQTextOption_tabArray(self.h)
  var vx_ret = newSeq[float64](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[float64]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc setTabs*(self: QTextOption, tabStops: seq[QTextOptionTab]): void =

  var tabStops_CArray = newSeq[pointer](len(tabStops))
  for i in 0..<len(tabStops):
    tabStops_CArray[i] = tabStops[i].h

  fcQTextOption_setTabs(self.h, struct_miqt_array(len: csize_t(len(tabStops)), data: if len(tabStops) == 0: nil else: addr(tabStops_CArray[0])))

proc tabs*(self: QTextOption, ): seq[QTextOptionTab] =

  var v_ma = fcQTextOption_tabs(self.h)
  var vx_ret = newSeq[QTextOptionTab](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QTextOptionTab(h: v_outCast[i])
  vx_ret

proc setUseDesignMetrics*(self: QTextOption, b: bool): void =

  fcQTextOption_setUseDesignMetrics(self.h, b)

proc useDesignMetrics*(self: QTextOption, ): bool =

  fcQTextOption_useDesignMetrics(self.h)

proc delete*(self: QTextOption) =
  fcQTextOption_delete(self.h)

func init*(T: type QTextOptionTab, h: ptr cQTextOptionTab): QTextOptionTab =
  T(h: h)
proc create*(T: type QTextOptionTab, ): QTextOptionTab =

  QTextOptionTab.init(fcQTextOptionTab_new())
proc create*(T: type QTextOptionTab, pos: float64, tabType: QTextOptionTabType): QTextOptionTab =

  QTextOptionTab.init(fcQTextOptionTab_new2(pos, cint(tabType)))
proc create*(T: type QTextOptionTab, pos: float64, tabType: QTextOptionTabType, delim: gen_qchar.QChar): QTextOptionTab =

  QTextOptionTab.init(fcQTextOptionTab_new3(pos, cint(tabType), delim.h))
proc operatorEqual*(self: QTextOptionTab, other: QTextOptionTab): bool =

  fcQTextOptionTab_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QTextOptionTab, other: QTextOptionTab): bool =

  fcQTextOptionTab_operatorNotEqual(self.h, other.h)

proc delete*(self: QTextOptionTab) =
  fcQTextOptionTab_delete(self.h)
