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
{.compile("gen_qsggeometry.cpp", cflags).}


type QSGGeometryAttributeType* = cint
const
  QSGGeometryUnknownAttribute* = 0
  QSGGeometryPositionAttribute* = 1
  QSGGeometryColorAttribute* = 2
  QSGGeometryTexCoordAttribute* = 3
  QSGGeometryTexCoord1Attribute* = 4
  QSGGeometryTexCoord2Attribute* = 5



type QSGGeometryDataPattern* = cint
const
  QSGGeometryAlwaysUploadPattern* = 0
  QSGGeometryStreamPattern* = 1
  QSGGeometryDynamicPattern* = 2
  QSGGeometryStaticPattern* = 3



type QSGGeometryDrawingMode* = cint
const
  QSGGeometryDrawPoints* = 0
  QSGGeometryDrawLines* = 1
  QSGGeometryDrawLineLoop* = 2
  QSGGeometryDrawLineStrip* = 3
  QSGGeometryDrawTriangles* = 4
  QSGGeometryDrawTriangleStrip* = 5
  QSGGeometryDrawTriangleFan* = 6



type QSGGeometryType* = cint
const
  QSGGeometryByteType* = 5120
  QSGGeometryUnsignedByteType* = 5121
  QSGGeometryShortType* = 5122
  QSGGeometryUnsignedShortType* = 5123
  QSGGeometryIntType* = 5124
  QSGGeometryUnsignedIntType* = 5125
  QSGGeometryFloatType* = 5126
  QSGGeometryBytes2Type* = 5127
  QSGGeometryBytes3Type* = 5128
  QSGGeometryBytes4Type* = 5129
  QSGGeometryDoubleType* = 5130



import gen_qsggeometry_types
export gen_qsggeometry_types

import
  gen_qrect
export
  gen_qrect

type cQSGGeometry*{.exportc: "QSGGeometry", incompleteStruct.} = object
type cQSGGeometryAttribute*{.exportc: "QSGGeometry__Attribute", incompleteStruct.} = object
type cQSGGeometryAttributeSet*{.exportc: "QSGGeometry__AttributeSet", incompleteStruct.} = object
type cQSGGeometryPoint2D*{.exportc: "QSGGeometry__Point2D", incompleteStruct.} = object
type cQSGGeometryTexturedPoint2D*{.exportc: "QSGGeometry__TexturedPoint2D", incompleteStruct.} = object
type cQSGGeometryColoredPoint2D*{.exportc: "QSGGeometry__ColoredPoint2D", incompleteStruct.} = object

