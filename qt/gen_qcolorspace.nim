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
{.compile("gen_qcolorspace.cpp", cflags).}


type QColorSpaceNamedColorSpace* = cint
const
  QColorSpaceNamedColorSpaceSRgb* = 1
  QColorSpaceNamedColorSpaceSRgbLinear* = 2
  QColorSpaceNamedColorSpaceAdobeRgb* = 3
  QColorSpaceNamedColorSpaceDisplayP3* = 4
  QColorSpaceNamedColorSpaceProPhotoRgb* = 5



type QColorSpacePrimaries* = cint
const
  QColorSpacePrimariesCustom* = 0
  QColorSpacePrimariesSRgb* = 1
  QColorSpacePrimariesAdobeRgb* = 2
  QColorSpacePrimariesDciP3D65* = 3
  QColorSpacePrimariesProPhotoRgb* = 4



type QColorSpaceTransferFunction* = cint
const
  QColorSpaceTransferFunctionCustom* = 0
  QColorSpaceTransferFunctionLinear* = 1
  QColorSpaceTransferFunctionGamma* = 2
  QColorSpaceTransferFunctionSRgb* = 3
  QColorSpaceTransferFunctionProPhotoRgb* = 4



import gen_qcolorspace_types
export gen_qcolorspace_types

import
  gen_qcolortransform,
  gen_qpoint,
  gen_qvariant
export
  gen_qcolortransform,
  gen_qpoint,
  gen_qvariant

type cQColorSpace*{.exportc: "QColorSpace", incompleteStruct.} = object

proc fcQColorSpace_new(): ptr cQColorSpace {.importc: "QColorSpace_new".}
proc fcQColorSpace_new2(namedColorSpace: cint): ptr cQColorSpace {.importc: "QColorSpace_new2".}
proc fcQColorSpace_new3(primaries: cint, transferFunction: cint): ptr cQColorSpace {.importc: "QColorSpace_new3".}
proc fcQColorSpace_new4(primaries: cint, gamma: float32): ptr cQColorSpace {.importc: "QColorSpace_new4".}
proc fcQColorSpace_new5(whitePoint: pointer, redPoint: pointer, greenPoint: pointer, bluePoint: pointer, transferFunction: cint): ptr cQColorSpace {.importc: "QColorSpace_new5".}
proc fcQColorSpace_new6(colorSpace: pointer): ptr cQColorSpace {.importc: "QColorSpace_new6".}
proc fcQColorSpace_new7(primaries: cint, transferFunction: cint, gamma: float32): ptr cQColorSpace {.importc: "QColorSpace_new7".}
proc fcQColorSpace_new8(whitePoint: pointer, redPoint: pointer, greenPoint: pointer, bluePoint: pointer, transferFunction: cint, gamma: float32): ptr cQColorSpace {.importc: "QColorSpace_new8".}
proc fcQColorSpace_operatorAssign(self: pointer, colorSpace: pointer): void {.importc: "QColorSpace_operatorAssign".}
proc fcQColorSpace_swap(self: pointer, colorSpace: pointer): void {.importc: "QColorSpace_swap".}
proc fcQColorSpace_primaries(self: pointer, ): cint {.importc: "QColorSpace_primaries".}
proc fcQColorSpace_transferFunction(self: pointer, ): cint {.importc: "QColorSpace_transferFunction".}
proc fcQColorSpace_gamma(self: pointer, ): float32 {.importc: "QColorSpace_gamma".}
proc fcQColorSpace_setTransferFunction(self: pointer, transferFunction: cint): void {.importc: "QColorSpace_setTransferFunction".}
proc fcQColorSpace_withTransferFunction(self: pointer, transferFunction: cint): pointer {.importc: "QColorSpace_withTransferFunction".}
proc fcQColorSpace_setPrimaries(self: pointer, primariesId: cint): void {.importc: "QColorSpace_setPrimaries".}
proc fcQColorSpace_setPrimaries2(self: pointer, whitePoint: pointer, redPoint: pointer, greenPoint: pointer, bluePoint: pointer): void {.importc: "QColorSpace_setPrimaries2".}
proc fcQColorSpace_isValid(self: pointer, ): bool {.importc: "QColorSpace_isValid".}
proc fcQColorSpace_fromIccProfile(iccProfile: struct_miqt_string): pointer {.importc: "QColorSpace_fromIccProfile".}
proc fcQColorSpace_iccProfile(self: pointer, ): struct_miqt_string {.importc: "QColorSpace_iccProfile".}
proc fcQColorSpace_transformationToColorSpace(self: pointer, colorspace: pointer): pointer {.importc: "QColorSpace_transformationToColorSpace".}
proc fcQColorSpace_ToQVariant(self: pointer, ): pointer {.importc: "QColorSpace_ToQVariant".}
proc fcQColorSpace_setTransferFunction2(self: pointer, transferFunction: cint, gamma: float32): void {.importc: "QColorSpace_setTransferFunction2".}
proc fcQColorSpace_withTransferFunction2(self: pointer, transferFunction: cint, gamma: float32): pointer {.importc: "QColorSpace_withTransferFunction2".}
proc fcQColorSpace_delete(self: pointer) {.importc: "QColorSpace_delete".}


func init*(T: type QColorSpace, h: ptr cQColorSpace): QColorSpace =
  T(h: h)
