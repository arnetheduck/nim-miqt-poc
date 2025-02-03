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
{.compile("gen_qobjectdefs.cpp", cflags).}


type QMetaObjectCall* = cint
const
  QMetaObjectInvokeMetaMethod* = 0
  QMetaObjectReadProperty* = 1
  QMetaObjectWriteProperty* = 2
  QMetaObjectResetProperty* = 3
  QMetaObjectQueryPropertyDesignable* = 4
  QMetaObjectQueryPropertyScriptable* = 5
  QMetaObjectQueryPropertyStored* = 6
  QMetaObjectQueryPropertyEditable* = 7
  QMetaObjectQueryPropertyUser* = 8
  QMetaObjectCreateInstance* = 9
  QMetaObjectIndexOfMethod* = 10
  QMetaObjectRegisterPropertyMetaType* = 11
  QMetaObjectRegisterMethodArgumentMetaType* = 12



import gen_qobjectdefs_types
export gen_qobjectdefs_types

import
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject
export
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject

type cQGenericArgument*{.exportc: "QGenericArgument", incompleteStruct.} = object
type cQGenericReturnArgument*{.exportc: "QGenericReturnArgument", incompleteStruct.} = object
type cQMetaObject*{.exportc: "QMetaObject", incompleteStruct.} = object
type cQMetaObjectConnection*{.exportc: "QMetaObject__Connection", incompleteStruct.} = object
type cQMetaObjectSuperData*{.exportc: "QMetaObject__SuperData", incompleteStruct.} = object

