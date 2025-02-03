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
{.compile("gen_qdebug.cpp", cflags).}


type QDebugVerbosityLevel* = cint
const
  QDebugMinimumVerbosity* = 0
  QDebugDefaultVerbosity* = 2
  QDebugMaximumVerbosity* = 7



import gen_qdebug_types
export gen_qdebug_types

import
  gen_qchar,
  gen_qiodevice
export
  gen_qchar,
  gen_qiodevice

type cQDebug*{.exportc: "QDebug", incompleteStruct.} = object
type cQDebugStateSaver*{.exportc: "QDebugStateSaver", incompleteStruct.} = object
type cQNoDebug*{.exportc: "QNoDebug", incompleteStruct.} = object

proc fcQDebug_new(device: pointer): ptr cQDebug {.importc: "QDebug_new".}
proc fcQDebug_new2(o: pointer): ptr cQDebug {.importc: "QDebug_new2".}
proc fcQDebug_operatorAssign(self: pointer, other: pointer): void {.importc: "QDebug_operatorAssign".}
proc fcQDebug_swap(self: pointer, other: pointer): void {.importc: "QDebug_swap".}
proc fcQDebug_resetFormat(self: pointer, ): pointer {.importc: "QDebug_resetFormat".}
proc fcQDebug_space(self: pointer, ): pointer {.importc: "QDebug_space".}
proc fcQDebug_nospace(self: pointer, ): pointer {.importc: "QDebug_nospace".}
proc fcQDebug_maybeSpace(self: pointer, ): pointer {.importc: "QDebug_maybeSpace".}
proc fcQDebug_verbosity(self: pointer, verbosityLevel: cint): pointer {.importc: "QDebug_verbosity".}
proc fcQDebug_verbosity2(self: pointer, ): cint {.importc: "QDebug_verbosity2".}
proc fcQDebug_setVerbosity(self: pointer, verbosityLevel: cint): void {.importc: "QDebug_setVerbosity".}
proc fcQDebug_autoInsertSpaces(self: pointer, ): bool {.importc: "QDebug_autoInsertSpaces".}
proc fcQDebug_setAutoInsertSpaces(self: pointer, b: bool): void {.importc: "QDebug_setAutoInsertSpaces".}
proc fcQDebug_quote(self: pointer, ): pointer {.importc: "QDebug_quote".}
proc fcQDebug_noquote(self: pointer, ): pointer {.importc: "QDebug_noquote".}
proc fcQDebug_maybeQuote(self: pointer, ): pointer {.importc: "QDebug_maybeQuote".}
proc fcQDebug_operatorShiftLeft(self: pointer, t: pointer): pointer {.importc: "QDebug_operatorShiftLeft".}
proc fcQDebug_operatorShiftLeftWithBool(self: pointer, t: bool): pointer {.importc: "QDebug_operatorShiftLeftWithBool".}
proc fcQDebug_operatorShiftLeftWithChar(self: pointer, t: cchar): pointer {.importc: "QDebug_operatorShiftLeftWithChar".}
proc fcQDebug_operatorShiftLeftWithShort(self: pointer, t: cshort): pointer {.importc: "QDebug_operatorShiftLeftWithShort".}
proc fcQDebug_operatorShiftLeftWithUnsignedshort(self: pointer, t: cushort): pointer {.importc: "QDebug_operatorShiftLeftWithUnsignedshort".}
proc fcQDebug_operatorShiftLeftWithInt(self: pointer, t: cint): pointer {.importc: "QDebug_operatorShiftLeftWithInt".}
proc fcQDebug_operatorShiftLeftWithUnsignedint(self: pointer, t: cuint): pointer {.importc: "QDebug_operatorShiftLeftWithUnsignedint".}
proc fcQDebug_operatorShiftLeftWithLong(self: pointer, t: clong): pointer {.importc: "QDebug_operatorShiftLeftWithLong".}
proc fcQDebug_operatorShiftLeftWithUnsignedlong(self: pointer, t: culong): pointer {.importc: "QDebug_operatorShiftLeftWithUnsignedlong".}
proc fcQDebug_operatorShiftLeftWithQint64(self: pointer, t: clonglong): pointer {.importc: "QDebug_operatorShiftLeftWithQint64".}
proc fcQDebug_operatorShiftLeftWithQuint64(self: pointer, t: culonglong): pointer {.importc: "QDebug_operatorShiftLeftWithQuint64".}
proc fcQDebug_operatorShiftLeftWithFloat(self: pointer, t: float32): pointer {.importc: "QDebug_operatorShiftLeftWithFloat".}
proc fcQDebug_operatorShiftLeftWithDouble(self: pointer, t: float64): pointer {.importc: "QDebug_operatorShiftLeftWithDouble".}
proc fcQDebug_operatorShiftLeft2(self: pointer, t: cstring): pointer {.importc: "QDebug_operatorShiftLeft2".}
proc fcQDebug_operatorShiftLeftWithQString(self: pointer, t: struct_miqt_string): pointer {.importc: "QDebug_operatorShiftLeftWithQString".}
proc fcQDebug_operatorShiftLeftWithQByteArray(self: pointer, t: struct_miqt_string): pointer {.importc: "QDebug_operatorShiftLeftWithQByteArray".}
proc fcQDebug_operatorShiftLeftWithVoid(self: pointer, t: pointer): pointer {.importc: "QDebug_operatorShiftLeftWithVoid".}
proc fcQDebug_maybeQuote1(self: pointer, c: cchar): pointer {.importc: "QDebug_maybeQuote1".}
proc fcQDebug_delete(self: pointer) {.importc: "QDebug_delete".}
proc fcQDebugStateSaver_new(dbg: pointer): ptr cQDebugStateSaver {.importc: "QDebugStateSaver_new".}
proc fcQDebugStateSaver_delete(self: pointer) {.importc: "QDebugStateSaver_delete".}
proc fcQNoDebug_space(self: pointer, ): pointer {.importc: "QNoDebug_space".}
proc fcQNoDebug_nospace(self: pointer, ): pointer {.importc: "QNoDebug_nospace".}
proc fcQNoDebug_maybeSpace(self: pointer, ): pointer {.importc: "QNoDebug_maybeSpace".}
proc fcQNoDebug_quote(self: pointer, ): pointer {.importc: "QNoDebug_quote".}
proc fcQNoDebug_noquote(self: pointer, ): pointer {.importc: "QNoDebug_noquote".}
proc fcQNoDebug_maybeQuote(self: pointer, ): pointer {.importc: "QNoDebug_maybeQuote".}
proc fcQNoDebug_verbosity(self: pointer, param1: cint): pointer {.importc: "QNoDebug_verbosity".}
proc fcQNoDebug_maybeQuote1(self: pointer, param1: cchar): pointer {.importc: "QNoDebug_maybeQuote1".}
proc fcQNoDebug_delete(self: pointer) {.importc: "QNoDebug_delete".}


