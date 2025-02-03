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
{.compile("gen_qsgmaterial.cpp", cflags).}


type QSGMaterialFlag* = cint
const
  QSGMaterialBlending* = 1
  QSGMaterialRequiresDeterminant* = 2
  QSGMaterialRequiresFullMatrixExceptTranslate* = 6
  QSGMaterialRequiresFullMatrix* = 14
  QSGMaterialCustomCompileStep* = 16
  QSGMaterialSupportsRhiShader* = 32
  QSGMaterialRhiShaderWanted* = 4096



import gen_qsgmaterial_types
export gen_qsgmaterial_types

import
  gen_qsgmaterialshader,
  gen_qsgmaterialtype
export
  gen_qsgmaterialshader,
  gen_qsgmaterialtype

type cQSGMaterial*{.exportc: "QSGMaterial", incompleteStruct.} = object

proc fcQSGMaterial_new(): ptr cQSGMaterial {.importc: "QSGMaterial_new".}
proc fcQSGMaterial_typeX(self: pointer, ): pointer {.importc: "QSGMaterial_type".}
proc fcQSGMaterial_createShader(self: pointer, ): pointer {.importc: "QSGMaterial_createShader".}
proc fcQSGMaterial_compare(self: pointer, other: pointer): cint {.importc: "QSGMaterial_compare".}
proc fcQSGMaterial_flags(self: pointer, ): cint {.importc: "QSGMaterial_flags".}
proc fcQSGMaterial_setFlag(self: pointer, flags: cint): void {.importc: "QSGMaterial_setFlag".}
proc fcQSGMaterial_setFlag2(self: pointer, flags: cint, on: bool): void {.importc: "QSGMaterial_setFlag2".}
proc fcQSGMaterial_override_virtual_typeX(self: pointer, slot: int) {.importc: "QSGMaterial_override_virtual_type".}
proc fcQSGMaterial_override_virtual_createShader(self: pointer, slot: int) {.importc: "QSGMaterial_override_virtual_createShader".}
proc fQSGMaterial_virtualbase_compare(self: pointer, other: pointer): cint{.importc: "QSGMaterial_virtualbase_compare".}
proc fcQSGMaterial_override_virtual_compare(self: pointer, slot: int) {.importc: "QSGMaterial_override_virtual_compare".}
proc fcQSGMaterial_delete(self: pointer) {.importc: "QSGMaterial_delete".}


func init*(T: type QSGMaterial, h: ptr cQSGMaterial): QSGMaterial =
  T(h: h)
proc create*(T: type QSGMaterial, ): QSGMaterial =

  QSGMaterial.init(fcQSGMaterial_new())
proc typeX*(self: QSGMaterial, ): gen_qsgmaterialtype.QSGMaterialType =

  gen_qsgmaterialtype.QSGMaterialType(h: fcQSGMaterial_typeX(self.h))

proc createShader*(self: QSGMaterial, ): gen_qsgmaterialshader.QSGMaterialShader =

  gen_qsgmaterialshader.QSGMaterialShader(h: fcQSGMaterial_createShader(self.h))

proc compare*(self: QSGMaterial, other: QSGMaterial): cint =

  fcQSGMaterial_compare(self.h, other.h)

proc flags*(self: QSGMaterial, ): QSGMaterialFlag =

  QSGMaterialFlag(fcQSGMaterial_flags(self.h))

proc setFlag*(self: QSGMaterial, flags: QSGMaterialFlag): void =

  fcQSGMaterial_setFlag(self.h, cint(flags))

proc setFlag2*(self: QSGMaterial, flags: QSGMaterialFlag, on: bool): void =

  fcQSGMaterial_setFlag2(self.h, cint(flags), on)

type QSGMaterialtypeXBase* = proc(): gen_qsgmaterialtype.QSGMaterialType
proc ontypeX*(self: QSGMaterial, slot: proc(): gen_qsgmaterialtype.QSGMaterialType) =
  # TODO check subclass
  type Cb = proc(): gen_qsgmaterialtype.QSGMaterialType
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterial_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterial_type(self: ptr cQSGMaterial, slot: int): pointer {.exportc: "miqt_exec_callback_QSGMaterial_type ".} =
  type Cb = proc(): gen_qsgmaterialtype.QSGMaterialType
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
type QSGMaterialcreateShaderBase* = proc(): gen_qsgmaterialshader.QSGMaterialShader
proc oncreateShader*(self: QSGMaterial, slot: proc(): gen_qsgmaterialshader.QSGMaterialShader) =
  # TODO check subclass
  type Cb = proc(): gen_qsgmaterialshader.QSGMaterialShader
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterial_override_virtual_createShader(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterial_createShader(self: ptr cQSGMaterial, slot: int): pointer {.exportc: "miqt_exec_callback_QSGMaterial_createShader ".} =
  type Cb = proc(): gen_qsgmaterialshader.QSGMaterialShader
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc callVirtualBase_compare(self: QSGMaterial, other: QSGMaterial): cint =


  fQSGMaterial_virtualbase_compare(self.h, other.h)

type QSGMaterialcompareBase* = proc(other: QSGMaterial): cint
proc oncompare*(self: QSGMaterial, slot: proc(super: QSGMaterialcompareBase, other: QSGMaterial): cint) =
  # TODO check subclass
  type Cb = proc(super: QSGMaterialcompareBase, other: QSGMaterial): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterial_override_virtual_compare(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterial_compare(self: ptr cQSGMaterial, slot: int, other: pointer): cint {.exportc: "miqt_exec_callback_QSGMaterial_compare ".} =
  type Cb = proc(super: QSGMaterialcompareBase, other: QSGMaterial): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(other: QSGMaterial): auto =
    callVirtualBase_compare(QSGMaterial(h: self), other)
  let slotval1 = QSGMaterial(h: other)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc delete*(self: QSGMaterial) =
  fcQSGMaterial_delete(self.h)