proc fcQGenericArgument_new(): ptr cQGenericArgument {.importc: "QGenericArgument_new".}
proc fcQGenericArgument_new2(param1: pointer): ptr cQGenericArgument {.importc: "QGenericArgument_new2".}
proc fcQGenericArgument_new3(aName: cstring): ptr cQGenericArgument {.importc: "QGenericArgument_new3".}
proc fcQGenericArgument_new4(aName: cstring, aData: pointer): ptr cQGenericArgument {.importc: "QGenericArgument_new4".}
proc fcQGenericArgument_data(self: pointer, ): pointer {.importc: "QGenericArgument_data".}
proc fcQGenericArgument_name(self: pointer, ): cstring {.importc: "QGenericArgument_name".}
proc fcQGenericArgument_delete(self: pointer) {.importc: "QGenericArgument_delete".}
proc fcQGenericReturnArgument_new(): ptr cQGenericReturnArgument {.importc: "QGenericReturnArgument_new".}
proc fcQGenericReturnArgument_new2(param1: pointer): ptr cQGenericReturnArgument {.importc: "QGenericReturnArgument_new2".}
proc fcQGenericReturnArgument_new3(aName: cstring): ptr cQGenericReturnArgument {.importc: "QGenericReturnArgument_new3".}
proc fcQGenericReturnArgument_new4(aName: cstring, aData: pointer): ptr cQGenericReturnArgument {.importc: "QGenericReturnArgument_new4".}
proc fcQGenericReturnArgument_delete(self: pointer) {.importc: "QGenericReturnArgument_delete".}
proc fcQMetaObject_new(): ptr cQMetaObject {.importc: "QMetaObject_new".}
proc fcQMetaObject_new2(param1: pointer): ptr cQMetaObject {.importc: "QMetaObject_new2".}
proc fcQMetaObject_className(self: pointer, ): cstring {.importc: "QMetaObject_className".}
proc fcQMetaObject_superClass(self: pointer, ): pointer {.importc: "QMetaObject_superClass".}
proc fcQMetaObject_inherits(self: pointer, metaObject: pointer): bool {.importc: "QMetaObject_inherits".}
proc fcQMetaObject_castX(self: pointer, obj: pointer): pointer {.importc: "QMetaObject_cast".}
proc fcQMetaObject_castWithObj(self: pointer, obj: pointer): pointer {.importc: "QMetaObject_castWithObj".}
proc fcQMetaObject_tr(self: pointer, s: cstring, c: cstring): struct_miqt_string {.importc: "QMetaObject_tr".}
proc fcQMetaObject_methodOffset(self: pointer, ): cint {.importc: "QMetaObject_methodOffset".}
proc fcQMetaObject_enumeratorOffset(self: pointer, ): cint {.importc: "QMetaObject_enumeratorOffset".}
proc fcQMetaObject_propertyOffset(self: pointer, ): cint {.importc: "QMetaObject_propertyOffset".}
proc fcQMetaObject_classInfoOffset(self: pointer, ): cint {.importc: "QMetaObject_classInfoOffset".}
proc fcQMetaObject_constructorCount(self: pointer, ): cint {.importc: "QMetaObject_constructorCount".}
proc fcQMetaObject_methodCount(self: pointer, ): cint {.importc: "QMetaObject_methodCount".}
proc fcQMetaObject_enumeratorCount(self: pointer, ): cint {.importc: "QMetaObject_enumeratorCount".}
proc fcQMetaObject_propertyCount(self: pointer, ): cint {.importc: "QMetaObject_propertyCount".}
proc fcQMetaObject_classInfoCount(self: pointer, ): cint {.importc: "QMetaObject_classInfoCount".}
proc fcQMetaObject_indexOfConstructor(self: pointer, constructor: cstring): cint {.importc: "QMetaObject_indexOfConstructor".}
proc fcQMetaObject_indexOfMethod(self: pointer, methodVal: cstring): cint {.importc: "QMetaObject_indexOfMethod".}
proc fcQMetaObject_indexOfSignal(self: pointer, signal: cstring): cint {.importc: "QMetaObject_indexOfSignal".}
proc fcQMetaObject_indexOfSlot(self: pointer, slot: cstring): cint {.importc: "QMetaObject_indexOfSlot".}
proc fcQMetaObject_indexOfEnumerator(self: pointer, name: cstring): cint {.importc: "QMetaObject_indexOfEnumerator".}
proc fcQMetaObject_indexOfProperty(self: pointer, name: cstring): cint {.importc: "QMetaObject_indexOfProperty".}
proc fcQMetaObject_indexOfClassInfo(self: pointer, name: cstring): cint {.importc: "QMetaObject_indexOfClassInfo".}
proc fcQMetaObject_constructor(self: pointer, index: cint): pointer {.importc: "QMetaObject_constructor".}
proc fcQMetaObject_methodX(self: pointer, index: cint): pointer {.importc: "QMetaObject_method".}
proc fcQMetaObject_enumerator(self: pointer, index: cint): pointer {.importc: "QMetaObject_enumerator".}
proc fcQMetaObject_property(self: pointer, index: cint): pointer {.importc: "QMetaObject_property".}
proc fcQMetaObject_classInfo(self: pointer, index: cint): pointer {.importc: "QMetaObject_classInfo".}
proc fcQMetaObject_userProperty(self: pointer, ): pointer {.importc: "QMetaObject_userProperty".}
proc fcQMetaObject_checkConnectArgs(signal: cstring, methodVal: cstring): bool {.importc: "QMetaObject_checkConnectArgs".}
proc fcQMetaObject_checkConnectArgs2(signal: pointer, methodVal: pointer): bool {.importc: "QMetaObject_checkConnectArgs2".}
proc fcQMetaObject_normalizedSignature(methodVal: cstring): struct_miqt_string {.importc: "QMetaObject_normalizedSignature".}
proc fcQMetaObject_normalizedType(typeVal: cstring): struct_miqt_string {.importc: "QMetaObject_normalizedType".}
proc fcQMetaObject_connect(sender: pointer, signal_index: cint, receiver: pointer, method_index: cint): pointer {.importc: "QMetaObject_connect".}
proc fcQMetaObject_disconnect(sender: pointer, signal_index: cint, receiver: pointer, method_index: cint): bool {.importc: "QMetaObject_disconnect".}
proc fcQMetaObject_disconnectOne(sender: pointer, signal_index: cint, receiver: pointer, method_index: cint): bool {.importc: "QMetaObject_disconnectOne".}
proc fcQMetaObject_connectSlotsByName(o: pointer): void {.importc: "QMetaObject_connectSlotsByName".}
proc fcQMetaObject_activate(sender: pointer, signal_index: cint, argv: pointer): void {.importc: "QMetaObject_activate".}
proc fcQMetaObject_activate2(sender: pointer, param2: pointer, local_signal_index: cint, argv: pointer): void {.importc: "QMetaObject_activate2".}
proc fcQMetaObject_activate3(sender: pointer, signal_offset: cint, local_signal_index: cint, argv: pointer): void {.importc: "QMetaObject_activate3".}
proc fcQMetaObject_invokeMethod(obj: pointer, member: cstring, param3: cint, retVal: pointer): bool {.importc: "QMetaObject_invokeMethod".}
proc fcQMetaObject_invokeMethod2(obj: pointer, member: cstring, retVal: pointer): bool {.importc: "QMetaObject_invokeMethod2".}
proc fcQMetaObject_invokeMethod3(obj: pointer, member: cstring, typeVal: cint): bool {.importc: "QMetaObject_invokeMethod3".}
proc fcQMetaObject_invokeMethod4(obj: pointer, member: cstring): bool {.importc: "QMetaObject_invokeMethod4".}
proc fcQMetaObject_newInstance(self: pointer, ): pointer {.importc: "QMetaObject_newInstance".}
proc fcQMetaObject_staticMetacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMetaObject_staticMetacall".}
proc fcQMetaObject_metacall(param1: pointer, param2: cint, param3: cint, param4: pointer): cint {.importc: "QMetaObject_metacall".}
proc fcQMetaObject_tr3(self: pointer, s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMetaObject_tr3".}
proc fcQMetaObject_connect5(sender: pointer, signal_index: cint, receiver: pointer, method_index: cint, typeVal: cint): pointer {.importc: "QMetaObject_connect5".}
proc fcQMetaObject_connect6(sender: pointer, signal_index: cint, receiver: pointer, method_index: cint, typeVal: cint, types: ptr cint): pointer {.importc: "QMetaObject_connect6".}
proc fcQMetaObject_invokeMethod5(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer): bool {.importc: "QMetaObject_invokeMethod5".}
proc fcQMetaObject_invokeMethod6(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer, val1: pointer): bool {.importc: "QMetaObject_invokeMethod6".}
proc fcQMetaObject_invokeMethod7(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaObject_invokeMethod7".}
proc fcQMetaObject_invokeMethod8(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaObject_invokeMethod8".}
proc fcQMetaObject_invokeMethod9(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaObject_invokeMethod9".}
proc fcQMetaObject_invokeMethod10(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaObject_invokeMethod10".}
proc fcQMetaObject_invokeMethod11(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaObject_invokeMethod11".}
proc fcQMetaObject_invokeMethod12(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaObject_invokeMethod12".}
proc fcQMetaObject_invokeMethod13(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaObject_invokeMethod13".}
proc fcQMetaObject_invokeMethod14(obj: pointer, member: cstring, param3: cint, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaObject_invokeMethod14".}
proc fcQMetaObject_invokeMethod42(obj: pointer, member: cstring, retVal: pointer, val0: pointer): bool {.importc: "QMetaObject_invokeMethod42".}
proc fcQMetaObject_invokeMethod52(obj: pointer, member: cstring, retVal: pointer, val0: pointer, val1: pointer): bool {.importc: "QMetaObject_invokeMethod52".}
proc fcQMetaObject_invokeMethod62(obj: pointer, member: cstring, retVal: pointer, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaObject_invokeMethod62".}
proc fcQMetaObject_invokeMethod72(obj: pointer, member: cstring, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaObject_invokeMethod72".}
proc fcQMetaObject_invokeMethod82(obj: pointer, member: cstring, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaObject_invokeMethod82".}
proc fcQMetaObject_invokeMethod92(obj: pointer, member: cstring, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaObject_invokeMethod92".}
proc fcQMetaObject_invokeMethod102(obj: pointer, member: cstring, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaObject_invokeMethod102".}
proc fcQMetaObject_invokeMethod112(obj: pointer, member: cstring, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaObject_invokeMethod112".}
proc fcQMetaObject_invokeMethod122(obj: pointer, member: cstring, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaObject_invokeMethod122".}
proc fcQMetaObject_invokeMethod132(obj: pointer, member: cstring, retVal: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaObject_invokeMethod132".}
proc fcQMetaObject_invokeMethod43(obj: pointer, member: cstring, typeVal: cint, val0: pointer): bool {.importc: "QMetaObject_invokeMethod43".}
proc fcQMetaObject_invokeMethod53(obj: pointer, member: cstring, typeVal: cint, val0: pointer, val1: pointer): bool {.importc: "QMetaObject_invokeMethod53".}
proc fcQMetaObject_invokeMethod63(obj: pointer, member: cstring, typeVal: cint, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaObject_invokeMethod63".}
proc fcQMetaObject_invokeMethod73(obj: pointer, member: cstring, typeVal: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaObject_invokeMethod73".}
proc fcQMetaObject_invokeMethod83(obj: pointer, member: cstring, typeVal: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaObject_invokeMethod83".}
proc fcQMetaObject_invokeMethod93(obj: pointer, member: cstring, typeVal: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaObject_invokeMethod93".}
proc fcQMetaObject_invokeMethod103(obj: pointer, member: cstring, typeVal: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaObject_invokeMethod103".}
proc fcQMetaObject_invokeMethod113(obj: pointer, member: cstring, typeVal: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaObject_invokeMethod113".}
proc fcQMetaObject_invokeMethod123(obj: pointer, member: cstring, typeVal: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaObject_invokeMethod123".}
proc fcQMetaObject_invokeMethod133(obj: pointer, member: cstring, typeVal: cint, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaObject_invokeMethod133".}
proc fcQMetaObject_invokeMethod32(obj: pointer, member: cstring, val0: pointer): bool {.importc: "QMetaObject_invokeMethod32".}
proc fcQMetaObject_invokeMethod44(obj: pointer, member: cstring, val0: pointer, val1: pointer): bool {.importc: "QMetaObject_invokeMethod44".}
proc fcQMetaObject_invokeMethod54(obj: pointer, member: cstring, val0: pointer, val1: pointer, val2: pointer): bool {.importc: "QMetaObject_invokeMethod54".}
proc fcQMetaObject_invokeMethod64(obj: pointer, member: cstring, val0: pointer, val1: pointer, val2: pointer, val3: pointer): bool {.importc: "QMetaObject_invokeMethod64".}
proc fcQMetaObject_invokeMethod74(obj: pointer, member: cstring, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): bool {.importc: "QMetaObject_invokeMethod74".}
proc fcQMetaObject_invokeMethod84(obj: pointer, member: cstring, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): bool {.importc: "QMetaObject_invokeMethod84".}
proc fcQMetaObject_invokeMethod94(obj: pointer, member: cstring, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): bool {.importc: "QMetaObject_invokeMethod94".}
proc fcQMetaObject_invokeMethod104(obj: pointer, member: cstring, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): bool {.importc: "QMetaObject_invokeMethod104".}
proc fcQMetaObject_invokeMethod114(obj: pointer, member: cstring, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): bool {.importc: "QMetaObject_invokeMethod114".}
proc fcQMetaObject_invokeMethod124(obj: pointer, member: cstring, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): bool {.importc: "QMetaObject_invokeMethod124".}
proc fcQMetaObject_newInstance1(self: pointer, val0: pointer): pointer {.importc: "QMetaObject_newInstance1".}
proc fcQMetaObject_newInstance2(self: pointer, val0: pointer, val1: pointer): pointer {.importc: "QMetaObject_newInstance2".}
proc fcQMetaObject_newInstance3(self: pointer, val0: pointer, val1: pointer, val2: pointer): pointer {.importc: "QMetaObject_newInstance3".}
proc fcQMetaObject_newInstance4(self: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer): pointer {.importc: "QMetaObject_newInstance4".}
proc fcQMetaObject_newInstance5(self: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer): pointer {.importc: "QMetaObject_newInstance5".}
proc fcQMetaObject_newInstance6(self: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer): pointer {.importc: "QMetaObject_newInstance6".}
proc fcQMetaObject_newInstance7(self: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer): pointer {.importc: "QMetaObject_newInstance7".}
proc fcQMetaObject_newInstance8(self: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer): pointer {.importc: "QMetaObject_newInstance8".}
proc fcQMetaObject_newInstance9(self: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer): pointer {.importc: "QMetaObject_newInstance9".}
proc fcQMetaObject_newInstance10(self: pointer, val0: pointer, val1: pointer, val2: pointer, val3: pointer, val4: pointer, val5: pointer, val6: pointer, val7: pointer, val8: pointer, val9: pointer): pointer {.importc: "QMetaObject_newInstance10".}
proc fcQMetaObject_delete(self: pointer) {.importc: "QMetaObject_delete".}
proc fcQMetaObjectConnection_new(): ptr cQMetaObjectConnection {.importc: "QMetaObject__Connection_new".}
proc fcQMetaObjectConnection_new2(other: pointer): ptr cQMetaObjectConnection {.importc: "QMetaObject__Connection_new2".}
proc fcQMetaObjectConnection_operatorAssign(self: pointer, other: pointer): void {.importc: "QMetaObject__Connection_operatorAssign".}
proc fcQMetaObjectConnection_delete(self: pointer) {.importc: "QMetaObject__Connection_delete".}
proc fcQMetaObjectSuperData_new(): ptr cQMetaObjectSuperData {.importc: "QMetaObject__SuperData_new".}
proc fcQMetaObjectSuperData_new2(mo: pointer): ptr cQMetaObjectSuperData {.importc: "QMetaObject__SuperData_new2".}
proc fcQMetaObjectSuperData_new3(param1: pointer): ptr cQMetaObjectSuperData {.importc: "QMetaObject__SuperData_new3".}
proc fcQMetaObjectSuperData_operatorMinusGreater(self: pointer, ): pointer {.importc: "QMetaObject__SuperData_operatorMinusGreater".}
proc fcQMetaObjectSuperData_ToConstQMetaObjectMultiply(self: pointer, ): pointer {.importc: "QMetaObject__SuperData_ToConstQMetaObjectMultiply".}
proc fcQMetaObjectSuperData_operatorAssign(self: pointer, param1: pointer): void {.importc: "QMetaObject__SuperData_operatorAssign".}
proc fcQMetaObjectSuperData_delete(self: pointer) {.importc: "QMetaObject__SuperData_delete".}


func init*(T: type QGenericArgument, h: ptr cQGenericArgument): QGenericArgument =
  T(h: h)
proc create*(T: type QGenericArgument, ): QGenericArgument =

  QGenericArgument.init(fcQGenericArgument_new())
proc create*(T: type QGenericArgument, param1: QGenericArgument): QGenericArgument =

  QGenericArgument.init(fcQGenericArgument_new2(param1.h))
proc create*(T: type QGenericArgument, aName: cstring): QGenericArgument =

  QGenericArgument.init(fcQGenericArgument_new3(aName))
proc create*(T: type QGenericArgument, aName: cstring, aData: pointer): QGenericArgument =

  QGenericArgument.init(fcQGenericArgument_new4(aName, aData))
proc data*(self: QGenericArgument, ): pointer =

  fcQGenericArgument_data(self.h)

proc name*(self: QGenericArgument, ): cstring =

  (fcQGenericArgument_name(self.h))

proc delete*(self: QGenericArgument) =
  fcQGenericArgument_delete(self.h)

func init*(T: type QGenericReturnArgument, h: ptr cQGenericReturnArgument): QGenericReturnArgument =
  T(h: h)
proc create*(T: type QGenericReturnArgument, ): QGenericReturnArgument =

  QGenericReturnArgument.init(fcQGenericReturnArgument_new())
proc create*(T: type QGenericReturnArgument, param1: QGenericReturnArgument): QGenericReturnArgument =

  QGenericReturnArgument.init(fcQGenericReturnArgument_new2(param1.h))
proc create*(T: type QGenericReturnArgument, aName: cstring): QGenericReturnArgument =

  QGenericReturnArgument.init(fcQGenericReturnArgument_new3(aName))
proc create*(T: type QGenericReturnArgument, aName: cstring, aData: pointer): QGenericReturnArgument =

  QGenericReturnArgument.init(fcQGenericReturnArgument_new4(aName, aData))
proc delete*(self: QGenericReturnArgument) =
  fcQGenericReturnArgument_delete(self.h)

func init*(T: type QMetaObject, h: ptr cQMetaObject): QMetaObject =
  T(h: h)
proc create*(T: type QMetaObject, ): QMetaObject =

  QMetaObject.init(fcQMetaObject_new())
proc create*(T: type QMetaObject, param1: QMetaObject): QMetaObject =

  QMetaObject.init(fcQMetaObject_new2(param1.h))
proc className*(self: QMetaObject, ): cstring =

  (fcQMetaObject_className(self.h))

proc superClass*(self: QMetaObject, ): QMetaObject =

  QMetaObject(h: fcQMetaObject_superClass(self.h))

proc inherits*(self: QMetaObject, metaObject: QMetaObject): bool =

  fcQMetaObject_inherits(self.h, metaObject.h)

proc castX*(self: QMetaObject, obj: gen_qobject.QObject): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQMetaObject_castX(self.h, obj.h))

proc castWithObj*(self: QMetaObject, obj: gen_qobject.QObject): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQMetaObject_castWithObj(self.h, obj.h))

proc tr*(self: QMetaObject, s: cstring, c: cstring): string =

  let v_ms = fcQMetaObject_tr(self.h, s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc methodOffset*(self: QMetaObject, ): cint =

  fcQMetaObject_methodOffset(self.h)

proc enumeratorOffset*(self: QMetaObject, ): cint =

  fcQMetaObject_enumeratorOffset(self.h)

proc propertyOffset*(self: QMetaObject, ): cint =

  fcQMetaObject_propertyOffset(self.h)

proc classInfoOffset*(self: QMetaObject, ): cint =

  fcQMetaObject_classInfoOffset(self.h)

proc constructorCount*(self: QMetaObject, ): cint =

  fcQMetaObject_constructorCount(self.h)

proc methodCount*(self: QMetaObject, ): cint =

  fcQMetaObject_methodCount(self.h)

proc enumeratorCount*(self: QMetaObject, ): cint =

  fcQMetaObject_enumeratorCount(self.h)

proc propertyCount*(self: QMetaObject, ): cint =

  fcQMetaObject_propertyCount(self.h)

proc classInfoCount*(self: QMetaObject, ): cint =

  fcQMetaObject_classInfoCount(self.h)

proc indexOfConstructor*(self: QMetaObject, constructor: cstring): cint =

  fcQMetaObject_indexOfConstructor(self.h, constructor)

proc indexOfMethod*(self: QMetaObject, methodVal: cstring): cint =

  fcQMetaObject_indexOfMethod(self.h, methodVal)

proc indexOfSignal*(self: QMetaObject, signal: cstring): cint =

  fcQMetaObject_indexOfSignal(self.h, signal)

proc indexOfSlot*(self: QMetaObject, slot: cstring): cint =

  fcQMetaObject_indexOfSlot(self.h, slot)

proc indexOfEnumerator*(self: QMetaObject, name: cstring): cint =

  fcQMetaObject_indexOfEnumerator(self.h, name)

proc indexOfProperty*(self: QMetaObject, name: cstring): cint =

  fcQMetaObject_indexOfProperty(self.h, name)

proc indexOfClassInfo*(self: QMetaObject, name: cstring): cint =

  fcQMetaObject_indexOfClassInfo(self.h, name)

proc constructor*(self: QMetaObject, index: cint): gen_qmetaobject.QMetaMethod =

  gen_qmetaobject.QMetaMethod(h: fcQMetaObject_constructor(self.h, index))

proc methodX*(self: QMetaObject, index: cint): gen_qmetaobject.QMetaMethod =

  gen_qmetaobject.QMetaMethod(h: fcQMetaObject_methodX(self.h, index))

proc enumerator*(self: QMetaObject, index: cint): gen_qmetaobject.QMetaEnum =

  gen_qmetaobject.QMetaEnum(h: fcQMetaObject_enumerator(self.h, index))

proc property*(self: QMetaObject, index: cint): gen_qmetaobject.QMetaProperty =

  gen_qmetaobject.QMetaProperty(h: fcQMetaObject_property(self.h, index))

proc classInfo*(self: QMetaObject, index: cint): gen_qmetaobject.QMetaClassInfo =

  gen_qmetaobject.QMetaClassInfo(h: fcQMetaObject_classInfo(self.h, index))

proc userProperty*(self: QMetaObject, ): gen_qmetaobject.QMetaProperty =

  gen_qmetaobject.QMetaProperty(h: fcQMetaObject_userProperty(self.h))

proc checkConnectArgs*(_: type QMetaObject, signal: cstring, methodVal: cstring): bool =

  fcQMetaObject_checkConnectArgs(signal, methodVal)

proc checkConnectArgs2*(_: type QMetaObject, signal: gen_qmetaobject.QMetaMethod, methodVal: gen_qmetaobject.QMetaMethod): bool =

  fcQMetaObject_checkConnectArgs2(signal.h, methodVal.h)

proc normalizedSignature*(_: type QMetaObject, methodVal: cstring): seq[byte] =

  var v_bytearray = fcQMetaObject_normalizedSignature(methodVal)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc normalizedType*(_: type QMetaObject, typeVal: cstring): seq[byte] =

  var v_bytearray = fcQMetaObject_normalizedType(typeVal)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc connect*(_: type QMetaObject, sender: gen_qobject.QObject, signal_index: cint, receiver: gen_qobject.QObject, method_index: cint): QMetaObjectConnection =

  QMetaObjectConnection(h: fcQMetaObject_connect(sender.h, signal_index, receiver.h, method_index))

proc disconnect*(_: type QMetaObject, sender: gen_qobject.QObject, signal_index: cint, receiver: gen_qobject.QObject, method_index: cint): bool =

  fcQMetaObject_disconnect(sender.h, signal_index, receiver.h, method_index)

proc disconnectOne*(_: type QMetaObject, sender: gen_qobject.QObject, signal_index: cint, receiver: gen_qobject.QObject, method_index: cint): bool =

  fcQMetaObject_disconnectOne(sender.h, signal_index, receiver.h, method_index)

proc connectSlotsByName*(_: type QMetaObject, o: gen_qobject.QObject): void =

  fcQMetaObject_connectSlotsByName(o.h)

proc activate*(_: type QMetaObject, sender: gen_qobject.QObject, signal_index: cint, argv: pointer): void =

  fcQMetaObject_activate(sender.h, signal_index, argv)

proc activate2*(_: type QMetaObject, sender: gen_qobject.QObject, param2: QMetaObject, local_signal_index: cint, argv: pointer): void =

  fcQMetaObject_activate2(sender.h, param2.h, local_signal_index, argv)

proc activate3*(_: type QMetaObject, sender: gen_qobject.QObject, signal_offset: cint, local_signal_index: cint, argv: pointer): void =

  fcQMetaObject_activate3(sender.h, signal_offset, local_signal_index, argv)

proc invokeMethod*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, param3: gen_qnamespace.ConnectionType, retVal: QGenericReturnArgument): bool =

  fcQMetaObject_invokeMethod(obj.h, member, cint(param3), retVal.h)

proc invokeMethod2*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, retVal: QGenericReturnArgument): bool =

  fcQMetaObject_invokeMethod2(obj.h, member, retVal.h)

proc invokeMethod3*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, typeVal: gen_qnamespace.ConnectionType): bool =

  fcQMetaObject_invokeMethod3(obj.h, member, cint(typeVal))

proc invokeMethod4*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring): bool =

  fcQMetaObject_invokeMethod4(obj.h, member)

proc newInstance*(self: QMetaObject, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQMetaObject_newInstance(self.h))

proc staticMetacall*(self: QMetaObject, param1: QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQMetaObject_staticMetacall(self.h, cint(param1), param2, param3)

proc metacall*(_: type QMetaObject, param1: gen_qobject.QObject, param2: QMetaObjectCall, param3: cint, param4: pointer): cint =

  fcQMetaObject_metacall(param1.h, cint(param2), param3, param4)

proc tr3*(self: QMetaObject, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMetaObject_tr3(self.h, s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc connect5*(_: type QMetaObject, sender: gen_qobject.QObject, signal_index: cint, receiver: gen_qobject.QObject, method_index: cint, typeVal: cint): QMetaObjectConnection =

  QMetaObjectConnection(h: fcQMetaObject_connect5(sender.h, signal_index, receiver.h, method_index, typeVal))

proc connect6*(_: type QMetaObject, sender: gen_qobject.QObject, signal_index: cint, receiver: gen_qobject.QObject, method_index: cint, typeVal: cint, types: ptr cint): QMetaObjectConnection =

  QMetaObjectConnection(h: fcQMetaObject_connect6(sender.h, signal_index, receiver.h, method_index, typeVal, types))

proc invokeMethod5*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, param3: gen_qnamespace.ConnectionType, retVal: QGenericReturnArgument, val0: QGenericArgument): bool =

  fcQMetaObject_invokeMethod5(obj.h, member, cint(param3), retVal.h, val0.h)

proc invokeMethod6*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, param3: gen_qnamespace.ConnectionType, retVal: QGenericReturnArgument, val0: QGenericArgument, val1: QGenericArgument): bool =

  fcQMetaObject_invokeMethod6(obj.h, member, cint(param3), retVal.h, val0.h, val1.h)

proc invokeMethod7*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, param3: gen_qnamespace.ConnectionType, retVal: QGenericReturnArgument, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument): bool =

  fcQMetaObject_invokeMethod7(obj.h, member, cint(param3), retVal.h, val0.h, val1.h, val2.h)

proc invokeMethod8*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, param3: gen_qnamespace.ConnectionType, retVal: QGenericReturnArgument, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument): bool =

  fcQMetaObject_invokeMethod8(obj.h, member, cint(param3), retVal.h, val0.h, val1.h, val2.h, val3.h)

proc invokeMethod9*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, param3: gen_qnamespace.ConnectionType, retVal: QGenericReturnArgument, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument): bool =

  fcQMetaObject_invokeMethod9(obj.h, member, cint(param3), retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h)

proc invokeMethod10*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, param3: gen_qnamespace.ConnectionType, retVal: QGenericReturnArgument, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument, val5: QGenericArgument): bool =

  fcQMetaObject_invokeMethod10(obj.h, member, cint(param3), retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invokeMethod11*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, param3: gen_qnamespace.ConnectionType, retVal: QGenericReturnArgument, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument, val5: QGenericArgument, val6: QGenericArgument): bool =

  fcQMetaObject_invokeMethod11(obj.h, member, cint(param3), retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invokeMethod12*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, param3: gen_qnamespace.ConnectionType, retVal: QGenericReturnArgument, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument, val5: QGenericArgument, val6: QGenericArgument, val7: QGenericArgument): bool =

  fcQMetaObject_invokeMethod12(obj.h, member, cint(param3), retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invokeMethod13*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, param3: gen_qnamespace.ConnectionType, retVal: QGenericReturnArgument, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument, val5: QGenericArgument, val6: QGenericArgument, val7: QGenericArgument, val8: QGenericArgument): bool =

  fcQMetaObject_invokeMethod13(obj.h, member, cint(param3), retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invokeMethod14*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, param3: gen_qnamespace.ConnectionType, retVal: QGenericReturnArgument, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument, val5: QGenericArgument, val6: QGenericArgument, val7: QGenericArgument, val8: QGenericArgument, val9: QGenericArgument): bool =

  fcQMetaObject_invokeMethod14(obj.h, member, cint(param3), retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc invokeMethod42*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, retVal: QGenericReturnArgument, val0: QGenericArgument): bool =

  fcQMetaObject_invokeMethod42(obj.h, member, retVal.h, val0.h)

proc invokeMethod52*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, retVal: QGenericReturnArgument, val0: QGenericArgument, val1: QGenericArgument): bool =

  fcQMetaObject_invokeMethod52(obj.h, member, retVal.h, val0.h, val1.h)

proc invokeMethod62*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, retVal: QGenericReturnArgument, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument): bool =

  fcQMetaObject_invokeMethod62(obj.h, member, retVal.h, val0.h, val1.h, val2.h)

proc invokeMethod72*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, retVal: QGenericReturnArgument, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument): bool =

  fcQMetaObject_invokeMethod72(obj.h, member, retVal.h, val0.h, val1.h, val2.h, val3.h)

proc invokeMethod82*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, retVal: QGenericReturnArgument, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument): bool =

  fcQMetaObject_invokeMethod82(obj.h, member, retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h)

proc invokeMethod92*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, retVal: QGenericReturnArgument, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument, val5: QGenericArgument): bool =

  fcQMetaObject_invokeMethod92(obj.h, member, retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invokeMethod102*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, retVal: QGenericReturnArgument, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument, val5: QGenericArgument, val6: QGenericArgument): bool =

  fcQMetaObject_invokeMethod102(obj.h, member, retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invokeMethod112*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, retVal: QGenericReturnArgument, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument, val5: QGenericArgument, val6: QGenericArgument, val7: QGenericArgument): bool =

  fcQMetaObject_invokeMethod112(obj.h, member, retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invokeMethod122*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, retVal: QGenericReturnArgument, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument, val5: QGenericArgument, val6: QGenericArgument, val7: QGenericArgument, val8: QGenericArgument): bool =

  fcQMetaObject_invokeMethod122(obj.h, member, retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invokeMethod132*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, retVal: QGenericReturnArgument, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument, val5: QGenericArgument, val6: QGenericArgument, val7: QGenericArgument, val8: QGenericArgument, val9: QGenericArgument): bool =

  fcQMetaObject_invokeMethod132(obj.h, member, retVal.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc invokeMethod43*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, typeVal: gen_qnamespace.ConnectionType, val0: QGenericArgument): bool =

  fcQMetaObject_invokeMethod43(obj.h, member, cint(typeVal), val0.h)

proc invokeMethod53*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, typeVal: gen_qnamespace.ConnectionType, val0: QGenericArgument, val1: QGenericArgument): bool =

  fcQMetaObject_invokeMethod53(obj.h, member, cint(typeVal), val0.h, val1.h)

proc invokeMethod63*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, typeVal: gen_qnamespace.ConnectionType, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument): bool =

  fcQMetaObject_invokeMethod63(obj.h, member, cint(typeVal), val0.h, val1.h, val2.h)

proc invokeMethod73*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, typeVal: gen_qnamespace.ConnectionType, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument): bool =

  fcQMetaObject_invokeMethod73(obj.h, member, cint(typeVal), val0.h, val1.h, val2.h, val3.h)

proc invokeMethod83*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, typeVal: gen_qnamespace.ConnectionType, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument): bool =

  fcQMetaObject_invokeMethod83(obj.h, member, cint(typeVal), val0.h, val1.h, val2.h, val3.h, val4.h)

proc invokeMethod93*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, typeVal: gen_qnamespace.ConnectionType, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument, val5: QGenericArgument): bool =

  fcQMetaObject_invokeMethod93(obj.h, member, cint(typeVal), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invokeMethod103*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, typeVal: gen_qnamespace.ConnectionType, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument, val5: QGenericArgument, val6: QGenericArgument): bool =

  fcQMetaObject_invokeMethod103(obj.h, member, cint(typeVal), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invokeMethod113*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, typeVal: gen_qnamespace.ConnectionType, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument, val5: QGenericArgument, val6: QGenericArgument, val7: QGenericArgument): bool =

  fcQMetaObject_invokeMethod113(obj.h, member, cint(typeVal), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invokeMethod123*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, typeVal: gen_qnamespace.ConnectionType, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument, val5: QGenericArgument, val6: QGenericArgument, val7: QGenericArgument, val8: QGenericArgument): bool =

  fcQMetaObject_invokeMethod123(obj.h, member, cint(typeVal), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invokeMethod133*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, typeVal: gen_qnamespace.ConnectionType, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument, val5: QGenericArgument, val6: QGenericArgument, val7: QGenericArgument, val8: QGenericArgument, val9: QGenericArgument): bool =

  fcQMetaObject_invokeMethod133(obj.h, member, cint(typeVal), val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc invokeMethod32*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, val0: QGenericArgument): bool =

  fcQMetaObject_invokeMethod32(obj.h, member, val0.h)

proc invokeMethod44*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, val0: QGenericArgument, val1: QGenericArgument): bool =

  fcQMetaObject_invokeMethod44(obj.h, member, val0.h, val1.h)

proc invokeMethod54*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument): bool =

  fcQMetaObject_invokeMethod54(obj.h, member, val0.h, val1.h, val2.h)

proc invokeMethod64*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument): bool =

  fcQMetaObject_invokeMethod64(obj.h, member, val0.h, val1.h, val2.h, val3.h)

proc invokeMethod74*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument): bool =

  fcQMetaObject_invokeMethod74(obj.h, member, val0.h, val1.h, val2.h, val3.h, val4.h)

proc invokeMethod84*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument, val5: QGenericArgument): bool =

  fcQMetaObject_invokeMethod84(obj.h, member, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h)

proc invokeMethod94*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument, val5: QGenericArgument, val6: QGenericArgument): bool =

  fcQMetaObject_invokeMethod94(obj.h, member, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h)

proc invokeMethod104*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument, val5: QGenericArgument, val6: QGenericArgument, val7: QGenericArgument): bool =

  fcQMetaObject_invokeMethod104(obj.h, member, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h)

