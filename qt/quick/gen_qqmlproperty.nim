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
{.compile("gen_qqmlproperty.cpp", cflags).}


type QQmlPropertyPropertyTypeCategory* = cint
const
  QQmlPropertyInvalidCategory* = 0
  QQmlPropertyList* = 1
  QQmlPropertyObject* = 2
  QQmlPropertyNormal* = 3



type QQmlPropertyType* = cint
const
  QQmlPropertyInvalid* = 0
  QQmlPropertyProperty* = 1
  QQmlPropertySignalProperty* = 2



import gen_qqmlproperty_types
export gen_qqmlproperty_types

import
  gen_qmetaobject,
  gen_qobject,
  gen_qqmlcontext,
  gen_qqmlengine,
  gen_qvariant
export
  gen_qmetaobject,
  gen_qobject,
  gen_qqmlcontext,
  gen_qqmlengine,
  gen_qvariant

type cQQmlProperty*{.exportc: "QQmlProperty", incompleteStruct.} = object

proc fcQQmlProperty_new(): ptr cQQmlProperty {.importc: "QQmlProperty_new".}
proc fcQQmlProperty_new2(param1: pointer): ptr cQQmlProperty {.importc: "QQmlProperty_new2".}
proc fcQQmlProperty_new3(param1: pointer, param2: pointer): ptr cQQmlProperty {.importc: "QQmlProperty_new3".}
proc fcQQmlProperty_new4(param1: pointer, param2: pointer): ptr cQQmlProperty {.importc: "QQmlProperty_new4".}
proc fcQQmlProperty_new5(param1: pointer, param2: struct_miqt_string): ptr cQQmlProperty {.importc: "QQmlProperty_new5".}
proc fcQQmlProperty_new6(param1: pointer, param2: struct_miqt_string, param3: pointer): ptr cQQmlProperty {.importc: "QQmlProperty_new6".}
proc fcQQmlProperty_new7(param1: pointer, param2: struct_miqt_string, param3: pointer): ptr cQQmlProperty {.importc: "QQmlProperty_new7".}
proc fcQQmlProperty_new8(param1: pointer): ptr cQQmlProperty {.importc: "QQmlProperty_new8".}
proc fcQQmlProperty_operatorAssign(self: pointer, param1: pointer): void {.importc: "QQmlProperty_operatorAssign".}
proc fcQQmlProperty_operatorEqual(self: pointer, param1: pointer): bool {.importc: "QQmlProperty_operatorEqual".}
proc fcQQmlProperty_typeX(self: pointer, ): cint {.importc: "QQmlProperty_type".}
proc fcQQmlProperty_isValid(self: pointer, ): bool {.importc: "QQmlProperty_isValid".}
proc fcQQmlProperty_isProperty(self: pointer, ): bool {.importc: "QQmlProperty_isProperty".}
proc fcQQmlProperty_isSignalProperty(self: pointer, ): bool {.importc: "QQmlProperty_isSignalProperty".}
proc fcQQmlProperty_propertyType(self: pointer, ): cint {.importc: "QQmlProperty_propertyType".}
proc fcQQmlProperty_propertyTypeCategory(self: pointer, ): cint {.importc: "QQmlProperty_propertyTypeCategory".}
proc fcQQmlProperty_propertyTypeName(self: pointer, ): cstring {.importc: "QQmlProperty_propertyTypeName".}
proc fcQQmlProperty_name(self: pointer, ): struct_miqt_string {.importc: "QQmlProperty_name".}
proc fcQQmlProperty_read(self: pointer, ): pointer {.importc: "QQmlProperty_read".}
proc fcQQmlProperty_read2(param1: pointer, param2: struct_miqt_string): pointer {.importc: "QQmlProperty_read2".}
proc fcQQmlProperty_read3(param1: pointer, param2: struct_miqt_string, param3: pointer): pointer {.importc: "QQmlProperty_read3".}
proc fcQQmlProperty_read4(param1: pointer, param2: struct_miqt_string, param3: pointer): pointer {.importc: "QQmlProperty_read4".}
proc fcQQmlProperty_write(self: pointer, param1: pointer): bool {.importc: "QQmlProperty_write".}
proc fcQQmlProperty_write2(param1: pointer, param2: struct_miqt_string, param3: pointer): bool {.importc: "QQmlProperty_write2".}
proc fcQQmlProperty_write3(param1: pointer, param2: struct_miqt_string, param3: pointer, param4: pointer): bool {.importc: "QQmlProperty_write3".}
proc fcQQmlProperty_write4(param1: pointer, param2: struct_miqt_string, param3: pointer, param4: pointer): bool {.importc: "QQmlProperty_write4".}
proc fcQQmlProperty_reset(self: pointer, ): bool {.importc: "QQmlProperty_reset".}
proc fcQQmlProperty_hasNotifySignal(self: pointer, ): bool {.importc: "QQmlProperty_hasNotifySignal".}
proc fcQQmlProperty_needsNotifySignal(self: pointer, ): bool {.importc: "QQmlProperty_needsNotifySignal".}
proc fcQQmlProperty_connectNotifySignal(self: pointer, dest: pointer, slot: cstring): bool {.importc: "QQmlProperty_connectNotifySignal".}
proc fcQQmlProperty_connectNotifySignal2(self: pointer, dest: pointer, methodVal: cint): bool {.importc: "QQmlProperty_connectNotifySignal2".}
proc fcQQmlProperty_isWritable(self: pointer, ): bool {.importc: "QQmlProperty_isWritable".}
proc fcQQmlProperty_isDesignable(self: pointer, ): bool {.importc: "QQmlProperty_isDesignable".}
proc fcQQmlProperty_isResettable(self: pointer, ): bool {.importc: "QQmlProperty_isResettable".}
proc fcQQmlProperty_objectX(self: pointer, ): pointer {.importc: "QQmlProperty_object".}
proc fcQQmlProperty_index(self: pointer, ): cint {.importc: "QQmlProperty_index".}
proc fcQQmlProperty_property(self: pointer, ): pointer {.importc: "QQmlProperty_property".}
proc fcQQmlProperty_methodX(self: pointer, ): pointer {.importc: "QQmlProperty_method".}
proc fcQQmlProperty_delete(self: pointer) {.importc: "QQmlProperty_delete".}


