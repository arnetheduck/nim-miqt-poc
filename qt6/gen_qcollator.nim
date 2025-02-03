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
{.compile("gen_qcollator.cpp", cflags).}


import gen_qcollator_types
export gen_qcollator_types

import
  gen_qchar,
  gen_qlocale,
  gen_qnamespace
export
  gen_qchar,
  gen_qlocale,
  gen_qnamespace

type cQCollatorSortKey*{.exportc: "QCollatorSortKey", incompleteStruct.} = object
type cQCollator*{.exportc: "QCollator", incompleteStruct.} = object

proc fcQCollatorSortKey_new(other: pointer): ptr cQCollatorSortKey {.importc: "QCollatorSortKey_new".}
proc fcQCollatorSortKey_operatorAssign(self: pointer, other: pointer): void {.importc: "QCollatorSortKey_operatorAssign".}
proc fcQCollatorSortKey_swap(self: pointer, other: pointer): void {.importc: "QCollatorSortKey_swap".}
proc fcQCollatorSortKey_compare(self: pointer, key: pointer): cint {.importc: "QCollatorSortKey_compare".}
proc fcQCollatorSortKey_delete(self: pointer) {.importc: "QCollatorSortKey_delete".}
proc fcQCollator_new(): ptr cQCollator {.importc: "QCollator_new".}
proc fcQCollator_new2(locale: pointer): ptr cQCollator {.importc: "QCollator_new2".}
proc fcQCollator_new3(param1: pointer): ptr cQCollator {.importc: "QCollator_new3".}
proc fcQCollator_operatorAssign(self: pointer, param1: pointer): void {.importc: "QCollator_operatorAssign".}
proc fcQCollator_swap(self: pointer, other: pointer): void {.importc: "QCollator_swap".}
proc fcQCollator_setLocale(self: pointer, locale: pointer): void {.importc: "QCollator_setLocale".}
proc fcQCollator_locale(self: pointer, ): pointer {.importc: "QCollator_locale".}
proc fcQCollator_caseSensitivity(self: pointer, ): cint {.importc: "QCollator_caseSensitivity".}
proc fcQCollator_setCaseSensitivity(self: pointer, cs: cint): void {.importc: "QCollator_setCaseSensitivity".}
proc fcQCollator_setNumericMode(self: pointer, on: bool): void {.importc: "QCollator_setNumericMode".}
proc fcQCollator_numericMode(self: pointer, ): bool {.importc: "QCollator_numericMode".}
proc fcQCollator_setIgnorePunctuation(self: pointer, on: bool): void {.importc: "QCollator_setIgnorePunctuation".}
proc fcQCollator_ignorePunctuation(self: pointer, ): bool {.importc: "QCollator_ignorePunctuation".}
proc fcQCollator_compare(self: pointer, s1: struct_miqt_string, s2: struct_miqt_string): cint {.importc: "QCollator_compare".}
proc fcQCollator_compare2(self: pointer, s1: pointer, len1: int64, s2: pointer, len2: int64): cint {.importc: "QCollator_compare2".}
proc fcQCollator_operatorCall(self: pointer, s1: struct_miqt_string, s2: struct_miqt_string): bool {.importc: "QCollator_operatorCall".}
proc fcQCollator_sortKey(self: pointer, string: struct_miqt_string): pointer {.importc: "QCollator_sortKey".}
proc fcQCollator_delete(self: pointer) {.importc: "QCollator_delete".}


func init*(T: type QCollatorSortKey, h: ptr cQCollatorSortKey): QCollatorSortKey =
  T(h: h)
proc create*(T: type QCollatorSortKey, other: QCollatorSortKey): QCollatorSortKey =

  QCollatorSortKey.init(fcQCollatorSortKey_new(other.h))
proc operatorAssign*(self: QCollatorSortKey, other: QCollatorSortKey): void =

  fcQCollatorSortKey_operatorAssign(self.h, other.h)

proc swap*(self: QCollatorSortKey, other: QCollatorSortKey): void =

  fcQCollatorSortKey_swap(self.h, other.h)

proc compare*(self: QCollatorSortKey, key: QCollatorSortKey): cint =

  fcQCollatorSortKey_compare(self.h, key.h)

proc delete*(self: QCollatorSortKey) =
  fcQCollatorSortKey_delete(self.h)

func init*(T: type QCollator, h: ptr cQCollator): QCollator =
  T(h: h)
proc create*(T: type QCollator, ): QCollator =

  QCollator.init(fcQCollator_new())
proc create*(T: type QCollator, locale: gen_qlocale.QLocale): QCollator =

  QCollator.init(fcQCollator_new2(locale.h))
proc create2*(T: type QCollator, param1: QCollator): QCollator =

  QCollator.init(fcQCollator_new3(param1.h))
proc operatorAssign*(self: QCollator, param1: QCollator): void =

  fcQCollator_operatorAssign(self.h, param1.h)

proc swap*(self: QCollator, other: QCollator): void =

  fcQCollator_swap(self.h, other.h)

proc setLocale*(self: QCollator, locale: gen_qlocale.QLocale): void =

  fcQCollator_setLocale(self.h, locale.h)

proc locale*(self: QCollator, ): gen_qlocale.QLocale =

  gen_qlocale.QLocale(h: fcQCollator_locale(self.h))

proc caseSensitivity*(self: QCollator, ): gen_qnamespace.CaseSensitivity =

  gen_qnamespace.CaseSensitivity(fcQCollator_caseSensitivity(self.h))

proc setCaseSensitivity*(self: QCollator, cs: gen_qnamespace.CaseSensitivity): void =

  fcQCollator_setCaseSensitivity(self.h, cint(cs))

proc setNumericMode*(self: QCollator, on: bool): void =

  fcQCollator_setNumericMode(self.h, on)

proc numericMode*(self: QCollator, ): bool =

  fcQCollator_numericMode(self.h)

proc setIgnorePunctuation*(self: QCollator, on: bool): void =

  fcQCollator_setIgnorePunctuation(self.h, on)

proc ignorePunctuation*(self: QCollator, ): bool =

  fcQCollator_ignorePunctuation(self.h)

proc compare*(self: QCollator, s1: string, s2: string): cint =

  fcQCollator_compare(self.h, struct_miqt_string(data: s1, len: csize_t(len(s1))), struct_miqt_string(data: s2, len: csize_t(len(s2))))

proc compare2*(self: QCollator, s1: gen_qchar.QChar, len1: int64, s2: gen_qchar.QChar, len2: int64): cint =

  fcQCollator_compare2(self.h, s1.h, len1, s2.h, len2)

proc operatorCall*(self: QCollator, s1: string, s2: string): bool =

  fcQCollator_operatorCall(self.h, struct_miqt_string(data: s1, len: csize_t(len(s1))), struct_miqt_string(data: s2, len: csize_t(len(s2))))

proc sortKey*(self: QCollator, string: string): QCollatorSortKey =

  QCollatorSortKey(h: fcQCollator_sortKey(self.h, struct_miqt_string(data: string, len: csize_t(len(string)))))

proc delete*(self: QCollator) =
  fcQCollator_delete(self.h)