proc create*(T: type QColorSpace, ): QColorSpace =

  QColorSpace.init(fcQColorSpace_new())
proc create*(T: type QColorSpace, namedColorSpace: QColorSpaceNamedColorSpace): QColorSpace =

  QColorSpace.init(fcQColorSpace_new2(cint(namedColorSpace)))
proc create*(T: type QColorSpace, primaries: QColorSpacePrimaries, transferFunction: QColorSpaceTransferFunction): QColorSpace =

  QColorSpace.init(fcQColorSpace_new3(cint(primaries), cint(transferFunction)))
proc create*(T: type QColorSpace, primaries: QColorSpacePrimaries, gamma: float32): QColorSpace =

  QColorSpace.init(fcQColorSpace_new4(cint(primaries), gamma))
proc create*(T: type QColorSpace, whitePoint: gen_qpoint.QPointF, redPoint: gen_qpoint.QPointF, greenPoint: gen_qpoint.QPointF, bluePoint: gen_qpoint.QPointF, transferFunction: QColorSpaceTransferFunction): QColorSpace =

  QColorSpace.init(fcQColorSpace_new5(whitePoint.h, redPoint.h, greenPoint.h, bluePoint.h, cint(transferFunction)))
proc create*(T: type QColorSpace, colorSpace: QColorSpace): QColorSpace =

  QColorSpace.init(fcQColorSpace_new6(colorSpace.h))
proc create*(T: type QColorSpace, primaries: QColorSpacePrimaries, transferFunction: QColorSpaceTransferFunction, gamma: float32): QColorSpace =

  QColorSpace.init(fcQColorSpace_new7(cint(primaries), cint(transferFunction), gamma))
proc create*(T: type QColorSpace, whitePoint: gen_qpoint.QPointF, redPoint: gen_qpoint.QPointF, greenPoint: gen_qpoint.QPointF, bluePoint: gen_qpoint.QPointF, transferFunction: QColorSpaceTransferFunction, gamma: float32): QColorSpace =

  QColorSpace.init(fcQColorSpace_new8(whitePoint.h, redPoint.h, greenPoint.h, bluePoint.h, cint(transferFunction), gamma))
proc operatorAssign*(self: QColorSpace, colorSpace: QColorSpace): void =

  fcQColorSpace_operatorAssign(self.h, colorSpace.h)

proc swap*(self: QColorSpace, colorSpace: QColorSpace): void =

  fcQColorSpace_swap(self.h, colorSpace.h)

proc primaries*(self: QColorSpace, ): QColorSpacePrimaries =

  QColorSpacePrimaries(fcQColorSpace_primaries(self.h))

proc transferFunction*(self: QColorSpace, ): QColorSpaceTransferFunction =

  QColorSpaceTransferFunction(fcQColorSpace_transferFunction(self.h))

proc gamma*(self: QColorSpace, ): float32 =

  fcQColorSpace_gamma(self.h)

proc setTransferFunction*(self: QColorSpace, transferFunction: QColorSpaceTransferFunction): void =

  fcQColorSpace_setTransferFunction(self.h, cint(transferFunction))

proc withTransferFunction*(self: QColorSpace, transferFunction: QColorSpaceTransferFunction): QColorSpace =

  QColorSpace(h: fcQColorSpace_withTransferFunction(self.h, cint(transferFunction)))

proc setPrimaries*(self: QColorSpace, primariesId: QColorSpacePrimaries): void =

  fcQColorSpace_setPrimaries(self.h, cint(primariesId))

proc setPrimaries2*(self: QColorSpace, whitePoint: gen_qpoint.QPointF, redPoint: gen_qpoint.QPointF, greenPoint: gen_qpoint.QPointF, bluePoint: gen_qpoint.QPointF): void =

  fcQColorSpace_setPrimaries2(self.h, whitePoint.h, redPoint.h, greenPoint.h, bluePoint.h)

proc isValid*(self: QColorSpace, ): bool =

  fcQColorSpace_isValid(self.h)

proc fromIccProfile*(_: type QColorSpace, iccProfile: seq[byte]): QColorSpace =

  QColorSpace(h: fcQColorSpace_fromIccProfile(struct_miqt_string(data: cast[cstring](if len(iccProfile) == 0: nil else: unsafeAddr iccProfile[0]), len: csize_t(len(iccProfile)))))

proc iccProfile*(self: QColorSpace, ): seq[byte] =

  var v_bytearray = fcQColorSpace_iccProfile(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc transformationToColorSpace*(self: QColorSpace, colorspace: QColorSpace): gen_qcolortransform.QColorTransform =

  gen_qcolortransform.QColorTransform(h: fcQColorSpace_transformationToColorSpace(self.h, colorspace.h))

proc ToQVariant*(self: QColorSpace, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQColorSpace_ToQVariant(self.h))

proc setTransferFunction2*(self: QColorSpace, transferFunction: QColorSpaceTransferFunction, gamma: float32): void =

  fcQColorSpace_setTransferFunction2(self.h, cint(transferFunction), gamma)

proc withTransferFunction2*(self: QColorSpace, transferFunction: QColorSpaceTransferFunction, gamma: float32): QColorSpace =

  QColorSpace(h: fcQColorSpace_withTransferFunction2(self.h, cint(transferFunction), gamma))

proc delete*(self: QColorSpace) =
  fcQColorSpace_delete(self.h)
