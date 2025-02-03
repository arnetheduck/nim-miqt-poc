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
{.compile("gen_qsgvertexcolormaterial.cpp", cflags).}


import gen_qsgvertexcolormaterial_types
export gen_qsgvertexcolormaterial_types

import
  gen_qsgmaterial,
  gen_qsgmaterialshader,
  gen_qsgmaterialtype
export
  gen_qsgmaterial,
  gen_qsgmaterialshader,
  gen_qsgmaterialtype

type cQSGVertexColorMaterial*{.exportc: "QSGVertexColorMaterial", incompleteStruct.} = object

proc fcQSGVertexColorMaterial_new(): ptr cQSGVertexColorMaterial {.importc: "QSGVertexColorMaterial_new".}
proc fcQSGVertexColorMaterial_compare(self: pointer, other: pointer): cint {.importc: "QSGVertexColorMaterial_compare".}
proc fQSGVertexColorMaterial_virtualbase_compare(self: pointer, other: pointer): cint{.importc: "QSGVertexColorMaterial_virtualbase_compare".}
proc fcQSGVertexColorMaterial_override_virtual_compare(self: pointer, slot: int) {.importc: "QSGVertexColorMaterial_override_virtual_compare".}
proc fQSGVertexColorMaterial_virtualbase_type(self: pointer, ): pointer{.importc: "QSGVertexColorMaterial_virtualbase_type".}
proc fcQSGVertexColorMaterial_override_virtual_typeX(self: pointer, slot: int) {.importc: "QSGVertexColorMaterial_override_virtual_type".}
proc fQSGVertexColorMaterial_virtualbase_createShader(self: pointer, ): pointer{.importc: "QSGVertexColorMaterial_virtualbase_createShader".}
proc fcQSGVertexColorMaterial_override_virtual_createShader(self: pointer, slot: int) {.importc: "QSGVertexColorMaterial_override_virtual_createShader".}
proc fcQSGVertexColorMaterial_delete(self: pointer) {.importc: "QSGVertexColorMaterial_delete".}


func init*(T: type QSGVertexColorMaterial, h: ptr cQSGVertexColorMaterial): QSGVertexColorMaterial =
  T(h: h)
proc create*(T: type QSGVertexColorMaterial, ): QSGVertexColorMaterial =

  QSGVertexColorMaterial.init(fcQSGVertexColorMaterial_new())
proc compare*(self: QSGVertexColorMaterial, other: gen_qsgmaterial.QSGMaterial): cint =

  fcQSGVertexColorMaterial_compare(self.h, other.h)

proc callVirtualBase_compare(self: QSGVertexColorMaterial, other: gen_qsgmaterial.QSGMaterial): cint =


  fQSGVertexColorMaterial_virtualbase_compare(self.h, other.h)

type QSGVertexColorMaterialcompareBase* = proc(other: gen_qsgmaterial.QSGMaterial): cint
proc oncompare*(self: QSGVertexColorMaterial, slot: proc(super: QSGVertexColorMaterialcompareBase, other: gen_qsgmaterial.QSGMaterial): cint) =
  # TODO check subclass
  type Cb = proc(super: QSGVertexColorMaterialcompareBase, other: gen_qsgmaterial.QSGMaterial): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGVertexColorMaterial_override_virtual_compare(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGVertexColorMaterial_compare(self: ptr cQSGVertexColorMaterial, slot: int, other: pointer): cint {.exportc: "miqt_exec_callback_QSGVertexColorMaterial_compare ".} =
  type Cb = proc(super: QSGVertexColorMaterialcompareBase, other: gen_qsgmaterial.QSGMaterial): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(other: gen_qsgmaterial.QSGMaterial): auto =
    callVirtualBase_compare(QSGVertexColorMaterial(h: self), other)
  let slotval1 = gen_qsgmaterial.QSGMaterial(h: other)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_typeX(self: QSGVertexColorMaterial, ): gen_qsgmaterialtype.QSGMaterialType =


  gen_qsgmaterialtype.QSGMaterialType(h: fQSGVertexColorMaterial_virtualbase_type(self.h))

type QSGVertexColorMaterialtypeXBase* = proc(): gen_qsgmaterialtype.QSGMaterialType
proc ontypeX*(self: QSGVertexColorMaterial, slot: proc(super: QSGVertexColorMaterialtypeXBase): gen_qsgmaterialtype.QSGMaterialType) =
  # TODO check subclass
  type Cb = proc(super: QSGVertexColorMaterialtypeXBase): gen_qsgmaterialtype.QSGMaterialType
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGVertexColorMaterial_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGVertexColorMaterial_type(self: ptr cQSGVertexColorMaterial, slot: int): pointer {.exportc: "miqt_exec_callback_QSGVertexColorMaterial_type ".} =
  type Cb = proc(super: QSGVertexColorMaterialtypeXBase): gen_qsgmaterialtype.QSGMaterialType
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_typeX(QSGVertexColorMaterial(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_createShader(self: QSGVertexColorMaterial, ): gen_qsgmaterialshader.QSGMaterialShader =


  gen_qsgmaterialshader.QSGMaterialShader(h: fQSGVertexColorMaterial_virtualbase_createShader(self.h))

type QSGVertexColorMaterialcreateShaderBase* = proc(): gen_qsgmaterialshader.QSGMaterialShader
proc oncreateShader*(self: QSGVertexColorMaterial, slot: proc(super: QSGVertexColorMaterialcreateShaderBase): gen_qsgmaterialshader.QSGMaterialShader) =
  # TODO check subclass
  type Cb = proc(super: QSGVertexColorMaterialcreateShaderBase): gen_qsgmaterialshader.QSGMaterialShader
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGVertexColorMaterial_override_virtual_createShader(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGVertexColorMaterial_createShader(self: ptr cQSGVertexColorMaterial, slot: int): pointer {.exportc: "miqt_exec_callback_QSGVertexColorMaterial_createShader ".} =
  type Cb = proc(super: QSGVertexColorMaterialcreateShaderBase): gen_qsgmaterialshader.QSGMaterialShader
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_createShader(QSGVertexColorMaterial(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QSGVertexColorMaterial) =
  fcQSGVertexColorMaterial_delete(self.h)