func init*(T: type QQmlProperty, h: ptr cQQmlProperty): QQmlProperty =
  T(h: h)
proc create*(T: type QQmlProperty, ): QQmlProperty =

  QQmlProperty.init(fcQQmlProperty_new())
proc create*(T: type QQmlProperty, param1: gen_qobject.QObject): QQmlProperty =

  QQmlProperty.init(fcQQmlProperty_new2(param1.h))
proc create*(T: type QQmlProperty, param1: gen_qobject.QObject, param2: gen_qqmlcontext.QQmlContext): QQmlProperty =

  QQmlProperty.init(fcQQmlProperty_new3(param1.h, param2.h))
proc create2*(T: type QQmlProperty, param1: gen_qobject.QObject, param2: gen_qqmlengine.QQmlEngine): QQmlProperty =

  QQmlProperty.init(fcQQmlProperty_new4(param1.h, param2.h))
proc create*(T: type QQmlProperty, param1: gen_qobject.QObject, param2: string): QQmlProperty =

  QQmlProperty.init(fcQQmlProperty_new5(param1.h, struct_miqt_string(data: param2, len: csize_t(len(param2)))))
proc create*(T: type QQmlProperty, param1: gen_qobject.QObject, param2: string, param3: gen_qqmlcontext.QQmlContext): QQmlProperty =

  QQmlProperty.init(fcQQmlProperty_new6(param1.h, struct_miqt_string(data: param2, len: csize_t(len(param2))), param3.h))
proc create2*(T: type QQmlProperty, param1: gen_qobject.QObject, param2: string, param3: gen_qqmlengine.QQmlEngine): QQmlProperty =

  QQmlProperty.init(fcQQmlProperty_new7(param1.h, struct_miqt_string(data: param2, len: csize_t(len(param2))), param3.h))
proc create2*(T: type QQmlProperty, param1: QQmlProperty): QQmlProperty =

  QQmlProperty.init(fcQQmlProperty_new8(param1.h))
proc operatorAssign*(self: QQmlProperty, param1: QQmlProperty): void =

  fcQQmlProperty_operatorAssign(self.h, param1.h)

proc operatorEqual*(self: QQmlProperty, param1: QQmlProperty): bool =

  fcQQmlProperty_operatorEqual(self.h, param1.h)

proc typeX*(self: QQmlProperty, ): QQmlPropertyType =

  QQmlPropertyType(fcQQmlProperty_typeX(self.h))

proc isValid*(self: QQmlProperty, ): bool =

  fcQQmlProperty_isValid(self.h)

proc isProperty*(self: QQmlProperty, ): bool =

  fcQQmlProperty_isProperty(self.h)

