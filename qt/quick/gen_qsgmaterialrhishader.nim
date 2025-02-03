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
{.compile("gen_qsgmaterialrhishader.cpp", cflags).}


type QSGMaterialRhiShaderFlag* = cint
const
  QSGMaterialRhiShaderUpdatesGraphicsPipelineState* = 1



type QSGMaterialRhiShaderStage* = cint
const
  QSGMaterialRhiShaderVertexStage* = 0
  QSGMaterialRhiShaderFragmentStage* = 1



type QSGMaterialRhiShaderGraphicsPipelineStateBlendFactor* = cint
const
  QSGMaterialRhiShaderGraphicsPipelineStateZero* = 0
  QSGMaterialRhiShaderGraphicsPipelineStateOne* = 1
  QSGMaterialRhiShaderGraphicsPipelineStateSrcColor* = 2
  QSGMaterialRhiShaderGraphicsPipelineStateOneMinusSrcColor* = 3
  QSGMaterialRhiShaderGraphicsPipelineStateDstColor* = 4
  QSGMaterialRhiShaderGraphicsPipelineStateOneMinusDstColor* = 5
  QSGMaterialRhiShaderGraphicsPipelineStateSrcAlpha* = 6
  QSGMaterialRhiShaderGraphicsPipelineStateOneMinusSrcAlpha* = 7
  QSGMaterialRhiShaderGraphicsPipelineStateDstAlpha* = 8
  QSGMaterialRhiShaderGraphicsPipelineStateOneMinusDstAlpha* = 9
  QSGMaterialRhiShaderGraphicsPipelineStateConstantColor* = 10
  QSGMaterialRhiShaderGraphicsPipelineStateOneMinusConstantColor* = 11
  QSGMaterialRhiShaderGraphicsPipelineStateConstantAlpha* = 12
  QSGMaterialRhiShaderGraphicsPipelineStateOneMinusConstantAlpha* = 13
  QSGMaterialRhiShaderGraphicsPipelineStateSrcAlphaSaturate* = 14
  QSGMaterialRhiShaderGraphicsPipelineStateSrc1Color* = 15
  QSGMaterialRhiShaderGraphicsPipelineStateOneMinusSrc1Color* = 16
  QSGMaterialRhiShaderGraphicsPipelineStateSrc1Alpha* = 17
  QSGMaterialRhiShaderGraphicsPipelineStateOneMinusSrc1Alpha* = 18



type QSGMaterialRhiShaderGraphicsPipelineStateColorMaskComponent* = cint
const
  QSGMaterialRhiShaderGraphicsPipelineStateR* = 1
  QSGMaterialRhiShaderGraphicsPipelineStateG* = 2
  QSGMaterialRhiShaderGraphicsPipelineStateB* = 4
  QSGMaterialRhiShaderGraphicsPipelineStateA* = 8



type QSGMaterialRhiShaderGraphicsPipelineStateCullMode* = cint
const
  QSGMaterialRhiShaderGraphicsPipelineStateCullNone* = 0
  QSGMaterialRhiShaderGraphicsPipelineStateCullFront* = 1
  QSGMaterialRhiShaderGraphicsPipelineStateCullBack* = 2



import gen_qsgmaterialrhishader_types
export gen_qsgmaterialrhishader_types

import
  gen_qmatrix4x4,
  gen_qrect,
  gen_qsgmaterial,
  gen_qsgmaterialshader
export
  gen_qmatrix4x4,
  gen_qrect,
  gen_qsgmaterial,
  gen_qsgmaterialshader

type cQSGMaterialRhiShader*{.exportc: "QSGMaterialRhiShader", incompleteStruct.} = object
type cQSGMaterialRhiShaderRenderState*{.exportc: "QSGMaterialRhiShader__RenderState", incompleteStruct.} = object
type cQSGMaterialRhiShaderGraphicsPipelineState*{.exportc: "QSGMaterialRhiShader__GraphicsPipelineState", incompleteStruct.} = object

