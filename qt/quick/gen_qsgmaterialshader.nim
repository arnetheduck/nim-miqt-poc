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
{.compile("gen_qsgmaterialshader.cpp", cflags).}


type QSGMaterialShaderRenderStateDirtyState* = cint
const
  QSGMaterialShaderRenderStateDirtyMatrix* = 1
  QSGMaterialShaderRenderStateDirtyOpacity* = 2
  QSGMaterialShaderRenderStateDirtyCachedMaterialData* = 4
  QSGMaterialShaderRenderStateDirtyAll* = 65535



import gen_qsgmaterialshader_types
export gen_qsgmaterialshader_types

import
  gen_qmatrix4x4,
  gen_qrect,
  gen_qsgmaterial
export
  gen_qmatrix4x4,
  gen_qrect,
  gen_qsgmaterial

type cQSGMaterialShader*{.exportc: "QSGMaterialShader", incompleteStruct.} = object
type cQSGMaterialShaderRenderState*{.exportc: "QSGMaterialShader__RenderState", incompleteStruct.} = object

proc fcQSGMaterialShader_new(): ptr cQSGMaterialShader {.importc: "QSGMaterialShader_new".}
proc fcQSGMaterialShader_activate(self: pointer, ): void {.importc: "QSGMaterialShader_activate".}
proc fcQSGMaterialShader_deactivate(self: pointer, ): void {.importc: "QSGMaterialShader_deactivate".}
proc fcQSGMaterialShader_updateState(self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): void {.importc: "QSGMaterialShader_updateState".}
proc fcQSGMaterialShader_attributeNames(self: pointer, ): cstring {.importc: "QSGMaterialShader_attributeNames".}
proc fQSGMaterialShader_virtualbase_activate(self: pointer, ): void{.importc: "QSGMaterialShader_virtualbase_activate".}
proc fcQSGMaterialShader_override_virtual_activate(self: pointer, slot: int) {.importc: "QSGMaterialShader_override_virtual_activate".}
proc fQSGMaterialShader_virtualbase_deactivate(self: pointer, ): void{.importc: "QSGMaterialShader_virtualbase_deactivate".}
proc fcQSGMaterialShader_override_virtual_deactivate(self: pointer, slot: int) {.importc: "QSGMaterialShader_override_virtual_deactivate".}
proc fQSGMaterialShader_virtualbase_updateState(self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): void{.importc: "QSGMaterialShader_virtualbase_updateState".}
proc fcQSGMaterialShader_override_virtual_updateState(self: pointer, slot: int) {.importc: "QSGMaterialShader_override_virtual_updateState".}
proc fcQSGMaterialShader_override_virtual_attributeNames(self: pointer, slot: int) {.importc: "QSGMaterialShader_override_virtual_attributeNames".}
proc fQSGMaterialShader_virtualbase_compile(self: pointer, ): void{.importc: "QSGMaterialShader_virtualbase_compile".}
proc fcQSGMaterialShader_override_virtual_compile(self: pointer, slot: int) {.importc: "QSGMaterialShader_override_virtual_compile".}
proc fQSGMaterialShader_virtualbase_initialize(self: pointer, ): void{.importc: "QSGMaterialShader_virtualbase_initialize".}
proc fcQSGMaterialShader_override_virtual_initialize(self: pointer, slot: int) {.importc: "QSGMaterialShader_override_virtual_initialize".}
proc fQSGMaterialShader_virtualbase_vertexShader(self: pointer, ): cstring{.importc: "QSGMaterialShader_virtualbase_vertexShader".}
proc fcQSGMaterialShader_override_virtual_vertexShader(self: pointer, slot: int) {.importc: "QSGMaterialShader_override_virtual_vertexShader".}
proc fQSGMaterialShader_virtualbase_fragmentShader(self: pointer, ): cstring{.importc: "QSGMaterialShader_virtualbase_fragmentShader".}
proc fcQSGMaterialShader_override_virtual_fragmentShader(self: pointer, slot: int) {.importc: "QSGMaterialShader_override_virtual_fragmentShader".}
proc fcQSGMaterialShader_delete(self: pointer) {.importc: "QSGMaterialShader_delete".}
proc fcQSGMaterialShaderRenderState_dirtyStates(self: pointer, ): cint {.importc: "QSGMaterialShader__RenderState_dirtyStates".}
proc fcQSGMaterialShaderRenderState_isMatrixDirty(self: pointer, ): bool {.importc: "QSGMaterialShader__RenderState_isMatrixDirty".}
proc fcQSGMaterialShaderRenderState_isOpacityDirty(self: pointer, ): bool {.importc: "QSGMaterialShader__RenderState_isOpacityDirty".}
proc fcQSGMaterialShaderRenderState_isCachedMaterialDataDirty(self: pointer, ): bool {.importc: "QSGMaterialShader__RenderState_isCachedMaterialDataDirty".}
proc fcQSGMaterialShaderRenderState_opacity(self: pointer, ): float32 {.importc: "QSGMaterialShader__RenderState_opacity".}
proc fcQSGMaterialShaderRenderState_combinedMatrix(self: pointer, ): pointer {.importc: "QSGMaterialShader__RenderState_combinedMatrix".}
proc fcQSGMaterialShaderRenderState_modelViewMatrix(self: pointer, ): pointer {.importc: "QSGMaterialShader__RenderState_modelViewMatrix".}
proc fcQSGMaterialShaderRenderState_projectionMatrix(self: pointer, ): pointer {.importc: "QSGMaterialShader__RenderState_projectionMatrix".}
proc fcQSGMaterialShaderRenderState_viewportRect(self: pointer, ): pointer {.importc: "QSGMaterialShader__RenderState_viewportRect".}
proc fcQSGMaterialShaderRenderState_deviceRect(self: pointer, ): pointer {.importc: "QSGMaterialShader__RenderState_deviceRect".}
proc fcQSGMaterialShaderRenderState_determinant(self: pointer, ): float32 {.importc: "QSGMaterialShader__RenderState_determinant".}
proc fcQSGMaterialShaderRenderState_devicePixelRatio(self: pointer, ): float32 {.importc: "QSGMaterialShader__RenderState_devicePixelRatio".}
proc fcQSGMaterialShaderRenderState_delete(self: pointer) {.importc: "QSGMaterialShader__RenderState_delete".}


