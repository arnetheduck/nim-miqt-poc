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
{.compile("gen_qsgrendernode.cpp", cflags).}


type QSGRenderNodeStateFlag* = cint
const
  QSGRenderNodeDepthState* = 1
  QSGRenderNodeStencilState* = 2
  QSGRenderNodeScissorState* = 4
  QSGRenderNodeColorState* = 8
  QSGRenderNodeBlendState* = 16
  QSGRenderNodeCullState* = 32
  QSGRenderNodeViewportState* = 64
  QSGRenderNodeRenderTargetState* = 128



type QSGRenderNodeRenderingFlag* = cint
const
  QSGRenderNodeBoundedRectRendering* = 1
  QSGRenderNodeDepthAwareRendering* = 2
  QSGRenderNodeOpaqueRendering* = 4



import gen_qsgrendernode_types
export gen_qsgrendernode_types

import
  gen_qmatrix4x4,
  gen_qrect,
  gen_qregion,
  gen_qsgnode
export
  gen_qmatrix4x4,
  gen_qrect,
  gen_qregion,
  gen_qsgnode

type cQSGRenderNode*{.exportc: "QSGRenderNode", incompleteStruct.} = object
type cQSGRenderNodeRenderState*{.exportc: "QSGRenderNode__RenderState", incompleteStruct.} = object

proc fcQSGRenderNode_new(): ptr cQSGRenderNode {.importc: "QSGRenderNode_new".}
proc fcQSGRenderNode_changedStates(self: pointer, ): cint {.importc: "QSGRenderNode_changedStates".}
proc fcQSGRenderNode_render(self: pointer, state: pointer): void {.importc: "QSGRenderNode_render".}
proc fcQSGRenderNode_releaseResources(self: pointer, ): void {.importc: "QSGRenderNode_releaseResources".}
proc fcQSGRenderNode_flags(self: pointer, ): cint {.importc: "QSGRenderNode_flags".}
proc fcQSGRenderNode_rect(self: pointer, ): pointer {.importc: "QSGRenderNode_rect".}
proc fcQSGRenderNode_matrix(self: pointer, ): pointer {.importc: "QSGRenderNode_matrix".}
proc fcQSGRenderNode_clipList(self: pointer, ): pointer {.importc: "QSGRenderNode_clipList".}
proc fcQSGRenderNode_inheritedOpacity(self: pointer, ): float64 {.importc: "QSGRenderNode_inheritedOpacity".}
proc fQSGRenderNode_virtualbase_changedStates(self: pointer, ): cint{.importc: "QSGRenderNode_virtualbase_changedStates".}
proc fcQSGRenderNode_override_virtual_changedStates(self: pointer, slot: int) {.importc: "QSGRenderNode_override_virtual_changedStates".}
proc fcQSGRenderNode_override_virtual_render(self: pointer, slot: int) {.importc: "QSGRenderNode_override_virtual_render".}
proc fQSGRenderNode_virtualbase_releaseResources(self: pointer, ): void{.importc: "QSGRenderNode_virtualbase_releaseResources".}
proc fcQSGRenderNode_override_virtual_releaseResources(self: pointer, slot: int) {.importc: "QSGRenderNode_override_virtual_releaseResources".}
proc fQSGRenderNode_virtualbase_flags(self: pointer, ): cint{.importc: "QSGRenderNode_virtualbase_flags".}
proc fcQSGRenderNode_override_virtual_flags(self: pointer, slot: int) {.importc: "QSGRenderNode_override_virtual_flags".}
proc fQSGRenderNode_virtualbase_rect(self: pointer, ): pointer{.importc: "QSGRenderNode_virtualbase_rect".}
proc fcQSGRenderNode_override_virtual_rect(self: pointer, slot: int) {.importc: "QSGRenderNode_override_virtual_rect".}
proc fQSGRenderNode_virtualbase_isSubtreeBlocked(self: pointer, ): bool{.importc: "QSGRenderNode_virtualbase_isSubtreeBlocked".}
proc fcQSGRenderNode_override_virtual_isSubtreeBlocked(self: pointer, slot: int) {.importc: "QSGRenderNode_override_virtual_isSubtreeBlocked".}
proc fQSGRenderNode_virtualbase_preprocess(self: pointer, ): void{.importc: "QSGRenderNode_virtualbase_preprocess".}
proc fcQSGRenderNode_override_virtual_preprocess(self: pointer, slot: int) {.importc: "QSGRenderNode_override_virtual_preprocess".}
proc fcQSGRenderNode_delete(self: pointer) {.importc: "QSGRenderNode_delete".}
proc fcQSGRenderNodeRenderState_projectionMatrix(self: pointer, ): pointer {.importc: "QSGRenderNode__RenderState_projectionMatrix".}
proc fcQSGRenderNodeRenderState_scissorRect(self: pointer, ): pointer {.importc: "QSGRenderNode__RenderState_scissorRect".}
proc fcQSGRenderNodeRenderState_scissorEnabled(self: pointer, ): bool {.importc: "QSGRenderNode__RenderState_scissorEnabled".}
proc fcQSGRenderNodeRenderState_stencilValue(self: pointer, ): cint {.importc: "QSGRenderNode__RenderState_stencilValue".}
proc fcQSGRenderNodeRenderState_stencilEnabled(self: pointer, ): bool {.importc: "QSGRenderNode__RenderState_stencilEnabled".}
proc fcQSGRenderNodeRenderState_clipRegion(self: pointer, ): pointer {.importc: "QSGRenderNode__RenderState_clipRegion".}
proc fcQSGRenderNodeRenderState_get(self: pointer, state: cstring): pointer {.importc: "QSGRenderNode__RenderState_get".}
proc fcQSGRenderNodeRenderState_operatorAssign(self: pointer, param1: pointer): void {.importc: "QSGRenderNode__RenderState_operatorAssign".}
proc fcQSGRenderNodeRenderState_delete(self: pointer) {.importc: "QSGRenderNode__RenderState_delete".}