proc fcQSGGeometry_new(attribs: pointer, vertexCount: cint): ptr cQSGGeometry {.importc: "QSGGeometry_new".}
proc fcQSGGeometry_new2(attribs: pointer, vertexCount: cint, indexCount: cint): ptr cQSGGeometry {.importc: "QSGGeometry_new2".}
proc fcQSGGeometry_new3(attribs: pointer, vertexCount: cint, indexCount: cint, indexType: cint): ptr cQSGGeometry {.importc: "QSGGeometry_new3".}
proc fcQSGGeometry_defaultAttributes_Point2D(): pointer {.importc: "QSGGeometry_defaultAttributes_Point2D".}
proc fcQSGGeometry_defaultAttributes_TexturedPoint2D(): pointer {.importc: "QSGGeometry_defaultAttributes_TexturedPoint2D".}
proc fcQSGGeometry_defaultAttributes_ColoredPoint2D(): pointer {.importc: "QSGGeometry_defaultAttributes_ColoredPoint2D".}
proc fcQSGGeometry_setDrawingMode(self: pointer, mode: cuint): void {.importc: "QSGGeometry_setDrawingMode".}
proc fcQSGGeometry_drawingMode(self: pointer, ): cuint {.importc: "QSGGeometry_drawingMode".}
proc fcQSGGeometry_allocate(self: pointer, vertexCount: cint): void {.importc: "QSGGeometry_allocate".}
proc fcQSGGeometry_vertexCount(self: pointer, ): cint {.importc: "QSGGeometry_vertexCount".}
proc fcQSGGeometry_vertexData(self: pointer, ): pointer {.importc: "QSGGeometry_vertexData".}
proc fcQSGGeometry_vertexDataAsPoint2D(self: pointer, ): pointer {.importc: "QSGGeometry_vertexDataAsPoint2D".}
proc fcQSGGeometry_vertexDataAsTexturedPoint2D(self: pointer, ): pointer {.importc: "QSGGeometry_vertexDataAsTexturedPoint2D".}
proc fcQSGGeometry_vertexDataAsColoredPoint2D(self: pointer, ): pointer {.importc: "QSGGeometry_vertexDataAsColoredPoint2D".}
proc fcQSGGeometry_vertexData2(self: pointer, ): pointer {.importc: "QSGGeometry_vertexData2".}
proc fcQSGGeometry_vertexDataAsPoint2D2(self: pointer, ): pointer {.importc: "QSGGeometry_vertexDataAsPoint2D2".}
proc fcQSGGeometry_vertexDataAsTexturedPoint2D2(self: pointer, ): pointer {.importc: "QSGGeometry_vertexDataAsTexturedPoint2D2".}
proc fcQSGGeometry_vertexDataAsColoredPoint2D2(self: pointer, ): pointer {.importc: "QSGGeometry_vertexDataAsColoredPoint2D2".}
proc fcQSGGeometry_indexType(self: pointer, ): cint {.importc: "QSGGeometry_indexType".}
proc fcQSGGeometry_indexCount(self: pointer, ): cint {.importc: "QSGGeometry_indexCount".}
proc fcQSGGeometry_indexData(self: pointer, ): pointer {.importc: "QSGGeometry_indexData".}
proc fcQSGGeometry_indexDataAsUInt(self: pointer, ): ptr cuint {.importc: "QSGGeometry_indexDataAsUInt".}
proc fcQSGGeometry_indexDataAsUShort(self: pointer, ): ptr cushort {.importc: "QSGGeometry_indexDataAsUShort".}
proc fcQSGGeometry_sizeOfIndex(self: pointer, ): cint {.importc: "QSGGeometry_sizeOfIndex".}
proc fcQSGGeometry_indexData2(self: pointer, ): pointer {.importc: "QSGGeometry_indexData2".}
proc fcQSGGeometry_indexDataAsUInt2(self: pointer, ): ptr cuint {.importc: "QSGGeometry_indexDataAsUInt2".}
proc fcQSGGeometry_indexDataAsUShort2(self: pointer, ): ptr cushort {.importc: "QSGGeometry_indexDataAsUShort2".}
proc fcQSGGeometry_attributeCount(self: pointer, ): cint {.importc: "QSGGeometry_attributeCount".}
proc fcQSGGeometry_attributes(self: pointer, ): pointer {.importc: "QSGGeometry_attributes".}
proc fcQSGGeometry_sizeOfVertex(self: pointer, ): cint {.importc: "QSGGeometry_sizeOfVertex".}
proc fcQSGGeometry_updateRectGeometry(g: pointer, rect: pointer): void {.importc: "QSGGeometry_updateRectGeometry".}
proc fcQSGGeometry_updateTexturedRectGeometry(g: pointer, rect: pointer, sourceRect: pointer): void {.importc: "QSGGeometry_updateTexturedRectGeometry".}
proc fcQSGGeometry_updateColoredRectGeometry(g: pointer, rect: pointer): void {.importc: "QSGGeometry_updateColoredRectGeometry".}
proc fcQSGGeometry_setIndexDataPattern(self: pointer, p: cint): void {.importc: "QSGGeometry_setIndexDataPattern".}
proc fcQSGGeometry_indexDataPattern(self: pointer, ): cint {.importc: "QSGGeometry_indexDataPattern".}
proc fcQSGGeometry_setVertexDataPattern(self: pointer, p: cint): void {.importc: "QSGGeometry_setVertexDataPattern".}
proc fcQSGGeometry_vertexDataPattern(self: pointer, ): cint {.importc: "QSGGeometry_vertexDataPattern".}
proc fcQSGGeometry_markIndexDataDirty(self: pointer, ): void {.importc: "QSGGeometry_markIndexDataDirty".}
proc fcQSGGeometry_markVertexDataDirty(self: pointer, ): void {.importc: "QSGGeometry_markVertexDataDirty".}
proc fcQSGGeometry_lineWidth(self: pointer, ): float32 {.importc: "QSGGeometry_lineWidth".}
proc fcQSGGeometry_setLineWidth(self: pointer, w: float32): void {.importc: "QSGGeometry_setLineWidth".}
proc fcQSGGeometry_allocate2(self: pointer, vertexCount: cint, indexCount: cint): void {.importc: "QSGGeometry_allocate2".}
proc fcQSGGeometry_delete(self: pointer) {.importc: "QSGGeometry_delete".}
proc fcQSGGeometryAttribute_create(pos: cint, tupleSize: cint, primitiveType: cint): pointer {.importc: "QSGGeometry__Attribute_create".}
proc fcQSGGeometryAttribute_createWithAttributeType(pos: cint, tupleSize: cint, primitiveType: cint, attributeType: cint): pointer {.importc: "QSGGeometry__Attribute_createWithAttributeType".}
proc fcQSGGeometryAttribute_create4(pos: cint, tupleSize: cint, primitiveType: cint, isPosition: bool): pointer {.importc: "QSGGeometry__Attribute_create4".}
proc fcQSGGeometryAttribute_delete(self: pointer) {.importc: "QSGGeometry__Attribute_delete".}
proc fcQSGGeometryAttributeSet_delete(self: pointer) {.importc: "QSGGeometry__AttributeSet_delete".}
proc fcQSGGeometryPoint2D_set(self: pointer, nx: float32, ny: float32): void {.importc: "QSGGeometry__Point2D_set".}
proc fcQSGGeometryPoint2D_delete(self: pointer) {.importc: "QSGGeometry__Point2D_delete".}
proc fcQSGGeometryTexturedPoint2D_set(self: pointer, nx: float32, ny: float32, ntx: float32, nty: float32): void {.importc: "QSGGeometry__TexturedPoint2D_set".}
proc fcQSGGeometryTexturedPoint2D_delete(self: pointer) {.importc: "QSGGeometry__TexturedPoint2D_delete".}
proc fcQSGGeometryColoredPoint2D_set(self: pointer, nx: float32, ny: float32, nr: uint8, ng: uint8, nb: uint8, na: uint8): void {.importc: "QSGGeometry__ColoredPoint2D_set".}
proc fcQSGGeometryColoredPoint2D_delete(self: pointer) {.importc: "QSGGeometry__ColoredPoint2D_delete".}


