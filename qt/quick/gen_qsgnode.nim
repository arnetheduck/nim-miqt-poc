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
{.compile("gen_qsgnode.cpp", cflags).}


type QSGNodeNodeType* = cint
const
  QSGNodeBasicNodeType* = 0
  QSGNodeGeometryNodeType* = 1
  QSGNodeTransformNodeType* = 2
  QSGNodeClipNodeType* = 3
  QSGNodeOpacityNodeType* = 4
  QSGNodeRootNodeType* = 5
  QSGNodeRenderNodeType* = 6



type QSGNodeFlag* = cint
const
  QSGNodeOwnedByParent* = 1
  QSGNodeUsePreprocess* = 2
  QSGNodeOwnsGeometry* = 65536
  QSGNodeOwnsMaterial* = 131072
  QSGNodeOwnsOpaqueMaterial* = 262144
  QSGNodeIsVisitableNode* = 16777216



type QSGNodeDirtyStateBit* = cint
const
  QSGNodeDirtySubtreeBlocked* = 128
  QSGNodeDirtyMatrix* = 256
  QSGNodeDirtyNodeAdded* = 1024
  QSGNodeDirtyNodeRemoved* = 2048
  QSGNodeDirtyGeometry* = 4096
  QSGNodeDirtyMaterial* = 8192
  QSGNodeDirtyOpacity* = 16384
  QSGNodeDirtyForceUpdate* = 32768
  QSGNodeDirtyUsePreprocess* = 2
  QSGNodeDirtyPropagationMask* = 50432



import gen_qsgnode_types
export gen_qsgnode_types

import
  gen_qmatrix4x4,
  gen_qrect,
  gen_qsggeometry,
  gen_qsgmaterial
export
  gen_qmatrix4x4,
  gen_qrect,
  gen_qsggeometry,
  gen_qsgmaterial

type cQSGNode*{.exportc: "QSGNode", incompleteStruct.} = object
type cQSGBasicGeometryNode*{.exportc: "QSGBasicGeometryNode", incompleteStruct.} = object
type cQSGGeometryNode*{.exportc: "QSGGeometryNode", incompleteStruct.} = object
type cQSGClipNode*{.exportc: "QSGClipNode", incompleteStruct.} = object
type cQSGTransformNode*{.exportc: "QSGTransformNode", incompleteStruct.} = object
type cQSGRootNode*{.exportc: "QSGRootNode", incompleteStruct.} = object
type cQSGOpacityNode*{.exportc: "QSGOpacityNode", incompleteStruct.} = object
type cQSGNodeVisitor*{.exportc: "QSGNodeVisitor", incompleteStruct.} = object