proc fcQSGMaterialRhiShader_new(): ptr cQSGMaterialRhiShader {.importc: "QSGMaterialRhiShader_new".}
proc fcQSGMaterialRhiShader_updateUniformData(self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.importc: "QSGMaterialRhiShader_updateUniformData".}
proc fcQSGMaterialRhiShader_updateGraphicsPipelineState(self: pointer, state: pointer, ps: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.importc: "QSGMaterialRhiShader_updateGraphicsPipelineState".}
proc fcQSGMaterialRhiShader_flags(self: pointer, ): cint {.importc: "QSGMaterialRhiShader_flags".}
proc fcQSGMaterialRhiShader_setFlag(self: pointer, flags: cint): void {.importc: "QSGMaterialRhiShader_setFlag".}
proc fcQSGMaterialRhiShader_attributeNames(self: pointer, ): cstring {.importc: "QSGMaterialRhiShader_attributeNames".}
proc fcQSGMaterialRhiShader_setFlag2(self: pointer, flags: cint, on: bool): void {.importc: "QSGMaterialRhiShader_setFlag2".}
proc fQSGMaterialRhiShader_virtualbase_updateUniformData(self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): bool{.importc: "QSGMaterialRhiShader_virtualbase_updateUniformData".}
proc fcQSGMaterialRhiShader_override_virtual_updateUniformData(self: pointer, slot: int) {.importc: "QSGMaterialRhiShader_override_virtual_updateUniformData".}
proc fQSGMaterialRhiShader_virtualbase_updateGraphicsPipelineState(self: pointer, state: pointer, ps: pointer, newMaterial: pointer, oldMaterial: pointer): bool{.importc: "QSGMaterialRhiShader_virtualbase_updateGraphicsPipelineState".}
proc fcQSGMaterialRhiShader_override_virtual_updateGraphicsPipelineState(self: pointer, slot: int) {.importc: "QSGMaterialRhiShader_override_virtual_updateGraphicsPipelineState".}
proc fQSGMaterialRhiShader_virtualbase_attributeNames(self: pointer, ): cstring{.importc: "QSGMaterialRhiShader_virtualbase_attributeNames".}
proc fcQSGMaterialRhiShader_override_virtual_attributeNames(self: pointer, slot: int) {.importc: "QSGMaterialRhiShader_override_virtual_attributeNames".}
proc fQSGMaterialRhiShader_virtualbase_activate(self: pointer, ): void{.importc: "QSGMaterialRhiShader_virtualbase_activate".}
proc fcQSGMaterialRhiShader_override_virtual_activate(self: pointer, slot: int) {.importc: "QSGMaterialRhiShader_override_virtual_activate".}
proc fQSGMaterialRhiShader_virtualbase_deactivate(self: pointer, ): void{.importc: "QSGMaterialRhiShader_virtualbase_deactivate".}
proc fcQSGMaterialRhiShader_override_virtual_deactivate(self: pointer, slot: int) {.importc: "QSGMaterialRhiShader_override_virtual_deactivate".}
proc fQSGMaterialRhiShader_virtualbase_updateState(self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): void{.importc: "QSGMaterialRhiShader_virtualbase_updateState".}
proc fcQSGMaterialRhiShader_override_virtual_updateState(self: pointer, slot: int) {.importc: "QSGMaterialRhiShader_override_virtual_updateState".}
proc fQSGMaterialRhiShader_virtualbase_compile(self: pointer, ): void{.importc: "QSGMaterialRhiShader_virtualbase_compile".}
proc fcQSGMaterialRhiShader_override_virtual_compile(self: pointer, slot: int) {.importc: "QSGMaterialRhiShader_override_virtual_compile".}
proc fQSGMaterialRhiShader_virtualbase_initialize(self: pointer, ): void{.importc: "QSGMaterialRhiShader_virtualbase_initialize".}
proc fcQSGMaterialRhiShader_override_virtual_initialize(self: pointer, slot: int) {.importc: "QSGMaterialRhiShader_override_virtual_initialize".}
proc fQSGMaterialRhiShader_virtualbase_vertexShader(self: pointer, ): cstring{.importc: "QSGMaterialRhiShader_virtualbase_vertexShader".}
proc fcQSGMaterialRhiShader_override_virtual_vertexShader(self: pointer, slot: int) {.importc: "QSGMaterialRhiShader_override_virtual_vertexShader".}
proc fQSGMaterialRhiShader_virtualbase_fragmentShader(self: pointer, ): cstring{.importc: "QSGMaterialRhiShader_virtualbase_fragmentShader".}
proc fcQSGMaterialRhiShader_override_virtual_fragmentShader(self: pointer, slot: int) {.importc: "QSGMaterialRhiShader_override_virtual_fragmentShader".}
proc fcQSGMaterialRhiShader_delete(self: pointer) {.importc: "QSGMaterialRhiShader_delete".}
proc fcQSGMaterialRhiShaderRenderState_dirtyStates(self: pointer, ): cint {.importc: "QSGMaterialRhiShader__RenderState_dirtyStates".}
proc fcQSGMaterialRhiShaderRenderState_isMatrixDirty(self: pointer, ): bool {.importc: "QSGMaterialRhiShader__RenderState_isMatrixDirty".}
proc fcQSGMaterialRhiShaderRenderState_isOpacityDirty(self: pointer, ): bool {.importc: "QSGMaterialRhiShader__RenderState_isOpacityDirty".}
proc fcQSGMaterialRhiShaderRenderState_opacity(self: pointer, ): float32 {.importc: "QSGMaterialRhiShader__RenderState_opacity".}
proc fcQSGMaterialRhiShaderRenderState_combinedMatrix(self: pointer, ): pointer {.importc: "QSGMaterialRhiShader__RenderState_combinedMatrix".}
proc fcQSGMaterialRhiShaderRenderState_modelViewMatrix(self: pointer, ): pointer {.importc: "QSGMaterialRhiShader__RenderState_modelViewMatrix".}
proc fcQSGMaterialRhiShaderRenderState_projectionMatrix(self: pointer, ): pointer {.importc: "QSGMaterialRhiShader__RenderState_projectionMatrix".}
proc fcQSGMaterialRhiShaderRenderState_viewportRect(self: pointer, ): pointer {.importc: "QSGMaterialRhiShader__RenderState_viewportRect".}
proc fcQSGMaterialRhiShaderRenderState_deviceRect(self: pointer, ): pointer {.importc: "QSGMaterialRhiShader__RenderState_deviceRect".}
proc fcQSGMaterialRhiShaderRenderState_determinant(self: pointer, ): float32 {.importc: "QSGMaterialRhiShader__RenderState_determinant".}
proc fcQSGMaterialRhiShaderRenderState_devicePixelRatio(self: pointer, ): float32 {.importc: "QSGMaterialRhiShader__RenderState_devicePixelRatio".}
proc fcQSGMaterialRhiShaderRenderState_uniformData(self: pointer, ): struct_miqt_string {.importc: "QSGMaterialRhiShader__RenderState_uniformData".}
proc fcQSGMaterialRhiShaderRenderState_delete(self: pointer) {.importc: "QSGMaterialRhiShader__RenderState_delete".}
proc fcQSGMaterialRhiShaderGraphicsPipelineState_new(param1: pointer): ptr cQSGMaterialRhiShaderGraphicsPipelineState {.importc: "QSGMaterialRhiShader__GraphicsPipelineState_new".}
proc fcQSGMaterialRhiShaderGraphicsPipelineState_operatorAssign(self: pointer, param1: pointer): void {.importc: "QSGMaterialRhiShader__GraphicsPipelineState_operatorAssign".}
proc fcQSGMaterialRhiShaderGraphicsPipelineState_delete(self: pointer) {.importc: "QSGMaterialRhiShader__GraphicsPipelineState_delete".}