func init*(T: type QSGMaterialShader, h: ptr cQSGMaterialShader): QSGMaterialShader =
  T(h: h)
proc create*(T: type QSGMaterialShader, ): QSGMaterialShader =

  QSGMaterialShader.init(fcQSGMaterialShader_new())
proc activate*(self: QSGMaterialShader, ): void =

  fcQSGMaterialShader_activate(self.h)

proc deactivate*(self: QSGMaterialShader, ): void =

  fcQSGMaterialShader_deactivate(self.h)

proc updateState*(self: QSGMaterialShader, state: QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial.QSGMaterial, oldMaterial: gen_qsgmaterial.QSGMaterial): void =

  fcQSGMaterialShader_updateState(self.h, state.h, newMaterial.h, oldMaterial.h)

proc attributeNames*(self: QSGMaterialShader, ): cstring =

  (fcQSGMaterialShader_attributeNames(self.h))

proc callVirtualBase_activate(self: QSGMaterialShader, ): void =


  fQSGMaterialShader_virtualbase_activate(self.h)

type QSGMaterialShaderactivateBase* = proc(): void
proc onactivate*(self: QSGMaterialShader, slot: proc(super: QSGMaterialShaderactivateBase): void) =
  # TODO check subclass
  type Cb = proc(super: QSGMaterialShaderactivateBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialShader_override_virtual_activate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialShader_activate(self: ptr cQSGMaterialShader, slot: int): void {.exportc: "miqt_exec_callback_QSGMaterialShader_activate ".} =
  type Cb = proc(super: QSGMaterialShaderactivateBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_activate(QSGMaterialShader(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_deactivate(self: QSGMaterialShader, ): void =


  fQSGMaterialShader_virtualbase_deactivate(self.h)

type QSGMaterialShaderdeactivateBase* = proc(): void
proc ondeactivate*(self: QSGMaterialShader, slot: proc(super: QSGMaterialShaderdeactivateBase): void) =
  # TODO check subclass
  type Cb = proc(super: QSGMaterialShaderdeactivateBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialShader_override_virtual_deactivate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialShader_deactivate(self: ptr cQSGMaterialShader, slot: int): void {.exportc: "miqt_exec_callback_QSGMaterialShader_deactivate ".} =
  type Cb = proc(super: QSGMaterialShaderdeactivateBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_deactivate(QSGMaterialShader(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_updateState(self: QSGMaterialShader, state: QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial.QSGMaterial, oldMaterial: gen_qsgmaterial.QSGMaterial): void =


  fQSGMaterialShader_virtualbase_updateState(self.h, state.h, newMaterial.h, oldMaterial.h)

type QSGMaterialShaderupdateStateBase* = proc(state: QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial.QSGMaterial, oldMaterial: gen_qsgmaterial.QSGMaterial): void
proc onupdateState*(self: QSGMaterialShader, slot: proc(super: QSGMaterialShaderupdateStateBase, state: QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial.QSGMaterial, oldMaterial: gen_qsgmaterial.QSGMaterial): void) =
  # TODO check subclass
  type Cb = proc(super: QSGMaterialShaderupdateStateBase, state: QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial.QSGMaterial, oldMaterial: gen_qsgmaterial.QSGMaterial): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialShader_override_virtual_updateState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialShader_updateState(self: ptr cQSGMaterialShader, slot: int, state: pointer, newMaterial: pointer, oldMaterial: pointer): void {.exportc: "miqt_exec_callback_QSGMaterialShader_updateState ".} =
  type Cb = proc(super: QSGMaterialShaderupdateStateBase, state: QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial.QSGMaterial, oldMaterial: gen_qsgmaterial.QSGMaterial): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(state: QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial.QSGMaterial, oldMaterial: gen_qsgmaterial.QSGMaterial): auto =
    callVirtualBase_updateState(QSGMaterialShader(h: self), state, newMaterial, oldMaterial)
  let slotval1 = QSGMaterialShaderRenderState(h: state)

  let slotval2 = gen_qsgmaterial.QSGMaterial(h: newMaterial)

  let slotval3 = gen_qsgmaterial.QSGMaterial(h: oldMaterial)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
type QSGMaterialShaderattributeNamesBase* = proc(): cstring
proc onattributeNames*(self: QSGMaterialShader, slot: proc(): cstring) =
  # TODO check subclass
  type Cb = proc(): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialShader_override_virtual_attributeNames(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialShader_attributeNames(self: ptr cQSGMaterialShader, slot: int): cstring {.exportc: "miqt_exec_callback_QSGMaterialShader_attributeNames ".} =
  type Cb = proc(): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_compile(self: QSGMaterialShader, ): void =


  fQSGMaterialShader_virtualbase_compile(self.h)

type QSGMaterialShadercompileBase* = proc(): void
proc oncompile*(self: QSGMaterialShader, slot: proc(super: QSGMaterialShadercompileBase): void) =
  # TODO check subclass
  type Cb = proc(super: QSGMaterialShadercompileBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialShader_override_virtual_compile(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialShader_compile(self: ptr cQSGMaterialShader, slot: int): void {.exportc: "miqt_exec_callback_QSGMaterialShader_compile ".} =
  type Cb = proc(super: QSGMaterialShadercompileBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_compile(QSGMaterialShader(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_initialize(self: QSGMaterialShader, ): void =


  fQSGMaterialShader_virtualbase_initialize(self.h)

type QSGMaterialShaderinitializeBase* = proc(): void
proc oninitialize*(self: QSGMaterialShader, slot: proc(super: QSGMaterialShaderinitializeBase): void) =
  # TODO check subclass
  type Cb = proc(super: QSGMaterialShaderinitializeBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialShader_override_virtual_initialize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialShader_initialize(self: ptr cQSGMaterialShader, slot: int): void {.exportc: "miqt_exec_callback_QSGMaterialShader_initialize ".} =
  type Cb = proc(super: QSGMaterialShaderinitializeBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_initialize(QSGMaterialShader(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_vertexShader(self: QSGMaterialShader, ): cstring =


  (fQSGMaterialShader_virtualbase_vertexShader(self.h))

type QSGMaterialShadervertexShaderBase* = proc(): cstring
proc onvertexShader*(self: QSGMaterialShader, slot: proc(super: QSGMaterialShadervertexShaderBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QSGMaterialShadervertexShaderBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialShader_override_virtual_vertexShader(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialShader_vertexShader(self: ptr cQSGMaterialShader, slot: int): cstring {.exportc: "miqt_exec_callback_QSGMaterialShader_vertexShader ".} =
  type Cb = proc(super: QSGMaterialShadervertexShaderBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_vertexShader(QSGMaterialShader(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_fragmentShader(self: QSGMaterialShader, ): cstring =


  (fQSGMaterialShader_virtualbase_fragmentShader(self.h))

type QSGMaterialShaderfragmentShaderBase* = proc(): cstring
proc onfragmentShader*(self: QSGMaterialShader, slot: proc(super: QSGMaterialShaderfragmentShaderBase): cstring) =
  # TODO check subclass
  type Cb = proc(super: QSGMaterialShaderfragmentShaderBase): cstring
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialShader_override_virtual_fragmentShader(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialShader_fragmentShader(self: ptr cQSGMaterialShader, slot: int): cstring {.exportc: "miqt_exec_callback_QSGMaterialShader_fragmentShader ".} =
  type Cb = proc(super: QSGMaterialShaderfragmentShaderBase): cstring
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_fragmentShader(QSGMaterialShader(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc delete*(self: QSGMaterialShader) =
  fcQSGMaterialShader_delete(self.h)

func init*(T: type QSGMaterialShaderRenderState, h: ptr cQSGMaterialShaderRenderState): QSGMaterialShaderRenderState =
  T(h: h)
proc dirtyStates*(self: QSGMaterialShaderRenderState, ): QSGMaterialShaderRenderStateDirtyState =

  QSGMaterialShaderRenderStateDirtyState(fcQSGMaterialShaderRenderState_dirtyStates(self.h))

proc isMatrixDirty*(self: QSGMaterialShaderRenderState, ): bool =

  fcQSGMaterialShaderRenderState_isMatrixDirty(self.h)

proc isOpacityDirty*(self: QSGMaterialShaderRenderState, ): bool =

  fcQSGMaterialShaderRenderState_isOpacityDirty(self.h)

proc isCachedMaterialDataDirty*(self: QSGMaterialShaderRenderState, ): bool =

  fcQSGMaterialShaderRenderState_isCachedMaterialDataDirty(self.h)

proc opacity*(self: QSGMaterialShaderRenderState, ): float32 =

  fcQSGMaterialShaderRenderState_opacity(self.h)

proc combinedMatrix*(self: QSGMaterialShaderRenderState, ): gen_qmatrix4x4.QMatrix4x4 =

  gen_qmatrix4x4.QMatrix4x4(h: fcQSGMaterialShaderRenderState_combinedMatrix(self.h))

proc modelViewMatrix*(self: QSGMaterialShaderRenderState, ): gen_qmatrix4x4.QMatrix4x4 =

  gen_qmatrix4x4.QMatrix4x4(h: fcQSGMaterialShaderRenderState_modelViewMatrix(self.h))

proc projectionMatrix*(self: QSGMaterialShaderRenderState, ): gen_qmatrix4x4.QMatrix4x4 =

  gen_qmatrix4x4.QMatrix4x4(h: fcQSGMaterialShaderRenderState_projectionMatrix(self.h))

proc viewportRect*(self: QSGMaterialShaderRenderState, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQSGMaterialShaderRenderState_viewportRect(self.h))

proc deviceRect*(self: QSGMaterialShaderRenderState, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQSGMaterialShaderRenderState_deviceRect(self.h))

proc determinant*(self: QSGMaterialShaderRenderState, ): float32 =

  fcQSGMaterialShaderRenderState_determinant(self.h)

proc devicePixelRatio*(self: QSGMaterialShaderRenderState, ): float32 =

  fcQSGMaterialShaderRenderState_devicePixelRatio(self.h)

proc delete*(self: QSGMaterialShaderRenderState) =
  fcQSGMaterialShaderRenderState_delete(self.h)