proc fcQSGNode_new(): ptr cQSGNode {.importc: "QSGNode_new".}
proc fcQSGNode_parent(self: pointer, ): pointer {.importc: "QSGNode_parent".}
proc fcQSGNode_removeChildNode(self: pointer, node: pointer): void {.importc: "QSGNode_removeChildNode".}
proc fcQSGNode_removeAllChildNodes(self: pointer, ): void {.importc: "QSGNode_removeAllChildNodes".}
proc fcQSGNode_prependChildNode(self: pointer, node: pointer): void {.importc: "QSGNode_prependChildNode".}
proc fcQSGNode_appendChildNode(self: pointer, node: pointer): void {.importc: "QSGNode_appendChildNode".}
proc fcQSGNode_insertChildNodeBefore(self: pointer, node: pointer, before: pointer): void {.importc: "QSGNode_insertChildNodeBefore".}
proc fcQSGNode_insertChildNodeAfter(self: pointer, node: pointer, after: pointer): void {.importc: "QSGNode_insertChildNodeAfter".}
proc fcQSGNode_reparentChildNodesTo(self: pointer, newParent: pointer): void {.importc: "QSGNode_reparentChildNodesTo".}
proc fcQSGNode_childCount(self: pointer, ): cint {.importc: "QSGNode_childCount".}
proc fcQSGNode_childAtIndex(self: pointer, i: cint): pointer {.importc: "QSGNode_childAtIndex".}
proc fcQSGNode_firstChild(self: pointer, ): pointer {.importc: "QSGNode_firstChild".}
proc fcQSGNode_lastChild(self: pointer, ): pointer {.importc: "QSGNode_lastChild".}
proc fcQSGNode_nextSibling(self: pointer, ): pointer {.importc: "QSGNode_nextSibling".}
proc fcQSGNode_previousSibling(self: pointer, ): pointer {.importc: "QSGNode_previousSibling".}
proc fcQSGNode_typeX(self: pointer, ): cint {.importc: "QSGNode_type".}
proc fcQSGNode_clearDirty(self: pointer, ): void {.importc: "QSGNode_clearDirty".}
proc fcQSGNode_markDirty(self: pointer, bits: cint): void {.importc: "QSGNode_markDirty".}
proc fcQSGNode_dirtyState(self: pointer, ): cint {.importc: "QSGNode_dirtyState".}
proc fcQSGNode_isSubtreeBlocked(self: pointer, ): bool {.importc: "QSGNode_isSubtreeBlocked".}
proc fcQSGNode_flags(self: pointer, ): cint {.importc: "QSGNode_flags".}
proc fcQSGNode_setFlag(self: pointer, param1: cint): void {.importc: "QSGNode_setFlag".}
proc fcQSGNode_setFlags(self: pointer, param1: cint): void {.importc: "QSGNode_setFlags".}
proc fcQSGNode_preprocess(self: pointer, ): void {.importc: "QSGNode_preprocess".}
proc fcQSGNode_setFlag2(self: pointer, param1: cint, param2: bool): void {.importc: "QSGNode_setFlag2".}
proc fcQSGNode_setFlags2(self: pointer, param1: cint, param2: bool): void {.importc: "QSGNode_setFlags2".}
proc fQSGNode_virtualbase_isSubtreeBlocked(self: pointer, ): bool{.importc: "QSGNode_virtualbase_isSubtreeBlocked".}
proc fcQSGNode_override_virtual_isSubtreeBlocked(self: pointer, slot: int) {.importc: "QSGNode_override_virtual_isSubtreeBlocked".}
proc fQSGNode_virtualbase_preprocess(self: pointer, ): void{.importc: "QSGNode_virtualbase_preprocess".}
proc fcQSGNode_override_virtual_preprocess(self: pointer, slot: int) {.importc: "QSGNode_override_virtual_preprocess".}
proc fcQSGNode_delete(self: pointer) {.importc: "QSGNode_delete".}
proc fcQSGBasicGeometryNode_setGeometry(self: pointer, geometry: pointer): void {.importc: "QSGBasicGeometryNode_setGeometry".}
proc fcQSGBasicGeometryNode_geometry(self: pointer, ): pointer {.importc: "QSGBasicGeometryNode_geometry".}
proc fcQSGBasicGeometryNode_geometry2(self: pointer, ): pointer {.importc: "QSGBasicGeometryNode_geometry2".}
proc fcQSGBasicGeometryNode_matrix(self: pointer, ): pointer {.importc: "QSGBasicGeometryNode_matrix".}
proc fcQSGBasicGeometryNode_clipList(self: pointer, ): pointer {.importc: "QSGBasicGeometryNode_clipList".}
proc fcQSGBasicGeometryNode_setRendererMatrix(self: pointer, m: pointer): void {.importc: "QSGBasicGeometryNode_setRendererMatrix".}
proc fcQSGBasicGeometryNode_setRendererClipList(self: pointer, c: pointer): void {.importc: "QSGBasicGeometryNode_setRendererClipList".}
proc fcQSGBasicGeometryNode_delete(self: pointer) {.importc: "QSGBasicGeometryNode_delete".}
proc fcQSGGeometryNode_new(): ptr cQSGGeometryNode {.importc: "QSGGeometryNode_new".}
proc fcQSGGeometryNode_setMaterial(self: pointer, material: pointer): void {.importc: "QSGGeometryNode_setMaterial".}
proc fcQSGGeometryNode_material(self: pointer, ): pointer {.importc: "QSGGeometryNode_material".}
proc fcQSGGeometryNode_setOpaqueMaterial(self: pointer, material: pointer): void {.importc: "QSGGeometryNode_setOpaqueMaterial".}
proc fcQSGGeometryNode_opaqueMaterial(self: pointer, ): pointer {.importc: "QSGGeometryNode_opaqueMaterial".}
proc fcQSGGeometryNode_activeMaterial(self: pointer, ): pointer {.importc: "QSGGeometryNode_activeMaterial".}
proc fcQSGGeometryNode_setRenderOrder(self: pointer, order: cint): void {.importc: "QSGGeometryNode_setRenderOrder".}
proc fcQSGGeometryNode_renderOrder(self: pointer, ): cint {.importc: "QSGGeometryNode_renderOrder".}
proc fcQSGGeometryNode_setInheritedOpacity(self: pointer, opacity: float64): void {.importc: "QSGGeometryNode_setInheritedOpacity".}
proc fcQSGGeometryNode_inheritedOpacity(self: pointer, ): float64 {.importc: "QSGGeometryNode_inheritedOpacity".}
proc fQSGGeometryNode_virtualbase_isSubtreeBlocked(self: pointer, ): bool{.importc: "QSGGeometryNode_virtualbase_isSubtreeBlocked".}
proc fcQSGGeometryNode_override_virtual_isSubtreeBlocked(self: pointer, slot: int) {.importc: "QSGGeometryNode_override_virtual_isSubtreeBlocked".}
proc fQSGGeometryNode_virtualbase_preprocess(self: pointer, ): void{.importc: "QSGGeometryNode_virtualbase_preprocess".}
proc fcQSGGeometryNode_override_virtual_preprocess(self: pointer, slot: int) {.importc: "QSGGeometryNode_override_virtual_preprocess".}
proc fcQSGGeometryNode_delete(self: pointer) {.importc: "QSGGeometryNode_delete".}
proc fcQSGClipNode_new(): ptr cQSGClipNode {.importc: "QSGClipNode_new".}
proc fcQSGClipNode_setIsRectangular(self: pointer, rectHint: bool): void {.importc: "QSGClipNode_setIsRectangular".}
proc fcQSGClipNode_isRectangular(self: pointer, ): bool {.importc: "QSGClipNode_isRectangular".}
proc fcQSGClipNode_setClipRect(self: pointer, clipRect: pointer): void {.importc: "QSGClipNode_setClipRect".}
proc fcQSGClipNode_clipRect(self: pointer, ): pointer {.importc: "QSGClipNode_clipRect".}
proc fQSGClipNode_virtualbase_isSubtreeBlocked(self: pointer, ): bool{.importc: "QSGClipNode_virtualbase_isSubtreeBlocked".}
proc fcQSGClipNode_override_virtual_isSubtreeBlocked(self: pointer, slot: int) {.importc: "QSGClipNode_override_virtual_isSubtreeBlocked".}
proc fQSGClipNode_virtualbase_preprocess(self: pointer, ): void{.importc: "QSGClipNode_virtualbase_preprocess".}
proc fcQSGClipNode_override_virtual_preprocess(self: pointer, slot: int) {.importc: "QSGClipNode_override_virtual_preprocess".}
proc fcQSGClipNode_delete(self: pointer) {.importc: "QSGClipNode_delete".}
proc fcQSGTransformNode_new(): ptr cQSGTransformNode {.importc: "QSGTransformNode_new".}
proc fcQSGTransformNode_setMatrix(self: pointer, matrix: pointer): void {.importc: "QSGTransformNode_setMatrix".}
proc fcQSGTransformNode_matrix(self: pointer, ): pointer {.importc: "QSGTransformNode_matrix".}
proc fcQSGTransformNode_setCombinedMatrix(self: pointer, matrix: pointer): void {.importc: "QSGTransformNode_setCombinedMatrix".}
proc fcQSGTransformNode_combinedMatrix(self: pointer, ): pointer {.importc: "QSGTransformNode_combinedMatrix".}
proc fQSGTransformNode_virtualbase_isSubtreeBlocked(self: pointer, ): bool{.importc: "QSGTransformNode_virtualbase_isSubtreeBlocked".}
proc fcQSGTransformNode_override_virtual_isSubtreeBlocked(self: pointer, slot: int) {.importc: "QSGTransformNode_override_virtual_isSubtreeBlocked".}
proc fQSGTransformNode_virtualbase_preprocess(self: pointer, ): void{.importc: "QSGTransformNode_virtualbase_preprocess".}
proc fcQSGTransformNode_override_virtual_preprocess(self: pointer, slot: int) {.importc: "QSGTransformNode_override_virtual_preprocess".}
proc fcQSGTransformNode_delete(self: pointer) {.importc: "QSGTransformNode_delete".}
proc fcQSGRootNode_new(): ptr cQSGRootNode {.importc: "QSGRootNode_new".}
proc fQSGRootNode_virtualbase_isSubtreeBlocked(self: pointer, ): bool{.importc: "QSGRootNode_virtualbase_isSubtreeBlocked".}
proc fcQSGRootNode_override_virtual_isSubtreeBlocked(self: pointer, slot: int) {.importc: "QSGRootNode_override_virtual_isSubtreeBlocked".}
proc fQSGRootNode_virtualbase_preprocess(self: pointer, ): void{.importc: "QSGRootNode_virtualbase_preprocess".}
proc fcQSGRootNode_override_virtual_preprocess(self: pointer, slot: int) {.importc: "QSGRootNode_override_virtual_preprocess".}
proc fcQSGRootNode_delete(self: pointer) {.importc: "QSGRootNode_delete".}
proc fcQSGOpacityNode_new(): ptr cQSGOpacityNode {.importc: "QSGOpacityNode_new".}
proc fcQSGOpacityNode_setOpacity(self: pointer, opacity: float64): void {.importc: "QSGOpacityNode_setOpacity".}
proc fcQSGOpacityNode_opacity(self: pointer, ): float64 {.importc: "QSGOpacityNode_opacity".}
proc fcQSGOpacityNode_setCombinedOpacity(self: pointer, opacity: float64): void {.importc: "QSGOpacityNode_setCombinedOpacity".}
proc fcQSGOpacityNode_combinedOpacity(self: pointer, ): float64 {.importc: "QSGOpacityNode_combinedOpacity".}
proc fcQSGOpacityNode_isSubtreeBlocked(self: pointer, ): bool {.importc: "QSGOpacityNode_isSubtreeBlocked".}
proc fQSGOpacityNode_virtualbase_isSubtreeBlocked(self: pointer, ): bool{.importc: "QSGOpacityNode_virtualbase_isSubtreeBlocked".}
proc fcQSGOpacityNode_override_virtual_isSubtreeBlocked(self: pointer, slot: int) {.importc: "QSGOpacityNode_override_virtual_isSubtreeBlocked".}
proc fQSGOpacityNode_virtualbase_preprocess(self: pointer, ): void{.importc: "QSGOpacityNode_virtualbase_preprocess".}
proc fcQSGOpacityNode_override_virtual_preprocess(self: pointer, slot: int) {.importc: "QSGOpacityNode_override_virtual_preprocess".}
proc fcQSGOpacityNode_delete(self: pointer) {.importc: "QSGOpacityNode_delete".}
proc fcQSGNodeVisitor_delete(self: pointer) {.importc: "QSGNodeVisitor_delete".}


