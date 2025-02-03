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
{.compile("gen_qitemeditorfactory.cpp", cflags).}


import gen_qitemeditorfactory_types
export gen_qitemeditorfactory_types

import
  gen_qwidget
export
  gen_qwidget

type cQItemEditorCreatorBase*{.exportc: "QItemEditorCreatorBase", incompleteStruct.} = object
type cQItemEditorFactory*{.exportc: "QItemEditorFactory", incompleteStruct.} = object

proc fcQItemEditorCreatorBase_createWidget(self: pointer, parent: pointer): pointer {.importc: "QItemEditorCreatorBase_createWidget".}
proc fcQItemEditorCreatorBase_valuePropertyName(self: pointer, ): struct_miqt_string {.importc: "QItemEditorCreatorBase_valuePropertyName".}
proc fcQItemEditorCreatorBase_operatorAssign(self: pointer, param1: pointer): void {.importc: "QItemEditorCreatorBase_operatorAssign".}
proc fcQItemEditorCreatorBase_delete(self: pointer) {.importc: "QItemEditorCreatorBase_delete".}
proc fcQItemEditorFactory_new(): ptr cQItemEditorFactory {.importc: "QItemEditorFactory_new".}
proc fcQItemEditorFactory_new2(param1: pointer): ptr cQItemEditorFactory {.importc: "QItemEditorFactory_new2".}
proc fcQItemEditorFactory_createEditor(self: pointer, userType: cint, parent: pointer): pointer {.importc: "QItemEditorFactory_createEditor".}
proc fcQItemEditorFactory_valuePropertyName(self: pointer, userType: cint): struct_miqt_string {.importc: "QItemEditorFactory_valuePropertyName".}
proc fcQItemEditorFactory_registerEditor(self: pointer, userType: cint, creator: pointer): void {.importc: "QItemEditorFactory_registerEditor".}
proc fcQItemEditorFactory_defaultFactory(): pointer {.importc: "QItemEditorFactory_defaultFactory".}
proc fcQItemEditorFactory_setDefaultFactory(factory: pointer): void {.importc: "QItemEditorFactory_setDefaultFactory".}
proc fQItemEditorFactory_virtualbase_createEditor(self: pointer, userType: cint, parent: pointer): pointer{.importc: "QItemEditorFactory_virtualbase_createEditor".}
proc fcQItemEditorFactory_override_virtual_createEditor(self: pointer, slot: int) {.importc: "QItemEditorFactory_override_virtual_createEditor".}
proc fQItemEditorFactory_virtualbase_valuePropertyName(self: pointer, userType: cint): struct_miqt_string{.importc: "QItemEditorFactory_virtualbase_valuePropertyName".}
proc fcQItemEditorFactory_override_virtual_valuePropertyName(self: pointer, slot: int) {.importc: "QItemEditorFactory_override_virtual_valuePropertyName".}
proc fcQItemEditorFactory_delete(self: pointer) {.importc: "QItemEditorFactory_delete".}


func init*(T: type QItemEditorCreatorBase, h: ptr cQItemEditorCreatorBase): QItemEditorCreatorBase =
  T(h: h)
proc createWidget*(self: QItemEditorCreatorBase, parent: gen_qwidget.QWidget): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQItemEditorCreatorBase_createWidget(self.h, parent.h))

proc valuePropertyName*(self: QItemEditorCreatorBase, ): seq[byte] =

  var v_bytearray = fcQItemEditorCreatorBase_valuePropertyName(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc operatorAssign*(self: QItemEditorCreatorBase, param1: QItemEditorCreatorBase): void =

  fcQItemEditorCreatorBase_operatorAssign(self.h, param1.h)

proc delete*(self: QItemEditorCreatorBase) =
  fcQItemEditorCreatorBase_delete(self.h)

func init*(T: type QItemEditorFactory, h: ptr cQItemEditorFactory): QItemEditorFactory =
  T(h: h)
proc create*(T: type QItemEditorFactory, ): QItemEditorFactory =

  QItemEditorFactory.init(fcQItemEditorFactory_new())
proc create*(T: type QItemEditorFactory, param1: QItemEditorFactory): QItemEditorFactory =

  QItemEditorFactory.init(fcQItemEditorFactory_new2(param1.h))
proc createEditor*(self: QItemEditorFactory, userType: cint, parent: gen_qwidget.QWidget): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQItemEditorFactory_createEditor(self.h, userType, parent.h))

