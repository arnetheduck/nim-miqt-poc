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
{.compile("gen_qscriptclass.cpp", cflags).}


type QScriptClassQueryFlag* = cint
const
  QScriptClassHandlesReadAccess* = 1
  QScriptClassHandlesWriteAccess* = 2



type QScriptClassExtension* = cint
const
  QScriptClassCallable* = 0
  QScriptClassHasInstance* = 1



import gen_qscriptclass_types
export gen_qscriptclass_types

import
  gen_qscriptclasspropertyiterator,
  gen_qscriptengine,
  gen_qscriptstring,
  gen_qscriptvalue,
  gen_qvariant
export
  gen_qscriptclasspropertyiterator,
  gen_qscriptengine,
  gen_qscriptstring,
  gen_qscriptvalue,
  gen_qvariant

type cQScriptClass*{.exportc: "QScriptClass", incompleteStruct.} = object

proc fcQScriptClass_new(engine: pointer): ptr cQScriptClass {.importc: "QScriptClass_new".}
proc fcQScriptClass_engine(self: pointer, ): pointer {.importc: "QScriptClass_engine".}
proc fcQScriptClass_queryProperty(self: pointer, objectVal: pointer, name: pointer, flags: cint, id: ptr cuint): cint {.importc: "QScriptClass_queryProperty".}
proc fcQScriptClass_property(self: pointer, objectVal: pointer, name: pointer, id: cuint): pointer {.importc: "QScriptClass_property".}
proc fcQScriptClass_setProperty(self: pointer, objectVal: pointer, name: pointer, id: cuint, value: pointer): void {.importc: "QScriptClass_setProperty".}
proc fcQScriptClass_propertyFlags(self: pointer, objectVal: pointer, name: pointer, id: cuint): cint {.importc: "QScriptClass_propertyFlags".}
proc fcQScriptClass_newIterator(self: pointer, objectVal: pointer): pointer {.importc: "QScriptClass_newIterator".}
proc fcQScriptClass_prototype(self: pointer, ): pointer {.importc: "QScriptClass_prototype".}
proc fcQScriptClass_name(self: pointer, ): struct_miqt_string {.importc: "QScriptClass_name".}
proc fcQScriptClass_supportsExtension(self: pointer, extension: cint): bool {.importc: "QScriptClass_supportsExtension".}
proc fcQScriptClass_extension(self: pointer, extension: cint, argument: pointer): pointer {.importc: "QScriptClass_extension".}
proc fQScriptClass_virtualbase_queryProperty(self: pointer, objectVal: pointer, name: pointer, flags: cint, id: ptr cuint): cint{.importc: "QScriptClass_virtualbase_queryProperty".}
proc fcQScriptClass_override_virtual_queryProperty(self: pointer, slot: int) {.importc: "QScriptClass_override_virtual_queryProperty".}
proc fQScriptClass_virtualbase_property(self: pointer, objectVal: pointer, name: pointer, id: cuint): pointer{.importc: "QScriptClass_virtualbase_property".}
proc fcQScriptClass_override_virtual_property(self: pointer, slot: int) {.importc: "QScriptClass_override_virtual_property".}
proc fQScriptClass_virtualbase_setProperty(self: pointer, objectVal: pointer, name: pointer, id: cuint, value: pointer): void{.importc: "QScriptClass_virtualbase_setProperty".}
proc fcQScriptClass_override_virtual_setProperty(self: pointer, slot: int) {.importc: "QScriptClass_override_virtual_setProperty".}
proc fQScriptClass_virtualbase_propertyFlags(self: pointer, objectVal: pointer, name: pointer, id: cuint): cint{.importc: "QScriptClass_virtualbase_propertyFlags".}
proc fcQScriptClass_override_virtual_propertyFlags(self: pointer, slot: int) {.importc: "QScriptClass_override_virtual_propertyFlags".}
proc fQScriptClass_virtualbase_newIterator(self: pointer, objectVal: pointer): pointer{.importc: "QScriptClass_virtualbase_newIterator".}
proc fcQScriptClass_override_virtual_newIterator(self: pointer, slot: int) {.importc: "QScriptClass_override_virtual_newIterator".}
proc fQScriptClass_virtualbase_prototype(self: pointer, ): pointer{.importc: "QScriptClass_virtualbase_prototype".}
proc fcQScriptClass_override_virtual_prototype(self: pointer, slot: int) {.importc: "QScriptClass_override_virtual_prototype".}
proc fQScriptClass_virtualbase_name(self: pointer, ): struct_miqt_string{.importc: "QScriptClass_virtualbase_name".}
proc fcQScriptClass_override_virtual_name(self: pointer, slot: int) {.importc: "QScriptClass_override_virtual_name".}
proc fQScriptClass_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QScriptClass_virtualbase_supportsExtension".}
proc fcQScriptClass_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QScriptClass_override_virtual_supportsExtension".}
proc fQScriptClass_virtualbase_extension(self: pointer, extension: cint, argument: pointer): pointer{.importc: "QScriptClass_virtualbase_extension".}
proc fcQScriptClass_override_virtual_extension(self: pointer, slot: int) {.importc: "QScriptClass_override_virtual_extension".}
proc fcQScriptClass_delete(self: pointer) {.importc: "QScriptClass_delete".}


