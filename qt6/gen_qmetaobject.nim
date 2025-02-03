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
{.compile("gen_qmetaobject.cpp", cflags).}


type QMetaMethodAccess* = cint
const
  QMetaMethodPrivate* = 0
  QMetaMethodProtected* = 1
  QMetaMethodPublic* = 2



type QMetaMethodMethodType* = cint
const
  QMetaMethodMethod* = 0
  QMetaMethodSignal* = 1
  QMetaMethodSlot* = 2
  QMetaMethodConstructor* = 3



type QMetaMethodAttributes* = cint
const
  QMetaMethodCompatibility* = 1
  QMetaMethodCloned* = 2
  QMetaMethodScriptable* = 4



import gen_qmetaobject_types
export gen_qmetaobject_types

import
  gen_qmetatype,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qproperty,
  gen_qvariant
export
  gen_qmetatype,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qproperty,
  gen_qvariant

type cQMetaMethod*{.exportc: "QMetaMethod", incompleteStruct.} = object
type cQMetaEnum*{.exportc: "QMetaEnum", incompleteStruct.} = object
type cQMetaProperty*{.exportc: "QMetaProperty", incompleteStruct.} = object
type cQMetaClassInfo*{.exportc: "QMetaClassInfo", incompleteStruct.} = object

proc fcQMetaMethod_new(): ptr cQMetaMethod {.importc: "QMetaMethod_new".}
proc fcQMetaMethod_new2(param1: pointer): ptr cQMetaMethod {.importc: "QMetaMethod_new2".}
proc fcQMetaMethod_methodSignature(self: pointer, ): struct_miqt_string {.importc: "QMetaMethod_methodSignature".}
proc fcQMetaMethod_name(self: pointer, ): struct_miqt_string {.importc: "QMetaMethod_name".}
proc fcQMetaMethod_typeName(self: pointer, ): cstring {.importc: "QMetaMethod_typeName".}
proc fcQMetaMethod_returnType(self: pointer, ): cint {.importc: "QMetaMethod_returnType".}
proc fcQMetaMethod_returnMetaType(self: pointer, ): pointer {.importc: "QMetaMethod_returnMetaType".}
proc fcQMetaMethod_parameterCount(self: pointer, ): cint {.importc: "QMetaMethod_parameterCount".}
proc fcQMetaMethod_parameterType(self: pointer, index: cint): cint {.importc: "QMetaMethod_parameterType".}
proc fcQMetaMethod_parameterMetaType(self: pointer, index: cint): pointer {.importc: "QMetaMethod_parameterMetaType".}
proc fcQMetaMethod_getParameterTypes(self: pointer, types: ptr cint): void {.importc: "QMetaMethod_getParameterTypes".}
proc fcQMetaMethod_parameterTypes(self: pointer, ): struct_miqt_array {.importc: "QMetaMethod_parameterTypes".}
proc fcQMetaMethod_parameterTypeName(self: pointer, index: cint): struct_miqt_string {.importc: "QMetaMethod_parameterTypeName".}
proc fcQMetaMethod_parameterNames(self: pointer, ): struct_miqt_array {.importc: "QMetaMethod_parameterNames".}
proc fcQMetaMethod_tag(self: pointer, ): cstring {.importc: "QMetaMethod_tag".}
proc fcQMetaMethod_access(self: pointer, ): cint {.importc: "QMetaMethod_access".}
proc fcQMetaMethod_methodType(self: pointer, ): cint {.importc: "QMetaMethod_methodType".}
proc fcQMetaMethod_attributes(self: pointer, ): cint {.importc: "QMetaMethod_attributes".}
proc fcQMetaMethod_methodIndex(self: pointer, ): cint {.importc: "QMetaMethod_methodIndex".}
proc fcQMetaMethod_relativeMethodIndex(self: pointer, ): cint {.importc: "QMetaMethod_relativeMethodIndex".}
proc fcQMetaMethod_revision(self: pointer, ): cint {.importc: "QMetaMethod_revision".}
proc fcQMetaMethod_isConst(self: pointer, ): bool {.importc: "QMetaMethod_isConst".}
proc fcQMetaMethod_enclosingMetaObject(self: pointer, ): pointer {.importc: "QMetaMethod_enclosingMetaObject".}
proc fcQMetaMethod_invoke(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer): bool {.importc: "QMetaMethod_invoke".}
proc fcQMetaMethod_invoke2(self: pointer, objectVal: pointer, returnValue: pointer): bool {.importc: "QMetaMethod_invoke2".}
proc fcQMetaMethod_invoke3(self: pointer, objectVal: pointer, connectionType: cint): bool {.importc: "QMetaMethod_invoke3".}
proc fcQMetaMethod_invokeWithObject(self: pointer, objectVal: pointer): bool {.importc: "QMetaMethod_invokeWithObject".}
proc fcQMetaMethod_invokeOnGadget(self: pointer, gadget: pointer, returnValue: pointer): bool {.importc: "QMetaMethod_invokeOnGadget".}
proc fcQMetaMethod_invokeOnGadgetWithGadget(self: pointer, gadget: pointer): bool {.importc: "QMetaMethod_invokeOnGadgetWithGadget".}
proc fcQMetaMethod_isValid(self: pointer, ): bool {.importc: "QMetaMethod_isValid".}
proc fcQMetaMethod_invoke4(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer): bool {.importc: "QMetaMethod_invoke4".}
proc fcQMetaMethod_invoke5(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer, val1: pointer): bool {.importc: "QMetaMethod_invoke5".}
proc fcQMetaMethod_invoke6(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaMethod_invoke6".}
proc fcQMetaMethod_invoke7(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaMethod_invoke7".}
proc fcQMetaMethod_invoke8(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaMethod_invoke8".}
proc fcQMetaMethod_invoke9(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaMethod_invoke9".}
proc fcQMetaMethod_invoke10(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaMethod_invoke10".}
proc fcQMetaMethod_invoke11(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaMethod_invoke11".}
proc fcQMetaMethod_invoke12(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaMethod_invoke12".}
proc fcQMetaMethod_invoke13(self: pointer, objectVal: pointer, connectionType: cint, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaMethod_invoke13".}
proc fcQMetaMethod_invoke32(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer): bool {.importc: "QMetaMethod_invoke32".}
proc fcQMetaMethod_invoke42(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer, val1: pointer): bool {.importc: "QMetaMethod_invoke42".}
proc fcQMetaMethod_invoke52(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaMethod_invoke52".}
proc fcQMetaMethod_invoke62(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaMethod_invoke62".}
proc fcQMetaMethod_invoke72(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaMethod_invoke72".}
proc fcQMetaMethod_invoke82(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaMethod_invoke82".}
proc fcQMetaMethod_invoke92(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaMethod_invoke92".}
proc fcQMetaMethod_invoke102(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaMethod_invoke102".}
proc fcQMetaMethod_invoke112(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaMethod_invoke112".}
proc fcQMetaMethod_invoke122(self: pointer, objectVal: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaMethod_invoke122".}
proc fcQMetaMethod_invoke33(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer): bool {.importc: "QMetaMethod_invoke33".}
proc fcQMetaMethod_invoke43(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer, val1: pointer): bool {.importc: "QMetaMethod_invoke43".}
proc fcQMetaMethod_invoke53(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaMethod_invoke53".}
proc fcQMetaMethod_invoke63(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaMethod_invoke63".}
proc fcQMetaMethod_invoke73(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaMethod_invoke73".}
proc fcQMetaMethod_invoke83(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaMethod_invoke83".}
proc fcQMetaMethod_invoke93(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaMethod_invoke93".}
proc fcQMetaMethod_invoke103(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaMethod_invoke103".}
proc fcQMetaMethod_invoke113(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaMethod_invoke113".}
proc fcQMetaMethod_invoke123(self: pointer, objectVal: pointer, connectionType: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaMethod_invoke123".}
proc fcQMetaMethod_invoke22(self: pointer, objectVal: pointer, val0: pointer): bool {.importc: "QMetaMethod_invoke22".}
proc fcQMetaMethod_invoke34(self: pointer, objectVal: pointer, val0: pointer, val1: pointer): bool {.importc: "QMetaMethod_invoke34".}
proc fcQMetaMethod_invoke44(self: pointer, objectVal: pointer, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaMethod_invoke44".}
proc fcQMetaMethod_invoke54(self: pointer, objectVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaMethod_invoke54".}
proc fcQMetaMethod_invoke64(self: pointer, objectVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaMethod_invoke64".}
proc fcQMetaMethod_invoke74(self: pointer, objectVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaMethod_invoke74".}
proc fcQMetaMethod_invoke84(self: pointer, objectVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaMethod_invoke84".}
proc fcQMetaMethod_invoke94(self: pointer, objectVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaMethod_invoke94".}
proc fcQMetaMethod_invoke104(self: pointer, objectVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaMethod_invoke104".}
proc fcQMetaMethod_invoke114(self: pointer, objectVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaMethod_invoke114".}
proc fcQMetaMethod_invokeOnGadget3(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer): bool {.importc: "QMetaMethod_invokeOnGadget3".}
proc fcQMetaMethod_invokeOnGadget4(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer, val1: pointer): bool {.importc: "QMetaMethod_invokeOnGadget4".}
proc fcQMetaMethod_invokeOnGadget5(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaMethod_invokeOnGadget5".}
proc fcQMetaMethod_invokeOnGadget6(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaMethod_invokeOnGadget6".}
proc fcQMetaMethod_invokeOnGadget7(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaMethod_invokeOnGadget7".}
proc fcQMetaMethod_invokeOnGadget8(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaMethod_invokeOnGadget8".}
proc fcQMetaMethod_invokeOnGadget9(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaMethod_invokeOnGadget9".}
proc fcQMetaMethod_invokeOnGadget10(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaMethod_invokeOnGadget10".}
proc fcQMetaMethod_invokeOnGadget11(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaMethod_invokeOnGadget11".}
proc fcQMetaMethod_invokeOnGadget12(self: pointer, gadget: pointer, returnValue: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaMethod_invokeOnGadget12".}
proc fcQMetaMethod_invokeOnGadget2(self: pointer, gadget: pointer, val0: pointer): bool {.importc: "QMetaMethod_invokeOnGadget2".}
proc fcQMetaMethod_invokeOnGadget32(self: pointer, gadget: pointer, val0: pointer, val1: pointer): bool {.importc: "QMetaMethod_invokeOnGadget32".}
proc fcQMetaMethod_invokeOnGadget42(self: pointer, gadget: pointer, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaMethod_invokeOnGadget42".}
proc fcQMetaMethod_invokeOnGadget52(self: pointer, gadget: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaMethod_invokeOnGadget52".}
proc fcQMetaMethod_invokeOnGadget62(self: pointer, gadget: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaMethod_invokeOnGadget62".}
proc fcQMetaMethod_invokeOnGadget72(self: pointer, gadget: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaMethod_invokeOnGadget72".}
proc fcQMetaMethod_invokeOnGadget82(self: pointer, gadget: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaMethod_invokeOnGadget82".}
proc fcQMetaMethod_invokeOnGadget92(self: pointer, gadget: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaMethod_invokeOnGadget92".}
proc fcQMetaMethod_invokeOnGadget102(self: pointer, gadget: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaMethod_invokeOnGadget102".}
proc fcQMetaMethod_invokeOnGadget112(self: pointer, gadget: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaMethod_invokeOnGadget112".}
proc fcQMetaMethod_delete(self: pointer) {.importc: "QMetaMethod_delete".}
proc fcQMetaEnum_new(): ptr cQMetaEnum {.importc: "QMetaEnum_new".}
proc fcQMetaEnum_new2(param1: pointer): ptr cQMetaEnum {.importc: "QMetaEnum_new2".}
proc fcQMetaEnum_name(self: pointer, ): cstring {.importc: "QMetaEnum_name".}
proc fcQMetaEnum_enumName(self: pointer, ): cstring {.importc: "QMetaEnum_enumName".}
proc fcQMetaEnum_isFlag(self: pointer, ): bool {.importc: "QMetaEnum_isFlag".}
proc fcQMetaEnum_isScoped(self: pointer, ): bool {.importc: "QMetaEnum_isScoped".}
proc fcQMetaEnum_keyCount(self: pointer, ): cint {.importc: "QMetaEnum_keyCount".}
proc fcQMetaEnum_key(self: pointer, index: cint): cstring {.importc: "QMetaEnum_key".}
proc fcQMetaEnum_value(self: pointer, index: cint): cint {.importc: "QMetaEnum_value".}
proc fcQMetaEnum_scope(self: pointer, ): cstring {.importc: "QMetaEnum_scope".}
proc fcQMetaEnum_keyToValue(self: pointer, key: cstring): cint {.importc: "QMetaEnum_keyToValue".}
proc fcQMetaEnum_valueToKey(self: pointer, value: cint): cstring {.importc: "QMetaEnum_valueToKey".}
proc fcQMetaEnum_keysToValue(self: pointer, keys: cstring): cint {.importc: "QMetaEnum_keysToValue".}
proc fcQMetaEnum_valueToKeys(self: pointer, value: cint): struct_miqt_string {.importc: "QMetaEnum_valueToKeys".}
proc fcQMetaEnum_enclosingMetaObject(self: pointer, ): pointer {.importc: "QMetaEnum_enclosingMetaObject".}
proc fcQMetaEnum_isValid(self: pointer, ): bool {.importc: "QMetaEnum_isValid".}
proc fcQMetaEnum_keyToValue2(self: pointer, key: cstring, ok: ptr bool): cint {.importc: "QMetaEnum_keyToValue2".}
proc fcQMetaEnum_keysToValue2(self: pointer, keys: cstring, ok: ptr bool): cint {.importc: "QMetaEnum_keysToValue2".}
proc fcQMetaEnum_delete(self: pointer) {.importc: "QMetaEnum_delete".}
proc fcQMetaProperty_new(): ptr cQMetaProperty {.importc: "QMetaProperty_new".}
proc fcQMetaProperty_name(self: pointer, ): cstring {.importc: "QMetaProperty_name".}
proc fcQMetaProperty_typeName(self: pointer, ): cstring {.importc: "QMetaProperty_typeName".}
proc fcQMetaProperty_typeX(self: pointer, ): cint {.importc: "QMetaProperty_type".}
proc fcQMetaProperty_userType(self: pointer, ): cint {.importc: "QMetaProperty_userType".}
proc fcQMetaProperty_typeId(self: pointer, ): cint {.importc: "QMetaProperty_typeId".}
proc fcQMetaProperty_metaType(self: pointer, ): pointer {.importc: "QMetaProperty_metaType".}
proc fcQMetaProperty_propertyIndex(self: pointer, ): cint {.importc: "QMetaProperty_propertyIndex".}
proc fcQMetaProperty_relativePropertyIndex(self: pointer, ): cint {.importc: "QMetaProperty_relativePropertyIndex".}
proc fcQMetaProperty_isReadable(self: pointer, ): bool {.importc: "QMetaProperty_isReadable".}
proc fcQMetaProperty_isWritable(self: pointer, ): bool {.importc: "QMetaProperty_isWritable".}
proc fcQMetaProperty_isResettable(self: pointer, ): bool {.importc: "QMetaProperty_isResettable".}
proc fcQMetaProperty_isDesignable(self: pointer, ): bool {.importc: "QMetaProperty_isDesignable".}
proc fcQMetaProperty_isScriptable(self: pointer, ): bool {.importc: "QMetaProperty_isScriptable".}
proc fcQMetaProperty_isStored(self: pointer, ): bool {.importc: "QMetaProperty_isStored".}
proc fcQMetaProperty_isUser(self: pointer, ): bool {.importc: "QMetaProperty_isUser".}
proc fcQMetaProperty_isConstant(self: pointer, ): bool {.importc: "QMetaProperty_isConstant".}
proc fcQMetaProperty_isFinal(self: pointer, ): bool {.importc: "QMetaProperty_isFinal".}
proc fcQMetaProperty_isRequired(self: pointer, ): bool {.importc: "QMetaProperty_isRequired".}
proc fcQMetaProperty_isBindable(self: pointer, ): bool {.importc: "QMetaProperty_isBindable".}
proc fcQMetaProperty_isFlagType(self: pointer, ): bool {.importc: "QMetaProperty_isFlagType".}
proc fcQMetaProperty_isEnumType(self: pointer, ): bool {.importc: "QMetaProperty_isEnumType".}
proc fcQMetaProperty_enumerator(self: pointer, ): pointer {.importc: "QMetaProperty_enumerator".}
proc fcQMetaProperty_hasNotifySignal(self: pointer, ): bool {.importc: "QMetaProperty_hasNotifySignal".}
proc fcQMetaProperty_notifySignal(self: pointer, ): pointer {.importc: "QMetaProperty_notifySignal".}
proc fcQMetaProperty_notifySignalIndex(self: pointer, ): cint {.importc: "QMetaProperty_notifySignalIndex".}
proc fcQMetaProperty_revision(self: pointer, ): cint {.importc: "QMetaProperty_revision".}
proc fcQMetaProperty_read(self: pointer, obj: pointer): pointer {.importc: "QMetaProperty_read".}
proc fcQMetaProperty_write(self: pointer, obj: pointer, value: pointer): bool {.importc: "QMetaProperty_write".}
proc fcQMetaProperty_reset(self: pointer, obj: pointer): bool {.importc: "QMetaProperty_reset".}
proc fcQMetaProperty_bindable(self: pointer, objectVal: pointer): pointer {.importc: "QMetaProperty_bindable".}
proc fcQMetaProperty_readOnGadget(self: pointer, gadget: pointer): pointer {.importc: "QMetaProperty_readOnGadget".}
proc fcQMetaProperty_writeOnGadget(self: pointer, gadget: pointer, value: pointer): bool {.importc: "QMetaProperty_writeOnGadget".}
proc fcQMetaProperty_resetOnGadget(self: pointer, gadget: pointer): bool {.importc: "QMetaProperty_resetOnGadget".}
proc fcQMetaProperty_hasStdCppSet(self: pointer, ): bool {.importc: "QMetaProperty_hasStdCppSet".}
proc fcQMetaProperty_isAlias(self: pointer, ): bool {.importc: "QMetaProperty_isAlias".}
proc fcQMetaProperty_isValid(self: pointer, ): bool {.importc: "QMetaProperty_isValid".}
proc fcQMetaProperty_enclosingMetaObject(self: pointer, ): pointer {.importc: "QMetaProperty_enclosingMetaObject".}
proc fcQMetaProperty_delete(self: pointer) {.importc: "QMetaProperty_delete".}
proc fcQMetaClassInfo_new(): ptr cQMetaClassInfo {.importc: "QMetaClassInfo_new".}
proc fcQMetaClassInfo_name(self: pointer, ): cstring {.importc: "QMetaClassInfo_name".}
proc fcQMetaClassInfo_value(self: pointer, ): cstring {.importc: "QMetaClassInfo_value".}
proc fcQMetaClassInfo_enclosingMetaObject(self: pointer, ): pointer {.importc: "QMetaClassInfo_enclosingMetaObject".}
proc fcQMetaClassInfo_delete(self: pointer) {.importc: "QMetaClassInfo_delete".}


func init*(T: type QMetaMethod, h: ptr cQMetaMethod): QMetaMethod =
  T(h: h)
proc create*(T: type QMetaMethod, ): QMetaMethod =

  QMetaMethod.init(fcQMetaMethod_new())
proc create*(T: type QMetaMethod, param1: QMetaMethod): QMetaMethod =

  QMetaMethod.init(fcQMetaMethod_new2(param1.h))
proc methodSignature*(self: QMetaMethod, ): seq[byte] =

  var v_bytearray = fcQMetaMethod_methodSignature(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc name*(self: QMetaMethod, ): seq[byte] =

  var v_bytearray = fcQMetaMethod_name(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc typeName*(self: QMetaMethod, ): cstring =

  (fcQMetaMethod_typeName(self.h))

proc returnType*(self: QMetaMethod, ): cint =

  fcQMetaMethod_returnType(self.h)

proc returnMetaType*(self: QMetaMethod, ): gen_qmetatype.QMetaType =

  gen_qmetatype.QMetaType(h: fcQMetaMethod_returnMetaType(self.h))

proc parameterCount*(self: QMetaMethod, ): cint =

  fcQMetaMethod_parameterCount(self.h)

proc parameterType*(self: QMetaMethod, index: cint): cint =

  fcQMetaMethod_parameterType(self.h, index)

proc parameterMetaType*(self: QMetaMethod, index: cint): gen_qmetatype.QMetaType =

  gen_qmetatype.QMetaType(h: fcQMetaMethod_parameterMetaType(self.h, index))

proc getParameterTypes*(self: QMetaMethod, types: ptr cint): void =

  fcQMetaMethod_getParameterTypes(self.h, types)

proc parameterTypes*(self: QMetaMethod, ): seq[seq[byte]] =

  var v_ma = fcQMetaMethod_parameterTypes(self.h)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc parameterTypeName*(self: QMetaMethod, index: cint): seq[byte] =

  var v_bytearray = fcQMetaMethod_parameterTypeName(self.h, index)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc parameterNames*(self: QMetaMethod, ): seq[seq[byte]] =

  var v_ma = fcQMetaMethod_parameterNames(self.h)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc tag*(self: QMetaMethod, ): cstring =

  (fcQMetaMethod_tag(self.h))

proc access*(self: QMetaMethod, ): QMetaMethodAccess =

  QMetaMethodAccess(fcQMetaMethod_access(self.h))

proc methodType*(self: QMetaMethod, ): QMetaMethodMethodType =

  QMetaMethodMethodType(fcQMetaMethod_methodType(self.h))

proc attributes*(self: QMetaMethod, ): cint =

  fcQMetaMethod_attributes(self.h)

proc methodIndex*(self: QMetaMethod, ): cint =

  fcQMetaMethod_methodIndex(self.h)

proc relativeMethodIndex*(self: QMetaMethod, ): cint =

  fcQMetaMethod_relativeMethodIndex(self.h)

proc revision*(self: QMetaMethod, ): cint =

  fcQMetaMethod_revision(self.h)

proc isConst*(self: QMetaMethod, ): bool =

  fcQMetaMethod_isConst(self.h)

proc enclosingMetaObject*(self: QMetaMethod, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMetaMethod_enclosingMetaObject(self.h))

proc invoke*(self: QMetaMethod, objectVal: gen_qobject.QObject, connectionType: gen_qnamespace.ConnectionType, returnValue: gen_qobjectdefs.QGenericReturnArgument): bool =

  fcQMetaMethod_invoke(self.h, objectVal.h, cint(connectionType), returnValue.h)

proc invoke2*(self: QMetaMethod, objectVal: gen_qobject.QObject, returnValue: gen_qobjectdefs.QGenericReturnArgument): bool =

  fcQMetaMethod_invoke2(self.h, objectVal.h, returnValue.h)

proc invoke3*(self: QMetaMethod, objectVal: gen_qobject.QObject, connectionType: gen_qnamespace.ConnectionType): bool =

  fcQMetaMethod_invoke3(self.h, objectVal.h, cint(connectionType))

proc invokeWithObject*(self: QMetaMethod, objectVal: gen_qobject.QObject): bool =

  fcQMetaMethod_invokeWithObject(self.h, objectVal.h)

proc invokeOnGadget*(self: QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs.QGenericReturnArgument): bool =

  fcQMetaMethod_invokeOnGadget(self.h, gadget, returnValue.h)

proc invokeOnGadgetWithGadget*(self: QMetaMethod, gadget: pointer): bool =

  fcQMetaMethod_invokeOnGadgetWithGadget(self.h, gadget)

proc isValid*(self: QMetaMethod, ): bool =

  fcQMetaMethod_isValid(self.h)

proc invoke4*(self: QMetaMethod, objectVal: gen_qobject.QObject, connectionType: gen_qnamespace.ConnectionType, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke4(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h)

proc invoke5*(self: QMetaMethod, objectVal: gen_qobject.QObject, connectionType: gen_qnamespace.ConnectionType, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke5(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h, val1.h)

proc invoke6*(self: QMetaMethod, objectVal: gen_qobject.QObject, connectionType: gen_qnamespace.ConnectionType, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke6(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h, val1.h, val2.h)

proc invoke7*(self: QMetaMethod, objectVal: gen_qobject.QObject, connectionType: gen_qnamespace.ConnectionType, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke7(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h, val1.h, val2.h, val3.h)

proc invoke8*(self: QMetaMethod, objectVal: gen_qobject.QObject, connectionType: gen_qnamespace.ConnectionType, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke8(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h)

proc invoke9*(self: QMetaMethod, objectVal: gen_qobject.QObject, connectionType: gen_qnamespace.ConnectionType, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke9(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invoke10*(self: QMetaMethod, objectVal: gen_qobject.QObject, connectionType: gen_qnamespace.ConnectionType, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument, val6: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke10(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invoke11*(self: QMetaMethod, objectVal: gen_qobject.QObject, connectionType: gen_qnamespace.ConnectionType, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument, val6: gen_qobjectdefs.QGenericArgument, val7: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke11(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invoke12*(self: QMetaMethod, objectVal: gen_qobject.QObject, connectionType: gen_qnamespace.ConnectionType, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument, val6: gen_qobjectdefs.QGenericArgument, val7: gen_qobjectdefs.QGenericArgument, val8: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke12(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invoke13*(self: QMetaMethod, objectVal: gen_qobject.QObject, connectionType: gen_qnamespace.ConnectionType, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument, val6: gen_qobjectdefs.QGenericArgument, val7: gen_qobjectdefs.QGenericArgument, val8: gen_qobjectdefs.QGenericArgument, val9: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke13(self.h, objectVal.h, cint(connectionType), returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc invoke32*(self: QMetaMethod, objectVal: gen_qobject.QObject, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke32(self.h, objectVal.h, returnValue.h, val0.h)

proc invoke42*(self: QMetaMethod, objectVal: gen_qobject.QObject, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke42(self.h, objectVal.h, returnValue.h, val0.h, val1.h)

proc invoke52*(self: QMetaMethod, objectVal: gen_qobject.QObject, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke52(self.h, objectVal.h, returnValue.h, val0.h, val1.h, val2.h)

proc invoke62*(self: QMetaMethod, objectVal: gen_qobject.QObject, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke62(self.h, objectVal.h, returnValue.h, val0.h, val1.h, val2.h, val3.h)

proc invoke72*(self: QMetaMethod, objectVal: gen_qobject.QObject, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke72(self.h, objectVal.h, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h)

proc invoke82*(self: QMetaMethod, objectVal: gen_qobject.QObject, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke82(self.h, objectVal.h, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invoke92*(self: QMetaMethod, objectVal: gen_qobject.QObject, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument, val6: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke92(self.h, objectVal.h, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invoke102*(self: QMetaMethod, objectVal: gen_qobject.QObject, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument, val6: gen_qobjectdefs.QGenericArgument, val7: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke102(self.h, objectVal.h, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invoke112*(self: QMetaMethod, objectVal: gen_qobject.QObject, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument, val6: gen_qobjectdefs.QGenericArgument, val7: gen_qobjectdefs.QGenericArgument, val8: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke112(self.h, objectVal.h, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invoke122*(self: QMetaMethod, objectVal: gen_qobject.QObject, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument, val6: gen_qobjectdefs.QGenericArgument, val7: gen_qobjectdefs.QGenericArgument, val8: gen_qobjectdefs.QGenericArgument, val9: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke122(self.h, objectVal.h, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc invoke33*(self: QMetaMethod, objectVal: gen_qobject.QObject, connectionType: gen_qnamespace.ConnectionType, val0: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke33(self.h, objectVal.h, cint(connectionType), val0.h)

proc invoke43*(self: QMetaMethod, objectVal: gen_qobject.QObject, connectionType: gen_qnamespace.ConnectionType, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke43(self.h, objectVal.h, cint(connectionType), val0.h, val1.h)

proc invoke53*(self: QMetaMethod, objectVal: gen_qobject.QObject, connectionType: gen_qnamespace.ConnectionType, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke53(self.h, objectVal.h, cint(connectionType), val0.h, val1.h, val2.h)

proc invoke63*(self: QMetaMethod, objectVal: gen_qobject.QObject, connectionType: gen_qnamespace.ConnectionType, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke63(self.h, objectVal.h, cint(connectionType), val0.h, val1.h, val2.h, val3.h)

proc invoke73*(self: QMetaMethod, objectVal: gen_qobject.QObject, connectionType: gen_qnamespace.ConnectionType, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke73(self.h, objectVal.h, cint(connectionType), val0.h, val1.h, val2.h, val3.h, val4.h)

proc invoke83*(self: QMetaMethod, objectVal: gen_qobject.QObject, connectionType: gen_qnamespace.ConnectionType, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke83(self.h, objectVal.h, cint(connectionType), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invoke93*(self: QMetaMethod, objectVal: gen_qobject.QObject, connectionType: gen_qnamespace.ConnectionType, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument, val6: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke93(self.h, objectVal.h, cint(connectionType), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invoke103*(self: QMetaMethod, objectVal: gen_qobject.QObject, connectionType: gen_qnamespace.ConnectionType, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument, val6: gen_qobjectdefs.QGenericArgument, val7: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke103(self.h, objectVal.h, cint(connectionType), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invoke113*(self: QMetaMethod, objectVal: gen_qobject.QObject, connectionType: gen_qnamespace.ConnectionType, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument, val6: gen_qobjectdefs.QGenericArgument, val7: gen_qobjectdefs.QGenericArgument, val8: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke113(self.h, objectVal.h, cint(connectionType), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invoke123*(self: QMetaMethod, objectVal: gen_qobject.QObject, connectionType: gen_qnamespace.ConnectionType, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument, val6: gen_qobjectdefs.QGenericArgument, val7: gen_qobjectdefs.QGenericArgument, val8: gen_qobjectdefs.QGenericArgument, val9: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke123(self.h, objectVal.h, cint(connectionType), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc invoke22*(self: QMetaMethod, objectVal: gen_qobject.QObject, val0: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke22(self.h, objectVal.h, val0.h)

proc invoke34*(self: QMetaMethod, objectVal: gen_qobject.QObject, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke34(self.h, objectVal.h, val0.h, val1.h)

proc invoke44*(self: QMetaMethod, objectVal: gen_qobject.QObject, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke44(self.h, objectVal.h, val0.h, val1.h, val2.h)

proc invoke54*(self: QMetaMethod, objectVal: gen_qobject.QObject, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke54(self.h, objectVal.h, val0.h, val1.h, val2.h, val3.h)

proc invoke64*(self: QMetaMethod, objectVal: gen_qobject.QObject, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke64(self.h, objectVal.h, val0.h, val1.h, val2.h, val3.h, val4.h)

proc invoke74*(self: QMetaMethod, objectVal: gen_qobject.QObject, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke74(self.h, objectVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invoke84*(self: QMetaMethod, objectVal: gen_qobject.QObject, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument, val6: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke84(self.h, objectVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invoke94*(self: QMetaMethod, objectVal: gen_qobject.QObject, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument, val6: gen_qobjectdefs.QGenericArgument, val7: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke94(self.h, objectVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invoke104*(self: QMetaMethod, objectVal: gen_qobject.QObject, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument, val6: gen_qobjectdefs.QGenericArgument, val7: gen_qobjectdefs.QGenericArgument, val8: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke104(self.h, objectVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invoke114*(self: QMetaMethod, objectVal: gen_qobject.QObject, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument, val6: gen_qobjectdefs.QGenericArgument, val7: gen_qobjectdefs.QGenericArgument, val8: gen_qobjectdefs.QGenericArgument, val9: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invoke114(self.h, objectVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc invokeOnGadget3*(self: QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invokeOnGadget3(self.h, gadget, returnValue.h, val0.h)

proc invokeOnGadget4*(self: QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invokeOnGadget4(self.h, gadget, returnValue.h, val0.h, val1.h)

proc invokeOnGadget5*(self: QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invokeOnGadget5(self.h, gadget, returnValue.h, val0.h, val1.h, val2.h)

proc invokeOnGadget6*(self: QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invokeOnGadget6(self.h, gadget, returnValue.h, val0.h, val1.h, val2.h, val3.h)

proc invokeOnGadget7*(self: QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invokeOnGadget7(self.h, gadget, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h)

proc invokeOnGadget8*(self: QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invokeOnGadget8(self.h, gadget, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invokeOnGadget9*(self: QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument, val6: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invokeOnGadget9(self.h, gadget, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invokeOnGadget10*(self: QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument, val6: gen_qobjectdefs.QGenericArgument, val7: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invokeOnGadget10(self.h, gadget, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invokeOnGadget11*(self: QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument, val6: gen_qobjectdefs.QGenericArgument, val7: gen_qobjectdefs.QGenericArgument, val8: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invokeOnGadget11(self.h, gadget, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invokeOnGadget12*(self: QMetaMethod, gadget: pointer, returnValue: gen_qobjectdefs.QGenericReturnArgument, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument, val6: gen_qobjectdefs.QGenericArgument, val7: gen_qobjectdefs.QGenericArgument, val8: gen_qobjectdefs.QGenericArgument, val9: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invokeOnGadget12(self.h, gadget, returnValue.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc invokeOnGadget2*(self: QMetaMethod, gadget: pointer, val0: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invokeOnGadget2(self.h, gadget, val0.h)

proc invokeOnGadget32*(self: QMetaMethod, gadget: pointer, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invokeOnGadget32(self.h, gadget, val0.h, val1.h)

proc invokeOnGadget42*(self: QMetaMethod, gadget: pointer, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invokeOnGadget42(self.h, gadget, val0.h, val1.h, val2.h)

proc invokeOnGadget52*(self: QMetaMethod, gadget: pointer, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invokeOnGadget52(self.h, gadget, val0.h, val1.h, val2.h, val3.h)

proc invokeOnGadget62*(self: QMetaMethod, gadget: pointer, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invokeOnGadget62(self.h, gadget, val0.h, val1.h, val2.h, val3.h, val4.h)

proc invokeOnGadget72*(self: QMetaMethod, gadget: pointer, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invokeOnGadget72(self.h, gadget, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invokeOnGadget82*(self: QMetaMethod, gadget: pointer, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument, val6: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invokeOnGadget82(self.h, gadget, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invokeOnGadget92*(self: QMetaMethod, gadget: pointer, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument, val6: gen_qobjectdefs.QGenericArgument, val7: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invokeOnGadget92(self.h, gadget, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invokeOnGadget102*(self: QMetaMethod, gadget: pointer, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument, val6: gen_qobjectdefs.QGenericArgument, val7: gen_qobjectdefs.QGenericArgument, val8: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invokeOnGadget102(self.h, gadget, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invokeOnGadget112*(self: QMetaMethod, gadget: pointer, val0: gen_qobjectdefs.QGenericArgument, val1: gen_qobjectdefs.QGenericArgument, val2: gen_qobjectdefs.QGenericArgument, val3: gen_qobjectdefs.QGenericArgument, val4: gen_qobjectdefs.QGenericArgument, val5: gen_qobjectdefs.QGenericArgument, val6: gen_qobjectdefs.QGenericArgument, val7: gen_qobjectdefs.QGenericArgument, val8: gen_qobjectdefs.QGenericArgument, val9: gen_qobjectdefs.QGenericArgument): bool =

  fcQMetaMethod_invokeOnGadget112(self.h, gadget, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc delete*(self: QMetaMethod) =
  fcQMetaMethod_delete(self.h)

func init*(T: type QMetaEnum, h: ptr cQMetaEnum): QMetaEnum =
  T(h: h)
proc create*(T: type QMetaEnum, ): QMetaEnum =

  QMetaEnum.init(fcQMetaEnum_new())
proc create*(T: type QMetaEnum, param1: QMetaEnum): QMetaEnum =

  QMetaEnum.init(fcQMetaEnum_new2(param1.h))
proc name*(self: QMetaEnum, ): cstring =

  (fcQMetaEnum_name(self.h))

proc enumName*(self: QMetaEnum, ): cstring =

  (fcQMetaEnum_enumName(self.h))

proc isFlag*(self: QMetaEnum, ): bool =

  fcQMetaEnum_isFlag(self.h)

proc isScoped*(self: QMetaEnum, ): bool =

  fcQMetaEnum_isScoped(self.h)

proc keyCount*(self: QMetaEnum, ): cint =

  fcQMetaEnum_keyCount(self.h)

proc key*(self: QMetaEnum, index: cint): cstring =

  (fcQMetaEnum_key(self.h, index))

proc value*(self: QMetaEnum, index: cint): cint =

  fcQMetaEnum_value(self.h, index)

proc scope*(self: QMetaEnum, ): cstring =

  (fcQMetaEnum_scope(self.h))

proc keyToValue*(self: QMetaEnum, key: cstring): cint =

  fcQMetaEnum_keyToValue(self.h, key)

proc valueToKey*(self: QMetaEnum, value: cint): cstring =

  (fcQMetaEnum_valueToKey(self.h, value))

proc keysToValue*(self: QMetaEnum, keys: cstring): cint =

  fcQMetaEnum_keysToValue(self.h, keys)

proc valueToKeys*(self: QMetaEnum, value: cint): seq[byte] =

  var v_bytearray = fcQMetaEnum_valueToKeys(self.h, value)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc enclosingMetaObject*(self: QMetaEnum, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMetaEnum_enclosingMetaObject(self.h))

proc isValid*(self: QMetaEnum, ): bool =

  fcQMetaEnum_isValid(self.h)

proc keyToValue2*(self: QMetaEnum, key: cstring, ok: ptr bool): cint =

  fcQMetaEnum_keyToValue2(self.h, key, ok)

proc keysToValue2*(self: QMetaEnum, keys: cstring, ok: ptr bool): cint =

  fcQMetaEnum_keysToValue2(self.h, keys, ok)

proc delete*(self: QMetaEnum) =
  fcQMetaEnum_delete(self.h)

func init*(T: type QMetaProperty, h: ptr cQMetaProperty): QMetaProperty =
  T(h: h)
proc create*(T: type QMetaProperty, ): QMetaProperty =

  QMetaProperty.init(fcQMetaProperty_new())
proc name*(self: QMetaProperty, ): cstring =

  (fcQMetaProperty_name(self.h))

proc typeName*(self: QMetaProperty, ): cstring =

  (fcQMetaProperty_typeName(self.h))

proc typeX*(self: QMetaProperty, ): gen_qvariant.QVariantType =

  gen_qvariant.QVariantType(fcQMetaProperty_typeX(self.h))

proc userType*(self: QMetaProperty, ): cint =

  fcQMetaProperty_userType(self.h)

proc typeId*(self: QMetaProperty, ): cint =

  fcQMetaProperty_typeId(self.h)

proc metaType*(self: QMetaProperty, ): gen_qmetatype.QMetaType =

  gen_qmetatype.QMetaType(h: fcQMetaProperty_metaType(self.h))

proc propertyIndex*(self: QMetaProperty, ): cint =

  fcQMetaProperty_propertyIndex(self.h)

proc relativePropertyIndex*(self: QMetaProperty, ): cint =

  fcQMetaProperty_relativePropertyIndex(self.h)

proc isReadable*(self: QMetaProperty, ): bool =

  fcQMetaProperty_isReadable(self.h)

proc isWritable*(self: QMetaProperty, ): bool =

  fcQMetaProperty_isWritable(self.h)

proc isResettable*(self: QMetaProperty, ): bool =

  fcQMetaProperty_isResettable(self.h)

proc isDesignable*(self: QMetaProperty, ): bool =

  fcQMetaProperty_isDesignable(self.h)

proc isScriptable*(self: QMetaProperty, ): bool =

  fcQMetaProperty_isScriptable(self.h)

proc isStored*(self: QMetaProperty, ): bool =

  fcQMetaProperty_isStored(self.h)

proc isUser*(self: QMetaProperty, ): bool =

  fcQMetaProperty_isUser(self.h)

proc isConstant*(self: QMetaProperty, ): bool =

  fcQMetaProperty_isConstant(self.h)

proc isFinal*(self: QMetaProperty, ): bool =

  fcQMetaProperty_isFinal(self.h)

proc isRequired*(self: QMetaProperty, ): bool =

  fcQMetaProperty_isRequired(self.h)

proc isBindable*(self: QMetaProperty, ): bool =

  fcQMetaProperty_isBindable(self.h)

proc isFlagType*(self: QMetaProperty, ): bool =

  fcQMetaProperty_isFlagType(self.h)

proc isEnumType*(self: QMetaProperty, ): bool =

  fcQMetaProperty_isEnumType(self.h)

proc enumerator*(self: QMetaProperty, ): QMetaEnum =

  QMetaEnum(h: fcQMetaProperty_enumerator(self.h))

proc hasNotifySignal*(self: QMetaProperty, ): bool =

  fcQMetaProperty_hasNotifySignal(self.h)

proc notifySignal*(self: QMetaProperty, ): QMetaMethod =

  QMetaMethod(h: fcQMetaProperty_notifySignal(self.h))

proc notifySignalIndex*(self: QMetaProperty, ): cint =

  fcQMetaProperty_notifySignalIndex(self.h)

proc revision*(self: QMetaProperty, ): cint =

  fcQMetaProperty_revision(self.h)

proc read*(self: QMetaProperty, obj: gen_qobject.QObject): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQMetaProperty_read(self.h, obj.h))

proc write*(self: QMetaProperty, obj: gen_qobject.QObject, value: gen_qvariant.QVariant): bool =

  fcQMetaProperty_write(self.h, obj.h, value.h)

proc reset*(self: QMetaProperty, obj: gen_qobject.QObject): bool =

  fcQMetaProperty_reset(self.h, obj.h)

proc bindable*(self: QMetaProperty, objectVal: gen_qobject.QObject): gen_qproperty.QUntypedBindable =

  gen_qproperty.QUntypedBindable(h: fcQMetaProperty_bindable(self.h, objectVal.h))

proc readOnGadget*(self: QMetaProperty, gadget: pointer): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQMetaProperty_readOnGadget(self.h, gadget))

proc writeOnGadget*(self: QMetaProperty, gadget: pointer, value: gen_qvariant.QVariant): bool =

  fcQMetaProperty_writeOnGadget(self.h, gadget, value.h)

proc resetOnGadget*(self: QMetaProperty, gadget: pointer): bool =

  fcQMetaProperty_resetOnGadget(self.h, gadget)

proc hasStdCppSet*(self: QMetaProperty, ): bool =

  fcQMetaProperty_hasStdCppSet(self.h)

proc isAlias*(self: QMetaProperty, ): bool =

  fcQMetaProperty_isAlias(self.h)

proc isValid*(self: QMetaProperty, ): bool =

  fcQMetaProperty_isValid(self.h)

proc enclosingMetaObject*(self: QMetaProperty, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMetaProperty_enclosingMetaObject(self.h))

proc delete*(self: QMetaProperty) =
  fcQMetaProperty_delete(self.h)

func init*(T: type QMetaClassInfo, h: ptr cQMetaClassInfo): QMetaClassInfo =
  T(h: h)
proc create*(T: type QMetaClassInfo, ): QMetaClassInfo =

  QMetaClassInfo.init(fcQMetaClassInfo_new())
proc name*(self: QMetaClassInfo, ): cstring =

  (fcQMetaClassInfo_name(self.h))

proc value*(self: QMetaClassInfo, ): cstring =

  (fcQMetaClassInfo_value(self.h))

proc enclosingMetaObject*(self: QMetaClassInfo, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMetaClassInfo_enclosingMetaObject(self.h))

proc delete*(self: QMetaClassInfo) =
  fcQMetaClassInfo_delete(self.h)
