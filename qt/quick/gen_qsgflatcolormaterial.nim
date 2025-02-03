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
{.compile("gen_qsgflatcolormaterial.cpp", cflags).}


import gen_qsgflatcolormaterial_types
export gen_qsgflatcolormaterial_types

import
  gen_qcolor,
  gen_qsgmaterial,
  gen_qsgmaterialshader,
  gen_qsgmaterialtype
export
  gen_qcolor,
  gen_qsgmaterial,
  gen_qsgmaterialshader,
  gen_qsgmaterialtype

type cQSGFlatColorMaterial*{.exportc: "QSGFlatColorMaterial", incompleteStruct.} = object

proc fcQSGFlatColorMaterial_new(): ptr cQSGFlatColorMaterial {.importc: "QSGFlatColorMaterial_new".}
proc fcQSGFlatColorMaterial_typeX(self: pointer, ): pointer {.importc: "QSGFlatColorMaterial_type".}
proc fcQSGFlatColorMaterial_createShader(self: pointer, ): pointer {.importc: "QSGFlatColorMaterial_createShader".}
proc fcQSGFlatColorMaterial_setColor(self: pointer, color: pointer): void {.importc: "QSGFlatColorMaterial_setColor".}
proc fcQSGFlatColorMaterial_color(self: pointer, ): pointer {.importc: "QSGFlatColorMaterial_color".}
proc fcQSGFlatColorMaterial_compare(self: pointer, other: pointer): cint {.importc: "QSGFlatColorMaterial_compare".}
proc fQSGFlatColorMaterial_virtualbase_type(self: pointer, ): pointer{.importc: "QSGFlatColorMaterial_virtualbase_type".}
proc fcQSGFlatColorMaterial_override_virtual_typeX(self: pointer, slot: int) {.importc: "QSGFlatColorMaterial_override_virtual_type".}
proc fQSGFlatColorMaterial_virtualbase_createShader(self: pointer, ): pointer{.importc: "QSGFlatColorMaterial_virtualbase_createShader".}
proc fcQSGFlatColorMaterial_override_virtual_createShader(self: pointer, slot: int) {.importc: "QSGFlatColorMaterial_override_virtual_createShader".}
proc fQSGFlatColorMaterial_virtualbase_compare(self: pointer, other: pointer): cint{.importc: "QSGFlatColorMaterial_virtualbase_compare".}
proc fcQSGFlatColorMaterial_override_virtual_compare(self: pointer, slot: int) {.importc: "QSGFlatColorMaterial_override_virtual_compare".}
proc fcQSGFlatColorMaterial_delete(self: pointer) {.importc: "QSGFlatColorMaterial_delete".}


func init*(T: type QSGFlatColorMaterial, h: ptr cQSGFlatColorMaterial): QSGFlatColorMaterial =
  T(h: h)
proc create*(T: type QSGFlatColorMaterial, ): QSGFlatColorMaterial =

  QSGFlatColorMaterial.init(fcQSGFlatColorMaterial_new())
proc typeX*(self: QSGFlatColorMaterial, ): gen_qsgmaterialtype.QSGMaterialType =

  gen_qsgmaterialtype.QSGMaterialType(h: fcQSGFlatColorMaterial_typeX(self.h))

proc createShader*(self: QSGFlatColorMaterial, ): gen_qsgmaterialshader.QSGMaterialShader =

  gen_qsgmaterialshader.QSGMaterialShader(h: fcQSGFlatColorMaterial_createShader(self.h))

proc setColor*(self: QSGFlatColorMaterial, color: gen_qcolor.QColor): void =

  fcQSGFlatColorMaterial_setColor(self.h, color.h)

proc color*(self: QSGFlatColorMaterial, ): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQSGFlatColorMaterial_color(self.h))

proc compare*(self: QSGFlatColorMaterial, other: gen_qsgmaterial.QSGMaterial): cint =

  fcQSGFlatColorMaterial_compare(self.h, other.h)

proc callVirtualBase_typeX(self: QSGFlatColorMaterial, ): gen_qsgmaterialtype.QSGMaterialType =


  gen_qsgmaterialtype.QSGMaterialType(h: fQSGFlatColorMaterial_virtualbase_type(self.h))

type QSGFlatColorMaterialtypeXBase* = proc(): gen_qsgmaterialtype.QSGMaterialType
proc ontypeX*(self: QSGFlatColorMaterial, slot: proc(super: QSGFlatColorMaterialtypeXBase): gen_qsgmaterialtype.QSGMaterialType) =
  # TODO check subclass
  type Cb = proc(super: QSGFlatColorMaterialtypeXBase): gen_qsgmaterialtype.QSGMaterialType
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGFlatColorMaterial_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGFlatColorMaterial_type(self: ptr cQSGFlatColorMaterial, slot: int): pointer {.exportc: "miqt_exec_callback_QSGFlatColorMaterial_type ".} =
  type Cb = proc(super: QSGFlatColorMaterialtypeXBase): gen_qsgmaterialtype.QSGMaterialType
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_typeX(QSGFlatColorMaterial(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_createShader(self: QSGFlatColorMaterial, ): gen_qsgmaterialshader.QSGMaterialShader =


  gen_qsgmaterialshader.QSGMaterialShader(h: fQSGFlatColorMaterial_virtualbase_createShader(self.h))

type QSGFlatColorMaterialcreateShaderBase* = proc(): gen_qsgmaterialshader.QSGMaterialShader
proc oncreateShader*(self: QSGFlatColorMaterial, slot: proc(super: QSGFlatColorMaterialcreateShaderBase): gen_qsgmaterialshader.QSGMaterialShader) =
  # TODO check subclass
  type Cb = proc(super: QSGFlatColorMaterialcreateShaderBase): gen_qsgmaterialshader.QSGMaterialShader
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGFlatColorMaterial_override_virtual_createShader(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGFlatColorMaterial_createShader(self: ptr cQSGFlatColorMaterial, slot: int): pointer {.exportc: "miqt_exec_callback_QSGFlatColorMaterial_createShader ".} =
  type Cb = proc(super: QSGFlatColorMaterialcreateShaderBase): gen_qsgmaterialshader.QSGMaterialShader
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_createShader(QSGFlatColorMaterial(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_compare(self: QSGFlatColorMaterial, other: gen_qsgmaterial.QSGMaterial): cint =


  fQSGFlatColorMaterial_virtualbase_compare(self.h, other.h)

type QSGFlatColorMaterialcompareBase* = proc(other: gen_qsgmaterial.QSGMaterial): cint
proc oncompare*(self: QSGFlatColorMaterial, slot: proc(super: QSGFlatColorMaterialcompareBase, other: gen_qsgmaterial.QSGMaterial): cint) =
  # TODO check subclass
  type Cb = proc(super: QSGFlatColorMaterialcompareBase, other: gen_qsgmaterial.QSGMaterial): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGFlatColorMaterial_override_virtual_compare(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGFlatColorMaterial_compare(self: ptr cQSGFlatColorMaterial, slot: int, other: pointer): cint {.exportc: "miqt_exec_callback_QSGFlatColorMaterial_compare ".} =
  type Cb = proc(super: QSGFlatColorMaterialcompareBase, other: gen_qsgmaterial.QSGMaterial): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(other: gen_qsgmaterial.QSGMaterial): auto =
    callVirtualBase_compare(QSGFlatColorMaterial(h: self), other)
  let slotval1 = gen_qsgmaterial.QSGMaterial(h: other)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc delete*(self: QSGFlatColorMaterial) =
  fcQSGFlatColorMaterial_delete(self.h)
