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


type QQuickPaintedItemRenderTarget* = cint
const
  QQuickPaintedItemImage* = 0
  QQuickPaintedItemFramebufferObject* = 1
  QQuickPaintedItemInvertedYFramebufferObject* = 2



type QQuickPaintedItemPerformanceHint* = cint
const
  QQuickPaintedItemFastFBOResizing* = 1



import gen_qquickpainteditem_types
export gen_qquickpainteditem_types

import
  gen_qcolor,
  gen_qcoreevent,
  gen_qevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainter,
  gen_qpoint,
  gen_qquickitem,
  gen_qrect,
  gen_qsgnode,
  gen_qsgtextureprovider,
  gen_qsize,
  gen_qvariant
export
  gen_qcolor,
  gen_qcoreevent,
  gen_qevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainter,
  gen_qpoint,
  gen_qquickitem,
  gen_qrect,
  gen_qsgnode,
  gen_qsgtextureprovider,
  gen_qsize,
  gen_qvariant

type cQQuickPaintedItem*{.exportc: "QQuickPaintedItem", incompleteStruct.} = object

proc fcQQuickPaintedItem_new(): ptr cQQuickPaintedItem {.importc: "QQuickPaintedItem_new".}
proc fcQQuickPaintedItem_new2(parent: pointer): ptr cQQuickPaintedItem {.importc: "QQuickPaintedItem_new2".}
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
proc fQQuickPaintedItem_connect_fillColorChanged(self: pointer, slot: int) {.importc: "QQuickPaintedItem_connect_fillColorChanged".}
proc fcQQuickPaintedItem_contentsSizeChanged(self: pointer, ): void {.importc: "QQuickPaintedItem_contentsSizeChanged".}
proc fQQuickPaintedItem_connect_contentsSizeChanged(self: pointer, slot: int) {.importc: "QQuickPaintedItem_connect_contentsSizeChanged".}
proc fcQQuickPaintedItem_contentsScaleChanged(self: pointer, ): void {.importc: "QQuickPaintedItem_contentsScaleChanged".}
proc fQQuickPaintedItem_connect_contentsScaleChanged(self: pointer, slot: int) {.importc: "QQuickPaintedItem_connect_contentsScaleChanged".}
proc fcQQuickPaintedItem_renderTargetChanged(self: pointer, ): void {.importc: "QQuickPaintedItem_renderTargetChanged".}
proc fQQuickPaintedItem_connect_renderTargetChanged(self: pointer, slot: int) {.importc: "QQuickPaintedItem_connect_renderTargetChanged".}
proc fcQQuickPaintedItem_textureSizeChanged(self: pointer, ): void {.importc: "QQuickPaintedItem_textureSizeChanged".}
proc fQQuickPaintedItem_connect_textureSizeChanged(self: pointer, slot: int) {.importc: "QQuickPaintedItem_connect_textureSizeChanged".}
proc fcQQuickPaintedItem_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickPaintedItem_tr2".}
proc fcQQuickPaintedItem_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickPaintedItem_tr3".}
proc fcQQuickPaintedItem_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickPaintedItem_trUtf82".}
proc fcQQuickPaintedItem_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickPaintedItem_trUtf83".}
proc fcQQuickPaintedItem_update1(self: pointer, rect: pointer): void {.importc: "QQuickPaintedItem_update1".}
proc fcQQuickPaintedItem_setPerformanceHint2(self: pointer, hint: cint, enabled: bool): void {.importc: "QQuickPaintedItem_setPerformanceHint2".}
proc fQQuickPaintedItem_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQuickPaintedItem_virtualbase_metacall".}
proc fcQQuickPaintedItem_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_metacall".}
proc fcQQuickPaintedItem_override_virtual_paint(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_paint".}
proc fQQuickPaintedItem_virtualbase_isTextureProvider(self: pointer, ): bool{.importc: "QQuickPaintedItem_virtualbase_isTextureProvider".}
proc fcQQuickPaintedItem_override_virtual_isTextureProvider(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_isTextureProvider".}
proc fQQuickPaintedItem_virtualbase_textureProvider(self: pointer, ): pointer{.importc: "QQuickPaintedItem_virtualbase_textureProvider".}
proc fcQQuickPaintedItem_override_virtual_textureProvider(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_textureProvider".}
proc fQQuickPaintedItem_virtualbase_updatePaintNode(self: pointer, param1: pointer, param2: pointer): pointer{.importc: "QQuickPaintedItem_virtualbase_updatePaintNode".}
proc fcQQuickPaintedItem_override_virtual_updatePaintNode(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_updatePaintNode".}
proc fQQuickPaintedItem_virtualbase_releaseResources(self: pointer, ): void{.importc: "QQuickPaintedItem_virtualbase_releaseResources".}
proc fcQQuickPaintedItem_override_virtual_releaseResources(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_releaseResources".}
proc fQQuickPaintedItem_virtualbase_itemChange(self: pointer, param1: cint, param2: pointer): void{.importc: "QQuickPaintedItem_virtualbase_itemChange".}
proc fcQQuickPaintedItem_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_itemChange".}
proc fQQuickPaintedItem_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QQuickPaintedItem_virtualbase_boundingRect".}
proc fcQQuickPaintedItem_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_boundingRect".}
proc fQQuickPaintedItem_virtualbase_clipRect(self: pointer, ): pointer{.importc: "QQuickPaintedItem_virtualbase_clipRect".}
proc fcQQuickPaintedItem_override_virtual_clipRect(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_clipRect".}
proc fQQuickPaintedItem_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QQuickPaintedItem_virtualbase_contains".}
proc fcQQuickPaintedItem_override_virtual_contains(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_contains".}
proc fQQuickPaintedItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QQuickPaintedItem_virtualbase_inputMethodQuery".}
proc fcQQuickPaintedItem_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_inputMethodQuery".}
proc fQQuickPaintedItem_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QQuickPaintedItem_virtualbase_event".}
proc fcQQuickPaintedItem_override_virtual_event(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_event".}
proc fQQuickPaintedItem_virtualbase_classBegin(self: pointer, ): void{.importc: "QQuickPaintedItem_virtualbase_classBegin".}
proc fcQQuickPaintedItem_override_virtual_classBegin(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_classBegin".}
proc fQQuickPaintedItem_virtualbase_componentComplete(self: pointer, ): void{.importc: "QQuickPaintedItem_virtualbase_componentComplete".}
proc fcQQuickPaintedItem_override_virtual_componentComplete(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_componentComplete".}
proc fQQuickPaintedItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QQuickPaintedItem_virtualbase_keyPressEvent".}
proc fcQQuickPaintedItem_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_keyPressEvent".}
proc fQQuickPaintedItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QQuickPaintedItem_virtualbase_keyReleaseEvent".}
proc fcQQuickPaintedItem_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_keyReleaseEvent".}
proc fQQuickPaintedItem_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QQuickPaintedItem_virtualbase_inputMethodEvent".}
proc fcQQuickPaintedItem_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_inputMethodEvent".}
proc fQQuickPaintedItem_virtualbase_focusInEvent(self: pointer, param1: pointer): void{.importc: "QQuickPaintedItem_virtualbase_focusInEvent".}
proc fcQQuickPaintedItem_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_focusInEvent".}
proc fQQuickPaintedItem_virtualbase_focusOutEvent(self: pointer, param1: pointer): void{.importc: "QQuickPaintedItem_virtualbase_focusOutEvent".}
proc fcQQuickPaintedItem_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_focusOutEvent".}
proc fQQuickPaintedItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QQuickPaintedItem_virtualbase_mousePressEvent".}
proc fcQQuickPaintedItem_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_mousePressEvent".}
proc fQQuickPaintedItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QQuickPaintedItem_virtualbase_mouseMoveEvent".}
proc fcQQuickPaintedItem_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_mouseMoveEvent".}
proc fQQuickPaintedItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QQuickPaintedItem_virtualbase_mouseReleaseEvent".}
proc fcQQuickPaintedItem_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_mouseReleaseEvent".}
proc fQQuickPaintedItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QQuickPaintedItem_virtualbase_mouseDoubleClickEvent".}
proc fcQQuickPaintedItem_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_mouseDoubleClickEvent".}
proc fQQuickPaintedItem_virtualbase_mouseUngrabEvent(self: pointer, ): void{.importc: "QQuickPaintedItem_virtualbase_mouseUngrabEvent".}
proc fcQQuickPaintedItem_override_virtual_mouseUngrabEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_mouseUngrabEvent".}
proc fQQuickPaintedItem_virtualbase_touchUngrabEvent(self: pointer, ): void{.importc: "QQuickPaintedItem_virtualbase_touchUngrabEvent".}
proc fcQQuickPaintedItem_override_virtual_touchUngrabEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_touchUngrabEvent".}
proc fQQuickPaintedItem_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QQuickPaintedItem_virtualbase_wheelEvent".}
proc fcQQuickPaintedItem_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_wheelEvent".}
proc fQQuickPaintedItem_virtualbase_touchEvent(self: pointer, event: pointer): void{.importc: "QQuickPaintedItem_virtualbase_touchEvent".}
proc fcQQuickPaintedItem_override_virtual_touchEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_touchEvent".}
proc fQQuickPaintedItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QQuickPaintedItem_virtualbase_hoverEnterEvent".}
proc fcQQuickPaintedItem_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_hoverEnterEvent".}
proc fQQuickPaintedItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QQuickPaintedItem_virtualbase_hoverMoveEvent".}
proc fcQQuickPaintedItem_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_hoverMoveEvent".}
proc fQQuickPaintedItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QQuickPaintedItem_virtualbase_hoverLeaveEvent".}
proc fcQQuickPaintedItem_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_hoverLeaveEvent".}
proc fQQuickPaintedItem_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void{.importc: "QQuickPaintedItem_virtualbase_dragEnterEvent".}
proc fcQQuickPaintedItem_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_dragEnterEvent".}
proc fQQuickPaintedItem_virtualbase_dragMoveEvent(self: pointer, param1: pointer): void{.importc: "QQuickPaintedItem_virtualbase_dragMoveEvent".}
proc fcQQuickPaintedItem_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_dragMoveEvent".}
proc fQQuickPaintedItem_virtualbase_dragLeaveEvent(self: pointer, param1: pointer): void{.importc: "QQuickPaintedItem_virtualbase_dragLeaveEvent".}
proc fcQQuickPaintedItem_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_dragLeaveEvent".}
proc fQQuickPaintedItem_virtualbase_dropEvent(self: pointer, param1: pointer): void{.importc: "QQuickPaintedItem_virtualbase_dropEvent".}
proc fcQQuickPaintedItem_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_dropEvent".}
proc fQQuickPaintedItem_virtualbase_childMouseEventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QQuickPaintedItem_virtualbase_childMouseEventFilter".}
proc fcQQuickPaintedItem_override_virtual_childMouseEventFilter(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_childMouseEventFilter".}
proc fQQuickPaintedItem_virtualbase_windowDeactivateEvent(self: pointer, ): void{.importc: "QQuickPaintedItem_virtualbase_windowDeactivateEvent".}
proc fcQQuickPaintedItem_override_virtual_windowDeactivateEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_windowDeactivateEvent".}
proc fQQuickPaintedItem_virtualbase_geometryChanged(self: pointer, newGeometry: pointer, oldGeometry: pointer): void{.importc: "QQuickPaintedItem_virtualbase_geometryChanged".}
proc fcQQuickPaintedItem_override_virtual_geometryChanged(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_geometryChanged".}
proc fQQuickPaintedItem_virtualbase_updatePolish(self: pointer, ): void{.importc: "QQuickPaintedItem_virtualbase_updatePolish".}
proc fcQQuickPaintedItem_override_virtual_updatePolish(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_updatePolish".}
proc fQQuickPaintedItem_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQuickPaintedItem_virtualbase_eventFilter".}
proc fcQQuickPaintedItem_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_eventFilter".}
proc fQQuickPaintedItem_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQuickPaintedItem_virtualbase_timerEvent".}
proc fcQQuickPaintedItem_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_timerEvent".}
proc fQQuickPaintedItem_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQuickPaintedItem_virtualbase_childEvent".}
proc fcQQuickPaintedItem_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_childEvent".}
proc fQQuickPaintedItem_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQuickPaintedItem_virtualbase_customEvent".}
proc fcQQuickPaintedItem_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_customEvent".}
proc fQQuickPaintedItem_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQuickPaintedItem_virtualbase_connectNotify".}
proc fcQQuickPaintedItem_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_connectNotify".}
proc fQQuickPaintedItem_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQuickPaintedItem_virtualbase_disconnectNotify".}
proc fcQQuickPaintedItem_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQuickPaintedItem_override_virtual_disconnectNotify".}
proc fcQQuickPaintedItem_delete(self: pointer) {.importc: "QQuickPaintedItem_delete".}


func init*(T: type QQuickPaintedItem, h: ptr cQQuickPaintedItem): QQuickPaintedItem =
  T(h: h)
proc create*(T: type QQuickPaintedItem, ): QQuickPaintedItem =

  QQuickPaintedItem.init(fcQQuickPaintedItem_new())
proc create*(T: type QQuickPaintedItem, parent: gen_qquickitem.QQuickItem): QQuickPaintedItem =

  QQuickPaintedItem.init(fcQQuickPaintedItem_new2(parent.h))
proc metaObject*(self: QQuickPaintedItem, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQQuickPaintedItem_metaObject(self.h))

proc metacast*(self: QQuickPaintedItem, param1: cstring): pointer =

  fcQQuickPaintedItem_metacast(self.h, param1)

proc metacall*(self: QQuickPaintedItem, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQQuickPaintedItem_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QQuickPaintedItem, s: cstring): string =

  let v_ms = fcQQuickPaintedItem_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QQuickPaintedItem, s: cstring): string =

  let v_ms = fcQQuickPaintedItem_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc update*(self: QQuickPaintedItem, ): void =

  fcQQuickPaintedItem_update(self.h)

proc opaquePainting*(self: QQuickPaintedItem, ): bool =

  fcQQuickPaintedItem_opaquePainting(self.h)

proc setOpaquePainting*(self: QQuickPaintedItem, opaque: bool): void =

  fcQQuickPaintedItem_setOpaquePainting(self.h, opaque)

proc antialiasing*(self: QQuickPaintedItem, ): bool =

  fcQQuickPaintedItem_antialiasing(self.h)

proc setAntialiasing*(self: QQuickPaintedItem, enable: bool): void =

  fcQQuickPaintedItem_setAntialiasing(self.h, enable)

proc mipmap*(self: QQuickPaintedItem, ): bool =

  fcQQuickPaintedItem_mipmap(self.h)

proc setMipmap*(self: QQuickPaintedItem, enable: bool): void =

  fcQQuickPaintedItem_setMipmap(self.h, enable)

proc performanceHints*(self: QQuickPaintedItem, ): QQuickPaintedItemPerformanceHint =

  QQuickPaintedItemPerformanceHint(fcQQuickPaintedItem_performanceHints(self.h))

proc setPerformanceHint*(self: QQuickPaintedItem, hint: QQuickPaintedItemPerformanceHint): void =

  fcQQuickPaintedItem_setPerformanceHint(self.h, cint(hint))

proc setPerformanceHints*(self: QQuickPaintedItem, hints: QQuickPaintedItemPerformanceHint): void =

  fcQQuickPaintedItem_setPerformanceHints(self.h, cint(hints))

proc contentsBoundingRect*(self: QQuickPaintedItem, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQQuickPaintedItem_contentsBoundingRect(self.h))

proc contentsSize*(self: QQuickPaintedItem, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQQuickPaintedItem_contentsSize(self.h))

proc setContentsSize*(self: QQuickPaintedItem, contentsSize: gen_qsize.QSize): void =

  fcQQuickPaintedItem_setContentsSize(self.h, contentsSize.h)

proc resetContentsSize*(self: QQuickPaintedItem, ): void =

  fcQQuickPaintedItem_resetContentsSize(self.h)

proc contentsScale*(self: QQuickPaintedItem, ): float64 =

  fcQQuickPaintedItem_contentsScale(self.h)

proc setContentsScale*(self: QQuickPaintedItem, contentsScale: float64): void =

  fcQQuickPaintedItem_setContentsScale(self.h, contentsScale)

proc textureSize*(self: QQuickPaintedItem, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQQuickPaintedItem_textureSize(self.h))

proc setTextureSize*(self: QQuickPaintedItem, size: gen_qsize.QSize): void =

  fcQQuickPaintedItem_setTextureSize(self.h, size.h)

proc fillColor*(self: QQuickPaintedItem, ): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQQuickPaintedItem_fillColor(self.h))

proc setFillColor*(self: QQuickPaintedItem, fillColor: gen_qcolor.QColor): void =

  fcQQuickPaintedItem_setFillColor(self.h, fillColor.h)

proc renderTarget*(self: QQuickPaintedItem, ): QQuickPaintedItemRenderTarget =

  QQuickPaintedItemRenderTarget(fcQQuickPaintedItem_renderTarget(self.h))

proc setRenderTarget*(self: QQuickPaintedItem, target: QQuickPaintedItemRenderTarget): void =

  fcQQuickPaintedItem_setRenderTarget(self.h, cint(target))

proc paint*(self: QQuickPaintedItem, painter: gen_qpainter.QPainter): void =

  fcQQuickPaintedItem_paint(self.h, painter.h)

proc isTextureProvider*(self: QQuickPaintedItem, ): bool =

  fcQQuickPaintedItem_isTextureProvider(self.h)

proc textureProvider*(self: QQuickPaintedItem, ): gen_qsgtextureprovider.QSGTextureProvider =

  gen_qsgtextureprovider.QSGTextureProvider(h: fcQQuickPaintedItem_textureProvider(self.h))

proc fillColorChanged*(self: QQuickPaintedItem, ): void =

  fcQQuickPaintedItem_fillColorChanged(self.h)

proc miqt_exec_callback_QQuickPaintedItem_fillColorChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onfillColorChanged*(self: QQuickPaintedItem, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickPaintedItem_connect_fillColorChanged(self.h, cast[int](addr tmp[]))
proc contentsSizeChanged*(self: QQuickPaintedItem, ): void =

  fcQQuickPaintedItem_contentsSizeChanged(self.h)

proc miqt_exec_callback_QQuickPaintedItem_contentsSizeChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc oncontentsSizeChanged*(self: QQuickPaintedItem, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickPaintedItem_connect_contentsSizeChanged(self.h, cast[int](addr tmp[]))
proc contentsScaleChanged*(self: QQuickPaintedItem, ): void =

  fcQQuickPaintedItem_contentsScaleChanged(self.h)

proc miqt_exec_callback_QQuickPaintedItem_contentsScaleChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc oncontentsScaleChanged*(self: QQuickPaintedItem, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickPaintedItem_connect_contentsScaleChanged(self.h, cast[int](addr tmp[]))
proc renderTargetChanged*(self: QQuickPaintedItem, ): void =

  fcQQuickPaintedItem_renderTargetChanged(self.h)

proc miqt_exec_callback_QQuickPaintedItem_renderTargetChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onrenderTargetChanged*(self: QQuickPaintedItem, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickPaintedItem_connect_renderTargetChanged(self.h, cast[int](addr tmp[]))
proc textureSizeChanged*(self: QQuickPaintedItem, ): void =

  fcQQuickPaintedItem_textureSizeChanged(self.h)

proc miqt_exec_callback_QQuickPaintedItem_textureSizeChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc ontextureSizeChanged*(self: QQuickPaintedItem, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickPaintedItem_connect_textureSizeChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QQuickPaintedItem, s: cstring, c: cstring): string =

  let v_ms = fcQQuickPaintedItem_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QQuickPaintedItem, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQuickPaintedItem_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QQuickPaintedItem, s: cstring, c: cstring): string =

  let v_ms = fcQQuickPaintedItem_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QQuickPaintedItem, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQuickPaintedItem_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc update1*(self: QQuickPaintedItem, rect: gen_qrect.QRect): void =

  fcQQuickPaintedItem_update1(self.h, rect.h)

proc setPerformanceHint2*(self: QQuickPaintedItem, hint: QQuickPaintedItemPerformanceHint, enabled: bool): void =

  fcQQuickPaintedItem_setPerformanceHint2(self.h, cint(hint), enabled)

proc callVirtualBase_metacall(self: QQuickPaintedItem, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQQuickPaintedItem_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQuickPaintedItemmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_metacall(self: ptr cQQuickPaintedItem, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQuickPaintedItem_metacall ".} =
  type Cb = proc(super: QQuickPaintedItemmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QQuickPaintedItem(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QQuickPaintedItempaintBase* = proc(painter: gen_qpainter.QPainter): void
proc onpaint*(self: QQuickPaintedItem, slot: proc(painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_paint(self: ptr cQQuickPaintedItem, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_paint ".} =
  type Cb = proc(painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](slotval1)
proc callVirtualBase_isTextureProvider(self: QQuickPaintedItem, ): bool =


  fQQuickPaintedItem_virtualbase_isTextureProvider(self.h)

type QQuickPaintedItemisTextureProviderBase* = proc(): bool
proc onisTextureProvider*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemisTextureProviderBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemisTextureProviderBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_isTextureProvider(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_isTextureProvider(self: ptr cQQuickPaintedItem, slot: int): bool {.exportc: "miqt_exec_callback_QQuickPaintedItem_isTextureProvider ".} =
  type Cb = proc(super: QQuickPaintedItemisTextureProviderBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isTextureProvider(QQuickPaintedItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_textureProvider(self: QQuickPaintedItem, ): gen_qsgtextureprovider.QSGTextureProvider =


  gen_qsgtextureprovider.QSGTextureProvider(h: fQQuickPaintedItem_virtualbase_textureProvider(self.h))

type QQuickPaintedItemtextureProviderBase* = proc(): gen_qsgtextureprovider.QSGTextureProvider
proc ontextureProvider*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemtextureProviderBase): gen_qsgtextureprovider.QSGTextureProvider) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemtextureProviderBase): gen_qsgtextureprovider.QSGTextureProvider
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_textureProvider(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_textureProvider(self: ptr cQQuickPaintedItem, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickPaintedItem_textureProvider ".} =
  type Cb = proc(super: QQuickPaintedItemtextureProviderBase): gen_qsgtextureprovider.QSGTextureProvider
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_textureProvider(QQuickPaintedItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_updatePaintNode(self: QQuickPaintedItem, param1: gen_qsgnode.QSGNode, param2: gen_qquickitem.QQuickItemUpdatePaintNodeData): gen_qsgnode.QSGNode =


  gen_qsgnode.QSGNode(h: fQQuickPaintedItem_virtualbase_updatePaintNode(self.h, param1.h, param2.h))

type QQuickPaintedItemupdatePaintNodeBase* = proc(param1: gen_qsgnode.QSGNode, param2: gen_qquickitem.QQuickItemUpdatePaintNodeData): gen_qsgnode.QSGNode
proc onupdatePaintNode*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemupdatePaintNodeBase, param1: gen_qsgnode.QSGNode, param2: gen_qquickitem.QQuickItemUpdatePaintNodeData): gen_qsgnode.QSGNode) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemupdatePaintNodeBase, param1: gen_qsgnode.QSGNode, param2: gen_qquickitem.QQuickItemUpdatePaintNodeData): gen_qsgnode.QSGNode
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_updatePaintNode(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_updatePaintNode(self: ptr cQQuickPaintedItem, slot: int, param1: pointer, param2: pointer): pointer {.exportc: "miqt_exec_callback_QQuickPaintedItem_updatePaintNode ".} =
  type Cb = proc(super: QQuickPaintedItemupdatePaintNodeBase, param1: gen_qsgnode.QSGNode, param2: gen_qquickitem.QQuickItemUpdatePaintNodeData): gen_qsgnode.QSGNode
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qsgnode.QSGNode, param2: gen_qquickitem.QQuickItemUpdatePaintNodeData): auto =
    callVirtualBase_updatePaintNode(QQuickPaintedItem(h: self), param1, param2)
  let slotval1 = gen_qsgnode.QSGNode(h: param1)

  let slotval2 = gen_qquickitem.QQuickItemUpdatePaintNodeData(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_releaseResources(self: QQuickPaintedItem, ): void =


  fQQuickPaintedItem_virtualbase_releaseResources(self.h)

type QQuickPaintedItemreleaseResourcesBase* = proc(): void
proc onreleaseResources*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemreleaseResourcesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemreleaseResourcesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_releaseResources(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_releaseResources(self: ptr cQQuickPaintedItem, slot: int): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_releaseResources ".} =
  type Cb = proc(super: QQuickPaintedItemreleaseResourcesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_releaseResources(QQuickPaintedItem(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_itemChange(self: QQuickPaintedItem, param1: gen_qquickitem.QQuickItemItemChange, param2: gen_qquickitem.QQuickItemItemChangeData): void =


  fQQuickPaintedItem_virtualbase_itemChange(self.h, cint(param1), param2.h)

type QQuickPaintedItemitemChangeBase* = proc(param1: gen_qquickitem.QQuickItemItemChange, param2: gen_qquickitem.QQuickItemItemChangeData): void
proc onitemChange*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemitemChangeBase, param1: gen_qquickitem.QQuickItemItemChange, param2: gen_qquickitem.QQuickItemItemChangeData): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemitemChangeBase, param1: gen_qquickitem.QQuickItemItemChange, param2: gen_qquickitem.QQuickItemItemChangeData): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_itemChange(self: ptr cQQuickPaintedItem, slot: int, param1: cint, param2: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_itemChange ".} =
  type Cb = proc(super: QQuickPaintedItemitemChangeBase, param1: gen_qquickitem.QQuickItemItemChange, param2: gen_qquickitem.QQuickItemItemChangeData): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qquickitem.QQuickItemItemChange, param2: gen_qquickitem.QQuickItemItemChangeData): auto =
    callVirtualBase_itemChange(QQuickPaintedItem(h: self), param1, param2)
  let slotval1 = gen_qquickitem.QQuickItemItemChange(param1)

  let slotval2 = gen_qquickitem.QQuickItemItemChangeData(h: param2)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_boundingRect(self: QQuickPaintedItem, ): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQQuickPaintedItem_virtualbase_boundingRect(self.h))

type QQuickPaintedItemboundingRectBase* = proc(): gen_qrect.QRectF
proc onboundingRect*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemboundingRectBase): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemboundingRectBase): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_boundingRect(self: ptr cQQuickPaintedItem, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickPaintedItem_boundingRect ".} =
  type Cb = proc(super: QQuickPaintedItemboundingRectBase): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_boundingRect(QQuickPaintedItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_clipRect(self: QQuickPaintedItem, ): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQQuickPaintedItem_virtualbase_clipRect(self.h))

type QQuickPaintedItemclipRectBase* = proc(): gen_qrect.QRectF
proc onclipRect*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemclipRectBase): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemclipRectBase): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_clipRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_clipRect(self: ptr cQQuickPaintedItem, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickPaintedItem_clipRect ".} =
  type Cb = proc(super: QQuickPaintedItemclipRectBase): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clipRect(QQuickPaintedItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_contains(self: QQuickPaintedItem, point: gen_qpoint.QPointF): bool =


  fQQuickPaintedItem_virtualbase_contains(self.h, point.h)

type QQuickPaintedItemcontainsBase* = proc(point: gen_qpoint.QPointF): bool
proc oncontains*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemcontainsBase, point: gen_qpoint.QPointF): bool) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemcontainsBase, point: gen_qpoint.QPointF): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_contains(self: ptr cQQuickPaintedItem, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QQuickPaintedItem_contains ".} =
  type Cb = proc(super: QQuickPaintedItemcontainsBase, point: gen_qpoint.QPointF): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(point: gen_qpoint.QPointF): auto =
    callVirtualBase_contains(QQuickPaintedItem(h: self), point)
  let slotval1 = gen_qpoint.QPointF(h: point)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_inputMethodQuery(self: QQuickPaintedItem, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQQuickPaintedItem_virtualbase_inputMethodQuery(self.h, cint(query)))

type QQuickPaintedIteminputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_inputMethodQuery(self: ptr cQQuickPaintedItem, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QQuickPaintedItem_inputMethodQuery ".} =
  type Cb = proc(super: QQuickPaintedIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QQuickPaintedItem(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_event(self: QQuickPaintedItem, param1: gen_qcoreevent.QEvent): bool =


  fQQuickPaintedItem_virtualbase_event(self.h, param1.h)

type QQuickPaintedItemeventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemeventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemeventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_event(self: ptr cQQuickPaintedItem, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QQuickPaintedItem_event ".} =
  type Cb = proc(super: QQuickPaintedItemeventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QQuickPaintedItem(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_classBegin(self: QQuickPaintedItem, ): void =


  fQQuickPaintedItem_virtualbase_classBegin(self.h)

type QQuickPaintedItemclassBeginBase* = proc(): void
proc onclassBegin*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemclassBeginBase): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemclassBeginBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_classBegin(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_classBegin(self: ptr cQQuickPaintedItem, slot: int): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_classBegin ".} =
  type Cb = proc(super: QQuickPaintedItemclassBeginBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_classBegin(QQuickPaintedItem(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_componentComplete(self: QQuickPaintedItem, ): void =


  fQQuickPaintedItem_virtualbase_componentComplete(self.h)

type QQuickPaintedItemcomponentCompleteBase* = proc(): void
proc oncomponentComplete*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemcomponentCompleteBase): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemcomponentCompleteBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_componentComplete(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_componentComplete(self: ptr cQQuickPaintedItem, slot: int): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_componentComplete ".} =
  type Cb = proc(super: QQuickPaintedItemcomponentCompleteBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_componentComplete(QQuickPaintedItem(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_keyPressEvent(self: QQuickPaintedItem, event: gen_qevent.QKeyEvent): void =


  fQQuickPaintedItem_virtualbase_keyPressEvent(self.h, event.h)

type QQuickPaintedItemkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_keyPressEvent(self: ptr cQQuickPaintedItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_keyPressEvent ".} =
  type Cb = proc(super: QQuickPaintedItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QQuickPaintedItem(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QQuickPaintedItem, event: gen_qevent.QKeyEvent): void =


  fQQuickPaintedItem_virtualbase_keyReleaseEvent(self.h, event.h)

type QQuickPaintedItemkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_keyReleaseEvent(self: ptr cQQuickPaintedItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_keyReleaseEvent ".} =
  type Cb = proc(super: QQuickPaintedItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QQuickPaintedItem(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QQuickPaintedItem, param1: gen_qevent.QInputMethodEvent): void =


  fQQuickPaintedItem_virtualbase_inputMethodEvent(self.h, param1.h)

type QQuickPaintedIteminputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedIteminputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedIteminputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_inputMethodEvent(self: ptr cQQuickPaintedItem, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_inputMethodEvent ".} =
  type Cb = proc(super: QQuickPaintedIteminputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QQuickPaintedItem(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QQuickPaintedItem, param1: gen_qevent.QFocusEvent): void =


  fQQuickPaintedItem_virtualbase_focusInEvent(self.h, param1.h)

type QQuickPaintedItemfocusInEventBase* = proc(param1: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemfocusInEventBase, param1: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemfocusInEventBase, param1: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_focusInEvent(self: ptr cQQuickPaintedItem, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_focusInEvent ".} =
  type Cb = proc(super: QQuickPaintedItemfocusInEventBase, param1: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QQuickPaintedItem(h: self), param1)
  let slotval1 = gen_qevent.QFocusEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QQuickPaintedItem, param1: gen_qevent.QFocusEvent): void =


  fQQuickPaintedItem_virtualbase_focusOutEvent(self.h, param1.h)

type QQuickPaintedItemfocusOutEventBase* = proc(param1: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemfocusOutEventBase, param1: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemfocusOutEventBase, param1: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_focusOutEvent(self: ptr cQQuickPaintedItem, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_focusOutEvent ".} =
  type Cb = proc(super: QQuickPaintedItemfocusOutEventBase, param1: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QQuickPaintedItem(h: self), param1)
  let slotval1 = gen_qevent.QFocusEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QQuickPaintedItem, event: gen_qevent.QMouseEvent): void =


  fQQuickPaintedItem_virtualbase_mousePressEvent(self.h, event.h)

type QQuickPaintedItemmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_mousePressEvent(self: ptr cQQuickPaintedItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_mousePressEvent ".} =
  type Cb = proc(super: QQuickPaintedItemmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QQuickPaintedItem(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QQuickPaintedItem, event: gen_qevent.QMouseEvent): void =


  fQQuickPaintedItem_virtualbase_mouseMoveEvent(self.h, event.h)

type QQuickPaintedItemmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_mouseMoveEvent(self: ptr cQQuickPaintedItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_mouseMoveEvent ".} =
  type Cb = proc(super: QQuickPaintedItemmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QQuickPaintedItem(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QQuickPaintedItem, event: gen_qevent.QMouseEvent): void =


  fQQuickPaintedItem_virtualbase_mouseReleaseEvent(self.h, event.h)

type QQuickPaintedItemmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_mouseReleaseEvent(self: ptr cQQuickPaintedItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_mouseReleaseEvent ".} =
  type Cb = proc(super: QQuickPaintedItemmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QQuickPaintedItem(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QQuickPaintedItem, event: gen_qevent.QMouseEvent): void =


  fQQuickPaintedItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QQuickPaintedItemmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_mouseDoubleClickEvent(self: ptr cQQuickPaintedItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QQuickPaintedItemmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QQuickPaintedItem(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseUngrabEvent(self: QQuickPaintedItem, ): void =


  fQQuickPaintedItem_virtualbase_mouseUngrabEvent(self.h)

type QQuickPaintedItemmouseUngrabEventBase* = proc(): void
proc onmouseUngrabEvent*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemmouseUngrabEventBase): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemmouseUngrabEventBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_mouseUngrabEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_mouseUngrabEvent(self: ptr cQQuickPaintedItem, slot: int): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_mouseUngrabEvent ".} =
  type Cb = proc(super: QQuickPaintedItemmouseUngrabEventBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_mouseUngrabEvent(QQuickPaintedItem(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_touchUngrabEvent(self: QQuickPaintedItem, ): void =


  fQQuickPaintedItem_virtualbase_touchUngrabEvent(self.h)

type QQuickPaintedItemtouchUngrabEventBase* = proc(): void
proc ontouchUngrabEvent*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemtouchUngrabEventBase): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemtouchUngrabEventBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_touchUngrabEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_touchUngrabEvent(self: ptr cQQuickPaintedItem, slot: int): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_touchUngrabEvent ".} =
  type Cb = proc(super: QQuickPaintedItemtouchUngrabEventBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_touchUngrabEvent(QQuickPaintedItem(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_wheelEvent(self: QQuickPaintedItem, event: gen_qevent.QWheelEvent): void =


  fQQuickPaintedItem_virtualbase_wheelEvent(self.h, event.h)

type QQuickPaintedItemwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_wheelEvent(self: ptr cQQuickPaintedItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_wheelEvent ".} =
  type Cb = proc(super: QQuickPaintedItemwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QQuickPaintedItem(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_touchEvent(self: QQuickPaintedItem, event: gen_qevent.QTouchEvent): void =


  fQQuickPaintedItem_virtualbase_touchEvent(self.h, event.h)

type QQuickPaintedItemtouchEventBase* = proc(event: gen_qevent.QTouchEvent): void
proc ontouchEvent*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemtouchEventBase, event: gen_qevent.QTouchEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemtouchEventBase, event: gen_qevent.QTouchEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_touchEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_touchEvent(self: ptr cQQuickPaintedItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_touchEvent ".} =
  type Cb = proc(super: QQuickPaintedItemtouchEventBase, event: gen_qevent.QTouchEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTouchEvent): auto =
    callVirtualBase_touchEvent(QQuickPaintedItem(h: self), event)
  let slotval1 = gen_qevent.QTouchEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverEnterEvent(self: QQuickPaintedItem, event: gen_qevent.QHoverEvent): void =


  fQQuickPaintedItem_virtualbase_hoverEnterEvent(self.h, event.h)

type QQuickPaintedItemhoverEnterEventBase* = proc(event: gen_qevent.QHoverEvent): void
proc onhoverEnterEvent*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemhoverEnterEventBase, event: gen_qevent.QHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemhoverEnterEventBase, event: gen_qevent.QHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_hoverEnterEvent(self: ptr cQQuickPaintedItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_hoverEnterEvent ".} =
  type Cb = proc(super: QQuickPaintedItemhoverEnterEventBase, event: gen_qevent.QHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHoverEvent): auto =
    callVirtualBase_hoverEnterEvent(QQuickPaintedItem(h: self), event)
  let slotval1 = gen_qevent.QHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverMoveEvent(self: QQuickPaintedItem, event: gen_qevent.QHoverEvent): void =


  fQQuickPaintedItem_virtualbase_hoverMoveEvent(self.h, event.h)

type QQuickPaintedItemhoverMoveEventBase* = proc(event: gen_qevent.QHoverEvent): void
proc onhoverMoveEvent*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemhoverMoveEventBase, event: gen_qevent.QHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemhoverMoveEventBase, event: gen_qevent.QHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_hoverMoveEvent(self: ptr cQQuickPaintedItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_hoverMoveEvent ".} =
  type Cb = proc(super: QQuickPaintedItemhoverMoveEventBase, event: gen_qevent.QHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHoverEvent): auto =
    callVirtualBase_hoverMoveEvent(QQuickPaintedItem(h: self), event)
  let slotval1 = gen_qevent.QHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverLeaveEvent(self: QQuickPaintedItem, event: gen_qevent.QHoverEvent): void =


  fQQuickPaintedItem_virtualbase_hoverLeaveEvent(self.h, event.h)

type QQuickPaintedItemhoverLeaveEventBase* = proc(event: gen_qevent.QHoverEvent): void
proc onhoverLeaveEvent*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemhoverLeaveEventBase, event: gen_qevent.QHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemhoverLeaveEventBase, event: gen_qevent.QHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_hoverLeaveEvent(self: ptr cQQuickPaintedItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_hoverLeaveEvent ".} =
  type Cb = proc(super: QQuickPaintedItemhoverLeaveEventBase, event: gen_qevent.QHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHoverEvent): auto =
    callVirtualBase_hoverLeaveEvent(QQuickPaintedItem(h: self), event)
  let slotval1 = gen_qevent.QHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QQuickPaintedItem, param1: gen_qevent.QDragEnterEvent): void =


  fQQuickPaintedItem_virtualbase_dragEnterEvent(self.h, param1.h)

type QQuickPaintedItemdragEnterEventBase* = proc(param1: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemdragEnterEventBase, param1: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemdragEnterEventBase, param1: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_dragEnterEvent(self: ptr cQQuickPaintedItem, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_dragEnterEvent ".} =
  type Cb = proc(super: QQuickPaintedItemdragEnterEventBase, param1: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QQuickPaintedItem(h: self), param1)
  let slotval1 = gen_qevent.QDragEnterEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QQuickPaintedItem, param1: gen_qevent.QDragMoveEvent): void =


  fQQuickPaintedItem_virtualbase_dragMoveEvent(self.h, param1.h)

type QQuickPaintedItemdragMoveEventBase* = proc(param1: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemdragMoveEventBase, param1: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemdragMoveEventBase, param1: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_dragMoveEvent(self: ptr cQQuickPaintedItem, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_dragMoveEvent ".} =
  type Cb = proc(super: QQuickPaintedItemdragMoveEventBase, param1: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QQuickPaintedItem(h: self), param1)
  let slotval1 = gen_qevent.QDragMoveEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QQuickPaintedItem, param1: gen_qevent.QDragLeaveEvent): void =


  fQQuickPaintedItem_virtualbase_dragLeaveEvent(self.h, param1.h)

type QQuickPaintedItemdragLeaveEventBase* = proc(param1: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemdragLeaveEventBase, param1: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemdragLeaveEventBase, param1: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_dragLeaveEvent(self: ptr cQQuickPaintedItem, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_dragLeaveEvent ".} =
  type Cb = proc(super: QQuickPaintedItemdragLeaveEventBase, param1: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QQuickPaintedItem(h: self), param1)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QQuickPaintedItem, param1: gen_qevent.QDropEvent): void =


  fQQuickPaintedItem_virtualbase_dropEvent(self.h, param1.h)

type QQuickPaintedItemdropEventBase* = proc(param1: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemdropEventBase, param1: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemdropEventBase, param1: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_dropEvent(self: ptr cQQuickPaintedItem, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_dropEvent ".} =
  type Cb = proc(super: QQuickPaintedItemdropEventBase, param1: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QQuickPaintedItem(h: self), param1)
  let slotval1 = gen_qevent.QDropEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childMouseEventFilter(self: QQuickPaintedItem, param1: gen_qquickitem.QQuickItem, param2: gen_qcoreevent.QEvent): bool =


  fQQuickPaintedItem_virtualbase_childMouseEventFilter(self.h, param1.h, param2.h)

type QQuickPaintedItemchildMouseEventFilterBase* = proc(param1: gen_qquickitem.QQuickItem, param2: gen_qcoreevent.QEvent): bool
proc onchildMouseEventFilter*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemchildMouseEventFilterBase, param1: gen_qquickitem.QQuickItem, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemchildMouseEventFilterBase, param1: gen_qquickitem.QQuickItem, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_childMouseEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_childMouseEventFilter(self: ptr cQQuickPaintedItem, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QQuickPaintedItem_childMouseEventFilter ".} =
  type Cb = proc(super: QQuickPaintedItemchildMouseEventFilterBase, param1: gen_qquickitem.QQuickItem, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qquickitem.QQuickItem, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_childMouseEventFilter(QQuickPaintedItem(h: self), param1, param2)
  let slotval1 = gen_qquickitem.QQuickItem(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_windowDeactivateEvent(self: QQuickPaintedItem, ): void =


  fQQuickPaintedItem_virtualbase_windowDeactivateEvent(self.h)

type QQuickPaintedItemwindowDeactivateEventBase* = proc(): void
proc onwindowDeactivateEvent*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemwindowDeactivateEventBase): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemwindowDeactivateEventBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_windowDeactivateEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_windowDeactivateEvent(self: ptr cQQuickPaintedItem, slot: int): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_windowDeactivateEvent ".} =
  type Cb = proc(super: QQuickPaintedItemwindowDeactivateEventBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_windowDeactivateEvent(QQuickPaintedItem(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_geometryChanged(self: QQuickPaintedItem, newGeometry: gen_qrect.QRectF, oldGeometry: gen_qrect.QRectF): void =


  fQQuickPaintedItem_virtualbase_geometryChanged(self.h, newGeometry.h, oldGeometry.h)

type QQuickPaintedItemgeometryChangedBase* = proc(newGeometry: gen_qrect.QRectF, oldGeometry: gen_qrect.QRectF): void
proc ongeometryChanged*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemgeometryChangedBase, newGeometry: gen_qrect.QRectF, oldGeometry: gen_qrect.QRectF): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemgeometryChangedBase, newGeometry: gen_qrect.QRectF, oldGeometry: gen_qrect.QRectF): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_geometryChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_geometryChanged(self: ptr cQQuickPaintedItem, slot: int, newGeometry: pointer, oldGeometry: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_geometryChanged ".} =
  type Cb = proc(super: QQuickPaintedItemgeometryChangedBase, newGeometry: gen_qrect.QRectF, oldGeometry: gen_qrect.QRectF): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(newGeometry: gen_qrect.QRectF, oldGeometry: gen_qrect.QRectF): auto =
    callVirtualBase_geometryChanged(QQuickPaintedItem(h: self), newGeometry, oldGeometry)
  let slotval1 = gen_qrect.QRectF(h: newGeometry)

  let slotval2 = gen_qrect.QRectF(h: oldGeometry)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_updatePolish(self: QQuickPaintedItem, ): void =


  fQQuickPaintedItem_virtualbase_updatePolish(self.h)

type QQuickPaintedItemupdatePolishBase* = proc(): void
proc onupdatePolish*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemupdatePolishBase): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemupdatePolishBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_updatePolish(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_updatePolish(self: ptr cQQuickPaintedItem, slot: int): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_updatePolish ".} =
  type Cb = proc(super: QQuickPaintedItemupdatePolishBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updatePolish(QQuickPaintedItem(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_eventFilter(self: QQuickPaintedItem, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQQuickPaintedItem_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQuickPaintedItemeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_eventFilter(self: ptr cQQuickPaintedItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickPaintedItem_eventFilter ".} =
  type Cb = proc(super: QQuickPaintedItemeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QQuickPaintedItem(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QQuickPaintedItem, event: gen_qcoreevent.QTimerEvent): void =


  fQQuickPaintedItem_virtualbase_timerEvent(self.h, event.h)

type QQuickPaintedItemtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_timerEvent(self: ptr cQQuickPaintedItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_timerEvent ".} =
  type Cb = proc(super: QQuickPaintedItemtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QQuickPaintedItem(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QQuickPaintedItem, event: gen_qcoreevent.QChildEvent): void =


  fQQuickPaintedItem_virtualbase_childEvent(self.h, event.h)

type QQuickPaintedItemchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_childEvent(self: ptr cQQuickPaintedItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_childEvent ".} =
  type Cb = proc(super: QQuickPaintedItemchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QQuickPaintedItem(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QQuickPaintedItem, event: gen_qcoreevent.QEvent): void =


  fQQuickPaintedItem_virtualbase_customEvent(self.h, event.h)

type QQuickPaintedItemcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_customEvent(self: ptr cQQuickPaintedItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_customEvent ".} =
  type Cb = proc(super: QQuickPaintedItemcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QQuickPaintedItem(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QQuickPaintedItem, signal: gen_qmetaobject.QMetaMethod): void =


  fQQuickPaintedItem_virtualbase_connectNotify(self.h, signal.h)

type QQuickPaintedItemconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_connectNotify(self: ptr cQQuickPaintedItem, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_connectNotify ".} =
  type Cb = proc(super: QQuickPaintedItemconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QQuickPaintedItem(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QQuickPaintedItem, signal: gen_qmetaobject.QMetaMethod): void =


  fQQuickPaintedItem_virtualbase_disconnectNotify(self.h, signal.h)

type QQuickPaintedItemdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QQuickPaintedItem, slot: proc(super: QQuickPaintedItemdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickPaintedItemdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickPaintedItem_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickPaintedItem_disconnectNotify(self: ptr cQQuickPaintedItem, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickPaintedItem_disconnectNotify ".} =
  type Cb = proc(super: QQuickPaintedItemdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QQuickPaintedItem(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QQuickPaintedItem) =
  fcQQuickPaintedItem_delete(self.h)
