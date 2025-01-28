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
{.compile("gen_qquickpainteditem.cpp", cflags).}


type QQuickPaintedItemRenderTargetEnum* = distinct cint
template Image*(_: type QQuickPaintedItemRenderTargetEnum): untyped = 0
template FramebufferObject*(_: type QQuickPaintedItemRenderTargetEnum): untyped = 1
template InvertedYFramebufferObject*(_: type QQuickPaintedItemRenderTargetEnum): untyped = 2


type QQuickPaintedItemPerformanceHintEnum* = distinct cint
template FastFBOResizing*(_: type QQuickPaintedItemPerformanceHintEnum): untyped = 1

import gen_qquickpainteditem_types
export gen_qquickpainteditem_types

import
  gen_qcolor_types,
  gen_qcoreevent_types,
  gen_qevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpainter_types,
  gen_qpoint_types,
  gen_qquickitem,
  gen_qquickitem_types,
  gen_qrect_types,
  gen_qsgnode_types,
  gen_qsgtextureprovider_types,
  gen_qsize_types,
  gen_qvariant_types
export
  gen_qcolor_types,
  gen_qcoreevent_types,
  gen_qevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpainter_types,
  gen_qpoint_types,
  gen_qquickitem,
  gen_qquickitem_types,
  gen_qrect_types,
  gen_qsgnode_types,
  gen_qsgtextureprovider_types,
  gen_qsize_types,
  gen_qvariant_types

type cQQuickPaintedItem*{.exportc: "QQuickPaintedItem", incompleteStruct.} = object

