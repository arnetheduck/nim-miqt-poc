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
{.compile("gen_qcolorspace.cpp", cflags).}


type QColorSpaceNamedColorSpaceEnum* = distinct cint
template SRgb*(_: type QColorSpaceNamedColorSpaceEnum): untyped = 1
template SRgbLinear*(_: type QColorSpaceNamedColorSpaceEnum): untyped = 2
template AdobeRgb*(_: type QColorSpaceNamedColorSpaceEnum): untyped = 3
template DisplayP3*(_: type QColorSpaceNamedColorSpaceEnum): untyped = 4
template ProPhotoRgb*(_: type QColorSpaceNamedColorSpaceEnum): untyped = 5


type QColorSpacePrimariesEnum* = distinct cint
template Custom*(_: type QColorSpacePrimariesEnum): untyped = 0
template SRgb*(_: type QColorSpacePrimariesEnum): untyped = 1
template AdobeRgb*(_: type QColorSpacePrimariesEnum): untyped = 2
template DciP3D65*(_: type QColorSpacePrimariesEnum): untyped = 3
template ProPhotoRgb*(_: type QColorSpacePrimariesEnum): untyped = 4


type QColorSpaceTransferFunctionEnum* = distinct cint
template Custom*(_: type QColorSpaceTransferFunctionEnum): untyped = 0
template Linear*(_: type QColorSpaceTransferFunctionEnum): untyped = 1
template Gamma*(_: type QColorSpaceTransferFunctionEnum): untyped = 2
template SRgb*(_: type QColorSpaceTransferFunctionEnum): untyped = 3
template ProPhotoRgb*(_: type QColorSpaceTransferFunctionEnum): untyped = 4

import gen_qcolorspace_types
export gen_qcolorspace_types

import
  gen_qcolortransform_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qvariant_types
export
  gen_qcolortransform_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qvariant_types

type cQColorSpace*{.exportc: "QColorSpace", incompleteStruct.} = object

