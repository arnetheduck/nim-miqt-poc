import Qt6Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt6Widgets")
{.compile("gen_qdialog.cpp", cflags).}


type QDialogDialogCode* = cint
const
  QDialogRejected* = 0
  QDialogAccepted* = 1



import gen_qdialog_types
export gen_qdialog_types

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
  gen_qwidget

type cQDialog*{.exportc: "QDialog", incompleteStruct.} = object

proc fcQDialog_new(parent: pointer): ptr cQDialog {.importc: "QDialog_new".}
proc fcQDialog_new2(): ptr cQDialog {.importc: "QDialog_new2".}
proc fcQDialog_new3(parent: pointer, f: cint): ptr cQDialog {.importc: "QDialog_new3".}
proc fcQDialog_metaObject(self: pointer, ): pointer {.importc: "QDialog_metaObject".}
proc fcQDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QDialog_metacast".}
proc fcQDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDialog_metacall".}
proc fcQDialog_tr(s: cstring): struct_miqt_string {.importc: "QDialog_tr".}
proc fcQDialog_resultX(self: pointer, ): cint {.importc: "QDialog_result".}
proc fcQDialog_setVisible(self: pointer, visible: bool): void {.importc: "QDialog_setVisible".}
proc fcQDialog_sizeHint(self: pointer, ): pointer {.importc: "QDialog_sizeHint".}
proc fcQDialog_minimumSizeHint(self: pointer, ): pointer {.importc: "QDialog_minimumSizeHint".}
proc fcQDialog_setSizeGripEnabled(self: pointer, sizeGripEnabled: bool): void {.importc: "QDialog_setSizeGripEnabled".}
proc fcQDialog_isSizeGripEnabled(self: pointer, ): bool {.importc: "QDialog_isSizeGripEnabled".}
proc fcQDialog_setModal(self: pointer, modal: bool): void {.importc: "QDialog_setModal".}
proc fcQDialog_setResult(self: pointer, r: cint): void {.importc: "QDialog_setResult".}
proc fcQDialog_finished(self: pointer, resultVal: cint): void {.importc: "QDialog_finished".}
proc fQDialog_connect_finished(self: pointer, slot: int) {.importc: "QDialog_connect_finished".}
proc fcQDialog_accepted(self: pointer, ): void {.importc: "QDialog_accepted".}
proc fQDialog_connect_accepted(self: pointer, slot: int) {.importc: "QDialog_connect_accepted".}
proc fcQDialog_rejected(self: pointer, ): void {.importc: "QDialog_rejected".}
proc fQDialog_connect_rejected(self: pointer, slot: int) {.importc: "QDialog_connect_rejected".}
proc fcQDialog_open(self: pointer, ): void {.importc: "QDialog_open".}
proc fcQDialog_exec(self: pointer, ): cint {.importc: "QDialog_exec".}
proc fcQDialog_done(self: pointer, param1: cint): void {.importc: "QDialog_done".}
proc fcQDialog_accept(self: pointer, ): void {.importc: "QDialog_accept".}
proc fcQDialog_reject(self: pointer, ): void {.importc: "QDialog_reject".}
proc fcQDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDialog_tr2".}
proc fcQDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDialog_tr3".}
proc fQDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QDialog_virtualbase_metacall".}
proc fcQDialog_override_virtual_metacall(self: pointer, slot: int) {.importc: "QDialog_override_virtual_metacall".}
proc fQDialog_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QDialog_virtualbase_setVisible".}
proc fcQDialog_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QDialog_override_virtual_setVisible".}
proc fQDialog_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QDialog_virtualbase_sizeHint".}
proc fcQDialog_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QDialog_override_virtual_sizeHint".}
proc fQDialog_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QDialog_virtualbase_minimumSizeHint".}
proc fcQDialog_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QDialog_override_virtual_minimumSizeHint".}
proc fQDialog_virtualbase_open(self: pointer, ): void{.importc: "QDialog_virtualbase_open".}
proc fcQDialog_override_virtual_open(self: pointer, slot: int) {.importc: "QDialog_override_virtual_open".}
proc fQDialog_virtualbase_exec(self: pointer, ): cint{.importc: "QDialog_virtualbase_exec".}
proc fcQDialog_override_virtual_exec(self: pointer, slot: int) {.importc: "QDialog_override_virtual_exec".}
proc fQDialog_virtualbase_done(self: pointer, param1: cint): void{.importc: "QDialog_virtualbase_done".}
proc fcQDialog_override_virtual_done(self: pointer, slot: int) {.importc: "QDialog_override_virtual_done".}
proc fQDialog_virtualbase_accept(self: pointer, ): void{.importc: "QDialog_virtualbase_accept".}
proc fcQDialog_override_virtual_accept(self: pointer, slot: int) {.importc: "QDialog_override_virtual_accept".}
proc fQDialog_virtualbase_reject(self: pointer, ): void{.importc: "QDialog_virtualbase_reject".}
proc fcQDialog_override_virtual_reject(self: pointer, slot: int) {.importc: "QDialog_override_virtual_reject".}
proc fQDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QDialog_virtualbase_keyPressEvent".}
proc fcQDialog_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_keyPressEvent".}
proc fQDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void{.importc: "QDialog_virtualbase_closeEvent".}
proc fcQDialog_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_closeEvent".}
proc fQDialog_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QDialog_virtualbase_showEvent".}
proc fcQDialog_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_showEvent".}
proc fQDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QDialog_virtualbase_resizeEvent".}
proc fcQDialog_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_resizeEvent".}
proc fQDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QDialog_virtualbase_contextMenuEvent".}
proc fcQDialog_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_contextMenuEvent".}
proc fQDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QDialog_virtualbase_eventFilter".}
proc fcQDialog_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QDialog_override_virtual_eventFilter".}
proc fQDialog_virtualbase_devType(self: pointer, ): cint{.importc: "QDialog_virtualbase_devType".}
proc fcQDialog_override_virtual_devType(self: pointer, slot: int) {.importc: "QDialog_override_virtual_devType".}
proc fQDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QDialog_virtualbase_heightForWidth".}
proc fcQDialog_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QDialog_override_virtual_heightForWidth".}
proc fQDialog_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QDialog_virtualbase_hasHeightForWidth".}
proc fcQDialog_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QDialog_override_virtual_hasHeightForWidth".}
proc fQDialog_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QDialog_virtualbase_paintEngine".}
proc fcQDialog_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QDialog_override_virtual_paintEngine".}
proc fQDialog_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QDialog_virtualbase_event".}
proc fcQDialog_override_virtual_event(self: pointer, slot: int) {.importc: "QDialog_override_virtual_event".}
proc fQDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_mousePressEvent".}
proc fcQDialog_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_mousePressEvent".}
proc fQDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_mouseReleaseEvent".}
proc fcQDialog_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_mouseReleaseEvent".}
proc fQDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQDialog_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_mouseDoubleClickEvent".}
proc fQDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_mouseMoveEvent".}
proc fcQDialog_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_mouseMoveEvent".}
proc fQDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_wheelEvent".}
proc fcQDialog_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_wheelEvent".}
proc fQDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_keyReleaseEvent".}
proc fcQDialog_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_keyReleaseEvent".}
proc fQDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_focusInEvent".}
proc fcQDialog_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_focusInEvent".}
proc fQDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_focusOutEvent".}
proc fcQDialog_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_focusOutEvent".}
proc fQDialog_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_enterEvent".}
proc fcQDialog_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_enterEvent".}
proc fQDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_leaveEvent".}
proc fcQDialog_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_leaveEvent".}
proc fQDialog_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_paintEvent".}
proc fcQDialog_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_paintEvent".}
proc fQDialog_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_moveEvent".}
proc fcQDialog_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_moveEvent".}
proc fQDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_tabletEvent".}
proc fcQDialog_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_tabletEvent".}
proc fQDialog_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_actionEvent".}
proc fcQDialog_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_actionEvent".}
proc fQDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_dragEnterEvent".}
proc fcQDialog_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_dragEnterEvent".}
proc fQDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_dragMoveEvent".}
proc fcQDialog_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_dragMoveEvent".}
proc fQDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_dragLeaveEvent".}
proc fcQDialog_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_dragLeaveEvent".}
proc fQDialog_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_dropEvent".}
proc fcQDialog_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_dropEvent".}
proc fQDialog_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_hideEvent".}
proc fcQDialog_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_hideEvent".}
proc fQDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QDialog_virtualbase_nativeEvent".}
proc fcQDialog_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_nativeEvent".}
proc fQDialog_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QDialog_virtualbase_changeEvent".}
proc fcQDialog_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_changeEvent".}
proc fQDialog_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QDialog_virtualbase_metric".}
proc fcQDialog_override_virtual_metric(self: pointer, slot: int) {.importc: "QDialog_override_virtual_metric".}
proc fQDialog_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QDialog_virtualbase_initPainter".}
proc fcQDialog_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QDialog_override_virtual_initPainter".}
proc fQDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QDialog_virtualbase_redirected".}
proc fcQDialog_override_virtual_redirected(self: pointer, slot: int) {.importc: "QDialog_override_virtual_redirected".}
proc fQDialog_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QDialog_virtualbase_sharedPainter".}
proc fcQDialog_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QDialog_override_virtual_sharedPainter".}
proc fQDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QDialog_virtualbase_inputMethodEvent".}
proc fcQDialog_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_inputMethodEvent".}
proc fQDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QDialog_virtualbase_inputMethodQuery".}
proc fcQDialog_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QDialog_override_virtual_inputMethodQuery".}
proc fQDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QDialog_virtualbase_focusNextPrevChild".}
proc fcQDialog_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QDialog_override_virtual_focusNextPrevChild".}
proc fQDialog_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_timerEvent".}
proc fcQDialog_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_timerEvent".}
proc fQDialog_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_childEvent".}
proc fcQDialog_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_childEvent".}
proc fQDialog_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_customEvent".}
proc fcQDialog_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_customEvent".}
proc fQDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QDialog_virtualbase_connectNotify".}
proc fcQDialog_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QDialog_override_virtual_connectNotify".}
proc fQDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QDialog_virtualbase_disconnectNotify".}
proc fcQDialog_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QDialog_override_virtual_disconnectNotify".}
proc fcQDialog_delete(self: pointer) {.importc: "QDialog_delete".}