func init*(T: type QSGGeometry, h: ptr cQSGGeometry): QSGGeometry =
  T(h: h)
proc create*(T: type QSGGeometry, attribs: QSGGeometryAttributeSet, vertexCount: cint): QSGGeometry =

  QSGGeometry.init(fcQSGGeometry_new(attribs.h, vertexCount))
proc create*(T: type QSGGeometry, attribs: QSGGeometryAttributeSet, vertexCount: cint, indexCount: cint): QSGGeometry =

  QSGGeometry.init(fcQSGGeometry_new2(attribs.h, vertexCount, indexCount))
proc create*(T: type QSGGeometry, attribs: QSGGeometryAttributeSet, vertexCount: cint, indexCount: cint, indexType: cint): QSGGeometry =

  QSGGeometry.init(fcQSGGeometry_new3(attribs.h, vertexCount, indexCount, indexType))
proc defaultAttributes_Point2D*(_: type QSGGeometry, ): QSGGeometryAttributeSet =

  QSGGeometryAttributeSet(h: fcQSGGeometry_defaultAttributes_Point2D())

proc defaultAttributes_TexturedPoint2D*(_: type QSGGeometry, ): QSGGeometryAttributeSet =

  QSGGeometryAttributeSet(h: fcQSGGeometry_defaultAttributes_TexturedPoint2D())

proc defaultAttributes_ColoredPoint2D*(_: type QSGGeometry, ): QSGGeometryAttributeSet =

  QSGGeometryAttributeSet(h: fcQSGGeometry_defaultAttributes_ColoredPoint2D())

proc setDrawingMode*(self: QSGGeometry, mode: cuint): void =

  fcQSGGeometry_setDrawingMode(self.h, mode)

proc drawingMode*(self: QSGGeometry, ): cuint =

  fcQSGGeometry_drawingMode(self.h)

proc allocate*(self: QSGGeometry, vertexCount: cint): void =

  fcQSGGeometry_allocate(self.h, vertexCount)

proc vertexCount*(self: QSGGeometry, ): cint =

  fcQSGGeometry_vertexCount(self.h)