func init*(T: type QSGRenderNode, h: ptr cQSGRenderNode): QSGRenderNode =
  T(h: h)
proc create*(T: type QSGRenderNode, ): QSGRenderNode =

  QSGRenderNode.init(fcQSGRenderNode_new())
proc changedStates*(self: QSGRenderNode, ): QSGRenderNodeStateFlag =

  QSGRenderNodeStateFlag(fcQSGRenderNode_changedStates(self.h))

proc render*(self: QSGRenderNode, state: QSGRenderNodeRenderState): void =

  fcQSGRenderNode_render(self.h, state.h)

proc releaseResources*(self: QSGRenderNode, ): void =

  fcQSGRenderNode_releaseResources(self.h)

proc flags*(self: QSGRenderNode, ): QSGRenderNodeRenderingFlag =

  QSGRenderNodeRenderingFlag(fcQSGRenderNode_flags(self.h))

proc rect*(self: QSGRenderNode, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQSGRenderNode_rect(self.h))

proc matrix*(self: QSGRenderNode, ): gen_qmatrix4x4.QMatrix4x4 =

  gen_qmatrix4x4.QMatrix4x4(h: fcQSGRenderNode_matrix(self.h))

proc clipList*(self: QSGRenderNode, ): gen_qsgnode.QSGClipNode =

  gen_qsgnode.QSGClipNode(h: fcQSGRenderNode_clipList(self.h))

proc inheritedOpacity*(self: QSGRenderNode, ): float64 =

  fcQSGRenderNode_inheritedOpacity(self.h)

proc callVirtualBase_changedStates(self: QSGRenderNode, ): QSGRenderNodeStateFlag =


  QSGRenderNodeStateFlag(fQSGRenderNode_virtualbase_changedStates(self.h))