func init*(T: type QSGNode, h: ptr cQSGNode): QSGNode =
  T(h: h)
proc create*(T: type QSGNode, ): QSGNode =

  QSGNode.init(fcQSGNode_new())
proc parent*(self: QSGNode, ): QSGNode =

  QSGNode(h: fcQSGNode_parent(self.h))

proc removeChildNode*(self: QSGNode, node: QSGNode): void =

  fcQSGNode_removeChildNode(self.h, node.h)

proc removeAllChildNodes*(self: QSGNode, ): void =

  fcQSGNode_removeAllChildNodes(self.h)

proc prependChildNode*(self: QSGNode, node: QSGNode): void =

  fcQSGNode_prependChildNode(self.h, node.h)

proc appendChildNode*(self: QSGNode, node: QSGNode): void =

  fcQSGNode_appendChildNode(self.h, node.h)

proc insertChildNodeBefore*(self: QSGNode, node: QSGNode, before: QSGNode): void =

  fcQSGNode_insertChildNodeBefore(self.h, node.h, before.h)

proc insertChildNodeAfter*(self: QSGNode, node: QSGNode, after: QSGNode): void =

  fcQSGNode_insertChildNodeAfter(self.h, node.h, after.h)

proc reparentChildNodesTo*(self: QSGNode, newParent: QSGNode): void =

  fcQSGNode_reparentChildNodesTo(self.h, newParent.h)