proc valuePropertyName*(self: QItemEditorFactory, userType: cint): seq[byte] =

  var v_bytearray = fcQItemEditorFactory_valuePropertyName(self.h, userType)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc registerEditor*(self: QItemEditorFactory, userType: cint, creator: QItemEditorCreatorBase): void =

  fcQItemEditorFactory_registerEditor(self.h, userType, creator.h)

proc defaultFactory*(_: type QItemEditorFactory, ): QItemEditorFactory =

  QItemEditorFactory(h: fcQItemEditorFactory_defaultFactory())

proc setDefaultFactory*(_: type QItemEditorFactory, factory: QItemEditorFactory): void =

  fcQItemEditorFactory_setDefaultFactory(factory.h)

proc callVirtualBase_createEditor(self: QItemEditorFactory, userType: cint, parent: gen_qwidget.QWidget): gen_qwidget.QWidget =


  gen_qwidget.QWidget(h: fQItemEditorFactory_virtualbase_createEditor(self.h, userType, parent.h))

type QItemEditorFactorycreateEditorBase* = proc(userType: cint, parent: gen_qwidget.QWidget): gen_qwidget.QWidget
proc oncreateEditor*(self: QItemEditorFactory, slot: proc(super: QItemEditorFactorycreateEditorBase, userType: cint, parent: gen_qwidget.QWidget): gen_qwidget.QWidget) =
  # TODO check subclass
  type Cb = proc(super: QItemEditorFactorycreateEditorBase, userType: cint, parent: gen_qwidget.QWidget): gen_qwidget.QWidget
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemEditorFactory_override_virtual_createEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemEditorFactory_createEditor(self: ptr cQItemEditorFactory, slot: int, userType: cint, parent: pointer): pointer {.exportc: "miqt_exec_callback_QItemEditorFactory_createEditor ".} =
  type Cb = proc(super: QItemEditorFactorycreateEditorBase, userType: cint, parent: gen_qwidget.QWidget): gen_qwidget.QWidget
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(userType: cint, parent: gen_qwidget.QWidget): auto =
    callVirtualBase_createEditor(QItemEditorFactory(h: self), userType, parent)
  let slotval1 = userType

  let slotval2 = gen_qwidget.QWidget(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_valuePropertyName(self: QItemEditorFactory, userType: cint): seq[byte] =


  var v_bytearray = fQItemEditorFactory_virtualbase_valuePropertyName(self.h, userType)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

type QItemEditorFactoryvaluePropertyNameBase* = proc(userType: cint): seq[byte]
proc onvaluePropertyName*(self: QItemEditorFactory, slot: proc(super: QItemEditorFactoryvaluePropertyNameBase, userType: cint): seq[byte]) =
  # TODO check subclass
  type Cb = proc(super: QItemEditorFactoryvaluePropertyNameBase, userType: cint): seq[byte]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemEditorFactory_override_virtual_valuePropertyName(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemEditorFactory_valuePropertyName(self: ptr cQItemEditorFactory, slot: int, userType: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QItemEditorFactory_valuePropertyName ".} =
  type Cb = proc(super: QItemEditorFactoryvaluePropertyNameBase, userType: cint): seq[byte]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(userType: cint): auto =
    callVirtualBase_valuePropertyName(QItemEditorFactory(h: self), userType)
  let slotval1 = userType


  let virtualReturn = nimfunc[](superCall, slotval1 )

  struct_miqt_string(data: cast[cstring](if len(virtualReturn) == 0: nil else: unsafeAddr virtualReturn[0]), len: csize_t(len(virtualReturn)))
proc delete*(self: QItemEditorFactory) =
  fcQItemEditorFactory_delete(self.h)