func init*(T: type QScriptClass, h: ptr cQScriptClass): QScriptClass =
  T(h: h)
proc create*(T: type QScriptClass, engine: gen_qscriptengine.QScriptEngine): QScriptClass =

  QScriptClass.init(fcQScriptClass_new(engine.h))
proc engine*(self: QScriptClass, ): gen_qscriptengine.QScriptEngine =

  gen_qscriptengine.QScriptEngine(h: fcQScriptClass_engine(self.h))

proc queryProperty*(self: QScriptClass, objectVal: gen_qscriptvalue.QScriptValue, name: gen_qscriptstring.QScriptString, flags: QScriptClassQueryFlag, id: ptr cuint): QScriptClassQueryFlag =

  QScriptClassQueryFlag(fcQScriptClass_queryProperty(self.h, objectVal.h, name.h, cint(flags), id))

proc property*(self: QScriptClass, objectVal: gen_qscriptvalue.QScriptValue, name: gen_qscriptstring.QScriptString, id: cuint): gen_qscriptvalue.QScriptValue =

  gen_qscriptvalue.QScriptValue(h: fcQScriptClass_property(self.h, objectVal.h, name.h, id))

proc setProperty*(self: QScriptClass, objectVal: gen_qscriptvalue.QScriptValue, name: gen_qscriptstring.QScriptString, id: cuint, value: gen_qscriptvalue.QScriptValue): void =

  fcQScriptClass_setProperty(self.h, objectVal.h, name.h, id, value.h)

proc propertyFlags*(self: QScriptClass, objectVal: gen_qscriptvalue.QScriptValue, name: gen_qscriptstring.QScriptString, id: cuint): gen_qscriptvalue.QScriptValuePropertyFlag =

  gen_qscriptvalue.QScriptValuePropertyFlag(fcQScriptClass_propertyFlags(self.h, objectVal.h, name.h, id))

proc newIterator*(self: QScriptClass, objectVal: gen_qscriptvalue.QScriptValue): gen_qscriptclasspropertyiterator.QScriptClassPropertyIterator =

  gen_qscriptclasspropertyiterator.QScriptClassPropertyIterator(h: fcQScriptClass_newIterator(self.h, objectVal.h))

proc prototype*(self: QScriptClass, ): gen_qscriptvalue.QScriptValue =

  gen_qscriptvalue.QScriptValue(h: fcQScriptClass_prototype(self.h))

proc name*(self: QScriptClass, ): string =

  let v_ms = fcQScriptClass_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportsExtension*(self: QScriptClass, extension: QScriptClassExtension): bool =

  fcQScriptClass_supportsExtension(self.h, cint(extension))

proc extension*(self: QScriptClass, extension: QScriptClassExtension, argument: gen_qvariant.QVariant): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQScriptClass_extension(self.h, cint(extension), argument.h))

proc callVirtualBase_queryProperty(self: QScriptClass, objectVal: gen_qscriptvalue.QScriptValue, name: gen_qscriptstring.QScriptString, flags: QScriptClassQueryFlag, id: ptr cuint): QScriptClassQueryFlag =


  QScriptClassQueryFlag(fQScriptClass_virtualbase_queryProperty(self.h, objectVal.h, name.h, cint(flags), id))