func init*(T: type QDebug, h: ptr cQDebug): QDebug =
  T(h: h)
proc create*(T: type QDebug, device: gen_qiodevice.QIODevice): QDebug =

  QDebug.init(fcQDebug_new(device.h))
proc create2*(T: type QDebug, o: QDebug): QDebug =

  QDebug.init(fcQDebug_new2(o.h))
proc operatorAssign*(self: QDebug, other: QDebug): void =

  fcQDebug_operatorAssign(self.h, other.h)

proc swap*(self: QDebug, other: QDebug): void =

  fcQDebug_swap(self.h, other.h)

proc resetFormat*(self: QDebug, ): QDebug =

  QDebug(h: fcQDebug_resetFormat(self.h))

proc space*(self: QDebug, ): QDebug =

  QDebug(h: fcQDebug_space(self.h))

proc nospace*(self: QDebug, ): QDebug =

  QDebug(h: fcQDebug_nospace(self.h))

proc maybeSpace*(self: QDebug, ): QDebug =

  QDebug(h: fcQDebug_maybeSpace(self.h))

proc verbosity*(self: QDebug, verbosityLevel: cint): QDebug =

  QDebug(h: fcQDebug_verbosity(self.h, verbosityLevel))

proc verbosity2*(self: QDebug, ): cint =

  fcQDebug_verbosity2(self.h)

proc setVerbosity*(self: QDebug, verbosityLevel: cint): void =

  fcQDebug_setVerbosity(self.h, verbosityLevel)

proc autoInsertSpaces*(self: QDebug, ): bool =

  fcQDebug_autoInsertSpaces(self.h)

proc setAutoInsertSpaces*(self: QDebug, b: bool): void =

  fcQDebug_setAutoInsertSpaces(self.h, b)

proc quote*(self: QDebug, ): QDebug =

  QDebug(h: fcQDebug_quote(self.h))

proc noquote*(self: QDebug, ): QDebug =

  QDebug(h: fcQDebug_noquote(self.h))

proc maybeQuote*(self: QDebug, ): QDebug =

  QDebug(h: fcQDebug_maybeQuote(self.h))

proc operatorShiftLeft*(self: QDebug, t: gen_qchar.QChar): QDebug =

  QDebug(h: fcQDebug_operatorShiftLeft(self.h, t.h))

proc operatorShiftLeftWithBool*(self: QDebug, t: bool): QDebug =

  QDebug(h: fcQDebug_operatorShiftLeftWithBool(self.h, t))

proc operatorShiftLeftWithChar*(self: QDebug, t: cchar): QDebug =

  QDebug(h: fcQDebug_operatorShiftLeftWithChar(self.h, t))

