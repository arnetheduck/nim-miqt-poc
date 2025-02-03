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
{.compile("gen_qsgtexturematerial.cpp", cflags).}


import gen_qsgtexturematerial_types
export gen_qsgtexturematerial_types

import
  gen_qsgmaterial,
  gen_qsgmaterialshader,
  gen_qsgmaterialtype,
  gen_qsgtexture
export
  gen_qsgmaterial,
  gen_qsgmaterialshader,
  gen_qsgmaterialtype,
  gen_qsgtexture

type cQSGOpaqueTextureMaterial*{.exportc: "QSGOpaqueTextureMaterial", incompleteStruct.} = object
type cQSGTextureMaterial*{.exportc: "QSGTextureMaterial", incompleteStruct.} = object

proc fcQSGOpaqueTextureMaterial_new(): ptr cQSGOpaqueTextureMaterial {.importc: "QSGOpaqueTextureMaterial_new".}
proc fcQSGOpaqueTextureMaterial_typeX(self: pointer, ): pointer {.importc: "QSGOpaqueTextureMaterial_type".}
proc fcQSGOpaqueTextureMaterial_createShader(self: pointer, ): pointer {.importc: "QSGOpaqueTextureMaterial_createShader".}
proc fcQSGOpaqueTextureMaterial_compare(self: pointer, other: pointer): cint {.importc: "QSGOpaqueTextureMaterial_compare".}
proc fcQSGOpaqueTextureMaterial_setTexture(self: pointer, texture: pointer): void {.importc: "QSGOpaqueTextureMaterial_setTexture".}
proc fcQSGOpaqueTextureMaterial_texture(self: pointer, ): pointer {.importc: "QSGOpaqueTextureMaterial_texture".}
proc fcQSGOpaqueTextureMaterial_setMipmapFiltering(self: pointer, filteringType: cint): void {.importc: "QSGOpaqueTextureMaterial_setMipmapFiltering".}
proc fcQSGOpaqueTextureMaterial_mipmapFiltering(self: pointer, ): cint {.importc: "QSGOpaqueTextureMaterial_mipmapFiltering".}
proc fcQSGOpaqueTextureMaterial_setFiltering(self: pointer, filteringType: cint): void {.importc: "QSGOpaqueTextureMaterial_setFiltering".}
proc fcQSGOpaqueTextureMaterial_filtering(self: pointer, ): cint {.importc: "QSGOpaqueTextureMaterial_filtering".}
proc fcQSGOpaqueTextureMaterial_setHorizontalWrapMode(self: pointer, mode: cint): void {.importc: "QSGOpaqueTextureMaterial_setHorizontalWrapMode".}
proc fcQSGOpaqueTextureMaterial_horizontalWrapMode(self: pointer, ): cint {.importc: "QSGOpaqueTextureMaterial_horizontalWrapMode".}
proc fcQSGOpaqueTextureMaterial_setVerticalWrapMode(self: pointer, mode: cint): void {.importc: "QSGOpaqueTextureMaterial_setVerticalWrapMode".}
proc fcQSGOpaqueTextureMaterial_verticalWrapMode(self: pointer, ): cint {.importc: "QSGOpaqueTextureMaterial_verticalWrapMode".}
proc fcQSGOpaqueTextureMaterial_setAnisotropyLevel(self: pointer, level: cint): void {.importc: "QSGOpaqueTextureMaterial_setAnisotropyLevel".}
proc fcQSGOpaqueTextureMaterial_anisotropyLevel(self: pointer, ): cint {.importc: "QSGOpaqueTextureMaterial_anisotropyLevel".}
proc fQSGOpaqueTextureMaterial_virtualbase_type(self: pointer, ): pointer{.importc: "QSGOpaqueTextureMaterial_virtualbase_type".}
proc fcQSGOpaqueTextureMaterial_override_virtual_typeX(self: pointer, slot: int) {.importc: "QSGOpaqueTextureMaterial_override_virtual_type".}
proc fQSGOpaqueTextureMaterial_virtualbase_createShader(self: pointer, ): pointer{.importc: "QSGOpaqueTextureMaterial_virtualbase_createShader".}
proc fcQSGOpaqueTextureMaterial_override_virtual_createShader(self: pointer, slot: int) {.importc: "QSGOpaqueTextureMaterial_override_virtual_createShader".}
proc fQSGOpaqueTextureMaterial_virtualbase_compare(self: pointer, other: pointer): cint{.importc: "QSGOpaqueTextureMaterial_virtualbase_compare".}
proc fcQSGOpaqueTextureMaterial_override_virtual_compare(self: pointer, slot: int) {.importc: "QSGOpaqueTextureMaterial_override_virtual_compare".}
proc fcQSGOpaqueTextureMaterial_delete(self: pointer) {.importc: "QSGOpaqueTextureMaterial_delete".}
proc fcQSGTextureMaterial_typeX(self: pointer, ): pointer {.importc: "QSGTextureMaterial_type".}
proc fcQSGTextureMaterial_createShader(self: pointer, ): pointer {.importc: "QSGTextureMaterial_createShader".}
proc fcQSGTextureMaterial_delete(self: pointer) {.importc: "QSGTextureMaterial_delete".}