proc fcQColorSpace_operatorAssign(self: pointer, colorSpace: pointer): void {.importc: "QColorSpace_operatorAssign".}
proc fcQColorSpace_swap(self: pointer, colorSpace: pointer): void {.importc: "QColorSpace_swap".}
proc fcQColorSpace_primaries(self: pointer, ): cint {.importc: "QColorSpace_primaries".}
proc fcQColorSpace_transferFunction(self: pointer, ): cint {.importc: "QColorSpace_transferFunction".}
proc fcQColorSpace_gamma(self: pointer, ): float32 {.importc: "QColorSpace_gamma".}
proc fcQColorSpace_description(self: pointer, ): struct_miqt_string {.importc: "QColorSpace_description".}
proc fcQColorSpace_setDescription(self: pointer, description: struct_miqt_string): void {.importc: "QColorSpace_setDescription".}
proc fcQColorSpace_setTransferFunction(self: pointer, transferFunction: cint): void {.importc: "QColorSpace_setTransferFunction".}
proc fcQColorSpace_setTransferFunctionWithTransferFunctionTable(self: pointer, transferFunctionTable: struct_miqt_array): void {.importc: "QColorSpace_setTransferFunctionWithTransferFunctionTable".}
proc fcQColorSpace_setTransferFunctions(self: pointer, redTransferFunctionTable: struct_miqt_array, greenTransferFunctionTable: struct_miqt_array, blueTransferFunctionTable: struct_miqt_array): void {.importc: "QColorSpace_setTransferFunctions".}
proc fcQColorSpace_withTransferFunction(self: pointer, transferFunction: cint): pointer {.importc: "QColorSpace_withTransferFunction".}
proc fcQColorSpace_withTransferFunctionWithTransferFunctionTable(self: pointer, transferFunctionTable: struct_miqt_array): pointer {.importc: "QColorSpace_withTransferFunctionWithTransferFunctionTable".}
proc fcQColorSpace_withTransferFunctions(self: pointer, redTransferFunctionTable: struct_miqt_array, greenTransferFunctionTable: struct_miqt_array, blueTransferFunctionTable: struct_miqt_array): pointer {.importc: "QColorSpace_withTransferFunctions".}
proc fcQColorSpace_setPrimaries(self: pointer, primariesId: cint): void {.importc: "QColorSpace_setPrimaries".}
proc fcQColorSpace_setPrimaries2(self: pointer, whitePoint: pointer, redPoint: pointer, greenPoint: pointer, bluePoint: pointer): void {.importc: "QColorSpace_setPrimaries2".}
proc fcQColorSpace_detach(self: pointer, ): void {.importc: "QColorSpace_detach".}
proc fcQColorSpace_isValid(self: pointer, ): bool {.importc: "QColorSpace_isValid".}
proc fcQColorSpace_fromIccProfile(iccProfile: struct_miqt_string): pointer {.importc: "QColorSpace_fromIccProfile".}
proc fcQColorSpace_iccProfile(self: pointer, ): struct_miqt_string {.importc: "QColorSpace_iccProfile".}
proc fcQColorSpace_transformationToColorSpace(self: pointer, colorspace: pointer): pointer {.importc: "QColorSpace_transformationToColorSpace".}
proc fcQColorSpace_ToQVariant(self: pointer, ): pointer {.importc: "QColorSpace_ToQVariant".}
proc fcQColorSpace_setTransferFunction2(self: pointer, transferFunction: cint, gamma: float32): void {.importc: "QColorSpace_setTransferFunction2".}
proc fcQColorSpace_withTransferFunction2(self: pointer, transferFunction: cint, gamma: float32): pointer {.importc: "QColorSpace_withTransferFunction2".}
proc fcQColorSpace_new(): ptr cQColorSpace {.importc: "QColorSpace_new".}
proc fcQColorSpace_new2(namedColorSpace: cint): ptr cQColorSpace {.importc: "QColorSpace_new2".}
proc fcQColorSpace_new3(primaries: cint, transferFunction: cint): ptr cQColorSpace {.importc: "QColorSpace_new3".}
proc fcQColorSpace_new4(primaries: cint, gamma: float32): ptr cQColorSpace {.importc: "QColorSpace_new4".}
proc fcQColorSpace_new5(primaries: cint, transferFunctionTable: struct_miqt_array): ptr cQColorSpace {.importc: "QColorSpace_new5".}
proc fcQColorSpace_new6(whitePoint: pointer, redPoint: pointer, greenPoint: pointer, bluePoint: pointer, transferFunction: cint): ptr cQColorSpace {.importc: "QColorSpace_new6".}
proc fcQColorSpace_new7(whitePoint: pointer, redPoint: pointer, greenPoint: pointer, bluePoint: pointer, transferFunctionTable: struct_miqt_array): ptr cQColorSpace {.importc: "QColorSpace_new7".}
proc fcQColorSpace_new8(whitePoint: pointer, redPoint: pointer, greenPoint: pointer, bluePoint: pointer, redTransferFunctionTable: struct_miqt_array, greenTransferFunctionTable: struct_miqt_array, blueTransferFunctionTable: struct_miqt_array): ptr cQColorSpace {.importc: "QColorSpace_new8".}
proc fcQColorSpace_new9(colorSpace: pointer): ptr cQColorSpace {.importc: "QColorSpace_new9".}
proc fcQColorSpace_new10(primaries: cint, transferFunction: cint, gamma: float32): ptr cQColorSpace {.importc: "QColorSpace_new10".}
proc fcQColorSpace_new11(whitePoint: pointer, redPoint: pointer, greenPoint: pointer, bluePoint: pointer, transferFunction: cint, gamma: float32): ptr cQColorSpace {.importc: "QColorSpace_new11".}
proc fcQColorSpace_staticMetaObject(): pointer {.importc: "QColorSpace_staticMetaObject".}
proc fcQColorSpace_delete(self: pointer) {.importc: "QColorSpace_delete".}

proc operatorAssign*(self: gen_qcolorspace_types.QColorSpace, colorSpace: gen_qcolorspace_types.QColorSpace): void =
  fcQColorSpace_operatorAssign(self.h, colorSpace.h)

proc swap*(self: gen_qcolorspace_types.QColorSpace, colorSpace: gen_qcolorspace_types.QColorSpace): void =
  fcQColorSpace_swap(self.h, colorSpace.h)

proc primaries*(self: gen_qcolorspace_types.QColorSpace, ): cint =
  cint(fcQColorSpace_primaries(self.h))

proc transferFunction*(self: gen_qcolorspace_types.QColorSpace, ): cint =
  cint(fcQColorSpace_transferFunction(self.h))

proc gamma*(self: gen_qcolorspace_types.QColorSpace, ): float32 =
  fcQColorSpace_gamma(self.h)

