import Qt5Svg_libs

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

const cflags = gorge("pkg-config -cflags Qt5Svg")
{.compile("gen_qgraphicssvgitem.cpp", cflags).}


type QGraphicsSvgItemEnum* = cint
const
  QGraphicsSvgItemType* = 13



import gen_qgraphicssvgitem_types
export gen_qgraphicssvgitem_types

import
  gen_qcoreevent,
  gen_qevent,
  gen_qgraphicsitem,
  gen_qgraphicssceneevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainter,
  gen_qpainterpath,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qstyleoption,
  gen_qsvgrenderer,
  gen_qvariant,
  gen_qwidget
export
  gen_qcoreevent,
  gen_qevent,
  gen_qgraphicsitem,
  gen_qgraphicssceneevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainter,
  gen_qpainterpath,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qstyleoption,
  gen_qsvgrenderer,
  gen_qvariant,
  gen_qwidget

type cQGraphicsSvgItem*{.exportc: "QGraphicsSvgItem", incompleteStruct.} = object

proc fcQGraphicsSvgItem_new(): ptr cQGraphicsSvgItem {.importc: "QGraphicsSvgItem_new".}
proc fcQGraphicsSvgItem_new2(fileName: struct_miqt_string): ptr cQGraphicsSvgItem {.importc: "QGraphicsSvgItem_new2".}
proc fcQGraphicsSvgItem_new3(parentItem: pointer): ptr cQGraphicsSvgItem {.importc: "QGraphicsSvgItem_new3".}
proc fcQGraphicsSvgItem_new4(fileName: struct_miqt_string, parentItem: pointer): ptr cQGraphicsSvgItem {.importc: "QGraphicsSvgItem_new4".}
proc fcQGraphicsSvgItem_metaObject(self: pointer, ): pointer {.importc: "QGraphicsSvgItem_metaObject".}
proc fcQGraphicsSvgItem_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsSvgItem_metacast".}
proc fcQGraphicsSvgItem_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsSvgItem_metacall".}
proc fcQGraphicsSvgItem_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsSvgItem_tr".}
proc fcQGraphicsSvgItem_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsSvgItem_trUtf8".}
proc fcQGraphicsSvgItem_setSharedRenderer(self: pointer, renderer: pointer): void {.importc: "QGraphicsSvgItem_setSharedRenderer".}
proc fcQGraphicsSvgItem_renderer(self: pointer, ): pointer {.importc: "QGraphicsSvgItem_renderer".}
proc fcQGraphicsSvgItem_setElementId(self: pointer, id: struct_miqt_string): void {.importc: "QGraphicsSvgItem_setElementId".}
proc fcQGraphicsSvgItem_elementId(self: pointer, ): struct_miqt_string {.importc: "QGraphicsSvgItem_elementId".}
proc fcQGraphicsSvgItem_setCachingEnabled(self: pointer, cachingEnabled: bool): void {.importc: "QGraphicsSvgItem_setCachingEnabled".}
proc fcQGraphicsSvgItem_isCachingEnabled(self: pointer, ): bool {.importc: "QGraphicsSvgItem_isCachingEnabled".}
proc fcQGraphicsSvgItem_setMaximumCacheSize(self: pointer, size: pointer): void {.importc: "QGraphicsSvgItem_setMaximumCacheSize".}
proc fcQGraphicsSvgItem_maximumCacheSize(self: pointer, ): pointer {.importc: "QGraphicsSvgItem_maximumCacheSize".}
proc fcQGraphicsSvgItem_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsSvgItem_boundingRect".}
proc fcQGraphicsSvgItem_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsSvgItem_paint".}
proc fcQGraphicsSvgItem_typeX(self: pointer, ): cint {.importc: "QGraphicsSvgItem_type".}
proc fcQGraphicsSvgItem_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsSvgItem_tr2".}
proc fcQGraphicsSvgItem_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsSvgItem_tr3".}
proc fcQGraphicsSvgItem_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsSvgItem_trUtf82".}
proc fcQGraphicsSvgItem_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsSvgItem_trUtf83".}
proc fQGraphicsSvgItem_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QGraphicsSvgItem_virtualbase_metaObject".}
proc fcQGraphicsSvgItem_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_metaObject".}
proc fQGraphicsSvgItem_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QGraphicsSvgItem_virtualbase_metacast".}
proc fcQGraphicsSvgItem_override_virtual_metacast(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_metacast".}
proc fQGraphicsSvgItem_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGraphicsSvgItem_virtualbase_metacall".}
proc fcQGraphicsSvgItem_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_metacall".}
proc fQGraphicsSvgItem_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QGraphicsSvgItem_virtualbase_boundingRect".}
proc fcQGraphicsSvgItem_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_boundingRect".}
proc fQGraphicsSvgItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_paint".}
proc fcQGraphicsSvgItem_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_paint".}
proc fQGraphicsSvgItem_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsSvgItem_virtualbase_type".}
proc fcQGraphicsSvgItem_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_type".}
proc fQGraphicsSvgItem_virtualbase_event(self: pointer, ev: pointer): bool{.importc: "QGraphicsSvgItem_virtualbase_event".}
proc fcQGraphicsSvgItem_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_event".}
proc fQGraphicsSvgItem_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsSvgItem_virtualbase_eventFilter".}
proc fcQGraphicsSvgItem_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_eventFilter".}
proc fQGraphicsSvgItem_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_timerEvent".}
proc fcQGraphicsSvgItem_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_timerEvent".}
proc fQGraphicsSvgItem_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_childEvent".}
proc fcQGraphicsSvgItem_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_childEvent".}
proc fQGraphicsSvgItem_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_customEvent".}
proc fcQGraphicsSvgItem_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_customEvent".}
proc fQGraphicsSvgItem_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_connectNotify".}
proc fcQGraphicsSvgItem_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_connectNotify".}
proc fQGraphicsSvgItem_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_disconnectNotify".}
proc fcQGraphicsSvgItem_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_disconnectNotify".}
proc fQGraphicsSvgItem_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsSvgItem_virtualbase_advance".}
proc fcQGraphicsSvgItem_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_advance".}
proc fQGraphicsSvgItem_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsSvgItem_virtualbase_shape".}
proc fcQGraphicsSvgItem_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_shape".}
proc fQGraphicsSvgItem_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsSvgItem_virtualbase_contains".}
proc fcQGraphicsSvgItem_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_contains".}
proc fQGraphicsSvgItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsSvgItem_virtualbase_collidesWithItem".}
proc fcQGraphicsSvgItem_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_collidesWithItem".}
proc fQGraphicsSvgItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsSvgItem_virtualbase_collidesWithPath".}
proc fcQGraphicsSvgItem_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_collidesWithPath".}
proc fQGraphicsSvgItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsSvgItem_virtualbase_isObscuredBy".}
proc fcQGraphicsSvgItem_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_isObscuredBy".}
proc fQGraphicsSvgItem_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsSvgItem_virtualbase_opaqueArea".}
proc fcQGraphicsSvgItem_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_opaqueArea".}
proc fQGraphicsSvgItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsSvgItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsSvgItem_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_sceneEventFilter".}
proc fQGraphicsSvgItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsSvgItem_virtualbase_sceneEvent".}
proc fcQGraphicsSvgItem_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_sceneEvent".}
proc fQGraphicsSvgItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsSvgItem_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_contextMenuEvent".}
proc fQGraphicsSvgItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsSvgItem_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_dragEnterEvent".}
proc fQGraphicsSvgItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsSvgItem_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_dragLeaveEvent".}
proc fQGraphicsSvgItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsSvgItem_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_dragMoveEvent".}
proc fQGraphicsSvgItem_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_dropEvent".}
proc fcQGraphicsSvgItem_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_dropEvent".}
proc fQGraphicsSvgItem_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_focusInEvent".}
proc fcQGraphicsSvgItem_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_focusInEvent".}
proc fQGraphicsSvgItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_focusOutEvent".}
proc fcQGraphicsSvgItem_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_focusOutEvent".}
proc fQGraphicsSvgItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsSvgItem_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_hoverEnterEvent".}
proc fQGraphicsSvgItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsSvgItem_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_hoverMoveEvent".}
proc fQGraphicsSvgItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsSvgItem_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_hoverLeaveEvent".}
proc fQGraphicsSvgItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_keyPressEvent".}
proc fcQGraphicsSvgItem_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_keyPressEvent".}
proc fQGraphicsSvgItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsSvgItem_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_keyReleaseEvent".}
proc fQGraphicsSvgItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_mousePressEvent".}
proc fcQGraphicsSvgItem_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_mousePressEvent".}
proc fQGraphicsSvgItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsSvgItem_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_mouseMoveEvent".}
proc fQGraphicsSvgItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsSvgItem_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_mouseReleaseEvent".}
proc fQGraphicsSvgItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsSvgItem_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsSvgItem_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_wheelEvent".}
proc fcQGraphicsSvgItem_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_wheelEvent".}
proc fQGraphicsSvgItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsSvgItem_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_inputMethodEvent".}
proc fQGraphicsSvgItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsSvgItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsSvgItem_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_inputMethodQuery".}
proc fQGraphicsSvgItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsSvgItem_virtualbase_itemChange".}
proc fcQGraphicsSvgItem_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_itemChange".}
proc fQGraphicsSvgItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsSvgItem_virtualbase_supportsExtension".}
proc fcQGraphicsSvgItem_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_supportsExtension".}
proc fQGraphicsSvgItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsSvgItem_virtualbase_setExtension".}
proc fcQGraphicsSvgItem_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_setExtension".}
proc fQGraphicsSvgItem_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsSvgItem_virtualbase_extension".}
proc fcQGraphicsSvgItem_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsSvgItem_override_virtual_extension".}
proc fcQGraphicsSvgItem_staticMetaObject(): pointer {.importc: "QGraphicsSvgItem_staticMetaObject".}
proc fcQGraphicsSvgItem_delete(self: pointer) {.importc: "QGraphicsSvgItem_delete".}


func init*(T: type QGraphicsSvgItem, h: ptr cQGraphicsSvgItem): QGraphicsSvgItem =
  T(h: h)
proc create*(T: type QGraphicsSvgItem, ): QGraphicsSvgItem =

  QGraphicsSvgItem.init(fcQGraphicsSvgItem_new())
proc create*(T: type QGraphicsSvgItem, fileName: string): QGraphicsSvgItem =

  QGraphicsSvgItem.init(fcQGraphicsSvgItem_new2(struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))
proc create*(T: type QGraphicsSvgItem, parentItem: gen_qgraphicsitem.QGraphicsItem): QGraphicsSvgItem =

  QGraphicsSvgItem.init(fcQGraphicsSvgItem_new3(parentItem.h))
proc create*(T: type QGraphicsSvgItem, fileName: string, parentItem: gen_qgraphicsitem.QGraphicsItem): QGraphicsSvgItem =

  QGraphicsSvgItem.init(fcQGraphicsSvgItem_new4(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), parentItem.h))
