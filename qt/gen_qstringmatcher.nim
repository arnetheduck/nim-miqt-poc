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
{.compile("gen_qstringmatcher.cpp", cflags).}


import gen_qstringmatcher_types
export gen_qstringmatcher_types

import
  gen_qchar,
  gen_qnamespace
export
  gen_qchar,
  gen_qnamespace

type cQStringMatcher*{.exportc: "QStringMatcher", incompleteStruct.} = object

proc fcQStringMatcher_new(): ptr cQStringMatcher {.importc: "QStringMatcher_new".}
proc fcQStringMatcher_new2(pattern: struct_miqt_string): ptr cQStringMatcher {.importc: "QStringMatcher_new2".}
proc fcQStringMatcher_new3(uc: pointer, len: cint): ptr cQStringMatcher {.importc: "QStringMatcher_new3".}
proc fcQStringMatcher_new4(other: pointer): ptr cQStringMatcher {.importc: "QStringMatcher_new4".}
proc fcQStringMatcher_new5(pattern: struct_miqt_string, cs: cint): ptr cQStringMatcher {.importc: "QStringMatcher_new5".}
proc fcQStringMatcher_new6(uc: pointer, len: cint, cs: cint): ptr cQStringMatcher {.importc: "QStringMatcher_new6".}
proc fcQStringMatcher_operatorAssign(self: pointer, other: pointer): void {.importc: "QStringMatcher_operatorAssign".}
proc fcQStringMatcher_setPattern(self: pointer, pattern: struct_miqt_string): void {.importc: "QStringMatcher_setPattern".}
proc fcQStringMatcher_setCaseSensitivity(self: pointer, cs: cint): void {.importc: "QStringMatcher_setCaseSensitivity".}
proc fcQStringMatcher_indexIn(self: pointer, str: struct_miqt_string): cint {.importc: "QStringMatcher_indexIn".}
proc fcQStringMatcher_indexIn2(self: pointer, str: pointer, length: cint): cint {.importc: "QStringMatcher_indexIn2".}
proc fcQStringMatcher_pattern(self: pointer, ): struct_miqt_string {.importc: "QStringMatcher_pattern".}
proc fcQStringMatcher_caseSensitivity(self: pointer, ): cint {.importc: "QStringMatcher_caseSensitivity".}
proc fcQStringMatcher_indexIn22(self: pointer, str: struct_miqt_string, fromVal: cint): cint {.importc: "QStringMatcher_indexIn22".}
proc fcQStringMatcher_indexIn3(self: pointer, str: pointer, length: cint, fromVal: cint): cint {.importc: "QStringMatcher_indexIn3".}
proc fcQStringMatcher_delete(self: pointer) {.importc: "QStringMatcher_delete".}


func init*(T: type QStringMatcher, h: ptr cQStringMatcher): QStringMatcher =
  T(h: h)
proc create*(T: type QStringMatcher, ): QStringMatcher =

  QStringMatcher.init(fcQStringMatcher_new())
proc create*(T: type QStringMatcher, pattern: string): QStringMatcher =

  QStringMatcher.init(fcQStringMatcher_new2(struct_miqt_string(data: pattern, len: csize_t(len(pattern)))))
proc create*(T: type QStringMatcher, uc: gen_qchar.QChar, len: cint): QStringMatcher =

  QStringMatcher.init(fcQStringMatcher_new3(uc.h, len))
proc create*(T: type QStringMatcher, other: QStringMatcher): QStringMatcher =

  QStringMatcher.init(fcQStringMatcher_new4(other.h))
proc create*(T: type QStringMatcher, pattern: string, cs: gen_qnamespace.CaseSensitivity): QStringMatcher =

  QStringMatcher.init(fcQStringMatcher_new5(struct_miqt_string(data: pattern, len: csize_t(len(pattern))), cint(cs)))
proc create*(T: type QStringMatcher, uc: gen_qchar.QChar, len: cint, cs: gen_qnamespace.CaseSensitivity): QStringMatcher =

  QStringMatcher.init(fcQStringMatcher_new6(uc.h, len, cint(cs)))
proc operatorAssign*(self: QStringMatcher, other: QStringMatcher): void =

  fcQStringMatcher_operatorAssign(self.h, other.h)

proc setPattern*(self: QStringMatcher, pattern: string): void =

  fcQStringMatcher_setPattern(self.h, struct_miqt_string(data: pattern, len: csize_t(len(pattern))))

proc setCaseSensitivity*(self: QStringMatcher, cs: gen_qnamespace.CaseSensitivity): void =

  fcQStringMatcher_setCaseSensitivity(self.h, cint(cs))

proc indexIn*(self: QStringMatcher, str: string): cint =

  fcQStringMatcher_indexIn(self.h, struct_miqt_string(data: str, len: csize_t(len(str))))

proc indexIn2*(self: QStringMatcher, str: gen_qchar.QChar, length: cint): cint =

  fcQStringMatcher_indexIn2(self.h, str.h, length)

proc pattern*(self: QStringMatcher, ): string =

  let v_ms = fcQStringMatcher_pattern(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc caseSensitivity*(self: QStringMatcher, ): gen_qnamespace.CaseSensitivity =

  gen_qnamespace.CaseSensitivity(fcQStringMatcher_caseSensitivity(self.h))

proc indexIn22*(self: QStringMatcher, str: string, fromVal: cint): cint =

  fcQStringMatcher_indexIn22(self.h, struct_miqt_string(data: str, len: csize_t(len(str))), fromVal)

proc indexIn3*(self: QStringMatcher, str: gen_qchar.QChar, length: cint, fromVal: cint): cint =

  fcQStringMatcher_indexIn3(self.h, str.h, length, fromVal)

proc delete*(self: QStringMatcher) =
  fcQStringMatcher_delete(self.h)
