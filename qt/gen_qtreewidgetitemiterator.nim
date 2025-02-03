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
{.compile("gen_qtreewidgetitemiterator.cpp", cflags).}


type QTreeWidgetItemIteratorIteratorFlag* = cint
const
  QTreeWidgetItemIteratorAll* = 0
  QTreeWidgetItemIteratorHidden* = 1
  QTreeWidgetItemIteratorNotHidden* = 2
  QTreeWidgetItemIteratorSelected* = 4
  QTreeWidgetItemIteratorUnselected* = 8
  QTreeWidgetItemIteratorSelectable* = 16
  QTreeWidgetItemIteratorNotSelectable* = 32
  QTreeWidgetItemIteratorDragEnabled* = 64
  QTreeWidgetItemIteratorDragDisabled* = 128
  QTreeWidgetItemIteratorDropEnabled* = 256
  QTreeWidgetItemIteratorDropDisabled* = 512
  QTreeWidgetItemIteratorHasChildren* = 1024
  QTreeWidgetItemIteratorNoChildren* = 2048
  QTreeWidgetItemIteratorChecked* = 4096
  QTreeWidgetItemIteratorNotChecked* = 8192
  QTreeWidgetItemIteratorEnabled* = 16384
  QTreeWidgetItemIteratorDisabled* = 32768
  QTreeWidgetItemIteratorEditable* = 65536
  QTreeWidgetItemIteratorNotEditable* = 131072
  QTreeWidgetItemIteratorUserFlag* = 16777216



import gen_qtreewidgetitemiterator_types
export gen_qtreewidgetitemiterator_types

import
  gen_qtreewidget
export
  gen_qtreewidget

type cQTreeWidgetItemIterator*{.exportc: "QTreeWidgetItemIterator", incompleteStruct.} = object

proc fcQTreeWidgetItemIterator_new(it: pointer): ptr cQTreeWidgetItemIterator {.importc: "QTreeWidgetItemIterator_new".}
proc fcQTreeWidgetItemIterator_new2(widget: pointer): ptr cQTreeWidgetItemIterator {.importc: "QTreeWidgetItemIterator_new2".}
proc fcQTreeWidgetItemIterator_new3(item: pointer): ptr cQTreeWidgetItemIterator {.importc: "QTreeWidgetItemIterator_new3".}
proc fcQTreeWidgetItemIterator_new4(widget: pointer, flags: cint): ptr cQTreeWidgetItemIterator {.importc: "QTreeWidgetItemIterator_new4".}
proc fcQTreeWidgetItemIterator_new5(item: pointer, flags: cint): ptr cQTreeWidgetItemIterator {.importc: "QTreeWidgetItemIterator_new5".}
proc fcQTreeWidgetItemIterator_operatorAssign(self: pointer, it: pointer): void {.importc: "QTreeWidgetItemIterator_operatorAssign".}
proc fcQTreeWidgetItemIterator_operatorPlusPlus(self: pointer, ): pointer {.importc: "QTreeWidgetItemIterator_operatorPlusPlus".}
proc fcQTreeWidgetItemIterator_operatorPlusPlusWithInt(self: pointer, param1: cint): pointer {.importc: "QTreeWidgetItemIterator_operatorPlusPlusWithInt".}
proc fcQTreeWidgetItemIterator_operatorPlusAssign(self: pointer, n: cint): pointer {.importc: "QTreeWidgetItemIterator_operatorPlusAssign".}
proc fcQTreeWidgetItemIterator_operatorMinusMinus(self: pointer, ): pointer {.importc: "QTreeWidgetItemIterator_operatorMinusMinus".}
proc fcQTreeWidgetItemIterator_operatorMinusMinusWithInt(self: pointer, param1: cint): pointer {.importc: "QTreeWidgetItemIterator_operatorMinusMinusWithInt".}
proc fcQTreeWidgetItemIterator_operatorMinusAssign(self: pointer, n: cint): pointer {.importc: "QTreeWidgetItemIterator_operatorMinusAssign".}
proc fcQTreeWidgetItemIterator_operatorMultiply(self: pointer, ): pointer {.importc: "QTreeWidgetItemIterator_operatorMultiply".}
proc fcQTreeWidgetItemIterator_delete(self: pointer) {.importc: "QTreeWidgetItemIterator_delete".}