func init*(T: type QSGMaterialRhiShader, h: ptr cQSGMaterialRhiShader): QSGMaterialRhiShader =
  T(h: h)
proc create*(T: type QSGMaterialRhiShader, ): QSGMaterialRhiShader =

  QSGMaterialRhiShader.init(fcQSGMaterialRhiShader_new())
proc updateUniformData*(self: QSGMaterialRhiShader, state: QSGMaterialRhiShaderRenderState, newMaterial: gen_qsgmaterial.QSGMaterial, oldMaterial: gen_qsgmaterial.QSGMaterial): bool =

  fcQSGMaterialRhiShader_updateUniformData(self.h, state.h, newMaterial.h, oldMaterial.h)

proc updateGraphicsPipelineState*(self: QSGMaterialRhiShader, state: QSGMaterialRhiShaderRenderState, ps: QSGMaterialRhiShaderGraphicsPipelineState, newMaterial: gen_qsgmaterial.QSGMaterial, oldMaterial: gen_qsgmaterial.QSGMaterial): bool =

  fcQSGMaterialRhiShader_updateGraphicsPipelineState(self.h, state.h, ps.h, newMaterial.h, oldMaterial.h)

proc flags*(self: QSGMaterialRhiShader, ): QSGMaterialRhiShaderFlag =

  QSGMaterialRhiShaderFlag(fcQSGMaterialRhiShader_flags(self.h))