proc operatorShiftLeftWithShort*(self: QDebug, t: cshort): QDebug =

  QDebug(h: fcQDebug_operatorShiftLeftWithShort(self.h, t))

proc operatorShiftLeftWithUnsignedshort*(self: QDebug, t: cushort): QDebug =

  QDebug(h: fcQDebug_operatorShiftLeftWithUnsignedshort(self.h, t))

proc operatorShiftLeftWithInt*(self: QDebug, t: cint): QDebug =

  QDebug(h: fcQDebug_operatorShiftLeftWithInt(self.h, t))

proc operatorShiftLeftWithUnsignedint*(self: QDebug, t: cuint): QDebug =

  QDebug(h: fcQDebug_operatorShiftLeftWithUnsignedint(self.h, t))

proc operatorShiftLeftWithLong*(self: QDebug, t: clong): QDebug =

  QDebug(h: fcQDebug_operatorShiftLeftWithLong(self.h, t))

proc operatorShiftLeftWithUnsignedlong*(self: QDebug, t: culong): QDebug =

  QDebug(h: fcQDebug_operatorShiftLeftWithUnsignedlong(self.h, t))

proc operatorShiftLeftWithQint64*(self: QDebug, t: clonglong): QDebug =

  QDebug(h: fcQDebug_operatorShiftLeftWithQint64(self.h, t))

proc operatorShiftLeftWithQuint64*(self: QDebug, t: culonglong): QDebug =

  QDebug(h: fcQDebug_operatorShiftLeftWithQuint64(self.h, t))

proc operatorShiftLeftWithFloat*(self: QDebug, t: float32): QDebug =

  QDebug(h: fcQDebug_operatorShiftLeftWithFloat(self.h, t))

proc operatorShiftLeftWithDouble*(self: QDebug, t: float64): QDebug =

  QDebug(h: fcQDebug_operatorShiftLeftWithDouble(self.h, t))

proc operatorShiftLeft2*(self: QDebug, t: cstring): QDebug =

  QDebug(h: fcQDebug_operatorShiftLeft2(self.h, t))

proc operatorShiftLeftWithQString*(self: QDebug, t: string): QDebug =

  QDebug(h: fcQDebug_operatorShiftLeftWithQString(self.h, struct_miqt_string(data: t, len: csize_t(len(t)))))

proc operatorShiftLeftWithQByteArray*(self: QDebug, t: seq[byte]): QDebug =

  QDebug(h: fcQDebug_operatorShiftLeftWithQByteArray(self.h, struct_miqt_string(data: cast[cstring](if len(t) == 0: nil else: unsafeAddr t[0]), len: csize_t(len(t)))))

proc operatorShiftLeftWithVoid*(self: QDebug, t: pointer): QDebug =

  QDebug(h: fcQDebug_operatorShiftLeftWithVoid(self.h, t))

proc maybeQuote1*(self: QDebug, c: cchar): QDebug =

  QDebug(h: fcQDebug_maybeQuote1(self.h, c))

proc delete*(self: QDebug) =
  fcQDebug_delete(self.h)

func init*(T: type QDebugStateSaver, h: ptr cQDebugStateSaver): QDebugStateSaver =
  T(h: h)
proc create*(T: type QDebugStateSaver, dbg: QDebug): QDebugStateSaver =

  QDebugStateSaver.init(fcQDebugStateSaver_new(dbg.h))
proc delete*(self: QDebugStateSaver) =
  fcQDebugStateSaver_delete(self.h)

func init*(T: type QNoDebug, h: ptr cQNoDebug): QNoDebug =
  T(h: h)
proc space*(self: QNoDebug, ): QNoDebug =

  QNoDebug(h: fcQNoDebug_space(self.h))

proc nospace*(self: QNoDebug, ): QNoDebug =

  QNoDebug(h: fcQNoDebug_nospace(self.h))

proc maybeSpace*(self: QNoDebug, ): QNoDebug =

  QNoDebug(h: fcQNoDebug_maybeSpace(self.h))

proc quote*(self: QNoDebug, ): QNoDebug =

  QNoDebug(h: fcQNoDebug_quote(self.h))

proc noquote*(self: QNoDebug, ): QNoDebug =

  QNoDebug(h: fcQNoDebug_noquote(self.h))

proc maybeQuote*(self: QNoDebug, ): QNoDebug =

  QNoDebug(h: fcQNoDebug_maybeQuote(self.h))

proc verbosity*(self: QNoDebug, param1: cint): QNoDebug =

  QNoDebug(h: fcQNoDebug_verbosity(self.h, param1))

proc maybeQuote1*(self: QNoDebug, param1: cchar): QNoDebug =

  QNoDebug(h: fcQNoDebug_maybeQuote1(self.h, param1))

proc delete*(self: QNoDebug) =
  fcQNoDebug_delete(self.h)
