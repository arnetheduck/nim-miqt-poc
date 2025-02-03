import Qt5Script_libs

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

const cflags = gorge("pkg-config -cflags Qt5Script")
{.compile("gen_qscriptclasspropertyiterator.cpp", cflags).}


import gen_qscriptclasspropertyiterator_types
export gen_qscriptclasspropertyiterator_types

import
  gen_qscriptstring,
  gen_qscriptvalue
export
  gen_qscriptstring,
  gen_qscriptvalue

type cQScriptClassPropertyIterator*{.exportc: "QScriptClassPropertyIterator", incompleteStruct.} = object

proc fcQScriptClassPropertyIterator_objectX(self: pointer, ): pointer {.importc: "QScriptClassPropertyIterator_object".}
proc fcQScriptClassPropertyIterator_hasNext(self: pointer, ): bool {.importc: "QScriptClassPropertyIterator_hasNext".}
proc fcQScriptClassPropertyIterator_next(self: pointer, ): void {.importc: "QScriptClassPropertyIterator_next".}
proc fcQScriptClassPropertyIterator_hasPrevious(self: pointer, ): bool {.importc: "QScriptClassPropertyIterator_hasPrevious".}
proc fcQScriptClassPropertyIterator_previous(self: pointer, ): void {.importc: "QScriptClassPropertyIterator_previous".}
proc fcQScriptClassPropertyIterator_toFront(self: pointer, ): void {.importc: "QScriptClassPropertyIterator_toFront".}
proc fcQScriptClassPropertyIterator_toBack(self: pointer, ): void {.importc: "QScriptClassPropertyIterator_toBack".}
proc fcQScriptClassPropertyIterator_name(self: pointer, ): pointer {.importc: "QScriptClassPropertyIterator_name".}
proc fcQScriptClassPropertyIterator_id(self: pointer, ): cuint {.importc: "QScriptClassPropertyIterator_id".}
proc fcQScriptClassPropertyIterator_flags(self: pointer, ): cint {.importc: "QScriptClassPropertyIterator_flags".}
proc fcQScriptClassPropertyIterator_delete(self: pointer) {.importc: "QScriptClassPropertyIterator_delete".}


func init*(T: type QScriptClassPropertyIterator, h: ptr cQScriptClassPropertyIterator): QScriptClassPropertyIterator =
  T(h: h)
proc objectX*(self: QScriptClassPropertyIterator, ): gen_qscriptvalue.QScriptValue =

  gen_qscriptvalue.QScriptValue(h: fcQScriptClassPropertyIterator_objectX(self.h))

proc hasNext*(self: QScriptClassPropertyIterator, ): bool =

  fcQScriptClassPropertyIterator_hasNext(self.h)

proc next*(self: QScriptClassPropertyIterator, ): void =

  fcQScriptClassPropertyIterator_next(self.h)

proc hasPrevious*(self: QScriptClassPropertyIterator, ): bool =

  fcQScriptClassPropertyIterator_hasPrevious(self.h)

proc previous*(self: QScriptClassPropertyIterator, ): void =

  fcQScriptClassPropertyIterator_previous(self.h)

proc toFront*(self: QScriptClassPropertyIterator, ): void =

  fcQScriptClassPropertyIterator_toFront(self.h)

proc toBack*(self: QScriptClassPropertyIterator, ): void =

  fcQScriptClassPropertyIterator_toBack(self.h)

proc name*(self: QScriptClassPropertyIterator, ): gen_qscriptstring.QScriptString =

  gen_qscriptstring.QScriptString(h: fcQScriptClassPropertyIterator_name(self.h))

proc id*(self: QScriptClassPropertyIterator, ): cuint =

  fcQScriptClassPropertyIterator_id(self.h)

proc flags*(self: QScriptClassPropertyIterator, ): gen_qscriptvalue.QScriptValuePropertyFlag =

  gen_qscriptvalue.QScriptValuePropertyFlag(fcQScriptClassPropertyIterator_flags(self.h))

proc delete*(self: QScriptClassPropertyIterator) =
  fcQScriptClassPropertyIterator_delete(self.h)