proc vertexData*(self: QSGGeometry, ): pointer =

  fcQSGGeometry_vertexData(self.h)

proc vertexDataAsPoint2D*(self: QSGGeometry, ): QSGGeometryPoint2D =

  QSGGeometryPoint2D(h: fcQSGGeometry_vertexDataAsPoint2D(self.h))

proc vertexDataAsTexturedPoint2D*(self: QSGGeometry, ): QSGGeometryTexturedPoint2D =

  QSGGeometryTexturedPoint2D(h: fcQSGGeometry_vertexDataAsTexturedPoint2D(self.h))

proc vertexDataAsColoredPoint2D*(self: QSGGeometry, ): QSGGeometryColoredPoint2D =

  QSGGeometryColoredPoint2D(h: fcQSGGeometry_vertexDataAsColoredPoint2D(self.h))

proc vertexData2*(self: QSGGeometry, ): pointer =

  fcQSGGeometry_vertexData2(self.h)

proc vertexDataAsPoint2D2*(self: QSGGeometry, ): QSGGeometryPoint2D =

  QSGGeometryPoint2D(h: fcQSGGeometry_vertexDataAsPoint2D2(self.h))

proc vertexDataAsTexturedPoint2D2*(self: QSGGeometry, ): QSGGeometryTexturedPoint2D =

  QSGGeometryTexturedPoint2D(h: fcQSGGeometry_vertexDataAsTexturedPoint2D2(self.h))

proc vertexDataAsColoredPoint2D2*(self: QSGGeometry, ): QSGGeometryColoredPoint2D =

  QSGGeometryColoredPoint2D(h: fcQSGGeometry_vertexDataAsColoredPoint2D2(self.h))

proc indexType*(self: QSGGeometry, ): cint =

  fcQSGGeometry_indexType(self.h)

proc indexCount*(self: QSGGeometry, ): cint =

  fcQSGGeometry_indexCount(self.h)

proc indexData*(self: QSGGeometry, ): pointer =

  fcQSGGeometry_indexData(self.h)

proc indexDataAsUInt*(self: QSGGeometry, ): ptr cuint =

  fcQSGGeometry_indexDataAsUInt(self.h)

proc indexDataAsUShort*(self: QSGGeometry, ): ptr cushort =

  fcQSGGeometry_indexDataAsUShort(self.h)

proc sizeOfIndex*(self: QSGGeometry, ): cint =

  fcQSGGeometry_sizeOfIndex(self.h)

proc indexData2*(self: QSGGeometry, ): pointer =

  fcQSGGeometry_indexData2(self.h)

proc indexDataAsUInt2*(self: QSGGeometry, ): ptr cuint =

  fcQSGGeometry_indexDataAsUInt2(self.h)

proc indexDataAsUShort2*(self: QSGGeometry, ): ptr cushort =

  fcQSGGeometry_indexDataAsUShort2(self.h)

proc attributeCount*(self: QSGGeometry, ): cint =

  fcQSGGeometry_attributeCount(self.h)

proc attributes*(self: QSGGeometry, ): QSGGeometryAttribute =

  QSGGeometryAttribute(h: fcQSGGeometry_attributes(self.h))

proc sizeOfVertex*(self: QSGGeometry, ): cint =

  fcQSGGeometry_sizeOfVertex(self.h)

proc updateRectGeometry*(_: type QSGGeometry, g: QSGGeometry, rect: gen_qrect.QRectF): void =

  fcQSGGeometry_updateRectGeometry(g.h, rect.h)

proc updateTexturedRectGeometry*(_: type QSGGeometry, g: QSGGeometry, rect: gen_qrect.QRectF, sourceRect: gen_qrect.QRectF): void =

  fcQSGGeometry_updateTexturedRectGeometry(g.h, rect.h, sourceRect.h)

proc updateColoredRectGeometry*(_: type QSGGeometry, g: QSGGeometry, rect: gen_qrect.QRectF): void =

  fcQSGGeometry_updateColoredRectGeometry(g.h, rect.h)

proc setIndexDataPattern*(self: QSGGeometry, p: QSGGeometryDataPattern): void =

  fcQSGGeometry_setIndexDataPattern(self.h, cint(p))

proc indexDataPattern*(self: QSGGeometry, ): QSGGeometryDataPattern =

  QSGGeometryDataPattern(fcQSGGeometry_indexDataPattern(self.h))

