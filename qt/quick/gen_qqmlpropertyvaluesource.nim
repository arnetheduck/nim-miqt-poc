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
{.compile("gen_qqmlpropertyvaluesource.cpp", cflags).}


import gen_qqmlpropertyvaluesource_types
export gen_qqmlpropertyvaluesource_types

import
  gen_qqmlproperty
export
  gen_qqmlproperty

type cQQmlPropertyValueSource*{.exportc: "QQmlPropertyValueSource", incompleteStruct.} = object

proc fcQQmlPropertyValueSource_new(): ptr cQQmlPropertyValueSource {.importc: "QQmlPropertyValueSource_new".}
proc fcQQmlPropertyValueSource_setTarget(self: pointer, target: pointer): void {.importc: "QQmlPropertyValueSource_setTarget".}
proc fcQQmlPropertyValueSource_operatorAssign(self: pointer, param1: pointer): void {.importc: "QQmlPropertyValueSource_operatorAssign".}
proc fcQQmlPropertyValueSource_override_virtual_setTarget(self: pointer, slot: int) {.importc: "QQmlPropertyValueSource_override_virtual_setTarget".}
proc fcQQmlPropertyValueSource_delete(self: pointer) {.importc: "QQmlPropertyValueSource_delete".}


func init*(T: type QQmlPropertyValueSource, h: ptr cQQmlPropertyValueSource): QQmlPropertyValueSource =
  T(h: h)
proc create*(T: type QQmlPropertyValueSource, ): QQmlPropertyValueSource =

  QQmlPropertyValueSource.init(fcQQmlPropertyValueSource_new())
proc setTarget*(self: QQmlPropertyValueSource, target: gen_qqmlproperty.QQmlProperty): void =

  fcQQmlPropertyValueSource_setTarget(self.h, target.h)

proc operatorAssign*(self: QQmlPropertyValueSource, param1: QQmlPropertyValueSource): void =

  fcQQmlPropertyValueSource_operatorAssign(self.h, param1.h)

type QQmlPropertyValueSourcesetTargetBase* = proc(target: gen_qqmlproperty.QQmlProperty): void
proc onsetTarget*(self: QQmlPropertyValueSource, slot: proc(target: gen_qqmlproperty.QQmlProperty): void) =
  # TODO check subclass
  type Cb = proc(target: gen_qqmlproperty.QQmlProperty): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlPropertyValueSource_override_virtual_setTarget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlPropertyValueSource_setTarget(self: ptr cQQmlPropertyValueSource, slot: int, target: pointer): void {.exportc: "miqt_exec_callback_QQmlPropertyValueSource_setTarget ".} =
  type Cb = proc(target: gen_qqmlproperty.QQmlProperty): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qqmlproperty.QQmlProperty(h: target)


  nimfunc[](slotval1)
proc delete*(self: QQmlPropertyValueSource) =
  fcQQmlPropertyValueSource_delete(self.h)
