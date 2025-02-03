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
{.compile("gen_qquickframebufferobject.cpp", cflags).}


import gen_qquickframebufferobject_types
export gen_qquickframebufferobject_types

import
  gen_qcoreevent,
  gen_qevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpoint,
  gen_qquickitem,
  gen_qrect,
  gen_qsgnode,
  gen_qsgtextureprovider,
  gen_qvariant
export
  gen_qcoreevent,
  gen_qevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpoint,
  gen_qquickitem,
  gen_qrect,
  gen_qsgnode,
  gen_qsgtextureprovider,
  gen_qvariant

type cQQuickFramebufferObject*{.exportc: "QQuickFramebufferObject", incompleteStruct.} = object
type cQQuickFramebufferObjectRenderer*{.exportc: "QQuickFramebufferObject__Renderer", incompleteStruct.} = object

proc fcQQuickFramebufferObject_new(): ptr cQQuickFramebufferObject {.importc: "QQuickFramebufferObject_new".}
proc fcQQuickFramebufferObject_new2(parent: pointer): ptr cQQuickFramebufferObject {.importc: "QQuickFramebufferObject_new2".}
proc fcQQuickFramebufferObject_metaObject(self: pointer, ): pointer {.importc: "QQuickFramebufferObject_metaObject".}
proc fcQQuickFramebufferObject_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickFramebufferObject_metacast".}
proc fcQQuickFramebufferObject_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickFramebufferObject_metacall".}
proc fcQQuickFramebufferObject_tr(s: cstring): struct_miqt_string {.importc: "QQuickFramebufferObject_tr".}
proc fcQQuickFramebufferObject_trUtf8(s: cstring): struct_miqt_string {.importc: "QQuickFramebufferObject_trUtf8".}
proc fcQQuickFramebufferObject_textureFollowsItemSize(self: pointer, ): bool {.importc: "QQuickFramebufferObject_textureFollowsItemSize".}
proc fcQQuickFramebufferObject_setTextureFollowsItemSize(self: pointer, follows: bool): void {.importc: "QQuickFramebufferObject_setTextureFollowsItemSize".}
proc fcQQuickFramebufferObject_mirrorVertically(self: pointer, ): bool {.importc: "QQuickFramebufferObject_mirrorVertically".}
proc fcQQuickFramebufferObject_setMirrorVertically(self: pointer, enable: bool): void {.importc: "QQuickFramebufferObject_setMirrorVertically".}
proc fcQQuickFramebufferObject_createRenderer(self: pointer, ): pointer {.importc: "QQuickFramebufferObject_createRenderer".}
proc fcQQuickFramebufferObject_isTextureProvider(self: pointer, ): bool {.importc: "QQuickFramebufferObject_isTextureProvider".}
proc fcQQuickFramebufferObject_textureProvider(self: pointer, ): pointer {.importc: "QQuickFramebufferObject_textureProvider".}
proc fcQQuickFramebufferObject_releaseResources(self: pointer, ): void {.importc: "QQuickFramebufferObject_releaseResources".}
proc fcQQuickFramebufferObject_textureFollowsItemSizeChanged(self: pointer, param1: bool): void {.importc: "QQuickFramebufferObject_textureFollowsItemSizeChanged".}
proc fQQuickFramebufferObject_connect_textureFollowsItemSizeChanged(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_connect_textureFollowsItemSizeChanged".}
proc fcQQuickFramebufferObject_mirrorVerticallyChanged(self: pointer, param1: bool): void {.importc: "QQuickFramebufferObject_mirrorVerticallyChanged".}
proc fQQuickFramebufferObject_connect_mirrorVerticallyChanged(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_connect_mirrorVerticallyChanged".}
proc fcQQuickFramebufferObject_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickFramebufferObject_tr2".}
proc fcQQuickFramebufferObject_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickFramebufferObject_tr3".}
proc fcQQuickFramebufferObject_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickFramebufferObject_trUtf82".}
proc fcQQuickFramebufferObject_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickFramebufferObject_trUtf83".}
proc fQQuickFramebufferObject_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQuickFramebufferObject_virtualbase_metacall".}
proc fcQQuickFramebufferObject_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_metacall".}
proc fcQQuickFramebufferObject_override_virtual_createRenderer(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_createRenderer".}
proc fQQuickFramebufferObject_virtualbase_isTextureProvider(self: pointer, ): bool{.importc: "QQuickFramebufferObject_virtualbase_isTextureProvider".}
proc fcQQuickFramebufferObject_override_virtual_isTextureProvider(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_isTextureProvider".}
proc fQQuickFramebufferObject_virtualbase_textureProvider(self: pointer, ): pointer{.importc: "QQuickFramebufferObject_virtualbase_textureProvider".}
proc fcQQuickFramebufferObject_override_virtual_textureProvider(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_textureProvider".}
proc fQQuickFramebufferObject_virtualbase_releaseResources(self: pointer, ): void{.importc: "QQuickFramebufferObject_virtualbase_releaseResources".}
proc fcQQuickFramebufferObject_override_virtual_releaseResources(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_releaseResources".}
proc fQQuickFramebufferObject_virtualbase_geometryChanged(self: pointer, newGeometry: pointer, oldGeometry: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_geometryChanged".}
proc fcQQuickFramebufferObject_override_virtual_geometryChanged(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_geometryChanged".}
proc fQQuickFramebufferObject_virtualbase_updatePaintNode(self: pointer, param1: pointer, param2: pointer): pointer{.importc: "QQuickFramebufferObject_virtualbase_updatePaintNode".}
proc fcQQuickFramebufferObject_override_virtual_updatePaintNode(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_updatePaintNode".}
proc fQQuickFramebufferObject_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QQuickFramebufferObject_virtualbase_boundingRect".}
proc fcQQuickFramebufferObject_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_boundingRect".}
proc fQQuickFramebufferObject_virtualbase_clipRect(self: pointer, ): pointer{.importc: "QQuickFramebufferObject_virtualbase_clipRect".}
proc fcQQuickFramebufferObject_override_virtual_clipRect(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_clipRect".}
proc fQQuickFramebufferObject_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QQuickFramebufferObject_virtualbase_contains".}
proc fcQQuickFramebufferObject_override_virtual_contains(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_contains".}
proc fQQuickFramebufferObject_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QQuickFramebufferObject_virtualbase_inputMethodQuery".}
proc fcQQuickFramebufferObject_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_inputMethodQuery".}
proc fQQuickFramebufferObject_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QQuickFramebufferObject_virtualbase_event".}
proc fcQQuickFramebufferObject_override_virtual_event(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_event".}
proc fQQuickFramebufferObject_virtualbase_itemChange(self: pointer, param1: cint, param2: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_itemChange".}
proc fcQQuickFramebufferObject_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_itemChange".}
proc fQQuickFramebufferObject_virtualbase_classBegin(self: pointer, ): void{.importc: "QQuickFramebufferObject_virtualbase_classBegin".}
proc fcQQuickFramebufferObject_override_virtual_classBegin(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_classBegin".}
proc fQQuickFramebufferObject_virtualbase_componentComplete(self: pointer, ): void{.importc: "QQuickFramebufferObject_virtualbase_componentComplete".}
proc fcQQuickFramebufferObject_override_virtual_componentComplete(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_componentComplete".}
proc fQQuickFramebufferObject_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_keyPressEvent".}
proc fcQQuickFramebufferObject_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_keyPressEvent".}
proc fQQuickFramebufferObject_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_keyReleaseEvent".}
proc fcQQuickFramebufferObject_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_keyReleaseEvent".}
proc fQQuickFramebufferObject_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_inputMethodEvent".}
proc fcQQuickFramebufferObject_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_inputMethodEvent".}
proc fQQuickFramebufferObject_virtualbase_focusInEvent(self: pointer, param1: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_focusInEvent".}
proc fcQQuickFramebufferObject_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_focusInEvent".}
proc fQQuickFramebufferObject_virtualbase_focusOutEvent(self: pointer, param1: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_focusOutEvent".}
proc fcQQuickFramebufferObject_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_focusOutEvent".}
proc fQQuickFramebufferObject_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_mousePressEvent".}
proc fcQQuickFramebufferObject_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_mousePressEvent".}
proc fQQuickFramebufferObject_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_mouseMoveEvent".}
proc fcQQuickFramebufferObject_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_mouseMoveEvent".}
proc fQQuickFramebufferObject_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_mouseReleaseEvent".}
proc fcQQuickFramebufferObject_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_mouseReleaseEvent".}
proc fQQuickFramebufferObject_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_mouseDoubleClickEvent".}
proc fcQQuickFramebufferObject_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_mouseDoubleClickEvent".}
proc fQQuickFramebufferObject_virtualbase_mouseUngrabEvent(self: pointer, ): void{.importc: "QQuickFramebufferObject_virtualbase_mouseUngrabEvent".}
proc fcQQuickFramebufferObject_override_virtual_mouseUngrabEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_mouseUngrabEvent".}
proc fQQuickFramebufferObject_virtualbase_touchUngrabEvent(self: pointer, ): void{.importc: "QQuickFramebufferObject_virtualbase_touchUngrabEvent".}
proc fcQQuickFramebufferObject_override_virtual_touchUngrabEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_touchUngrabEvent".}
proc fQQuickFramebufferObject_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_wheelEvent".}
proc fcQQuickFramebufferObject_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_wheelEvent".}
proc fQQuickFramebufferObject_virtualbase_touchEvent(self: pointer, event: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_touchEvent".}
proc fcQQuickFramebufferObject_override_virtual_touchEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_touchEvent".}
proc fQQuickFramebufferObject_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_hoverEnterEvent".}
proc fcQQuickFramebufferObject_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_hoverEnterEvent".}
proc fQQuickFramebufferObject_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_hoverMoveEvent".}
proc fcQQuickFramebufferObject_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_hoverMoveEvent".}
proc fQQuickFramebufferObject_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_hoverLeaveEvent".}
proc fcQQuickFramebufferObject_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_hoverLeaveEvent".}
proc fQQuickFramebufferObject_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_dragEnterEvent".}
proc fcQQuickFramebufferObject_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_dragEnterEvent".}
proc fQQuickFramebufferObject_virtualbase_dragMoveEvent(self: pointer, param1: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_dragMoveEvent".}
proc fcQQuickFramebufferObject_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_dragMoveEvent".}
proc fQQuickFramebufferObject_virtualbase_dragLeaveEvent(self: pointer, param1: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_dragLeaveEvent".}
proc fcQQuickFramebufferObject_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_dragLeaveEvent".}
proc fQQuickFramebufferObject_virtualbase_dropEvent(self: pointer, param1: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_dropEvent".}
proc fcQQuickFramebufferObject_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_dropEvent".}
proc fQQuickFramebufferObject_virtualbase_childMouseEventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QQuickFramebufferObject_virtualbase_childMouseEventFilter".}
proc fcQQuickFramebufferObject_override_virtual_childMouseEventFilter(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_childMouseEventFilter".}
proc fQQuickFramebufferObject_virtualbase_windowDeactivateEvent(self: pointer, ): void{.importc: "QQuickFramebufferObject_virtualbase_windowDeactivateEvent".}
proc fcQQuickFramebufferObject_override_virtual_windowDeactivateEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_windowDeactivateEvent".}
proc fQQuickFramebufferObject_virtualbase_updatePolish(self: pointer, ): void{.importc: "QQuickFramebufferObject_virtualbase_updatePolish".}
proc fcQQuickFramebufferObject_override_virtual_updatePolish(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_updatePolish".}
proc fQQuickFramebufferObject_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQuickFramebufferObject_virtualbase_eventFilter".}
proc fcQQuickFramebufferObject_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_eventFilter".}
proc fQQuickFramebufferObject_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_timerEvent".}
proc fcQQuickFramebufferObject_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_timerEvent".}
proc fQQuickFramebufferObject_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_childEvent".}
proc fcQQuickFramebufferObject_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_childEvent".}
proc fQQuickFramebufferObject_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_customEvent".}
proc fcQQuickFramebufferObject_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_customEvent".}
proc fQQuickFramebufferObject_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_connectNotify".}
proc fcQQuickFramebufferObject_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_connectNotify".}
proc fQQuickFramebufferObject_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQuickFramebufferObject_virtualbase_disconnectNotify".}
proc fcQQuickFramebufferObject_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQuickFramebufferObject_override_virtual_disconnectNotify".}
proc fcQQuickFramebufferObject_delete(self: pointer) {.importc: "QQuickFramebufferObject_delete".}


func init*(T: type QQuickFramebufferObject, h: ptr cQQuickFramebufferObject): QQuickFramebufferObject =
  T(h: h)
proc create*(T: type QQuickFramebufferObject, ): QQuickFramebufferObject =

  QQuickFramebufferObject.init(fcQQuickFramebufferObject_new())
proc create*(T: type QQuickFramebufferObject, parent: gen_qquickitem.QQuickItem): QQuickFramebufferObject =

  QQuickFramebufferObject.init(fcQQuickFramebufferObject_new2(parent.h))
proc metaObject*(self: QQuickFramebufferObject, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQQuickFramebufferObject_metaObject(self.h))

proc metacast*(self: QQuickFramebufferObject, param1: cstring): pointer =

  fcQQuickFramebufferObject_metacast(self.h, param1)

proc metacall*(self: QQuickFramebufferObject, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQQuickFramebufferObject_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QQuickFramebufferObject, s: cstring): string =

  let v_ms = fcQQuickFramebufferObject_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QQuickFramebufferObject, s: cstring): string =

  let v_ms = fcQQuickFramebufferObject_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc textureFollowsItemSize*(self: QQuickFramebufferObject, ): bool =

  fcQQuickFramebufferObject_textureFollowsItemSize(self.h)

proc setTextureFollowsItemSize*(self: QQuickFramebufferObject, follows: bool): void =

  fcQQuickFramebufferObject_setTextureFollowsItemSize(self.h, follows)

proc mirrorVertically*(self: QQuickFramebufferObject, ): bool =

  fcQQuickFramebufferObject_mirrorVertically(self.h)

proc setMirrorVertically*(self: QQuickFramebufferObject, enable: bool): void =

  fcQQuickFramebufferObject_setMirrorVertically(self.h, enable)

proc createRenderer*(self: QQuickFramebufferObject, ): QQuickFramebufferObjectRenderer =

  QQuickFramebufferObjectRenderer(h: fcQQuickFramebufferObject_createRenderer(self.h))

proc isTextureProvider*(self: QQuickFramebufferObject, ): bool =

  fcQQuickFramebufferObject_isTextureProvider(self.h)

proc textureProvider*(self: QQuickFramebufferObject, ): gen_qsgtextureprovider.QSGTextureProvider =

  gen_qsgtextureprovider.QSGTextureProvider(h: fcQQuickFramebufferObject_textureProvider(self.h))

proc releaseResources*(self: QQuickFramebufferObject, ): void =

  fcQQuickFramebufferObject_releaseResources(self.h)

proc textureFollowsItemSizeChanged*(self: QQuickFramebufferObject, param1: bool): void =

  fcQQuickFramebufferObject_textureFollowsItemSizeChanged(self.h, param1)

proc miqt_exec_callback_QQuickFramebufferObject_textureFollowsItemSizeChanged(slot: int, param1: bool) {.exportc.} =
  type Cb = proc(param1: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc ontextureFollowsItemSizeChanged*(self: QQuickFramebufferObject, slot: proc(param1: bool)) =
  type Cb = proc(param1: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickFramebufferObject_connect_textureFollowsItemSizeChanged(self.h, cast[int](addr tmp[]))
proc mirrorVerticallyChanged*(self: QQuickFramebufferObject, param1: bool): void =

  fcQQuickFramebufferObject_mirrorVerticallyChanged(self.h, param1)

proc miqt_exec_callback_QQuickFramebufferObject_mirrorVerticallyChanged(slot: int, param1: bool) {.exportc.} =
  type Cb = proc(param1: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onmirrorVerticallyChanged*(self: QQuickFramebufferObject, slot: proc(param1: bool)) =
  type Cb = proc(param1: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickFramebufferObject_connect_mirrorVerticallyChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QQuickFramebufferObject, s: cstring, c: cstring): string =

  let v_ms = fcQQuickFramebufferObject_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QQuickFramebufferObject, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQuickFramebufferObject_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QQuickFramebufferObject, s: cstring, c: cstring): string =

  let v_ms = fcQQuickFramebufferObject_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QQuickFramebufferObject, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQuickFramebufferObject_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QQuickFramebufferObject, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQQuickFramebufferObject_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQuickFramebufferObjectmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_metacall(self: ptr cQQuickFramebufferObject, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQuickFramebufferObject_metacall ".} =
  type Cb = proc(super: QQuickFramebufferObjectmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QQuickFramebufferObject(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QQuickFramebufferObjectcreateRendererBase* = proc(): QQuickFramebufferObjectRenderer
proc oncreateRenderer*(self: QQuickFramebufferObject, slot: proc(): QQuickFramebufferObjectRenderer) =
  # TODO check subclass
  type Cb = proc(): QQuickFramebufferObjectRenderer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_createRenderer(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_createRenderer(self: ptr cQQuickFramebufferObject, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickFramebufferObject_createRenderer ".} =
  type Cb = proc(): QQuickFramebufferObjectRenderer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc callVirtualBase_isTextureProvider(self: QQuickFramebufferObject, ): bool =


  fQQuickFramebufferObject_virtualbase_isTextureProvider(self.h)

type QQuickFramebufferObjectisTextureProviderBase* = proc(): bool
proc onisTextureProvider*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectisTextureProviderBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectisTextureProviderBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_isTextureProvider(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_isTextureProvider(self: ptr cQQuickFramebufferObject, slot: int): bool {.exportc: "miqt_exec_callback_QQuickFramebufferObject_isTextureProvider ".} =
  type Cb = proc(super: QQuickFramebufferObjectisTextureProviderBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isTextureProvider(QQuickFramebufferObject(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_textureProvider(self: QQuickFramebufferObject, ): gen_qsgtextureprovider.QSGTextureProvider =


  gen_qsgtextureprovider.QSGTextureProvider(h: fQQuickFramebufferObject_virtualbase_textureProvider(self.h))

type QQuickFramebufferObjecttextureProviderBase* = proc(): gen_qsgtextureprovider.QSGTextureProvider
proc ontextureProvider*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjecttextureProviderBase): gen_qsgtextureprovider.QSGTextureProvider) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjecttextureProviderBase): gen_qsgtextureprovider.QSGTextureProvider
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_textureProvider(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_textureProvider(self: ptr cQQuickFramebufferObject, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickFramebufferObject_textureProvider ".} =
  type Cb = proc(super: QQuickFramebufferObjecttextureProviderBase): gen_qsgtextureprovider.QSGTextureProvider
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_textureProvider(QQuickFramebufferObject(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_releaseResources(self: QQuickFramebufferObject, ): void =


  fQQuickFramebufferObject_virtualbase_releaseResources(self.h)

type QQuickFramebufferObjectreleaseResourcesBase* = proc(): void
proc onreleaseResources*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectreleaseResourcesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectreleaseResourcesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_releaseResources(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_releaseResources(self: ptr cQQuickFramebufferObject, slot: int): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_releaseResources ".} =
  type Cb = proc(super: QQuickFramebufferObjectreleaseResourcesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_releaseResources(QQuickFramebufferObject(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_geometryChanged(self: QQuickFramebufferObject, newGeometry: gen_qrect.QRectF, oldGeometry: gen_qrect.QRectF): void =


  fQQuickFramebufferObject_virtualbase_geometryChanged(self.h, newGeometry.h, oldGeometry.h)

type QQuickFramebufferObjectgeometryChangedBase* = proc(newGeometry: gen_qrect.QRectF, oldGeometry: gen_qrect.QRectF): void
proc ongeometryChanged*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectgeometryChangedBase, newGeometry: gen_qrect.QRectF, oldGeometry: gen_qrect.QRectF): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectgeometryChangedBase, newGeometry: gen_qrect.QRectF, oldGeometry: gen_qrect.QRectF): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_geometryChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_geometryChanged(self: ptr cQQuickFramebufferObject, slot: int, newGeometry: pointer, oldGeometry: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_geometryChanged ".} =
  type Cb = proc(super: QQuickFramebufferObjectgeometryChangedBase, newGeometry: gen_qrect.QRectF, oldGeometry: gen_qrect.QRectF): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(newGeometry: gen_qrect.QRectF, oldGeometry: gen_qrect.QRectF): auto =
    callVirtualBase_geometryChanged(QQuickFramebufferObject(h: self), newGeometry, oldGeometry)
  let slotval1 = gen_qrect.QRectF(h: newGeometry)

  let slotval2 = gen_qrect.QRectF(h: oldGeometry)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_updatePaintNode(self: QQuickFramebufferObject, param1: gen_qsgnode.QSGNode, param2: gen_qquickitem.QQuickItemUpdatePaintNodeData): gen_qsgnode.QSGNode =


  gen_qsgnode.QSGNode(h: fQQuickFramebufferObject_virtualbase_updatePaintNode(self.h, param1.h, param2.h))

type QQuickFramebufferObjectupdatePaintNodeBase* = proc(param1: gen_qsgnode.QSGNode, param2: gen_qquickitem.QQuickItemUpdatePaintNodeData): gen_qsgnode.QSGNode
proc onupdatePaintNode*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectupdatePaintNodeBase, param1: gen_qsgnode.QSGNode, param2: gen_qquickitem.QQuickItemUpdatePaintNodeData): gen_qsgnode.QSGNode) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectupdatePaintNodeBase, param1: gen_qsgnode.QSGNode, param2: gen_qquickitem.QQuickItemUpdatePaintNodeData): gen_qsgnode.QSGNode
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_updatePaintNode(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_updatePaintNode(self: ptr cQQuickFramebufferObject, slot: int, param1: pointer, param2: pointer): pointer {.exportc: "miqt_exec_callback_QQuickFramebufferObject_updatePaintNode ".} =
  type Cb = proc(super: QQuickFramebufferObjectupdatePaintNodeBase, param1: gen_qsgnode.QSGNode, param2: gen_qquickitem.QQuickItemUpdatePaintNodeData): gen_qsgnode.QSGNode
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qsgnode.QSGNode, param2: gen_qquickitem.QQuickItemUpdatePaintNodeData): auto =
    callVirtualBase_updatePaintNode(QQuickFramebufferObject(h: self), param1, param2)
  let slotval1 = gen_qsgnode.QSGNode(h: param1)

  let slotval2 = gen_qquickitem.QQuickItemUpdatePaintNodeData(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_boundingRect(self: QQuickFramebufferObject, ): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQQuickFramebufferObject_virtualbase_boundingRect(self.h))

type QQuickFramebufferObjectboundingRectBase* = proc(): gen_qrect.QRectF
proc onboundingRect*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectboundingRectBase): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectboundingRectBase): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_boundingRect(self: ptr cQQuickFramebufferObject, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickFramebufferObject_boundingRect ".} =
  type Cb = proc(super: QQuickFramebufferObjectboundingRectBase): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_boundingRect(QQuickFramebufferObject(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_clipRect(self: QQuickFramebufferObject, ): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQQuickFramebufferObject_virtualbase_clipRect(self.h))

type QQuickFramebufferObjectclipRectBase* = proc(): gen_qrect.QRectF
proc onclipRect*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectclipRectBase): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectclipRectBase): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_clipRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_clipRect(self: ptr cQQuickFramebufferObject, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickFramebufferObject_clipRect ".} =
  type Cb = proc(super: QQuickFramebufferObjectclipRectBase): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clipRect(QQuickFramebufferObject(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_contains(self: QQuickFramebufferObject, point: gen_qpoint.QPointF): bool =


  fQQuickFramebufferObject_virtualbase_contains(self.h, point.h)

type QQuickFramebufferObjectcontainsBase* = proc(point: gen_qpoint.QPointF): bool
proc oncontains*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectcontainsBase, point: gen_qpoint.QPointF): bool) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectcontainsBase, point: gen_qpoint.QPointF): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_contains(self: ptr cQQuickFramebufferObject, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QQuickFramebufferObject_contains ".} =
  type Cb = proc(super: QQuickFramebufferObjectcontainsBase, point: gen_qpoint.QPointF): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(point: gen_qpoint.QPointF): auto =
    callVirtualBase_contains(QQuickFramebufferObject(h: self), point)
  let slotval1 = gen_qpoint.QPointF(h: point)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_inputMethodQuery(self: QQuickFramebufferObject, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQQuickFramebufferObject_virtualbase_inputMethodQuery(self.h, cint(query)))

type QQuickFramebufferObjectinputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_inputMethodQuery(self: ptr cQQuickFramebufferObject, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QQuickFramebufferObject_inputMethodQuery ".} =
  type Cb = proc(super: QQuickFramebufferObjectinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QQuickFramebufferObject(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_event(self: QQuickFramebufferObject, param1: gen_qcoreevent.QEvent): bool =


  fQQuickFramebufferObject_virtualbase_event(self.h, param1.h)

type QQuickFramebufferObjecteventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjecteventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjecteventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_event(self: ptr cQQuickFramebufferObject, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QQuickFramebufferObject_event ".} =
  type Cb = proc(super: QQuickFramebufferObjecteventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QQuickFramebufferObject(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_itemChange(self: QQuickFramebufferObject, param1: gen_qquickitem.QQuickItemItemChange, param2: gen_qquickitem.QQuickItemItemChangeData): void =


  fQQuickFramebufferObject_virtualbase_itemChange(self.h, cint(param1), param2.h)

type QQuickFramebufferObjectitemChangeBase* = proc(param1: gen_qquickitem.QQuickItemItemChange, param2: gen_qquickitem.QQuickItemItemChangeData): void
proc onitemChange*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectitemChangeBase, param1: gen_qquickitem.QQuickItemItemChange, param2: gen_qquickitem.QQuickItemItemChangeData): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectitemChangeBase, param1: gen_qquickitem.QQuickItemItemChange, param2: gen_qquickitem.QQuickItemItemChangeData): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_itemChange(self: ptr cQQuickFramebufferObject, slot: int, param1: cint, param2: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_itemChange ".} =
  type Cb = proc(super: QQuickFramebufferObjectitemChangeBase, param1: gen_qquickitem.QQuickItemItemChange, param2: gen_qquickitem.QQuickItemItemChangeData): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qquickitem.QQuickItemItemChange, param2: gen_qquickitem.QQuickItemItemChangeData): auto =
    callVirtualBase_itemChange(QQuickFramebufferObject(h: self), param1, param2)
  let slotval1 = gen_qquickitem.QQuickItemItemChange(param1)

  let slotval2 = gen_qquickitem.QQuickItemItemChangeData(h: param2)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_classBegin(self: QQuickFramebufferObject, ): void =


  fQQuickFramebufferObject_virtualbase_classBegin(self.h)

type QQuickFramebufferObjectclassBeginBase* = proc(): void
proc onclassBegin*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectclassBeginBase): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectclassBeginBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_classBegin(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_classBegin(self: ptr cQQuickFramebufferObject, slot: int): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_classBegin ".} =
  type Cb = proc(super: QQuickFramebufferObjectclassBeginBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_classBegin(QQuickFramebufferObject(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_componentComplete(self: QQuickFramebufferObject, ): void =


  fQQuickFramebufferObject_virtualbase_componentComplete(self.h)

type QQuickFramebufferObjectcomponentCompleteBase* = proc(): void
proc oncomponentComplete*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectcomponentCompleteBase): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectcomponentCompleteBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_componentComplete(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_componentComplete(self: ptr cQQuickFramebufferObject, slot: int): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_componentComplete ".} =
  type Cb = proc(super: QQuickFramebufferObjectcomponentCompleteBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_componentComplete(QQuickFramebufferObject(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_keyPressEvent(self: QQuickFramebufferObject, event: gen_qevent.QKeyEvent): void =


  fQQuickFramebufferObject_virtualbase_keyPressEvent(self.h, event.h)

type QQuickFramebufferObjectkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_keyPressEvent(self: ptr cQQuickFramebufferObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_keyPressEvent ".} =
  type Cb = proc(super: QQuickFramebufferObjectkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QQuickFramebufferObject(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QQuickFramebufferObject, event: gen_qevent.QKeyEvent): void =


  fQQuickFramebufferObject_virtualbase_keyReleaseEvent(self.h, event.h)

type QQuickFramebufferObjectkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_keyReleaseEvent(self: ptr cQQuickFramebufferObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_keyReleaseEvent ".} =
  type Cb = proc(super: QQuickFramebufferObjectkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QQuickFramebufferObject(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QQuickFramebufferObject, param1: gen_qevent.QInputMethodEvent): void =


  fQQuickFramebufferObject_virtualbase_inputMethodEvent(self.h, param1.h)

type QQuickFramebufferObjectinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_inputMethodEvent(self: ptr cQQuickFramebufferObject, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_inputMethodEvent ".} =
  type Cb = proc(super: QQuickFramebufferObjectinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QQuickFramebufferObject(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QQuickFramebufferObject, param1: gen_qevent.QFocusEvent): void =


  fQQuickFramebufferObject_virtualbase_focusInEvent(self.h, param1.h)

type QQuickFramebufferObjectfocusInEventBase* = proc(param1: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectfocusInEventBase, param1: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectfocusInEventBase, param1: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_focusInEvent(self: ptr cQQuickFramebufferObject, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_focusInEvent ".} =
  type Cb = proc(super: QQuickFramebufferObjectfocusInEventBase, param1: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QQuickFramebufferObject(h: self), param1)
  let slotval1 = gen_qevent.QFocusEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QQuickFramebufferObject, param1: gen_qevent.QFocusEvent): void =


  fQQuickFramebufferObject_virtualbase_focusOutEvent(self.h, param1.h)

type QQuickFramebufferObjectfocusOutEventBase* = proc(param1: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectfocusOutEventBase, param1: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectfocusOutEventBase, param1: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_focusOutEvent(self: ptr cQQuickFramebufferObject, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_focusOutEvent ".} =
  type Cb = proc(super: QQuickFramebufferObjectfocusOutEventBase, param1: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QQuickFramebufferObject(h: self), param1)
  let slotval1 = gen_qevent.QFocusEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QQuickFramebufferObject, event: gen_qevent.QMouseEvent): void =


  fQQuickFramebufferObject_virtualbase_mousePressEvent(self.h, event.h)

type QQuickFramebufferObjectmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_mousePressEvent(self: ptr cQQuickFramebufferObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_mousePressEvent ".} =
  type Cb = proc(super: QQuickFramebufferObjectmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QQuickFramebufferObject(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QQuickFramebufferObject, event: gen_qevent.QMouseEvent): void =


  fQQuickFramebufferObject_virtualbase_mouseMoveEvent(self.h, event.h)

type QQuickFramebufferObjectmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_mouseMoveEvent(self: ptr cQQuickFramebufferObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_mouseMoveEvent ".} =
  type Cb = proc(super: QQuickFramebufferObjectmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QQuickFramebufferObject(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QQuickFramebufferObject, event: gen_qevent.QMouseEvent): void =


  fQQuickFramebufferObject_virtualbase_mouseReleaseEvent(self.h, event.h)

type QQuickFramebufferObjectmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_mouseReleaseEvent(self: ptr cQQuickFramebufferObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_mouseReleaseEvent ".} =
  type Cb = proc(super: QQuickFramebufferObjectmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QQuickFramebufferObject(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QQuickFramebufferObject, event: gen_qevent.QMouseEvent): void =


  fQQuickFramebufferObject_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QQuickFramebufferObjectmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_mouseDoubleClickEvent(self: ptr cQQuickFramebufferObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QQuickFramebufferObjectmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QQuickFramebufferObject(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseUngrabEvent(self: QQuickFramebufferObject, ): void =


  fQQuickFramebufferObject_virtualbase_mouseUngrabEvent(self.h)

type QQuickFramebufferObjectmouseUngrabEventBase* = proc(): void
proc onmouseUngrabEvent*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectmouseUngrabEventBase): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectmouseUngrabEventBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_mouseUngrabEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_mouseUngrabEvent(self: ptr cQQuickFramebufferObject, slot: int): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_mouseUngrabEvent ".} =
  type Cb = proc(super: QQuickFramebufferObjectmouseUngrabEventBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_mouseUngrabEvent(QQuickFramebufferObject(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_touchUngrabEvent(self: QQuickFramebufferObject, ): void =


  fQQuickFramebufferObject_virtualbase_touchUngrabEvent(self.h)

type QQuickFramebufferObjecttouchUngrabEventBase* = proc(): void
proc ontouchUngrabEvent*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjecttouchUngrabEventBase): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjecttouchUngrabEventBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_touchUngrabEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_touchUngrabEvent(self: ptr cQQuickFramebufferObject, slot: int): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_touchUngrabEvent ".} =
  type Cb = proc(super: QQuickFramebufferObjecttouchUngrabEventBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_touchUngrabEvent(QQuickFramebufferObject(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_wheelEvent(self: QQuickFramebufferObject, event: gen_qevent.QWheelEvent): void =


  fQQuickFramebufferObject_virtualbase_wheelEvent(self.h, event.h)

type QQuickFramebufferObjectwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_wheelEvent(self: ptr cQQuickFramebufferObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_wheelEvent ".} =
  type Cb = proc(super: QQuickFramebufferObjectwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QQuickFramebufferObject(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_touchEvent(self: QQuickFramebufferObject, event: gen_qevent.QTouchEvent): void =


  fQQuickFramebufferObject_virtualbase_touchEvent(self.h, event.h)

type QQuickFramebufferObjecttouchEventBase* = proc(event: gen_qevent.QTouchEvent): void
proc ontouchEvent*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjecttouchEventBase, event: gen_qevent.QTouchEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjecttouchEventBase, event: gen_qevent.QTouchEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_touchEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_touchEvent(self: ptr cQQuickFramebufferObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_touchEvent ".} =
  type Cb = proc(super: QQuickFramebufferObjecttouchEventBase, event: gen_qevent.QTouchEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTouchEvent): auto =
    callVirtualBase_touchEvent(QQuickFramebufferObject(h: self), event)
  let slotval1 = gen_qevent.QTouchEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverEnterEvent(self: QQuickFramebufferObject, event: gen_qevent.QHoverEvent): void =


  fQQuickFramebufferObject_virtualbase_hoverEnterEvent(self.h, event.h)

type QQuickFramebufferObjecthoverEnterEventBase* = proc(event: gen_qevent.QHoverEvent): void
proc onhoverEnterEvent*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjecthoverEnterEventBase, event: gen_qevent.QHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjecthoverEnterEventBase, event: gen_qevent.QHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_hoverEnterEvent(self: ptr cQQuickFramebufferObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_hoverEnterEvent ".} =
  type Cb = proc(super: QQuickFramebufferObjecthoverEnterEventBase, event: gen_qevent.QHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHoverEvent): auto =
    callVirtualBase_hoverEnterEvent(QQuickFramebufferObject(h: self), event)
  let slotval1 = gen_qevent.QHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverMoveEvent(self: QQuickFramebufferObject, event: gen_qevent.QHoverEvent): void =


  fQQuickFramebufferObject_virtualbase_hoverMoveEvent(self.h, event.h)

type QQuickFramebufferObjecthoverMoveEventBase* = proc(event: gen_qevent.QHoverEvent): void
proc onhoverMoveEvent*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjecthoverMoveEventBase, event: gen_qevent.QHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjecthoverMoveEventBase, event: gen_qevent.QHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_hoverMoveEvent(self: ptr cQQuickFramebufferObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_hoverMoveEvent ".} =
  type Cb = proc(super: QQuickFramebufferObjecthoverMoveEventBase, event: gen_qevent.QHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHoverEvent): auto =
    callVirtualBase_hoverMoveEvent(QQuickFramebufferObject(h: self), event)
  let slotval1 = gen_qevent.QHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverLeaveEvent(self: QQuickFramebufferObject, event: gen_qevent.QHoverEvent): void =


  fQQuickFramebufferObject_virtualbase_hoverLeaveEvent(self.h, event.h)

type QQuickFramebufferObjecthoverLeaveEventBase* = proc(event: gen_qevent.QHoverEvent): void
proc onhoverLeaveEvent*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjecthoverLeaveEventBase, event: gen_qevent.QHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjecthoverLeaveEventBase, event: gen_qevent.QHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_hoverLeaveEvent(self: ptr cQQuickFramebufferObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_hoverLeaveEvent ".} =
  type Cb = proc(super: QQuickFramebufferObjecthoverLeaveEventBase, event: gen_qevent.QHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHoverEvent): auto =
    callVirtualBase_hoverLeaveEvent(QQuickFramebufferObject(h: self), event)
  let slotval1 = gen_qevent.QHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QQuickFramebufferObject, param1: gen_qevent.QDragEnterEvent): void =


  fQQuickFramebufferObject_virtualbase_dragEnterEvent(self.h, param1.h)

type QQuickFramebufferObjectdragEnterEventBase* = proc(param1: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectdragEnterEventBase, param1: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectdragEnterEventBase, param1: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_dragEnterEvent(self: ptr cQQuickFramebufferObject, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_dragEnterEvent ".} =
  type Cb = proc(super: QQuickFramebufferObjectdragEnterEventBase, param1: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QQuickFramebufferObject(h: self), param1)
  let slotval1 = gen_qevent.QDragEnterEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QQuickFramebufferObject, param1: gen_qevent.QDragMoveEvent): void =


  fQQuickFramebufferObject_virtualbase_dragMoveEvent(self.h, param1.h)

type QQuickFramebufferObjectdragMoveEventBase* = proc(param1: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectdragMoveEventBase, param1: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectdragMoveEventBase, param1: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_dragMoveEvent(self: ptr cQQuickFramebufferObject, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_dragMoveEvent ".} =
  type Cb = proc(super: QQuickFramebufferObjectdragMoveEventBase, param1: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QQuickFramebufferObject(h: self), param1)
  let slotval1 = gen_qevent.QDragMoveEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QQuickFramebufferObject, param1: gen_qevent.QDragLeaveEvent): void =


  fQQuickFramebufferObject_virtualbase_dragLeaveEvent(self.h, param1.h)

type QQuickFramebufferObjectdragLeaveEventBase* = proc(param1: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectdragLeaveEventBase, param1: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectdragLeaveEventBase, param1: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_dragLeaveEvent(self: ptr cQQuickFramebufferObject, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_dragLeaveEvent ".} =
  type Cb = proc(super: QQuickFramebufferObjectdragLeaveEventBase, param1: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QQuickFramebufferObject(h: self), param1)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QQuickFramebufferObject, param1: gen_qevent.QDropEvent): void =


  fQQuickFramebufferObject_virtualbase_dropEvent(self.h, param1.h)

type QQuickFramebufferObjectdropEventBase* = proc(param1: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectdropEventBase, param1: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectdropEventBase, param1: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_dropEvent(self: ptr cQQuickFramebufferObject, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_dropEvent ".} =
  type Cb = proc(super: QQuickFramebufferObjectdropEventBase, param1: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QQuickFramebufferObject(h: self), param1)
  let slotval1 = gen_qevent.QDropEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childMouseEventFilter(self: QQuickFramebufferObject, param1: gen_qquickitem.QQuickItem, param2: gen_qcoreevent.QEvent): bool =


  fQQuickFramebufferObject_virtualbase_childMouseEventFilter(self.h, param1.h, param2.h)

type QQuickFramebufferObjectchildMouseEventFilterBase* = proc(param1: gen_qquickitem.QQuickItem, param2: gen_qcoreevent.QEvent): bool
proc onchildMouseEventFilter*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectchildMouseEventFilterBase, param1: gen_qquickitem.QQuickItem, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectchildMouseEventFilterBase, param1: gen_qquickitem.QQuickItem, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_childMouseEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_childMouseEventFilter(self: ptr cQQuickFramebufferObject, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QQuickFramebufferObject_childMouseEventFilter ".} =
  type Cb = proc(super: QQuickFramebufferObjectchildMouseEventFilterBase, param1: gen_qquickitem.QQuickItem, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qquickitem.QQuickItem, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_childMouseEventFilter(QQuickFramebufferObject(h: self), param1, param2)
  let slotval1 = gen_qquickitem.QQuickItem(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_windowDeactivateEvent(self: QQuickFramebufferObject, ): void =


  fQQuickFramebufferObject_virtualbase_windowDeactivateEvent(self.h)

type QQuickFramebufferObjectwindowDeactivateEventBase* = proc(): void
proc onwindowDeactivateEvent*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectwindowDeactivateEventBase): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectwindowDeactivateEventBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_windowDeactivateEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_windowDeactivateEvent(self: ptr cQQuickFramebufferObject, slot: int): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_windowDeactivateEvent ".} =
  type Cb = proc(super: QQuickFramebufferObjectwindowDeactivateEventBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_windowDeactivateEvent(QQuickFramebufferObject(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_updatePolish(self: QQuickFramebufferObject, ): void =


  fQQuickFramebufferObject_virtualbase_updatePolish(self.h)

type QQuickFramebufferObjectupdatePolishBase* = proc(): void
proc onupdatePolish*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectupdatePolishBase): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectupdatePolishBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_updatePolish(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_updatePolish(self: ptr cQQuickFramebufferObject, slot: int): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_updatePolish ".} =
  type Cb = proc(super: QQuickFramebufferObjectupdatePolishBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updatePolish(QQuickFramebufferObject(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_eventFilter(self: QQuickFramebufferObject, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQQuickFramebufferObject_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQuickFramebufferObjecteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjecteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjecteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_eventFilter(self: ptr cQQuickFramebufferObject, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickFramebufferObject_eventFilter ".} =
  type Cb = proc(super: QQuickFramebufferObjecteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QQuickFramebufferObject(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QQuickFramebufferObject, event: gen_qcoreevent.QTimerEvent): void =


  fQQuickFramebufferObject_virtualbase_timerEvent(self.h, event.h)

type QQuickFramebufferObjecttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjecttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjecttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_timerEvent(self: ptr cQQuickFramebufferObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_timerEvent ".} =
  type Cb = proc(super: QQuickFramebufferObjecttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QQuickFramebufferObject(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QQuickFramebufferObject, event: gen_qcoreevent.QChildEvent): void =


  fQQuickFramebufferObject_virtualbase_childEvent(self.h, event.h)

type QQuickFramebufferObjectchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_childEvent(self: ptr cQQuickFramebufferObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_childEvent ".} =
  type Cb = proc(super: QQuickFramebufferObjectchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QQuickFramebufferObject(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QQuickFramebufferObject, event: gen_qcoreevent.QEvent): void =


  fQQuickFramebufferObject_virtualbase_customEvent(self.h, event.h)

type QQuickFramebufferObjectcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_customEvent(self: ptr cQQuickFramebufferObject, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_customEvent ".} =
  type Cb = proc(super: QQuickFramebufferObjectcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QQuickFramebufferObject(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QQuickFramebufferObject, signal: gen_qmetaobject.QMetaMethod): void =


  fQQuickFramebufferObject_virtualbase_connectNotify(self.h, signal.h)

type QQuickFramebufferObjectconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_connectNotify(self: ptr cQQuickFramebufferObject, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_connectNotify ".} =
  type Cb = proc(super: QQuickFramebufferObjectconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QQuickFramebufferObject(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QQuickFramebufferObject, signal: gen_qmetaobject.QMetaMethod): void =


  fQQuickFramebufferObject_virtualbase_disconnectNotify(self.h, signal.h)

type QQuickFramebufferObjectdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QQuickFramebufferObject, slot: proc(super: QQuickFramebufferObjectdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickFramebufferObjectdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickFramebufferObject_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickFramebufferObject_disconnectNotify(self: ptr cQQuickFramebufferObject, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickFramebufferObject_disconnectNotify ".} =
  type Cb = proc(super: QQuickFramebufferObjectdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QQuickFramebufferObject(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QQuickFramebufferObject) =
  fcQQuickFramebufferObject_delete(self.h)

func init*(T: type QQuickFramebufferObjectRenderer, h: ptr cQQuickFramebufferObjectRenderer): QQuickFramebufferObjectRenderer =
  T(h: h)