proc fcQQuickPaintedItem_metaObject(self: pointer, ): pointer {.importc: "QQuickPaintedItem_metaObject".}
proc fcQQuickPaintedItem_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickPaintedItem_metacast".}
proc fcQQuickPaintedItem_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickPaintedItem_metacall".}
proc fcQQuickPaintedItem_tr(s: cstring): struct_miqt_string {.importc: "QQuickPaintedItem_tr".}
proc fcQQuickPaintedItem_trUtf8(s: cstring): struct_miqt_string {.importc: "QQuickPaintedItem_trUtf8".}
proc fcQQuickPaintedItem_update(self: pointer, ): void {.importc: "QQuickPaintedItem_update".}
proc fcQQuickPaintedItem_opaquePainting(self: pointer, ): bool {.importc: "QQuickPaintedItem_opaquePainting".}
proc fcQQuickPaintedItem_setOpaquePainting(self: pointer, opaque: bool): void {.importc: "QQuickPaintedItem_setOpaquePainting".}
proc fcQQuickPaintedItem_antialiasing(self: pointer, ): bool {.importc: "QQuickPaintedItem_antialiasing".}
proc fcQQuickPaintedItem_setAntialiasing(self: pointer, enable: bool): void {.importc: "QQuickPaintedItem_setAntialiasing".}
proc fcQQuickPaintedItem_mipmap(self: pointer, ): bool {.importc: "QQuickPaintedItem_mipmap".}
proc fcQQuickPaintedItem_setMipmap(self: pointer, enable: bool): void {.importc: "QQuickPaintedItem_setMipmap".}
proc fcQQuickPaintedItem_performanceHints(self: pointer, ): cint {.importc: "QQuickPaintedItem_performanceHints".}
proc fcQQuickPaintedItem_setPerformanceHint(self: pointer, hint: cint): void {.importc: "QQuickPaintedItem_setPerformanceHint".}
proc fcQQuickPaintedItem_setPerformanceHints(self: pointer, hints: cint): void {.importc: "QQuickPaintedItem_setPerformanceHints".}
proc fcQQuickPaintedItem_contentsBoundingRect(self: pointer, ): pointer {.importc: "QQuickPaintedItem_contentsBoundingRect".}
proc fcQQuickPaintedItem_contentsSize(self: pointer, ): pointer {.importc: "QQuickPaintedItem_contentsSize".}
proc fcQQuickPaintedItem_setContentsSize(self: pointer, contentsSize: pointer): void {.importc: "QQuickPaintedItem_setContentsSize".}
proc fcQQuickPaintedItem_resetContentsSize(self: pointer, ): void {.importc: "QQuickPaintedItem_resetContentsSize".}
proc fcQQuickPaintedItem_contentsScale(self: pointer, ): float64 {.importc: "QQuickPaintedItem_contentsScale".}
proc fcQQuickPaintedItem_setContentsScale(self: pointer, contentsScale: float64): void {.importc: "QQuickPaintedItem_setContentsScale".}
proc fcQQuickPaintedItem_textureSize(self: pointer, ): pointer {.importc: "QQuickPaintedItem_textureSize".}
proc fcQQuickPaintedItem_setTextureSize(self: pointer, size: pointer): void {.importc: "QQuickPaintedItem_setTextureSize".}
proc fcQQuickPaintedItem_fillColor(self: pointer, ): pointer {.importc: "QQuickPaintedItem_fillColor".}
proc fcQQuickPaintedItem_setFillColor(self: pointer, fillColor: pointer): void {.importc: "QQuickPaintedItem_setFillColor".}
proc fcQQuickPaintedItem_renderTarget(self: pointer, ): cint {.importc: "QQuickPaintedItem_renderTarget".}
proc fcQQuickPaintedItem_setRenderTarget(self: pointer, target: cint): void {.importc: "QQuickPaintedItem_setRenderTarget".}
proc fcQQuickPaintedItem_paint(self: pointer, painter: pointer): void {.importc: "QQuickPaintedItem_paint".}
proc fcQQuickPaintedItem_isTextureProvider(self: pointer, ): bool {.importc: "QQuickPaintedItem_isTextureProvider".}
proc fcQQuickPaintedItem_textureProvider(self: pointer, ): pointer {.importc: "QQuickPaintedItem_textureProvider".}
proc fcQQuickPaintedItem_fillColorChanged(self: pointer, ): void {.importc: "QQuickPaintedItem_fillColorChanged".}
proc fcQQuickPaintedItem_connect_fillColorChanged(self: pointer, slot: int) {.importc: "QQuickPaintedItem_connect_fillColorChanged".}
proc fcQQuickPaintedItem_contentsSizeChanged(self: pointer, ): void {.importc: "QQuickPaintedItem_contentsSizeChanged".}
proc fcQQuickPaintedItem_connect_contentsSizeChanged(self: pointer, slot: int) {.importc: "QQuickPaintedItem_connect_contentsSizeChanged".}
proc fcQQuickPaintedItem_contentsScaleChanged(self: pointer, ): void {.importc: "QQuickPaintedItem_contentsScaleChanged".}
proc fcQQuickPaintedItem_connect_contentsScaleChanged(self: pointer, slot: int) {.importc: "QQuickPaintedItem_connect_contentsScaleChanged".}
proc fcQQuickPaintedItem_renderTargetChanged(self: pointer, ): void {.importc: "QQuickPaintedItem_renderTargetChanged".}
proc fcQQuickPaintedItem_connect_renderTargetChanged(self: pointer, slot: int) {.importc: "QQuickPaintedItem_connect_renderTargetChanged".}
proc fcQQuickPaintedItem_textureSizeChanged(self: pointer, ): void {.importc: "QQuickPaintedItem_textureSizeChanged".}
proc fcQQuickPaintedItem_connect_textureSizeChanged(self: pointer, slot: int) {.importc: "QQuickPaintedItem_connect_textureSizeChanged".}
proc fcQQuickPaintedItem_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickPaintedItem_tr2".}
proc fcQQuickPaintedItem_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickPaintedItem_tr3".}
proc fcQQuickPaintedItem_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickPaintedItem_trUtf82".}
proc fcQQuickPaintedItem_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickPaintedItem_trUtf83".}
proc fcQQuickPaintedItem_update1(self: pointer, rect: pointer): void {.importc: "QQuickPaintedItem_update1".}
proc fcQQuickPaintedItem_setPerformanceHint2(self: pointer, hint: cint, enabled: bool): void {.importc: "QQuickPaintedItem_setPerformanceHint2".}
type cQQuickPaintedItemVTable = object
  destructor*: proc(vtbl: ptr cQQuickPaintedItemVTable, self: ptr cQQuickPaintedItem) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  paint*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  isTextureProvider*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  textureProvider*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  updatePaintNode*: proc(vtbl, self: pointer, param1: pointer, param2: pointer): pointer {.cdecl, raises: [], gcsafe.}
  releaseResources*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  itemChange*: proc(vtbl, self: pointer, param1: cint, param2: pointer): void {.cdecl, raises: [], gcsafe.}
  boundingRect*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  clipRect*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  contains*: proc(vtbl, self: pointer, point: pointer): bool {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  classBegin*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  componentComplete*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseUngrabEvent*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  touchUngrabEvent*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  touchEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hoverLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  childMouseEventFilter*: proc(vtbl, self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  windowDeactivateEvent*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  geometryChanged*: proc(vtbl, self: pointer, newGeometry: pointer, oldGeometry: pointer): void {.cdecl, raises: [], gcsafe.}
  updatePolish*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQuickPaintedItem_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QQuickPaintedItem_virtualbase_metaObject".}
proc fcQQuickPaintedItem_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickPaintedItem_virtualbase_metacast".}
proc fcQQuickPaintedItem_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickPaintedItem_virtualbase_metacall".}
proc fcQQuickPaintedItem_virtualbase_isTextureProvider(self: pointer, ): bool {.importc: "QQuickPaintedItem_virtualbase_isTextureProvider".}
proc fcQQuickPaintedItem_virtualbase_textureProvider(self: pointer, ): pointer {.importc: "QQuickPaintedItem_virtualbase_textureProvider".}
proc fcQQuickPaintedItem_virtualbase_updatePaintNode(self: pointer, param1: pointer, param2: pointer): pointer {.importc: "QQuickPaintedItem_virtualbase_updatePaintNode".}
proc fcQQuickPaintedItem_virtualbase_releaseResources(self: pointer, ): void {.importc: "QQuickPaintedItem_virtualbase_releaseResources".}
proc fcQQuickPaintedItem_virtualbase_itemChange(self: pointer, param1: cint, param2: pointer): void {.importc: "QQuickPaintedItem_virtualbase_itemChange".}
proc fcQQuickPaintedItem_virtualbase_boundingRect(self: pointer, ): pointer {.importc: "QQuickPaintedItem_virtualbase_boundingRect".}
proc fcQQuickPaintedItem_virtualbase_clipRect(self: pointer, ): pointer {.importc: "QQuickPaintedItem_virtualbase_clipRect".}
proc fcQQuickPaintedItem_virtualbase_contains(self: pointer, point: pointer): bool {.importc: "QQuickPaintedItem_virtualbase_contains".}
proc fcQQuickPaintedItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QQuickPaintedItem_virtualbase_inputMethodQuery".}
proc fcQQuickPaintedItem_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QQuickPaintedItem_virtualbase_event".}
proc fcQQuickPaintedItem_virtualbase_classBegin(self: pointer, ): void {.importc: "QQuickPaintedItem_virtualbase_classBegin".}
proc fcQQuickPaintedItem_virtualbase_componentComplete(self: pointer, ): void {.importc: "QQuickPaintedItem_virtualbase_componentComplete".}
proc fcQQuickPaintedItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_keyPressEvent".}
proc fcQQuickPaintedItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_keyReleaseEvent".}
proc fcQQuickPaintedItem_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QQuickPaintedItem_virtualbase_inputMethodEvent".}
proc fcQQuickPaintedItem_virtualbase_focusInEvent(self: pointer, param1: pointer): void {.importc: "QQuickPaintedItem_virtualbase_focusInEvent".}
proc fcQQuickPaintedItem_virtualbase_focusOutEvent(self: pointer, param1: pointer): void {.importc: "QQuickPaintedItem_virtualbase_focusOutEvent".}
proc fcQQuickPaintedItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_mousePressEvent".}
proc fcQQuickPaintedItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_mouseMoveEvent".}
proc fcQQuickPaintedItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_mouseReleaseEvent".}
proc fcQQuickPaintedItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_mouseDoubleClickEvent".}
proc fcQQuickPaintedItem_virtualbase_mouseUngrabEvent(self: pointer, ): void {.importc: "QQuickPaintedItem_virtualbase_mouseUngrabEvent".}
proc fcQQuickPaintedItem_virtualbase_touchUngrabEvent(self: pointer, ): void {.importc: "QQuickPaintedItem_virtualbase_touchUngrabEvent".}
proc fcQQuickPaintedItem_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_wheelEvent".}
proc fcQQuickPaintedItem_virtualbase_touchEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_touchEvent".}
proc fcQQuickPaintedItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_hoverEnterEvent".}
proc fcQQuickPaintedItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_hoverMoveEvent".}
proc fcQQuickPaintedItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_hoverLeaveEvent".}
proc fcQQuickPaintedItem_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void {.importc: "QQuickPaintedItem_virtualbase_dragEnterEvent".}
proc fcQQuickPaintedItem_virtualbase_dragMoveEvent(self: pointer, param1: pointer): void {.importc: "QQuickPaintedItem_virtualbase_dragMoveEvent".}
proc fcQQuickPaintedItem_virtualbase_dragLeaveEvent(self: pointer, param1: pointer): void {.importc: "QQuickPaintedItem_virtualbase_dragLeaveEvent".}
proc fcQQuickPaintedItem_virtualbase_dropEvent(self: pointer, param1: pointer): void {.importc: "QQuickPaintedItem_virtualbase_dropEvent".}
proc fcQQuickPaintedItem_virtualbase_childMouseEventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QQuickPaintedItem_virtualbase_childMouseEventFilter".}
proc fcQQuickPaintedItem_virtualbase_windowDeactivateEvent(self: pointer, ): void {.importc: "QQuickPaintedItem_virtualbase_windowDeactivateEvent".}
proc fcQQuickPaintedItem_virtualbase_geometryChanged(self: pointer, newGeometry: pointer, oldGeometry: pointer): void {.importc: "QQuickPaintedItem_virtualbase_geometryChanged".}
proc fcQQuickPaintedItem_virtualbase_updatePolish(self: pointer, ): void {.importc: "QQuickPaintedItem_virtualbase_updatePolish".}
proc fcQQuickPaintedItem_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQuickPaintedItem_virtualbase_eventFilter".}
proc fcQQuickPaintedItem_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_timerEvent".}
proc fcQQuickPaintedItem_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_childEvent".}
proc fcQQuickPaintedItem_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQuickPaintedItem_virtualbase_customEvent".}
proc fcQQuickPaintedItem_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQuickPaintedItem_virtualbase_connectNotify".}
proc fcQQuickPaintedItem_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQuickPaintedItem_virtualbase_disconnectNotify".}
proc fcQQuickPaintedItem_new(vtbl: pointer, ): ptr cQQuickPaintedItem {.importc: "QQuickPaintedItem_new".}
proc fcQQuickPaintedItem_new2(vtbl: pointer, parent: pointer): ptr cQQuickPaintedItem {.importc: "QQuickPaintedItem_new2".}
proc fcQQuickPaintedItem_staticMetaObject(): pointer {.importc: "QQuickPaintedItem_staticMetaObject".}
proc fcQQuickPaintedItem_delete(self: pointer) {.importc: "QQuickPaintedItem_delete".}

proc metaObject*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickPaintedItem_metaObject(self.h))

proc metacast*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: cstring): pointer =
  fcQQuickPaintedItem_metacast(self.h, param1)