proc description*(self: gen_qcolorspace_types.QColorSpace, ): string =
  let v_ms = fcQColorSpace_description(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDescription*(self: gen_qcolorspace_types.QColorSpace, description: string): void =
  fcQColorSpace_setDescription(self.h, struct_miqt_string(data: description, len: csize_t(len(description))))

proc setTransferFunction*(self: gen_qcolorspace_types.QColorSpace, transferFunction: cint): void =
  fcQColorSpace_setTransferFunction(self.h, cint(transferFunction))

proc setTransferFunction*(self: gen_qcolorspace_types.QColorSpace, transferFunctionTable: seq[uint16]): void =
  var transferFunctionTable_CArray = newSeq[uint16](len(transferFunctionTable))
  for i in 0..<len(transferFunctionTable):
    transferFunctionTable_CArray[i] = transferFunctionTable[i]

  fcQColorSpace_setTransferFunctionWithTransferFunctionTable(self.h, struct_miqt_array(len: csize_t(len(transferFunctionTable)), data: if len(transferFunctionTable) == 0: nil else: addr(transferFunctionTable_CArray[0])))

proc setTransferFunctions*(self: gen_qcolorspace_types.QColorSpace, redTransferFunctionTable: seq[uint16], greenTransferFunctionTable: seq[uint16], blueTransferFunctionTable: seq[uint16]): void =
  var redTransferFunctionTable_CArray = newSeq[uint16](len(redTransferFunctionTable))
  for i in 0..<len(redTransferFunctionTable):
    redTransferFunctionTable_CArray[i] = redTransferFunctionTable[i]

  var greenTransferFunctionTable_CArray = newSeq[uint16](len(greenTransferFunctionTable))
  for i in 0..<len(greenTransferFunctionTable):
    greenTransferFunctionTable_CArray[i] = greenTransferFunctionTable[i]

  var blueTransferFunctionTable_CArray = newSeq[uint16](len(blueTransferFunctionTable))
  for i in 0..<len(blueTransferFunctionTable):
    blueTransferFunctionTable_CArray[i] = blueTransferFunctionTable[i]

  fcQColorSpace_setTransferFunctions(self.h, struct_miqt_array(len: csize_t(len(redTransferFunctionTable)), data: if len(redTransferFunctionTable) == 0: nil else: addr(redTransferFunctionTable_CArray[0])), struct_miqt_array(len: csize_t(len(greenTransferFunctionTable)), data: if len(greenTransferFunctionTable) == 0: nil else: addr(greenTransferFunctionTable_CArray[0])), struct_miqt_array(len: csize_t(len(blueTransferFunctionTable)), data: if len(blueTransferFunctionTable) == 0: nil else: addr(blueTransferFunctionTable_CArray[0])))

proc withTransferFunction*(self: gen_qcolorspace_types.QColorSpace, transferFunction: cint): gen_qcolorspace_types.QColorSpace =
  gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_withTransferFunction(self.h, cint(transferFunction)))

proc withTransferFunction*(self: gen_qcolorspace_types.QColorSpace, transferFunctionTable: seq[uint16]): gen_qcolorspace_types.QColorSpace =
  var transferFunctionTable_CArray = newSeq[uint16](len(transferFunctionTable))
  for i in 0..<len(transferFunctionTable):
    transferFunctionTable_CArray[i] = transferFunctionTable[i]

  gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_withTransferFunctionWithTransferFunctionTable(self.h, struct_miqt_array(len: csize_t(len(transferFunctionTable)), data: if len(transferFunctionTable) == 0: nil else: addr(transferFunctionTable_CArray[0]))))

proc withTransferFunctions*(self: gen_qcolorspace_types.QColorSpace, redTransferFunctionTable: seq[uint16], greenTransferFunctionTable: seq[uint16], blueTransferFunctionTable: seq[uint16]): gen_qcolorspace_types.QColorSpace =
  var redTransferFunctionTable_CArray = newSeq[uint16](len(redTransferFunctionTable))
  for i in 0..<len(redTransferFunctionTable):
    redTransferFunctionTable_CArray[i] = redTransferFunctionTable[i]

  var greenTransferFunctionTable_CArray = newSeq[uint16](len(greenTransferFunctionTable))
  for i in 0..<len(greenTransferFunctionTable):
    greenTransferFunctionTable_CArray[i] = greenTransferFunctionTable[i]

  var blueTransferFunctionTable_CArray = newSeq[uint16](len(blueTransferFunctionTable))
  for i in 0..<len(blueTransferFunctionTable):
    blueTransferFunctionTable_CArray[i] = blueTransferFunctionTable[i]

  gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_withTransferFunctions(self.h, struct_miqt_array(len: csize_t(len(redTransferFunctionTable)), data: if len(redTransferFunctionTable) == 0: nil else: addr(redTransferFunctionTable_CArray[0])), struct_miqt_array(len: csize_t(len(greenTransferFunctionTable)), data: if len(greenTransferFunctionTable) == 0: nil else: addr(greenTransferFunctionTable_CArray[0])), struct_miqt_array(len: csize_t(len(blueTransferFunctionTable)), data: if len(blueTransferFunctionTable) == 0: nil else: addr(blueTransferFunctionTable_CArray[0]))))