proc setFlag*(self: QSGMaterialRhiShader, flags: QSGMaterialRhiShaderFlag): void =

  fcQSGMaterialRhiShader_setFlag(self.h, cint(flags))

proc attributeNames*(self: QSGMaterialRhiShader, ): cstring =

  (fcQSGMaterialRhiShader_attributeNames(self.h))

proc setFlag2*(self: QSGMaterialRhiShader, flags: QSGMaterialRhiShaderFlag, on: bool): void =

  fcQSGMaterialRhiShader_setFlag2(self.h, cint(flags), on)

proc callVirtualBase_updateUniformData(self: QSGMaterialRhiShader, state: QSGMaterialRhiShaderRenderState, newMaterial: gen_qsgmaterial.QSGMaterial, oldMaterial: gen_qsgmaterial.QSGMaterial): bool =


  fQSGMaterialRhiShader_virtualbase_updateUniformData(self.h, state.h, newMaterial.h, oldMaterial.h)

type QSGMaterialRhiShaderupdateUniformDataBase* = proc(state: QSGMaterialRhiShaderRenderState, newMaterial: gen_qsgmaterial.QSGMaterial, oldMaterial: gen_qsgmaterial.QSGMaterial): bool
proc onupdateUniformData*(self: QSGMaterialRhiShader, slot: proc(super: QSGMaterialRhiShaderupdateUniformDataBase, state: QSGMaterialRhiShaderRenderState, newMaterial: gen_qsgmaterial.QSGMaterial, oldMaterial: gen_qsgmaterial.QSGMaterial): bool) =
  # TODO check subclass
  type Cb = proc(super: QSGMaterialRhiShaderupdateUniformDataBase, state: QSGMaterialRhiShaderRenderState, newMaterial: gen_qsgmaterial.QSGMaterial, oldMaterial: gen_qsgmaterial.QSGMaterial): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialRhiShader_override_virtual_updateUniformData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialRhiShader_updateUniformData(self: ptr cQSGMaterialRhiShader, slot: int, state: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.exportc: "miqt_exec_callback_QSGMaterialRhiShader_updateUniformData ".} =
  type Cb = proc(super: QSGMaterialRhiShaderupdateUniformDataBase, state: QSGMaterialRhiShaderRenderState, newMaterial: gen_qsgmaterial.QSGMaterial, oldMaterial: gen_qsgmaterial.QSGMaterial): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(state: QSGMaterialRhiShaderRenderState, newMaterial: gen_qsgmaterial.QSGMaterial, oldMaterial: gen_qsgmaterial.QSGMaterial): auto =
    callVirtualBase_updateUniformData(QSGMaterialRhiShader(h: self), state, newMaterial, oldMaterial)
  let slotval1 = QSGMaterialRhiShaderRenderState(h: state)

  let slotval2 = gen_qsgmaterial.QSGMaterial(h: newMaterial)

  let slotval3 = gen_qsgmaterial.QSGMaterial(h: oldMaterial)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_updateGraphicsPipelineState(self: QSGMaterialRhiShader, state: QSGMaterialRhiShaderRenderState, ps: QSGMaterialRhiShaderGraphicsPipelineState, newMaterial: gen_qsgmaterial.QSGMaterial, oldMaterial: gen_qsgmaterial.QSGMaterial): bool =


  fQSGMaterialRhiShader_virtualbase_updateGraphicsPipelineState(self.h, state.h, ps.h, newMaterial.h, oldMaterial.h)