proc childCount*(self: QSGNode, ): cint =

  fcQSGNode_childCount(self.h)

proc childAtIndex*(self: QSGNode, i: cint): QSGNode =

  QSGNode(h: fcQSGNode_childAtIndex(self.h, i))

proc firstChild*(self: QSGNode, ): QSGNode =

  QSGNode(h: fcQSGNode_firstChild(self.h))

proc lastChild*(self: QSGNode, ): QSGNode =

  QSGNode(h: fcQSGNode_lastChild(self.h))

proc nextSibling*(self: QSGNode, ): QSGNode =

  QSGNode(h: fcQSGNode_nextSibling(self.h))

proc previousSibling*(self: QSGNode, ): QSGNode =

  QSGNode(h: fcQSGNode_previousSibling(self.h))

proc typeX*(self: QSGNode, ): QSGNodeNodeType =

  QSGNodeNodeType(fcQSGNode_typeX(self.h))

proc clearDirty*(self: QSGNode, ): void =

  fcQSGNode_clearDirty(self.h)

proc markDirty*(self: QSGNode, bits: QSGNodeDirtyStateBit): void =

  fcQSGNode_markDirty(self.h, cint(bits))

proc dirtyState*(self: QSGNode, ): QSGNodeDirtyStateBit =

  QSGNodeDirtyStateBit(fcQSGNode_dirtyState(self.h))

