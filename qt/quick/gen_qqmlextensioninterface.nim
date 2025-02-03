import Qt5Quick_libs

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

const cflags = gorge("pkg-config -cflags Qt5Quick")
{.compile("gen_qqmlextensioninterface.cpp", cflags).}


import gen_qqmlextensioninterface_types
export gen_qqmlextensioninterface_types

import
  gen_qqmlengine
export
  gen_qqmlengine

type cQQmlTypesExtensionInterface*{.exportc: "QQmlTypesExtensionInterface", incompleteStruct.} = object
type cQQmlExtensionInterface*{.exportc: "QQmlExtensionInterface", incompleteStruct.} = object
type cQQmlEngineExtensionInterface*{.exportc: "QQmlEngineExtensionInterface", incompleteStruct.} = object

proc fcQQmlTypesExtensionInterface_new(param1: pointer): ptr cQQmlTypesExtensionInterface {.importc: "QQmlTypesExtensionInterface_new".}
proc fcQQmlTypesExtensionInterface_registerTypes(self: pointer, uri: cstring): void {.importc: "QQmlTypesExtensionInterface_registerTypes".}
proc fcQQmlTypesExtensionInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QQmlTypesExtensionInterface_operatorAssign".}
proc fcQQmlTypesExtensionInterface_override_virtual_registerTypes(self: pointer, slot: int) {.importc: "QQmlTypesExtensionInterface_override_virtual_registerTypes".}
proc fcQQmlTypesExtensionInterface_delete(self: pointer) {.importc: "QQmlTypesExtensionInterface_delete".}
proc fcQQmlExtensionInterface_new(param1: pointer): ptr cQQmlExtensionInterface {.importc: "QQmlExtensionInterface_new".}
proc fcQQmlExtensionInterface_initializeEngine(self: pointer, engine: pointer, uri: cstring): void {.importc: "QQmlExtensionInterface_initializeEngine".}
proc fcQQmlExtensionInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QQmlExtensionInterface_operatorAssign".}
proc fcQQmlExtensionInterface_override_virtual_initializeEngine(self: pointer, slot: int) {.importc: "QQmlExtensionInterface_override_virtual_initializeEngine".}
proc fcQQmlExtensionInterface_override_virtual_registerTypes(self: pointer, slot: int) {.importc: "QQmlExtensionInterface_override_virtual_registerTypes".}
proc fcQQmlExtensionInterface_delete(self: pointer) {.importc: "QQmlExtensionInterface_delete".}
proc fcQQmlEngineExtensionInterface_initializeEngine(self: pointer, engine: pointer, uri: cstring): void {.importc: "QQmlEngineExtensionInterface_initializeEngine".}
proc fcQQmlEngineExtensionInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QQmlEngineExtensionInterface_operatorAssign".}
proc fcQQmlEngineExtensionInterface_delete(self: pointer) {.importc: "QQmlEngineExtensionInterface_delete".}


func init*(T: type QQmlTypesExtensionInterface, h: ptr cQQmlTypesExtensionInterface): QQmlTypesExtensionInterface =
  T(h: h)
proc create*(T: type QQmlTypesExtensionInterface, param1: QQmlTypesExtensionInterface): QQmlTypesExtensionInterface =

  QQmlTypesExtensionInterface.init(fcQQmlTypesExtensionInterface_new(param1.h))
proc registerTypes*(self: QQmlTypesExtensionInterface, uri: cstring): void =

  fcQQmlTypesExtensionInterface_registerTypes(self.h, uri)

proc operatorAssign*(self: QQmlTypesExtensionInterface, param1: QQmlTypesExtensionInterface): void =

  fcQQmlTypesExtensionInterface_operatorAssign(self.h, param1.h)

type QQmlTypesExtensionInterfaceregisterTypesBase* = proc(uri: cstring): void
proc onregisterTypes*(self: QQmlTypesExtensionInterface, slot: proc(uri: cstring): void) =
  # TODO check subclass
  type Cb = proc(uri: cstring): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlTypesExtensionInterface_override_virtual_registerTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlTypesExtensionInterface_registerTypes(self: ptr cQQmlTypesExtensionInterface, slot: int, uri: cstring): void {.exportc: "miqt_exec_callback_QQmlTypesExtensionInterface_registerTypes ".} =
  type Cb = proc(uri: cstring): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = (uri)


  nimfunc[](slotval1)
proc delete*(self: QQmlTypesExtensionInterface) =
  fcQQmlTypesExtensionInterface_delete(self.h)

func init*(T: type QQmlExtensionInterface, h: ptr cQQmlExtensionInterface): QQmlExtensionInterface =
  T(h: h)
proc create*(T: type QQmlExtensionInterface, param1: QQmlExtensionInterface): QQmlExtensionInterface =

  QQmlExtensionInterface.init(fcQQmlExtensionInterface_new(param1.h))
proc initializeEngine*(self: QQmlExtensionInterface, engine: gen_qqmlengine.QQmlEngine, uri: cstring): void =

  fcQQmlExtensionInterface_initializeEngine(self.h, engine.h, uri)

proc operatorAssign*(self: QQmlExtensionInterface, param1: QQmlExtensionInterface): void =

  fcQQmlExtensionInterface_operatorAssign(self.h, param1.h)

type QQmlExtensionInterfaceinitializeEngineBase* = proc(engine: gen_qqmlengine.QQmlEngine, uri: cstring): void
proc oninitializeEngine*(self: QQmlExtensionInterface, slot: proc(engine: gen_qqmlengine.QQmlEngine, uri: cstring): void) =
  # TODO check subclass
  type Cb = proc(engine: gen_qqmlengine.QQmlEngine, uri: cstring): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExtensionInterface_override_virtual_initializeEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExtensionInterface_initializeEngine(self: ptr cQQmlExtensionInterface, slot: int, engine: pointer, uri: cstring): void {.exportc: "miqt_exec_callback_QQmlExtensionInterface_initializeEngine ".} =
  type Cb = proc(engine: gen_qqmlengine.QQmlEngine, uri: cstring): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qqmlengine.QQmlEngine(h: engine)

  let slotval2 = (uri)


  nimfunc[](slotval1, slotval2)
type QQmlExtensionInterfaceregisterTypesBase* = proc(uri: cstring): void
proc onregisterTypes*(self: QQmlExtensionInterface, slot: proc(uri: cstring): void) =
  # TODO check subclass
  type Cb = proc(uri: cstring): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExtensionInterface_override_virtual_registerTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExtensionInterface_registerTypes(self: ptr cQQmlExtensionInterface, slot: int, uri: cstring): void {.exportc: "miqt_exec_callback_QQmlExtensionInterface_registerTypes ".} =
  type Cb = proc(uri: cstring): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = (uri)


  nimfunc[](slotval1)
proc delete*(self: QQmlExtensionInterface) =
  fcQQmlExtensionInterface_delete(self.h)

func init*(T: type QQmlEngineExtensionInterface, h: ptr cQQmlEngineExtensionInterface): QQmlEngineExtensionInterface =
  T(h: h)
proc initializeEngine*(self: QQmlEngineExtensionInterface, engine: gen_qqmlengine.QQmlEngine, uri: cstring): void =

  fcQQmlEngineExtensionInterface_initializeEngine(self.h, engine.h, uri)

proc operatorAssign*(self: QQmlEngineExtensionInterface, param1: QQmlEngineExtensionInterface): void =

  fcQQmlEngineExtensionInterface_operatorAssign(self.h, param1.h)

proc delete*(self: QQmlEngineExtensionInterface) =
  fcQQmlEngineExtensionInterface_delete(self.h)