type QSGRenderNodechangedStatesBase* = proc(): QSGRenderNodeStateFlag
proc onchangedStates*(self: QSGRenderNode, slot: proc(super: QSGRenderNodechangedStatesBase): QSGRenderNodeStateFlag) =
  # TODO check subclass
  type Cb = proc(super: QSGRenderNodechangedStatesBase): QSGRenderNodeStateFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGRenderNode_override_virtual_changedStates(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGRenderNode_changedStates(self: ptr cQSGRenderNode, slot: int): cint {.exportc: "miqt_exec_callback_QSGRenderNode_changedStates ".} =
  type Cb = proc(super: QSGRenderNodechangedStatesBase): QSGRenderNodeStateFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_changedStates(QSGRenderNode(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
type QSGRenderNoderenderBase* = proc(state: QSGRenderNodeRenderState): void
proc onrender*(self: QSGRenderNode, slot: proc(state: QSGRenderNodeRenderState): void) =
  # TODO check subclass
  type Cb = proc(state: QSGRenderNodeRenderState): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGRenderNode_override_virtual_render(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGRenderNode_render(self: ptr cQSGRenderNode, slot: int, state: pointer): void {.exportc: "miqt_exec_callback_QSGRenderNode_render ".} =
  type Cb = proc(state: QSGRenderNodeRenderState): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QSGRenderNodeRenderState(h: state)


  nimfunc[](slotval1)
proc callVirtualBase_releaseResources(self: QSGRenderNode, ): void =


  fQSGRenderNode_virtualbase_releaseResources(self.h)

type QSGRenderNodereleaseResourcesBase* = proc(): void
proc onreleaseResources*(self: QSGRenderNode, slot: proc(super: QSGRenderNodereleaseResourcesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QSGRenderNodereleaseResourcesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGRenderNode_override_virtual_releaseResources(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGRenderNode_releaseResources(self: ptr cQSGRenderNode, slot: int): void {.exportc: "miqt_exec_callback_QSGRenderNode_releaseResources ".} =
  type Cb = proc(super: QSGRenderNodereleaseResourcesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_releaseResources(QSGRenderNode(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_flags(self: QSGRenderNode, ): QSGRenderNodeRenderingFlag =


  QSGRenderNodeRenderingFlag(fQSGRenderNode_virtualbase_flags(self.h))

type QSGRenderNodeflagsBase* = proc(): QSGRenderNodeRenderingFlag
proc onflags*(self: QSGRenderNode, slot: proc(super: QSGRenderNodeflagsBase): QSGRenderNodeRenderingFlag) =
  # TODO check subclass
  type Cb = proc(super: QSGRenderNodeflagsBase): QSGRenderNodeRenderingFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGRenderNode_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGRenderNode_flags(self: ptr cQSGRenderNode, slot: int): cint {.exportc: "miqt_exec_callback_QSGRenderNode_flags ".} =
  type Cb = proc(super: QSGRenderNodeflagsBase): QSGRenderNodeRenderingFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_flags(QSGRenderNode(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_rect(self: QSGRenderNode, ): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQSGRenderNode_virtualbase_rect(self.h))

type QSGRenderNoderectBase* = proc(): gen_qrect.QRectF
proc onrect*(self: QSGRenderNode, slot: proc(super: QSGRenderNoderectBase): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QSGRenderNoderectBase): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGRenderNode_override_virtual_rect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGRenderNode_rect(self: ptr cQSGRenderNode, slot: int): pointer {.exportc: "miqt_exec_callback_QSGRenderNode_rect ".} =
  type Cb = proc(super: QSGRenderNoderectBase): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_rect(QSGRenderNode(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_isSubtreeBlocked(self: QSGRenderNode, ): bool =


  fQSGRenderNode_virtualbase_isSubtreeBlocked(self.h)

type QSGRenderNodeisSubtreeBlockedBase* = proc(): bool
proc onisSubtreeBlocked*(self: QSGRenderNode, slot: proc(super: QSGRenderNodeisSubtreeBlockedBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSGRenderNodeisSubtreeBlockedBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGRenderNode_override_virtual_isSubtreeBlocked(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGRenderNode_isSubtreeBlocked(self: ptr cQSGRenderNode, slot: int): bool {.exportc: "miqt_exec_callback_QSGRenderNode_isSubtreeBlocked ".} =
  type Cb = proc(super: QSGRenderNodeisSubtreeBlockedBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isSubtreeBlocked(QSGRenderNode(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_preprocess(self: QSGRenderNode, ): void =


  fQSGRenderNode_virtualbase_preprocess(self.h)

type QSGRenderNodepreprocessBase* = proc(): void
proc onpreprocess*(self: QSGRenderNode, slot: proc(super: QSGRenderNodepreprocessBase): void) =
  # TODO check subclass
  type Cb = proc(super: QSGRenderNodepreprocessBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGRenderNode_override_virtual_preprocess(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGRenderNode_preprocess(self: ptr cQSGRenderNode, slot: int): void {.exportc: "miqt_exec_callback_QSGRenderNode_preprocess ".} =
  type Cb = proc(super: QSGRenderNodepreprocessBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_preprocess(QSGRenderNode(h: self), )

  nimfunc[](superCall)
proc delete*(self: QSGRenderNode) =
  fcQSGRenderNode_delete(self.h)

func init*(T: type QSGRenderNodeRenderState, h: ptr cQSGRenderNodeRenderState): QSGRenderNodeRenderState =
  T(h: h)
proc projectionMatrix*(self: QSGRenderNodeRenderState, ): gen_qmatrix4x4.QMatrix4x4 =

  gen_qmatrix4x4.QMatrix4x4(h: fcQSGRenderNodeRenderState_projectionMatrix(self.h))

proc scissorRect*(self: QSGRenderNodeRenderState, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQSGRenderNodeRenderState_scissorRect(self.h))

proc scissorEnabled*(self: QSGRenderNodeRenderState, ): bool =

  fcQSGRenderNodeRenderState_scissorEnabled(self.h)

proc stencilValue*(self: QSGRenderNodeRenderState, ): cint =

  fcQSGRenderNodeRenderState_stencilValue(self.h)

proc stencilEnabled*(self: QSGRenderNodeRenderState, ): bool =

  fcQSGRenderNodeRenderState_stencilEnabled(self.h)

proc clipRegion*(self: QSGRenderNodeRenderState, ): gen_qregion.QRegion =

  gen_qregion.QRegion(h: fcQSGRenderNodeRenderState_clipRegion(self.h))

proc get*(self: QSGRenderNodeRenderState, state: cstring): pointer =

  fcQSGRenderNodeRenderState_get(self.h, state)

proc operatorAssign*(self: QSGRenderNodeRenderState, param1: QSGRenderNodeRenderState): void =

  fcQSGRenderNodeRenderState_operatorAssign(self.h, param1.h)

proc delete*(self: QSGRenderNodeRenderState) =
  fcQSGRenderNodeRenderState_delete(self.h)