proc metacall*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickPaintedItem_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qquickpainteditem_types.QQuickPaintedItem, s: cstring): string =
  let v_ms = fcQQuickPaintedItem_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickpainteditem_types.QQuickPaintedItem, s: cstring): string =
  let v_ms = fcQQuickPaintedItem_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc update*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_update(self.h)

proc opaquePainting*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): bool =
  fcQQuickPaintedItem_opaquePainting(self.h)

proc setOpaquePainting*(self: gen_qquickpainteditem_types.QQuickPaintedItem, opaque: bool): void =
  fcQQuickPaintedItem_setOpaquePainting(self.h, opaque)

proc antialiasing*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): bool =
  fcQQuickPaintedItem_antialiasing(self.h)

proc setAntialiasing*(self: gen_qquickpainteditem_types.QQuickPaintedItem, enable: bool): void =
  fcQQuickPaintedItem_setAntialiasing(self.h, enable)

proc mipmap*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): bool =
  fcQQuickPaintedItem_mipmap(self.h)

proc setMipmap*(self: gen_qquickpainteditem_types.QQuickPaintedItem, enable: bool): void =
  fcQQuickPaintedItem_setMipmap(self.h, enable)

proc performanceHints*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): cint =
  cint(fcQQuickPaintedItem_performanceHints(self.h))

proc setPerformanceHint*(self: gen_qquickpainteditem_types.QQuickPaintedItem, hint: cint): void =
  fcQQuickPaintedItem_setPerformanceHint(self.h, cint(hint))

proc setPerformanceHints*(self: gen_qquickpainteditem_types.QQuickPaintedItem, hints: cint): void =
  fcQQuickPaintedItem_setPerformanceHints(self.h, cint(hints))

proc contentsBoundingRect*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickPaintedItem_contentsBoundingRect(self.h))

proc contentsSize*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQQuickPaintedItem_contentsSize(self.h))

proc setContentsSize*(self: gen_qquickpainteditem_types.QQuickPaintedItem, contentsSize: gen_qsize_types.QSize): void =
  fcQQuickPaintedItem_setContentsSize(self.h, contentsSize.h)

proc resetContentsSize*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_resetContentsSize(self.h)

proc contentsScale*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): float64 =
  fcQQuickPaintedItem_contentsScale(self.h)

proc setContentsScale*(self: gen_qquickpainteditem_types.QQuickPaintedItem, contentsScale: float64): void =
  fcQQuickPaintedItem_setContentsScale(self.h, contentsScale)

proc textureSize*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQQuickPaintedItem_textureSize(self.h))

proc setTextureSize*(self: gen_qquickpainteditem_types.QQuickPaintedItem, size: gen_qsize_types.QSize): void =
  fcQQuickPaintedItem_setTextureSize(self.h, size.h)

proc fillColor*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQQuickPaintedItem_fillColor(self.h))

proc setFillColor*(self: gen_qquickpainteditem_types.QQuickPaintedItem, fillColor: gen_qcolor_types.QColor): void =
  fcQQuickPaintedItem_setFillColor(self.h, fillColor.h)

proc renderTarget*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): cint =
  cint(fcQQuickPaintedItem_renderTarget(self.h))

proc setRenderTarget*(self: gen_qquickpainteditem_types.QQuickPaintedItem, target: cint): void =
  fcQQuickPaintedItem_setRenderTarget(self.h, cint(target))

proc paint*(self: gen_qquickpainteditem_types.QQuickPaintedItem, painter: gen_qpainter_types.QPainter): void =
  fcQQuickPaintedItem_paint(self.h, painter.h)

proc isTextureProvider*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): bool =
  fcQQuickPaintedItem_isTextureProvider(self.h)

proc textureProvider*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): gen_qsgtextureprovider_types.QSGTextureProvider =
  gen_qsgtextureprovider_types.QSGTextureProvider(h: fcQQuickPaintedItem_textureProvider(self.h))

proc fillColorChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_fillColorChanged(self.h)

