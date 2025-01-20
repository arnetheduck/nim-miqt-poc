import Qt5WebKitWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5WebKitWidgets")
{.compile("gen_qwebinspector.cpp", cflags).}


import gen_qwebinspector_types
export gen_qwebinspector_types

import
  gen_qcoreevent,
  gen_qevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qsize,
  gen_qvariant,
  gen_qwebpage,
  gen_qwidget
export
  gen_qcoreevent,
  gen_qevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qsize,
  gen_qvariant,
  gen_qwebpage,
  gen_qwidget

type cQWebInspector*{.exportc: "QWebInspector", incompleteStruct.} = object

proc fcQWebInspector_new(parent: pointer): ptr cQWebInspector {.importc: "QWebInspector_new".}
proc fcQWebInspector_new2(): ptr cQWebInspector {.importc: "QWebInspector_new2".}
proc fcQWebInspector_metaObject(self: pointer, ): pointer {.importc: "QWebInspector_metaObject".}
proc fcQWebInspector_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebInspector_metacast".}
proc fcQWebInspector_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebInspector_metacall".}
proc fcQWebInspector_tr(s: cstring): struct_miqt_string {.importc: "QWebInspector_tr".}
proc fcQWebInspector_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebInspector_trUtf8".}
proc fcQWebInspector_setPage(self: pointer, page: pointer): void {.importc: "QWebInspector_setPage".}
proc fcQWebInspector_page(self: pointer, ): pointer {.importc: "QWebInspector_page".}
proc fcQWebInspector_sizeHint(self: pointer, ): pointer {.importc: "QWebInspector_sizeHint".}
proc fcQWebInspector_event(self: pointer, param1: pointer): bool {.importc: "QWebInspector_event".}
proc fcQWebInspector_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebInspector_tr2".}
proc fcQWebInspector_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebInspector_tr3".}
proc fcQWebInspector_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebInspector_trUtf82".}
proc fcQWebInspector_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebInspector_trUtf83".}
proc fQWebInspector_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QWebInspector_virtualbase_metaObject".}
proc fcQWebInspector_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_metaObject".}
proc fQWebInspector_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QWebInspector_virtualbase_metacast".}
proc fcQWebInspector_override_virtual_metacast(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_metacast".}
proc fQWebInspector_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QWebInspector_virtualbase_metacall".}
proc fcQWebInspector_override_virtual_metacall(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_metacall".}
proc fQWebInspector_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QWebInspector_virtualbase_sizeHint".}
proc fcQWebInspector_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_sizeHint".}
proc fQWebInspector_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QWebInspector_virtualbase_event".}
proc fcQWebInspector_override_virtual_event(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_event".}
proc fQWebInspector_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_resizeEvent".}
proc fcQWebInspector_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_resizeEvent".}
proc fQWebInspector_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_showEvent".}
proc fcQWebInspector_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_showEvent".}
proc fQWebInspector_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_hideEvent".}
proc fcQWebInspector_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_hideEvent".}
proc fQWebInspector_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_closeEvent".}
proc fcQWebInspector_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_closeEvent".}
proc fQWebInspector_virtualbase_devType(self: pointer, ): cint{.importc: "QWebInspector_virtualbase_devType".}
proc fcQWebInspector_override_virtual_devType(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_devType".}
proc fQWebInspector_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QWebInspector_virtualbase_setVisible".}
proc fcQWebInspector_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_setVisible".}
proc fQWebInspector_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QWebInspector_virtualbase_minimumSizeHint".}
proc fcQWebInspector_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_minimumSizeHint".}
proc fQWebInspector_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QWebInspector_virtualbase_heightForWidth".}
proc fcQWebInspector_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_heightForWidth".}
proc fQWebInspector_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QWebInspector_virtualbase_hasHeightForWidth".}
proc fcQWebInspector_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_hasHeightForWidth".}
proc fQWebInspector_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QWebInspector_virtualbase_paintEngine".}
proc fcQWebInspector_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_paintEngine".}
proc fQWebInspector_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_mousePressEvent".}
proc fcQWebInspector_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_mousePressEvent".}
proc fQWebInspector_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_mouseReleaseEvent".}
proc fcQWebInspector_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_mouseReleaseEvent".}
proc fQWebInspector_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_mouseDoubleClickEvent".}
proc fcQWebInspector_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_mouseDoubleClickEvent".}
proc fQWebInspector_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_mouseMoveEvent".}
proc fcQWebInspector_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_mouseMoveEvent".}
proc fQWebInspector_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_wheelEvent".}
proc fcQWebInspector_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_wheelEvent".}
proc fQWebInspector_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_keyPressEvent".}
proc fcQWebInspector_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_keyPressEvent".}
proc fQWebInspector_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_keyReleaseEvent".}
proc fcQWebInspector_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_keyReleaseEvent".}
proc fQWebInspector_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_focusInEvent".}
proc fcQWebInspector_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_focusInEvent".}
proc fQWebInspector_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_focusOutEvent".}
proc fcQWebInspector_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_focusOutEvent".}
proc fQWebInspector_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_enterEvent".}
proc fcQWebInspector_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_enterEvent".}
proc fQWebInspector_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_leaveEvent".}
proc fcQWebInspector_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_leaveEvent".}
proc fQWebInspector_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_paintEvent".}
proc fcQWebInspector_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_paintEvent".}
proc fQWebInspector_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_moveEvent".}
proc fcQWebInspector_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_moveEvent".}
proc fQWebInspector_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_contextMenuEvent".}
proc fcQWebInspector_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_contextMenuEvent".}
proc fQWebInspector_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_tabletEvent".}
proc fcQWebInspector_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_tabletEvent".}
proc fQWebInspector_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_actionEvent".}
proc fcQWebInspector_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_actionEvent".}
proc fQWebInspector_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_dragEnterEvent".}
proc fcQWebInspector_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_dragEnterEvent".}
proc fQWebInspector_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_dragMoveEvent".}
proc fcQWebInspector_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_dragMoveEvent".}
proc fQWebInspector_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_dragLeaveEvent".}
proc fcQWebInspector_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_dragLeaveEvent".}
proc fQWebInspector_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_dropEvent".}
proc fcQWebInspector_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_dropEvent".}
proc fQWebInspector_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QWebInspector_virtualbase_nativeEvent".}
proc fcQWebInspector_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_nativeEvent".}
proc fQWebInspector_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QWebInspector_virtualbase_changeEvent".}
proc fcQWebInspector_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_changeEvent".}
proc fQWebInspector_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QWebInspector_virtualbase_metric".}
proc fcQWebInspector_override_virtual_metric(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_metric".}
proc fQWebInspector_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QWebInspector_virtualbase_initPainter".}
proc fcQWebInspector_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_initPainter".}
proc fQWebInspector_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QWebInspector_virtualbase_redirected".}
proc fcQWebInspector_override_virtual_redirected(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_redirected".}
proc fQWebInspector_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QWebInspector_virtualbase_sharedPainter".}
proc fcQWebInspector_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_sharedPainter".}
proc fQWebInspector_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QWebInspector_virtualbase_inputMethodEvent".}
proc fcQWebInspector_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_inputMethodEvent".}
proc fQWebInspector_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QWebInspector_virtualbase_inputMethodQuery".}
proc fcQWebInspector_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_inputMethodQuery".}
proc fQWebInspector_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QWebInspector_virtualbase_focusNextPrevChild".}
proc fcQWebInspector_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_focusNextPrevChild".}
proc fQWebInspector_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWebInspector_virtualbase_eventFilter".}
proc fcQWebInspector_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_eventFilter".}
proc fQWebInspector_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_timerEvent".}
proc fcQWebInspector_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_timerEvent".}
proc fQWebInspector_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_childEvent".}
proc fcQWebInspector_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_childEvent".}
proc fQWebInspector_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWebInspector_virtualbase_customEvent".}
proc fcQWebInspector_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_customEvent".}
proc fQWebInspector_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWebInspector_virtualbase_connectNotify".}
proc fcQWebInspector_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_connectNotify".}
proc fQWebInspector_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWebInspector_virtualbase_disconnectNotify".}
proc fcQWebInspector_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWebInspector_override_virtual_disconnectNotify".}
proc fcQWebInspector_staticMetaObject(): pointer {.importc: "QWebInspector_staticMetaObject".}
proc fcQWebInspector_delete(self: pointer) {.importc: "QWebInspector_delete".}


func init*(T: type QWebInspector, h: ptr cQWebInspector): QWebInspector =
  T(h: h)
proc create*(T: type QWebInspector, parent: gen_qwidget.QWidget): QWebInspector =

  QWebInspector.init(fcQWebInspector_new(parent.h))
proc create*(T: type QWebInspector, ): QWebInspector =

  QWebInspector.init(fcQWebInspector_new2())
proc metaObject*(self: QWebInspector, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQWebInspector_metaObject(self.h))

proc metacast*(self: QWebInspector, param1: cstring): pointer =

  fcQWebInspector_metacast(self.h, param1)

proc metacall*(self: QWebInspector, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQWebInspector_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QWebInspector, s: cstring): string =

  let v_ms = fcQWebInspector_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QWebInspector, s: cstring): string =

  let v_ms = fcQWebInspector_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPage*(self: QWebInspector, page: gen_qwebpage.QWebPage): void =

  fcQWebInspector_setPage(self.h, page.h)

proc page*(self: QWebInspector, ): gen_qwebpage.QWebPage =

  gen_qwebpage.QWebPage(h: fcQWebInspector_page(self.h))

proc sizeHint*(self: QWebInspector, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQWebInspector_sizeHint(self.h))

proc event*(self: QWebInspector, param1: gen_qcoreevent.QEvent): bool =

  fcQWebInspector_event(self.h, param1.h)

proc tr2*(_: type QWebInspector, s: cstring, c: cstring): string =

  let v_ms = fcQWebInspector_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QWebInspector, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebInspector_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QWebInspector, s: cstring, c: cstring): string =

  let v_ms = fcQWebInspector_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QWebInspector, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebInspector_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QWebInspector, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQWebInspector_virtualbase_metaObject(self.h))

type QWebInspectormetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QWebInspector, slot: proc(super: QWebInspectormetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectormetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_metaObject(self: ptr cQWebInspector, slot: int): pointer {.exportc: "miqt_exec_callback_QWebInspector_metaObject ".} =
  type Cb = proc(super: QWebInspectormetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QWebInspector(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QWebInspector, param1: cstring): pointer =


  fQWebInspector_virtualbase_metacast(self.h, param1)

type QWebInspectormetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QWebInspector, slot: proc(super: QWebInspectormetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectormetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_metacast(self: ptr cQWebInspector, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QWebInspector_metacast ".} =
  type Cb = proc(super: QWebInspectormetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QWebInspector(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QWebInspector, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQWebInspector_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QWebInspectormetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QWebInspector, slot: proc(super: QWebInspectormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_metacall(self: ptr cQWebInspector, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QWebInspector_metacall ".} =
  type Cb = proc(super: QWebInspectormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QWebInspector(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QWebInspector, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQWebInspector_virtualbase_sizeHint(self.h))

type QWebInspectorsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QWebInspector, slot: proc(super: QWebInspectorsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectorsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_sizeHint(self: ptr cQWebInspector, slot: int): pointer {.exportc: "miqt_exec_callback_QWebInspector_sizeHint ".} =
  type Cb = proc(super: QWebInspectorsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QWebInspector(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QWebInspector, param1: gen_qcoreevent.QEvent): bool =


  fQWebInspector_virtualbase_event(self.h, param1.h)

type QWebInspectoreventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QWebInspector, slot: proc(super: QWebInspectoreventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectoreventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_event(self: ptr cQWebInspector, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QWebInspector_event ".} =
  type Cb = proc(super: QWebInspectoreventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QWebInspector(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_resizeEvent(self: QWebInspector, event: gen_qevent.QResizeEvent): void =


  fQWebInspector_virtualbase_resizeEvent(self.h, event.h)

type QWebInspectorresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QWebInspector, slot: proc(super: QWebInspectorresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectorresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_resizeEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_resizeEvent ".} =
  type Cb = proc(super: QWebInspectorresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QWebInspector(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QWebInspector, event: gen_qevent.QShowEvent): void =


  fQWebInspector_virtualbase_showEvent(self.h, event.h)

type QWebInspectorshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QWebInspector, slot: proc(super: QWebInspectorshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectorshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_showEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_showEvent ".} =
  type Cb = proc(super: QWebInspectorshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QWebInspector(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QWebInspector, event: gen_qevent.QHideEvent): void =


  fQWebInspector_virtualbase_hideEvent(self.h, event.h)

type QWebInspectorhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QWebInspector, slot: proc(super: QWebInspectorhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectorhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_hideEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_hideEvent ".} =
  type Cb = proc(super: QWebInspectorhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QWebInspector(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QWebInspector, event: gen_qevent.QCloseEvent): void =


  fQWebInspector_virtualbase_closeEvent(self.h, event.h)

type QWebInspectorcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QWebInspector, slot: proc(super: QWebInspectorcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectorcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_closeEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_closeEvent ".} =
  type Cb = proc(super: QWebInspectorcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QWebInspector(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QWebInspector, ): cint =


  fQWebInspector_virtualbase_devType(self.h)

type QWebInspectordevTypeBase* = proc(): cint
proc ondevType*(self: QWebInspector, slot: proc(super: QWebInspectordevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectordevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_devType(self: ptr cQWebInspector, slot: int): cint {.exportc: "miqt_exec_callback_QWebInspector_devType ".} =
  type Cb = proc(super: QWebInspectordevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QWebInspector(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QWebInspector, visible: bool): void =


  fQWebInspector_virtualbase_setVisible(self.h, visible)

type QWebInspectorsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QWebInspector, slot: proc(super: QWebInspectorsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectorsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_setVisible(self: ptr cQWebInspector, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QWebInspector_setVisible ".} =
  type Cb = proc(super: QWebInspectorsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QWebInspector(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_minimumSizeHint(self: QWebInspector, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQWebInspector_virtualbase_minimumSizeHint(self.h))

type QWebInspectorminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QWebInspector, slot: proc(super: QWebInspectorminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectorminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_minimumSizeHint(self: ptr cQWebInspector, slot: int): pointer {.exportc: "miqt_exec_callback_QWebInspector_minimumSizeHint ".} =
  type Cb = proc(super: QWebInspectorminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QWebInspector(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QWebInspector, param1: cint): cint =


  fQWebInspector_virtualbase_heightForWidth(self.h, param1)

type QWebInspectorheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QWebInspector, slot: proc(super: QWebInspectorheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectorheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_heightForWidth(self: ptr cQWebInspector, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWebInspector_heightForWidth ".} =
  type Cb = proc(super: QWebInspectorheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QWebInspector(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QWebInspector, ): bool =


  fQWebInspector_virtualbase_hasHeightForWidth(self.h)

type QWebInspectorhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QWebInspector, slot: proc(super: QWebInspectorhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectorhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_hasHeightForWidth(self: ptr cQWebInspector, slot: int): bool {.exportc: "miqt_exec_callback_QWebInspector_hasHeightForWidth ".} =
  type Cb = proc(super: QWebInspectorhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QWebInspector(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QWebInspector, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQWebInspector_virtualbase_paintEngine(self.h))

type QWebInspectorpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QWebInspector, slot: proc(super: QWebInspectorpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectorpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_paintEngine(self: ptr cQWebInspector, slot: int): pointer {.exportc: "miqt_exec_callback_QWebInspector_paintEngine ".} =
  type Cb = proc(super: QWebInspectorpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QWebInspector(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mousePressEvent(self: QWebInspector, event: gen_qevent.QMouseEvent): void =


  fQWebInspector_virtualbase_mousePressEvent(self.h, event.h)

type QWebInspectormousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QWebInspector, slot: proc(super: QWebInspectormousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectormousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_mousePressEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_mousePressEvent ".} =
  type Cb = proc(super: QWebInspectormousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QWebInspector(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QWebInspector, event: gen_qevent.QMouseEvent): void =


  fQWebInspector_virtualbase_mouseReleaseEvent(self.h, event.h)

type QWebInspectormouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QWebInspector, slot: proc(super: QWebInspectormouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectormouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_mouseReleaseEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_mouseReleaseEvent ".} =
  type Cb = proc(super: QWebInspectormouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QWebInspector(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QWebInspector, event: gen_qevent.QMouseEvent): void =


  fQWebInspector_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QWebInspectormouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QWebInspector, slot: proc(super: QWebInspectormouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectormouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_mouseDoubleClickEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QWebInspectormouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QWebInspector(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QWebInspector, event: gen_qevent.QMouseEvent): void =


  fQWebInspector_virtualbase_mouseMoveEvent(self.h, event.h)

type QWebInspectormouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QWebInspector, slot: proc(super: QWebInspectormouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectormouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_mouseMoveEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_mouseMoveEvent ".} =
  type Cb = proc(super: QWebInspectormouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QWebInspector(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QWebInspector, event: gen_qevent.QWheelEvent): void =


  fQWebInspector_virtualbase_wheelEvent(self.h, event.h)

type QWebInspectorwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QWebInspector, slot: proc(super: QWebInspectorwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectorwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_wheelEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_wheelEvent ".} =
  type Cb = proc(super: QWebInspectorwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QWebInspector(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QWebInspector, event: gen_qevent.QKeyEvent): void =


  fQWebInspector_virtualbase_keyPressEvent(self.h, event.h)

type QWebInspectorkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QWebInspector, slot: proc(super: QWebInspectorkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectorkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_keyPressEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_keyPressEvent ".} =
  type Cb = proc(super: QWebInspectorkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QWebInspector(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QWebInspector, event: gen_qevent.QKeyEvent): void =


  fQWebInspector_virtualbase_keyReleaseEvent(self.h, event.h)

type QWebInspectorkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QWebInspector, slot: proc(super: QWebInspectorkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectorkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_keyReleaseEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_keyReleaseEvent ".} =
  type Cb = proc(super: QWebInspectorkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QWebInspector(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QWebInspector, event: gen_qevent.QFocusEvent): void =


  fQWebInspector_virtualbase_focusInEvent(self.h, event.h)

type QWebInspectorfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QWebInspector, slot: proc(super: QWebInspectorfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectorfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_focusInEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_focusInEvent ".} =
  type Cb = proc(super: QWebInspectorfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QWebInspector(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QWebInspector, event: gen_qevent.QFocusEvent): void =


  fQWebInspector_virtualbase_focusOutEvent(self.h, event.h)

type QWebInspectorfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QWebInspector, slot: proc(super: QWebInspectorfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectorfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_focusOutEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_focusOutEvent ".} =
  type Cb = proc(super: QWebInspectorfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QWebInspector(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QWebInspector, event: gen_qcoreevent.QEvent): void =


  fQWebInspector_virtualbase_enterEvent(self.h, event.h)

type QWebInspectorenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QWebInspector, slot: proc(super: QWebInspectorenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectorenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_enterEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_enterEvent ".} =
  type Cb = proc(super: QWebInspectorenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QWebInspector(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QWebInspector, event: gen_qcoreevent.QEvent): void =


  fQWebInspector_virtualbase_leaveEvent(self.h, event.h)

type QWebInspectorleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QWebInspector, slot: proc(super: QWebInspectorleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectorleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_leaveEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_leaveEvent ".} =
  type Cb = proc(super: QWebInspectorleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QWebInspector(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QWebInspector, event: gen_qevent.QPaintEvent): void =


  fQWebInspector_virtualbase_paintEvent(self.h, event.h)

type QWebInspectorpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QWebInspector, slot: proc(super: QWebInspectorpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectorpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_paintEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_paintEvent ".} =
  type Cb = proc(super: QWebInspectorpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QWebInspector(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QWebInspector, event: gen_qevent.QMoveEvent): void =


  fQWebInspector_virtualbase_moveEvent(self.h, event.h)

type QWebInspectormoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QWebInspector, slot: proc(super: QWebInspectormoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectormoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_moveEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_moveEvent ".} =
  type Cb = proc(super: QWebInspectormoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QWebInspector(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QWebInspector, event: gen_qevent.QContextMenuEvent): void =


  fQWebInspector_virtualbase_contextMenuEvent(self.h, event.h)

type QWebInspectorcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QWebInspector, slot: proc(super: QWebInspectorcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectorcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_contextMenuEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_contextMenuEvent ".} =
  type Cb = proc(super: QWebInspectorcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QWebInspector(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QWebInspector, event: gen_qevent.QTabletEvent): void =


  fQWebInspector_virtualbase_tabletEvent(self.h, event.h)

type QWebInspectortabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QWebInspector, slot: proc(super: QWebInspectortabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectortabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_tabletEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_tabletEvent ".} =
  type Cb = proc(super: QWebInspectortabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QWebInspector(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QWebInspector, event: gen_qevent.QActionEvent): void =


  fQWebInspector_virtualbase_actionEvent(self.h, event.h)

type QWebInspectoractionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QWebInspector, slot: proc(super: QWebInspectoractionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectoractionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_actionEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_actionEvent ".} =
  type Cb = proc(super: QWebInspectoractionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QWebInspector(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QWebInspector, event: gen_qevent.QDragEnterEvent): void =


  fQWebInspector_virtualbase_dragEnterEvent(self.h, event.h)

type QWebInspectordragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QWebInspector, slot: proc(super: QWebInspectordragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectordragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_dragEnterEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_dragEnterEvent ".} =
  type Cb = proc(super: QWebInspectordragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QWebInspector(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QWebInspector, event: gen_qevent.QDragMoveEvent): void =


  fQWebInspector_virtualbase_dragMoveEvent(self.h, event.h)

type QWebInspectordragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QWebInspector, slot: proc(super: QWebInspectordragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectordragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_dragMoveEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_dragMoveEvent ".} =
  type Cb = proc(super: QWebInspectordragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QWebInspector(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QWebInspector, event: gen_qevent.QDragLeaveEvent): void =


  fQWebInspector_virtualbase_dragLeaveEvent(self.h, event.h)

type QWebInspectordragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QWebInspector, slot: proc(super: QWebInspectordragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectordragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_dragLeaveEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_dragLeaveEvent ".} =
  type Cb = proc(super: QWebInspectordragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QWebInspector(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QWebInspector, event: gen_qevent.QDropEvent): void =


  fQWebInspector_virtualbase_dropEvent(self.h, event.h)

type QWebInspectordropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QWebInspector, slot: proc(super: QWebInspectordropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectordropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_dropEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_dropEvent ".} =
  type Cb = proc(super: QWebInspectordropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QWebInspector(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QWebInspector, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQWebInspector_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QWebInspectornativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QWebInspector, slot: proc(super: QWebInspectornativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectornativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_nativeEvent(self: ptr cQWebInspector, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QWebInspector_nativeEvent ".} =
  type Cb = proc(super: QWebInspectornativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QWebInspector(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_changeEvent(self: QWebInspector, param1: gen_qcoreevent.QEvent): void =


  fQWebInspector_virtualbase_changeEvent(self.h, param1.h)

type QWebInspectorchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QWebInspector, slot: proc(super: QWebInspectorchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectorchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_changeEvent(self: ptr cQWebInspector, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_changeEvent ".} =
  type Cb = proc(super: QWebInspectorchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QWebInspector(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_metric(self: QWebInspector, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQWebInspector_virtualbase_metric(self.h, cint(param1))

type QWebInspectormetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QWebInspector, slot: proc(super: QWebInspectormetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectormetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_metric(self: ptr cQWebInspector, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWebInspector_metric ".} =
  type Cb = proc(super: QWebInspectormetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QWebInspector(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QWebInspector, painter: gen_qpainter.QPainter): void =


  fQWebInspector_virtualbase_initPainter(self.h, painter.h)

type QWebInspectorinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QWebInspector, slot: proc(super: QWebInspectorinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectorinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_initPainter(self: ptr cQWebInspector, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_initPainter ".} =
  type Cb = proc(super: QWebInspectorinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QWebInspector(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QWebInspector, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQWebInspector_virtualbase_redirected(self.h, offset.h))

type QWebInspectorredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QWebInspector, slot: proc(super: QWebInspectorredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectorredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_redirected(self: ptr cQWebInspector, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QWebInspector_redirected ".} =
  type Cb = proc(super: QWebInspectorredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QWebInspector(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QWebInspector, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQWebInspector_virtualbase_sharedPainter(self.h))

type QWebInspectorsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QWebInspector, slot: proc(super: QWebInspectorsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectorsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_sharedPainter(self: ptr cQWebInspector, slot: int): pointer {.exportc: "miqt_exec_callback_QWebInspector_sharedPainter ".} =
  type Cb = proc(super: QWebInspectorsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QWebInspector(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QWebInspector, param1: gen_qevent.QInputMethodEvent): void =


  fQWebInspector_virtualbase_inputMethodEvent(self.h, param1.h)

type QWebInspectorinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QWebInspector, slot: proc(super: QWebInspectorinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectorinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_inputMethodEvent(self: ptr cQWebInspector, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_inputMethodEvent ".} =
  type Cb = proc(super: QWebInspectorinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QWebInspector(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QWebInspector, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQWebInspector_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QWebInspectorinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QWebInspector, slot: proc(super: QWebInspectorinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectorinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_inputMethodQuery(self: ptr cQWebInspector, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QWebInspector_inputMethodQuery ".} =
  type Cb = proc(super: QWebInspectorinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QWebInspector(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QWebInspector, next: bool): bool =


  fQWebInspector_virtualbase_focusNextPrevChild(self.h, next)

type QWebInspectorfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QWebInspector, slot: proc(super: QWebInspectorfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectorfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_focusNextPrevChild(self: ptr cQWebInspector, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QWebInspector_focusNextPrevChild ".} =
  type Cb = proc(super: QWebInspectorfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QWebInspector(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QWebInspector, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQWebInspector_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWebInspectoreventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QWebInspector, slot: proc(super: QWebInspectoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_eventFilter(self: ptr cQWebInspector, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWebInspector_eventFilter ".} =
  type Cb = proc(super: QWebInspectoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QWebInspector(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QWebInspector, event: gen_qcoreevent.QTimerEvent): void =


  fQWebInspector_virtualbase_timerEvent(self.h, event.h)

type QWebInspectortimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QWebInspector, slot: proc(super: QWebInspectortimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectortimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_timerEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_timerEvent ".} =
  type Cb = proc(super: QWebInspectortimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QWebInspector(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QWebInspector, event: gen_qcoreevent.QChildEvent): void =


  fQWebInspector_virtualbase_childEvent(self.h, event.h)

type QWebInspectorchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QWebInspector, slot: proc(super: QWebInspectorchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectorchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_childEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_childEvent ".} =
  type Cb = proc(super: QWebInspectorchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QWebInspector(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QWebInspector, event: gen_qcoreevent.QEvent): void =


  fQWebInspector_virtualbase_customEvent(self.h, event.h)

type QWebInspectorcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QWebInspector, slot: proc(super: QWebInspectorcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectorcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_customEvent(self: ptr cQWebInspector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_customEvent ".} =
  type Cb = proc(super: QWebInspectorcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QWebInspector(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QWebInspector, signal: gen_qmetaobject.QMetaMethod): void =


  fQWebInspector_virtualbase_connectNotify(self.h, signal.h)

type QWebInspectorconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QWebInspector, slot: proc(super: QWebInspectorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_connectNotify(self: ptr cQWebInspector, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_connectNotify ".} =
  type Cb = proc(super: QWebInspectorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QWebInspector(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QWebInspector, signal: gen_qmetaobject.QMetaMethod): void =


  fQWebInspector_virtualbase_disconnectNotify(self.h, signal.h)

type QWebInspectordisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QWebInspector, slot: proc(super: QWebInspectordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWebInspectordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebInspector_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebInspector_disconnectNotify(self: ptr cQWebInspector, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebInspector_disconnectNotify ".} =
  type Cb = proc(super: QWebInspectordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QWebInspector(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QWebInspector): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQWebInspector_staticMetaObject())
proc delete*(self: QWebInspector) =
  fcQWebInspector_delete(self.h)