type QSGMaterialRhiShaderupdateGraphicsPipelineStateBase* = proc(state: QSGMaterialRhiShaderRenderState, ps: QSGMaterialRhiShaderGraphicsPipelineState, newMaterial: gen_qsgmaterial.QSGMaterial, oldMaterial: gen_qsgmaterial.QSGMaterial): bool
proc onupdateGraphicsPipelineState*(self: QSGMaterialRhiShader, slot: proc(super: QSGMaterialRhiShaderupdateGraphicsPipelineStateBase, state: QSGMaterialRhiShaderRenderState, ps: QSGMaterialRhiShaderGraphicsPipelineState, newMaterial: gen_qsgmaterial.QSGMaterial, oldMaterial: gen_qsgmaterial.QSGMaterial): bool) =
  # TODO check subclass
  type Cb = proc(super: QSGMaterialRhiShaderupdateGraphicsPipelineStateBase, state: QSGMaterialRhiShaderRenderState, ps: QSGMaterialRhiShaderGraphicsPipelineState, newMaterial: gen_qsgmaterial.QSGMaterial, oldMaterial: gen_qsgmaterial.QSGMaterial): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialRhiShader_override_virtual_updateGraphicsPipelineState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialRhiShader_updateGraphicsPipelineState(self: ptr cQSGMaterialRhiShader, slot: int, state: pointer, ps: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.exportc: "miqt_exec_callback_QSGMaterialRhiShader_updateGraphicsPipelineState ".} =
  type Cb = proc(super: QSGMaterialRhiShaderupdateGraphicsPipelineStateBase, state: QSGMaterialRhiShaderRenderState, ps: QSGMaterialRhiShaderGraphicsPipelineState, newMaterial: gen_qsgmaterial.QSGMaterial, oldMaterial: gen_qsgmaterial.QSGMaterial): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(state: QSGMaterialRhiShaderRenderState, ps: QSGMaterialRhiShaderGraphicsPipelineState, newMaterial: gen_qsgmaterial.QSGMaterial, oldMaterial: gen_qsgmaterial.QSGMaterial): auto =
    callVirtualBase_updateGraphicsPipelineState(QSGMaterialRhiShader(h: self), state, ps, newMaterial, oldMaterial)
  let slotval1 = QSGMaterialRhiShaderRenderState(h: state)

  let slotval2 = QSGMaterialRhiShaderGraphicsPipelineState(h: ps)

  let slotval3 = gen_qsgmaterial.QSGMaterial(h: newMaterial)

  let slotval4 = gen_qsgmaterial.QSGMaterial(h: oldMaterial)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc callVirtualBase_attributeNames(self: QSGMaterialRhiShader, ): cstring =


  (fQSGMaterialRhiShader_virtualbase_attributeNames(self.h))