type QQuickPaintedItemfillColorChangedSlot* = proc()
proc miqt_exec_callback_cQQuickPaintedItem_fillColorChanged(slot: int) {.exportc: "miqt_exec_callback_QQuickPaintedItem_fillColorChanged".} =
  let nimfunc = cast[ptr QQuickPaintedItemfillColorChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onfillColorChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemfillColorChangedSlot) =
  var tmp = new QQuickPaintedItemfillColorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_connect_fillColorChanged(self.h, cast[int](addr tmp[]))

proc contentsSizeChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_contentsSizeChanged(self.h)

type QQuickPaintedItemcontentsSizeChangedSlot* = proc()
proc miqt_exec_callback_cQQuickPaintedItem_contentsSizeChanged(slot: int) {.exportc: "miqt_exec_callback_QQuickPaintedItem_contentsSizeChanged".} =
  let nimfunc = cast[ptr QQuickPaintedItemcontentsSizeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc oncontentsSizeChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemcontentsSizeChangedSlot) =
  var tmp = new QQuickPaintedItemcontentsSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_connect_contentsSizeChanged(self.h, cast[int](addr tmp[]))

proc contentsScaleChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_contentsScaleChanged(self.h)

type QQuickPaintedItemcontentsScaleChangedSlot* = proc()
proc miqt_exec_callback_cQQuickPaintedItem_contentsScaleChanged(slot: int) {.exportc: "miqt_exec_callback_QQuickPaintedItem_contentsScaleChanged".} =
  let nimfunc = cast[ptr QQuickPaintedItemcontentsScaleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc oncontentsScaleChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemcontentsScaleChangedSlot) =
  var tmp = new QQuickPaintedItemcontentsScaleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_connect_contentsScaleChanged(self.h, cast[int](addr tmp[]))

proc renderTargetChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_renderTargetChanged(self.h)

type QQuickPaintedItemrenderTargetChangedSlot* = proc()
proc miqt_exec_callback_cQQuickPaintedItem_renderTargetChanged(slot: int) {.exportc: "miqt_exec_callback_QQuickPaintedItem_renderTargetChanged".} =
  let nimfunc = cast[ptr QQuickPaintedItemrenderTargetChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onrenderTargetChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemrenderTargetChangedSlot) =
  var tmp = new QQuickPaintedItemrenderTargetChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_connect_renderTargetChanged(self.h, cast[int](addr tmp[]))

proc textureSizeChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_textureSizeChanged(self.h)

type QQuickPaintedItemtextureSizeChangedSlot* = proc()
proc miqt_exec_callback_cQQuickPaintedItem_textureSizeChanged(slot: int) {.exportc: "miqt_exec_callback_QQuickPaintedItem_textureSizeChanged".} =
  let nimfunc = cast[ptr QQuickPaintedItemtextureSizeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc ontextureSizeChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, slot: QQuickPaintedItemtextureSizeChangedSlot) =
  var tmp = new QQuickPaintedItemtextureSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_connect_textureSizeChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qquickpainteditem_types.QQuickPaintedItem, s: cstring, c: cstring): string =
  let v_ms = fcQQuickPaintedItem_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qquickpainteditem_types.QQuickPaintedItem, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickPaintedItem_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickpainteditem_types.QQuickPaintedItem, s: cstring, c: cstring): string =
  let v_ms = fcQQuickPaintedItem_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickpainteditem_types.QQuickPaintedItem, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickPaintedItem_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc update*(self: gen_qquickpainteditem_types.QQuickPaintedItem, rect: gen_qrect_types.QRect): void =
  fcQQuickPaintedItem_update1(self.h, rect.h)

proc setPerformanceHint*(self: gen_qquickpainteditem_types.QQuickPaintedItem, hint: cint, enabled: bool): void =
  fcQQuickPaintedItem_setPerformanceHint2(self.h, cint(hint), enabled)

