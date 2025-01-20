import Qt5Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5Widgets")
{.compile("gen_qabstracttextdocumentlayout.cpp", cflags).}


import gen_qabstracttextdocumentlayout_types
export gen_qabstracttextdocumentlayout_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpainter,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qtextdocument,
  gen_qtextformat,
  gen_qtextlayout,
  gen_qtextobject
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpainter,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qtextdocument,
  gen_qtextformat,
  gen_qtextlayout,
  gen_qtextobject

type cQAbstractTextDocumentLayout*{.exportc: "QAbstractTextDocumentLayout", incompleteStruct.} = object
type cQTextObjectInterface*{.exportc: "QTextObjectInterface", incompleteStruct.} = object
type cQAbstractTextDocumentLayoutSelection*{.exportc: "QAbstractTextDocumentLayout__Selection", incompleteStruct.} = object
type cQAbstractTextDocumentLayoutPaintContext*{.exportc: "QAbstractTextDocumentLayout__PaintContext", incompleteStruct.} = object

proc fcQAbstractTextDocumentLayout_new(doc: pointer): ptr cQAbstractTextDocumentLayout {.importc: "QAbstractTextDocumentLayout_new".}
proc fcQAbstractTextDocumentLayout_metaObject(self: pointer, ): pointer {.importc: "QAbstractTextDocumentLayout_metaObject".}
proc fcQAbstractTextDocumentLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractTextDocumentLayout_metacast".}
proc fcQAbstractTextDocumentLayout_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractTextDocumentLayout_metacall".}
proc fcQAbstractTextDocumentLayout_tr(s: cstring): struct_miqt_string {.importc: "QAbstractTextDocumentLayout_tr".}
proc fcQAbstractTextDocumentLayout_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractTextDocumentLayout_trUtf8".}
proc fcQAbstractTextDocumentLayout_draw(self: pointer, painter: pointer, context: pointer): void {.importc: "QAbstractTextDocumentLayout_draw".}
proc fcQAbstractTextDocumentLayout_hitTest(self: pointer, point: pointer, accuracy: cint): cint {.importc: "QAbstractTextDocumentLayout_hitTest".}
proc fcQAbstractTextDocumentLayout_anchorAt(self: pointer, pos: pointer): struct_miqt_string {.importc: "QAbstractTextDocumentLayout_anchorAt".}
proc fcQAbstractTextDocumentLayout_imageAt(self: pointer, pos: pointer): struct_miqt_string {.importc: "QAbstractTextDocumentLayout_imageAt".}
proc fcQAbstractTextDocumentLayout_formatAt(self: pointer, pos: pointer): pointer {.importc: "QAbstractTextDocumentLayout_formatAt".}
proc fcQAbstractTextDocumentLayout_blockWithMarkerAt(self: pointer, pos: pointer): pointer {.importc: "QAbstractTextDocumentLayout_blockWithMarkerAt".}
proc fcQAbstractTextDocumentLayout_pageCount(self: pointer, ): cint {.importc: "QAbstractTextDocumentLayout_pageCount".}
proc fcQAbstractTextDocumentLayout_documentSize(self: pointer, ): pointer {.importc: "QAbstractTextDocumentLayout_documentSize".}
proc fcQAbstractTextDocumentLayout_frameBoundingRect(self: pointer, frame: pointer): pointer {.importc: "QAbstractTextDocumentLayout_frameBoundingRect".}
proc fcQAbstractTextDocumentLayout_blockBoundingRect(self: pointer, blockVal: pointer): pointer {.importc: "QAbstractTextDocumentLayout_blockBoundingRect".}
proc fcQAbstractTextDocumentLayout_setPaintDevice(self: pointer, device: pointer): void {.importc: "QAbstractTextDocumentLayout_setPaintDevice".}
proc fcQAbstractTextDocumentLayout_paintDevice(self: pointer, ): pointer {.importc: "QAbstractTextDocumentLayout_paintDevice".}
proc fcQAbstractTextDocumentLayout_document(self: pointer, ): pointer {.importc: "QAbstractTextDocumentLayout_document".}
proc fcQAbstractTextDocumentLayout_registerHandler(self: pointer, objectType: cint, component: pointer): void {.importc: "QAbstractTextDocumentLayout_registerHandler".}
proc fcQAbstractTextDocumentLayout_unregisterHandler(self: pointer, objectType: cint): void {.importc: "QAbstractTextDocumentLayout_unregisterHandler".}
proc fcQAbstractTextDocumentLayout_handlerForObject(self: pointer, objectType: cint): pointer {.importc: "QAbstractTextDocumentLayout_handlerForObject".}
proc fcQAbstractTextDocumentLayout_update(self: pointer, ): void {.importc: "QAbstractTextDocumentLayout_update".}
proc fQAbstractTextDocumentLayout_connect_update(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_connect_update".}
proc fcQAbstractTextDocumentLayout_updateBlock(self: pointer, blockVal: pointer): void {.importc: "QAbstractTextDocumentLayout_updateBlock".}
proc fQAbstractTextDocumentLayout_connect_updateBlock(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_connect_updateBlock".}
proc fcQAbstractTextDocumentLayout_documentSizeChanged(self: pointer, newSize: pointer): void {.importc: "QAbstractTextDocumentLayout_documentSizeChanged".}
proc fQAbstractTextDocumentLayout_connect_documentSizeChanged(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_connect_documentSizeChanged".}
proc fcQAbstractTextDocumentLayout_pageCountChanged(self: pointer, newPages: cint): void {.importc: "QAbstractTextDocumentLayout_pageCountChanged".}
proc fQAbstractTextDocumentLayout_connect_pageCountChanged(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_connect_pageCountChanged".}
proc fcQAbstractTextDocumentLayout_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractTextDocumentLayout_tr2".}
proc fcQAbstractTextDocumentLayout_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractTextDocumentLayout_tr3".}
proc fcQAbstractTextDocumentLayout_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractTextDocumentLayout_trUtf82".}
proc fcQAbstractTextDocumentLayout_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractTextDocumentLayout_trUtf83".}
proc fcQAbstractTextDocumentLayout_unregisterHandler2(self: pointer, objectType: cint, component: pointer): void {.importc: "QAbstractTextDocumentLayout_unregisterHandler2".}
proc fcQAbstractTextDocumentLayout_update1(self: pointer, param1: pointer): void {.importc: "QAbstractTextDocumentLayout_update1".}
proc fQAbstractTextDocumentLayout_connect_update1(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_connect_update1".}
proc fQAbstractTextDocumentLayout_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAbstractTextDocumentLayout_virtualbase_metaObject".}
proc fcQAbstractTextDocumentLayout_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_metaObject".}
proc fQAbstractTextDocumentLayout_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAbstractTextDocumentLayout_virtualbase_metacast".}
proc fcQAbstractTextDocumentLayout_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_metacast".}
proc fQAbstractTextDocumentLayout_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAbstractTextDocumentLayout_virtualbase_metacall".}
proc fcQAbstractTextDocumentLayout_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_metacall".}
proc fcQAbstractTextDocumentLayout_override_virtual_draw(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_draw".}
proc fcQAbstractTextDocumentLayout_override_virtual_hitTest(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_hitTest".}
proc fcQAbstractTextDocumentLayout_override_virtual_pageCount(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_pageCount".}
proc fcQAbstractTextDocumentLayout_override_virtual_documentSize(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_documentSize".}
proc fcQAbstractTextDocumentLayout_override_virtual_frameBoundingRect(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_frameBoundingRect".}
proc fcQAbstractTextDocumentLayout_override_virtual_blockBoundingRect(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_blockBoundingRect".}
proc fcQAbstractTextDocumentLayout_override_virtual_documentChanged(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_documentChanged".}
proc fQAbstractTextDocumentLayout_virtualbase_resizeInlineObject(self: pointer, item: pointer, posInDocument: cint, format: pointer): void{.importc: "QAbstractTextDocumentLayout_virtualbase_resizeInlineObject".}
proc fcQAbstractTextDocumentLayout_override_virtual_resizeInlineObject(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_resizeInlineObject".}
proc fQAbstractTextDocumentLayout_virtualbase_positionInlineObject(self: pointer, item: pointer, posInDocument: cint, format: pointer): void{.importc: "QAbstractTextDocumentLayout_virtualbase_positionInlineObject".}
proc fcQAbstractTextDocumentLayout_override_virtual_positionInlineObject(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_positionInlineObject".}
proc fQAbstractTextDocumentLayout_virtualbase_drawInlineObject(self: pointer, painter: pointer, rect: pointer, objectVal: pointer, posInDocument: cint, format: pointer): void{.importc: "QAbstractTextDocumentLayout_virtualbase_drawInlineObject".}
proc fcQAbstractTextDocumentLayout_override_virtual_drawInlineObject(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_drawInlineObject".}
proc fQAbstractTextDocumentLayout_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAbstractTextDocumentLayout_virtualbase_event".}
proc fcQAbstractTextDocumentLayout_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_event".}
proc fQAbstractTextDocumentLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractTextDocumentLayout_virtualbase_eventFilter".}
proc fcQAbstractTextDocumentLayout_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_eventFilter".}
proc fQAbstractTextDocumentLayout_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractTextDocumentLayout_virtualbase_timerEvent".}
proc fcQAbstractTextDocumentLayout_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_timerEvent".}
proc fQAbstractTextDocumentLayout_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractTextDocumentLayout_virtualbase_childEvent".}
proc fcQAbstractTextDocumentLayout_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_childEvent".}
proc fQAbstractTextDocumentLayout_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractTextDocumentLayout_virtualbase_customEvent".}
proc fcQAbstractTextDocumentLayout_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_customEvent".}
proc fQAbstractTextDocumentLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractTextDocumentLayout_virtualbase_connectNotify".}
proc fcQAbstractTextDocumentLayout_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_connectNotify".}
proc fQAbstractTextDocumentLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractTextDocumentLayout_virtualbase_disconnectNotify".}
proc fcQAbstractTextDocumentLayout_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_disconnectNotify".}
proc fcQAbstractTextDocumentLayout_staticMetaObject(): pointer {.importc: "QAbstractTextDocumentLayout_staticMetaObject".}
proc fcQAbstractTextDocumentLayout_delete(self: pointer) {.importc: "QAbstractTextDocumentLayout_delete".}
proc fcQTextObjectInterface_intrinsicSize(self: pointer, doc: pointer, posInDocument: cint, format: pointer): pointer {.importc: "QTextObjectInterface_intrinsicSize".}
proc fcQTextObjectInterface_drawObject(self: pointer, painter: pointer, rect: pointer, doc: pointer, posInDocument: cint, format: pointer): void {.importc: "QTextObjectInterface_drawObject".}
proc fcQTextObjectInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QTextObjectInterface_operatorAssign".}
proc fcQTextObjectInterface_delete(self: pointer) {.importc: "QTextObjectInterface_delete".}
proc fcQAbstractTextDocumentLayoutSelection_new(param1: pointer): ptr cQAbstractTextDocumentLayoutSelection {.importc: "QAbstractTextDocumentLayout__Selection_new".}
proc fcQAbstractTextDocumentLayoutSelection_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAbstractTextDocumentLayout__Selection_operatorAssign".}
proc fcQAbstractTextDocumentLayoutSelection_delete(self: pointer) {.importc: "QAbstractTextDocumentLayout__Selection_delete".}
proc fcQAbstractTextDocumentLayoutPaintContext_new(): ptr cQAbstractTextDocumentLayoutPaintContext {.importc: "QAbstractTextDocumentLayout__PaintContext_new".}
proc fcQAbstractTextDocumentLayoutPaintContext_new2(param1: pointer): ptr cQAbstractTextDocumentLayoutPaintContext {.importc: "QAbstractTextDocumentLayout__PaintContext_new2".}
proc fcQAbstractTextDocumentLayoutPaintContext_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAbstractTextDocumentLayout__PaintContext_operatorAssign".}
proc fcQAbstractTextDocumentLayoutPaintContext_delete(self: pointer) {.importc: "QAbstractTextDocumentLayout__PaintContext_delete".}


func init*(T: type QAbstractTextDocumentLayout, h: ptr cQAbstractTextDocumentLayout): QAbstractTextDocumentLayout =
  T(h: h)
proc create*(T: type QAbstractTextDocumentLayout, doc: gen_qtextdocument.QTextDocument): QAbstractTextDocumentLayout =

  QAbstractTextDocumentLayout.init(fcQAbstractTextDocumentLayout_new(doc.h))
proc metaObject*(self: QAbstractTextDocumentLayout, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAbstractTextDocumentLayout_metaObject(self.h))

proc metacast*(self: QAbstractTextDocumentLayout, param1: cstring): pointer =

  fcQAbstractTextDocumentLayout_metacast(self.h, param1)

proc metacall*(self: QAbstractTextDocumentLayout, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAbstractTextDocumentLayout_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAbstractTextDocumentLayout, s: cstring): string =

  let v_ms = fcQAbstractTextDocumentLayout_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QAbstractTextDocumentLayout, s: cstring): string =

  let v_ms = fcQAbstractTextDocumentLayout_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc draw*(self: QAbstractTextDocumentLayout, painter: gen_qpainter.QPainter, context: QAbstractTextDocumentLayoutPaintContext): void =

  fcQAbstractTextDocumentLayout_draw(self.h, painter.h, context.h)

proc hitTest*(self: QAbstractTextDocumentLayout, point: gen_qpoint.QPointF, accuracy: gen_qnamespace.HitTestAccuracy): cint =

  fcQAbstractTextDocumentLayout_hitTest(self.h, point.h, cint(accuracy))

proc anchorAt*(self: QAbstractTextDocumentLayout, pos: gen_qpoint.QPointF): string =

  let v_ms = fcQAbstractTextDocumentLayout_anchorAt(self.h, pos.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc imageAt*(self: QAbstractTextDocumentLayout, pos: gen_qpoint.QPointF): string =

  let v_ms = fcQAbstractTextDocumentLayout_imageAt(self.h, pos.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc formatAt*(self: QAbstractTextDocumentLayout, pos: gen_qpoint.QPointF): gen_qtextformat.QTextFormat =

  gen_qtextformat.QTextFormat(h: fcQAbstractTextDocumentLayout_formatAt(self.h, pos.h))

proc blockWithMarkerAt*(self: QAbstractTextDocumentLayout, pos: gen_qpoint.QPointF): gen_qtextobject.QTextBlock =

  gen_qtextobject.QTextBlock(h: fcQAbstractTextDocumentLayout_blockWithMarkerAt(self.h, pos.h))

proc pageCount*(self: QAbstractTextDocumentLayout, ): cint =

  fcQAbstractTextDocumentLayout_pageCount(self.h)

proc documentSize*(self: QAbstractTextDocumentLayout, ): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQAbstractTextDocumentLayout_documentSize(self.h))

proc frameBoundingRect*(self: QAbstractTextDocumentLayout, frame: gen_qtextobject.QTextFrame): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQAbstractTextDocumentLayout_frameBoundingRect(self.h, frame.h))

proc blockBoundingRect*(self: QAbstractTextDocumentLayout, blockVal: gen_qtextobject.QTextBlock): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQAbstractTextDocumentLayout_blockBoundingRect(self.h, blockVal.h))

proc setPaintDevice*(self: QAbstractTextDocumentLayout, device: gen_qpaintdevice.QPaintDevice): void =

  fcQAbstractTextDocumentLayout_setPaintDevice(self.h, device.h)

proc paintDevice*(self: QAbstractTextDocumentLayout, ): gen_qpaintdevice.QPaintDevice =

  gen_qpaintdevice.QPaintDevice(h: fcQAbstractTextDocumentLayout_paintDevice(self.h))

proc document*(self: QAbstractTextDocumentLayout, ): gen_qtextdocument.QTextDocument =

  gen_qtextdocument.QTextDocument(h: fcQAbstractTextDocumentLayout_document(self.h))

proc registerHandler*(self: QAbstractTextDocumentLayout, objectType: cint, component: gen_qobject.QObject): void =

  fcQAbstractTextDocumentLayout_registerHandler(self.h, objectType, component.h)

proc unregisterHandler*(self: QAbstractTextDocumentLayout, objectType: cint): void =

  fcQAbstractTextDocumentLayout_unregisterHandler(self.h, objectType)

proc handlerForObject*(self: QAbstractTextDocumentLayout, objectType: cint): QTextObjectInterface =

  QTextObjectInterface(h: fcQAbstractTextDocumentLayout_handlerForObject(self.h, objectType))

proc update*(self: QAbstractTextDocumentLayout, ): void =

  fcQAbstractTextDocumentLayout_update(self.h)

proc miqt_exec_callback_QAbstractTextDocumentLayout_update(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onupdate*(self: QAbstractTextDocumentLayout, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractTextDocumentLayout_connect_update(self.h, cast[int](addr tmp[]))
proc updateBlock*(self: QAbstractTextDocumentLayout, blockVal: gen_qtextobject.QTextBlock): void =

  fcQAbstractTextDocumentLayout_updateBlock(self.h, blockVal.h)

proc miqt_exec_callback_QAbstractTextDocumentLayout_updateBlock(slot: int, blockVal: pointer) {.exportc.} =
  type Cb = proc(blockVal: gen_qtextobject.QTextBlock)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qtextobject.QTextBlock(h: blockVal)


  nimfunc[](slotval1)

proc onupdateBlock*(self: QAbstractTextDocumentLayout, slot: proc(blockVal: gen_qtextobject.QTextBlock)) =
  type Cb = proc(blockVal: gen_qtextobject.QTextBlock)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractTextDocumentLayout_connect_updateBlock(self.h, cast[int](addr tmp[]))
proc documentSizeChanged*(self: QAbstractTextDocumentLayout, newSize: gen_qsize.QSizeF): void =

  fcQAbstractTextDocumentLayout_documentSizeChanged(self.h, newSize.h)

proc miqt_exec_callback_QAbstractTextDocumentLayout_documentSizeChanged(slot: int, newSize: pointer) {.exportc.} =
  type Cb = proc(newSize: gen_qsize.QSizeF)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qsize.QSizeF(h: newSize)


  nimfunc[](slotval1)

proc ondocumentSizeChanged*(self: QAbstractTextDocumentLayout, slot: proc(newSize: gen_qsize.QSizeF)) =
  type Cb = proc(newSize: gen_qsize.QSizeF)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractTextDocumentLayout_connect_documentSizeChanged(self.h, cast[int](addr tmp[]))
proc pageCountChanged*(self: QAbstractTextDocumentLayout, newPages: cint): void =

  fcQAbstractTextDocumentLayout_pageCountChanged(self.h, newPages)

proc miqt_exec_callback_QAbstractTextDocumentLayout_pageCountChanged(slot: int, newPages: cint) {.exportc.} =
  type Cb = proc(newPages: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = newPages


  nimfunc[](slotval1)

proc onpageCountChanged*(self: QAbstractTextDocumentLayout, slot: proc(newPages: cint)) =
  type Cb = proc(newPages: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractTextDocumentLayout_connect_pageCountChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QAbstractTextDocumentLayout, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractTextDocumentLayout_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAbstractTextDocumentLayout, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractTextDocumentLayout_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QAbstractTextDocumentLayout, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractTextDocumentLayout_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QAbstractTextDocumentLayout, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractTextDocumentLayout_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc unregisterHandler2*(self: QAbstractTextDocumentLayout, objectType: cint, component: gen_qobject.QObject): void =

  fcQAbstractTextDocumentLayout_unregisterHandler2(self.h, objectType, component.h)

proc update1*(self: QAbstractTextDocumentLayout, param1: gen_qrect.QRectF): void =

  fcQAbstractTextDocumentLayout_update1(self.h, param1.h)

proc miqt_exec_callback_QAbstractTextDocumentLayout_update1(slot: int, param1: pointer) {.exportc.} =
  type Cb = proc(param1: gen_qrect.QRectF)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qrect.QRectF(h: param1)


  nimfunc[](slotval1)

proc onupdate1*(self: QAbstractTextDocumentLayout, slot: proc(param1: gen_qrect.QRectF)) =
  type Cb = proc(param1: gen_qrect.QRectF)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractTextDocumentLayout_connect_update1(self.h, cast[int](addr tmp[]))
proc callVirtualBase_metaObject(self: QAbstractTextDocumentLayout, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQAbstractTextDocumentLayout_virtualbase_metaObject(self.h))

type QAbstractTextDocumentLayoutmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QAbstractTextDocumentLayout, slot: proc(super: QAbstractTextDocumentLayoutmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTextDocumentLayoutmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_metaObject(self: ptr cQAbstractTextDocumentLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_metaObject ".} =
  type Cb = proc(super: QAbstractTextDocumentLayoutmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QAbstractTextDocumentLayout(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QAbstractTextDocumentLayout, param1: cstring): pointer =


  fQAbstractTextDocumentLayout_virtualbase_metacast(self.h, param1)

type QAbstractTextDocumentLayoutmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QAbstractTextDocumentLayout, slot: proc(super: QAbstractTextDocumentLayoutmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTextDocumentLayoutmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_metacast(self: ptr cQAbstractTextDocumentLayout, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_metacast ".} =
  type Cb = proc(super: QAbstractTextDocumentLayoutmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QAbstractTextDocumentLayout(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QAbstractTextDocumentLayout, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAbstractTextDocumentLayout_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAbstractTextDocumentLayoutmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAbstractTextDocumentLayout, slot: proc(super: QAbstractTextDocumentLayoutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTextDocumentLayoutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_metacall(self: ptr cQAbstractTextDocumentLayout, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_metacall ".} =
  type Cb = proc(super: QAbstractTextDocumentLayoutmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAbstractTextDocumentLayout(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QAbstractTextDocumentLayoutdrawBase* = proc(painter: gen_qpainter.QPainter, context: QAbstractTextDocumentLayoutPaintContext): void
proc ondraw*(self: QAbstractTextDocumentLayout, slot: proc(painter: gen_qpainter.QPainter, context: QAbstractTextDocumentLayoutPaintContext): void) =
  # TODO check subclass
  type Cb = proc(painter: gen_qpainter.QPainter, context: QAbstractTextDocumentLayoutPaintContext): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_draw(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_draw(self: ptr cQAbstractTextDocumentLayout, slot: int, painter: pointer, context: pointer): void {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_draw ".} =
  type Cb = proc(painter: gen_qpainter.QPainter, context: QAbstractTextDocumentLayoutPaintContext): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = QAbstractTextDocumentLayoutPaintContext(h: context)


  nimfunc[](slotval1, slotval2)
type QAbstractTextDocumentLayouthitTestBase* = proc(point: gen_qpoint.QPointF, accuracy: gen_qnamespace.HitTestAccuracy): cint
proc onhitTest*(self: QAbstractTextDocumentLayout, slot: proc(point: gen_qpoint.QPointF, accuracy: gen_qnamespace.HitTestAccuracy): cint) =
  # TODO check subclass
  type Cb = proc(point: gen_qpoint.QPointF, accuracy: gen_qnamespace.HitTestAccuracy): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_hitTest(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_hitTest(self: ptr cQAbstractTextDocumentLayout, slot: int, point: pointer, accuracy: cint): cint {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_hitTest ".} =
  type Cb = proc(point: gen_qpoint.QPointF, accuracy: gen_qnamespace.HitTestAccuracy): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qpoint.QPointF(h: point)

  let slotval2 = gen_qnamespace.HitTestAccuracy(accuracy)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
type QAbstractTextDocumentLayoutpageCountBase* = proc(): cint
proc onpageCount*(self: QAbstractTextDocumentLayout, slot: proc(): cint) =
  # TODO check subclass
  type Cb = proc(): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_pageCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_pageCount(self: ptr cQAbstractTextDocumentLayout, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_pageCount ".} =
  type Cb = proc(): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QAbstractTextDocumentLayoutdocumentSizeBase* = proc(): gen_qsize.QSizeF
proc ondocumentSize*(self: QAbstractTextDocumentLayout, slot: proc(): gen_qsize.QSizeF) =
  # TODO check subclass
  type Cb = proc(): gen_qsize.QSizeF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_documentSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_documentSize(self: ptr cQAbstractTextDocumentLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_documentSize ".} =
  type Cb = proc(): gen_qsize.QSizeF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
type QAbstractTextDocumentLayoutframeBoundingRectBase* = proc(frame: gen_qtextobject.QTextFrame): gen_qrect.QRectF
proc onframeBoundingRect*(self: QAbstractTextDocumentLayout, slot: proc(frame: gen_qtextobject.QTextFrame): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(frame: gen_qtextobject.QTextFrame): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_frameBoundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_frameBoundingRect(self: ptr cQAbstractTextDocumentLayout, slot: int, frame: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_frameBoundingRect ".} =
  type Cb = proc(frame: gen_qtextobject.QTextFrame): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qtextobject.QTextFrame(h: frame)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
type QAbstractTextDocumentLayoutblockBoundingRectBase* = proc(blockVal: gen_qtextobject.QTextBlock): gen_qrect.QRectF
proc onblockBoundingRect*(self: QAbstractTextDocumentLayout, slot: proc(blockVal: gen_qtextobject.QTextBlock): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(blockVal: gen_qtextobject.QTextBlock): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_blockBoundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_blockBoundingRect(self: ptr cQAbstractTextDocumentLayout, slot: int, blockVal: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_blockBoundingRect ".} =
  type Cb = proc(blockVal: gen_qtextobject.QTextBlock): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qtextobject.QTextBlock(h: blockVal)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
type QAbstractTextDocumentLayoutdocumentChangedBase* = proc(fromVal: cint, charsRemoved: cint, charsAdded: cint): void
proc ondocumentChanged*(self: QAbstractTextDocumentLayout, slot: proc(fromVal: cint, charsRemoved: cint, charsAdded: cint): void) =
  # TODO check subclass
  type Cb = proc(fromVal: cint, charsRemoved: cint, charsAdded: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_documentChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_documentChanged(self: ptr cQAbstractTextDocumentLayout, slot: int, fromVal: cint, charsRemoved: cint, charsAdded: cint): void {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_documentChanged ".} =
  type Cb = proc(fromVal: cint, charsRemoved: cint, charsAdded: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = fromVal

  let slotval2 = charsRemoved

  let slotval3 = charsAdded


  nimfunc[](slotval1, slotval2, slotval3)
proc callVirtualBase_resizeInlineObject(self: QAbstractTextDocumentLayout, item: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void =


  fQAbstractTextDocumentLayout_virtualbase_resizeInlineObject(self.h, item.h, posInDocument, format.h)

type QAbstractTextDocumentLayoutresizeInlineObjectBase* = proc(item: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void
proc onresizeInlineObject*(self: QAbstractTextDocumentLayout, slot: proc(super: QAbstractTextDocumentLayoutresizeInlineObjectBase, item: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTextDocumentLayoutresizeInlineObjectBase, item: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_resizeInlineObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_resizeInlineObject(self: ptr cQAbstractTextDocumentLayout, slot: int, item: pointer, posInDocument: cint, format: pointer): void {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_resizeInlineObject ".} =
  type Cb = proc(super: QAbstractTextDocumentLayoutresizeInlineObjectBase, item: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(item: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): auto =
    callVirtualBase_resizeInlineObject(QAbstractTextDocumentLayout(h: self), item, posInDocument, format)
  let slotval1 = gen_qtextlayout.QTextInlineObject(h: item)

  let slotval2 = posInDocument

  let slotval3 = gen_qtextformat.QTextFormat(h: format)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_positionInlineObject(self: QAbstractTextDocumentLayout, item: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void =


  fQAbstractTextDocumentLayout_virtualbase_positionInlineObject(self.h, item.h, posInDocument, format.h)

type QAbstractTextDocumentLayoutpositionInlineObjectBase* = proc(item: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void
proc onpositionInlineObject*(self: QAbstractTextDocumentLayout, slot: proc(super: QAbstractTextDocumentLayoutpositionInlineObjectBase, item: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTextDocumentLayoutpositionInlineObjectBase, item: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_positionInlineObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_positionInlineObject(self: ptr cQAbstractTextDocumentLayout, slot: int, item: pointer, posInDocument: cint, format: pointer): void {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_positionInlineObject ".} =
  type Cb = proc(super: QAbstractTextDocumentLayoutpositionInlineObjectBase, item: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(item: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): auto =
    callVirtualBase_positionInlineObject(QAbstractTextDocumentLayout(h: self), item, posInDocument, format)
  let slotval1 = gen_qtextlayout.QTextInlineObject(h: item)

  let slotval2 = posInDocument

  let slotval3 = gen_qtextformat.QTextFormat(h: format)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_drawInlineObject(self: QAbstractTextDocumentLayout, painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF, objectVal: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void =


  fQAbstractTextDocumentLayout_virtualbase_drawInlineObject(self.h, painter.h, rect.h, objectVal.h, posInDocument, format.h)

type QAbstractTextDocumentLayoutdrawInlineObjectBase* = proc(painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF, objectVal: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void
proc ondrawInlineObject*(self: QAbstractTextDocumentLayout, slot: proc(super: QAbstractTextDocumentLayoutdrawInlineObjectBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF, objectVal: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTextDocumentLayoutdrawInlineObjectBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF, objectVal: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_drawInlineObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_drawInlineObject(self: ptr cQAbstractTextDocumentLayout, slot: int, painter: pointer, rect: pointer, objectVal: pointer, posInDocument: cint, format: pointer): void {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_drawInlineObject ".} =
  type Cb = proc(super: QAbstractTextDocumentLayoutdrawInlineObjectBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF, objectVal: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF, objectVal: gen_qtextlayout.QTextInlineObject, posInDocument: cint, format: gen_qtextformat.QTextFormat): auto =
    callVirtualBase_drawInlineObject(QAbstractTextDocumentLayout(h: self), painter, rect, objectVal, posInDocument, format)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qrect.QRectF(h: rect)

  let slotval3 = gen_qtextlayout.QTextInlineObject(h: objectVal)

  let slotval4 = posInDocument

  let slotval5 = gen_qtextformat.QTextFormat(h: format)


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5)
proc callVirtualBase_event(self: QAbstractTextDocumentLayout, event: gen_qcoreevent.QEvent): bool =


  fQAbstractTextDocumentLayout_virtualbase_event(self.h, event.h)

type QAbstractTextDocumentLayouteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAbstractTextDocumentLayout, slot: proc(super: QAbstractTextDocumentLayouteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTextDocumentLayouteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_event(self: ptr cQAbstractTextDocumentLayout, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_event ".} =
  type Cb = proc(super: QAbstractTextDocumentLayouteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAbstractTextDocumentLayout(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QAbstractTextDocumentLayout, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAbstractTextDocumentLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAbstractTextDocumentLayouteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAbstractTextDocumentLayout, slot: proc(super: QAbstractTextDocumentLayouteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTextDocumentLayouteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_eventFilter(self: ptr cQAbstractTextDocumentLayout, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_eventFilter ".} =
  type Cb = proc(super: QAbstractTextDocumentLayouteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAbstractTextDocumentLayout(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAbstractTextDocumentLayout, event: gen_qcoreevent.QTimerEvent): void =


  fQAbstractTextDocumentLayout_virtualbase_timerEvent(self.h, event.h)

type QAbstractTextDocumentLayouttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAbstractTextDocumentLayout, slot: proc(super: QAbstractTextDocumentLayouttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTextDocumentLayouttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_timerEvent(self: ptr cQAbstractTextDocumentLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_timerEvent ".} =
  type Cb = proc(super: QAbstractTextDocumentLayouttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAbstractTextDocumentLayout(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAbstractTextDocumentLayout, event: gen_qcoreevent.QChildEvent): void =


  fQAbstractTextDocumentLayout_virtualbase_childEvent(self.h, event.h)

type QAbstractTextDocumentLayoutchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAbstractTextDocumentLayout, slot: proc(super: QAbstractTextDocumentLayoutchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTextDocumentLayoutchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_childEvent(self: ptr cQAbstractTextDocumentLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_childEvent ".} =
  type Cb = proc(super: QAbstractTextDocumentLayoutchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAbstractTextDocumentLayout(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAbstractTextDocumentLayout, event: gen_qcoreevent.QEvent): void =


  fQAbstractTextDocumentLayout_virtualbase_customEvent(self.h, event.h)

type QAbstractTextDocumentLayoutcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAbstractTextDocumentLayout, slot: proc(super: QAbstractTextDocumentLayoutcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTextDocumentLayoutcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_customEvent(self: ptr cQAbstractTextDocumentLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_customEvent ".} =
  type Cb = proc(super: QAbstractTextDocumentLayoutcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAbstractTextDocumentLayout(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAbstractTextDocumentLayout, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractTextDocumentLayout_virtualbase_connectNotify(self.h, signal.h)

type QAbstractTextDocumentLayoutconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAbstractTextDocumentLayout, slot: proc(super: QAbstractTextDocumentLayoutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTextDocumentLayoutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_connectNotify(self: ptr cQAbstractTextDocumentLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_connectNotify ".} =
  type Cb = proc(super: QAbstractTextDocumentLayoutconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAbstractTextDocumentLayout(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAbstractTextDocumentLayout, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractTextDocumentLayout_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractTextDocumentLayoutdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAbstractTextDocumentLayout, slot: proc(super: QAbstractTextDocumentLayoutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTextDocumentLayoutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_disconnectNotify(self: ptr cQAbstractTextDocumentLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_disconnectNotify ".} =
  type Cb = proc(super: QAbstractTextDocumentLayoutdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAbstractTextDocumentLayout(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QAbstractTextDocumentLayout): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQAbstractTextDocumentLayout_staticMetaObject())
proc delete*(self: QAbstractTextDocumentLayout) =
  fcQAbstractTextDocumentLayout_delete(self.h)

func init*(T: type QTextObjectInterface, h: ptr cQTextObjectInterface): QTextObjectInterface =
  T(h: h)
proc intrinsicSize*(self: QTextObjectInterface, doc: gen_qtextdocument.QTextDocument, posInDocument: cint, format: gen_qtextformat.QTextFormat): gen_qsize.QSizeF =

  gen_qsize.QSizeF(h: fcQTextObjectInterface_intrinsicSize(self.h, doc.h, posInDocument, format.h))

proc drawObject*(self: QTextObjectInterface, painter: gen_qpainter.QPainter, rect: gen_qrect.QRectF, doc: gen_qtextdocument.QTextDocument, posInDocument: cint, format: gen_qtextformat.QTextFormat): void =

  fcQTextObjectInterface_drawObject(self.h, painter.h, rect.h, doc.h, posInDocument, format.h)

proc operatorAssign*(self: QTextObjectInterface, param1: QTextObjectInterface): void =

  fcQTextObjectInterface_operatorAssign(self.h, param1.h)

proc delete*(self: QTextObjectInterface) =
  fcQTextObjectInterface_delete(self.h)

func init*(T: type QAbstractTextDocumentLayoutSelection, h: ptr cQAbstractTextDocumentLayoutSelection): QAbstractTextDocumentLayoutSelection =
  T(h: h)
proc create*(T: type QAbstractTextDocumentLayoutSelection, param1: QAbstractTextDocumentLayoutSelection): QAbstractTextDocumentLayoutSelection =

  QAbstractTextDocumentLayoutSelection.init(fcQAbstractTextDocumentLayoutSelection_new(param1.h))
proc operatorAssign*(self: QAbstractTextDocumentLayoutSelection, param1: QAbstractTextDocumentLayoutSelection): void =

  fcQAbstractTextDocumentLayoutSelection_operatorAssign(self.h, param1.h)

proc delete*(self: QAbstractTextDocumentLayoutSelection) =
  fcQAbstractTextDocumentLayoutSelection_delete(self.h)

func init*(T: type QAbstractTextDocumentLayoutPaintContext, h: ptr cQAbstractTextDocumentLayoutPaintContext): QAbstractTextDocumentLayoutPaintContext =
  T(h: h)
proc create*(T: type QAbstractTextDocumentLayoutPaintContext, ): QAbstractTextDocumentLayoutPaintContext =

  QAbstractTextDocumentLayoutPaintContext.init(fcQAbstractTextDocumentLayoutPaintContext_new())
proc create*(T: type QAbstractTextDocumentLayoutPaintContext, param1: QAbstractTextDocumentLayoutPaintContext): QAbstractTextDocumentLayoutPaintContext =

  QAbstractTextDocumentLayoutPaintContext.init(fcQAbstractTextDocumentLayoutPaintContext_new2(param1.h))
proc operatorAssign*(self: QAbstractTextDocumentLayoutPaintContext, param1: QAbstractTextDocumentLayoutPaintContext): void =

  fcQAbstractTextDocumentLayoutPaintContext_operatorAssign(self.h, param1.h)

proc delete*(self: QAbstractTextDocumentLayoutPaintContext) =
  fcQAbstractTextDocumentLayoutPaintContext_delete(self.h)