func init*(T: type QDialog, h: ptr cQDialog): QDialog =
  T(h: h)
proc create*(T: type QDialog, parent: gen_qwidget.QWidget): QDialog =

  QDialog.init(fcQDialog_new(parent.h))
proc create*(T: type QDialog, ): QDialog =

  QDialog.init(fcQDialog_new2())
proc create*(T: type QDialog, parent: gen_qwidget.QWidget, f: gen_qnamespace.WindowType): QDialog =

  QDialog.init(fcQDialog_new3(parent.h, cint(f)))
proc metaObject*(self: QDialog, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQDialog_metaObject(self.h))

proc metacast*(self: QDialog, param1: cstring): pointer =

  fcQDialog_metacast(self.h, param1)

proc metacall*(self: QDialog, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QDialog, s: cstring): string =

  let v_ms = fcQDialog_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc resultX*(self: QDialog, ): cint =

  fcQDialog_resultX(self.h)

proc setVisible*(self: QDialog, visible: bool): void =

  fcQDialog_setVisible(self.h, visible)

proc sizeHint*(self: QDialog, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQDialog_sizeHint(self.h))

proc minimumSizeHint*(self: QDialog, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQDialog_minimumSizeHint(self.h))

proc setSizeGripEnabled*(self: QDialog, sizeGripEnabled: bool): void =

  fcQDialog_setSizeGripEnabled(self.h, sizeGripEnabled)