proc setVertexDataPattern*(self: QSGGeometry, p: QSGGeometryDataPattern): void =

  fcQSGGeometry_setVertexDataPattern(self.h, cint(p))

proc vertexDataPattern*(self: QSGGeometry, ): QSGGeometryDataPattern =

  QSGGeometryDataPattern(fcQSGGeometry_vertexDataPattern(self.h))

proc markIndexDataDirty*(self: QSGGeometry, ): void =

  fcQSGGeometry_markIndexDataDirty(self.h)

proc markVertexDataDirty*(self: QSGGeometry, ): void =

  fcQSGGeometry_markVertexDataDirty(self.h)

proc lineWidth*(self: QSGGeometry, ): float32 =

  fcQSGGeometry_lineWidth(self.h)

proc setLineWidth*(self: QSGGeometry, w: float32): void =

  fcQSGGeometry_setLineWidth(self.h, w)

proc allocate2*(self: QSGGeometry, vertexCount: cint, indexCount: cint): void =

  fcQSGGeometry_allocate2(self.h, vertexCount, indexCount)

proc delete*(self: QSGGeometry) =
  fcQSGGeometry_delete(self.h)

func init*(T: type QSGGeometryAttribute, h: ptr cQSGGeometryAttribute): QSGGeometryAttribute =
  T(h: h)
proc create*(_: type QSGGeometryAttribute, pos: cint, tupleSize: cint, primitiveType: cint): QSGGeometryAttribute =

  QSGGeometryAttribute(h: fcQSGGeometryAttribute_create(pos, tupleSize, primitiveType))

proc createWithAttributeType*(_: type QSGGeometryAttribute, pos: cint, tupleSize: cint, primitiveType: cint, attributeType: QSGGeometryAttributeType): QSGGeometryAttribute =

  QSGGeometryAttribute(h: fcQSGGeometryAttribute_createWithAttributeType(pos, tupleSize, primitiveType, cint(attributeType)))

proc create4*(_: type QSGGeometryAttribute, pos: cint, tupleSize: cint, primitiveType: cint, isPosition: bool): QSGGeometryAttribute =

  QSGGeometryAttribute(h: fcQSGGeometryAttribute_create4(pos, tupleSize, primitiveType, isPosition))

proc delete*(self: QSGGeometryAttribute) =
  fcQSGGeometryAttribute_delete(self.h)

func init*(T: type QSGGeometryAttributeSet, h: ptr cQSGGeometryAttributeSet): QSGGeometryAttributeSet =
  T(h: h)
proc delete*(self: QSGGeometryAttributeSet) =
  fcQSGGeometryAttributeSet_delete(self.h)

func init*(T: type QSGGeometryPoint2D, h: ptr cQSGGeometryPoint2D): QSGGeometryPoint2D =
  T(h: h)
proc set*(self: QSGGeometryPoint2D, nx: float32, ny: float32): void =

  fcQSGGeometryPoint2D_set(self.h, nx, ny)

proc delete*(self: QSGGeometryPoint2D) =
  fcQSGGeometryPoint2D_delete(self.h)

func init*(T: type QSGGeometryTexturedPoint2D, h: ptr cQSGGeometryTexturedPoint2D): QSGGeometryTexturedPoint2D =
  T(h: h)
proc set*(self: QSGGeometryTexturedPoint2D, nx: float32, ny: float32, ntx: float32, nty: float32): void =

  fcQSGGeometryTexturedPoint2D_set(self.h, nx, ny, ntx, nty)

proc delete*(self: QSGGeometryTexturedPoint2D) =
  fcQSGGeometryTexturedPoint2D_delete(self.h)

func init*(T: type QSGGeometryColoredPoint2D, h: ptr cQSGGeometryColoredPoint2D): QSGGeometryColoredPoint2D =
  T(h: h)
proc set*(self: QSGGeometryColoredPoint2D, nx: float32, ny: float32, nr: uint8, ng: uint8, nb: uint8, na: uint8): void =

  fcQSGGeometryColoredPoint2D_set(self.h, nx, ny, nr, ng, nb, na)

proc delete*(self: QSGGeometryColoredPoint2D) =
  fcQSGGeometryColoredPoint2D_delete(self.h)
