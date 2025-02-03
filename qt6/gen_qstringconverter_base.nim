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
{.compile("gen_qstringconverter_base.cpp", cflags).}


type QStringConverterBaseFlag* = cint
const
  QStringConverterBaseDefault* = 0
  QStringConverterBaseStateless* = 1
  QStringConverterBaseConvertInvalidToNull* = 2
  QStringConverterBaseWriteBom* = 4
  QStringConverterBaseConvertInitialBom* = 8
  QStringConverterBaseUsesIcu* = 16



type QStringConverterEncoding* = cint
const
  QStringConverterUtf8* = 0
  QStringConverterUtf16* = 1
  QStringConverterUtf16LE* = 2
  QStringConverterUtf16BE* = 3
  QStringConverterUtf32* = 4
  QStringConverterUtf32LE* = 5
  QStringConverterUtf32BE* = 6
  QStringConverterLatin1* = 7
  QStringConverterSystem* = 8
  QStringConverterLastEncoding* = 8



import gen_qstringconverter_base_types
export gen_qstringconverter_base_types


type cQStringConverterBase*{.exportc: "QStringConverterBase", incompleteStruct.} = object
type cQStringConverter*{.exportc: "QStringConverter", incompleteStruct.} = object
type cQStringConverterBaseState*{.exportc: "QStringConverterBase__State", incompleteStruct.} = object

proc fcQStringConverterBase_new(param1: pointer): ptr cQStringConverterBase {.importc: "QStringConverterBase_new".}
proc fcQStringConverterBase_new2(): ptr cQStringConverterBase {.importc: "QStringConverterBase_new2".}
proc fcQStringConverter_isValid(self: pointer, ): bool {.importc: "QStringConverter_isValid".}
proc fcQStringConverter_resetState(self: pointer, ): void {.importc: "QStringConverter_resetState".}
proc fcQStringConverter_hasError(self: pointer, ): bool {.importc: "QStringConverter_hasError".}
proc fcQStringConverter_name(self: pointer, ): cstring {.importc: "QStringConverter_name".}
proc fcQStringConverter_nameForEncoding(e: cint): cstring {.importc: "QStringConverter_nameForEncoding".}
proc fcQStringConverterBaseState_new(): ptr cQStringConverterBaseState {.importc: "QStringConverterBase__State_new".}
proc fcQStringConverterBaseState_new2(f: cint): ptr cQStringConverterBaseState {.importc: "QStringConverterBase__State_new2".}
proc fcQStringConverterBaseState_clear(self: pointer, ): void {.importc: "QStringConverterBase__State_clear".}
proc fcQStringConverterBaseState_reset(self: pointer, ): void {.importc: "QStringConverterBase__State_reset".}
proc fcQStringConverterBaseState_delete(self: pointer) {.importc: "QStringConverterBase__State_delete".}


func init*(T: type QStringConverterBase, h: ptr cQStringConverterBase): QStringConverterBase =
  T(h: h)
proc create*(T: type QStringConverterBase, param1: QStringConverterBase): QStringConverterBase =

  QStringConverterBase.init(fcQStringConverterBase_new(param1.h))
proc create*(T: type QStringConverterBase, ): QStringConverterBase =

  QStringConverterBase.init(fcQStringConverterBase_new2())

func init*(T: type QStringConverter, h: ptr cQStringConverter): QStringConverter =
  T(h: h)
proc isValid*(self: QStringConverter, ): bool =

  fcQStringConverter_isValid(self.h)

proc resetState*(self: QStringConverter, ): void =

  fcQStringConverter_resetState(self.h)

proc hasError*(self: QStringConverter, ): bool =

  fcQStringConverter_hasError(self.h)

proc name*(self: QStringConverter, ): cstring =

  (fcQStringConverter_name(self.h))

proc nameForEncoding*(_: type QStringConverter, e: QStringConverterEncoding): cstring =

  (fcQStringConverter_nameForEncoding(cint(e)))


func init*(T: type QStringConverterBaseState, h: ptr cQStringConverterBaseState): QStringConverterBaseState =
  T(h: h)
proc create*(T: type QStringConverterBaseState, ): QStringConverterBaseState =

  QStringConverterBaseState.init(fcQStringConverterBaseState_new())
proc create*(T: type QStringConverterBaseState, f: QStringConverterBaseFlag): QStringConverterBaseState =

  QStringConverterBaseState.init(fcQStringConverterBaseState_new2(cint(f)))
proc clear*(self: QStringConverterBaseState, ): void =

  fcQStringConverterBaseState_clear(self.h)

proc reset*(self: QStringConverterBaseState, ): void =

  fcQStringConverterBaseState_reset(self.h)

proc delete*(self: QStringConverterBaseState) =
  fcQStringConverterBaseState_delete(self.h)