proc invokeMethod114*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument, val5: QGenericArgument, val6: QGenericArgument, val7: QGenericArgument, val8: QGenericArgument): bool =

  fcQMetaObject_invokeMethod114(obj.h, member, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h)

proc invokeMethod124*(_: type QMetaObject, obj: gen_qobject.QObject, member: cstring, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument, val5: QGenericArgument, val6: QGenericArgument, val7: QGenericArgument, val8: QGenericArgument, val9: QGenericArgument): bool =

  fcQMetaObject_invokeMethod124(obj.h, member, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h)

proc newInstance1*(self: QMetaObject, val0: QGenericArgument): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQMetaObject_newInstance1(self.h, val0.h))

proc newInstance2*(self: QMetaObject, val0: QGenericArgument, val1: QGenericArgument): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQMetaObject_newInstance2(self.h, val0.h, val1.h))

proc newInstance3*(self: QMetaObject, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQMetaObject_newInstance3(self.h, val0.h, val1.h, val2.h))

proc newInstance4*(self: QMetaObject, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQMetaObject_newInstance4(self.h, val0.h, val1.h, val2.h, val3.h))

proc newInstance5*(self: QMetaObject, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQMetaObject_newInstance5(self.h, val0.h, val1.h, val2.h, val3.h, val4.h))

