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
{.compile("gen_qsgsimpletexturenode.cpp", cflags).}


type QSGSimpleTextureNodeTextureCoordinatesTransformFlagEnum* = distinct cint
template NoTransform*(_: type QSGSimpleTextureNodeTextureCoordinatesTransformFlagEnum): untyped = 0
template MirrorHorizontally*(_: type QSGSimpleTextureNodeTextureCoordinatesTransformFlagEnum): untyped = 1
template MirrorVertically*(_: type QSGSimpleTextureNodeTextureCoordinatesTransformFlagEnum): untyped = 2

import gen_qsgsimpletexturenode_types
export gen_qsgsimpletexturenode_types

import
  gen_qrect_types,
  gen_qsgnode,
  gen_qsgtexture_types
export
  gen_qrect_types,
  gen_qsgnode,
  gen_qsgtexture_types

type cQSGSimpleTextureNode*{.exportc: "QSGSimpleTextureNode", incompleteStruct.} = object

proc fcQSGSimpleTextureNode_setRect(self: pointer, rect: pointer): void {.importc: "QSGSimpleTextureNode_setRect".}
proc fcQSGSimpleTextureNode_setRect2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QSGSimpleTextureNode_setRect2".}
proc fcQSGSimpleTextureNode_rect(self: pointer, ): pointer {.importc: "QSGSimpleTextureNode_rect".}
proc fcQSGSimpleTextureNode_setSourceRect(self: pointer, r: pointer): void {.importc: "QSGSimpleTextureNode_setSourceRect".}
proc fcQSGSimpleTextureNode_setSourceRect2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QSGSimpleTextureNode_setSourceRect2".}
proc fcQSGSimpleTextureNode_sourceRect(self: pointer, ): pointer {.importc: "QSGSimpleTextureNode_sourceRect".}
proc fcQSGSimpleTextureNode_setTexture(self: pointer, texture: pointer): void {.importc: "QSGSimpleTextureNode_setTexture".}
proc fcQSGSimpleTextureNode_texture(self: pointer, ): pointer {.importc: "QSGSimpleTextureNode_texture".}
proc fcQSGSimpleTextureNode_setFiltering(self: pointer, filtering: cint): void {.importc: "QSGSimpleTextureNode_setFiltering".}
proc fcQSGSimpleTextureNode_filtering(self: pointer, ): cint {.importc: "QSGSimpleTextureNode_filtering".}
proc fcQSGSimpleTextureNode_setTextureCoordinatesTransform(self: pointer, mode: cint): void {.importc: "QSGSimpleTextureNode_setTextureCoordinatesTransform".}
proc fcQSGSimpleTextureNode_textureCoordinatesTransform(self: pointer, ): cint {.importc: "QSGSimpleTextureNode_textureCoordinatesTransform".}
proc fcQSGSimpleTextureNode_setOwnsTexture(self: pointer, owns: bool): void {.importc: "QSGSimpleTextureNode_setOwnsTexture".}
proc fcQSGSimpleTextureNode_ownsTexture(self: pointer, ): bool {.importc: "QSGSimpleTextureNode_ownsTexture".}
type cQSGSimpleTextureNodeVTable = object
  destructor*: proc(vtbl: ptr cQSGSimpleTextureNodeVTable, self: ptr cQSGSimpleTextureNode) {.cdecl, raises:[], gcsafe.}
  isSubtreeBlocked*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  preprocess*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
proc fcQSGSimpleTextureNode_virtualbase_isSubtreeBlocked(self: pointer, ): bool {.importc: "QSGSimpleTextureNode_virtualbase_isSubtreeBlocked".}
proc fcQSGSimpleTextureNode_virtualbase_preprocess(self: pointer, ): void {.importc: "QSGSimpleTextureNode_virtualbase_preprocess".}
proc fcQSGSimpleTextureNode_new(vtbl: pointer, ): ptr cQSGSimpleTextureNode {.importc: "QSGSimpleTextureNode_new".}
proc fcQSGSimpleTextureNode_delete(self: pointer) {.importc: "QSGSimpleTextureNode_delete".}

proc setRect*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, rect: gen_qrect_types.QRectF): void =
  fcQSGSimpleTextureNode_setRect(self.h, rect.h)

