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
{.compile("gen_qsizepolicy.cpp", cflags).}


type QSizePolicyPolicyFlag* = cint
const
  QSizePolicyGrowFlag* = 1
  QSizePolicyExpandFlag* = 2
  QSizePolicyShrinkFlag* = 4
  QSizePolicyIgnoreFlag* = 8



type QSizePolicyPolicy* = cint
const
  QSizePolicyFixed* = 0
  QSizePolicyMinimum* = 1
  QSizePolicyMaximum* = 4
  QSizePolicyPreferred* = 5
  QSizePolicyMinimumExpanding* = 3
  QSizePolicyExpanding* = 7
  QSizePolicyIgnored* = 13



type QSizePolicyControlType* = cint
const
  QSizePolicyDefaultType* = 1
  QSizePolicyButtonBox* = 2
  QSizePolicyCheckBox* = 4
  QSizePolicyComboBox* = 8
  QSizePolicyFrame* = 16
  QSizePolicyGroupBox* = 32
  QSizePolicyLabel* = 64
  QSizePolicyLine* = 128
  QSizePolicyLineEdit* = 256
  QSizePolicyPushButton* = 512
  QSizePolicyRadioButton* = 1024
  QSizePolicySlider* = 2048
  QSizePolicySpinBox* = 4096
  QSizePolicyTabWidget* = 8192
  QSizePolicyToolButton* = 16384



import gen_qsizepolicy_types
export gen_qsizepolicy_types

import
  gen_qnamespace,
  gen_qvariant
export
  gen_qnamespace,
  gen_qvariant

type cQSizePolicy*{.exportc: "QSizePolicy", incompleteStruct.} = object

proc fcQSizePolicy_new(): ptr cQSizePolicy {.importc: "QSizePolicy_new".}
proc fcQSizePolicy_new2(horizontal: cint, vertical: cint): ptr cQSizePolicy {.importc: "QSizePolicy_new2".}
proc fcQSizePolicy_new3(param1: pointer): ptr cQSizePolicy {.importc: "QSizePolicy_new3".}
proc fcQSizePolicy_new4(horizontal: cint, vertical: cint, typeVal: cint): ptr cQSizePolicy {.importc: "QSizePolicy_new4".}
proc fcQSizePolicy_horizontalPolicy(self: pointer, ): cint {.importc: "QSizePolicy_horizontalPolicy".}
proc fcQSizePolicy_verticalPolicy(self: pointer, ): cint {.importc: "QSizePolicy_verticalPolicy".}
proc fcQSizePolicy_controlType(self: pointer, ): cint {.importc: "QSizePolicy_controlType".}
proc fcQSizePolicy_setHorizontalPolicy(self: pointer, d: cint): void {.importc: "QSizePolicy_setHorizontalPolicy".}
proc fcQSizePolicy_setVerticalPolicy(self: pointer, d: cint): void {.importc: "QSizePolicy_setVerticalPolicy".}
proc fcQSizePolicy_setControlType(self: pointer, typeVal: cint): void {.importc: "QSizePolicy_setControlType".}
proc fcQSizePolicy_expandingDirections(self: pointer, ): cint {.importc: "QSizePolicy_expandingDirections".}
proc fcQSizePolicy_setHeightForWidth(self: pointer, b: bool): void {.importc: "QSizePolicy_setHeightForWidth".}
proc fcQSizePolicy_hasHeightForWidth(self: pointer, ): bool {.importc: "QSizePolicy_hasHeightForWidth".}
proc fcQSizePolicy_setWidthForHeight(self: pointer, b: bool): void {.importc: "QSizePolicy_setWidthForHeight".}
proc fcQSizePolicy_hasWidthForHeight(self: pointer, ): bool {.importc: "QSizePolicy_hasWidthForHeight".}
proc fcQSizePolicy_operatorEqual(self: pointer, s: pointer): bool {.importc: "QSizePolicy_operatorEqual".}
proc fcQSizePolicy_operatorNotEqual(self: pointer, s: pointer): bool {.importc: "QSizePolicy_operatorNotEqual".}
proc fcQSizePolicy_ToQVariant(self: pointer, ): pointer {.importc: "QSizePolicy_ToQVariant".}
proc fcQSizePolicy_horizontalStretch(self: pointer, ): cint {.importc: "QSizePolicy_horizontalStretch".}
proc fcQSizePolicy_verticalStretch(self: pointer, ): cint {.importc: "QSizePolicy_verticalStretch".}
proc fcQSizePolicy_setHorizontalStretch(self: pointer, stretchFactor: cint): void {.importc: "QSizePolicy_setHorizontalStretch".}
proc fcQSizePolicy_setVerticalStretch(self: pointer, stretchFactor: cint): void {.importc: "QSizePolicy_setVerticalStretch".}
proc fcQSizePolicy_retainSizeWhenHidden(self: pointer, ): bool {.importc: "QSizePolicy_retainSizeWhenHidden".}
proc fcQSizePolicy_setRetainSizeWhenHidden(self: pointer, retainSize: bool): void {.importc: "QSizePolicy_setRetainSizeWhenHidden".}
proc fcQSizePolicy_transpose(self: pointer, ): void {.importc: "QSizePolicy_transpose".}
proc fcQSizePolicy_transposed(self: pointer, ): pointer {.importc: "QSizePolicy_transposed".}
proc fcQSizePolicy_delete(self: pointer) {.importc: "QSizePolicy_delete".}