proc newInstance6*(self: QMetaObject, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument, val5: QGenericArgument): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQMetaObject_newInstance6(self.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h))

proc newInstance7*(self: QMetaObject, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument, val5: QGenericArgument, val6: QGenericArgument): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQMetaObject_newInstance7(self.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h))

proc newInstance8*(self: QMetaObject, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument, val5: QGenericArgument, val6: QGenericArgument, val7: QGenericArgument): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQMetaObject_newInstance8(self.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h))

proc newInstance9*(self: QMetaObject, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument, val5: QGenericArgument, val6: QGenericArgument, val7: QGenericArgument, val8: QGenericArgument): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQMetaObject_newInstance9(self.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h))

proc newInstance10*(self: QMetaObject, val0: QGenericArgument, val1: QGenericArgument, val2: QGenericArgument, val3: QGenericArgument, val4: QGenericArgument, val5: QGenericArgument, val6: QGenericArgument, val7: QGenericArgument, val8: QGenericArgument, val9: QGenericArgument): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQMetaObject_newInstance10(self.h, val0.h, val1.h, val2.h, val3.h, val4.h, val5.h, val6.h, val7.h, val8.h, val9.h))

proc delete*(self: QMetaObject) =
  fcQMetaObject_delete(self.h)

func init*(T: type QMetaObjectConnection, h: ptr cQMetaObjectConnection): QMetaObjectConnection =
  T(h: h)