proc setPrimaries*(self: gen_qcolorspace_types.QColorSpace, primariesId: cint): void =
  fcQColorSpace_setPrimaries(self.h, cint(primariesId))

proc setPrimaries*(self: gen_qcolorspace_types.QColorSpace, whitePoint: gen_qpoint_types.QPointF, redPoint: gen_qpoint_types.QPointF, greenPoint: gen_qpoint_types.QPointF, bluePoint: gen_qpoint_types.QPointF): void =
  fcQColorSpace_setPrimaries2(self.h, whitePoint.h, redPoint.h, greenPoint.h, bluePoint.h)

proc detach*(self: gen_qcolorspace_types.QColorSpace, ): void =
  fcQColorSpace_detach(self.h)

proc isValid*(self: gen_qcolorspace_types.QColorSpace, ): bool =
  fcQColorSpace_isValid(self.h)

proc fromIccProfile*(_: type gen_qcolorspace_types.QColorSpace, iccProfile: seq[byte]): gen_qcolorspace_types.QColorSpace =
  gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_fromIccProfile(struct_miqt_string(data: cast[cstring](if len(iccProfile) == 0: nil else: unsafeAddr iccProfile[0]), len: csize_t(len(iccProfile)))))

proc iccProfile*(self: gen_qcolorspace_types.QColorSpace, ): seq[byte] =
  var v_bytearray = fcQColorSpace_iccProfile(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc transformationToColorSpace*(self: gen_qcolorspace_types.QColorSpace, colorspace: gen_qcolorspace_types.QColorSpace): gen_qcolortransform_types.QColorTransform =
  gen_qcolortransform_types.QColorTransform(h: fcQColorSpace_transformationToColorSpace(self.h, colorspace.h))

proc ToQVariant*(self: gen_qcolorspace_types.QColorSpace, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQColorSpace_ToQVariant(self.h))

proc setTransferFunction*(self: gen_qcolorspace_types.QColorSpace, transferFunction: cint, gamma: float32): void =
  fcQColorSpace_setTransferFunction2(self.h, cint(transferFunction), gamma)

proc withTransferFunction*(self: gen_qcolorspace_types.QColorSpace, transferFunction: cint, gamma: float32): gen_qcolorspace_types.QColorSpace =
  gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_withTransferFunction2(self.h, cint(transferFunction), gamma))

proc create*(T: type gen_qcolorspace_types.QColorSpace): gen_qcolorspace_types.QColorSpace =
  gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new())

proc create*(T: type gen_qcolorspace_types.QColorSpace,
    namedColorSpace: cint): gen_qcolorspace_types.QColorSpace =
  gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new2(cint(namedColorSpace)))

proc create*(T: type gen_qcolorspace_types.QColorSpace,
    primaries: cint, transferFunction: cint): gen_qcolorspace_types.QColorSpace =
  gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new3(cint(primaries), cint(transferFunction)))

proc create*(T: type gen_qcolorspace_types.QColorSpace,
    primaries: cint, gamma: float32): gen_qcolorspace_types.QColorSpace =
  gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new4(cint(primaries), gamma))

proc create*(T: type gen_qcolorspace_types.QColorSpace,
    primaries: cint, transferFunctionTable: seq[uint16]): gen_qcolorspace_types.QColorSpace =
  var transferFunctionTable_CArray = newSeq[uint16](len(transferFunctionTable))
  for i in 0..<len(transferFunctionTable):
    transferFunctionTable_CArray[i] = transferFunctionTable[i]

  gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new5(cint(primaries), struct_miqt_array(len: csize_t(len(transferFunctionTable)), data: if len(transferFunctionTable) == 0: nil else: addr(transferFunctionTable_CArray[0]))))