func init*(T: type QSGOpaqueTextureMaterial, h: ptr cQSGOpaqueTextureMaterial): QSGOpaqueTextureMaterial =
  T(h: h)
proc create*(T: type QSGOpaqueTextureMaterial, ): QSGOpaqueTextureMaterial =

  QSGOpaqueTextureMaterial.init(fcQSGOpaqueTextureMaterial_new())
proc typeX*(self: QSGOpaqueTextureMaterial, ): gen_qsgmaterialtype.QSGMaterialType =

  gen_qsgmaterialtype.QSGMaterialType(h: fcQSGOpaqueTextureMaterial_typeX(self.h))

proc createShader*(self: QSGOpaqueTextureMaterial, ): gen_qsgmaterialshader.QSGMaterialShader =

  gen_qsgmaterialshader.QSGMaterialShader(h: fcQSGOpaqueTextureMaterial_createShader(self.h))

proc compare*(self: QSGOpaqueTextureMaterial, other: gen_qsgmaterial.QSGMaterial): cint =

  fcQSGOpaqueTextureMaterial_compare(self.h, other.h)

proc setTexture*(self: QSGOpaqueTextureMaterial, texture: gen_qsgtexture.QSGTexture): void =

  fcQSGOpaqueTextureMaterial_setTexture(self.h, texture.h)

proc texture*(self: QSGOpaqueTextureMaterial, ): gen_qsgtexture.QSGTexture =

  gen_qsgtexture.QSGTexture(h: fcQSGOpaqueTextureMaterial_texture(self.h))

proc setMipmapFiltering*(self: QSGOpaqueTextureMaterial, filteringType: gen_qsgtexture.QSGTextureFiltering): void =

  fcQSGOpaqueTextureMaterial_setMipmapFiltering(self.h, cint(filteringType))

proc mipmapFiltering*(self: QSGOpaqueTextureMaterial, ): gen_qsgtexture.QSGTextureFiltering =

  gen_qsgtexture.QSGTextureFiltering(fcQSGOpaqueTextureMaterial_mipmapFiltering(self.h))

proc setFiltering*(self: QSGOpaqueTextureMaterial, filteringType: gen_qsgtexture.QSGTextureFiltering): void =

  fcQSGOpaqueTextureMaterial_setFiltering(self.h, cint(filteringType))

proc filtering*(self: QSGOpaqueTextureMaterial, ): gen_qsgtexture.QSGTextureFiltering =

  gen_qsgtexture.QSGTextureFiltering(fcQSGOpaqueTextureMaterial_filtering(self.h))

proc setHorizontalWrapMode*(self: QSGOpaqueTextureMaterial, mode: gen_qsgtexture.QSGTextureWrapMode): void =

  fcQSGOpaqueTextureMaterial_setHorizontalWrapMode(self.h, cint(mode))

proc horizontalWrapMode*(self: QSGOpaqueTextureMaterial, ): gen_qsgtexture.QSGTextureWrapMode =

  gen_qsgtexture.QSGTextureWrapMode(fcQSGOpaqueTextureMaterial_horizontalWrapMode(self.h))

proc setVerticalWrapMode*(self: QSGOpaqueTextureMaterial, mode: gen_qsgtexture.QSGTextureWrapMode): void =

  fcQSGOpaqueTextureMaterial_setVerticalWrapMode(self.h, cint(mode))

proc verticalWrapMode*(self: QSGOpaqueTextureMaterial, ): gen_qsgtexture.QSGTextureWrapMode =

  gen_qsgtexture.QSGTextureWrapMode(fcQSGOpaqueTextureMaterial_verticalWrapMode(self.h))

proc setAnisotropyLevel*(self: QSGOpaqueTextureMaterial, level: gen_qsgtexture.QSGTextureAnisotropyLevel): void =

  fcQSGOpaqueTextureMaterial_setAnisotropyLevel(self.h, cint(level))

proc anisotropyLevel*(self: QSGOpaqueTextureMaterial, ): gen_qsgtexture.QSGTextureAnisotropyLevel =

  gen_qsgtexture.QSGTextureAnisotropyLevel(fcQSGOpaqueTextureMaterial_anisotropyLevel(self.h))