proc setRect*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, x: float64, y: float64, w: float64, h: float64): void =
  fcQSGSimpleTextureNode_setRect2(self.h, x, y, w, h)

proc rect*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSGSimpleTextureNode_rect(self.h))

proc setSourceRect*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, r: gen_qrect_types.QRectF): void =
  fcQSGSimpleTextureNode_setSourceRect(self.h, r.h)

proc setSourceRect*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, x: float64, y: float64, w: float64, h: float64): void =
  fcQSGSimpleTextureNode_setSourceRect2(self.h, x, y, w, h)

proc sourceRect*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSGSimpleTextureNode_sourceRect(self.h))

proc setTexture*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, texture: gen_qsgtexture_types.QSGTexture): void =
  fcQSGSimpleTextureNode_setTexture(self.h, texture.h)

proc texture*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, ): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQSGSimpleTextureNode_texture(self.h))

proc setFiltering*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, filtering: cint): void =
  fcQSGSimpleTextureNode_setFiltering(self.h, cint(filtering))

proc filtering*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, ): cint =
  cint(fcQSGSimpleTextureNode_filtering(self.h))

proc setTextureCoordinatesTransform*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, mode: cint): void =
  fcQSGSimpleTextureNode_setTextureCoordinatesTransform(self.h, cint(mode))

proc textureCoordinatesTransform*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, ): cint =
  cint(fcQSGSimpleTextureNode_textureCoordinatesTransform(self.h))

proc setOwnsTexture*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, owns: bool): void =
  fcQSGSimpleTextureNode_setOwnsTexture(self.h, owns)

proc ownsTexture*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, ): bool =
  fcQSGSimpleTextureNode_ownsTexture(self.h)

type QSGSimpleTextureNodeisSubtreeBlockedProc* = proc(self: QSGSimpleTextureNode): bool {.raises: [], gcsafe.}
type QSGSimpleTextureNodepreprocessProc* = proc(self: QSGSimpleTextureNode): void {.raises: [], gcsafe.}
type QSGSimpleTextureNodeVTable* = object
  vtbl: cQSGSimpleTextureNodeVTable
  isSubtreeBlocked*: QSGSimpleTextureNodeisSubtreeBlockedProc
  preprocess*: QSGSimpleTextureNodepreprocessProc
proc QSGSimpleTextureNodeisSubtreeBlocked*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, ): bool =
  fcQSGSimpleTextureNode_virtualbase_isSubtreeBlocked(self.h)

proc miqt_exec_callback_cQSGSimpleTextureNode_isSubtreeBlocked(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGSimpleTextureNodeVTable](vtbl)
  let self = QSGSimpleTextureNode(h: self)
  let virtualReturn = vtbl[].isSubtreeBlocked(self)
  virtualReturn

proc QSGSimpleTextureNodepreprocess*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, ): void =
  fcQSGSimpleTextureNode_virtualbase_preprocess(self.h)

proc miqt_exec_callback_cQSGSimpleTextureNode_preprocess(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGSimpleTextureNodeVTable](vtbl)
  let self = QSGSimpleTextureNode(h: self)
  vtbl[].preprocess(self)

proc create*(T: type gen_qsgsimpletexturenode_types.QSGSimpleTextureNode,
    vtbl: ref QSGSimpleTextureNodeVTable = nil): gen_qsgsimpletexturenode_types.QSGSimpleTextureNode =
  let vtbl = if vtbl == nil: new QSGSimpleTextureNodeVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSGSimpleTextureNodeVTable, _: ptr cQSGSimpleTextureNode) {.cdecl.} =
    let vtbl = cast[ref QSGSimpleTextureNodeVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.isSubtreeBlocked):
    vtbl[].vtbl.isSubtreeBlocked = miqt_exec_callback_cQSGSimpleTextureNode_isSubtreeBlocked
  if not isNil(vtbl.preprocess):
    vtbl[].vtbl.preprocess = miqt_exec_callback_cQSGSimpleTextureNode_preprocess
  gen_qsgsimpletexturenode_types.QSGSimpleTextureNode(h: fcQSGSimpleTextureNode_new(addr(vtbl[]), ))

proc delete*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode) =
  fcQSGSimpleTextureNode_delete(self.h)