proc create*(T: type gen_qcolorspace_types.QColorSpace,
    whitePoint: gen_qpoint_types.QPointF, redPoint: gen_qpoint_types.QPointF, greenPoint: gen_qpoint_types.QPointF, bluePoint: gen_qpoint_types.QPointF, transferFunction: cint): gen_qcolorspace_types.QColorSpace =
  gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new6(whitePoint.h, redPoint.h, greenPoint.h, bluePoint.h, cint(transferFunction)))

proc create*(T: type gen_qcolorspace_types.QColorSpace,
    whitePoint: gen_qpoint_types.QPointF, redPoint: gen_qpoint_types.QPointF, greenPoint: gen_qpoint_types.QPointF, bluePoint: gen_qpoint_types.QPointF, transferFunctionTable: seq[uint16]): gen_qcolorspace_types.QColorSpace =
  var transferFunctionTable_CArray = newSeq[uint16](len(transferFunctionTable))
  for i in 0..<len(transferFunctionTable):
    transferFunctionTable_CArray[i] = transferFunctionTable[i]

  gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new7(whitePoint.h, redPoint.h, greenPoint.h, bluePoint.h, struct_miqt_array(len: csize_t(len(transferFunctionTable)), data: if len(transferFunctionTable) == 0: nil else: addr(transferFunctionTable_CArray[0]))))

proc create*(T: type gen_qcolorspace_types.QColorSpace,
    whitePoint: gen_qpoint_types.QPointF, redPoint: gen_qpoint_types.QPointF, greenPoint: gen_qpoint_types.QPointF, bluePoint: gen_qpoint_types.QPointF, redTransferFunctionTable: seq[uint16], greenTransferFunctionTable: seq[uint16], blueTransferFunctionTable: seq[uint16]): gen_qcolorspace_types.QColorSpace =
  var redTransferFunctionTable_CArray = newSeq[uint16](len(redTransferFunctionTable))
  for i in 0..<len(redTransferFunctionTable):
    redTransferFunctionTable_CArray[i] = redTransferFunctionTable[i]

  var greenTransferFunctionTable_CArray = newSeq[uint16](len(greenTransferFunctionTable))
  for i in 0..<len(greenTransferFunctionTable):
    greenTransferFunctionTable_CArray[i] = greenTransferFunctionTable[i]

  var blueTransferFunctionTable_CArray = newSeq[uint16](len(blueTransferFunctionTable))
  for i in 0..<len(blueTransferFunctionTable):
    blueTransferFunctionTable_CArray[i] = blueTransferFunctionTable[i]

  gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new8(whitePoint.h, redPoint.h, greenPoint.h, bluePoint.h, struct_miqt_array(len: csize_t(len(redTransferFunctionTable)), data: if len(redTransferFunctionTable) == 0: nil else: addr(redTransferFunctionTable_CArray[0])), struct_miqt_array(len: csize_t(len(greenTransferFunctionTable)), data: if len(greenTransferFunctionTable) == 0: nil else: addr(greenTransferFunctionTable_CArray[0])), struct_miqt_array(len: csize_t(len(blueTransferFunctionTable)), data: if len(blueTransferFunctionTable) == 0: nil else: addr(blueTransferFunctionTable_CArray[0]))))

proc create*(T: type gen_qcolorspace_types.QColorSpace,
    colorSpace: gen_qcolorspace_types.QColorSpace): gen_qcolorspace_types.QColorSpace =
  gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new9(colorSpace.h))

proc create*(T: type gen_qcolorspace_types.QColorSpace,
    primaries: cint, transferFunction: cint, gamma: float32): gen_qcolorspace_types.QColorSpace =
  gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new10(cint(primaries), cint(transferFunction), gamma))

proc create*(T: type gen_qcolorspace_types.QColorSpace,
    whitePoint: gen_qpoint_types.QPointF, redPoint: gen_qpoint_types.QPointF, greenPoint: gen_qpoint_types.QPointF, bluePoint: gen_qpoint_types.QPointF, transferFunction: cint, gamma: float32): gen_qcolorspace_types.QColorSpace =
  gen_qcolorspace_types.QColorSpace(h: fcQColorSpace_new11(whitePoint.h, redPoint.h, greenPoint.h, bluePoint.h, cint(transferFunction), gamma))

proc staticMetaObject*(_: type gen_qcolorspace_types.QColorSpace): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQColorSpace_staticMetaObject())
proc delete*(self: gen_qcolorspace_types.QColorSpace) =
  fcQColorSpace_delete(self.h)