proc callVirtualBase_typeX(self: QSGOpaqueTextureMaterial, ): gen_qsgmaterialtype.QSGMaterialType =


  gen_qsgmaterialtype.QSGMaterialType(h: fQSGOpaqueTextureMaterial_virtualbase_type(self.h))

type QSGOpaqueTextureMaterialtypeXBase* = proc(): gen_qsgmaterialtype.QSGMaterialType
proc ontypeX*(self: QSGOpaqueTextureMaterial, slot: proc(super: QSGOpaqueTextureMaterialtypeXBase): gen_qsgmaterialtype.QSGMaterialType) =
  # TODO check subclass
  type Cb = proc(super: QSGOpaqueTextureMaterialtypeXBase): gen_qsgmaterialtype.QSGMaterialType
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGOpaqueTextureMaterial_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGOpaqueTextureMaterial_type(self: ptr cQSGOpaqueTextureMaterial, slot: int): pointer {.exportc: "miqt_exec_callback_QSGOpaqueTextureMaterial_type ".} =
  type Cb = proc(super: QSGOpaqueTextureMaterialtypeXBase): gen_qsgmaterialtype.QSGMaterialType
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_typeX(QSGOpaqueTextureMaterial(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_createShader(self: QSGOpaqueTextureMaterial, ): gen_qsgmaterialshader.QSGMaterialShader =


  gen_qsgmaterialshader.QSGMaterialShader(h: fQSGOpaqueTextureMaterial_virtualbase_createShader(self.h))

type QSGOpaqueTextureMaterialcreateShaderBase* = proc(): gen_qsgmaterialshader.QSGMaterialShader
proc oncreateShader*(self: QSGOpaqueTextureMaterial, slot: proc(super: QSGOpaqueTextureMaterialcreateShaderBase): gen_qsgmaterialshader.QSGMaterialShader) =
  # TODO check subclass
  type Cb = proc(super: QSGOpaqueTextureMaterialcreateShaderBase): gen_qsgmaterialshader.QSGMaterialShader
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGOpaqueTextureMaterial_override_virtual_createShader(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGOpaqueTextureMaterial_createShader(self: ptr cQSGOpaqueTextureMaterial, slot: int): pointer {.exportc: "miqt_exec_callback_QSGOpaqueTextureMaterial_createShader ".} =
  type Cb = proc(super: QSGOpaqueTextureMaterialcreateShaderBase): gen_qsgmaterialshader.QSGMaterialShader
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_createShader(QSGOpaqueTextureMaterial(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_compare(self: QSGOpaqueTextureMaterial, other: gen_qsgmaterial.QSGMaterial): cint =


  fQSGOpaqueTextureMaterial_virtualbase_compare(self.h, other.h)

type QSGOpaqueTextureMaterialcompareBase* = proc(other: gen_qsgmaterial.QSGMaterial): cint
proc oncompare*(self: QSGOpaqueTextureMaterial, slot: proc(super: QSGOpaqueTextureMaterialcompareBase, other: gen_qsgmaterial.QSGMaterial): cint) =
  # TODO check subclass
  type Cb = proc(super: QSGOpaqueTextureMaterialcompareBase, other: gen_qsgmaterial.QSGMaterial): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGOpaqueTextureMaterial_override_virtual_compare(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGOpaqueTextureMaterial_compare(self: ptr cQSGOpaqueTextureMaterial, slot: int, other: pointer): cint {.exportc: "miqt_exec_callback_QSGOpaqueTextureMaterial_compare ".} =
  type Cb = proc(super: QSGOpaqueTextureMaterialcompareBase, other: gen_qsgmaterial.QSGMaterial): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(other: gen_qsgmaterial.QSGMaterial): auto =
    callVirtualBase_compare(QSGOpaqueTextureMaterial(h: self), other)
  let slotval1 = gen_qsgmaterial.QSGMaterial(h: other)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc delete*(self: QSGOpaqueTextureMaterial) =
  fcQSGOpaqueTextureMaterial_delete(self.h)

func init*(T: type QSGTextureMaterial, h: ptr cQSGTextureMaterial): QSGTextureMaterial =
  T(h: h)
proc typeX*(self: QSGTextureMaterial, ): gen_qsgmaterialtype.QSGMaterialType =

  gen_qsgmaterialtype.QSGMaterialType(h: fcQSGTextureMaterial_typeX(self.h))

proc createShader*(self: QSGTextureMaterial, ): gen_qsgmaterialshader.QSGMaterialShader =

  gen_qsgmaterialshader.QSGMaterialShader(h: fcQSGTextureMaterial_createShader(self.h))

proc delete*(self: QSGTextureMaterial) =
  fcQSGTextureMaterial_delete(self.h)