proc create*(T: type QMetaObjectConnection, ): QMetaObjectConnection =

  QMetaObjectConnection.init(fcQMetaObjectConnection_new())
proc create*(T: type QMetaObjectConnection, other: QMetaObjectConnection): QMetaObjectConnection =

  QMetaObjectConnection.init(fcQMetaObjectConnection_new2(other.h))
proc operatorAssign*(self: QMetaObjectConnection, other: QMetaObjectConnection): void =

  fcQMetaObjectConnection_operatorAssign(self.h, other.h)

proc delete*(self: QMetaObjectConnection) =
  fcQMetaObjectConnection_delete(self.h)

func init*(T: type QMetaObjectSuperData, h: ptr cQMetaObjectSuperData): QMetaObjectSuperData =
  T(h: h)
proc create*(T: type QMetaObjectSuperData, ): QMetaObjectSuperData =

  QMetaObjectSuperData.init(fcQMetaObjectSuperData_new())
proc create*(T: type QMetaObjectSuperData, mo: QMetaObject): QMetaObjectSuperData =

  QMetaObjectSuperData.init(fcQMetaObjectSuperData_new2(mo.h))
proc create2*(T: type QMetaObjectSuperData, param1: QMetaObjectSuperData): QMetaObjectSuperData =

  QMetaObjectSuperData.init(fcQMetaObjectSuperData_new3(param1.h))
proc operatorMinusGreater*(self: QMetaObjectSuperData, ): QMetaObject =

  QMetaObject(h: fcQMetaObjectSuperData_operatorMinusGreater(self.h))

proc ToConstQMetaObjectMultiply*(self: QMetaObjectSuperData, ): QMetaObject =

  QMetaObject(h: fcQMetaObjectSuperData_ToConstQMetaObjectMultiply(self.h))

proc operatorAssign*(self: QMetaObjectSuperData, param1: QMetaObjectSuperData): void =

  fcQMetaObjectSuperData_operatorAssign(self.h, param1.h)

proc delete*(self: QMetaObjectSuperData) =
  fcQMetaObjectSuperData_delete(self.h)