proc isSubtreeBlocked*(self: QSGNode, ): bool =

  fcQSGNode_isSubtreeBlocked(self.h)

proc flags*(self: QSGNode, ): QSGNodeFlag =

  QSGNodeFlag(fcQSGNode_flags(self.h))

proc setFlag*(self: QSGNode, param1: QSGNodeFlag): void =

  fcQSGNode_setFlag(self.h, cint(param1))

proc setFlags*(self: QSGNode, param1: QSGNodeFlag): void =

  fcQSGNode_setFlags(self.h, cint(param1))

proc preprocess*(self: QSGNode, ): void =

  fcQSGNode_preprocess(self.h)

proc setFlag2*(self: QSGNode, param1: QSGNodeFlag, param2: bool): void =

  fcQSGNode_setFlag2(self.h, cint(param1), param2)

proc setFlags2*(self: QSGNode, param1: QSGNodeFlag, param2: bool): void =

  fcQSGNode_setFlags2(self.h, cint(param1), param2)

proc callVirtualBase_isSubtreeBlocked(self: QSGNode, ): bool =


  fQSGNode_virtualbase_isSubtreeBlocked(self.h)

type QSGNodeisSubtreeBlockedBase* = proc(): bool
proc onisSubtreeBlocked*(self: QSGNode, slot: proc(super: QSGNodeisSubtreeBlockedBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSGNodeisSubtreeBlockedBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGNode_override_virtual_isSubtreeBlocked(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGNode_isSubtreeBlocked(self: ptr cQSGNode, slot: int): bool {.exportc: "miqt_exec_callback_QSGNode_isSubtreeBlocked ".} =
  type Cb = proc(super: QSGNodeisSubtreeBlockedBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isSubtreeBlocked(QSGNode(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_preprocess(self: QSGNode, ): void =


  fQSGNode_virtualbase_preprocess(self.h)

type QSGNodepreprocessBase* = proc(): void
proc onpreprocess*(self: QSGNode, slot: proc(super: QSGNodepreprocessBase): void) =
  # TODO check subclass
  type Cb = proc(super: QSGNodepreprocessBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGNode_override_virtual_preprocess(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGNode_preprocess(self: ptr cQSGNode, slot: int): void {.exportc: "miqt_exec_callback_QSGNode_preprocess ".} =
  type Cb = proc(super: QSGNodepreprocessBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_preprocess(QSGNode(h: self), )

  nimfunc[](superCall)
proc delete*(self: QSGNode) =
  fcQSGNode_delete(self.h)

func init*(T: type QSGBasicGeometryNode, h: ptr cQSGBasicGeometryNode): QSGBasicGeometryNode =
  T(h: h)
proc setGeometry*(self: QSGBasicGeometryNode, geometry: gen_qsggeometry.QSGGeometry): void =

  fcQSGBasicGeometryNode_setGeometry(self.h, geometry.h)

proc geometry*(self: QSGBasicGeometryNode, ): gen_qsggeometry.QSGGeometry =

  gen_qsggeometry.QSGGeometry(h: fcQSGBasicGeometryNode_geometry(self.h))

proc geometry2*(self: QSGBasicGeometryNode, ): gen_qsggeometry.QSGGeometry =

  gen_qsggeometry.QSGGeometry(h: fcQSGBasicGeometryNode_geometry2(self.h))

proc matrix*(self: QSGBasicGeometryNode, ): gen_qmatrix4x4.QMatrix4x4 =

  gen_qmatrix4x4.QMatrix4x4(h: fcQSGBasicGeometryNode_matrix(self.h))

proc clipList*(self: QSGBasicGeometryNode, ): QSGClipNode =

  QSGClipNode(h: fcQSGBasicGeometryNode_clipList(self.h))

proc setRendererMatrix*(self: QSGBasicGeometryNode, m: gen_qmatrix4x4.QMatrix4x4): void =

  fcQSGBasicGeometryNode_setRendererMatrix(self.h, m.h)

proc setRendererClipList*(self: QSGBasicGeometryNode, c: QSGClipNode): void =

  fcQSGBasicGeometryNode_setRendererClipList(self.h, c.h)

proc delete*(self: QSGBasicGeometryNode) =
  fcQSGBasicGeometryNode_delete(self.h)

func init*(T: type QSGGeometryNode, h: ptr cQSGGeometryNode): QSGGeometryNode =
  T(h: h)
proc create*(T: type QSGGeometryNode, ): QSGGeometryNode =

  QSGGeometryNode.init(fcQSGGeometryNode_new())
proc setMaterial*(self: QSGGeometryNode, material: gen_qsgmaterial.QSGMaterial): void =

  fcQSGGeometryNode_setMaterial(self.h, material.h)

proc material*(self: QSGGeometryNode, ): gen_qsgmaterial.QSGMaterial =

  gen_qsgmaterial.QSGMaterial(h: fcQSGGeometryNode_material(self.h))

proc setOpaqueMaterial*(self: QSGGeometryNode, material: gen_qsgmaterial.QSGMaterial): void =

  fcQSGGeometryNode_setOpaqueMaterial(self.h, material.h)

proc opaqueMaterial*(self: QSGGeometryNode, ): gen_qsgmaterial.QSGMaterial =

  gen_qsgmaterial.QSGMaterial(h: fcQSGGeometryNode_opaqueMaterial(self.h))

proc activeMaterial*(self: QSGGeometryNode, ): gen_qsgmaterial.QSGMaterial =

  gen_qsgmaterial.QSGMaterial(h: fcQSGGeometryNode_activeMaterial(self.h))

proc setRenderOrder*(self: QSGGeometryNode, order: cint): void =

  fcQSGGeometryNode_setRenderOrder(self.h, order)

proc renderOrder*(self: QSGGeometryNode, ): cint =

  fcQSGGeometryNode_renderOrder(self.h)

proc setInheritedOpacity*(self: QSGGeometryNode, opacity: float64): void =

  fcQSGGeometryNode_setInheritedOpacity(self.h, opacity)

proc inheritedOpacity*(self: QSGGeometryNode, ): float64 =

  fcQSGGeometryNode_inheritedOpacity(self.h)

proc callVirtualBase_isSubtreeBlocked(self: QSGGeometryNode, ): bool =


  fQSGGeometryNode_virtualbase_isSubtreeBlocked(self.h)

type QSGGeometryNodeisSubtreeBlockedBase* = proc(): bool
proc onisSubtreeBlocked*(self: QSGGeometryNode, slot: proc(super: QSGGeometryNodeisSubtreeBlockedBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSGGeometryNodeisSubtreeBlockedBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGGeometryNode_override_virtual_isSubtreeBlocked(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGGeometryNode_isSubtreeBlocked(self: ptr cQSGGeometryNode, slot: int): bool {.exportc: "miqt_exec_callback_QSGGeometryNode_isSubtreeBlocked ".} =
  type Cb = proc(super: QSGGeometryNodeisSubtreeBlockedBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isSubtreeBlocked(QSGGeometryNode(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_preprocess(self: QSGGeometryNode, ): void =


  fQSGGeometryNode_virtualbase_preprocess(self.h)

type QSGGeometryNodepreprocessBase* = proc(): void
proc onpreprocess*(self: QSGGeometryNode, slot: proc(super: QSGGeometryNodepreprocessBase): void) =
  # TODO check subclass
  type Cb = proc(super: QSGGeometryNodepreprocessBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGGeometryNode_override_virtual_preprocess(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGGeometryNode_preprocess(self: ptr cQSGGeometryNode, slot: int): void {.exportc: "miqt_exec_callback_QSGGeometryNode_preprocess ".} =
  type Cb = proc(super: QSGGeometryNodepreprocessBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_preprocess(QSGGeometryNode(h: self), )

  nimfunc[](superCall)
proc delete*(self: QSGGeometryNode) =
  fcQSGGeometryNode_delete(self.h)

func init*(T: type QSGClipNode, h: ptr cQSGClipNode): QSGClipNode =
  T(h: h)
proc create*(T: type QSGClipNode, ): QSGClipNode =

  QSGClipNode.init(fcQSGClipNode_new())
proc setIsRectangular*(self: QSGClipNode, rectHint: bool): void =

  fcQSGClipNode_setIsRectangular(self.h, rectHint)

proc isRectangular*(self: QSGClipNode, ): bool =

  fcQSGClipNode_isRectangular(self.h)

proc setClipRect*(self: QSGClipNode, clipRect: gen_qrect.QRectF): void =

  fcQSGClipNode_setClipRect(self.h, clipRect.h)

proc clipRect*(self: QSGClipNode, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQSGClipNode_clipRect(self.h))

proc callVirtualBase_isSubtreeBlocked(self: QSGClipNode, ): bool =


  fQSGClipNode_virtualbase_isSubtreeBlocked(self.h)

type QSGClipNodeisSubtreeBlockedBase* = proc(): bool
proc onisSubtreeBlocked*(self: QSGClipNode, slot: proc(super: QSGClipNodeisSubtreeBlockedBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSGClipNodeisSubtreeBlockedBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGClipNode_override_virtual_isSubtreeBlocked(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGClipNode_isSubtreeBlocked(self: ptr cQSGClipNode, slot: int): bool {.exportc: "miqt_exec_callback_QSGClipNode_isSubtreeBlocked ".} =
  type Cb = proc(super: QSGClipNodeisSubtreeBlockedBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isSubtreeBlocked(QSGClipNode(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_preprocess(self: QSGClipNode, ): void =


  fQSGClipNode_virtualbase_preprocess(self.h)

type QSGClipNodepreprocessBase* = proc(): void
proc onpreprocess*(self: QSGClipNode, slot: proc(super: QSGClipNodepreprocessBase): void) =
  # TODO check subclass
  type Cb = proc(super: QSGClipNodepreprocessBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGClipNode_override_virtual_preprocess(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGClipNode_preprocess(self: ptr cQSGClipNode, slot: int): void {.exportc: "miqt_exec_callback_QSGClipNode_preprocess ".} =
  type Cb = proc(super: QSGClipNodepreprocessBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_preprocess(QSGClipNode(h: self), )

  nimfunc[](superCall)
proc delete*(self: QSGClipNode) =
  fcQSGClipNode_delete(self.h)

func init*(T: type QSGTransformNode, h: ptr cQSGTransformNode): QSGTransformNode =
  T(h: h)
proc create*(T: type QSGTransformNode, ): QSGTransformNode =

  QSGTransformNode.init(fcQSGTransformNode_new())
proc setMatrix*(self: QSGTransformNode, matrix: gen_qmatrix4x4.QMatrix4x4): void =

  fcQSGTransformNode_setMatrix(self.h, matrix.h)

proc matrix*(self: QSGTransformNode, ): gen_qmatrix4x4.QMatrix4x4 =

  gen_qmatrix4x4.QMatrix4x4(h: fcQSGTransformNode_matrix(self.h))

proc setCombinedMatrix*(self: QSGTransformNode, matrix: gen_qmatrix4x4.QMatrix4x4): void =

  fcQSGTransformNode_setCombinedMatrix(self.h, matrix.h)

proc combinedMatrix*(self: QSGTransformNode, ): gen_qmatrix4x4.QMatrix4x4 =

  gen_qmatrix4x4.QMatrix4x4(h: fcQSGTransformNode_combinedMatrix(self.h))

proc callVirtualBase_isSubtreeBlocked(self: QSGTransformNode, ): bool =


  fQSGTransformNode_virtualbase_isSubtreeBlocked(self.h)

type QSGTransformNodeisSubtreeBlockedBase* = proc(): bool
proc onisSubtreeBlocked*(self: QSGTransformNode, slot: proc(super: QSGTransformNodeisSubtreeBlockedBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSGTransformNodeisSubtreeBlockedBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTransformNode_override_virtual_isSubtreeBlocked(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTransformNode_isSubtreeBlocked(self: ptr cQSGTransformNode, slot: int): bool {.exportc: "miqt_exec_callback_QSGTransformNode_isSubtreeBlocked ".} =
  type Cb = proc(super: QSGTransformNodeisSubtreeBlockedBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isSubtreeBlocked(QSGTransformNode(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_preprocess(self: QSGTransformNode, ): void =


  fQSGTransformNode_virtualbase_preprocess(self.h)

type QSGTransformNodepreprocessBase* = proc(): void
proc onpreprocess*(self: QSGTransformNode, slot: proc(super: QSGTransformNodepreprocessBase): void) =
  # TODO check subclass
  type Cb = proc(super: QSGTransformNodepreprocessBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTransformNode_override_virtual_preprocess(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTransformNode_preprocess(self: ptr cQSGTransformNode, slot: int): void {.exportc: "miqt_exec_callback_QSGTransformNode_preprocess ".} =
  type Cb = proc(super: QSGTransformNodepreprocessBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_preprocess(QSGTransformNode(h: self), )

  nimfunc[](superCall)
proc delete*(self: QSGTransformNode) =
  fcQSGTransformNode_delete(self.h)

func init*(T: type QSGRootNode, h: ptr cQSGRootNode): QSGRootNode =
  T(h: h)
proc create*(T: type QSGRootNode, ): QSGRootNode =

  QSGRootNode.init(fcQSGRootNode_new())
proc callVirtualBase_isSubtreeBlocked(self: QSGRootNode, ): bool =


  fQSGRootNode_virtualbase_isSubtreeBlocked(self.h)

type QSGRootNodeisSubtreeBlockedBase* = proc(): bool
proc onisSubtreeBlocked*(self: QSGRootNode, slot: proc(super: QSGRootNodeisSubtreeBlockedBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSGRootNodeisSubtreeBlockedBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGRootNode_override_virtual_isSubtreeBlocked(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGRootNode_isSubtreeBlocked(self: ptr cQSGRootNode, slot: int): bool {.exportc: "miqt_exec_callback_QSGRootNode_isSubtreeBlocked ".} =
  type Cb = proc(super: QSGRootNodeisSubtreeBlockedBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isSubtreeBlocked(QSGRootNode(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_preprocess(self: QSGRootNode, ): void =


  fQSGRootNode_virtualbase_preprocess(self.h)

type QSGRootNodepreprocessBase* = proc(): void
proc onpreprocess*(self: QSGRootNode, slot: proc(super: QSGRootNodepreprocessBase): void) =
  # TODO check subclass
  type Cb = proc(super: QSGRootNodepreprocessBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGRootNode_override_virtual_preprocess(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGRootNode_preprocess(self: ptr cQSGRootNode, slot: int): void {.exportc: "miqt_exec_callback_QSGRootNode_preprocess ".} =
  type Cb = proc(super: QSGRootNodepreprocessBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_preprocess(QSGRootNode(h: self), )

  nimfunc[](superCall)
proc delete*(self: QSGRootNode) =
  fcQSGRootNode_delete(self.h)

func init*(T: type QSGOpacityNode, h: ptr cQSGOpacityNode): QSGOpacityNode =
  T(h: h)
proc create*(T: type QSGOpacityNode, ): QSGOpacityNode =

  QSGOpacityNode.init(fcQSGOpacityNode_new())
proc setOpacity*(self: QSGOpacityNode, opacity: float64): void =

  fcQSGOpacityNode_setOpacity(self.h, opacity)

proc opacity*(self: QSGOpacityNode, ): float64 =

  fcQSGOpacityNode_opacity(self.h)

proc setCombinedOpacity*(self: QSGOpacityNode, opacity: float64): void =

  fcQSGOpacityNode_setCombinedOpacity(self.h, opacity)

proc combinedOpacity*(self: QSGOpacityNode, ): float64 =

  fcQSGOpacityNode_combinedOpacity(self.h)

proc isSubtreeBlocked*(self: QSGOpacityNode, ): bool =

  fcQSGOpacityNode_isSubtreeBlocked(self.h)

proc callVirtualBase_isSubtreeBlocked(self: QSGOpacityNode, ): bool =


  fQSGOpacityNode_virtualbase_isSubtreeBlocked(self.h)

type QSGOpacityNodeisSubtreeBlockedBase* = proc(): bool
proc onisSubtreeBlocked*(self: QSGOpacityNode, slot: proc(super: QSGOpacityNodeisSubtreeBlockedBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSGOpacityNodeisSubtreeBlockedBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGOpacityNode_override_virtual_isSubtreeBlocked(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGOpacityNode_isSubtreeBlocked(self: ptr cQSGOpacityNode, slot: int): bool {.exportc: "miqt_exec_callback_QSGOpacityNode_isSubtreeBlocked ".} =
  type Cb = proc(super: QSGOpacityNodeisSubtreeBlockedBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isSubtreeBlocked(QSGOpacityNode(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_preprocess(self: QSGOpacityNode, ): void =


  fQSGOpacityNode_virtualbase_preprocess(self.h)

type QSGOpacityNodepreprocessBase* = proc(): void
proc onpreprocess*(self: QSGOpacityNode, slot: proc(super: QSGOpacityNodepreprocessBase): void) =
  # TODO check subclass
  type Cb = proc(super: QSGOpacityNodepreprocessBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGOpacityNode_override_virtual_preprocess(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGOpacityNode_preprocess(self: ptr cQSGOpacityNode, slot: int): void {.exportc: "miqt_exec_callback_QSGOpacityNode_preprocess ".} =
  type Cb = proc(super: QSGOpacityNodepreprocessBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_preprocess(QSGOpacityNode(h: self), )

  nimfunc[](superCall)
proc delete*(self: QSGOpacityNode) =
  fcQSGOpacityNode_delete(self.h)

func init*(T: type QSGNodeVisitor, h: ptr cQSGNodeVisitor): QSGNodeVisitor =
  T(h: h)
proc delete*(self: QSGNodeVisitor) =
  fcQSGNodeVisitor_delete(self.h)