func init*(T: type QTreeWidgetItemIterator, h: ptr cQTreeWidgetItemIterator): QTreeWidgetItemIterator =
  T(h: h)
proc create*(T: type QTreeWidgetItemIterator, it: QTreeWidgetItemIterator): QTreeWidgetItemIterator =

  QTreeWidgetItemIterator.init(fcQTreeWidgetItemIterator_new(it.h))
proc create2*(T: type QTreeWidgetItemIterator, widget: gen_qtreewidget.QTreeWidget): QTreeWidgetItemIterator =

  QTreeWidgetItemIterator.init(fcQTreeWidgetItemIterator_new2(widget.h))
proc create2*(T: type QTreeWidgetItemIterator, item: gen_qtreewidget.QTreeWidgetItem): QTreeWidgetItemIterator =

  QTreeWidgetItemIterator.init(fcQTreeWidgetItemIterator_new3(item.h))
proc create*(T: type QTreeWidgetItemIterator, widget: gen_qtreewidget.QTreeWidget, flags: QTreeWidgetItemIteratorIteratorFlag): QTreeWidgetItemIterator =

  QTreeWidgetItemIterator.init(fcQTreeWidgetItemIterator_new4(widget.h, cint(flags)))
proc create2*(T: type QTreeWidgetItemIterator, item: gen_qtreewidget.QTreeWidgetItem, flags: QTreeWidgetItemIteratorIteratorFlag): QTreeWidgetItemIterator =

  QTreeWidgetItemIterator.init(fcQTreeWidgetItemIterator_new5(item.h, cint(flags)))
proc operatorAssign*(self: QTreeWidgetItemIterator, it: QTreeWidgetItemIterator): void =

  fcQTreeWidgetItemIterator_operatorAssign(self.h, it.h)

proc operatorPlusPlus*(self: QTreeWidgetItemIterator, ): QTreeWidgetItemIterator =

  QTreeWidgetItemIterator(h: fcQTreeWidgetItemIterator_operatorPlusPlus(self.h))

proc operatorPlusPlusWithInt*(self: QTreeWidgetItemIterator, param1: cint): QTreeWidgetItemIterator =

  QTreeWidgetItemIterator(h: fcQTreeWidgetItemIterator_operatorPlusPlusWithInt(self.h, param1))

proc operatorPlusAssign*(self: QTreeWidgetItemIterator, n: cint): QTreeWidgetItemIterator =

  QTreeWidgetItemIterator(h: fcQTreeWidgetItemIterator_operatorPlusAssign(self.h, n))

proc operatorMinusMinus*(self: QTreeWidgetItemIterator, ): QTreeWidgetItemIterator =

  QTreeWidgetItemIterator(h: fcQTreeWidgetItemIterator_operatorMinusMinus(self.h))

proc operatorMinusMinusWithInt*(self: QTreeWidgetItemIterator, param1: cint): QTreeWidgetItemIterator =

  QTreeWidgetItemIterator(h: fcQTreeWidgetItemIterator_operatorMinusMinusWithInt(self.h, param1))

proc operatorMinusAssign*(self: QTreeWidgetItemIterator, n: cint): QTreeWidgetItemIterator =

  QTreeWidgetItemIterator(h: fcQTreeWidgetItemIterator_operatorMinusAssign(self.h, n))

proc operatorMultiply*(self: QTreeWidgetItemIterator, ): gen_qtreewidget.QTreeWidgetItem =

  gen_qtreewidget.QTreeWidgetItem(h: fcQTreeWidgetItemIterator_operatorMultiply(self.h))

proc delete*(self: QTreeWidgetItemIterator) =
  fcQTreeWidgetItemIterator_delete(self.h)