type QScriptClassqueryPropertyBase* = proc(objectVal: gen_qscriptvalue.QScriptValue, name: gen_qscriptstring.QScriptString, flags: QScriptClassQueryFlag, id: ptr cuint): QScriptClassQueryFlag
proc onqueryProperty*(self: QScriptClass, slot: proc(super: QScriptClassqueryPropertyBase, objectVal: gen_qscriptvalue.QScriptValue, name: gen_qscriptstring.QScriptString, flags: QScriptClassQueryFlag, id: ptr cuint): QScriptClassQueryFlag) =
  # TODO check subclass
  type Cb = proc(super: QScriptClassqueryPropertyBase, objectVal: gen_qscriptvalue.QScriptValue, name: gen_qscriptstring.QScriptString, flags: QScriptClassQueryFlag, id: ptr cuint): QScriptClassQueryFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptClass_override_virtual_queryProperty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptClass_queryProperty(self: ptr cQScriptClass, slot: int, objectVal: pointer, name: pointer, flags: cint, id: ptr cuint): cint {.exportc: "miqt_exec_callback_QScriptClass_queryProperty ".} =
  type Cb = proc(super: QScriptClassqueryPropertyBase, objectVal: gen_qscriptvalue.QScriptValue, name: gen_qscriptstring.QScriptString, flags: QScriptClassQueryFlag, id: ptr cuint): QScriptClassQueryFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(objectVal: gen_qscriptvalue.QScriptValue, name: gen_qscriptstring.QScriptString, flags: QScriptClassQueryFlag, id: ptr cuint): auto =
    callVirtualBase_queryProperty(QScriptClass(h: self), objectVal, name, flags, id)
  let slotval1 = gen_qscriptvalue.QScriptValue(h: objectVal)

  let slotval2 = gen_qscriptstring.QScriptString(h: name)

  let slotval3 = QScriptClassQueryFlag(flags)

  let slotval4 = id


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  cint(virtualReturn)
proc callVirtualBase_property(self: QScriptClass, objectVal: gen_qscriptvalue.QScriptValue, name: gen_qscriptstring.QScriptString, id: cuint): gen_qscriptvalue.QScriptValue =


  gen_qscriptvalue.QScriptValue(h: fQScriptClass_virtualbase_property(self.h, objectVal.h, name.h, id))

