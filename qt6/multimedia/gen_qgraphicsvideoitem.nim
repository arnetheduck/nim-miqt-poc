import Qt6MultimediaWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt6MultimediaWidgets")
{.compile("gen_qgraphicsvideoitem.cpp", cflags).}


type QGraphicsVideoItemEnum* = cint
const
  QGraphicsVideoItemType* = 14



import gen_qgraphicsvideoitem_types
export gen_qgraphicsvideoitem_types

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
  gen_qvariant,
  gen_qvideosink,
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
  gen_qvariant,
  gen_qvideosink,
  gen_qwidget

type cQGraphicsVideoItem*{.exportc: "QGraphicsVideoItem", incompleteStruct.} = object

proc fcQGraphicsVideoItem_new(): ptr cQGraphicsVideoItem {.importc: "QGraphicsVideoItem_new".}
proc fcQGraphicsVideoItem_new2(parent: pointer): ptr cQGraphicsVideoItem {.importc: "QGraphicsVideoItem_new2".}
proc fcQGraphicsVideoItem_metaObject(self: pointer, ): pointer {.importc: "QGraphicsVideoItem_metaObject".}
proc fcQGraphicsVideoItem_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsVideoItem_metacast".}
proc fcQGraphicsVideoItem_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsVideoItem_metacall".}
proc fcQGraphicsVideoItem_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsVideoItem_tr".}
proc fcQGraphicsVideoItem_videoSink(self: pointer, ): pointer {.importc: "QGraphicsVideoItem_videoSink".}
proc fcQGraphicsVideoItem_aspectRatioMode(self: pointer, ): cint {.importc: "QGraphicsVideoItem_aspectRatioMode".}
proc fcQGraphicsVideoItem_setAspectRatioMode(self: pointer, mode: cint): void {.importc: "QGraphicsVideoItem_setAspectRatioMode".}
proc fcQGraphicsVideoItem_offset(self: pointer, ): pointer {.importc: "QGraphicsVideoItem_offset".}
proc fcQGraphicsVideoItem_setOffset(self: pointer, offset: pointer): void {.importc: "QGraphicsVideoItem_setOffset".}
proc fcQGraphicsVideoItem_size(self: pointer, ): pointer {.importc: "QGraphicsVideoItem_size".}
proc fcQGraphicsVideoItem_setSize(self: pointer, size: pointer): void {.importc: "QGraphicsVideoItem_setSize".}
proc fcQGraphicsVideoItem_nativeSize(self: pointer, ): pointer {.importc: "QGraphicsVideoItem_nativeSize".}
proc fcQGraphicsVideoItem_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsVideoItem_boundingRect".}
proc fcQGraphicsVideoItem_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void {.importc: "QGraphicsVideoItem_paint".}
proc fcQGraphicsVideoItem_typeX(self: pointer, ): cint {.importc: "QGraphicsVideoItem_type".}
proc fcQGraphicsVideoItem_nativeSizeChanged(self: pointer, size: pointer): void {.importc: "QGraphicsVideoItem_nativeSizeChanged".}
proc fQGraphicsVideoItem_connect_nativeSizeChanged(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_connect_nativeSizeChanged".}
proc fcQGraphicsVideoItem_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsVideoItem_tr2".}
proc fcQGraphicsVideoItem_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsVideoItem_tr3".}
proc fQGraphicsVideoItem_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGraphicsVideoItem_virtualbase_metacall".}
proc fcQGraphicsVideoItem_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_metacall".}
proc fQGraphicsVideoItem_virtualbase_boundingRect(self: pointer, ): pointer{.importc: "QGraphicsVideoItem_virtualbase_boundingRect".}
proc fcQGraphicsVideoItem_override_virtual_boundingRect(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_boundingRect".}
proc fQGraphicsVideoItem_virtualbase_paint(self: pointer, painter: pointer, option: pointer, widget: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_paint".}
proc fcQGraphicsVideoItem_override_virtual_paint(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_paint".}
proc fQGraphicsVideoItem_virtualbase_type(self: pointer, ): cint{.importc: "QGraphicsVideoItem_virtualbase_type".}
proc fcQGraphicsVideoItem_override_virtual_typeX(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_type".}
proc fQGraphicsVideoItem_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_timerEvent".}
proc fcQGraphicsVideoItem_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_timerEvent".}
proc fQGraphicsVideoItem_virtualbase_itemChange(self: pointer, change: cint, value: pointer): pointer{.importc: "QGraphicsVideoItem_virtualbase_itemChange".}
proc fcQGraphicsVideoItem_override_virtual_itemChange(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_itemChange".}
proc fQGraphicsVideoItem_virtualbase_event(self: pointer, ev: pointer): bool{.importc: "QGraphicsVideoItem_virtualbase_event".}
proc fcQGraphicsVideoItem_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_event".}
proc fQGraphicsVideoItem_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsVideoItem_virtualbase_eventFilter".}
proc fcQGraphicsVideoItem_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_eventFilter".}
proc fQGraphicsVideoItem_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_childEvent".}
proc fcQGraphicsVideoItem_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_childEvent".}
proc fQGraphicsVideoItem_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_customEvent".}
proc fcQGraphicsVideoItem_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_customEvent".}
proc fQGraphicsVideoItem_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_connectNotify".}
proc fcQGraphicsVideoItem_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_connectNotify".}
proc fQGraphicsVideoItem_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_disconnectNotify".}
proc fcQGraphicsVideoItem_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_disconnectNotify".}
proc fQGraphicsVideoItem_virtualbase_advance(self: pointer, phase: cint): void{.importc: "QGraphicsVideoItem_virtualbase_advance".}
proc fcQGraphicsVideoItem_override_virtual_advance(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_advance".}
proc fQGraphicsVideoItem_virtualbase_shape(self: pointer, ): pointer{.importc: "QGraphicsVideoItem_virtualbase_shape".}
proc fcQGraphicsVideoItem_override_virtual_shape(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_shape".}
proc fQGraphicsVideoItem_virtualbase_contains(self: pointer, point: pointer): bool{.importc: "QGraphicsVideoItem_virtualbase_contains".}
proc fcQGraphicsVideoItem_override_virtual_contains(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_contains".}
proc fQGraphicsVideoItem_virtualbase_collidesWithItem(self: pointer, other: pointer, mode: cint): bool{.importc: "QGraphicsVideoItem_virtualbase_collidesWithItem".}
proc fcQGraphicsVideoItem_override_virtual_collidesWithItem(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_collidesWithItem".}
proc fQGraphicsVideoItem_virtualbase_collidesWithPath(self: pointer, path: pointer, mode: cint): bool{.importc: "QGraphicsVideoItem_virtualbase_collidesWithPath".}
proc fcQGraphicsVideoItem_override_virtual_collidesWithPath(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_collidesWithPath".}
proc fQGraphicsVideoItem_virtualbase_isObscuredBy(self: pointer, item: pointer): bool{.importc: "QGraphicsVideoItem_virtualbase_isObscuredBy".}
proc fcQGraphicsVideoItem_override_virtual_isObscuredBy(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_isObscuredBy".}
proc fQGraphicsVideoItem_virtualbase_opaqueArea(self: pointer, ): pointer{.importc: "QGraphicsVideoItem_virtualbase_opaqueArea".}
proc fcQGraphicsVideoItem_override_virtual_opaqueArea(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_opaqueArea".}
proc fQGraphicsVideoItem_virtualbase_sceneEventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsVideoItem_virtualbase_sceneEventFilter".}
proc fcQGraphicsVideoItem_override_virtual_sceneEventFilter(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_sceneEventFilter".}
proc fQGraphicsVideoItem_virtualbase_sceneEvent(self: pointer, event: pointer): bool{.importc: "QGraphicsVideoItem_virtualbase_sceneEvent".}
proc fcQGraphicsVideoItem_override_virtual_sceneEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_sceneEvent".}
proc fQGraphicsVideoItem_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_contextMenuEvent".}
proc fcQGraphicsVideoItem_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_contextMenuEvent".}
proc fQGraphicsVideoItem_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_dragEnterEvent".}
proc fcQGraphicsVideoItem_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_dragEnterEvent".}
proc fQGraphicsVideoItem_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_dragLeaveEvent".}
proc fcQGraphicsVideoItem_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_dragLeaveEvent".}
proc fQGraphicsVideoItem_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_dragMoveEvent".}
proc fcQGraphicsVideoItem_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_dragMoveEvent".}
proc fQGraphicsVideoItem_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_dropEvent".}
proc fcQGraphicsVideoItem_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_dropEvent".}
proc fQGraphicsVideoItem_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_focusInEvent".}
proc fcQGraphicsVideoItem_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_focusInEvent".}
proc fQGraphicsVideoItem_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_focusOutEvent".}
proc fcQGraphicsVideoItem_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_focusOutEvent".}
proc fQGraphicsVideoItem_virtualbase_hoverEnterEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_hoverEnterEvent".}
proc fcQGraphicsVideoItem_override_virtual_hoverEnterEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_hoverEnterEvent".}
proc fQGraphicsVideoItem_virtualbase_hoverMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_hoverMoveEvent".}
proc fcQGraphicsVideoItem_override_virtual_hoverMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_hoverMoveEvent".}
proc fQGraphicsVideoItem_virtualbase_hoverLeaveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_hoverLeaveEvent".}
proc fcQGraphicsVideoItem_override_virtual_hoverLeaveEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_hoverLeaveEvent".}
proc fQGraphicsVideoItem_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_keyPressEvent".}
proc fcQGraphicsVideoItem_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_keyPressEvent".}
proc fQGraphicsVideoItem_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_keyReleaseEvent".}
proc fcQGraphicsVideoItem_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_keyReleaseEvent".}
proc fQGraphicsVideoItem_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_mousePressEvent".}
proc fcQGraphicsVideoItem_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_mousePressEvent".}
proc fQGraphicsVideoItem_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_mouseMoveEvent".}
proc fcQGraphicsVideoItem_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_mouseMoveEvent".}
proc fQGraphicsVideoItem_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_mouseReleaseEvent".}
proc fcQGraphicsVideoItem_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_mouseReleaseEvent".}
proc fQGraphicsVideoItem_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_mouseDoubleClickEvent".}
proc fcQGraphicsVideoItem_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_mouseDoubleClickEvent".}
proc fQGraphicsVideoItem_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_wheelEvent".}
proc fcQGraphicsVideoItem_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_wheelEvent".}
proc fQGraphicsVideoItem_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_inputMethodEvent".}
proc fcQGraphicsVideoItem_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_inputMethodEvent".}
proc fQGraphicsVideoItem_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QGraphicsVideoItem_virtualbase_inputMethodQuery".}
proc fcQGraphicsVideoItem_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_inputMethodQuery".}
proc fQGraphicsVideoItem_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QGraphicsVideoItem_virtualbase_supportsExtension".}
proc fcQGraphicsVideoItem_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_supportsExtension".}
proc fQGraphicsVideoItem_virtualbase_setExtension(self: pointer, extension: cint, variant: pointer): void{.importc: "QGraphicsVideoItem_virtualbase_setExtension".}
proc fcQGraphicsVideoItem_override_virtual_setExtension(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_setExtension".}
proc fQGraphicsVideoItem_virtualbase_extension(self: pointer, variant: pointer): pointer{.importc: "QGraphicsVideoItem_virtualbase_extension".}
proc fcQGraphicsVideoItem_override_virtual_extension(self: pointer, slot: int) {.importc: "QGraphicsVideoItem_override_virtual_extension".}
proc fcQGraphicsVideoItem_delete(self: pointer) {.importc: "QGraphicsVideoItem_delete".}


func init*(T: type QGraphicsVideoItem, h: ptr cQGraphicsVideoItem): QGraphicsVideoItem =
  T(h: h)
proc create*(T: type QGraphicsVideoItem, ): QGraphicsVideoItem =

  QGraphicsVideoItem.init(fcQGraphicsVideoItem_new())
proc create*(T: type QGraphicsVideoItem, parent: gen_qgraphicsitem.QGraphicsItem): QGraphicsVideoItem =

  QGraphicsVideoItem.init(fcQGraphicsVideoItem_new2(parent.h))
proc metaObject*(self: QGraphicsVideoItem, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQGraphicsVideoItem_metaObject(self.h))

proc metacast*(self: QGraphicsVideoItem, param1: cstring): pointer =

  fcQGraphicsVideoItem_metacast(self.h, param1)

proc metacall*(self: QGraphicsVideoItem, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQGraphicsVideoItem_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QGraphicsVideoItem, s: cstring): string =

  let v_ms = fcQGraphicsVideoItem_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc videoSink*(self: QGraphicsVideoItem, ): gen_qvideosink.QVideoSink =

  gen_qvideosink.QVideoSink(h: fcQGraphicsVideoItem_videoSink(self.h))

proc aspectRatioMode*(self: QGraphicsVideoItem, ): gen_qnamespace.AspectRatioMode =

  gen_qnamespace.AspectRatioMode(fcQGraphicsVideoItem_aspectRatioMode(self.h))

proc setAspectRatioMode*(self: QGraphicsVideoItem, mode: gen_qnamespace.AspectRatioMode): void =

  fcQGraphicsVideoItem_setAspectRatioMode(self.h, cint(mode))

proc offset*(self: QGraphicsVideoItem, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsVideoItem_offset(self.h))

proc setOffset*(self: QGraphicsVideoItem, offset: gen_qpoint.QPointF): void =

  fcQGraphicsVideoItem_setOffset(self.h, offset.h)

proc size*(self: QGraphicsVideoItem, ): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQGraphicsVideoItem_size(self.h))

proc setSize*(self: QGraphicsVideoItem, size: gen_qsize.QSizeF): void =

  fcQGraphicsVideoItem_setSize(self.h, size.h)

proc nativeSize*(self: QGraphicsVideoItem, ): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQGraphicsVideoItem_nativeSize(self.h))

proc boundingRect*(self: QGraphicsVideoItem, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsVideoItem_boundingRect(self.h))

proc paint*(self: QGraphicsVideoItem, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =

  fcQGraphicsVideoItem_paint(self.h, painter.h, option.h, widget.h)

proc typeX*(self: QGraphicsVideoItem, ): cint =

  fcQGraphicsVideoItem_typeX(self.h)

proc nativeSizeChanged*(self: QGraphicsVideoItem, size: gen_qsize.QSizeF): void =

  fcQGraphicsVideoItem_nativeSizeChanged(self.h, size.h)

proc miqt_exec_callback_QGraphicsVideoItem_nativeSizeChanged(slot: int, size: pointer) {.exportc.} =
  type Cb = proc(size: gen_qsize.QSizeF)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qsize.QSizeF(h: size)


  nimfunc[](slotval1)

proc onnativeSizeChanged*(self: QGraphicsVideoItem, slot: proc(size: gen_qsize.QSizeF)) =
  type Cb = proc(size: gen_qsize.QSizeF)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsVideoItem_connect_nativeSizeChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QGraphicsVideoItem, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsVideoItem_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QGraphicsVideoItem, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsVideoItem_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QGraphicsVideoItem, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQGraphicsVideoItem_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGraphicsVideoItemmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_metacall(self: ptr cQGraphicsVideoItem, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsVideoItem_metacall ".} =
  type Cb = proc(super: QGraphicsVideoItemmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QGraphicsVideoItem(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_boundingRect(self: QGraphicsVideoItem, ): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQGraphicsVideoItem_virtualbase_boundingRect(self.h))

type QGraphicsVideoItemboundingRectBase* = proc(): gen_qrect.QRectF
proc onboundingRect*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemboundingRectBase): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemboundingRectBase): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_boundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_boundingRect(self: ptr cQGraphicsVideoItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsVideoItem_boundingRect ".} =
  type Cb = proc(super: QGraphicsVideoItemboundingRectBase): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_boundingRect(QGraphicsVideoItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_paint(self: QGraphicsVideoItem, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void =


  fQGraphicsVideoItem_virtualbase_paint(self.h, painter.h, option.h, widget.h)

type QGraphicsVideoItempaintBase* = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
proc onpaint*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_paint(self: ptr cQGraphicsVideoItem, slot: int, painter: pointer, option: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_paint ".} =
  type Cb = proc(super: QGraphicsVideoItempaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionGraphicsItem, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_paint(QGraphicsVideoItem(h: self), painter, option, widget)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qstyleoption.QStyleOptionGraphicsItem(h: option)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_typeX(self: QGraphicsVideoItem, ): cint =


  fQGraphicsVideoItem_virtualbase_type(self.h)

type QGraphicsVideoItemtypeXBase* = proc(): cint
proc ontypeX*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemtypeXBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemtypeXBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_type(self: ptr cQGraphicsVideoItem, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsVideoItem_type ".} =
  type Cb = proc(super: QGraphicsVideoItemtypeXBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_typeX(QGraphicsVideoItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_timerEvent(self: QGraphicsVideoItem, event: gen_qcoreevent.QTimerEvent): void =


  fQGraphicsVideoItem_virtualbase_timerEvent(self.h, event.h)

type QGraphicsVideoItemtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_timerEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_timerEvent ".} =
  type Cb = proc(super: QGraphicsVideoItemtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QGraphicsVideoItem(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_itemChange(self: QGraphicsVideoItem, change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsVideoItem_virtualbase_itemChange(self.h, cint(change), value.h))

type QGraphicsVideoItemitemChangeBase* = proc(change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onitemChange*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemitemChangeBase, change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemitemChangeBase, change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_itemChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_itemChange(self: ptr cQGraphicsVideoItem, slot: int, change: cint, value: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsVideoItem_itemChange ".} =
  type Cb = proc(super: QGraphicsVideoItemitemChangeBase, change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(change: gen_qgraphicsitem.QGraphicsItemGraphicsItemChange, value: gen_qvariant.QVariant): auto =
    callVirtualBase_itemChange(QGraphicsVideoItem(h: self), change, value)
  let slotval1 = gen_qgraphicsitem.QGraphicsItemGraphicsItemChange(change)

  let slotval2 = gen_qvariant.QVariant(h: value)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_event(self: QGraphicsVideoItem, ev: gen_qcoreevent.QEvent): bool =


  fQGraphicsVideoItem_virtualbase_event(self.h, ev.h)

type QGraphicsVideoItemeventBase* = proc(ev: gen_qcoreevent.QEvent): bool
proc onevent*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemeventBase, ev: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemeventBase, ev: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_event(self: ptr cQGraphicsVideoItem, slot: int, ev: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsVideoItem_event ".} =
  type Cb = proc(super: QGraphicsVideoItemeventBase, ev: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(ev: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QGraphicsVideoItem(h: self), ev)
  let slotval1 = gen_qcoreevent.QEvent(h: ev)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QGraphicsVideoItem, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsVideoItem_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsVideoItemeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_eventFilter(self: ptr cQGraphicsVideoItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsVideoItem_eventFilter ".} =
  type Cb = proc(super: QGraphicsVideoItemeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QGraphicsVideoItem(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_childEvent(self: QGraphicsVideoItem, event: gen_qcoreevent.QChildEvent): void =


  fQGraphicsVideoItem_virtualbase_childEvent(self.h, event.h)

type QGraphicsVideoItemchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_childEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_childEvent ".} =
  type Cb = proc(super: QGraphicsVideoItemchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QGraphicsVideoItem(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QGraphicsVideoItem, event: gen_qcoreevent.QEvent): void =


  fQGraphicsVideoItem_virtualbase_customEvent(self.h, event.h)

type QGraphicsVideoItemcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_customEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_customEvent ".} =
  type Cb = proc(super: QGraphicsVideoItemcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QGraphicsVideoItem(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QGraphicsVideoItem, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsVideoItem_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsVideoItemconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_connectNotify(self: ptr cQGraphicsVideoItem, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_connectNotify ".} =
  type Cb = proc(super: QGraphicsVideoItemconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QGraphicsVideoItem(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QGraphicsVideoItem, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsVideoItem_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsVideoItemdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_disconnectNotify(self: ptr cQGraphicsVideoItem, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_disconnectNotify ".} =
  type Cb = proc(super: QGraphicsVideoItemdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QGraphicsVideoItem(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_advance(self: QGraphicsVideoItem, phase: cint): void =


  fQGraphicsVideoItem_virtualbase_advance(self.h, phase)

type QGraphicsVideoItemadvanceBase* = proc(phase: cint): void
proc onadvance*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemadvanceBase, phase: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemadvanceBase, phase: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_advance(self: ptr cQGraphicsVideoItem, slot: int, phase: cint): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_advance ".} =
  type Cb = proc(super: QGraphicsVideoItemadvanceBase, phase: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(phase: cint): auto =
    callVirtualBase_advance(QGraphicsVideoItem(h: self), phase)
  let slotval1 = phase


  nimfunc[](superCall, slotval1)
proc callVirtualBase_shape(self: QGraphicsVideoItem, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsVideoItem_virtualbase_shape(self.h))

type QGraphicsVideoItemshapeBase* = proc(): gen_qpainterpath.QPainterPath
proc onshape*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemshapeBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemshapeBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_shape(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_shape(self: ptr cQGraphicsVideoItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsVideoItem_shape ".} =
  type Cb = proc(super: QGraphicsVideoItemshapeBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_shape(QGraphicsVideoItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_contains(self: QGraphicsVideoItem, point: gen_qpoint.QPointF): bool =


  fQGraphicsVideoItem_virtualbase_contains(self.h, point.h)

type QGraphicsVideoItemcontainsBase* = proc(point: gen_qpoint.QPointF): bool
proc oncontains*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemcontainsBase, point: gen_qpoint.QPointF): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemcontainsBase, point: gen_qpoint.QPointF): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_contains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_contains(self: ptr cQGraphicsVideoItem, slot: int, point: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsVideoItem_contains ".} =
  type Cb = proc(super: QGraphicsVideoItemcontainsBase, point: gen_qpoint.QPointF): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(point: gen_qpoint.QPointF): auto =
    callVirtualBase_contains(QGraphicsVideoItem(h: self), point)
  let slotval1 = gen_qpoint.QPointF(h: point)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_collidesWithItem(self: QGraphicsVideoItem, other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsVideoItem_virtualbase_collidesWithItem(self.h, other.h, cint(mode))

type QGraphicsVideoItemcollidesWithItemBase* = proc(other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithItem*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemcollidesWithItemBase, other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemcollidesWithItemBase, other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_collidesWithItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_collidesWithItem(self: ptr cQGraphicsVideoItem, slot: int, other: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsVideoItem_collidesWithItem ".} =
  type Cb = proc(super: QGraphicsVideoItemcollidesWithItemBase, other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(other: gen_qgraphicsitem.QGraphicsItem, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithItem(QGraphicsVideoItem(h: self), other, mode)
  let slotval1 = gen_qgraphicsitem.QGraphicsItem(h: other)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_collidesWithPath(self: QGraphicsVideoItem, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool =


  fQGraphicsVideoItem_virtualbase_collidesWithPath(self.h, path.h, cint(mode))

type QGraphicsVideoItemcollidesWithPathBase* = proc(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
proc oncollidesWithPath*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_collidesWithPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_collidesWithPath(self: ptr cQGraphicsVideoItem, slot: int, path: pointer, mode: cint): bool {.exportc: "miqt_exec_callback_QGraphicsVideoItem_collidesWithPath ".} =
  type Cb = proc(super: QGraphicsVideoItemcollidesWithPathBase, path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(path: gen_qpainterpath.QPainterPath, mode: gen_qnamespace.ItemSelectionMode): auto =
    callVirtualBase_collidesWithPath(QGraphicsVideoItem(h: self), path, mode)
  let slotval1 = gen_qpainterpath.QPainterPath(h: path)

  let slotval2 = gen_qnamespace.ItemSelectionMode(mode)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_isObscuredBy(self: QGraphicsVideoItem, item: gen_qgraphicsitem.QGraphicsItem): bool =


  fQGraphicsVideoItem_virtualbase_isObscuredBy(self.h, item.h)

type QGraphicsVideoItemisObscuredByBase* = proc(item: gen_qgraphicsitem.QGraphicsItem): bool
proc onisObscuredBy*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemisObscuredByBase, item: gen_qgraphicsitem.QGraphicsItem): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemisObscuredByBase, item: gen_qgraphicsitem.QGraphicsItem): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_isObscuredBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_isObscuredBy(self: ptr cQGraphicsVideoItem, slot: int, item: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsVideoItem_isObscuredBy ".} =
  type Cb = proc(super: QGraphicsVideoItemisObscuredByBase, item: gen_qgraphicsitem.QGraphicsItem): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(item: gen_qgraphicsitem.QGraphicsItem): auto =
    callVirtualBase_isObscuredBy(QGraphicsVideoItem(h: self), item)
  let slotval1 = gen_qgraphicsitem.QGraphicsItem(h: item)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_opaqueArea(self: QGraphicsVideoItem, ): gen_qpainterpath.QPainterPath =


  gen_qpainterpath.QPainterPath(h: fQGraphicsVideoItem_virtualbase_opaqueArea(self.h))

type QGraphicsVideoItemopaqueAreaBase* = proc(): gen_qpainterpath.QPainterPath
proc onopaqueArea*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemopaqueAreaBase): gen_qpainterpath.QPainterPath) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemopaqueAreaBase): gen_qpainterpath.QPainterPath
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_opaqueArea(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_opaqueArea(self: ptr cQGraphicsVideoItem, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsVideoItem_opaqueArea ".} =
  type Cb = proc(super: QGraphicsVideoItemopaqueAreaBase): gen_qpainterpath.QPainterPath
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_opaqueArea(QGraphicsVideoItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_sceneEventFilter(self: QGraphicsVideoItem, watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsVideoItem_virtualbase_sceneEventFilter(self.h, watched.h, event.h)

type QGraphicsVideoItemsceneEventFilterBase* = proc(watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): bool
proc onsceneEventFilter*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemsceneEventFilterBase, watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemsceneEventFilterBase, watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_sceneEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_sceneEventFilter(self: ptr cQGraphicsVideoItem, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsVideoItem_sceneEventFilter ".} =
  type Cb = proc(super: QGraphicsVideoItemsceneEventFilterBase, watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qgraphicsitem.QGraphicsItem, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEventFilter(QGraphicsVideoItem(h: self), watched, event)
  let slotval1 = gen_qgraphicsitem.QGraphicsItem(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_sceneEvent(self: QGraphicsVideoItem, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsVideoItem_virtualbase_sceneEvent(self.h, event.h)

type QGraphicsVideoItemsceneEventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onsceneEvent*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemsceneEventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_sceneEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_sceneEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsVideoItem_sceneEvent ".} =
  type Cb = proc(super: QGraphicsVideoItemsceneEventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_sceneEvent(QGraphicsVideoItem(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_contextMenuEvent(self: QGraphicsVideoItem, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void =


  fQGraphicsVideoItem_virtualbase_contextMenuEvent(self.h, event.h)

type QGraphicsVideoItemcontextMenuEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
proc oncontextMenuEvent*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_contextMenuEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_contextMenuEvent ".} =
  type Cb = proc(super: QGraphicsVideoItemcontextMenuEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QGraphicsVideoItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QGraphicsVideoItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsVideoItem_virtualbase_dragEnterEvent(self.h, event.h)

type QGraphicsVideoItemdragEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragEnterEvent*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_dragEnterEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_dragEnterEvent ".} =
  type Cb = proc(super: QGraphicsVideoItemdragEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragEnterEvent(QGraphicsVideoItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QGraphicsVideoItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsVideoItem_virtualbase_dragLeaveEvent(self.h, event.h)

type QGraphicsVideoItemdragLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragLeaveEvent*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_dragLeaveEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_dragLeaveEvent ".} =
  type Cb = proc(super: QGraphicsVideoItemdragLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragLeaveEvent(QGraphicsVideoItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QGraphicsVideoItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsVideoItem_virtualbase_dragMoveEvent(self.h, event.h)

type QGraphicsVideoItemdragMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondragMoveEvent*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_dragMoveEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_dragMoveEvent ".} =
  type Cb = proc(super: QGraphicsVideoItemdragMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dragMoveEvent(QGraphicsVideoItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QGraphicsVideoItem, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void =


  fQGraphicsVideoItem_virtualbase_dropEvent(self.h, event.h)

type QGraphicsVideoItemdropEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
proc ondropEvent*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_dropEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_dropEvent ".} =
  type Cb = proc(super: QGraphicsVideoItemdropEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent): auto =
    callVirtualBase_dropEvent(QGraphicsVideoItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneDragDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QGraphicsVideoItem, event: gen_qevent.QFocusEvent): void =


  fQGraphicsVideoItem_virtualbase_focusInEvent(self.h, event.h)

type QGraphicsVideoItemfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_focusInEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_focusInEvent ".} =
  type Cb = proc(super: QGraphicsVideoItemfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QGraphicsVideoItem(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QGraphicsVideoItem, event: gen_qevent.QFocusEvent): void =


  fQGraphicsVideoItem_virtualbase_focusOutEvent(self.h, event.h)

type QGraphicsVideoItemfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_focusOutEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_focusOutEvent ".} =
  type Cb = proc(super: QGraphicsVideoItemfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QGraphicsVideoItem(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverEnterEvent(self: QGraphicsVideoItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsVideoItem_virtualbase_hoverEnterEvent(self.h, event.h)

type QGraphicsVideoItemhoverEnterEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverEnterEvent*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_hoverEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_hoverEnterEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_hoverEnterEvent ".} =
  type Cb = proc(super: QGraphicsVideoItemhoverEnterEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverEnterEvent(QGraphicsVideoItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverMoveEvent(self: QGraphicsVideoItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsVideoItem_virtualbase_hoverMoveEvent(self.h, event.h)

type QGraphicsVideoItemhoverMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverMoveEvent*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_hoverMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_hoverMoveEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_hoverMoveEvent ".} =
  type Cb = proc(super: QGraphicsVideoItemhoverMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverMoveEvent(QGraphicsVideoItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hoverLeaveEvent(self: QGraphicsVideoItem, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void =


  fQGraphicsVideoItem_virtualbase_hoverLeaveEvent(self.h, event.h)

type QGraphicsVideoItemhoverLeaveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
proc onhoverLeaveEvent*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_hoverLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_hoverLeaveEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_hoverLeaveEvent ".} =
  type Cb = proc(super: QGraphicsVideoItemhoverLeaveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneHoverEvent): auto =
    callVirtualBase_hoverLeaveEvent(QGraphicsVideoItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneHoverEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QGraphicsVideoItem, event: gen_qevent.QKeyEvent): void =


  fQGraphicsVideoItem_virtualbase_keyPressEvent(self.h, event.h)

type QGraphicsVideoItemkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_keyPressEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_keyPressEvent ".} =
  type Cb = proc(super: QGraphicsVideoItemkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QGraphicsVideoItem(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QGraphicsVideoItem, event: gen_qevent.QKeyEvent): void =


  fQGraphicsVideoItem_virtualbase_keyReleaseEvent(self.h, event.h)

type QGraphicsVideoItemkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_keyReleaseEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_keyReleaseEvent ".} =
  type Cb = proc(super: QGraphicsVideoItemkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QGraphicsVideoItem(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QGraphicsVideoItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsVideoItem_virtualbase_mousePressEvent(self.h, event.h)

type QGraphicsVideoItemmousePressEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmousePressEvent*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_mousePressEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_mousePressEvent ".} =
  type Cb = proc(super: QGraphicsVideoItemmousePressEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mousePressEvent(QGraphicsVideoItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QGraphicsVideoItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsVideoItem_virtualbase_mouseMoveEvent(self.h, event.h)

type QGraphicsVideoItemmouseMoveEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseMoveEvent*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_mouseMoveEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_mouseMoveEvent ".} =
  type Cb = proc(super: QGraphicsVideoItemmouseMoveEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QGraphicsVideoItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QGraphicsVideoItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsVideoItem_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGraphicsVideoItemmouseReleaseEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseReleaseEvent*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_mouseReleaseEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_mouseReleaseEvent ".} =
  type Cb = proc(super: QGraphicsVideoItemmouseReleaseEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QGraphicsVideoItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QGraphicsVideoItem, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void =


  fQGraphicsVideoItem_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGraphicsVideoItemmouseDoubleClickEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
proc onmouseDoubleClickEvent*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_mouseDoubleClickEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QGraphicsVideoItemmouseDoubleClickEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QGraphicsVideoItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QGraphicsVideoItem, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void =


  fQGraphicsVideoItem_virtualbase_wheelEvent(self.h, event.h)

type QGraphicsVideoItemwheelEventBase* = proc(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
proc onwheelEvent*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_wheelEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_wheelEvent ".} =
  type Cb = proc(super: QGraphicsVideoItemwheelEventBase, event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qgraphicssceneevent.QGraphicsSceneWheelEvent): auto =
    callVirtualBase_wheelEvent(QGraphicsVideoItem(h: self), event)
  let slotval1 = gen_qgraphicssceneevent.QGraphicsSceneWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QGraphicsVideoItem, event: gen_qevent.QInputMethodEvent): void =


  fQGraphicsVideoItem_virtualbase_inputMethodEvent(self.h, event.h)

type QGraphicsVideoIteminputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_inputMethodEvent(self: ptr cQGraphicsVideoItem, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_inputMethodEvent ".} =
  type Cb = proc(super: QGraphicsVideoIteminputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QGraphicsVideoItem(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QGraphicsVideoItem, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsVideoItem_virtualbase_inputMethodQuery(self.h, cint(query)))

type QGraphicsVideoIteminputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_inputMethodQuery(self: ptr cQGraphicsVideoItem, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsVideoItem_inputMethodQuery ".} =
  type Cb = proc(super: QGraphicsVideoIteminputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QGraphicsVideoItem(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_supportsExtension(self: QGraphicsVideoItem, extension: gen_qgraphicsitem.QGraphicsItemExtension): bool =


  fQGraphicsVideoItem_virtualbase_supportsExtension(self.h, cint(extension))

type QGraphicsVideoItemsupportsExtensionBase* = proc(extension: gen_qgraphicsitem.QGraphicsItemExtension): bool
proc onsupportsExtension*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemsupportsExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemsupportsExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_supportsExtension(self: ptr cQGraphicsVideoItem, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QGraphicsVideoItem_supportsExtension ".} =
  type Cb = proc(super: QGraphicsVideoItemsupportsExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: gen_qgraphicsitem.QGraphicsItemExtension): auto =
    callVirtualBase_supportsExtension(QGraphicsVideoItem(h: self), extension)
  let slotval1 = gen_qgraphicsitem.QGraphicsItemExtension(extension)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_setExtension(self: QGraphicsVideoItem, extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): void =


  fQGraphicsVideoItem_virtualbase_setExtension(self.h, cint(extension), variant.h)

type QGraphicsVideoItemsetExtensionBase* = proc(extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
proc onsetExtension*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemsetExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemsetExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_setExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_setExtension(self: ptr cQGraphicsVideoItem, slot: int, extension: cint, variant: pointer): void {.exportc: "miqt_exec_callback_QGraphicsVideoItem_setExtension ".} =
  type Cb = proc(super: QGraphicsVideoItemsetExtensionBase, extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: gen_qgraphicsitem.QGraphicsItemExtension, variant: gen_qvariant.QVariant): auto =
    callVirtualBase_setExtension(QGraphicsVideoItem(h: self), extension, variant)
  let slotval1 = gen_qgraphicsitem.QGraphicsItemExtension(extension)

  let slotval2 = gen_qvariant.QVariant(h: variant)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_extension(self: QGraphicsVideoItem, variant: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQGraphicsVideoItem_virtualbase_extension(self.h, variant.h))

type QGraphicsVideoItemextensionBase* = proc(variant: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onextension*(self: QGraphicsVideoItem, slot: proc(super: QGraphicsVideoItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsVideoItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsVideoItem_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsVideoItem_extension(self: ptr cQGraphicsVideoItem, slot: int, variant: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsVideoItem_extension ".} =
  type Cb = proc(super: QGraphicsVideoItemextensionBase, variant: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(variant: gen_qvariant.QVariant): auto =
    callVirtualBase_extension(QGraphicsVideoItem(h: self), variant)
  let slotval1 = gen_qvariant.QVariant(h: variant)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc delete*(self: QGraphicsVideoItem) =
  fcQGraphicsVideoItem_delete(self.h)