proc metaObject*(self: QGraphicsSvgItem, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQGraphicsSvgItem_metaObject(self.h))

proc metacast*(self: QGraphicsSvgItem, param1: cstring): pointer =

  fcQGraphicsSvgItem_metacast(self.h, param1)

proc metacall*(self: QGraphicsSvgItem, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQGraphicsSvgItem_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QGraphicsSvgItem, s: cstring): string =

  let v_ms = fcQGraphicsSvgItem_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QGraphicsSvgItem, s: cstring): string =

  let v_ms = fcQGraphicsSvgItem_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSharedRenderer*(self: QGraphicsSvgItem, renderer: gen_qsvgrenderer.QSvgRenderer): void =

  fcQGraphicsSvgItem_setSharedRenderer(self.h, renderer.h)

proc renderer*(self: QGraphicsSvgItem, ): gen_qsvgrenderer.QSvgRenderer =

  gen_qsvgrenderer.QSvgRenderer(h: fcQGraphicsSvgItem_renderer(self.h))

proc setElementId*(self: QGraphicsSvgItem, id: string): void =

  fcQGraphicsSvgItem_setElementId(self.h, struct_miqt_string(data: id, len: csize_t(len(id))))

proc elementId*(self: QGraphicsSvgItem, ): string =

  let v_ms = fcQGraphicsSvgItem_elementId(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCachingEnabled*(self: QGraphicsSvgItem, cachingEnabled: bool): void =

  fcQGraphicsSvgItem_setCachingEnabled(self.h, cachingEnabled)

proc isCachingEnabled*(self: QGraphicsSvgItem, ): bool =

  fcQGraphicsSvgItem_isCachingEnabled(self.h)

proc setMaximumCacheSize*(self: QGraphicsSvgItem, size: gen_qsize.QSize): void =

  fcQGraphicsSvgItem_setMaximumCacheSize(self.h, size.h)

proc maximumCacheSize*(self: QGraphicsSvgItem, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQGraphicsSvgItem_maximumCacheSize(self.h))

proc boundingRect*(self: QGraphicsSvgItem, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsSvgItem_boundingRect(self.h))

proc paint*(self: QGraphicsSvgItem, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =

  fcQGraphicsSvgItem_paint(self.h, painter.h, option.h, widget.h)

proc typeX*(self: QGraphicsSvgItem, ): cint =

  fcQGraphicsSvgItem_typeX(self.h)

proc tr2*(_: type QGraphicsSvgItem, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsSvgItem_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QGraphicsSvgItem, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsSvgItem_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QGraphicsSvgItem, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsSvgItem_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QGraphicsSvgItem, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsSvgItem_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QGraphicsSvgItem, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQGraphicsSvgItem_virtualbase_metaObject(self.h))

type QGraphicsSvgItemmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_metaObject(self: ptr cQGraphicsSvgItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSvgItem_metaObject ".} =
  type Cb = proc(super: QGraphicsSvgItemmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QGraphicsSvgItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QGraphicsSvgItem, param1: cstring): pointer =


  fQGraphicsSvgItem_virtualbase_metacast(self.h, param1)

type QGraphicsSvgItemmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_metacast(self: ptr cQGraphicsSvgItem, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QGraphicsSvgItem_metacast ".} =
  type Cb = proc(super: QGraphicsSvgItemmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QGraphicsSvgItem(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QGraphicsSvgItem, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQGraphicsSvgItem_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGraphicsSvgItemmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_metacall(self: ptr cQGraphicsSvgItem, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsSvgItem_metacall ".} =
  type Cb = proc(super: QGraphicsSvgItemmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QGraphicsSvgItem(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_boundingRect(self: QGraphicsSvgItem, ): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQGraphicsSvgItem_virtualbase_boundingRect(self.h))

type QGraphicsSvgItemboundingRectBase* = proc(): gen_qrect.QRectF
proc onboundingRect*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemboundingRectBase): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemboundingRectBase): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_boundingRect(self: ptr cQGraphicsSvgItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSvgItem_boundingRect ".} =
  type Cb = proc(super: QGraphicsSvgItemboundingRectBase): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_boundingRect(QGraphicsSvgItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_paint(self: QGraphicsSvgItem, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =


  fQGraphicsSvgItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

type QGraphicsSvgItempaintBase* = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
proc onpaint*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_paint(self: ptr cQGraphicsSvgItem, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_paint ".} =
  type Cb = proc(super: QGraphicsSvgItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_paint(QGraphicsSvgItem(h: self), painter, option, widget)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qstyleoption.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_typeX(self: QGraphicsSvgItem, ): cint =


  fQGraphicsSvgItem_virtualbase_type(self.h)

type QGraphicsSvgItemtypeXBase* = proc(): cint
proc ontypeX*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemtypeXBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemtypeXBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_type(self: ptr cQGraphicsSvgItem, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsSvgItem_type ".} =
  type Cb = proc(super: QGraphicsSvgItemtypeXBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_typeX(QGraphicsSvgItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_event(self: QGraphicsSvgItem, ev: gen_qcoreevent.QEvent): bool =


  fQGraphicsSvgItem_virtualbase_event(self.h, ev.h)

type QGraphicsSvgItemeventBase* = proc(ev: gen_qcoreevent.QEvent): bool
proc onevent*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemeventBase, ev: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemeventBase, ev: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_event(self: ptr cQGraphicsSvgItem, slot: int, ev: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsSvgItem_event ".} =
  type Cb = proc(super: QGraphicsSvgItemeventBase, ev: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(ev: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QGraphicsSvgItem(h: self), ev)
  let slotval1 = gen_qcoreevent.QEvent(h: ev)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QGraphicsSvgItem, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsSvgItem_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsSvgItemeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_eventFilter(self: ptr cQGraphicsSvgItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsSvgItem_eventFilter ".} =
  type Cb = proc(super: QGraphicsSvgItemeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QGraphicsSvgItem(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QGraphicsSvgItem, event: gen_qcoreevent.QTimerEvent): void =


  fQGraphicsSvgItem_virtualbase_timerEvent(self.h, event.h)

type QGraphicsSvgItemtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_timerEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_timerEvent ".} =
  type Cb = proc(super: QGraphicsSvgItemtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QGraphicsSvgItem(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QGraphicsSvgItem, event: gen_qcoreevent.QChildEvent): void =


  fQGraphicsSvgItem_virtualbase_childEvent(self.h, event.h)

type QGraphicsSvgItemchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_childEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_childEvent ".} =
  type Cb = proc(super: QGraphicsSvgItemchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QGraphicsSvgItem(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QGraphicsSvgItem, event: gen_qcoreevent.QEvent): void =


  fQGraphicsSvgItem_virtualbase_customEvent(self.h, event.h)

type QGraphicsSvgItemcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_customEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_customEvent ".} =
  type Cb = proc(super: QGraphicsSvgItemcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QGraphicsSvgItem(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QGraphicsSvgItem, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsSvgItem_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsSvgItemconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_connectNotify(self: ptr cQGraphicsSvgItem, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_connectNotify ".} =
  type Cb = proc(super: QGraphicsSvgItemconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QGraphicsSvgItem(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QGraphicsSvgItem, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsSvgItem_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsSvgItemdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_disconnectNotify(self: ptr cQGraphicsSvgItem, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_disconnectNotify ".} =
  type Cb = proc(super: QGraphicsSvgItemdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QGraphicsSvgItem(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_advance(self: QGraphicsSvgItem, phase: cint): void =


  fQGraphicsSvgItem_virtualbase_advance(self.h, phase)

type QGraphicsSvgItemadvanceBase* = proc(phase: cint): void
proc onadvance*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemadvanceBase, phase: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemadvanceBase, phase: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_advance(self: ptr cQGraphicsSvgItem, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_advance ".} =
  type Cb = proc(super: QGraphicsSvgItemadvanceBase, phase: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(phase: cint): auto =
    callVirtualBase_advance(QGraphicsSvgItem(h: self), phase)
  let slotval1 = phase


  nimfunc[](superCall, slotval1)
proc callVirtualBase_shape(self: QGraphicsSvgItem, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsSvgItem_virtualbase_shape(self.h))

type QGraphicsSvgItemshapeBase* = proc(): gen_qpainterpath.QPainterPath
proc onshape*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemshapeBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemshapeBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_shape(self: ptr cQGraphicsSvgItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSvgItem_shape ".} =
  type Cb = proc(super: QGraphicsSvgItemshapeBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_shape(QGraphicsSvgItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_contains(self: QGraphicsSvgItem, point: gen_qpoint.QPointF): bool =


  fQGraphicsSvgItem_virtualbase_contains(self.h, point.h)

type QGraphicsSvgItemcontainsBase* = proc(point: gen_qpoint.QPointF): bool
proc oncontains*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemcontainsBase, point: gen_qpoint.QPointF): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemcontainsBase, point: gen_qpoint.QPointF): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_contains(self: ptr cQGraphicsSvgItem, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsSvgItem_contains ".} =
  type Cb = proc(super: QGraphicsSvgItemcontainsBase, point: gen_qpoint.QPointF): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(point: gen_qpoint.QPointF): auto =
    callVirtualBase_contains(QGraphicsSvgItem(h: self), point)
  let slotval1 = gen_qpoint.QPointF(h: point)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_collidesWithItem(self: QGraphicsSvgItem, other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsSvgItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsSvgItemcollidesWithItemBase* = proc(other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithItem*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemcollidesWithItemBase, other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemcollidesWithItemBase, other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_collidesWithItem(self: ptr cQGraphicsSvgItem, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsSvgItem_collidesWithItem ".} =
  type Cb = proc(super: QGraphicsSvgItemcollidesWithItemBase, other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithItem(QGraphicsSvgItem(h: self), other, mode)
  let slotval1 = gen_qgraphicsitem.QGraphicsItem(h: other)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_collidesWithPath(self: QGraphicsSvgItem, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsSvgItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsSvgItemcollidesWithPathBase* = proc(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithPath*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_collidesWithPath(self: ptr cQGraphicsSvgItem, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsSvgItem_collidesWithPath ".} =
  type Cb = proc(super: QGraphicsSvgItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithPath(QGraphicsSvgItem(h: self), path, mode)
  let slotval1 = gen_qpainterpath.QPainterPath(h: path)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_isObscuredBy(self: QGraphicsSvgItem, item: gen_qgraphicsitem.QGraphicsItem): bool =


  fQGraphicsSvgItem_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsSvgItemisObscuredByBase* = proc(item: gen_qgraphicsitem.QGraphicsItem): bool
proc onisObscuredBy*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemisObscuredByBase, item: gen_qgraphicsitem.QGraphicsItem): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemisObscuredByBase, item: gen_qgraphicsitem.QGraphicsItem): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_isObscuredBy(self: ptr cQGraphicsSvgItem, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsSvgItem_isObscuredBy ".} =
  type Cb = proc(super: QGraphicsSvgItemisObscuredByBase, item: gen_qgraphicsitem.QGraphicsItem): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(item: gen_qgraphicsitem.QGraphicsItem): auto =
    callVirtualBase_isObscuredBy(QGraphicsSvgItem(h: self), item)
  let slotval1 = gen_qgraphicsitem.QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_opaqueArea(self: QGraphicsSvgItem, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsSvgItem_virtualbase_opaqueArea(self.h))

type QGraphicsSvgItemopaqueAreaBase* = proc(): gen_qpainterpath.QPainterPath
proc onopaqueArea*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemopaqueAreaBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemopaqueAreaBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_opaqueArea(self: ptr cQGraphicsSvgItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsSvgItem_opaqueArea ".} =
  type Cb = proc(super: QGraphicsSvgItemopaqueAreaBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_opaqueArea(QGraphicsSvgItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_sceneEventFilter(self: QGraphicsSvgItem, watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsSvgItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsSvgItemsceneEventFilterBase* = proc(watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): bool
proc onsceneEventFilter*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemsceneEventFilterBase, watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemsceneEventFilterBase, watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_sceneEventFilter(self: ptr cQGraphicsSvgItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsSvgItem_sceneEventFilter ".} =
  type Cb = proc(super: QGraphicsSvgItemsceneEventFilterBase, watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEventFilter(QGraphicsSvgItem(h: self), watched, event)
  let slotval1 = gen_qgraphicsitem.QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_sceneEvent(self: QGraphicsSvgItem, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsSvgItem_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsSvgItemsceneEventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onsceneEvent*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemsceneEventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_sceneEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsSvgItem_sceneEvent ".} =
  type Cb = proc(super: QGraphicsSvgItemsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEvent(QGraphicsSvgItem(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_contextMenuEvent(self: QGraphicsSvgItem, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void =


  fQGraphicsSvgItem_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsSvgItemcontextMenuEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_contextMenuEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_contextMenuEvent ".} =
  type Cb = proc(super: QGraphicsSvgItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QGraphicsSvgItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QGraphicsSvgItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsSvgItem_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsSvgItemdragEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_dragEnterEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_dragEnterEvent ".} =
  type Cb = proc(super: QGraphicsSvgItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragEnterEvent(QGraphicsSvgItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QGraphicsSvgItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsSvgItem_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsSvgItemdragLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_dragLeaveEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_dragLeaveEvent ".} =
  type Cb = proc(super: QGraphicsSvgItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragLeaveEvent(QGraphicsSvgItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QGraphicsSvgItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsSvgItem_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsSvgItemdragMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_dragMoveEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_dragMoveEvent ".} =
  type Cb = proc(super: QGraphicsSvgItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragMoveEvent(QGraphicsSvgItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QGraphicsSvgItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsSvgItem_virtualbase_dropEvent(self.h, event.h)

type QGraphicsSvgItemdropEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_dropEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_dropEvent ".} =
  type Cb = proc(super: QGraphicsSvgItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dropEvent(QGraphicsSvgItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QGraphicsSvgItem, event: gen_qevent.QFocusEvent): void =


  fQGraphicsSvgItem_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsSvgItemfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_focusInEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_focusInEvent ".} =
  type Cb = proc(super: QGraphicsSvgItemfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QGraphicsSvgItem(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QGraphicsSvgItem, event: gen_qevent.QFocusEvent): void =


  fQGraphicsSvgItem_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsSvgItemfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_focusOutEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_focusOutEvent ".} =
  type Cb = proc(super: QGraphicsSvgItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QGraphicsSvgItem(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverEnterEvent(self: QGraphicsSvgItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsSvgItem_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsSvgItemhoverEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_hoverEnterEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_hoverEnterEvent ".} =
  type Cb = proc(super: QGraphicsSvgItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverEnterEvent(QGraphicsSvgItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverMoveEvent(self: QGraphicsSvgItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsSvgItem_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsSvgItemhoverMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_hoverMoveEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_hoverMoveEvent ".} =
  type Cb = proc(super: QGraphicsSvgItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverMoveEvent(QGraphicsSvgItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverLeaveEvent(self: QGraphicsSvgItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsSvgItem_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsSvgItemhoverLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_hoverLeaveEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_hoverLeaveEvent ".} =
  type Cb = proc(super: QGraphicsSvgItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverLeaveEvent(QGraphicsSvgItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QGraphicsSvgItem, event: gen_qevent.QKeyEvent): void =


  fQGraphicsSvgItem_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsSvgItemkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_keyPressEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_keyPressEvent ".} =
  type Cb = proc(super: QGraphicsSvgItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QGraphicsSvgItem(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QGraphicsSvgItem, event: gen_qevent.QKeyEvent): void =


  fQGraphicsSvgItem_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsSvgItemkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_keyReleaseEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_keyReleaseEvent ".} =
  type Cb = proc(super: QGraphicsSvgItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QGraphicsSvgItem(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QGraphicsSvgItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsSvgItem_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsSvgItemmousePressEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_mousePressEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_mousePressEvent ".} =
  type Cb = proc(super: QGraphicsSvgItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mousePressEvent(QGraphicsSvgItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QGraphicsSvgItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsSvgItem_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsSvgItemmouseMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_mouseMoveEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_mouseMoveEvent ".} =
  type Cb = proc(super: QGraphicsSvgItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QGraphicsSvgItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QGraphicsSvgItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsSvgItem_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsSvgItemmouseReleaseEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_mouseReleaseEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_mouseReleaseEvent ".} =
  type Cb = proc(super: QGraphicsSvgItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QGraphicsSvgItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QGraphicsSvgItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsSvgItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsSvgItemmouseDoubleClickEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_mouseDoubleClickEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QGraphicsSvgItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QGraphicsSvgItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QGraphicsSvgItem, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void =


  fQGraphicsSvgItem_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsSvgItemwheelEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_wheelEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_wheelEvent ".} =
  type Cb = proc(super: QGraphicsSvgItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): auto =
    callVirtualBase_wheelEvent(QGraphicsSvgItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QGraphicsSvgItem, event: gen_qevent.QInputMethodEvent): void =


  fQGraphicsSvgItem_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsSvgIteminputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_inputMethodEvent(self: ptr cQGraphicsSvgItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_inputMethodEvent ".} =
  type Cb = proc(super: QGraphicsSvgIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QGraphicsSvgItem(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QGraphicsSvgItem, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsSvgItem_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsSvgIteminputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_inputMethodQuery(self: ptr cQGraphicsSvgItem, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsSvgItem_inputMethodQuery ".} =
  type Cb = proc(super: QGraphicsSvgIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QGraphicsSvgItem(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_itemChange(self: QGraphicsSvgItem, change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsSvgItem_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsSvgItemitemChangeBase* = proc(change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onitemChange*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemitemChangeBase, change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemitemChangeBase, change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_itemChange(self: ptr cQGraphicsSvgItem, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsSvgItem_itemChange ".} =
  type Cb = proc(super: QGraphicsSvgItemitemChangeBase, change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): auto =
    callVirtualBase_itemChange(QGraphicsSvgItem(h: self), change, value)
  let slotval1 = gen_qgraphicsitem.QGraphicsItemGraphicsItemChange(change)

  let slotval2 = gen_qvariant.QVariant(h: value)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_supportsExtension(self: QGraphicsSvgItem, extension: gen_qgraphicsitem.QGraphicsItemExtension): bool =


  fQGraphicsSvgItem_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsSvgItemsupportsExtensionBase* = proc(extension: gen_qgraphicsitem.QGraphicsItemExtension): bool
proc onsupportsExtension*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemsupportsExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemsupportsExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_supportsExtension(self: ptr cQGraphicsSvgItem, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsSvgItem_supportsExtension ".} =
  type Cb = proc(super: QGraphicsSvgItemsupportsExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: gen_qgraphicsitem.QGraphicsItemExtension): auto =
    callVirtualBase_supportsExtension(QGraphicsSvgItem(h: self), extension)
  let slotval1 = gen_qgraphicsitem.QGraphicsItemExtension(extension)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_setExtension(self: QGraphicsSvgItem, extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): void =


  fQGraphicsSvgItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsSvgItemsetExtensionBase* = proc(extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
proc onsetExtension*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemsetExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemsetExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_setExtension(self: ptr cQGraphicsSvgItem, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsSvgItem_setExtension ".} =
  type Cb = proc(super: QGraphicsSvgItemsetExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): auto =
    callVirtualBase_setExtension(QGraphicsSvgItem(h: self), extension, variant)
  let slotval1 = gen_qgraphicsitem.QGraphicsItemExtension(extension)

  let slotval2 = gen_qvariant.QVariant(h: variant)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_extension(self: QGraphicsSvgItem, variant: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsSvgItem_virtualbase_extension(self.h, variant.h))

type QGraphicsSvgItemextensionBase* = proc(variant: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onextension*(self: QGraphicsSvgItem, slot: proc(super: QGraphicsSvgItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsSvgItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsSvgItem_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsSvgItem_extension(self: ptr cQGraphicsSvgItem, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsSvgItem_extension ".} =
  type Cb = proc(super: QGraphicsSvgItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(variant: gen_qvariant.QVariant): auto =
    callVirtualBase_extension(QGraphicsSvgItem(h: self), variant)
  let slotval1 = gen_qvariant.QVariant(h: variant)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc staticMetaObject*(_: type QGraphicsSvgItem): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQGraphicsSvgItem_staticMetaObject())
proc delete*(self: QGraphicsSvgItem) =
  fcQGraphicsSvgItem_delete(self.h)