type QScriptClasspropertyBase* = proc(objectVal: gen_qscriptvalue.QScriptValue, name: gen_qscriptstring.QScriptString, id: cuint): gen_qscriptvalue.QScriptValue
proc onproperty*(self: QScriptClass, slot: proc(super: QScriptClasspropertyBase, objectVal: gen_qscriptvalue.QScriptValue, name: gen_qscriptstring.QScriptString, id: cuint): gen_qscriptvalue.QScriptValue) =
  # TODO check subclass
  type Cb = proc(super: QScriptClasspropertyBase, objectVal: gen_qscriptvalue.QScriptValue, name: gen_qscriptstring.QScriptString, id: cuint): gen_qscriptvalue.QScriptValue
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptClass_override_virtual_property(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptClass_property(self: ptr cQScriptClass, slot: int, objectVal: pointer, name: pointer, id: cuint): pointer {.exportc: "miqt_exec_callback_QScriptClass_property ".} =
  type Cb = proc(super: QScriptClasspropertyBase, objectVal: gen_qscriptvalue.QScriptValue, name: gen_qscriptstring.QScriptString, id: cuint): gen_qscriptvalue.QScriptValue
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(objectVal: gen_qscriptvalue.QScriptValue, name: gen_qscriptstring.QScriptString, id: cuint): auto =
    callVirtualBase_property(QScriptClass(h: self), objectVal, name, id)
  let slotval1 = gen_qscriptvalue.QScriptValue(h: objectVal)

  let slotval2 = gen_qscriptstring.QScriptString(h: name)

  let slotval3 = id


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_setProperty(self: QScriptClass, objectVal: gen_qscriptvalue.QScriptValue, name: gen_qscriptstring.QScriptString, id: cuint, value: gen_qscriptvalue.QScriptValue): void =


  fQScriptClass_virtualbase_setProperty(self.h, objectVal.h, name.h, id, value.h)

type QScriptClasssetPropertyBase* = proc(objectVal: gen_qscriptvalue.QScriptValue, name: gen_qscriptstring.QScriptString, id: cuint, value: gen_qscriptvalue.QScriptValue): void
proc onsetProperty*(self: QScriptClass, slot: proc(super: QScriptClasssetPropertyBase, objectVal: gen_qscriptvalue.QScriptValue, name: gen_qscriptstring.QScriptString, id: cuint, value: gen_qscriptvalue.QScriptValue): void) =
  # TODO check subclass
  type Cb = proc(super: QScriptClasssetPropertyBase, objectVal: gen_qscriptvalue.QScriptValue, name: gen_qscriptstring.QScriptString, id: cuint, value: gen_qscriptvalue.QScriptValue): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptClass_override_virtual_setProperty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptClass_setProperty(self: ptr cQScriptClass, slot: int, objectVal: pointer, name: pointer, id: cuint, value: pointer): void {.exportc: "miqt_exec_callback_QScriptClass_setProperty ".} =
  type Cb = proc(super: QScriptClasssetPropertyBase, objectVal: gen_qscriptvalue.QScriptValue, name: gen_qscriptstring.QScriptString, id: cuint, value: gen_qscriptvalue.QScriptValue): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(objectVal: gen_qscriptvalue.QScriptValue, name: gen_qscriptstring.QScriptString, id: cuint, value: gen_qscriptvalue.QScriptValue): auto =
    callVirtualBase_setProperty(QScriptClass(h: self), objectVal, name, id, value)
  let slotval1 = gen_qscriptvalue.QScriptValue(h: objectVal)

  let slotval2 = gen_qscriptstring.QScriptString(h: name)

  let slotval3 = id

  let slotval4 = gen_qscriptvalue.QScriptValue(h: value)


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_propertyFlags(self: QScriptClass, objectVal: gen_qscriptvalue.QScriptValue, name: gen_qscriptstring.QScriptString, id: cuint): gen_qscriptvalue.QScriptValuePropertyFlag =


  gen_qscriptvalue.QScriptValuePropertyFlag(fQScriptClass_virtualbase_propertyFlags(self.h, objectVal.h, name.h, id))

type QScriptClasspropertyFlagsBase* = proc(objectVal: gen_qscriptvalue.QScriptValue, name: gen_qscriptstring.QScriptString, id: cuint): gen_qscriptvalue.QScriptValuePropertyFlag
proc onpropertyFlags*(self: QScriptClass, slot: proc(super: QScriptClasspropertyFlagsBase, objectVal: gen_qscriptvalue.QScriptValue, name: gen_qscriptstring.QScriptString, id: cuint): gen_qscriptvalue.QScriptValuePropertyFlag) =
  # TODO check subclass
  type Cb = proc(super: QScriptClasspropertyFlagsBase, objectVal: gen_qscriptvalue.QScriptValue, name: gen_qscriptstring.QScriptString, id: cuint): gen_qscriptvalue.QScriptValuePropertyFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptClass_override_virtual_propertyFlags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptClass_propertyFlags(self: ptr cQScriptClass, slot: int, objectVal: pointer, name: pointer, id: cuint): cint {.exportc: "miqt_exec_callback_QScriptClass_propertyFlags ".} =
  type Cb = proc(super: QScriptClasspropertyFlagsBase, objectVal: gen_qscriptvalue.QScriptValue, name: gen_qscriptstring.QScriptString, id: cuint): gen_qscriptvalue.QScriptValuePropertyFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(objectVal: gen_qscriptvalue.QScriptValue, name: gen_qscriptstring.QScriptString, id: cuint): auto =
    callVirtualBase_propertyFlags(QScriptClass(h: self), objectVal, name, id)
  let slotval1 = gen_qscriptvalue.QScriptValue(h: objectVal)

  let slotval2 = gen_qscriptstring.QScriptString(h: name)

  let slotval3 = id


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  cint(virtualReturn)
proc callVirtualBase_newIterator(self: QScriptClass, objectVal: gen_qscriptvalue.QScriptValue): gen_qscriptclasspropertyiterator.QScriptClassPropertyIterator =


  gen_qscriptclasspropertyiterator.QScriptClassPropertyIterator(h: fQScriptClass_virtualbase_newIterator(self.h, objectVal.h))

type QScriptClassnewIteratorBase* = proc(objectVal: gen_qscriptvalue.QScriptValue): gen_qscriptclasspropertyiterator.QScriptClassPropertyIterator
proc onnewIterator*(self: QScriptClass, slot: proc(super: QScriptClassnewIteratorBase, objectVal: gen_qscriptvalue.QScriptValue): gen_qscriptclasspropertyiterator.QScriptClassPropertyIterator) =
  # TODO check subclass
  type Cb = proc(super: QScriptClassnewIteratorBase, objectVal: gen_qscriptvalue.QScriptValue): gen_qscriptclasspropertyiterator.QScriptClassPropertyIterator
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptClass_override_virtual_newIterator(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptClass_newIterator(self: ptr cQScriptClass, slot: int, objectVal: pointer): pointer {.exportc: "miqt_exec_callback_QScriptClass_newIterator ".} =
  type Cb = proc(super: QScriptClassnewIteratorBase, objectVal: gen_qscriptvalue.QScriptValue): gen_qscriptclasspropertyiterator.QScriptClassPropertyIterator
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(objectVal: gen_qscriptvalue.QScriptValue): auto =
    callVirtualBase_newIterator(QScriptClass(h: self), objectVal)
  let slotval1 = gen_qscriptvalue.QScriptValue(h: objectVal)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_prototype(self: QScriptClass, ): gen_qscriptvalue.QScriptValue =


  gen_qscriptvalue.QScriptValue(h: fQScriptClass_virtualbase_prototype(self.h))

type QScriptClassprototypeBase* = proc(): gen_qscriptvalue.QScriptValue
proc onprototype*(self: QScriptClass, slot: proc(super: QScriptClassprototypeBase): gen_qscriptvalue.QScriptValue) =
  # TODO check subclass
  type Cb = proc(super: QScriptClassprototypeBase): gen_qscriptvalue.QScriptValue
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptClass_override_virtual_prototype(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptClass_prototype(self: ptr cQScriptClass, slot: int): pointer {.exportc: "miqt_exec_callback_QScriptClass_prototype ".} =
  type Cb = proc(super: QScriptClassprototypeBase): gen_qscriptvalue.QScriptValue
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_prototype(QScriptClass(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_name(self: QScriptClass, ): string =


  let v_ms = fQScriptClass_virtualbase_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QScriptClassnameBase* = proc(): string
proc onname*(self: QScriptClass, slot: proc(super: QScriptClassnameBase): string) =
  # TODO check subclass
  type Cb = proc(super: QScriptClassnameBase): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptClass_override_virtual_name(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptClass_name(self: ptr cQScriptClass, slot: int): struct_miqt_string {.exportc: "miqt_exec_callback_QScriptClass_name ".} =
  type Cb = proc(super: QScriptClassnameBase): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_name(QScriptClass(h: self), )

  let virtualReturn = nimfunc[](superCall )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_supportsExtension(self: QScriptClass, extension: QScriptClassExtension): bool =


  fQScriptClass_virtualbase_supportsExtension(self.h, cint(extension))

type QScriptClasssupportsExtensionBase* = proc(extension: QScriptClassExtension): bool
proc onsupportsExtension*(self: QScriptClass, slot: proc(super: QScriptClasssupportsExtensionBase, extension: QScriptClassExtension): bool) =
  # TODO check subclass
  type Cb = proc(super: QScriptClasssupportsExtensionBase, extension: QScriptClassExtension): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptClass_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptClass_supportsExtension(self: ptr cQScriptClass, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QScriptClass_supportsExtension ".} =
  type Cb = proc(super: QScriptClasssupportsExtensionBase, extension: QScriptClassExtension): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QScriptClassExtension): auto =
    callVirtualBase_supportsExtension(QScriptClass(h: self), extension)
  let slotval1 = QScriptClassExtension(extension)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_extension(self: QScriptClass, extension: QScriptClassExtension, argument: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQScriptClass_virtualbase_extension(self.h, cint(extension), argument.h))

type QScriptClassextensionBase* = proc(extension: QScriptClassExtension, argument: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onextension*(self: QScriptClass, slot: proc(super: QScriptClassextensionBase, extension: QScriptClassExtension, argument: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QScriptClassextensionBase, extension: QScriptClassExtension, argument: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptClass_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptClass_extension(self: ptr cQScriptClass, slot: int, extension: cint, argument: pointer): pointer {.exportc: "miqt_exec_callback_QScriptClass_extension ".} =
  type Cb = proc(super: QScriptClassextensionBase, extension: QScriptClassExtension, argument: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QScriptClassExtension, argument: gen_qvariant.QVariant): auto =
    callVirtualBase_extension(QScriptClass(h: self), extension, argument)
  let slotval1 = QScriptClassExtension(extension)

  let slotval2 = gen_qvariant.QVariant(h: argument)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc delete*(self: QScriptClass) =
  fcQScriptClass_delete(self.h)