proc isSizeGripEnabled*(self: QDialog, ): bool =

  fcQDialog_isSizeGripEnabled(self.h)

proc setModal*(self: QDialog, modal: bool): void =

  fcQDialog_setModal(self.h, modal)

proc setResult*(self: QDialog, r: cint): void =

  fcQDialog_setResult(self.h, r)

proc finished*(self: QDialog, resultVal: cint): void =

  fcQDialog_finished(self.h, resultVal)

proc miqt_exec_callback_QDialog_finished(slot: int, resultVal: cint) {.exportc.} =
  type Cb = proc(resultVal: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = resultVal


  nimfunc[](slotval1)

proc onfinished*(self: QDialog, slot: proc(resultVal: cint)) =
  type Cb = proc(resultVal: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDialog_connect_finished(self.h, cast[int](addr tmp[]))
proc accepted*(self: QDialog, ): void =

  fcQDialog_accepted(self.h)

proc miqt_exec_callback_QDialog_accepted(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onaccepted*(self: QDialog, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDialog_connect_accepted(self.h, cast[int](addr tmp[]))
proc rejected*(self: QDialog, ): void =

  fcQDialog_rejected(self.h)

proc miqt_exec_callback_QDialog_rejected(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onrejected*(self: QDialog, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDialog_connect_rejected(self.h, cast[int](addr tmp[]))
proc open*(self: QDialog, ): void =

  fcQDialog_open(self.h)

proc exec*(self: QDialog, ): cint =

  fcQDialog_exec(self.h)

proc done*(self: QDialog, param1: cint): void =

  fcQDialog_done(self.h, param1)

proc accept*(self: QDialog, ): void =

  fcQDialog_accept(self.h)

proc reject*(self: QDialog, ): void =

  fcQDialog_reject(self.h)

proc tr2*(_: type QDialog, s: cstring, c: cstring): string =

  let v_ms = fcQDialog_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QDialog, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QDialog, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QDialogmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QDialog, slot: proc(super: QDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_metacall(self: ptr cQDialog, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QDialog_metacall ".} =
  type Cb = proc(super: QDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QDialog(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setVisible(self: QDialog, visible: bool): void =


  fQDialog_virtualbase_setVisible(self.h, visible)

type QDialogsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QDialog, slot: proc(super: QDialogsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_setVisible(self: ptr cQDialog, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QDialog_setVisible ".} =
  type Cb = proc(super: QDialogsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QDialog(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QDialog, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQDialog_virtualbase_sizeHint(self.h))

type QDialogsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QDialog, slot: proc(super: QDialogsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QDialogsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_sizeHint(self: ptr cQDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QDialog_sizeHint ".} =
  type Cb = proc(super: QDialogsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QDialog, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQDialog_virtualbase_minimumSizeHint(self.h))

type QDialogminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QDialog, slot: proc(super: QDialogminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QDialogminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_minimumSizeHint(self: ptr cQDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QDialog_minimumSizeHint ".} =
  type Cb = proc(super: QDialogminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_open(self: QDialog, ): void =


  fQDialog_virtualbase_open(self.h)

type QDialogopenBase* = proc(): void
proc onopen*(self: QDialog, slot: proc(super: QDialogopenBase): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogopenBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_open(self: ptr cQDialog, slot: int): void {.exportc: "miqt_exec_callback_QDialog_open ".} =
  type Cb = proc(super: QDialogopenBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_open(QDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_exec(self: QDialog, ): cint =


  fQDialog_virtualbase_exec(self.h)

type QDialogexecBase* = proc(): cint
proc onexec*(self: QDialog, slot: proc(super: QDialogexecBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QDialogexecBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_exec(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_exec(self: ptr cQDialog, slot: int): cint {.exportc: "miqt_exec_callback_QDialog_exec ".} =
  type Cb = proc(super: QDialogexecBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_exec(QDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_done(self: QDialog, param1: cint): void =


  fQDialog_virtualbase_done(self.h, param1)

type QDialogdoneBase* = proc(param1: cint): void
proc ondone*(self: QDialog, slot: proc(super: QDialogdoneBase, param1: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogdoneBase, param1: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_done(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_done(self: ptr cQDialog, slot: int, param1: cint): void {.exportc: "miqt_exec_callback_QDialog_done ".} =
  type Cb = proc(super: QDialogdoneBase, param1: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_done(QDialog(h: self), param1)
  let slotval1 = param1


  nimfunc[](superCall, slotval1)
proc callVirtualBase_accept(self: QDialog, ): void =


  fQDialog_virtualbase_accept(self.h)

type QDialogacceptBase* = proc(): void
proc onaccept*(self: QDialog, slot: proc(super: QDialogacceptBase): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogacceptBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_accept(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_accept(self: ptr cQDialog, slot: int): void {.exportc: "miqt_exec_callback_QDialog_accept ".} =
  type Cb = proc(super: QDialogacceptBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_accept(QDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_reject(self: QDialog, ): void =


  fQDialog_virtualbase_reject(self.h)

type QDialogrejectBase* = proc(): void
proc onreject*(self: QDialog, slot: proc(super: QDialogrejectBase): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogrejectBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_reject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_reject(self: ptr cQDialog, slot: int): void {.exportc: "miqt_exec_callback_QDialog_reject ".} =
  type Cb = proc(super: QDialogrejectBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reject(QDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_keyPressEvent(self: QDialog, param1: gen_qevent.QKeyEvent): void =


  fQDialog_virtualbase_keyPressEvent(self.h, param1.h)

type QDialogkeyPressEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QDialog, slot: proc(super: QDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_keyPressEvent(self: ptr cQDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDialog_keyPressEvent ".} =
  type Cb = proc(super: QDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QDialog(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QDialog, param1: gen_qevent.QCloseEvent): void =


  fQDialog_virtualbase_closeEvent(self.h, param1.h)

type QDialogcloseEventBase* = proc(param1: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QDialog, slot: proc(super: QDialogcloseEventBase, param1: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogcloseEventBase, param1: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_closeEvent(self: ptr cQDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDialog_closeEvent ".} =
  type Cb = proc(super: QDialogcloseEventBase, param1: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QDialog(h: self), param1)
  let slotval1 = gen_qevent.QCloseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QDialog, param1: gen_qevent.QShowEvent): void =


  fQDialog_virtualbase_showEvent(self.h, param1.h)

type QDialogshowEventBase* = proc(param1: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QDialog, slot: proc(super: QDialogshowEventBase, param1: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogshowEventBase, param1: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_showEvent(self: ptr cQDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDialog_showEvent ".} =
  type Cb = proc(super: QDialogshowEventBase, param1: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QDialog(h: self), param1)
  let slotval1 = gen_qevent.QShowEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QDialog, param1: gen_qevent.QResizeEvent): void =


  fQDialog_virtualbase_resizeEvent(self.h, param1.h)

type QDialogresizeEventBase* = proc(param1: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QDialog, slot: proc(super: QDialogresizeEventBase, param1: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_resizeEvent(self: ptr cQDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDialog_resizeEvent ".} =
  type Cb = proc(super: QDialogresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QDialog(h: self), param1)
  let slotval1 = gen_qevent.QResizeEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QDialog, param1: gen_qevent.QContextMenuEvent): void =


  fQDialog_virtualbase_contextMenuEvent(self.h, param1.h)

type QDialogcontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QDialog, slot: proc(super: QDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_contextMenuEvent(self: ptr cQDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDialog_contextMenuEvent ".} =
  type Cb = proc(super: QDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QDialog(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QDialog, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =


  fQDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QDialogeventFilterBase* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QDialog, slot: proc(super: QDialogeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDialogeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_eventFilter(self: ptr cQDialog, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QDialog_eventFilter ".} =
  type Cb = proc(super: QDialogeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QDialog(h: self), param1, param2)
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_devType(self: QDialog, ): cint =


  fQDialog_virtualbase_devType(self.h)

type QDialogdevTypeBase* = proc(): cint
proc ondevType*(self: QDialog, slot: proc(super: QDialogdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QDialogdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_devType(self: ptr cQDialog, slot: int): cint {.exportc: "miqt_exec_callback_QDialog_devType ".} =
  type Cb = proc(super: QDialogdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_heightForWidth(self: QDialog, param1: cint): cint =


  fQDialog_virtualbase_heightForWidth(self.h, param1)

type QDialogheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QDialog, slot: proc(super: QDialogheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QDialogheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_heightForWidth(self: ptr cQDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDialog_heightForWidth ".} =
  type Cb = proc(super: QDialogheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QDialog(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QDialog, ): bool =


  fQDialog_virtualbase_hasHeightForWidth(self.h)

type QDialoghasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QDialog, slot: proc(super: QDialoghasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QDialoghasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_hasHeightForWidth(self: ptr cQDialog, slot: int): bool {.exportc: "miqt_exec_callback_QDialog_hasHeightForWidth ".} =
  type Cb = proc(super: QDialoghasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QDialog, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQDialog_virtualbase_paintEngine(self.h))

type QDialogpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QDialog, slot: proc(super: QDialogpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QDialogpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_paintEngine(self: ptr cQDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QDialog_paintEngine ".} =
  type Cb = proc(super: QDialogpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QDialog, event: gen_qcoreevent.QEvent): bool =


  fQDialog_virtualbase_event(self.h, event.h)

type QDialogeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QDialog, slot: proc(super: QDialogeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDialogeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_event(self: ptr cQDialog, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QDialog_event ".} =
  type Cb = proc(super: QDialogeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mousePressEvent(self: QDialog, event: gen_qevent.QMouseEvent): void =


  fQDialog_virtualbase_mousePressEvent(self.h, event.h)

type QDialogmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QDialog, slot: proc(super: QDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_mousePressEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_mousePressEvent ".} =
  type Cb = proc(super: QDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QDialog, event: gen_qevent.QMouseEvent): void =


  fQDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

type QDialogmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QDialog, slot: proc(super: QDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_mouseReleaseEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_mouseReleaseEvent ".} =
  type Cb = proc(super: QDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QDialog, event: gen_qevent.QMouseEvent): void =


  fQDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QDialogmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QDialog, slot: proc(super: QDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_mouseDoubleClickEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QDialog, event: gen_qevent.QMouseEvent): void =


  fQDialog_virtualbase_mouseMoveEvent(self.h, event.h)

type QDialogmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QDialog, slot: proc(super: QDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_mouseMoveEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_mouseMoveEvent ".} =
  type Cb = proc(super: QDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QDialog, event: gen_qevent.QWheelEvent): void =


  fQDialog_virtualbase_wheelEvent(self.h, event.h)

type QDialogwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QDialog, slot: proc(super: QDialogwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_wheelEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_wheelEvent ".} =
  type Cb = proc(super: QDialogwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QDialog(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QDialog, event: gen_qevent.QKeyEvent): void =


  fQDialog_virtualbase_keyReleaseEvent(self.h, event.h)

type QDialogkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QDialog, slot: proc(super: QDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_keyReleaseEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_keyReleaseEvent ".} =
  type Cb = proc(super: QDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QDialog(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QDialog, event: gen_qevent.QFocusEvent): void =


  fQDialog_virtualbase_focusInEvent(self.h, event.h)

type QDialogfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QDialog, slot: proc(super: QDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_focusInEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_focusInEvent ".} =
  type Cb = proc(super: QDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QDialog(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QDialog, event: gen_qevent.QFocusEvent): void =


  fQDialog_virtualbase_focusOutEvent(self.h, event.h)

type QDialogfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QDialog, slot: proc(super: QDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_focusOutEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_focusOutEvent ".} =
  type Cb = proc(super: QDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QDialog(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QDialog, event: gen_qevent.QEnterEvent): void =


  fQDialog_virtualbase_enterEvent(self.h, event.h)

type QDialogenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QDialog, slot: proc(super: QDialogenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_enterEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_enterEvent ".} =
  type Cb = proc(super: QDialogenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QDialog(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QDialog, event: gen_qcoreevent.QEvent): void =


  fQDialog_virtualbase_leaveEvent(self.h, event.h)

type QDialogleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QDialog, slot: proc(super: QDialogleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_leaveEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_leaveEvent ".} =
  type Cb = proc(super: QDialogleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QDialog, event: gen_qevent.QPaintEvent): void =


  fQDialog_virtualbase_paintEvent(self.h, event.h)

type QDialogpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QDialog, slot: proc(super: QDialogpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_paintEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_paintEvent ".} =
  type Cb = proc(super: QDialogpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QDialog(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QDialog, event: gen_qevent.QMoveEvent): void =


  fQDialog_virtualbase_moveEvent(self.h, event.h)

type QDialogmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QDialog, slot: proc(super: QDialogmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_moveEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_moveEvent ".} =
  type Cb = proc(super: QDialogmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QDialog(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QDialog, event: gen_qevent.QTabletEvent): void =


  fQDialog_virtualbase_tabletEvent(self.h, event.h)

type QDialogtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QDialog, slot: proc(super: QDialogtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_tabletEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_tabletEvent ".} =
  type Cb = proc(super: QDialogtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QDialog(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QDialog, event: gen_qevent.QActionEvent): void =


  fQDialog_virtualbase_actionEvent(self.h, event.h)

type QDialogactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QDialog, slot: proc(super: QDialogactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_actionEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_actionEvent ".} =
  type Cb = proc(super: QDialogactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QDialog(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QDialog, event: gen_qevent.QDragEnterEvent): void =


  fQDialog_virtualbase_dragEnterEvent(self.h, event.h)

type QDialogdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QDialog, slot: proc(super: QDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_dragEnterEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_dragEnterEvent ".} =
  type Cb = proc(super: QDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QDialog(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QDialog, event: gen_qevent.QDragMoveEvent): void =


  fQDialog_virtualbase_dragMoveEvent(self.h, event.h)

type QDialogdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QDialog, slot: proc(super: QDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_dragMoveEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_dragMoveEvent ".} =
  type Cb = proc(super: QDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QDialog(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QDialog, event: gen_qevent.QDragLeaveEvent): void =


  fQDialog_virtualbase_dragLeaveEvent(self.h, event.h)

type QDialogdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QDialog, slot: proc(super: QDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_dragLeaveEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_dragLeaveEvent ".} =
  type Cb = proc(super: QDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QDialog(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QDialog, event: gen_qevent.QDropEvent): void =


  fQDialog_virtualbase_dropEvent(self.h, event.h)

type QDialogdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QDialog, slot: proc(super: QDialogdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_dropEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_dropEvent ".} =
  type Cb = proc(super: QDialogdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QDialog(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QDialog, event: gen_qevent.QHideEvent): void =


  fQDialog_virtualbase_hideEvent(self.h, event.h)

type QDialoghideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QDialog, slot: proc(super: QDialoghideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialoghideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_hideEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_hideEvent ".} =
  type Cb = proc(super: QDialoghideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QDialog(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QDialog, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QDialognativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QDialog, slot: proc(super: QDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_nativeEvent(self: ptr cQDialog, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QDialog_nativeEvent ".} =
  type Cb = proc(super: QDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QDialog(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_changeEvent(self: QDialog, param1: gen_qcoreevent.QEvent): void =


  fQDialog_virtualbase_changeEvent(self.h, param1.h)

type QDialogchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QDialog, slot: proc(super: QDialogchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_changeEvent(self: ptr cQDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDialog_changeEvent ".} =
  type Cb = proc(super: QDialogchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QDialog(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_metric(self: QDialog, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQDialog_virtualbase_metric(self.h, cint(param1))

type QDialogmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QDialog, slot: proc(super: QDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_metric(self: ptr cQDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDialog_metric ".} =
  type Cb = proc(super: QDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QDialog(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QDialog, painter: gen_qpainter.QPainter): void =


  fQDialog_virtualbase_initPainter(self.h, painter.h)

type QDialoginitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QDialog, slot: proc(super: QDialoginitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QDialoginitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_initPainter(self: ptr cQDialog, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QDialog_initPainter ".} =
  type Cb = proc(super: QDialoginitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QDialog(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QDialog, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQDialog_virtualbase_redirected(self.h, offset.h))

type QDialogredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QDialog, slot: proc(super: QDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_redirected(self: ptr cQDialog, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QDialog_redirected ".} =
  type Cb = proc(super: QDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QDialog(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QDialog, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQDialog_virtualbase_sharedPainter(self.h))

type QDialogsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QDialog, slot: proc(super: QDialogsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QDialogsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_sharedPainter(self: ptr cQDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QDialog_sharedPainter ".} =
  type Cb = proc(super: QDialogsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QDialog, param1: gen_qevent.QInputMethodEvent): void =


  fQDialog_virtualbase_inputMethodEvent(self.h, param1.h)

type QDialoginputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QDialog, slot: proc(super: QDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_inputMethodEvent(self: ptr cQDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDialog_inputMethodEvent ".} =
  type Cb = proc(super: QDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QDialog(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QDialog, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQDialog_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QDialoginputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QDialog, slot: proc(super: QDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_inputMethodQuery(self: ptr cQDialog, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QDialog_inputMethodQuery ".} =
  type Cb = proc(super: QDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QDialog(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QDialog, next: bool): bool =


  fQDialog_virtualbase_focusNextPrevChild(self.h, next)

type QDialogfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QDialog, slot: proc(super: QDialogfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QDialogfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_focusNextPrevChild(self: ptr cQDialog, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QDialog_focusNextPrevChild ".} =
  type Cb = proc(super: QDialogfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QDialog(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QDialog, event: gen_qcoreevent.QTimerEvent): void =


  fQDialog_virtualbase_timerEvent(self.h, event.h)

type QDialogtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QDialog, slot: proc(super: QDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_timerEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_timerEvent ".} =
  type Cb = proc(super: QDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QDialog, event: gen_qcoreevent.QChildEvent): void =


  fQDialog_virtualbase_childEvent(self.h, event.h)

type QDialogchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QDialog, slot: proc(super: QDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_childEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_childEvent ".} =
  type Cb = proc(super: QDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QDialog, event: gen_qcoreevent.QEvent): void =


  fQDialog_virtualbase_customEvent(self.h, event.h)

type QDialogcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QDialog, slot: proc(super: QDialogcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_customEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_customEvent ".} =
  type Cb = proc(super: QDialogcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QDialog, signal: gen_qmetaobject.QMetaMethod): void =


  fQDialog_virtualbase_connectNotify(self.h, signal.h)

type QDialogconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QDialog, slot: proc(super: QDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_connectNotify(self: ptr cQDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDialog_connectNotify ".} =
  type Cb = proc(super: QDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QDialog(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QDialog, signal: gen_qmetaobject.QMetaMethod): void =


  fQDialog_virtualbase_disconnectNotify(self.h, signal.h)

type QDialogdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QDialog, slot: proc(super: QDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_disconnectNotify(self: ptr cQDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDialog_disconnectNotify ".} =
  type Cb = proc(super: QDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QDialog(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QDialog) =
  fcQDialog_delete(self.h)