proc isSignalProperty*(self: QQmlProperty, ): bool =

  fcQQmlProperty_isSignalProperty(self.h)

proc propertyType*(self: QQmlProperty, ): cint =

  fcQQmlProperty_propertyType(self.h)

proc propertyTypeCategory*(self: QQmlProperty, ): QQmlPropertyPropertyTypeCategory =

  QQmlPropertyPropertyTypeCategory(fcQQmlProperty_propertyTypeCategory(self.h))

proc propertyTypeName*(self: QQmlProperty, ): cstring =

  (fcQQmlProperty_propertyTypeName(self.h))

proc name*(self: QQmlProperty, ): string =

  let v_ms = fcQQmlProperty_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc read*(self: QQmlProperty, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQQmlProperty_read(self.h))

proc read2*(_: type QQmlProperty, param1: gen_qobject.QObject, param2: string): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQQmlProperty_read2(param1.h, struct_miqt_string(data: param2, len: csize_t(len(param2)))))

proc read3*(_: type QQmlProperty, param1: gen_qobject.QObject, param2: string, param3: gen_qqmlcontext.QQmlContext): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQQmlProperty_read3(param1.h, struct_miqt_string(data: param2, len: csize_t(len(param2))), param3.h))

proc read4*(_: type QQmlProperty, param1: gen_qobject.QObject, param2: string, param3: gen_qqmlengine.QQmlEngine): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQQmlProperty_read4(param1.h, struct_miqt_string(data: param2, len: csize_t(len(param2))), param3.h))

proc write*(self: QQmlProperty, param1: gen_qvariant.QVariant): bool =

  fcQQmlProperty_write(self.h, param1.h)

proc write2*(_: type QQmlProperty, param1: gen_qobject.QObject, param2: string, param3: gen_qvariant.QVariant): bool =

  fcQQmlProperty_write2(param1.h, struct_miqt_string(data: param2, len: csize_t(len(param2))), param3.h)

proc write3*(_: type QQmlProperty, param1: gen_qobject.QObject, param2: string, param3: gen_qvariant.QVariant, param4: gen_qqmlcontext.QQmlContext): bool =

  fcQQmlProperty_write3(param1.h, struct_miqt_string(data: param2, len: csize_t(len(param2))), param3.h, param4.h)

proc write4*(_: type QQmlProperty, param1: gen_qobject.QObject, param2: string, param3: gen_qvariant.QVariant, param4: gen_qqmlengine.QQmlEngine): bool =

  fcQQmlProperty_write4(param1.h, struct_miqt_string(data: param2, len: csize_t(len(param2))), param3.h, param4.h)

proc reset*(self: QQmlProperty, ): bool =

  fcQQmlProperty_reset(self.h)

proc hasNotifySignal*(self: QQmlProperty, ): bool =

  fcQQmlProperty_hasNotifySignal(self.h)

proc needsNotifySignal*(self: QQmlProperty, ): bool =

  fcQQmlProperty_needsNotifySignal(self.h)

proc connectNotifySignal*(self: QQmlProperty, dest: gen_qobject.QObject, slot: cstring): bool =

  fcQQmlProperty_connectNotifySignal(self.h, dest.h, slot)

proc connectNotifySignal2*(self: QQmlProperty, dest: gen_qobject.QObject, methodVal: cint): bool =

  fcQQmlProperty_connectNotifySignal2(self.h, dest.h, methodVal)

proc isWritable*(self: QQmlProperty, ): bool =

  fcQQmlProperty_isWritable(self.h)

proc isDesignable*(self: QQmlProperty, ): bool =

  fcQQmlProperty_isDesignable(self.h)

proc isResettable*(self: QQmlProperty, ): bool =

  fcQQmlProperty_isResettable(self.h)

proc objectX*(self: QQmlProperty, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQQmlProperty_objectX(self.h))

proc index*(self: QQmlProperty, ): cint =

  fcQQmlProperty_index(self.h)

proc property*(self: QQmlProperty, ): gen_qmetaobject.QMetaProperty =

  gen_qmetaobject.QMetaProperty(h: fcQQmlProperty_property(self.h))

proc methodX*(self: QQmlProperty, ): gen_qmetaobject.QMetaMethod =

  gen_qmetaobject.QMetaMethod(h: fcQQmlProperty_methodX(self.h))

proc delete*(self: QQmlProperty) =
  fcQQmlProperty_delete(self.h)