type QQuickPaintedItemmetaObjectProc* = proc(self: QQuickPaintedItem): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQuickPaintedItemmetacastProc* = proc(self: QQuickPaintedItem, param1: cstring): pointer {.raises: [], gcsafe.}
type QQuickPaintedItemmetacallProc* = proc(self: QQuickPaintedItem, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQuickPaintedItempaintProc* = proc(self: QQuickPaintedItem, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QQuickPaintedItemisTextureProviderProc* = proc(self: QQuickPaintedItem): bool {.raises: [], gcsafe.}
type QQuickPaintedItemtextureProviderProc* = proc(self: QQuickPaintedItem): gen_qsgtextureprovider_types.QSGTextureProvider {.raises: [], gcsafe.}
type QQuickPaintedItemupdatePaintNodeProc* = proc(self: QQuickPaintedItem, param1: gen_qsgnode_types.QSGNode, param2: gen_qquickitem_types.QQuickItemUpdatePaintNodeData): gen_qsgnode_types.QSGNode {.raises: [], gcsafe.}
type QQuickPaintedItemreleaseResourcesProc* = proc(self: QQuickPaintedItem): void {.raises: [], gcsafe.}
type QQuickPaintedItemitemChangeProc* = proc(self: QQuickPaintedItem, param1: cint, param2: gen_qquickitem_types.QQuickItemItemChangeData): void {.raises: [], gcsafe.}
type QQuickPaintedItemboundingRectProc* = proc(self: QQuickPaintedItem): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QQuickPaintedItemclipRectProc* = proc(self: QQuickPaintedItem): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QQuickPaintedItemcontainsProc* = proc(self: QQuickPaintedItem, point: gen_qpoint_types.QPointF): bool {.raises: [], gcsafe.}
type QQuickPaintedIteminputMethodQueryProc* = proc(self: QQuickPaintedItem, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QQuickPaintedItemeventProc* = proc(self: QQuickPaintedItem, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickPaintedItemclassBeginProc* = proc(self: QQuickPaintedItem): void {.raises: [], gcsafe.}
type QQuickPaintedItemcomponentCompleteProc* = proc(self: QQuickPaintedItem): void {.raises: [], gcsafe.}
type QQuickPaintedItemkeyPressEventProc* = proc(self: QQuickPaintedItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemkeyReleaseEventProc* = proc(self: QQuickPaintedItem, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QQuickPaintedIteminputMethodEventProc* = proc(self: QQuickPaintedItem, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemfocusInEventProc* = proc(self: QQuickPaintedItem, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemfocusOutEventProc* = proc(self: QQuickPaintedItem, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemmousePressEventProc* = proc(self: QQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemmouseMoveEventProc* = proc(self: QQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemmouseReleaseEventProc* = proc(self: QQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemmouseDoubleClickEventProc* = proc(self: QQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemmouseUngrabEventProc* = proc(self: QQuickPaintedItem): void {.raises: [], gcsafe.}
type QQuickPaintedItemtouchUngrabEventProc* = proc(self: QQuickPaintedItem): void {.raises: [], gcsafe.}
type QQuickPaintedItemwheelEventProc* = proc(self: QQuickPaintedItem, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemtouchEventProc* = proc(self: QQuickPaintedItem, event: gen_qevent_types.QTouchEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemhoverEnterEventProc* = proc(self: QQuickPaintedItem, event: gen_qevent_types.QHoverEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemhoverMoveEventProc* = proc(self: QQuickPaintedItem, event: gen_qevent_types.QHoverEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemhoverLeaveEventProc* = proc(self: QQuickPaintedItem, event: gen_qevent_types.QHoverEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemdragEnterEventProc* = proc(self: QQuickPaintedItem, param1: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemdragMoveEventProc* = proc(self: QQuickPaintedItem, param1: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemdragLeaveEventProc* = proc(self: QQuickPaintedItem, param1: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemdropEventProc* = proc(self: QQuickPaintedItem, param1: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemchildMouseEventFilterProc* = proc(self: QQuickPaintedItem, param1: gen_qquickitem_types.QQuickItem, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickPaintedItemwindowDeactivateEventProc* = proc(self: QQuickPaintedItem): void {.raises: [], gcsafe.}
type QQuickPaintedItemgeometryChangedProc* = proc(self: QQuickPaintedItem, newGeometry: gen_qrect_types.QRectF, oldGeometry: gen_qrect_types.QRectF): void {.raises: [], gcsafe.}
type QQuickPaintedItemupdatePolishProc* = proc(self: QQuickPaintedItem): void {.raises: [], gcsafe.}
type QQuickPaintedItemeventFilterProc* = proc(self: QQuickPaintedItem, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickPaintedItemtimerEventProc* = proc(self: QQuickPaintedItem, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemchildEventProc* = proc(self: QQuickPaintedItem, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemcustomEventProc* = proc(self: QQuickPaintedItem, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQuickPaintedItemconnectNotifyProc* = proc(self: QQuickPaintedItem, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickPaintedItemdisconnectNotifyProc* = proc(self: QQuickPaintedItem, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickPaintedItemVTable* = object
  vtbl: cQQuickPaintedItemVTable
  metaObject*: QQuickPaintedItemmetaObjectProc
  metacast*: QQuickPaintedItemmetacastProc
  metacall*: QQuickPaintedItemmetacallProc
  paint*: QQuickPaintedItempaintProc
  isTextureProvider*: QQuickPaintedItemisTextureProviderProc
  textureProvider*: QQuickPaintedItemtextureProviderProc
  updatePaintNode*: QQuickPaintedItemupdatePaintNodeProc
  releaseResources*: QQuickPaintedItemreleaseResourcesProc
  itemChange*: QQuickPaintedItemitemChangeProc
  boundingRect*: QQuickPaintedItemboundingRectProc
  clipRect*: QQuickPaintedItemclipRectProc
  contains*: QQuickPaintedItemcontainsProc
  inputMethodQuery*: QQuickPaintedIteminputMethodQueryProc
  event*: QQuickPaintedItemeventProc
  classBegin*: QQuickPaintedItemclassBeginProc
  componentComplete*: QQuickPaintedItemcomponentCompleteProc
  keyPressEvent*: QQuickPaintedItemkeyPressEventProc
  keyReleaseEvent*: QQuickPaintedItemkeyReleaseEventProc
  inputMethodEvent*: QQuickPaintedIteminputMethodEventProc
  focusInEvent*: QQuickPaintedItemfocusInEventProc
  focusOutEvent*: QQuickPaintedItemfocusOutEventProc
  mousePressEvent*: QQuickPaintedItemmousePressEventProc
  mouseMoveEvent*: QQuickPaintedItemmouseMoveEventProc
  mouseReleaseEvent*: QQuickPaintedItemmouseReleaseEventProc
  mouseDoubleClickEvent*: QQuickPaintedItemmouseDoubleClickEventProc
  mouseUngrabEvent*: QQuickPaintedItemmouseUngrabEventProc
  touchUngrabEvent*: QQuickPaintedItemtouchUngrabEventProc
  wheelEvent*: QQuickPaintedItemwheelEventProc
  touchEvent*: QQuickPaintedItemtouchEventProc
  hoverEnterEvent*: QQuickPaintedItemhoverEnterEventProc
  hoverMoveEvent*: QQuickPaintedItemhoverMoveEventProc
  hoverLeaveEvent*: QQuickPaintedItemhoverLeaveEventProc
  dragEnterEvent*: QQuickPaintedItemdragEnterEventProc
  dragMoveEvent*: QQuickPaintedItemdragMoveEventProc
  dragLeaveEvent*: QQuickPaintedItemdragLeaveEventProc
  dropEvent*: QQuickPaintedItemdropEventProc
  childMouseEventFilter*: QQuickPaintedItemchildMouseEventFilterProc
  windowDeactivateEvent*: QQuickPaintedItemwindowDeactivateEventProc
  geometryChanged*: QQuickPaintedItemgeometryChangedProc
  updatePolish*: QQuickPaintedItemupdatePolishProc
  eventFilter*: QQuickPaintedItemeventFilterProc
  timerEvent*: QQuickPaintedItemtimerEventProc
  childEvent*: QQuickPaintedItemchildEventProc
  customEvent*: QQuickPaintedItemcustomEventProc
  connectNotify*: QQuickPaintedItemconnectNotifyProc
  disconnectNotify*: QQuickPaintedItemdisconnectNotifyProc
proc QQuickPaintedItemmetaObject*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickPaintedItem_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQQuickPaintedItem_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QQuickPaintedItemmetacast*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: cstring): pointer =
  fcQQuickPaintedItem_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQQuickPaintedItem_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQuickPaintedItemmetacall*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickPaintedItem_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQQuickPaintedItem_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQQuickPaintedItem_paint(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].paint(self, slotval1)

proc QQuickPaintedItemisTextureProvider*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): bool =
  fcQQuickPaintedItem_virtualbase_isTextureProvider(self.h)

proc miqt_exec_callback_cQQuickPaintedItem_isTextureProvider(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let virtualReturn = vtbl[].isTextureProvider(self)
  virtualReturn

proc QQuickPaintedItemtextureProvider*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): gen_qsgtextureprovider_types.QSGTextureProvider =
  gen_qsgtextureprovider_types.QSGTextureProvider(h: fcQQuickPaintedItem_virtualbase_textureProvider(self.h))

proc miqt_exec_callback_cQQuickPaintedItem_textureProvider(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let virtualReturn = vtbl[].textureProvider(self)
  virtualReturn.h

proc QQuickPaintedItemupdatePaintNode*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qsgnode_types.QSGNode, param2: gen_qquickitem_types.QQuickItemUpdatePaintNodeData): gen_qsgnode_types.QSGNode =
  gen_qsgnode_types.QSGNode(h: fcQQuickPaintedItem_virtualbase_updatePaintNode(self.h, param1.h, param2.h))

proc miqt_exec_callback_cQQuickPaintedItem_updatePaintNode(vtbl: pointer, self: pointer, param1: pointer, param2: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qsgnode_types.QSGNode(h: param1)
  let slotval2 = gen_qquickitem_types.QQuickItemUpdatePaintNodeData(h: param2)
  let virtualReturn = vtbl[].updatePaintNode(self, slotval1, slotval2)
  virtualReturn.h

proc QQuickPaintedItemreleaseResources*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_virtualbase_releaseResources(self.h)

proc miqt_exec_callback_cQQuickPaintedItem_releaseResources(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  vtbl[].releaseResources(self)

proc QQuickPaintedItemitemChange*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: cint, param2: gen_qquickitem_types.QQuickItemItemChangeData): void =
  fcQQuickPaintedItem_virtualbase_itemChange(self.h, cint(param1), param2.h)

proc miqt_exec_callback_cQQuickPaintedItem_itemChange(vtbl: pointer, self: pointer, param1: cint, param2: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = cint(param1)
  let slotval2 = gen_qquickitem_types.QQuickItemItemChangeData(h: param2)
  vtbl[].itemChange(self, slotval1, slotval2)

proc QQuickPaintedItemboundingRect*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickPaintedItem_virtualbase_boundingRect(self.h))

proc miqt_exec_callback_cQQuickPaintedItem_boundingRect(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let virtualReturn = vtbl[].boundingRect(self)
  virtualReturn.h

proc QQuickPaintedItemclipRect*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQQuickPaintedItem_virtualbase_clipRect(self.h))

proc miqt_exec_callback_cQQuickPaintedItem_clipRect(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let virtualReturn = vtbl[].clipRect(self)
  virtualReturn.h

proc QQuickPaintedItemcontains*(self: gen_qquickpainteditem_types.QQuickPaintedItem, point: gen_qpoint_types.QPointF): bool =
  fcQQuickPaintedItem_virtualbase_contains(self.h, point.h)

proc miqt_exec_callback_cQQuickPaintedItem_contains(vtbl: pointer, self: pointer, point: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: point)
  let virtualReturn = vtbl[].contains(self, slotval1)
  virtualReturn

proc QQuickPaintedIteminputMethodQuery*(self: gen_qquickpainteditem_types.QQuickPaintedItem, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQQuickPaintedItem_virtualbase_inputMethodQuery(self.h, cint(query)))

proc miqt_exec_callback_cQQuickPaintedItem_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = cint(query)
  let virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QQuickPaintedItemevent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qcoreevent_types.QEvent): bool =
  fcQQuickPaintedItem_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQQuickPaintedItem_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQuickPaintedItemclassBegin*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_virtualbase_classBegin(self.h)

proc miqt_exec_callback_cQQuickPaintedItem_classBegin(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  vtbl[].classBegin(self)

proc QQuickPaintedItemcomponentComplete*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_virtualbase_componentComplete(self.h)

proc miqt_exec_callback_cQQuickPaintedItem_componentComplete(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  vtbl[].componentComplete(self)

proc QQuickPaintedItemkeyPressEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QKeyEvent): void =
  fcQQuickPaintedItem_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QQuickPaintedItemkeyReleaseEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QKeyEvent): void =
  fcQQuickPaintedItem_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QQuickPaintedIteminputMethodEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQQuickPaintedItem_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickPaintedItem_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QQuickPaintedItemfocusInEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qevent_types.QFocusEvent): void =
  fcQQuickPaintedItem_virtualbase_focusInEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickPaintedItem_focusInEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)
  vtbl[].focusInEvent(self, slotval1)

proc QQuickPaintedItemfocusOutEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qevent_types.QFocusEvent): void =
  fcQQuickPaintedItem_virtualbase_focusOutEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickPaintedItem_focusOutEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)
  vtbl[].focusOutEvent(self, slotval1)

proc QQuickPaintedItemmousePressEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void =
  fcQQuickPaintedItem_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QQuickPaintedItemmouseMoveEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void =
  fcQQuickPaintedItem_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QQuickPaintedItemmouseReleaseEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void =
  fcQQuickPaintedItem_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QQuickPaintedItemmouseDoubleClickEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QMouseEvent): void =
  fcQQuickPaintedItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QQuickPaintedItemmouseUngrabEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_virtualbase_mouseUngrabEvent(self.h)

proc miqt_exec_callback_cQQuickPaintedItem_mouseUngrabEvent(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  vtbl[].mouseUngrabEvent(self)

proc QQuickPaintedItemtouchUngrabEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_virtualbase_touchUngrabEvent(self.h)

proc miqt_exec_callback_cQQuickPaintedItem_touchUngrabEvent(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  vtbl[].touchUngrabEvent(self)

proc QQuickPaintedItemwheelEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QWheelEvent): void =
  fcQQuickPaintedItem_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QQuickPaintedItemtouchEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QTouchEvent): void =
  fcQQuickPaintedItem_virtualbase_touchEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_touchEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QTouchEvent(h: event)
  vtbl[].touchEvent(self, slotval1)

proc QQuickPaintedItemhoverEnterEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QHoverEvent): void =
  fcQQuickPaintedItem_virtualbase_hoverEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_hoverEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QHoverEvent(h: event)
  vtbl[].hoverEnterEvent(self, slotval1)

proc QQuickPaintedItemhoverMoveEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QHoverEvent): void =
  fcQQuickPaintedItem_virtualbase_hoverMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_hoverMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QHoverEvent(h: event)
  vtbl[].hoverMoveEvent(self, slotval1)

proc QQuickPaintedItemhoverLeaveEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qevent_types.QHoverEvent): void =
  fcQQuickPaintedItem_virtualbase_hoverLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_hoverLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QHoverEvent(h: event)
  vtbl[].hoverLeaveEvent(self, slotval1)

proc QQuickPaintedItemdragEnterEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qevent_types.QDragEnterEvent): void =
  fcQQuickPaintedItem_virtualbase_dragEnterEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickPaintedItem_dragEnterEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1)
  vtbl[].dragEnterEvent(self, slotval1)

proc QQuickPaintedItemdragMoveEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qevent_types.QDragMoveEvent): void =
  fcQQuickPaintedItem_virtualbase_dragMoveEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickPaintedItem_dragMoveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1)
  vtbl[].dragMoveEvent(self, slotval1)

proc QQuickPaintedItemdragLeaveEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qevent_types.QDragLeaveEvent): void =
  fcQQuickPaintedItem_virtualbase_dragLeaveEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickPaintedItem_dragLeaveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QQuickPaintedItemdropEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qevent_types.QDropEvent): void =
  fcQQuickPaintedItem_virtualbase_dropEvent(self.h, param1.h)

proc miqt_exec_callback_cQQuickPaintedItem_dropEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: param1)
  vtbl[].dropEvent(self, slotval1)

proc QQuickPaintedItemchildMouseEventFilter*(self: gen_qquickpainteditem_types.QQuickPaintedItem, param1: gen_qquickitem_types.QQuickItem, param2: gen_qcoreevent_types.QEvent): bool =
  fcQQuickPaintedItem_virtualbase_childMouseEventFilter(self.h, param1.h, param2.h)

proc miqt_exec_callback_cQQuickPaintedItem_childMouseEventFilter(vtbl: pointer, self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qquickitem_types.QQuickItem(h: param1)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)
  let virtualReturn = vtbl[].childMouseEventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQuickPaintedItemwindowDeactivateEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_virtualbase_windowDeactivateEvent(self.h)

proc miqt_exec_callback_cQQuickPaintedItem_windowDeactivateEvent(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  vtbl[].windowDeactivateEvent(self)

proc QQuickPaintedItemgeometryChanged*(self: gen_qquickpainteditem_types.QQuickPaintedItem, newGeometry: gen_qrect_types.QRectF, oldGeometry: gen_qrect_types.QRectF): void =
  fcQQuickPaintedItem_virtualbase_geometryChanged(self.h, newGeometry.h, oldGeometry.h)

proc miqt_exec_callback_cQQuickPaintedItem_geometryChanged(vtbl: pointer, self: pointer, newGeometry: pointer, oldGeometry: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: newGeometry)
  let slotval2 = gen_qrect_types.QRectF(h: oldGeometry)
  vtbl[].geometryChanged(self, slotval1, slotval2)

proc QQuickPaintedItemupdatePolish*(self: gen_qquickpainteditem_types.QQuickPaintedItem, ): void =
  fcQQuickPaintedItem_virtualbase_updatePolish(self.h)

proc miqt_exec_callback_cQQuickPaintedItem_updatePolish(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  vtbl[].updatePolish(self)

proc QQuickPaintedItemeventFilter*(self: gen_qquickpainteditem_types.QQuickPaintedItem, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickPaintedItem_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQuickPaintedItemtimerEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQuickPaintedItem_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QQuickPaintedItemchildEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQuickPaintedItem_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QQuickPaintedItemcustomEvent*(self: gen_qquickpainteditem_types.QQuickPaintedItem, event: gen_qcoreevent_types.QEvent): void =
  fcQQuickPaintedItem_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickPaintedItem_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QQuickPaintedItemconnectNotify*(self: gen_qquickpainteditem_types.QQuickPaintedItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickPaintedItem_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQuickPaintedItem_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QQuickPaintedItemdisconnectNotify*(self: gen_qquickpainteditem_types.QQuickPaintedItem, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickPaintedItem_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQuickPaintedItem_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickPaintedItemVTable](vtbl)
  let self = QQuickPaintedItem(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qquickpainteditem_types.QQuickPaintedItem,
    vtbl: ref QQuickPaintedItemVTable = nil): gen_qquickpainteditem_types.QQuickPaintedItem =
  let vtbl = if vtbl == nil: new QQuickPaintedItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQuickPaintedItemVTable, _: ptr cQQuickPaintedItem) {.cdecl.} =
    let vtbl = cast[ref QQuickPaintedItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQuickPaintedItem_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQuickPaintedItem_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQuickPaintedItem_metacall
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQQuickPaintedItem_paint
  if not isNil(vtbl.isTextureProvider):
    vtbl[].vtbl.isTextureProvider = miqt_exec_callback_cQQuickPaintedItem_isTextureProvider
  if not isNil(vtbl.textureProvider):
    vtbl[].vtbl.textureProvider = miqt_exec_callback_cQQuickPaintedItem_textureProvider
  if not isNil(vtbl.updatePaintNode):
    vtbl[].vtbl.updatePaintNode = miqt_exec_callback_cQQuickPaintedItem_updatePaintNode
  if not isNil(vtbl.releaseResources):
    vtbl[].vtbl.releaseResources = miqt_exec_callback_cQQuickPaintedItem_releaseResources
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQQuickPaintedItem_itemChange
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQQuickPaintedItem_boundingRect
  if not isNil(vtbl.clipRect):
    vtbl[].vtbl.clipRect = miqt_exec_callback_cQQuickPaintedItem_clipRect
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQQuickPaintedItem_contains
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQQuickPaintedItem_inputMethodQuery
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQuickPaintedItem_event
  if not isNil(vtbl.classBegin):
    vtbl[].vtbl.classBegin = miqt_exec_callback_cQQuickPaintedItem_classBegin
  if not isNil(vtbl.componentComplete):
    vtbl[].vtbl.componentComplete = miqt_exec_callback_cQQuickPaintedItem_componentComplete
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQQuickPaintedItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQQuickPaintedItem_keyReleaseEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQQuickPaintedItem_inputMethodEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQQuickPaintedItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQQuickPaintedItem_focusOutEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQQuickPaintedItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQQuickPaintedItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQQuickPaintedItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQQuickPaintedItem_mouseDoubleClickEvent
  if not isNil(vtbl.mouseUngrabEvent):
    vtbl[].vtbl.mouseUngrabEvent = miqt_exec_callback_cQQuickPaintedItem_mouseUngrabEvent
  if not isNil(vtbl.touchUngrabEvent):
    vtbl[].vtbl.touchUngrabEvent = miqt_exec_callback_cQQuickPaintedItem_touchUngrabEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQQuickPaintedItem_wheelEvent
  if not isNil(vtbl.touchEvent):
    vtbl[].vtbl.touchEvent = miqt_exec_callback_cQQuickPaintedItem_touchEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQQuickPaintedItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQQuickPaintedItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQQuickPaintedItem_hoverLeaveEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQQuickPaintedItem_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQQuickPaintedItem_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQQuickPaintedItem_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQQuickPaintedItem_dropEvent
  if not isNil(vtbl.childMouseEventFilter):
    vtbl[].vtbl.childMouseEventFilter = miqt_exec_callback_cQQuickPaintedItem_childMouseEventFilter
  if not isNil(vtbl.windowDeactivateEvent):
    vtbl[].vtbl.windowDeactivateEvent = miqt_exec_callback_cQQuickPaintedItem_windowDeactivateEvent
  if not isNil(vtbl.geometryChanged):
    vtbl[].vtbl.geometryChanged = miqt_exec_callback_cQQuickPaintedItem_geometryChanged
  if not isNil(vtbl.updatePolish):
    vtbl[].vtbl.updatePolish = miqt_exec_callback_cQQuickPaintedItem_updatePolish
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQuickPaintedItem_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQuickPaintedItem_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQuickPaintedItem_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQuickPaintedItem_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQuickPaintedItem_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQuickPaintedItem_disconnectNotify
  gen_qquickpainteditem_types.QQuickPaintedItem(h: fcQQuickPaintedItem_new(addr(vtbl[]), ))

proc create*(T: type gen_qquickpainteditem_types.QQuickPaintedItem,
    parent: gen_qquickitem_types.QQuickItem,
    vtbl: ref QQuickPaintedItemVTable = nil): gen_qquickpainteditem_types.QQuickPaintedItem =
  let vtbl = if vtbl == nil: new QQuickPaintedItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQuickPaintedItemVTable, _: ptr cQQuickPaintedItem) {.cdecl.} =
    let vtbl = cast[ref QQuickPaintedItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQuickPaintedItem_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQuickPaintedItem_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQuickPaintedItem_metacall
  if not isNil(vtbl.paint):
    vtbl[].vtbl.paint = miqt_exec_callback_cQQuickPaintedItem_paint
  if not isNil(vtbl.isTextureProvider):
    vtbl[].vtbl.isTextureProvider = miqt_exec_callback_cQQuickPaintedItem_isTextureProvider
  if not isNil(vtbl.textureProvider):
    vtbl[].vtbl.textureProvider = miqt_exec_callback_cQQuickPaintedItem_textureProvider
  if not isNil(vtbl.updatePaintNode):
    vtbl[].vtbl.updatePaintNode = miqt_exec_callback_cQQuickPaintedItem_updatePaintNode
  if not isNil(vtbl.releaseResources):
    vtbl[].vtbl.releaseResources = miqt_exec_callback_cQQuickPaintedItem_releaseResources
  if not isNil(vtbl.itemChange):
    vtbl[].vtbl.itemChange = miqt_exec_callback_cQQuickPaintedItem_itemChange
  if not isNil(vtbl.boundingRect):
    vtbl[].vtbl.boundingRect = miqt_exec_callback_cQQuickPaintedItem_boundingRect
  if not isNil(vtbl.clipRect):
    vtbl[].vtbl.clipRect = miqt_exec_callback_cQQuickPaintedItem_clipRect
  if not isNil(vtbl.contains):
    vtbl[].vtbl.contains = miqt_exec_callback_cQQuickPaintedItem_contains
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQQuickPaintedItem_inputMethodQuery
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQuickPaintedItem_event
  if not isNil(vtbl.classBegin):
    vtbl[].vtbl.classBegin = miqt_exec_callback_cQQuickPaintedItem_classBegin
  if not isNil(vtbl.componentComplete):
    vtbl[].vtbl.componentComplete = miqt_exec_callback_cQQuickPaintedItem_componentComplete
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQQuickPaintedItem_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQQuickPaintedItem_keyReleaseEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQQuickPaintedItem_inputMethodEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQQuickPaintedItem_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQQuickPaintedItem_focusOutEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQQuickPaintedItem_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQQuickPaintedItem_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQQuickPaintedItem_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQQuickPaintedItem_mouseDoubleClickEvent
  if not isNil(vtbl.mouseUngrabEvent):
    vtbl[].vtbl.mouseUngrabEvent = miqt_exec_callback_cQQuickPaintedItem_mouseUngrabEvent
  if not isNil(vtbl.touchUngrabEvent):
    vtbl[].vtbl.touchUngrabEvent = miqt_exec_callback_cQQuickPaintedItem_touchUngrabEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQQuickPaintedItem_wheelEvent
  if not isNil(vtbl.touchEvent):
    vtbl[].vtbl.touchEvent = miqt_exec_callback_cQQuickPaintedItem_touchEvent
  if not isNil(vtbl.hoverEnterEvent):
    vtbl[].vtbl.hoverEnterEvent = miqt_exec_callback_cQQuickPaintedItem_hoverEnterEvent
  if not isNil(vtbl.hoverMoveEvent):
    vtbl[].vtbl.hoverMoveEvent = miqt_exec_callback_cQQuickPaintedItem_hoverMoveEvent
  if not isNil(vtbl.hoverLeaveEvent):
    vtbl[].vtbl.hoverLeaveEvent = miqt_exec_callback_cQQuickPaintedItem_hoverLeaveEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQQuickPaintedItem_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQQuickPaintedItem_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQQuickPaintedItem_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQQuickPaintedItem_dropEvent
  if not isNil(vtbl.childMouseEventFilter):
    vtbl[].vtbl.childMouseEventFilter = miqt_exec_callback_cQQuickPaintedItem_childMouseEventFilter
  if not isNil(vtbl.windowDeactivateEvent):
    vtbl[].vtbl.windowDeactivateEvent = miqt_exec_callback_cQQuickPaintedItem_windowDeactivateEvent
  if not isNil(vtbl.geometryChanged):
    vtbl[].vtbl.geometryChanged = miqt_exec_callback_cQQuickPaintedItem_geometryChanged
  if not isNil(vtbl.updatePolish):
    vtbl[].vtbl.updatePolish = miqt_exec_callback_cQQuickPaintedItem_updatePolish
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQuickPaintedItem_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQuickPaintedItem_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQuickPaintedItem_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQuickPaintedItem_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQuickPaintedItem_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQuickPaintedItem_disconnectNotify
  gen_qquickpainteditem_types.QQuickPaintedItem(h: fcQQuickPaintedItem_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qquickpainteditem_types.QQuickPaintedItem): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickPaintedItem_staticMetaObject())
proc delete*(self: gen_qquickpainteditem_types.QQuickPaintedItem) =
  fcQQuickPaintedItem_delete(self.h)