type QSGMaterialRhiShaderattributeNamesBase* = proc(): cstring
proc onattributeNames*(self: QSGMaterialRhiShader, slot: proc(super: QSGMaterialRhiShaderattributeNamesBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QSGMaterialRhiShaderattributeNamesBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialRhiShader_override_virtual_attributeNames(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialRhiShader_attributeNames(self: ptr cQSGMaterialRhiShader, slot: int): cstring {.exportc: "miqt_exec_callback_QSGMaterialRhiShader_attributeNames ".} =
  type Cb = proc(super: QSGMaterialRhiShaderattributeNamesBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_attributeNames(QSGMaterialRhiShader(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_activate(self: QSGMaterialRhiShader, ): void =


  fQSGMaterialRhiShader_virtualbase_activate(self.h)

type QSGMaterialRhiShaderactivateBase* = proc(): void
proc onactivate*(self: QSGMaterialRhiShader, slot: proc(super: QSGMaterialRhiShaderactivateBase): void) =
  # TODO check subclass
  type Cb = proc(super: QSGMaterialRhiShaderactivateBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialRhiShader_override_virtual_activate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialRhiShader_activate(self: ptr cQSGMaterialRhiShader, slot: int): void {.exportc: "miqt_exec_callback_QSGMaterialRhiShader_activate ".} =
  type Cb = proc(super: QSGMaterialRhiShaderactivateBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_activate(QSGMaterialRhiShader(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_deactivate(self: QSGMaterialRhiShader, ): void =


  fQSGMaterialRhiShader_virtualbase_deactivate(self.h)

type QSGMaterialRhiShaderdeactivateBase* = proc(): void
proc ondeactivate*(self: QSGMaterialRhiShader, slot: proc(super: QSGMaterialRhiShaderdeactivateBase): void) =
  # TODO check subclass
  type Cb = proc(super: QSGMaterialRhiShaderdeactivateBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialRhiShader_override_virtual_deactivate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialRhiShader_deactivate(self: ptr cQSGMaterialRhiShader, slot: int): void {.exportc: "miqt_exec_callback_QSGMaterialRhiShader_deactivate ".} =
  type Cb = proc(super: QSGMaterialRhiShaderdeactivateBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_deactivate(QSGMaterialRhiShader(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_updateState(self: QSGMaterialRhiShader, state: gen_qsgmaterialshader.QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial.QSGMaterial, oldMaterial: gen_qsgmaterial.QSGMaterial): void =


  fQSGMaterialRhiShader_virtualbase_updateState(self.h, state.h, newMaterial.h, oldMaterial.h)

type QSGMaterialRhiShaderupdateStateBase* = proc(state: gen_qsgmaterialshader.QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial.QSGMaterial, oldMaterial: gen_qsgmaterial.QSGMaterial): void
proc onupdateState*(self: QSGMaterialRhiShader, slot: proc(super: QSGMaterialRhiShaderupdateStateBase, state: gen_qsgmaterialshader.QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial.QSGMaterial, oldMaterial: gen_qsgmaterial.QSGMaterial): void) =
  # TODO check subclass
  type Cb = proc(super: QSGMaterialRhiShaderupdateStateBase, state: gen_qsgmaterialshader.QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial.QSGMaterial, oldMaterial: gen_qsgmaterial.QSGMaterial): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialRhiShader_override_virtual_updateState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialRhiShader_updateState(self: ptr cQSGMaterialRhiShader, slot: int, state: pointer, newMaterial: pointer, oldMaterial: pointer): void {.exportc: "miqt_exec_callback_QSGMaterialRhiShader_updateState ".} =
  type Cb = proc(super: QSGMaterialRhiShaderupdateStateBase, state: gen_qsgmaterialshader.QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial.QSGMaterial, oldMaterial: gen_qsgmaterial.QSGMaterial): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(state: gen_qsgmaterialshader.QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial.QSGMaterial, oldMaterial: gen_qsgmaterial.QSGMaterial): auto =
    callVirtualBase_updateState(QSGMaterialRhiShader(h: self), state, newMaterial, oldMaterial)
  let slotval1 = gen_qsgmaterialshader.QSGMaterialShaderRenderState(h: state)

  let slotval2 = gen_qsgmaterial.QSGMaterial(h: newMaterial)

  let slotval3 = gen_qsgmaterial.QSGMaterial(h: oldMaterial)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_compile(self: QSGMaterialRhiShader, ): void =


  fQSGMaterialRhiShader_virtualbase_compile(self.h)

type QSGMaterialRhiShadercompileBase* = proc(): void
proc oncompile*(self: QSGMaterialRhiShader, slot: proc(super: QSGMaterialRhiShadercompileBase): void) =
  # TODO check subclass
  type Cb = proc(super: QSGMaterialRhiShadercompileBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialRhiShader_override_virtual_compile(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialRhiShader_compile(self: ptr cQSGMaterialRhiShader, slot: int): void {.exportc: "miqt_exec_callback_QSGMaterialRhiShader_compile ".} =
  type Cb = proc(super: QSGMaterialRhiShadercompileBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_compile(QSGMaterialRhiShader(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_initialize(self: QSGMaterialRhiShader, ): void =


  fQSGMaterialRhiShader_virtualbase_initialize(self.h)

type QSGMaterialRhiShaderinitializeBase* = proc(): void
proc oninitialize*(self: QSGMaterialRhiShader, slot: proc(super: QSGMaterialRhiShaderinitializeBase): void) =
  # TODO check subclass
  type Cb = proc(super: QSGMaterialRhiShaderinitializeBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialRhiShader_override_virtual_initialize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialRhiShader_initialize(self: ptr cQSGMaterialRhiShader, slot: int): void {.exportc: "miqt_exec_callback_QSGMaterialRhiShader_initialize ".} =
  type Cb = proc(super: QSGMaterialRhiShaderinitializeBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_initialize(QSGMaterialRhiShader(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_vertexShader(self: QSGMaterialRhiShader, ): cstring =


  (fQSGMaterialRhiShader_virtualbase_vertexShader(self.h))

type QSGMaterialRhiShadervertexShaderBase* = proc(): cstring
proc onvertexShader*(self: QSGMaterialRhiShader, slot: proc(super: QSGMaterialRhiShadervertexShaderBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QSGMaterialRhiShadervertexShaderBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialRhiShader_override_virtual_vertexShader(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialRhiShader_vertexShader(self: ptr cQSGMaterialRhiShader, slot: int): cstring {.exportc: "miqt_exec_callback_QSGMaterialRhiShader_vertexShader ".} =
  type Cb = proc(super: QSGMaterialRhiShadervertexShaderBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_vertexShader(QSGMaterialRhiShader(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_fragmentShader(self: QSGMaterialRhiShader, ): cstring =


  (fQSGMaterialRhiShader_virtualbase_fragmentShader(self.h))

type QSGMaterialRhiShaderfragmentShaderBase* = proc(): cstring
proc onfragmentShader*(self: QSGMaterialRhiShader, slot: proc(super: QSGMaterialRhiShaderfragmentShaderBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QSGMaterialRhiShaderfragmentShaderBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialRhiShader_override_virtual_fragmentShader(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialRhiShader_fragmentShader(self: ptr cQSGMaterialRhiShader, slot: int): cstring {.exportc: "miqt_exec_callback_QSGMaterialRhiShader_fragmentShader ".} =
  type Cb = proc(super: QSGMaterialRhiShaderfragmentShaderBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_fragmentShader(QSGMaterialRhiShader(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc delete*(self: QSGMaterialRhiShader) =
  fcQSGMaterialRhiShader_delete(self.h)

func init*(T: type QSGMaterialRhiShaderRenderState, h: ptr cQSGMaterialRhiShaderRenderState): QSGMaterialRhiShaderRenderState =
  T(h: h)
proc dirtyStates*(self: QSGMaterialRhiShaderRenderState, ): gen_qsgmaterialshader.QSGMaterialShaderRenderStateDirtyState =

  gen_qsgmaterialshader.QSGMaterialShaderRenderStateDirtyState(fcQSGMaterialRhiShaderRenderState_dirtyStates(self.h))

proc isMatrixDirty*(self: QSGMaterialRhiShaderRenderState, ): bool =

  fcQSGMaterialRhiShaderRenderState_isMatrixDirty(self.h)

proc isOpacityDirty*(self: QSGMaterialRhiShaderRenderState, ): bool =

  fcQSGMaterialRhiShaderRenderState_isOpacityDirty(self.h)

proc opacity*(self: QSGMaterialRhiShaderRenderState, ): float32 =

  fcQSGMaterialRhiShaderRenderState_opacity(self.h)

proc combinedMatrix*(self: QSGMaterialRhiShaderRenderState, ): gen_qmatrix4x4.QMatrix4x4 =

  gen_qmatrix4x4.QMatrix4x4(h: fcQSGMaterialRhiShaderRenderState_combinedMatrix(self.h))

proc modelViewMatrix*(self: QSGMaterialRhiShaderRenderState, ): gen_qmatrix4x4.QMatrix4x4 =

  gen_qmatrix4x4.QMatrix4x4(h: fcQSGMaterialRhiShaderRenderState_modelViewMatrix(self.h))

proc projectionMatrix*(self: QSGMaterialRhiShaderRenderState, ): gen_qmatrix4x4.QMatrix4x4 =

  gen_qmatrix4x4.QMatrix4x4(h: fcQSGMaterialRhiShaderRenderState_projectionMatrix(self.h))

proc viewportRect*(self: QSGMaterialRhiShaderRenderState, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQSGMaterialRhiShaderRenderState_viewportRect(self.h))

proc deviceRect*(self: QSGMaterialRhiShaderRenderState, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQSGMaterialRhiShaderRenderState_deviceRect(self.h))

proc determinant*(self: QSGMaterialRhiShaderRenderState, ): float32 =

  fcQSGMaterialRhiShaderRenderState_determinant(self.h)

proc devicePixelRatio*(self: QSGMaterialRhiShaderRenderState, ): float32 =

  fcQSGMaterialRhiShaderRenderState_devicePixelRatio(self.h)

proc uniformData*(self: QSGMaterialRhiShaderRenderState, ): seq[byte] =

  var v_bytearray = fcQSGMaterialRhiShaderRenderState_uniformData(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc delete*(self: QSGMaterialRhiShaderRenderState) =
  fcQSGMaterialRhiShaderRenderState_delete(self.h)

func init*(T: type QSGMaterialRhiShaderGraphicsPipelineState, h: ptr cQSGMaterialRhiShaderGraphicsPipelineState): QSGMaterialRhiShaderGraphicsPipelineState =
  T(h: h)
proc create*(T: type QSGMaterialRhiShaderGraphicsPipelineState, param1: QSGMaterialRhiShaderGraphicsPipelineState): QSGMaterialRhiShaderGraphicsPipelineState =

  QSGMaterialRhiShaderGraphicsPipelineState.init(fcQSGMaterialRhiShaderGraphicsPipelineState_new(param1.h))
proc operatorAssign*(self: QSGMaterialRhiShaderGraphicsPipelineState, param1: QSGMaterialRhiShaderGraphicsPipelineState): void =

  fcQSGMaterialRhiShaderGraphicsPipelineState_operatorAssign(self.h, param1.h)

proc delete*(self: QSGMaterialRhiShaderGraphicsPipelineState) =
  fcQSGMaterialRhiShaderGraphicsPipelineState_delete(self.h)