func init*(T: type QSizePolicy, h: ptr cQSizePolicy): QSizePolicy =
  T(h: h)
proc create*(T: type QSizePolicy, ): QSizePolicy =

  QSizePolicy.init(fcQSizePolicy_new())
proc create*(T: type QSizePolicy, horizontal: QSizePolicyPolicy, vertical: QSizePolicyPolicy): QSizePolicy =

  QSizePolicy.init(fcQSizePolicy_new2(cint(horizontal), cint(vertical)))
proc create*(T: type QSizePolicy, param1: QSizePolicy): QSizePolicy =

  QSizePolicy.init(fcQSizePolicy_new3(param1.h))
proc create*(T: type QSizePolicy, horizontal: QSizePolicyPolicy, vertical: QSizePolicyPolicy, typeVal: QSizePolicyControlType): QSizePolicy =

  QSizePolicy.init(fcQSizePolicy_new4(cint(horizontal), cint(vertical), cint(typeVal)))
proc horizontalPolicy*(self: QSizePolicy, ): QSizePolicyPolicy =

  QSizePolicyPolicy(fcQSizePolicy_horizontalPolicy(self.h))

proc verticalPolicy*(self: QSizePolicy, ): QSizePolicyPolicy =

  QSizePolicyPolicy(fcQSizePolicy_verticalPolicy(self.h))

proc controlType*(self: QSizePolicy, ): QSizePolicyControlType =

  QSizePolicyControlType(fcQSizePolicy_controlType(self.h))

proc setHorizontalPolicy*(self: QSizePolicy, d: QSizePolicyPolicy): void =

  fcQSizePolicy_setHorizontalPolicy(self.h, cint(d))

proc setVerticalPolicy*(self: QSizePolicy, d: QSizePolicyPolicy): void =

  fcQSizePolicy_setVerticalPolicy(self.h, cint(d))

proc setControlType*(self: QSizePolicy, typeVal: QSizePolicyControlType): void =

  fcQSizePolicy_setControlType(self.h, cint(typeVal))

proc expandingDirections*(self: QSizePolicy, ): gen_qnamespace.Orientation =

  gen_qnamespace.Orientation(fcQSizePolicy_expandingDirections(self.h))

proc setHeightForWidth*(self: QSizePolicy, b: bool): void =

  fcQSizePolicy_setHeightForWidth(self.h, b)

proc hasHeightForWidth*(self: QSizePolicy, ): bool =

  fcQSizePolicy_hasHeightForWidth(self.h)

proc setWidthForHeight*(self: QSizePolicy, b: bool): void =

  fcQSizePolicy_setWidthForHeight(self.h, b)

proc hasWidthForHeight*(self: QSizePolicy, ): bool =

  fcQSizePolicy_hasWidthForHeight(self.h)

proc operatorEqual*(self: QSizePolicy, s: QSizePolicy): bool =

  fcQSizePolicy_operatorEqual(self.h, s.h)

proc operatorNotEqual*(self: QSizePolicy, s: QSizePolicy): bool =

  fcQSizePolicy_operatorNotEqual(self.h, s.h)

proc ToQVariant*(self: QSizePolicy, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQSizePolicy_ToQVariant(self.h))

proc horizontalStretch*(self: QSizePolicy, ): cint =

  fcQSizePolicy_horizontalStretch(self.h)

proc verticalStretch*(self: QSizePolicy, ): cint =

  fcQSizePolicy_verticalStretch(self.h)

proc setHorizontalStretch*(self: QSizePolicy, stretchFactor: cint): void =

  fcQSizePolicy_setHorizontalStretch(self.h, stretchFactor)

proc setVerticalStretch*(self: QSizePolicy, stretchFactor: cint): void =

  fcQSizePolicy_setVerticalStretch(self.h, stretchFactor)

proc retainSizeWhenHidden*(self: QSizePolicy, ): bool =

  fcQSizePolicy_retainSizeWhenHidden(self.h)

proc setRetainSizeWhenHidden*(self: QSizePolicy, retainSize: bool): void =

  fcQSizePolicy_setRetainSizeWhenHidden(self.h, retainSize)

proc transpose*(self: QSizePolicy, ): void =

  fcQSizePolicy_transpose(self.h)

proc transposed*(self: QSizePolicy, ): QSizePolicy =

  QSizePolicy(h: fcQSizePolicy_transposed(self.h))

proc delete*(self: QSizePolicy) =
  fcQSizePolicy_delete(self.h)
